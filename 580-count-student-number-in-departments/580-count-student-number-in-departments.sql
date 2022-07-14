# Write your MySQL query statement below
select d.dept_name, ifnull(student_number,0) as student_number
from Department d
left join (select dept_id, count(distinct student_id) as student_number
from Student
group by dept_id)s
on s.dept_id = d.dept_id
order by student_number desc;