DROP DATABASE IF EXISTS personnes;

CREATE DATABASE personnes;

USE personnes;

CREATE TABLE personnes.numero
(
    idNumero int(11) not null auto_increment PRIMARY KEY,
    numeroTelephone varchar(10) not null,
    idIdentite int(11) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE personnes.identite
(
    idIdentite int(11) not null auto_increment PRIMARY KEY,
    nom varchar(100) not null,
    prenom varchar(100) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE personnes.mail
(
    idMail int(11) not null auto_increment PRIMARY KEY,
    adresseMail varchar(100) not null,
    idIdentite int(11) not null
)ENGINE = INNODB,
CHARSET = UTF8;

ALTER TABLE personnes.numero ADD CONSTRAINT FK_numero_identite FOREIGN KEY (idIdentite) REFERENCES identite(idIdentite);
ALTER TABLE personnes.mail ADD CONSTRAINT FK_mail_identite FOREIGN KEY (idIdentite) REFERENCES identite(idIdentite);