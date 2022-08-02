# Write your MySQL query statement below
with cte as(
select date_format(day, '%Y-%m-%d') as day, max(amount) as max_amount
from Transactions
group by date_format(day, '%Y-%m-%d'))
select t.transaction_id
from (select *, date_format(day, '%Y-%m-%d') as day1 from Transactions)t
left join cte
on t.day1 = cte.day
where t.amount = cte.max_amount
order by t.transaction_id;