# Write your MySQL query statement below
with cte as (
select student_id, max(grade) as grade
from Enrollments
group by student_id)
select e.student_id, min(e.course_id) as course_id, e.grade
from Enrollments e
left join cte
on e.student_id = cte.student_id
where e.grade = cte.grade
group by e.student_id
order by e.student_id;
