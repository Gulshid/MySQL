CREATE DATABASE PRACTICE;
USE PRACTICE;
-- WRITE A TABLE RESULT OF PAITENT OF FIRST , LAST NAME AND THEIR GENDER WHICH IS 'M'
CREATE TABLE Show_M(
first_name VARCHAR(50),
last_name VARCHAR(50),
gender VARCHAR(5)
);

INSERT INTO Show_M VALUES
("GUlshid", "Zada", "M"),
("Ubaid ", "Ullah", "M"),
("Hassan", "Khan", "M"),
("Faraz", "Ahmad", "M"),
("jinney", "ellie", "F"),
("marry", "curry", "F");

SELECT * FROM Show_M HAVING gender="M";

-- SHOW THE TABLE RESULT OF PAITENT OF FIRST , LAST NAME WHOSE DOES NOT HAVE ALLERGIES
CREATE TABLE Show_Aller(
first_name VARCHAR(50),
last_name VARCHAR(50),
aller VARCHAR(10)
);

INSERT INTO  Show_Aller VALUES
("Martin", "Schultz", "YES"),
("Subhash", "Vercite", "null"),
("Gala", "Cakle", "YES"),
("Matt", "Celine", "null");

SELECT * FROM Show_Allergi WHERE Allergie = "null";


-- SHOW THE FIRST NAME OF PAITENT WHO NAME START WITH C

CREATE TABLE SHOW_C(
first_name VARCHAR(30)
);

INSERT INTO Show_C VALUES
("Charles"),
("Charlie"),
("Cadric"),
("Cross"),
("Caligh"),
("Cathrine"),
("Caroline"),
("Gross"),
("Laligh"),
("Kathrine"),
("Ranoline");


SELECT first_name FROM Show_C Where first_name LIKE  'C%'; 

-- SHOW FIRST NAME AND LAST NAME OF PAITENT THAT WEIGHT WITHIN THE RANGE OF 100 TO 120

CREATE TABLE SHOW_WEIGHT(
first_name VARCHAR(50),
last_name VARCHAR(50),
weight INT NOT NULL
);

INSERT INTO SHOW_WEIGHT VALUES
("Jiji", "Sharma", 90),
("Blair", "Diaz", 98),
("Tom", "rie", 118),
("Thomas", "Oneill", 102),
("Sonney", "calue", 105),
("JOn", "cae", 110),
("Angel", "ioe", 116),
("John", "Shar", 120),
("Temple", "arma", 130),
("Done", "curryma", 150);

SELECT * FROM SHOW_WEIGHT
WHERE weight BETWEEN 100 AND 120;

-- Update the patients table for the allergies column. If the patients allergies is null then replace it with 'NKA'
UPDATE Show_Aller
SET aller ="NKA" 
WHERE aller="null";

SELECT * FROM Show_Aller;


-- SHOW THE FIRST AMD LAST IN THIRED COLUMN COMBINE CONCAT
CREATE TABLE SHOW_FULL_NAME(
first_name VARCHAR(50),
last_name VARCHAR(50),
full_name VARCHAR(50)
);

INSERT INTO SHOW_FULL_NAME VALUES
("GUlshid", "Zada", ""),
("Ubaid ", "Ullah", ""),
("Hassan", "Khan", ""),
("Faraz", "Ahmad", ""),
("jinney", "ellie", ""),
("marry", "curry", "");
SELECT concat(first_name, ' ', last_name) AS full_name
FROM  SHOW_FULL_NAME;


-- Show first name, last name, and the full province name of each patient.
CREATE TABLE SHOW_FULL_DETAILS(
first_name VARCHAR(50),
last_name VARCHAR(50),
Provence_name VARCHAR(50)
);



INSERT INTO SHOW_FULL_DETAILS VALUES
("GUlshid", "Zada", "KPK"),
("Ubaid ", "Ullah", "KPK"),
("Hassan", "Khan", "KPK"),
("Faraz", "Ahmad", "PUNJAB"),
("jinney", "ellie", "SINDH"),
("marry", "curry", "BALOCHISTAN");

SELECT  * FROM SHOW_FULL_DETAILS ;

-- Show how many patients have a birth_date with 2010 as the birth year.
CREATE TABLE SHOW_BIRTH(
Sn INT PRIMARY KEY,
DOB INT NOT NULL
);

INSERT INTO SHOW_BIRTH VALUES
(1, 2010),
(2, 2010),
(3, 2013),
(4, 2009),
(5, 2009),
(6, 2015),
(7, 2010),
(8, 2011);

SELECT count(DOB) FROM SHOW_BIRTH
WHERE DOB=2010;
-- Show the first_name, last_name, and height of the patient with the greatest height.
CREATE TABLE SHOW_GREATEST_HEIGHT_PERSON(
first_name VARCHAR(50),
last_name VARCHAR(50),
Height DOUBLE
);

INSERT INTO SHOW_GREATEST_HEIGHT_PERSON VALUES
("GUlshid", "Zada", 6.0),
("Ubaid ", "Ullah", 5.6),
("marry", "curry", 6.3),
("Hassan", "Khan", 5.4),
("Faraz", "Ahmad", 6.0),
("jinney", "ellie", 5.9);

SELECT * FROM SHOW_GREATEST_HEIGHT_PERSON
ORDER BY Height DESC
LIMIT 1;

-- Show all columns for patients who have one of the following patient_ids:1,45,534,879,1000
CREATE TABLE SHOWPAITENT_ID(
paitent_id INT PRIMARY KEY
);

INSERT INTO SHOWPAITENT_ID VALUES
(1),
(2),
(3),
(4),
(45),
(534),
(879),
(1000),
(5),
(6),
(7),
(8),
(9),
(10);


SELECT *  FROM SHOWPAITENT_ID
WHERE paitent_id IN (1, 45, 534, 879, 1000);


-- Show the total number of admissions
CREATE TABLE SHOW_TOTAL_ADMISS(
admiss_no INT
);

INSERT INTO SHOW_TOTAL_ADMISS VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22);

SELECT COUNT(admiss_no) FROM
SHOW_TOTAL_ADMISS;

