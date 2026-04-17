#child tables
#1.attendence
CREATE TABLE Attendance (
    att_id INT PRIMARY KEY,
    emp_id INT,
    att_date DATE,
    status VARCHAR(10) CHECK (status IN ('Present','Absent')),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);
INSERT INTO Attendance VALUES
(1,1,'2024-04-01','Present'),
(2,2,'2024-04-01','Absent'),
(3,3,'2024-04-01','Present'),
(4,4,'2024-04-01','Present'),
(5,5,'2024-04-01','Absent');
SELECT * FROM Attendence;

#2.salary
CREATE TABLE Salary (
    sal_id INT PRIMARY KEY,
    emp_id INT,
    amount DECIMAL(10,2),
    pay_date DATE,
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);
INSERT INTO Salary VALUES
(1,1,30000,'2024-03-31'),
(2,2,40000,'2024-03-31'),
(3,3,35000,'2024-03-31'),
(4,4,45000,'2024-03-31'),
(5,5,38000,'2024-03-31');
SELECT * FROM Salary;

#3.orders
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
INSERT INTO Orders VALUES
(1,1,'2024-04-01',500),
(2,2,'2024-04-01',700),
(3,3,'2024-04-01',900),
(4,4,'2024-04-01',1200),
(5,5,'2024-04-01',1500);
SELECT * FROM Orders;

#4.project_assignment
CREATE TABLE Project_Assignment (
    assign_id INT PRIMARY KEY,
    emp_id INT,
    project_id INT,
    role VARCHAR(50),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id),
    FOREIGN KEY (project_id) REFERENCES Project(project_id)
);
INSERT INTO Project_Assignment VALUES
(1,1,1,'Developer'),
(2,2,2,'Tester'),
(3,3,3,'Manager'),
(4,4,4,'Analyst'),
(5,5,5,'Designer');
SELECT * FROM Project_Assignment;
SELECT e.emp_name, d.dept_name
FROM Employee e
JOIN Department d ON e.dept_id = d.dept_id;

