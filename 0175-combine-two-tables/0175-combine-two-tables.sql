# Write your MySQL query statement below
SELECT p.firstName, p.lastName, COALESCE(a.city) AS city, a.state
FROM Person p
LEFT JOIN Address a ON p.personId = a.personId ;
 
 # COALESCE(a.city) AS city --- This shows NULL value which contains nothing in coulumn.