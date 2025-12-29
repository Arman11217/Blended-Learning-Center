-- Clean database but keep admin, teacher, and student accounts
-- Use this script to remove all data except the main 3 users

USE pblc_db;

-- Step 1: Delete all assignment submissions
DELETE FROM assignmentsubmissions;

-- Step 2: Delete all assignments
DELETE FROM assignments;

-- Step 3: Delete all answers
DELETE FROM answers;

-- Step 4: Delete all questions
DELETE FROM questions;

-- Step 5: Delete all lectures
DELETE FROM lectures;

-- Step 6: Delete all courses
DELETE FROM courses;

-- Step 7: Delete all departments
DELETE FROM departments;

-- Step 8: Delete all users EXCEPT admin, teacher, and student (before deleting faculties)
DELETE FROM aspnetusers 
WHERE UserName NOT IN ('admin', 'teacher', 'student');

-- Step 9: Set FacultyId to NULL for remaining users
UPDATE aspnetusers 
SET FacultyId = NULL 
WHERE UserName IN ('admin', 'teacher', 'student');

-- Step 10: Now delete all faculties
DELETE FROM faculties;

-- Reset auto-increment IDs
ALTER TABLE assignmentsubmissions AUTO_INCREMENT = 1;
ALTER TABLE assignments AUTO_INCREMENT = 1;
ALTER TABLE answers AUTO_INCREMENT = 1;
ALTER TABLE questions AUTO_INCREMENT = 1;
ALTER TABLE lectures AUTO_INCREMENT = 1;
ALTER TABLE courses AUTO_INCREMENT = 1;
ALTER TABLE departments AUTO_INCREMENT = 1;
ALTER TABLE faculties AUTO_INCREMENT = 1;

-- Show remaining users
SELECT Id, UserName, Email, FullName, Role FROM aspnetusers ORDER BY Role;
