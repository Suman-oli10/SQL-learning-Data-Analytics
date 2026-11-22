-- Find the total payment according to each payment method:

CREATE DATABASE customer;
USE customer;

CREATE TABLE customer_table(
customer_id INT PRIMARY KEY,
name VARCHAR(50),
payment_method VARCHAR(50),
city VARCHAR(50) NOT NULL
);

INSERT INTO customer_table (customer_id, name, payment_method, city)
VALUES
(101, 'Olivia Barrett', 'Netbanking', 'Portland'),
(102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
(103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
(104, 'Liam Donovan', 'Netbanking', 'Denver'),
(105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
(106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
(107, 'Ava Patel', 'Debit Card', 'Phoenix'),
(108, 'Lucas Carter', 'Netbanking', 'Boston'),
(109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
(110, 'Jackson Brooks', 'Credit Card', 'Boston');

SELECT payment_method,COUNT(customer_id)
FROM customer_table
GROUP by payment_method;