SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS first_example;
USE first_example;

CREATE TABLE person(
	person_id SMALLINT UNSIGNED,
    fname VARCHAR(20),
    lname VARCHAR(20),
    gender ENUM('M', 'F'),
    birth_date DATE,
    street VARCHAR(30),
    city VARCHAR(20),
    state VARCHAR(20),
    country VARCHAR(20), 
    postal_code VARCHAR(20),
    CONSTRAINT pk_person PRIMARY KEY (person_id)
);

DESC person;

CREATE TABLE favorite_food(
	person_id SMALLINT UNSIGNED,
    food VARCHAR(20),
    CONSTRAINT pk_favorite_food PRIMARY KEY (person_id, food),
    CONSTRAINT fk_favorite_food_person_id FOREIGN KEY (person_id) REFERENCES person(person_id)
);

DESC favorite_food;

-- Consultando constraints --
SELECT * FROM information_schema.table_constraints WHERE constraint_schema = 'first_example';

INSERT INTO person VALUES(
	'0', 'Carolina', 'Silva', 'F', '1979-08-21', 'Rua tal', 'Cidade J', 'RJ', 'Brazil', '26054-89');

INSERT INTO person VALUES(
	'1', 'Maria', 'Silva', 'F', '1979-08-21', 'Rua tal', 'Cidade J', 'RJ', 'Brazil', '26041-89'),
    ('2', 'Juliano', 'Silva', 'M', '1979-08-21', 'Rua tal', 'Cidade J', 'RJ', 'Brazil', '26754-89'),
    ('3', 'Marcos', 'Silva', 'M', '1979-08-21', 'Rua tal', 'Cidade J', 'RJ', 'Brazil', '26634-89'),
    ('4', 'Valdir', 'Silva', 'M', '1979-08-21', 'Rua tal', 'Cidade J', 'RJ', 'Brazil', '26364-89'),
    ('5', 'Murilo', 'Silva', 'M', '1979-08-21', 'Rua tal', 'Cidade J', 'RJ', 'Brazil', '27854-89'
);

SELECT * FROM person;

DELETE FROM person WHERE person_id=2 OR person_id=3 OR person_id=4;

DESC favorite_food;

INSERT INTO favorite_food VALUES(
	0, 'lasanha'), 
    (1, 'carne assada'),
    (5, 'fetuccine');
    
SELECT * FROM favorite_food;
