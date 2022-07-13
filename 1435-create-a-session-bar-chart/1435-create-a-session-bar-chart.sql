# Write your MySQL query statement below
select '[0-5>' as bin, sum(duration/60 < 5) as total
from Sessions
union
select '[5-10>' as bin, sum(duration/60 >= 5 and duration/60 < 10) as total
from Sessions
union
select '[10-15>' as bin, sum(duration/60 >= 10 and duration/60 < 15) as total
from Sessions
union
select '15 or more' as bin, sum(duration/60 >= 15) as total
from Sessions

