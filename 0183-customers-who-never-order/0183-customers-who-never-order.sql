# Write your MySQL query statement below

SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId  # Left Join between ID and customer ID
WHERE o.customerId Is NULL;

## SELECT name AS Customers FROM Customers WHERE id NOT IN ( SELECT customerId FROM Orders);