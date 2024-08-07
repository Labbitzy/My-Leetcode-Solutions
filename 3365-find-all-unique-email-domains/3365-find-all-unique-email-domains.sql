# Write your MySQL query statement below
select substring_index(email, '@', -1) as email_domain, count(*) as count
from emails
where email like '%.com'
group by 1
order by 1