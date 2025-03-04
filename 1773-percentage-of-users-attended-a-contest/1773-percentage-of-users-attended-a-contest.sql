# Write your MySQL query statement below
SELECT r.contest_id, 
                ROUND( ( COUNT( DISTINCT r.user_id) / (SELECT COUNT(*) FROM Users)) * 100, 2) AS percentage
# Counts the number of unique users who registered for each contest.    # Counts the total number of unique users across all contests.
FROM Register r
LEFT JOIN Users u
ON u.user_id = r.user_id
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;