CREATE DATABASE IF NOT EXISTS Husky_Hacks;
USE Husky_Hacks;

CREATE TABLE roles (
    role_id INT AUTO_INCREMENT NOT NULL,
    role_title VARCHAR(50) NOT NULL,
    PRIMARY KEY (role_id),
    UNIQUE INDEX uq_idx_role_title (role_title)
);

CREATE TABLE users (
    user_id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL,
    role INT NOT NULL,
    status BOOLEAN DEFAULT TRUE NOT NULL,
    date_created DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (user_id),
    FOREIGN KEY (role) REFERENCES roles(role_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    UNIQUE INDEX uq_idx_email (email),
    INDEX idx_role (role)
);

CREATE TABLE projects (
    project_id INT AUTO_INCREMENT NOT NULL,
    user_id INT NOT NULL,
    title VARCHAR(50) NOT NULL,
    description VARCHAR(300),
    tags VARCHAR(50) NOT NULL,
    upload_date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    is_archived BOOLEAN DEFAULT FALSE NOT NULL,
    PRIMARY KEY (project_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    INDEX idx_user_id (user_id)
);

CREATE TABLE progress (
    progress_id INT AUTO_INCREMENT NOT NULL,
    project_id INT NOT NULL,
    progress_description VARCHAR(300),
    progress_date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
        ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (progress_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    INDEX idx_project_id (project_id)
);

CREATE TABLE feedback (
    feedback_id INT AUTO_INCREMENT NOT NULL,
    project_id INT NOT NULL,
    reviewer_id INT NOT NULL,
    feedback_text VARCHAR(300) NOT NULL,
    rating INT,
    feedback_date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
        ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (feedback_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (reviewer_id) REFERENCES users(user_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    INDEX idx_project_id (project_id),
    INDEX idx_reviewer_id (reviewer_id)
);

CREATE TABLE reports (
    report_id INT AUTO_INCREMENT NOT NULL,
    generated_by INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    generated_date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    content VARCHAR(300) NOT NULL,
    PRIMARY KEY (report_id),
    FOREIGN KEY (generated_by) REFERENCES users(user_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE alert_type (
    type_id INT AUTO_INCREMENT NOT NULL,
    type_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (type_id)
);

CREATE TABLE alerts (
    alert_id INT AUTO_INCREMENT NOT NULL,
    user_id INT NOT NULL,
    alert_type INT NOT NULL,
    message VARCHAR(300),
    trigger_condition VARCHAR(300) NOT NULL,
    created_date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (alert_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (alert_type) REFERENCES alert_type(type_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE permissions (
    permission_id INT AUTO_INCREMENT NOT NULL,
    user_id INT NOT NULL,
    access_level VARCHAR(50) NOT NULL,
    assigned_by INT NOT NULL,
    assigned_date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (permission_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (assigned_by) REFERENCES users(user_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE system_logs (
    log_id INT AUTO_INCREMENT NOT NULL,
    user_id INT NOT NULL,
    event_type VARCHAR(50) NOT NULL,
    description VARCHAR(300) NOT NULL,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
        ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (log_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE backups (
    backup_id INT AUTO_INCREMENT NOT NULL,
    backup_date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
        ON UPDATE CURRENT_TIMESTAMP,
    backup_size INT NOT NULL,
    status BOOLEAN NOT NULL,
    error_log_id INT NOT NULL,
    PRIMARY KEY (backup_id),
    FOREIGN KEY (error_log_id) REFERENCES system_logs(log_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE data_source (
    source_id INT AUTO_INCREMENT NOT NULL,
    source_name VARCHAR(50) NOT NULL,
    last_updated DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
        ON UPDATE CURRENT_TIMESTAMP,
    data_type VARCHAR(50) NOT NULL,
    PRIMARY KEY (source_id)
);

CREATE TABLE metrics (
    metric_id INT AUTO_INCREMENT NOT NULL,
    metric_type ENUM('engagement', 'revenue', 'retention') NOT NULL,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    value DECIMAL(12, 2) NOT NULL,
    data_source INT NOT NULL,
    PRIMARY KEY (metric_id),
    FOREIGN KEY (data_source) REFERENCES data_source(source_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE real_time_dashboard (
    dashboard_id INT AUTO_INCREMENT NOT NULL,
    last_refreshed DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
        ON UPDATE CURRENT_TIMESTAMP,
    metric_id INT NOT NULL,
    PRIMARY KEY (dashboard_id),
    FOREIGN KEY (metric_id) REFERENCES metrics(metric_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE archived_data (
    archive_id INT AUTO_INCREMENT NOT NULL,
    metric_id INT NOT NULL,
    metric_type ENUM('engagement', 'revenue', 'retention') NOT NULL,
    archived_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
        ON UPDATE CURRENT_TIMESTAMP,
    archived_by INT NOT NULL,
    PRIMARY KEY (archive_id),
    FOREIGN KEY (archived_by) REFERENCES users(user_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (metric_id) REFERENCES metrics(metric_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE notification_type (
    type_id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (type_id)
);

CREATE TABLE notifications (
    notification_id INT AUTO_INCREMENT NOT NULL,
    metric_id INT NOT NULL,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    notification_type INT NOT NULL,
    threshold_value DECIMAL(12, 2) NOT NULL,
    actual_value DECIMAL(12, 2) NOT NULL,
    PRIMARY KEY (notification_id),
    FOREIGN KEY (notification_type) REFERENCES notification_type(type_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (metric_id) REFERENCES metrics(metric_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (department_id)
);

CREATE TABLE teams (
    team_id INT AUTO_INCREMENT NOT NULL,
    team_name VARCHAR(50) NOT NULL,
    department INT NOT NULL,
    PRIMARY KEY (team_id),
    FOREIGN KEY (department) REFERENCES departments(department_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE kpi_views (
    view_id INT AUTO_INCREMENT NOT NULL,
    view_name VARCHAR(50) NOT NULL,
    created_by INT NOT NULL,
    created_date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_updated DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
        ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (view_id),
    FOREIGN KEY (created_by) REFERENCES teams(team_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);
