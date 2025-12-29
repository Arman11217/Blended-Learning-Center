# PSTU Blended Learning Center - Technical Documentation

## Project Overview
**Project Name:** PSTU Blended Learning Center (PBLC)  
**Type:** Web-based Learning Management System  
**Purpose:** Online course management, assignment submission, and student-teacher interaction platform for Patuakhali Science and Technology University

---

## Technology Stack

### 1. Backend Framework
**ASP.NET Core 9.0 MVC**

**কী এবং কেন ব্যবহার করা হয়েছে:**
- **ASP.NET Core MVC** হলো Microsoft এর একটা modern, cross-platform web application framework
- **MVC Pattern** মানে Model-View-Controller - এটা code organize করার একটা pattern
  - **Model:** Database এর data represent করে (Entity classes)
  - **View:** User দেখে এমন pages (.cshtml files)
  - **Controller:** Model এবং View এর মধ্যে logic handle করে

**এই project এ কীভাবে ব্যবহার হয়েছে:**
```
Controllers/
├── HomeController.cs       → Home page logic
├── AccountController.cs    → Login, Register, Logout
├── AdminController.cs      → Admin dashboard এবং management
├── TeacherController.cs    → Teacher courses এবং assignments
└── StudentController.cs    → Student enrollment এবং submissions
```

**সুবিধা:**
- ✅ Fast এবং Secure
- ✅ Built-in security features
- ✅ Easy to maintain এবং scale
- ✅ Microsoft এর official support

---

### 2. Programming Language
**C# (C Sharp) 12.0**

**কী এবং কেন:**
- C# হলো Microsoft এর object-oriented programming language
- Type-safe, modern, এবং powerful language
- .NET ecosystem এর সাথে perfect integration

**ব্যবহার:**
- সব backend logic C# এ লেখা
- Entities, Controllers, Services সব C# classes
- LINQ queries for database operations

**Example Code:**
```csharp
// User authentication check
var user = await _userManager.FindByNameAsync(username);
if (user != null && user.IsActive)
{
    await _signInManager.SignInAsync(user, isPersistent: false);
}
```

---

### 3. Database Management System
**MySQL 8.0**

**কী এবং কেন:**
- MySQL হলো world's most popular open-source relational database
- Free এবং very reliable
- Large-scale applications এর জন্য suitable

**ব্যবহার:**
- সব data store করার জন্য (users, courses, assignments, submissions)
- Relational structure maintain করে foreign keys দিয়ে
- ACID properties নিশ্চিত করে (data integrity)

**Database Tables:**
```sql
AspNetUsers          → সব users (Admin, Teacher, Student)
Faculties           → University faculties
Departments         → Academic departments
Courses             → Teacher created courses
Assignments         → Course assignments
AssignmentSubmissions → Student submissions
Lectures            → Course materials
Questions           → Q&A forum questions
Answers             → Teacher answers
```

**Connection String:**
```json
"DefaultConnection": "server=localhost;database=pblc_db;user=root;"
```

---

### 4. ORM (Object-Relational Mapping)
**Entity Framework Core 9.0**

**কী এবং কেন:**
- Entity Framework Core (EF Core) হলো একটা ORM framework
- Database operations এর জন্য SQL লেখার দরকার নেই
- C# code দিয়েই database access করা যায়

**ব্যবহার:**
```csharp
// SQL লেখার বদলে C# LINQ query
var courses = await _context.Courses
    .Include(c => c.Department)
    .Include(c => c.Teacher)
    .Where(c => c.IsActive)
    .ToListAsync();
```

**Features ব্যবহার করা হয়েছে:**
- **Code-First Approach:** C# classes থেকে database tables তৈরি
- **Migrations:** Database schema changes track করা
- **Navigation Properties:** Related data easily access
- **LINQ Queries:** Type-safe database queries

**MySQL Provider:**
```
Pomelo.EntityFrameworkCore.MySql 9.0.10
```
- EF Core কে MySQL এর সাথে connect করার জন্য

---

### 5. Authentication & Authorization
**ASP.NET Core Identity**

**কী এবং কেন:**
- Built-in membership system
- User registration, login, role management সব ready-made
- Secure password hashing এবং validation

**ব্যবহার:**
```csharp
// User Registration
var user = new ApplicationUser { ... };
await _userManager.CreateAsync(user, password);

// Login
await _signInManager.PasswordSignInAsync(username, password, ...);

// Role-based access
[Authorize(Roles = "Admin")]
public class AdminController : Controller { ... }
```

**Features:**
- ✅ Password hashing (security)
- ✅ Role-based authorization (Admin, Teacher, Student)
- ✅ Cookie-based authentication
- ✅ Account lockout protection
- ✅ Email validation

**Password Policy:**
- Minimum 6 characters
- Require uppercase
- Require lowercase
- Require digit

