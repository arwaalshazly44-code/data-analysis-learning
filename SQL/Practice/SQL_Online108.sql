CREATE DATABASE online_108

USE online_108 
CREATE TABLE Employee(
fname VARCHAR(50) NOT NULL,
lname VARCHAR(50) NOT NULL,
SSN INT PRIMARY KEY,
Bdate DATE,
[ADDRESS] VARCHAR (100),
Gender VARCHAR (20) CHECK (Gender IN ('Male','Feemal')) NOT NULL,
Email VARCHAR (50) UNIQUE NOT NULL,
Phone VARCHAR (20) UNIQUE NOT NULL,
Salary DECIMAL (10,2) NOT NULL ,
Bouns DECIMAL (10,2) DEFAULT '0',
Total_Income AS (Salary+Bouns),
SuperSSN INT 
FOREIGN KEY (SuperSSN) REFERENCES Employee(SSN) ,
DNO INT 
)

CREATE TABLE Department(
Dname VARCHAR(50) NOT NULL ,
Dnumber INT PRIMARY KEY,
MGRssn INT,
FOREIGN KEY (MGRssn)REFERENCES Employee(SSN)
)

CREATE TABLE Dept_Location (
Dnumber INT,
Dlocation VARCHAR (50),
FOREIGN KEY (Dnumber)REFERENCES Department(Dnumber)
 )

 CREATE TABLE Project(
 Pname VARCHAR(50)   NOT NULL,
 Pnumber INT PRIMARY KEY ,
 Plocation VARCHAR (50),
 Dnum INT,
 FOREIGN KEY(Dnum) REFERENCES Department(Dnumber)
 )

CREATE TABLE Work_ON(
ESSN INT,
Pno INT,
FOREIGN KEY (ESSN)REFERENCES Employee(SSN),
FOREIGN KEY (Pno)REFERENCES Project(Pnumber)
)
CREATE TABLE dep (
ESSN INT ,
Dep_Name VARCHAR(50),
Gender VARCHAR (20) CHECK (Gender IN ('Male','Feemal')),
FOREIGN KEY (ESSN)REFERENCES Employee(SSN)
)


ALTER TABLE Employee ADD CONSTRAINT X 
FOREIGN KEY (Dno) REFERENCES Department(Dnumber)

DROP TABLE dep;
CREATE TABLE dep (
    ESSN INT,
    Dep_Name VARCHAR(50),
    Gender VARCHAR(20) CHECK (Gender IN ('Male','Female')),
    FOREIGN KEY (ESSN) REFERENCES Employee(SSN)
);

--ALTER
ALTER TABLE Employee
DROP CONSTRAINT CK__Employee__Gender__4CA06362;
ALTER TABLE Employee
ADD CONSTRAINT CK_Employee_Gender
CHECK (Gender IN ('Male', 'Female'));


ALTER TABLE Dept_Location
ALTER COLUMN Dnumber INT NOT NULL ;

ALTER TABLE Dept_Location
ALTER COLUMN Dlocation VARCHAR(50) NOT NULL ;


ALTER TABLE Dept_Location
ADD CONSTRAINT PK_Dept_Location
PRIMARY KEY (Dnumber,Dlocation)

ALTER TABLE Work_ON
ALTER  COLUMN ESSN INT NOT NULL;

ALTER TABLE Work_ON
ALTER  COLUMN Pno INT NOT NULL;

ALTER TABLE Work_ON
ADD HOURS INT;

ALTER TABLE Work_ON
ADD CONSTRAINT PK_Work_ON
PRIMARY KEY (ESSN,Pno)

ALTER TABLE dep
ADD BDATE DATE ,Relationship VARCHAR(20);

ALTER TABLE dep
ALTER  COLUMN ESSN INT NOT NULL;

ALTER TABLE dep
ALTER  COLUMN Dep_Name VARCHAR(50) NOT NULL;

ALTER TABLE dep
ADD CONSTRAINT PK_dep
PRIMARY KEY (ESSN,Dep_Name)
-------------------------------------------------------
--DML

