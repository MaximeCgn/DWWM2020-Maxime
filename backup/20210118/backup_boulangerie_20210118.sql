-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: boulangerie
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
-- Current Database: `boulangerie`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `boulangerie` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `boulangerie`;

--
-- Table structure for table `consultations`
--

DROP TABLE IF EXISTS `consultations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultations` (
  `idConsultation` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `idProduit` int(11) NOT NULL,
  PRIMARY KEY (`idConsultation`),
  KEY `consultations_users_FK` (`idUser`),
  KEY `consultations_produits_FK` (`idProduit`),
  CONSTRAINT `consultations_produits_FK` FOREIGN KEY (`idProduit`) REFERENCES `produits` (`idProduit`),
  CONSTRAINT `consultations_users_FK` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultations`
--

LOCK TABLES `consultations` WRITE;
/*!40000 ALTER TABLE `consultations` DISABLE KEYS */;
INSERT INTO `consultations` VALUES (1,1,3),(2,2,4);
/*!40000 ALTER TABLE `consultations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenances`
--

DROP TABLE IF EXISTS `contenances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contenances` (
  `idContenance` int(11) NOT NULL AUTO_INCREMENT,
  `idProduit` int(11) NOT NULL,
  `idIngredient` int(11) NOT NULL,
  PRIMARY KEY (`idContenance`),
  KEY `contenances_produits_FK` (`idProduit`),
  KEY `contenances_ingredients_FK` (`idIngredient`),
  CONSTRAINT `contenances_ingredients_FK` FOREIGN KEY (`idIngredient`) REFERENCES `ingredients` (`idIngredient`),
  CONSTRAINT `contenances_produits_FK` FOREIGN KEY (`idProduit`) REFERENCES `produits` (`idProduit`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenances`
--

LOCK TABLES `contenances` WRITE;
/*!40000 ALTER TABLE `contenances` DISABLE KEYS */;
INSERT INTO `contenances` VALUES (1,1,2),(2,2,2),(3,3,1),(4,4,3),(5,1,4);
/*!40000 ALTER TABLE `contenances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `idIngredient` int(11) NOT NULL AUTO_INCREMENT,
  `libelleIngredient` varchar(50) NOT NULL,
  PRIMARY KEY (`idIngredient`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'farine'),(2,'oeuf'),(3,'beurre'),(4,'sucre');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produits`
--

DROP TABLE IF EXISTS `produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produits` (
  `idProduit` int(11) NOT NULL AUTO_INCREMENT,
  `libelleProduit` varchar(50) NOT NULL,
  `datePeremptionProduit` date NOT NULL,
  `prixProduit` int(11) NOT NULL,
  PRIMARY KEY (`idProduit`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits`
--

LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` VALUES (1,'baguette','2020-12-15',1),(2,'chocolatine','2020-12-12',2),(3,'croissant','2025-12-16',200),(4,'sandwich','2020-12-11',5);
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traductions`
--

DROP TABLE IF EXISTS `traductions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traductions` (
  `idTraduction` int(11) NOT NULL AUTO_INCREMENT,
  `codeTexte` varchar(50) NOT NULL,
  `codeLangue` varchar(5) NOT NULL,
  `texte` text NOT NULL,
  PRIMARY KEY (`idTraduction`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traductions`
--

LOCK TABLES `traductions` WRITE;
/*!40000 ALTER TABLE `traductions` DISABLE KEYS */;
INSERT INTO `traductions` VALUES (1,'Accueil','FR','Accueil'),(2,'Accueil','EN','Home'),(3,'bvn','FR','Bienvenue'),(4,'bvn','EN','Welcome'),(5,'accueil1','FR','Bienvenue sur notre site « Boulanger », la meilleure boulangerie en ligne de la région !'),(6,'accueil2','FR','Notre enseigne vous propose des produits de qualité à des prix imbattables.'),(7,'accueil3','FR','Nous travaillons avec les meilleurs producteurs locaux, vous ne trouverez pas mieux !'),(8,'accueil4','FR','Toute ressemblance avec une entreprise spécialisée dans l\'électroménager existante ou ayant existé est purement fortuite.'),(9,'accueil1','EN','Welcome on our website « Boulanger », the best online bakery in the region !'),(10,'accueil2','EN','Our brand offers you high quality products at unbeatable prices.'),(11,'accueil3','EN','We work closely with the best local producers, you cannot find better !'),(12,'accueil4','EN','Any similarity with another compagny specialised in high-tech and home appliance products is fortuitous.'),(13,'titreprojet','FR','Projet : '),(14,'titreprojet','EN','Project : '),(15,'projet1','FR','Notre projet est une gestion de boulangerie.'),(16,'projet2','FR','Chaque utilisateur possède un rôle différent. Il y a 3 rôles : client, vendeur et boulanger.'),(17,'projet3','FR','Le client peut voir le détail d\'un produit disponible.'),(18,'projet4','FR','Le vendeur peut voir le détail, et supprimer un produit quand il n\'est plus disponible.'),(19,'projet5','FR','Enfin, le boulanger peut supprimer, modifier et ajouter un produit.'),(20,'projet6','FR','La charte graphique du site sera orienté sur des couleurs chaleureuses et lumineuses. Encore une fois, toute ressemblance serait bien sûr dû au hasard.'),(21,'projet1','EN','Our project is a bakery management.'),(22,'projet2','EN','Each user has a different role. There is 3 roles: customer, seller and baker.'),(23,'projet3','EN','The customer can view the details of a product available.'),(24,'projet4','EN','The seller can view the details, and delete a product when it\'s no longer available.'),(25,'projet5','EN','Finally, the baker can delete, modify and add a product.'),(26,'projet6','EN','The design of the website will be oriented on warm and bright colors. Once again, of course any resemblance would be due to chance.'),(27,'inscription','FR','Inscription'),(28,'inscription','EN','Register'),(29,'connexion','FR','Connexion'),(30,'connexion','EN','Log in'),(31,'ajouter','FR','Ajouter'),(32,'ajouter','EN','Add'),(33,'libelle','FR','Libelle'),(34,'libelle','EN','Product name'),(35,'details','FR','Détails'),(36,'details','EN','Details'),(37,'modifier','FR','Modifier'),(38,'modifier','EN','Edit'),(39,'supprimer','FR','Supprimer'),(40,'supprimer','EN','Delete'),(41,'retour','FR','Retour'),(42,'retour','EN','Return'),(43,'envoyer','FR','Envoyer'),(44,'envoyer','EN','Send'),(45,'adresse','FR','Adresse'),(46,'adresse','EN','Adress'),(47,'reseaux','FR','Réseaux sociaux'),(48,'reseaux','EN','Social networks'),(49,'peremption','FR','Date de peremption'),(50,'peremption','EN','Expiration date'),(51,'prix','FR','Prix'),(52,'prix','EN','Price'),(53,'nom','FR','Nom'),(54,'nom','EN','Name'),(55,'prenom','FR','Prénom'),(56,'prenom','EN','First name'),(57,'pseudo','FR','Pseudo'),(58,'pseudo','EN','Nickname'),(59,'mdp','FR','Mot de passe'),(60,'mdp','EN','Password'),(61,'mail','FR','Adresse mail'),(62,'mail','EN','Mail'),(63,'deconnexion','FR','Deconnexion'),(64,'deconnexion','EN','Log out'),(65,'existedeja','FR','Le pseudo existe déjà'),(66,'existedeja','EN','Nickname already exists'),(67,'pseudouser','FR','Pseudo de l\'utilisateur'),(68,'pseudouser','EN','User nickname'),(69,'nomuser','FR','Nom de l\'utilisateur'),(70,'nomuser','EN','User name'),(71,'prenomuser','FR','Prenom de l\'utilisateur'),(72,'prenomuser','EN','User first name'),(73,'mdpuser','FR','Mot de passe de l\'utilisateur'),(74,'mdpuser','EN','User password'),(75,'mailuser','FR','Adresse mail de l\'utilisateur'),(76,'mailuser','EN','User\'s mail'),(77,'connexionreussi','FR','Connexion réussi'),(78,'connexionreussi','EN','Successfully connected'),(79,'incorrectmdp','FR','Le mot de passe est incorrect'),(80,'incorrectmdp','EN','Uncorrect password'),(81,'pseudonone','FR','Le pseudo n\'existe pas'),(82,'pseudonone','EN','The nickname does not exist'),(83,'listeProduits','FR','Liste des produits'),(84,'listeProduits','EN','Products List'),(85,'listeIngredients','FR','Liste des ingredients'),(86,'listeIngredients','EN','Ingredients List'),(87,'choixDesListes','FR','Choix des listes'),(88,'choixDesListes','EN','List choice'),(89,'noningredient','FR','Pas d\'ingredient renseigné'),(90,'noningredient','EN','No ingredients specified'),(91,'Liste des produits','FR','Liste des produits'),(92,'Liste des produits','EN','Products list'),(93,'Formulaire des produits','FR','Formulaire des produits'),(94,'Formulaire des produits','EN','Product form'),(95,'Liste des ingredients','FR','Liste des ingredients'),(96,'Liste des ingredients','EN','List of ingredients'),(97,'Formulaire des ingredients','FR','Formulaire des ingredients'),(98,'Formulaire des ingredients','EN','ingredients form'),(99,'Liste des ingredients du produit','FR','Liste des ingredients du produit'),(100,'Liste des ingredients du produit','EN','List ingredients of product'),(101,'Choix de la liste','FR','Choix de la liste'),(102,'Choix de la liste','EN','Choice from list'),(103,'findus','FR','Retrouvez-nous sur :'),(104,'findus','EN','Find us here :');
/*!40000 ALTER TABLE `traductions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `nomUser` varchar(50) NOT NULL,
  `prenomUser` varchar(50) NOT NULL,
  `pseudoUser` varchar(50) NOT NULL,
  `mdpUser` varchar(50) NOT NULL,
  `adresseMailUser` varchar(100) NOT NULL,
  `roleUser` int(11) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Cugny','Maxime','Maxina','Glrv56zc','maxime.cgn@gmail.com',1),(2,'Baratto','Marvine','Marvina','cookies','baratto.m@gmail.com',2),(5,'LAFORCE','AMONDO','AMONDO','735dcb3aada6066ee322356e48b7d7f0','AMONDO@AMONDO.AMONDO',3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-18 17:10:02
