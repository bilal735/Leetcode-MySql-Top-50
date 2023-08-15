# Write your MySQL query statement below
with cte1 as(
select * from Orders
where(month(order_date)=2 and year(order_date)=2020)
)
, cte as(
select p.product_name,o.order_date,
sum(unit) as summ 
from Products p 
inner join
cte1 o
on p.product_id=o.product_id
group by p.product_id

)
select product_name,summ as unit from cte
where(summ>=100 );
# select * from cte;