SELECT * FROM Employee
--INSERT 
INSERT INTO Employee
(Fname, Lname, SSN, BDATE, [ADDRESS], Gender, Email, Phone, Salary, Bouns, SuperSSN, Dno)
VALUES
('Ahmed','Ali',1,'1995-01-10','Cairo','Male','ahmed1@gmail.com','01000000001',5000,500,NULL,NULL),
('Mohamed','Hassan',2,'1994-02-15','Giza','Male','mohamed2@gmail.com','01000000002',5500,600,1,NULL),
('Omar','Mahmoud',3,'1996-03-20','Cairo','Male','omar3@gmail.com','01000000003',6000,700,1,NULL),
('Ali','Ahmed',4,'1993-04-12','Giza','Male','ali4@gmail.com','01000000004',6500,800,1,NULL),
('Youssef','Samir',5,'1997-05-18','Cairo','Male','youssef5@gmail.com','01000000005',7000,900,2,NULL),
('Mostafa','Khaled',6,'1992-06-22','Alexandria','Male','mostafa6@gmail.com','01000000006',7500,1000,2,NULL),
('Mahmoud','Tarek',7,'1995-07-14','Cairo','Male','mahmoud7@gmail.com','01000000007',8000,1100,2,NULL),
('Karim','Adel',8,'1996-08-09','Giza','Male','karim8@gmail.com','01000000008',8500,1200,3,NULL),
('Hany','Fathy',9,'1991-09-25','Cairo','Male','hany9@gmail.com','01000000009',9000,1300,3,NULL),
('Amr','Nabil',10,'1994-10-30','Giza','Male','amr10@gmail.com','01000000010',9500,1400,3,NULL),

('Sara','Ahmed',11,'1997-01-05','Cairo','Female','sara11@gmail.com','01000000011',5000,500,4,NULL),
('Mariam','Ali',12,'1996-02-11','Giza','Female','mariam12@gmail.com','01000000012',5500,600,4,NULL),
('Nour','Hassan',13,'1995-03-17','Cairo','Female','nour13@gmail.com','01000000013',6000,700,5,NULL),
('Salma','Mohamed',14,'1998-04-23','Giza','Female','salma14@gmail.com','01000000014',6500,800,5,NULL),
('Aya','Mahmoud',15,'1997-05-29','Cairo','Female','aya15@gmail.com','01000000015',7000,900,6,NULL),
('Menna','Khaled',16,'1996-06-04','Alexandria','Female','menna16@gmail.com','01000000016',7500,1000,6,NULL),
('Heba','Tarek',17,'1995-07-10','Cairo','Female','heba17@gmail.com','01000000017',8000,1100,7,NULL),
('Farah','Adel',18,'1998-08-16','Giza','Female','farah18@gmail.com','01000000018',8500,1200,7,NULL),
('Hana','Fathy',19,'1994-09-22','Cairo','Female','hana19@gmail.com','01000000019',9000,1300,8,NULL),
('Reem','Nabil',20,'1997-10-28','Giza','Female','reem20@gmail.com','01000000020',9500,1400,8,NULL),

('Adam','Ashraf',21,'1995-01-08','Cairo','Male','adam21@gmail.com','01000000021',5000,500,9,NULL),
('Tamer','Sayed',22,'1993-02-14','Giza','Male','tamer22@gmail.com','01000000022',5500,600,9,NULL),
('Sherif','Ayman',23,'1996-03-19','Cairo','Male','sherif23@gmail.com','01000000023',6000,700,10,NULL),
('Khaled','Wael',24,'1992-04-25','Giza','Male','khaled24@gmail.com','01000000024',6500,800,10,NULL),
('Ehab','Hamed',25,'1995-05-31','Cairo','Male','ehab25@gmail.com','01000000025',7000,900,11,NULL),
('Osama','Ramy',26,'1994-06-07','Alexandria','Male','osama26@gmail.com','01000000026',7500,1000,11,NULL),
('Walid','Sameh',27,'1997-07-13','Cairo','Male','walid27@gmail.com','01000000027',8000,1100,12,NULL),
('Islam','Magdy',28,'1993-08-19','Giza','Male','islam28@gmail.com','01000000028',8500,1200,12,NULL),
('Hossam','Reda',29,'1996-09-24','Cairo','Male','hossam29@gmail.com','01000000029',9000,1300,13,NULL),
('Bassem','Gamal',30,'1995-10-30','Giza','Male','bassem30@gmail.com','01000000030',9500,1400,13,NULL),

