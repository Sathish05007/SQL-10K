select * from dept;

select * from emp;

-- Subquery Queries
SELECT ename, sal
FROM emp
WHERE sal > (SELECT AVG(sal) FROM emp);

SELECT ename, deptno
FROM emp
WHERE deptno = (SELECT deptno FROM emp WHERE ename = 'SMITH');

SELECT ename, sal
FROM emp
WHERE sal > ALL (SELECT sal FROM emp WHERE deptno = 30);

SELECT ename, sal
FROM emp
WHERE sal = (SELECT MAX(sal) FROM emp);

SELECT deptno, dname
FROM dept
WHERE deptno NOT IN (SELECT DISTINCT deptno FROM emp);

SELECT ename, deptno, sal
FROM emp e
WHERE sal > (SELECT AVG(sal) FROM emp WHERE deptno = e.deptno);

SELECT ename, hiredate
FROM emp
WHERE hiredate < (SELECT MIN(hiredate) FROM emp WHERE deptno = 20);

SELECT ename, job, deptno
FROM emp
WHERE job IN (SELECT DISTINCT job FROM emp WHERE deptno = 10);

SELECT ename, sal
FROM emp
WHERE sal > (SELECT sal FROM emp WHERE ename = 'ALLEN');

SELECT ename, sal
FROM emp
WHERE sal = (
    SELECT MAX(sal) 
    FROM emp
    WHERE sal < (SELECT MAX(sal) FROM emp)
);

SELECT deptno
FROM emp
GROUP BY deptno
HAVING AVG(sal) > (SELECT AVG(sal) FROM emp);

SELECT e.ename, e.sal, e.mgr
FROM emp e
WHERE sal > (SELECT sal FROM emp m WHERE m.empno = e.mgr);

SELECT ename, hiredate
FROM emp
WHERE hiredate > (SELECT MAX(hiredate) FROM emp WHERE deptno = 10);

SELECT ename, sal
FROM emp
WHERE sal > ANY (SELECT sal FROM emp WHERE deptno = 20);

SELECT ename, job, deptno
FROM emp
WHERE job = (SELECT job FROM emp WHERE ename = 'FORD')
  AND deptno <> (SELECT deptno FROM emp WHERE ename = 'FORD');