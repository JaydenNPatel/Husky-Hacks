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

insert into roles (role_id, role_title) values (1, 'Student');
insert into roles (role_id, role_title) values (2, 'Teaching Assistant');
insert into roles (role_id, role_title) values (3, 'System Administrator');
insert into roles (role_id, role_title) values (4, 'Data Analyst');
insert into roles (role_id, role_title) values (5, 'Speech Pathologist');
insert into roles (role_id, role_title) values (6, 'Senior Developer');
insert into roles (role_id, role_title) values (7, 'Structural Engineer');
insert into roles (role_id, role_title) values (8, 'Media Manager I');
insert into roles (role_id, role_title) values (9, 'Research Nurse');
insert into roles (role_id, role_title) values (10, 'Programmer II');
insert into roles (role_id, role_title) values (11, 'Pharmacist');
insert into roles (role_id, role_title) values (12, 'Help Desk Technician');
insert into roles (role_id, role_title) values (13, 'Account Coordinator');
insert into roles (role_id, role_title) values (14, 'Sales Representative');
insert into roles (role_id, role_title) values (15, 'Social Worker');
insert into roles (role_id, role_title) values (16, 'Operator');
insert into roles (role_id, role_title) values (17, 'Research Nurse');
insert into roles (role_id, role_title) values (18, 'Project Manager');
insert into roles (role_id, role_title) values (19, 'Executive Secretary');
insert into roles (role_id, role_title) values (20, 'Sales Associate');
insert into roles (role_id, role_title) values (21, 'Business Systems Development Analyst');
insert into roles (role_id, role_title) values (22, 'Internal Auditor');
insert into roles (role_id, role_title) values (23, 'Help Desk Technician');
insert into roles (role_id, role_title) values (24, 'Software Consultant');
insert into roles (role_id, role_title) values (25, 'Software Consultant');
insert into roles (role_id, role_title) values (26, 'Structural Engineer');
insert into roles (role_id, role_title) values (27, 'Programmer Analyst II');
insert into roles (role_id, role_title) values (28, 'Cost Accountant');
insert into roles (role_id, role_title) values (29, 'Safety Technician III');
insert into roles (role_id, role_title) values (30, 'Programmer II');
insert into roles (role_id, role_title) values (31, 'Cost Accountant');
insert into roles (role_id, role_title) values (32, 'Nurse');
insert into roles (role_id, role_title) values (33, 'Graphic Designer');
insert into roles (role_id, role_title) values (34, 'Nuclear Power Engineer');
insert into roles (role_id, role_title) values (35, 'Senior Developer');
insert into roles (role_id, role_title) values (36, 'Director of Sales');
insert into roles (role_id, role_title) values (37, 'Sales Representative');
insert into roles (role_id, role_title) values (38, 'Media Manager III');
insert into roles (role_id, role_title) values (39, 'Senior Sales Associate');
insert into roles (role_id, role_title) values (40, 'Programmer Analyst III');

insert into users (user_id, first_name, last_name, email, role, status, date_created) values (1, 'Alex', 'Chen', 'calex@ning.com', 1, true, '2024-03-15 14:22:33');
insert into users (user_id, first_name, last_name, email, role, status, date_created) values (2, 'Sally', 'Pigott', 'spigs@blog.com', 2, true, '2024-07-22 09:41:56');
insert into users (user_id, first_name, last_name, email, role, status, date_created) values (3, 'Saquon', 'Porkly', 'saquon@opera.com', 3, false, '2024-11-08 16:55:12');
insert into users (user_id, first_name, last_name, email, role, status, date_created) values (4, 'Devin', 'Codington', 'coder@wikispaces.com', 4, false, '2024-05-30 11:03:45');

INSERT INTO alerts (alert_id, user_id, alert_type, message, trigger_condition, created_date) VALUES 
(1, 1, 1, 'Student requested feedback on project XYZ.', 'Feedback pending for 7 days', '2024-10-05 10:45:23'),
(2, 2, 2, 'You have been assigned a new project: Data Analytics Dashboard.', 'Project assignment', '2024-09-12 14:22:10'),
(3, 3, 3, 'Report submitted for Project ABC.', 'Report status: Submitted', '2024-11-01 08:15:45'),
(4, 4, 4, 'Your permissions have been updated to Admin.', 'Permission change approved', '2024-08-29 11:37:55'),
(5, 1, 6, 'Progress review due for Project Delta.', 'Review scheduled', '2024-11-14 16:10:10'),
(6, 1, 7, 'Data archived for Metrics Dashboard.', 'Archive policy applied', '2024-07-30 09:05:34'),
(7, 2, 1, 'Feedback requested on system performance.', 'User submitted feedback', '2024-10-20 12:00:00'),
(8, 3, 8, 'New notification: Threshold breached for CPU usage.', 'Threshold breach', '2024-11-10 18:23:49'),
(9, 4, 9, 'Alert: Revenue metrics exceeded threshold.', 'Revenue > $1M', '2024-11-25 22:10:30'),
(10, 1, 10, 'User status changed to Inactive.', 'Inactive for 30 days', '2024-09-07 13:18:40'),
(11, 2, 1, 'Student requested additional feedback.', 'Pending review for Task 2', '2024-10-28 15:32:12'),
(12, 3, 5, 'Critical system error reported.', 'Error code: 500', '2024-11-02 09:45:20'),
(13, 4, 8, 'New notification: Data source updated.', 'Source refresh complete', '2024-09-15 19:12:50'),
(14, 1, 6, 'Progress milestone reached for Project Epsilon.', 'Milestone: 50% Complete', '2024-10-05 14:55:45'),
(15, 2, 9, 'Threshold exceeded: Transactions spike.', 'Transactions > 1K/hour', '2024-08-22 17:22:35'),
(16, 3, 2, 'Project Alpha has been assigned to your team.', 'New project alert', '2024-09-30 11:47:02'),
(17, 4, 1, 'Feedback requested on recent submission.', 'Feedback request', '2024-10-18 10:25:13'),
(18, 1, 4, 'Access level changed to Viewer.', 'Permissions reduced', '2024-08-10 20:50:55'),
(19, 2, 5, 'System downtime detected.', 'Downtime > 10 minutes', '2024-11-23 02:10:05'),
(20, 3, 7, 'Archived data review required.', 'Data archive', '2024-09-19 06:15:18'),
(21, 4, 3, 'New report submission for Metrics Dashboard.', 'Report uploaded', '2024-10-09 16:45:00'),
(22, 1, 6, 'Progress milestone achieved: Report drafted.', 'Milestone reached', '2024-10-25 11:05:30'),
(23, 2, 9, 'System resource usage critical.', 'CPU usage > 90%', '2024-11-28 03:10:20'),
(24, 3, 1, 'Student feedback requested on final project.', 'Feedback needed', '2024-11-16 14:00:45'),
(25, 4, 4, 'Permission update: Contributor role added.', 'User promoted', '2024-08-15 09:22:10'),
(26, 1, 5, 'Error in data ingestion pipeline.', 'Job failed', '2024-11-27 13:42:33'),
(27, 2, 10, 'User status set to pending review.', 'Manual review', '2024-09-28 07:25:00'),
(28, 3, 8, 'New system notification: Backup completed.', 'Backup success', '2024-09-20 08:30:00');

