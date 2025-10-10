show databases;

-- 1. Create a new database
CREATE DATABASE IF NOT EXISTS Company;


-- 2. Use the database
USE Company;

-- 3. Create Employees table
-- CREATE TABLE Employees (
--     emp_id INT PRIMARY KEY,
--     name VARCHAR(50),
--     salary INT,
--     department VARCHAR(50)
-- );

desc Employees;

-- -- 4. Insert 3 rows into Employees
-- INSERT INTO Employees (emp_id, name, salary, department)
-- VALUES (1, 'Alice', 50000, 'HR'),
--        (2, 'Bob', 60000, 'IT'),
--        (3, 'Charlie', 55000, 'Finance');

select * from Employees;

-- 5. Update the salary of one employee (Bob)
UPDATE Employees
SET salary = 65000
WHERE emp_id = 2;

-- 6. Add a new column email
ALTER TABLE Employees
ADD email VARCHAR(100);

-- 7. Change the datatype of salary to DECIMAL(10,2)
ALTER TABLE Employees
MODIFY salary DECIMAL(10,2);

-- 8. Delete one row (Charlie)
DELETE FROM Employees
WHERE emp_id = 3;

-- 9. Create another table Departments
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- 10. Delete Departments table
DROP TABLE Departments;

-- 11. Delete the entire Company database
DROP DATABASE Company;




