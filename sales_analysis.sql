
CREATE DATABASE IF NOT EXISTS sales_analysis;

USE sales_analysis;


CREATE TABLE IF NOT EXISTS online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

INSERT INTO online_sales VALUES
(1, '2023-01-15', 100.50, 101),
(2, '2023-01-20', 200.75, 102),
(3, '2023-02-05', 150.00, 101),
(4, '2023-02-18', 300.25, 103),
(5, '2023-03-10', 250.50, 102),
(6, '2023-03-22', 175.00, 101);

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;


SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    monthly_revenue DESC
LIMIT 3;