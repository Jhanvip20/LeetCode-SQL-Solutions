# Write your MySQL query statement below

SELECT p.product_id, 
       COALESCE(( # If no price change exists before this date, use COALESCE() to return 10 (default price).
           SELECT new_price 
           FROM Products pp 
           WHERE pp.product_id = p.product_id 
                 AND pp.change_date <= '2019-08-16'
           ORDER BY pp.change_date DESC 
           LIMIT 1
       ), 10) AS price
FROM (SELECT DISTINCT product_id FROM Products) p; # ensures that all products are considered, even if they have no price changes.


