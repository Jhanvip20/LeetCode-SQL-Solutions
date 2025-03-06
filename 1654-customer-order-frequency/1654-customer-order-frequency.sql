# Write your MySQL query statement below
SELECT c.customer_id, c.name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Product p ON p.product_id = o.product_id
WHERE o.order_date BETWEEN '2020-06-01' AND '2020-07-31'
GROUP BY c.customer_id, c.name
HAVING SUM(CASE WHEN MONTH(o.order_date) = 6 THEN p.price * o.quantity ELSE 0 END) >= 100 # This ensures that the total spending in June is at least $100.
   AND SUM(CASE WHEN MONTH(o.order_date) = 7 THEN p.price * o.quantity ELSE 0 END) >= 100; # This ensures that the total spending in July is at least $100

