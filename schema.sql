-- ================================================
--   STUDENT MANAGEMENT SYSTEM — MySQL Schema
-- ================================================

CREATE DATABASE IF NOT EXISTS student_management;
USE student_management;

CREATE TABLE IF NOT EXISTS students (
    id          BIGINT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(100)   NOT NULL,
    email       VARCHAR(100)   NOT NULL UNIQUE,
    phone       VARCHAR(15),
    department  VARCHAR(100)   NOT NULL,
    year        INT            NOT NULL,
    gpa         DECIMAL(4,2)   DEFAULT 0.00,
    status      ENUM('ACTIVE','INACTIVE','GRADUATED') DEFAULT 'ACTIVE',
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO students (name, email, phone, department, year, gpa, status) VALUES
('Arjun Sharma',  'arjun@student.com',  '9876543210', 'Computer Science', 2, 8.50, 'ACTIVE'),
('Priya Patel',   'priya@student.com',  '9876543211', 'Electronics',       3, 9.10, 'ACTIVE'),
('Rahul Kumar',   'rahul@student.com',  '9876543212', 'Mechanical',        1, 7.80, 'ACTIVE'),
('Sneha Reddy',   'sneha@student.com',  '9876543213', 'Civil',             4, 8.90, 'GRADUATED'),
('Vikram Singh',  'vikram@student.com', '9876543214', 'Computer Science',  3, 7.20, 'ACTIVE'),
('Anjali Nair',   'anjali@student.com', '9876543215', 'Electronics',       2, 9.50, 'ACTIVE'),
('Karan Mehta',   'karan@student.com',  '9876543216', 'Mechanical',        4, 6.80, 'INACTIVE');
