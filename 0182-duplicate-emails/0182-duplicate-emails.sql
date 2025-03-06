# Write your MySQL query statement below
select email as Email
from Person
group by email
having count(*) > 1; # we need to group the records by email and count how many times each appears. If an email appears more than once, it is a duplicate And we can count It.
