--1
SELECT 
Id AS 'ID книги',
Name AS 'Название',
Pages AS 'Количество страниц',
Price AS 'Цена',
PublishDate AS 'Дата публикации',
AuthorId AS 'ID автора',
ThemeId AS 'ID тематики'
FROM Books
WHERE Pages > 500 AND Pages < 650
ORDER BY Pages;

--2
SELECT 
Id AS 'ID книги',
Name AS 'Название',
Pages AS 'Количество страниц',
Price AS 'Цена',
PublishDate AS 'Дата публикации',
AuthorId AS 'ID автора',
ThemeId AS 'ID тематики'
FROM Books
WHERE 
Name LIKE 'А%' OR Name LIKE 'З%'
ORDER BY Name;


--3
SELECT Name 
FROM Books
WHERE Name LIKE '% % % %'
AND Name NOT LIKE '%   %'
AND Name NOT LIKE ' %'
AND Name NOT LIKE '% ';


--4
SELECT 
Id AS 'ID книги',
Name AS 'Название',
Pages AS 'Количество страниц',
Price AS 'Цена',
PublishDate AS 'Дата публикации',
AuthorId AS 'ID автора',
ThemeId AS 'ID тематики'
FROM Books
WHERE 
LOWER(Name) LIKE '%microsoft%'
AND LOWER(Name) NOT LIKE '%windows%'
ORDER BY Name;

--5
SELECT 
b.Name AS 'Название книги',
t.Name AS 'Тематика',
a.Surname || ' ' || a.Name AS 'Автор',
(Price / Pages) * 100 AS 'Цена за страницу (копеек)'
FROM Books b
JOIN Themes t ON b.ThemeId = t.Id
JOIN Authors a ON b.AuthorId = a.Id
WHERE (Price / Pages) < 0.65
ORDER BY 'Цена за страницу (копеек)';

--6
SELECT 
t.Name AS 'Тематика',
SUM(b.Pages) AS 'Общее количество страниц',
COUNT(b.Id) AS 'Количество книг'
FROM Themes t
LEFT JOIN Books b ON t.Id = b.ThemeId
GROUP BY t.Name
ORDER BY SUM(b.Pages) DESC;

--7
SELECT 
a.Surname || ' ' || a.Name AS 'Автор',
COUNT(b.Id) AS 'Количество книг',
SUM(b.Pages) AS 'Общее количество страниц',
AVG(b.Pages) AS 'Средняя длина книги'
FROM Authors a
LEFT JOIN Books b ON a.Id = b.AuthorId
GROUP BY a.Surname, a.Name
ORDER BY SUM(b.Pages) DESC;

--8
SELECT 
b.Name AS 'Название книги',
t.Name AS 'Тематика',
b.Pages AS 'Количество страниц',
a.Surname || ' ' || a.Name AS 'Автор'
FROM Books b
JOIN Themes t ON b.ThemeId = t.Id
JOIN Authors a ON b.AuthorId = a.Id
WHERE t.Name = 'Программирование'
ORDER BY b.Pages DESC
LIMIT 1;

--9
SELECT 
t.Name AS 'Тематика',
AVG(b.Pages) AS 'Среднее количество страниц'
FROM Themes t
LEFT JOIN Books b ON t.Id = b.ThemeId
GROUP BY t.Name
HAVING AVG(b.Pages) <= 400
ORDER BY AVG(b.Pages) DESC;

--10
SELECT 
s.Name AS 'Название магазина',
SUM(sa.Price * sa.Quantity) AS 'Общая прибыль'
FROM Sales sa
JOIN Shops s ON sa.ShopId = s.Id
GROUP BY s.Name
ORDER BY SUM(sa.Price * sa.Quantity) DESC
LIMIT 1;