USE company;

SHOW TABLES;

-- Dnumber: department
DESC departament;
DESC dept_locations;

SELECT * FROM departament;
SELECT * FROM dept_locations;

-- Aqui o retorno é que os dados são ambiguos, não da pra saber a qual tabela ela pertence
SELECT * FROM departament, dept_locations WHERE Dnumber = Dnumber;

-- Retirando a ambiguidade através do Alias ou AS Statement
SELECT Dname, Dlocation as Departament_name FROM departament AS d, dept_locations as l WHERE  d.Dnumber = l.Dnumber;

-- Concatenando duas colunas
SELECT concat(Fname, ' ', Lname) AS Employee FROM employee;