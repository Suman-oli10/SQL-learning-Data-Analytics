-- Creating a database
CREATE DATABASE college;
CREATE DATABASE employee;

-- Droping a database
DROP DATABASE employee;

-- Selecting the database
USE college;

-- Creating a student table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

-- Inserting into table
INSERT INTO students VALUES (1, "Suman", 21);
INSERT INTO students VALUES (2, "Hari", 22);
INSERT INTO students VALUES (3, "Ram", 19);

-- Displaying a table
SELECT * FROM students;