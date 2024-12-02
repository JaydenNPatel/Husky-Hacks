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

# Route 2: Add a new backup (POST)
@saquon.route('/backups', methods=['POST'])
def create_backup():
    backup_data = request.json
    query = '''
        INSERT INTO backups (backup_date, backup_size, status)
        VALUES (%s, %s, %s)
    '''
    data = (backup_data['backup_date'], backup_data['backup_size'], backup_data['status'])
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return make_response("Backup created successfully", 201)

# Route 3: Update user permissions (PUT)
@saquon.route('/permissions/<id>', methods=['PUT'])
def update_permissions(id):
    permission_data = request.json
    query = '''
        UPDATE permissions
        SET access_level = %s, assigned_by = %s
        WHERE id = %s
    '''
    data = (permission_data['access_level'], permission_data['assigned_by'], id)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return make_response("Permission updated successfully", 200)