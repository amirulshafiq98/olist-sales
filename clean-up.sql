-- ===========================================
-- STEP 2: IMPORTING DATA & CREATING TABLES
-- ===========================================

-- 1. Create and populate order_items table
DROP TABLE IF EXISTS order_items;
CREATE TABLE order_items (
    order_id NVARCHAR(50),
    order_item_id INT,
    product_id NVARCHAR(50),
    seller_id NVARCHAR(50),
    MonthName NVARCHAR(20),
    Year INT
);

INSERT INTO order_items (order_id, order_item_id, product_id, seller_id, MonthName, Year)
SELECT 
    order_id,
    order_item_id,
    product_id,
    seller_id,
    DATENAME(MONTH, shipping_limit_date),  -- Faster than FORMAT()
    YEAR(shipping_limit_date)
FROM olist_order_items_dataset;

-- 2. Create and populate reviews table
DROP TABLE IF EXISTS reviews;
CREATE TABLE reviews (
    review_id NVARCHAR(50),
    order_id NVARCHAR(50),
    review_score INT,
    MonthName NVARCHAR(50),
    Year INT
);

INSERT INTO reviews (review_id, order_id, review_score, MonthName, Year)
SELECT 
    review_id,
    order_id,
    review_score,
    DATENAME(MONTH, review_answer_timestamp),
    YEAR(review_answer_timestamp)
FROM olist_order_reviews_dataset;

-- 3. Create and populate order_state table
DROP TABLE IF EXISTS order_state;
CREATE TABLE order_state (
    order_id NVARCHAR(50),
    customer_id NVARCHAR(50),
    order_status NVARCHAR(50),
    MonthName NVARCHAR(50),
    Year INT
);

INSERT INTO order_state (order_id, customer_id, order_status, MonthName, Year)
SELECT 
    order_id,
    customer_id,
    order_status,
    DATENAME(MONTH, order_approved_at),
    YEAR(order_approved_at)
FROM olist_orders_dataset;
