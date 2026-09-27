--DDL-----
CREATE DATABASE HOSPITAL;
-----ROOM------
CREATE TABLE Room(
RoomID INT PRIMARY KEY ,
RoomNumber VARCHAR(20) UNIQUE ,
Capacity INT ,
FloorNumber VARCHAR(20)
)
----Patient-----
CREATE TABLE Patient (
PatientID INT PRIMARY KEY , 
Name VARCHAR(50),
DateOfBirth DATE ,
Gender VARCHAR(20) CHECK (Gender IN ('Male','Female')) NOT NULL,
Phone VARCHAR(20) UNIQUE  NOT NULL,
Email VARCHAR(20) UNIQUE  NOT NULL,
RoomID INT,
FOREIGN KEY (RoomID)REFERENCES Room(RoomID)
)
----Department----
CREATE TABLE Department(
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(20) UNIQUE  NOT NULL
)
-----Doctor-----
CREATE TABLE Doctor(
DoctorID INT PRIMARY KEY,
Name VARCHAR(50),
MainSpecialization VARCHAR(20)  NOT NULL,
SubSpecialization VARCHAR(20)  NOT NULL,
Phone VARCHAR(20) UNIQUE  NOT NULL,
HireDate DATE,
Salary DECIMAL(10,2) NOT NULL,
DepartmentID INT,
FOREIGN KEY (DepartmentID)REFERENCES Department(DepartmentID)
)
----Appointment---
CREATE TABLE Appointment(
AppointmentID INT PRIMARY KEY,
AppointmentDate DATE,
AppointmentTime TIME,
PatientID INT,
DoctorID INT,
FOREIGN KEY (PatientID)REFERENCES Patient(PatientID),
FOREIGN KEY (DoctorID)REFERENCES Doctor(DoctorID)
)
-----Treatment----
CREATE TABLE Treatment(
TreatmentID INT PRIMARY KEY,
TreatmentName VARCHAR(20),
Cost DECIMAL(10,2),
PatientID INT,
DoctorID INT,
FOREIGN KEY (PatientID)REFERENCES Patient(PatientID),
FOREIGN KEY (DoctorID)REFERENCES Doctor(DoctorID)
)
-------------------------------------------------------
------DML---------
-----INSERT ==>Department-----
SELECT *
FROM Department

INSERT INTO Department (DepartmentID, DepartmentName)
VALUES
(1, 'Cardiology'),
(2, 'Neurology'),
(3, 'Pediatrics'),
(4, 'Dermatology'),
(5, 'Orthopedics'),
(6, 'Oncology'),
(7, 'Radiology'),
(8, 'Psychiatry'),
(9, 'Gynecology'),
(10, 'Urology'),
(11, 'Ophthalmology'),
(12, 'ENT'),
(13, 'Dentistry'),
(14, 'Gastroenterology'),
(15, 'Nephrology'),
(16, 'Pulmonology'),
(17, 'Endocrinology'),
(18, 'Rheumatology'),
(19, 'Hematology'),
(20, 'General Surgery'),
(21, 'Emergency'),
(22, 'Internal Medicine'),
(23, 'Family Medicine'),
(24, 'Plastic Surgery'),
(25, 'Infectious Disease'),
(26, 'Immunology'),
(27, 'Pathology'),
(28, 'Anesthesiology'),
(29, 'Neurosurgery'),
(30, 'Vascular Surgery'),
(31, 'Cardiac Surgery'),
(32, 'Thoracic Surgery'),
(33, 'Pediatric Surgery'),
(34, 'Trauma Surgery'),
(35, 'Geriatrics'),
(36, 'Neonatology'),
(37, 'Radiation Oncology'),
(38, 'Nuclear Medicine'),
(39, 'Pain Management'),
(40, 'Sports Medicine'),
(41, 'Rehabilitation'),
(42, 'Nutrition'),
(43, 'Genetics'),
(44, 'Allergy'),
(45, 'Sleep Medicine'),
(46, 'Critical Care'),
(47, 'Toxicology'),
(48, 'Palliative Care'),
(49, 'Preventive Medicine'),
(50, 'Clinical Pharmacy');

