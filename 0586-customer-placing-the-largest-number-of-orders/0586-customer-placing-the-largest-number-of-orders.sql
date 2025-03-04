# Write your MySQL query statement below
select customer_number
from Orders
group by customer_number
order by count(customer_number) desc limit 1; #count the occurences of values in customer_number and then with the help of desc (descending) keyword I have converted it into descending order

