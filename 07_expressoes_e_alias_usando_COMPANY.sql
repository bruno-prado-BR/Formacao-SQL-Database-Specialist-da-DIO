-- Expressões e ALIAS

-- Recolhendo INSS - Obs: não está persistido no banco de dados
SELECT Fname, Lname, Salary, Salary*0.11 FROM employee;
SELECT Fname, Lname, Salary, Salary*0.11 AS INSS FROM employee;
SELECT Fname, Lname, Salary, ROUND(Salary*0.11) AS INSS FROM employee;

-- Definir um aumento de salários para os gerentes que trabalham no projeto associado ao ProdutoX

-- Encontras os gerentes
SELECT * FROM employee e, works_on AS w, project AS p 
	WHERE (e.Ssn=w.Essn AND w.Pno=p.Pnumber);

-- Selecionando apenas os gerentes de ProductX
SELECT CONCAT(Fname, ' ', Lname) AS Complete_name, Salary 
	FROM employee e, works_on AS w, project AS p 
	WHERE (e.Ssn=w.Essn AND w.Pno=p.Pnumber AND p.Pname='ProductX');

-- Criando increased_salary, aumentando o salario em 10%
    SELECT CONCAT(Fname, ' ', Lname) AS Complete_name, Salary, ROUND(Salary*1.1,2) as increased_salary 
    FROM employee e, works_on AS w, project AS p 
	WHERE (e.Ssn=w.Essn AND w.Pno=p.Pnumber AND p.Pname='ProductX');
    
-- Definindo ALIAS para legibilidade da consulta
SELECT CONCAT(e.Fname, '', e.Lname) AS Employee_Name, e.Address FROM employee e, departament d
	WHERE (d.Dname='Research' AND d.Dnumber=e.Dno);