-- Cláusulas de Ordenação

USE company;

-- Ordenando todos os employees pelo Nome 
SELECT * FROM employee ORDER BY Fname;

-- Recuperando nome do departamento, nome do gerente e endereço ordenados pelo nome
SELECT d.Dname, concat(e.Fname, ' ',e.Lname ) AS Manager, Address 
	FROM departament AS d, employee AS e, works_on AS w, project AS p
	WHERE (d.Dnumber=e.Dno AND e.Ssn=d.Mgr_ssn AND w.Pno=p.Pnumber)
    ORDER BY d.Dname, e.Fname, e.Lname; 
    
-- Recuperando todos os empregados e seus projetos em andamento
SELECT d.Dname AS departament, CONCAT(e.Fname, ' ', e.Lname) AS employee, p.Pname AS Project_name, Address
	FROM departament AS d, employee AS e, works_on AS w, project AS p
	WHERE (d.Dnumber= e.Dno AND e.Ssn=w.Essn AND w.Pno=p.Pnumber)
    ORDER BY d.Dname, e.Fname, e.Lname;