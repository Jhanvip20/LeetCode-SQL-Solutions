# Write your MySQL query statement below
SELECT e.name
FROM Employee e
JOIN Employee m ON e.id = m.managerId
GROUP BY e.id, e.name
HAVING COUNT(m.id) >= 5; # HAVING clause is applied after aggregation, making it the right place to filter grouped results.
