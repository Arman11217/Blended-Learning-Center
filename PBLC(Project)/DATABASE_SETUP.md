# 🗄️ Database Setup Guide

This guide will help you set up the PBLC database in XAMPP MySQL.

## 📋 Prerequisites

- ✅ XAMPP installed (with MySQL)
- ✅ XAMPP MySQL service running

---

## 🚀 Quick Setup (Recommended)

### Method 1: Using phpMyAdmin (Easiest)

1. **Start XAMPP**
   - Open XAMPP Control Panel
   - Start **MySQL** service

2. **Open phpMyAdmin**
   - Click **Admin** button next to MySQL in XAMPP
   - Or visit: http://localhost/phpmyadmin

3. **Import Database**
   - Click on **"New"** in left sidebar (or select existing `pblc_db` to overwrite)
   - Enter database name: `pblc_db`
   - Click **"Create"**
   - Click on **"Import"** tab at the top
   - Click **"Choose File"** button
   - Select: `pblc_database.sql` from project folder
   - Scroll down and click **"Import"** button
   - ✅ Wait for success message!

4. **Verify**
   - Click on `pblc_db` in left sidebar
   - You should see 13 tables:
     - ✅ AspNetUsers
     - ✅ AspNetRoles
     - ✅ AspNetUserRoles
     - ✅ AspNetUserClaims
     - ✅ Faculties
     - ✅ Departments
     - ✅ Courses
     - ✅ Lectures
     - ✅ Assignments
     - ✅ AssignmentSubmissions
     - ✅ Questions
     - ✅ Answers
     - ✅ CourseEnrollments

---

### Method 2: Using MySQL Command Line

1. **Open PowerShell/Command Prompt**

2. **Navigate to XAMPP MySQL bin folder**
   ```bash
   cd C:\xampp\mysql\bin
   ```

3. **Import Database**
   ```bash
   .\mysql.exe -u root -e "CREATE DATABASE IF NOT EXISTS pblc_db;"
   .\mysql.exe -u root pblc_db < "E:\4th Semester\CIT 221-222\PBLC(Project)\pblc_database.sql"
   ```

4. **Verify**
   ```bash
   .\mysql.exe -u root -e "USE pblc_db; SHOW TABLES;"
   ```

---

### Method 3: Using EF Core Migrations (Development)

If you prefer to use Entity Framework Core migrations:

1. **Delete existing database** (if exists)
   ```bash
   cd C:\xampp\mysql\bin
   .\mysql.exe -u root -e "DROP DATABASE IF EXISTS pblc_db;"
   ```

2. **Run migrations**
   ```bash
   cd "E:\4th Semester\CIT 221-222\PBLC(Project)\src\PBLC.Web"
   dotnet ef database update
   ```

3. **Seed data will be automatically inserted** on first run.

---

## 📊 Database Contents

After import, you will have:

### 🏛️ Faculties (3)
- Faculty of Engineering
- Faculty of Science
- Faculty of Business Studies

### 🏢 Departments (3)
- Computer Science & Engineering (CSE)
- Electrical & Electronic Engineering (EEE)
- Civil Engineering (CE)

### 👥 Users (6)

| Username | Password | Role | Email |
|----------|----------|------|-------|
| `admin` | `Admin@123` | Admin | admin@pstu.ac.bd |
| `teacher` | `Teacher@123` | Teacher | teacher@pstu.ac.bd |
| `karim` | `Teacher@123` | Teacher | karim@pstu.ac.bd |
| `student` | `Student@123` | Student | student@pstu.ac.bd |
| `fatima` | `Student@123` | Student | fatima@pstu.ac.bd |
| `sabbir` | `Student@123` | Student | sabbir@pstu.ac.bd |

### 📚 Courses (3)
- CSE-201: Data Structures
- CSE-301: Database Management Systems
- CIT-221: Web Programming

### 📖 Lectures (Multiple)
- Sample lecture materials for each course

### 📝 Assignments (Multiple)
- Sample assignments with deadlines

### 💬 Q&A Forum (2 Questions + 2 Answers)
- Sample questions and answers

### 📤 Enrollments
- Students enrolled in various courses

---

## ⚙️ Configuration

Make sure your `appsettings.json` has correct connection string:

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=localhost;Database=pblc_db;User=root;Password=;"
  }
}
```

**Note:** If you have set a MySQL root password, update `Password=` accordingly.

---

## 🔧 Troubleshooting

### Problem: Import takes too long
**Solution:** The database is large. Wait patiently or use command line method.

### Problem: "Access Denied" error
**Solution:** 
- Make sure MySQL service is running in XAMPP
- Check if you have set a root password (update command with `-p`)

### Problem: Tables not showing
**Solution:**
- Refresh phpMyAdmin page
- Click on database name in left sidebar
- Check if database name is exactly `pblc_db` (case-sensitive on Linux)

### Problem: Connection error in application
**Solution:**
- Verify connection string in `appsettings.json`
- Make sure database name is `pblc_db`
- Restart application after database import

---

## 🔄 Reset Database

If you want to reset database to original state:

### Using phpMyAdmin:
1. Select `pblc_db` database
2. Click **"Operations"** tab
3. Scroll to **"Remove database"** section
4. Click **"Drop the database (DROP)"**
5. Confirm deletion
6. Follow **Quick Setup** steps again to import fresh database

### Using Command Line:
```bash
cd C:\xampp\mysql\bin
.\mysql.exe -u root -e "DROP DATABASE IF EXISTS pblc_db;"
.\mysql.exe -u root -e "CREATE DATABASE pblc_db;"
.\mysql.exe -u root pblc_db < "E:\4th Semester\CIT 221-222\PBLC(Project)\pblc_database.sql"
```

---

## 📁 Database File Location

The database backup file is located at:
```
E:\4th Semester\CIT 221-222\PBLC(Project)\pblc_database.sql
```

**File Size:** ~50-100 KB (contains all tables, data, and relationships)

---

## 🎯 After Import

1. **Start Application**
   ```bash
   cd "E:\4th Semester\CIT 221-222\PBLC(Project)\src\PBLC.Web"
   dotnet run
   ```

2. **Access Application**
   - Open browser: http://localhost:5197

3. **Login with Test Account**
   - Username: `admin`
   - Password: `Admin@123`

4. **Explore Features**
   - ✅ Admin Dashboard
   - ✅ Course Management
   - ✅ Q&A Forum
   - ✅ Profile Management

---

## 💾 Backup Database

To create a new backup:

```bash
cd C:\xampp\mysql\bin
.\mysqldump.exe -u root pblc_db > "backup_$(Get-Date -Format 'yyyyMMdd_HHmmss').sql"
```

This will create a timestamped backup file.

---

## 🔐 Security Notes

- Default MySQL root has no password in XAMPP
- For production, always set a strong root password
- Update connection string accordingly
- Never commit `appsettings.json` with real passwords to GitHub

---

## 📞 Need Help?

If you encounter any issues:

1. Check XAMPP MySQL error logs: `C:\xampp\mysql\data\mysql_error.log`
2. Verify MySQL service is running
3. Ensure port 3306 is not blocked
4. Try restarting XAMPP

---

**Last Updated:** October 18, 2025  
**Database Version:** 1.1.0 (Username support added)  
**Compatible with:** MySQL 8.0+, MariaDB 10.0+