---

### 6. Frontend Technologies

#### 6.1 HTML5
**কী:** HyperText Markup Language - web pages এর structure define করে

**ব্যবহার:**
```html
<div class="container">
    <h1>Welcome to PBLC</h1>
    <form asp-action="Login">
        <input type="text" asp-for="Username" />
    </form>
</div>
```

#### 6.2 CSS3
**কী:** Cascading Style Sheets - pages এর design এবং layout

**ব্যবহার:**
- Custom gradients এবং colors
- Responsive design
- Animations এবং transitions
- Modern UI effects (glassmorphism, shadows)

**Example:**
```css
.hero-section {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    min-height: 600px;
    background-image: url('/images/pstu-campus.jpg');
}
```

#### 6.3 Bootstrap 5.3
**কী এবং কেন:**
- World's most popular CSS framework
- Responsive grid system
- Pre-built components (buttons, cards, forms, navbar)
- Mobile-first approach

**ব্যবহার:**
```html
<!-- Responsive grid -->
<div class="row">
    <div class="col-md-4">Card 1</div>
    <div class="col-md-4">Card 2</div>
    <div class="col-md-4">Card 3</div>
</div>

<!-- Pre-built components -->
<button class="btn btn-primary">Submit</button>
<div class="card shadow-lg">Content</div>
```

**Components ব্যবহার:**
- Navigation bars
- Cards
- Forms
- Buttons
- Alerts
- Modals

#### 6.4 JavaScript
**কী এবং কেন:**
- Client-side interactivity
- Form validation
- Dynamic content updates
- AJAX calls (future enhancement)

**ব্যবহার:**
- Form validation
- Dropdown interactions
- Alert messages
- Client-side data manipulation

#### 6.5 Bootstrap Icons
**কী:** 1800+ free icons library

**ব্যবহার:**
```html
<i class="bi bi-person-fill"></i>     <!-- User icon -->
<i class="bi bi-book"></i>             <!-- Book icon -->
<i class="bi bi-file-earmark"></i>     <!-- File icon -->
```

---

### 7. View Engine
**Razor (.cshtml)**

**কী এবং কেন:**
- ASP.NET এর template engine
- C# code এবং HTML mix করা যায়
- Server-side rendering

**ব্যবহার:**
```cshtml
@model LoginViewModel

<h1>Login to @ViewData["Title"]</h1>

@if (Model.IsValid)
{
    <p>Welcome, @Model.Username!</p>
}

@foreach (var course in Model.Courses)
{
    <div class="card">
        <h3>@course.Name</h3>
        <p>@course.Description</p>
    </div>
}
```

**Features:**
- `@model` - Strongly-typed views
- `@if`, `@foreach` - C# logic in HTML
- `@Html.DisplayFor()` - HTML helpers
- `asp-` Tag Helpers - Modern syntax

---

### 8. Design Patterns Used

#### 8.1 MVC Pattern (Model-View-Controller)
```
User Request
    ↓
Controller (Process request)
    ↓
Model (Get data from database)
    ↓
View (Render HTML)
    ↓
Response to User
```

#### 8.2 Repository Pattern
```csharp
// DbContext acts as repository
public class ApplicationDbContext : DbContext
{
    public DbSet<Course> Courses { get; set; }
    public DbSet<Assignment> Assignments { get; set; }
}
```

#### 8.3 Dependency Injection
```csharp
public class TeacherController : Controller
{
    private readonly ApplicationDbContext _context;
    private readonly UserManager<ApplicationUser> _userManager;
    
    // Dependencies injected through constructor
    public TeacherController(
        ApplicationDbContext context,
        UserManager<ApplicationUser> userManager)
    {
        _context = context;
        _userManager = userManager;
    }
}
```

---

### 9. Project Architecture

#### Clean Architecture (Layered Approach)

```
PBLC.Web/                    → Presentation Layer
├── Controllers/             → Handle HTTP requests
├── Views/                   → UI (Razor pages)
├── Models/                  → ViewModels for views
└── wwwroot/                 → Static files (CSS, JS, images)

PBLC.Core/                   → Domain Layer
├── Entities/                → Database models (Course, User, etc.)
└── Enums/                   → Enumerations (UserRole)

PBLC.Infrastructure/         → Data Access Layer
├── Data/
    ├── ApplicationDbContext.cs    → EF Core DbContext
    └── DbInitializer.cs          → Seed initial data

PBLC.Services/               → Business Logic Layer (Future use)
```

**সুবিধা:**
- ✅ Separation of concerns
- ✅ Easy to test
- ✅ Maintainable এবং scalable
- ✅ Dependencies properly managed

---

### 10. Database Design

#### Entity Relationship

