-- Q. Create a database for your company named XYZ. Create a table inside this database to store employee 
-- information (ID, name, and salary). Insert the given employee records into the table and select and 
-- display all the table data.

CREATE DATABASE XYZ;
USE XYZ;

CREATE TABLE employee(
id int primary key,
name varchar(50),
salary int unsigned not null
);

INSERT INTO employee (id,name,salary)
VALUES
(1,"Adam",25000),
(2,"Bob",30000),
(3,"casey",40000);

SELECT * FROM employee;




