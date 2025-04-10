SET search_path TO yrkes_co;


-- Testqueries 


-- Getting students and which class they belong to 

SELECT S.first_name, S.last_name, C.name AS Program
FROM Student S
JOIN Classes C ON S.student_id = C.class_id;



-- Getting all courses within specific program

SELECT p.name AS Program, c.name AS Course, c.code
FROM Program p 
JOIN Course_Program cp on p.program_id = cp.program_id
JOIN Course c on cp.course_id = c.course_id
WHERE p.name = 'Data Engineering';


-- Getting trainers and the courses they teach

SELECT T.name AS Trainer, C.name AS Course
FROM Trainer T
JOIN Course C ON T.trainer_id = C.course_id;