SELECT *
FROM Department
---------INSERT ===>Room-----
SELECT *
FROM Room
INSERT INTO Room (RoomID, RoomNumber, Capacity, FloorNumber)
VALUES
(1, 'R101', 2, '1'),
(2, 'R102', 2, '1'),
(3, 'R103', 1, '1'),
(4, 'R104', 3, '1'),
(5, 'R105', 2, '1'),
(6, 'R106', 1, '1'),
(7, 'R107', 2, '1'),
(8, 'R108', 3, '1'),
(9, 'R109', 2, '1'),
(10, 'R110', 1, '1'),
(11, 'R201', 2, '2'),
(12, 'R202', 3, '2'),
(13, 'R203', 2, '2'),
(14, 'R204', 1, '2'),
(15, 'R205', 2, '2'),
(16, 'R206', 3, '2'),
(17, 'R207', 2, '2'),
(18, 'R208', 1, '2'),
(19, 'R209', 2, '2'),
(20, 'R210', 3, '2'),
(21, 'R301', 2, '3'),
(22, 'R302', 1, '3'),
(23, 'R303', 3, '3'),
(24, 'R304', 2, '3'),
(25, 'R305', 2, '3'),
(26, 'R306', 1, '3'),
(27, 'R307', 3, '3'),
(28, 'R308', 2, '3'),
(29, 'R309', 1, '3'),
(30, 'R310', 2, '3'),
(31, 'R401', 3, '4'),
(32, 'R402', 2, '4'),
(33, 'R403', 1, '4'),
(34, 'R404', 2, '4'),
(35, 'R405', 3, '4'),
(36, 'R406', 2, '4'),
(37, 'R407', 1, '4'),
(38, 'R408', 3, '4'),
(39, 'R409', 2, '4'),
(40, 'R410', 1, '4'),
(41, 'R501', 2, '5'),
(42, 'R502', 3, '5'),
(43, 'R503', 2, '5'),
(44, 'R504', 1, '5'),
(45, 'R505', 2, '5'),
(46, 'R506', 3, '5'),
(47, 'R507', 1, '5'),
(48, 'R508', 2, '5'),
(49, 'R509', 3, '5'),
(50, 'R510', 2, '5');
SELECT *
FROM Room
---------INSERT ====>Patient-----
SELECT *
FROM Patient
INSERT INTO Patient
(PatientID, Name, DateOfBirth, Gender, Phone, Email, RoomID)
VALUES
(1, 'Ahmed Hassan', '1995-03-12', 'Male', '01010000001', 'ahmed1@gmail.com', 1),
(2, 'Mona Ali', '1998-07-25', 'Female', '01010000002', 'mona2@gmail.com', 2),
(3, 'Omar Samir', '1987-11-08', 'Male', '01010000003', 'omar3@gmail.com', 3),
(4, 'Sara Mohamed', '2001-01-19', 'Female', '01010000004', 'sara4@gmail.com', 4),
(5, 'Youssef Adel', '1992-05-30', 'Male', '01010000005', 'youssef5@gmail.com', 5),
(6, 'Nour Ahmed', '1999-09-14', 'Female', '01010000006', 'nour6@gmail.com', 6),
(7, 'Karim Mostafa', '1985-02-21', 'Male', '01010000007', 'karim7@gmail.com', 7),
(8, 'Salma Tarek', '2000-06-17', 'Female', '01010000008', 'salma8@gmail.com', 8),
(9, 'Mahmoud Said', '1990-12-03', 'Male', '01010000009', 'mahmoud9@gmail.com', 9),
(10, 'Hana Khaled', '1997-04-28', 'Female', '01010000010', 'hana10@gmail.com', 10),
(11, 'Mostafa Nabil', '1988-08-11', 'Male', '01010000011', 'mostafa11@gmail.com', 11),
(12, 'Laila Hassan', '1996-10-05', 'Female', '01010000012', 'laila12@gmail.com', 12),
(13, 'Tamer Fathy', '1983-01-27', 'Male', '01010000013', 'tamer13@gmail.com', 13),
(14, 'Mai Ibrahim', '2002-03-09', 'Female', '01010000014', 'mai14@gmail.com', 14),
(15, 'Hossam Adel', '1991-07-16', 'Male', '01010000015', 'hossam15@gmail.com', 15),
(16, 'Aya Mahmoud', '1999-11-22', 'Female', '01010000016', 'aya16@gmail.com', 16),
(17, 'Khaled Samir', '1986-05-13', 'Male', '01010000017', 'khaled17@gmail.com', 17),
(18, 'Menna Ali', '2001-09-07', 'Female', '01010000018', 'menna18@gmail.com', 18),
(19, 'Amr Hassan', '1989-02-15', 'Male', '01010000019', 'amr19@gmail.com', 19),
(20, 'Dina Ahmed', '1995-12-20', 'Female', '01010000020', 'dina20@gmail.com', 20),
(21, 'Ehab Mostafa', '1984-06-04', 'Male', '01010000021', 'ehab21@gmail.com', 21),
(22, 'Reem Tarek', '1998-08-29', 'Female', '01010000022', 'reem22@gmail.com', 22),
(23, 'Sherif Nabil', '1993-03-18', 'Male', '01010000023', 'sherif23@gmail.com', 23),
(24, 'Nada Said', '2000-10-12', 'Female', '01010000024', 'nada24@gmail.com', 24),
(25, 'Walid Karim', '1987-04-06', 'Male', '01010000025', 'walid25@gmail.com', 25),
(26, 'Farah Omar', '2003-01-31', 'Female', '01010000026', 'farah26@gmail.com', 26),
(27, 'Adham Yasser', '1994-07-23', 'Male', '01010000027', 'adham27@gmail.com', 27),
(28, 'Jana Hany', '2001-11-10', 'Female', '01010000028', 'jana28@gmail.com', 28),
(29, 'Islam Fathy', '1982-09-26', 'Male', '01010000029', 'islam29@gmail.com', 29),
(30, 'Rana Khaled', '1997-02-08', 'Female', '01010000030', 'rana30@gmail.com', 30),
(31, 'Ayman Adel', '1990-05-19', 'Male', '01010000031', 'ayman31@gmail.com', 31),
(32, 'Marwa Hassan', '1996-12-01', 'Female', '01010000032', 'marwa32@gmail.com', 32),
(33, 'Sameh Ali', '1985-08-16', 'Male', '01010000033', 'sameh33@gmail.com', 33),
(34, 'Heba Samir', '1999-04-24', 'Female', '01010000034', 'heba34@gmail.com', 34),
(35, 'Wael Mahmoud', '1988-10-30', 'Male', '01010000035', 'wael35@gmail.com', 35),
(36, 'Esraa Tarek', '2000-06-11', 'Female', '01010000036', 'esraa36@gmail.com', 36),
(37, 'Bassem Said', '1992-01-17', 'Male', '01010000037', 'bassem37@gmail.com', 37),
(38, 'Rania Mostafa', '1995-09-03', 'Female', '01010000038', 'rania38@gmail.com', 38),
(39, 'Hany Adel', '1986-03-28', 'Male', '01010000039', 'hany39@gmail.com', 39),
(40, 'Dalia Hassan', '1998-07-09', 'Female', '01010000040', 'dalia40@gmail.com', 40),
(41, 'Ashraf Nabil', '1983-11-14', 'Male', '01010000041', 'ashraf41@gmail.com', 41),
(42, 'Nadine Ali', '2002-05-26', 'Female', '01010000042', 'nadine42@gmail.com', 42),
(43, 'Fady Samir', '1991-08-07', 'Male', '01010000043', 'fady43@gmail.com', 43),
(44, 'Habiba Ahmed', '2003-10-21', 'Female', '01010000044', 'habiba44@gmail.com', 44),
(45, 'Maged Tarek', '1989-02-13', 'Male', '01010000045', 'maged45@gmail.com', 45),
(46, 'Yara Khaled', '1997-06-18', 'Female', '01010000046', 'yara46@gmail.com', 46),
(47, 'Ziad Mostafa', '1993-12-07', 'Male', '01010000047', 'ziad47@gmail.com', 47),
(48, 'Joudy Hassan', '2001-04-15', 'Female', '01010000048', 'joudy48@gmail.com', 48),
(49, 'Ramy Said', '1987-09-22', 'Male', '01010000049', 'ramy49@gmail.com', 49),
(50, 'Nada Ibrahim', '1999-01-06', 'Female', '01010000050', 'nada50@gmail.com', 50);
SELECT *
FROM Patient
------INSERT ===>Doctor-----
SELECT *
FROM Doctor

