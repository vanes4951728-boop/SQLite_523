-- create table if not exists  Teachers(
-- Id integer primary key autoincrement,
-- Name text,
-- Birthdate date default '1980-01-01' check(Birthdate>'1970-01-01'),
-- Department text,
-- Phone text,
-- Groups text not null check(length(Groups)>0),
-- Subject text check(Subject!=' ') not null
-- );

-- insert into Teachers(Name,Birthdate,Department,Phone,Groups,Subject) values 
-- ('Sophia Davies','1984-12-08','Software development','32-12','31PPS11','C#'),
-- ('Emma Kirk','1973-05-12','Mathematics','55-34','32PR31','Discrete Math'),
-- ('Henry MacAlister','1975-02-17','Software development','32-12','30PR11','SQL Server'),
-- ('Michael Cooper','1978-11-23','Software development','32-12','29PR21','ADO. NET'),
-- ('Daniel Williams','1979-07-30','Cybersecurity','37-65','32PPS11','ITE1'),
-- ('Sophia Nelson','1984-12-08','Software development','32-12','30PR11','JavaScript'),
-- ('Daniel Williams','1979-07-30','Cybersecurity','37-65','32PPS11','WIN10');

-- create table if not exists  Teachers_revers(
-- Id integer primary key autoincrement,
-- Name text,
-- Birthdate date default '1980-01-01' check(Birthdate>'1970-01-01'),
-- Department text,
-- Phone text,
-- Groups text not null check(length(Groups)>0),
-- Subject text check(Subject!=' ') not null
-- );

-- INSERT INTO Teachers_revers SELECT * FROM Teachers WHERE Id BETWEEN 1 AND 5;
-- SELECT * FROM Teachers_revers;
-- ALTER TABLE Teachers_revers RENAME COLUMN Phone TO Telephone;
-- ALTER TABLE Teachers_revers ADD COLUMN Salary integer DEFAULT 90000;
-- ALTER TABLE Teachers_revers ADD COLUMN NewColumn text;
-- alter table Teachers_reserv drop column NewColumn;
-- ALTER TABLE Teachers1 RENAME TO Teachers_revers;

-- ALTER TABLE Teachers_revers ADD COLUMN Salary integer DEFAULT 90000;
-- UPDATE Teachers_revers SET Salary=Salary+100000 WHERE Id IN(1,3,5);
-- SELECT * FROM Teachers_revers;
-- delete from Teachers_reserv where id=5;
SELECT * FROM Teachers;