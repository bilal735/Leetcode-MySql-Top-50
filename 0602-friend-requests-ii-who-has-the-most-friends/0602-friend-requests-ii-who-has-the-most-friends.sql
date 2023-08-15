# Write your MySQL query statement below
with cte as(
select requester_id,count(accepter_id) as c1 from RequestAccepted group by requester_id 
union all
select accepter_id as requester_id ,count(requester_id) as c2 from RequestAccepted group by accepter_id 
)
select requester_id as id ,sum(c1) num from cte group by requester_id order by num desc  limit 1;