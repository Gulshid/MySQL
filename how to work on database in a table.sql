CREATE DATABASE student;
CREATE DATABASE IF NOT EXISTS student ;

DROP DATABASE IF EXISTS Company;
USE student;

CREATE TABLE Student_Info(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);

INSERT INTO Student_Info VALUES(1, "GULSHID ZADA",  22);
INSERT INTO Student_Info VALUES(2, "MUHAMMADD", 21);
INSERT INTO Student_Info VALUES(3, "FARAZ", 20);
INSERT INTO Student_Info VALUES(4, "RAFI", 19);

SELECT * FROM Student_Info;

SHOW DATABASES;
SHOW TABLES;