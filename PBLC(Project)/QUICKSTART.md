# 🚀 Quick Start Guide - Database Setup

## One-Click Database Import (Easiest Method)

### Step 1: Start XAMPP
```
1. Open XAMPP Control Panel
2. Click "Start" for MySQL
3. Wait for green indicator
```

### Step 2: Import Database via phpMyAdmin

#### Option A: phpMyAdmin (Recommended for Beginners)
```
1. Click "Admin" button next to MySQL in XAMPP
2. Or visit: http://localhost/phpmyadmin
3. Click "New" in left sidebar
4. Database name: pblc_db
5. Click "Create"
6. Click "Import" tab
7. Choose file: pblc_database.sql (from this folder)
8. Click "Import" button at bottom
9. ✅ Success! Database ready!
```

#### Option B: Command Line (For Advanced Users)
```powershell
# Open PowerShell in this folder, then run:
cd C:\xampp\mysql\bin
.\mysql.exe -u root -e "CREATE DATABASE IF NOT EXISTS pblc_db;"
.\mysql.exe -u root pblc_db < "E:\4th Semester\CIT 221-222\PBLC(Project)\pblc_database.sql"
```

### Step 3: Run Application
```powershell
cd src\PBLC.Web
dotnet run
```

### Step 4: Open Browser
```
http://localhost:5197
```

---

## 🔑 Test Accounts (Login Credentials)

| Role | Username | Password |
|------|----------|----------|
| 👨‍💼 Admin | `admin` | `Admin@123` |
| 👨‍🏫 Teacher | `teacher` | `Teacher@123` |
| 👨‍🎓 Student | `student` | `Student@123` |

---

## 📊 What's Included in Database?

✅ 3 Faculties (Engineering, Science, Business)  
✅ 3 Departments (CSE, EEE, CE)  
✅ 6 Users (1 Admin, 2 Teachers, 3 Students)  
✅ 3 Courses with materials  
✅ Sample Lectures  
✅ Sample Assignments  
✅ Q&A Forum data  
✅ Course Enrollments  

---

## ⚠️ Troubleshooting

### Problem: Import failed / Error messages
**Solution:** 
- Make sure MySQL is running (green in XAMPP)
- Drop existing database first (if exists)
- Re-import the SQL file

### Problem: Application can't connect
**Solution:**
- Check `appsettings.json` → ConnectionString should be:
  ```
  "Server=localhost;Database=pblc_db;User=root;Password=;"
  ```
- Restart application after database import

---

## 📁 Files in This Package

- `pblc_database.sql` - Complete database with all data (Import this file)
- `DATABASE_SETUP.md` - Detailed setup instructions
- `README.md` - Full project documentation
- `USERNAME_UPDATE.md` - Username system documentation

---

## 🎯 Next Steps After Database Setup

1. ✅ Import database (pblc_database.sql)
2. ✅ Run application (`dotnet run`)
3. ✅ Login with test accounts
4. ✅ Explore features:
   - Admin Dashboard
   - Course Management
   - Q&A Forum
   - Profile Management

---

**Need detailed help?** See `DATABASE_SETUP.md` for complete instructions.

**Created:** October 18, 2025  
**PSTU Blended Learning Center v1.1.0**
