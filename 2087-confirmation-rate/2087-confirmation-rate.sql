# Write your MySQL query statement below
SELECT u.user_id, IFNULL(ROUND(SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) / COUNT(c.user_id), 2), 0) 
        AS confirmation_rate # Counts the number of confirmed messages for each user.
FROM Signups u
LEFT JOIN Confirmations c ON u.user_id = c.user_id
GROUP BY u.user_id;
