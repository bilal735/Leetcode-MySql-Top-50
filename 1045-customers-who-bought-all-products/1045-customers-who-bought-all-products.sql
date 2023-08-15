# Write your MySQL query statement below
select a.customer_id from 

(select 
*,count(distinct k.product_key,k.customer_id) as calculated
from Customer k
group by customer_id
)a 
cross join 
(select 
* ,count(distinct l.product_key) as total
from Customer l)b

on(a.calculated=b.total);