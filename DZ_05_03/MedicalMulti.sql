-- CREATE TABLE Patients (
-- PatientID integer PRIMARY KEY AUTOINCREMENT,
-- FirstName VARCHAR(50),
-- LastName VARCHAR(50),
-- BirthDate DATE,
-- Phone VARCHAR(20),
-- Living_Address VARCHAR(100),
-- SNILS VARCHAR(11)
-- );

-- CREATE TABLE Departments (
-- DepartmentID integer PRIMARY KEY AUTOINCREMENT,
-- DepartmentName VARCHAR(100),
-- HeadDoctorID INT,
-- FOREIGN KEY (HeadDoctorID) REFERENCES Doctors(DoctorID)
-- );

-- CREATE TABLE Doctors (
-- DoctorID integer PRIMARY KEY AUTOINCREMENT,
-- FirstName VARCHAR(50),
-- LastName VARCHAR(50),
-- Specialization VARCHAR(100),
-- Phone VARCHAR(20)
-- );

-- CREATE TABLE Admissions (
-- AdmissionID integer PRIMARY KEY AUTOINCREMENT,
-- PatientID INT,
-- DepartmentID INT,
-- DoctorID INT,
-- AdmissionDate DATE,
-- DischargeDate DATE,
-- FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
-- FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
-- FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
-- );

-- INSERT INTO Patients (FirstName, LastName, BirthDate, Phone, Living_Address, SNILS) VALUES 
-- ('Анна', 'Иванова', '1985-05-12', '+79123456789', 'г. Москва, ул. Ленина 15 кв. 78', '11223344556'),
-- ('Михаил', 'Петров', '1978-08-23', '+79012345678', 'г. Москва, пр. Мира 45-2', '22334455667'),
-- ('Елена', 'Сидорова', '1990-11-09', '+79234567890', 'г. Москва, ул. Садовая 32', '33445566778'),
-- ('Сергей', 'Козлов', '1965-03-17', '+79345678901', 'г. Москва, пер. Цветочный 11', '44556677889'),
-- ('Ольга', 'Воробьева', '1988-07-30', '+79456789012', 'г. Москва, ул. Парковая 78', '55667788990');

-- INSERT INTO Departments (DepartmentName, HeadDoctorID) VALUES 
-- ('Терапевтическое отделение', 1),
-- ('Хирургическое отделение', 2),
-- ('Кардиологическое отделение', 3),
-- ('Травматологическое отделение', 4),
-- ('Неврологическое отделение', 5);

-- INSERT INTO Doctors (FirstName, LastName, Specialization, Phone) VALUES 
-- ('Александр', 'Смирнов', 'Терапевт', '+79111234567'),
-- ('Мария', 'Васильева', 'Хирург', '+79222345678'),
-- ('Дмитрий', 'Морозов', 'Кардиолог', '+79333456789'),
-- ('Елена', 'Соколова', 'Травматолог', '+79444567890'),
-- ('Петр', 'Андреев', 'Невролог', '+79555678901');

INSERT INTO Admissions (PatientID, DepartmentID, DoctorID, AdmissionDate, DischargeDate) VALUES 
(1, 1, 1, '2026-02-15', NULL),
(2, 2, 2, '2026-03-01', '2026-03-10'),
(3, 3, 3, '2026-02-20', NULL),
(4, 4, 4, '2026-02-25', '2026-03-05'),
(5, 5, 5, '2026-03-05', NULL);