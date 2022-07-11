# Write your MySQL query statement below
select s3.score, tb.rank
from Scores s3
left join (select s1.score, count(distinct s2.score) AS 'rank'
from Scores s1, Scores s2
where s1.score <= s2.score
group by s1.score)tb
on s3.score = tb.score
order by s3.score desc;