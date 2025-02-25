# Write your MySQL query statement below
SELECT DISTINCT author_id as id #DISTINCT ensures that only unique author_id values are returned. 
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id ASC; #ORDER BY author_id ASC sorts the results by the author_id in ascending order.