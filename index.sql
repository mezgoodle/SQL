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

INSERT INTO people (name, bio, birth) VALUES('Maxim', 'Programmer', '2001-09-11')