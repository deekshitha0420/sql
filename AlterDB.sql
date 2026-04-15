#create 5 tables(3 columns each)
CREATE DATABASE AlterDB;
USE AlterDB;

-- Table 1
CREATE TABLE Student(
    id INT,
    name VARCHAR(50),
    age INT
);

-- Table 2
CREATE TABLE Employee(
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT
);

-- Table 3
CREATE TABLE Product(
    pid INT,
    pname VARCHAR(50),
    price INT
);

-- Table 4
CREATE TABLE Orders(
    oid INT,
    customer VARCHAR(50),
    amount INT
);

-- Table 5
CREATE TABLE Department(
    dept_id INT,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

#alter operations add 3 columns(each table)
ALTER TABLE Student ADD (gender VARCHAR(10), city VARCHAR(50), marks INT);
ALTER TABLE Employee ADD (dept VARCHAR(50), experience INT, bonus INT);
ALTER TABLE Product ADD (category VARCHAR(50), stock INT, brand VARCHAR(50));
ALTER TABLE Orders ADD (date_order DATE, status VARCHAR(20), payment VARCHAR(20));
ALTER TABLE Department ADD (manager VARCHAR(50), budget INT, strength INT);

#drop 1 column
ALTER TABLE Student DROP COLUMN age;
ALTER TABLE Employee DROP COLUMN salary;
ALTER TABLE Product DROP COLUMN price;
ALTER TABLE Orders DROP COLUMN amount;
ALTER TABLE Department DROP COLUMN location;

#rename 2 columns
ALTER TABLE Student RENAME COLUMN name TO student_name;
ALTER TABLE Student RENAME COLUMN marks TO total_marks;

ALTER TABLE Employee RENAME COLUMN emp_name TO employee_name;
ALTER TABLE Employee RENAME COLUMN bonus TO emp_bonus;

ALTER TABLE Product RENAME COLUMN pname TO product_name;
ALTER TABLE Product RENAME COLUMN stock TO quantity;

ALTER TABLE Orders RENAME COLUMN customer TO customer_name;
ALTER TABLE Orders RENAME COLUMN payment TO payment_mode;

ALTER TABLE Department RENAME COLUMN dept_name TO department_name;
ALTER TABLE Department RENAME COLUMN manager TO dept_manager;

#modify 2 datatype
ALTER TABLE Student MODIFY total_marks FLOAT;
ALTER TABLE Student MODIFY gender CHAR(10);

ALTER TABLE Employee MODIFY experience FLOAT;
ALTER TABLE Employee MODIFY emp_bonus DOUBLE;

ALTER TABLE Product MODIFY quantity FLOAT;
ALTER TABLE Product MODIFY category VARCHAR(100);

ALTER TABLE Orders MODIFY status VARCHAR(50);
ALTER TABLE Orders MODIFY payment_mode VARCHAR(50);

ALTER TABLE Department MODIFY budget DOUBLE;
ALTER TABLE Department MODIFY strength FLOAT;
DESC Student;



#insert 15 records(4 methods)
#method 1:simple insert
INSERT INTO Student VALUES (1,'Asha','F','Hampi',85.5);
#method 2:column wise insert
INSERT INTO Student(id, student_name, gender, city, total_marks)
VALUES (2,'Ravi','M','Hospet',90.5);
#method 3:multiple row insert
INSERT INTO Student VALUES
(3,'John','M','Delhi',75.5),
(4,'Priya','F','Mumbai',88.0),
(5,'Arjun','M','Chennai',92.5);
#method 4:insert using select
INSERT INTO Student(id, student_name, gender, city, total_marks)
SELECT 6,'Kiran','M','Bangalore',80.0;
#add remaining records
INSERT INTO Student VALUES
(7,'Meena','F','Pune',78),
(8,'Raj','M','Hyderabad',82),
(9,'Divya','F','Mysore',91),
(10,'Karthik','M','Goa',74),
(11,'Sneha','F','Kerala',89),
(12,'Manoj','M','UP',67),
(13,'Anu','F','TN',95),
(14,'Ramesh','M','AP',70),
(15,'Pooja','F','MP',85);
SELECT * FROM Student;


#update 5 columns
UPDATE Student
SET student_name='UpdatedName',
    gender='M',
    city='UpdatedCity',
    total_marks=99.9,
    id=100
WHERE id=1;
SELECT * FROM Student WHERE id=100;


#delete specific row
DELETE FROM Student WHERE id=2;
SELECT * FROM Student;

#delete multiple rows
DELETE FROM Student WHERE total_marks < 75;
SELECT * FROM Student;

#delete all records
DELETE FROM Student;
SELECT * FROM Student;
