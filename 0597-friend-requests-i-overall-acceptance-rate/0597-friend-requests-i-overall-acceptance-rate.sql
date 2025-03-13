# Write your MySQL query statement below
SELECT 
    IFNULL(ROUND(
        (SELECT COUNT(DISTINCT requester_id, accepter_id) FROM RequestAccepted) / 
        (SELECT COUNT(DISTINCT sender_id, send_to_id) FROM FriendRequest), 2), 0.00) AS accept_rate;


# IFNULL(..., 0.00) --- If there are no requests, return 0.00.
# ROUND(..., 2) --- Ensures the result is rounded to 2 decimal places.