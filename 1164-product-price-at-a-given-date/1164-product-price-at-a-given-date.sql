# Write your MySQL query statement below
with cte as(select 
product_id, max(change_date) as pre
from Products
where(change_date<='2019-08-16')
group by product_id
)
select p.product_id,p.new_price as price
from Products p inner join cte
on p.product_id=cte.product_id and
p.change_date=cte.pre
union
select p.product_id ,10 as price
from Products p where( p.product_id not in(select product_id from cte)) 
order by product_id;