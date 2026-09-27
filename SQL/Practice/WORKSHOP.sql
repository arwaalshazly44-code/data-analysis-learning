CREATE DATABASE Airport
USE Airport
---Manager---
CREATE TABLE Manager(
Manager_ID INT PRIMARY KEY ,
SSN INT NOT NULL ,
Name VARCHAR(50) NOT NULL,
Phone INT,
Address VARCHAR(70)
)
---Passengers---
CREATE TABLE Passengers(
Passengers_ID INT PRIMARY KEY ,
Name VARCHAR(50) NOT NULL,
Phone INT,
Address VARCHAR(70)
)
---Department---
CREATE TABLE Department (
Dept_ID INT PRIMARY KEY ,
Dept_Name VARCHAR(50) NOT NULL,
Manager_ID INT ,
FOREIGN KEY (Manager_ID)REFERENCES Manager(Manager_ID)
)
---Pilot---
CREATE TABLE Pilot(
Pilot_ID INT PRIMARY KEY,
SSN INT NOT NULL ,
License_Name INT ,
Name VARCHAR(50) NOT NULL,
Phone INT,
Address VARCHAR(70),
Dept_ID INT,
FOREIGN KEY (Dept_ID)REFERENCES Department(Dept_ID)
)
---Plane---
CREATE TABLE Plane (
Regestiration_Num INT PRIMARY KEY ,
Model_Num INT NOT NULL,
Capacity INT,
Weight INT ,
Dept_ID INT,
FOREIGN KEY (Dept_ID)REFERENCES Department(Dept_ID)
)
---Flight---
CREATE TABLE Flight (
Flight_ID INT PRIMARY KEY ,
Destination VARCHAR (50) NOT NULL ,
Date_Of_Flying  DATE ,
Departure_Time TIME,
Arrival_Time TIME,
Houres_Flying INT,
Pilot_ID INT,
Dept_ID INT,
Regestiration_Num INT,
FOREIGN KEY (Pilot_ID)REFERENCES Pilot(Pilot_ID),
FOREIGN KEY (Dept_ID)REFERENCES Department(Dept_ID),
FOREIGN KEY (Regestiration_Num)REFERENCES Plane(Regestiration_Num)
)
---Reservation---
CREATE TABLE Reservation(
Reservation_ID INT PRIMARY KEY ,
Seats_Reserve  INT,
Passengers_ID INT,
Flight_ID INT,
FOREIGN KEY (Flight_ID)REFERENCES Flight(Flight_ID),
FOREIGN KEY (Passengers_ID)REFERENCES Passengers(Passengers_ID)
)
-----------------------------------------------------
----Manager----
INSERT INTO Manager (Manager_ID, SSN, Name, Phone, Address)
VALUES
(1, 100001, 'Ahmed Hassan', 01011111111, 'Cairo'),
(2, 100002, 'Mona Ali', 01022222222, 'Giza'),
(3, 100003, 'Omar Khaled', 01033333333, 'Alexandria'),
(4, 100004, 'Sara Adel', 01044444444, 'Cairo'),
(5, 100005, 'Khaled Samir', 01055555555, 'Giza'),
(6, 100006, 'Nour Ahmed', 01066666666, 'Cairo'),
(7, 100007, 'Hany Mostafa', 01077777777, 'Alexandria'),
(8, 100008, 'Dina Hassan', 01088888888, 'Giza'),
(9, 100009, 'Tarek Ali', 01099999999, 'Cairo'),
(10, 100010, 'Mai Khaled', 01111111111, 'Giza'),
(11, 100011, 'Yasser Adel', 01122222222, 'Cairo'),
(12, 100012, 'Salma Omar', 01133333333, 'Alexandria'),
(13, 100013, 'Amr Hassan', 01144444444, 'Giza'),
(14, 100014, 'Reem Samir', 01155555555, 'Cairo'),
(15, 100015, 'Mostafa Ali', 01166666666, 'Giza'),
(16, 100016, 'Heba Ahmed', 01177777777, 'Cairo'),
(17, 100017, 'Mahmoud Khaled', 01188888888, 'Alexandria'),
(18, 100018, 'Rania Adel', 01199999999, 'Giza'),
(19, 100019, 'Sherif Hassan', 01211111111, 'Cairo'),
(20, 100020, 'Laila Mostafa', 01222222222, 'Giza');
SELECT *
FROM Manager
-----INSERT Passengers----
INSERT INTO Passengers
(Passengers_ID, Name, Phone, Address)
VALUES
(1, 'Ali Mohamed', 01012345671, 'Cairo'),
(2, 'Mariam Ahmed', 01012345672, 'Giza'),
(3, 'Omar Samir', 01012345673, 'Alexandria'),
(4, 'Nour Hassan', 01012345674, 'Cairo'),
(5, 'Youssef Adel', 01012345675, 'Giza'),
(6, 'Laila Omar', 01012345676, 'Cairo'),
(7, 'Hana Mostafa', 01012345677, 'Alexandria'),
(8, 'Karim Tarek', 01012345678, 'Giza'),
(9, 'Salma Khaled', 01012345679, 'Cairo'),
(10, 'Ahmed Nabil', 01112345671, 'Giza'),
(11, 'Farah Ali', 01112345672, 'Cairo'),
(12, 'Adam Hassan', 01112345673, 'Alexandria'),
(13, 'Jana Samir', 01112345674, 'Giza'),
(14, 'Kareem Ahmed', 01112345675, 'Cairo'),
(15, 'Mariam Adel', 01112345676, 'Giza'),
(16, 'Omar Khaled', 01112345677, 'Cairo'),
(17, 'Yara Mostafa', 01112345678, 'Alexandria'),
(18, 'Hassan Tarek', 01112345679, 'Giza'),
(19, 'Aya Mohamed', 01212345671, 'Cairo'),
(20, 'Seif Omar', 01212345672, 'Giza');
SELECT *
FROM Passengers
----INSERT Department----
INSERT INTO Department
(Dept_ID, Dept_Name, Manager_ID)
VALUES
(1, 'International Flights', 1),
(2, 'Domestic Flights', 2),
(3, 'Cargo', 3),
(4, 'Private Flights', 4),
(5, 'Security', 5),
(6, 'Maintenance', 6),
(7, 'Customer Service', 7),
(8, 'Ground Services', 8),
(9, 'Air Traffic', 9),
(10, 'Baggage', 10),
(11, 'Operations', NULL),
(12, 'Engineering', 12),
(13, 'IT', 13),
(14, 'Finance', NULL),
(15, 'Human Resources', 15),
(16, 'Marketing', 16),
(17, 'Medical Services', NULL),
(18, 'Training', 18),
(19, 'Planning', 19),
(20, 'Administration', 20);
SELECT *
FROM Department
-----INSERT Pilot----
INSERT INTO Pilot
(Pilot_ID, SSN, License_Name, Name, Phone, Address, Dept_ID)
VALUES
(101, 200001, 601, 'John Smith', 01020000001, 'Cairo', 1),
(102, 200002, 602, 'David Brown', 01020000002, 'Giza', 1),
(103, 200003, 603, 'Adam Ali', 01020000003, 'Cairo', 2),
(104, 200004, 604, 'Omar Nabil', 01020000004, 'Alexandria', 2),
(105, 200005, 605, 'Karim Said', 01020000005, 'Giza', 3),
(106, 200006, 606, 'Samir Adel', 01020000006, 'Cairo', 3),
(107, 200007, 607, 'James Wilson', 01020000007, 'Giza', 4),
(108, 200008, 608, 'Michael Stone', 01020000008, 'Cairo', 4),
(109, 200009, 609, 'Robert King', 01020000009, 'Alexandria', 5),
(110, 200010, 610, 'Daniel White', 01020000010, 'Giza', 6),
(111, 200011, 611, 'William Scott', 01020000011, 'Cairo', 6),
(112, 200012, 612, 'Thomas Green', 01020000012, 'Giza', 7),
(113, 200013, 613, 'George Hall', 01020000013, 'Cairo', 8),
(114, 200014, 614, 'Henry Adams', 01020000014, 'Alexandria', 9),
(115, 200015, 615, 'Peter Clark', 01020000015, 'Giza', 10),
(116, 200016, 616, 'James Lewis', 01020000016, 'Cairo', 11),
(117, 200017, 617, 'Andrew Young', 01020000017, 'Giza', 12),
(118, 200018, 618, 'Mark Walker', 01020000018, 'Cairo', 13),
(119, 200019, 619, 'Daniel Moore', 01020000019, 'Alexandria', 15),
(120, 200020, 620, 'Chris Taylor', 01020000020, 'Giza', 18);
SELECT *
FROM Pilot
----INSERT Plane---
INSERT INTO Plane
(Regestiration_Num, Model_Num, Capacity, Weight, Dept_ID)
VALUES
(1001, 737, 180, 41000, 1),
(1002, 747, 400, 183000, 1),
(1003, 320, 160, 42000, 2),
(1004, 330, 250, 120000, 2),
(1005, 350, 300, 140000, 2),
(1006, 777, 350, 200000, 3),
(1007, 787, 240, 130000, 4),
(1008, 380, 500, 277000, 4),
(1009, 737, 190, 42000, 5),
(1010, 320, 170, 43000, 6),
(1011, 330, 260, 125000, 6),
(1012, 350, 310, 145000, 7),
(1013, 777, 360, 205000, 8),
(1014, 787, 250, 135000, 9),
(1015, 737, 185, 41500, 10),
(1016, 320, 165, 42500, 11),
(1017, 330, 255, 122000, 12),
(1018, 350, 305, 142000, 13),
(1019, 777, 355, 202000, 15),
(1020, 787, 245, 132000, 18);
SELECT *
FROM Plane
----INSERT Flight----
INSERT INTO Flight
(Flight_ID, Destination, Date_Of_Flying, Departure_Time,
 Arrival_Time, Houres_Flying, Pilot_ID, Dept_ID, Regestiration_Num)
