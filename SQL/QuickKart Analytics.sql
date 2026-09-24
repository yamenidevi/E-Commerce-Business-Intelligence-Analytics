SELECT COUNT(*) AS total_orders
FROM Fact_Orders;

SELECT SUM(sales) AS total_sales
FROM Fact_Orders;

SELECT SUM(profit) AS total_profit
FROM Fact_Orders;

SELECT 
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS average_order_value
FROM Fact_Orders;

SELECT SUM(quantity::INT) AS total_quantity
FROM Fact_Orders;

SELECT 
    order_status,
    COUNT(*) AS order_count
FROM Fact_Orders
GROUP BY order_status
ORDER BY order_count DESC;

SELECT 
    order_status,
    SUM(sales) AS total_sales
FROM Fact_Orders
GROUP BY order_status
ORDER BY total_sales DESC;

SELECT
    ROUND(
        100.0 * SUM(CASE WHEN order_status = 'Cancelled' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS cancellation_rate
FROM Fact_Orders;

SELECT
    p.product_name,
    SUM(f.sales) AS total_sales
FROM Fact_Orders f
JOIN product p
    ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    p.product_name,
    SUM(f.profit) AS total_profit
FROM Fact_Orders f
JOIN product p
    ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_profit DESC
LIMIT 10;

SELECT
    p.category,
    SUM(f.sales) AS total_sales
FROM Fact_Orders f
JOIN product p
    ON f.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;

SELECT
    p.category,
    SUM(f.profit) AS total_profit
FROM Fact_Orders f
JOIN product p
    ON f.product_id = p.product_id
GROUP BY p.category
ORDER BY total_profit DESC;

SELECT
    customer_id,
    SUM(sales) AS total_sales
FROM Fact_Orders
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    customer_id,
    COUNT(DISTINCT order_id) AS total_orders
FROM Fact_Orders
GROUP BY customer_id
ORDER BY total_orders DESC;

SELECT
    customer_id,
    SUM(profit) AS total_profit
FROM Fact_Orders
GROUP BY customer_id
ORDER BY total_profit DESC;

SELECT
    payment_id,
    COUNT(*) AS order_count
FROM Fact_Orders
GROUP BY payment_id
ORDER BY order_count DESC;

SELECT
    payment_id,
    SUM(sales) AS total_sales
FROM Fact_Orders
GROUP BY payment_id
ORDER BY total_sales DESC;

SELECT
    d.year,
    SUM(f.sales) AS total_sales
FROM Fact_Orders f
JOIN Date d
    ON f.date_id = d.date_id
GROUP BY d.year
ORDER BY d.year;

SELECT
    d.year,
    d.month,
    d.month_name,
    SUM(f.sales) AS total_sales
FROM Fact_Orders f
JOIN Date d
    ON f.date_id = d.date_id
GROUP BY d.year, d.month, d.month_name
ORDER BY d.year, d.month;

SELECT
    d.year,
    d.quarter,
    SUM(f.sales) AS total_sales,
    SUM(f.profit) AS total_profit
FROM Fact_Orders f
JOIN Date d
    ON f.date_id = d.date_id
GROUP BY d.year, d.quarter
ORDER BY d.year, d.quarter;

SELECT
    ROUND(
        100.0 * SUM(profit) / NULLIF(SUM(sales), 0),
        2
    ) AS profit_margin_percentage
FROM Fact_Orders;

SELECT
    p.product_name,
    SUM(f.sales) AS total_sales,
    SUM(f.profit) AS total_profit,
    ROUND(
        100.0 * SUM(f.profit) / NULLIF(SUM(f.sales), 0),
        2
    ) AS profit_margin
FROM Fact_Orders f
JOIN product p
    ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY profit_margin DESC
LIMIT 10;

WITH product_sales AS (
    SELECT
        p.category,
        p.product_name,
        SUM(f.sales) AS total_sales
    FROM Fact_Orders f
    JOIN product p
        ON f.product_id = p.product_id
    GROUP BY p.category, p.product_name
),
ranked_products AS (
    SELECT
        category,
        product_name,
        total_sales,
        RANK() OVER (
            PARTITION BY category
            ORDER BY total_sales DESC
        ) AS product_rank
    FROM product_sales
)
SELECT *
FROM ranked_products
WHERE product_rank <= 3
ORDER BY category, product_rank;

WITH monthly_sales AS (
    SELECT
        d.year,
        d.month,
        d.month_name,
        SUM(f.sales) AS total_sales
    FROM Fact_Orders f
    JOIN Date d
        ON f.date_id = d.date_id
    GROUP BY d.year, d.month, d.month_name
)
SELECT
    year,
    month,
    month_name,
    total_sales,
    LAG(total_sales) OVER (
        ORDER BY year, month
    ) AS previous_month_sales
FROM monthly_sales
ORDER BY year, month;