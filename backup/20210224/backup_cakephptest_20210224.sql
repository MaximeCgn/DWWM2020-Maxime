-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: cakephptest
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
-- Current Database: `cakephptest`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cakephptest` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cakephptest`;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Saree','Porch','sporch0@sogou.com','Genderqueer','238.88.31.147'),(2,'Konstantin','Gealle','kgealle1@answers.com','Female','187.175.99.253'),(3,'Lauri','Attrill','lattrill2@uiuc.edu','Male','46.169.5.150'),(4,'Valma','Cullinan','vcullinan3@about.com','Genderfluid','33.186.121.97'),(5,'Bunnie','Lampke','blampke4@nsw.gov.au','Non-binary','72.216.37.116'),(6,'Orbadiah','Philott','ophilott5@uol.com.br','Male','148.160.88.237'),(7,'Lief','Ganing','lganing6@arstechnica.com','Bigender','122.192.88.202'),(8,'Madonna','Eloi','meloi7@epa.gov','Polygender','21.146.219.229'),(9,'Marcia','Spandley','mspandley8@github.io','Agender','37.253.167.12'),(10,'Austina','Courtese','acourtese9@woothemes.com','Genderfluid','36.53.241.246'),(11,'Bonita','Heaphy','bheaphya@github.com','Genderfluid','66.200.73.218'),(12,'Jeralee','Codner','jcodnerb@unicef.org','Non-binary','40.92.6.248'),(13,'Shanna','Bulfoot','sbulfootc@wufoo.com','Bigender','234.241.29.213'),(14,'Estella','Bolmann','ebolmannd@posterous.com','Agender','128.150.63.18'),(15,'Clarke','Jeckells','cjeckellse@weebly.com','Genderqueer','45.96.20.59'),(16,'Arlyne','McGirl','amcgirlf@cornell.edu','Male','134.108.128.67'),(17,'Christoph','Gristwood','cgristwoodg@boston.com','Genderfluid','239.65.67.70'),(18,'Vittoria','Kippins','vkippinsh@globo.com','Non-binary','254.178.111.142'),(19,'Ward','Slyman','wslymani@creativecommons.org','Agender','77.190.210.68'),(20,'Antonietta','Obispo','aobispoj@usa.gov','Genderfluid','89.40.171.12'),(21,'Clemmy','Zuan','czuank@ask.com','Polygender','45.217.163.57'),(22,'Egbert','Farfolomeev','efarfolomeevl@smugmug.com','Polygender','210.52.201.153'),(23,'Madelin','Desesquelle','mdesesquellem@umich.edu','Polygender','60.229.248.86'),(24,'Melitta','McGilroy','mmcgilroyn@oakley.com','Genderfluid','14.204.143.232'),(25,'Chrissie','Mattosoff','cmattosoffo@blogtalkradio.com','Agender','195.70.160.102'),(26,'Roma','Cutajar','rcutajarp@vinaora.com','Male','40.97.243.13'),(27,'Jaquelin','Fewlass','jfewlassq@ft.com','Bigender','10.160.132.84'),(28,'Van','Cheshir','vcheshirr@drupal.org','Genderqueer','17.201.65.223'),(29,'Remington','Lis','rliss@domainmarket.com','Genderqueer','24.241.138.181'),(30,'Ole','Cossor','ocossort@amazon.co.uk','Genderfluid','77.170.192.10'),(31,'Riva','Riolfo','rriolfou@flickr.com','Female','54.213.55.108'),(32,'Natasha','Henrot','nhenrotv@infoseek.co.jp','Genderqueer','138.144.215.93'),(33,'Erna','Sigward','esigwardw@studiopress.com','Agender','192.94.246.71'),(34,'Sydel','Pratchett','spratchettx@loc.gov','Non-binary','122.252.229.4'),(35,'Dal','Caze','dcazey@weather.com','Genderfluid','92.30.86.75'),(36,'Omero','Rennix','orennixz@youtu.be','Male','240.118.253.114'),(37,'Cello','Rowlands','crowlands10@mail.ru','Non-binary','43.247.227.5'),(38,'Fabian','Plak','fplak11@wufoo.com','Male','204.254.83.208'),(39,'Daven','Lindhe','dlindhe12@homestead.com','Genderfluid','128.122.247.64'),(40,'Rennie','Kisbee','rkisbee13@tripod.com','Bigender','69.22.60.238'),(41,'Jeremy','Jenkins','jjenkins14@oaic.gov.au','Agender','108.89.228.138'),(42,'Yetty','Arangy','yarangy15@cargocollective.com','Agender','254.255.202.76'),(43,'Belle','Eisikovitsh','beisikovitsh16@amazon.de','Genderqueer','16.109.169.199'),(44,'Doralyn','Pocknell','dpocknell17@wix.com','Female','159.222.96.157'),(45,'Emmy','Clerk','eclerk18@123-reg.co.uk','Polygender','118.127.174.73'),(46,'Dina','Kuschel','dkuschel19@merriam-webster.com','Bigender','236.219.167.15'),(47,'Irvin','Deares','ideares1a@people.com.cn','Bigender','163.2.24.110'),(48,'Lorne','Frick','lfrick1b@newsvine.com','Male','206.42.165.192'),(49,'Sile','Laidel','slaidel1c@ycombinator.com','Bigender','241.91.93.63'),(50,'Sherwood','Massy','smassy1d@paypal.com','Bigender','17.67.79.125'),(51,'Dorolice','Donisi','ddonisi1e@scribd.com','Genderqueer','186.217.242.136'),(52,'Darrel','Kaplan','dkaplan1f@bandcamp.com','Agender','228.73.89.64'),(53,'Beilul','Nehlsen','bnehlsen1g@theglobeandmail.com','Female','193.236.71.169'),(54,'Liane','Stanlick','lstanlick1h@tuttocitta.it','Genderqueer','174.134.232.79'),(55,'Boniface','Shard','bshard1i@cnbc.com','Genderfluid','106.102.10.114'),(56,'Holli','Hissie','hhissie1j@weebly.com','Genderfluid','94.26.147.1'),(57,'Bathsheba','Hourstan','bhourstan1k@blogs.com','Agender','15.132.245.203'),(58,'Noemi','MacParlan','nmacparlan1l@webs.com','Non-binary','147.6.252.75'),(59,'Aland','Roches','aroches1m@msu.edu','Polygender','75.220.94.246'),(60,'Flori','Stopp','fstopp1n@nifty.com','Female','239.27.246.120'),(61,'Sal','Goodbarr','sgoodbarr1o@answers.com','Non-binary','92.216.106.179'),(62,'Finn','Zanolli','fzanolli1p@cisco.com','Bigender','206.56.238.169'),(63,'Winfield','Corstorphine','wcorstorphine1q@vimeo.com','Male','109.54.10.251'),(64,'Jeremiah','Egdal','jegdal1r@usnews.com','Male','175.203.228.52'),(65,'Alexander','Ramsden','aramsden1s@hp.com','Polygender','64.78.138.45'),(66,'Dorrie','Pesticcio','dpesticcio1t@bloomberg.com','Non-binary','204.34.103.39'),(67,'Aland','Beltzner','abeltzner1u@bigcartel.com','Bigender','208.110.121.251'),(68,'Hedy','Dowden','hdowden1v@state.tx.us','Female','52.244.161.72'),(69,'Delbert','Mottley','dmottley1w@who.int','Genderfluid','46.208.9.115'),(70,'Eugenie','Bagshawe','ebagshawe1x@i2i.jp','Male','144.183.240.212'),(71,'Leonid','Yellep','lyellep1y@china.com.cn','Polygender','79.54.193.26'),(72,'Jaquith','Tilzey','jtilzey1z@ehow.com','Genderfluid','130.213.114.159'),(73,'Olag','Tesdale','otesdale20@unicef.org','Non-binary','60.202.33.13'),(74,'Hadria','Ruggen','hruggen21@umn.edu','Female','252.108.85.155'),(75,'Bailey','Rosendale','brosendale22@bloglines.com','Non-binary','69.74.175.164'),(76,'Julian','Dugmore','jdugmore23@about.me','Genderfluid','74.106.138.89'),(77,'Gianni','Pinn','gpinn24@studiopress.com','Male','41.247.188.125'),(78,'Brander','Coultas','bcoultas25@hostgator.com','Polygender','241.164.69.12'),(79,'Charmaine','Croster','ccroster26@zdnet.com','Female','101.121.191.255'),(80,'Antonia','Purser','apurser27@storify.com','Genderfluid','18.146.131.112'),(81,'Iggie','Wooller','iwooller28@wsj.com','Polygender','103.101.243.38'),(82,'Adiana','Solleme','asolleme29@sciencedirect.com','Non-binary','231.46.144.80'),(83,'Ritchie','Bagnold','rbagnold2a@ask.com','Agender','42.80.58.60'),(84,'Sean','Blyden','sblyden2b@parallels.com','Genderfluid','3.19.36.170'),(85,'Tabbie','Chadney','tchadney2c@uiuc.edu','Male','198.77.58.216'),(86,'Ada','Gailor','agailor2d@cdbaby.com','Male','237.54.196.202'),(87,'Jobie','Meran','jmeran2e@squarespace.com','Female','254.190.142.31'),(88,'Rhianon','Hunnisett','rhunnisett2f@ameblo.jp','Female','195.8.237.243'),(89,'Natividad','Dachey','ndachey2g@vimeo.com','Bigender','43.16.13.90'),(90,'Eadie','McIlharga','emcilharga2h@ed.gov','Non-binary','236.56.190.156'),(91,'Merci','Gisburn','mgisburn2i@huffingtonpost.com','Genderfluid','245.21.250.233'),(92,'Millisent','Angell','mangell2j@npr.org','Bigender','71.117.168.180'),(93,'Giulietta','Ball','gball2k@webnode.com','Polygender','54.211.180.191'),(94,'Rory','Pimley','rpimley2l@yahoo.com','Polygender','65.60.95.52'),(95,'Stanwood','Kollas','skollas2m@squarespace.com','Non-binary','76.194.5.249'),(96,'Patsy','Troman','ptroman2n@chronoengine.com','Agender','56.200.4.97'),(97,'Clementina','Colgan','ccolgan2o@blogspot.com','Non-binary','177.235.150.20'),(98,'Arlin','Bunston','abunston2p@deviantart.com','Genderfluid','241.116.131.247'),(99,'Blane','Acton','bacton2q@miitbeian.gov.cn','Bigender','134.160.137.166'),(100,'Gradey','Lautie','glautie2r@tiny.cc','Bigender','2.72.25.117');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'The title','This is the post body.sdffsdwsdwf','2021-02-24 09:09:57','2021-02-24 09:57:35'),(2,'A title once again','And the post body follows.','2021-02-24 09:09:57',NULL),(3,'Title strikes back','This is really exciting! Not.','2021-02-24 09:09:57',NULL),(5,'test','test','2021-02-24 12:57:19','2021-02-24 12:57:19');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-24 17:10:02
