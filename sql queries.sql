CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    department VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO Employee VALUES (1, 'Anil', 25, 30000, 'IT', 'Bangalore');
INSERT INTO Employee VALUES (2, 'Sunil', 30, 50000, 'HR', 'Mumbai');
INSERT INTO Employee VALUES (3, 'Ravi', 28, 45000, 'Finance', 'Delhi');
INSERT INTO Employee VALUES (4, 'Kiran', 35, 60000, 'IT', 'Chennai');
INSERT INTO Employee VALUES (5, 'Meena', 22, 25000, 'HR', 'Hyderabad');

INSERT INTO Employee VALUES (6, 'Arun', 40, 70000, 'Finance', 'Bangalore');
INSERT INTO Employee VALUES (7, 'Sita', 27, 38000, 'IT', 'Mumbai');
INSERT INTO Employee VALUES (8, 'Geeta', 32, 52000, 'HR', 'Delhi');
INSERT INTO Employee VALUES (9, 'Rahul', 29, 48000, 'Finance', 'Chennai');
INSERT INTO Employee VALUES (10, 'Priya', 26, 41000, 'IT', 'Hyderabad');

INSERT INTO Employee VALUES (11, 'Amit', 31, NULL, 'HR', 'Bangalore');
INSERT INTO Employee VALUES (12, 'Neha', 24, 35000, 'Finance', NULL);
INSERT INTO Employee VALUES (13, 'Ramesh', 45, 80000, 'IT', 'Mumbai');
INSERT INTO Employee VALUES (14, 'Sneha', 23, 27000, 'HR', 'Delhi');
INSERT INTO Employee VALUES (15, 'Vikas', 34, 55000, 'Finance', 'Chennai');

#comparison operators(>,<,<=,>=,!=)
-- Greater than
SELECT * FROM Employee WHERE salary > 50000;

-- Less than
SELECT * FROM Employee WHERE age < 25;

-- Greater than or equal
SELECT * FROM Employee WHERE salary >= 30000;

-- Less than or equal
SELECT * FROM Employee WHERE age <= 40;

-- Not equal
SELECT * FROM Employee WHERE department != 'HR';

#logical operators(AND,OR,NOT)
-- AND
SELECT * FROM Employee WHERE salary > 30000 AND department = 'IT';

-- OR
SELECT * FROM Employee WHERE department = 'HR' OR department = 'Finance';

-- NOT
SELECT * FROM Employee WHERE NOT city = 'Bangalore';

-- AND with multiple conditions
SELECT * FROM Employee WHERE age > 25 AND salary < 60000;

-- OR with different columns
SELECT * FROM Employee WHERE city = 'Delhi' OR salary > 70000;

#3.IN, NOT IN
-- IN
SELECT * FROM Employee WHERE department IN ('HR', 'IT');

-- IN with numbers
SELECT * FROM Employee WHERE age IN (25, 30, 35);

-- IN with city
SELECT * FROM Employee WHERE city IN ('Mumbai', 'Chennai');

-- NOT IN
SELECT * FROM Employee WHERE department NOT IN ('HR', 'Finance');

-- NOT IN with IDs
SELECT * FROM Employee WHERE emp_id NOT IN (1, 2, 3);

#4.IS,NOT IS
-- IS NULL
SELECT * FROM Employee WHERE salary IS NULL;

-- IS NOT NULL
SELECT * FROM Employee WHERE salary IS NOT NULL;

-- Check NULL in city
SELECT * FROM Employee WHERE city IS NULL;

-- Check NOT NULL in department
SELECT * FROM Employee WHERE department IS NOT NULL;

-- Combine IS NULL
SELECT * FROM Employee WHERE city IS NULL OR department IS NULL;

#5.LIKE, NOT LIKE
-- Starts with 'A'
SELECT * FROM Employee WHERE name LIKE 'A%';

-- Ends with 'n'
SELECT * FROM Employee WHERE name LIKE '%n';

-- Contains 'ra'
SELECT * FROM Employee WHERE name LIKE '%ra%';

-- NOT LIKE
SELECT * FROM Employee WHERE name NOT LIKE 'S%';

-- Pattern with underscore
SELECT * FROM Employee WHERE name LIKE '_a%';

#6.BETWEEN, NOT BETWEEN
-- BETWEEN salary
SELECT * FROM Employee WHERE salary BETWEEN 30000 AND 60000;

-- BETWEEN age
SELECT * FROM Employee WHERE age BETWEEN 20 AND 35;

-- BETWEEN emp_id
SELECT * FROM Employee WHERE emp_id BETWEEN 5 AND 15;

-- NOT BETWEEN salary
SELECT * FROM Employee WHERE salary NOT BETWEEN 40000 AND 80000;

-- NOT BETWEEN age
SELECT * FROM Employee WHERE age NOT BETWEEN 25 AND 30;

