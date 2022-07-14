# Write your MySQL query statement below
select *
from Orders
where order_id not in (
select order_id
from Orders
where order_type = 1 and customer_id in (select customer_id from Orders group by customer_id having count(distinct order_type) = 2));