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