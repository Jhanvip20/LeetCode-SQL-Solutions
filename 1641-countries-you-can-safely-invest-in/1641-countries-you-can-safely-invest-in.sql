# Write your MySQL query statement below
select distinct country 
from(
    select c.name country, ca.duration
        ,avg(ca.duration) over(partition by c.name) avg_duration
        ,avg(ca.duration) over() avg_total
    from calls ca left join person p on (ca.caller_id = p.id) or (ca.callee_id = p.id)
    inner join country c on substring(p.phone_number,1,3) = c.country_code #The SUBSTRING(p.phone_number,1,3) assumes a fixed-length country code, but some country codes are not always 3 digits.
) a
where avg_duration > avg_total
