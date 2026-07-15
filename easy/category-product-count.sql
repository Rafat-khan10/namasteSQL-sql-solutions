-- Problem: Category Product Count
-- Difficulty: Easy
-- Source: NamasteSQL
-- Problem Link: https://www.namastesql.com/coding-problem/73-category-product-count

-- Solution:

SELECT
    category,
    ARRAY_LENGTH(STRING_TO_ARRAY(products, ','), 1) AS product_count
FROM categories
ORDER BY product_count ASC,category ASC
