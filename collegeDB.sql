CREATE DATABASE CollegeDB;
USE CollegeDB;

-- Table 1: Students
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone BIGINT,
    address VARCHAR(150),
    course VARCHAR(50)
);

INSERT INTO Students VALUES (1,'Rahul',20,'Male','rahul@gmail.com',9876543210,'Bangalore','BCA');

-- Table 2: Teachers
CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    email VARCHAR(100),
    phone BIGINT,
    salary DECIMAL(10,2),
    department VARCHAR(50)
);

INSERT INTO Teachers VALUES (101,'Anita','Math',10,'anita@gmail.com',9876500000,50000,'Science');

-- Table 3: Courses
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    duration VARCHAR(20),
    fees DECIMAL(10,2),
    department VARCHAR(50),
    level VARCHAR(20),
    start_date DATE,
    end_date DATE
);

INSERT INTO Courses VALUES (201,'BCA','3 Years',60000,'CS','UG','2024-06-01','2027-05-30');

-- Table 4: Exams
CREATE TABLE Exams (
    exam_id INT PRIMARY KEY,
    exam_name VARCHAR(50),
    date DATE,
    subject VARCHAR(50),
    total_marks INT,
    passing_marks INT,
    duration VARCHAR(20),
    semester INT
);

INSERT INTO Exams VALUES (301,'Mid Exam','2025-03-10','Math',100,40,'3 hours',2);

-- Table 5: Library
CREATE TABLE Library (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    publisher VARCHAR(50),
    year INT,
    category VARCHAR(50),
    price DECIMAL(10,2),
    available BOOLEAN
);

INSERT INTO Library VALUES (401,'Java Basics','James','Pearson',2020,'Programming',500,TRUE);
