# Write your MySQL query statement below
select city 
from listings
group by 1
having avg(price) > (select avg(price) as avg_national_price from listings)
order by 1