# Write your MySQL query statement below
select p.product_id, ROUND( IFNULL( SUM(p.price * u.units) / NULLIF( SUM( u.units), 0), 0), 2) AS average_price 
from Prices p
Left join UnitsSold u 
ON p.product_id = u.product_id AND u.purchase_date BETWEEN p.start_date AND p.end_date # ensure that only the sales (or units sold) that fall within the time period specified by the price for a product are considered.
Group By p.product_id;