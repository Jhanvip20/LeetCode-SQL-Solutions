# Write your MySQL query statement below
SELECT transaction_id
FROM (
    SELECT transaction_id,
        RANK() OVER(PARTITION BY DATE(day) ORDER BY amount DESC) AS rk
    FROM Transactions
) AS tmp
WHERE rk = 1
ORDER BY 1; 
#order by transaction_id ;