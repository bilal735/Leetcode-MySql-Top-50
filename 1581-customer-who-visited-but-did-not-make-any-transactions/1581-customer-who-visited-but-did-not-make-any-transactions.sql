# Write your MySQL query statement below
Select v.customer_id,count(v.visit_id) as count_no_trans from Visits v Left Join Transactions t ON v.visit_id = t.visit_id where(t.transaction_id is NULL) group by v.customer_id;