INSERT INTO Doctor
(DoctorID, Name, MainSpecialization, SubSpecialization, Phone, HireDate, Salary, DepartmentID)
VALUES
(1, 'Ahmed Hassan', 'Cardiology', 'Heart', '01120000001', '2018-01-15', 25000.00, 1),
(2, 'Mona Ali', 'Neurology', 'Brain', '01120000002', '2019-03-20', 23000.00, 2),
(3, 'Omar Samir', 'Pediatrics', 'Child Care', '01120000003', '2020-05-10', 18000.00, 3),
(4, 'Sara Mohamed', 'Dermatology', 'Skin', '01120000004', '2017-07-12', 22000.00, 4),
(5, 'Youssef Adel', 'Orthopedics', 'Bones', '01120000005', '2016-09-18', 24000.00, 5),
(6, 'Nour Ahmed', 'Oncology', 'Cancer Care', '01120000006', '2021-02-25', 21000.00, 6),
(7, 'Karim Mostafa', 'Radiology', 'Imaging', '01120000007', '2019-11-05', 20000.00, 7),
(8, 'Salma Tarek', 'Psychiatry', 'Mental Health', '01120000008', '2020-04-14', 19000.00, 8),
(9, 'Mahmoud Said', 'Gynecology', 'Women Health', '01120000009', '2018-06-22', 23000.00, 9),
(10, 'Hana Khaled', 'Urology', 'Kidney Care', '01120000010', '2017-10-30', 22500.00, 10),
(11, 'Mostafa Nabil', 'Ophthalmology', 'Eye Care', '01120000011', '2021-01-11', 19500.00, 11),
(12, 'Laila Hassan', 'ENT', 'Ear Nose Throat', '01120000012', '2019-08-19', 20500.00, 12),
(13, 'Tamer Fathy', 'Dentistry', 'Oral Care', '01120000013', '2018-12-03', 18500.00, 13),
(14, 'Mai Ibrahim', 'Gastroenterology', 'Digestive Care', '01120000014', '2020-02-17', 21500.00, 14),
(15, 'Hossam Adel', 'Nephrology', 'Kidney Disease', '01120000015', '2016-05-09', 24500.00, 15),
(16, 'Aya Mahmoud', 'Pulmonology', 'Lung Care', '01120000016', '2021-06-28', 20000.00, 16),
(17, 'Khaled Samir', 'Endocrinology', 'Hormones', '01120000017', '2019-04-07', 22000.00, 17),
(18, 'Menna Ali', 'Rheumatology', 'Joint Care', '01120000018', '2018-09-13', 21000.00, 18),
(19, 'Amr Hassan', 'Hematology', 'Blood Disease', '01120000019', '2017-03-26', 23500.00, 19),
(20, 'Dina Ahmed', 'General Surgery', 'Surgery', '01120000020', '2016-11-21', 26000.00, 20),
(21, 'Ehab Mostafa', 'Emergency', 'Emergency Care', '01120000021', '2020-07-15', 19000.00, 21),
(22, 'Reem Tarek', 'Internal Medicine', 'General Medicine', '01120000022', '2019-10-02', 21000.00, 22),
(23, 'Sherif Nabil', 'Family Medicine', 'Family Care', '01120000023', '2021-03-18', 18000.00, 23),
(24, 'Nada Said', 'Plastic Surgery', 'Reconstructive', '01120000024', '2018-05-27', 25000.00, 24),
(25, 'Walid Karim', 'Infectious Disease', 'Infection Care', '01120000025', '2017-08-16', 22000.00, 25),
(26, 'Farah Omar', 'Immunology', 'Immune System', '01120000026', '2020-10-11', 21500.00, 26),
(27, 'Adham Yasser', 'Pathology', 'Lab Medicine', '01120000027', '2019-01-23', 20000.00, 27),
(28, 'Jana Hany', 'Anesthesiology', 'Anesthesia', '01120000028', '2018-07-04', 23000.00, 28),
(29, 'Islam Fathy', 'Neurosurgery', 'Brain Surgery', '01120000029', '2016-02-14', 27000.00, 29),
(30, 'Rana Khaled', 'Vascular Surgery', 'Blood Vessels', '01120000030', '2017-12-20', 25500.00, 30),
(31, 'Ayman Adel', 'Cardiac Surgery', 'Heart Surgery', '01120000031', '2015-06-18', 28000.00, 31),
(32, 'Marwa Hassan', 'Thoracic Surgery', 'Chest Surgery', '01120000032', '2019-05-12', 24500.00, 32),
(33, 'Sameh Ali', 'Pediatric Surgery', 'Child Surgery', '01120000033', '2020-08-24', 22000.00, 33),
(34, 'Heba Samir', 'Trauma Surgery', 'Trauma Care', '01120000034', '2018-10-06', 25000.00, 34),
(35, 'Wael Mahmoud', 'Geriatrics', 'Elderly Care', '01120000035', '2017-04-19', 21000.00, 35),
(36, 'Esraa Tarek', 'Neonatology', 'Newborn Care', '01120000036', '2021-09-01', 20000.00, 36),
(37, 'Bassem Said', 'Radiation Oncology', 'Radiation', '01120000037', '2016-12-11', 26000.00, 37),
(38, 'Rania Mostafa', 'Nuclear Medicine', 'Nuclear Imaging', '01120000038', '2019-06-29', 23000.00, 38),
(39, 'Hany Adel', 'Pain Management', 'Pain Care', '01120000039', '2020-01-16', 19500.00, 39),
(40, 'Dalia Hassan', 'Sports Medicine', 'Sports Injuries', '01120000040', '2018-03-08', 20500.00, 40),
(41, 'Ashraf Nabil', 'Rehabilitation', 'Physical Therapy', '01120000041', '2017-11-13', 19000.00, 41),
(42, 'Nadine Ali', 'Nutrition', 'Clinical Nutrition', '01120000042', '2021-05-22', 17500.00, 42),
(43, 'Fady Samir', 'Genetics', 'Genetic Medicine', '01120000043', '2020-09-15', 22500.00, 43),
(44, 'Habiba Ahmed', 'Allergy', 'Allergy Care', '01120000044', '2019-02-28', 18500.00, 44),
(45, 'Maged Tarek', 'Sleep Medicine', 'Sleep Disorders', '01120000045', '2018-08-07', 19500.00, 45),
(46, 'Yara Khaled', 'Critical Care', 'Intensive Care', '01120000046', '2016-04-25', 26500.00, 46),
(47, 'Ziad Mostafa', 'Toxicology', 'Poison Care', '01120000047', '2020-11-19', 21000.00, 47),
(48, 'Joudy Hassan', 'Palliative Care', 'Supportive Care', '01120000048', '2017-01-30', 20000.00, 48),
(49, 'Ramy Said', 'Preventive Medicine', 'Disease Prevention', '01120000049', '2019-07-21', 21500.00, 49),
(50, 'Nada Ibrahim', 'Clinical Pharmacy', 'Medication Care', '01120000050', '2021-10-12', 18500.00, 50);
SELECT *
FROM Doctor
------ INSERT ===>Appointment---
SELECT *
FROM Appointment
INSERT INTO Appointment
(AppointmentID, AppointmentDate, AppointmentTime, PatientID, DoctorID)
VALUES
(1, '2026-01-05', '09:00:00', 1, 1),
(2, '2026-01-06', '10:00:00', 2, 2),
(3, '2026-01-07', '11:00:00', 3, 3),
(4, '2026-01-08', '12:00:00', 4, 4),
(5, '2026-01-09', '13:00:00', 5, 5),
(6, '2026-01-10', '09:30:00', 6, 6),
(7, '2026-01-11', '10:30:00', 7, 7),
(8, '2026-01-12', '11:30:00', 8, 8),
(9, '2026-01-13', '12:30:00', 9, 9),
(10, '2026-01-14', '13:30:00', 10, 10),
(11, '2026-01-15', '09:00:00', 11, 11),
(12, '2026-01-16', '10:00:00', 12, 12),
(13, '2026-01-17', '11:00:00', 13, 13),
(14, '2026-01-18', '12:00:00', 14, 14),
(15, '2026-01-19', '13:00:00', 15, 15),
(16, '2026-01-20', '09:30:00', 16, 16),
(17, '2026-01-21', '10:30:00', 17, 17),
(18, '2026-01-22', '11:30:00', 18, 18),
(19, '2026-01-23', '12:30:00', 19, 19),
(20, '2026-01-24', '13:30:00', 20, 20),
(21, '2026-02-01', '09:00:00', 21, 21),
(22, '2026-02-02', '10:00:00', 22, 22),
(23, '2026-02-03', '11:00:00', 23, 23),
(24, '2026-02-04', '12:00:00', 24, 24),
(25, '2026-02-05', '13:00:00', 25, 25),
(26, '2026-02-06', '09:30:00', 26, 26),
(27, '2026-02-07', '10:30:00', 27, 27),
(28, '2026-02-08', '11:30:00', 28, 28),
(29, '2026-02-09', '12:30:00', 29, 29),
(30, '2026-02-10', '13:30:00', 30, 30),
(31, '2026-02-11', '09:00:00', 31, 31),
(32, '2026-02-12', '10:00:00', 32, 32),
(33, '2026-02-13', '11:00:00', 33, 33),
(34, '2026-02-14', '12:00:00', 34, 34),
(35, '2026-02-15', '13:00:00', 35, 35),
(36, '2026-02-16', '09:30:00', 36, 36),
(37, '2026-02-17', '10:30:00', 37, 37),
(38, '2026-02-18', '11:30:00', 38, 38),
(39, '2026-02-19', '12:30:00', 39, 39),
(40, '2026-02-20', '13:30:00', 40, 40),
(41, '2026-03-01', '09:00:00', 41, 41),
(42, '2026-03-02', '10:00:00', 42, 42),
(43, '2026-03-03', '11:00:00', 43, 43),
(44, '2026-03-04', '12:00:00', 44, 44),
(45, '2026-03-05', '13:00:00', 45, 45),
(46, '2026-03-06', '09:30:00', 46, 46),
(47, '2026-03-07', '10:30:00', 47, 47),
(48, '2026-03-08', '11:30:00', 48, 48),
(49, '2026-03-09', '12:30:00', 49, 49),
(50, '2026-03-10', '13:30:00', 50, 50);
SELECT *
FROM Appointment
---------INSERT==>Treatment-----
SELECT *
FROM Treatment

