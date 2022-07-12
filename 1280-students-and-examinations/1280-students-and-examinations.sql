# Write your MySQL query statement below
select tb1.student_id, tb1.student_name, tb1.subject_name, ifnull(tb2.attended_exams,0) as attended_exams
from
(select *
from Students s1, Subjects s2)tb1
left join(select student_id, subject_name, count(*) as attended_exams from Examinations group by student_id, subject_name)tb2
on tb1.student_id = tb2.student_id and tb1.subject_name = tb2.subject_name
order by tb1.student_id, tb1.subject_name;