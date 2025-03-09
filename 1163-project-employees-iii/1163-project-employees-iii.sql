# Write your MySQL query statement below
SELECT p.project_id, p.employee_id
FROM Project p
JOIN Employee e ON p.employee_id = e.employee_id
JOIN (
    SELECT project_id, MAX(experience_years) AS max_experience
    FROM Project p
    JOIN Employee e ON p.employee_id = e.employee_id
    GROUP BY project_id
) max_exp ON p.project_id = max_exp.project_id AND e.experience_years = max_exp.max_experience;
