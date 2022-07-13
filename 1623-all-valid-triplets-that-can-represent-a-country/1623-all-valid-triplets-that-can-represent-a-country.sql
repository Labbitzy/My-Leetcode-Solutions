# Write your MySQL query statement below
select a.student_name as member_A, b.student_name as member_B, c.student_name as member_C
from SchoolA a, SchoolB b, SchoolC c
where (not a.student_id = b.student_id) and (not a.student_id = c.student_id) and (not b.student_id = c.student_id)
and (not a.student_name = b.student_name) and (not a.student_name = c.student_name) and (not b.student_name = c.student_name);