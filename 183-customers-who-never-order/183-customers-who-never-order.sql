# Write your MySQL query statement below
select name AS Customers
from Orders o
right join Customers c
on o.customerId = c.id
where o.id is null;