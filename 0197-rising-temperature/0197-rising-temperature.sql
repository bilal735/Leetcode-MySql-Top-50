# Write your MySQL query statement below

With mt As 
(select *,Lag(temperature) Over(Order by recordDate) As prev_temperature,
Date_ADD(recordDate,Interval -1 Day) As yesterdays_date,Lag(recordDate) Over(Order by recordDate) As prev_recordDate from Weather)
select id as Id from mt where(prev_temperature < temperature And yesterdays_date=prev_recordDate);