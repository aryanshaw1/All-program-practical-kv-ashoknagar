question 3 

CREATE DATABASE CBSE24;
USE CBSE24;

CREATE TABLE STUDENT (
    Enrol INT PRIMARY KEY,
    SName VARCHAR(50),
    Fee INT,
    House VARCHAR(20),
    Class INT,
    Grade CHAR(1),
    Scode VARCHAR(10)
);

INSERT INTO STUDENT VALUES 
(101, 'Nanda', 5000, 'Green', 11, 'A', 'S11'),
(102, 'Saurabh', 3000, 'Blue', 12, 'B', 'S33'),
(103, 'Kamal', 3000, 'Green', 12, NULL, 'S33'),
(105, 'Praveen', 2500, 'Red', 11, 'C', 'S11'),
(107, 'Arvind', 4500, 'Green', 12, NULL, 'S22');

CREATE TABLE STREAM (
    Scode VARCHAR(10) PRIMARY KEY,
    Sname VARCHAR(50),
    Chapters INT
);

INSERT INTO STREAM VALUES 
('S11', 'Science', 15),
('S22', 'Commerce', 11),
('S33', 'Humanities', 12);


SELECT * FROM STUDENT WHERE Fee > 3000;


SELECT SUM(Fee) FROM STUDENT WHERE Class = 12;

SELECT SName, Class, Fee, House FROM STUDENT 
WHERE House = 'Green' 
ORDER BY Fee ASC;


SELECT S.Enrol, S.SName, ST.Sname 
FROM STUDENT S 
JOIN STREAM ST 
ON S.Scode = ST.Scode;