INSERT INTO Treatment
(TreatmentID, TreatmentName, Cost, PatientID, DoctorID)
VALUES
(1, 'Heart Checkup', 500.00, 1, 1),
(2, 'Brain Scan', 1200.00, 2, 2),
(3, 'Child Checkup', 400.00, 3, 3),
(4, 'Skin Treatment', 600.00, 4, 4),
(5, 'Bone Therapy', 900.00, 5, 5),
(6, 'Cancer Screening', 1500.00, 6, 6),
(7, 'X-Ray', 700.00, 7, 7),
(8, 'Mental Therapy', 800.00, 8, 8),
(9, 'Women Checkup', 550.00, 9, 9),
(10, 'Kidney Checkup', 650.00, 10, 10),
(11, 'Eye Examination', 450.00, 11, 11),
(12, 'Ear Examination', 400.00, 12, 12),
(13, 'Dental Cleaning', 350.00, 13, 13),
(14, 'Digestive Checkup', 750.00, 14, 14),
(15, 'Kidney Treatment', 1100.00, 15, 15),
(16, 'Lung Examination', 600.00, 16, 16),
(17, 'Hormone Test', 500.00, 17, 17),
(18, 'Joint Treatment', 850.00, 18, 18),
(19, 'Blood Test', 300.00, 19, 19),
(20, 'General Surgery', 5000.00, 20, 20),
(21, 'Emergency Care', 1000.00, 21, 21),
(22, 'Medical Checkup', 450.00, 22, 22),
(23, 'Family Checkup', 400.00, 23, 23),
(24, 'Plastic Surgery', 4500.00, 24, 24),
(25, 'Infection Treatment', 900.00, 25, 25),
(26, 'Immune Test', 700.00, 26, 26),
(27, 'Lab Test', 350.00, 27, 27),
(28, 'Anesthesia Service', 1200.00, 28, 28),
(29, 'Brain Surgery', 8000.00, 29, 29),
(30, 'Vascular Treatment', 2500.00, 30, 30),
(31, 'Heart Surgery', 9000.00, 31, 31),
(32, 'Chest Surgery', 7000.00, 32, 32),
(33, 'Child Surgery', 4500.00, 33, 33),
(34, 'Trauma Treatment', 3000.00, 34, 34),
(35, 'Elderly Checkup', 500.00, 35, 35),
(36, 'Newborn Checkup', 450.00, 36, 36),
(37, 'Radiation Therapy', 3500.00, 37, 37),
(38, 'Nuclear Scan', 1800.00, 38, 38),
(39, 'Pain Treatment', 1000.00, 39, 39),
(40, 'Sports Therapy', 900.00, 40, 40),
(41, 'Physical Therapy', 800.00, 41, 41),
(42, 'Nutrition Plan', 600.00, 42, 42),
(43, 'Genetic Test', 2000.00, 43, 43),
(44, 'Allergy Test', 550.00, 44, 44),
(45, 'Sleep Study', 1300.00, 45, 45),
(46, 'Intensive Care', 4000.00, 46, 46),
(47, 'Poison Treatment', 2500.00, 47, 47),
(48, 'Supportive Care', 1500.00, 48, 48),
(49, 'Preventive Checkup', 500.00, 49, 49),
(50, 'Medication Review', 400.00, 50, 50);
SELECT *
FROM Treatment