VALUES
(1100, 'USA',    '2026-09-19', '08:00', '16:00', 8, 101, 1, 1001),
(1101, 'USA',    '2026-09-20', '09:00', '17:30', 8, 102, 1, 1002),
(1102, 'Paris',  '2026-09-21', '06:00', '10:00', 4, 103, 2, 1003),
(1103, 'London', '2026-09-22', '10:00', '14:00', 4, 104, 2, 1004),
(1200, 'Dubai',  '2026-09-23', '08:00', '13:00', 5, 105, 3, 1006),
(1201, 'Rome',   '2026-09-24', '07:00', '11:00', 4, 106, 3, 1005),
(1202, 'Jeddah', '2026-09-24', '09:00', '12:00', 3, 107, 4, 1007),
(1203, 'Cairo',  '2026-09-25', '06:30', '08:30', 2, 108, 4, 1008),
(1204, 'Berlin', '2026-09-25', '10:00', '14:30', 4, 109, 5, 1009),
(1205, 'Madrid', '2026-09-26', '07:00', '10:00', 3, 110, 6, 1010),
(1206, 'Tokyo',  '2026-09-26', '08:00', '18:00', 10, 111, 6, 1011),
(1207, 'Canada', '2026-09-23', '11:00', '20:00', 9, 112, 7, 1012),
(1208, 'Paris',  '2026-09-24', '05:00', '09:00', 4, 113, 8, 1013),
(1209, 'USA',    '2026-09-25', '12:00', '21:00', 9, 114, 9, 1014),
(1210, 'Dubai',  '2026-09-26', '09:00', '11:30', 2, 115, 10, 1015),
(1211, 'Rome',   '2026-09-26', '13:00', '16:00', 3, 116, 11, 1016),
(1212, 'London', '2026-09-22', '14:00', '19:00', 5, 117, 12, 1017),
(1213, 'USA',    '2026-09-20', '15:00', '23:00', 8, 118, 13, 1018),
(1214, 'Paris',  '2026-09-23', '16:00', '20:00', 4, 119, 15, 1019),
(1215, 'Cairo',  '2026-09-24', '18:00', '20:00', 2, 120, 18, 1020);
SELECT *
FROM Flight
----INSERT Reservation-----
INSERT INTO Reservation
(Reservation_ID, Seats_Reserve, Passengers_ID, Flight_ID)
VALUES
(1,  2,  1, 1100),
(2,  1,  2, 1100),
(3,  3,  3, 1101),
(4,  1,  4, 1101),
(5,  2,  5, 1102),
(6,  1,  6, 1102),
(7,  1,  7, 1103),
(8,  2,  8, 1200),
(9,  1,  9, 1200),
(10, 3, 10, 1201),
(11, 1, 11, 1201),
(12, 2, 12, 1202),
(13, 1, 13, 1203),
(14, 2, 14, 1204),
(15, 1, 15, 1205),
(16, 3, 16, 1206),
(17, 1, 17, 1207),
(18, 2, 18, 1208),
(19, 1, 19, 1209),
(20, 2, 20, 1210);
SELECT *
FROM Reservation
-------10 SQL statements-------
--1:display the name of each pilot and the name of his manager --
CREATE PROCEDURE Airport_Reports
AS
BEGIN
SELECT P.Name AS PILOT_NAME , M.Name AS MANAGER_NAME
FROM Manager M INNER JOIN Department D 
ON M.Manager_ID = D.Manager_ID 
INNER JOIN Pilot P
ON P.Dept_ID = D.Dept_ID

