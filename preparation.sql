-- ===========================================
-- STEP 3: DATA MANIPULATION & EXPORT TABLES
-- ===========================================

-- 1. Create table for sum of sales
DROP TABLE IF EXISTS final_sum_sales;

WITH max_items AS (
    SELECT
        order_id,
        MAX(order_item_id) AS order_qty,
        seller_id
    FROM order_items
    GROUP BY order_id, seller_id
),
payment_sum AS (
    SELECT
        order_id,
        payment_type,
        SUM(payment_value) AS payment_value
    FROM olist_order_payments_dataset
    WHERE payment_value IS NOT NULL
    GROUP BY order_id, payment_type
),
sales AS (
    SELECT
        ps.order_id,
        ps.payment_type,
        ROUND(ps.payment_value, 2) AS payment_value,
        mi.order_qty,
        o.product_id,
        mi.seller_id
    FROM payment_sum ps
    JOIN max_items mi ON ps.order_id = mi.order_id
    JOIN order_items o ON mi.order_id = o.order_id AND mi.order_qty = o.order_item_id
),
order_st AS (
    SELECT
        order_id,
        customer_id,
        MonthName,
        Year,
        order_status
    FROM order_state
    WHERE order_status NOT IN ('unavailable', 'canceled')
),
category AS (
    SELECT
        product_id,
        product_category_name_english AS category_eng
    FROM olist_products_translation
),
rating AS (
    SELECT
        order_id,
        review_score
    FROM reviews
)

SELECT 
    s.order_id,
    os.customer_id,
    s.seller_id,
    s.product_id,
    c.category_eng,
    r.review_score,
    s.order_qty,
    s.payment_type,
    s.payment_value,
    os.MonthName,
    os.Year
INTO final_sum_sales
FROM sales s
JOIN order_st os ON s.order_id = os.order_id
JOIN category c ON s.product_id = c.product_id
JOIN rating r ON s.order_id = r.order_id;

-- 2. Create table for canceled orders
DROP TABLE IF EXISTS final_cancel;

SELECT 
    os.order_id, 
    os.customer_id, 
    o.product_id,
    os.order_status,
    en.product_category_name_english,
    os.MonthName,
    os.Year
INTO final_cancel
FROM order_state os
LEFT JOIN order_items o ON os.order_id = o.order_id
JOIN olist_products_translation en ON o.product_id = en.product_id
WHERE os.order_status IN ('unavailable', 'canceled')
GROUP BY os.order_id, os.customer_id, o.product_id, os.order_status, en.product_category_name_english, os.MonthName, os.Year;

-- 3. Create table for customer info
DROP TABLE IF EXISTS final_customer;

SELECT 
    cd.customer_id,
    cd.customer_city,
    cd.customer_state,
    ss.category_eng,
    os.MonthName,
    os.Year
INTO final_customer
FROM olist_customers_dataset cd
JOIN order_state os ON cd.customer_id = os.customer_id
JOIN final_sum_sales ss ON cd.customer_id = ss.customer_id;

-- 4. Create table for seller info
DROP TABLE IF EXISTS final_seller;

SELECT 
    sd.seller_id,
    ss.category_eng,
    sd.seller_city,
    sd.seller_state,
    ss.MonthName,
    ss.Year
INTO final_seller
FROM olist_sellers_dataset sd
JOIN final_sum_sales ss ON sd.seller_id = ss.seller_id;

-- ===========================================
-- STEP 4: VALIDATION & PERFORMANCE CHECKS
-- ===========================================

-- Check for unexpected NULLs in the final tables
SELECT * FROM final_sum_sales WHERE customer_id IS NULL;
SELECT * FROM final_cancel WHERE product_id IS NULL;
SELECT * FROM final_customer WHERE category_eng IS NULL;

-- Check record counts for accuracy
SELECT COUNT(*) FROM olist_order_items_dataset;
SELECT COUNT(*) FROM final_sum_sales;

-- Check for missing products
SELECT COUNT(*) 
FROM order_items oi
LEFT JOIN olist_products_translation p ON oi.product_id = p.product_id
WHERE p.product_id IS NULL;

-- Ensure no missing relationships
SELECT COUNT(*) FROM order_state WHERE order_id NOT IN (SELECT order_id FROM olist_orders_dataset);
SELECT COUNT(*) FROM order_items WHERE product_id NOT IN (SELECT product_id FROM olist_products_translation);

-- ===========================================
-- STEP 5: FINAL OUTPUT
-- ===========================================

SELECT * FROM final_sum_sales ORDER BY order_id ASC;
SELECT * FROM final_cancel ORDER BY order_id ASC;
SELECT * FROM final_customer WHERE Year IS NOT NULL;
SELECT * FROM final_seller;
