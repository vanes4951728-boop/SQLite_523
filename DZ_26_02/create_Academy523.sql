-- CREATE TABLE IF NOT EXISTS Curators(
-- Id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
-- Name nvarchar(100) NOT NULL CHECK(Name!=''),
-- Surname nvarchar(100) NOT NULL CHECK(Surname!='')
-- );
-- INSERT INTO Curators(Name,Surname) VALUES
-- ('Сергей', 'Челищев'),
-- ('Дмитрий','Певцов'),
-- ('Александр','Белый'),
-- ('Сергей','Безруков'),
-- ('Виктор','Пчёлкин');

-- CREATE TABLE IF NOT EXISTS Departments(
-- Id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
-- Financing real NOT NULL CHECK(Financing>=0) DEFAULT 0,
-- Name nvarchar(100) NOT NULL CHECK(Name!='') UNIQUE,
-- FacultyId integer NOT NULL,
-- FOREIGN KEY(FacultyId) REFERENCES Faculties(Id)
-- );
-- INSERT INTO Departments (Financing, Name, FacultyId) VALUES
-- (100000.00, 'Кафедра прикладной математики', 1),
-- (85000.00, 'Кафедра информационных технологий', 1),
-- (95000.00, 'Кафедра экономики', 2),
-- (120000.00, 'Кафедра менеджмента', 2),
-- (75000.00, 'Кафедра физики', 3);

-- CREATE TABLE IF NOT EXISTS Faculties(
-- Id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
-- Financing real NOT NULL CHECK(Financing>=0) DEFAULT 0,
-- Name nvarchar(100) NOT NULL CHECK(Name!='') UNIQUE
-- );
-- INSERT INTO Faculties (Financing, Name) VALUES
-- (500000.00, 'Факультет информационных технологий'),
-- (450000.00, 'Факультет экономики и бизнеса'),
-- (400000.00, 'Факультет естественных наук'),
-- (350000.00, 'Факультет гуманитарных наук'),
-- (300000.00, 'Факультет инженерии');

-- CREATE TABLE IF NOT EXISTS Groups(
-- Id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
-- Name nvarchar(10) NOT NULL CHECK(Name!='') UNIQUE,
-- Year integer NOT NULL CHECK(Year BETWEEN 1 AND 5),
-- DepartmentId integer NOT NULL,
-- FOREIGN KEY(DepartmentId) REFERENCES Departments(Id)
-- );
-- INSERT INTO Groups (Name, Year, DepartmentId) VALUES
-- ('ИТ-11', 1, 1),
-- ('МЭ-22', 2, 2),
-- ('Ф-31', 3, 3),
-- ('ЭБ-43', 4, 2),
-- ('ИН-51', 5, 1);


-- CREATE TABLE IF NOT EXISTS GroupsCurators(
-- Id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
-- CuratorId integer NOT NULL,
-- GroupId integer NOT NULL,
-- FOREIGN KEY(CuratorId) REFERENCES Curators(Id),
-- FOREIGN KEY (GroupId) REFERENCES Groups(Id)
-- );
-- INSERT INTO GroupsCurators (CuratorId, GroupId) VALUES
-- (1, 1),
-- (2, 2),
-- (3, 3),
-- (1, 4),
-- (2, 5);

-- CREATE TABLE IF NOT EXISTS GroupsLectures(
-- Id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
-- GroupId integer NOT NULL,
-- LectureId integer NOT NULL,
-- FOREIGN KEY(GroupId) REFERENCES Groups(Id),
-- FOREIGN KEY(LectureId) REFERENCES Lectures(Id)
-- );
-- INSERT INTO GroupsLectures (GroupId, LectureId) VALUES
-- (1, 101),
-- (2, 102),
-- (3, 101),
-- (1, 103),
-- (4, 104);

-- CREATE TABLE IF NOT EXISTS Lectures(
-- Id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
-- LectureRoom nvarchar(100) NOT NULL CHECK(LectureRoom!=''),
-- SubjectId integer NOT NULL,
-- TeacherId integer NOT NULL,
-- FOREIGN KEY(SubjectId) REFERENCES Subjects(Id),
-- FOREIGN KEY(TeacherId) REFERENCES Teachers(Id)
-- );
-- INSERT INTO Lectures (LectureRoom, SubjectId, TeacherId) VALUES
-- ('А-201', 1, 10),
-- ('Б-305', 2, 11),
-- ('В-110', 3, 10),
-- ('Г-402', 4, 12),
-- ('А-201', 5, 13);

-- CREATE TABLE IF NOT EXISTS Subjects(
-- id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
-- Name nvarchar(100) NOT NULL CHECK(Name!='') UNIQUE
-- );
-- INSERT INTO Subjects(Name) VALUES
-- ('Математика'),
-- ('Физика'),
-- ('Программирование'),
-- ('Экономика'),
-- ('История');

-- CREATE TABLE IF NOT EXISTS Teachers(
-- Id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
-- Name nvarchar(100) NOT NULL CHECK(Name!=''),
-- Salary real NOT NULL CHECK(Salary>0),
-- Surname nvarchar(100) NOT NULL CHECK(Surname!='')
-- );
INSERT INTO Teachers(Name,Salary,Surname) VALUES
('Сергей',50000.00,'Челищев'),
('Дмитрий',60000.00,'Певцов'),
('Александр',70000.00,'Белый'),
('Сергей',80000.00,'Безруков'),
('Виктор',90000.00, 'Пчёлкин');