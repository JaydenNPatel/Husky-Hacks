from flask import Blueprint
from flask import request
from flask import jsonify
from flask import make_response
from flask import current_app
from backend.db_connection import db
from backend.ml_models.model01 import predict

#------------------------------------------------------------
# Create a new Blueprint
devin = Blueprint('devin', __name__)

# Route 1: Retrieve all metrics (GET)
@devin.route('/metrics', methods=['GET'])
def get_metrics():
    query = 'SELECT * FROM metrics'
    cursor = db.get_db().cursor()
    cursor.execute(query)
    metrics = cursor.fetchall()
    return make_response(jsonify(metrics), 200)