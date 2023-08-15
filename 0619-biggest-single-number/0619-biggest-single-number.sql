# Write your MySQL query statement below
select max(m) as num
from
(select  max(distinct num) as m
from MyNumbers
group by (num)
having(count(num)=1)
)b;