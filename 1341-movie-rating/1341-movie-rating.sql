# Write your MySQL query statement below
(select u.name as results
from MovieRating m
left join Users u
on m.user_id = u.user_id
group by u.user_id
order by count(*) desc, u.name
limit 1)
union all
(select m1.title as results
from (select movie_id, rating from MovieRating where date_format(created_at, '%Y-%m') = '2020-02')m
left join Movies m1
on m.movie_id = m1.movie_id
group by m.movie_id
order by avg(rating) desc, m1.title
limit 1);