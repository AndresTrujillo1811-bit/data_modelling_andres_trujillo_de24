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
    description TEXT
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
    f_tax BOOLEAN,
    address VARCHAR(100),
    hourly_honorarium INTEGER
);


CREATE TABLE IF NOT EXISTS Course_Program (
    course_id INTEGER,
    program_id INTEGER,
    PRIMARY KEY (course_id, program_id),
    FOREIGN KEY (course_id) REFERENCES Course (course_id),
    FOREIGN KEY (program_id) REFERENCES Program (program_id)
);


