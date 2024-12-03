USE `Husky_Hacks`;


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



insert into users (user_id, first_name, last_name, email, role, status, date_created) values (0001, 'Alex', 'Chen', 'calex@ning.com', 1, true, '2024-03-15 14:22:33');
insert into users (user_id, first_name, last_name, email, role, status, date_created) values (0002, 'Sally', 'Pigott', 'spigs@blog.com', 2, true, '2024-07-22 09:41:56');
insert into users (user_id, first_name, last_name, email, role, status, date_created) values (0003, 'Saquon', 'Porkly', 'saquon@opera.com', 3, false, '2024-11-08 16:55:12');
insert into users (user_id, first_name, last_name, email, role, status, date_created) values (0004, 'Devin', 'Codington', 'coder@wikispaces.com', 4, false, '2024-05-30 11:03:45');

use Husky_Hacks;
insert into data_source (source_name, data_type) values ('Google Analytics', 'user_engagement');
insert into data_source (source_name, data_type) values ('Mixpanel', 'retention');
insert into data_source (source_name, data_type) values ('Amplitude', 'user_engagement');
insert into data_source (source_name, data_type) values ('Firebase', 'retention');
insert into data_source (source_name, data_type) values ('Heap Analytics', 'conversion_rate');
insert into data_source (source_name, data_type) values ('Segment', 'data_collection');
insert into data_source (source_name, data_type) values ('Klaviyo', 'email_metrics');
insert into data_source (source_name, data_type) values ('PostHog', 'user_engagement');
insert into data_source (source_name, data_type) values ('Snowflake', 'data_warehouse');
insert into data_source (source_name, data_type) values ('Looker', 'dashboard');
insert into data_source (source_name, data_type) values ('Tableau', 'dashboard');
insert into data_source (source_name, data_type) values ('Power BI', 'dashboard');
insert into data_source (source_name, data_type) values ('Adobe Analytics', 'user_engagement');
insert into data_source (source_name, data_type) values ('Hotjar', 'session_replay');
insert into data_source (source_name, data_type) values ('Crazy Egg', 'heatmap');
insert into data_source (source_name, data_type) values ('Optimizely', 'A/B_testing');
insert into data_source (source_name, data_type) values ('VWO', 'A/B_testing');
insert into data_source (source_name, data_type) values ('FullStory', 'session_replay');
insert into data_source (source_name, data_type) values ('Google Tag Manager', 'data_collection');
insert into data_source (source_name, data_type) values ('HubSpot', 'email_metrics');
insert into data_source (source_name, data_type) values ('Mailchimp', 'email_metrics');
insert into data_source (source_name, data_type) values ('Marketo', 'email_metrics');
insert into data_source (source_name, data_type) values ('Salesforce', 'CRM');
insert into data_source (source_name, data_type) values ('Zendesk', 'customer_support');
insert into data_source (source_name, data_type) values ('Intercom', 'customer_support');
insert into data_source (source_name, data_type) values ('Drift', 'chat_metrics');
insert into data_source (source_name, data_type) values ('Pendo', 'user_engagement');
insert into data_source (source_name, data_type) values ('Appcues', 'onboarding_metrics');
insert into data_source (source_name, data_type) values ('Outbrain', 'ad_performance');
insert into data_source (source_name, data_type) values ('Taboola', 'ad_performance');
insert into data_source (source_name, data_type) values ('Google Ads', 'ad_performance');
insert into data_source (source_name, data_type) values ('Facebook Ads', 'ad_performance');
insert into data_source (source_name, data_type) values ('LinkedIn Ads', 'ad_performance');
insert into data_source (source_name, data_type) values ('Twitter Ads', 'ad_performance');
insert into data_source (source_name, data_type) values ('TikTok Ads', 'ad_performance');
insert into data_source (source_name, data_type) values ('Instagram Ads', 'ad_performance');
insert into data_source (source_name, data_type) values ('Spotify Ads', 'audio_metrics');
insert into data_source (source_name, data_type) values ('YouTube Analytics', 'video_metrics');
insert into data_source (source_name, data_type) values ('Zoom', 'webinar_engagement');
insert into data_source (source_name, data_type) values ('GoToWebinar', 'webinar_engagement');
insert into data_source (source_name, data_type) values ('Slack', 'internal_metrics');
insert into data_source (source_name, data_type) values ('Trello', 'project_tracking');
insert into data_source (source_name, data_type) values ('Asana', 'project_tracking');
insert into data_source (source_name, data_type) values ('Monday.com', 'project_tracking');
insert into data_source (source_name, data_type) values ('ClickUp', 'project_tracking');
insert into data_source (source_name, data_type) values ('Basecamp', 'project_tracking');
insert into data_source (source_name, data_type) values ('Jira', 'project_tracking');
insert into data_source (source_name, data_type) values ('GitHub', 'version_control');
insert into data_source (source_name, data_type) values ('Bitbucket', 'version_control');
insert into data_source (source_name, data_type) values ('GitLab', 'version_control');
insert into data_source (source_name, data_type) values ('CircleCI', 'CI/CD_metrics');
insert into data_source (source_name, data_type) values ('Travis CI', 'CI/CD_metrics');

use Husky_Hacks;
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

use Husky_Hacks;
INSERT INTO alert_type (type_id, type_name) VALUES (1, 'Feedback Request');
INSERT INTO alert_type (type_id, type_name) VALUES (2, 'New Project Assigned');
INSERT INTO alert_type (type_id, type_name) VALUES (3, 'Report Submission');
INSERT INTO alert_type (type_id, type_name) VALUES (4, 'Permission Update');
INSERT INTO alert_type (type_id, type_name) VALUES (5, 'System Error');
INSERT INTO alert_type (type_id, type_name) VALUES (6, 'Progress Review');
INSERT INTO alert_type (type_id, type_name) VALUES (7, 'Archived Data Notice');
INSERT INTO alert_type (type_id, type_name) VALUES (8, 'New Notification');
INSERT INTO alert_type (type_id, type_name) VALUES (9, 'Alert Threshold Exceeded');
INSERT INTO alert_type (type_id, type_name) VALUES (10, 'User Status Change');

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

