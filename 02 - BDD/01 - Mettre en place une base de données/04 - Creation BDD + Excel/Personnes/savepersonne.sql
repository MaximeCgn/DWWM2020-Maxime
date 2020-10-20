-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 20 oct. 2020 à 09:44
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
-- Base de données : `personnes`
--
CREATE DATABASE IF NOT EXISTS `personnes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `personnes`;

-- --------------------------------------------------------

--
-- Structure de la table `identite`
--

DROP TABLE IF EXISTS `identite`;
CREATE TABLE IF NOT EXISTS `identite` (
  `idIdentite` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  PRIMARY KEY (`idIdentite`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `identite`
--

INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(1, 'Freeman', 'Steven');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(2, 'Dudley', 'Rudyard');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(3, 'Harrison', 'Marshall');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(4, 'Trevino', 'Zeus');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(5, 'Nielsen', 'Eaton');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(6, 'Morris', 'Stella');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(7, 'Brock', 'Quyn');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(8, 'Alford', 'Igor');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(9, 'Cote', 'Avye');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(10, 'Mcmahon', 'Chelsea');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(11, 'Blair', 'Thaddeus');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(12, 'Faulkner', 'Alexander');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(13, 'Gallagher', 'Finn');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(14, 'Hansen', 'Justina');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(15, 'Farley', 'Morgan');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(16, 'Harper', 'Erin');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(17, 'Roth', 'Malachi');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(18, 'Short', 'Adrian');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(19, 'Whitehead', 'Bernard');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(20, 'Baxter', 'Alan');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(21, 'Harvey', 'Halee');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(22, 'Patterson', 'Murphy');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(23, 'Stephenson', 'Wang');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(24, 'Harrell', 'Amos');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(25, 'Waller', 'Nolan');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(26, 'Duffy', 'Elmo');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(27, 'Downs', 'Nelle');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(28, 'Richards', 'Rae');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(29, 'David', 'Thomas');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(30, 'Keller', 'Britanni');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(31, 'Gould', 'Kirk');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(32, 'Hicks', 'Len');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(33, 'Patterson', 'Ramona');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(34, 'Browning', 'Cruz');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(35, 'Bean', 'Tara');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(36, 'Terrell', 'Chaim');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(37, 'Ware', 'Mohammad');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(38, 'Landry', 'Cassidy');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(39, 'Alvarez', 'Kerry');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(40, 'Graham', 'Faith');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(41, 'Booth', 'Gregory');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(42, 'Booker', 'Catherine');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(43, 'Fitzgerald', 'MacKensie');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(44, 'Hall', 'Owen');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(45, 'Knowles', 'Anjolie');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(46, 'Wyatt', 'Rina');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(47, 'Mccoy', 'Odessa');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(48, 'Rogers', 'Tate');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(49, 'Marshall', 'Wynne');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(50, 'Calhoun', 'Shellie');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(51, 'Schneider', 'Jerry');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(52, 'Rush', 'Thor');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(53, 'Dyer', 'Grant');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(54, 'Petty', 'Jaden');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(55, 'Hudson', 'Illana');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(56, 'Cameron', 'Nell');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(57, 'Hutchinson', 'Quinlan');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(58, 'Mckay', 'Ruth');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(59, 'Kim', 'Chava');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(60, 'Singleton', 'Coby');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(61, 'Bean', 'Rana');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(62, 'Massey', 'Griffin');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(63, 'Blair', 'Donna');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(64, 'Castillo', 'Willa');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(65, 'Camacho', 'Ayanna');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(66, 'Berger', 'Justina');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(67, 'Diaz', 'Gareth');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(68, 'Clements', 'Amethyst');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(69, 'Cash', 'Cheryl');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(70, 'Todd', 'Colby');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(71, 'Maxwell', 'Kermit');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(72, 'Abbott', 'Leslie');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(73, 'Spencer', 'Lucian');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(74, 'Snyder', 'Garrison');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(75, 'Hartman', 'Rooney');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(76, 'Vang', 'Caldwell');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(77, 'Rosales', 'Byron');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(78, 'Levy', 'Mira');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(79, 'Galloway', 'Clark');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(80, 'Faulkner', 'Zahir');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(81, 'Hanson', 'Gage');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(82, 'Stephens', 'Natalie');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(83, 'Scott', 'Carson');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(84, 'Graves', 'Wyoming');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(85, 'Calderon', 'Nathaniel');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(86, 'Acevedo', 'Salvador');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(87, 'Odonnell', 'Gretchen');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(88, 'Bradford', 'Judah');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(89, 'Hyde', 'Cole');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(90, 'Bartlett', 'Cailin');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(91, 'Boyer', 'Melodie');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(92, 'Monroe', 'Silas');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(93, 'Sloan', 'Ronan');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(94, 'Macias', 'Aimee');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(95, 'Vasquez', 'Solomon');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(96, 'Mercado', 'Rama');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(97, 'Britt', 'Dora');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(98, 'Knowles', 'Henry');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(99, 'Vaughan', 'Barrett');
INSERT INTO `identite` (`idIdentite`, `nom`, `prenom`) VALUES(100, 'Parrish', 'Raphael');

-- --------------------------------------------------------

--
-- Structure de la table `mail`
--

DROP TABLE IF EXISTS `mail`;
CREATE TABLE IF NOT EXISTS `mail` (
  `idMail` int(11) NOT NULL AUTO_INCREMENT,
  `adresseMail` varchar(100) NOT NULL,
  `idIdentite` int(11) NOT NULL,
  PRIMARY KEY (`idMail`),
  KEY `FK_mail_identite` (`idIdentite`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mail`
