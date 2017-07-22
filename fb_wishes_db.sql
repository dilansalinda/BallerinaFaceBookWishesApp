-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: fb_wishes_db
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `friends1`
--

DROP TABLE IF EXISTS `friends1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends1` (
  `idfriends1` int(11) NOT NULL AUTO_INCREMENT,
  `fb_id` varchar(45) DEFAULT NULL,
  `fb_name` varchar(145) DEFAULT NULL,
  `b_month` varchar(45) DEFAULT NULL,
  `b_date` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `friends_category_idfriends_category` int(11) NOT NULL,
  `user1_iduser1` int(11) NOT NULL,
  PRIMARY KEY (`idfriends1`),
  KEY `fk_friends1_friends_category_idx` (`friends_category_idfriends_category`),
  KEY `fk_friends1_user11_idx` (`user1_iduser1`),
  CONSTRAINT `fk_friends1_friends_category` FOREIGN KEY (`friends_category_idfriends_category`) REFERENCES `friends_category` (`idfriends_category`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_friends1_user11` FOREIGN KEY (`user1_iduser1`) REFERENCES `user1` (`iduser1`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends1`
--

LOCK TABLES `friends1` WRITE;
/*!40000 ALTER TABLE `friends1` DISABLE KEYS */;
/*!40000 ALTER TABLE `friends1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends_category`
--

DROP TABLE IF EXISTS `friends_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends_category` (
  `idfriends_category` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `wishes_idwishes` int(11) NOT NULL,
  PRIMARY KEY (`idfriends_category`),
  KEY `fk_friends_category_wishes1_idx` (`wishes_idwishes`),
  CONSTRAINT `fk_friends_category_wishes1` FOREIGN KEY (`wishes_idwishes`) REFERENCES `wishes` (`idwishes`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends_category`
--

LOCK TABLES `friends_category` WRITE;
/*!40000 ALTER TABLE `friends_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `friends_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user1`
--

DROP TABLE IF EXISTS `user1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user1` (
  `iduser1` int(11) NOT NULL AUTO_INCREMENT,
  `user_fb_id` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iduser1`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user1`
--

LOCK TABLES `user1` WRITE;
/*!40000 ALTER TABLE `user1` DISABLE KEYS */;
INSERT INTO `user1` VALUES (1,'100001679433846','chamarasasmith','1'),(2,'100001679433846','gikka.munaya','1');
/*!40000 ALTER TABLE `user1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishes`
--

DROP TABLE IF EXISTS `wishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishes` (
  `idwishes` int(11) NOT NULL AUTO_INCREMENT,
  `wishes` text,
  PRIMARY KEY (`idwishes`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishes`
--

LOCK TABLES `wishes` WRITE;
/*!40000 ALTER TABLE `wishes` DISABLE KEYS */;
INSERT INTO `wishes` VALUES (1,'HappyBith Day 1'),(2,'HappyBith Day 2'),(3,'HappyBith Day 3'),(4,'HappyBith Day 4'),(5,'HappyBith Day 5');
/*!40000 ALTER TABLE `wishes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-22 12:57:14
