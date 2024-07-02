# Write your MySQL query statement below
select candidate_id
from candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
group by 1
having count(distinct skill) = 3
order by 1