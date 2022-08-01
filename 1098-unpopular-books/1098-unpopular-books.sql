# Write your MySQL query statement below
select b.book_id, name
from (select book_id, name from Books where available_from < '2019-05-23')b
left join (select book_id, quantity from orders where dispatch_date between '2018-06-23' and '2019-06-23')o 
on b.book_id = o.book_id
group by book_id 
having sum(ifnull(quantity,0)) < 10;