--2:display the model number of each plane that will be used in a flight to USA last week --
SELECT P.Model_Num
FROM Plane P INNER JOIN Flight F 
ON P.Regestiration_Num = F.Regestiration_Num 
WHERE F.Destination = 'USA' 
AND  F.Date_Of_Flying BETWEEN '2026-09-14' AND '2026-09-20'

--3:display the maximum capacity of the flight number 1200 --
SELECT P.Capacity AS [the maximum capacity]
FROM Plane P INNER JOIN Flight F 
ON P.Regestiration_Num = F.Regestiration_Num 
WHERE Flight_ID =1200

--4:Perform a report that display the flight number of first flight to Paris --
SELECT TOP 1  F.Flight_ID
FROM Flight F 
WHERE F.Destination = 'Paris' 
ORDER BY Date_Of_Flying

--5:Perform a report that display a details of pilot information and flight information who will is responsible for --
SELECT F.*,P.*
FROM Pilot P INNER JOIN Flight F
ON P.Pilot_ID = F.Pilot_ID 

--6:display the flights information that will be arrived after 1 Hours --
SELECT F.*
FROM Flight F
WHERE Houres_Flying > 1 

--7: display the number of pilots in each department --
SELECT COUNT(P.Pilot_ID), D.Dept_Name
FROM Pilot P INNER JOIN Department D
ON P.Dept_ID = D.Dept_ID 
GROUP BY D.Dept_Name

