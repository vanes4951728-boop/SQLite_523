-- CREATE TABLE IF NOT EXISTS Groups(
-- id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
-- Name nvarchar(100) NOT NULL CHECK(Name!='') UNIQUE,
-- Rating integer NOT NULL,
-- Year integer NOT NULL
-- );

-- CREATE TABLE IF NOT EXISTS Departments(
-- Id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
-- Financing real NOT NULL DEFAULT 0,
-- Name nvarchar(100) NOT NULL CHECK(Name!='') UNIQUE
-- );

-- CREATE TABLE IF NOT EXISTS Faculties(
-- Id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
-- Name nvarchar(100) NOT NULL CHECK(length(Name)>0) UNIQUE
-- );

CREATE TABLE IF NOT EXISTS Teachers(
Id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
EmploymentDate date NOT NULL,
Name nvarchar(100) NOT NULL CHECK(length(Name)>0),
Premium money NOT NULL DEFAULT 0 CHECK(Premium>0),
Salary money NOT NULL,
Surname nvarchar(100) NOT NULL CHECK(length(Surname)>0)
);