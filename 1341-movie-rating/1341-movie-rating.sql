# Write your MySQL query statement below

(select m1.title as results
from Movies m1 inner join 
(select * from MovieRating where(month(created_at)=2) and year(created_at)=2020)m2
on m1.movie_id=m2.movie_id
group by m1.movie_id
order by sum(m2.rating)/count(m2.rating) desc,title asc
limit 1)
union all
(
select u.name as results
from Users u inner join MovieRating m
on u.user_id=m.user_id 
group by u.user_id
order by count(movie_id) desc,name asc
Limit 1
)
