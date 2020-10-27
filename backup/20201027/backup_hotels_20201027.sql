-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: hotels
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `hotels`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hotels` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hotels`;

--
-- Table structure for table `chambres`
--

DROP TABLE IF EXISTS `chambres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chambres` (
  `idChambre` int(11) NOT NULL AUTO_INCREMENT,
  `numeroChambre` varchar(6) NOT NULL,
  `typeChambre` varchar(100) NOT NULL,
  `capaciteChambre` int(2) NOT NULL,
  `idHotel` int(11) NOT NULL,
  PRIMARY KEY (`idChambre`),
  KEY `FK_chambres_hotels` (`idHotel`),
  CONSTRAINT `FK_chambres_hotels` FOREIGN KEY (`idHotel`) REFERENCES `hotels` (`idHotel`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chambres`
--

LOCK TABLES `chambres` WRITE;
/*!40000 ALTER TABLE `chambres` DISABLE KEYS */;
INSERT INTO `chambres` VALUES (3,'101','1',1,1),(4,'102','1',2,1),(5,'103','1',1,1),(6,'104','1',2,4),(7,'105','1',2,4),(8,'106','1',1,4),(9,'107','1',3,7),(10,'108','1',1,7),(11,'109','1',2,7),(12,'235','1',1,10),(13,'157','1',1,10),(14,'874','1',1,12),(15,'125','1',5,12),(16,'101','1',3,14),(17,'102','1',3,14),(19,'101','1',1,1),(20,'102','1',2,1),(21,'103','1',1,1),(22,'104','1',2,2),(23,'105','1',2,2),(24,'106','1',1,2),(25,'107','1',3,3),(26,'108','1',1,3),(27,'109','1',2,3),(28,'235','1',1,4),(29,'157','1',1,4),(30,'874','1',1,5),(31,'125','1',5,5),(32,'101','1',3,6),(33,'102','1',3,6),(34,'103','1',2,7),(35,'104','1',3,8),(36,'105','1',3,6),(37,'106','1',1,8),(38,'107','1',1,9),(39,'108','1',2,10),(40,'109','1',2,7),(41,'235','1',3,11),(42,'157','1',1,9),(43,'874','1',2,5),(44,'125','1',1,12),(45,'101','1',3,13),(46,'102','1',3,8),(47,'103','1',1,9),(48,'104','1',1,9),(49,'105','1',1,10),(50,'106','1',2,8),(51,'107','1',2,11),(52,'108','1',1,12),(53,'109','1',3,10),(54,'235','1',3,13),(55,'157','1',3,14),(56,'874','1',1,13),(57,'125','1',2,7);
/*!40000 ALTER TABLE `chambres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(70) NOT NULL,
  `prenomClient` varchar(70) NOT NULL,
  `adresseClient` varchar(100) NOT NULL,
  `villeClient` varchar(50) NOT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'DOE','John','Rue Du General Leclerc','Chatenay Malabry'),(2,'HOMME','Josh','Rue Danton','Palm Desert'),(3,'PAUL','Weller','Rue Hoche','Londres'),(4,'WHITE','Jack','Allee Gustave Eiffel','Detroit'),(5,'CLAYPOOL','Les','Rue Jean Pierre Timbaud','San Francisco'),(6,'SQUIRE','Chris','Place Paul Vaillant Couturier','Londres'),(7,'WOOD','Ronnie','Rue Erevan','Londres'),(8,'THUNDERS','Johnny','Rue Du General Leclerc','New York'),(9,'JEUNEMAITRE','Eric','Rue Du General Leclerc','Chaville'),(10,'KARAM','Patrick','Rue Danton','Courbevoie'),(11,'RUFET','Corinne','Rue Hoche','Le Plessis Robinson'),(12,'SAINT JUST ','Wallerand','Allee Gustave Eiffel','Marnes La Coquette'),(13,'SANTINI','Jean-Luc','Rue Jean Pierre Timbaud','Chatenay Malabry'),(14,'AIT','Eddie','Place Paul Vaillant Couturier','Le Plessis Robinson'),(15,'BARBOTIN','Eddie','Rue Erevan','Chatenay Malabry'),(16,'BERESSI','Isabelle','Rue Du General Leclerc','Londres'),(17,'CAMARA','Lamine','Rue Ernest Renan','Antony'),(18,'CECCONI','Frank','Rue Georges Marie','Chatenay Malabry'),(19,'CHEVRON','Eric','Boulevard Gallieni','Suresnes'),(20,'CIUNTU','Marie-Carole','Esplanade Du Belvedere','Meudon');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitant`
--

DROP TABLE IF EXISTS `habitant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habitant` (
  `idHabitant` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `idChambre` int(11) NOT NULL,
  `dateReservation` date NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `prix` int(5) NOT NULL,
  `arrhes` int(5) DEFAULT NULL,
  PRIMARY KEY (`idHabitant`),
  KEY `FK_habitant_clients` (`idClient`),
  KEY `FK_habitant_chambres` (`idChambre`),
  CONSTRAINT `FK_habitant_chambres` FOREIGN KEY (`idChambre`) REFERENCES `chambres` (`idChambre`),
  CONSTRAINT `FK_habitant_clients` FOREIGN KEY (`idClient`) REFERENCES `clients` (`idClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitant`
--

LOCK TABLES `habitant` WRITE;
/*!40000 ALTER TABLE `habitant` DISABLE KEYS */;
/*!40000 ALTER TABLE `habitant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels` (
  `idHotel` int(11) NOT NULL AUTO_INCREMENT,
  `nomHotel` varchar(100) NOT NULL,
  `categorieHotel` varchar(100) NOT NULL,
  `adresseHotel` varchar(150) NOT NULL,
  `villeHotel` varchar(50) NOT NULL,
  `idStation` int(11) NOT NULL,
  PRIMARY KEY (`idHotel`),
  KEY `FK_hotels_stations` (`idStation`),
  CONSTRAINT `FK_hotels_stations` FOREIGN KEY (`idStation`) REFERENCES `stations` (`idStation`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'Le Magnifique','3','rue du bas','Pralo',1),(2,'Hotel du haut','1','rue du haut','Pralo',1),(3,'Le Narval','3','place de la liberation','Vonten',2),(4,'Les Pissenlis','4','place du 14 juillet','Bretou',2),(5,'RR Hotel','5','place du bas','Bretou',2),(6,'La Brique','2','place du haut','Bretou',2),(7,'Le Beau Rivage','3','place du centre','Toras',3),(8,'Residence les marmottes','1','1 Chemin des randonneurs','Alpe d Huez',4),(9,'Residence les edelweiss','5','2 Rue des sapins','Areches',2),(10,'Residence les panoramas','4','7 Avenue de la neige','Beaufort',2),(11,'Residence les sapins','5','8 Chemin des pissenlits','Aussois',5),(12,'Chalets les marmottes','3','10 Rue des etables','Avoriaz',3),(13,'Chalets les edelweiss','3','8 Avenue des sapins','Alpe d Huez',6),(14,'Chalets les panoramas','2','3 Chemin de la neige','Areches',4),(15,'Chalets les sapins','5','3 Rue des pissenlits','Beaufort',6);
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stations` (
  `idStation` int(11) NOT NULL AUTO_INCREMENT,
  `nomStation` varchar(100) NOT NULL,
  `altitude` int(4) NOT NULL,
  PRIMARY KEY (`idStation`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (1,'La Montagne',2500),(2,'Le Sud',200),(3,'La Plage',10),(4,'Alpe d Huez',1860),(5,'Areches',1200),(6,'Beaufort',1200),(7,'Aussois',1500),(8,'Avoriaz',1800);
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-27 17:10:00
