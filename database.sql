CREATE DATABASE  IF NOT EXISTS `library` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `library`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `authorid` int(11) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`authorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'herbert','schildt'),(2,'patrick','naughton'),(3,'khalid','mughal'),(4,'dietel','dietel');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookauthor`
--

DROP TABLE IF EXISTS `bookauthor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookauthor` (
  `bookid` int(11) DEFAULT NULL,
  `authorid` int(11) DEFAULT NULL,
  KEY `fk_bookid` (`bookid`),
  KEY `fk_authorid` (`authorid`),
  CONSTRAINT `fk_authorid` FOREIGN KEY (`authorid`) REFERENCES `authors` (`authorid`),
  CONSTRAINT `fk_bookid` FOREIGN KEY (`bookid`) REFERENCES `books` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookauthor`
--

LOCK TABLES `bookauthor` WRITE;
/*!40000 ALTER TABLE `bookauthor` DISABLE KEYS */;
INSERT INTO `bookauthor` VALUES (101,1),(101,4),(102,3);
/*!40000 ALTER TABLE `bookauthor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookdetails`
--

DROP TABLE IF EXISTS `bookdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookdetails` (
  `username` varchar(20) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookdetails`
--

LOCK TABLES `bookdetails` WRITE;
/*!40000 ALTER TABLE `bookdetails` DISABLE KEYS */;
INSERT INTO `bookdetails` VALUES ('ahmedkhan50','p1.jpg'),('ahmedkhan50','p1.jpg'),('ahmedkhan50','p1.jpg'),('ahmedkhan50','p2.jpg'),('ahmedkhan50','p1.jpg'),('ahmedkhan50','p2.jpg'),('ahmedkhan50','p1.jpg'),('ahmedkhan50','p2.jpg'),('ahmedkhan50','p6.jpg'),('ahmedkhan50','p2.jpg'),('sharanya','p3.jpg'),('sharanya','p2.jpg'),('ahmedkhan50','p2.jpg'),('ahmedkhan50','p7.jpg'),('ahmedkhan50','p30.jpg');
/*!40000 ALTER TABLE `bookdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (0,NULL,NULL),(2,'computer programming for beginner\'s',45),(23,'c++ programming',89),(27,'apps with HTML,CSS and Javascript',24.67),(33,'learn to program with scratch',145.98),(35,'game programming pattern\'s',22.55),(36,'SQL bootcamp',45.9),(44,'for dummies',121.45),(66,'c# handbook',189.64),(101,'first 100 words',145),(102,'the food lab',59),(103,'humans of new york',224.6),(104,'all the light we cannot see',105),(105,'dinnertime',52.15),(106,'starwars',15.1),(107,'owls',151.05),(120,'ddn',233),(200,'thug kitchen ',200.1),(234,'owls',10.96),(235,'troublemaker',40.15),(236,'why not me',70.1),(239,'the girl with no past',90.05),(240,'the life we bury',98.9),(333,'the complete runners',85.46),(456,'lost ocean',100.5),(545,'stephen curry',50.5);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp123`
--

DROP TABLE IF EXISTS `emp123`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp123` (
  `Eid` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Salary` double DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  PRIMARY KEY (`Eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp123`
--

LOCK TABLES `emp123` WRITE;
/*!40000 ALTER TABLE `emp123` DISABLE KEYS */;
INSERT INTO `emp123` VALUES (1,'nb',23456,25),(2,'nabeel',23000,23),(3,'Nabeel Ahmed Khan',45000,55),(4,'ahmed',34000,35);
/*!40000 ALTER TABLE `emp123` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myemployee`
--

DROP TABLE IF EXISTS `myemployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myemployee` (
  `eid` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myemployee`
--

LOCK TABLES `myemployee` WRITE;
/*!40000 ALTER TABLE `myemployee` DISABLE KEYS */;
INSERT INTO `myemployee` VALUES (51,'Nabeel',50000,25),(61,'ahmed',60000.89,34);
/*!40000 ALTER TABLE `myemployee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(15) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (51,'david',25,'IL'),(91,'ahmed',85,'FL');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user1`
--

DROP TABLE IF EXISTS `user1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user1` (
  `username` varchar(20) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `cartcount` int(11) DEFAULT '0',
  `wishlistcount` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user1`
--

LOCK TABLES `user1` WRITE;
/*!40000 ALTER TABLE `user1` DISABLE KEYS */;
INSERT INTO `user1` VALUES ('ashish','1991','Ashish',0,0),('sharanya','Sharru12','Sharanya',2,3),('ahmedkhan50','ahmedkhan50','Nabeel',13,5),('ss','sd',NULL,0,0),('df','vcx','cc',0,0),('s','h','h',0,0),('dfd','df','df',0,0),('mozahu_91','mozahu91','Zahid',0,0),('ff','ff','hh',0,0),('khan50','khan50','khan',0,0);
/*!40000 ALTER TABLE `user1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlist` (
  `username` varchar(20) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES ('ahmedkhan50','p2.jpg'),('ahmedkhan50','p3.jpg'),('ahmedkhan50','p22.jpg'),('sharanya','p4.jpg'),('sharanya','p7.jpg'),('sharanya','p8.jpg'),('ahmedkhan50','p3.jpg'),('ahmedkhan50','p7.jpg');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-11  9:56:37
