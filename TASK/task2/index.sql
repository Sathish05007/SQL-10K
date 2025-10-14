show databases;

-- create database 53r;

use 53r;

-- create table dept(
--     deptno INT PRIMARY KEY,
--     dname VARCHAR(20),
--     loc VARCHAR(20)
-- );

desc dept;

-- INSERT INTO dept (deptno, dname, loc) VALUES (10, 'ACCOUNTING', 'NEW YORK'),
-- (20, 'RESEARCH', 'DALLAS'),
-- (30, 'SALES', 'CHICAGO');
-- (40, 'OPERATIONS', 'BOSTON');

select * from dept;

-- create table emp(    empno INT PRIMARY KEY,
--     ename VARCHAR(20),
--     job VARCHAR(20),
--     mgr INT,
--     hiredate DATE,
--     sal DECIMAL(10,2),
--     comm DECIMAL(10,2),
--     deptno INT,
--     FOREIGN KEY (deptno) REFERENCES dept(deptno)
-- );

-- INSERT INTO emp VALUES (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20),(7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30);
-- INSERT INTO emp VALUES (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 30);
-- INSERT INTO emp VALUES (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20);
-- INSERT INTO emp VALUES (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30);
-- INSERT INTO emp VALUES (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 30);
-- INSERT INTO emp VALUES (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 10);
-- INSERT INTO emp VALUES (7788, 'SCOTT', 'ANALYST', 7566, '1987-04-19', 3000, NULL, 20);
-- INSERT INTO emp VALUES (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10);
-- INSERT INTO emp VALUES (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, 30);
-- INSERT INTO emp VALUES (7876, 'ADAMS', 'CLERK', 7788, '1987-05-23', 1100, NULL, 20);
-- INSERT INTO emp VALUES (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, 30);
-- INSERT INTO emp VALUES (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, 20);
-- INSERT INTO emp VALUES (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 10);


select * from emp;

-- OPERATORS
SELECT ename, sal AS original_salary, sal + 500 AS increased_salary
FROM emp;

SELECT ename, sal AS original_salary, sal * 2 AS double_salary
FROM emp;

SELECT ename, sal, comm
FROM emp
WHERE comm > sal * 0.10;

SELECT ename, sal, sal * 12 AS annual_salary
FROM emp
WHERE sal * 12 > 30000;

SELECT ename, job, sal + ifnull(comm,0) AS net_income
FROM emp;

SELECT ename, sal
FROM emp
WHERE sal = 3000;

SELECT ename, sal
FROM emp
WHERE sal > 2500;

SELECT ename, sal
FROM emp
WHERE sal BETWEEN 1000 AND 2000;

SELECT ename, job
FROM emp
WHERE job = 'MANAGER';

SELECT ename, hiredate
FROM emp
WHERE hiredate > '1981-01-01';

SELECT ename, job, sal
FROM emp
WHERE job = 'CLERK' AND sal < 1500;

SELECT ename, job
FROM emp
WHERE job IN ('SALESMAN', 'CLERK');

SELECT ename, sal, deptno
FROM emp
WHERE sal BETWEEN 1000 AND 2000
  AND deptno = 30;
  
SELECT ename, job
FROM emp
WHERE job <> 'MANAGER';  

SELECT ename, comm
FROM emp
WHERE comm IS NULL;

SELECT ename, hiredate
FROM emp
WHERE hiredate BETWEEN '1981-01-01' AND '1981-12-31';

SELECT ename, deptno
FROM emp
WHERE deptno IN (10, 20, 30);

SELECT ename
FROM emp
WHERE ename LIKE 'S%';

SELECT ename
FROM emp
WHERE ename LIKE '%N';

SELECT ename
FROM emp
WHERE ename LIKE '%A%';

SELECT ename, mgr
FROM emp
WHERE mgr IS NULL;

SELECT ename, comm
FROM emp
WHERE comm IS NULL;

SELECT ename, comm
FROM emp
WHERE comm IS NOT NULL;

SELECT ename
FROM emp
WHERE sal IS NULL;

SELECT *
FROM dept
WHERE loc IS NULL;

SELECT ename, job
FROM emp
WHERE job LIKE 'M%';

SELECT ename
FROM emp
WHERE LENGTH(ename) = 5;

SELECT ename, job
FROM emp
WHERE job LIKE '%MAN';

SELECT ename
FROM emp
WHERE ename LIKE '%S';

SELECT ename
FROM emp
WHERE ename LIKE '%AA%';

SELECT ename
FROM emp
WHERE ename LIKE 'S%H';

SELECT ename, sal, sal * 0.15 AS bonus
FROM emp;

SELECT ename, sal, sal * 83 AS sal_in_inr
FROM emp;

SELECT ename, sal, comm, comm / sal AS comm_ratio
FROM emp
WHERE job = 'SALESMAN';

SELECT ename, sal AS monthly_salary, sal * 12 AS yearly_salary
FROM emp;

SELECT ename, sal, hiredate
FROM emp
WHERE sal > 1500
  AND hiredate BETWEEN '1981-01-01' AND '1981-12-31';

SELECT ename, job, sal
FROM emp
WHERE job <> 'CLERK' AND sal > 2000;

SELECT ename, sal, comm
FROM emp
WHERE comm IS NOT NULL AND sal < 2000;

SELECT ename, hiredate
FROM emp
WHERE hiredate > '1981-12-31';

SELECT ename, deptno
FROM emp
WHERE deptno IN (10, 20);