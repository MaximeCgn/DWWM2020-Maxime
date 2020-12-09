-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: personnes
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
-- Current Database: `personnes`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `personnes` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `personnes`;

--
-- Table structure for table `identite`
--

DROP TABLE IF EXISTS `identite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identite` (
  `idIdentite` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  PRIMARY KEY (`idIdentite`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identite`
--

LOCK TABLES `identite` WRITE;
/*!40000 ALTER TABLE `identite` DISABLE KEYS */;
INSERT INTO `identite` VALUES (1,'Freeman','Steven'),(2,'Dudley','Rudyard'),(3,'Harrison','Marshall'),(4,'Trevino','Zeus'),(5,'Nielsen','Eaton'),(6,'Morris','Stella'),(7,'Brock','Quyn'),(8,'Alford','Igor'),(9,'Cote','Avye'),(10,'Mcmahon','Chelsea'),(11,'Blair','Thaddeus'),(12,'Faulkner','Alexander'),(13,'Gallagher','Finn'),(14,'Hansen','Justina'),(15,'Farley','Morgan'),(16,'Harper','Erin'),(17,'Roth','Malachi'),(18,'Short','Adrian'),(19,'Whitehead','Bernard'),(20,'Baxter','Alan'),(21,'Harvey','Halee'),(22,'Patterson','Murphy'),(23,'Stephenson','Wang'),(24,'Harrell','Amos'),(25,'Waller','Nolan'),(26,'Duffy','Elmo'),(27,'Downs','Nelle'),(28,'Richards','Rae'),(29,'David','Thomas'),(30,'Keller','Britanni'),(31,'Gould','Kirk'),(32,'Hicks','Len'),(33,'Patterson','Ramona'),(34,'Browning','Cruz'),(35,'Bean','Tara'),(36,'Terrell','Chaim'),(37,'Ware','Mohammad'),(38,'Landry','Cassidy'),(39,'Alvarez','Kerry'),(40,'Graham','Faith'),(41,'Booth','Gregory'),(42,'Booker','Catherine'),(43,'Fitzgerald','MacKensie'),(44,'Hall','Owen'),(45,'Knowles','Anjolie'),(46,'Wyatt','Rina'),(47,'Mccoy','Odessa'),(48,'Rogers','Tate'),(49,'Marshall','Wynne'),(50,'Calhoun','Shellie'),(51,'Schneider','Jerry'),(52,'Rush','Thor'),(53,'Dyer','Grant'),(54,'Petty','Jaden'),(55,'Hudson','Illana'),(56,'Cameron','Nell'),(57,'Hutchinson','Quinlan'),(58,'Mckay','Ruth'),(59,'Kim','Chava'),(60,'Singleton','Coby'),(61,'Bean','Rana'),(62,'Massey','Griffin'),(63,'Blair','Donna'),(64,'Castillo','Willa'),(65,'Camacho','Ayanna'),(66,'Berger','Justina'),(67,'Diaz','Gareth'),(68,'Clements','Amethyst'),(69,'Cash','Cheryl'),(70,'Todd','Colby'),(71,'Maxwell','Kermit'),(72,'Abbott','Leslie'),(73,'Spencer','Lucian'),(74,'Snyder','Garrison'),(75,'Hartman','Rooney'),(76,'Vang','Caldwell'),(77,'Rosales','Byron'),(78,'Levy','Mira'),(79,'Galloway','Clark'),(80,'Faulkner','Zahir'),(81,'Hanson','Gage'),(82,'Stephens','Natalie'),(83,'Scott','Carson'),(84,'Graves','Wyoming'),(85,'Calderon','Nathaniel'),(86,'Acevedo','Salvador'),(87,'Odonnell','Gretchen'),(88,'Bradford','Judah'),(89,'Hyde','Cole'),(90,'Bartlett','Cailin'),(91,'Boyer','Melodie'),(92,'Monroe','Silas'),(93,'Sloan','Ronan'),(94,'Macias','Aimee'),(95,'Vasquez','Solomon'),(96,'Mercado','Rama'),(97,'Britt','Dora'),(98,'Knowles','Henry'),(99,'Vaughan','Barrett'),(100,'Parrish','Raphael');
/*!40000 ALTER TABLE `identite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail` (
  `idMail` int(11) NOT NULL AUTO_INCREMENT,
  `adresseMail` varchar(100) NOT NULL,
  `idIdentite` int(11) NOT NULL,
  PRIMARY KEY (`idMail`),
  KEY `FK_mail_identite` (`idIdentite`),
  CONSTRAINT `FK_mail_identite` FOREIGN KEY (`idIdentite`) REFERENCES `identite` (`idIdentite`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
INSERT INTO `mail` VALUES (1,'Nullam.vitae.diam@nunc.edu',1),(2,'vitae@Nuncmauris.ca',2),(3,'lacus.pede.sagittis@egestasa.net',3),(4,'nibh.dolor@turpis.net',4),(5,'ultrices@eleifend.com',5),(6,'elementum@posuereat.org',6),(7,'dignissim.magna@purusMaecenas.com',7),(8,'dapibus@InfaucibusMorbi.net',8),(9,'euismod.et@sociisnatoquepenatibus.net',9),(10,'non.luctus.sit@sedtortor.org',10),(11,'augue.porttitor.interdum@Quisque.edu',11),(12,'a.facilisis@gravida.net',12),(13,'amet.consectetuer@Sedetlibero.com',13),(14,'Aenean@eunibhvulputate.org',14),(15,'a.sollicitudin.orci@risusDuisa.net',15),(16,'arcu@Curabiturvel.com',16),(17,'orci@ullamcorperviverra.com',17),(18,'eleifend.Cras.sed@turpis.co.uk',18),(19,'eu.ultrices.sit@rutrummagnaCras.ca',19),(20,'nibh.lacinia@ultricesDuisvolutpat.net',20),(21,'quis.turpis.vitae@fermentumconvallisligula.ca',21),(22,'magna@imperdietullamcorperDuis.ca',22),(23,'massa.Integer.vitae@euduiCum.com',23),(24,'Aliquam@lacusNullatincidunt.ca',24),(25,'et.magnis.dis@adipiscingligula.com',25),(26,'metus@mifelisadipiscing.edu',26),(27,'lectus.ante.dictum@cursus.edu',27),(28,'tortor.Nunc@odioNaminterdum.net',28),(29,'ligula@ipsum.com',29),(30,'gravida.non.sollicitudin@semperauctor.co.uk',30),(31,'diam@Nuncullamcorpervelit.ca',31),(32,'massa.Mauris.vestibulum@vulputatedui.ca',32),(33,'Praesent.eu.dui@Nullafacilisi.org',22),(34,'nascetur.ridiculus@semNulla.edu',34),(35,'sed.est@lacusAliquamrutrum.net',35),(36,'dolor@ac.org',36),(37,'aliquam.adipiscing.lacus@semegestasblandit.edu',37),(38,'Nulla.aliquet.Proin@aliquet.ca',38),(39,'Cum.sociis@porttitorvulputateposuere.edu',39),(40,'Nullam.feugiat.placerat@Donec.ca',40),(41,'lobortis@Pellentesquehabitantmorbi.co.uk',41),(42,'eget.odio.Aliquam@tortorNunccommodo.net',42),(43,'consequat@necurnasuscipit.org',43),(44,'Vivamus@sedhendrerit.net',44),(45,'Mauris@sitametdiam.com',45),(46,'gravida.nunc.sed@dolorNulla.ca',46),(47,'ac.turpis@a.net',47),(48,'Donec.feugiat@Integeraliquamadipiscing.ca',48),(49,'aliquet.sem@euligulaAenean.net',49),(50,'Integer.vulputate.risus@placeratCrasdictum.org',50),(51,'faucibus.lectus.a@mauriseuelit.com',51),(52,'mauris@eget.ca',52),(53,'aliquet.magna@accumsan.net',53),(54,'Sed.eget.lacus@rhoncus.ca',54),(55,'semper@aptent.org',55),(56,'diam@iaculisnec.org',56),(57,'velit.eu.sem@rhoncusid.co.uk',57),(58,'congue.elit@pellentesqueegetdictum.net',58),(59,'ligula@duinecurna.edu',59),(60,'Nullam.scelerisque.neque@orci.co.uk',60),(61,'sagittis.placerat.Cras@nec.com',35),(62,'euismod@quis.edu',62),(63,'pellentesque.massa@a.org',11),(64,'egestas@nisi.net',64),(65,'a.odio@ascelerisque.net',65),(66,'felis@vitaeposuere.edu',66),(67,'luctus.et.ultrices@tellusid.co.uk',67),(68,'orci@Vivamusmolestie.co.uk',68),(69,'arcu.Morbi.sit@Quisque.net',69),(70,'orci.tincidunt@blanditNamnulla.ca',70),(71,'amet.massa.Quisque@Duismienim.org',71),(72,'ac.turpis@lobortismauris.org',72),(73,'blandit.mattis.Cras@sodales.com',73),(74,'Nunc.sollicitudin.commodo@viverraMaecenas.com',74),(75,'tempor@Fuscefeugiat.edu',75),(76,'euismod.mauris.eu@antelectusconvallis.ca',76),(77,'Sed@magnisdis.co.uk',77),(78,'non@pedemalesuada.ca',78),(79,'ullamcorper@ut.com',79),(80,'cursus.vestibulum@enim.ca',12),(81,'dis.parturient@Mauris.net',81),(82,'mollis@anequeNullam.org',82),(83,'arcu.Sed@tellusAeneanegestas.ca',83),(84,'faucibus.orci.luctus@metus.edu',84),(85,'nibh.lacinia.orci@hendreritconsectetuercursus.edu',85),(86,'Nulla.dignissim.Maecenas@feugiat.com',86),(87,'consequat.nec@cursus.ca',87),(88,'montes.nascetur@nuncsedlibero.net',88),(89,'scelerisque.lorem@egestasblanditNam.net',89),(90,'Aliquam.gravida@acipsumPhasellus.net',90),(91,'mi.felis@arcuimperdietullamcorper.edu',91),(92,'sapien.molestie@idante.co.uk',92),(93,'non@velit.co.uk',93),(94,'risus@viverraDonectempus.com',94),(95,'vulputate@necimperdietnec.co.uk',95),(96,'mollis@eutellus.com',96),(97,'tellus.id@euismodest.ca',97),(98,'Mauris@laciniaat.org',45),(99,'varius.orci.in@faucibus.co.uk',99),(100,'fringilla@Suspendissenon.org',100);
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numero`
--

DROP TABLE IF EXISTS `numero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `numero` (
  `idNumero` int(11) NOT NULL AUTO_INCREMENT,
  `numeroTelephone` varchar(14) NOT NULL,
  `idIdentite` int(11) NOT NULL,
  PRIMARY KEY (`idNumero`),
  KEY `FK_numero_identite` (`idIdentite`),
  CONSTRAINT `FK_numero_identite` FOREIGN KEY (`idIdentite`) REFERENCES `identite` (`idIdentite`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numero`
--

LOCK TABLES `numero` WRITE;
/*!40000 ALTER TABLE `numero` DISABLE KEYS */;
INSERT INTO `numero` VALUES (1,'02 33 66 28 07',1),(2,'05 51 00 34 23',2),(3,'09 97 02 89 96',3),(4,'06 57 95 07 38',4),(5,'06 75 84 61 98',5),(6,'04 29 35 38 97',6),(7,'08 38 94 39 62',7),(8,'05 58 75 77 57',8),(9,'09 04 39 73 96',9),(10,'03 98 07 14 03',10),(11,'04 65 16 09 18',11),(12,'07 28 58 10 44',12),(13,'07 55 92 78 51',13),(14,'09 74 47 67 90',14),(15,'01 34 00 13 15',15),(16,'02 12 33 76 59',16),(17,'01 33 72 99 73',17),(18,'07 03 51 30 93',18),(19,'04 46 44 96 64',19),(20,'07 37 22 16 76',20),(21,'04 98 36 63 28',21),(22,'09 41 66 10 16',22),(23,'03 95 28 91 29',23),(24,'02 13 50 28 08',24),(25,'09 88 74 45 68',25),(26,'02 94 28 81 04',26),(27,'02 26 18 07 69',27),(28,'03 27 53 51 46',28),(29,'04 73 08 98 50',29),(30,'09 44 51 75 15',30),(31,'09 18 15 31 11',31),(32,'09 95 69 84 06',32),(33,'04 48 24 70 25',22),(34,'01 69 74 48 48',34),(35,'05 91 53 13 65',35),(36,'06 41 53 90 46',36),(37,'01 59 55 07 13',37),(38,'04 19 02 51 93',38),(39,'07 23 70 19 38',39),(40,'05 05 80 04 01',40),(41,'02 87 13 81 12',41),(42,'06 40 36 98 51',42),(43,'02 60 14 31 25',43),(44,'06 87 13 03 91',44),(45,'07 04 28 52 03',45),(46,'07 46 48 57 65',46),(47,'02 34 30 30 52',47),(48,'05 69 75 72 76',48),(49,'09 74 92 90 80',49),(50,'09 07 83 64 72',50),(51,'05 37 51 24 90',51),(52,'05 57 18 73 36',52),(53,'08 75 55 28 28',53),(54,'01 89 81 15 92',54),(55,'01 49 90 28 21',55),(56,'09 73 54 35 63',56),(57,'08 45 32 25 36',57),(58,'03 88 61 16 78',58),(59,'01 39 52 37 57',59),(60,'02 81 28 90 41',60),(61,'06 83 75 36 19',35),(62,'06 20 69 16 82',62),(63,'04 26 53 54 42',11),(64,'09 30 03 70 31',64),(65,'02 17 87 02 00',65),(66,'02 96 52 62 19',66),(67,'03 64 80 58 04',67),(68,'04 19 94 26 02',68),(69,'02 19 90 84 93',69),(70,'08 30 45 39 41',70),(71,'03 99 24 34 46',71),(72,'07 18 14 60 94',72),(73,'09 08 98 28 06',73),(74,'09 85 06 08 97',74),(75,'08 28 29 03 45',75),(76,'04 30 46 44 82',76),(77,'05 78 73 37 95',77),(78,'03 12 36 89 40',78),(79,'01 93 86 39 58',79),(80,'07 72 96 35 07',12),(81,'01 75 90 73 05',81),(82,'05 55 31 59 67',82),(83,'09 23 29 66 90',83),(84,'05 88 57 72 25',84),(85,'01 99 18 34 87',85),(86,'02 30 76 48 77',86),(87,'05 59 30 94 60',87),(88,'03 85 58 18 27',88),(89,'03 55 97 67 19',89),(90,'07 16 13 37 72',90),(91,'02 20 20 44 77',91),(92,'02 15 59 50 72',92),(93,'04 82 16 84 70',93),(94,'05 29 52 23 38',94),(95,'03 35 99 83 27',95),(96,'08 96 00 68 84',96),(97,'04 40 65 47 02',97),(98,'08 51 56 85 05',45),(99,'06 91 91 97 21',99),(100,'03 45 66 17 04',100);
/*!40000 ALTER TABLE `numero` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-03 17:10:01
