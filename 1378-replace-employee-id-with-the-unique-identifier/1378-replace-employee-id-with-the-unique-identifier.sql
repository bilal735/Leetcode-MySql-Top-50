# Write your MySQL query statement below
SELECT en.unique_id,e.name from Employees e Left Join EmployeeUNI en ON e.id=en.id;