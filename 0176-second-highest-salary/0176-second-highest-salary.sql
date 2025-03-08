# Write your MySQL query statement below
SELECT (
    SELECT DISTINCT Salary
      FROM Employee
     ORDER BY Salary DESC
     LIMIT 1
    OFFSET 1
) AS SecondHighestSalary; # Skips the highest salary (OFFSET 1) and returns the next highest salary.