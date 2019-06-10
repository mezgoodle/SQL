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

INSERT INTO people (name, bio, birth) VALUES('Maxim', 'Programmer', '2001-09-11');
INSERT INTO people (name, birth) VALUES('Max', '2001-01-11');
ALTER TABLE people CHANGE birth birth DATE NOT NULL;
INSERT INTO people (name, bio, birth)
		VALUES
		('Bob', 'ffff', '2020'),
		('Bob1', 'ffff', '2020'),
		('Bob2', 'ffff', '2020'),
		('Bob34', 'ffff', '2020'),
		('Bob3', 'ffff', '2020');
UPDATE people SET `name` = 'Alexey' WHERE id = 5;		