# Security Notes

## ⚠️ Important Security Warnings

This project contains **hardcoded default credentials** for demonstration purposes only. These should **NEVER** be used in a production environment.

### Hardcoded Credentials Found

1. **Administrator Credentials**
   - Location: `StartPage.java` (line ~268) and `DataManager.java` (line ~67)
   - Username: `admin`
   - Password: `admin123`
   - **Action Required**: Remove hardcoded check and use DataManager authentication

2. **Driver Credentials**
   - Location: `StartPage.java` (line ~274), `DataManager.java` (line ~83), and `DriverDashboard.java` (line ~29)
   - Username: `driver1`
   - Password: `driver123`
   - **Action Required**: Remove hardcoded credentials and ensure drivers are loaded from database

### Recommendations for Production

1. **Remove Hardcoded Credentials**
   - Replace hardcoded authentication in `StartPage.java` with `DataManager` authentication methods
   - Remove fallback driver creation in `DriverDashboard.java`
   - Ensure all authentication goes through `DataManager`

2. **Change Default Admin Password**
   - Modify `initializeDefaultData()` in `DataManager.java` to use a secure default password
   - Or remove default admin creation and require manual setup

3. **Environment Variables**
   - Consider moving default credentials to environment variables or configuration files
   - Add configuration files to `.gitignore` if they contain sensitive data

4. **Password Policy**
   - Implement stronger password requirements
   - Add password complexity validation

5. **Data Files**
   - All `.dat` files are excluded from version control (see `.gitignore`)
   - Never commit data files containing real user information
   - Log files are also excluded

## Files Excluded from Version Control

The following file types are excluded via `.gitignore`:
- `*.dat` - All data files (users, admins, drivers, routes, registrations)
- `*.log` - Log files
- `voucher_*.txt` - Voucher files containing user information
- `out/` - Compiled class files
- IDE configuration files

## What Happens When Data Files Are Removed

When you remove the data files (`.dat` files):

1. **First Run Behavior**: 
   - The application will detect that no data files exist
   - `DataManager.initializeDefaultData()` will be called automatically
   - Default admin, driver, and routes will be created
   - New `.dat` files will be generated in the `data/` directory

2. **User Experience**:
   - Users will need to sign up again (no existing user accounts)
   - Default admin/driver credentials will work (as hardcoded)
   - Default routes will be available

3. **Recommendation**:
   - This is safe for a public repository since the data is hypothetical
   - Users cloning the repo will get a fresh start with default demo data
   - They can test the application immediately without needing to create initial data

## Safe for Public Repository

✅ **Safe to commit:**
- Source code (with security warnings added)
- `.gitignore` file
- Documentation files
- Image assets (logos, etc.)

❌ **Never commit:**
- `.dat` files (user/admin/driver data)
- `.log` files (may contain sensitive info)
- Voucher files (contain user registration data)
- Any files with real user information
