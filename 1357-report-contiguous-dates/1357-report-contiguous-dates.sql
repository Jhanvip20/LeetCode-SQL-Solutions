# Write your MySQL query statement below

with t as    
    (select 'failed' as period_state, fail_date dt,
        dayofyear(fail_date) - row_number() over(order by fail_date) grp
    from failed
    where year(fail_date)=2019
	
    union
	
    select 'succeeded' as period_state, success_date dt,
        dayofyear(success_date) - row_number() over(order by success_date) grp
    from succeeded
    where year(success_date)=2019)
    
select period_state, min(dt) start_date, max(dt) end_date
from t
group by 1, grp
order by 2;