
/* Nom du database*/
create database etudiant ;
/*.......................*/
/*utiliser database etudiant*/
 use etudiant;
 /*......................*/
 
 create table Etudiant(
 CNE INT(20) NOT NULL,
 nom VARCHAR(20) NOT NULL,
 prenom VARCHAR(20) NOT NUll,
 email VARCHAR(50) NOT NULL,
 dateNaissance VARCHAR(50) NOT NULL,
 region VARCHAR(50) NOT NULL,
 TypeBac VARCHAR(50) NOT NULL,
 PRIMARY KEY (CNE));
 
 INSERT INTO Etudiant (CNE,nom,prenom,email,dateNaissance,region,TypeBac) VALUES (123456,'NKHILI','kenza','kenza.nkhili@gmail.com','03/07/1998','FES','SC MATH');
 INSERT INTO Etudiant (CNE,nom,prenom,email,dateNaissance,region,TypeBac) ValUES (789101,'BENMESSAOUD','habiba','habiba.benmassaoud@gmail.com','14/05/1998','FES','SC MATH');
 
 
 