--8:display the number of the planes in each department that arrived in last 3 days --
SELECT COUNT(P.Regestiration_Num) , D.Dept_Name
FROM Plane P INNER JOIN Department D
ON P.Dept_ID=D.Dept_ID
INNER JOIN Flight F
ON F.Regestiration_Num =P.Regestiration_Num
WHERE F.Date_Of_Flying >= DATEADD(DAY, -3, CAST(GETDATE() AS DATE))
GROUP BY D.Dept_Name
--9:Display the number of passengers in each flight and information about their pilot --
SELECT COUNT(P.Passengers_ID) AS Number_Of_Passengers , F.Flight_ID , PI.Pilot_ID,PI.SSN,PI.License_Name,PI.Name,PI.Phone,PI.Address
FROM Passengers P INNER JOIN Reservation R
ON P.Passengers_ID =R.Passengers_ID 
INNER JOIN Flight F
ON F.Flight_ID =R.Flight_ID
INNER JOIN Pilot PI 
ON PI.Pilot_ID = F.Pilot_ID
GROUP BY F.Flight_ID , PI.Pilot_ID,PI.SSN,PI.License_Name,PI.Name,PI.Phone,PI.Address
--10:display the manager ‘s name of the department that contains maximum planes of number --
SELECT TOP 1  M.Name AS MANAGER_NAME , D.Dept_Name AS DEPT_NAME , COUNT (P.Model_Num) 
FROM Manager M INNER JOIN Department D 
ON M.Manager_ID = D.Manager_ID 
INNER JOIN Plane P 
ON P.Dept_ID = D.Dept_ID 
GROUP BY M.Name  , D.Dept_Name
ORDER BY COUNT (P.Model_Num) DESC 

END;
GO
EXEC Airport_Reports;















