# Write your MySQL query statement below

with cte as(
Select min(id) as id2,email
from Person
group by email
)
delete from Person 
where id not in (select id2 from cte);