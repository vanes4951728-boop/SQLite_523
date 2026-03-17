-- -- SELECT * FROM Teachers;
-- SELECT * FROM Students;
-- SELECT * FROM Groups;
-- -- SELECT * FROM Subjects;
-- -- SELECT * FROM Teachers_Subjects;
-- SELECT * FROM Achievements;

select T.id,T.firstname||' '|| T.lastname [teachers name], T.birthdate [teachers bearhdate],
 S.Name as [Subject Name],ST.firstname||' '||ST.lastname [Student Name],
 ST.Birthdate [Student BirthDate],ST.Grants [Student Grant],ST.Email [Student Email],Assesment from Teachers  T,
 Teachers_Subjects TS,
 Subjects S, Students ST,Achievements A where
  TS.TeachersId=T.id and TS.SubjectId=S.id and A.SubjectId=S.id and ST.Id=A.StudentId;




  SELECT count(*) AS [кол-во студентов] FROM Students;
  SELECT count(Grants) [кол-во стипендей] FROM Students;
  SELECT count(DISTINCT Grants) [кол-во уникальных стипендей] FROM Students;


  SELECT avg(Grants) AS [средняя стипендия] FROM Students;
  SELECT sum(Grants)/count(Grants) AS [средняя стипендия] FROM Students;
  SELECT sum(Grants) [общая сумма стипендии]FROM Students;
  SELECT max(Grants) [максимальная стипендия] FROM Students;
  SELECT min(Grants) [минимальная стипендия] FROM Students;
  SELECT avg(CAST(strftime('%Y','now')-strftime('%Y',BirthDate) 
  AS integer)) [средний возраст преподавателя] FROM Teachers;

SELECT FacultyId, count(GroupName) AS [кол-во групп на факультете] FROM Groups group by FacultyId;

select T.firstname||' '||T.lastname [ФИО Преподавателя], count(S.firstname) [кол-во студентов у преподавателя] from Teachers T,Teachers_Subjects TS, Subjects Sub, Achievements A, Students S where T.Id=TS.Teachersid and
 TS.SubjectId=Sub.id and Sub.id=A.SubjectId and A.Studentid=S.id group by [ФИО Преподавателя];

select facultyid, Count(GroupName) as [кол-во групп на факультете] from Groups group by FacultyId having count(Groupname)>1;

-- select count(--),Column from Table(s) where -- group by Column having ---;


--   SELECT count(*) AS [кол-во преподавателей старше 40] FROM Teachers WHERE