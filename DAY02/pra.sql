-- Topic 8: DML Commands (20 Questions)

-- Insert a new employee (9001, ‘RAVI’, ‘CLERK’, 7698, ‘2020-02-01’, 1500, NULL, 30).

-- Insert a record with only name and salary (use default values for others).

-- Update salary of SMITH to 1200.

-- Increase salary by 10% for all employees.

-- Increase commission by 20% for all SALESMEN.

-- Set commission = 0 where it is NULL.

-- Delete employees with commission = 0.

-- Delete employees from department 40.

-- Insert 3 new employees in department 10.

-- Update job of MILLER to ANALYST.

-- Update salary to 5000 where job = ‘MANAGER’.

-- Delete all employees hired before 1981.

-- Increase salary by 500 for department 20 employees.

-- Copy all data of emp into another table emp_backup.

-- Delete all employees whose name starts with ‘A’.

-- Insert employee with NULL commission explicitly.

-- Update manager of SMITH to 7839.

-- Delete all employees with salary less than 1000.

-- Increase salary by 15% for employees who earn less than 2000.

-- Delete all rows from emp but keep structure.

-- 🔹 Topic 9: DDL Commands (20 Questions)

-- Create a table emp_test similar to emp.

-- Add a new column email to emp.

-- Modify datatype of comm to INT.

-- Drop the column mgr.

-- Rename column ename to emp_name.

-- Rename table emp to employee.

-- Create a copy of emp called emp_copy.

-- Add a constraint to make empno PRIMARY KEY.

-- Add a NOT NULL constraint to ename.

-- Add a CHECK constraint that salary must be > 0.

-- Drop the CHECK constraint.

-- Create a new table dept_backup from dept.

-- Delete all rows from emp using TRUNCATE.

-- Drop the emp_test table.

-- Create a new table with only employee name and salary.

-- Add foreign key constraint on deptno referencing dept.

-- Remove the foreign key constraint.

-- Describe the structure of emp.

-- Change column size of ename to 30.

-- Drop all constraints from emp.


show databases;

use 10k_53r;

show tables;