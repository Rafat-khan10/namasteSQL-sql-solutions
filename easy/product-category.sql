-- Problem: Product Category
-- Difficulty: Easy
-- Source: NamasteSQL
-- Link: https://www.namastesql.com/coding-problem/2-product-category

-- Solution:

WITH category AS 
(select 
  product_id,
CASE
  WHEN price < 100 THEN 'Low Price'
  WHEN price BETWEEN 100 AND 500 THEN 'Medium Price'
  WHEN price > 500 THEN 'High Price'
 END AS category 
from products
)
SELECT
   category ,
   COUNT(*) AS no_of_products
FROM products AS p
INNER JOIN category AS c
ON p.product_id = c.product_id
GROUP BY category
ORDER BY COUNT(*) DESC
