SET search_path TO yrkes_co;


TRUNCATE TABLE Course_Program RESTART IDENTITY CASCADE;


INSERT INTO Course_Program (course_id, program_id) VALUES
(1, 1),
(2, 2);


SELECT * FROM yrkes_co.course_program;
