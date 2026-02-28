-- select (firstname||' '||lastname) as [Ф И О], nickname, birthdate,email as Почта from students where
-- cast(strftime('%m',birthdate)as int)>=3 and cast(strftime('%m',birthdate)as int)<=7;
-- insert into students(firstname,lastname,birthdate,email)
--  values ('peter','pen','1970-02-25','pp@gmail.com');
-- SELECT * FROM Students;
-- SELECT * FROM Students WHERE nickname IS NOT NULL;
-- SELECT * FROM Students WHERE firstname!='Никита';
-- SELECT * FROM Students WHERE lenght(lastname)<7;
-- SELECT * FROM Students WHERE NOT nickname='uspik';
-- SELECT id,lastname,firstname,
-- CAST(strftime('%Y.%m%d','now')-strftime('%Y.%m%d',birthdate)AS int)
-- Возраст,email FROM Students ORDER BY Возраст DESC;
-- SELECT id,lastname,firstname,
-- CAST(strftime('%Y.%m%d','now')-strftime('%Y.%m%d',birthdate)AS int)
-- Возраст,email FROM Students ORDER BY Возраст ASC;

-- SELECT * FROM Students ORDER BY lastname DESC,
-- firstname ASC;
-- DELETE FROM Students WHERE firstname='peter';
-- SELECT * FROM Students;
-- SELECT * FROM Students WHERE firstname='Никита' OR firstname='Николай';
-- SELECT * FROM Students  WHERE firstname IN ('Никита','Николай','Анна');

-- select id,firstname,nickname,
-- cast(strftime('%Y.%m%d','now')-strftime('%Y.%m%d',birthdate)as int) age,email
--  from students where firstname in ('Никита','Николай','Анна') order by age;

--  select id,firstname, lastname,
-- max(cast(strftime('%Y.%m%d','now')-strftime('%Y.%m%d',birthdate)as int)) 
-- as maxage from students;
-- SELECT * FROM Students WHERE birthdate BETWEEN '2021-03-01' AND '2010-01-01';
-- SELECT * FROM Students WHERE lastname NOT BETWEEN 'А' AND 'Л';
/*% — соответствует любой последовательности сим-
волов от 0 и более;
■ _ — представляет любой одиночный символ;
■ [] — задает последовательность или диапазон воз-
можных символов;
■ [^] — задает последовательность или диапазон сим-
волов, которые должны отсутствовать.*/
-- SELECT * FROM Students WHERE nickname LIKE 'lis%';
-- SELECT * FROM Students WHERE firstname LIKE '%на%';
-- SELECT * FROM Students WHERE firstname LIKE '_н%';
-- SELECT * FROM Students WHERE firstname LIKE '__н%';
SELECT * FROM Students WHERE lastname GLOB '[А-Л]*';
SELECT * FROM Students WHERE lastname GLOB '[^А-Л]*';