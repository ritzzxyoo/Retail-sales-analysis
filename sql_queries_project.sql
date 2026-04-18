CREATE DATABASE sales_db;
USE sales_db;

CREATE TABLE sales (
    order_id INT,
    order_date DATE,
    city VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price INT
    );
INSERT INTO sales VALUES
(1001,'2025-01-10','Pune','Laptop','Electronics',2,50000),
(1002,'2025-01-11','Mumbai','Mobile','Electronics',3,20000),
(1005,'2025-01-14','Mumbai','Laptop','Electronics',1,50000),
(1003,'2025-01-12','Pune','Headphones','Accessories',5,2000),
(1004,'2025-01-13','Nagpur','Keyboard','Accessories',4,1500);

SELECT  * FROM sales;

SELECT SUM(quantity * price) AS total_revenue 
FROM sales;

SELECT product, SUM(quantity) AS total_qty
FROM sales
GROUP BY product
ORDER BY total_qty DESC
LIMIT 1;

SELECT city, SUM(quantity * price) AS revenue
FROM sales
GROUP BY city;

SELECT category, SUM(quantity * price) AS revenue
FROM sales
GROUP BY category;

SELECT *
FROM sales
ORDER BY (quantity * price) DESC
LIMIT 1;

SELECT AVG(price) AS avg_price 
FROM sales;