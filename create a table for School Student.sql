CREATE DATABASE SCHOOL;
USE SCHOOL;
CREATE TABLE Info(
Roll_No INT PRIMARY KEY,
name VARCHAR(50)
);
-- first method to insert a value in entities
INSERT INTO Info VALUES(1, "Muhammad");
INSERT INTO Info VALUES(2, "Gulshid");
INSERT INTO Info VALUES(3, "Zada");

-- second method to insert a value in entities
INSERT INTO Info(Roll_No, name) VALUES(4, "Hello World");

SELECT * FROM Info;