# Write your MySQL query statement below
SELECT student_id, MIN(course_id) AS course_id, grade 
            #In case of a tie, find the course with the smallest course_id -  MIN(course_id)- VIMP*.
FROM Enrollments
WHERE (student_id, grade) IN (
    SELECT student_id, MAX(grade)
    FROM Enrollments
    GROUP BY student_id #Inner Query Group By
)
GROUP BY student_id #Outer Query Group By - VIMP*
ORDER BY student_id;



