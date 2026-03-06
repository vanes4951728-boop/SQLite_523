SELECT c.surname AS CustomerSurname,s.surname AS SalesmanSurname,sl.product AS ProductName,
sl.price AS ProductPrice
FROM Sales sl JOIN Customers c ON sl.id_cust = c.id
JOIN Salesman s ON sl.id_salesman = s.id
ORDER BY CustomerSurname;