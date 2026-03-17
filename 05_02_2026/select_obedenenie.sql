SELECT * FROM Achievements;

SELECT FirstName,LastName,BirthDate,Email FROM Students WHERE EXISTS(
SELECT * FROM Achievements WHERE Achievements.Studentid);

SELECT FirstName,LastName,BirthDate,Email FROM Students WHERE EXISTS(
SELECT * FROM Achievements WHERE Achievements.Studentid=Students.id);


--any
-- SELECT FirstName,LastName,BirthDate,Email FROM Students 
-- WHERE id=ANY(SELECT Studentid FROM Achievements WHERE Assesment=10);

SELECT FirstName,LastName,BirthDate,Email FROM Students
WHERE id IN (SELECT Studentid FROM Achievements WHERE Assesment=10);

SELECT LastName||' '|| FirstName FullName , BirthDate FROM Students
UNION
SELECT LastName||' '||FirstName Fullname, Birthdate from Teachers;
