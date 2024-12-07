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
    INSERT INTO feedback_requests (project_id, requester_id, feedback_area)
    VALUES (%s, %s, %s)
'''
    data = (
        feedback_request_data['project_id'], 
        feedback_request_data['requester_id'], 
        feedback_request_data['feedback_area']
    )
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return make_response("Feedback request created successfully", 201)

# Route 3: Retrieve all feedback requests (GET)
@sally.route('/feedback_requests', methods=['GET'])
def get_feedback_requests():
    query = 'SELECT * FROM feedback_requests'
    cursor = db.get_db().cursor()
    cursor.execute(query)
    feedback_requests = cursor.fetchall()
    return make_response(jsonify(feedback_requests), 200)


# Route 3: Retrieve all projects (GET)
@sally.route('/projects', methods=['GET'])
def get_all_projects():
    query = 'SELECT * FROM projects'
    cursor = db.get_db().cursor()
    cursor.execute(query)
    projects = cursor.fetchall()
    return make_response(jsonify(projects), 200)

# Route: Retrieve feedback for a specific project (GET)
@sally.route('/feedback/project/<project_id>', methods=['GET'])
def get_feedback_for_project(project_id):
    query = '''
        SELECT feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date
        FROM feedback
        WHERE project_id = %s
    '''
    cursor = db.get_db().cursor()
    cursor.execute(query, (project_id,))
    feedback = cursor.fetchall()
    return make_response(jsonify(feedback), 200)

# Route 4: Archive a project (DELETE)
@sally.route('/projects/<id>', methods=['DELETE'])
def archive_project(id):
    query = 'DELETE FROM projects WHERE project_id = %s'
    cursor = db.get_db().cursor()
    cursor.execute(query, (id,))
    db.get_db().commit()
    return make_response("Project archived successfully", 200)