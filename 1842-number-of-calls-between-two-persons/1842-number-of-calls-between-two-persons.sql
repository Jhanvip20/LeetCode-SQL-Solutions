# Write your MySQL query statement below
SELECT 
    LEAST (from_id, to_id) AS person1,  # LEAST(value1, value2, ...): Returns the smallest value from the given list.
    GREATEST (from_id, to_id) AS person2, # GREATEST(value1, value2, ...): Returns the largest value from the given list.
    COUNT(*) AS call_count,
    SUM(duration) AS total_duration
FROM Calls
GROUP BY person1, person2;