CREATE DATABASE college_new;
USE college_new;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(5),
city VARCHAR(50)
);

INSERT INTO student(rollno,name,marks,grade,city)
VALUES
(1,"Suman",58,"A","Kathmandu"),
(2, "Rahul", 65, "B", "Pokhara"),
(3, "Aayush", 72, "A", "Lalitpur"),
(4, "Priya", 49, "C", "Bhaktapur"),
(5, "Anisha", 81, "A", "Chitwan"),
(6, "Rohan", 55, "B", "Butwal");

SELECT * FROM student;


-- Selecting specific column from table(studetns)
-- Basic syntax: SELECT col1,col2 FROM table_name;
SELECT name,marks FROM student;

-- Use of DISTINCT keyword: it shows all the repeatable value at once
SELECT DISTINCT grade FROM student;

-- Use of WHERE clause:
SELECT * FROM student WHERE marks>60;
SELECT * FROM student WHERE city="Kathmandu";


-- Operators: 

-- use of AND operator
SELECT * FROM student WHERE marks>60 AND grade="A";

-- Use of OR operator
SELECT * FROM student WHERE marks>60 OR grade="A";

-- Use of NOT operator
SELECT * FROM student WHERE NOT city="Kathmandu";

-- Use of IN operator
SELECT * FROM student WHERE city IN ("Kathmandu", "Chitwan");

-- Use of BETWEEN operator
SELECT * FROM student WHERE marks BETWEEN 60 AND 80;



-- Use of LIMIT clause:
SELECT * FROM student LIMIT 2;


-- Use of ORDER by clause:

-- For ascending(ASC)
SELECT * FROM student
ORDER BY name ASC;

-- For descending(DESC)
SELECT * FROM student
ORDER BY marks DESC
LIMIT 3;


-- Aggregate Functions:
 
-- COUNT():
SELECT  COUNT(name) FROM student;
SElECT COUNT(*) FROM student;
SELECT COUNT(marks) FROM student;

-- MAX():
SELECT MAX(marks) FROM student;

-- AVG():
SELECT AVG(marks) FROM student;

-- MIN():
SELECT MIN(marks) FROM student;

-- SUM()
SELECT SUM(marks) FROM student;

-- GROUP BY CLAUSE:
SELECT city, COUNT(rollno) FROM student
GROUP BY grade;

-- HAVING CLAUSE:
SELECT city,COUNT(name)
FROM student
GROUP BY city
HAVING MAX(marks)>60;