INSERT INTO user_engagement_metrics (user_id, engagement_rate, active_users, new_users, returning_users, data_source)
VALUES 
(1, 23.45, 1500, 200, 1300, 1),
(2, 17.89, 1200, 180, 1020, 2),
(3, 45.67, 2000, 500, 1500, 1),
(4, 33.21, 1800, 300, 1500, 3),
(5, 27.63, 1600, 220, 1380, 4),
(6, 12.34, 1000, 150, 850, 2),
(7, 54.21, 2500, 600, 1900, 5),
(8, 30.56, 1800, 300, 1500, 3),
(9, 41.67, 2100, 400, 1700, 6),
(10, 37.89, 1900, 320, 1580, 1),
(11, 20.45, 1400, 250, 1150, 7),
(12, 25.78, 1500, 300, 1200, 8),
(13, 32.89, 1600, 400, 1200, 9),
(14, 29.45, 1400, 350, 1050, 1),
(15, 38.23, 2000, 450, 1550, 10),
(16, 44.67, 2200, 500, 1700, 5),
(17, 18.56, 1300, 200, 1100, 7),
(18, 24.78, 1500, 250, 1250, 6),
(19, 35.67, 1800, 400, 1400, 8),
(20, 47.89, 2400, 600, 1800, 9),
(21, 21.34, 1300, 220, 1080, 10),
(22, 36.45, 1900, 400, 1500, 11),
(23, 30.23, 1700, 350, 1350, 12),
(24, 50.78, 2600, 700, 1900, 13),
(25, 43.89, 2200, 500, 1700, 14),
(26, 27.45, 1600, 300, 1300, 9),
(27, 31.56, 1800, 400, 1400, 6),
(28, 42.34, 2100, 500, 1600, 5),
(29, 26.89, 1500, 250, 1250, 8),
(30, 33.23, 1700, 400, 1300, 9),
(31, 39.78, 1900, 450, 1450, 5),
(32, 48.45, 2400, 600, 1800, 6),
(33, 35.67, 2000, 450, 1550, 7),
(34, 40.56, 2200, 500, 1700, 4),
(35, 23.45, 1400, 250, 1150, 3),
(36, 28.78, 1600, 300, 1300, 2),
(37, 34.23, 1800, 350, 1450, 1),
(38, 29.45, 1700, 400, 1300, 1),
(39, 41.56, 2100, 550, 1550, 2),
(40, 37.89, 1900, 450, 1450, 3),
(41, 22.78, 1400, 200, 1200, 9),
(42, 31.89, 1700, 400, 1300, 8),
(43, 49.23, 2600, 700, 1900, 5),
(44, 45.67, 2400, 600, 1800, 6),
(45, 38.45, 2000, 500, 1500, 3),
(46, 32.56, 1800, 350, 1450, 1),
(47, 30.89, 1600, 300, 1300, 2),
(48, 25.67, 1500, 250, 1250, 4);


INSERT INTO teams (team_name, department)
VALUES 
('Software Development Team', 1),
('Network Engineering Team', 1),
('Digital Marketing Team', 2),
('SEO Optimization Team', 2),
('Accounting Team', 3),
('Payroll Processing Team', 3),
('Employee Relations Team', 4),
('Recruitment Team', 4),
('Infrastructure Support Team', 5),
('IT Security Team', 5),
('B2B Sales Team', 6),
('Consumer Sales Team', 6),
('Help Desk Team', 7),
('Customer Onboarding Team', 7),
('Contract Management Team', 8),
('Legal Compliance Team', 8),
('Logistics Team', 9),
('Warehouse Operations Team', 9),
('Product Design Team', 10),
('Innovation Lab Team', 10),
('QA Automation Team', 11),
('Manual Testing Team', 11),
('Shipping Team', 12),
('Supplier Relations Team', 12),
('Media Relations Team', 14),
('Content Strategy Team', 15),
('Threat Intelligence Team', 16),
('Startup Partnerships Team', 17),
('Mergers and Acquisitions Team', 18),
('Crisis Management Team', 19),
('Regulatory Affairs Team', 20),
('Shareholder Communications Team', 21),
('Office Administration Team', 22),
('Employee Training Team', 23),
('Conference Planning Team', 24),
('Creative Writing Team', 25),
('Video Production Team', 26),
('Sustainability Initiatives Team', 28),
('Retail Display Design Team', 29),
('User Documentation Team', 40);

