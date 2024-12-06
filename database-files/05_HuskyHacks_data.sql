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
USE Husky_Hacks;

-- Corrected INSERT statements for user_engagement_metrics (up to metric_id = 50)
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (23.45, 1500, 200, 1300, 1);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (17.89, 1200, 180, 1020, 2);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (45.67, 2000, 500, 1500, 3);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (33.21, 1800, 300, 1500, 4);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (27.63, 1600, 220, 1380, 5);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (12.34, 1000, 150, 850, 6);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (54.21, 2500, 600, 1900, 7);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (30.56, 1800, 300, 1500, 8);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (41.67, 2100, 400, 1700, 9);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (37.89, 1900, 320, 1580, 10);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (20.45, 1400, 250, 1150, 11);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (25.78, 1500, 300, 1200, 12);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (32.89, 1600, 400, 1200, 13);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (29.45, 1400, 350, 1050, 14);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (38.23, 2000, 450, 1550, 15);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (44.67, 2200, 500, 1700, 16);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (18.56, 1300, 200, 1100, 17);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (24.78, 1500, 250, 1250, 18);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (35.67, 1800, 400, 1400, 19);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (47.89, 2400, 600, 1800, 20);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (21.34, 1300, 220, 1080, 21);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (36.45, 1900, 400, 1500, 22);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (30.23, 1700, 350, 1350, 23);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (50.78, 2600, 700, 1900, 24);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (43.89, 2200, 500, 1700, 25);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (27.45, 1600, 300, 1300, 26);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (31.56, 1800, 400, 1400, 27);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (42.34, 2100, 500, 1600, 28);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (26.89, 1500, 250, 1250, 29);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (33.23, 1700, 400, 1300, 30);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (39.78, 1900, 450, 1450, 31);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (48.45, 2400, 600, 1800, 32);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (35.67, 2000, 450, 1550, 33);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (40.56, 2200, 500, 1700, 34);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (23.45, 1400, 250, 1150, 35);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (28.78, 1600, 300, 1300, 36);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (34.23, 1800, 350, 1450, 37);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (29.45, 1700, 400, 1300, 38);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (41.56, 2100, 550, 1550, 39);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (37.89, 1900, 450, 1450, 40);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (22.78, 1400, 200, 1200, 41);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (31.89, 1700, 400, 1300, 42);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (49.23, 2600, 700, 1900, 43);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (45.67, 2400, 600, 1800, 44);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (38.45, 2000, 500, 1500, 45);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (32.56, 1800, 350, 1450, 46);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (30.89, 1600, 300, 1300, 47);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (25.67, 1500, 250, 1250, 48);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (23.45, 1500, 200, 1300, 49);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (15000, 45.23, 350, 'USD', 49);
INSERT INTO user_engagement_metrics (engagement_rate, active_users, new_users, returning_users, data_source)
VALUES (40.75, 2200, 400, 1800, 50);

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

USE Husky_Hacks;
-- Complete INSERT statements for revenue_metrics
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (15000, 45.23, 350, 'USD', 1);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (12000, 40.11, 280, 'USD', 2);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (18000, 50.45, 400, 'USD', 3);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (14000, 48.00, 310, 'USD', 4);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (16000, 49.23, 330, 'USD', 5);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (13000, 41.56, 290, 'USD', 6);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (20000, 55.67, 420, 'USD', 7);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (17000, 53.78, 360, 'USD', 8);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (19000, 57.12, 390, 'USD', 9);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (21000, 60.45, 440, 'USD', 10);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (15000, 48.90, 340, 'USD', 11);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (14000, 46.78, 320, 'USD', 12);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (17000, 54.00, 370, 'USD', 13);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (16000, 50.12, 350, 'USD', 14);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (18000, 55.67, 380, 'USD', 15);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (20000, 58.23, 400, 'USD', 16);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (13000, 44.56, 270, 'USD', 17);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (12000, 41.34, 260, 'USD', 18);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (15000, 47.89, 320, 'USD', 19);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (22000, 62.45, 460, 'USD', 20);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (19000, 57.12, 390, 'USD', 21);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (17000, 53.78, 360, 'USD', 22);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (20000, 59.45, 410, 'USD', 23);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (21000, 60.78, 430, 'USD', 24);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (22000, 62.34, 440, 'USD', 25);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (19000, 56.89, 380, 'USD', 26);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (20000, 58.45, 400, 'USD', 27);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (17000, 52.78, 350, 'USD', 28);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (16000, 50.12, 340, 'USD', 29);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (14000, 46.34, 310, 'USD', 30);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (18000, 55.67, 380, 'USD', 31);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (15000, 48.23, 330, 'USD', 32);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (12000, 41.00, 270, 'USD', 33);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (21000, 60.45, 440, 'USD', 34);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (18000, 55.12, 390, 'USD', 35);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (17000, 53.78, 360, 'USD', 36);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (22000, 62.45, 460, 'USD', 37);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (20000, 58.89, 420, 'USD', 38);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (15000, 47.45, 320, 'USD', 39);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (19000, 56.78, 380, 'USD', 40);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (21000, 60.00, 430, 'USD', 41);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (16000, 50.78, 340, 'USD', 42);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (14000, 46.34, 300, 'USD', 43);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (22000, 62.89, 460, 'USD', 44);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (17000, 53.12, 350, 'USD', 45);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (18000, 55.45, 370, 'USD', 46);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (20000, 58.78, 400, 'USD', 47);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (16000, 50.12, 340, 'USD', 48);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (15000, 48.23, 330, 'USD', 49);
INSERT INTO revenue_metrics (revenue, avg_revenue_per_user, transactions, currency, data_source)
VALUES (19000, 57.78, 380, 'USD', 50);


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

