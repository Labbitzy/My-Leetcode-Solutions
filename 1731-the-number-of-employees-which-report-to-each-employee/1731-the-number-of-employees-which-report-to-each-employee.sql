# Write your MySQL query statement below
select t.reports_to as employee_id, name, reports_count, average_age
from 
(select reports_to, count(*) as reports_count, round(avg(age)) as average_age
from Employees
 where reports_to is not null
group by reports_to)t
left join Employees e
on t.reports_to = e.employee_id
order by employee_id;
