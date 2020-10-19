DROP DATABASE IF EXISTS historien;

CREATE DATABASE historien;

USE historien;
CREATE TABLE historien.soldat (
    idSoldat int(11) not null auto_increment PRIMARY KEY,
    nomSoldat varchar(50) not null,
    prenomSoldat varchar(50) not null,
    dateNaissance date not null,
    dateDeces date not null
) ENGINE = INNODB,
CHARSET = UTF8;


CREATE TABLE historien.grades (
    idGrades int(11) not null auto_increment PRIMARY KEY,
    libelleGrade varchar(50) not null,
    dateObtention date not null,
    idSoldat int(11) not null
) ENGINE = INNODB,
CHARSET = UTF8;


CREATE TABLE historien.appartenu (
    idSoldat int(11) not null,
    idUnite int(11) not null
) ENGINE = INNODB,
CHARSET = UTF8;


CREATE TABLE historien.unite (
    idUnite int(11) not null auto_increment PRIMARY KEY,
    libelleUnite varchar(50) not null,
    dateRattachement date not null
) ENGINE = INNODB,
CHARSET = UTF8;


CREATE TABLE historien.recu (
    idBlessures int(11) not null,
    idSoldat int(11) not null
) ENGINE = INNODB,
CHARSET = UTF8;


CREATE TABLE historien.blessures (
    idBlessures int(11) not null auto_increment PRIMARY KEY,
    typeBlessure varchar(50)
) ENGINE = INNODB,
CHARSET = UTF8;


CREATE TABLE historien.survenu (
    idBatailles int(11) not null,
    idBlessures int(11) not null
) ENGINE = INNODB,
CHARSET = UTF8;


CREATE TABLE historien.batailles (
    idBatailles int(11) not null auto_increment PRIMARY KEY,
    lieuBataille varchar(50) not null,
    dateDebut date not null,
    dateFin date not null
) ENGINE = INNODB,
CHARSET = UTF8;

ALTER TABLE
    historien.grades
ADD
    CONSTRAINT FK_grades_soldat FOREIGN KEY (idSoldat) REFERENCES soldat(idSoldat);

ALTER TABLE
    historien.appartenu
ADD
    CONSTRAINT FK_appartenu_soldat FOREIGN KEY (idSoldat) REFERENCES soldat(idSoldat);

ALTER TABLE
    historien.appartenu
ADD
    CONSTRAINT FK_appartenu_unite FOREIGN KEY (idUnite) REFERENCES unite(idUnite);

ALTER TABLE
    historien.recu
ADD
    CONSTRAINT FK_recu_blessures FOREIGN KEY (idBlessures) REFERENCES blessures(idBlessures);

ALTER TABLE
    historien.recu
ADD
    CONSTRAINT FK_recu_soldat FOREIGN KEY (idSoldat) REFERENCES soldat(idSoldat);

ALTER TABLE
    historien.survenu
ADD
    CONSTRAINT FK_survenu_batailles FOREIGN KEY (idBatailles) REFERENCES batailles(idBatailles);

ALTER TABLE
    historien.survenu
ADD
    CONSTRAINT FK_survenu_blessures FOREIGN KEY (idBlessures) REFERENCES blessures(idBlessures);