USE Husky_Hacks;

INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (1, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (2, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (3, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (4, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (5, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (6, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (7, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (8, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (9, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (10, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (11, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (12, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (13, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (14, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (15, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (16, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (17, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (18, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (19, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (20, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (21, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (22, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (23, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (24, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (25, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (26, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (27, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (28, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (29, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (30, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (31, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (32, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (33, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (34, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (35, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (36, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (37, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (38, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (39, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (40, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (41, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (42, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (43, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (44, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (45, 'revenue');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (46, 'user_engagement');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (47, 'retention');
INSERT INTO real_time_dashboard (metric_id, metric_type)
VALUES (48, 'revenue');


USE Husky_Hacks;

-- Corrected INSERT statements for the projects table
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0101, 0001, 'Healthcare Correlation', 'Found the correlation between different healthcare providers and disease rates', 'Healthcare', '2023-01-01 10:58:38', true);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0102, 0001, 'Web Development Basics', 'Coded for basic web development features', 'Web Development', '2023-02-02 15:52:43', false);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0103, 0001, 'Website Visualization', 'Visualized a Website that had to do with Education', 'Website', '2023-03-03 06:17:42', false);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0104, 0001, 'Scatterplots', 'Made multiple scatterplots while practicing various coding techniques', 'Plots', '2023-04-04 14:35:36', true);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0105, 0001, 'COVID correlation', 'Found the correlation between COVID-19 cases and various factors', 'COVID', '2023-05-05 11:57:01', false);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0106, 0001, 'Annual GDP', 'Looked at the annual GDP overtime and what factors caused it to change', 'GDP', '2023-06-06 22:48:59', false);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0107, 0001, 'Income Regression', 'Looked at the income over the last 5 years and how it shifted', 'Income', '2023-07-07 17:52:57', false);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0108, 0001, 'Retail Comparison', 'Compared different retailers over numerous factors', 'Retailer Comparison', '2023-08-18 16:57:50', false);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0201, 0002, 'European Soccer Team', 'Analyzed European Soccer team spending to players` success', 'Euro Soccer', '2020-01-01 21:55:59', true);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0202, 0002, 'Soccer Correlation', 'Found the correlation between Soccer winnings and a multitude of factors', 'Soccer Winnings', '2020-02-02 15:20:54', true);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0203, 0002, 'Soccer Sales', 'Looked and visualized the sales of multiple soccer teams over the last 5 years', 'Soccer Sales', '2020-03-03 04:50:13', false);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0204, 0002, 'Soccer Visualization', 'Visualized using scatterplots the overall retail sales of soccer teams', 'Soccer Retail', '2020-04-04 11:39:34', true);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0205, 0002, 'Average Player Stats', 'Used various statistical techniques to analyze many players on a team', 'Player Stats', '2020-05-05 14:22:43', true);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0206, 0002, 'Total Goals', 'Looked at overall player data to see which player and which team had the most goals over the last 5 years', 'Goals', '2020-06-06 13:27:32', true);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0207, 0002, 'Goals Prediction', 'Used data science techniques to predict which player will score the most goals next season', 'Player Prediction', '2020-07-07 07:45:52', false);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0208, 0002, 'Best Player', 'Analyzed past player stats and championships to find the `best player`', 'Best Player', '2020-08-08 13:57:56', false);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0301, 0003, 'Management Data', 'Analyzed management data for multiple education businesses', 'Management', '2019-01-01 02:55:11', true);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0302, 0003, 'Security Data', 'Analyzed the security performance of his softwares', 'Security', '2019-02-02 06:04:12', false);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0303, 0003, 'Sector Performance', 'Found the sector that performed the best over the last period', 'Sector', '2019-03-03 13:09:43', false);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0304, 0003, 'Sector Prediction', 'Predicted which sector will result in the least maintenance based on past performance', 'Sector Prediction', '2019-04-04 00:18:49', true);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0305, 0003, 'IT management', 'Analyzed IT management data and visualized stability', 'IT Stability', '2019-05-05 13:10:55', true);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0306, 0003, 'User Permissions', 'Analyzed the permissions of different users to solve bugs and issues', 'Permissions', '2019-06-06 13:05:57', true);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0307, 0003, 'Maintenance Data', 'Used maintenance data to find which issue was the most prevalent', 'Maintenance Prevalency', '2019-07-07 17:44:44', false);
INSERT INTO projects (project_id, user_id, title, description, tags, upload_date, is_archived)
VALUES (0308, 0003, 'Maintenance Prediction', 'Used maintenance data to predict which issue will most likely occur', 'Prediction', '2019-08-08 05:29:34', true);


USE Husky_Hacks;

-- Corrected INSERT statements for progress
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (01, 0101, 'Completed correlation analysis', '2023-01-06 19:59:47');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (02, 0102, 'Added two web development features', '2023-02-07 10:57:53');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (03, 0103, 'Made title page', '2023-03-08 07:31:45');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (04, 0104, 'Completed two scatterplots', '2023-04-09 03:22:33');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (05, 0105, 'Cleaned data', '2023-05-10 05:57:55');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (06, 0106, 'Organized data by time', '2023-06-11 02:26:35');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (07, 0107, 'Implemented regression', '2023-07-12 07:08:11');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (08, 0108, 'Cleaned and organized data', '2023-08-13 00:59:20');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (09, 0101, 'Added scatterplots with regression to show correlation', '2023-01-08 11:04:19');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (10, 0102, 'Added all web development features with comments', '2023-02-09 19:07:03');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (11, 0101, 'Cleaned spending columns', '2020-01-08 10:20:09'); -- Replaced invalid project_id
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (12, 0101, 'Made lists based on columns', '2020-02-09 18:03:44'); -- Replaced invalid project_id
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (13, 0203, 'Created plots for overall soccer retail sales', '2020-03-10 16:15:52');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (14, 0204, 'Fixed axis of plots', '2020-04-11 10:36:16');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (15, 0205, 'Imported and used scipy', '2020-05-12 11:15:39');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (16, 0206, 'Cleaned and organized player data for use', '2020-06-13 14:11:33');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (17, 0207, 'Utilized K Means clustering for prediction', '2020-07-14 21:15:44');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (18, 0208, 'Put data into dictionaries', '2020-08-15 04:28:31');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (19, 0201, 'Compared spending data to player stats for each team', '2020-01-10 11:20:21');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (20, 0202, 'Implemented correlation analysis', '2020-02-11 00:48:55');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (21, 0301, 'Cleaned management data', '2019-01-04 00:07:50');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (22, 0302, 'Cleaned security data', '2019-02-05 11:12:55');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (23, 0303, 'Put sector results in different lists for use', '2019-03-06 13:13:02');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (24, 0304, 'Utilized K Means clustering for prediction', '2019-04-07 21:21:12');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (25, 0305, 'Coded for line graphs to visualize stability', '2019-05-08 18:21:26');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (26, 0306, 'Cleaned permissions data', '2019-06-09 22:48:02');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (27, 0307, 'Used stats to find the mode in data', '2019-07-10 04:06:30');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (28, 0308, 'Put maintenance data in lists for prediction', '2019-08-11 01:31:56');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (29, 0301, 'Compared management data across different businesses', '2019-01-06 21:28:04');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (30, 0302, 'Put data into dictionaries for analysis', '2019-02-07 12:18:56');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (31, 0301, 'Cleaned revenue data', '2021-01-05 00:43:15');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (32, 0302, 'Cleaned demographics data', '2021-02-06 02:12:55');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (33, 0303, 'Predicted user engagement using decision trees', '2021-03-07 12:27:50');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (34, 0304, 'Did a Pearson correlation', '2021-04-08 17:59:57');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (35, 0305, 'Predicted average revenue using decision trees', '2021-05-09 06:19:52');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (36, 0306, 'Made a bar plot for visualization', '2021-06-10 05:41:29');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (37, 0307, 'Put marketing data in lists', '2021-07-11 00:46:53');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (38, 0308, 'Made a line graph for visualization', '2021-08-12 06:01:59');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (39, 0301, 'Compared revenue metrics across companies', '2021-01-07 01:47:47');
INSERT INTO progress (progress_id, project_id, progress_description, progress_date)
VALUES (40, 0302, 'Compared retention to demographics using scatterplots', '2021-02-08 02:24:49');

use Husky_Hacks;
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (1, 0001, 'Admin', 0002, '2023-10-01 09:00:00');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (2, 0002, 'Editor', 0003, '2023-10-02 10:15:00');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (3, 0003, 'Viewer', 0001, '2023-10-03 11:30:00');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (4, 0004, 'Contributor', 0003, '2023-10-04 14:45:00');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (5, 0002, 'Moderator', 0002, '2023-10-05 08:00:00');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (6, 0001, 'Admin', 0002, '2023-10-06 18:30:00');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (7, 0001, 'Editor', 0004, '2023-10-07 12:15:00');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (8, 0002, 'Viewer', 0004, '2023-10-08 17:45:00');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (9, 0004, 'Contributor', 0003, '2023-10-09 14:20:00');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (10, 0002, 'Moderator', 0001, '2023-10-10 09:50:00');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (11, 0001, 'Admin', 0002, '2023-10-11 08:30:00');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (12, 0001, 'Edit', 0003, '2023-11-03 07:35:04');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (13, 0002, 'View', 0004, '2023-11-04 10:45:00');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (14, 0003, 'Admin', 0001, '2023-11-05 15:20:30');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (15, 0001, 'Contributor', 0002, '2023-11-06 12:00:00');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (16, 0002, 'Moderator', 0003, '2023-11-07 18:30:45');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (17, 0001, 'Edit', 0003, '2023-11-08 20:15:00');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (18, 0002, 'View', 0004, '2023-11-09 22:45:15');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (19, 0004, 'Admin', 0001, '2023-11-10 09:05:30');
INSERT INTO permissions (permission_id, user_id, access_level, assigned_by, assigned_date)
VALUES (20, 0004, 'Edit', 0001, '2023-11-11 14:50:20');

create table notification (
	notification_id INT,
	metric_id VARCHAR(10),
	timestamp DATE,
	notification_type VARCHAR(10),
	threshold_value INT,
	actual_value INT
);

USE Husky_Hacks;
INSERT INTO notification_type (name) VALUES ('Performance Alert');
INSERT INTO notification_type (name) VALUES ('Threshold Alert');
INSERT INTO notification_type (name) VALUES ('Custom Alert');
INSERT INTO notification_type (name) VALUES ('System Alert');
INSERT INTO notification_type (name) VALUES ('Warning Alert');
INSERT INTO notification_type (name) VALUES ('Critical Alert');
INSERT INTO notification_type (name) VALUES ('Information Alert');
INSERT INTO notification_type (name) VALUES ('Reminder Alert');
INSERT INTO notification_type (name) VALUES ('Error Alert');
INSERT INTO notification_type (name) VALUES ('Database Alert');
INSERT INTO notification_type (name) VALUES ('Security Alert');
INSERT INTO notification_type (name) VALUES ('Login Alert');
INSERT INTO notification_type (name) VALUES ('Data Breach Alert');
INSERT INTO notification_type (name) VALUES ('Access Alert');
INSERT INTO notification_type (name) VALUES ('Network Alert');
INSERT INTO notification_type (name) VALUES ('Update Alert');
INSERT INTO notification_type (name) VALUES ('Resource Alert');
INSERT INTO notification_type (name) VALUES ('Service Alert');
INSERT INTO notification_type (name) VALUES ('Application Alert');
INSERT INTO notification_type (name) VALUES ('Server Alert');
INSERT INTO notification_type (name) VALUES ('High CPU Alert');
INSERT INTO notification_type (name) VALUES ('Disk Space Alert');
INSERT INTO notification_type (name) VALUES ('Memory Usage Alert');
INSERT INTO notification_type (name) VALUES ('Authentication Alert');
INSERT INTO notification_type (name) VALUES ('Backup Alert');
INSERT INTO notification_type (name) VALUES ('Compliance Alert');
INSERT INTO notification_type (name) VALUES ('Email Alert');
INSERT INTO notification_type (name) VALUES ('Timeout Alert');
INSERT INTO notification_type (name) VALUES ('Expired Session Alert');
INSERT INTO notification_type (name) VALUES ('Rate Limit Alert');
INSERT INTO notification_type (name) VALUES ('Configuration Alert');
INSERT INTO notification_type (name) VALUES ('Policy Alert');
INSERT INTO notification_type (name) VALUES ('Threshold Breach Alert');
INSERT INTO notification_type (name) VALUES ('User Action Alert');
INSERT INTO notification_type (name) VALUES ('Audit Alert');
INSERT INTO notification_type (name) VALUES ('Hardware Failure Alert');
INSERT INTO notification_type (name) VALUES ('Software Failure Alert');
INSERT INTO notification_type (name) VALUES ('Connection Alert');
INSERT INTO notification_type (name) VALUES ('Timeout Breach Alert');
INSERT INTO notification_type (name) VALUES ('Disk Failure Alert');
INSERT INTO notification_type (name) VALUES ('Unauthorized Access Alert');
INSERT INTO notification_type (name) VALUES ('File System Alert');
INSERT INTO notification_type (name) VALUES ('Service Down Alert');
INSERT INTO notification_type (name) VALUES ('Queue Overload Alert');
INSERT INTO notification_type (name) VALUES ('Job Failure Alert');
INSERT INTO notification_type (name) VALUES ('Task Timeout Alert');
INSERT INTO notification_type (name) VALUES ('Memory Leak Alert');
INSERT INTO notification_type (name) VALUES ('Deployment Alert');
INSERT INTO notification_type (name) VALUES ('Transaction Failure Alert');

INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (1, 72, 69);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (2, 91, 45);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (3, 21, 70);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (4, 90, 4);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (5, 57, 0);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (6, 10, 38);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (1, 26, 96);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (2, 46, 61);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (3, 1, 29);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (4, 78, 50);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (5, 3, 76);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (6, 44, 54);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (1, 91, 30);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (2, 25, 46);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (3, 16, 47);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (4, 88, 67);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (5, 5, 86);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (6, 48, 11);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (1, 49, 64);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (2, 32, 93);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (3, 93, 48);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (4, 27, 90);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (5, 16, 79);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (6, 49, 60);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (1, 60, 91);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (2, 13, 2);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (3, 48, 27);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (4, 49, 67);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (5, 74, 63);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (6, 28, 84);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (1, 89, 90);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (2, 27, 77);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (3, 93, 84);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (4, 50, 60);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (5, 41, 92);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (6, 5, 42);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (1, 33, 78);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (2, 8, 90);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (3, 90, 48);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (4, 28, 99);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (5, 92, 22);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (6, 30, 34);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (1, 49, 4);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (2, 44, 42);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (3, 8, 58);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (4, 93, 20);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (5, 87, 69);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (6, 87, 29);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (1, 50, 38);
INSERT INTO notifications (notif_type, threshold_value, actual_value)
VALUES (2, 84, 94);

INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Revenue Overview', 1, '2023-09-01 08:15:45', '2023-09-05 14:30:00');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('User Engagement', 2, '2023-10-10 12:45:30', '2023-10-15 16:20:45');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Retention Analysis', 3, '2023-11-01 09:25:15', '2023-11-05 18:10:30');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Sales Metrics', 4, '2023-08-15 11:40:25', '2023-08-20 13:50:00');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Performance Dashboard', 1, '2023-07-20 14:10:30', '2023-07-25 17:15:45');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Weekly Insights', 2, '2023-12-05 10:30:15', '2023-12-10 15:40:25');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Marketing Trends', 3, '2023-06-01 09:50:45', '2023-06-06 14:00:30');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Expense Summary', 4, '2023-05-25 08:20:35', '2023-05-30 12:45:15');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Productivity Tracker', 1, '2023-04-10 10:15:25', '2023-04-15 11:50:35');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Growth Indicators', 2, '2023-03-01 12:30:45', '2023-03-06 16:25:50');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Operational Metrics', 3, '2023-02-15 09:35:10', '2023-02-20 14:30:25');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Profitability Dashboard', 4, '2023-01-05 08:45:35', '2023-01-10 13:20:40');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Financial Health', 1, '2023-11-25 07:15:50', '2023-12-01 11:35:15');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Team Efficiency', 2, '2023-10-30 06:25:35', '2023-11-04 10:20:45');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Engagement Trends', 3, '2023-09-20 05:15:20', '2023-09-25 08:40:30');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Quarterly Goals', 4, '2023-08-05 14:30:50', '2023-08-10 17:25:15');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Customer Insights', 1, '2023-07-01 09:50:35', '2023-07-06 12:15:25');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Revenue Breakdown', 2, '2023-06-15 11:40:15', '2023-06-20 14:30:45');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Operational Summary', 3, '2023-05-10 08:30:25', '2023-05-15 10:40:35');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('User Statistics', 4, '2023-04-25 14:20:50', '2023-04-30 16:50:25');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Weekly Summary', 1, '2023-03-20 09:15:45', '2023-03-25 12:40:15');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Engagement Analysis', 2, '2023-02-05 10:30:25', '2023-02-10 15:20:45');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Retention Tracker', 3, '2023-01-15 08:25:35', '2023-01-20 11:15:55');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Sales Insights', 4, '2023-12-10 12:15:20', '2023-12-15 16:30:40');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Profit Tracker', 1, '2023-11-01 14:10:25', '2023-11-06 17:50:15');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Expense Monitor', 2, '2023-10-05 09:40:35', '2023-10-10 14:20:25');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Operational Efficiency', 3, '2023-09-15 11:30:45', '2023-09-20 16:25:30');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Revenue Metrics', 4, '2023-08-25 07:20:35', '2023-08-30 12:50:15');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Customer Retention', 1, '2023-07-05 08:15:20', '2023-07-10 13:40:45');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Growth Analysis', 2, '2023-06-01 09:50:30', '2023-06-06 14:25:15');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Market Trends', 3, '2023-05-10 12:30:40', '2023-05-15 16:45:30');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('User Engagement Dashboard', 4, '2023-04-20 10:25:50', '2023-04-25 14:50:35');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Performance Metrics', 1, '2023-03-15 08:30:45', '2023-03-20 13:40:25');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Quarterly Analysis', 2, '2023-02-10 07:20:35', '2023-02-15 11:50:15');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Business Overview', 3, '2023-01-05 09:15:25', '2023-01-10 12:40:35');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Engagement Summary', 4, '2022-12-15 14:30:50', '2022-12-20 17:45:30');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Retention Monitor', 1, '2022-11-10 11:40:25', '2022-11-15 15:50:15');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Expense Tracker', 2, '2022-10-05 08:50:30', '2022-10-10 13:20:45');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Profit Analysis', 3, '2022-09-15 10:30:35', '2022-09-20 14:40:25');
INSERT INTO kpi_views (view_name, created_by, created_date, last_updated)
VALUES ('Revenue Analysis', 4, '2022-08-01 07:25:20', '2022-08-06 12:15:50');

INSERT INTO feedback_requests (project_id, requester_id, feedback_area) VALUES
(101, 1, 'UI/UX design improvements'),
(102, 2, 'Code readability and structure'),
(103, 3, 'Feature completeness'),
(104, 1, 'Performance optimization'),
(105, 2, 'Database schema feedback'),
(106, 3, 'Overall design critique'),
(107, 1, 'Error handling and edge cases'),
(108, 2, 'Mobile responsiveness'),
(201, 3, 'API documentation review'),
(202, 1, 'Accessibility compliance'),
(203, 2, 'Testing strategy review'),
(204, 3, 'Workflow efficiency'),
(205, 1, 'UI aesthetics'),
(206, 2, 'Backend logic validation'),
(207, 3, 'Scalability concerns'),
(208, 1, 'Data validation techniques'),
(301, 2, 'Deployment setup'),
(302, 3, 'Security vulnerabilities'),
(303, 1, 'Error logging methods'),
(304, 2, 'Third-party integrations'),
(305, 3, 'Code modularity'),
(306, 1, 'Database query optimization'),
(307, 2, 'Unit testing coverage'),
(308, 3, 'Project organization'),
(101, 1, 'Custom error messages'),
(102, 2, 'Build automation'),
(103, 3, 'Code comment clarity'),
(104, 1, 'Version control practices'),
(105, 2, 'UI animation smoothness'),
(106, 3, 'Form validation'),
(107, 1, 'Code reuse opportunities'),
(108, 2, 'Security in authentication'),
(201, 3, 'API response times'),
(202, 1, 'Load balancing strategies'),
(203, 2, 'Function naming conventions'),
(204, 3, 'Styling consistency'),
(205, 1, 'Integration testing'),
(206, 2, 'Data export/import options'),
(207, 3, 'Error recovery strategies'),
(208, 1, 'Responsive grid layout');



INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (1, 0101, 0001, 'Correlation analysis is well-structured', 8, '2023-01-06 12:15:45');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (2, 0102, 0002, 'Web development features are well-implemented', 9, '2023-02-07 14:20:30');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (3, 0103, 0003, 'Website visualization is clear and engaging', 10, '2023-03-08 16:35:50');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (4, 0104, 0004, 'Scatterplots demonstrate effective techniques', 8, '2023-04-09 18:15:35');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (5, 0105, 0001, 'COVID correlation analysis is insightful', 9, '2023-05-10 10:45:25');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (6, 0106, 0002, 'GDP analysis includes meaningful insights', 8, '2023-06-11 12:50:15');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (7, 0107, 0003, 'Income regression model is effective', 9, '2023-07-12 14:20:45');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (8, 0108, 0004, 'Retail comparison data is well-organized', 10, '2023-08-13 16:35:30');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (9, 0201, 0001, 'Soccer team spending analysis is thorough', 9, '2020-01-08 08:15:45');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (10, 0202, 0002, 'Correlation between soccer winnings is meaningful', 8, '2020-02-09 10:20:30');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (11, 0203, 0003, 'Sales data visualizations are clear', 9, '2020-03-10 12:30:45');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (12, 0204, 0004, 'Scatterplots of retail sales are informative', 8, '2020-04-11 14:25:20');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (13, 0205, 0001, 'Player statistics are analyzed effectively', 9, '2020-05-12 16:30:15');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (14, 0206, 0002, 'Goal data organization is comprehensive', 10, '2020-06-13 08:45:25');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (15, 0207, 0003, 'Prediction models are accurate', 9, '2020-07-14 10:55:40');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (16, 0208, 0004, 'Best player analysis is well-supported', 8, '2020-08-15 12:15:50');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (17, 0301, 0001, 'Management data analysis is effective', 9, '2019-01-04 14:30:25');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (18, 0302, 0002, 'Security data is well-presented', 8, '2019-02-05 16:50:15');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (19, 0303, 0003, 'Sector performance is accurately documented', 10, '2019-03-06 08:15:30');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (20, 0304, 0004, 'Predictions are consistent and logical', 9, '2019-04-07 10:35:45');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (21, 0305, 0001, 'IT stability is demonstrated effectively', 8, '2019-05-08 12:45:20');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (22, 0306, 0002, 'Permissions analysis is comprehensive', 9, '2019-06-09 14:55:10');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (23, 0307, 0003, 'Maintenance issues are categorized well', 8, '2019-07-10 16:20:50');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (24, 0308, 0004, 'Prediction analysis is insightful', 9, '2019-08-11 08:30:25');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (25, 0301, 0001, 'Revenue insights are accurate', 10, '2021-01-05 10:45:15');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (26, 0302, 0002, 'Retention analysis is clear', 9, '2021-02-06 12:50:40');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (27, 0303, 0003, 'Engagement predictions are consistent', 8, '2021-03-07 14:15:35');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (28, 0304, 0004, 'Correlation data is well-structured', 9, '2021-04-08 16:25:50');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (29, 0305, 0001, 'Revenue predictions are accurate', 10, '2021-05-09 08:35:25');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (30, 0306, 0002, 'Visualization techniques are exceptional', 9, '2021-06-10 10:20:45');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (31, 0307, 0003, 'Marketing breakdowns are well-documented', 8, '2021-07-11 12:50:30');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (32, 0308, 0004, 'Product insights are valuable', 9, '2021-08-12 14:30:15');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (33, 0201, 0001, 'Revenue comparisons are insightful', 8, '2021-01-07 16:40:25');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (34, 0202, 0002, 'Demographics data cleaning was improved', 9, '2021-02-08 08:45:15');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (35, 0103, 0003, 'Engagement predictions were well-done', 9, '2021-03-09 10:15:30');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (36, 0204, 0004, 'Correlation techniques are effective', 10, '2021-04-10 12:50:20');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (37, 0205, 0001, 'Revenue forecasts are consistent', 8, '2021-05-11 14:30:40');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (38, 0306, 0002, 'Visualization is clear and engaging', 9, '2021-06-12 16:20:15');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (39, 0207, 0003, 'Marketing strategies are insightful', 10, '2021-07-13 08:15:25');
INSERT INTO feedback (feedback_id, project_id, reviewer_id, feedback_text, rating, feedback_date)
VALUES (40, 0308, 0004, 'Product engagement analysis is exceptional', 9, '2021-08-14 10:35:50');


INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (1, '2023-09-01 08:15:45', 150, 'Completed', 1);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (2, '2023-09-10 10:20:30', 200, 'Failed', 2);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (3, '2023-09-15 12:30:45', 175, 'In Progress', 3);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (4, '2023-09-20 14:25:20', 225, 'Completed', 4);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (5, '2023-09-25 16:30:15', 180, 'Failed', 5);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (6, '2023-10-01 08:45:25', 190, 'Completed', 6);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (7, '2023-10-10 10:55:40', 210, 'In Progress', 7);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (8, '2023-10-15 12:15:50', 220, 'Completed', 8);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (9, '2023-10-20 14:30:25', 230, 'Failed', 9);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (10, '2023-10-25 16:50:15', 240, 'Completed', 10);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (11, '2023-11-01 08:15:30', 250, 'In Progress', 11);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (12, '2023-11-05 10:35:45', 260, 'Failed', 12);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (13, '2023-11-10 12:45:20', 270, 'Completed', 13);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (14, '2023-11-15 14:55:10', 280, 'Failed', 14);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (15, '2023-11-20 16:20:50', 290, 'Completed', 15);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (16, '2023-11-25 08:30:25', 300, 'In Progress', 16);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (17, '2023-12-01 10:45:15', 310, 'Completed', 17);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (18, '2023-12-05 12:50:40', 320, 'Failed', 18);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (19, '2023-12-10 14:15:35', 330, 'Completed', 19);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (20, '2023-12-15 16:25:50', 340, 'In Progress', 20);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (21, '2023-12-20 08:15:20', 350, 'Failed', 21);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (22, '2023-12-25 10:20:45', 360, 'Completed', 22);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (23, '2023-12-30 12:30:15', 370, 'Completed', 23);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (24, '2024-01-05 14:35:50', 380, 'Failed', 24);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (25, '2024-01-10 16:40:25', 390, 'Completed', 25);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (26, '2024-01-15 08:45:15', 400, 'In Progress', 26);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (27, '2024-01-20 10:50:40', 410, 'Completed', 27);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (28, '2024-01-25 12:55:20', 420, 'Failed', 28);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (29, '2024-01-30 14:10:35', 430, 'Completed', 29);
INSERT INTO backups (backup_id, backup_date, backup_size, status, error_log_id)
VALUES (30, '2024-02-05 16:15:50', 440, 'Failed', 30);
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (1, 0001, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (2, 0002, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (3, 0003, 'Revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (4, 0004, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (5, 0001, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (6, 0002, 'Revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (7, 0003, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (8, 0004, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (9, 0001, 'Revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (10, 0002, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (11, 0003, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (12, 0004, 'Revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (13, 0001, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (14, 0002, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (15, 0003, 'Revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (16, 0004, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (17, 0001, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (18, 0002, 'Revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (19, 0003, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (20, 0004, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (21, 0001, 'Revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (22, 0002, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (23, 0003, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (24, 0004, 'Revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (25, 0001, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (26, 0002, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (27, 0003, 'Revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (28, 0004, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (29, 0001, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (30, 0002, 'Revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (31, 0003, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (32, 0004, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (33, 0001, 'Revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (34, 0002, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (35, 0003, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (36, 0004, 'Revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (37, 0001, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (38, 0002, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (39, 0003, 'Revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (40, 0004, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (41, 0001, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (42, 0002, 'Revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (43, 0003, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (44, 0004, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (45, 0001, 'Revenue');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (46, 0002, 'Retention');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (47, 0003, 'Engagement');
INSERT INTO archived_data (metric_id, archived_by, metric_type) VALUES (48, 0004, 'Revenue');

