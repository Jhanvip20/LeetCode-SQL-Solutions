# Write your MySQL query statement below
SELECT s.seller_name
FROM Seller s
LEFT JOIN Orders o
ON s.seller_id = o.seller_id AND YEAR(o.sale_date) = 2020 # Joins Sellers with Orders while filtering only orders from the year 2020.
WHERE o.seller_id IS NULL  # Ensures that we only select sellers who have no matching sales in 2020.
ORDER BY seller_name ASC;