--

INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(1, 'Nullam.vitae.diam@nunc.edu', 1);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(2, 'vitae@Nuncmauris.ca', 2);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(3, 'lacus.pede.sagittis@egestasa.net', 3);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(4, 'nibh.dolor@turpis.net', 4);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(5, 'ultrices@eleifend.com', 5);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(6, 'elementum@posuereat.org', 6);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(7, 'dignissim.magna@purusMaecenas.com', 7);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(8, 'dapibus@InfaucibusMorbi.net', 8);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(9, 'euismod.et@sociisnatoquepenatibus.net', 9);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(10, 'non.luctus.sit@sedtortor.org', 10);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(11, 'augue.porttitor.interdum@Quisque.edu', 11);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(12, 'a.facilisis@gravida.net', 12);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(13, 'amet.consectetuer@Sedetlibero.com', 13);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(14, 'Aenean@eunibhvulputate.org', 14);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(15, 'a.sollicitudin.orci@risusDuisa.net', 15);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(16, 'arcu@Curabiturvel.com', 16);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(17, 'orci@ullamcorperviverra.com', 17);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(18, 'eleifend.Cras.sed@turpis.co.uk', 18);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(19, 'eu.ultrices.sit@rutrummagnaCras.ca', 19);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(20, 'nibh.lacinia@ultricesDuisvolutpat.net', 20);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(21, 'quis.turpis.vitae@fermentumconvallisligula.ca', 21);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(22, 'magna@imperdietullamcorperDuis.ca', 22);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(23, 'massa.Integer.vitae@euduiCum.com', 23);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(24, 'Aliquam@lacusNullatincidunt.ca', 24);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(25, 'et.magnis.dis@adipiscingligula.com', 25);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(26, 'metus@mifelisadipiscing.edu', 26);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(27, 'lectus.ante.dictum@cursus.edu', 27);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(28, 'tortor.Nunc@odioNaminterdum.net', 28);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(29, 'ligula@ipsum.com', 29);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(30, 'gravida.non.sollicitudin@semperauctor.co.uk', 30);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(31, 'diam@Nuncullamcorpervelit.ca', 31);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(32, 'massa.Mauris.vestibulum@vulputatedui.ca', 32);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(33, 'Praesent.eu.dui@Nullafacilisi.org', 22);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(34, 'nascetur.ridiculus@semNulla.edu', 34);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(35, 'sed.est@lacusAliquamrutrum.net', 35);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(36, 'dolor@ac.org', 36);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(37, 'aliquam.adipiscing.lacus@semegestasblandit.edu', 37);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(38, 'Nulla.aliquet.Proin@aliquet.ca', 38);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(39, 'Cum.sociis@porttitorvulputateposuere.edu', 39);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(40, 'Nullam.feugiat.placerat@Donec.ca', 40);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(41, 'lobortis@Pellentesquehabitantmorbi.co.uk', 41);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(42, 'eget.odio.Aliquam@tortorNunccommodo.net', 42);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(43, 'consequat@necurnasuscipit.org', 43);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(44, 'Vivamus@sedhendrerit.net', 44);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(45, 'Mauris@sitametdiam.com', 45);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(46, 'gravida.nunc.sed@dolorNulla.ca', 46);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(47, 'ac.turpis@a.net', 47);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(48, 'Donec.feugiat@Integeraliquamadipiscing.ca', 48);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(49, 'aliquet.sem@euligulaAenean.net', 49);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(50, 'Integer.vulputate.risus@placeratCrasdictum.org', 50);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(51, 'faucibus.lectus.a@mauriseuelit.com', 51);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(52, 'mauris@eget.ca', 52);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(53, 'aliquet.magna@accumsan.net', 53);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(54, 'Sed.eget.lacus@rhoncus.ca', 54);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(55, 'semper@aptent.org', 55);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(56, 'diam@iaculisnec.org', 56);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(57, 'velit.eu.sem@rhoncusid.co.uk', 57);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(58, 'congue.elit@pellentesqueegetdictum.net', 58);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(59, 'ligula@duinecurna.edu', 59);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(60, 'Nullam.scelerisque.neque@orci.co.uk', 60);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(61, 'sagittis.placerat.Cras@nec.com', 35);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(62, 'euismod@quis.edu', 62);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(63, 'pellentesque.massa@a.org', 11);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(64, 'egestas@nisi.net', 64);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(65, 'a.odio@ascelerisque.net', 65);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(66, 'felis@vitaeposuere.edu', 66);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(67, 'luctus.et.ultrices@tellusid.co.uk', 67);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(68, 'orci@Vivamusmolestie.co.uk', 68);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(69, 'arcu.Morbi.sit@Quisque.net', 69);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(70, 'orci.tincidunt@blanditNamnulla.ca', 70);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(71, 'amet.massa.Quisque@Duismienim.org', 71);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(72, 'ac.turpis@lobortismauris.org', 72);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(73, 'blandit.mattis.Cras@sodales.com', 73);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(74, 'Nunc.sollicitudin.commodo@viverraMaecenas.com', 74);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(75, 'tempor@Fuscefeugiat.edu', 75);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(76, 'euismod.mauris.eu@antelectusconvallis.ca', 76);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(77, 'Sed@magnisdis.co.uk', 77);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(78, 'non@pedemalesuada.ca', 78);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(79, 'ullamcorper@ut.com', 79);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(80, 'cursus.vestibulum@enim.ca', 12);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(81, 'dis.parturient@Mauris.net', 81);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(82, 'mollis@anequeNullam.org', 82);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(83, 'arcu.Sed@tellusAeneanegestas.ca', 83);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(84, 'faucibus.orci.luctus@metus.edu', 84);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(85, 'nibh.lacinia.orci@hendreritconsectetuercursus.edu', 85);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(86, 'Nulla.dignissim.Maecenas@feugiat.com', 86);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(87, 'consequat.nec@cursus.ca', 87);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(88, 'montes.nascetur@nuncsedlibero.net', 88);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(89, 'scelerisque.lorem@egestasblanditNam.net', 89);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(90, 'Aliquam.gravida@acipsumPhasellus.net', 90);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(91, 'mi.felis@arcuimperdietullamcorper.edu', 91);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(92, 'sapien.molestie@idante.co.uk', 92);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(93, 'non@velit.co.uk', 93);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(94, 'risus@viverraDonectempus.com', 94);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(95, 'vulputate@necimperdietnec.co.uk', 95);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(96, 'mollis@eutellus.com', 96);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(97, 'tellus.id@euismodest.ca', 97);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(98, 'Mauris@laciniaat.org', 45);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(99, 'varius.orci.in@faucibus.co.uk', 99);
INSERT INTO `mail` (`idMail`, `adresseMail`, `idIdentite`) VALUES(100, 'fringilla@Suspendissenon.org', 100);

