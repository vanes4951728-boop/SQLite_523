-- SELECT * FROM Students;
-- SELECT * FROM Groups;

select S.id,Firstname||' '||Lastname [name],birthdate,
email,nickname,GroupName 
from Students S,Groups G where G.id=S.GroupId;