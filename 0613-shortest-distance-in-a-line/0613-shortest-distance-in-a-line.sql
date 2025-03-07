# Write your MySQL query statement below
SELECT MIN(a.x - b.x) AS shortest # MIN() retrieves the shortest distance between any two points.
FROM point a, point b
WHERE a.x > b.x;