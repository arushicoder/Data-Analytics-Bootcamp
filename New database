CREATE DATABASE geoinformatics;
USE geoinformatics;


-- 1.Create table

CREATE TABLE cities (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(50),
    state_name VARCHAR(50),
    population INT,
    rainfall FLOAT
);


-- 2.Insert 4 records

INSERT INTO cities
VALUES
(1, 'Kolkata', 'West Bengal', 14850000, 1582.0),
(2, 'Delhi', 'Delhi', 32900000, 800.0),
(3, 'Mumbai', 'Maharashtra', 21600000, 2420.0),
(4, 'Chennai', 'Tamil Nadu', 11300000, 1400.0);


-- 3.Select all

SELECT * FROM cities;

-- 4.Salary higher than 15000000

SELECT * FROM cities
WHERE population > 15000000;


-- View all data

SELECT COUNT(*) AS total_cities
FROM cities;

-- Average of datas

SELECT AVG(rainfall) AS average_rainfall
FROM cities;


-- Modify data in the cities table

UPDATE cities
SET rainfall = 1600
WHERE city_name = 'Kolkata';

-- To remove rows (records/data) from a table

DELETE FROM cities
WHERE city_id = 4;


-- To completely remove a table from the database
DROP TABLE cities;

-- Create another database

SELECT students.name, courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.course_id;

-- Join data on left table with keeping all same in right table

SELECT students.name, courses.course_name
FROM students
LEFT JOIN courses
ON students.course_id = courses.course_id;

-- Join data on right table with keeping all same in left table


SELECT students.name, courses.course_name
FROM students
RIGHT JOIN courses
ON students.course_id = courses.course_id;

-- Inset data
INSERT INTO students
VALUES
(1, 'Arushi', 101),
(2, 'Rahul', 102),
(3, 'Sneha', 103);

-- Insert the courses

INSERT INTO courses
VALUES
(101, 'GIS'),
(102, 'Python'),
(103, 'Remote Sensing');

-- Create a new data table

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert values into it

INSERT INTO employees
VALUES
(1, 'Arushi', 50000, 'GIS'),
(2, 'Rahul', 45000, 'IT'),
(3, 'Sneha', 60000, 'Data Science');

-- View all data

SELECT * FROM employees;

-- Salary higher than 50000

SELECT * FROM employees
WHERE salary > 50000;

-- Data shoulbe be sorted in descending order
SELECT * FROM employees
ORDER BY salary DESC;


-- Show only unique values and remove duplicates

SELECT DISTINCT department
FROM employees;

-- Modify data

UPDATE employees
SET salary = 70000
WHERE emp_id = 1;

-- Delete

DELETE FROM employees
WHERE emp_id = 2;


-- View all data

SELECT COUNT(*) AS total_employees
FROM employees;


-- Find the average

SELECT AVG(salary) AS average_salary
FROM employees;

-- To find the maximum salary

SELECT MAX(salary) AS highest_salary
FROM employees;


-- To find the minimum salary

SELECT MIN(salary) AS lowest_salary
FROM employees;

-- To group all the data on the table

SELECT department, COUNT(*) AS total
FROM employees
GROUP BY department;


-- To filter data after grouping

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

-- Show all employees whose names start with the letter A

SELECT * FROM employees
WHERE emp_name LIKE 'A%';


-- To find employees whose salary is between 40000 and 70000

SELECT * FROM employees
WHERE salary BETWEEN 40000 AND 70000;

-- To find employees whose department is in GIS and IT

SELECT * FROM employees
WHERE department IN ('GIS', 'IT');

-- To change the structure of an existing table

ALTER TABLE employees
ADD age INT;

-- Delete all

DROP TABLE employees;




