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

# Route 2: Create a new KPI view (POST)
@devin.route('/kpi_views', methods=['POST'])
def create_kpi_view():
    kpi_data = request.json
    query = '''
        INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
        VALUES (%s, %s, %s, %s)
    '''
    data = (kpi_data['view_name'], kpi_data['created_by'], kpi_data['created_date'], kpi_data['last_updated'])
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return make_response("KPI view created successfully", 201)

# Route 3: Update a metric (PUT)
@devin.route('/metrics/<id>', methods=['PUT'])
def update_metric(id):
    metric_data = request.json
    query = '''
        UPDATE metrics
        SET metric_type = %s, metric_value = %s, timestamp = %s
        WHERE id = %s
    '''
    data = (metric_data['metric_type'], metric_data['metric_value'], metric_data['timestamp'], id)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return make_response("Metric updated successfully", 200)