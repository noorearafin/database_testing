-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: practice
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bonus`
--

DROP TABLE IF EXISTS `bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonus` (
  `WORKER_REF_ID` int DEFAULT NULL,
  `BONUS_AMOUNT` int DEFAULT NULL,
  `BONUS_DATE` datetime DEFAULT NULL,
  KEY `WORKER_REF_ID` (`WORKER_REF_ID`),
  CONSTRAINT `bonus_ibfk_1` FOREIGN KEY (`WORKER_REF_ID`) REFERENCES `worker` (`WORKER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonus`
--

LOCK TABLES `bonus` WRITE;
/*!40000 ALTER TABLE `bonus` DISABLE KEYS */;
INSERT INTO `bonus` VALUES (1,5000,'2023-02-20 00:00:00'),(2,3000,'2023-06-11 00:00:00'),(3,4000,'2023-02-20 00:00:00'),(1,4500,'2023-02-20 00:00:00'),(2,3500,'2023-06-11 00:00:00');
/*!40000 ALTER TABLE `bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title`
--

DROP TABLE IF EXISTS `title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `title` (
  `WORKER_REF_ID` int DEFAULT NULL,
  `WORKER_TITLE` char(25) DEFAULT NULL,
  `AFFECTED_FROM` datetime DEFAULT NULL,
  KEY `WORKER_REF_ID` (`WORKER_REF_ID`),
  CONSTRAINT `title_ibfk_1` FOREIGN KEY (`WORKER_REF_ID`) REFERENCES `worker` (`WORKER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title`
--

LOCK TABLES `title` WRITE;
/*!40000 ALTER TABLE `title` DISABLE KEYS */;
INSERT INTO `title` VALUES (1,'Manager','2023-02-20 00:00:00'),(2,'Executive','2023-06-11 00:00:00'),(8,'Executive','2023-06-11 00:00:00'),(5,'Manager','2023-06-11 00:00:00'),(4,'Asst. Manager','2023-06-11 00:00:00'),(7,'Executive','2023-06-11 00:00:00'),(6,'Lead','2023-06-11 00:00:00'),(3,'Lead','2023-06-11 00:00:00');
/*!40000 ALTER TABLE `title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker` (
  `WORKER_ID` int NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` char(25) DEFAULT NULL,
  `LAST_NAME` char(25) DEFAULT NULL,
  `SALARY` int DEFAULT NULL,
  `JOINING_DATE` datetime DEFAULT NULL,
  `DEPARTMENT` char(25) DEFAULT NULL,
  PRIMARY KEY (`WORKER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES (1,'Monika','Arora',100000,'2021-02-20 09:00:00','HR'),(2,'Niharika','Verma',80000,'2021-06-11 09:00:00','Admin'),(3,'Vishal','Singhal',300000,'2021-02-20 09:00:00','HR'),(4,'Amitabh','Singh',500000,'2021-02-20 09:00:00','Admin'),(5,'Vivek','Bhati',500000,'2021-06-11 09:00:00','Admin'),(6,'Vipul','Diwan',200000,'2021-06-11 09:00:00','Account'),(7,'Satish','Kumar',75000,'2021-01-20 09:00:00','Account'),(8,'Geetika','Chauhan',90000,'2021-04-11 09:00:00','Admin');
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-08 22:46:31
