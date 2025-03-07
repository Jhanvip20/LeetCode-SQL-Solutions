# Write your MySQL query statement below
SELECT seat_id
FROM Cinema
WHERE free = 1 
AND (EXISTS (SELECT 1 FROM Cinema c2 WHERE c2.seat_id = Cinema.seat_id - 1 AND c2.free = 1)
     OR EXISTS (SELECT 1 FROM Cinema c2 WHERE c2.seat_id = Cinema.seat_id + 1 AND c2.free = 1))
ORDER BY seat_id;


#The EXISTS clause in SQL is used to check whether a subquery returns any rows. If the subquery returns at least one row, EXISTS evaluates to TRUE; otherwise, it evaluates to FALSE.

