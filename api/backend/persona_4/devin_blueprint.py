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

# Route 4: Retrieve all kpi views (GET)
@devin.route('/all_views', methods=['GET'])
def get_all_views():
    query = 'SELECT * FROM kpi_views'
    cursor = db.get_db().cursor()
    cursor.execute(query)
    views = cursor.fetchall()
    return make_response(jsonify(views), 200)

# Route 5: Retrieve all teams
@devin.route('/teams', methods=['GET'])
def get_all_teams():
    query = 'SELECT * FROM teams'
    cursor = db.get_db().cursor()
    cursor.execute(query)
    teams = cursor.fetchall()
    return make_response(jsonify(teams), 200)

# Route 6: Create a new KPI view (POST)
@devin.route('/kpi_views', methods=['POST'])
def create_kpi_view():
    kpi_data = request.json
    query = '''
        INSERT INTO kpi_views (view_name, created_by, view_description)
        VALUES (%s, %s, %s)
    '''
    data = (kpi_data['view_name'], kpi_data['team'], kpi_data['description'])
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return make_response("KPI view created successfully", 200)

# Route 7: Get the Id of a team
@devin.route('/team_id/<team>', methods=['GET'])
def get_team_id(team):
    query = 'SELECT team_id FROM teams WHERE team_name = %s'
    cursor = db.get_db().cursor()
    cursor.execute(query, (team,)) 
    id = cursor.fetchall()
    return make_response(jsonify(id), 200)

# Route 8: Update a metric (PUT)
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

# Route 9: Delete outdated metrics (DELETE)
@devin.route('/retention_metrics/<id>', methods=['DELETE'])
def delete_retention_metrics(id):
    query = 'DELETE FROM retention_metrics WHERE metric_id = %s'
    cursor = db.get_db().cursor()
    cursor.execute(query, (id,))
    db.get_db().commit()
    return make_response("Metric deleted successfully", 200)

# Route 10: Delete outdated metrics (DELETE)
@devin.route('/revenue_metrics/<id>', methods=['DELETE'])
def delete_revenue_metrics(id):
    query = 'DELETE FROM revenue_metrics WHERE metric_id = %s'
    cursor = db.get_db().cursor()
    cursor.execute(query, (id,))
    db.get_db().commit()
    return make_response("Metric deleted successfully", 200)

# Route 11: Delete outdated metrics (DELETE)
@devin.route('/user_engagement_metrics/<id>', methods=['DELETE'])
def delete_user_engagement_metrics(id):
    query = 'DELETE FROM user_engagement_metrics WHERE metric_id = %s'
    cursor = db.get_db().cursor()
    cursor.execute(query, (id,))
    db.get_db().commit()
    return make_response("Metric deleted successfully", 200)

# Route 12: Retrieve real-time dashboard data (GET)
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