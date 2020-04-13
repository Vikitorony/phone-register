-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: phone_register
-- ------------------------------------------------------
-- Server version	5.7.29

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
-- Table structure for table `phonebook`
--

DROP TABLE IF EXISTS `phonebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phonebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phoneNumber` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phonebook`
--

LOCK TABLES `phonebook` WRITE;
/*!40000 ALTER TABLE `phonebook` DISABLE KEYS */;
INSERT INTO `phonebook` VALUES (1,'Alantos','Hussain','+38154789652'),(2,'Kalandaras','Etiphetes','+3754798512'),(3,'Mamokao','Papadulos','+3775478964'),(4,'Humanitario','Italiano','+75785424247'),(5,'Kuskus','Bosporus','+15558888'),(6,'Canada','Ratata','+1254879645'),(7,'Neo','Anderson','3668225563'),(8,'Frodo','Jacques Os','+3613331234'),(9,'Antoanne','Humidity','+49785478962'),(10,'Neo','Roman','+18201920'),(11,'Antal','József','36124468789'),(12,'Andehasz','Alkaloid','877455'),(13,'Hala','Madrid','21354657'),(14,'H','M','11'),(15,'a','a','22'),(16,'','','22'),(18,'a','a','2323'),(21,'as','sa','2341'),(22,'AAA','ZZZ','000999'),(24,'a','a','123');
/*!40000 ALTER TABLE `phonebook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 16:21:05
