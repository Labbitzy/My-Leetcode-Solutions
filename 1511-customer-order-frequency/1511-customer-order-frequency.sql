# Write your MySQL query statement below
select c.customer_id, c.name
from Orders o
left join Customers c
on c.customer_id = o.customer_id
left join Product p
on o.product_id = p.product_id
group by customer_id
having sum(if(date_format(order_date, '%Y-%m') = '2020-06', o.quantity,0)*p.price) >= 100 and
       sum(if(date_format(order_date, '%Y-%m') = '2020-07', o.quantity,0)*p.price) >= 100;
