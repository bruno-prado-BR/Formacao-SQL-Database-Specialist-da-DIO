-- Funções e Cláusulas de Agrupamento

USE company;

-- Quantidade de empregados
SELECT COUNT(*) FROM employee;

-- Quantidade de empregados no departamento Research
SELECT COUNT(*) FROM employee, departament
	WHERE Dno=Dnumber AND Dname='Research';
    
-- Número de empregados e média salarial por departamento
SELECT Dno, COUNT(*) AS Number_of_employees, ROUND(AVG(Salary),2) AS Salary_AVG FROM employee
	GROUP BY Dno;

-- Número de empregados por departamento
SELECT Pnumber, Pname, COUNT(*) FROM project, works_on 
	WHERE Pnumber=Pno GROUP BY Pnumber, Pname;

-- Quantidade de salários diferentes dos empregados
SELECT COUNT(DISTINCT Salary) FROM employee;

-- Soma, máximo, minimo e média dos salários dos empregados
SELECT SUM(Salary) AS total_salary, MAX(Salary) AS max_salary, MIN(Salary) AS min_salary,
	AVG(Salary) as avg_salary FROM employee;