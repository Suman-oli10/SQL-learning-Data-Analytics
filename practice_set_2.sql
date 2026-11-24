-- Write the query to find the average marks in each city in ascending order:

CREATE DATABASE school;
USE school;

CREATE TABLE school_students(
roll_no INT PRIMARY KEY,
name VARCHAR(50),
marks INT UNSIGNED,
city VARCHAR(50) NOT NULL
);

INSERT INTO school_students(roll_no,name,marks,city)
VALUES
(101,"Messi",85,"Ktm"),
(102,"Ronaldo",75,"Pokhara"),
(103,"Neymar",80,"Ktm"),
(104,"Halland",60,"Dhangadhi"),
(105,"Lamine",65,"Pokhara");

SELECT city, AVG(marks) FROM school_students
GROUP BY city
ORDER BY marks ASC;

-- General order
SELECT name,city
FROM school_students
WHERE marks>60
GROUP BY name
ORDER BY city ASC;
