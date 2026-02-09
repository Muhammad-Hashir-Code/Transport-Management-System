# Transport Management System - Project Index

## Project Overview
This is a Java-based **Transport Management System** (also referred to as **Bus Registration System**) built with Swing GUI. The system manages bus route registrations for users, with separate dashboards for Administrators, Drivers, and Users.

## Project Structure

```
Final (2)/
├── Final/
│   └── Transport Management System Final/
│       ├── src/
│       │   ├── Main.java (template/example file)
│       │   └── busregistrationsystem/
│       │       ├── Main.java                    # Application entry point
│       │       ├── data/
│       │       │   └── DataManager.java         # Singleton data persistence manager
│       │       ├── gui/
│       │       │   ├── StartPage.java           # Main login/start screen
│       │       │   ├── AdminDashboard.java      # Administrator interface
│       │       │   ├── DriverDashboard.java     # Driver interface
│       │       │   ├── UserDashboard.java        # User interface
│       │       │   ├── RegistrationForm.java    # Bus registration form
│       │       │   ├── RouteDisplay.java        # Route information display
│       │       │   └── RoundButton.java         # Custom rounded button component
│       │       ├── model/
│       │       │   ├── Person.java              # Abstract base class for all users
│       │       │   ├── Admin.java               # Administrator model
│       │       │   ├── User.java                # Regular user model
│       │       │   ├── Driver.java              # Driver model
│       │       │   ├── Client.java              # Client model
│       │       │   ├── BusRoute.java            # Bus route model
│       │       │   └── Registration.java        # Registration model
│       │       └── util/
│       │           ├── LogUtil.java             # Logging utility
│       │           ├── PasswordUtil.java        # Password hashing utility
│       │           └── PDFGenerator.java        # PDF voucher generation
│       ├── data/                                # Data persistence directory
│       │   ├── users.dat                        # Serialized user data
│       │   ├── admins.dat                       # Serialized admin data
│       │   ├── drivers.dat                      # Serialized driver data
│       │   ├── routes.dat                       # Serialized route data
│       │   └── registrations.dat                # Serialized registration data
│       ├── logs/
│       │   └── application.log                  # Application logs
│       └── vouchers/                             # Generated PDF vouchers
│           └── voucher_*.txt                    # Voucher files
└── FastLogo.png                                 # Application logo
```

## Entry Points

### Main Application Entry
- **File**: `Final (2)/Final/Transport Management System Final/src/busregistrationsystem/Main.java`
- **Description**: Launches the Swing application with the StartPage as the initial screen
- **Usage**: Run this class to start the application

## Core Components

### 1. Model Layer (`busregistrationsystem.model`)

#### Person (Abstract Base Class)
- **File**: `model/Person.java`
- **Purpose**: Base class for all user types (Admin, User, Driver)
- **Features**: 
  - Username/password management with hashing
  - Salt-based password security
  - Password verification

#### User Types
- **Admin** (`Admin.java`): System administrator with full access
- **User** (`User.java`): Regular user who can register for bus routes
- **Driver** (`Driver.java`): Bus driver with route assignments and update capabilities
- **Client** (`Client.java`): Client model (if applicable)

#### Business Models
- **BusRoute** (`BusRoute.java`): Represents a bus route with stops, timing, capacity
- **Registration** (`Registration.java`): User registration for a bus route with payment tracking

### 2. Data Layer (`busregistrationsystem.data`)

#### DataManager
- **File**: `data/DataManager.java`
- **Pattern**: Singleton
- **Responsibilities**:
  - Persistent data storage using Java serialization
  - User authentication
  - Route management
  - Registration management
  - Revenue tracking
  - Statistics generation
- **Data Files**: All stored in `data/` directory as `.dat` files

### 3. GUI Layer (`busregistrationsystem.gui`)

#### StartPage
- **File**: `gui/StartPage.java`
- **Purpose**: Main entry screen with role selection
- **Features**:
  - Animated slide-in panel
  - Login dialogs for Admin, Driver, and User
  - User signup functionality
  - Role-based authentication

#### Dashboards
- **AdminDashboard** (`AdminDashboard.java`): 
  - Route management
  - User management
  - Registration verification
  - Revenue tracking
  - Statistics

