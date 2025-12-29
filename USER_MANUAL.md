# PSTU Blended Learning Center (PBLC) - User Manual

## Table of Contents
1. [System Overview](#system-overview)
2. [Getting Started](#getting-started)
3. [User Roles and Permissions](#user-roles-and-permissions)
4. [Admin Functions](#admin-functions)
5. [Teacher Functions](#teacher-functions)
6. [Student Functions](#student-functions)
7. [Complete Workflow](#complete-workflow)
8. [Troubleshooting](#troubleshooting)

---

## System Overview

### What is PBLC?
PSTU Blended Learning Center is a comprehensive learning management system designed for Patuakhali Science and Technology University. It enables online course management, assignment distribution, Q&A forums, and student-teacher interaction.

### Key Features
- **Multi-role System**: Admin, Teacher, and Student roles with specific permissions
- **Course Management**: Create and manage courses, departments, and faculties
- **Assignment System**: Teachers can create assignments, students can submit work
- **Q&A Forum**: Students can ask questions, teachers can provide answers
- **Lecture Materials**: Upload and share lecture notes and materials
- **User Management**: Comprehensive user and access control

### Technology Stack
- **Framework**: ASP.NET Core 9.0 MVC
- **Database**: MySQL 8.0
- **Authentication**: ASP.NET Core Identity
- **UI**: Bootstrap 5 with custom styling

---

## Getting Started

### System Requirements
- Windows 10/11
- XAMPP (MySQL 8.0+)
- .NET 9.0 SDK
- Modern web browser (Chrome, Firefox, Edge)

### Initial Setup

1. **Start XAMPP**
   - Open XAMPP Control Panel
   - Start Apache and MySQL services

2. **Run the Application**
   ```powershell
   cd E:\PBLC(Project)\src\PBLC.Web
   dotnet run
   ```

3. **Access the System**
   - Open browser and navigate to: `http://localhost:5197`

### Default Login Credentials

| Role | Username | Password | Email |
|------|----------|----------|-------|
| Admin | admin | Admin@123 | admin@pstu.ac.bd |
| Teacher | teacher | Teacher@123 | teacher@pstu.ac.bd |
| Student | student | Student@123 | student@pstu.ac.bd |

---

## User Roles and Permissions

### 1. Admin Role
**Permissions:**
- ✅ Manage all users (create, edit, delete, activate/deactivate)
- ✅ Manage faculties (create, edit, delete)
- ✅ Manage departments (create, edit, delete)
- ✅ Change user roles
- ✅ View all system data
- ❌ Cannot create courses or assignments

### 2. Teacher Role
**Permissions:**
- ✅ Create and manage courses
- ✅ Create and manage assignments
- ✅ Upload lecture materials
- ✅ Grade student submissions
- ✅ Answer student questions
- ✅ View enrolled students
- ❌ Cannot manage users or departments

### 3. Student Role
**Permissions:**
- ✅ Enroll in courses
- ✅ View course materials and lectures
- ✅ Submit assignments
- ✅ Ask questions in Q&A forum
- ✅ View grades and feedback
- ❌ Cannot create courses or grade assignments

---

## Admin Functions

### Dashboard Overview
After logging in as Admin, you'll see:
- Total Users count
- Total Courses count
- Active Students count
- Active Teachers count

### 1. Manage Faculties

**Step-by-Step Process:**

1. **Create Faculty**
   - Click **"Dashboard"** → **"Manage Faculties"**
   - Click **"Create New Faculty"** button
   - Fill in the form:
     - **Name**: e.g., "Faculty of Engineering"
     - **Description**: Brief description of the faculty
   - Click **"Create"**

2. **Edit Faculty**
   - In the Faculties list, click **Edit** icon (✏️)
   - Modify the information
   - Click **"Save Changes"**

3. **Delete Faculty**
   - Click **Delete** icon (🗑️)
   - Confirm deletion
   - **Note**: Cannot delete faculty with existing departments

### 2. Manage Departments

**Step-by-Step Process:**

1. **Create Department**
   - Click **"Dashboard"** → **"Manage Departments"**
   - Click **"Create New Department"** button
   - Fill in the form:
     - **Name**: e.g., "Computer Science & Engineering"
     - **Description**: Brief description
     - **Faculty**: Select from dropdown
   - Click **"Create"**

2. **Edit Department**
   - Click **Edit** icon (✏️)
   - Modify information
   - Click **"Save Changes"**

3. **Delete Department**
   - Click **Delete** icon (🗑️)
   - Confirm deletion
   - **Note**: Cannot delete department with existing courses

### 3. Manage Users

**Step-by-Step Process:**

1. **View All Users**
   - Click **"Dashboard"** → **"Manage Users"**
   - See list with: Name, Username, Email, Role, Faculty, Join Date

2. **Delete User**
   - Click **Delete** icon (🗑️)
   - System checks for dependencies:
     - **Teacher**: Must delete all assignments first
     - **Student**: Must delete all submissions first
   - Confirm deletion

3. **Toggle User Status**
   - Click **Toggle Status** icon
   - Activate or Deactivate user account

4. **Change User Role**
   - Click **Change Role** icon (👤)
   - Select new role from dropdown
   - Confirm change

---

## Teacher Functions

### Dashboard Overview
After logging in as Teacher, you'll see:
- My Courses count
- Total Assignments created
- Pending Submissions count
- Total Students enrolled

### 1. Manage Courses

**Creating a Course:**

1. Click **"Dashboard"** → **"My Courses"**
2. Click **"Create New Course"** button
3. Fill in the course form:
   - **Course Code**: e.g., "CSE401"
   - **Course Name**: e.g., "Web Programming"
   - **Department**: Select from dropdown
   - **Description**: Detailed course description
4. Click **"Create Course"**

**Managing Existing Courses:**

1. **View Course Details**
   - Click **"Details"** button on any course
   - See: Enrolled students, lectures, assignments

2. **Edit Course**
   - Click **"Edit"** button
   - Modify course information
   - Click **"Save Changes"**

3. **Delete Course**
   - Click **"Delete"** button
   - Confirm deletion

### 2. Manage Lectures

**Creating Lecture Materials:**

1. Go to **"My Courses"** → Click course → **"Lectures"** tab
2. Click **"Add New Lecture"** button
3. Fill in the form:
   - **Lecture Title**: e.g., "Introduction to HTML"
   - **Description**: Lecture content description
   - **Attachment**: Upload PDF, PPT, or other files
4. Click **"Create Lecture"**

**Managing Lectures:**
- **Edit**: Modify lecture details or upload new files
- **Delete**: Remove lecture materials

### 3. Manage Assignments

**Creating an Assignment:**

1. Go to **"Dashboard"** → **"My Assignments"**
2. Click **"Create New Assignment"** button
3. Fill in the form:
   - **Assignment Title**: e.g., "HTML Form Assignment"
   - **Course**: Select from your courses
   - **Description**: Assignment instructions
   - **Due Date**: Set deadline
   - **Max Marks**: e.g., 100
   - **Attachment** (optional): Upload reference files
4. Click **"Create Assignment"**

**Grading Submissions:**

1. Go to **"My Assignments"** → Click assignment → **"Submissions"**
2. Click **"Grade"** button for a submission
3. Enter:
   - **Marks Obtained**: Score (0 to Max Marks)
   - **Feedback**: Comments for the student
4. Click **"Submit Grade"**

### 4. Q&A Management

**Answering Student Questions:**

1. Go to **"Dashboard"** → **"Q&A"**
2. View questions from students
3. Click **"Answer"** button
4. Write your answer
5. Click **"Submit Answer"**

---

## Student Functions

### Dashboard Overview
After logging in as Student, you'll see:
- Enrolled Courses count
- Pending Assignments count
- Completed Assignments count
- My Questions count

### 1. Enroll in Courses

**Step-by-Step:**

1. Click **"Dashboard"** → **"Browse Courses"**
2. View available courses with:
   - Course name and code
   - Department
   - Teacher name
   - Description
3. Click **"Enroll"** button for desired course
4. Confirmation message appears
5. Course now appears in **"My Courses"**

### 2. View Course Materials

**Accessing Lectures:**

1. Go to **"My Courses"** → Click course card
2. Click **"Lectures"** tab
3. View/Download lecture materials
4. Download attachments (PDF, PPT, etc.)

### 3. Submit Assignments

**Submission Process:**

1. Go to **"My Courses"** → Click course → **"Assignments"** tab
2. OR Go to **"Dashboard"** → **"My Assignments"**
3. View assignment details:
   - Title and description
   - Due date
   - Max marks
   - Attachment (if any)
4. Click **"Submit"** button
5. Fill in the form:
   - **Submission Text**: Your answer or description
   - **Attachment**: Upload your work (PDF, DOC, ZIP, etc.)
6. Click **"Submit Assignment"**

**Checking Grades:**

1. Go to **"My Assignments"**
2. View submission status:
   - **Pending**: Not graded yet
   - **Graded**: Marks and feedback visible
3. Click **"View Feedback"** to see teacher's comments

### 4. Ask Questions (Q&A)

**Asking a Question:**

1. Go to **"Dashboard"** → **"Q&A"**
2. Click **"Ask Question"** button
3. Fill in the form:
   - **Question Title**: Brief summary
   - **Question Details**: Full question description
   - **Course**: Select related course (optional)
4. Click **"Submit Question"**

**Viewing Answers:**

1. Go to **"My Questions"**
2. Click on your question to view
3. See teacher's answer when available

---

## Complete Workflow

### Scenario 1: Complete Course Lifecycle

**Step 1: Admin Setup (One-time)**
1. Admin logs in → Creates Faculties
2. Admin creates Departments under Faculties
3. Admin creates Teacher accounts
4. Admin creates Student accounts

**Step 2: Teacher Creates Course**
1. Teacher logs in
2. Creates a new Course
3. Uploads Lecture materials
4. Creates Assignments with deadlines

**Step 3: Student Enrollment and Learning**
1. Student logs in
2. Browses and enrolls in course
3. Views lecture materials
4. Submits assignments before deadline

**Step 4: Teacher Grading**
1. Teacher reviews submissions
2. Provides marks and feedback
3. Student views grades

### Scenario 2: Q&A Interaction

**Student Side:**
1. Student encounters doubt while studying
2. Goes to Q&A section
3. Posts question with course context
4. Receives notification when answered

**Teacher Side:**
1. Teacher checks Q&A dashboard
2. Views pending questions
3. Provides detailed answer
4. Student gets notified

---

## Troubleshooting

### Common Issues and Solutions

**1. Cannot Login**
- **Problem**: "Invalid username or password"
- **Solution**: 
  - Check username spelling (case-sensitive)
  - Verify password (case-sensitive)
  - Contact admin to reset password

**2. Role Assignment Error**
- **Problem**: Student registered as Teacher role
- **Solution**: 
  - Admin must change role from Manage Users
  - Delete incorrect account and re-register

**3. Cannot Delete User**
- **Problem**: "Cannot delete teacher with existing assignments"
- **Solution**:
  - Delete all assignments created by teacher first
  - Then delete the user account

**4. Cannot Delete Department**
- **Problem**: "Cannot delete department with existing courses"
- **Solution**:
  - Delete all courses in department first
  - Then delete the department

**5. File Upload Issues**
- **Problem**: File not uploading
- **Solution**:
  - Check file size (max 10MB recommended)
  - Use supported formats: PDF, DOC, DOCX, PPT, PPTX, ZIP
  - Check internet connection

**6. Assignment Past Due**
- **Problem**: Cannot submit after deadline
- **Solution**:
  - Contact teacher for deadline extension
  - Teacher can edit assignment and extend due date

**7. Application Not Starting**
- **Problem**: "Port already in use" error
- **Solution**:
  ```powershell
  Get-Process -Name "PBLC.Web" | Stop-Process -Force
  dotnet run
  ```

**8. Database Connection Error**
- **Problem**: "Cannot connect to MySQL"
- **Solution**:
  - Ensure XAMPP MySQL is running
  - Check connection string in `appsettings.json`
  - Verify database name is `pblc_db`

---

## Best Practices

### For Admins:
1. ✅ Create Faculties before Departments
2. ✅ Create Departments before allowing course creation
3. ✅ Regularly review user accounts for inactive users
4. ✅ Backup database regularly
5. ✅ Monitor system for unusual activity

### For Teachers:
1. ✅ Create course structure before students enroll
2. ✅ Upload lectures in advance
3. ✅ Set realistic assignment deadlines
4. ✅ Grade submissions within 1 week
5. ✅ Respond to Q&A questions promptly
6. ✅ Provide constructive feedback on assignments

### For Students:
1. ✅ Enroll in courses at semester start
2. ✅ Check for new lectures and assignments regularly
3. ✅ Submit assignments before deadlines
4. ✅ Ask questions when in doubt
5. ✅ Keep track of grades and feedback
6. ✅ Maintain academic integrity (no plagiarism)

---

## System Workflow Diagram

```
┌─────────────────────────────────────────────────────────────┐
│                     ADMIN WORKFLOWS                          │
├─────────────────────────────────────────────────────────────┤
│ 1. Create Faculty                                           │
│    ↓                                                         │
│ 2. Create Department (under Faculty)                        │
│    ↓                                                         │
│ 3. Create/Manage Users (Teachers & Students)                │
│    ↓                                                         │
│ 4. Monitor System Activity                                  │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│                   TEACHER WORKFLOWS                          │
├─────────────────────────────────────────────────────────────┤
│ 1. Create Course (select Department)                        │
│    ↓                                                         │
│ 2. Upload Lecture Materials                                 │
│    ↓                                                         │
│ 3. Create Assignments (with deadlines)                      │
│    ↓                                                         │
│ 4. Students Enroll & Submit Work                            │
│    ↓                                                         │
│ 5. Grade Submissions & Provide Feedback                     │
│    ↓                                                         │
│ 6. Answer Student Questions                                 │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│                   STUDENT WORKFLOWS                          │
├─────────────────────────────────────────────────────────────┤
│ 1. Browse & Enroll in Courses                               │
│    ↓                                                         │
│ 2. View Lecture Materials                                   │
│    ↓                                                         │
│ 3. Check Assignments & Deadlines                            │
│    ↓                                                         │
│ 4. Submit Assignment Work                                   │
│    ↓                                                         │
│ 5. Ask Questions in Q&A                                     │
│    ↓                                                         │
│ 6. View Grades & Feedback                                   │
└─────────────────────────────────────────────────────────────┘
```

---

## Data Flow Architecture

```
┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│   Frontend   │────▶│  Controller  │────▶│   Database   │
│  (Views)     │     │   (Logic)    │     │   (MySQL)    │
└──────────────┘     └──────────────┘     └──────────────┘
      ▲                     │                     │
      │                     ▼                     │
      │              ┌──────────────┐            │
      └──────────────│   Service    │◀───────────┘
                     │   Layer      │
                     └──────────────┘
```

---

## Database Structure Overview

```
Faculties
    ├── Departments
    │       ├── Courses (with TeacherId)
    │       │       ├── Lectures
    │       │       └── Assignments
    │       │               └── AssignmentSubmissions
    │       └── (many Departments per Faculty)
    └── Users (ApplicationUser)
            ├── Students
            ├── Teachers
            └── Admins

Q&A Forum
    ├── Questions (by Students)
    └── Answers (by Teachers)
```

---

## Security Guidelines

### Password Requirements:
- Minimum 6 characters
- At least 1 uppercase letter
- At least 1 lowercase letter  
- At least 1 digit
- No special characters required

### Email Validation:
- Must end with `@pstu.ac.bd` or `@[subdomain].pstu.ac.bd`
- Examples:
  - ✅ `john@pstu.ac.bd`
  - ✅ `jane@cse.pstu.ac.bd`
  - ❌ `user@gmail.com`

### Session Management:
- Sessions expire after 7 days of inactivity
- Logout completely when done
- Don't share login credentials

---

## Support and Maintenance

### For Technical Support:
- Contact System Administrator
- Email: admin@pstu.ac.bd
- Check error logs in console for details

### Database Backup:
```powershell
# Backup database
C:\xampp\mysql\bin\mysqldump -u root pblc_db > backup.sql

# Restore database
C:\xampp\mysql\bin\mysql -u root pblc_db < backup.sql
```

### Clean Database (Keep Admin Accounts):
```sql
-- Run the clean_database_keep_admins.sql script
-- This keeps admin, teacher, student accounts
-- Removes all other data for fresh start
```

---

## Version Information

- **Application Version**: 1.0.0
- **Framework**: ASP.NET Core 9.0
- **Database**: MySQL 8.0
- **Last Updated**: December 2025

---

## Quick Reference Commands

### Start Application:
```powershell
cd E:\PBLC(Project)\src\PBLC.Web
dotnet run
```

### Stop Application:
```powershell
Get-Process -Name "PBLC.Web" | Stop-Process -Force
```

### Access URLs:
- **Home**: http://localhost:5197
- **Login**: http://localhost:5197/Account/Login
- **Register**: http://localhost:5197/Account/Register

---

**End of User Manual**

For updates and additional information, please contact the system administrator.
