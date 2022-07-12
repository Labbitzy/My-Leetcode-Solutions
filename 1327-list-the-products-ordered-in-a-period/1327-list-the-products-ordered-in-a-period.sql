# Write your MySQL query statement below
select p.product_name, sum(t.unit) as unit
from (select *
from Orders
where order_date between '2020-02-01' and '2020-02-29')t
left join Products p
on p.product_id = t.product_id
group by p.product_name
having sum(t.unit) >= 100;
