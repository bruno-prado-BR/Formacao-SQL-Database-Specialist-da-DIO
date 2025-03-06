-- Operadores lógicos

-- Recuperando Nome especifico usando AND
SELECT Bdate, Address FROM employee WHERE Fname='John' AND Minit='B' AND Lname='Smith';

-- Recuperando departamento Research ou Administration usando OR
SELECT * FROM departament WHERE Dname='Research' OR 'Administration';

-- Recuperando Nome dos empregados do departamento Research usando AND
SELECT Fname, Lname FROM employee, departament WHERE Dname='Research' AND Dnumber=Dno;