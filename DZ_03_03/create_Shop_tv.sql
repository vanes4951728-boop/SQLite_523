-- CREATE TABLE IF NOT EXISTS Customers(
-- id integer PRIMARY KEY,
-- surname nvarchar(50) NOT NULL,
-- city nvarchar(50) NOT NULL
-- );

-- CREATE TABLE IF NOT EXISTS Salesman(
-- id integer PRIMARY KEY,
-- surname nvarchar(50) NOT NULL,
-- city nvarchar(50) NOT NULL
-- );

-- CREATE TABLE IF NOT EXISTS Sales(
-- id integer PRIMARY KEY,
-- id_cust integer NOT NULL,
-- id_salesman integer NOT NULL,
-- product nvarchar(100) NOT NULL,
-- price real NOT NULL,
-- FOREIGN KEY (id_cust) REFERENCES Customers(id),
-- FOREIGN KEY (id_salesman) REFERENCES Salesman (id)
-- );

-- INSERT INTO Customers (id,surname,city) VALUES
-- (1,'Johnson','London'),
-- (2,'Williams','Paris'),
-- (3,'Brown','Paris'),
-- (4,'Jones','Berlin');

-- INSERT INTO Salesman (id,surname,city) VALUES
-- (1,'Smith','Amsterdam'),
-- (2,'Wilson','Prague'),
-- (3,'Taylor','Paris'),
-- (4,'Anderson','Berlin');

INSERT INTO Sales (id,id_cust,id_salesman,product,price) VALUES
(1,1,3,'Notebook',1500),
(2,2,3,'TV',500),
(3,2,1,'TV',800),
(4,4,1,'Smartphone',1000);