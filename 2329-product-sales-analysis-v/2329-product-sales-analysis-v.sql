# Write your MySQL query statement below
select s.user_id, sum(s.quantity*p.price) as spending
from Sales s
left join Product p
on s.product_id = p.product_id
group by user_id
order by spending desc;