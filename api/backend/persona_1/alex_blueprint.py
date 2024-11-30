from flask import Blueprint
from flask import request
from flask import jsonify
from flask import make_response
from flask import current_app
from backend.db_connection import db
from backend.ml_models.model01 import predict

#------------------------------------------------------------
# Create a new Blueprint 
alex = Blueprint('alex', __name__)


#------------------------------------------------------------
# Get all projects for alex
@alex.route('/users/0001/projects', methods=['GET'])
def get_user_0001_projects():

    cursor = db.get_db().cursor()
    cursor.execute('''SELECT project_id, title, description,
                    tags, upload_date, is_archived FROM projects WHERE user_id = 0001
    ''')
    
    theData = cursor.fetchall()
    
    the_response = make_response(jsonify(theData))
    the_response.status_code = 200
    return the_response


#------------------------------------------------------------
# Get all feedback for Alex's projects
@alex.route('/users/0001/feedback', methods=['GET'])
def get_user_0001_feedback():

    cursor = db.get_db().cursor()
    cursor.execute('''
        SELECT f.feedback_id, f.project_id, f.reviewer_id, f.feedback_text, 
               f.rating, f.feedback_date 
        FROM feedback f
        JOIN projects p ON f.project_id = p.project_id
        WHERE p.user_id = 0001
    ''')
    
    theData = cursor.fetchall()
    
    the_response = make_response(jsonify(theData))
    the_response.status_code = 200
    return the_response


#------------------------------------------------------------
# Update progress description for one of Alex's projects
@alex.route('/progress', methods=['PUT'])
def update_project_description():
    current_app.logger.info('PUT /progress route')
    progress_info = request.json
    project_id = progress_info['project_id']
    user_id = progress_info['user_id']
    progress_description = progress_info['progress_description']

    query = '''
        UPDATE progress 
        SET progress_description = %s 
        WHERE project_id = %s 
          AND EXISTS (
              SELECT 1 FROM projects 
              WHERE projects.project_id = %s AND projects.user_id = %s
          )
    '''
    data = (progress_description, project_id, project_id, user_id)
    cursor = db.get_db().cursor()
    r = cursor.execute(query, data)
    db.get_db().commit()
    return 'Updated progress description'


#------------------------------------------------------------
# Adds new project for Alex
@alex.route('/users/0001/projects', methods=['POST'])
def add_project_for_user_0001():
    current_app.logger.info('POST /users/0001/projects route')
    project_info = request.json
    title = project_info['title']
    description = project_info.get('description', None)  
    tags = project_info['tags']
    is_archived = project_info.get('is_archived', False)  
    
    query = '''
        INSERT INTO projects (user_id, title, description, tags, is_archived)
        VALUES (%s, %s, %s, %s, %s)
    '''
    data = ('0001', title, description, tags, is_archived)  
    cursor = db.get_db().cursor()
    r = cursor.execute(query, data)
    db.get_db().commit()
    return jsonify({"message": "New project added", "project_info": project_info}), 200


#------------------------------------------------------------
# Delete specific project for Alex
@alex.route('/users/0001/projects/<int:project_id>', methods=['DELETE'])
def delete_project_for_user_0001(project_id):
    current_app.logger.info(f'DELETE /users/0001/projects/{project_id} route')

    query = '''
        DELETE FROM projects
        WHERE project_id = %s AND user_id = %s
    '''
    data = (project_id, '0001')  

    cursor = db.get_db().cursor()
    r = cursor.execute(query, data)
    db.get_db().commit()
    return jsonify({"message": f"Project with id {project_id} deleted successfully"}), 200
