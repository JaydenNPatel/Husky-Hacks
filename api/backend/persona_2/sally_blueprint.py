from flask import Blueprint
from flask import request
from flask import jsonify
from flask import make_response
from flask import current_app
from backend.db_connection import db
from backend.ml_models.model01 import predict

#------------------------------------------------------------
# Create a new Blueprint 
sally = Blueprint('sally', __name__)

# Route 1: Upload a project with feedback requests (POST)
@sally.route('/feedback_requests', methods=['POST'])
def create_feedback_request():
    feedback_request_data = request.json
    query = '''
        INSERT INTO feedback_requests (project_id, highlighted_section, request_details)
        VALUES (%s, %s, %s)
    '''
    data = (
        feedback_request_data['project_id'], 
        feedback_request_data['highlighted_section'], 
        feedback_request_data['request_details']
    )
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return make_response("Feedback request created successfully", 201)

# Route 2: Delete unnecessary feedback (DELETE)
@sally.route('/feedback/<id>', methods=['DELETE'])
def delete_feedback(id):
    query = 'DELETE FROM feedback WHERE id = %s'
    cursor = db.get_db().cursor()
    cursor.execute(query, (id,))
    db.get_db().commit()
    return make_response("Feedback deleted successfully", 200)

# Route 3: Retrieve all feedback requests (GET)
@sally.route('/feedback_requests', methods=['GET'])
def get_feedback_requests():
    query = 'SELECT * FROM feedback_requests'
    cursor = db.get_db().cursor()
    cursor.execute(query)
    feedback_requests = cursor.fetchall()
    return make_response(jsonify(feedback_requests), 200)

# Route 4: Update project details after feedback (PUT)
@sally.route('/projects/<id>', methods=['PUT'])
def update_project_after_feedback(id):
    project_data = request.json
    query = '''
        UPDATE projects
        SET description = %s, tags = %s
        WHERE id = %s
    '''
    data = (project_data['description'], project_data['tags'], id)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return make_response("Project updated after feedback", 200)

# Route 5: Retrieve constructive feedback (GET)
@sally.route('/feedback/<id>', methods=['GET'])
def get_feedback(id):
    query = 'SELECT * FROM feedback WHERE id = %s'
    cursor = db.get_db().cursor()
    cursor.execute(query, (id,))
    feedback = cursor.fetchall()
    return make_response(jsonify(feedback), 200)
    

@sally.route('/projects', methods=['POST'])
def create_project():
    project_data = request.json
    query = '''
        INSERT INTO projects (name, description, feedback_areas)
        VALUES (%s, %s, %s)
    '''
    data = (
        project_data['name'], 
        project_data['description'], 
        project_data['feedback_areas']
    )
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return make_response("Project created successfully", 201)

# Route 3: Retrieve all projects (GET)
@sally.route('/projects', methods=['GET'])
def get_all_projects():
    query = 'SELECT * FROM projects'
    cursor = db.get_db().cursor()
    cursor.execute(query)
    projects = cursor.fetchall()
    return make_response(jsonify(projects), 200)
