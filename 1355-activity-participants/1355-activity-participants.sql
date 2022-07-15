# Write your MySQL query statement below
with cte as (
select a.name as activity, count(*) as count_friends
from Activities a
left join Friends f
on a.name = f.activity
group by f.activity)
select activity
from cte
where count_friends < (select max(count_friends) from cte) and 
      count_friends > (select min(count_friends) from cte);
      
