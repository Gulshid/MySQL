CREATE DATABASE Collage;
USE Collage;


CREATE TABLE student_Information(
Roll_no INT PRIMARY KEY,
name VARCHAR(50),
Marks INT,
Grade VARCHAR(10),
City VARCHAR(30)
);
INSERT INTO Student_Information VALUES (1, "Gulshid Zada", 600, "A+", "Hangu");
INSERT INTO Student_Information VALUES (2, "Kamran", 506, "B+", "Peshawar");
INSERT INTO Student_Information VALUES (3, "Wali", 520, "B+", "Kohat");
INSERT INTO Student_Information VALUES (4, "Wahab", 450, "C", "Sialkot");
INSERT INTO Student_Information VALUES (5, "Waqas", 480, "C+", "Rawalpindi");
INSERT INTO Student_Information VALUES (6, "Faraz", 490, "B", "Lahore");

-- THREE METHOD OF ACCESSING OUR DATA
-- SELECT * FROM student_Information;
-- SELECT City FROM Student_Information;
SELECT DISTINCT Marks FROM Student_Information;
