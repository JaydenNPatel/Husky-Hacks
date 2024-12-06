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

@saquon.route('/users/<id>', methods=['PUT'])
def update_user(id):
    try:
        user_data = request.json
        if not user_data:
            return make_response("Invalid data", 400)

        query = '''
            UPDATE users
            SET first_name = %s, last_name = %s, email = %s, role = %s, status = %s
            WHERE user_id = %s
        '''
        data = (
            user_data["first_name"],
            user_data["last_name"],
            user_data["email"],
            user_data["role"],
            user_data["status"],
            id
        )
        cursor = db.get_db().cursor()
        cursor.execute(query, data)
        db.get_db().commit()
        return make_response("User updated successfully", 200)
    except Exception as e:
        current_app.logger.error(f"Error updating user: {e}")
        return make_response(f"Failed to update user: {e}", 500)
    
# Route 4: Archive a user account (DELETE)
@saquon.route('/users/<id>', methods=['DELETE'])
def archive_user(id):
    query = 'DELETE FROM users WHERE user_id = %s'
    cursor = db.get_db().cursor()
    cursor.execute(query, (id,))
    db.get_db().commit()
    return make_response("User archived successfully", 200)





# Route 5: Add an automated alert (POST)
@saquon.route('/alerts', methods=['POST'])
def add_alert():
    alert_data = request.json
    query = '''
        INSERT INTO alerts (alert_type, description, timestamp)
        VALUES (%s, %s, %s)
    '''
    data = (alert_data['alert_type'], alert_data['description'], alert_data['timestamp'])
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return make_response("Alert added successfully", 201)
    
# Route 3: Retrieve all users (GET)
@saquon.route('/users', methods=['GET'])
def get_all_projects():
    query = 'SELECT * FROM users'
    cursor = db.get_db().cursor()
    cursor.execute(query)
    users = cursor.fetchall()
    return make_response(jsonify(users), 200)