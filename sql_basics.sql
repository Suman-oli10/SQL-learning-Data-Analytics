-- Creating a database
CREATE DATABASE college;

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

-- Display all databases
SHOW DATABASES;

-- Display tables in the selected database
SHOW TABLES;

-- Display the structure of a table
DESCRIBE students;

-- Inserting multiple records
INSERT INTO students (id, name, age)
VALUES
(4, 'Sita', 20),
(5, 'Rohan', 23),
(6, 'Gita', 18);



CREATE DATABASE employee;

-- Droping a database
DROP DATABASE employee;

USE employee;

CREATE TABLE data(
name varchar(60),
salary INT DEFAULT 25000,  -- USE of default constraint
age int check(age>=18)   -- use of check constraint
);


INSERT INTO data(name,salary,age)
VALUES
("Ram",60000,29),
("Suman",DEFAULT,22), 
("Rohan",50000,30);

SELECT * FROM data;







