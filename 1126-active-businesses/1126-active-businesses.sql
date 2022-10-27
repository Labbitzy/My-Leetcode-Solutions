# Write your MySQL query statement below
select business_id
from Events
join (
select event_type, avg(occurences) as avg_occurences
from Events
group by event_type)t
using(event_type)
where occurences > avg_occurences
group by business_id
having count(*) > 1;