-- Inserção de dados no BD Company --

USE company;
SHOW TABLES;

INSERT INTO employee VALUES (
'John', 'B', 'Smith', 123456789, '1965-01-09', '731-Fondren-Houston-TX', 'M', 30000, null, 5
);
SELECT * FROM employee;

INSERT INTO dependent VALUES (
	123456789, 'Michael', 'M', '1988-01-04', 'Son'
);
SELECT * FROM dependent;

INSERT INTO departament VALUES (
	'Research', 1, '123456789', '1986-05-22' 
);
SELECT * FROM departament;

INSERT INTO dept_locations VALUES (
	1, 'Houston'
);
SELECT * FROM dept_locations;

INSERT INTO project VALUES (
	'ProductX', 1, 'Bellaire', 1
);
SELECT * FROM project;

INSERT INTO works_on VALUES (
	123456789, 1, 32.5
);
SELECT * FROM works_on;

