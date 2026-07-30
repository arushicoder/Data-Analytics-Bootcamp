CREATE DATABASE school_db2;
USE school_db2;


-- 2. Create Table

CREATE TABLE teachers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    subject VARCHAR(50) DEFAULT 'Math',
    salary INT
);

-- 3. Insert 5 Records

INSERT INTO teachers (name, email, subject, salary) VALUES
('Rahul', 'rahul@gmail.com', 'Math', 30000),
('Rina', 'rina@gmail.com', 'English', 25000),
('Amit', 'amit@gmail.com', 'Science', 40000),
('Suman', 'suman@gmail.com', 'Math', 20000),
('Rakesh', 'rakesh@gmail.com', 'English', 35000);




-- 4. Show Unique Subjects
SELECT DISTINCT subject FROM teachers;

-- 5. Sort By Salary 

SELECT * FROM teachers
ORDER BY salary DESC;

-- 6. Show First 3 Rows
SELECT * FROM teachers
LIMIT 3;

-- 7. Names Starting With 'R'

SELECT * FROM teachers
WHERE name LIKE 'R%';

-- 8. Salary Between 20000 and 40000

SELECT * FROM teachers
WHERE salary BETWEEN 20000 AND 40000;

-- 9. Subject = Math or English

SELECT * FROM teachers
WHERE subject IN ('Math', 'English');