use Husky_Hacks;
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (23.45, 1500, 200, 1300, 1);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (17.89, 1200, 180, 1020, 2);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (45.67, 2000, 500, 1500, 1);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (33.21, 1800, 300, 1500, 3);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (27.63, 1600, 220, 1380, 4);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (12.34, 1000, 150, 850, 2);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (54.21, 2500, 600, 1900, 5);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (30.56, 1800, 300, 1500, 3);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (41.67, 2100, 400, 1700, 6);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (37.89, 1900, 320, 1580, 1);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (20.45, 1400, 250, 1150, 7);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (25.78, 1500, 300, 1200, 8);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (32.89, 1600, 400, 1200, 9);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (29.45, 1400, 350, 1050, 1);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (38.23, 2000, 450, 1550, 10);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (44.67, 2200, 500, 1700, 5);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (18.56, 1300, 200, 1100, 7);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (24.78, 1500, 250, 1250, 6);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (35.67, 1800, 400, 1400, 8);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (47.89, 2400, 600, 1800, 9);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (21.34, 1300, 220, 1080, 10);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (36.45, 1900, 400, 1500, 11);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (30.23, 1700, 350, 1350, 12);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (50.78, 2600, 700, 1900, 13);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (43.89, 2200, 500, 1700, 14);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (27.45, 1600, 300, 1300, 9);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (31.56, 1800, 400, 1400, 6);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (42.34, 2100, 500, 1600, 5);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (26.89, 1500, 250, 1250, 8);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (33.23, 1700, 400, 1300, 9);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (39.78, 1900, 450, 1450, 5);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (48.45, 2400, 600, 1800, 6);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (35.67, 2000, 450, 1550, 7);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (40.56, 2200, 500, 1700, 4);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (23.45, 1400, 250, 1150, 3);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (28.78, 1600, 300, 1300, 2);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (34.23, 1800, 350, 1450, 1);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (29.45, 1700, 400, 1300, 1);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (41.56, 2100, 550, 1550, 2);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (37.89, 1900, 450, 1450, 3);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (22.78, 1400, 200, 1200, 9);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (31.89, 1700, 400, 1300, 8);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (49.23, 2600, 700, 1900, 5);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (45.67, 2400, 600, 1800, 6);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (38.45, 2000, 500, 1500, 3);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (32.56, 1800, 350, 1450, 1);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (30.89, 1600, 300, 1300, 2);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (25.67, 1500, 250, 1250, 4);

use Husky_Hacks;
INSERT INTO teams (team_name, department) VALUES
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

USE Husky_Hacks;

INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (1, '0002', 'Password change', 'User successfully changed their password', '2024-08-07 05:40:39');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (2, '0001', 'Data update', 'User updated their profile information', '2023-12-11 04:53:32');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (3, '0002', 'System error', 'Unexpected error encountered while saving data', '2024-06-03 05:03:11');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (4, '0004', 'Password change', 'User successfully changed their password', '2024-10-22 23:49:42');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (5, '0003', 'Data update', 'User updated their data', '2024-03-11 06:30:37');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (6, '0001', 'Login', 'User successfully logged in', '2024-10-12 07:45:26');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (7, '0004', 'File upload', 'User uploaded a new file', '2024-10-12 14:13:12');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (8, '0003', 'Permission granted', 'User assigned permissions', '2024-06-17 05:22:35');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (9, '0004', 'Permission granted', 'User assigned permissions', '2024-09-29 10:17:17');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (10, '0004', 'System error', 'Unexpected error encountered', '2024-02-06 21:09:05');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (11, '0002', 'Login', 'User successfully logged in', '2024-04-01 10:54:51');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (12, '0001', 'Password change', 'User successfully changed their password', '2023-12-14 01:37:41');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (13, '0002', 'System error', 'Unexpected error encountered', '2024-12-05 14:16:24');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (14, '0003', 'Login', 'User successfully logged in', '2024-10-08 14:35:12');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (15, '0003', 'System error', 'Unexpected error encountered', '2024-03-29 05:39:44');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (16, '0004', 'Data update', 'User updated their data', '2024-08-24 12:37:40');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (17, '0003', 'File upload', 'User uploaded a new file', '2024-03-22 06:13:52');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (18, '0002', 'Login', 'User successfully logged in', '2023-12-23 10:19:14');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (19, '0001', 'Data update', 'User updated their data', '2024-03-26 14:47:13');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (20, '0004', 'Permission granted', 'User assigned permissions', '2024-06-27 07:09:33');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (21, '0003', 'Login', 'User successfully logged in', '2024-09-01 07:33:04');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (22, '0001', 'File upload', 'User uploaded a new file', '2024-11-09 02:57:13');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (23, '0001', 'File upload', 'User uploaded a new file', '2024-01-08 22:01:38');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (24, '0004', 'Permission granted', 'User assigned permissions', '2023-12-31 18:56:32');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (25, '0003', 'Password change', 'User successfully changed their password', '2023-09-25 23:52:42');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (26, '0001', 'File upload', 'User uploaded a new file', '2024-07-19 15:42:32');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (27, '0003', 'System error', 'Unexpected error encountered', '2024-04-05 12:30:38');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (28, '0003', 'Password change', 'User successfully changed their password', '2023-09-10 02:43:36');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (29, '0001', 'System error', 'Unexpected error encountered', '2024-05-06 02:47:53');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (30, '0002', 'File upload', 'User uploaded a new file', '2024-12-09 11:19:43');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (31, '0004', 'Permission granted', 'User assigned permissions', '2023-10-14 07:23:57');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (32, '0003', 'Login', 'User successfully logged in', '2024-02-26 12:09:52');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (33, '0001', 'Login', 'User successfully logged in', '2024-05-07 12:22:30');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (34, '0002', 'Permission granted', 'User assigned permissions', '2024-01-01 09:26:36');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (35, '0004', 'File upload', 'User uploaded a new file', '2024-02-05 23:31:57');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (36, '0003', 'File upload', 'User uploaded a new file', '2023-09-18 11:23:18');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (37, '0004', 'Data update', 'User updated their data', '2023-10-03 12:05:37');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (38, '0003', 'File upload', 'User uploaded a new file', '2024-08-31 14:33:18');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (39, '0001', 'Data update', 'User updated their data', '2024-01-30 00:27:33');
INSERT INTO system_logs (log_id, user_id, event_type, description, timestamp) VALUES (40, '0001', 'Password change', 'User successfully changed their password', '2023-10-17 19:33:40');


