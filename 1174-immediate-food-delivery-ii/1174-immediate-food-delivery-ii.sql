# Write your MySQL query statement below
with cte as(
select customer_id,min(order_date) as od
from Delivery group by(customer_id)
)
select 
round(sum(case when od=customer_pref_delivery_date then 1 else 0 end)/count(distinct d.customer_id) *100,2)
as immediate_percentage
# sum(case when cte.od=d.customer_pref_delivery_date then 1 else 0 end) as immediate
from cte join Delivery d on(cte.customer_id=d.customer_id and cte.od=d.order_date);
