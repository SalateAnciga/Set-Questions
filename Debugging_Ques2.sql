USE practice;
-- 1. Retrieve Employees in Finance Department
-- Incorrect Code
SELECT * FROM  employees1;
SELECT employees1.empname,
departments.department_name
FROM employees1
JOIN
departments 
ON  employees1.department_id=departments.department_id
WHERE department_name = 'Finance';

-- 2. Calculate Total Sales for Each Customer
-- Incorrect Code
SELECT customer_id, SUM(amount) AS total_sales
FROM sales
GROUP BY customer_id;

-- 3. Find Products Priced Over the Average Price
-- Incorrect Code
SELECT * FROM products;
INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Laptop', 1000),
(2, 'Mobile', 500),
(3, 'Tablet', 300),
(4, 'Headphones', 100),
(5, 'Smartwatch', 200);

SELECT product_name, price
FROM products
WHERE price > (SELECT AVG(price)FROM products);


-- 4. Get Customers Who Have Placed Orders Over 1000
-- Incorrect Code
SELECT * FROM order_;
SELECT DISTINCT customer_name
FROM order_
WHERE order_amount > 1000;



-- 5. Find Total Sales for Each Customer
-- Incorrect Code
SELECT customer_id, SUM(amount) as total_sales
FROM sales
GROUP BY customer_id;  
-- Missing GROUP BY for aggregation


