# Write your MySQL query statement below
select 
a.employee_id,a.name,
count(b.reports_to) as reports_count,
round(sum(b.age)/count(b.reports_to)) as average_age
from Employees a inner join Employees b
on(a.employee_id= b.reports_to)
group by a.employee_id
order by a.employee_id;