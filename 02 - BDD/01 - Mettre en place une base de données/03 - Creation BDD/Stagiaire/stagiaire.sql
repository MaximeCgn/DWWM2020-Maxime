DROP DATABASE if EXISTS stagiaires;
CREATE DATABASE stagiaires;
USE stagiaires;

CREATE TABLE stagiaire
(
	idStagiaire int(11) not null auto_increment PRIMARY KEY,
	nomStagiaire varchar(25) not null,
	prenomStagiaire varchar(25) not null,
	dateNaissance date not null,
	numeroBenef varchar(8) not null
)ENGINE=INNODB, CHARSET=UTF8;

CREATE TABLE participe
(
	idStagiaire int(11) not null,
	idFormation int(11) not null,
	dateDebut date null,
	dateFin date
)ENGINE=INNODB, CHARSET=UTF8;

CREATE TABLE formation
(
	idFormation int(11) not null auto_increment PRIMARY KEY,
	numeroNational varchar(8) not null,
	intitule varchar(100) not null,
	niveau varchar(100) not null
)ENGINE=INNODB, CHARSET=UTF8;

ALTER TABLE participe ADD CONSTRAINT FK_participe_stagiaire FOREIGN KEY (idStagiaire) REFERENCES stagiaire(idStagiaire);
ALTER TABLE participe ADD CONSTRAINT FK_participe_formation FOREIGN KEY (idFormation) REFERENCES formation(idFormation);