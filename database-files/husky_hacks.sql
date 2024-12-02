CREATE DATABASE IF NOT EXISTS Husky_Hacks;
use Husky_Hacks;

CREATE TABLE roles (
    role_id int AUTO_INCREMENT NOT NULL,
    role_title varchar(50) NOT NULL,
    PRIMARY KEY (role_id),
    UNIQUE INDEX uq_idx_role_title (role_id)
);

CREATE TABLE users (
    user_id int AUTO_INCREMENT NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    email varchar(75) NOT NULL,
    role int NOT NULL,
    status boolean DEFAULT TRUE NOT NULL,
    date_created datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (user_id),
    FOREIGN KEY (role) references roles(role_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (user_id),
    UNIQUE INDEX uq_idx_email (email),
    INDEX idx_role (role)
);

CREATE TABLE projects (
    project_id int AUTO_INCREMENT NOT NULL,
    user_id int NOT NULL,
    title varchar(50) NOT NULL,
    description varchar(200),
    tags varchar(50) NOT NULL ,
    upload_date datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    is_archived boolean DEFAULT FALSE NOT NULL,
    PRIMARY KEY (project_id),
    FOREIGN KEY (user_id) references users(user_id)
                    ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (project_id),
    INDEX idx_user_id (user_id)
);

CREATE TABLE progress (
    progress_id int AUTO_INCREMENT NOT NULL,
    project_id int NOT NULL,
    progress_description varchar(200),
    progress_date datetime DEFAULT CURRENT_TIMESTAMP NOT NULL
                      ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (progress_id),
    FOREIGN KEY (project_id) references projects(project_id)
                      ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (progress_id),
    INDEX idx_project_id (project_id)
);

CREATE TABLE feedback (
    feedback_id int AUTO_INCREMENT NOT NULL,
    project_id int NOT NULL,
    reviewer_id int NOT NULL,
    feedback_text varchar(200) NOT NULL ,
    rating int,
    feedback_date datetime DEFAULT CURRENT_TIMESTAMP NOT NULL
                      ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (feedback_id),
    FOREIGN KEY (project_id) references projects(project_id)
                      ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (reviewer_id) references users(user_id)
                      ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (feedback_id),
    INDEX idx_project_id (project_id),
    INDEX idx_reviewer_id (reviewer_id)
);

CREATE TABLE reports (
    report_id int AUTO_INCREMENT NOT NULL,
    generated_by int NOT NULL,
    name varchar(50) NOT NULL,
    generated_date datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    content varchar(200) NOT NULL,
    PRIMARY KEY (report_id),
    FOREIGN KEY (generated_by) references users(user_id)
                   ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (report_id),
    INDEX idx_generated_by (generated_by)
);

CREATE TABLE alert_type (
    type_id int AUTO_INCREMENT NOT NULL,
    type_name varchar(50) NOT NULL,
    PRIMARY KEY (type_id),
    UNIQUE INDEX uq_idx_id (type_id)
);

CREATE TABLE alerts (
    alert_id int AUTO_INCREMENT NOT NULL,
    user_id int NOT NULL,
    alert_type int NOT NULL,
    message varchar(200),
    trigger_condition varchar(200) NOT NULL,
    created_date datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (alert_id),
    FOREIGN KEY (user_id) references users(user_id)
                    ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (alert_type) references alert_type(type_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (alert_id),
    INDEX idx_user_id (user_id),
    INDEX idx_alert_type (alert_type)
);

CREATE TABLE permissions (
    permission_id int AUTO_INCREMENT NOT NULL,
    user_id int NOT NULL,
    access_level varchar(50) NOT NULL,
    assigned_by int NOT NULL,
    assigned_date datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (permission_id),
    FOREIGN KEY (user_id) references users(user_id)
                         ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (assigned_by) references users(user_id)
                    ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (permission_id),
    INDEX idx_user_id (user_id),
    INDEX idx_assigned_by (assigned_by)
);

CREATE TABLE system_logs (
    log_id int AUTO_INCREMENT NOT NULL,
    user_id int NOT NULL,
    event_type varchar(50) NOT NULL,
    description varchar(200) NOT NULL,
    timestamp datetime DEFAULT CURRENT_TIMESTAMP NOT NULL
                         ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (log_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
                         ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (log_id),
    INDEX idx_user_id (user_id)
);

CREATE TABLE backups (
    backup_id int AUTO_INCREMENT NOT NULL,
    backup_date datetime DEFAULT CURRENT_TIMESTAMP NOT NULL
                     ON UPDATE CURRENT_TIMESTAMP,
    backup_size int NOT NULL,
    status boolean NOT NULL,
    error_log_id int NOT NULL,
    PRIMARY KEY (backup_id),
    FOREIGN KEY (error_log_id) references system_logs(log_id)
                     ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (backup_id),
    INDEX idx_err_log_id (error_log_id)
);

CREATE TABLE data_source (
    source_id int AUTO_INCREMENT NOT NULL,
    source_name varchar(50) NOT NULL,
    last_updated datetime DEFAULT CURRENT_TIMESTAMP NOT NULL
                         ON UPDATE CURRENT_TIMESTAMP,
    data_type varchar(50) NOT NULL,
    PRIMARY KEY (source_id),
    UNIQUE INDEX uq_idx_id (source_id)
);

CREATE TABLE user_engagement_metrics (
    metric_id int AUTO_INCREMENT NOT NULL,
    timestamp datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    engagement_rate decimal(5, 2) NOT NULL,
    active_users int NOT NULL,
    new_users int NOT NULL,
    returning_users int NOT NULL,
    data_source int NOT NULL,
    PRIMARY KEY (metric_id),
    FOREIGN KEY (data_source) references data_source(source_id)
                                     ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (metric_id),
    INDEX idx_data_source (data_source)
);

CREATE TABLE revenue_metrics (
    metric_id int AUTO_INCREMENT NOT NULL,
    timestamp datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    revenue int NOT NULL,
    avg_revenue_per_user decimal(12, 2) NOT NULL,
    transactions int NOT NULL,
    currency varchar(50) NOT NULL,
    data_source int NOT NULL,
    PRIMARY KEY (metric_id),
    FOREIGN KEY (data_source) references data_source(source_id)
                                     ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (metric_id),
    INDEX idx_data_source (data_source)
);

CREATE TABLE retention_metrics (
    metric_id int AUTO_INCREMENT NOT NULL,
    timestamp datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    retention_rate decimal(5, 2) NOT NULL,
    churn_rate decimal(5, 2) NOT NULL,
    cohort varchar(50) NOT NULL,
    data_source int NOT NULL,
    PRIMARY KEY (metric_id),
    FOREIGN KEY (data_source) references data_source(source_id)
                                     ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (metric_id),
    INDEX idx_data_source (data_source)
);

CREATE TABLE real_time_dashboard (
    dashboard_id int AUTO_INCREMENT NOT NULL,
    last_refreshed datetime DEFAULT CURRENT_TIMESTAMP NOT NULL
                                 ON UPDATE CURRENT_TIMESTAMP,
    metric_id int NOT NULL,
    metric_type varchar(50) NOT NULL,
    PRIMARY KEY (dashboard_id),
    FOREIGN KEY (metric_id) references user_engagement_metrics(metric_id)
                                 ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (metric_id) references revenue_metrics(metric_id)
                                 ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (metric_id) references retention_metrics(metric_id)
                                 ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (dashboard_id),
    INDEX idx_data_source (metric_id)
);

CREATE TABLE archived_data (
    archive_id int AUTO_INCREMENT NOT NULL,
    metric_id int NOT NULL,
    metric_type varchar(50) NOT NULL,
    archived_timestamp datetime DEFAULT CURRENT_TIMESTAMP NOT NULL
                           ON UPDATE CURRENT_TIMESTAMP,
    archived_by int NOT NULL,
    PRIMARY KEY (archive_id),
    FOREIGN KEY (archived_by) references users(user_id)
                           ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (metric_id) references user_engagement_metrics(metric_id)
                                 ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (metric_id) references revenue_metrics(metric_id)
                                 ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (metric_id) references retention_metrics(metric_id)
                                 ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (archive_id),
    INDEX idx_metric_id (metric_id),
    INDEX idx_archived_by (archived_by)
);

CREATE TABLE notification_type (
    type_id int AUTO_INCREMENT NOT NULL,
    name varchar(50) NOT NULL,
    PRIMARY KEY (type_id),
    UNIQUE INDEX uq_idx_id (type_id)
);

CREATE TABLE notifications (
    notification_id int AUTO_INCREMENT NOT NULL,
    metric_id int NOT NULL,
    timestamp datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    notification_type int NOT NULL,
    threshold_value decimal(5, 2) NOT NULL,
    actual_value decimal(5, 2) NOT NULL,
    PRIMARY KEY (notification_id),
    FOREIGN KEY (notification_type) references notification_type(type_id)
                           ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (metric_id) references user_engagement_metrics(metric_id)
                                 ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (metric_id) references revenue_metrics(metric_id)
                                 ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (metric_id) references retention_metrics(metric_id)
                                 ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (notification_id),
    INDEX idx_notification_type (notification_type),
    INDEX idx_metric_id (metric_id)
);

CREATE TABLE departments (
    department_id int AUTO_INCREMENT NOT NULL,
    name varchar(50) NOT NULL,
    PRIMARY KEY (department_id),
    UNIQUE INDEX uq_idx_id (department_id)
);

CREATE TABLE teams (
    team_id int AUTO_INCREMENT NOT NULL,
    team_name varchar(50) NOT NULL,
    department int NOT NULL,
    PRIMARY KEY (team_id),
    FOREIGN KEY (department) references departments(department_id)
                   ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (team_id),
    INDEX idx_department (department)
);

CREATE TABLE kpi_views (
    view_id int AUTO_INCREMENT NOT NULL,
    view_name varchar(50) NOT NULL,
    created_by int NOT NULL,
    created_date datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_updated datetime DEFAULT CURRENT_TIMESTAMP NOT NULL
                       ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (view_id),
    FOREIGN KEY (created_by) references teams(team_id)
                       ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (view_id),
    INDEX idx_created_by (created_by)
);

insert into users (user_id, first_name, last_name, email, role, status, date_created) values (0001, 'Alex', 'Chen', 'calex@ning.com', 1, true, '2/1/2024');
insert into users (user_id, first_name, last_name, email, role, status, date_created) values (0002, 'Sally', 'Pigott', 'spigs@blog.com', 2, true, '4/12/2024');
insert into users (user_id, first_name, last_name, email, role, status, date_created) values (0003, 'Saquon', 'Porkly', 'saquon@opera.com', 3, false, '7/15/2024');
insert into users (user_id, first_name, last_name, email, role, status, date_created) values (0004, 'Devin', 'Codington', 'coder@wikispaces.com', 4, false, '3/7/2024');

INSERT INTO alerts (alert_id, user_id, alert_type, message, trigger_condition, created_date) VALUES 
(1, 0001, 1, 'Student requested feedback on project XYZ.', 'Feedback pending for 7 days', '2024-10-05 10:45:23'),
(2, 0002, 2, 'You have been assigned a new project: Data Analytics Dashboard.', 'Project assignment', '2024-09-12 14:22:10'),
(3, 0003, 3, 'Report submitted for Project ABC.', 'Report status: Submitted', '2024-11-01 08:15:45'),
(4, 0004, 4, 'Your permissions have been updated to Admin.', 'Permission change approved', '2024-08-29 11:37:55'),
(5, 0001, 6, 'Progress review due for Project Delta.', 'Review scheduled', '2024-11-14 16:10:10'),
(6, 0001, 7, 'Data archived for Metrics Dashboard.', 'Archive policy applied', '2024-07-30 09:05:34'),
(7, 0002, 1, 'Feedback requested on system performance.', 'User submitted feedback', '2024-10-20 12:00:00'),
(8, 0003, 8, 'New notification: Threshold breached for CPU usage.', 'Threshold breach', '2024-11-10 18:23:49'),
(9, 0004, 9, 'Alert: Revenue metrics exceeded threshold.', 'Revenue > $1M', '2024-11-25 22:10:30'),
(10, 0001, 10, 'User status changed to Inactive.', 'Inactive for 30 days', '2024-09-07 13:18:40'),
(11, 0002, 1, 'Student requested additional feedback.', 'Pending review for Task 2', '2024-10-28 15:32:12'),
(12, 0003, 5, 'Critical system error reported.', 'Error code: 500', '2024-11-02 09:45:20'),
(13, 0004, 8, 'New notification: Data source updated.', 'Source refresh complete', '2024-09-15 19:12:50'),
(14, 0001, 6, 'Progress milestone reached for Project Epsilon.', 'Milestone: 50% Complete', '2024-10-05 14:55:45'),
(15, 0002, 9, 'Threshold exceeded: Transactions spike.', 'Transactions > 1K/hour', '2024-08-22 17:22:35'),
(16, 0003, 2, 'Project Alpha has been assigned to your team.', 'New project alert', '2024-09-30 11:47:02'),
(17, 0004, 1, 'Feedback requested on recent submission.', 'Feedback request', '2024-10-18 10:25:13'),
(18, 0001, 4, 'Access level changed to Viewer.', 'Permissions reduced', '2024-08-10 20:50:55'),
(19, 0002, 5, 'System downtime detected.', 'Downtime > 10 minutes', '2024-11-23 02:10:05'),
(20, 0003, 7, 'Archived data review required.', 'Data archive', '2024-09-19 06:15:18'),
(21, 0004, 3, 'New report submission for Metrics Dashboard.', 'Report uploaded', '2024-10-09 16:45:00'),
(22, 0001, 6, 'Progress milestone achieved: Report drafted.', 'Milestone reached', '2024-10-25 11:05:30'),
(23, 0002, 9, 'System resource usage critical.', 'CPU usage > 90%', '2024-11-28 03:10:20'),
(24, 0003, 1, 'Student feedback requested on final project.', 'Feedback needed', '2024-11-16 14:00:45'),
(25, 0004, 4, 'Permission update: Contributor role added.', 'User promoted', '2024-08-15 09:22:10'),
(26, 0001, 5, 'Error in data ingestion pipeline.', 'Job failed', '2024-11-27 13:42:33'),
(27, 0002, 10, 'User status set to pending review.', 'Manual review', '2024-09-28 07:25:00'),
(28, 0003, 8, 'New system notification: Backup completed.', 'Backup success', '2024-09-10 21:20:45'),
(29, 0004, 7, 'Data archive notification sent.', 'Archival policy triggered', '2024-11-12 08:50:22'),
(30, 0001, 6, 'Progress on research project documented.', 'Milestone log', '2024-10-04 18:14:56'),
(31, 0002, 9, 'Threshold breached for page views.', 'Page views > 500/day', '2024-10-17 10:12:00'),
(32, 0003, 1, 'Feedback required for submission.', 'Assignment pending', '2024-11-08 09:30:05'),
(33, 0004, 3, 'Final report submitted.', 'Project closed', '2024-09-26 14:11:14'),
(34, 0001, 5, 'System log recorded with error.', 'Log entry created', '2024-11-26 12:10:15'),
(35, 0002, 8, 'Notification about updated permissions.', 'Role change', '2024-10-13 15:00:00'),
(36, 0003, 10, 'User status switched to active.', 'Reactivation', '2024-09-05 11:55:40'),
(37, 0004, 4, 'Permission removal: Admin rights revoked.', 'Access updated', '2024-11-09 17:42:05'),
(38, 0001, 6, 'Progress check-in scheduled for next week.', 'Progress update', '2024-10-03 16:35:00'),
(39, 0002, 2, 'New project added to your tasks.', 'Project management', '2024-08-20 22:45:50'),
(40, 0003, 7, 'Archived data needs review.', 'Data policy', '2024-11-13 09:00:20'),
(41, 0004, 3, 'Submission acknowledged for report.', 'Acknowledged', '2024-10-19 05:15:44'),
(42, 0001, 9, 'Alert: Network latency detected.', 'Latency > 200ms', '2024-11-18 21:08:30'),
(43, 0002, 1, 'Feedback session scheduled.', 'Feedback due', '2024-11-21 13:14:15'),
(44, 0003, 2, 'Assigned new task: Market Analysis.', 'Task assignment', '2024-09-02 07:22:30'),
(45, 0004, 4, 'Permissions synchronized for team access.', 'Permissions adjusted', '2024-11-06 20:30:00'),
(46, 0001, 10, 'User account marked for audit.', 'Audit notice', '2024-10-29 02:15:00'),
(47, 0002, 8, 'System event: Scheduled maintenance.', 'System maintenance', '2024-09-17 16:45:30'),
(48, 0003, 5, 'Application crash detected.', 'Crash event', '2024-11-22 04:35:12'),
(49, 0004, 3, 'Report review completed.', 'Review finalized', '2024-09-24 18:00:20'),
(50, 0001, 7, 'Archived data access notification.', 'Archived data flagged', '2024-10-22 10:28:43');
