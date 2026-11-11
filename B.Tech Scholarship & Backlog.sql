CREATE DATABASE IF NOT EXISTS btech_analytics;
USE btech_analytics;

-- 1. Students Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(50),
    branch VARCHAR(10),
    study_year INT,
    attendance_pct DECIMAL(5,2)
);

-- 2. Academics & Supplies Table
CREATE TABLE academics (
    record_id INT PRIMARY KEY,
    student_id INT,
    sgpa DECIMAL(4,2),
    active_supplies INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- 3. Scholarships Table
CREATE TABLE scholarships (
    scholarship_id INT PRIMARY KEY,
    student_id INT,
    scheme_name VARCHAR(30),
    amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Sample Data Insertion (1st to 4th Year Mix)
INSERT INTO students VALUES
(101, 'Ravi Teja', 'CSE', 4, 82.50),
(102, 'Sneha Reddy', 'ECE', 3, 91.00),
(103, 'Kiran Kumar', 'MECH', 2, 68.00),
(104, 'Ananya Rao', 'CSE', 1, 88.50),
(105, 'Vikram Rathod', 'CIVIL', 4, 74.00),
(106, 'Pooja Sharma', 'ECE', 2, 79.50),
(107, 'Arjun Varma', 'CSE', 3, 62.00),
(108, 'Divya Sri', 'IT', 4, 94.00);

INSERT INTO academics VALUES
(1, 101, 7.20, 2),
(2, 102, 8.90, 0),
(3, 103, 5.80, 4),
(4, 104, 8.50, 0),
(5, 105, 6.40, 3),
(6, 106, 7.80, 1),
(7, 107, 5.50, 5),
(8, 108, 9.40, 0);

INSERT INTO scholarships VALUES
(501, 101, 'State Reimbursement', 35000.00, 'Paid'),
(502, 102, 'Merit Scholarship', 50000.00, 'Paid'),
(503, 103, 'State Reimbursement', 35000.00, 'On-Hold'),
(504, 104, 'State Reimbursement', 35000.00, 'Paid'),
(505, 105, 'State Reimbursement', 35000.00, 'Paid'),
(506, 107, 'State Reimbursement', 35000.00, 'Pending');
