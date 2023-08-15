# Write your MySQL query statement below
with cte as
(select person_id,person_name,
sum(weight) over(order by turn asc) as tt,turn
from Queue
)
select  person_name from cte
where(turn=(select max(turn) as t from cte where(tt<=1000)))
;