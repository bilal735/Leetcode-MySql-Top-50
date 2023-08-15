# Write your MySQL query statement below
with et as(
select e1.id,e1.name,count(e2.managerId) as c from Employee e1 inner join Employee e2 on (e1.id=e2.managerId) group by(e1.id)
)
select name from et where(c>=5);