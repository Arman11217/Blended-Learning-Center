# 📚 PBLC (Project-Based Learning Center) - Technical Documentation

## 🎯 Project Overview
**Project Name:** PBLC - Project-Based Learning Center  
**Type:** Web-based Educational Management System  
**Architecture:** Clean Architecture (3-Tier)  
**Development Period:** 2024-2025  
**Target Users:** Admin, Teachers, Students

---

## 🏗️ SYSTEM ARCHITECTURE

### **Architecture Pattern: Clean Architecture (Layered)**

```
┌─────────────────────────────────────────────────────────────┐
│                    Presentation Layer                        │
│                    (PBLC.Web - Views)                        │
│        Razor Pages, HTML, CSS, Bootstrap, JavaScript        │
└──────────────────────┬──────────────────────────────────────┘
                       │
┌──────────────────────▼──────────────────────────────────────┐
│                   Application Layer                          │
│              (PBLC.Web - Controllers)                        │
│         AccountController, AdminController, etc.            │
└──────────────────────┬──────────────────────────────────────┘
                       │
┌──────────────────────▼──────────────────────────────────────┐
│                    Business Layer                            │
│                 (PBLC.Services)                             │
│            Services, Business Logic, Validators             │
└──────────────────────┬──────────────────────────────────────┘
                       │
┌──────────────────────▼──────────────────────────────────────┐
│                 Data Access Layer                            │
│               (PBLC.Infrastructure)                         │
│        ApplicationDbContext, DbInitializer                  │
└──────────────────────┬──────────────────────────────────────┘
                       │
┌──────────────────────▼──────────────────────────────────────┐
│                    Domain Layer                              │
│                   (PBLC.Core)                               │
│         Entities, Enums, Interfaces (No Dependencies)       │
└──────────────────────┬──────────────────────────────────────┘
                       │
                ┌──────▼──────┐
                │   Database   │
                │  MySQL 8.0   │
                └──────────────┘
```

---

## 💻 TECHNOLOGY STACK

### **1. BACKEND TECHNOLOGIES**

#### **Framework & Platform:**
- **.NET 9.0** (Latest version)
  - Language: C# 12.0
  - Runtime: .NET Runtime 9.0
  - SDK Version: 9.0.x

#### **Web Framework:**
- **ASP.NET Core 9.0 MVC**
  - Model-View-Controller Pattern
  - Razor View Engine
  - Tag Helpers
  - Model Binding
  - Routing

#### **ORM (Object-Relational Mapping):**
- **Entity Framework Core 9.0.10**
  - Code-First Approach
  - LINQ Queries
  - Migrations
  - DbContext
  - Provider: Pomelo.EntityFrameworkCore.MySql 9.0.0

#### **Authentication & Authorization:**
- **ASP.NET Core Identity**
  - User Management
  - Role-based Authorization
  - Password Hashing (PBKDF2)
  - Cookie Authentication
  - Claims-based Authorization

#### **Validation:**
- **Data Annotations**
- **FluentValidation** (Custom: PSTUEmailAttribute)
- **Model State Validation**

---

### **2. FRONTEND TECHNOLOGIES**

#### **View Engine:**
- **Razor Pages (.cshtml)**
  - Server-side rendering
  - C# code in views
  - Strongly-typed views
  - Partial views
  - Layout pages

#### **UI Framework:**
- **Bootstrap 5.3**
  - Responsive Grid System
  - Pre-built Components
  - Utilities Classes
  - Mobile-first Design

#### **CSS:**
- **Custom CSS**
- **Bootstrap Icons 1.11**
- **Gradient Designs**
- **Hover Effects**
- **Card Layouts**

#### **JavaScript:**
- **jQuery 3.6**
  - DOM Manipulation
  - AJAX Calls
  - Event Handling
- **Bootstrap JS 5.3**
  - Modal Dialogs
  - Tabs
  - Alerts
  - Dropdowns
