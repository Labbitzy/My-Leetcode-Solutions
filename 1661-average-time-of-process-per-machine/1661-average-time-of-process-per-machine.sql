# Write your MySQL query statement below
select t1.machine_id, round(end_total - start_total,3) as processing_time
from (select machine_id, sum(timestamp)/count(*) as start_total
from Activity
where activity_type = 'start'
group by machine_id)t1
join (select machine_id, sum(timestamp)/count(*) as end_total
from Activity
where activity_type = 'end'
group by machine_id)t2
on t1.machine_id = t2.machine_id;