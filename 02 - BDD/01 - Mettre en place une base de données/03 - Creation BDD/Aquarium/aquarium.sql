/*AAA*/

DROP DATABASE IF EXISTS aquarium;

CREATE DATABASE aquarium;

USE aquarium;

CREATE TABLE aquarium.ordre
(
    idOrdre int(11) not null auto_increment PRIMARY KEY,
    ordre varchar(50) not null,
    idFamille int(11) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE aquarium.famille 
(
    idFamille int(11) not null auto_increment PRIMARY KEY,
    libelleFamille varchar(50) not null,
    idGenre int(11) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE aquarium.genre
(
    idGenre int(11) not null auto_increment PRIMARY KEY,
    libelleGenre varchar(50) not null,
    idEspece int(11) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE aquarium.espece
(
    idEspece int(11) not null auto_increment PRIMARY KEY,
    typeEspece varchar(50)
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE aquarium.animal
(
    idAnimal int(11) not null auto_increment PRIMARY KEY,
    matricule varchar(8) not null,
    idEspece int(11) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE aquarium.place
(
    idBassin int(11) not null,
    idAnimal int(11) not null,
    dateEntree date not null,
    dateSortie date
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE aquarium.bassin
(
    idBassin int(11) not null auto_increment PRIMARY KEY,
    numeroBassin varchar(3) not null,
    idPiece int(11) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE aquarium.piece
(
    idPiece int(11) not null auto_increment PRIMARY KEY,
    numeroPiece varchar(3) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE aquarium.soigne
(
    idAnimal int(11) not null,
    idSoin int(11) not null,
    dateSoin date
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE aquarium.soin
(
    idSoin int(11) not null auto_increment PRIMARY KEY,
    natureSoin varchar(50) not null
)ENGINE = INNODB,
CHARSET = UTF8;

ALTER TABLE aquarium.ordre ADD CONSTRAINT FK_ordre_famille FOREIGN KEY (idFamille) REFERENCES famille(idFamille);
ALTER TABLE aquarium.famille ADD CONSTRAINT FK_famille_genre FOREIGN KEY (idGenre) REFERENCES genre(idGenre);
ALTER TABLE aquarium.genre ADD CONSTRAINT FK_genre_espece FOREIGN KEY (idEspece) REFERENCES espece(idEspece);
ALTER TABLE aquarium.animal ADD CONSTRAINT FK_animal_espece FOREIGN KEY (idEspece) REFERENCES espece(idEspece);
ALTER TABLE aquarium.place ADD CONSTRAINT FK_place_bassin FOREIGN KEY (idBassin) REFERENCES bassin(idBassin);
ALTER TABLE aquarium.place ADD CONSTRAINT FK_place_animal FOREIGN KEY (idAnimal) REFERENCES animal(idAnimal);
ALTER TABLE aquarium.bassin ADD CONSTRAINT FK_bassin_piece FOREIGN KEY (idPiece) REFERENCES piece(idPiece);
ALTER TABLE aquarium.soigne ADD CONSTRAINT FK_soigne_animal FOREIGN key (idAnimal) REFERENCES animal(idAnimal);
ALTER TABLE aquarium.soigne ADD CONSTRAINT FK_soigne_soin FOREIGN KEY (idSoin) REFERENCES soin(idSoin);