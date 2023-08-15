# Write your MySQL query statement below
with cte as(
select product_id,min(year) as min
from Sales group by product_id
)
select a.product_id,a.year as first_year,a.quantity,a.price
from Sales a inner join cte b on(a.product_id=b.product_id and a.year=b.min);