('Dina','Ahmed',31,'1997-01-12','Cairo','Female','dina31@gmail.com','01000000031',5000,500,14,NULL),
('Laila','Ali',32,'1996-02-18','Giza','Female','laila32@gmail.com','01000000032',5500,600,14,NULL),
('Jana','Hassan',33,'1998-03-24','Cairo','Female','jana33@gmail.com','01000000033',6000,700,15,NULL),
('Malak','Mohamed',34,'1997-04-30','Giza','Female','malak34@gmail.com','01000000034',6500,800,15,NULL),
('Rana','Mahmoud',35,'1995-05-06','Cairo','Female','rana35@gmail.com','01000000035',7000,900,16,NULL),
('Rita','Khaled',36,'1996-06-12','Alexandria','Female','rita36@gmail.com','01000000036',7500,1000,16,NULL),
('Jasmine','Tarek',37,'1998-07-18','Cairo','Female','jasmine37@gmail.com','01000000037',8000,1100,17,NULL),
('Nada','Adel',38,'1995-08-24','Giza','Female','nada38@gmail.com','01000000038',8500,1200,17,NULL),
('Mai','Fathy',39,'1997-09-30','Cairo','Female','mai39@gmail.com','01000000039',9000,1300,18,NULL),
('Doaa','Nabil',40,'1996-10-06','Giza','Female','doaa40@gmail.com','01000000040',9500,1400,18,NULL),

('Ziad','Ahmed',41,'1994-01-15','Cairo','Male','ziad41@gmail.com','01000000041',5000,500,19,NULL),
('Yassin','Ali',42,'1995-02-21','Giza','Male','yassin42@gmail.com','01000000042',5500,600,19,NULL),
('Seif','Hassan',43,'1997-03-27','Cairo','Male','seif43@gmail.com','01000000043',6000,700,20,NULL),
('Mina','Mohamed',44,'1993-04-03','Giza','Male','mina44@gmail.com','01000000044',6500,800,20,NULL),
('George','Mahmoud',45,'1996-05-09','Cairo','Male','george45@gmail.com','01000000045',7000,900,21,NULL),
('Peter','Khaled',46,'1995-06-15','Alexandria','Male','peter46@gmail.com','01000000046',7500,1000,21,NULL),
('Andrew','Tarek',47,'1994-07-21','Cairo','Male','andrew47@gmail.com','01000000047',8000,1100,22,NULL),
('Mark','Adel',48,'1997-08-27','Giza','Male','mark48@gmail.com','01000000048',8500,1200,22,NULL),
('John','Fathy',49,'1993-09-03','Cairo','Male','john49@gmail.com','01000000049',9000,1300,23,NULL),
('Daniel','Nabil',50,'1996-10-09','Giza','Male','daniel50@gmail.com','01000000050',9500,1400,23,NULL);
--------------------------------------------------------
SELECT * FROM Department
INSERT INTO Department
(
    DName,
    Dnumber,
    MGRSSN
)
VALUES
('HR',1,1),
('Finance',2,2),
('IT',3,3),
('Sales',4,4),
('Marketing',5,5),
('Data Analysis',6,6),
('Data Science',7,7),
('Business Intelligence',8,8),
('Software Development',9,9),
('Quality Assurance',10,10),
('Customer Service',11,11),
('Technical Support',12,12),
('Operations',13,13),
('Logistics',14,14),
('Procurement',15,15),
('Legal',16,16),
('Training',17,17),
('Research',18,18),
('Administration',19,19),
('Security',20,20),
('Accounting',21,21),
('Payroll',22,22),
('Recruitment',23,23),
('Public Relations',24,24),
('Production',25,25),
('Maintenance',26,26),
('Engineering',27,27),
('Planning',28,28),
('Business Development',29,29),
('Risk Management',30,30),
('Compliance',31,31),
('Audit',32,32),
('Digital Marketing',33,33),
('Content',34,34),
('Training Development',35,35),
('Project Management',36,36),
('Product Management',37,37),
('Research Development',38,38),
('Supply Chain',39,39),
('Inventory',40,40),
('Customer Success',41,41),
('Analytics',42,42),
('Infrastructure',43,43),
('Networking',44,44),
('Cyber Security',45,45),
('Cloud Computing',46,46),
('AI Development',47,47),
('Machine Learning',48,48),
('Web Development',49,49),
('Mobile Development',50,50);
SELECT *
FROM Department
----------------------------------------------------------------

