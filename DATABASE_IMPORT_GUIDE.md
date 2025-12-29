# 📸 Database Import - Visual Step-by-Step Guide

## 🎯 For Complete Beginners (With Screenshots Explanation)

---

## Method 1: phpMyAdmin (Easiest - Recommended)

### Step 1: Open XAMPP Control Panel

```
[Start Menu] → Search "XAMPP" → Open XAMPP Control Panel
```

**What you'll see:**
```
┌─────────────────────────────────────┐
│  XAMPP Control Panel v3.3.0         │
├─────────────────────────────────────┤
│  Module    PID    Port   Action     │
│  Apache    ----   80,443 [Start]    │
│  MySQL     ----   3306   [Start] ◄─ Click this!
│  FileZilla ----   21     [Start]    │
└─────────────────────────────────────┘
```

**Action:** Click **[Start]** button next to **MySQL**

✅ Wait for button to turn **[Stop]** and background turns green

---

### Step 2: Open phpMyAdmin

**What you'll see after MySQL starts:**
```
┌─────────────────────────────────────┐
│  Module    PID    Port   Action     │
│  MySQL     1234   3306   [Stop] [Admin] ◄─ Click Admin!
└─────────────────────────────────────┘
```

**Action:** Click **[Admin]** button

**Alternative:** Open browser → Type: `http://localhost/phpmyadmin`

---

### Step 3: Create New Database

**In phpMyAdmin, you'll see:**

```
┌──────────────────────────────────────────────────────┐
│  phpMyAdmin                                    [User]│
├────────────┬─────────────────────────────────────────┤
│            │  Databases  SQL  Status  Export  Import │
│  [New] ◄── │                                          │
│            │  Create database:                        │
│ Databases  │  ┌──────────────┐                       │
│            │  │ pblc_db      │ [Create] ◄─────────── │
│            │  └──────────────┘                       │
│            │                                          │
└────────────┴─────────────────────────────────────────┘
```

**Actions:**
1. Click **"New"** in left sidebar
2. Type database name: `pblc_db`
3. Click **[Create]** button

---

### Step 4: Import SQL File

**After database created:**

```
┌──────────────────────────────────────────────────────┐
│  phpMyAdmin - pblc_db                          [User]│
├────────────┬─────────────────────────────────────────┤
│            │  Structure  SQL  Import ◄─────────────  │
│ [New]      │                                          │
│            │  Import                                  │
│ pblc_db ◄──│  ┌────────────────────────────────┐    │
│            │  │  Choose File                   │    │
│            │  │  [Browse...] No file selected  │    │
│            │  └────────────────────────────────┘    │
│            │                                          │
│            │  Format: SQL                             │
│            │  [■] Partial import                      │
│            │                                          │
│            │  [Import] ◄────────────────────────────  │
└────────────┴─────────────────────────────────────────┘
```

**Actions:**
1. Click **"Import"** tab at top
2. Click **[Browse...]** or **[Choose File]** button
3. Navigate to: `E:\4th Semester\CIT 221-222\PBLC(Project)`
4. Select file: `pblc_database.sql`
5. Scroll down to bottom
6. Click **[Import]** button (green button)

---

### Step 5: Wait for Success

**You'll see:**

```
┌─────────────────────────────────────────────────────┐
│  ✓ Import has been successfully finished,           │
│    13 queries executed.                              │
│                                                      │
│  (Showing 13 queries)                               │
│  CREATE TABLE `AspNetUsers` ...                     │
│  CREATE TABLE `Faculties` ...                       │
│  INSERT INTO `AspNetUsers` ...                      │
│  ...                                                 │
└─────────────────────────────────────────────────────┘
```

**What this means:** 
✅ All tables created successfully!  
✅ All data inserted successfully!  
✅ Database is ready to use!

---

### Step 6: Verify Tables

**Click on database name in left sidebar:**

```
┌────────────┬─────────────────────────────────────────┤
│ [New]      │  pblc_db (13)                            │
│            │                                          │
│ pblc_db ◄──│  ✓ Answers (2)                          │
│  ├─ Tables │  ✓ AspNetUsers (6)                      │
│  │  ├─ Answers                                       │
│  │  ├─ AspNetRoles (3)                               │
│  │  ├─ AspNetUserRoles                               │
│  │  ├─ Assignments (3)                               │
│  │  ├─ AssignmentSubmissions (2)                     │
│  │  ├─ Courses (3)                                   │
│  │  ├─ CourseEnrollments (6)                         │
│  │  ├─ Departments (3)                               │
│  │  ├─ Faculties (3)                                 │
│  │  ├─ Lectures (3)                                  │
│  │  ├─ Questions (2)                                 │
│  │  └─ __EFMigrationsHistory                         │
└────────────┴─────────────────────────────────────────┘
```

**What to check:**
✅ Should see **13 tables** total  
✅ Numbers in parentheses = row count  
✅ All tables should have data  

---

## Method 2: MySQL Command Line (Alternative)

### For PowerShell Users:

