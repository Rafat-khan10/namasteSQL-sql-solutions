-- Problem: Product Sales
-- Difficulty: Easy
-- Source: NamasteSQL
-- Problem Link: https://www.namastesql.com/coding-problem/72-product-sales

-- Solution:

select 
  p.product_name,
	SUM(p.price * s.quantity) AS total_sales_amount 
from products AS p
INNER JOIN sales AS s
ON p.product_id = s.product_id   
GROUP BY p.product_name
ORDER BY p.product_name ASC
