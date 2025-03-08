# Write your MySQL query statement below
SELECT Department.name AS Department, cte.name AS Employee, cte.salary AS Salary 
FROM (
    SELECT id, departmentId, name, salary,
           DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS rn  #### DENSE_RANK()
    FROM Employee
) AS cte
JOIN Department ON cte.departmentId = Department.id
WHERE cte.rn < 4;
	


# Approach(Step by Step) :

# Use DENSE_RANK() windows function to assign continuous ranks to the employees order by salary in the descending order. Give same ranks to employees with same salary and keep the ranks in continous order.
# Use GROUP BY for department_id, so as to assign the Ranks as over their departments.
# Find the ranks less than 4.
# Join with the Department table to give the defined output.
