# Write your MySQL query statement below
select month, count(order_id) as order_count, count(distinct customer_id) as customer_count
from(select *, date_format(order_date, '%Y-%m') as month
from Orders o
where invoice > 20)t
group by month;