from flask import Blueprint
from flask import request
from flask import jsonify
from flask import make_response
from flask import current_app
from backend.db_connection import db
from backend.ml_models.model01 import predict

#------------------------------------------------------------
# Create a new Blueprint
saquon = Blueprint('saquon', __name__)

# Route 1: Retrieve system logs (GET)
@saquon.route('/system_logs', methods=['GET'])
def get_system_logs():
    query = 'SELECT * FROM system_logs'
    cursor = db.get_db().cursor()
    cursor.execute(query)
    logs = cursor.fetchall()
    return make_response(jsonify(logs), 200)