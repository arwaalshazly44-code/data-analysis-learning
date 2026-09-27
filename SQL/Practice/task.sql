----Filtering Operators----
SELECT *
FROM Employee 
WHERE SuperSSN is null

-----2-------
SELECT *
FROM Employee 
WHERE SuperSSN is not null
------3------
SELECT Fname, Lname, ISNULL (CONVERT (VARCHAR (100),SuperSSN),'No Manager')AS SuperSSN
FROM Employee
------4-----
SELECT *
FROM Employee
WHERE Gender='Male'AND Salary>=7000
-----5------
SELECT *
FROM Employee
WHERE ADDRESS='Cairo' OR  ADDRESS='Giza'
----6-------
SELECT *
FROM Employee
WHERE Salary BETWEEN  6500 AND 7500
----7------
/*Salary is greater than or equal to 7000 and less than 8000*/
SELECT *
FROM Employee
WHERE Salary >=7000 AND Salary<8000
------8-----
SELECT *
FROM Employee
WHERE ADDRESS IN('Giza','Cairo')
------9----
SELECT *
FROM Employee
WHERE ADDRESS NOT IN('Giza','Cairo')
-----10----
SELECT *
FROM Employee
WHERE Salary >=7000 AND Total_Income <9000 AND Gender<>'Female'AND SuperSSN is not null

----11----
SELECT  Fname, Lname, Salary, Total_Income, Address, SuperSSN
FROM Employee
WHERE Salary BETWEEN 6000 AND 7500  AND  ADDRESS  IN('Giza','Cairo')
AND( SuperSSN IS NOT NULL OR Salary >7000 )
AND Gender <>'Female' 