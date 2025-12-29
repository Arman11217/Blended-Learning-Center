# PBLC Project - Complete File Structure and Class Locations

## Project Directory Structure

```
E:\PBLC(Project)\
│
├── PBLC.sln                          → Solution file
│
├── src/
│   ├── PBLC.Core/                    → Domain Layer (Entity Classes)
│   │   ├── PBLC.Core.csproj
│   │   ├── Entities/
│   │   │   ├── Answer.cs             → Answer entity class
│   │   │   ├── ApplicationUser.cs    → User entity class (Student, Teacher, Admin)
│   │   │   ├── Assignment.cs         → Assignment entity class
│   │   │   ├── AssignmentSubmission.cs → Submission entity class
│   │   │   ├── Course.cs             → Course entity class
│   │   │   ├── Department.cs         → Department entity class
│   │   │   ├── Faculty.cs            → Faculty entity class
│   │   │   ├── Lecture.cs            → Lecture entity class
│   │   │   └── Question.cs           → Question entity class
│   │   └── Enums/
│   │       └── UserRole.cs           → UserRole enum (Admin, Teacher, Student)
│   │
│   ├── PBLC.Infrastructure/          → Data Access Layer
│   │   ├── PBLC.Infrastructure.csproj
│   │   └── Data/
│   │       ├── ApplicationDbContext.cs → Database context (EF Core)
│   │       └── DbInitializer.cs       → Database seed data initializer
│   │
│   ├── PBLC.Services/                → Business Logic Layer (Future use)
│   │   └── PBLC.Services.csproj
│   │
│   └── PBLC.Web/                     → Presentation Layer
│       ├── PBLC.Web.csproj
│       ├── Program.cs                → Application entry point
│       ├── appsettings.json          → Configuration settings
│       ├── appsettings.Development.json
│       │
│       ├── Controllers/              → MVC Controllers
│       │   ├── AccountController.cs   → Login, Register, Logout, Profile
│       │   ├── AdminController.cs     → Admin dashboard and management
│       │   ├── AssignmentController.cs → Assignment operations
│       │   ├── CourseController.cs    → Course browsing and details
│       │   ├── HomeController.cs      → Home page
│       │   ├── LectureController.cs   → Lecture management
│       │   ├── QAController.cs        → Q&A forum
│       │   ├── StudentController.cs   → Student dashboard and operations
│       │   └── TeacherController.cs   → Teacher dashboard and operations
│       │
│       ├── Models/                   → ViewModels for Views
│       │   ├── ErrorViewModel.cs      → Error page model
│       │   ├── LoginViewModel.cs      → Login form model
│       │   ├── ProfileViewModel.cs    → User profile model
│       │   └── RegisterViewModel.cs   → Registration form model
│       │
│       ├── Views/                    → Razor Views (.cshtml)
│       │   ├── Account/
│       │   │   ├── Login.cshtml       → Login page
│       │   │   ├── Register.cshtml    → Registration page
│       │   │   └── Profile.cshtml     → User profile page
│       │   │
│       │   ├── Admin/
│       │   │   ├── Dashboard.cshtml   → Admin dashboard
│       │   │   ├── ManageUsers.cshtml → User management
│       │   │   ├── ManageFaculties.cshtml → Faculty management
│       │   │   ├── CreateFaculty.cshtml
│       │   │   ├── EditFaculty.cshtml
│       │   │   ├── ManageDepartments.cshtml → Department management
│       │   │   ├── CreateDepartment.cshtml
│       │   │   └── EditDepartment.cshtml
│       │   │
│       │   ├── Home/
│       │   │   ├── Index.cshtml       → Home page (landing page)
│       │   │   └── Privacy.cshtml     → Privacy policy
│       │   │
│       │   ├── Student/
│       │   │   ├── Dashboard.cshtml   → Student dashboard
│       │   │   ├── MyCourses.cshtml   → Enrolled courses
│       │   │   ├── BrowseCourses.cshtml → Available courses
│       │   │   ├── CourseDetails.cshtml → Course details
│       │   │   ├── MyAssignments.cshtml → Student assignments
│       │   │   └── SubmitAssignment.cshtml → Assignment submission
│       │   │
│       │   ├── Teacher/
│       │   │   ├── Dashboard.cshtml   → Teacher dashboard
│       │   │   ├── MyCourses.cshtml   → Teacher's courses
│       │   │   ├── CreateCourse.cshtml → Create new course
│       │   │   ├── EditCourse.cshtml  → Edit course
│       │   │   ├── CourseDetails.cshtml → Course details
│       │   │   ├── MyAssignments.cshtml → Teacher's assignments
│       │   │   ├── CreateAssignment.cshtml → Create assignment
│       │   │   ├── AssignmentSubmissions.cshtml → View submissions
│       │   │   └── GradeSubmission.cshtml → Grade student work
│       │   │
│       │   ├── Shared/
│       │   │   ├── _Layout.cshtml     → Main layout template (navbar, footer)
│       │   │   ├── _ValidationScriptsPartial.cshtml
│       │   │   └── Error.cshtml       → Error page
│       │   │
│       │   └── _ViewImports.cshtml    → Global using statements
│       │       _ViewStart.cshtml      → Default layout setup
│       │
│       ├── Validators/               → Custom validation classes
│       │
│       ├── wwwroot/                  → Static files
│       │   ├── css/
│       │   │   └── site.css          → Custom CSS styles
│       │   ├── js/
│       │   │   └── site.js           → Custom JavaScript
│       │   ├── lib/                  → Third-party libraries (Bootstrap, jQuery)
│       │   ├── images/
│       │   │   ├── logo.png          → PBLC logo
│       │   │   └── pstu-campus.jpg   → Campus background image
│       │   └── favicon.ico           → Browser favicon
│       │
│       ├── Migrations/               → EF Core database migrations
│       │   ├── 20251018023144_InitialMySQLMigration.cs
│       │   ├── 20251018035641_AddUsernameSupport.cs
│       │   └── ApplicationDbContextModelSnapshot.cs
│       │
│       └── Properties/
│           └── launchSettings.json   → Development server settings
│
└── Documentation/
    ├── README.md                     → Project overview
    ├── USER_MANUAL.md                → User guide
    ├── TECHNICAL_DOCUMENTATION.md    → Technical details
    ├── QUICKSTART.md                 → Quick start guide
    ├── DATABASE_SETUP.md             → Database setup guide
    ├── DIAGRAMS.md                   → Architecture diagrams
    └── pblc_database.sql             → Database SQL script
```

