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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traductions`
--

LOCK TABLES `traductions` WRITE;
/*!40000 ALTER TABLE `traductions` DISABLE KEYS */;
INSERT INTO `traductions` VALUES (1,'Accueil','FR','Acceuil'),(2,'Accueil','EN','Home'),(3,'bvn','FR','Bienvenue'),(4,'bvn','EN','Welcome'),(5,'accueil1','FR','Bienvenue sur notre site « Boulanger », la meilleure boulangerie en ligne de la région !'),(6,'accueil2','FR','Notre enseigne vous propose des produits de qualité à des prix imbattables.'),(7,'accueil3','FR','Nous travaillons avec les meilleurs producteurs locaux, vous ne trouverez pas mieux !'),(8,'accueil4','FR','Toute ressemblance avec une entreprise spécialisée dans l\'électroménager existante ou ayant existé est purement fortuite.'),(9,'accueil1','EN','Welcome on our website « Boulanger », the best online bakery in the region !'),(10,'accueil2','EN','Our brand offers you high quality products at unbeatable prices.'),(11,'accueil3','EN','We work closely with the best local producers, you cannot find better !'),(12,'accueil4','EN','Any similarity with another compagny specialised in high-tech and home appliance products is fortuitous.'),(13,'projet1','FR','Notre projet est une gestion de boulangerie.'),(14,'projet2','FR','Chaque utilisateur possède un rôle différent. Il y a 3 rôles : client, vendeur et boulanger.'),(15,'projet3','FR','Le client peut voir le détail d\'un produit disponible.'),(16,'projet4','FR','Le vendeur peut voir le détail, et supprimer un produit quand il n\'est plus disponible.'),(17,'projet5','FR','Enfin, le boulanger peut supprimer, modifier et ajouter un produit.'),(18,'projet6','FR','La charte graphique du site sera orienté sur des couleurs chaleureuses et lumineuses. Encore une fois, toute ressemblance serait bien sûr dû au hasard.'),(19,'projet1','EN','Our project is a bakery management.'),(20,'projet2','EN','Each user has a different role. There is 3 roles: customer, seller and baker.'),(21,'projet3','EN','The customer can view the details of a product available.'),(22,'projet4','EN','The seller can view the details, and delete a product when it\'s no longer available.'),(23,'projet5','EN','Finally, the baker can delete, modify and add a product.'),(24,'projet6','EN','The design of the website will be oriented on warm and bright colors. Once again, of course any resemblance would be due to chance.'),(25,'inscription','FR','Inscription'),(26,'inscription','EN','Register'),(27,'connexion','FR','Connexion'),(28,'connexion','EN','Log in'),(29,'ajouter','FR','Ajouter'),(30,'ajouter','EN','Add'),(31,'libelle','FR','Libelle'),(32,'libelle','EN','Product name'),(33,'details','FR','Détails'),(34,'details','EN','Details'),(35,'modifier','FR','Modifier'),(36,'modifier','EN','Edit'),(37,'supprimer','FR','Supprimer'),(38,'supprimer','EN','Delete'),(39,'retour','FR','Retour'),(40,'retour','EN','Return'),(41,'envoyer','FR','Envoyer'),(42,'envoyer','EN','Send'),(43,'adresse','FR','Adresse'),(44,'adresse','EN','Adress'),(45,'reseaux','FR','Réseaux sociaux'),(46,'reseaux','EN','Social networks'),(47,'peremption','FR','Date de peremption'),(48,'peremption','EN','Expiration date'),(49,'prix','FR','Prix'),(50,'prix','EN','Price'),(51,'nom','FR','Nom'),(52,'nom','EN','Name'),(53,'prenom','FR','Prénom'),(54,'prenom','EN','First name'),(55,'pseudo','FR','Pseudo'),(56,'pseudo','EN','Nickname'),(57,'mdp','FR','Mot de passe'),(58,'mdp','EN','Password'),(59,'mail','FR','Adresse mail'),(60,'mail','EN','Mail'),(61,'deconnexion','FR','Deconnexion'),(62,'deconnexion','EN','Log out'),(63,'existedeja','FR','Le pseudo existe déjà'),(64,'existedeja','EN','Nickname already exists'),(65,'pseudouser','FR','Pseudo de l\'utilisateur'),(66,'pseudouser','EN','User nickname'),(67,'nomuser','FR','Nom de l\'utilisateur'),(68,'nomuser','EN','User name'),(69,'prenomuser','FR','Prenom de l\'utilisateur'),(70,'prenomuser','EN','User first name'),(71,'mdpuser','FR','Mot de passe de l\'utilisateur'),(72,'mdpuser','EN','User password'),(73,'mailuser','FR','Adresse mail de l\'utilisateur'),(74,'mailuser','EN','User\'s mail'),(75,'connexionreussi','FR','Connexion réussi'),(76,'connexionreussi','EN','Successfully connected'),(77,'incorrectmdp','FR','Le mot de passe est incorrect'),(78,'incorrectmdp','EN','Uncorrect password'),(79,'pseudonone','FR','Le pseudo n\'existe pas'),(80,'pseudonone','EN','The nickname does not exist'),(81,'listeProduits','FR','Liste des produits'),(82,'listeProduits','EN','Products List'),(83,'listeIngredients','FR','Liste des ingredients'),(84,'listeIngredients','EN','Ingredients List'),(85,'choixDesListes','FR','Choix des listes'),(86,'choixDesListes','EN','List choice'),(87,'noningredient','FR','Pas d\'ingredient renseigné'),(88,'noningredient','EN','No ingredients specified'),(89,'Liste des produits','FR','Liste des produits'),(90,'Liste des produits','EN','Products list'),(91,'Formulaire des produits','FR','Formulaire des produits'),(92,'Formulaire des produits','EN','Product form'),(93,'Liste des ingredients','FR','Liste des ingredients'),(94,'Liste des ingredients','EN','List of ingredients'),(95,'Formulaire des ingredients','FR','Formulaire des ingredients'),(96,'Formulaire des ingredients','EN','ingredients form'),(97,'Liste des ingredients du produit','FR','Liste des ingredients du produit'),(98,'Liste des ingredients du produit','EN','List ingredients of product'),(99,'Choix de la liste','FR','Choix de la liste'),(100,'Choix de la liste','EN','Choice from list');
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
INSERT INTO `users` VALUES (1,'Cugny','Maxime','Maxina','Glrv56zc','maxime.cgn@gmail.com',1),(2,'Baratto','Marvine','Marvina','cookies','baratto.m@gmail.com',2),(3,'client','client','client','db76c1d440bb3a00b3888bc701afc9f3','client',1),(4,'vendeur','vendeur','vendeur','ba378c40348e0ed86dd31e7fc32c7663','vendeur',2),(5,'boulanger','boulanger','boulanger','6733a7bac1c1bf16e5e8329d6e9d7e81','boulanger',3);
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

-- Dump completed on 2021-01-28 17:10:00
