CREATE TABLE sales (
order_id INT,
customer_name VARCHAR(50),
product VARCHAR(50),
amount INT,
city VARCHAR(50)
);

INSERT INTO sales VALUES (1,'Ravi','Laptop',50000,'Chennai');
INSERT INTO sales VALUES (2,'Priya','Mobile',20000,'Madurai');
INSERT INTO sales VALUES (3,'Arun','Laptop',52000,'Chennai');
INSERT INTO sales VALUES (4,'Divya','Headphones',2000,'Coimbatore');
INSERT INTO sales VALUES (5,'Kumar','Mobile',18000,'Madurai');

-- Total orders
SELECT COUNT(*) FROM sales;

-- Total sales
SELECT SUM(amount) FROM sales;

-- Average sales
SELECT AVG(amount) FROM sales;

-- Highest sale
SELECT MAX(amount) FROM sales;

-- Lowest sale
SELECT MIN(amount) FROM sales;

-- Sales per product
SELECT product, SUM(amount)
FROM sales
GROUP BY product;

-- Orders per city
SELECT city, COUNT(*)
FROM sales
GROUP BY city;