---

## Detailed Class Locations

### 1. Entity Classes (Domain Models)
**Location:** `E:\PBLC(Project)\src\PBLC.Core\Entities\`

| Class Name | File Path | Purpose |
|------------|-----------|---------|
| `ApplicationUser` | `PBLC.Core\Entities\ApplicationUser.cs` | User account (Admin, Teacher, Student) |
| `Faculty` | `PBLC.Core\Entities\Faculty.cs` | University faculty |
| `Department` | `PBLC.Core\Entities\Department.cs` | Academic department |
| `Course` | `PBLC.Core\Entities\Course.cs` | Course created by teacher |
| `Lecture` | `PBLC.Core\Entities\Lecture.cs` | Lecture materials |
| `Assignment` | `PBLC.Core\Entities\Assignment.cs` | Course assignment |
| `AssignmentSubmission` | `PBLC.Core\Entities\AssignmentSubmission.cs` | Student submission |
| `Question` | `PBLC.Core\Entities\Question.cs` | Q&A forum question |
| `Answer` | `PBLC.Core\Entities\Answer.cs` | Q&A forum answer |

**Full Path Example:**
```
E:\PBLC(Project)\src\PBLC.Core\Entities\ApplicationUser.cs
```

**Code Structure:**
```csharp
namespace PBLC.Core.Entities;

public class ApplicationUser : IdentityUser
{
    public string FullName { get; set; }
    public UserRole Role { get; set; }
    public int? FacultyId { get; set; }
    // ... more properties
    
