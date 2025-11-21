create database knmiet;
use knmiet;
CREATE TABLE students(
stdid INT PRIMARY KEY,
stdname VARCHAR(50),
age INT,
city VARCHAR(50)
)
INSERT INTO students VALUES
(1,'ROHAN', 20,'PUNE');
INSERT INTO students VALUES
(2,'MEERA', 22,'MUMBAI'); 
INSERT INTO students VALUES
(3,'ARJUN', 21,'DELHI');
INSERT INTO students VALUES
(4,'KAVYA', 23,'PUNE'); 
INSERT INTO students VALUES
(5,'NEHA', 22,'KOLKATA'); 
SELECT * FROM students;
SELECT stdname, age FROM students;
SELECT stdname FROM students where city='PUNE';
SELECT stdname FROM students where age>21;
SELECT stdname FROM students order by age DESC;
SELECT city, COUNT(*) AS student_count FROM students GROUP BY city;
SELECT * FROM students WHERE stdname LIKE 'K%';
DELETE FROM students WHERE stdid = 5;
CREATE TABLE marks(
stdid INT PRIMARY KEY,
subject VARCHAR(50),
marks INT 
)
INSERT INTO marks VALUES
(1,'Maths', 88);
INSERT INTO marks VALUES
(2,'Maths',76);
INSERT INTO marks VALUES
(3,'Maths',92);
INSERT INTO marks VALUES
(4,'Maths',67);
SELECT s.stdname, m.marks FROM students s
INNER JOIN marks m ON s.stdid = m.stdid;
SELECT s.stdname, m.marks
FROM students s
INNER JOIN marks m
ON s.stdid = m.stdid;
SELECT s.stdname, m.marks
FROM students s
LEFT JOIN marks m
ON s.stdid = m.stdid;
SELECT s.stdname, m.marks
FROM students s
RIGHT JOIN marks m
ON s.stdid = m.stdid;
SELECT s.stdname, m.marks
FROM students s
CROSS JOIN marks m;
SELECT s.stdname, m.marks
FROM students s
INNER JOIN marks m
ON s.stdid = m.stdid
WHERE m.marks > 80;
