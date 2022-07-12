# Write your MySQL query statement below
select min(abs(p1.x - p2.x)) AS shortest
from Point p1, Point p2
where not p1.x = p2.x;