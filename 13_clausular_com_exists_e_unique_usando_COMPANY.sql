-- Cláusulas com EXISTS e UNIQUE

-- Quais employees possuem dependentes?
SELECT e.Fname, e.Lname FROM employee AS e WHERE EXISTS 
	(SELECT * FROM dependent AS d WHERE e.Ssn=d.Essn); 

-- Quais employees não possuem dependentes?
SELECT e.Fname, e.Lname FROM employee AS e WHERE NOT EXISTS 
	(SELECT * FROM dependent AS d WHERE e.Ssn=d.Essn); 
    
-- Quais employees possuem dependentes?
SELECT e.Fname, e.Lname FROM employee AS e, departament AS d WHERE 
	(e.Ssn=d.Mgr_ssn) AND EXISTS (SELECT * FROM dependent AS d WHERE e.Ssn=d.Essn);
    
-- Quais employees possuem 2 ou mais dependentes?
SELECT Fname, Lname FROM employee WHERE (SELECT count(*) FROM dependent 
	WHERE Ssn=Essn)>=2;
    
-- Selecionando o Essn dos employees que trabalham nos projetos 1, 2 e 3
SELECT DISTINCT Essn FROM works_on WHERE Pno IN (1,2,3);