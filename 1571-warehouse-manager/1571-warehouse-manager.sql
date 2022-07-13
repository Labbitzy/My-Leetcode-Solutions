# Write your MySQL query statement below
select name as warehouse_name, sum(units*unit_volume) as volume
from Warehouse w
left join(select product_id, Width*Length*Height as unit_volume
from Products)p
on w.product_id = p.product_id
group by name;