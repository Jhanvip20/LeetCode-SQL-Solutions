# Write your MySQL query statement below
SELECT player_id, event_date, 
       SUM(games_played) OVER (PARTITION BY player_id ORDER BY event_date) AS games_played_so_far # This accumulates the total games played for each player up to that date.
FROM Activity
ORDER BY player_id, event_date DESC;

