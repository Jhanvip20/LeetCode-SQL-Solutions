# Write your MySQL query statement below
SELECT p.product_name, s.year, s.price
FROM Product p
LEFT JOIN Sales s ON p.product_id = s.product_id
WHERE p.product_id AND s.product_id IS NOT NULL;