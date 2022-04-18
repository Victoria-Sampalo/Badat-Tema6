-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: 192.168.56.101    Database: ventapromoscompleta
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `catalogospromos`
--

DROP TABLE IF EXISTS `catalogospromos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogospromos` (
  `refart` char(12) NOT NULL,
  `codpromo` int NOT NULL,
  `precioartpromo` decimal(5,2) DEFAULT NULL,
  `ptosparacli` int DEFAULT NULL,
  PRIMARY KEY (`refart`,`codpromo`),
  KEY `fk_catalogospromo_promociones` (`codpromo`),
  CONSTRAINT `fk_catalogospromo_articulos` FOREIGN KEY (`refart`) REFERENCES `articulos` (`refart`),
  CONSTRAINT `fk_catalogospromo_promociones` FOREIGN KEY (`codpromo`) REFERENCES `promociones` (`codpromo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogospromos`
--

LOCK TABLES `catalogospromos` WRITE;
/*!40000 ALTER TABLE `catalogospromos` DISABLE KEYS */;
INSERT INTO `catalogospromos` VALUES ('C1_01',1,2.50,1),('C1_02',1,4.00,1),('C1_03',1,3.35,1),('C1_03',6,3.35,1),('C1_04',1,3.30,1),('C1_04',6,3.30,1),('C2_02',2,5.50,1),('C2_04',2,8.00,1),('C2_06',2,5.00,1),('C6_01',1,10.95,1),('C6_02',2,11.50,2),('C6_04',6,11.50,2);
/*!40000 ALTER TABLE `catalogospromos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-24 10:24:47
