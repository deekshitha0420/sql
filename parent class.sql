#parent tables
#1.department
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE NOT NULL,
    location VARCHAR(50) NOT NULL,
    budget DECIMAL(10,2) CHECK (budget > 0),
    head_name VARCHAR(50),
    established_year INT CHECK (established_year > 1900),
    status VARCHAR(20) DEFAULT 'Active'
);
#insert 15 records
INSERT INTO Department VALUES
(1,'HR','Delhi',50000,'Ravi',2000,'Active'),
(2,'IT','Bangalore',150000,'Anil',2005,'Active'),
(3,'Finance','Mumbai',120000,'Suresh',1998,'Active'),
(4,'Sales','Chennai',90000,'Kiran',2003,'Active'),
(5,'Marketing','Pune',80000,'Meena',2007,'Active'),
(6,'Admin','Hyderabad',60000,'Raju',2001,'Active'),
(7,'Support','Kolkata',55000,'Arun',2004,'Active'),
(8,'Legal','Delhi',70000,'Vijay',2002,'Active'),
(9,'Security','Bangalore',45000,'Ajay',2006,'Active'),
(10,'R&D','Hyderabad',200000,'Kavya',2010,'Active'),
(11,'Training','Chennai',30000,'Divya',2012,'Active'),
(12,'Logistics','Mumbai',65000,'Rahul',2008,'Active'),
(13,'Procurement','Pune',50000,'Neha',2009,'Active'),
(14,'Operations','Delhi',110000,'Amit',2000,'Active'),
(15,'Audit','Bangalore',75000,'Nikhil',2011,'Active');
SELECT * FROM Department;

#2.Employee
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    salary DECIMAL(10,2) CHECK (salary > 0),
    dept_id INT,
    hire_date DATE,
    phone VARCHAR(15),
    status VARCHAR(20) DEFAULT 'Active',
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
#insert 15 records
INSERT INTO Employee VALUES
(1,'Asha','asha@gmail.com',30000,1,'2020-01-10','9999990001','Active'),
(2,'Rohan','rohan@gmail.com',40000,2,'2019-03-15','9999990002','Active'),
(3,'Neha','neha@gmail.com',35000,3,'2021-06-20','9999990003','Active'),
(4,'Kiran','kiran@gmail.com',45000,4,'2018-09-10','9999990004','Active'),
(5,'Vijay','vijay@gmail.com',38000,5,'2022-02-11','9999990005','Active'),
(6,'Anu','anu@gmail.com',42000,6,'2020-12-05','9999990006','Active'),
(7,'Raj','raj@gmail.com',39000,7,'2019-08-19','9999990007','Active'),
(8,'Meena','meena@gmail.com',41000,8,'2017-07-22','9999990008','Active'),
(9,'Arun','arun@gmail.com',37000,9,'2021-04-14','9999990009','Active'),
(10,'Divya','divya@gmail.com',46000,10,'2016-11-30','9999990010','Active'),
(11,'Amit','amit@gmail.com',50000,11,'2015-10-01','9999990011','Active'),
(12,'Rahul','rahul@gmail.com',33000,12,'2023-01-25','9999990012','Active'),
(13,'Pooja','pooja@gmail.com',36000,13,'2022-07-17','9999990013','Active'),
(14,'Nikhil','nikhil@gmail.com',47000,14,'2018-05-09','9999990014','Active'),
(15,'Sneha','sneha@gmail.com',39000,15,'2019-12-12','9999990015','Active');
SELECT * FROM Employee;

#3.Project
CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50) NOT NULL,
    budget DECIMAL(10,2),
    start_date DATE,
    end_date DATE,
    dept_id INT,
    manager_name VARCHAR(50),
    status VARCHAR(20) DEFAULT 'Ongoing',
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
#insert 15 records
INSERT INTO Project VALUES
(1,'Alpha',50000,'2023-01-01','2023-06-01',1,'Ravi','Ongoing'),
(2,'Beta',60000,'2023-02-01','2023-07-01',2,'Anil','Ongoing'),
(3,'Gamma',70000,'2023-03-01','2023-08-01',3,'Suresh','Ongoing'),
(4,'Delta',80000,'2023-04-01','2023-09-01',4,'Kiran','Ongoing'),
(5,'Epsilon',90000,'2023-05-01','2023-10-01',5,'Meena','Ongoing'),
(6,'Zeta',55000,'2023-06-01','2023-11-01',6,'Raju','Ongoing'),
(7,'Eta',65000,'2023-07-01','2023-12-01',7,'Arun','Ongoing'),
(8,'Theta',75000,'2023-08-01','2024-01-01',8,'Vijay','Ongoing'),
(9,'Iota',85000,'2023-09-01','2024-02-01',9,'Ajay','Ongoing'),
(10,'Kappa',95000,'2023-10-01','2024-03-01',10,'Kavya','Ongoing'),
(11,'Lambda',45000,'2023-11-01','2024-04-01',11,'Divya','Ongoing'),
(12,'Mu',55000,'2023-12-01','2024-05-01',12,'Rahul','Ongoing'),
(13,'Nu',65000,'2024-01-01','2024-06-01',13,'Neha','Ongoing'),
(14,'Xi',75000,'2024-02-01','2024-07-01',14,'Amit','Ongoing'),
(15,'Omicron',85000,'2024-03-01','2024-08-01',15,'Nikhil','Ongoing');
SELECT * FROM Project;
SELECT e.emp_name, d.dept_name
FROM Employee e
JOIN Department d ON e.dept_id = d.dept_id;

#4.customer
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    phone VARCHAR(15),
    city VARCHAR(50),
    country VARCHAR(50),
    credit_limit DECIMAL(10,2) CHECK (credit_limit >= 0),
    status VARCHAR(20) DEFAULT 'Active'
);
#insert 15 records
INSERT INTO Customer VALUES
(1,'Ram','ram@gmail.com','9000000001','Delhi','India',5000,'Active'),
(2,'Shyam','shyam@gmail.com','9000000002','Mumbai','India',6000,'Active'),
(3,'Sita','sita@gmail.com','9000000003','Chennai','India',7000,'Active'),
(4,'Gita','gita@gmail.com','9000000004','Pune','India',8000,'Active'),
(5,'Ravi','ravi@gmail.com','9000000005','Hyderabad','India',9000,'Active'),
(6,'Mohan','mohan@gmail.com','9000000006','Kolkata','India',4000,'Active'),
(7,'Radha','radha@gmail.com','9000000007','Delhi','India',3000,'Active'),
(8,'Krishna','krishna@gmail.com','9000000008','Mumbai','India',2000,'Active'),
(9,'Arjun','arjun@gmail.com','9000000009','Chennai','India',1000,'Active'),
(10,'Kiran','kiran@gmail.com','9000000010','Pune','India',11000,'Active'),
(11,'Divya','divya@gmail.com','9000000011','Hyderabad','India',12000,'Active'),
(12,'Neha','neha@gmail.com','9000000012','Kolkata','India',13000,'Active'),
(13,'Amit','amit@gmail.com','9000000013','Delhi','India',14000,'Active'),
(14,'Rahul','rahul@gmail.com','9000000014','Mumbai','India',15000,'Active'),
(15,'Sneha','sneha@gmail.com','9000000015','Chennai','India',16000,'Active');
SELECT * FROM Customer;

