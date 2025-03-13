# Write your MySQL query statement below
select round(sum(percent)/count(distinct action_date),2) as average_daily_percent
from
    (select a.action_date,
    count(distinct r.post_id)/count(distinct a.post_id)*100 as percent
    from actions a left join removals r
    on a.post_id = r.post_id
    where a.extra='spam'
    group by 1) temp;