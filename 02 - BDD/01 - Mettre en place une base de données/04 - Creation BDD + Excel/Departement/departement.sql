DROP DATABASE IF EXISTS regdep;

CREATE DATABASE regdep;

USE regdep;

CREATE TABLE regdep.region
(
    idRegion int(11) not null auto_increment PRIMARY KEY,
    nomRegion varchar(50) not null
)ENGINE = INNODB,
CHARSET = UTF8;

CREATE TABLE regdep.departement
(
    idDepartement int(11) not null auto_increment PRIMARY KEY,
    nomDepartement varchar(50) not null,
    idRegion int(11) not null
)ENGINE = INNODB,
CHARSET = UTF8;

ALTER TABLE regdep.departement ADD CONSTRAINT FK_departement_region FOREIGN KEY (idRegion) REFERENCES region(idRegion);