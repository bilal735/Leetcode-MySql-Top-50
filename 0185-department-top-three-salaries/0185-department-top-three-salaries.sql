# Write your MySQL query statement below
with cte as(
select a.name Employee , a.salary Salary,b.name Department,
dense_rank() over(partition by b.id order by a.salary desc) as rnk
from Employee a 
inner join 
Department b on(a.departmentId=b.id) 
)
 select Department,Employee,Salary from cte where(rnk<4) order by Salary desc;
# select * from cte;