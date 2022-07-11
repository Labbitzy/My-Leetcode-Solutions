# Write your MySQL query statement below
select d.name AS Department, e2.name AS Employee, e2.salary AS Salary
from Employee e2
inner join (select departmentId, max(salary) AS max_salary
from Employee
group by departmentId)e1
on e1.departmentId = e2.departmentId AND e1.max_salary = e2.salary
left join Department d
on d.id = e2.departmentId;