-- =====================================================
-- PROJECT : E-Commerce Supply Chain Intelligence
-- FILE    : 07_sales_analytics.sql
-- PURPOSE : Sales Analytics
-- AUTHOR  : Jatin Sankhla
-- =====================================================

USE ecommerce_supply_chain;

-- =====================================================
-- 1. TOTAL REVENUE
-- =====================================================

SELECT
ROUND(SUM(payment_value),2) AS Total_Revenue
FROM payments;

-- =====================================================
-- 2. AVERAGE ORDER VALUE
-- =====================================================

SELECT
ROUND(AVG(payment_value),2) AS Average_Order_Value
FROM payments;

-- =====================================================
-- 3. HIGHEST ORDER VALUE
-- =====================================================

SELECT
MAX(payment_value) AS Highest_Order_Value
FROM payments;

-- =====================================================
-- 4. LOWEST ORDER VALUE
-- =====================================================

SELECT
MIN(payment_value) AS Lowest_Order_Value
FROM payments;

-- =====================================================
-- 5. MONTHLY SALES
-- =====================================================

SELECT

YEAR(o.order_purchase_timestamp) AS Year,

MONTH(o.order_purchase_timestamp) AS Month,

ROUND(SUM(p.payment_value),2) AS Revenue

FROM orders o

JOIN payments p

ON o.order_id = p.order_id

GROUP BY Year, Month

ORDER BY Year, Month;

-- =====================================================
-- 6. YEARLY SALES
-- =====================================================

SELECT

YEAR(o.order_purchase_timestamp) AS Year,

ROUND(SUM(p.payment_value),2) AS Revenue

FROM orders o

JOIN payments p

ON o.order_id = p.order_id

GROUP BY Year

ORDER BY Year;

-- =====================================================
-- 7. TOP 10 SELLERS BY REVENUE
-- =====================================================

SELECT

oi.seller_id,

ROUND(SUM(p.payment_value),2) AS Revenue

FROM order_items oi

JOIN payments p

ON oi.order_id = p.order_id

GROUP BY oi.seller_id

ORDER BY Revenue DESC

LIMIT 10;

-- =====================================================
-- 8. TOP 10 PRODUCT CATEGORIES BY SALES
-- =====================================================

SELECT

ct.product_category_name_english,

ROUND(SUM(oi.price),2) AS Revenue

FROM order_items oi

JOIN products pr

ON oi.product_id = pr.product_id

LEFT JOIN category_translation ct

ON pr.product_category_name = ct.product_category_name

GROUP BY ct.product_category_name_english

ORDER BY Revenue DESC

LIMIT 10;

-- =====================================================
-- 9. TOP 10 PRODUCTS BY REVENUE
-- =====================================================

SELECT

product_id,

ROUND(SUM(price),2) AS Revenue

FROM order_items

GROUP BY product_id

ORDER BY Revenue DESC

LIMIT 10;

-- =====================================================
-- 10. TOP 10 STATES BY REVENUE
-- =====================================================

SELECT

c.customer_state,

ROUND(SUM(p.payment_value),2) AS Revenue

FROM customers c

JOIN orders o

ON c.customer_id=o.customer_id

JOIN payments p

ON o.order_id=p.order_id

GROUP BY customer_state

ORDER BY Revenue DESC

LIMIT 10;

-- =====================================================
-- 11. TOP 10 CITIES BY REVENUE
-- =====================================================

SELECT

c.customer_city,

ROUND(SUM(p.payment_value),2) AS Revenue

FROM customers c

JOIN orders o

ON c.customer_id=o.customer_id

JOIN payments p

ON o.order_id=p.order_id

GROUP BY customer_city

ORDER BY Revenue DESC

LIMIT 10;

-- =====================================================
-- 12. SALES BY PAYMENT TYPE
-- =====================================================

SELECT

payment_type,

ROUND(SUM(payment_value),2) AS Revenue,

COUNT(*) AS Transactions

FROM payments

GROUP BY payment_type

ORDER BY Revenue DESC;

-- =====================================================
-- 13. AVERAGE PRODUCT PRICE
-- =====================================================

SELECT

ROUND(AVG(price),2) AS Average_Product_Price

FROM order_items;

-- =====================================================
-- 14. MOST EXPENSIVE PRODUCTS SOLD
-- =====================================================

SELECT

product_id,

MAX(price) AS Highest_Price

FROM order_items

GROUP BY product_id

ORDER BY Highest_Price DESC

LIMIT 20;

-- =====================================================
-- 15. MONTHLY ORDER COUNT
-- =====================================================

SELECT

YEAR(order_purchase_timestamp) AS Year,

MONTH(order_purchase_timestamp) AS Month,

COUNT(*) AS Orders

FROM orders

GROUP BY Year, Month

ORDER BY Year, Month;

-- =====================================================
-- 16. REVENUE BY ORDER STATUS
-- =====================================================

SELECT

o.order_status,

ROUND(SUM(p.payment_value),2) AS Revenue

FROM orders o

JOIN payments p

ON o.order_id=p.order_id

GROUP BY o.order_status

ORDER BY Revenue DESC;

-- =====================================================
-- 17. AVERAGE FREIGHT COST
-- =====================================================

SELECT

ROUND(AVG(freight_value),2) AS Average_Freight

FROM order_items;

-- =====================================================
-- 18. TOTAL FREIGHT COLLECTED
-- =====================================================

SELECT

ROUND(SUM(freight_value),2) AS Total_Freight

FROM order_items;

-- =====================================================
-- 19. TOP 10 ORDERS BY VALUE
-- =====================================================

SELECT

order_id,

ROUND(SUM(payment_value),2) AS Order_Value

FROM payments

GROUP BY order_id

ORDER BY Order_Value DESC

LIMIT 10;

-- =====================================================
-- 20. SALES SUMMARY KPI
-- =====================================================

SELECT

COUNT(DISTINCT o.order_id) AS Total_Orders,

COUNT(DISTINCT c.customer_unique_id) AS Customers,

ROUND(SUM(p.payment_value),2) AS Revenue,

ROUND(AVG(p.payment_value),2) AS Avg_Order_Value

FROM customers c

JOIN orders o

ON c.customer_id=o.customer_id

JOIN payments p

ON o.order_id=p.order_id;

-- =====================================================
-- END OF SALES ANALYTICS
-- =====================================================