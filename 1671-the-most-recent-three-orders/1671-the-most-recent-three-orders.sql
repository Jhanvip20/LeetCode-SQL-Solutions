# Write your MySQL query statement below

SELECT 
    name AS customer_name,
    customer_id,
    order_id,
    order_date
FROM (
    SELECT 
        *,
        DENSE_RANK() OVER (PARTITION BY c.customer_id ORDER BY o.order_date DESC) AS rnk
    FROM Orders o
    JOIN Customers c
    USING(customer_id)
) AS rnk_tbl
WHERE rnk <= 3
ORDER BY customer_name, customer_id, order_date DESC;