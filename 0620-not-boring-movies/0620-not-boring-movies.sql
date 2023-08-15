# Write your MySQL query statement below
select * from Cinema as c where(c.description !='boring' and id%2!=0) order by rating desc;