# Write your MySQL query statement bel
select id,ifnull((case when mod(id,2)=0 then lag_std  else lead_std  end),student) as student from
(
select * ,lead(student) over(order by id) as lead_std,lag(student) over(order by id) as lag_std
from Seat
)b
order by id;