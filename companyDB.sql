CREATE DATABASE CompanyDB;
USE CompanyDB;

-- Table 1: Employees
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone BIGINT,
    salary DECIMAL(10,2),
    department VARCHAR(50)
);

INSERT INTO Employees VALUES (1,'Ravi',28,'Male','ravi@gmail.com',9876000000,40000,'IT');

-- Table 2: Departments
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50),
    manager VARCHAR(50),
    budget DECIMAL(12,2),
    employees_count INT,
    established_year INT,
    status VARCHAR(20)
);

INSERT INTO Departments VALUES (10,'IT','Hyderabad','Suresh',1000000,50,2010,'Active');

-- Table 3: Projects
CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    client_name VARCHAR(50),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(12,2),
    status VARCHAR(20),
    team_size INT
);

INSERT INTO Projects VALUES (1001,'AI Project','Google','2025-01-01','2025-12-31',500000,'Ongoing',10);

-- Table 4: Attendance
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    emp_id INT,
    date DATE,
    status VARCHAR(10),
    check_in TIME,
    check_out TIME,
    work_hours DECIMAL(5,2),
    remarks VARCHAR(100)
);

INSERT INTO Attendance VALUES (1,1,'2025-04-01','Present','09:00:00','17:00:00',8,'On time');

-- Table 5: Payroll
CREATE TABLE Payroll (
    payroll_id INT PRIMARY KEY,
    emp_id INT,
    basic_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    deductions DECIMAL(10,2),
    net_salary DECIMAL(10,2),
    pay_date DATE,
    payment_mode VARCHAR(20)
);

INSERT INTO Payroll VALUES (1,1,40000,5000,2000,43000,'2025-04-05','Bank Transfer');