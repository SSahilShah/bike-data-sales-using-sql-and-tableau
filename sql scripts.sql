 --Joining Orders with Customers--
--to analyze order placed by cutomer-- 
SELECT o.order_id, o.order_date, c.first_name, c.last_name, c.email
FROM bikeData.orders o
JOIN bikeData.customers c ON o.customer_id = c.customer_id;

--total revenue --
--To find the total revenue from each order.--
SELECT oi.order_id, SUM(oi.list_price * oi.quantity * (1 - oi.discount)) AS total_revenue
FROM bikeData.order_items oi
GROUP BY oi.order_id;

-- top selling products 
--Using a CTE to find the most popular products.
WITH ProductSales AS (
    SELECT p.product_id, p.product_name, SUM(oi.quantity) AS total_quantity
    FROM bikeData.order_items oi
    JOIN bikeData.products p ON oi.product_id = p.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT *
FROM ProductSales
ORDER BY total_quantity DESC
LIMIT 10;


-- monthly trend
--To analyze how sales have varied by month and year.

SELECT EXTRACT(YEAR FROM o.order_date) AS year, EXTRACT(MONTH FROM o.order_date) AS month, 
       SUM(oi.quantity * oi.list_price) AS total_sales
FROM bikeData.orders o
JOIN bikeData.order_items oi ON o.order_id = oi.order_id
GROUP BY year, month;

--customer segmentation
-- grouping customer based on their spending.
WITH CustomerSpending AS (
    SELECT c.customer_id, c.first_name, c.last_name, 
           SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS total_spent
    FROM bikeData.customers c
    JOIN bikeData.orders o ON c.customer_id = o.customer_id
    JOIN bikeData.order_items oi ON o.order_id = oi.order_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT customer_id, first_name, last_name, total_spent,
       CASE 
           WHEN total_spent > 20000 THEN 'High Spender'
           WHEN total_spent BETWEEN 10000 AND 5000 THEN 'Medium Spender'
           ELSE 'Low Spender'
       END AS spending_category
FROM CustomerSpending;

-- brand popularity
-- Analyze which brands are most popular based on the number of items sold.

SELECT b.brand_name, COUNT(oi.product_id) AS products_sold
FROM bikeData.order_items oi
JOIN bikeData.products p ON oi.product_id = p.product_id
JOIN bikeData.brands b ON p.brand_id = b.brand_id
GROUP BY b.brand_name
ORDER BY products_sold DESC;


-- sales by category
--Determine the sales revenue for each product category. 
SELECT cat.category_name, SUM(oi.quantity * oi.list_price) AS total_sales
FROM bikeData.categories cat
JOIN bikeData.products p ON cat.category_id = p.category_id
JOIN bikeData.order_items oi ON p.product_id = oi.product_id
GROUP BY cat.category_name;

