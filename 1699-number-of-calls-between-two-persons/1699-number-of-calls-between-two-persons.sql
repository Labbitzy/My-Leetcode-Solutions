# Write your MySQL query statement below
select from_id as person1, to_id as person2, count(*) as call_count, sum(duration) as total_duration
from(
select from_id, to_id, duration
from Calls
where from_id < to_id
union all
select to_id, from_id, duration
from Calls
where from_id > to_id)t
group by from_id, to_id;