# Write your MySQL query statement below
WITH cte AS (
    -- Create a CTE (Common Table Expression) to combine both directions of friendships.
    -- This ensures that friendship (user1_id, user2_id) and (user2_id, user1_id) are treated as identical pairs.
    SELECT user1_id, user2_id 
    FROM Friendship
    UNION 
    -- The second part of the UNION handles the reversed friendship pairs to ensure both directions are included.
    SELECT user2_id, user1_id 
    FROM Friendship
)
    
SELECT c1.user1_id,  -- The first user in the friendship pair from cte.
       c2.user1_id AS user2_id,  -- The second user in the friendship pair from cte.
       COUNT(*) AS common_friend  -- Count how many common friends exist between user1_id and user2_id.
FROM cte AS c1 
JOIN cte AS c2 
    -- Join the CTE with itself to find mutual friendships.
    ON c1.user1_id < c2.user1_id  -- Ensures that we only count each pair once (no reverse duplicates).
    AND c1.user2_id = c2.user2_id  -- Matches users who are common friends.
    
WHERE (c1.user1_id, c2.user1_id) IN (
    -- This subquery checks if the pair (user1_id, user2_id) exists in the original Friendship table.
    -- This ensures the friendship pair was valid in the first place.
    SELECT * FROM Friendship
)
    
GROUP BY 1, 2  -- Groups by the first and second users to count the common friends for each pair.
HAVING COUNT(*) >= 3;  -- Only includes friendships with 3 or more common friends.

