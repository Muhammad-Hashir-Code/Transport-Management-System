# Transport Management System

A Java-based Transport Management System (Bus Registration System) built with Swing GUI for managing bus route registrations with separate dashboards for Administrators, Drivers, and Users.

## Features

- 🚌 **Multi-role Authentication**: Separate login interfaces for Admin, Driver, and User roles
- 🗺️ **Route Management**: Create, view, and manage bus routes with stops and schedules
- 📝 **Registration System**: Users can register for routes with payment tracking
- ✅ **Payment Verification**: Admin can verify user payments
- 🎫 **Voucher Generation**: PDF vouchers generated for confirmed registrations
- 📢 **Driver Updates**: Drivers can post updates about their routes
- 📊 **Statistics**: Revenue tracking and route popularity metrics
- 🔒 **Secure Password Storage**: Salted password hashing for user security

## Project Structure

```
src/busregistrationsystem/
├── Main.java                    # Application entry point
├── data/
│   └── DataManager.java         # Singleton data persistence manager
├── gui/
│   ├── StartPage.java           # Main login/start screen
│   ├── AdminDashboard.java      # Administrator interface
│   ├── DriverDashboard.java     # Driver interface
│   ├── UserDashboard.java       # User interface
│   └── ...                      # Other GUI components
├── model/
│   ├── Person.java              # Abstract base class
│   ├── Admin.java               # Administrator model
│   ├── User.java                # Regular user model
│   ├── Driver.java              # Driver model
│   ├── BusRoute.java            # Bus route model
│   └── Registration.java        # Registration model
└── util/
    ├── LogUtil.java             # Logging utility
    ├── PasswordUtil.java        # Password hashing utility
    └── PDFGenerator.java        # PDF voucher generation
```

## Getting Started

### Prerequisites

- Java JDK 8 or higher
- Java Swing (included with JDK)

### Running the Application

1. Clone this repository:
   ```bash
   git clone <repository-url>
   cd "Transport Management System"
   ```

2. Navigate to the source directory:
   ```bash
   cd "Final (2)/Final/Transport Management System Final/src"
   ```

3. Compile the Java files:
   ```bash
   javac busregistrationsystem/**/*.java
   ```

4. Run the application:
   ```bash
   java busregistrationsystem.Main
   ```

### First Run

On first run, the application will automatically create default data:
- Default admin account
- Default driver account
- 3 sample bus routes

> **⚠️ Security Note**: Default credentials are for demo purposes only. See [SECURITY.md](SECURITY.md) for important security information.

## Documentation

- **[INDEX.md](INDEX.md)** - Complete project index and file reference
- **[SECURITY.md](SECURITY.md)** - Security warnings and recommendations

## Default Routes

The system initializes with 3 default routes:
1. **Main Campus Route** - University Main Gate to Hostel Area
2. **City Route** - University Main Gate to City Center
3. **Express Route** - University Main Gate to Business District

## Technologies Used

- **Java Swing** - GUI framework
- **Java Serialization** - Data persistence
- **PDF Generation** - Voucher creation

## Data Persistence

- Data is stored in `data/` directory as binary `.dat` files
- Data files are automatically excluded from version control (see `.gitignore`)
- Application auto-saves after each modification
- Data is loaded on application startup

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This project is for educational/demonstration purposes.

## Security

⚠️ **Important**: This project contains hardcoded default credentials for demo purposes. These should be changed before any production deployment. See [SECURITY.md](SECURITY.md) for details.

---

For detailed project documentation, see [INDEX.md](INDEX.md).
