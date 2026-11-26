CREATE DATABASE SQL_JOINS;
USE SQL_JOINS;

CREATE TABLE teacher(
Tid INT PRIMARY KEY,
name VARCHAR(30),
salary INT unsigned
);

CREATE TABLE teacher_record(
Tid INT PRIMARY KEY,
course VARCHAR(50)
);

INSERT INTO teacher(Tid,name,salary)
VALUES
(101,"Satya",50000),
(102,"Bhim",40000),
(103,"Arjun",36000),
(104,"Santosh",50000);

INSERT INTO teacher_record(Tid,course)
VALUES
(101,"IIT"),
(105,"OOP"),
(103,"Numerical Method");

-- 1. INNER JOIN: returns common records from both table
SELECT*
FROM teacher
INNER JOIN teacher_record
ON teacher.Tid=teacher_record.Tid;

-- 2. LEFT JOIN: returns all the records from left(1st table) and only matching records from right(2nd table)
SELECT * 
FROM teacher as t
LEFT JOIN teacher_record as tr
ON t.Tid=tr.Tid;

-- 3. RIGHT JOIN: returns all the records from right(1st table) and only matching records from left(2nd table)
SELECT *
FROM teacher AS t
RIGHT JOIN teacher_record AS tr
ON t.Tid=tr.Tid;

-- 4. FULL JOIN: returns all the records from both table:
SELECT * 
FROM teacher as t
LEFT JOIN teacher_record as tr
ON t.Tid=tr.Tid
UNION
SELECT *
FROM teacher AS t
RIGHT JOIN teacher_record AS tr
ON t.Tid=tr.Tid;

-- We can also write like this, mathiko le 2 choti Tid return gariraxa so:
SELECT t.Tid, t.name, t.salary, tr.course
FROM teacher AS t
INNER JOIN teacher_record AS tr
ON t.Tid = tr.Tid;


