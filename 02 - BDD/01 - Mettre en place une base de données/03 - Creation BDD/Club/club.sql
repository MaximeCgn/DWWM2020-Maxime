DROP DATABASE IF EXISTS club;
CREATE DATABASE club;
USE club;

CREATE TABLE club.fondateurs
(
    idFondateurs int(11) not null auto_increment PRIMARY KEY,
    nomFondateur varchar(50) not null,
    prenomFondateur varchar(50) not null,
    dateNaissance date not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE club.fondu
(
    idClub int(11) not null,
    idFondateurs int(11) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE club.
(
    idClub int(11) not null auto_increment PRIMARY KEY,
    libelleClub varchar(50) not null,
    dateCreation date not null,
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE club.appartenance
(
    idMembre int(11) not null,
    idClub int(11) not null,
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE club.membre
(
    idMembre int(11) not null auto_increment PRIMARY KEY,
    nomMembre varchar(50) not null,
    prenomMembre varchar(50) not null,
    dateNaissance date not null,
    dateAdherance date not null,
    idParrain int(11) not null,
    idParrain2 int(11) not null,
    idParrain3 int(11) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE club.parrain
(
    idParrain int(11) not null auto_increment PRIMARY KEY,
    nomParrain varchar(50),
    prenomParrain varchar(50),
    dateNaissance date,
    dateParrainage date
)ENGINE = INNODB,
CHARSET = UTF8;

ALTER TABLE club.fondu ADD CONSTRAINT FK_fondu_club FOREIGN KEY (idClub) REFERENCES club(idClub);
ALTER TABLE club.fondu ADD CONSTRAINT FK_fondu_fondateurs FOREIGN KEY (idFondateurs) REFERENCES fondateurs(idFondateurs);
ALTER TABLE club.appartenance ADD CONSTRAINT FK_appartenance_membre FOREIGN KEY (idMembre) REFERENCES membre(idMembre);
ALTER TABLE club.appartenance ADD CONSTRAINT FK_appartenance_club FOREIGN KEY (idClub) REFERENCES club(idClub);
ALTER TABLE club.membre ADD CONSTRAINT FK_membre_parrain FOREIGN KEY (idParrain) REFERENCES parrain(idParrain);
ALTER TABLE club.membre ADD CONSTRAINT FK_membre_parrain FOREIGN KEY (idParrain2) REFERENCES parrain(idParrain);
ALTER TABLE club.membre ADD CONSTRAINT FK_membre_parrain FOREIGN KEY (idParrain3) REFERENCES parrain(idParrain);