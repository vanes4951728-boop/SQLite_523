-- SELECT * FROM Teachers;
-- SELECT * FROM Groups;

select Teachers.id as [Айди Препода],
FirstName,LastName,Birthdate,GroupName,FacultyId 
from teachers,groups where teachers.GroupId=Groups.id;
