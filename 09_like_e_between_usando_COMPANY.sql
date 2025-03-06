-- Usando LIKE e BETWEEN

USE company;

-- Buscando pessoas que moram no Endereço Houston
SELECT CONCAT(Fname, ' ', Lname) AS Complete_Name, Dname AS Departament_Name, Address 
	FROM employee, departament WHERE (Dno=Dnumber AND Address LIKE '%Houston%');

-- Buscando pessoas que moram no Endereço Houston
SELECT CONCAT(Fname, ' ', Lname) AS Complete_Name, Address
	FROM employee WHERE (Address LIKE '%Houston%');
    
-- Retornando empregados que ganham entre 30000 e 40000
SELECT Fname, Lname, Salary FROM employee WHERE (Salary > 30000 AND Salary < 40000);

-- Retornando empregados que ganham entre 20000 e 40000
SELECT Fname, Lname, Salary FROM employee WHERE (Salary BETWEEN 30000 AND 40000);
