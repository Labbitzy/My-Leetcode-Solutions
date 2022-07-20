# Write your MySQL query statement below
with product_cnt as(
select customer_id, product_id, count(*) as cnt
from Orders
group by customer_id, product_id)
select pc.customer_id, pc.product_id, product_name
from product_cnt pc
left join Products p
on pc.product_id = p.product_id
right join (select customer_id, max(cnt) as max_count
from product_cnt
group by customer_id)m
on m.customer_id = pc.customer_id and pc.cnt = m.max_count;