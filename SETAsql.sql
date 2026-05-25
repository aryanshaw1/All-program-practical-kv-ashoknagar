#Question 3

CREATE DATABASE CBSE24;
USE CBSE24;

CREATE TABLE EMPLOYEE (
    Ecode INT PRIMARY KEY,
    eName VARCHAR(50),
    Salary INT,
    Zone VARCHAR(20),
    Age INT,
    Grade CHAR(1),
    Dept INT
);

INSERT INTO EMPLOYEE VALUES 
(101, 'Mukul', 30000, 'West', 28, 'A', 11),
(102, 'Kritika', 35000, 'Centre', 51, 'A', 22),
(103, 'Naveen', 32000, 'East', 40, NULL, 11),
(105, 'Uday', 38000, 'North', 38, 'C', 33),
(107, 'Nupur', 32000, 'East', 26, NULL, 11);

CREATE TABLE DEPARTMENT (
    Dept INT PRIMARY KEY,
    Dname VARCHAR(50),
    Entitlement VARCHAR(50)
);

INSERT INTO DEPARTMENT VALUES 
(11, 'Sales', 'Taxi'),
(22, 'Store', 'Air'),
(33, 'Finance', 'Car');

SELECT * FROM EMPLOYEE WHERE Salary < 33000;

SELECT SUM(Salary) FROM EMPLOYEE WHERE Grade = 'B';

SELECT eName, Age, Zone FROM EMPLOYEE 
WHERE Zone = 'East' 
ORDER BY Age ASC;

SELECT E.Ecode, E.eName, D.Dname 
FROM EMPLOYEE E 
JOIN DEPARTMENT D 
ON E.Dept = D.Dept;

