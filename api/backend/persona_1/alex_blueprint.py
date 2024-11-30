from flask import Blueprint
from flask import request
from flask import jsonify
from flask import make_response
from flask import current_app
from backend.db_connection import db
from backend.ml_models.model01 import predict

#------------------------------------------------------------
# Create a new Blueprint object, which is a collection of 
# routes.
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
# Update progress description for one of alex's projects
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
    return 'Progress description updated!'

#------------------------------------------------------------
# Get customer detail for customer with particular userID
#   Notice the manner of constructing the query. 
@customers.route('/customers/<userID>', methods=['GET'])
def get_customer(userID):
    current_app.logger.info('GET /customers/<userID> route')
    cursor = db.get_db().cursor()
    cursor.execute('SELECT id, first_name, last_name FROM customers WHERE id = {0}'.format(userID))
    
    theData = cursor.fetchall()
    
    the_response = make_response(jsonify(theData))
    the_response.status_code = 200
    return the_response

#------------------------------------------------------------
# Makes use of the very simple ML model in to predict a value
# and returns it to the user
@customers.route('/prediction/<var01>/<var02>', methods=['GET'])
def predict_value(var01, var02):
    current_app.logger.info(f'var01 = {var01}')
    current_app.logger.info(f'var02 = {var02}')

    returnVal = predict(var01, var02)
    return_dict = {'result': returnVal}

    the_response = make_response(jsonify(return_dict))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response