# Write your MySQL query statement below
SELECT DISTINCT a.account_id
FROM LogInfo a
JOIN LogInfo b
WHERE a.account_id = b.account_id AND a.ip_address != b.ip_address
AND NOT (a.login > b.logout OR b.login > a.logout)