# Write your MySQL query statement below
select count(*) as rich_count
from(
select customer_id
from Store
group by customer_id
having sum(amount > 500) >= 1)t;