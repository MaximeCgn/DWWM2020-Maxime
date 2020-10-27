DROP DATABASE IF EXISTS hotels;
CREATE DATABASE hotels;
USE hotels;

CREATE TABLE stations
(
    idStation int(11) not null auto_increment PRIMARY KEY,
    nomStation varchar(100) not null,
    altitude int(4) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE hotels
(
    idHotel int(11) not null auto_increment PRIMARY KEY,
    nomHotel varchar(100) not null,
    categorieHotel varchar(100) not null,
    adresseHotel varchar(150) not null,
    villeHotel varchar(50) not null,
    idStation int(11) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE chambres
(
    idChambre int(11) not null auto_increment PRIMARY KEY,
    numeroChambre varchar(6) not null,
    typeChambre varchar(100) not null,
    capaciteChambre int(2) not null,
    idHotel int(11) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE habitant
(
    idClient int(11) not null,
    idChambre int(11) not null,
    dateReservation date not null,
    dateDebut date not null,
    dateFin date not null,
    prix int(5) not null,
    arrhes int(5)
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE clients
(
    idClient int(11) not null auto_increment PRIMARY KEY,
    nomClient varchar(70) not null,
    prenomClient varchar(70) not null,
    adresseClient varchar(100) not null,
    villeClient varchar(50) not null
)ENGINE = INNODB,
CHARSET = UTF8;

ALTER TABLE hotels ADD CONSTRAINT FK_hotels_stations FOREIGN KEY (idStation) REFERENCES stations(idStation);
ALTER TABLE chambres ADD CONSTRAINT FK_chambres_hotels FOREIGN KEY (idHotel) REFERENCES hotels(idHotel);
ALTER TABLE habitant ADD CONSTRAINT FK_habitant_clients FOREIGN KEY (idClient) REFERENCES clients(idClient);
ALTER TABLE habitant ADD CONSTRAINT FK_habitant_chambres FOREIGN KEY (idChambre) REFERENCES chambres(idChambre);