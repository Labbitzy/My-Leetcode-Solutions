# Write your MySQL query statement below
with tax as (select company_id, case when max(salary) < 1000 then 0 when max(salary) >= 1000 and max(salary) <= 10000 then 24 else 49 end as tax_rate
from Salaries
group by company_id)
select s.company_id, s.employee_id, s.employee_name, round(s.salary*(1-t.tax_rate/100)) as salary
from Salaries s
left join tax t
on s.company_id = t.company_id;