insert into system_logs (log_id, user_id, event_type, description, timestamp) values 
(1, '0002', 'Password change', 'User successfully changed their password', '2024-08-07 05:40:39'),
(2, '0001', 'Data update', 'User updated their profile information', '2023-12-11 04:53:32'),
(3, '0002', 'System error', 'Unexpected error encountered while saving data', '2024-06-03 05:03:11'),
(4, '0004', 'Password change', 'User successfully changed their password', '2024-10-22 23:49:42'),
(5, '0003', 'Data update', 'User updated their data', '2024-03-11 06:30:37'),
(6, '0001', 'Login', 'User successfully logged in', '2024-10-12 07:45:26'),
(7, '0004', 'File upload', 'User uploaded a new file', '2024-10-12 14:13:12'),
(8, '0003', 'Permission granted', 'User assigned permissions', '2024-06-17 05:22:35'),
(9, '0004', 'Permission granted', 'User assigned permissions', '2024-09-29 10:17:17'),
(10, '0004', 'System error', 'Unexpected error encountered', '2024-02-06 21:09:05'),
(11, '0002', 'Login', 'User successfully logged in', '2024-04-01 10:54:51'),
(12, '0001', 'Password change', 'User successfully changed their password', '2023-12-14 01:37:41'),
(13, '0002', 'System error', 'Unexpected error encountered', '2024-12-05 14:16:24'),
(14, '0003', 'Login', 'User successfully logged in', '2024-10-08 14:35:12'),
(15, '0003', 'System error', 'Unexpected error encountered', '2024-03-29 05:39:44'),
(16, '0004', 'Data update', 'User updated their data', '2024-08-24 12:37:40'),
(17, '0003', 'File upload', 'User uploaded a new file', '2024-03-22 06:13:52'),
(18, '0002', 'Login', 'User successfully logged in', '2023-12-23 10:19:14'),
(19, '0001', 'Data update', 'User updated their data', '2024-03-26 14:47:13'),
(20, '0004', 'Permission granted', 'User assigned permissions', '2024-06-27 07:09:33'),
(21, '0003', 'Login', 'User successfully logged in', '2024-09-01 07:33:04'),
(22, '0001', 'File upload', 'User uploaded a new file', '2024-11-09 02:57:13'),
(23, '0001', 'File upload', 'User uploaded a new file', '2024-01-08 22:01:38'),
(24, '0004', 'Permission granted', 'User assigned permissions', '2023-12-31 18:56:32'),
(25, '0003', 'Password change', 'User successfully changed their password', '2023-09-25 23:52:42'),
(26, '0001', 'File upload', 'User uploaded a new file', '2024-07-19 15:42:32'),
(27, '0003', 'System error', 'Unexpected error encountered', '2024-04-05 12:30:38'),
(28, '0003', 'Password change', 'User successfully changed their password', '2023-09-10 02:43:36'),
(29, '0001', 'System error', 'Unexpected error encountered', '2024-05-06 02:47:53'),
(30, '0002', 'File upload', 'User uploaded a new file', '2024-12-09 11:19:43'),
(31, '0004', 'Permission granted', 'User assigned permissions', '2023-10-14 07:23:57'),
(32, '0003', 'Login', 'User successfully logged in', '2024-02-26 12:09:52'),
(33, '0001', 'Login', 'User successfully logged in', '2024-05-07 12:22:30'),
(34, '0002', 'Permission granted', 'User assigned permissions', '2024-01-01 09:26:36'),
(35, '0004', 'File upload', 'User uploaded a new file', '2024-02-05 23:31:57'),
(36, '0003', 'File upload', 'User uploaded a new file', '2023-09-18 11:23:18'),
(37, '0004', 'Data update', 'User updated their data', '2023-10-03 12:05:37'),
(38, '0003', 'File upload', 'User uploaded a new file', '2024-08-31 14:33:18'),
(39, '0001', 'Data update', 'User updated their data', '2024-01-30 00:27:33'),
(40, '0001', 'Password change', 'User successfully changed their password', '2023-10-17 19:33:40');

INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source) VALUES
(15000, 45.23, 350, 'USD', 11),
(22000, 55.34, 500, 'USD', 12),
(18000, 40.12, 450, 'USD', 13),
(27000, 62.78, 550, 'USD', 14),
(32000, 75.45, 600, 'USD', 15),
(25000, 60.56, 520, 'USD', 11),
(21000, 50.34, 480, 'USD', 16),
(35000, 85.23, 670, 'USD', 17),
(30000, 70.12, 590, 'USD', 18),
(40000, 100.45, 750, 'USD', 15),
(45000, 115.67, 800, 'USD', 19),
(33000, 82.34, 620, 'USD', 14),
(37000, 90.56, 680, 'USD', 20),
(28000, 65.34, 570, 'USD', 21),
(31000, 78.45, 600, 'USD', 22),
(36000, 95.12, 650, 'USD', 23),
(42000, 110.78, 700, 'USD', 18),
(46000, 120.45, 780, 'USD', 17),
(34000, 88.56, 630, 'USD', 19),
(38000, 98.34, 670, 'USD', 20),
(29500, 69.23, 580, 'USD', 16),
(27000, 55.12, 540, 'USD', 14),
(23000, 48.78, 490, 'USD', 23),
(26000, 52.45, 520, 'USD', 21),
(34500, 92.34, 640, 'USD', 18),
(38000, 98.56, 680, 'USD', 17),
(41000, 104.23, 720, 'USD', 16),
(39000, 100.12, 710, 'USD', 15),
(40000, 103.34, 730, 'USD', 22),
(36000, 90.56, 680, 'USD', 13),
(47000, 125.67, 790, 'USD', 23),
(31000, 80.12, 620, 'USD', 20);

