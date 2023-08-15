# Write your MySQL query statement below
# with cte as(
#   select visited_on ,
#   sum(amount) as amount
#   ,min(visited_on) over() as min_date
#   from Customer 
# group by visited_on
# )
# ,cte2 as(
# select visited_on,min_date,
# sum(cte.amount) over(Rows BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount,
# round(amount/(count(cte.amount) over(Rows BETWEEN 6 PRECEDING AND CURRENT ROW)),2) AS average_amount
# from cte)
# select visited_on,amount,average_amount from cte2 where(datediff(visited_on,min_date)>=6) order by 1;
# # select * from cte2;
# Write your MySQL query statement below
SELECT visited_on, amount, ROUND(amount/7, 2) average_amount
FROM (
    SELECT DISTINCT visited_on, 
    SUM(amount) OVER(ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY   PRECEDING AND CURRENT ROW) amount, 
    MIN(visited_on) OVER() 1st_date 
    FROM Customer
) t
WHERE visited_on>= 1st_date+6;