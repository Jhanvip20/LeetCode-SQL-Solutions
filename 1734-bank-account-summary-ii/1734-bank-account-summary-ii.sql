# Write your MySQL query statement below
select u.name, sum(t.amount) as balance
from Users u
left join Transactions t 
on u.account = t.account
group by u.name
having balance > 10000 ;


