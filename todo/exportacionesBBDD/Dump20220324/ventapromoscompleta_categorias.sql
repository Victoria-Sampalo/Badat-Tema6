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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `codcat` int NOT NULL,
  `nomcat` varchar(100) DEFAULT NULL,
  `descat` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`codcat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'ASEO PERSONAL','ASEO PERSONAL'),(2,'PRODUCTOS SOLARES','PRODUCTOS SOLARES'),(3,'MAQUILLAJES','MAQUILLAJES'),(4,'COSMÉTICA NATURAL','COSMÉTICA NATURAL'),(5,'CREMAS','CREMAS'),(6,'COLONIAS Y PERFUMES','COLONIAS Y PERFUMES'),(11,'ASEO PERSONAL AHORRO-FAMILY','ASEO PERSONAL AHORRO-FAMILY'),(12,'PRODUCTOS SOLARES AHORRO-FAMILY','PRODUCTOS SOLARES AHORRO-FAMILY'),(13,'MAQUILLAJES AHORRO-FAMILY','MAQUILLAJES AHORRO-FAMILY'),(14,'COSMÉTICA NATURAL AHORRO-FAMILY','COSMÉTICA NATURAL AHORRO-FAMILY'),(15,'CREMAS AHORRO-FAMILY','CREMAS AHORRO-FAMILY'),(16,'COLONIAS Y PERFUMES AHORRO-FAMILY','COLONIAS Y PERFUMES AHORRO-FAMILY');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-24 10:24:46
