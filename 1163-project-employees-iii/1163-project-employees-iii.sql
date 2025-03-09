# Write your MySQL query statement below
SELECT p.project_id, p.employee_id
FROM Project p
JOIN Employee e ON p.employee_id = e.employee_id
WHERE e.experience_years = (
    SELECT MAX(experience_years)
    FROM Employee
    WHERE employee_id IN (
        SELECT employee_id FROM Project WHERE project_id = p.project_id
    )
);