INSERT INTO Dept_Location
(
    Dnumber,
    Dlocation
)
VALUES
(1,'Cairo'),
(2,'Giza'),
(3,'Alexandria'),
(4,'Cairo'),
(5,'Giza'),
(6,'Alexandria'),
(7,'Cairo'),
(8,'Giza'),
(9,'Alexandria'),
(10,'Cairo'),
(11,'Giza'),
(12,'Alexandria'),
(13,'Cairo'),
(14,'Giza'),
(15,'Alexandria'),
(16,'Cairo'),
(17,'Giza'),
(18,'Alexandria'),
(19,'Cairo'),
(20,'Giza'),
(21,'Alexandria'),
(22,'Cairo'),
(23,'Giza'),
(24,'Alexandria'),
(25,'Cairo'),
(26,'Giza'),
(27,'Alexandria'),
(28,'Cairo'),
(29,'Giza'),
(30,'Alexandria'),
(31,'Cairo'),
(32,'Giza'),
(33,'Alexandria'),
(34,'Cairo'),
(35,'Giza'),
(36,'Alexandria'),
(37,'Cairo'),
(38,'Giza'),
(39,'Alexandria'),
(40,'Cairo'),
(41,'Giza'),
(42,'Alexandria'),
(43,'Cairo'),
(44,'Giza'),
(45,'Alexandria'),
(46,'Cairo'),
(47,'Giza'),
(48,'Alexandria'),
(49,'Cairo'),
(50,'Giza');
SELECT *
FROM Dept_Location
-----------------------------------------------------
INSERT INTO Project
(
    Pname,
    Pnumber,
    Plocation,
    Dnum
)
VALUES
('Project 1',1,'Cairo',1),
('Project 2',2,'Giza',2),
('Project 3',3,'Alexandria',3),
('Project 4',4,'Cairo',4),
('Project 5',5,'Giza',5),
('Project 6',6,'Alexandria',6),
('Project 7',7,'Cairo',7),
('Project 8',8,'Giza',8),
('Project 9',9,'Alexandria',9),
('Project 10',10,'Cairo',10),
('Project 11',11,'Giza',11),
('Project 12',12,'Alexandria',12),
('Project 13',13,'Cairo',13),
('Project 14',14,'Giza',14),
('Project 15',15,'Alexandria',15),
('Project 16',16,'Cairo',16),
('Project 17',17,'Giza',17),
('Project 18',18,'Alexandria',18),
('Project 19',19,'Cairo',19),
('Project 20',20,'Giza',20),
('Project 21',21,'Alexandria',21),
('Project 22',22,'Cairo',22),
('Project 23',23,'Giza',23),
('Project 24',24,'Alexandria',24),
('Project 25',25,'Cairo',25),
('Project 26',26,'Giza',26),
('Project 27',27,'Alexandria',27),
('Project 28',28,'Cairo',28),
('Project 29',29,'Giza',29),
('Project 30',30,'Alexandria',30),
('Project 31',31,'Cairo',31),
('Project 32',32,'Giza',32),
('Project 33',33,'Alexandria',33),
('Project 34',34,'Cairo',34),
('Project 35',35,'Giza',35),
('Project 36',36,'Alexandria',36),
('Project 37',37,'Cairo',37),
('Project 38',38,'Giza',38),
('Project 39',39,'Alexandria',39),
('Project 40',40,'Cairo',40),
('Project 41',41,'Giza',41),
('Project 42',42,'Alexandria',42),
('Project 43',43,'Cairo',43),
('Project 44',44,'Giza',44),
('Project 45',45,'Alexandria',45),
('Project 46',46,'Cairo',46),
('Project 47',47,'Giza',47),
('Project 48',48,'Alexandria',48),
('Project 49',49,'Cairo',49),
('Project 50',50,'Giza',50);
SELECT *
FROM Project
----------------------------------------------
SELECT *
FROM Work_ON

