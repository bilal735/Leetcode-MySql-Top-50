# Write your MySQL query statement below
SELECT e.name,b.bonus from  Employee e left join  Bonus b  ON( e.empId=b.empId) where( ifNull(bonus,-1) <1000);
