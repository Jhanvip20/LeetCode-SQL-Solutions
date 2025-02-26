# Write your MySQL query statement below
SELECT e.name, COALESCE(u.unique_id, NULL) AS unique_id #NULL in COALESCE: If uid.unique_id is NULL, COALESCE just returns NULL.
FROM Employees AS e
LEFT JOIN EmployeeUNI AS u ON u.id = e.id;  
 