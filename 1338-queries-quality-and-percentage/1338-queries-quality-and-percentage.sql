# Write your MySQL query statement below

SELECT query_name, 
       ROUND(AVG(rating / position), 2) AS quality,
       ROUND((SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS poor_query_percentage 
       # calculates the percentage of queries with a rating below 3, then rounds to 2 decimal places.
FROM Queries
GROUP BY query_name;
