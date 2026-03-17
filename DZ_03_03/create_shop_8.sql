-- CREATE TABLE IF NOT EXISTS Products(
-- id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
-- item integer NOT NULL,
-- date DATE NOT NULL,
-- price real NOT NULL CHECK(price>0)
-- );


-- INSERT INTO Products (item,date,price) VALUES
-- (1,'2026-03-01',200.00),
-- (1,'2026-03-02',210.00),
-- (1,'2026-03-03',225.00),
-- (1,'2026-03-04',250.00),
-- (2,'2026-03-05',600.00),
-- (2,'2026-03-06',650.00),
-- (2,'2026-03-07',675.00),
-- (2,'2026-03-08',700.00);


-- UPDATE Products
-- SET price=price +200
-- WHERE price BETWEEN 600 AND 700;

-- UPDATE Products
-- SET item=3
-- WHERE price BETWEEN 200 AND 850;

DELETE FROM Products
WHERE item=2;
