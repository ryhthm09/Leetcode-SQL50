# Write your MySQL query statement below
select T.student_id,T.student_name,T.subject_name ,count(e.subject_name) as attended_exams from (select student_id,student_name,subject_name from Students cross join Subjects order by  student_id,subject_name)as T 
left join Examinations e on T.student_id=e.student_id and T.subject_name=e.subject_name group by T.student_id,T.subject_name order by T.student_id,T.subject_name ;
