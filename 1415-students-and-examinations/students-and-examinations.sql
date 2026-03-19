# Write your MySQL query statement below
#write a solution to find the number of times each student attended each exam .
#return the result table ordered by student_id and subject_name.
# Write your MySQL query statement below
select s.student_id as student_id ,student_name as student_name ,  su.subject_name as subject_name , count( e.subject_name) as attended_exams
from Students s
join subjects su
left join Examinations e
ON s.student_id = e.student_id
AND su.subject_name = e.subject_name
group by s.student_id , su.subject_name
order by student_id , subject_name ;