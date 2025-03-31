CREATE SCHEMA IF NOT EXISTS yrkes_co;

SET search_path TO yrkes_co;


CREATE TABLE IF NOT EXISTS Student (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(100),
    personal_number CHAR(12),
    email VARCHAR(255) UNIQUE
);


CREATE TABLE IF NOT EXISTS Classes (
    class_id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    program_id INTEGER,
    starting_year INTEGER
);


CREATE TABLE IF NOT EXISTS Program (
    program_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    description TEXT,
    FOREIGN KEY (program_id) REFERENCES Program(program_id)
);


CREATE TABLE IF NOT EXISTS Training_Leader (
    leader_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(255) UNIQUE
); 


CREATE TABLE IF NOT EXISTS Course (
    course_id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    code VARCHAR(12),
    point INTEGER,
    description TEXT
);


CREATE TABLE IF NOT EXISTS Trainer (
    trainer_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS Consult (
    consult_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    organization_number INTEGER,
    f_tax TEXT,
    address VARCHAR(100),
    hourly_honorarium INTEGER
);


CREATE TABLE IF NOT EXISTS Student_Class (
    student_id INTEGER,
    class_id INTEGER,
    PRIMARY KEY (student_id, class_id),
    FOREIGN KEY (student_id) REFERENCES Student (student_id),
    FOREIGN KEY (class_id) REFERENCES Classes (class_id)
);


CREATE TABLE IF NOT EXISTS Class_Leader (
    class_id INTEGER,
    leader_id INTEGER,
    PRIMARY KEY (class_id, leader_id),
    FOREIGN KEY (class_id) REFERENCES Classes (class_id),
    FOREIGN KEY (leader_id) REFERENCES Training_Leader (leader_id)
);


CREATE TABLE IF NOT EXISTS Class_Course (
    class_id INTEGER,
    course_id INTEGER,
    PRIMARY KEY (class_id, course_id),
    FOREIGN KEY (class_id) REFERENCES Classes (class_id),
    FOREIGN KEY (course_id) REFERENCES Course (course_id)
);


CREATE TABLE IF NOT EXISTS Course_Program (
    course_id INTEGER,
    program_id INTEGER,
    PRIMARY KEY (course_id, program_id),
    FOREIGN KEY (course_id) REFERENCES Course (course_id),
    FOREIGN KEY (program_id) REFERENCES Program (program_id)   
);


CREATE TABLE IF NOT EXISTS Course_Trainer (
    course_id INTEGER,
    trainer_id INTEGER,
    PRIMARY KEY (course_id, trainer_id),
    FOREIGN KEY (course_id) REFERENCES Course (course_id),
    FOREIGN KEY (trainer_id) REFERENCES Trainer (trainer_id)
);


CREATE TABLE IF NOT EXISTS Consult_Trainer (
    trainer_id INTEGER,
    consult_id INTEGER,
    PRIMARY KEY (trainer_id, consult_id),
    FOREIGN KEY (trainer_id) REFERENCES Trainer (trainer_id),
    FOREIGN KEY (consult_id) REFERENCES Consult (consult_id)
);



