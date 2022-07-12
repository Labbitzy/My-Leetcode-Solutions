# Write your MySQL query statement below
select employee_id, team_size
from Employee e
left join (select team_id, count(*) as team_size
from Employee
group by team_id)t
on e.team_id = t.team_id;