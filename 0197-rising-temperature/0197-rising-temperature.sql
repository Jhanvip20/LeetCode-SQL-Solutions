# Write your MySQL query statement below
SELECT t1.id
FROM Weather t1
JOIN Weather t2 
ON t1.recordDate = t2.recordDate + INTERVAL 1 DAY
WHERE t1.temperature > t2.temperature;
