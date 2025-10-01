show databases;

use 10k_53r;

show tables;

-- -- Students Table
-- CREATE TABLE students (
--     student_id INT PRIMARY KEY,
--     name VARCHAR(50),
--     age INT,
--     grade CHAR(1),
--     class INT
-- );

-- -- Employees Table
-- CREATE TABLE employees (
--     emp_id INT PRIMARY KEY,
--     name VARCHAR(50),
--     salary DECIMAL(10,2),
--     department VARCHAR(20)
-- );

-- -- Products Table
-- CREATE TABLE products (
--     product_id INT PRIMARY KEY,
--     name VARCHAR(50),
--     price DECIMAL(10,2)
-- );

-- -- Orders Table
-- CREATE TABLE orders (
--     order_id INT PRIMARY KEY,
--     customer_id INT,
--     amount DECIMAL(10,2)
-- );

-- -- Customers Table
-- CREATE TABLE customers (
--     customer_id INT PRIMARY KEY,
--     name VARCHAR(50),
--     city VARCHAR(50)
-- );

INSERT INTO students (student_id, name, age, grade, class, marks) VALUES
(1, 'Sathish', 20, 'A', 1, 85),
(2, 'Anita', 19, 'B', 2, 78),
(3, 'Rahul', 21, 'C', 3, 92),
(4, 'Sneha', 20, 'A', 1, 88),
(5, 'Amit', 18, 'B', 2, 70),
(6, 'Sara', 22, 'A', 3, 95);


INSERT INTO employees (emp_id, name, salary, department) VALUES
(1, 'Ramesh', 50000, 'HR'),
(2, 'Anjali', 65000, 'IT'),
(3, 'Vikram', 70000, 'Finance'),
(4, 'Kavya', 55000, 'IT'),
(5, 'Sonia', 60000, 'HR'),
(6, 'Arjun', 72000, 'Finance');

INSERT INTO products (product_id, name, price) VALUES
(1, 'Math Book', 300),
(2, 'Science Book', 450),
(3, 'Laptop', 50000),
(4, 'Pen', 50),
(5, 'Notebook', 150),
(6, 'Chair', 1200);

INSERT INTO orders (order_id, customer_id, amount) VALUES
(1, 1, 1200),
(2, 2, 4500),
(3, 3, 600),
(4, 4, 3000),
(5, 5, 800),
(6, 6, 2000);



INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Ravi', 'Delhi'),
(2, 'Anita', 'Mumbai'),
(3, 'Kiran', 'Chennai'),
(4, 'Suresh', 'Bangalore'),
(5, 'Meera', 'Hyderabad'),
(6, 'Priya', 'Delhi');


select * from customer;
select * from employees;
select * from orders;
select * from products;
select * from students;

-- -- 1. Find all students whose age = 20
-- SELECT * FROM students WHERE age = 20;

-- -- 2. Retrieve all products where price < 500
-- SELECT * FROM products WHERE price < 500;

-- -- 3. Get all employees with salary > 60000
-- SELECT * FROM employees WHERE salary > 60000;

-- -- 4. Find students whose name starts with 'S'
-- SELECT * FROM students WHERE name LIKE 'S%';

-- -- 5. List orders where amount is BETWEEN 1000 and 5000
-- SELECT * FROM orders WHERE amount BETWEEN 1000 AND 5000;

-- -- 6. Show employees whose department is IN ('HR', 'IT', 'Finance')
-- SELECT * FROM employees WHERE department IN ('HR','IT','Finance');

-- -- 7. Find customers whose city is NOT IN ('Delhi', 'Mumbai')
-- SELECT * FROM customers WHERE city NOT IN ('Delhi','Mumbai');

-- -- 8. Select all students whose grade is NOT 'A'
-- SELECT * FROM students WHERE grade <> 'A';

-- -- 9. Find employees whose names end with 'a' using LIKE
-- SELECT * FROM employees WHERE name LIKE '%a';

-- -- 10. List all products where name contains 'Book' using LIKE
-- SELECT * FROM products WHERE name LIKE '%Book%';


-- -- 1. Count the total number of students in the students table
-- SELECT COUNT(*) FROM students;

-- -- 2. Count how many employees work in the 'IT' department
-- SELECT COUNT(*) FROM employees WHERE department = 'IT';

-- -- 3. Find the total salary of all employees
-- SELECT SUM(salary) FROM employees;

-- -- 4. Find the total sales amount from the orders table
-- SELECT SUM(amount) FROM orders;

-- -- 5. Calculate the average price of all products
-- SELECT AVG(price) FROM products;

-- -- 6. Calculate the average age of students
-- SELECT AVG(age) FROM students;

-- -- 7. Find the minimum salary of employees
-- SELECT MIN(salary) FROM employees;

-- -- 8. Find the minimum product price
-- SELECT MIN(price) FROM products;

-- -- 9. Find the maximum marks obtained by a student
-- -- Assuming a 'marks' column exists in students table
-- ALTER TABLE students ADD marks INT;
-- SELECT MAX(marks) FROM students;

-- -- 10. Find the highest order amount in the orders table
-- SELECT MAX(amount) FROM orders;



-- -- 1. Count the number of students whose age > 18
-- SELECT COUNT(*) FROM students WHERE age > 18;

-- -- 2. Find the total salary of employees in department 'HR'
-- SELECT SUM(salary) FROM employees WHERE department = 'HR';

-- -- 3. Find the average order amount where amount BETWEEN 500 AND 5000
-- SELECT AVG(amount) FROM orders WHERE amount BETWEEN 500 AND 5000;

-- -- 4. Count how many products have price < 1000
-- SELECT COUNT(*) FROM products WHERE price < 1000;

-- -- 5. Find the maximum salary of employees whose department is IN ('IT', 'Finance')
-- SELECT MAX(salary) FROM employees WHERE department IN ('IT','Finance');
