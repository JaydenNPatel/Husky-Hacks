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
        ON UPDATE CASCADE ON DELETE CASCADE,
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
                    ON UPDATE CASCADE ON DELETE CASCADE,
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

CREATE TABLE feedback_request (
    request_id int AUTO_INCREMENT NOT NULL,
    project_id int NOT NULL,
    requester_id int NOT NULL,
    feedback_area varchar(200) NOT NULL,
    request_date datetime DEFAULT CURRENT_TIMESTAMP NOT NULL
                      ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (request_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
                      ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (requester_id) REFERENCES users(user_id)
                      ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE INDEX uq_idx_request_id (request_id),
    INDEX idx_project_id (project_id),
    INDEX idx_requester_id (requester_id)
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
                      ON UPDATE CASCADE ON DELETE CASCADE,
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
                   ON UPDATE CASCADE ON DELETE CASCADE,
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
                    ON UPDATE CASCADE ON DELETE CASCADE,
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
                         ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (assigned_by) references users(user_id)
                    ON UPDATE CASCADE ON DELETE CASCADE,
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
                         ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE INDEX uq_idx_id (log_id),
    INDEX idx_user_id (user_id)
);

CREATE TABLE backups (
    backup_id int AUTO_INCREMENT NOT NULL,
    backup_date datetime DEFAULT CURRENT_TIMESTAMP NOT NULL
                     ON UPDATE CURRENT_TIMESTAMP,
    backup_size int NOT NULL,
    status varchar(50) NOT NULL,
    error_log_id int NOT NULL,
    PRIMARY KEY (backup_id),
    FOREIGN KEY (error_log_id) references system_logs(log_id)
                     ON UPDATE CASCADE ON DELETE CASCADE,
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
                                 ON UPDATE CASCADE ON DELETE CASCADE,
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
                           ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (metric_id) references user_engagement_metrics(metric_id)
                                 ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (metric_id) references revenue_metrics(metric_id)
                                 ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (metric_id) references retention_metrics(metric_id)
                                 ON UPDATE CASCADE ON DELETE CASCADE,
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
    timestamp datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    notif_type int NOT NULL,
    threshold_value decimal(5, 2) NOT NULL,
    actual_value decimal(5, 2) NOT NULL,
    PRIMARY KEY (notification_id),
    FOREIGN KEY (notif_type) references notification_type(type_id)
                           ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (notification_id),
    INDEX idx_notif_type (notif_type)
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
    view_description varchar(200),
    created_date datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_updated datetime DEFAULT CURRENT_TIMESTAMP NOT NULL
                       ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (view_id),
    FOREIGN KEY (created_by) references teams(team_id)
                       ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_id (view_id),
    INDEX idx_created_by (created_by)
);

ALTER TABLE feedback
DROP FOREIGN KEY feedback_ibfk_1; -- Drop the old constraint on project_id

ALTER TABLE feedback
ADD CONSTRAINT feedback_ibfk_1
FOREIGN KEY (project_id) REFERENCES projects(project_id)
ON DELETE CASCADE ON UPDATE CASCADE; -- Add cascading delete

ALTER TABLE progress
DROP FOREIGN KEY progress_ibfk_1; -- Drop the old constraint on project_id

ALTER TABLE progress
ADD CONSTRAINT progress_ibfk_1
FOREIGN KEY (project_id) REFERENCES projects(project_id)
ON DELETE CASCADE ON UPDATE CASCADE; -- Add cascading delete
