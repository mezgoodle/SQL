CREATE DATABASE shop;
DROP DATABASE shop;
CREATE DATABASE itproger;
CREATE TABLE people(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30),
    bio TEXT,
    birth DATE,
    PRIMARY KEY(id)
);
ALTER TABLE people ADD pass VARCHAR(32);
ALTER TABLE people DROP COLUMN pass VARCHAR(32);

INSERT INTO people (name, bio, birth) VALUES('Maxim', 'Programer', '2001-09-11');
INSERT INTO people (name, birth) VALUES('Max', '2001-01-11');
ALTER TABLE people CHANGE birth birth DATE NOT NULL;
INSERT INTO people (name, bio, birth)
		VALUES
		('Bob', 'ffff', '2020'),
		('Bob1', 'ffff', '2020'),
		('Bob2', 'ffff', '2020'),
		('Bob34', 'ffff', '2020'),
		('Bob3', 'ffff', '2020');

UPDATE people SET `name` = 'Alexey', `pass` = `asdada` WHERE id = 5 AND bio = 'programmer';		
CREATE TABLE test (
	id NOT NULL,
	sometext TEXT,
	field VARCHAR(36),
	PRIMARY KEY(id)
);
INSERT INTO test (id, sometext, field)
	VALUES
	(1, "dsf", "eaea"),
	(2, "dsf", "eaea"),
	(3, "dsf", "eaea"),
	(4, "dsf", "eaea");
DELETE FROM test WHERE id = 2;
DELETE FROM test;
TRUNCATE `test`;

SELECT * FROM people;
SELECT `name`, `bio` FROM people;
SELECT `name`, `id` FROM `people` WHERE id >= 3 AND id < 5;
SELECT * FROM people WHERE birth = 5 OR bio IS NULL;
SELECT DISTINCT `name` FROM people;
SELECT * FROM people LIMIT 2;
SELECT * FROM people ORDER BY birth LIMIT 2, 3;
SELECT * FROM people ORDER BY bio DESC LIMIT 2, 3;
SELECT * FROM people WHERE id BETWEEN 2 AND 6;
SELECT * FROM people WHERE id IN(4, 2, 5, 1);
SELECT * FROM people WHERE name LIKE 'I%';

CREATE INDEX NIndex ON people(name);
SELECT `name` FROM people;
DROP INDEX NIndex ON people;

CREATE TABLE shop(
	id INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(100),
	price INT,
	PRIMARY KEY(id)
)
CREATE TABLE orders(
	id INT NOT NULL AUTO_INCREMENT,
	orderNumber INT,
	shopId INT,
	personId INT,
	date_time DATETIME DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(id),
	FOREIGN KEY(shopId) REFERENCES shop(id),
	FOREIGN KEY(personId) REFERENCES people(id)
)
INSERT INTO `shop`(`title`, `price`)
	VALUES ('Iphone', 300), ('TV', 300), ('Samsung', 300), ('ZTE', 300), ('Huawei', 300);
INSERT INTO `orders`(`orderNumber`, `shopId`, personId)
	VALUES 
		(0001, 2, 4),
		(0001, 4, 1),
		(0001, 3, 4),
		(0001, 2, 3),
		(0001, 1, 2);
SELECT shop.title, people.name, people.email FROM people	
INNER JOIN orders ON people.id = orders.personId	
INNER JOIN shop ON shop.id = orders.shopId
ORDER BY orders.orderNumber DESC;

SELECT people.name, orders.orderNumber FROM people
LEFT JOIN orders ON people.id = orders.personId
ORDER BY people.name DESC;

SELECT orders.date_time, people.name FROM orders
RIGHT JOIN people ON orders.id = people.id;

SELECT name AS `Імя`, birth AS `День народження` FROM people;
SELECT CONCAT('Імя: ', name, '. День народження: ', birth) AS 'Інформація' FROM people;
SELECT p.id, p.name, s.title, s.price FROM people AS p, shop AS s;

SELECT COUNT(id) FROM shop;
SELECT MIN(price) FROM shop;
SELECT AVG(price) FROM shop;
SELECT SUM(price) FROM shop;
SELECT UCASE(title) FROM shop;
SELECT price, COUNT(price) FROM shop GROUP BY price HAVING COUNT(price) > 1;

