# Installation Guide

## Prerequisites

Before you begin, ensure you have the following installed:

- [.NET 9.0 SDK](https://dotnet.microsoft.com/download/dotnet/9.0)
- [MySQL 8.0+](https://dev.mysql.com/downloads/)
- [Visual Studio 2022](https://visualstudio.microsoft.com/) or [VS Code](https://code.visualstudio.com/)
- Git

## Step-by-Step Installation

### 1. Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/PBLC.git
cd PBLC
```

### 2. Configure Database Connection

Copy the template configuration file:

```bash
# Copy appsettings template
cp src/PBLC.Web/appsettings.json.template src/PBLC.Web/appsettings.json
cp src/PBLC.Web/appsettings.Development.json.template src/PBLC.Web/appsettings.Development.json
```

Edit `src/PBLC.Web/appsettings.json` and update the connection string:

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=localhost;Database=pblc_db;User=YOUR_USERNAME;Password=YOUR_PASSWORD;"
  }
}
```

### 3. Create Database

Option A: Using MySQL Workbench or Command Line
```sql
CREATE DATABASE pblc_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

Option B: Import the provided SQL file
```bash
mysql -u YOUR_USERNAME -p pblc_db < pblc_database.sql
```

### 4. Restore Dependencies

```bash
dotnet restore
```

### 5. Apply Database Migrations

```bash
cd src/PBLC.Web
dotnet ef database update
```

### 6. Run the Application

```bash
dotnet run
```

The application will be available at: `https://localhost:5001` or `http://localhost:5000`

## Default Login Credentials

After importing the database, you can use these default credentials:

**Admin Account:**
- Username: `admin`
- Password: `admin123`

**Teacher Account:**
- Username: `teacher1`
- Password: `teacher123`

**Student Account:**
- Username: `student1`
- Password: `student123`

⚠️ **Important:** Change these passwords immediately after first login!

## Troubleshooting

### Database Connection Failed
- Verify MySQL is running: `systemctl status mysql` (Linux) or check Services (Windows)
- Check your connection string credentials
- Ensure the database exists

### Migration Errors
- Delete `Migrations` folder and recreate: `dotnet ef migrations add InitialCreate`
- Update database: `dotnet ef database update`

### Port Already in Use
Edit `src/PBLC.Web/Properties/launchSettings.json` and change the port numbers.

### Missing Packages
Run `dotnet restore` in the solution root directory.

## Next Steps

- Read the [User Manual](USER_MANUAL.md)
- Check [Technical Documentation](TECHNICAL_DOCUMENTATION.md)
- Review [Contributing Guidelines](CONTRIBUTING.md)

## Need Help?

- Check [GitHub Issues](https://github.com/YOUR_USERNAME/PBLC/issues)
- Read [FAQ](DATABASE_SETUP.md)
- Create a new issue with your problem