- **Vanilla JavaScript**
  - Form Validation
  - Dynamic Content
  - Confirmation Dialogs

#### **Icons:**
- **Bootstrap Icons**
  - 1800+ icons
  - SVG format
  - Scalable

---

### **3. DATABASE**

#### **Database Management System:**
- **MySQL 8.0.21**
  - Relational Database
  - ACID Compliance
  - Transactions Support
  - Foreign Keys
  - Indexing

#### **Database Server:**
- **XAMPP Control Panel**
  - Apache Server
  - MySQL Server
  - phpMyAdmin (GUI)
  - Port: 3306

#### **Database Schema:**
```sql
Database Name: pblc_db
Tables: 13
- AspNetUsers (Identity tables)
- AspNetRoles
- Faculties
- Departments
- Courses
- Lectures
- Assignments
- AssignmentSubmissions
- Questions
- Answers
- Enrollments
```

---

## 📦 PROJECT STRUCTURE (Solution)

```
PBLC.sln (Solution File)
│
├── src/
│   ├── PBLC.Core/                    # Domain Layer
│   │   ├── Entities/
│   │   │   ├── ApplicationUser.cs
│   │   │   ├── Faculty.cs
│   │   │   ├── Department.cs
│   │   │   ├── Course.cs
│   │   │   ├── Lecture.cs
│   │   │   ├── Assignment.cs
│   │   │   ├── AssignmentSubmission.cs
│   │   │   ├── Question.cs
│   │   │   └── Answer.cs
│   │   └── Enums/
│   │       └── UserRole.cs
│   │
│   ├── PBLC.Infrastructure/          # Data Access Layer
│   │   └── Data/
│   │       ├── ApplicationDbContext.cs
│   │       └── DbInitializer.cs
│   │
│   ├── PBLC.Services/                # Business Logic Layer
│   │   └── (Future services)
│   │
│   └── PBLC.Web/                     # Presentation Layer
│       ├── Controllers/
│       │   ├── AccountController.cs
│       │   ├── AdminController.cs
│       │   ├── TeacherController.cs
│       │   ├── StudentController.cs
│       │   ├── CourseController.cs
│       │   ├── LectureController.cs
│       │   ├── AssignmentController.cs
│       │   ├── QAController.cs
│       │   └── HomeController.cs
│       │
│       ├── Views/
│       │   ├── Account/
│       │   ├── Admin/
│       │   ├── Teacher/
│       │   ├── Student/
│       │   ├── Course/
│       │   ├── Lecture/
│       │   ├── Assignment/
│       │   ├── QA/
│       │   ├── Home/
│       │   └── Shared/
│       │
│       ├── Models/
│       │   ├── LoginViewModel.cs
│       │   ├── RegisterViewModel.cs
│       │   ├── ProfileViewModel.cs
│       │   └── ErrorViewModel.cs
│       │
│       ├── Validators/
│       │   └── PSTUEmailAttribute.cs
│       │
│       ├── wwwroot/
│       │   ├── css/
│       │   ├── js/
│       │   ├── lib/
│       │   └── uploads/
│       │
│       ├── Migrations/
│       │   ├── InitialMySQLMigration.cs
│       │   └── AddUsernameSupport.cs
│       │
│       ├── appsettings.json
│       ├── appsettings.Development.json
│       └── Program.cs
│
├── pblc_database.sql                 # Database Export
├── update_usernames.sql              # SQL Scripts
├── README.md                         # Documentation
├── QUICKSTART.md
├── DATABASE_SETUP.md
├── DATABASE_IMPORT_GUIDE.md
└── USERNAME_UPDATE.md
```

---

## 🎨 DESIGN PATTERNS USED

### **1. MVC Pattern (Model-View-Controller)**
- **Model:** Entities in PBLC.Core
- **View:** Razor pages in Views folder
- **Controller:** Controllers handle requests

### **2. Repository Pattern** (via DbContext)
- ApplicationDbContext acts as repository
- Encapsulates data access logic

