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



-- FOREIGN KEY: 
CREATE TABLE Department(
id INT PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY(dept_id) REFERENCES Department(id)
ON DELETE CASCADE
ON UPDATE CASCADE
);

-- To see foreign key method: Database-Reverse Engineer-choose database file-next-next

-- CASCADING FOREIGN KEY(FK)
 INSERT INTO Department 
 VALUES
 (101,"SQL"),
 (102,"Physics");
 
 INSERT INTO teacher 
 VALUES
 (1,"Ram",101),
 (2,"Shyam",102);
 
UPDATE Department
SET id=105
WHERE id=101;

SELECT * FROM Department;
 SELECT * FROM teacher;
 
 -- Even though we didn't change id to 105 in teacher it automatically changed using cascading for foreign key.

 
 -- For the logic clearly on the notebook.
 

 






