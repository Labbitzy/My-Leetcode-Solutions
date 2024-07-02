# Write your MySQL query statement below
select t1.user_id, name, coalesce(sum(distance),0) as "traveled distance"
from users t1
left join rides t2
on t1.user_id = t2.user_id
group by 1,2
order by 1