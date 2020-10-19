DROP DATABASE if EXISTS grandPrix;
CREATE DATABASE grandPrix;
USE  grandPrix;
CREATE TABLE athlete
(
	idAthlete int(11) not null auto_increment PRIMARY KEY,
	nomAthlete varchar(50) not null ,
	prenomAthlete varchar(50) not null ,
	dateNaissance date not null ,
	genre varchar(15) not null ,
	idComite int(11) not null
)ENGINE=INNODB, CHARSET=UTF8;

CREATE TABLE comite
(
	idComite int(11) not null auto_increment PRIMARY KEY,
	nomComite varchar(50) not null ,
	nomPresident varchar(50) not null ,
	prenomPresident varchar(50) not null 
)ENGINE=INNODB, CHARSET=UTF8;

CREATE TABLE membre
(
	idMembre int(11) not null auto_increment PRIMARY KEY,
	nomMembre varchar(25) not null ,
	prenomMembre varchar(25) not null ,
	dateNaissance date not null ,
	idComite int(11) not null
)ENGINE=INNODB, CHARSET=UTF8;

CREATE TABLE exerce
(
	idDiscipline int(11) not null,
	idAthlete int(11) not null
)ENGINE=INNODB, CHARSET=UTF8;

CREATE TABLE discipline
(
	idDiscipline int(11) not null auto_increment PRIMARY KEY,
	nomDiscipline varchar(25) not null 
)ENGINE=INNODB, CHARSET=UTF8;

CREATE TABLE participe
(
	idAthlete int(11) not null,
	idRencontre int(11) not null
)ENGINE=INNODB, CHARSET=UTF8;

CREATE TABLE rencontre
(
	idRencontre int(11) not null auto_increment PRIMARY KEY,
	dateRencontre date not null ,
	lieuRencontre varchar(20) not null ,
	nbrPoints int(4),
	pointsRecords int(4),
	place varchar(20) not null ,
	nbrParticipants int(4) not null 
)ENGINE=INNODB, CHARSET=UTF8;

CREATE TABLE appartient
(
	idAthlete int(11) not null,
	idFederation int(11) not null
)ENGINE=INNODB, CHARSET=UTF8;

CREATE TABLE federation
(
	idFederation int(11) not null auto_increment PRIMARY KEY,
	nomFederation varchar(50) not null ,
	nomPresidentFed varchar(20),
	prenomPresidentFed varchar(20)
)ENGINE=INNODB, CHARSET=UTF8;

ALTER TABLE athlete ADD CONSTRAINT FK_athlete_comite FOREIGN KEY (idComite) REFERENCES comite(idComite);
ALTER TABLE membre ADD CONSTRAINT FK_membre_comite FOREIGN KEY (idComite) REFERENCES comite(idComite);
ALTER TABLE exerce ADD CONSTRAINT FK_exerce_discipline FOREIGN KEY (idDiscipline) REFERENCES discipline(idDiscipline);
ALTER TABLE exerce ADD CONSTRAINT FK_exerce_athlete FOREIGN KEY (idAthlete) REFERENCES athlete(idAthlete);
ALTER TABLE participe ADD CONSTRAINT FK_participe_athlete FOREIGN KEY (idAthlete) REFERENCES athlete(idAthlete);
ALTER TABLE participe ADD CONSTRAINT FK_participe_rencontre FOREIGN KEY (idRencontre) REFERENCES rencontre(idRencontre);
ALTER TABLE appartient ADD CONSTRAINT FK_appartient_athlete FOREIGN KEY (idAthlete) REFERENCES athlete(idAthlete);
ALTER TABLE appartient ADD CONSTRAINT FK_appartient_federation FOREIGN KEY (idFederation) REFERENCES federation(idFederation);


