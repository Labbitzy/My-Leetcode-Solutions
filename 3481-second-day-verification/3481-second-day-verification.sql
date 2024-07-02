# Write your MySQL query statement below
select user_id
from emails e
left join texts t
on e.email_id = t.email_id
where signup_action = 'Verified'
and datediff(action_date, signup_date) = 1
order by 1