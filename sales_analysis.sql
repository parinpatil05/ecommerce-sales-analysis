-- Total sales per product
SELECT p.product_name,
       SUM(o.quantity * p.price) AS total_sales
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.product_name;


-- Top customers by spending
SELECT c.name,
       SUM(o.quantity * p.price) AS total_spent
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
JOIN products p
ON o.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC;


-- Sales by country
SELECT c.country,
       SUM(o.quantity * p.price) AS country_sales
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
JOIN products p
ON o.product_id = p.product_id
GROUP BY c.country;