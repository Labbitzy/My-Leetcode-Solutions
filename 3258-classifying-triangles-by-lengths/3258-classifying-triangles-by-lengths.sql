# Write your MySQL query statement below
select case when A+B<=C or A+C<=B or B+C<=A then 'Not A Triangle'
            when A=B and B=C then 'Equilateral'
            when A=B or A=C or B=C then 'Isosceles'
            else 'Scalene' end as triangle_type
from triangles