```
Faculties (1) ──────→ (Many) Departments
    │
    └──→ (Many) Users

Departments (1) ──────→ (Many) Courses
    
Users (Teachers) (1) ──────→ (Many) Courses
                     ├──────→ (Many) Assignments
                     └──────→ (Many) Answers

Courses (1) ──────→ (Many) Assignments
        └──────→ (Many) Lectures

Assignments (1) ──────→ (Many) AssignmentSubmissions

Users (Students) (1) ──────→ (Many) AssignmentSubmissions
                 └──────→ (Many) Questions

Questions (1) ──────→ (Many) Answers
```

#### Key Relationships:
- **One-to-Many:** Faculty → Departments, Course → Assignments
- **Many-to-Many:** Students ↔ Courses (through enrollment)
- **Foreign Keys:** Maintain data integrity
- **Cascade Delete:** Controlled deletion behavior

---

### 11. Security Features

#### 11.1 Authentication
- **Cookie-based authentication**
- Session management (7 days expiry)
- Secure password hashing (PBKDF2)

#### 11.2 Authorization
- **Role-based access control**
```csharp
[Authorize] // Any logged-in user
[Authorize(Roles = "Admin")] // Only Admins
[Authorize(Roles = "Teacher,Admin")] // Teachers or Admins
```

#### 11.3 Input Validation
- **Model validation attributes:**
```csharp
[Required(ErrorMessage = "Email is required")]
[EmailAddress]
[StringLength(100, MinimumLength = 6)]
```

- **Anti-forgery tokens:**
```cshtml
<form asp-action="Login" method="post">
    @Html.AntiForgeryToken()
</form>
```

#### 11.4 SQL Injection Prevention
- Entity Framework parameterized queries
- No raw SQL used

#### 11.5 XSS Prevention
- Razor automatically HTML-encodes output
- `@Html.Raw()` used only when necessary

---

### 12. NuGet Packages Used

```xml
<!-- Database & ORM -->
<PackageReference Include="Microsoft.EntityFrameworkCore" Version="9.0.10" />
<PackageReference Include="Pomelo.EntityFrameworkCore.MySql" Version="9.0.10" />
<PackageReference Include="Microsoft.EntityFrameworkCore.Tools" Version="9.0.10" />

<!-- Authentication -->
<PackageReference Include="Microsoft.AspNetCore.Identity.EntityFrameworkCore" Version="9.0.10" />

<!-- Development Tools -->
<PackageReference Include="Microsoft.EntityFrameworkCore.Design" Version="9.0.10" />
```

---

### 13. Development Tools

#### 13.1 Visual Studio Code
- Primary code editor
- Extensions: C#, .NET Core, MySQL

#### 13.2 .NET CLI
```bash
dotnet run          # Run application
dotnet build        # Build project
dotnet ef migrations add [name]   # Create migration
dotnet ef database update         # Update database
```

#### 13.3 XAMPP
- Local development server
- MySQL database management
- Apache (optional)

#### 13.4 Git (Version Control)
- Source code management
- Track changes
- Collaboration

---

### 14. Key Features Implementation

#### 14.1 User Registration
**Technologies:**
- ASP.NET Core Identity (User management)
- Entity Framework Core (Database)
- Model Validation (Input validation)
- Razor Views (UI)

**Flow:**
```
User fills form → Validation → Password hashing → 
Save to database → Auto login → Redirect to dashboard
```

#### 14.2 Course Management
**Technologies:**
- EF Core LINQ queries
- Foreign key relationships
- File upload handling
- Authorization filters

**Teacher creates course:**
```csharp
var course = new Course
{
    Name = model.Name,
    Code = model.Code,
    DepartmentId = model.DepartmentId,
    TeacherId = userId,
    CreatedAt = DateTime.Now
};
await _context.Courses.AddAsync(course);
await _context.SaveChangesAsync();
```

#### 14.3 Assignment Submission
**Technologies:**
- File upload (IFormFile)
- Database binary storage or file system
- LINQ queries for retrieval
- DateTime handling for deadlines

**Submission process:**
```csharp
var submission = new AssignmentSubmission
{
    AssignmentId = assignmentId,
    StudentId = userId,
    SubmissionText = model.Text,
    AttachmentUrl = filePath,
    SubmittedAt = DateTime.Now,
    Status = "Pending"
};
```

#### 14.4 Grading System
**Technologies:**
- Conditional logic
- Data validation
- Email notifications (future)
- Real-time updates

---

### 15. Database Migrations

**কী:**
- Database schema changes track করার system
- Version control for database

**Commands ব্যবহার:**
```bash
# Create migration
dotnet ef migrations add InitialCreate

# Update database
dotnet ef database update

# Remove last migration
dotnet ef migrations remove
```

**Migration Files:**
```
Migrations/
├── 20251018023144_InitialMySQLMigration.cs
├── 20251018035641_AddUsernameSupport.cs
└── ApplicationDbContextModelSnapshot.cs
```

