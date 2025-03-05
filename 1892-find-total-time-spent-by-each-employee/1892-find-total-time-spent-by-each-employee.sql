# Write your MySQL query statement below
select event_day as day, emp_id, SUM(out_time - in_time) as total_time # omputes the total minutes spent in the office for each employee on a given day.
from Employees
group by event_day, emp_id;