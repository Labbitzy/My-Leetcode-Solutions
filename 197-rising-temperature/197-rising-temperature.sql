# Write your MySQL query statement below
select w2.id
from (select *, DATE_ADD(recordDate, INTERVAL 1 DAY) as ADD_1_Day from Weather)w1
left join Weather w2
on w1.ADD_1_Day = w2.recordDate
where w1.temperature < w2.temperature;
