-- Problem: Return Orders Customer Feedback
-- Difficulty: Medium
-- Source: NamasteSQL
-- Link: https://www.namastesql.com/coding-problem/1-return-orders-customer-feedback

-- Solution:

WITH cte AS (
SELECT
  o.customer_name,
  COUNT(*) AS total_orders,
   SUM(
  CASE
     WHEN r.return_date IS NOT NULL THEN 1 
	 ELSE 0
   END) AS return_order	
FROM orders AS o
LEFT JOIN returns AS r
ON o.order_id = r.order_id
GROUP BY o.customer_name
),
cte2 AS (
SELECT
  customer_name,
  ROUND(return_order*100.0/total_orders ,2) AS return_percent 
FROM cte	
)
SELECT
 *
FROM cte2
WHERE return_percent > 50
ORDER BY customer_name ASC
