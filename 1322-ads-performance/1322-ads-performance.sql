# Write your MySQL query statement below
select ad_id, round(ifnull(sum(action = 'Clicked')/(sum(action = 'Clicked')+sum(action = 'Viewed')),0)*100,2) AS ctr
from Ads
group by ad_id
order by ctr desc, ad_id;