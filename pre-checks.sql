-- ===========================================
-- STEP 1: PRE-CHECKS BEFORE IMPORTING DATA
-- ===========================================

-- 1️. Check for NULL values in critical columns before inserting
SELECT * FROM olist_orders_dataset WHERE order_approved_at IS NULL;
SELECT count(*) FROM olist_orders_dataset WHERE order_approved_at IS NULL AND order_status = 'delivered';
SELECT * FROM olist_order_items_dataset WHERE shipping_limit_date IS NULL;
SELECT * FROM olist_order_reviews_dataset WHERE review_answer_timestamp IS NULL;

-- 2️. Verify relationships before joining
SELECT COUNT(*) 
FROM olist_orders_dataset o
LEFT JOIN olist_order_items_dataset oi ON o.order_id = oi.order_id
WHERE oi.order_id IS NULL;

-- 3️. Check for duplicate primary keys
SELECT order_id, COUNT(*)
FROM olist_orders_dataset
GROUP BY order_id
HAVING COUNT(*) > 1;
