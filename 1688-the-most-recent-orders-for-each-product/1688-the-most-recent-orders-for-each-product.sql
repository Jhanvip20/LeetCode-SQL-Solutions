# Write your MySQL query statement below
SELECT product_name, product_id, order_id, order_date
FROM (
    SELECT product_name, P.product_id, order_id, order_date, RANK() OVER (PARTITION BY product_name ORDER BY order_date DESC) rnk
    FROM Orders O
    JOIN Products P
    On O.product_id = P.product_id
) temp
WHERE rnk = 1
ORDER BY product_name, product_id, order_id