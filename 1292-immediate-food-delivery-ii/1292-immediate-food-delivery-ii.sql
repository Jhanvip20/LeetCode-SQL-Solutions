# Write your MySQL query statement below
with FirstOrders as (
    select customer_id, MIN(order_date) as first_order_date
    from Delivery
    group by customer_id
)
select 
    ROUND( (COUNT(CASE WHEN d.order_date = d.customer_pref_delivery_date THEN 1 END) * 100.0) 
        / COUNT(*), 
        2) as immediate_percentage
from Delivery d
join FirstOrders f
On d.customer_id = f.customer_id AND d.order_date = f.first_order_date;
    