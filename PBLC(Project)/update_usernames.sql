-- Update existing user usernames from email to simple username
-- Run this script in phpMyAdmin or MySQL command line

USE pblc_db;

-- Update admin user
UPDATE AspNetUsers 
SET UserName = 'admin', NormalizedUserName = 'ADMIN'
WHERE Email = 'admin@pstu.ac.bd';

-- Update teacher users
UPDATE AspNetUsers 
SET UserName = 'teacher', NormalizedUserName = 'TEACHER'
WHERE Email = 'teacher@pstu.ac.bd';

UPDATE AspNetUsers 
SET UserName = 'karim', NormalizedUserName = 'KARIM'
WHERE Email = 'karim@pstu.ac.bd';

-- Update student users
UPDATE AspNetUsers 
SET UserName = 'student', NormalizedUserName = 'STUDENT'
WHERE Email = 'student@pstu.ac.bd';

UPDATE AspNetUsers 
SET UserName = 'fatima', NormalizedUserName = 'FATIMA'
WHERE Email = 'fatima@pstu.ac.bd';

UPDATE AspNetUsers 
SET UserName = 'sabbir', NormalizedUserName = 'SABBIR'
WHERE Email = 'sabbir@pstu.ac.bd';

-- Verify the changes
SELECT UserName, Email, Role FROM AspNetUsers;
