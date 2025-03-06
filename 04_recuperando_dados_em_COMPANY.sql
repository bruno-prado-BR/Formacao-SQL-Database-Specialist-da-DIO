USE company;
SELECT * FROM employee;

-- Buscando SSN, nome e o departamento do empregado
SELECT Ssn, Fname, Dname FROM employee e, departament d WHERE (e.Ssn = d.Mgr_ssn);

-- Buscando nome, dependente do empregado e a relação
SELECT Fname, Dependent_name, Relationship FROM employee, dependent WHERE Essn = Ssn;

-- Recuperando aniversário e endereço de um determinado empregado
SELECT Bdate, Address FROM employee WHERE Fname = 'John' AND Minit = 'B' AND Lname = 'Smith';

-- Recuperando se existe um departamento específico
SELECT * FROM departament WHERE Dname = 'Research';

-- Recuperando empregado que trabalha em Research E possuem endereços
SELECT Fname, Lname, Address FROM employee, departament WHERE Dname = 'Research' AND Dnumber = Dno;