### **3. Dependency Injection**
- Built-in DI container in ASP.NET Core
- Services registered in Program.cs

### **4. Unit of Work** (via DbContext)
- SaveChanges() commits all changes as one transaction

---

## 🔐 SECURITY FEATURES

### **Authentication:**
- ✅ Username-based login
- ✅ Password hashing (PBKDF2)
- ✅ Cookie-based authentication
- ✅ Anti-forgery tokens

### **Authorization:**
- ✅ Role-based access control (Admin, Teacher, Student)
- ✅ [Authorize] attributes
- ✅ Claims-based authorization

### **Validation:**
- ✅ PSTU email validation (@pstu.ac.bd)
- ✅ Username uniqueness
- ✅ Email uniqueness (one email = one account)
- ✅ Strong password requirements
- ✅ Input sanitization

### **Data Protection:**
- ✅ SQL Injection prevention (EF Core parameterized queries)
- ✅ XSS protection (Razor encoding)
- ✅ CSRF protection (Anti-forgery tokens)

---

## 📊 DATABASE RELATIONSHIPS

```
Faculty (1) ──────────> (Many) Department
                            │
                            └──────> (Many) Course
                                        │
                                        ├──> (Many) Lecture
                                        ├──> (Many) Assignment
                                        └──> (Many) Enrollment (Students)

ApplicationUser (Teacher) ──> (Many) Course
ApplicationUser (Student) ──> (Many) Enrollment
ApplicationUser (Student) ──> (Many) AssignmentSubmission

Question ──────────> (Many) Answer
```

---

## 🚀 KEY FEATURES IMPLEMENTED

### **Admin Features:**
- ✅ User Management (Add, Edit, Delete, Change Role)
- ✅ Faculty Management (Add, Edit, Delete)
- ✅ Department Management (Add, Edit, Delete)
- ✅ Course Management (View all, Toggle status, Delete)
- ✅ Dashboard with statistics
- ✅ System overview

### **Teacher Features:**
- ✅ Course Management (Create, Edit, View)
- ✅ Lecture Upload (PDF, DOC, PPT, etc.)
- ✅ Assignment Creation (with due dates, marks)
- ✅ Assignment Edit/Delete
- ✅ Submission Review & Grading
- ✅ Student Enrollment View
- ✅ Q&A Forum (Answer questions)
- ✅ Profile Management

### **Student Features:**
- ✅ Course Enrollment
- ✅ View Lectures (Download materials)
- ✅ Assignment Submission (Text + File upload)
- ✅ View Grades & Feedback
- ✅ Q&A Forum (Ask questions, Post answers)
- ✅ Profile Management
- ✅ Dashboard with statistics

### **Common Features:**
- ✅ Username-based authentication
- ✅ Role-based dashboards
- ✅ Profile with statistics
- ✅ Facebook-style Q&A Forum
- ✅ File upload/download
- ✅ Responsive design
- ✅ Search & Filter

---

## 🔧 DEVELOPMENT TOOLS

### **IDE:**
- Visual Studio Code
- Extensions: C#, ASP.NET Core

### **Database Tools:**
- XAMPP Control Panel
- phpMyAdmin
- MySQL Workbench

### **Version Control:**
- Git (potential)

### **Package Manager:**
- NuGet Package Manager

### **Build Tool:**
- .NET CLI (dotnet build, dotnet run)

---

## 📚 NUGET PACKAGES USED

```xml
<!-- Entity Framework Core -->
<PackageReference Include="Microsoft.EntityFrameworkCore" Version="9.0.10" />
<PackageReference Include="Microsoft.EntityFrameworkCore.Design" Version="9.0.10" />
<PackageReference Include="Microsoft.EntityFrameworkCore.Tools" Version="9.0.10" />
<PackageReference Include="Pomelo.EntityFrameworkCore.MySql" Version="9.0.0" />

<!-- ASP.NET Core Identity -->
<PackageReference Include="Microsoft.AspNetCore.Identity.EntityFrameworkCore" Version="9.0.10" />

<!-- Development Tools -->
<PackageReference Include="Microsoft.EntityFrameworkCore.Design" Version="9.0.10" />
```