    // Navigation Properties
    public Faculty? Faculty { get; set; }
}
```

---

### 2. Enum Classes
**Location:** `E:\PBLC(Project)\src\PBLC.Core\Enums\`

| Enum Name | File Path | Values |
|-----------|-----------|--------|
| `UserRole` | `PBLC.Core\Enums\UserRole.cs` | Admin=1, Teacher=2, Student=3 |

**Full Path:**
```
E:\PBLC(Project)\src\PBLC.Core\Enums\UserRole.cs
```

---

### 3. Data Access Classes
**Location:** `E:\PBLC(Project)\src\PBLC.Infrastructure\Data\`

| Class Name | File Path | Purpose |
|------------|-----------|---------|
| `ApplicationDbContext` | `PBLC.Infrastructure\Data\ApplicationDbContext.cs` | EF Core database context |
| `DbInitializer` | `PBLC.Infrastructure\Data\DbInitializer.cs` | Seed initial data |

**Full Path Example:**
```
E:\PBLC(Project)\src\PBLC.Infrastructure\Data\ApplicationDbContext.cs
```

**Code Structure:**
```csharp
namespace PBLC.Infrastructure.Data;

public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
{
    public DbSet<Faculty> Faculties { get; set; }
    public DbSet<Department> Departments { get; set; }
    public DbSet<Course> Courses { get; set; }
    // ... more DbSets
}
```

---

### 4. Controller Classes (MVC Controllers)
**Location:** `E:\PBLC(Project)\src\PBLC.Web\Controllers\`

| Controller Name | File Path | Responsibilities |
|----------------|-----------|------------------|
| `HomeController` | `PBLC.Web\Controllers\HomeController.cs` | Home page, Privacy |
| `AccountController` | `PBLC.Web\Controllers\AccountController.cs` | Login, Register, Logout, Profile |
| `AdminController` | `PBLC.Web\Controllers\AdminController.cs` | Admin dashboard, User/Faculty/Dept management |
| `TeacherController` | `PBLC.Web\Controllers\TeacherController.cs` | Teacher dashboard, Course/Assignment management |
| `StudentController` | `PBLC.Web\Controllers\StudentController.cs` | Student dashboard, Enrollment, Submissions |
| `CourseController` | `PBLC.Web\Controllers\CourseController.cs` | Course browsing and details |
| `AssignmentController` | `PBLC.Web\Controllers\AssignmentController.cs` | Assignment operations |
| `LectureController` | `PBLC.Web\Controllers\LectureController.cs` | Lecture management |
| `QAController` | `PBLC.Web\Controllers\QAController.cs` | Q&A forum |

**Full Path Example:**
```
E:\PBLC(Project)\src\PBLC.Web\Controllers\TeacherController.cs
```

**Code Structure:**
```csharp
namespace PBLC.Web.Controllers;

[Authorize(Roles = "Teacher")]
public class TeacherController : Controller
{
    private readonly ApplicationDbContext _context;
    private readonly UserManager<ApplicationUser> _userManager;
    
    public async Task<IActionResult> Dashboard() { ... }
    public async Task<IActionResult> CreateCourse() { ... }
}
```

---

### 5. ViewModel Classes (View Models)
**Location:** `E:\PBLC(Project)\src\PBLC.Web\Models\`

| ViewModel Name | File Path | Used In |
|---------------|-----------|---------|
| `LoginViewModel` | `PBLC.Web\Models\LoginViewModel.cs` | Login page |
| `RegisterViewModel` | `PBLC.Web\Models\RegisterViewModel.cs` | Registration page |
| `ProfileViewModel` | `PBLC.Web\Models\ProfileViewModel.cs` | Profile page |
| `ErrorViewModel` | `PBLC.Web\Models\ErrorViewModel.cs` | Error page |

**Full Path Example:**
```
E:\PBLC(Project)\src\PBLC.Web\Models\LoginViewModel.cs
```

**Code Structure:**
```csharp
namespace PBLC.Web.Models;

public class LoginViewModel
{
    [Required]
    public string Username { get; set; }
    
