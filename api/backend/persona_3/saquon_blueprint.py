from flask import Blueprint
from flask import request
from flask import jsonify
from flask import make_response
from flask import current_app
from backend.db_connection import db
from backend.ml_models.model01 import predict

#------------------------------------------------------------
# Create a new Blueprint
# Blueprint named 'saquon' for managing routes related to system logs, backups, user accounts, and alerts.
saquon = Blueprint('saquon', __name__)

#------------------------------------------------------------
# Route 1: Retrieve system logs (GET)
# This route retrieves all system logs from the database.
# It is useful for monitoring system activity or debugging issues.
@saquon.route('/system_logs', methods=['GET'])
def get_system_logs():
    query = 'SELECT * FROM system_logs'
    cursor = db.get_db().cursor()
    cursor.execute(query)
    logs = cursor.fetchall()
    return make_response(jsonify(logs), 200)

#------------------------------------------------------------
# Route 2: Add a new backup (POST)
# This route allows the creation of a new backup entry in the database.
# Users can provide the backup date, size, and status.
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

#------------------------------------------------------------
# Route 3: Update user details (PUT)
# This route updates the details of a specific user in the database.
# Users can update fields like first name, last name, email, role, and status by providing user data in JSON format.
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

#------------------------------------------------------------
# Route 4: Archive a user account (DELETE)
# This route allows the deletion (archiving) of a user account based on the user ID.
# It permanently removes the user record from the database.
@saquon.route('/users/<id>', methods=['DELETE'])
def archive_user(id):
    query = 'DELETE FROM users WHERE user_id = %s'
    cursor = db.get_db().cursor()
    cursor.execute(query, (id,))
    db.get_db().commit()
    return make_response("User archived successfully", 200)

#------------------------------------------------------------
# Route 5: Add an automated alert (POST)
# This route allows the creation of a new alert in the database.
# Alerts include details like type, description, and timestamp.
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

#------------------------------------------------------------
# Route 6: Retrieve all users (GET)
# This route retrieves all user accounts from the database.
# It returns a JSON response with details of all users.
@saquon.route('/users', methods=['GET'])
def get_all_projects():
    query = 'SELECT * FROM users'
    cursor = db.get_db().cursor()
    cursor.execute(query)
    users = cursor.fetchall()
    return make_response(jsonify(users), 200)
