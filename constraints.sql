#create tables with constraints
-- 1. STUDENTS TABLE
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    city VARCHAR(50) DEFAULT 'Mumbai'
);
select * FROM Students;

-- 2. COURSES TABLE
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL UNIQUE,
    duration INT CHECK (duration > 0),
    fee DECIMAL(8,2) NOT NULL
);
SELECT * FROM Courses;

-- 3. FACULTY TABLE
CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    salary DECIMAL(10,2) CHECK (salary > 10000)
);
SELECT * FROM Faculty;

-- 4. ENROLLMENTS TABLE
CREATE TABLE Enrollments (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enroll_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
SELECT * FROM Enrollments;

-- 5. PAYMENTS TABLE
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    student_id INT,
    amount DECIMAL(8,2) CHECK (amount > 0),
    payment_mode VARCHAR(20) CHECK (payment_mode IN ('Cash', 'Card', 'UPI')),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
SELECT * FROM Payments;

#2. insert valid data
-- Students
INSERT INTO Students VALUES (1, 'Ravi', 'ravi@gmail.com', 20, 'Pune');
INSERT INTO Students (student_id, name, email, age) VALUES (2, 'Priya', 'priya@gmail.com', 22);

-- Courses
INSERT INTO Courses VALUES (101, 'Java', 6, 15000);
INSERT INTO Courses VALUES (102, 'SQL', 3, 8000);

-- Faculty
INSERT INTO Faculty VALUES (201, 'Amit', 'amit@gmail.com', 30000);
INSERT INTO Faculty VALUES (202, 'Neha', 'neha@gmail.com', 25000);

-- Enrollments
INSERT INTO Enrollments (enroll_id, student_id, course_id) VALUES (301, 1, 101);

-- Payments
INSERT INTO Payments VALUES (401, 1, 15000, 'UPI');

#3. constraint violations(testing errors)
#primary key violation
INSERT INTO Students VALUES (1, 'Duplicate', 'dup@gmail.com', 25, 'Delhi');

#not null violation
INSERT INTO Students (student_id, email, age) VALUES (3, 'test@gmail.com', 21);

#unique violation
INSERT INTO Students VALUES (4, 'Rahul', 'ravi@gmail.com', 23, 'Mumbai');

#check constraint violation
INSERT INTO Students VALUES (5, 'Kiran', 'kiran@gmail.com', 15, 'Mumbai');

#default check (no errors,uses default)
INSERT INTO Students (student_id, name, email, age) 
VALUES (6, 'Anita', 'anita@gmail.com', 21);

#foriegn key violation
INSERT INTO Enrollments VALUES (302, 99, 101);

#check on payments
INSERT INTO Payments VALUES (402, 1, -500, 'Cash');

#check (invalid payments mode)
INSERT INTO Payments VALUES (403, 1, 1000, 'Cheque');

