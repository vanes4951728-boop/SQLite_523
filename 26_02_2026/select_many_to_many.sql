-- SELECT * FROM Teachers;
-- SELECT * FROM Groups;
-- SELECT * FROM TeachersGroups;

SELECT T.Id,FirstName||' '|| LastName [fullname],Birthdate,GroupName from 
Teachers T,Groups G,TeachersGroups TG where T.Id=TG.TeachersId and G.Id=TG.GroupsId;

SELECT T.Id,FirstName||' '|| LastName [fullname],Birthdate,GroupName from 
Teachers T,Groups G,TeachersGroups TG where T.Id=TG.TeachersId and G.Id=TG.GroupsId and G.Id=1;

select count(G.Id) [кол-во предметов] from 
Teachers T, Groups G,TeachersGroups TG 
where T.id=TG.TeachersId and G.Id=TG.GroupsId and T.lastname='Davies';