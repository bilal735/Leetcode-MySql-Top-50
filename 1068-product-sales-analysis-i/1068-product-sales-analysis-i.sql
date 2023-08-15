# Write your MySQL query statement below
select s.year,s.price,p.product_name from Sales s Left Join Product p On s.product_id=p.product_id;