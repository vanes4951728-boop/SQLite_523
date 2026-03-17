-- CREATE TABLE Doctors (
-- DoctorID INTEGER PRIMARY KEY AUTOINCREMENT,
-- FirstName TEXT NOT NULL,
-- LastName TEXT NOT NULL,
-- Specialty TEXT
-- );


-- CREATE TABLE Diagnoses (
-- DiagnosisID INTEGER PRIMARY KEY AUTOINCREMENT,
-- DiagnosisName TEXT NOT NULL
-- );


-- CREATE TABLE Appointments (
-- AppointmentID INTEGER PRIMARY KEY AUTOINCREMENT,
-- PatientID INTEGER,
-- DoctorID INTEGER,
-- DiagnosisID INTEGER,
-- AppointmentDate DATE,
-- FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
-- FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
-- FOREIGN KEY (DiagnosisID) REFERENCES Diagnoses(DiagnosisID)
-- );


-- INSERT INTO Doctors (FirstName, LastName, Specialty) VALUES
-- ('Анна', 'Петрова', 'Терапевт'),
-- ('Михаил', 'Иванов', 'Кардиолог'),
-- ('Елена', 'Сидорова', 'Педиатр'),
-- ('Сергей', 'Козлов', 'Хирург'),
-- ('Ольга', 'Воробьева', 'Офтальмолог');


-- INSERT INTO Diagnoses (DiagnosisName) VALUES
-- ('ОРВИ'),
-- ('Гипертония'),
-- ('Бронхит'),
-- ('Перелом'),
-- ('Конъюнктивит');


INSERT INTO Appointments (PatientID, DoctorID, DiagnosisID, AppointmentDate) VALUES
(1, 1, 1, '2026-03-10'),
(2, 2, 2, '2026-03-12'),
(3, 3, 3, '2026-03-15'),
(4, 4, 4, '2026-03-17'),
(5, 5, 5, '2026-03-20');