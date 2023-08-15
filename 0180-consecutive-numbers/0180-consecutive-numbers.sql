# Write your MySQL query statement below
select distinct num as ConsecutiveNums from
(select * ,lead(num) over(order by id) as c1 , lead(num,2) over(order by id) as c2 from Logs)k
where(num=k.c1 and num=k.c2);