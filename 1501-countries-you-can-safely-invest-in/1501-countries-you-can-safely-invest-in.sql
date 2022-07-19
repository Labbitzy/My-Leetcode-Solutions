# Write your MySQL query statement below
with tb as (
select id, c.name as country
from Person p
left join Country c
on LEFT(p.phone_number,3) = c.country_code)
select country
from(
select id, country, duration
from Calls c
left join tb
on c.caller_id = tb.id 
union all
select id, country, duration
from Calls c
left join tb
on c.callee_id = tb.id)t
group by country
having avg(duration) > (select avg(duration) from Calls);