- **DriverDashboard** (`DriverDashboard.java`):
  - View assigned route
  - Post route updates
  - View registered passengers

- **UserDashboard** (`UserDashboard.java`):
  - Browse available routes
  - Register for routes
  - View registration history
  - Download vouchers

#### Supporting Components
- **RegistrationForm** (`RegistrationForm.java`): Form for bus route registration
- **RouteDisplay** (`RouteDisplay.java`): Display route information
- **RoundButton** (`RoundButton.java`): Custom rounded button with hover effects

### 4. Utility Layer (`busregistrationsystem.util`)

- **PasswordUtil** (`PasswordUtil.java`): Password hashing and verification
- **LogUtil** (`LogUtil.java`): Application logging
- **PDFGenerator** (`PDFGenerator.java`): Generate PDF vouchers for registrations

## Default Credentials

> **⚠️ SECURITY WARNING**: The application contains hardcoded default credentials for demo purposes only. These should be changed before any production deployment. See security warnings in the source code.

### Administrator
- Default credentials are hardcoded in `StartPage.java` and `DataManager.java`
- **⚠️ Change these before production use**

### Driver
- Default credentials are hardcoded in `StartPage.java` and `DataManager.java`
- **⚠️ Change these before production use**

### User
- Users must sign up through the registration form
- User data is stored securely with hashed passwords

## Data Persistence

The application uses Java serialization to persist data:
- **Location**: `data/` directory
- **Format**: Binary `.dat` files
- **Auto-save**: Data is saved automatically after each modification
- **Auto-load**: Data is loaded on application startup
- **⚠️ Note**: Data files are excluded from version control (see `.gitignore`). The application will create default data on first run if no data files exist.

## Default Routes

The system initializes with 3 default routes:
1. **Main Campus Route** (Route #1)
   - From: University Main Gate
   - To: Hostel Area
   - Time: 07:30 AM - 08:30 AM
   - Capacity: 50

2. **City Route** (Route #2)
   - From: University Main Gate
   - To: City Center
   - Time: 08:00 AM - 09:30 AM
   - Capacity: 40

3. **Express Route** (Route #3)
   - From: University Main Gate
   - To: Business District
   - Time: 07:00 AM - 08:15 AM
   - Capacity: 30

## Key Features

1. **Multi-role Authentication**: Separate login for Admin, Driver, and User
2. **Route Management**: Create, view, and manage bus routes
3. **Registration System**: Users can register for routes with payment tracking
4. **Payment Verification**: Admin can verify user payments
5. **Voucher Generation**: PDF vouchers generated for confirmed registrations
6. **Driver Updates**: Drivers can post updates about their routes
7. **Statistics**: Revenue tracking and route popularity metrics
8. **Secure Password Storage**: Salted password hashing

## Build Output

Compiled classes are located in:
- `out/production/Transport Management System/`

## Dependencies

- Java Swing (GUI)
- Java Serialization (Data persistence)
- PDF generation library (for vouchers)

## Running the Application

1. Navigate to the source directory
2. Compile all Java files
3. Run `busregistrationsystem.Main`
4. The StartPage will appear with role selection options

## File Locations Quick Reference

| Component | File Path |
|-----------|-----------|
| Main Entry | `Final (2)/Final/Transport Management System Final/src/busregistrationsystem/Main.java` |
| Data Manager | `Final (2)/Final/Transport Management System Final/src/busregistrationsystem/data/DataManager.java` |
| Start Page | `Final (2)/Final/Transport Management System Final/src/busregistrationsystem/gui/StartPage.java` |
| Admin Dashboard | `Final (2)/Final/Transport Management System Final/src/busregistrationsystem/gui/AdminDashboard.java` |
| User Model | `Final (2)/Final/Transport Management System Final/src/busregistrationsystem/model/User.java` |
| Route Model | `Final (2)/Final/Transport Management System Final/src/busregistrationsystem/model/BusRoute.java` |
| Data Directory | `Final (2)/Final/Transport Management System Final/data/` |

## Notes

- The project uses a singleton pattern for DataManager to ensure single instance
- All passwords are hashed using salt for security
- Data is automatically saved after each modification
- The GUI uses custom RoundButton components for modern UI
- Application logs are stored in `logs/application.log`