-- Insert into reports table
INSERT INTO reports (report_id, generated_by, name, generate_date, content) 
VALUES (1, 0001, 'Coding Progress Report', '2024-01-12 09:45:23', 'Tracked improvements in JavaScript and Python projects.');
INSERT INTO reports (report_id, generated_by, name, generate_date, content) 
VALUES (2, 0002, 'Data Analysis Feedback Report', '2024-01-20 16:32:11', 'Received feedback focused on improving dataset organization.');
INSERT INTO reports (report_id, generated_by, name, generate_date, content) 
VALUES (3, 0003, 'System Health Check Report', '2024-01-25 11:10:45', 'All systems operational with minor performance lags.');
INSERT INTO reports (report_id, generated_by, name, generate_date, content) 
VALUES (4, 0004, 'User Engagement Metrics Report', '2024-02-05 13:00:00', 'Engagement rates are steady with a 5% increase this month.');
INSERT INTO reports (report_id, generated_by, name, generate_date, content) 
VALUES (5, 0001, 'Interview Preparation Insights', '2024-02-12 14:25:36', 'Generated coding challenge insights for technical interviews.');
INSERT INTO reports (report_id, generated_by, name, generate_date, content) 
VALUES (6, 0002, 'Project Improvement Recommendations', '2024-02-20 09:30:12', 'Recommendations made for enhancing visual data presentation.');
INSERT INTO reports (report_id, generated_by, name, generate_date, content) 
VALUES (7, 0003, 'Network Security Report', '2024-01-15 11:35:40', 'Network security audit passed.');
INSERT INTO reports (report_id, generated_by, name, generate_date, content) 
VALUES (8, 0004, 'System Patch Summary', '2024-02-01 08:50:25', 'All critical patches applied.');
INSERT INTO reports (report_id, generated_by, name, generate_date, content) 
VALUES (9, 0001, 'Incident Report Summary', '2024-03-21 15:00:00', 'Incident count reduced by 10% this month.');
INSERT INTO reports (report_id, generated_by, name, generate_date, content) 
VALUES (10, 0002, 'Performance Benchmark Report', '2024-04-12 12:00:00', 'Performance benchmarks exceeded expectations.');


-- Insert into retention_metrics table
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (85.23, 14.77, '2023-Q1', 17);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (78.45, 21.55, '2023-Q2', 18);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (80.34, 19.66, '2023-Q3', 19);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (72.56, 27.44, '2023-Q4', 20);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (89.45, 10.55, '2022-Q1', 21);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (88.23, 11.77, '2022-Q2', 22);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (83.45, 16.55, '2022-Q3', 23);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (86.34, 13.66, '2022-Q4', 16);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (90.12, 9.88, '2021-Q1', 17);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (84.78, 15.22, '2021-Q2', 18);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (77.56, 22.44, '2021-Q3', 19);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (79.45, 20.55, '2021-Q4', 20);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (82.34, 17.66, '2020-Q1', 21);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (81.23, 18.77, '2020-Q2', 22);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (87.45, 12.55, '2020-Q3', 23);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (89.34, 10.66, '2020-Q4', 17);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (74.12, 25.88, '2023-H1', 18);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (75.78, 24.22, '2023-H2', 19);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (80.23, 19.77, '2022-H1', 20);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (85.12, 14.88, '2022-H2', 21);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (83.45, 16.55, '2021-H1', 22);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (86.78, 13.22, '2021-H2', 23);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (88.45, 11.55, '2020-H1', 16);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (90.34, 9.66, '2020-H2', 17);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (85.23, 14.77, '2023', 18);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (78.45, 21.55, '2022', 19);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (80.34, 19.66, '2021', 20);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (72.56, 27.44, '2020', 21);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (89.45, 10.55, '2019-Q1', 22);