    [Required]
    [DataType(DataType.Password)]
    public string Password { get; set; }
    
    public bool RememberMe { get; set; }
}
```

---

### 6. View Files (Razor Pages)
**Location:** `E:\PBLC(Project)\src\PBLC.Web\Views\`

#### Home Views
```
E:\PBLC(Project)\src\PBLC.Web\Views\Home\
├── Index.cshtml          → Landing page
└── Privacy.cshtml        → Privacy policy
```

#### Account Views
```
E:\PBLC(Project)\src\PBLC.Web\Views\Account\
├── Login.cshtml          → Login form
├── Register.cshtml       → Registration form
└── Profile.cshtml        → User profile
```

#### Admin Views
```
E:\PBLC(Project)\src\PBLC.Web\Views\Admin\
├── Dashboard.cshtml      → Admin dashboard
├── ManageUsers.cshtml    → User list and management
├── ManageFaculties.cshtml → Faculty list
├── CreateFaculty.cshtml  → Create faculty form
├── EditFaculty.cshtml    → Edit faculty form
├── ManageDepartments.cshtml → Department list
├── CreateDepartment.cshtml → Create department form
└── EditDepartment.cshtml → Edit department form
```

#### Teacher Views
```
E:\PBLC(Project)\src\PBLC.Web\Views\Teacher\
├── Dashboard.cshtml      → Teacher dashboard
├── MyCourses.cshtml      → Teacher's courses list
├── CreateCourse.cshtml   → Create course form
├── EditCourse.cshtml     → Edit course form
├── CourseDetails.cshtml  → Course details
├── MyAssignments.cshtml  → Assignments list
├── CreateAssignment.cshtml → Create assignment form
├── AssignmentSubmissions.cshtml → View submissions
└── GradeSubmission.cshtml → Grade form
```

#### Student Views
```
E:\PBLC(Project)\src\PBLC.Web\Views\Student\
├── Dashboard.cshtml      → Student dashboard
├── MyCourses.cshtml      → Enrolled courses
├── BrowseCourses.cshtml  → Available courses
├── CourseDetails.cshtml  → Course details
├── MyAssignments.cshtml  → Assignment list
└── SubmitAssignment.cshtml → Submission form
```

#### Shared Views
```
E:\PBLC(Project)\src\PBLC.Web\Views\Shared\
├── _Layout.cshtml        → Main layout (navbar, footer)
├── _ValidationScriptsPartial.cshtml → Validation scripts
└── Error.cshtml          → Error page
```

---

### 7. Configuration Files

| File Name | Location | Purpose |
|-----------|----------|---------|
| `PBLC.sln` | `E:\PBLC(Project)\PBLC.sln` | Solution file |
| `PBLC.Core.csproj` | `E:\PBLC(Project)\src\PBLC.Core\` | Core project file |
| `PBLC.Infrastructure.csproj` | `E:\PBLC(Project)\src\PBLC.Infrastructure\` | Infrastructure project |
| `PBLC.Web.csproj` | `E:\PBLC(Project)\src\PBLC.Web\` | Web project file |
| `appsettings.json` | `E:\PBLC(Project)\src\PBLC.Web\` | App configuration |
| `Program.cs` | `E:\PBLC(Project)\src\PBLC.Web\` | Entry point |
| `launchSettings.json` | `E:\PBLC(Project)\src\PBLC.Web\Properties\` | Server settings |

---

### 8. Static Files

#### CSS Files
```
E:\PBLC(Project)\src\PBLC.Web\wwwroot\css\
└── site.css              → Custom styles
```

#### JavaScript Files
```
E:\PBLC(Project)\src\PBLC.Web\wwwroot\js\
└── site.js               → Custom scripts
```

#### Images
```
E:\PBLC(Project)\src\PBLC.Web\wwwroot\images\
├── logo.png              → PBLC logo
└── pstu-campus.jpg       → Campus photo
```

#### Libraries
```
E:\PBLC(Project)\src\PBLC.Web\wwwroot\lib\
├── bootstrap/            → Bootstrap CSS & JS
├── jquery/               → jQuery library
└── jquery-validation/    → Form validation
```

---

### 9. Migration Files
**Location:** `E:\PBLC(Project)\src\PBLC.Web\Migrations\`

| File Name | Purpose |
|-----------|---------|
| `20251018023144_InitialMySQLMigration.cs` | Initial database creation |
| `20251018035641_AddUsernameSupport.cs` | Add username field |
| `ApplicationDbContextModelSnapshot.cs` | Current database state |

**Full Path:**
```
E:\PBLC(Project)\src\PBLC.Web\Migrations\20251018023144_InitialMySQLMigration.cs
```

---

## Quick Access Paths

### To Open a Specific Class:

**Entity Classes:**
```
cd E:\PBLC(Project)\src\PBLC.Core\Entities
code ApplicationUser.cs
code Course.cs
code Assignment.cs
```

**Controllers:**
```
cd E:\PBLC(Project)\src\PBLC.Web\Controllers
code TeacherController.cs
code StudentController.cs
code AdminController.cs
```

**Views:**
```
cd E:\PBLC(Project)\src\PBLC.Web\Views
code Home\Index.cshtml
code Account\Login.cshtml
code Teacher\Dashboard.cshtml
```

**Data Access:**
```
cd E:\PBLC(Project)\src\PBLC.Infrastructure\Data
code ApplicationDbContext.cs
```

---

## Project Layers and Their Locations

### Layer 1: Domain/Core Layer
**Path:** `src\PBLC.Core\`
- Contains: Entity classes, Enums
- Purpose: Business domain models

### Layer 2: Infrastructure Layer
**Path:** `src\PBLC.Infrastructure\`
- Contains: DbContext, Database initialization
- Purpose: Data access and persistence

### Layer 3: Services Layer
**Path:** `src\PBLC.Services\`
- Contains: Business logic services (currently empty)
- Purpose: Application business logic

### Layer 4: Presentation Layer
**Path:** `src\PBLC.Web\`
- Contains: Controllers, Views, ViewModels, wwwroot
- Purpose: User interface and HTTP handling

---

## File Count Summary

| Category | Count | Location |
|----------|-------|----------|
| Entity Classes | 9 | `PBLC.Core\Entities\` |
| Enum Classes | 1 | `PBLC.Core\Enums\` |
| Controllers | 9 | `PBLC.Web\Controllers\` |
| ViewModels | 4 | `PBLC.Web\Models\` |
| Razor Views | 30+ | `PBLC.Web\Views\` |
| Configuration Files | 5 | Various |
| Migration Files | 3 | `PBLC.Web\Migrations\` |
| Static Files | 10+ | `PBLC.Web\wwwroot\` |

**Total Files:** 70+ files

---

## How to Navigate to Any File

### Using VS Code:
1. Press `Ctrl + P` (Quick Open)
2. Type file name (e.g., "ApplicationUser.cs")
3. Press Enter

### Using Command Line:
```powershell
# Navigate to project root
cd E:\PBLC(Project)

# Open specific file in VS Code
code src\PBLC.Core\Entities\ApplicationUser.cs
code src\PBLC.Web\Controllers\TeacherController.cs
code src\PBLC.Web\Views\Home\Index.cshtml
```

### Using Windows Explorer:
```
Navigate to: E:\PBLC(Project)\src\PBLC.Web\Controllers
Double-click on: TeacherController.cs
```

---

## Class Dependencies (Which Class Uses Which)

### ApplicationUser (Used By):
- All Controllers (authentication)
- Courses (TeacherId)
- Assignments (TeacherId)
- AssignmentSubmissions (StudentId)
- Questions (StudentId)
- Answers (TeacherId)

### Course (Used By):
- TeacherController (create, edit)
- StudentController (enrollment)
- Assignment (CourseId)
- Lecture (CourseId)

### Assignment (Used By):
- TeacherController (create, grade)
- StudentController (submit)
- AssignmentSubmission (AssignmentId)

---

**This document provides complete locations of all classes and files in the PBLC project.**
