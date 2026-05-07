-- Create a new database for Class 5 practice
CREATE DATABASE class5_db;


-- Select the database
USE class5_db;


-- Create a sales table for practice
CREATE TABLE sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE
);


-- Insert sample records
INSERT INTO sales (customer_name, city, product, category, quantity, price, order_date)
VALUES
('Sahil', 'Kolkata', 'Laptop', 'Electronics', 1, 55000.00, '2025-01-10'),
('Riya', 'Delhi', 'Mouse', 'Electronics', 2, 700.00, '2025-01-12'),
('Rahim', 'Kolkata', 'Keyboard', 'Electronics', 1, 1200.00, '2025-01-15'),
('Ankita', 'Mumbai', 'Notebook', 'Stationery', 5, 80.00, '2025-01-18'),
('Arushi', 'Delhi', 'Pen', 'Stationery', 10, 20.00, '2025-01-20'),
('Ribani', 'Kolkata', 'Monitor', 'Electronics', 1, 12000.00, '2025-01-25');


-- View all data
SELECT * FROM sales;


-- CTE to show expensive products
WITH expensive_products AS (
    SELECT customer_name, product, price
    FROM sales
    WHERE price > 1000
)
SELECT * FROM expensive_products;

-- CTE with total sales amount
WITH sales_amount AS (
    SELECT customer_name, product, quantity, price, quantity * price AS total_amount
    FROM sales
)
SELECT * FROM sales_amount;


-- Create first table
CREATE TABLE online_customers (
    name VARCHAR(50)
);

-- Create second table
CREATE TABLE store_customers (
    name VARCHAR(50)
);

-- Insert data
INSERT INTO online_customers VALUES ('Sahil'), ('Riya'), ('Rahim');
INSERT INTO store_customers VALUES ('Riya'), ('Ankita'), ('Arushi');

-- Combine unique names from both tables
SELECT name FROM online_customers
UNION
SELECT name FROM store_customers;


-- Combine all names including duplicates
SELECT name FROM online_customers
UNION ALL
SELECT name FROM store_customers;

-- Union: Remove Duplicates
-- Union ALL : Keep Duplicates

-- Create a view for electronics products
CREATE VIEW electronics_view AS
SELECT customer_name, product, price
FROM sales
WHERE category = 'Electronics';

-- View data from the created view
SELECT * FROM electronics_view;


-- Show current date
SELECT CURDATE() AS today_date;

-- Show current time
SELECT CURTIME() AS current_time;

-- Show current date and time
SELECT NOW() AS current_date_time;

-- Show year from order_date
SELECT order_date, YEAR(order_date) AS year_value
FROM sales;

-- Show month from order_date
SELECT order_date, MONTH(order_date) AS month_value
FROM sales;

-- Show day from order_date
SELECT order_date, DAY(order_date) AS day_value
FROM sales;





-- Convert customer names to uppercase
SELECT customer_name, UPPER(customer_name) AS upper_name
FROM sales;


-- Convert customer names to lowercase
SELECT customer_name, LOWER(customer_name) AS lower_name
FROM sales;


-- Join customer name and city
SELECT CONCAT(customer_name, ' - ', city) AS full_info
FROM sales;


-- Remove extra spaces
SELECT TRIM('   MySQL Class   ') AS cleaned_text;


-- Classify products based on price
SELECT product, price,
CASE
    WHEN price >= 10000 THEN 'Expensive'
    WHEN price >= 1000 THEN 'Medium'
    ELSE 'Low Cost'
END AS price_category
FROM sales;


-- Show quantity status
SELECT product, quantity,
CASE
    WHEN quantity >= 5 THEN 'Bulk Order'
    ELSE 'Normal Order'
END AS order_type
FROM sales;


-- Give row number based on price descending
SELECT product, price,
ROW_NUMBER() OVER (ORDER BY price DESC) AS row_num
FROM sales;


-- Rank products by price
SELECT product, price,
RANK() OVER (ORDER BY price DESC) AS product_rank
FROM sales;


-- Create index on city column
CREATE INDEX idx_city
ON sales(city);



-- Create bank_accounts table
CREATE TABLE bank_accounts (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    balance DECIMAL(10,2)
);


-- Insert records
INSERT INTO bank_accounts VALUES
(1, 'Sahil', 5000.00),
(2, 'Riya', 3000.00);



-- Start transaction
START TRANSACTION;

-- Wrong update
UPDATE bank_accounts
SET balance = balance - 500
WHERE id = 1;

-- Cancel changes
ROLLBACK;

-- Start transaction
START TRANSACTION;

-- Deduct from Sahil
UPDATE bank_accounts
SET balance = balance - 1000
WHERE id = 1;

-- Add to Riya
UPDATE bank_accounts
SET balance = balance + 1000
WHERE id = 2;

-- Save changes permanently
COMMIT;
