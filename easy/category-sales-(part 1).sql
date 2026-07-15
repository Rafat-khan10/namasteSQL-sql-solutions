-- Problem: Category Sales (Part 1)
-- Difficulty: Easy
-- Source: NamasteSQL
-- Problem Link: https://www.namastesql.com/coding-problem/61-category-sales-part-1

-- Solution:

select
 *
from sales
WHERE EXTRACT(YEAR FROM order_date)=2022
AND EXTRACT(MONTH FROM order_date) =2
AND EXTRACT(DOW FROM order_date) BETWEEN 1 AND 5
