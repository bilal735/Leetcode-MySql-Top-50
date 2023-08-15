# Write your MySQL query statement below
select max(salary) SecondHighestSalary from Employee where(salary <(select Max(salary) from Employee));