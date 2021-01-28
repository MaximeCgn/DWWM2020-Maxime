-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: crudweb
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
-- Current Database: `crudweb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `crudweb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `crudweb`;

--
-- Table structure for table `departements`
--

DROP TABLE IF EXISTS `departements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departements` (
  `idDepartement` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleDepartement` varchar(50) NOT NULL,
  `IdRegion` int(11) NOT NULL,
  PRIMARY KEY (`idDepartement`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departements`
--

LOCK TABLES `departements` WRITE;
/*!40000 ALTER TABLE `departements` DISABLE KEYS */;
INSERT INTO `departements` VALUES (1,'AIN',84),(2,'AISNE',32),(3,'ALLIER',84),(4,'ALPES-DE-HAUTE-PROVENCE',93),(5,'HAUTES-ALPES',93),(6,'ALPES-MARITIMES',93),(7,'ARDECHE',84),(8,'ARDENNES',44),(9,'ARIEGE',76),(10,'AUBE',44),(11,'AUDE',76),(12,'AVEYRON',76),(13,'BOUCHES-DU-RHONE',93),(14,'CALVADOS',28),(15,'CANTAL',84),(16,'CHARENTE',75),(17,'CHARENTE-MARITIME',75),(18,'CHER',24),(19,'CORREZE',75),(20,'COTE-D OR',27),(21,'COTES-D ARMOR',53),(22,'CREUSE',75),(23,'DORDOGNE',75),(24,'DOUBS',27),(25,'DROME',84),(26,'EURE',28),(27,'EURE-ET-LOIR',24),(28,'FINISTERE',53),(29,'CORSE-DU-SUD',94),(30,'HAUTE-CORSE',94),(31,'GARD',76),(32,'HAUTE-GARONNE',76),(33,'GERS',76),(34,'GIRONDE',75),(35,'HERAULT',76),(36,'ILLE-ET-VILAINE',53),(37,'INDRE',24),(38,'INDRE-ET-LOIRE',24),(39,'ISERE',84),(40,'JURA',27),(41,'LANDES',75),(42,'LOIR-ET-CHER',24),(43,'LOIRE',84),(44,'HAUTE-LOIRE',84),(45,'LOIRE-ATLANTIQUE',52),(46,'LOIRET',24),(47,'LOT',76),(48,'LOT-ET-GARONNE',75),(49,'LOZERE',76),(50,'MAINE-ET-LOIRE',52),(51,'MANCHE',28),(52,'MARNE',44),(53,'HAUTE-MARNE',44),(54,'MAYENNE',52),(55,'MEURTHE-ET-MOSELLE',44),(56,'MEUSE',44),(57,'MORBIHAN',53),(58,'MOSELLE',44),(59,'NIEVRE',27),(60,'NORD',32),(61,'OISE',32),(62,'ORNE',28),(63,'PAS-DE-CALAIS',32),(64,'PUY-DE-DOME',84),(65,'PYRENEES-ATLANTIQUES',75),(66,'HAUTES-PYRENEES',76),(67,'PYRENEES-ORIENTALES',76),(68,'BAS-RHIN',44),(69,'HAUT-RHIN',44),(70,'RHONE',84),(71,'HAUTE-SAONE',27),(72,'SAONE-ET-LOIRE',27),(73,'SARTHE',52),(74,'SAVOIE',84),(75,'HAUTE-SAVOIE',84),(76,'PARIS',11),(77,'SEINE-MARITIME',28),(78,'SEINE-ET-MARNE',11),(79,'YVELINES',11),(80,'DEUX-SEVRES',75),(81,'SOMME',32),(82,'TARN',76),(83,'TARN-ET-GARONNE',76),(84,'VAR',93),(85,'VAUCLUSE',93),(86,'VENDEE',52),(87,'VIENNE',75),(88,'HAUTE-VIENNE',75),(89,'VOSGES',44),(90,'YONNE',27),(91,'TERRITOIRE DE BELFORT',27),(92,'ESSONNE',11),(93,'HAUTS-DE-SEINE',11),(94,'SEINE-SAINT-DENIS',11),(95,'VAL-DE-MARNE',11),(96,'VAL-D OISE',11),(97,'GUADELOUPE',1),(98,'MARTINIQUE',2),(99,'GUYANE',3),(100,'LA REUNION',4),(101,'MAYOTTE',6);
/*!40000 ALTER TABLE `departements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regions` (
  `idRegion` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleRegion` varchar(50) NOT NULL,
  PRIMARY KEY (`idRegion`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'GUADELOUPE'),(2,'MARTINIQUE'),(3,'GUYANE'),(4,'LA REUNION'),(6,'MAYOTTE'),(11,'ILE-DE-FRANCE'),(24,'CENTRE-VAL DE LOIRE'),(27,'BOURGOGNE-FRANCHE-COMTE'),(28,'NORMANDIE'),(32,'HAUTS-DE-FRANCE'),(44,'GRAND EST'),(52,'PAYS DE LA LOIRE'),(53,'BRETAGNE'),(75,'NOUVELLE-AQUITAINE'),(76,'OCCITANIE'),(84,'AUVERGNE-RHONE-ALPES'),(93,'PROVENCE-ALPES-COTE D AZUR'),(94,'CORSE');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-22 10:40:02
