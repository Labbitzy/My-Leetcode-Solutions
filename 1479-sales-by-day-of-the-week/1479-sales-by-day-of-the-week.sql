# Write your MySQL query statement below
select i.item_category as category, 
sum(ifnull(quantity,0)*case when weekday(order_date) = 0 then 1 else 0 end) as Monday,
sum(ifnull(quantity,0)*case when weekday(order_date) = 1 then 1 else 0 end) as Tuesday,
sum(ifnull(quantity,0)*case when weekday(order_date) = 2 then 1 else 0 end) as Wednesday,
sum(ifnull(quantity,0)*case when weekday(order_date) = 3 then 1 else 0 end) as Thursday,
sum(ifnull(quantity,0)*case when weekday(order_date) = 4 then 1 else 0 end) as Friday,
sum(ifnull(quantity,0)*case when weekday(order_date) = 5 then 1 else 0 end) as Saturday,
sum(ifnull(quantity,0)*case when weekday(order_date) = 6 then 1 else 0 end) as Sunday
from Orders o
right join Items i
on o.item_id = i.item_id
group by i.item_category
order by category;