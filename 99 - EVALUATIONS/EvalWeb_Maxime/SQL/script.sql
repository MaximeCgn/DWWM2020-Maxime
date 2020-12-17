-- DROP DATABASE IF EXISTS eval;
-- CREATE DATABASE eval;
-- USE eval;

CREATE TABLE eleves
(
    idEleve int (11) not null auto_increment PRIMARY KEY,
    nomEleve varchar(50) not null,
    prenomEleve varchar(50) not null,
    classe varchar(50) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE suivis
(
    idSuivi int(11) not null auto_increment PRIMARY KEY,
    note int(11) not null,
    coefficient int(11) not null,
    idMatiere int(11) not null,
    idEleve int(11) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE matieres
(
    idMatiere int(11) not null auto_increment PRIMARY KEY,
    libelleMatiere varchar(50) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE utilisateurs
(
    idUtilisateur int(11) not null auto_increment PRIMARY KEY,
    pseudo varchar(50) not null,
    nomUtilisateur varchar(50) not null,
    prenomUtilisateur varchar(50) not null,
    motDePasse varchar(50) not null,
    role int(11) not null,
    idMatiere int(11)
)ENGINE = INNODB,
CHARSET = UTF8;

ALTER TABLE suivis ADD CONSTRAINT FK_suivis_matieres FOREIGN KEY (idMatiere) REFERENCES matieres(idMatiere);
ALTER TABLE suivis add CONSTRAINT FK_suivis_eleves FOREIGN KEY (idEleve) REFERENCES eleves(idEleve);



INSERT INTO `matieres` (`libelleMatiere`) VALUES ("Français");
INSERT INTO `matieres` (`libelleMatiere`) VALUES ("Anglais");
INSERT INTO `matieres` (`libelleMatiere`) VALUES ("Maths");
INSERT INTO `matieres`(`idMatiere`, `libelleMatiere`) VALUES (99,"Proviseur");

INSERT INTO `eleves` (`nomEleve`,`prenomEleve`,`classe`) VALUES ("Toto","Dupont","Terminale");
INSERT INTO `eleves` (`nomEleve`,`prenomEleve`,`classe`) VALUES ("Tata","Durant","Seconde");
INSERT INTO `eleves` (`nomEleve`,`prenomEleve`,`classe`) VALUES ("Tutu","Dupond","Première");

INSERT INTO `suivis` (`idMatiere`,`idEleve`,`note`,`coefficient`) VALUES (1,1,18,2);
INSERT INTO `suivis` (`idMatiere`,`idEleve`,`note`,`coefficient`) VALUES (2,2,15,1);
INSERT INTO `suivis` (`idMatiere`,`idEleve`,`note`,`coefficient`) VALUES (3,3,11,1);

INSERT INTO `utilisateurs` (`pseudo`,`nomUtilisateur`,`prenomUtilisateur`,`motDePasse`,`role`,`idMatiere`) VALUES ("fr","fr","fr","fr",1,1);
INSERT INTO `utilisateurs` (`pseudo`,`nomUtilisateur`,`prenomUtilisateur`,`motDePasse`,`role`,`idMatiere`) VALUES ("en","en","en","en",1,2);
INSERT INTO `utilisateurs` (`pseudo`,`nomUtilisateur`,`prenomUtilisateur`,`motDePasse`,`role`,`idMatiere`) VALUES ("math","math","math","math",1,3);
INSERT INTO `utilisateurs` (`pseudo`,`nomUtilisateur`,`prenomUtilisateur`,`motDePasse`,`role`) VALUES ("pr","pr","pr","pr",2,99);
 