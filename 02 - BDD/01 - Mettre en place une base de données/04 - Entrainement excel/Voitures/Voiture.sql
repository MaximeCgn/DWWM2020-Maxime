DROP DATABASE IF EXISTS voitures;

CREATE DATABASE voitures;

USE voitures;

CREATE TABLE voitures.marque
(
    idMarque int(11) not null auto_increment PRIMARY KEY,
    marque varchar(50) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE voitures.modele
(
    idModele int(11) not null auto_increment PRIMARY KEY,
    modele varchar(50) not null,
    idMarque int(11) not null
)ENGINE = INNODB,
CHARSET = UTF8;

ALTER TABLE voitures.modele ADD CONSTRAINT FK_modele_marque FOREIGN KEY (idMarque) REFERENCES marque(idMarque);