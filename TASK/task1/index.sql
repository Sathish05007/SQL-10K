SHOW databases;
use task;
show tables;

CREATE TABLE IF NOT EXISTS task1 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    age INT CHECK (age >= 18),
    citi VARCHAR(50) DEFAULT 'HYD'
);

desc task1;

-- INSERT INTO task1 (name, email, age)
-- VALUES
-- ('sagar', 'sagar@gmail.com', 23),
-- ('sathish', 'sathish@gmail.com', 24),
-- ('rahul', 'rahul@gmail.com', 19),
-- ('akhil', 'akhil@gmail.com', 23),
-- ('shannu', 'shannu@gmail.com', 24);

-- SELECT * FROM task1;


-- ALTER TABLE task1
-- ADD phone VARCHAR(15) UNIQUE;

-- ALTER TABLE task1
-- MODIFY age SMALLINT;


-- ALTER TABLE task1
-- DROP COLUMN citi;

-- SELECT * FROM task1;

UPDATE task1 SET phone = '9876543210' WHERE name = 'sagar';
UPDATE task1 SET phone = '9123456780' WHERE name = 'sathish';
UPDATE task1 SET phone = '9012345678' WHERE name = 'rahul';
UPDATE task1 SET phone = '9098765432' WHERE name = 'akhil';
UPDATE task1 SET phone = '9001234567' WHERE name = 'shannu';


SELECT * from task1;