----------------------------------------------
INSERT INTO Work_On
(
    ESSN,
    Pno
)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20),
(21,21),
(22,22),
(23,23),
(24,24),
(25,25),
(26,26),
(27,27),
(28,28),
(29,29),
(30,30),
(31,31),
(32,32),
(33,33),
(34,34),
(35,35),
(36,36),
(37,37),
(38,38),
(39,39),
(40,40),
(41,41),
(42,42),
(43,43),
(44,44),
(45,45),
(46,46),
(47,47),
(48,48),
(49,49),
(50,50);
SELECT *
FROM Work_ON
--UPDATE
UPDATE Work_ON
SET HOURS = 8 
--------------------------------------------

INSERT INTO dep
(
    ESSN,
    Dep_Name,
    Gender
)
VALUES
(1,'Ahmed Dependent','Male'),
(2,'Mariam Dependent','Female'),
(3,'Omar Dependent','Male'),
(4,'Sara Dependent','Female'),
(5,'Youssef Dependent','Male'),
(6,'Nour Dependent','Female'),
(7,'Ali Dependent','Male'),
(8,'Salma Dependent','Female'),
(9,'Karim Dependent','Male'),
(10,'Hana Dependent','Female'),
(11,'Mahmoud Dependent','Male'),
(12,'Aya Dependent','Female'),
(13,'Mostafa Dependent','Male'),
(14,'Menna Dependent','Female'),
(15,'Tarek Dependent','Male'),
(16,'Dina Dependent','Female'),
(17,'Khaled Dependent','Male'),
(18,'Reem Dependent','Female'),
(19,'Amr Dependent','Male'),
(20,'Laila Dependent','Female'),
(21,'Sherif Dependent','Male'),
(22,'Jana Dependent','Female'),
(23,'Hossam Dependent','Male'),
(24,'Farah Dependent','Female'),
(25,'Walid Dependent','Male'),
(26,'Rana Dependent','Female'),
(27,'Bassem Dependent','Male'),
(28,'Malak Dependent','Female'),
(29,'Ehab Dependent','Male'),
(30,'Heba Dependent','Female'),
(31,'Adam Dependent','Male'),
(32,'Lina Dependent','Female'),
(33,'Ziad Dependent','Male'),
(34,'Nada Dependent','Female'),
(35,'Seif Dependent','Male'),
(36,'Mai Dependent','Female'),
(37,'Mina Dependent','Male'),
(38,'Doaa Dependent','Female'),
(39,'Peter Dependent','Male'),
(40,'Rita Dependent','Female'),
(41,'George Dependent','Male'),
(42,'Jasmine Dependent','Female'),
(43,'Daniel Dependent','Male'),
(44,'Hana Dependent','Female'),
(45,'Mark Dependent','Male'),
(46,'Rana Dependent','Female'),
(47,'John Dependent','Male'),
(48,'Nour Dependent','Female'),
(49,'Andrew Dependent','Male'),
(50,'Laila Dependent','Female');
SELECT *
FROM dep