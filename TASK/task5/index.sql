select * from dept;

select * from emp;

-- trigger

-- After Salary Update Trigger
CREATE TABLE salary_audit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    empno INT,
    ename VARCHAR(20),
    deptno INT,
    old_sal DECIMAL(10,2),
    new_sal DECIMAL(10,2),
    change_date DATETIME
);

select * from salary_audit;

DELIMITER $$

CREATE TRIGGER after_salary_update
AFTER UPDATE ON emp
FOR EACH ROW
BEGIN
    -- Only log if salary actually changed
    IF OLD.sal <> NEW.sal THEN
        INSERT INTO salary_audit(empno, ename, deptno, old_sal, new_sal, change_date)
        VALUES (OLD.empno, OLD.ename, OLD.deptno, OLD.sal, NEW.sal, NOW());
    END IF;
END$$

DELIMITER ;

UPDATE emp
SET sal = sal + 500
WHERE empno = 7369;

select * from salary_audit;