---

## 🌐 HOSTING REQUIREMENTS

### **Minimum Server Requirements:**
- **OS:** Windows Server 2016+ / Linux
- **RAM:** 2 GB minimum, 4 GB recommended
- **Storage:** 500 MB for application + database size
- **CPU:** 2 cores minimum
- **.NET Runtime:** .NET 9.0 Runtime
- **Database:** MySQL 8.0+

### **Development Environment:**
- **OS:** Windows 10/11
- **RAM:** 8 GB minimum
- **.NET SDK:** .NET 9.0 SDK
- **Database:** XAMPP with MySQL 8.0.21

---

## 📈 SCALABILITY FEATURES

### **Current Implementation:**
- ✅ Clean Architecture (easy to extend)
- ✅ Separation of Concerns
- ✅ Entity Framework Core (supports caching)
- ✅ Async/Await patterns

### **Future Scalability Options:**
- 📌 Add Redis caching
- 📌 Implement SignalR for real-time features
- 📌 Add API layer (REST API)
- 📌 Implement microservices
- 📌 Add message queues
- 📌 Implement CQRS pattern

---

## 🎓 TECHNICAL HIGHLIGHTS FOR PRESENTATION

### **1. Modern Technology Stack:**
- Latest .NET 9.0 framework
- MySQL database
- Clean Architecture
- Bootstrap 5 UI

### **2. Security Implementation:**
- Identity framework
- Role-based authorization
- Password encryption
- Email validation

### **3. Best Practices:**
- Clean code structure
- Separation of layers
- Async programming
- Entity relationships

### **4. User Experience:**
- Responsive design
- Intuitive interface
- Role-specific dashboards
- File upload/download

### **5. Database Design:**
- Normalized structure
- Foreign key relationships
- Migration support
- Easy data export/import

---

## 📋 TEST ACCOUNTS

```
Admin:
  Username: admin
  Password: Admin@123

Teacher:
  Username: teacher
  Password: Teacher@123

Student:
  Username: student
  Password: Student@123
```

---

## 🔍 DEMO URL (Local Development)

```
http://localhost:5197
```

---

## 📞 TECHNICAL SUPPORT INFORMATION

**Database Connection String:**
```
Server=localhost;Database=pblc_db;User=root;Password=;
```

**Database Import File:**
```
pblc_database.sql (51 KB)
```

**Setup Time:**
- Fresh Installation: 15-20 minutes
- Using SQL Import: 5-10 minutes

---

## ✅ PROJECT COMPLETION STATUS

### **Completed Features:** 100%
- ✅ Authentication System
- ✅ Authorization System
- ✅ Admin Panel
- ✅ Teacher Features
- ✅ Student Features
- ✅ Course Management
- ✅ Lecture Management
- ✅ Assignment System
- ✅ Q&A Forum
- ✅ Profile Management
- ✅ File Upload/Download
- ✅ Database Export/Import
- ✅ Documentation

### **Code Quality:**
- ✅ Clean Architecture
- ✅ Proper separation of concerns
- ✅ Async/Await throughout
- ✅ Error handling
- ✅ Validation
- ✅ Security best practices

---

**End of Technical Documentation**

---

## 💡 PRESENTATION TIPS

1. **Start with Demo:** Show live working application
2. **Explain Architecture:** Use the diagram above
3. **Highlight Security:** Show authentication flow
4. **Database Design:** Show ER diagram
5. **Code Quality:** Show clean code examples
6. **Features:** Live demonstration of all features
7. **Technology Choices:** Explain why .NET, MySQL, Bootstrap
8. **Future Scope:** Discuss scalability options

Good luck with your presentation! 🎯
