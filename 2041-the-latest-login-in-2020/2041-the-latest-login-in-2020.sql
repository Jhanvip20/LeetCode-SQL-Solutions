# Write your MySQL query statement below
SELECT user_id, MAX(time_stamp) AS last_stamp # The MAX function is used to get the latest login timestamp for each user.
FROM Logins
WHERE YEAR(time_stamp) = 2020 # This filters the records to include only the logins that happened in the year 2020.
GROUP BY user_id; # This ensures that the result is grouped by user_id, and for each user, we are retrieving the latest login within the year 2020.



