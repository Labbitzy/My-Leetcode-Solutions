# Write your MySQL query statement below
select p.name, ifnull(rest,0) as rest, ifnull(paid,0) as paid, ifnull(canceled,0) as canceled, ifnull(refunded,0) as refunded
from Product p
left join (select product_id, sum(rest) as rest, sum(paid) as paid, sum(canceled) as canceled, sum(refunded) as refunded from Invoice group by product_id)t
on p.product_id = t.product_id
order by p.name;