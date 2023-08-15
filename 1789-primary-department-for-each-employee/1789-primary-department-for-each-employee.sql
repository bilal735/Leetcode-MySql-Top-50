# Write your MySQL query statement below
with cte as
(select employee_id,
count(department_id) ct
from Employee group by employee_id
)
select 
# *
e.employee_id,e.department_id
from cte inner join Employee e
on(cte.employee_id=e.employee_id)
where(cte.ct=1 or (cte.ct>1 and e.primary_flag='Y'))
;