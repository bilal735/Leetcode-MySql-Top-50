# Write your MySQL query statement below
with p as(select count(distinct user_id) as number from Users)
SELECT distinct r.contest_id ,round(count(r.contest_id)/(select p.number from p)*100 ,2) as percentage from Users u inner join Register r on(u.user_id = r.user_id) group by(r.contest_id) order by percentage desc,contest_id asc;