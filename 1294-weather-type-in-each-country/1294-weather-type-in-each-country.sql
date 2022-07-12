# Write your MySQL query statement below
select c.country_name, case when t.avg_weather <= 15 then 'Cold' when t.avg_weather >= 25 then 'Hot' else 'Warm' end as weather_type
from(
select country_id, avg(weather_state) as avg_weather
from Weather
where day between '2019-11-01' and '2019-11-30'
group by country_id)t
left join Countries c
on c.country_id = t.country_id;