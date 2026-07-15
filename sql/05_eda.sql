-- =====================================================
-- PROJECT : E-Commerce Supply Chain Intelligence
-- FILE    : 05_eda.sql
-- PURPOSE : Exploratory Data Analysis (EDA)
-- AUTHOR  : Jatin Sankhla
-- =====================================================

USE ecommerce_supply_chain;

-- =====================================================
-- 1. TOTAL RECORDS IN EACH TABLE
-- =====================================================

SELECT 'Customers' AS Table_Name, COUNT(*) AS Total_Records FROM customers
UNION ALL
SELECT 'Orders', COUNT(*) FROM orders
UNION ALL
SELECT 'Products', COUNT(*) FROM products
UNION ALL
SELECT 'Sellers', COUNT(*) FROM sellers
UNION ALL
SELECT 'Order Items', COUNT(*) FROM order_items
UNION ALL
SELECT 'Payments', COUNT(*) FROM payments
UNION ALL
SELECT 'Reviews', COUNT(*) FROM reviews
UNION ALL
SELECT 'Geolocation', COUNT(*) FROM geolocation
UNION ALL
SELECT 'Category Translation', COUNT(*) FROM category_translation;

-- =====================================================
-- 2. TOTAL UNIQUE CUSTOMERS
-- =====================================================

SELECT COUNT(DISTINCT customer_unique_id) AS Unique_Customers
FROM customers;

-- =====================================================
-- 3. TOTAL ORDERS
-- =====================================================

SELECT COUNT(*) AS Total_Orders
FROM orders;

-- =====================================================
-- 4. TOTAL PRODUCTS
-- =====================================================

SELECT COUNT(*) AS Total_Products
FROM products;

-- =====================================================
-- 5. TOTAL SELLERS
-- =====================================================

SELECT COUNT(*) AS Total_Sellers
FROM sellers;

-- =====================================================
-- 6. TOTAL PAYMENTS
-- =====================================================

SELECT COUNT(*) AS Total_Payments
FROM payments;

-- =====================================================
-- 7. TOTAL REVIEWS
-- =====================================================

SELECT COUNT(*) AS Total_Reviews
FROM reviews;

-- =====================================================
-- 8. ORDER STATUS DISTRIBUTION
-- =====================================================

SELECT
order_status,
COUNT(*) AS Total_Orders
FROM orders
GROUP BY order_status
ORDER BY Total_Orders DESC;

-- =====================================================
-- 9. PAYMENT METHOD DISTRIBUTION
-- =====================================================

SELECT
payment_type,
COUNT(*) AS Total
FROM payments
GROUP BY payment_type
ORDER BY Total DESC;

-- =====================================================
-- 10. REVIEW SCORE DISTRIBUTION
-- =====================================================

SELECT
review_score,
COUNT(*) AS Total
FROM reviews
GROUP BY review_score
ORDER BY review_score;

-- =====================================================
-- 11. TOP 10 STATES BY CUSTOMERS
-- =====================================================

SELECT
customer_state,
COUNT(*) AS Total_Customers
FROM customers
GROUP BY customer_state
ORDER BY Total_Customers DESC
LIMIT 10;

-- =====================================================
-- 12. TOP 10 CUSTOMER CITIES
-- =====================================================

SELECT
customer_city,
COUNT(*) AS Customers
FROM customers
GROUP BY customer_city
ORDER BY Customers DESC
LIMIT 10;

-- =====================================================
-- 13. TOP 10 SELLER STATES
-- =====================================================

SELECT
seller_state,
COUNT(*) AS Sellers
FROM sellers
GROUP BY seller_state
ORDER BY Sellers DESC
LIMIT 10;

-- =====================================================
-- 14. TOP 10 SELLER CITIES
-- =====================================================

SELECT
seller_city,
COUNT(*) AS Sellers
FROM sellers
GROUP BY seller_city
ORDER BY Sellers DESC
LIMIT 10;

-- =====================================================
-- 15. PRODUCT CATEGORY DISTRIBUTION
-- =====================================================

SELECT
product_category_name,
COUNT(*) AS Products
FROM products
GROUP BY product_category_name
ORDER BY Products DESC
LIMIT 15;

-- =====================================================
-- 16. CATEGORY NAME WITH ENGLISH TRANSLATION
-- =====================================================

SELECT
p.product_category_name,
c.product_category_name_english,
COUNT(*) AS Total
FROM products p
LEFT JOIN category_translation c
ON p.product_category_name = c.product_category_name
GROUP BY
p.product_category_name,
c.product_category_name_english
ORDER BY Total DESC
LIMIT 20;

-- =====================================================
-- 17. MONTHLY ORDERS
-- =====================================================

SELECT

YEAR(order_purchase_timestamp) AS Year,

MONTH(order_purchase_timestamp) AS Month,

COUNT(*) AS Orders

FROM orders

GROUP BY Year, Month

ORDER BY Year, Month;

-- =====================================================
-- 18. YEARLY ORDERS
-- =====================================================

SELECT

YEAR(order_purchase_timestamp) AS Year,

COUNT(*) AS Orders

FROM orders

GROUP BY Year

ORDER BY Year;

-- =====================================================
-- 19. AVERAGE PAYMENT VALUE
-- =====================================================

SELECT

ROUND(AVG(payment_value),2) AS Average_Payment

FROM payments;

-- =====================================================
-- 20. MIN / MAX PAYMENT
-- =====================================================

SELECT

MIN(payment_value) AS Minimum_Payment,

MAX(payment_value) AS Maximum_Payment

FROM payments;

-- =====================================================
-- 21. AVERAGE PRODUCT PRICE
-- =====================================================

SELECT

ROUND(AVG(price),2) AS Average_Product_Price

FROM order_items;

-- =====================================================
-- 22. MOST EXPENSIVE PRODUCTS SOLD
-- =====================================================

SELECT

product_id,

MAX(price) AS Highest_Price

FROM order_items

GROUP BY product_id

ORDER BY Highest_Price DESC

LIMIT 20;

-- =====================================================
-- 23. CHEAPEST PRODUCTS
-- =====================================================

SELECT

product_id,

MIN(price) AS Lowest_Price

FROM order_items

GROUP BY product_id

ORDER BY Lowest_Price

LIMIT 20;

-- =====================================================
-- 24. TOP 20 SELLERS BY PRODUCTS SOLD
-- =====================================================

SELECT

seller_id,

COUNT(*) AS Products_Sold

FROM order_items

GROUP BY seller_id

ORDER BY Products_Sold DESC

LIMIT 20;

-- =====================================================
-- 25. TOP 20 CUSTOMERS BY NUMBER OF ORDERS
-- =====================================================

SELECT

c.customer_unique_id,

COUNT(o.order_id) AS Orders

FROM customers c

JOIN orders o

ON c.customer_id = o.customer_id

GROUP BY c.customer_unique_id

ORDER BY Orders DESC

LIMIT 20;

-- =====================================================
-- END OF EDA
-- =====================================================