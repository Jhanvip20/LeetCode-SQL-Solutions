# Write your MySQL query statement below
WITH Boarding AS (
    SELECT person_name, 
           weight, 
           SUM(weight) OVER (ORDER BY turn) AS total_weight # to compute the cumulative total weight as people board.
    FROM Queue
)
SELECT person_name 
FROM Boarding
WHERE total_weight <= 1000
ORDER BY total_weight DESC # Get the last person before exceeding the limit 1
LIMIT 1;
