# Write your MySQL query statement below
select c.name as customer_name, c.customer_id, o.order_id, o.order_date
from Customers c
left join (select customer_id, order_id, order_date, rank() over(partition by customer_id order by order_date desc) as rnk from Orders)o
on c.customer_id = o.customer_id
where o.rnk <= 3
order by customer_name, customer_id, order_date desc;
