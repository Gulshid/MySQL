CREATE DATABASE School_Management_System;
USE School_Management_System;

-- Students Tabke
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    date_of_birth DATE,
    address TEXT
);

-- insertion of values in Students table
INSERT INTO students (name, email, phone, date_of_birth, address)
VALUES 
('John Doe', 'john@example.com', '1234567890', '2005-05-10', 'New York'),
('Alice Smith', 'alice@example.com', '9876543210', '2006-08-22', 'Los Angeles');

-- Teacher table
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    subject_specialization VARCHAR(100)
);

-- Insertion of values in teacher table
INSERT INTO teachers (name, email, phone, subject_specialization)
VALUES 
('Mr. David', 'david@example.com', '1122334455', 'Mathematics'),
('Ms. Julia', 'julia@example.com', '2233445566', 'Science');

-- Classes Table
CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL
);
-- Insertion of values in classes table
INSERT INTO classes (class_name)
VALUES ('Class 10'), ('Class 12');

-- Subjects Table
CREATE TABLE subjects (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);
-- Insertion of values in Subjects Table
INSERT INTO subjects (subject_name, teacher_id)
VALUES 
('Mathematics', 1),
('Science', 2);

-- Student Classes table
CREATE TABLE student_classes (
    student_class_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    class_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
);
-- Insertion of values in Student classes Table
INSERT INTO student_classes (student_id, class_id)
VALUES 
(1, 1),
(2, 2);

-- Marks table
CREATE TABLE marks (
    mark_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    subject_id INT,
    marks_obtained INT,
    exam_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);
-- Insertion of Marks table
INSERT INTO marks (student_id, subject_id, marks_obtained, exam_date)
VALUES 
(1, 1, 85, '2025-04-20'),
(1, 2, 78, '2025-04-20'),
(2, 1, 90, '2025-04-20'),
(2, 2, 88, '2025-04-20');


-- displaying all Students
SELECT * FROM students;

-- Displaying all teacher
SELECT * FROM teachers;

-- Displaying all Classes
SELECT * FROM classes;

-- Display students with their classes
SELECT 
    students.name AS student_name,
    classes.class_name
FROM student_classes
JOIN students ON student_classes.student_id = students.student_id
JOIN classes ON student_classes.class_id = classes.class_id;

-- Display student marks with subject names

SELECT 
    students.name AS student_name,
    subjects.subject_name,
    marks.marks_obtained,
    marks.exam_date        
FROM marks
JOIN students ON marks.student_id = students.student_id
JOIN subjects ON marks.subject_id = subjects.subject_id;
