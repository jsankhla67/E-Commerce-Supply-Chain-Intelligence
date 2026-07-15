-- =====================================================
-- PROJECT : E-Commerce Supply Chain Intelligence
-- FILE    : 03_import.sql
-- PURPOSE : Import Olist Dataset
-- AUTHOR  : Jatin Sankhla
-- =====================================================

USE ecommerce_supply_chain;

SET FOREIGN_KEY_CHECKS = 0;

-- =====================================================
-- OPTIONAL: CLEAR TABLES BEFORE RE-IMPORT
-- =====================================================

TRUNCATE TABLE reviews;
TRUNCATE TABLE payments;
TRUNCATE TABLE order_items;
TRUNCATE TABLE orders;
TRUNCATE TABLE products;
TRUNCATE TABLE sellers;
TRUNCATE TABLE customers;
TRUNCATE TABLE category_translation;
TRUNCATE TABLE geolocation;

-- =====================================================
-- 1. CUSTOMERS
-- =====================================================

LOAD DATA LOCAL INFILE '/Users/jatinsankhla/Desktop/E-Commerce-Supply-Chain-Intelligence/data/raw/olist_customers_dataset.csv'
INTO TABLE customers
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
customer_id,
customer_unique_id,
customer_zip_code_prefix,
customer_city,
customer_state
);

SELECT 'Customers' AS Table_Name,
COUNT(*) AS Total_Rows
FROM customers;

-- =====================================================
-- 2. CATEGORY TRANSLATION
-- =====================================================

LOAD DATA LOCAL INFILE '/Users/jatinsankhla/Desktop/E-Commerce-Supply-Chain-Intelligence/data/raw/product_category_name_translation.csv'
INTO TABLE category_translation
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
product_category_name,
product_category_name_english
);

SELECT 'Category Translation' AS Table_Name,
COUNT(*) AS Total_Rows
FROM category_translation;

-- =====================================================
-- 3. PRODUCTS
-- =====================================================

LOAD DATA LOCAL INFILE '/Users/jatinsankhla/Desktop/E-Commerce-Supply-Chain-Intelligence/data/raw/olist_products_dataset.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
product_id,
product_category_name,
product_name_lenght,
product_description_lenght,
product_photos_qty,
product_weight_g,
product_length_cm,
product_height_cm,
product_width_cm
);

SELECT 'Products' AS Table_Name,
COUNT(*) AS Total_Rows
FROM products;

-- =====================================================
-- 4. SELLERS
-- =====================================================

LOAD DATA LOCAL INFILE '/Users/jatinsankhla/Desktop/E-Commerce-Supply-Chain-Intelligence/data/raw/olist_sellers_dataset.csv'
INTO TABLE sellers
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
seller_id,
seller_zip_code_prefix,
seller_city,
seller_state
);

SELECT 'Sellers' AS Table_Name,
COUNT(*) AS Total_Rows
FROM sellers;

-- =====================================================
-- 5. ORDERS
-- =====================================================

LOAD DATA LOCAL INFILE '/Users/jatinsankhla/Desktop/E-Commerce-Supply-Chain-Intelligence/data/raw/olist_orders_dataset.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
order_id,
customer_id,
order_status,
order_purchase_timestamp,
order_approved_at,
order_delivered_carrier_date,
order_delivered_customer_date,
order_estimated_delivery_date
);

SELECT 'Orders' AS Table_Name,
COUNT(*) AS Total_Rows
FROM orders;

-- =====================================================
-- 6. ORDER ITEMS
-- =====================================================

LOAD DATA LOCAL INFILE '/Users/jatinsankhla/Desktop/E-Commerce-Supply-Chain-Intelligence/data/raw/olist_order_items_dataset.csv'
INTO TABLE order_items
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
order_id,
order_item_id,
product_id,
seller_id,
shipping_limit_date,
price,
freight_value
);

SELECT 'Order Items' AS Table_Name,
COUNT(*) AS Total_Rows
FROM order_items;

-- =====================================================
-- 7. PAYMENTS
-- =====================================================

LOAD DATA LOCAL INFILE '/Users/jatinsankhla/Desktop/E-Commerce-Supply-Chain-Intelligence/data/raw/olist_order_payments_dataset.csv'
INTO TABLE payments
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
order_id,
payment_sequential,
payment_type,
payment_installments,
payment_value
);

SELECT 'Payments' AS Table_Name,
COUNT(*) AS Total_Rows
FROM payments;

-- =====================================================
-- 8. REVIEWS
-- =====================================================

LOAD DATA LOCAL INFILE '/Users/jatinsankhla/Desktop/E-Commerce-Supply-Chain-Intelligence/data/raw/olist_order_reviews_dataset.csv'
INTO TABLE reviews
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
review_id,
order_id,
review_score,
review_comment_title,
review_comment_message,
review_creation_date,
review_answer_timestamp
);

SELECT 'Reviews' AS Table_Name,
COUNT(*) AS Total_Rows
FROM reviews;

-- =====================================================
-- 9. GEOLOCATION
-- =====================================================

LOAD DATA LOCAL INFILE '/Users/jatinsankhla/Desktop/E-Commerce-Supply-Chain-Intelligence/data/raw/olist_geolocation_dataset.csv'
INTO TABLE geolocation
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
geolocation_zip_code_prefix,
geolocation_lat,
geolocation_lng,
geolocation_city,
geolocation_state
);

SELECT 'Geolocation' AS Table_Name,
COUNT(*) AS Total_Rows
FROM geolocation;

SET FOREIGN_KEY_CHECKS = 1;

-- =====================================================
-- FINAL IMPORT SUMMARY
-- =====================================================

SELECT 'customers' AS table_name, COUNT(*) FROM customers
UNION ALL
SELECT 'category_translation', COUNT(*) FROM category_translation
UNION ALL
SELECT 'products', COUNT(*) FROM products
UNION ALL
SELECT 'sellers', COUNT(*) FROM sellers
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items
UNION ALL
SELECT 'payments', COUNT(*) FROM payments
UNION ALL
SELECT 'reviews', COUNT(*) FROM reviews
UNION ALL
SELECT 'geolocation', COUNT(*) FROM geolocation;