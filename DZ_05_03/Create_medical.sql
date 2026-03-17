-- CREATE TABLE IF NOT EXISTS Patients
-- (ID integer not null primary key,
-- FirstName  nvarchar(50) not null , 
-- LastName nvarchar(50) not null ,
-- Medical_Department nvarchar (50) not null,
-- SNILS nvarchar(20) not null,
-- BirthDate date not null,
-- Living_Address nvarchar(50)not null,
-- Phone nvarchar(30) Not Null,
-- Admission Date not null,
-- Discharge  Date);

INSERT into Patients(ID,FirstName,LastName, Medical_Department, SNILS,BirthDate,Living_Address,Phone,Admission, Discharge)VALUES 
(1,'Александр','Курицин','Психиатрия','5436342235','1971-07-17','Соболевича 13/2','(071)8253696','2015-02-01','2020-09-11');
INSERT into Patients(ID,FirstName,LastName, Medical_Department, SNILS,BirthDate,Living_Address,Phone,Admission, Discharge)VALUES
(2,'Иван','Крокодильчиков','Кардиология','6536342235','2005-12-21','Огурцова 16, 14','(075)6553695','2017-04-12','2021-06-02');
INSERT into Patients(ID,FirstName,LastName, Medical_Department, SNILS,BirthDate,Living_Address,Phone,Admission, Discharge)VALUES
(3,'Михаил','Токаридзе','Травматология','766342235','2002-11-03','Слоникина 11/4','(032)8743693','2021-11-11','2021-03-21');
INSERT into Patients(ID,FirstName,LastName, Medical_Department, SNILS,BirthDate,Living_Address,Phone,Admission, Discharge)VALUES
(4,'Конрад','Пармизанов','Кардиология','2236342235','2006-11-30','Пальмировой 11, 2е','(015)1353635','2021-06-21','2021-05-02');
INSERT into Patients(ID,FirstName,LastName, Medical_Department, SNILS,BirthDate,Living_Address,Phone,Admission, Discharge)VALUES
(5,'Матрёна','Пирожкова','Хирургия','8646342231','2003-02-08','Карапузова 32, 15б','(099)7453637','2021-05-10','2021-03-02');
INSERT into Patients(ID,FirstName,LastName, Medical_Department, SNILS,BirthDate,Living_Address,Phone,Admission, Discharge)VALUES
(6,'Иван','Федоров','Хирургия','6446552261','2000-03-09','Марьинский парк 32, 144','(099)6453030','2021-04-11','2021-02-10');
