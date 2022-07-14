# Write your MySQL query statement below
select dept_name, count(distinct student_id) as student_number
from Student s
right join Department d
on s.dept_id = d.dept_id
group by dept_name
order by student_number desc, dept_name;