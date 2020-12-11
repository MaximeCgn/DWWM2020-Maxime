-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: convention
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
-- Current Database: `convention`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `convention` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `convention`;

--
-- Table structure for table `animateurs`
--

DROP TABLE IF EXISTS `animateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animateurs` (
  `idAnimateur` int(11) NOT NULL AUTO_INCREMENT,
  `nomAnimateur` varchar(50) NOT NULL,
  `prenomAnimateur` varchar(50) NOT NULL,
  `titreAnimateur` varchar(50) NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `idEmplacement` int(11) NOT NULL,
  PRIMARY KEY (`idAnimateur`),
  KEY `FK_animateurs_emplacements` (`idEmplacement`),
  CONSTRAINT `FK_animateurs_emplacements` FOREIGN KEY (`idEmplacement`) REFERENCES `emplacements` (`idEmplacement`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animateurs`
--

LOCK TABLES `animateurs` WRITE;
/*!40000 ALTER TABLE `animateurs` DISABLE KEYS */;
INSERT INTO `animateurs` VALUES (2,'Hovelynck','Bryan','Présentateur','2020-12-25','2020-12-20',2),(3,'Pietka','Cédric','Vendeur','2020-12-25','2020-12-20',3),(4,'AAA','BBBB','CCCC','2020-12-01','2020-12-01',1),(5,'AAA','BBBB','CCCC','2020-12-01','2020-12-01',1);
/*!40000 ALTER TABLE `animateurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conventions`
--

DROP TABLE IF EXISTS `conventions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conventions` (
  `idConvention` int(11) NOT NULL AUTO_INCREMENT,
  `nomConvention` varchar(50) NOT NULL,
  `categorieConvention` varchar(50) NOT NULL,
  `idSalle` int(11) NOT NULL,
  PRIMARY KEY (`idConvention`),
  KEY `FK_conventions_salles` (`idSalle`),
  CONSTRAINT `FK_conventions_salles` FOREIGN KEY (`idSalle`) REFERENCES `salles` (`idSalle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conventions`
--

LOCK TABLES `conventions` WRITE;
/*!40000 ALTER TABLE `conventions` DISABLE KEYS */;
INSERT INTO `conventions` VALUES (1,'PGWW','Jeux vidéos',1),(2,'PHP Conference','Informatique',2),(3,'Portes ouvertes AFPA','Portes ouvertes',3);
/*!40000 ALTER TABLE `conventions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emplacements`
--

DROP TABLE IF EXISTS `emplacements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emplacements` (
  `idEmplacement` int(11) NOT NULL AUTO_INCREMENT,
  `numeroEmplacement` varchar(50) NOT NULL,
  `idSalle` int(11) NOT NULL,
  PRIMARY KEY (`idEmplacement`),
  KEY `FK_emplacements_salles` (`idSalle`),
  CONSTRAINT `FK_emplacements_salles` FOREIGN KEY (`idSalle`) REFERENCES `salles` (`idSalle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emplacements`
--

LOCK TABLES `emplacements` WRITE;
/*!40000 ALTER TABLE `emplacements` DISABLE KEYS */;
INSERT INTO `emplacements` VALUES (1,'258',1),(2,'999',2),(3,'666',3);
/*!40000 ALTER TABLE `emplacements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salles`
--

DROP TABLE IF EXISTS `salles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salles` (
  `idSalle` int(11) NOT NULL AUTO_INCREMENT,
  `nomSalle` varchar(50) NOT NULL,
  `adresseSalle` varchar(100) NOT NULL,
  `villeSalle` varchar(50) NOT NULL,
  PRIMARY KEY (`idSalle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salles`
--

LOCK TABLES `salles` WRITE;
/*!40000 ALTER TABLE `salles` DISABLE KEYS */;
INSERT INTO `salles` VALUES (1,'AccorHotelArena','128 rue de toto','Paris'),(2,'Bercy','38 rue OUI','Dunkerque'),(3,'AFPA','158 avenue de la gironde','Lyon');
/*!40000 ALTER TABLE `salles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traductions`
--

DROP TABLE IF EXISTS `traductions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traductions` (
  `idTraduction` int(11) NOT NULL AUTO_INCREMENT,
  `codeTexte` varchar(30) NOT NULL,
  `codeLangue` varchar(30) NOT NULL,
  `texte` varchar(10000) NOT NULL,
  PRIMARY KEY (`idTraduction`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traductions`
--

LOCK TABLES `traductions` WRITE;
/*!40000 ALTER TABLE `traductions` DISABLE KEYS */;
INSERT INTO `traductions` VALUES (1,'titre','EN','Welcome to the conventions website'),(2,'animateurs','EN','Animators'),(3,'conventions','EN','Conventions'),(4,'emplacements','EN','Locations'),(5,'salles','EN','Auditorium'),(6,'visite','EN','Visit'),(7,'visiteurs','EN','Visitors'),(8,'inscription','EN','Inscription'),(9,'connexion','EN','Login'),(10,'deconnexion','EN','Logout'),(11,'admin','EN','Admin'),(12,'ajouterContenu','EN','Add'),(13,'detailsContenu','EN','Details'),(14,'modifierContenu','EN','Update'),(15,'supprimerContenu','EN','Delete'),(16,'nomVisiteur','EN','Visitor last name'),(17,'prenomVisiteur','EN','Visitor first name'),(18,'adresseVisiteur','EN','Visitor adress'),(19,'codePostalVisiteur','EN','Visitor postal code'),(20,'villeVisiteur','EN','Visitor town'),(21,'retour','EN','Return'),(22,'ajouter','EN','Add'),(23,'modifier','EN','Update'),(24,'nomUtilisateur','EN','User last name'),(25,'prenomUtilisateur','EN','User first name'),(26,'mdpUtilisateur','EN','User password'),(27,'adresseMailUtilisateur','EN','User mail adress'),(28,'pseudoUtilisateur','EN','Username'),(29,'inscription','EN','Inscription'),(30,'connexion','EN','Login'),(31,'contact','EN','Contact'),(32,'calendrier','EN','Schedule'),(33,'FAQ','EN','FAQ'),(34,'reseaux','EN','Social media'),(35,'titre','FR','Bienvenue sur le site des Conventions'),(36,'animateurs','FR','Animateurs'),(37,'conventions','FR','Conventions'),(38,'emplacements','FR','Emplacements'),(39,'salles','FR','Salles'),(40,'visite','FR','Visite'),(41,'visiteurs','FR','Visiteurs'),(42,'inscription','FR','Inscription'),(43,'connexion','FR','Connexion'),(44,'deconnexion','FR','Déconnexion'),(45,'admin','FR','Admin'),(46,'ajouterContenu','FR','Ajouter'),(47,'detailsContenu','FR','Details'),(48,'modifierContenu','FR','Modifier'),(49,'supprimerContenu','FR','Supprimer'),(50,'nomVisiteur','FR','Nom du visiteur'),(51,'prenomVisiteur','FR','Prénom du visiteur'),(52,'adresseVisiteur','FR','Adresse du visiteur'),(53,'codePostalVisiteur','FR','Code postal du visiteur'),(54,'villeVisiteur','FR','Ville du visiteur'),(55,'retour','FR','Retour'),(56,'ajouter','FR','Ajouter'),(57,'modifier','FR','Modifier'),(58,'nomUtilisateur','FR','Nom Utilisateur'),(59,'prenomUtilisateur','FR','Prénom Utilisateur'),(60,'mdpUtilisateur','FR','Mot de passe Utilisateur'),(61,'adresseMailUtilisateur','FR','Adresse mail Utilisateur'),(62,'pseudoUtilisateur','FR','Pseudo Utilisateur'),(63,'inscription','FR','Inscription'),(64,'connexion','FR','Connexion'),(65,'contact','FR','Contact'),(66,'calendrier','FR','Calendrier'),(67,'FAQ','FR','FAQ'),(68,'reseaux','FR','Réseaux');
/*!40000 ALTER TABLE `traductions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateurs` (
  `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nomUtilisateur` varchar(50) NOT NULL,
  `prenomUtilisateur` varchar(50) NOT NULL,
  `motDePasseUtilisateur` varchar(32) NOT NULL,
  `adresseMailUtilisateur` varchar(50) NOT NULL,
  `roleUtilisateur` varchar(50) DEFAULT NULL,
  `pseudoUtilisateur` varchar(50) NOT NULL,
  PRIMARY KEY (`idUtilisateur`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs`
--

LOCK TABLES `utilisateurs` WRITE;
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
INSERT INTO `utilisateurs` VALUES (1,'PARRY','Harry','123','jaituevoldemort@poudlard.net','oui','HarryDu93'),(2,'Bono','Jean','456','testouimonsieur@monsieur.net','non','JEANJEAN'),(8,'TEST','TEST','28fbf82ee49431686a6b56af9f64fd24','TEST@TEST.TEST','administrateur','TEST'),(7,'Cugny','Maxime','e0bf5759ed28b6b5afaba7cfe312d979','test@gmail.com','utilisateur','test2');
/*!40000 ALTER TABLE `utilisateurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visite`
--

DROP TABLE IF EXISTS `visite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visite` (
  `idVisite` int(11) NOT NULL AUTO_INCREMENT,
  `dateVisite` date NOT NULL,
  `idVisiteur` int(10) NOT NULL,
  `idConvention` int(10) NOT NULL,
  PRIMARY KEY (`idVisite`),
  KEY `FK_visites_visiteurs` (`idVisiteur`),
  KEY `FK_visites_conventions` (`idConvention`),
  CONSTRAINT `FK_visites_conventions` FOREIGN KEY (`idConvention`) REFERENCES `conventions` (`idConvention`),
  CONSTRAINT `FK_visites_visiteurs` FOREIGN KEY (`idVisiteur`) REFERENCES `visiteurs` (`idVisiteur`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visite`
--

LOCK TABLES `visite` WRITE;
/*!40000 ALTER TABLE `visite` DISABLE KEYS */;
INSERT INTO `visite` VALUES (1,'2020-12-22',1,2),(2,'2020-12-22',2,3),(3,'2020-12-22',3,1);
/*!40000 ALTER TABLE `visite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visiteurs`
--

DROP TABLE IF EXISTS `visiteurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visiteurs` (
  `idVisiteur` int(11) NOT NULL AUTO_INCREMENT,
  `nomVisiteur` varchar(50) NOT NULL,
  `prenomVisiteur` varchar(50) NOT NULL,
  `adresseVisiteur` varchar(100) NOT NULL,
  `codePostalVisiteur` varchar(10) NOT NULL,
  `villeVisiteur` varchar(50) NOT NULL,
  PRIMARY KEY (`idVisiteur`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visiteurs`
--

LOCK TABLES `visiteurs` WRITE;
/*!40000 ALTER TABLE `visiteurs` DISABLE KEYS */;
INSERT INTO `visiteurs` VALUES (1,'Toto','Titi','125 rue de la rue','52689','Dunkerque'),(2,'Tutoa','Tutu','265 rue de la rue','62100','Calais'),(3,'Totu','Tata','323 rue des avenues','323232','Paris'),(4,'Dbconnect','Db','dbdbdb','62100','Db');
/*!40000 ALTER TABLE `visiteurs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-11 10:40:01
