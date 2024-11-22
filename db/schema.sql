CREATE TABLE Field (
                       field_code VARCHAR(50) PRIMARY KEY,
                       field_name VARCHAR(255) NOT NULL,
                       field_location POINT NOT NULL,
                       extent DOUBLE NOT NULL,
                       crops TEXT,
                       staff TEXT,
                       field_image1 LONGTEXT,
                       field_image2 LONGTEXT
);
CREATE TABLE Crop (
                      crop_code VARCHAR(50) PRIMARY KEY,
                      crop_common_name VARCHAR(255) NOT NULL,
                      crop_scientific_name VARCHAR(255),
                      crop_image LONGTEXT,
                      category VARCHAR(255),
                      crop_season VARCHAR(255),
                      field_code VARCHAR(50),
                      FOREIGN KEY (field_code) REFERENCES Field(field_code) ON DELETE SET NULL
);
CREATE TABLE Staff (
                       id VARCHAR(50) PRIMARY KEY,
                       first_name VARCHAR(255) NOT NULL,
                       last_name VARCHAR(255) NOT NULL,
                       designation ENUM('Manager', 'Worker', 'Supervisor') NOT NULL,
                       gender ENUM('Male', 'Female', 'Other') NOT NULL,
                       joined_date DATE,
                       dob DATE,
                       address_line_1 VARCHAR(255),
                       address_line_2 VARCHAR(255),
                       address_line_3 VARCHAR(255),
                       address_line_4 VARCHAR(255),
                       address_line_5 VARCHAR(10),
                       contact_no VARCHAR(15),
                       email VARCHAR(255),
                       role ENUM('Manager', 'Administrative', 'Scientist', 'Other') NOT NULL,
                       fields TEXT,
                       vehicles TEXT
);
CREATE TABLE MonitoringLogService (
                                      log_code VARCHAR(50) PRIMARY KEY,
                                      log_date DATE NOT NULL,
                                      log_details TEXT,
                                      observed_image LONGTEXT,
                                      fields TEXT,
                                      crops TEXT,
                                      staff TEXT
);
CREATE TABLE Vehicle (
                         vehicle_code VARCHAR(50) PRIMARY KEY,
                         license_plate_number VARCHAR(20) UNIQUE NOT NULL,
                         vehicle_category VARCHAR(50),
                         fuel_type VARCHAR(50),
                         status ENUM('Available', 'Out of service') DEFAULT 'Available',
                         allocated_staff VARCHAR(50),
                         remarks TEXT,
                         FOREIGN KEY (allocated_staff) REFERENCES Staff(id) ON DELETE SET NULL
);
CREATE TABLE Equipment (
                           equipment_id VARCHAR(50) PRIMARY KEY,
                           name VARCHAR(255) NOT NULL,
                           type ENUM('Electrical', 'Mechanical'),
                           status ENUM('Available', 'Unavailable'),
                           assigned_staff VARCHAR(50),
                           assigned_field VARCHAR(50),
                           FOREIGN KEY (assigned_staff) REFERENCES Staff(id) ON DELETE SET NULL,
                           FOREIGN KEY (assigned_field) REFERENCES Field(field_code) ON DELETE SET NULL
);
CREATE TABLE UserService (
                             email VARCHAR(255) PRIMARY KEY,
                             password VARCHAR(255) NOT NULL,
                             role ENUM('MANAGER', 'ADMINISTRATIVE', 'SCIENTIST', 'OTHER') NOT NULL
);
CREATE TABLE Users (
                       user_id INT AUTO_INCREMENT PRIMARY KEY,
                       email VARCHAR(255) NOT NULL UNIQUE,
                       first_name VARCHAR(100),
                       last_name VARCHAR(100),
                       birth_date DATE,
                       nic VARCHAR(50),
                       password_hash VARCHAR(255) NOT NULL,
                       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