-- --------------------------------------------------------

--
-- Structure de la table `numero`
--

DROP TABLE IF EXISTS `numero`;
CREATE TABLE IF NOT EXISTS `numero` (
  `idNumero` int(11) NOT NULL AUTO_INCREMENT,
  `numeroTelephone` varchar(14) NOT NULL,
  `idIdentite` int(11) NOT NULL,
  PRIMARY KEY (`idNumero`),
  KEY `FK_numero_identite` (`idIdentite`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `numero`
--

INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(1, '02 33 66 28 07', 1);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(2, '05 51 00 34 23', 2);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(3, '09 97 02 89 96', 3);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(4, '06 57 95 07 38', 4);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(5, '06 75 84 61 98', 5);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(6, '04 29 35 38 97', 6);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(7, '08 38 94 39 62', 7);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(8, '05 58 75 77 57', 8);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(9, '09 04 39 73 96', 9);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(10, '03 98 07 14 03', 10);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(11, '04 65 16 09 18', 11);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(12, '07 28 58 10 44', 12);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(13, '07 55 92 78 51', 13);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(14, '09 74 47 67 90', 14);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(15, '01 34 00 13 15', 15);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(16, '02 12 33 76 59', 16);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(17, '01 33 72 99 73', 17);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(18, '07 03 51 30 93', 18);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(19, '04 46 44 96 64', 19);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(20, '07 37 22 16 76', 20);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(21, '04 98 36 63 28', 21);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(22, '09 41 66 10 16', 22);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(23, '03 95 28 91 29', 23);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(24, '02 13 50 28 08', 24);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(25, '09 88 74 45 68', 25);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(26, '02 94 28 81 04', 26);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(27, '02 26 18 07 69', 27);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(28, '03 27 53 51 46', 28);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(29, '04 73 08 98 50', 29);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(30, '09 44 51 75 15', 30);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(31, '09 18 15 31 11', 31);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(32, '09 95 69 84 06', 32);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(33, '04 48 24 70 25', 22);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(34, '01 69 74 48 48', 34);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(35, '05 91 53 13 65', 35);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(36, '06 41 53 90 46', 36);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(37, '01 59 55 07 13', 37);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(38, '04 19 02 51 93', 38);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(39, '07 23 70 19 38', 39);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(40, '05 05 80 04 01', 40);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(41, '02 87 13 81 12', 41);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(42, '06 40 36 98 51', 42);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(43, '02 60 14 31 25', 43);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(44, '06 87 13 03 91', 44);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(45, '07 04 28 52 03', 45);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(46, '07 46 48 57 65', 46);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(47, '02 34 30 30 52', 47);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(48, '05 69 75 72 76', 48);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(49, '09 74 92 90 80', 49);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(50, '09 07 83 64 72', 50);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(51, '05 37 51 24 90', 51);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(52, '05 57 18 73 36', 52);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(53, '08 75 55 28 28', 53);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(54, '01 89 81 15 92', 54);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(55, '01 49 90 28 21', 55);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(56, '09 73 54 35 63', 56);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(57, '08 45 32 25 36', 57);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(58, '03 88 61 16 78', 58);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(59, '01 39 52 37 57', 59);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(60, '02 81 28 90 41', 60);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(61, '06 83 75 36 19', 35);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(62, '06 20 69 16 82', 62);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(63, '04 26 53 54 42', 11);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(64, '09 30 03 70 31', 64);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(65, '02 17 87 02 00', 65);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(66, '02 96 52 62 19', 66);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(67, '03 64 80 58 04', 67);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(68, '04 19 94 26 02', 68);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(69, '02 19 90 84 93', 69);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(70, '08 30 45 39 41', 70);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(71, '03 99 24 34 46', 71);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(72, '07 18 14 60 94', 72);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(73, '09 08 98 28 06', 73);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(74, '09 85 06 08 97', 74);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(75, '08 28 29 03 45', 75);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(76, '04 30 46 44 82', 76);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(77, '05 78 73 37 95', 77);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(78, '03 12 36 89 40', 78);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(79, '01 93 86 39 58', 79);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(80, '07 72 96 35 07', 12);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(81, '01 75 90 73 05', 81);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(82, '05 55 31 59 67', 82);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(83, '09 23 29 66 90', 83);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(84, '05 88 57 72 25', 84);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(85, '01 99 18 34 87', 85);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(86, '02 30 76 48 77', 86);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(87, '05 59 30 94 60', 87);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(88, '03 85 58 18 27', 88);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(89, '03 55 97 67 19', 89);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(90, '07 16 13 37 72', 90);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(91, '02 20 20 44 77', 91);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(92, '02 15 59 50 72', 92);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(93, '04 82 16 84 70', 93);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(94, '05 29 52 23 38', 94);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(95, '03 35 99 83 27', 95);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(96, '08 96 00 68 84', 96);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(97, '04 40 65 47 02', 97);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(98, '08 51 56 85 05', 45);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(99, '06 91 91 97 21', 99);
INSERT INTO `numero` (`idNumero`, `numeroTelephone`, `idIdentite`) VALUES(100, '03 45 66 17 04', 100);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `FK_mail_identite` FOREIGN KEY (`idIdentite`) REFERENCES `identite` (`idIdentite`);

--
-- Contraintes pour la table `numero`
--
ALTER TABLE `numero`
  ADD CONSTRAINT `FK_numero_identite` FOREIGN KEY (`idIdentite`) REFERENCES `identite` (`idIdentite`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
