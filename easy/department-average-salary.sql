-- Problem:  Department Average Salary
-- Difficulty: Easy
-- Source: NamasteSQL
-- Problem Link: https://www.namastesql.com/coding-problem/71-department-average-salary

-- Solution:

WITH cte AS (
select
  d.department_id 
from employees AS e
INNER JOIN departments AS d 
ON e.department_id = d.department_id 
GROUP BY d.department_id 
HAVING COUNT(*) > 2
)
SELECT
   d.department_name ,
   ROUND(AVG(e.salary),2) AS average_salary 
FROM  Employees AS e
INNER JOIN cte 
ON cte.department_id  = e.department_id 
INNER JOIN Departments AS d
ON d.department_id = e.department_id
GROUP BY d.department_name 
ORDER BY average_salary DESC
