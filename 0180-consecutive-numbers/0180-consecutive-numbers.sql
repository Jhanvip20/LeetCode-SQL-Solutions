# Write your MySQL query statement below
SELECT DISTINCT num as ConsecutiveNums 
FROM (
    SELECT num, 
           LAG(num,1) OVER() AS prev1,
           LAG(num,2) OVER() AS prev2
    FROM Logs
) t
WHERE num = prev1 AND num = prev2;
 
 #Check Notes for LAG()