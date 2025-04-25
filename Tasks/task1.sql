CREATE DATABASE Company_db;
USE Company_db;

CREATE TABLE Comp_Info(
id INT PRIMARY KEY,
name VARCHAR(50),
Salary INT
);

INSERT INTO Comp_Info VALUES(1, "Adam", 25000);
INSERT INTO Comp_Info VALUES(2, "bob", 30000);
INSERT INTO Comp_Info VALUES(3, "Casey", 40000);

SELECT * FROM Comp_Info;