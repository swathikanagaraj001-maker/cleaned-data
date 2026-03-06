CREATE TABLE orders (
order_id INT,
customer_name VARCHAR(50),
product VARCHAR(50),
amount INT,
city VARCHAR(50)
);

INSERT INTO orders VALUES (1,'Ravi','Laptop',50000,'Chennai');
INSERT INTO orders VALUES (2,'Priya','Mobile',20000,'Madurai');
INSERT INTO orders VALUES (3,'Arun','Laptop',52000,'Chennai');
INSERT INTO orders VALUES (4,'Divya','Headphones',2000,'Coimbatore');
INSERT INTO orders VALUES (5,'Kumar','Mobile',18000,'Madurai');

SELECT * FROM orders;

SELECT * FROM orders
WHERE city = 'Chennai';

SELECT * FROM orders
ORDER BY amount DESC;

SELECT product, COUNT(*)
FROM orders
GROUP BY product;

SELECT SUM(amount) AS total_sales
FROM orders;