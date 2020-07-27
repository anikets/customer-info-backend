CREATE DATABASE  IF NOT EXISTS `customer` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `customer`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: customer
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `customeraddress`
--

DROP TABLE IF EXISTS `customeraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customeraddress` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CreatedAt` datetime DEFAULT NULL,
  `line1` varchar(20) DEFAULT NULL,
  `line2` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `customeraddress_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customeraddress`
--

LOCK TABLES `customeraddress` WRITE;
/*!40000 ALTER TABLE `customeraddress` DISABLE KEYS */;
INSERT INTO `customeraddress` VALUES (1,'2020-07-26 23:43:08','Deanshanger Memorial','Little London,','London','London','UK','YO7 4UF',1),(2,'2020-07-26 23:43:16','Deanshanger Memorial','Little London,','London','London','UK','YO7 4UF',2),(3,'2020-07-26 23:43:19','Deanshanger Memorial','Little London,','London','London','UK','YO7 4UF',3),(4,'2020-07-27 00:45:29','Deanshanger 1','Little 1','London','London','UK','YO7 4UF',3),(5,'2020-07-27 00:45:38','Deanshanger 2','Little 2','London','London','UK','YO7 4UF',3);
/*!40000 ALTER TABLE `customeraddress` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-27  1:14:29
