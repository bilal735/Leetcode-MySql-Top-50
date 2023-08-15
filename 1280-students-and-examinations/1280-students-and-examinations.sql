# Write your MySQL query statement below
with cte AS(
SELECT * FROM Students  cross Join Subjects 
)
select cte.student_id,cte.student_name,cte.subject_name,sum(case  when e.subject_name is null then 0 else 1 end) as attended_exams
from cte Left Join Examinations e on( cte.student_id = e.student_id and cte.subject_name=e.subject_name)
 group by cte.student_id , cte.student_name , cte.subject_name
 order by(student_id); 


