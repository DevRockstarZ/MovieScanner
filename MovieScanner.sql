CREATE DATABASE  IF NOT EXISTS `moviescanner` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `moviescanner`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 15011066.iptime.org    Database: moviescanner
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.15-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `movielist`
--

DROP TABLE IF EXISTS `movielist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movielist` (
  `number` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '-',
  `genre` varchar(10) NOT NULL DEFAULT '-',
  `age` varchar(10) NOT NULL DEFAULT '-',
  `date` varchar(10) NOT NULL DEFAULT '-',
  PRIMARY KEY (`number`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `genre` (`genre`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movielist`
--

LOCK TABLES `movielist` WRITE;
/*!40000 ALTER TABLE `movielist` DISABLE KEYS */;
INSERT INTO `movielist` VALUES (1,'Ford V Ferrari','action','PG13','2019.11.15'),(2,'Midway','action','PG13','2019.11.08'),(3,'Chalie\'s Angels','action','PG13','2019.11.14'),(4,'Playing With Fire','action','PG','2019.11.08'),(5,'Joker','action','R','2018.10.03'),(6,'Maleficient: Mistress Of Evil','action','PG','2019.10.18'),(7,'Terminator: Dark Fate','action','R','2019.11.01'),(8,'Zombieland: Double Tap','action','R','2019.10.18'),(9,'Black And Blue','action','R','2019.10.25'),(10,'Abominable','action','PG','2019.11.27'),(11,'Arctic Dogs','action','PG','2019.11.01'),(12,'The Lion King','action','PG','2019.07.19'),(13,'Rambo: Last Blood','action','R','2019.09.20'),(14,'The Peanut Butter Falcon','action','PG13','2019.08.09'),(15,'Last Christmas','comedy','PG13','2019.11.08'),(16,'Jojo Rabbit','comedy','PG13','2019.11.08'),(17,'The Addams Family','comedy','PG','2019.10.11'),(18,'Jay & Silent Bob Reboot','comedy','R','2019.10.15'),(19,'Housefull 4','comedy','NR','2019.10.25'),(20,'Toy Story 4','comedy','G','2019.06.21'),(21,'Once Upon A Time In Hollywood','comedy','R','2019.06.26'),(22,'My Dear Liar','comedy','R','2019.06.26'),(23,'The Good Liar','drama','R','2019.11.15'),(24,'Harriet','drama','PG13','2019.11.01'),(25,'Parasite','drama','R','2019.10.11'),(26,'Motherless Brooklyn','drama','R','2019.11.01'),(27,'The Lighthouse','drama','R','2019.10.25'),(28,'Better Days','drama','NR','2019.11.08'),(29,'Downton Abbey','drama','PG','2019.09.20'),(30,'Pain And Glory','drama','R','2019.10.04'),(31,'Honey Boy','drama','R','2019.11.08'),(32,'Waves','drama','R','2019.11.15'),(33,'Judy','drama','PG13','2019.09.27'),(34,'Hustlers','drama','R','2019.09.13'),(35,'Doctor Sleep','horror','R','2019.11.08'),(36,'Countdown','horror','PG13','2019.10.25'),(37,'It Chapter Two','horror','-','2019.11.06'),(38,'Gemini Man','sci-fi','PG13','2019.10.11'),(39,'Ad Astra','sci-fi','PG13','2019.11.20'),(40,'test','test','test','test');
/*!40000 ALTER TABLE `movielist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reclist`
--

DROP TABLE IF EXISTS `reclist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reclist` (
  `ID` varchar(20) NOT NULL,
  `rec_genre` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `ID_rec` FOREIGN KEY (`ID`) REFERENCES `userinfo` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reclist`
--

LOCK TABLES `reclist` WRITE;
/*!40000 ALTER TABLE `reclist` DISABLE KEYS */;
INSERT INTO `reclist` VALUES ('1234','action'),('4321','action'),('admin','action'),('seo','comedy'),('sex','comedy');
/*!40000 ALTER TABLE `reclist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo` (
  `ID` varchar(20) NOT NULL,
  `PW` varchar(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES ('1234','1234','12',1),('4321','4321','aaa',1),('admin','1234','운영자',1),('seo','1234','seo',1),('sex','1234','sex',1),('testtest','1234','tttt',1),('testtesttest','1234','ttttt',1);
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchlist`
--

DROP TABLE IF EXISTS `watchlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watchlist` (
  `ID` varchar(20) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`number`,`ID`),
  KEY `ID_watch_idx` (`ID`),
  CONSTRAINT `ID_watch` FOREIGN KEY (`ID`) REFERENCES `userinfo` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `number_watch` FOREIGN KEY (`number`) REFERENCES `movielist` (`number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchlist`
--

LOCK TABLES `watchlist` WRITE;
/*!40000 ALTER TABLE `watchlist` DISABLE KEYS */;
INSERT INTO `watchlist` VALUES ('admin',1),('sex',1),('4321',2),('seo',2),('4321',5),('sex',5),('1234',10),('seo',15),('seo',16),('sex',16),('sex',18),('4321',20),('sex',20);
/*!40000 ALTER TABLE `watchlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `ID` varchar(20) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`number`),
  KEY `number_wish_idx` (`number`),
  CONSTRAINT `ID_wish` FOREIGN KEY (`ID`) REFERENCES `userinfo` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `number_wish` FOREIGN KEY (`number`) REFERENCES `movielist` (`number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES ('1234',8),('4321',6),('admin',2),('admin',4),('testtest',4),('testtesttest',9);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'moviescanner'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-28  1:23:01