-- Real-Time Dashboard Table Inserts (Corrected)
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (1, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (2, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (3, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (4, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (5, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (6, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (7, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (8, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (9, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (10, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (11, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (12, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (13, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (14, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (15, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (16, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (17, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (18, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (19, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (20, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (21, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (22, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (23, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (24, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (25, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (26, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (27, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (28, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (29, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (30, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (31, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (32, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (33, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (34, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (35, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (36, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (37, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (38, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (39, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (40, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (41, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (42, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (43, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (44, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (45, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (46, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (47, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (48, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (49, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (50, 'retention');

-- Projects Table Inserts (Corrected)
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0101, 0001, 'Healthcare Correlation', 'Found the correlation between different healthcare providers and disease rates', 'Healthcare', '2023-01-01 10:58:38', TRUE);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0102, 0001, 'Web Development Basics', 'Coded for basic web development features', 'Web Development', '2023-02-02 15:52:43', FALSE);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0103, 0001, 'Website Visualization', 'Visualized a Website that had to do with Education', 'Website', '2023-03-03 06:17:42', FALSE);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0104, 0001, 'Scatterplots', 'Made multiple scatterplots while practicing various coding techniques', 'Plots', '2023-04-04 14:35:36', TRUE);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0105, 0001, 'COVID correlation', 'Found the correlation between COVID-19 cases and various factors', 'COVID', '2023-05-05 11:57:01', FALSE);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0106, 0001, 'Annual GDP', 'Looked at the annual GDP overtime and what factors caused it to change', 'GDP', '2023-06-06 22:48:59', FALSE);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0107, 0001, 'Income Regression', 'Looked at the income over the last 5 years and how it shifted', 'Income', '2023-07-07 17:52:57', FALSE);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0108, 0001, 'Retail Comparison', 'Compared different retailers over numerous factors', 'Retailer Comparison', '2023-08-18 16:57:50', FALSE);

-- Progress Table Inserts (Corrected)

INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (01, 0101, 'Completed correlation analysis', '2023-06-01 19:59:47');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (02, 0102, 'Added two web development features', '2023-07-02 10:57:53');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (03, 0103, 'Made title page', '2023-08-03 07:31:45');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (04, 0104, 'Completed two scatterplots', '2023-09-04 03:22:33');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (05, 0105, 'Cleaned data', '2023-10-05 05:57:55');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (06, 0106, 'Organized data by time', '2023-11-06 02:26:35');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (07, 0107, 'Implemented regression', '2023-12-07 07:08:11');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (08, 0108, 'Cleaned and organized data', '2023-13-08 00:59:20');

insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) 
values (1, '0001', 'Admin', '0002', '2024-03-11 20:10:48');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) 
values (2, '0001', 'Edit', '0003', '2024-08-15 21:50:35');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) 
values (3, '0001', 'Edit', '0004', '2024-01-28 03:10:24');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) 
values (4, '0002', 'View', '0001', '2024-09-17 19:40:02');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) 
values (5, '0002', 'Admin', '0003', '2023-11-24 01:35:53');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) 
values (6, '0002', 'Admin', '0004', '2024-01-06 18:57:13');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) 
values (7, '0003', 'View', '0001', '2024-12-01 20:07:12');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) 
values (8, '0003', 'View', '0002', '2024-08-21 14:48:01');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) 
values (9, '0003', 'View', '0004', '2024-01-02 22:46:15');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) 
values (10, '0004', 'Edit', '0001', '2023-12-21 06:07:56');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) 
values (11, '0004', 'Edit', '0002', '2024-02-01 14:58:11');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) 
values (12, '0004', 'Edit', '0003', '2023-11-03 07:35:04');

insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) 
values (1, 'error: undefined method `id` for nil:NilClass', '2024-03-06', 'error: undefined method `id` for nil:NilClass', 72, 69);

insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) 
values (2, 'error: undefined method `id` for nil:NilClass', '2024-11-07', 'error: undefined method `id` for nil:NilClass', 91, 45);

insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) 
values (3, 'error: undefined method `id` for nil:NilClass', '2024-07-17', 'error: undefined method `id` for nil:NilClass', 21, 70);

insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) 
values (4, 'error: undefined method `id` for nil:NilClass', '2024-10-30', 'error: undefined method `id` for nil:NilClass', 90, 4);

insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) 
values (5, 'error: undefined method `id` for nil:NilClass', '2023-12-26', 'error: undefined method `id` for nil:NilClass', 57, 0);

insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) 
values (6, 'error: undefined method `id` for nil:NilClass', '2023-12-06', 'error: undefined method `id` for nil:NilClass', 10, 38);

insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) 
values (7, 'error: undefined method `id` for nil:NilClass', '2024-05-05', 'error: undefined method `id` for nil:NilClass', 26, 96);

insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) 
values (8, 'error: undefined method `id` for nil:NilClass', '2024-09-10', 'error: undefined method `id` for nil:NilClass', 46, 61);

insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) 
values (9, 'error: undefined method `id` for nil:NilClass', '2024-02-09', 'error: undefined method `id` for nil:NilClass', 1, 29);

insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) 
values (10, 'error: undefined method `id` for nil:NilClass', '2024-11-04', 'error: undefined method `id` for nil:NilClass', 78, 50);

insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) 
values (11, 'error: undefined method `id` for nil:NilClass', '2024-11-07', 'error: undefined method `id` for nil:NilClass', 3, 76);

insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) 
values (12, 'error: undefined method `id` for nil:NilClass', '2024-06-04', 'error: undefined method `id` for nil:NilClass', 44, 54);

insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) 
values (13, 'error: undefined method `id` for nil:NilClass', '2024-08-06', 'error: undefined method `id` for nil:NilClass', 91, 30);

INSERT INTO kpi_views (view_name, created_by, created_date, last_updated) VALUES
('Revenue Analysis', 1, '2023-09-01 08:15:45', '2023-09-05 10:00:00'),
('Website Traffic Growth Report', 3, '2023-09-10 14:30:00', '2023-09-12 16:45:30'),
('Quarterly Profit and Loss Statement', 5, '2023-09-20 09:00:00', '2023-09-22 12:30:00'),
('New Hire Onboarding Metrics', 7, '2023-10-05 07:45:20', '2023-10-06 09:15:40'),
('Data Breach Incident Report', 16, '2023-10-15 20:33:08', '2023-10-17 21:24:57'),
('Daily Network Uptime Report', 2, '2023-11-01 11:25:00', '2023-11-03 13:15:10'),
('Customer Support Satisfaction Trends', 13, '2023-11-10 08:45:30', '2023-11-15 09:20:45'),
('Quarterly Product Release Overview', 19, '2023-12-01 15:00:00', '2023-12-02 16:30:10'),
('Year-End Compliance Audit Summary', 20, '2023-12-15 19:28:34', '2023-12-16 19:39:57'),
('Annual Budget Review', 5, '2024-01-10 07:00:15', '2024-01-11 18:20:50'),
('Employee Turnover Report', 8, '2024-01-26 11:08:28', '2024-01-28 11:39:41'),
('Social Media Engagement Analysis', 26, '2024-02-15 12:00:00', '2024-02-17 14:15:00'),
('Supply Chain Efficiency Metrics', 22, '2024-03-01 13:30:00', '2024-03-05 14:50:00'),
('Sales Funnel Conversion Rates', 11, '2024-03-20 09:00:00', '2024-03-21 10:15:00'),
('Shipping Delays Heatmap', 23, '2024-04-05 06:45:20', '2024-04-07 08:15:30'),
('Monthly Threat Assessment', 27, '2024-04-15 20:33:08', '2024-04-18 21:24:57'),
('Year-End Customer Loyalty Trends', 13, '2024-05-01 11:25:00', '2024-05-03 13:15:10'),
('Investor Meeting Financial Summary', 21, '2024-05-10 08:45:30', '2024-05-12 09:20:45'),
('Environmental Impact Report', 28, '2024-06-01 15:00:00', '2024-06-05 16:30:10'),
('Retail Foot Traffic Overview', 29, '2024-06-15 19:28:34', '2024-06-18 19:39:57'),
('Weekly Cybersecurity Update', 16, '2024-07-10 07:00:15', '2024-07-12 18:20:50'),
('Partnership Success Metrics', 17, '2024-07-26 11:08:28', '2024-07-28 11:39:41'),
('Training Program Feedback Analysis', 23, '2024-08-15 12:00:00', '2024-08-17 14:15:00'),
('Conference Attendance Summary', 24, '2024-08-20 13:30:00', '2024-08-25 14:50:00'),
('Office Energy Usage Dashboard', 22, '2024-09-01 09:00:00', '2024-09-03 10:15:00'),
('Shipping Performance Dashboard', 23, '2024-09-20 06:45:20', '2024-09-25 08:15:30'),
('Crisis Management Preparedness Index', 30, '2024-10-01 20:33:08', '2024-10-05 21:24:57'),
('Monthly Risk Exposure Assessment', 19, '2024-10-10 11:25:00', '2024-10-12 13:15:10'),
('Holiday Season Sales Trends', 12, '2024-11-01 08:45:30', '2024-11-05 09:20:45'),
('Marketing Campaign ROI Analysis', 3, '2024-11-15 15:00:00', '2024-11-18 16:30:10'),
('Supplier Performance Evaluation', 13, '2024-12-01 19:28:34', '2024-12-03 19:39:57'),
('Year-End Manufacturing Output Review', 30, '2024-12-10 07:00:15', '2024-12-15 18:20:50'),
('Last-Minute Holiday Metrics', 18, '2024-12-20 11:08:28', '2024-12-22 11:39:41'),
('Software Implementation Success', 35, '2024-11-05 08:00:15', '2024-11-15 12:30:50'),
('Cloud Infrastructure Downtime Trends', 40, '2024-12-15 08:15:00', '2024-12-16 18:25:50');

INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) VALUES
(1, 101, 2, 'Make code more efficient', 4, '2023-01-02 08:36:58'),
(2, 102, 2, 'Great use of functions', 8, '2023-02-03 09:17:37'),
(3, 103, 2, 'Great job visualizing', 6, '2023-03-04 04:26:34'),
(4, 104, 2, 'Add regression lines for scatterplot', 7, '2023-04-05 12:58:21'),
(5, 105, 3, 'Great use of correlation', 6, '2023-05-06 09:35:05'),
(6, 106, 3, 'I liked how you organized the data', 5, '2023-06-07 21:42:07'),
(7, 107, 3, 'The regression analysis can be improved', 4, '2023-07-08 03:11:48'),
(8, 108, 3, 'Good job data cleaning', 8, '2023-08-09 15:17:28'),
(9, 101, 4, 'Enjoyed project layout and functions', 7, '2023-01-03 22:10:01'),
(10, 102, 4, 'Main code improved overall development', 10, '2023-02-04 11:39:30'),
(11, 201, 1, 'Functions could be more efficient', 4, '2020-01-02 04:30:46'),
(12, 202, 1, 'More comments are needed', 5, '2020-02-03 21:51:15'),
(13, 203, 1, 'Good visualizations', 7, '2020-03-04 01:56:11'),
(14, 204, 1, 'Detailed scatterplots', 7, '2020-04-05 00:26:13'),
(15, 205, 3, 'Used a wide variety of statistical tools', 6, '2020-05-06 02:16:14'),
(16, 206, 3, 'Cleaned player data well', 6, '2020-06-07 00:20:11'),
(17, 207, 3, 'Used prediction tools well', 8, '2020-07-08 18:39:48'),
(18, 208, 3, 'Good use of lists', 5, '2020-08-09 06:15:48'),
(19, 201, 4, 'Newer functions improved code', 7, '2020-01-03 15:08:10'),
(20, 202, 4, 'New comments improved organization', 8, '2020-02-04 03:28:37'),
(21, 301, 2, 'Management could improve response times', 3, '2021-01-10 14:39:01'),
(22, 302, 2, 'Customer service should be trained better', 2, '2021-02-12 09:27:04'),
(23, 303, 2, 'Sales process needs better communication', 5, '2021-03-13 17:32:47'),
(24, 304, 2, 'Great product, but support needs improvement', 4, '2021-04-14 08:49:51'),
(25, 305, 3, 'Improved process, but still needs some work', 6, '2021-05-15 21:43:23'),
(26, 306, 3, 'Perfect design', 10, '2021-06-16 18:34:13'),
(27, 307, 3, 'More test cases needed', 4, '2021-07-17 06:56:30'),
(28, 308, 3, 'Great handling of user experience', 9, '2021-08-18 14:38:00'),
(29, 401, 2, 'Bug fixing should be a priority', 5, '2022-01-12 13:12:28'),
(30, 402, 2, 'Testing should be done more thoroughly', 4, '2022-02-13 16:50:00'),
(31, 403, 2, 'Improvements could be made to UI', 3, '2022-03-14 07:17:09'),
(32, 404, 2, 'Improved usability greatly', 7, '2022-04-15 12:40:02'),
(33, 405, 3, 'Better UI could improve engagement', 6, '2022-05-16 21:12:14'),
(34, 406, 3, 'Great coding, but security needs work', 5, '2022-06-17 08:53:34'),
(35, 407, 3, 'Update user guides for better experience', 6, '2022-07-18 13:26:44'),
(36, 408, 3, 'More design iterations needed', 4, '2022-08-19 20:39:47'),
(37, 409, 3, 'Code organization is top notch', 8, '2022-09-20 09:18:23');

USE Husky_Hacks;

-- Inserting departments
INSERT INTO departments (name) VALUES
('Engineering'),
('Marketing'),
('Finance'),
('Human Resources'),
('Information Technology'),
('Sales'),
('Customer Support'),
('Legal'),
('Operations'),
('Product Development'),
('Quality Assurance'),
('Supply Chain'),
('Procurement'),
('Public Relations'),
('Data Analytics'),
('Cybersecurity'),
('Business Development'),
('Corporate Strategy'),
('Risk Management'),
('Compliance'),
('Investor Relations'),
('Facilities Management'),
('Training and Development'),
('Event Planning'),
('Content Management'),
('Social Media Marketing'),
('Graphic Design'),
('Research and Development'),
('Environmental Sustainability'),
('Manufacturing'),
('Retail Operations'),
('Technical Writing'),
('Customer Success'),
('DevOps'),
('Field Services'),
('Technical Support'),
('Digital Transformation'),
('Software Implementation'),
('Hardware Engineering'),
('Cloud Infrastructure');

-- Inserting data sources
INSERT INTO data_source (source_name, data_type) VALUES
('Google Analytics', 'user_engagement'),
('Mixpanel', 'retention'),
('Amplitude', 'user_engagement'),
('Firebase', 'retention'),
('Heap Analytics', 'conversion_rate'),
('Segment', 'data_collection'),
('Klaviyo', 'email_metrics'),
('PostHog', 'user_engagement'),
('Snowflake', 'data_warehouse'),
('Looker', 'dashboard'),
('Tableau', 'dashboard'),
('Power BI', 'dashboard'),
('Adobe Analytics', 'user_engagement'),
('Hotjar', 'session_replay'),
('Crazy Egg', 'heatmap'),
('Optimizely', 'A/B_testing'),
('VWO', 'A/B_testing'),
('FullStory', 'session_replay'),
('Google Tag Manager', 'data_collection'),
('HubSpot', 'email_metrics'),
('Mailchimp', 'email_metrics'),
('Marketo', 'email_metrics'),
('Salesforce', 'CRM'),
('Zendesk', 'customer_support'),
('Intercom', 'customer_support'),
('Drift', 'chat_metrics'),
('Pendo', 'user_engagement'),
('Appcues', 'onboarding_metrics'),
('Outbrain', 'ad_performance'),
('Taboola', 'ad_performance'),
('Google Ads', 'ad_performance'),
('Facebook Ads', 'ad_performance'),
('LinkedIn Ads', 'ad_performance'),
('Twitter Ads', 'ad_performance'),
('TikTok Ads', 'ad_performance'),
('Instagram Ads', 'ad_performance'),
('Spotify Ads', 'audio_metrics'),
('YouTube Analytics', 'video_metrics'),
('Zoom', 'webinar_engagement'),
('GoToWebinar', 'webinar_engagement'),
('Slack', 'internal_metrics'),
('Trello', 'project_tracking'),
('Asana', 'project_tracking'),
('Monday.com', 'project_tracking'),
('ClickUp', 'project_tracking'),
('Basecamp', 'project_tracking'),
('Jira', 'project_tracking'),
('GitHub', 'version_control'),
('Bitbucket', 'version_control'),
('GitLab', 'version_control'),
('CircleCI', 'CI/CD_metrics'),
('Travis CI', 'CI/CD_metrics');

INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (7956006570, '2024-11-14', 102400, TRUE, 1);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (7637143953, '2023-10-28', 25600, TRUE, 2);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (3799860967, '2023-10-28', 102400, TRUE, 3);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (7333345394, '2024-01-05', 102400, TRUE, 4);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (7514091068, '2024-10-24', 51200, TRUE, 5);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (3243707889, '2024-02-06', 204800, TRUE, 6);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (2530813493, '2024-10-14', 102400, TRUE, 7);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (8819853361, '2023-10-31', 102400, FALSE, 8);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (4064880390, '2024-11-14', 102400, FALSE, 9);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (4098377985, '2024-11-04', 102400, FALSE, 10);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (8748567434, '2023-09-29', 102400, FALSE, 11);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (1110171358, '2024-05-12', 102400, FALSE, 12);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (1820262626, '2024-02-11', 25600, FALSE, 13);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (6681377440, '2023-12-27', 51200, FALSE, 14);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (3349273475, '2024-10-18', 204800, TRUE, 15);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (2300710048, '2024-08-16', 25600, TRUE, 16);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (3448876399, '2024-11-24', 204800, TRUE, 17);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (550812059, '2024-03-26', 102400, FALSE, 18);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (1934982032, '2024-02-04', 102400, FALSE, 19);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (3283217122, '2023-09-16', 25600, FALSE, 20);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (4313213694, '2024-06-24', 204800, TRUE, 21);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (8323307628, '2024-03-19', 51200, FALSE, 22);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (4119288951, '2024-04-18', 25600, TRUE, 23);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (1222622424, '2023-09-03', 102400, TRUE, 24);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (1031811222, '2024-10-03', 102400, TRUE, 25);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (2637458968, '2024-09-01', 102400, FALSE, 26);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (9662829369, '2024-08-27', 51200, TRUE, 27);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (1620531852, '2023-09-22', 51200, FALSE, 28);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (7928282364, '2024-12-30', 204800, FALSE, 29);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (3000249400, '2023-10-22', 51200, TRUE, 30);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (5360021063, '2023-09-09', 51200, FALSE, 31);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (6285401470, '2024-08-26', 25600, FALSE, 32);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (9735205440, '2024-06-23', 51200, TRUE, 33);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (6936995632, '2023-12-27', 25600, TRUE, 34);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (2843325846, '2024-11-19', 204800, FALSE, 35);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (151550190, '2024-03-20', 102400, FALSE, 36);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (7134425584, '2024-04-05', 25600, FALSE, 37);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (3583254473, '2024-03-20', 51200, FALSE, 38);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (4037990679, '2024-06-19', 51200, TRUE, 39);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id) 
VALUES (8815176691, '2024-07-17', 25600, FALSE, 40);

INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (1, 1, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (2, 2, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (3, 3, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (4, 1, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (5, 4, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (6, 2, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (7, 3, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (8, 5, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (9, 6, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (10, 7, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (11, 8, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (12, 9, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (13, 10, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (14, 11, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (15, 12, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (16, 13, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (17, 14, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (18, 15, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (19, 16, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (20, 17, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (21, 18, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (22, 19, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (23, 20, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (24, 21, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (25, 22, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (26, 23, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (27, 24, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (28, 25, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (29, 26, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (30, 27, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (31, 28, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (32, 29, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (33, 30, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (34, 31, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (35, 32, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (36, 33, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (37, 34, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (38, 35, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (39, 36, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) 
VALUES (40, 37, 'user_engagement');

-- Inserting data into alerts table
INSERT INTO alerts (alert_id, user_id, alert_type, message, trigger_condition, created_date) VALUES 
(1, 1, 1, 'Student requested feedback on project XYZ.', 'Feedback pending for 7 days', '2024-10-05 10:45:23'),
(2, 2, 2, 'You have been assigned a new project: Data Analytics Dashboard.', 'Project assignment', '2024-09-12 14:22:10'),
(3, 3, 3, 'Report submitted for Project ABC.', 'Report status: Submitted', '2024-11-01 08:15:45'),
(4, 4, 4, 'Your permissions have been updated to Admin.', 'Permission change approved', '2024-08-29 11:37:55'),
(5, 1, 6, 'Progress review due for Project Delta.', 'Review scheduled', '2024-11-14 16:10:10'),
(6, 1, 7, 'Data archived for Metrics Dashboard.', 'Archive policy applied', '2024-07-30 09:05:34'),
(7, 2, 1, 'Feedback requested on system performance.', 'User submitted feedback', '2024-10-20 12:00:00'),
(8, 3, 8, 'New notification: Threshold breached for CPU usage.', 'Threshold breach', '2024-11-10 18:23:49'),
(9, 4, 9, 'Alert: Revenue metrics exceeded threshold.', 'Revenue > $1M', '2024-11-25 22:10:30'),
(10, 1, 10, 'User status changed to Inactive.', 'Inactive for 30 days', '2024-09-07 13:18:40'),
(11, 2, 1, 'Student requested additional feedback.', 'Pending review for Task 2', '2024-10-28 15:32:12'),
(12, 3, 5, 'Critical system error reported.', 'Error code: 500', '2024-11-02 09:45:20'),
(13, 4, 8, 'New notification: Data source updated.', 'Source refresh complete', '2024-09-15 19:12:50'),
(14, 1, 6, 'Progress milestone reached for Project Epsilon.', 'Milestone: 50% Complete', '2024-10-05 14:55:45'),
(15, 2, 9, 'Threshold exceeded: Transactions spike.', 'Transactions > 1K/hour', '2024-08-22 17:22:35'),
(16, 3, 2, 'Project Alpha has been assigned to your team.', 'New project alert', '2024-09-30 11:47:02'),
(17, 4, 1, 'Feedback requested on recent submission.', 'Feedback request', '2024-10-18 10:25:13'),
(18, 1, 4, 'Access level changed to Viewer.', 'Permissions reduced', '2024-08-10 20:50:55'),
(19, 2, 5, 'System downtime detected.', 'Downtime > 10 minutes', '2024-11-23 02:10:05'),
(20, 3, 7, 'Archived data review required.', 'Data archive', '2024-09-19 06:15:18'),
(21, 4, 3, 'New report submission for Metrics Dashboard.', 'Report uploaded', '2024-10-09 16:45:00'),
(22, 1, 6, 'Progress milestone achieved: Report drafted.', 'Milestone reached', '2024-10-25 11:05:30'),
(23, 2, 9, 'System resource usage critical.', 'CPU usage > 90%', '2024-11-28 03:10:20'),
(24, 3, 1, 'Student feedback requested on final project.', 'Feedback needed', '2024-11-16 14:00:45'),
(25, 4, 4, 'Permission update: Contributor role added.', 'User promoted', '2024-08-15 09:22:10'),
(26, 1, 5, 'Error in data ingestion pipeline.', 'Job failed', '2024-11-27 13:42:33'),
(27, 2, 10, 'User status set to pending review.', 'Manual review', '2024-09-28 07:25:00'),
(28, 3, 8, 'New system notification: Backup completed.', 'Backup success', '2024-09-10 21:20:45'),
(29, 4, 7, 'Data archive notification sent.', 'Archival policy triggered', '2024-11-12 08:50:22'),
(30, 1, 6, 'Progress on research project documented.', 'Milestone log', '2024-10-04 18:14:56'),
(31, 2, 9, 'Threshold breached for page views.', 'Page views > 500/day', '2024-10-17 10:12:00'),
(32, 3, 1, 'Feedback required for submission.', 'Assignment pending', '2024-11-08 09:30:05'),
(33, 4, 3, 'Final report submitted.', 'Project closed', '2024-09-26 14:11:14'),
(34, 1, 5, 'System log recorded with error.', 'Log entry created', '2024-11-26 12:10:15'),
(35, 2, 8, 'Notification about updated permissions.', 'Role change', '2024-10-13 15:00:00'),
(36, 3, 10, 'User status switched to active.', 'Reactivation', '2024-09-05 11:55:40'),
(37, 4, 4, 'Permission removal: Admin rights revoked.', 'Access updated', '2024-11-09 17:42:05'),
(38, 1, 6, 'Progress check-in scheduled for next week.', 'Progress update', '2024-10-03 16:35:00'),
(39, 2, 2, 'New project added to your tasks.', 'Project management', '2024-08-20 22:45:50'),
(40, 3, 7, 'Archived data needs review.', 'Data policy', '2024-11-13 09:00:20'),
(41, 4, 3, 'Submission acknowledged for report.', 'Acknowledged', '2024-10-19 05:15:44'),
(42, 1, 9, 'Alert: Network latency detected.', 'Latency > 200ms', '2024-11-18 21:08:30'),
(43, 2, 1, 'Feedback session scheduled.', 'Feedback due', '2024-11-21 13:14:15'),
(44, 3, 2, 'Assigned new task: Market Analysis.', 'Task assignment', '2024-09-02 07:22:30'),
(45, 4, 4, 'Permissions synchronized for team access.', 'Permissions adjusted', '2024-11-06 20:30:00'),
(46, 1, 10, 'User account marked for audit.', 'Audit notice', '2024-10-29 02:15:00'),
(47, 2, 8, 'System event: Scheduled maintenance.', 'System maintenance', '2024-09-17 16:45:30'),
(48, 3, 5, 'Application crash detected.', 'Crash event', '2024-11-22 04:35:12'),
(49, 4, 3, 'Report review completed.', 'Review finalized', '2024-09-24 18:00:20'),
(50, 1, 7, 'Archived data access notification.', 'Archived data flagged', '2024-10-22 10:28:43');

-- Inserting data into alert_type table
INSERT INTO alert_type (type_id, type_name) VALUES 
(1, 'Feedback Request'),
(2, 'New Project Assigned'),
(3, 'Report Submission'),
(4, 'Permission Update'),
(5, 'System Error'),
(6, 'Progress Review'),
(7, 'Archived Data Notice'),
(8, 'New Notification'),
(9, 'Alert Threshold Exceeded'),
(10, 'User Status Change');