use Husky_Hacks;
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (15000, 45.23, 350, 'USD', 11);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (22000, 55.34, 500, 'USD', 12);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (18000, 40.12, 450, 'USD', 13);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (27000, 62.78, 550, 'USD', 14);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (32000, 75.45, 600, 'USD', 15);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (25000, 60.56, 520, 'USD', 11);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (21000, 50.34, 480, 'USD', 16);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (35000, 85.23, 670, 'USD', 17);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (30000, 70.12, 590, 'USD', 18);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (40000, 100.45, 750, 'USD', 15);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (45000, 115.67, 800, 'USD', 19);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (33000, 82.34, 620, 'USD', 14);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (37000, 90.56, 680, 'USD', 20);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (28000, 65.34, 570, 'USD', 21);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (31000, 78.45, 600, 'USD', 22);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (36000, 95.12, 650, 'USD', 23);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (42000, 110.78, 700, 'USD', 18);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (46000, 120.45, 780, 'USD', 17);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (34000, 88.56, 630, 'USD', 19);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (38000, 98.34, 670, 'USD', 20);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (29500, 69.23, 580, 'USD', 16);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (27000, 55.12, 540, 'USD', 14);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (23000, 48.78, 490, 'USD', 23);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (26000, 52.45, 520, 'USD', 21);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (34500, 92.34, 640, 'USD', 18);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (38000, 98.56, 680, 'USD', 17);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (41000, 104.23, 720, 'USD', 16);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (28000, 60.78, 580, 'USD', 11);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (33000, 76.34, 620, 'USD', 12);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (29000, 70.45, 590, 'USD', 13);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (44000, 113.56, 770, 'USD', 15);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (47000, 122.34, 820, 'USD', 19);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (25000, 58.12, 540, 'USD', 22);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (39000, 100.56, 700, 'USD', 18);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (42000, 109.45, 740, 'USD', 23);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (48000, 125.67, 840, 'USD', 20);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (31000, 78.89, 600, 'USD', 16);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (36500, 95.23, 660, 'USD', 21);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (29500, 68.45, 570, 'USD', 22);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (32000, 80.12, 610, 'USD', 19);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (35000, 90.34, 640, 'USD', 15);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (27500, 62.78, 550, 'USD', 14);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (30500, 72.45, 580, 'USD', 11);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (41000, 102.34, 720, 'USD', 13);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (44500, 115.78, 780, 'USD', 12);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (29000, 68.56, 570, 'USD', 14);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (38000, 94.45, 700, 'USD', 18);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (41500, 105.56, 730, 'USD', 15);
use Husky_Hacks;
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (1, 0001, 'Coding Progress Report', '2024-01-12 09:45:23', 'Tracked improvements in JavaScript and Python projects.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (2, 0002, 'Data Analysis Feedback Report', '2024-01-20 16:32:11', 'Received feedback focused on improving dataset organization.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (3, 0003, 'System Health Check Report', '2024-01-25 11:10:45', 'All systems operational with minor performance lags.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (4, 0004, 'User Engagement Metrics Report', '2024-02-05 13:00:00', 'Engagement rates are steady with a 5% increase this month.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (5, 0001, 'Interview Preparation Insights', '2024-02-12 14:25:36', 'Generated coding challenge insights for technical interviews.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (6, 0002, 'Project Improvement Recommendations', '2024-02-20 09:30:12', 'Recommendations made for enhancing visual data presentation.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (7, 0003, 'Scheduled Maintenance Report', '2024-02-15 09:30:00', 'Scheduled maintenance window for system upgrade.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (8, 0004, 'User Activity Spike Report', '2024-02-18 13:45:20', 'Unusual spike in user activity detected.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (9, 0001, 'New Coding Challenge Report', '2024-02-20 08:10:12', 'New coding challenge available for data structures.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (10, 0002, 'Project Feedback Report', '2024-02-23 15:22:45', 'Feedback received on your latest project submission.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (11, 0003, 'Backup Failure Report', '2024-02-25 11:55:32', 'Data integrity issue detected during nightly backup.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (12, 0004, 'Database Integrity Report', '2024-01-10 09:45:15', 'Database integrity verified successfully.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (13, 0001, 'Network Security Report', '2024-01-15 11:35:40', 'Network security audit passed.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (14, 0002, 'System Patch Summary', '2024-02-01 08:50:25', 'All critical patches applied.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (15, 0003, 'Annual Performance Report', '2024-02-18 14:20:32', 'Overall performance improved by 7%.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (16, 0004, 'Error Rate Report', '2024-02-25 12:30:44', 'Error rates have decreased by 4% this month.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (17, 0001, 'User Activity Report', '2024-03-01 11:40:22', 'User activity has spiked after recent updates.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (18, 0002, 'System Uptime Report', '2024-03-10 10:15:55', 'System uptime at 99.99% for the last quarter.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (19, 0003, 'Monthly Sales Analysis', '2024-03-18 14:25:10', 'Sales increased by 15% in Q1.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (20, 0004, 'Resource Allocation Report', '2024-03-23 13:30:33', 'All resources are optimized efficiently.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (21, 0001, 'Incident Report Summary', '2024-03-28 15:45:28', 'Incident count reduced by 10% this month.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (22, 0002, 'Performance Benchmark Report', '2024-04-02 08:30:16', 'New benchmarks exceed last year by 5%.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (23, 0003, 'Daily Operational Metrics', '2024-04-05 09:25:47', 'Daily metrics are within operational thresholds.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (24, 0004, 'Compliance Audit Report', '2024-04-12 14:35:56', 'No compliance violations detected.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (25, 0001, 'Quarterly Revenue Report', '2024-04-17 16:20:14', 'Revenue grew by 12% this quarter.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (26, 0002, 'Project Status Update', '2024-04-21 12:15:42', 'All projects are on track.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (27, 0003, 'Security Breach Investigation', '2024-04-29 11:10:39', 'Breach was contained within 24 hours.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (28, 0004, 'Client Satisfaction Survey', '2024-05-01 09:45:33', 'Satisfaction rate is 89%.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (29, 0001, 'Infrastructure Health Check', '2024-05-05 14:30:12', 'All systems running at optimal performance.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (30, 0002, 'Weekly Bug Fix Summary', '2024-05-10 08:22:55', 'Resolved 45 bugs in the past week.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (31, 0003, 'Data Backup Report', '2024-05-15 15:11:10', 'All backups are complete with no errors.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (32, 0004, 'System Load Balancing', '2024-05-22 10:45:38', 'Load balancing is evenly distributed.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (33, 0001, 'User Onboarding Analytics', '2024-05-25 11:20:57', 'Onboarding time reduced by 20%.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (34, 0002, 'Error Reporting Overview', '2024-06-01 09:33:42', 'Error rate dropped by 8% this month.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (35, 0003, 'Network Traffic Analysis', '2024-06-10 12:30:22', 'Traffic levels remain stable.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (36, 0004, 'User Login Trends', '2024-06-14 14:12:40', 'Peak logins occur at 10:00 AM.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (37, 0001, 'Monthly Security Report', '2024-06-18 11:44:33', 'No major security incidents this month.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (38, 0002, 'Risk Management Summary', '2024-06-23 15:55:18', 'Identified risks mitigated successfully.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (39, 0003, 'Data Processing Metrics', '2024-06-29 10:25:05', 'Data processing speed increased by 12%.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (40, 0004, 'End-of-Year Financial Report', '2024-07-05 08:50:13', 'Financial performance exceeded expectations.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (41, 0001, 'Operational Risk Report', '2024-07-09 09:15:48', 'Operational risks remain within acceptable levels.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (42, 0002, 'Daily Resource Usage', '2024-07-12 12:55:22', 'Resource usage is well below threshold.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (43, 0003, 'Quarterly Compliance Summary', '2024-07-18 13:40:39', 'All departments passed compliance audits.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (44, 0004, 'Incident Response Overview', '2024-07-23 14:20:05', 'Response time improved by 15%.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (45, 0001, 'Cloud Services Usage', '2024-07-28 09:32:56', 'Cloud services utilization remains efficient.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (46, 0002, 'Operational Efficiency Report', '2024-08-02 10:45:18', 'Efficiency increased by 10% this quarter.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (47, 0003, 'Audit Compliance Report', '2024-08-07 12:20:14', 'All systems compliant with audit standards.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (48, 0004, 'Server Utilization Report', '2024-08-15 11:30:23', 'Server utilization is optimal across all regions.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (49, 0001, 'Data Integrity Verification', '2024-08-21 09:44:36', 'No data integrity issues detected.');
INSERT INTO reports (report_id, generated_by, name, generated_date, content)
VALUES (50, 0002, 'User Engagement Metrics', '2024-08-25 08:20:55', 'User engagement metrics increased by 22%.');

use Husky_Hacks;
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
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (88.23, 11.77, '2019-Q2', 23);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (83.45, 16.55, '2019-Q3', 16);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (86.34, 13.66, '2019-Q4', 17);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (90.12, 9.88, '2018-Q1', 18);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (84.78, 15.22, '2018-Q2', 19);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (77.56, 22.44, '2018-Q3', 20);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (79.45, 20.55, '2018-Q4', 21);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (82.34, 17.66, '2017-Q1', 22);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (81.23, 18.77, '2017-Q2', 23);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (87.45, 12.55, '2017-Q3', 16);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (89.34, 10.66, '2017-Q4', 17);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (74.12, 25.88, '2016-Q1', 18);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (75.78, 24.22, '2016-Q2', 19);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (80.23, 19.77, '2016-Q3', 20);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (85.12, 14.88, '2016-Q4', 21);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (83.45, 16.55, '2015-Q1', 22);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (86.78, 13.22, '2015-Q2', 23);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (88.45, 11.55, '2015-Q3', 16);
INSERT INTO retention_metrics (retention_rate, churn_rate, cohort, data_source)
VALUES (90.34, 9.66, '2015-Q4', 17);

use Husky_Hacks;
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
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (3, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (5, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (8, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (6, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (10, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (12, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (7, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (14, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (25, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type) VALUES (30, 'revenue');

use Husky_Hacks;
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0101, 0001, 'Healthcare Correlation','Found the correlation between different healthcare providers and disease rates','Healthcare', '1/01/2023 10:58:38', true);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0102, 0001, 'Web Development Basics','Coded for basic web development features','Web Development', '2/02/2023 15:52:43', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0103, 0001, 'Website Visualization','Visualized a Website that had to do with Education','Website', '3/03/2023 06:17:42', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0104, 0001, 'Scatterplots','Made multiple scatterplots while practicing various coding techniques','Plots', '4/04/2023 14:35:36', true);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0105, 0001, 'COVID correlation','Found the correlation between COVID-19 cases and various factors','COVID', '5/05/2023 11:57:01', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0106, 0001, 'Annual GDP','Looked at the annual GDP overtime and what factors caused it to change','GDP', '6/06/2023 22:48:59', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0107, 0001, 'Income Regression','Looked at the income over the last 5 years and how it shifted','Income', '7/07/2023 17:52:57', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0108, 0001, 'Retail Comparison','Compared different retailers over numerous factors','Retailer Comparison', '8/018/2023 16:57:50', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0201, 0002, 'European Soccer Team','Analyzed European Soccer team spending to players` success','Euro Soccer', '1/01/2020 21:55:59', true);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0202, 0002, 'Soccer Correlation','Found the correlation between Soccer winnings and a multitude of factors','Soccer Winnings', '2/02/2020 15:20:54', true);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0203, 0002, 'Soccer Sales','Looked and visualized the sales of multiple soccer teams over the last 5 years','Soccer Sales', '3/03/2020 04:50:13', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0204, 0002, 'Soccer Visualization','Visualized using a scatterplots the overall retail sales of soccer teams','Soccer Retail', '4/04/2020 11:39:34', true);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0205, 0002, 'Average Player Stats','Used various statistical techniques to analyze many players on a team','Player Stats', '5/05/2020 14:22:43', true);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0206, 0002, 'Total Goals','Looked at overall player data to see which player and which team had the most goals over the last 5 years','Goals', '6/06/2020 13:27:32', true);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0207, 0002, 'Goals Prediction','Used data science techniques to predict which player will score the most goals next season','Player Prediction', '7/07/2020 07:45:52', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0208, 0002, 'Best Player','Analyzed past player stats and championships to find the `best player`','Best Player', '8/08/2020 13:57:56', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0301, 0003, 'Management Data','Analyzed management data for multiple education businesses','Management', '1/01/2019 02:55:11', true);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0302, 0003, 'Security Data','Analyzed the security performance of his softwares','Security', '2/02/2019 06:04:12', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0303, 0003, 'Sector Performance','Found the sector that performed the best over the last period','Sector', '3/03/2019 13:09:43', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0304, 0003, 'Sector Prediction','Predicted which sector will result in the least maintenance based on past performance','Sector Prediction', '4/04/2019 00:18:49', true);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0305, 0003, 'IT management','Analyzed IT management data and visualized stability','IT Stability', '5/05/2019 13:10:55', true);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0306, 0003, 'User Permissions','Analyzed the permissions of different users to solve bugs and issues','Permissions', '6/06/2019 13:05:57', true);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0307, 0003, 'Maintenance Data','Used maintenence data to find which issue was the most prevalent','Maintenance Prevalency', '7/07/2019 17:44:44', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0308, 0003, 'Maintenance Prediction','Used maintenence data to predict which issue will most likely occur','Prediction', '8/08/2019 05:29:34', true);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0401, 0004, 'Revenue Insights','Analyzed revenue metrics for multiple businesses','Revenue', '1/01/2021 05:36:36', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0402, 0004, 'Overall Retention','Found which demographic and for what sectors had the varying retentions','Retention', '2/02/2021 05:56:19', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0403, 0004, 'User Prediction','Predicted which users had the most engagement to what marketing strategies','Marketing', '3/03/2021 19:31:07', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0404, 0004, 'Engagement Correlation','Found the correlation between multiple business users with various factors','Engagement', '4/04/2021 07:11:44', true);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0405, 0004, 'Revenue Prediction','Predicted the average revenue for businesses using past income and expense data','Revenue', '5/05/2021 12:31:48', true);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0406, 0004, 'Engagement Visualization','Visualized the different sectors in which engagement was high or low','Visualization', '6/06/2021 16:46:23', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0407, 0004, 'Marketing Breakdown','Broke down the marketing sector to understand areas of accomplishments and improvement','Marketing', '7/07/2021 17:49:30', false);
insert into projects (project_id, user_id, title, description, tags, upload_date, is_archived) values (0408, 0004, 'Product Visualization','Visualized which products sold the most and aided in engagement','Products', '8/08/2021 23:54:15', false);

use Husky_Hacks;
insert into progress (progress_id, project_id, progress_description, progress_date) values (01, 0101, 'Completed correlation analysis', '1/06/2023 19:59:47');
insert into progress (progress_id, project_id, progress_description, progress_date) values (02, 0102, 'Added two web development features', '2/07/2023 10:57:53');
insert into progress (progress_id, project_id, progress_description, progress_date) values (03, 0103, 'Made title page', '3/08/2023 07:31:45');
insert into progress (progress_id, project_id, progress_description, progress_date) values (04, 0104, 'Completed two scatterplots', '4/09/2023 03:22:33');
insert into progress (progress_id, project_id, progress_description, progress_date) values (05, 0105, 'Cleaned data', '5/10/2023 05:57:55');
insert into progress (progress_id, project_id, progress_description, progress_date) values (06, 0106, 'Organized data by time', '6/11/2023 02:26:35');
insert into progress (progress_id, project_id, progress_description, progress_date) values (07, 0107, 'Implemented regression', '7/12/2023 07:08:11');
insert into progress (progress_id, project_id, progress_description, progress_date) values (08, 0108, 'Cleaned and organized data', '8/13/2023 00:59:20');
insert into progress (progress_id, project_id, progress_description, progress_date) values (09, 0101, 'Added scatterplots with regression to show correlation', '1/08/2023 11:04:19');
insert into progress (progress_id, project_id, progress_description, progress_date) values (10, 0102, 'Added all web development features with comments', '2/09/2023 19:07:03');
insert into progress (progress_id, project_id, progress_description, progress_date) values (11, 0201, 'Cleaned spending columns', '1/08/2020 10:20:09');
insert into progress (progress_id, project_id, progress_description, progress_date) values (12, 0202, 'Made lists based on columns', '2/09/2020 18:03:44');
insert into progress (progress_id, project_id, progress_description, progress_date) values (13, 0203, 'Created plots for overall soccer retail sales', '3/10/2020 16:15:52');
insert into progress (progress_id, project_id, progress_description, progress_date) values (14, 0204, 'Fixed axis of plots', '4/11/2020 10:36:16');
insert into progress (progress_id, project_id, progress_description, progress_date) values (15, 0205, 'imported and used scipy', '5/12/2020 11:15:39');
insert into progress (progress_id, project_id, progress_description, progress_date) values (16, 0206, 'Cleaned and organized player data for use', '6/13/2020 14:11:33');
insert into progress (progress_id, project_id, progress_description, progress_date) values (17, 0207, 'Utilized K Means clustering for prediciton', '7/14/2020 21:15:44');
insert into progress (progress_id, project_id, progress_description, progress_date) values (18, 0208, 'Put data into dictionaries', '8/15/2020 04:28:31');
insert into progress (progress_id, project_id, progress_description, progress_date) values (19, 0201, 'Compared spending data to player stats for each team', '1/10/2020 11:20:21');
insert into progress (progress_id, project_id, progress_description, progress_date) values (20, 0202, 'Implemented correlation analysis', '2/11/2020 00:48:55');
insert into progress (progress_id, project_id, progress_description, progress_date) values (21, 0301, 'Cleaned management data', '1/04/2019 00:07:50');
insert into progress (progress_id, project_id, progress_description, progress_date) values (22, 0302, 'Cleaned security data', '2/05/2019 11:12:55');
insert into progress (progress_id, project_id, progress_description, progress_date) values (23, 0303, 'Put sector results in different lists for use', '3/06/2019 13:13:02');
insert into progress (progress_id, project_id, progress_description, progress_date) values (24, 0304, 'Utilized K Means clustering for prediction', '4/07/2019 21:21:12');
insert into progress (progress_id, project_id, progress_description, progress_date) values (25, 0305, 'Coded for line graphs to visualize stability', '5/08/2019 18:21:26');
insert into progress (progress_id, project_id, progress_description, progress_date) values (26, 0306, 'Cleaned permissions data', '6/09/2019 22:48:02');
insert into progress (progress_id, project_id, progress_description, progress_date) values (27, 0307, 'Used stats to find the mode in data', '7/10/2019 04:06:30');
insert into progress (progress_id, project_id, progress_description, progress_date) values (28, 0308, 'Put maintenance data in lists for prediction', '8/11/2019 01:31:56');
insert into progress (progress_id, project_id, progress_description, progress_date) values (29, 0301, 'Compared management data across different businesses', '1/06/2019 21:28:04');
insert into progress (progress_id, project_id, progress_description, progress_date) values (30, 0302, 'Put data into dictionaries for analysis', '2/07/2019 12:18:56');
insert into progress (progress_id, project_id, progress_description, progress_date) values (31, 0401, 'Cleaned revenue data', '1/05/2021 00:43:15');
insert into progress (progress_id, project_id, progress_description, progress_date) values (32, 0402, 'Cleaned demographics data', '2/06/2021 02:12:55');
insert into progress (progress_id, project_id, progress_description, progress_date) values (33, 0403, 'Predicted user engagement using decision trees', '3/07/2021 12:27:50');
insert into progress (progress_id, project_id, progress_description, progress_date) values (34, 0404, 'Did a Pearson correlation', '4/08/2021 17:59:57');
insert into progress (progress_id, project_id, progress_description, progress_date) values (35, 0405, 'Predicted average revenue using decision tress', '5/09/2021 06:19:52');
insert into progress (progress_id, project_id, progress_description, progress_date) values (36, 0406, 'Made a bar plot for visualization', '6/10/2021 05:41:29');
insert into progress (progress_id, project_id, progress_description, progress_date) values (37, 0407, 'Put marketing data in lists', '7/11/2021 00:46:53');
insert into progress (progress_id, project_id, progress_description, progress_date) values (38, 0408, 'Made a line graph for visualization', '8/12/2021 06:01:59');
insert into progress (progress_id, project_id, progress_description, progress_date) values (39, 0401, 'Compared revenue metrics across companies', '1/07/2021 01:47:47');
insert into progress (progress_id, project_id, progress_description, progress_date) values (40, 0402, 'Compared retention to demographics using scatterplots', '2/08/2021 02:24:49');

use Husky_Hacks;
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) values (1, 0001, 'Admin', 0002, '3/11/2024 20:10:48');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) values (2, 0001, 'Edit', 0003, '8/15/2024 21:50:35');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) values (3, 0001, 'Edit', 0004, '1/28/2024 03:10:24');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) values (4, 0002, 'View', 0001, '9/17/2024 19:40:02');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) values (5, 0002, 'Admin', 0003, '11/24/2023 01:35:53');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) values (6, 0002, 'Admin', 0004, '1/6/2024 18:57:13');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) values (7, 0003, 'View', 0001, '12/1/2024 20:07:12');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) values (8, 0003, 'View', 0002, '8/21/2024 14:48:01');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) values (9, 0003, 'View', 0004, '1/2/2024 22:46:15');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) values (10, 0004, 'Edit', 0001, '12/21/2023 06:07:56');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) values (11, 0004, 'Edit', 0002, '2/1/2024 14:58:11');
insert into permissions (permission_id, user_id, access_level, assigned_by, assigned_date) values (12, 0004, 'Edit', 0003, '11/3/2023 07:35:04');

create table notification (
	notification_id INT,
	metric_id VARCHAR(1),
	timestamp DATE,
	notification_type VARCHAR(1),
	threshold_value INT,
	actual_value INT
);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (1, 'error: undefined method `id'' for nil:NilClass', '3/6/2024', 'error: undefined method `id'' for nil:NilClass', 72, 69);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (2, 'error: undefined method `id'' for nil:NilClass', '11/7/2024', 'error: undefined method `id'' for nil:NilClass', 91, 45);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (3, 'error: undefined method `id'' for nil:NilClass', '7/17/2024', 'error: undefined method `id'' for nil:NilClass', 21, 70);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (4, 'error: undefined method `id'' for nil:NilClass', '10/30/2024', 'error: undefined method `id'' for nil:NilClass', 90, 4);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (5, 'error: undefined method `id'' for nil:NilClass', '12/26/2023', 'error: undefined method `id'' for nil:NilClass', 57, 0);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (6, 'error: undefined method `id'' for nil:NilClass', '12/6/2023', 'error: undefined method `id'' for nil:NilClass', 10, 38);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (7, 'error: undefined method `id'' for nil:NilClass', '5/5/2024', 'error: undefined method `id'' for nil:NilClass', 26, 96);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (8, 'error: undefined method `id'' for nil:NilClass', '9/10/2024', 'error: undefined method `id'' for nil:NilClass', 46, 61);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (9, 'error: undefined method `id'' for nil:NilClass', '2/9/2024', 'error: undefined method `id'' for nil:NilClass', 1, 29);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (10, 'error: undefined method `id'' for nil:NilClass', '11/4/2024', 'error: undefined method `id'' for nil:NilClass', 78, 50);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (11, 'error: undefined method `id'' for nil:NilClass', '11/7/2024', 'error: undefined method `id'' for nil:NilClass', 3, 76);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (12, 'error: undefined method `id'' for nil:NilClass', '6/4/2024', 'error: undefined method `id'' for nil:NilClass', 44, 54);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (13, 'error: undefined method `id'' for nil:NilClass', '8/6/2024', 'error: undefined method `id'' for nil:NilClass', 91, 30);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (14, 'error: undefined method `id'' for nil:NilClass', '11/12/2024', 'error: undefined method `id'' for nil:NilClass', 25, 46);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (15, 'error: undefined method `id'' for nil:NilClass', '4/27/2024', 'error: undefined method `id'' for nil:NilClass', 16, 47);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (16, 'error: undefined method `id'' for nil:NilClass', '9/11/2024', 'error: undefined method `id'' for nil:NilClass', 88, 67);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (17, 'error: undefined method `id'' for nil:NilClass', '9/9/2024', 'error: undefined method `id'' for nil:NilClass', 5, 86);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (18, 'error: undefined method `id'' for nil:NilClass', '6/17/2024', 'error: undefined method `id'' for nil:NilClass', 48, 11);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (19, 'error: undefined method `id'' for nil:NilClass', '9/6/2024', 'error: undefined method `id'' for nil:NilClass', 49, 64);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (20, 'error: undefined method `id'' for nil:NilClass', '7/9/2024', 'error: undefined method `id'' for nil:NilClass', 32, 93);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (21, 'error: undefined method `id'' for nil:NilClass', '6/8/2024', 'error: undefined method `id'' for nil:NilClass', 93, 48);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (22, 'error: undefined method `id'' for nil:NilClass', '3/21/2024', 'error: undefined method `id'' for nil:NilClass', 27, 90);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (23, 'error: undefined method `id'' for nil:NilClass', '8/30/2024', 'error: undefined method `id'' for nil:NilClass', 16, 79);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (24, 'error: undefined method `id'' for nil:NilClass', '8/15/2024', 'error: undefined method `id'' for nil:NilClass', 49, 60);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (25, 'error: undefined method `id'' for nil:NilClass', '5/20/2024', 'error: undefined method `id'' for nil:NilClass', 60, 91);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (26, 'error: undefined method `id'' for nil:NilClass', '1/29/2024', 'error: undefined method `id'' for nil:NilClass', 13, 2);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (27, 'error: undefined method `id'' for nil:NilClass', '8/22/2024', 'error: undefined method `id'' for nil:NilClass', 48, 27);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (28, 'error: undefined method `id'' for nil:NilClass', '10/2/2024', 'error: undefined method `id'' for nil:NilClass', 49, 67);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (29, 'error: undefined method `id'' for nil:NilClass', '7/10/2024', 'error: undefined method `id'' for nil:NilClass', 74, 63);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (30, 'error: undefined method `id'' for nil:NilClass', '9/5/2024', 'error: undefined method `id'' for nil:NilClass', 28, 84);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (31, 'error: undefined method `id'' for nil:NilClass', '1/6/2024', 'error: undefined method `id'' for nil:NilClass', 89, 90);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (32, 'error: undefined method `id'' for nil:NilClass', '10/12/2024', 'error: undefined method `id'' for nil:NilClass', 27, 77);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (33, 'error: undefined method `id'' for nil:NilClass', '3/11/2024', 'error: undefined method `id'' for nil:NilClass', 93, 84);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (34, 'error: undefined method `id'' for nil:NilClass', '12/26/2023', 'error: undefined method `id'' for nil:NilClass', 50, 60);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (35, 'error: undefined method `id'' for nil:NilClass', '9/23/2024', 'error: undefined method `id'' for nil:NilClass', 41, 92);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (36, 'error: undefined method `id'' for nil:NilClass', '8/8/2024', 'error: undefined method `id'' for nil:NilClass', 5, 42);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (37, 'error: undefined method `id'' for nil:NilClass', '1/18/2024', 'error: undefined method `id'' for nil:NilClass', 33, 78);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (38, 'error: undefined method `id'' for nil:NilClass', '9/2/2024', 'error: undefined method `id'' for nil:NilClass', 8, 90);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (39, 'error: undefined method `id'' for nil:NilClass', '7/27/2024', 'error: undefined method `id'' for nil:NilClass', 90, 48);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (40, 'error: undefined method `id'' for nil:NilClass', '11/14/2024', 'error: undefined method `id'' for nil:NilClass', 28, 99);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (41, 'error: undefined method `id'' for nil:NilClass', '12/15/2023', 'error: undefined method `id'' for nil:NilClass', 92, 22);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (42, 'error: undefined method `id'' for nil:NilClass', '12/9/2023', 'error: undefined method `id'' for nil:NilClass', 30, 34);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (43, 'error: undefined method `id'' for nil:NilClass', '8/11/2024', 'error: undefined method `id'' for nil:NilClass', 49, 4);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (44, 'error: undefined method `id'' for nil:NilClass', '4/13/2024', 'error: undefined method `id'' for nil:NilClass', 44, 42);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (45, 'error: undefined method `id'' for nil:NilClass', '6/7/2024', 'error: undefined method `id'' for nil:NilClass', 8, 58);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (46, 'error: undefined method `id'' for nil:NilClass', '3/30/2024', 'error: undefined method `id'' for nil:NilClass', 93, 20);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (47, 'error: undefined method `id'' for nil:NilClass', '9/9/2024', 'error: undefined method `id'' for nil:NilClass', 87, 69);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (48, 'error: undefined method `id'' for nil:NilClass', '8/5/2024', 'error: undefined method `id'' for nil:NilClass', 87, 29);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (49, 'error: undefined method `id'' for nil:NilClass', '2/8/2024', 'error: undefined method `id'' for nil:NilClass', 50, 38);
insert into notification (notification_id, metric_id, timestamp, notification_type, threshold_value, actual_value) values (50, 'error: undefined method `id'' for nil:NilClass', '2/26/2024', 'error: undefined method `id'' for nil:NilClass', 84, 94);

insert into notification_type (type_id, name) values (1, 'Performance Alert');
insert into notification_type (type_id, name) values (2, 'Threshold Alert');
insert into notification_type (type_id, name) values (3, 'Performance Alert');
insert into notification_type (type_id, name) values (4, 'Performance Alert');
insert into notification_type (type_id, name) values (5, 'Custom Alert');
insert into notification_type (type_id, name) values (6, 'Performance Alert');
insert into notification_type (type_id, name) values (7, 'Threshold Alert');
insert into notification_type (type_id, name) values (8, 'Performance Alert');
insert into notification_type (type_id, name) values (9, 'Threshold Alert');
insert into notification_type (type_id, name) values (10, 'Performance Alert');
insert into notification_type (type_id, name) values (11, 'Custom Alert');
insert into notification_type (type_id, name) values (12, 'Custom Alert');
insert into notification_type (type_id, name) values (13, 'Performance Alert');
insert into notification_type (type_id, name) values (14, 'Performance Alert');
insert into notification_type (type_id, name) values (15, 'Threshold Alert');
insert into notification_type (type_id, name) values (16, 'Custom Alert');
insert into notification_type (type_id, name) values (17, 'Performance Alert');
insert into notification_type (type_id, name) values (18, 'Threshold Alert');
insert into notification_type (type_id, name) values (19, 'Performance Alert');
insert into notification_type (type_id, name) values (20, 'Threshold Alert');
insert into notification_type (type_id, name) values (21, 'Performance Alert');
insert into notification_type (type_id, name) values (22, 'Custom Alert');
insert into notification_type (type_id, name) values (23, 'Performance Alert');
insert into notification_type (type_id, name) values (24, 'Performance Alert');
insert into notification_type (type_id, name) values (25, 'Performance Alert');
insert into notification_type (type_id, name) values (26, 'Custom Alert');
insert into notification_type (type_id, name) values (27, 'Performance Alert');
insert into notification_type (type_id, name) values (28, 'Custom Alert');
insert into notification_type (type_id, name) values (29, 'Threshold Alert');
insert into notification_type (type_id, name) values (30, 'Custom Alert');
insert into notification_type (type_id, name) values (31, 'Custom Alert');
insert into notification_type (type_id, name) values (32, 'Threshold Alert');
insert into notification_type (type_id, name) values (33, 'Performance Alert');
insert into notification_type (type_id, name) values (34, 'Performance Alert');
insert into notification_type (type_id, name) values (35, 'Custom Alert');
insert into notification_type (type_id, name) values (36, 'Custom Alert');
insert into notification_type (type_id, name) values (37, 'Threshold Alert');
insert into notification_type (type_id, name) values (38, 'Performance Alert');
insert into notification_type (type_id, name) values (39, 'Performance Alert');
insert into notification_type (type_id, name) values (40, 'Custom Alert');
insert into notification_type (type_id, name) values (41, 'Threshold Alert');
insert into notification_type (type_id, name) values (42, 'Performance Alert');
insert into notification_type (type_id, name) values (43, 'Threshold Alert');
insert into notification_type (type_id, name) values (44, 'Performance Alert');
insert into notification_type (type_id, name) values (45, 'Performance Alert');
insert into notification_type (type_id, name) values (46, 'Performance Alert');
insert into notification_type (type_id, name) values (47, 'Threshold Alert');
insert into notification_type (type_id, name) values (48, 'Performance Alert');
insert into notification_type (type_id, name) values (49, 'Performance Alert');
insert into notification_type (type_id, name) values (50, 'Threshold Alert');

use Husky_Hacks;
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated) VALUES
('Revenue Analysis', 1, '9/1/2023 08:15:45', '9/5/2023 10:00:00'),
('Website Traffic Growth Report', 3, '9/10/2023 14:30:00', '9/12/2023 16:45:30'),
('Quarterly Profit and Loss Statement', 5, '9/20/2023 09:00:00', '9/22/2023 12:30:00'),
('New Hire Onboarding Metrics', 7, '10/5/2023 07:45:20', '10/6/2023 09:15:40'),
('Data Breach Incident Report', 16, '10/15/2023 20:33:08', '10/17/2023 21:24:57'),
('Daily Network Uptime Report', 2, '11/1/2023 11:25:00', '11/3/2023 13:15:10'),
('Customer Support Satisfaction Trends', 13, '11/10/2023 08:45:30', '11/15/2023 09:20:45'),
('Quarterly Product Release Overview', 19, '12/1/2023 15:00:00', '12/2/2023 16:30:10'),
('Year-End Compliance Audit Summary', 20, '12/15/2023 19:28:34', '12/16/2023 19:39:57'),
('Annual Budget Review', 5, '1/10/2024 07:00:15', '1/11/2024 18:20:50'),
('Employee Turnover Report', 8, '1/26/2024 11:08:28', '1/28/2024 11:39:41'),
('Social Media Engagement Analysis', 26, '2/15/2024 12:00:00', '2/17/2024 14:15:00'),
('Supply Chain Efficiency Metrics', 22, '3/1/2024 13:30:00', '3/5/2024 14:50:00'),
('Sales Funnel Conversion Rates', 11, '3/20/2024 09:00:00', '3/21/2024 10:15:00'),
('Shipping Delays Heatmap', 23, '4/5/2024 06:45:20', '4/7/2024 08:15:30'),
('Monthly Threat Assessment', 27, '4/15/2024 20:33:08', '4/18/2024 21:24:57'),
('Year-End Customer Loyalty Trends', 13, '5/1/2024 11:25:00', '5/3/2024 13:15:10'),
('Investor Meeting Financial Summary', 21, '5/10/2024 08:45:30', '5/12/2024 09:20:45'),
('Environmental Impact Report', 28, '6/1/2024 15:00:00', '6/5/2024 16:30:10'),
('Retail Foot Traffic Overview', 29, '6/15/2024 19:28:34', '6/18/2024 19:39:57'),
('Weekly Cybersecurity Update', 16, '7/10/2024 07:00:15', '7/12/2024 18:20:50'),
('Partnership Success Metrics', 17, '7/26/2024 11:08:28', '7/28/2024 11:39:41'),
('Training Program Feedback Analysis', 23, '8/15/2024 12:00:00', '8/17/2024 14:15:00'),
('Conference Attendance Summary', 24, '8/20/2024 13:30:00', '8/25/2024 14:50:00'),
('Office Energy Usage Dashboard', 22, '9/1/2024 09:00:00', '9/3/2024 10:15:00'),
('Shipping Performance Dashboard', 23, '9/20/2024 06:45:20', '9/25/2024 08:15:30'),
('Crisis Management Preparedness Index', 30, '10/1/2024 20:33:08', '10/5/2024 21:24:57'),
('Monthly Risk Exposure Assessment', 19, '10/10/2024 11:25:00', '10/12/2024 13:15:10'),
('Holiday Season Sales Trends', 12, '11/1/2024 08:45:30', '11/5/2024 09:20:45'),
('Marketing Campaign ROI Analysis', 3, '11/15/2024 15:00:00', '11/18/2024 16:30:10'),
('Supplier Performance Evaluation', 13, '12/1/2024 19:28:34', '12/3/2024 19:39:57'),
('Year-End Manufacturing Output Review', 30, '12/10/2024 07:00:15', '12/15/2024 18:20:50'),
('Last-Minute Holiday Metrics', 18, '12/20/2024 11:08:28', '12/22/2024 11:39:41'),
('Software Implementation Success', 35, '11/5/2024 08:00:15', '11/15/2024 12:30:50'),
('Cloud Infrastructure Downtime Trends', 40, '12/15/2024 08:15:00', '12/16/2024 18:25:50');

use Husky_Hacks;
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (1, 0101, 0002, 'Make code more efficient', 4, '1/02/2023 08:36:58');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (2, 0102, 0002, 'Great use of functions', 8, '2/03/2023 09:17:37');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (3, 0103, 0002, 'Great job visualizing', 6, '3/04/2023 04:26:34');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (4, 0104, 0002, 'Add regression lines for scatterplot', 7, '4/05/2023 12:58:21');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (5, 0105, 0003, 'Great use of correlation', 6, '5/06/2023 09:35:05');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (6, 0106, 0003, 'I liked how you organized the data', 5, '6/07/2023 21:42:07');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (7, 0107, 0003, 'The regression analysis can be improved', 4, '7/08/2023 03:11:48');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (8, 0108, 0003, 'Good job data cleaning', 8, '8/09/2023 15:17:28');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (9, 0101, 0004, 'Enjoyed project layout and functions', 7, '1/03/2023 22:10:01');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (10, 0102, 0004, 'Main code improved overall development', 10, '2/04/2023 11:39:30');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (11, 0201, 0001, 'Functions could be more efficient', 4, '1/02/2020 04:30:46');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (12, 0202, 0001, 'More comments are needed', 5, '2/03/2020 21:51:15');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (13, 0203, 0001, 'Good visualizations', 7, '3/04/2020 01:56:11');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (14, 0204, 0001, 'Detailed scatterplots', 7, '4/05/2020 00:26:13');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (15, 0205, 0003, 'Used a wide variety of statistical tools', 6, '5/06/2020 02:16:14');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (16, 0206, 0003, 'Cleaned player data well', 6, '6/07/2020 00:20:11');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (17, 0207, 0003, 'Used prediciton tools well', 8, '7/08/2020 18:39:48');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (18, 0208, 0003, 'Good use of lists', 5, '8/09/2020 06:15:48');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (19, 0201, 0004, 'Newer functions improved code', 7, '1/03/2020 15:08:10');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (20, 0202, 0004, 'New comments improved organization', 8, '2/04/2020 03:28:37');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (21, 0301, 0002, 'Management data organized well', 7, '1/02/2019 08:11:16');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (22, 0302, 0002, 'Good use of functions', 10, '2/03/2019 07:50:22');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (23, 0303, 0002, 'Sector lists ensure ease of use', 8, '3/04/2019 17:35:26');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (24, 0304, 0002, 'Code for K Means clustering is done well', 9, '4/05/2019 16:25:55');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (25, 0305, 0004, 'Line graphs could use more detail', 6, '5/06/2019 13:15:40');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (26, 0306, 0004, 'Permissions data cleaned well', 6, '6/07/2019 17:26:00');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (27, 0307, 0004, 'Efficient use of stats', 9, '7/08/2019 23:08:25');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (28, 0308, 0004, 'Organized data well', 8, '8/09/2019 00:03:56');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (29, 0301, 0001, 'Comparison of management data completed well', 9, '1/03/2019 14:26:03');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (30, 0302, 0001, 'Improved dictionaries helped code', 9, '2/04/2019 15:10:59');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (31, 0401, 0001, 'Data could be cleaned more', 5, '1/02/2021 16:42:22');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (32, 0402, 0002, 'Demographics information could be more organized', 5, '2/03/2021 02:13:02');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (33, 0403, 0003, 'Good use of decision trees ', 7, '3/04/2021 10:22:16');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (34, 0404, 0003, 'Decent job on correlation', 6, '4/05/2021 21:50:58');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (35, 0405, 0003, 'Good job on using decision trees', 7, '5/06/2021 22:03:31');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (36, 0406, 0003, 'Amazing bar plot', 9, '6/07/2021 01:04:30');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (37, 0407, 0002, 'Decent job using lists', 7, '7/08/2021 11:43:34');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (38, 0408, 0002, 'Line graph needs more detail', 5, '8/09/2021 06:06:48');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (39, 0401, 0001, 'Cleaned data more which improved revenue analysis', 8, '1/03/2021 06:21:28');
insert into feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date) values (40, 0402, 0001, 'Demographics data cleaning was improved', 9, '2/04/2021 20:03:45');

use Husky_Hacks;
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('7956006570', '11/14/2024', 102400, true, 1);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('7637143953', '10/28/2023', 25600, true, 2);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('3799860967', '10/28/2023', 102400, true, 3);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('7333345394', '1/5/2024', 102400, true, 4);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('7514091068', '10/24/2024', 51200, true, 5);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('3243707889', '2/6/2024', 204800, true, 6);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('2530813493', '10/14/2024', 102400, true, 7);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('8819853361', '10/31/2023', 102400, false, 8);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('4064880390', '11/14/2024', 102400, false, 9);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('4098377985', '11/4/2024', 102400, false, 10);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('8748567434', '9/29/2023', 102400, false, 11);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('1110171358', '5/12/2024', 102400, false, 12);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('1820262626', '2/11/2024', 25600, false, 13);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('6681377440', '12/27/2023', 51200, false, 14);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('3349273475', '10/18/2024', 204800, true, 15);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('2300710048', '8/16/2024', 25600, true, 16);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('3448876399', '11/24/2024', 204800, true, 17);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('0550812059', '3/26/2024', 102400, false, 18);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('1934982032', '2/4/2024', 102400, false, 19);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('3283217122', '9/16/2023', 25600, false, 20);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('4313213694', '6/24/2024', 204800, true, 21);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('8323307628', '3/19/2024', 51200, false, 22);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('4119288951', '4/18/2024', 25600, true, 23);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('1222622424', '9/3/2023', 102400, true, 24);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('1031811222', '10/3/2024', 102400, true, 25);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('2637458968', '9/1/2024', 102400, false, 26);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('9662829369', '8/27/2024', 51200, true, 27);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('1620531852', '9/22/2023', 51200, false, 28);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('7928282364', '12/30/2024', 204800, false, 29);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('3000249400', '10/22/2023', 51200, true, 30);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('5360021063', '9/9/2023', 51200, false, 31);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('6285401470', '8/26/2024', 25600, false, 32);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('9735205440', '6/23/2024', 51200, true, 33);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('6936995632', '12/27/2023', 25600, true, 34);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('2843325846', '11/19/2024', 204800, false, 35);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('0151550190', '3/20/2024', 102400, false, 36);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('7134425584', '4/5/2024', 25600, false, 37);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('3583254473', '3/20/2024', 51200, false, 38);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('4037990679', '6/19/2024', 51200, true, 39);
insert into backups (backup_id, backup_date, backup_size, status, error_log_id) values ('8815176691', '7/17/2024', 25600, false, 40);

use Husky_Hacks;
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (1, 1, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (2, 2, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (3, 3, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (4, 1, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (5, 4, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (6, 2, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (7, 3, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (8, 1, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (9, 4, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (10, 2, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (11, 3, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (12, 1, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (13, 4, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (14, 2, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (15, 3, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (16, 1, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (17, 4, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (18, 2, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (19, 3, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (20, 1, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (21, 4, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (22, 2, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (23, 3, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (24, 1, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (25, 4, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (26, 2, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (27, 3, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (28, 1, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (29, 4, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (30, 2, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (31, 3, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (32, 1, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (33, 4, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (34, 2, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (35, 3, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (36, 1, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (37, 4, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (38, 2, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (39, 3, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (40, 1, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (41, 4, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (42, 2, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (43, 3, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (44, 1, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (45, 4, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (46, 2, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (47, 3, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (48, 1, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (49, 4, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (50, 2, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (3, 3, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (5, 4, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (8, 1, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (6, 2, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (10, 2, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (12, 1, 'revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (7, 3, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (14, 2, 'retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (25, 4, 'user_engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (30, 2, 'revenue');

use Husky_Hacks;
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

