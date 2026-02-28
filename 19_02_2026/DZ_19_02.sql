CREATE TABLE users (
id integer PRIMARY KEY AUTOINCREMENT,
nickname text,
email text,
password text,
regdate datetime
);

INSERT INTO users (nickname,email,password)
VALUES ('player1','ivan1@gmail.com','qwerty123');
INSERT INTO users (nickname,email,password)
VALUES ('jota123','jota888@gmail.com','qwerty321');
INSERT INTO users (nickname,email,password)
VALUES ('shooter17','shot1@gmail.com','ytrewq456');