# Write your MySQL query statement below
select name, balance
from (select account, sum(amount) as balance
from Transactions
group by account)t
left join Users u
on t.account = u.account
where balance > 10000;