```powershell
# Step 1: Navigate to MySQL bin folder
cd C:\xampp\mysql\bin

# Step 2: Create database
.\mysql.exe -u root -e "CREATE DATABASE IF NOT EXISTS pblc_db;"

# Step 3: Import SQL file
.\mysql.exe -u root pblc_db < "E:\4th Semester\CIT 221-222\PBLC(Project)\pblc_database.sql"

# Step 4: Verify tables
.\mysql.exe -u root -e "USE pblc_db; SHOW TABLES;"
```

**Expected Output:**
```
+---------------------------+
| Tables_in_pblc_db         |
+---------------------------+
| Answers                   |
| AspNetRoles               |
| AspNetUserClaims          |
| AspNetUserLogins          |
| AspNetUserRoles           |
| AspNetUsers               |
| Assignments               |
| AssignmentSubmissions     |
| CourseEnrollments         |
| Courses                   |
| Departments               |
| Faculties                 |
| Lectures                  |
| Questions                 |
| __EFMigrationsHistory     |
+---------------------------+
15 rows in set
```

---

## 🎯 After Import - Run Application

### Terminal:
```powershell
# Navigate to project Web folder
cd "E:\4th Semester\CIT 221-222\PBLC(Project)\src\PBLC.Web"

# Run application
dotnet run
```

**Expected Output:**
```
Building...
info: Microsoft.Hosting.Lifetime[14]
      Now listening on: http://localhost:5197
info: Microsoft.Hosting.Lifetime[0]
      Application started. Press Ctrl+C to shut down.
```

✅ Application is running!

---

### Browser:

**Open:** `http://localhost:5197`

**You should see:**
```
┌─────────────────────────────────────────────────┐
│        PSTU Blended Learning Center             │
│                                                 │
│            [Login] [Register]                   │
│                                                 │
│  ┌───────────────────────────────────────────┐ │
│  │  Username: [          ]                   │ │
│  │  Password: [          ]                   │ │
│  │  [ ] Remember me                          │ │
│  │  [     Login     ]                        │ │
│  └───────────────────────────────────────────┘ │
│                                                 │
│  Test Accounts:                                 │
│  Admin: admin / Admin@123                       │
│  Teacher: teacher / Teacher@123                  │
│  Student: student / Student@123                   │
└─────────────────────────────────────────────────┘
```

---

## 🔑 Login and Test

**Try this:**

1. **Username:** `admin`
2. **Password:** `Admin@123`
3. Click **[Login]**

**You should be redirected to:**
```
Admin Dashboard
├── Total Users: 6
├── Total Courses: 3
├── Total Departments: 3
└── Total Faculties: 3
```

✅ Success! Everything is working!

---

## 🔧 Troubleshooting Visual Guide

### Problem 1: MySQL won't start in XAMPP

**Visual Check:**
```
┌─────────────────────────────────────┐
│  MySQL  ----  3306  [Start]         │  ◄─ Still showing [Start]?
└─────────────────────────────────────┘

Possible reasons:
1. Port 3306 already in use
2. Another MySQL service running
3. Antivirus blocking

Solutions:
→ Close other MySQL programs
→ Change port in XAMPP config
→ Run XAMPP as Administrator
```

---

### Problem 2: Import button greyed out

**Visual Check:**
```
File size: 51,828 bytes (51 KB)

If file is > 2MB:
→ Edit php.ini
→ Change: upload_max_filesize = 50M
→ Change: post_max_size = 50M
→ Restart Apache in XAMPP
```

---

### Problem 3: Tables empty after import

**Visual Check in phpMyAdmin:**
```
Click table → Browse tab

AspNetUsers (0)  ◄─ Shows 0? Wrong!
Should show (6)

Solution:
→ Drop database
→ Re-import SQL file
→ Make sure "pblc_database.sql" file is complete
```

---

## 📊 What Each Table Contains

After successful import:

| Table | Rows | Contains |
|-------|------|----------|
| **Faculties** | 3 | Engineering, Science, Business |
| **Departments** | 3 | CSE, EEE, CE |
| **AspNetUsers** | 6 | admin, teacher, karim, student, fatima, sabbir |
| **Courses** | 3 | CSE-201, CSE-301, CIT-221 |
| **Lectures** | 3+ | Sample lecture materials |
| **Assignments** | 3+ | Sample assignments |
| **Questions** | 2 | Q&A forum questions |
| **Answers** | 2 | Q&A forum answers |
| **CourseEnrollments** | 6 | Student course enrollments |

---

## ✅ Success Checklist

Before running application, verify:

- [x] XAMPP MySQL is running (green indicator)
- [x] Database `pblc_db` created
- [x] 13+ tables visible in phpMyAdmin
- [x] AspNetUsers has 6 rows
- [x] Faculties has 3 rows
- [x] Courses has 3 rows
- [x] Connection string in appsettings.json is correct
- [x] No error messages in import

All checked? ✅ You're ready to run!

---

## 🎉 Congratulations!

You have successfully:
✅ Imported complete database  
✅ All tables created  
✅ All data inserted  
✅ Ready to run application  

**Next:** Run `dotnet run` and enjoy your PBLC application! 🚀

---

**Created:** October 18, 2025  
**For:** PSTU Blended Learning Center  
**Version:** 1.1.0 (Username Support)
