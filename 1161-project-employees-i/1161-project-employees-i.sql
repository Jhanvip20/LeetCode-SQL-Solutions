# Write your MySQL query statement below
SELECT p.project_id, 
        ROUND( IFNULL( SUM( e.experience_years) / NULLIF( COUNT( DISTINCT p.employee_id), 0), 0), 2) AS average_years 
            # This counts the number of distinct employees assigned to each project (not employees assigned multiple times).
FROM Project p
LEFT JOIN Employee e 
ON p.employee_id = e.employee_id 
GROUP BY p.project_id;