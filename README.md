## Husky Hacks
Made by: Noel Burra, Thiago Fasolo, Matthew Mirza, Jayden Patel, Rikin Rakesh

## Set-up

To open and run the Husky-Hacks repository using Docker, first ensure Docker is installed and running on your system. 
Clone the repository from GitHub using git clone https://github.com/Mmirza964/Husky-Hacks.
Create a file named '.env' in the api folder, and paste the following code:


SECRET_KEY=someCrazyS3cR3T!Key.!
DB_USER=root
DB_HOST=db
DB_PORT=3306
DB_NAME= Husky_Hacks
MYSQL_ROOT_PASSWORD=1234 


Build the Docker image in the terminal using "docker compose up -d"
After that finishes, type "localhost:8502" in your web browser, or click this URL http://localhost:8502/
To stop services type "docker-compose down" in the terminal

## Summary

Our application is a dynamic platform designed to help students and alumni develop practical skills and build confidence through real-world projects. Unlike traditional coursework or programming tutorials, our platform focuses on structure, personalized feedback, and engagement. Users can upload and share coding projects, participate in challenges, and receive feedback from peers and faculty to prepare for co-ops, internships, and technical interviews. The project uses Streamlit for the frontend interface and Flask for the backend server.

## Database
<p>The database-files folder contains an SQL file named 04_create_HuskyHacks_db.sql, which includes the SQL definitions for all the tables used in the Husky_Hacks project. The 05_HuskyHacks_data.sql file also contains mock values for testing purposes. Each table is designed with primary key(s) and foreign key(s) to ensure proper relational integrity. Below is the list of tables and their attributes:

<ul>
  <li><strong>roles</strong>: <code>role_id, role_title</code></li>
  <li><strong>users</strong>: <code>user_id, first_name, last_name, email, role, status, date_created</code></li>
  <li><strong>projects</strong>: <code>project_id, user_id, title, description, tags, upload_date, is_archived</code></li>
  <li><strong>progress</strong>: <code>progress_id, project_id, progress_description, progress_date</code></li>
  <li><strong>feedback_requests</strong>: <code>request_id, project_id, requester_id, feedback_area, request_date</code></li>
  <li><strong>feedback</strong>: <code>feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date</code></li>
  <li><strong>reports</strong>: <code>report_id, generated_by, name, generated_date, content</code></li>
  <li><strong>alert_type</strong>: <code>type_id, type_name</code></li>
  <li><strong>alerts</strong>: <code>alert_id, user_id, alert_type, message, trigger_condition, created_date</code></li>
  <li><strong>permissions</strong>: <code>permission_id, user_id, access_level, assigned_by, assigned_date</code></li>
  <li><strong>system_logs</strong>: <code>log_id, user_id, event_type, description, timestamp</code></li>
  <li><strong>backups</strong>: <code>backup_id, backup_date, backup_size, status, error_log_id</code></li>
  <li><strong>data_source</strong>: <code>source_id, source_name, last_updated, data_type</code></li>
  <li><strong>user_engagement_metrics</strong>: <code>metric_id, timestamp, engagement_rate, active_users, new_users, returning_users, data_source</code></li>
  <li><strong>revenue_metrics</strong>: <code>metric_id, timestamp, revenue, avg_revenue_per_user, transactions, currency, data_source</code></li>
  <li><strong>retention_metrics</strong>: <code>metric_id, timestamp, retention_rate, churn_rate, cohort, data_source</code></li>
  <li><strong>real_time_dashboard</strong>: <code>dashboard_id, last_refreshed, metric_id, metric_type</code></li>
  <li><strong>archived_data</strong>: <code>archive_id, metric_id, metric_type, archived_timestamp, archived_by</code></li>
  <li><strong>notification_type</strong>: <code>type_id, name</code></li>
  <li><strong>notifications</strong>: <code>notification_id, timestamp, notif_type, threshold_value, actual_value</code></li>
  <li><strong>departments</strong>: <code>department_id, name</code></li>
  <li><strong>teams</strong>: <code>team_id, team_name, department</code></li>
  <li><strong>kpi_views</strong>: <code>view_id, view_name, created_by, view_description, created_date, last_updated</code></li>
</ul>


## Database
<ul>
  <li><strong>ProjectHome.py</strong>: Acts as the main landing page or routing hub for all user roles and functionalities.</li>
  <li><strong>00_Alex_Home.py</strong>: Homepage for Alex, providing navigation to manage Alex-specific tasks like uploading, editing, or deleting projects.</li>
  <li><strong>01_Alex_Upload_Project.py</strong>: Allows Alex to upload new projects with necessary details such as title, description, and tags.</li>
  <li><strong>02_Alex_Edit_Projects.py</strong>: Enables Alex to view and edit details of existing projects.</li>
  <li><strong>03_Alex_Delete_Projects.py</strong>: Provides functionality for Alex to delete projects from their account.</li>
  <li><strong>10_Sally_Home.py</strong>: Homepage for Sally, providing navigation to manage Sally-specific tasks like submitting, updating feedback, or deleting projects.</li>
  <li><strong>11_Sally_Submit_Project.py</strong>: Allows Sally to submit new projects with feedback requests.</li>
  <li><strong>12_Sally_See_Feedback.py</strong>: Enables Sally to update projects after receiving feedback.</li>
  <li><strong>13_Sally_Delete_Project.py</strong>: Allows Sally to delete projects from her account.</li>
  <li><strong>20_Saquon_Home.py</strong>: Homepage for Saquon, providing navigation to manage Saquon-specific tasks like viewing logs, managing permissions, or deleting inactive users.</li>
  <li><strong>21_Saquon_View_Logs.py</strong>: Enables Saquon to view system logs and track activities.</li>
  <li><strong>22_Saquon_Manage_Permissions.py</strong>: Allows Saquon to update and manage user permissions.</li>
  <li><strong>23_Saquon_Delete_Inactive_Users.py</strong>: Provides functionality for Saquon to view and delete inactive users from the system.</li>
  <li><strong>30_About.py</strong>: A general page providing information about the project, its purpose, and contributors.</li>
  <li><strong>30_Devin_Home.py</strong>: Homepage for Devin, providing navigation to manage Devin-specific tasks like viewing metrics, alerts, or dashboards.</li>
  <li><strong>31_Devin_View_Metrics.py</strong>: Enables Devin to view user engagement, revenue, and retention metrics.</li>
  <li><strong>32_Kpi_Views.py</strong>: Provides access to create and view Key Performance Indicator (KPI) dashboards.</li>
  <li><strong>33_Devin_Alerts.py</strong>: Allows Devin to manage and view automated alerts triggered by system metrics.</li>
  <li><strong>34_Devin_Dashboard.py</strong>: Provides a real-time dashboard for Devin to monitor various metrics and system activities.</li>
</ul>
