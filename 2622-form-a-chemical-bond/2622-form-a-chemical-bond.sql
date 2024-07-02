# Write your MySQL query statement below
select t1.symbol as metal, t2.symbol as nonmetal
from Elements t1
left join Elements t2
on t1.type = 'Metal' and t2.type = 'Nonmetal'
where t1.type = 'Metal'