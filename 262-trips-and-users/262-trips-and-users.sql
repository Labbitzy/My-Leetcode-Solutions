# Write your MySQL query statement below
select request_at as 'Day', round(ifnull(sum(status = 'cancelled_by_client' or status = 'cancelled_by_driver')/count(id),0),2) as 'Cancellation Rate'
from trips
where client_id not in (select users_id from Users where role = 'client' and banned = 'Yes') and
      driver_id not in (select users_id from Users where role = 'driver'and banned = 'Yes') and
      request_at between '2013-10-01' and '2013-10-03'
group by request_at;