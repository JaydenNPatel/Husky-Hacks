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

# Route 1: Retrieve all retention metrics (GET)
@devin.route('/retention_metrics', methods=['GET'])
def get_retention_metrics():
    query = 'SELECT rt.metric_id, ds.source_name, ds.data_type, rt.churn_rate, rt.retention_rate, rt.cohort, rt.timestamp  FROM retention_metrics as rt JOIN data_source as ds ON rt.data_source = ds.source_id'
    cursor = db.get_db().cursor()
    cursor.execute(query)
    metrics = cursor.fetchall()
    return make_response(jsonify(metrics), 200)

# Route 2: Retrieve all revenue metrics (GET)
@devin.route('/revenue_metrics', methods=['GET'])
def get_revenue_metrics():
    query = 'SELECT rv.metric_id, ds.source_name, ds.data_type, rv.revenue, rv.avg_revenue_per_user, rv.transactions, rv.currency, rv.timestamp FROM revenue_metrics as rv JOIN data_source as ds ON rv.data_source = ds.source_id'
    cursor = db.get_db().cursor()
    cursor.execute(query)
    metrics = cursor.fetchall()
    return make_response(jsonify(metrics), 200)

# Route 3: Retrieve all user engagement metrics (GET)
@devin.route('/user_engagement_metrics', methods=['GET'])
def get_user_engagement_metrics():
    query = 'SELECT ue.metric_id, ds.source_name, ds.data_type, ue.engagement_rate, ue.active_users, ue.new_users, ue.returning_users, ue.timestamp FROM user_engagement_metrics as ue JOIN data_source as ds ON ue.data_source = ds.source_id'
    cursor = db.get_db().cursor()
    cursor.execute(query)
    metrics = cursor.fetchall()
    return make_response(jsonify(metrics), 200)

# Route 4: Create a new KPI view (POST)
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

# Route 5: Update a metric (PUT)
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

# Route 6: Delete outdated metrics (DELETE)
@devin.route('/retention_metrics/<id>', methods=['DELETE'])
def delete_retention_metrics(id):
    query = 'DELETE FROM retention_metrics WHERE metric_id = %s'
    cursor = db.get_db().cursor()
    cursor.execute(query, (id,))
    db.get_db().commit()
    return make_response("Metric deleted successfully", 200)

# Route 7: Delete outdated metrics (DELETE)
@devin.route('/revenue_metrics/<id>', methods=['DELETE'])
def delete_revenue_metrics(id):
    query = 'DELETE FROM revenue_metrics WHERE metric_id = %s'
    cursor = db.get_db().cursor()
    cursor.execute(query, (id,))
    db.get_db().commit()
    return make_response("Metric deleted successfully", 200)

# Route 8: Delete outdated metrics (DELETE)
@devin.route('/user_engagement_metrics/<id>', methods=['DELETE'])
def delete_user_engagement_metrics(id):
    query = 'DELETE FROM user_engagement_metrics WHERE metric_id = %s'
    cursor = db.get_db().cursor()
    cursor.execute(query, (id,))
    db.get_db().commit()
    return make_response("Metric deleted successfully", 200)

# Route 9: Retrieve real-time dashboard data (GET)
@devin.route('/dashboard', methods=['GET'])
def get_dashboard():
    query = '''
        SELECT metric_type, AVG(metric_value) AS avg_value, MAX(timestamp) AS last_updated
        FROM metrics
        GROUP BY metric_type
    '''
    cursor = db.get_db().cursor()
    cursor.execute(query)
    dashboard_data = cursor.fetchall()
    return make_response(jsonify(dashboard_data), 200)