# Write your MySQL query statement below
select *
from Cinema
where description <> 'boring' and MOD(id, 2) = 1 # MOD(id, 2) = 1 checks if id is odd (i.e., remainder when divided by 2 is 1).
order by rating DESC;