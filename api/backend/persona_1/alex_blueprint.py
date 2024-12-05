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


# Route 1: Create a new project (POST)
@alex.route('/projects', methods=['POST'])
def create_project():
    project_data = request.json
    query = '''
        INSERT INTO projects (title, description, tags, user_id)
        VALUES (%s, %s, %s, %s)
    '''
    data = (
        project_data['title'], 
        project_data['description'], 
        project_data['tags'], 
        project_data['user_id']
    )
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return make_response("Project created successfully", 201)

# Route 2: Update project details (PUT)
@alex.route('/projects/<id>', methods=['PUT'])
def update_project(id):
    project_data = request.json
    query = '''
        UPDATE projects
        SET title = %s, description = %s, tags = %s
        WHERE project_id = %s
    '''
    data = (
        project_data['title'], 
        project_data['description'], 
        project_data['tags'], 
        id
    )
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return make_response("Project updated successfully", 200)

# Route 3: Retrieve all projects (GET)
@alex.route('/projects', methods=['GET'])
def get_all_projects():
    query = 'SELECT * FROM projects'
    cursor = db.get_db().cursor()
    cursor.execute(query)
    projects = cursor.fetchall()
    return make_response(jsonify(projects), 200)

# Route 4: Archive a project (DELETE)
@alex.route('/projects/<id>', methods=['DELETE'])
def archive_project(id):
    query = 'DELETE FROM projects WHERE project_id = %s'
    cursor = db.get_db().cursor()
    cursor.execute(query, (id,))
    db.get_db().commit()
    return make_response("Project archived successfully", 200)

# Route 5: Add feedback to a project (POST)
@alex.route('/projects/<id>/feedback', methods=['POST'])
def add_feedback_to_project(id):
    feedback_data = request.json
    query = '''
        INSERT INTO feedback (project_id, user_id, feedback_text, rating)
        VALUES (%s, %s, %s, %s)
    '''
    data = (
        id, 
        feedback_data['user_id'], 
        feedback_data['feedback_text'], 
        feedback_data['rating']
    )
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return make_response("Feedback added successfully", 201)
