# Write your MySQL query statement below
select team_name, count(*) as matches_played, sum(point) as points, sum(goal) as goal_for, sum(goal_against) as goal_against, sum(goal)-sum(goal_against) as goal_diff
from(
select home_team_id as team_id, home_team_goals as goal, away_team_goals as goal_against, case when home_team_goals > away_team_goals then 3 when home_team_goals = away_team_goals then 1 else 0 end as point
from Matches
union all
select away_team_id as team_id, away_team_goals as goal, home_team_goals as goal_against, case when home_team_goals < away_team_goals then 3 when home_team_goals = away_team_goals then 1 else 0 end as point
from Matches)m
left join Teams t
on m.team_id = t.team_id
group by team_name
order by points desc, goal_diff desc, team_name;