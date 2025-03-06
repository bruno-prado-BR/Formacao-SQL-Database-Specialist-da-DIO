-- Subqueries

USE company;

SELECT DISTINCT Pnumber FROM project WHERE Pnumber IN 
	(SELECT Pnumber FROM project, departament, employee 
    WHERE (Mgr_ssn=Ssn AND Lname='Smith' AND Dnum=Dnumber)) 
    OR 
    (SELECT DISTINCT Pno FROM works_on, employee 
    WHERE (Essn=Ssn AND Lname='Smith'));
    
SELECT DISTINCT * FROM works_on WHERE (Pno, Hours) IN 
	(SELECT Pno, Hours FROM works_on WHERE Essn=123456789);
    
