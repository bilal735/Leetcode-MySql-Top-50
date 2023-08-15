# Write your MySQL query statement below
select
round((select 
count(event_date)
from 
Activity a join 
(select player_id,min(event_date) as ev from Activity group by player_id) act
on
DATE_ADD(ev,Interval 1 day)=a.event_date and 
a.player_id=act.player_id) / count(distinct player_id),2) fraction from Activity;
