# Write your MySQL query statement below
select product_id, round(ifnull(sum(total_price)/sum(units),0),2) as average_price
from(
select u.product_id, u.units, u.units*p.price as total_price
from UnitsSold u
left join Prices p
on u.product_id = p.product_id and u.purchase_date between p.start_date and end_date)tb
group by product_id;