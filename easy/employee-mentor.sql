-- Problem: Employee Mentor
-- Difficulty: Easy
-- Source: NamasteSQL
-- Problem Link: https://www.namastesql.com/coding-problem/103-employee-mentor

-- Solution:

select 
  name
from employees
WHERE mentor_id IS NULL 
OR mentor_id!=3
