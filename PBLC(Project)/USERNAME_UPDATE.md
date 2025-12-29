# Username-Based Login Update

## Changes Made

This update changes the login system from **email-based** to **username-based** authentication while keeping email for unique identification.

### What's New:

1. **Registration Changes:**
   - ✅ New "Username" field added (3-50 characters)
   - ✅ Username can only contain letters, numbers, and underscores
   - ✅ Username is unique across the system
   - ✅ Email remains unique (one email = one account)
   - ✅ Both username and email must be unique

2. **Login Changes:**
   - ✅ Users now login with **Username** instead of Email
   - ✅ Password remains the same
   - ✅ Login page updated with Username field

3. **Validation Rules:**
   - Username: 3-50 characters, alphanumeric + underscore only
   - Email: Must end with @pstu.ac.bd (PSTU domain validation still active)
   - One email can only register ONE account
   - Each username must be unique

### Updated Test Accounts:

| Role | Username | Password | Email |
|------|----------|----------|-------|
| 👨‍💼 Admin | `admin` | `Admin@123` | admin@pstu.ac.bd |
| 👨‍🏫 Teacher | `teacher` | `Teacher@123` | teacher@pstu.ac.bd |
| 👨‍🏫 Teacher | `karim` | `Teacher@123` | karim@pstu.ac.bd |
| 👨‍🎓 Student | `student` | `Student@123` | student@pstu.ac.bd |
| 👨‍🎓 Student | `fatima` | `Student@123` | fatima@pstu.ac.bd |
| 👨‍🎓 Student | `sabbir` | `Student@123` | sabbir@pstu.ac.bd |

### How to Update Existing Database:

If you have existing users in your database, run the following SQL script in phpMyAdmin:

```sql
USE pblc_db;

-- Update usernames for existing test users
UPDATE AspNetUsers SET UserName = 'admin', NormalizedUserName = 'ADMIN' WHERE Email = 'admin@pstu.ac.bd';
UPDATE AspNetUsers SET UserName = 'teacher', NormalizedUserName = 'teacher' WHERE Email = 'teacher@pstu.ac.bd';
UPDATE AspNetUsers SET UserName = 'karim', NormalizedUserName = 'KARIM' WHERE Email = 'karim@pstu.ac.bd';
UPDATE AspNetUsers SET UserName = 'student', NormalizedUserName = 'student' WHERE Email = 'student@pstu.ac.bd';
UPDATE AspNetUsers SET UserName = 'fatima', NormalizedUserName = 'FATIMA' WHERE Email = 'fatima@pstu.ac.bd';
UPDATE AspNetUsers SET UserName = 'sabbir', NormalizedUserName = 'SABBIR' WHERE Email = 'sabbir@pstu.ac.bd';
```

Or run the provided SQL file:
```bash
mysql -u root -p pblc_db < update_usernames.sql
```

### Migration Applied:

```bash
dotnet ef migrations add AddUsernameSupport
dotnet ef database update
```

Migration: `20251018035641_AddUsernameSupport`

### Files Modified:

1. **Models:**
   - `LoginViewModel.cs` - Changed Email to Username field
   - `RegisterViewModel.cs` - Added Username field with validation

2. **Controllers:**
   - `AccountController.cs`:
     - Login: Find user by username instead of email
     - Register: Check both username and email uniqueness
     - Added duplicate email prevention

3. **Views:**
   - `Login.cshtml` - Username input instead of Email
   - `Register.cshtml` - Added Username field between Name and Email

4. **Database:**
   - `DbInitializer.cs` - Updated seed data with usernames

### Testing:

1. **Login Test:**
   ```
   Username: admin
   Password: Admin@123
   ✅ Should login successfully
   ```

2. **Registration Test:**
   ```
   Full Name: Test User
   Username: testuser
   Email: test@pstu.ac.bd
   Password: Test@123
   ✅ Should register successfully
   ```

3. **Duplicate Prevention Test:**
   - Try registering with existing username → ❌ Should fail
   - Try registering with existing email → ❌ Should fail

### Benefits:

- ✅ Easier login (users remember usernames better than emails)
- ✅ Email privacy (email not exposed during login)
- ✅ Still maintains email uniqueness (one email = one account)
- ✅ Professional username system
- ✅ Better user experience

### Notes:

- Old system: Users logged in with full email (e.g., `admin@pstu.ac.bd`)
- New system: Users login with username (e.g., `admin`)
- Email is still required and must be @pstu.ac.bd domain
- Both username and email are unique in the system

---

**Updated on:** October 18, 2025
**Version:** 1.1.0
