-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 20 oct. 2020 à 06:52
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `regdep`
--
CREATE DATABASE IF NOT EXISTS `regdep` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `regdep`;

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

DROP TABLE IF EXISTS `departement`;
CREATE TABLE IF NOT EXISTS `departement` (
  `idDepartement` int(11) NOT NULL AUTO_INCREMENT,
  `nomDepartement` varchar(50) NOT NULL,
  `idRegion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDepartement`),
  KEY `FK_departement_region` (`idRegion`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(1, 'Ain', 1);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(2, 'Aisne', 7);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(3, 'Allier', 1);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(4, 'Alpes-de-Haute-Provence', 13);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(5, 'Hautes-Alpes', 13);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(6, 'Alpes-Maritimes', 13);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(7, 'Ardèche', 1);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(8, 'Ardennes', 6);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(9, 'Ariège', 11);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(10, 'Aube', 6);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(11, 'Aude', 11);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(12, 'Aveyron', 11);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(13, 'Bouches-du-Rhône', 13);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(14, 'Calvados', 9);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(15, 'Cantal', 1);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(16, 'Charente', 10);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(17, 'Charente-Maritime', 10);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(18, 'Cher', 4);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(19, 'Correze', 10);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(20, "Côte-d\'Or", 2);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(21, "Côtes-d\'Armor", 3);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(22, 'Creuse', 10);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(23, 'Dordogne', 10);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(24, 'Doubs', 2);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(25, 'Drôme', 1);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(26, 'Eure', 9);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(27, 'Eure-et-Loir', 4);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(28, 'Finistère', 3);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(29, 'Corse-du-Sud', 5);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(30, 'Haute-Corse ', 5);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(31, 'Gard', 11);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(32, 'Haute-Garonne', 11);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(33, 'Gers', 11);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(34, 'Gironde', 10);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(35, 'Hérault', 11);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(36, 'Ille-et-Vilaine', 3);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(37, 'Indre', 4);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(38, 'Indre-et-Loire', 4);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(39, 'Isère', 1);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(40, 'Jura', 2);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(41, 'Landes', 10);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(42, 'Loir-et-Cher', 4);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(43, 'Loire', 1);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(44, 'Haute-Loire', 1);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(45, 'Loire-Atlantique', 12);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(46, 'Loiret', 4);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(47, 'Lot', 11);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(48, 'Lot-et-Garonne', 10);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(49, 'Lozère', 11);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(50, 'Maine-et-Loire', 12);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(51, 'Manche', 9);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(52, 'Marne', 6);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(53, 'Haute-Marne', 6);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(54, 'Mayenne', 12);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(55, 'Meurthe-et-Moselle', 6);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(56, 'Meuse', 6);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(57, 'Morbihan', 3);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(58, 'Moselle', 6);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(59, 'Nièvre', 2);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(60, 'Nord', 7);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(61, 'Oise', 7);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(62, 'Orne', 9);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(63, 'Pas-de-Calais', 7);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(64, 'Puy-de-Dôme', 1);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(65, 'Pyrénées-Atlantiques', 10);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(66, 'Hautes-Pyrénées', 11);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(67, 'Pyrénées-Orientales', 11);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(68, 'Bas-Rhin', 6);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(69, 'Haut-Rhin', 6);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(70, 'Rhône', 1);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(71, 'Haute-Saône', 2);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(72, 'Saône-et-Loire', 2);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(73, 'Sarthe', 12);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(74, 'Savoie', 1);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(75, 'Haute-Savoie', 1);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(76, 'Paris', 8);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(77, 'Seine-Maritime', 9);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(78, 'Seine-et-Marne', 8);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(79, 'Yvelines', 8);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(80, 'Deux-Sèvres', 10);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(81, 'Somme', 7);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(82, 'Tarn', 11);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(83, 'Tarn-et-Garonne', 11);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(84, 'Var', 13);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(85, 'Vaucluse', 13);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(86, 'Vendée', 12);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(87, 'Vienne', 10);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(88, 'Haute-Vienne', 10);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(89, 'Vosges', 6);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(90, 'Yonne', 2);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(91, 'Territoire de Belfort', 2);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(92, 'Essonne', 8);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(93, 'Hauts-de-Seine', 8);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(94, 'Seine-Saint-Denis', 8);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(95, 'Val-de-Marne', 8);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(96, "Val-d\'Oise", 8);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(97, 'Guadeloupe', 14);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(98, 'Martinique', 14);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(99, 'Guyane', 14);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(100, 'La Réunion', 14);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(101, 'Saint-Pierre-et-Miquelon', 14);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(102, 'Mayotte', NULL);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(103, 'Saint-Barthélemy	', 14);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(104, 'Saint-Martin	', 14);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(105, 'Terres australes et antarctiques françaises', 14);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(106, 'Wallis-et-Futuna', 14);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(107, 'Polynésie française', 14);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(108, 'Nouvelle-Calédonie', 14);
INSERT INTO `departement` (`idDepartement`, `nomDepartement`, `idRegion`) VALUES(109, 'Clipperton', 14);

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `idRegion` int(11) NOT NULL AUTO_INCREMENT,
  `nomRegion` varchar(50) NOT NULL,
  PRIMARY KEY (`idRegion`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`idRegion`, `nomRegion`) VALUES(1, 'Auvergne-Rhône-Alpes');
INSERT INTO `region` (`idRegion`, `nomRegion`) VALUES(2, 'Hauts-de-France');
INSERT INTO `region` (`idRegion`, `nomRegion`) VALUES(3, "Provence-Alpes-Côte d\'Azur");
INSERT INTO `region` (`idRegion`, `nomRegion`) VALUES(4, 'Grand-Est');
INSERT INTO `region` (`idRegion`, `nomRegion`) VALUES(5, 'Occitanie');
INSERT INTO `region` (`idRegion`, `nomRegion`) VALUES(6, 'Normandie');
INSERT INTO `region` (`idRegion`, `nomRegion`) VALUES(7, 'Nouvelle-Aquitaine');
INSERT INTO `region` (`idRegion`, `nomRegion`) VALUES(8, 'Centre-Val de Loire');
INSERT INTO `region` (`idRegion`, `nomRegion`) VALUES(9, 'Bourgogne-Franche-Comté');
INSERT INTO `region` (`idRegion`, `nomRegion`) VALUES(10, 'Bretagne');
INSERT INTO `region` (`idRegion`, `nomRegion`) VALUES(11, 'Corse');
INSERT INTO `region` (`idRegion`, `nomRegion`) VALUES(12, 'Pays de la Loire');
INSERT INTO `region` (`idRegion`, `nomRegion`) VALUES(13, 'Ile-de-France');
INSERT INTO `region` (`idRegion`, `nomRegion`) VALUES(14, 'DOM-TOM');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `FK_departement_region` FOREIGN KEY (`idRegion`) REFERENCES `region` (`idRegion`);
--
-- Base de données : `voitures`
--
CREATE DATABASE IF NOT EXISTS `voitures` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `voitures`;

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `idMarque` int(11) NOT NULL AUTO_INCREMENT,
  `marque` varchar(50) NOT NULL,
  PRIMARY KEY (`idMarque`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`idMarque`, `marque`) VALUES(1, 'Acura');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(2, 'Aston Martin');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(3, 'Audi');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(4, 'BMW');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(5, 'Buick');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(6, 'Cadillac');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(7, 'Chevrolet');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(8, 'Dodge');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(9, 'Eagle');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(10, 'Ford');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(11, 'GMC');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(12, 'Hyundai');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(13, 'Infiniti');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(14, 'Lamborghini');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(15, 'Land Rover');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(16, 'Lexus');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(17, 'Lotus');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(18, 'Mazda');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(19, 'Mercedes-Benz');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(20, 'Mitsubishi');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(21, 'Nissan');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(22, 'Plymouth');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(23, 'Pontiac');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(24, 'Porsche');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(25, 'Subaru');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(26, 'Suzuki');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(27, 'Toyota');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(28, 'Volkswagen');
INSERT INTO `marque` (`idMarque`, `marque`) VALUES(29, 'Volvo');

-- --------------------------------------------------------

--
-- Structure de la table `modele`
--

DROP TABLE IF EXISTS `modele`;
CREATE TABLE IF NOT EXISTS `modele` (
  `idModele` int(11) NOT NULL AUTO_INCREMENT,
  `modele` varchar(50) NOT NULL,
  `idMarque` int(11) NOT NULL,
  PRIMARY KEY (`idModele`),
  KEY `FK_modele_marque` (`idMarque`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `modele`
--

INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(1, 'NSX', 1);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(2, 'V8 Vantage', 2);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(3, 'Rapide', 2);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(4, 'Q7', 3);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(5, 'Allroad', 3);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(6, 'A7', 3);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(7, 'X5 M', 4);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(8, 'M5', 4);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(9, '760', 4);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(10, 'Roadmaster', 5);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(11, 'Rainier', 5);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(12, 'Verano', 5);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(13, 'Rendezvous', 5);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(14, 'Century', 5);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(15, 'Regal', 5);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(16, 'Riviera', 5);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(17, 'DeVille', 6);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(18, 'Escalade EXT', 6);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(19, 'Escalade', 6);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(20, 'Suburban 2500', 7);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(21, 'Corsica', 7);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(22, 'Express 2500', 7);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(23, 'Camaro', 7);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(24, 'S10', 7);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(25, 'Ram 1500', 8);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(26, 'Viper RT/10', 8);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(27, 'Viper', 8);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(28, 'Charger', 8);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(29, 'Ram 3500', 8);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(30, 'Dakota Club', 8);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(31, 'Talon', 9);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(32, 'F150', 10);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(33, 'Escort', 10);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(34, 'Flex', 10);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(35, 'Festiva', 10);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(36, 'Expedition EL', 10);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(37, 'F450', 10);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(38, 'Crown Victoria', 10);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(39, 'Taurus', 10);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(40, 'Edge', 10);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(41, 'Sierra 3500', 11);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(42, 'Jimmy', 11);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(43, 'Terrain', 11);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(44, 'Santa Fe', 12);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(45, 'QX56', 13);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(46, 'Murcielago', 14);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(47, 'Freelander', 15);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(48, 'GX', 16);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(49, 'RX Hybrid', 16);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(50, 'Elan', 17);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(51, 'Esprit', 17);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(52, 'B2500', 18);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(53, 'Miata MX-5', 18);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(54, 'Familia', 18);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(55, 'MPV', 18);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(56, 'B-Series', 18);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(57, 'C-Class', 19);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(58, 'SLK-Class', 19);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(59, 'Sprinter 2500', 19);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(60, '400SE', 19);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(61, 'Lancer', 20);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(62, 'Galant', 20);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(63, 'RVR', 20);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(64, 'Outlander', 20);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(65, 'Mighty Max', 20);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(66, 'Truck', 20);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(67, 'Lancer Evolution', 20);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(68, 'Frontier', 21);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(69, 'Altima', 21);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(70, 'Xterra', 21);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(71, 'Voyager', 22);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(72, 'GTO', 23);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(73, 'Torrent', 23);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(74, 'Daewoo Kalos', 23);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(75, '928', 24);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(76, 'Loyale', 25);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(77, 'Legacy', 25);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(78, 'Vitara', 26);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(79, 'Grand Vitara', 26);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(80, 'MR2', 27);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(81, 'Tercel', 27);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(82, 'T100 Xtra', 27);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(83, 'Tacoma', 27);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(84, 'Land Cruiser', 27);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(85, 'TundraMax', 27);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(86, 'New Beetle', 28);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(87, 'Jetta', 28);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(88, 'Cabriolet', 28);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(89, '960', 29);
INSERT INTO `modele` (`idModele`, `modele`, `idMarque`) VALUES(90, 'V90', 29);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `modele`
--
ALTER TABLE `modele`
  ADD CONSTRAINT `FK_modele_marque` FOREIGN KEY (`idMarque`) REFERENCES `marque` (`idMarque`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