---

### 16. Configuration Management

#### appsettings.json
```json
{
  "ConnectionStrings": {
    "DefaultConnection": "server=localhost;database=pblc_db;user=root;"
  },
  "Logging": {
    "LogLevel": {
      "Default": "Information"
    }
  }
}
```

**Environment-specific:**
- `appsettings.json` - Default settings
- `appsettings.Development.json` - Development override
- `appsettings.Production.json` - Production settings

---

### 17. Routing System

**Convention-based routing:**
```csharp
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");
```

**URL Examples:**
- `/Home/Index` → HomeController.Index()
- `/Account/Login` → AccountController.Login()
- `/Teacher/CreateCourse` → TeacherController.CreateCourse()
- `/Admin/ManageUsers` → AdminController.ManageUsers()

**Attribute routing:**
```csharp
[HttpPost]
[Route("api/courses/{id}")]
public async Task<IActionResult> UpdateCourse(int id) { ... }
```

---

### 18. Error Handling

**Global error handling:**
```csharp
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}
```

**Try-catch blocks:**
```csharp
try
{
    await _context.SaveChangesAsync();
    TempData["Success"] = "Course created successfully!";
}
catch (Exception ex)
{
    TempData["Error"] = "An error occurred.";
    _logger.LogError(ex, "Error creating course");
}
```

**Model validation:**
```csharp
if (!ModelState.IsValid)
{
    return View(model);
}
```

---

### 19. Performance Optimizations

#### 19.1 Async/Await Pattern
```csharp
// Asynchronous database calls
public async Task<IActionResult> Index()
{
    var courses = await _context.Courses.ToListAsync();
    return View(courses);
}
```

**সুবিধা:**
- Non-blocking operations
- Better scalability
- Improved response time

#### 19.2 Eager Loading
```csharp
// Load related data in one query
var courses = await _context.Courses
    .Include(c => c.Department)
    .Include(c => c.Teacher)
    .ToListAsync();
```

#### 19.3 Pagination (Future)
```csharp
var courses = await _context.Courses
    .Skip((page - 1) * pageSize)
    .Take(pageSize)
    .ToListAsync();
```

---

### 20. Deployment Considerations

#### Development Environment:
- **OS:** Windows 10/11
- **Database:** MySQL via XAMPP
- **Server:** Kestrel (built-in)
- **URL:** http://localhost:5197

#### Production Deployment Options:
1. **IIS (Internet Information Services)** - Windows Server
2. **Azure App Service** - Microsoft Cloud
3. **Docker Container** - Platform independent
4. **Linux Server with Nginx** - Reverse proxy

---

## Summary for Presentation

### "আমি এই project এ কী কী technology ব্যবহার করেছি:"

#### Backend:
1. **ASP.NET Core 9.0 MVC** - Modern web framework
2. **C# 12** - Programming language
3. **Entity Framework Core 9.0** - Database access (ORM)
4. **MySQL 8.0** - Database management system
5. **ASP.NET Core Identity** - Authentication & authorization

#### Frontend:
1. **HTML5** - Structure
2. **CSS3** - Styling এবং design
3. **Bootstrap 5.3** - Responsive UI framework
4. **JavaScript** - Client-side interactivity
5. **Razor View Engine** - Server-side rendering
6. **Bootstrap Icons** - UI icons

#### Architecture & Patterns:
1. **MVC Pattern** - Code organization
2. **Clean Architecture** - Layered approach
3. **Dependency Injection** - Loose coupling
4. **Repository Pattern** - Data access
5. **Async/Await** - Performance optimization

#### Development Tools:
1. **Visual Studio Code** - Code editor
2. **.NET CLI** - Build and run
3. **XAMPP** - Local MySQL server
4. **Git** - Version control
5. **Entity Framework Migrations** - Database versioning

#### Security Features:
1. **Role-based authorization** (Admin, Teacher, Student)
2. **Password hashing** (PBKDF2)
3. **Anti-forgery tokens**
4. **SQL injection prevention**
5. **Input validation**
6. **XSS protection**

---

## Project Highlights

✅ **Modern Technology Stack** - Latest .NET 9.0  
✅ **Clean Code Architecture** - Easy to maintain  
✅ **Secure Authentication** - Industry-standard security  
✅ **Responsive Design** - Mobile and desktop friendly  
✅ **Scalable Database Design** - Proper relationships  
✅ **Professional UI/UX** - Modern gradient design  
✅ **Role-based Access Control** - Proper authorization  
✅ **Complete CRUD Operations** - Create, Read, Update, Delete  

---

**Total Lines of Code:** ~5000+ lines  
**Total Files:** 50+ files  
**Database Tables:** 9 main tables  
**Features Implemented:** 15+ major features

---

*This documentation explains all technologies and their usage in the PBLC project for academic presentation purposes.*
