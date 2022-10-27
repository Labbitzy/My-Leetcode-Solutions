# Write your MySQL query statement below
select ifnull(round(sum(first_order = customer_pref_delivery_date)/count(distinct customer_id),4), 0)*100 as immediate_percentage
from delivery
join (select customer_id, min(order_date) as first_order from delivery group by customer_id)t
using(customer_id);