# PSTU Blended Learning Center (PBLC)

![.NET](https://img.shields.io/badge/.NET-9.0-512BD4?logo=dotnet)
![ASP.NET Core](https://img.shields.io/badge/ASP.NET%20Core-MVC-512BD4)
![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?logo=mysql)
![License](https://img.shields.io/badge/License-MIT-green.svg)

**GitHub Repository:** [Arman11217/Blended-Learning-Center](https://github.com/Arman11217/Blended-Learning-Center)

## 🎓 Overview
A comprehensive web-based blended learning platform built with ASP.NET Core MVC for managing courses, assignments, lectures, and Q&A forums in an educational institution.

**Live Demo:** [Coming Soon]  
**Documentation:** [Full Documentation](TECHNICAL_DOCUMENTATION.md) | [Installation Guide](INSTALLATION.md) | [User Manual](USER_MANUAL.md)

## 📋 Table of Contents
- [Features](#-features)
- [Technology Stack](#️-technology-stack)
- [Getting Started](#-getting-started)
- [Installation](#installation)
- [Contributing](#-contributing)
- [License](#-license)
- [Support](#-support)

## ✨ Features

### User Authentication & Role Management
- ✅ Admin, Teacher, and Student roles
- ✅ Role-based dashboard and access control
- ✅ Secure login and registration with ASP.NET Identity

### Course Management
- ✅ Teachers can create and manage courses
- ✅ Students can enroll in courses
- ✅ Department-wise course organization
- ✅ Course materials and lecture uploads

### Lecture & Notes Management
- ✅ Upload PDF, PPT, DOC files
- ✅ Video lecture links support
- ✅ Ordered lecture sequence
- ✅ Download materials from student dashboard

### Assignment Management
- ✅ Teachers create assignments with deadlines
- ✅ Students submit assignments with file uploads
- ✅ Teachers evaluate and provide feedback
- ✅ Marks and performance tracking

### Q&A Forum
- ✅ Students ask course-specific questions
- ✅ Teachers and students can answer
- ✅ Nested reply system (thread-based discussions)
- ✅ Mark answers as accepted/resolved

### Performance Tracking
- ✅ Student submission tracking
- ✅ Grade analytics
- ✅ Teacher performance reports
- ✅ Admin comprehensive dashboards

### Admin Control Panel
- ✅ Manage departments, courses, users
- ✅ User activation/deactivation
- ✅ System-wide statistics
- ✅ Performance reports generation

## 🏗️ Project Structure

```
PBLC/
├── src/
│   ├── PBLC.Core/               # Domain entities and interfaces
│   │   ├── Entities/
│   │   │   ├── ApplicationUser.cs
│   │   │   ├── Course.cs
│   │   │   ├── Department.cs
│   │   │   ├── Lecture.cs
│   │   │   ├── Assignment.cs
│   │   │   ├── AssignmentSubmission.cs
│   │   │   ├── Question.cs
│   │   │   └── Answer.cs
│   │   └── Enums/
│   │       └── UserRole.cs
│   │
│   ├── PBLC.Infrastructure/     # Data access and EF Core
│   │   └── Data/
│   │       └── ApplicationDbContext.cs
│   │
│   ├── PBLC.Services/           # Business logic services
│   │
│   └── PBLC.Web/                # ASP.NET MVC Web Application
│       ├── Controllers/
│       │   ├── AccountController.cs
│       │   ├── AdminController.cs
│       │   ├── CourseController.cs
│       │   ├── LectureController.cs
│       │   ├── AssignmentController.cs
│       │   ├── QAController.cs
│       │   ├── TeacherController.cs
│       │   └── StudentController.cs
│       ├── Models/
│       │   ├── LoginViewModel.cs
│       │   └── RegisterViewModel.cs
│       └── Views/
└── README.md
```

## 🛠️ Technology Stack

- **Framework:** ASP.NET Core 9.0 MVC
- **Database:** SQL Server (LocalDB)
- **ORM:** Entity Framework Core 9.0
- **Authentication:** ASP.NET Core Identity
- **UI:** Razor Views, Bootstrap 5
- **File Upload:** IFormFile with server-side storage

## 📦 Database Schema

### Core Tables
- **AspNetUsers** (Extended with ApplicationUser)
- **Departments**
- **Courses**
- **Lectures**
- **Assignments**
- **AssignmentSubmissions**
- **Questions**
- **Answers**
- **CourseEnrollments** (Many-to-Many junction table)

### Relationships
- User → Department (Many-to-One)
- Course → Department (Many-to-One)
- Course → Teacher (Many-to-One)
- Course ↔ Students (Many-to-Many)
- Assignment → Course (Many-to-One)
- Question → Course (Many-to-One)
- Answer → Question (Many-to-One)

## 🚀 Getting Started

### Prerequisites
- .NET 9.0 SDK
- SQL Server or SQL Server Express
- Visual Studio 2022 or VS Code

### Installation Steps

1. **Clone or navigate to the project:**
   ```powershell
   cd "E:\4th Semester\CIT 221-222\PBLC(Project)"
   ```

2. **Restore NuGet packages:**
   ```powershell
   dotnet restore
   ```

3. **Update database connection string:**
   Edit `src/PBLC.Web/appsettings.json`:
   ```json
   {
     "ConnectionStrings": {
       "DefaultConnection": "Server=(localdb)\\mssqllocaldb;Database=PBLCDb;Trusted_Connection=true;"
     }
   }
   ```

4. **Apply database migrations:**
   ```powershell
   cd src/PBLC.Web
   dotnet ef database update
   ```

5. **Run the application:**
   ```powershell
   dotnet run
   ```

6. **Access the application:**
   - Open browser: `http://localhost:5197`

## 👥 User Roles & Permissions

### Admin
- Full system access
- Manage departments
- Manage users (activate/deactivate)
- View all courses
- Generate performance reports

### Teacher
- Create and manage own courses
- Upload lectures and materials
- Create assignments
- Evaluate student submissions
- Answer student questions
- View enrolled students

### Student
- Enroll in courses
- Access lecture materials
- Submit assignments
- Ask questions in Q&A forum
- Answer other students' questions
- View own performance/grades

## 📁 File Upload Locations

Files are stored in `wwwroot/uploads/`:
- **Lectures:** `/wwwroot/uploads/lectures/`
- **Assignments:** `/wwwroot/uploads/assignments/`
- **Submissions:** `/wwwroot/uploads/submissions/`

## 🔐 Default Admin Account

After running migrations, create admin account via registration:
- Navigate to `/Account/Register`
- Select Role: Admin
- Fill in details and register

## 📊 System Diagrams

### 🗺️ Architecture & Database Diagrams
- **[📦 Combined Diagrams](DIAGRAMS.md)** - Class & ER Diagrams in one file
- **[Class Diagram](docs/class-diagram.md)** - Object-Oriented view of system entities
- **[ER Diagram](docs/er-diagram.md)** - Database schema with relationships

**Export to PNG/PDF:**
```powershell
# Run this script to generate PNG files
.\export-diagrams-to-png.ps1
```
Or follow the manual export guide in [DIAGRAMS.md](DIAGRAMS.md#how-to-export-as-pngpdf)

---

## 📊 Key Features Implementation

### 1. File Upload System
- Supports PDF, PPT, DOC, DOCX
- Unique filename generation (GUID)
- Secure server-side storage
- Download functionality

### 2. Q&A Forum
- Thread-based discussions
- Nested replies
- Accept answer feature
- Mark question as resolved

### 3. Assignment Workflow
```
Teacher creates assignment
    ↓
Students submit work
    ↓
Teacher evaluates
    ↓
Students view feedback & marks
```

### 4. Performance Tracking
- Student-wise submission count
- Average marks calculation
- Course-wise performance
- Teacher evaluation metrics

## 🎯 Future Enhancements

- [ ] Real-time notifications (SignalR)
- [ ] Video lecture streaming
- [ ] Online quiz system
- [ ] Discussion forums with likes/comments
- [ ] Mobile responsive design
- [ ] Email notifications
- [ ] File preview (PDF viewer)
- [ ] Attendance tracking
- [ ] Chat between students/teachers

## 📝 Database Migrations

### Create new migration:
```powershell
dotnet ef migrations add MigrationName
```

### Apply migration:
```powershell
dotnet ef database update
```

### Remove last migration:
```powershell
dotnet ef migrations remove
```

## 🐛 Troubleshooting

### Database connection issues
- Ensure SQL Server is running
- Check connection string in `appsettings.json`
- Verify LocalDB is installed

### File upload issues
- Check folder permissions for `wwwroot/uploads/`
- Verify `IWebHostEnvironment` is injected

### Build errors
- Clean and rebuild: `dotnet clean && dotnet build`
- Check NuGet package versions

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Support

For issues or questions:
- Check existing GitHub issues
- Create new issue with detailed description
- Include error logs and screenshots

## 🌟 Acknowledgments

- ASP.NET Core Team for the amazing framework
- Entity Framework Core for ORM capabilities
- Bootstrap for responsive UI components
- MySQL and Pomelo for database support

## 👨‍💻 Development Team

**Project:** PSTU Blended Learning Center  
**Course:** CIT 221-222  
**Semester:** 4th Semester  
**Academic Year:** 2025

**Lead Developer:** [Arman11217](https://github.com/Arman11217)

---

Made with ❤️ for education

## 📜 License

This project is developed for academic purposes.

---

**Built with ❤️ using ASP.NET Core MVC**
