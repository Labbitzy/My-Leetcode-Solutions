# Write your MySQL query statement below
select abs(
(select max(salary) as highest_marketing
from salaries
where department = 'Marketing') -

(select max(salary) as highest_engineering
from salaries
where department = 'Engineering')) as salary_difference