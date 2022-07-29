# Write your MySQL query statement below
with cte as (
select seat_id
from Cinema
where free = 1)
select seat_id
from cte
where seat_id-1 in (select seat_id from cte) or seat_id+1 in (select seat_id from cte)
order by seat_id;