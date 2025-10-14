select * from dept;

select * from emp;

-- Window Function Queries
SELECT ename, sal,
       RANK() OVER (ORDER BY sal DESC) AS salary_rank
FROM emp;

SELECT ename, deptno, sal,
       DENSE_RANK() OVER (PARTITION BY deptno ORDER BY sal DESC) AS dept_rank
FROM emp;

SELECT ename, deptno, sal,
       AVG(sal) OVER (PARTITION BY deptno) AS dept_avg_sal
FROM emp;

SELECT ename, deptno, sal,
       MAX(sal) OVER (PARTITION BY deptno) AS max_sal_in_dept
FROM emp;

SELECT ename, sal,
       SUM(sal) OVER (ORDER BY sal) AS running_total
FROM emp;

SELECT ename, deptno, sal,
       sal - AVG(sal) OVER (PARTITION BY deptno) AS diff_from_dept_avg
FROM emp;

SELECT ename, deptno, sal,
       MIN(sal) OVER (PARTITION BY deptno) AS min_sal_in_dept,
       MAX(sal) OVER (PARTITION BY deptno) AS max_sal_in_dept
FROM emp;

SELECT ename, hiredate, sal,
       ROW_NUMBER() OVER (ORDER BY hiredate) AS hire_order
FROM emp;

WITH salary_ranked AS (
    SELECT ename, sal,
           DENSE_RANK() OVER (ORDER BY sal DESC) AS rnk
    FROM emp
)
SELECT ename, sal
FROM salary_ranked
WHERE rnk = 2;

SELECT ename, deptno, sal,
       PERCENT_RANK() OVER (PARTITION BY deptno ORDER BY sal) AS percent_rank_in_dept
FROM emp;