SELECT Students.student_id, Students.student_name, Subjects.subject_name, 
count(E.subject_name) AS attended_exams FROM Students 
CROSS JOIN Subjects 
LEFT OUTER JOIN Examinations E ON Students.student_id = E.student_id AND Subjects.subject_name = E.subject_name 
GROUP BY Students.student_id, Students.student_name,Subjects.subject_name 
ORDER BY Students.student_id, Subjects.subject_name