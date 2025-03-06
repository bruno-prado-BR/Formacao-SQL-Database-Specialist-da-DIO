-- Expressões e concatenação de string

USE company;

-- Recuperando informações dos departamentos presentes em Stafford
SELECT Dname AS Departament_Name, Mgr_ssn AS Manager, Address FROM departament d, dept_locations l, employee e
	WHERE d.Dnumber=l.Dnumber AND Dlocation='Stafford';
    
-- Recuperando todos os gerentes, departamentos e seus nomes
SELECT Dname AS Departament_Name, CONCAT(Fname, ' ', Lname) AS Manager, Dlocation FROM departament d, dept_locations l, employee e
	WHERE d.Dnumber=l.Dnumber AND Mgr_ssn=e.Ssn;

-- Recuperando informações do gerente de Stafford
SELECT Pnumber, Dnum, Lname, Address, Bdate FROM departament d, project p, employee e
	WHERE d.Dnumber=p.Dnum AND p.Plocation='Stafford' AND Mgr_ssn=e.Ssn;