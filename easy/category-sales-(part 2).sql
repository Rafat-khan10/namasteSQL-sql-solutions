-- Problem: Category Sales (Part 2)
-- Difficulty: Easy
-- Source: NamasteSQL
-- Problem Link: https://www.namastesql.com/coding-problem/62-category-sales-part-2

-- Solution:

select  
  c.category_name,
  SUM(
  CASE
    WHEN s.category_id IS NOT NULL THEN s.amount 
	ELSE 0
  END) AS total_sales 
from Categories AS c
LEFT JOIN sales AS s
ON c.category_id = s.category_id
GROUP BY c.category_name
ORDER BY total_sales ASC
