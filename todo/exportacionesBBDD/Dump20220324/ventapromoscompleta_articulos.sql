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
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulos` (
  `refart` char(12) NOT NULL,
  `nomart` varchar(50) DEFAULT NULL,
  `desart` varchar(120) DEFAULT NULL,
  `preciobase` decimal(5,2) DEFAULT NULL,
  `precioventa` decimal(5,2) DEFAULT NULL,
  `codcat` int DEFAULT NULL,
  `stock` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`refart`),
  KEY `fk_articulos_categorias` (`codcat`),
  CONSTRAINT `fk_articulos_categorias` FOREIGN KEY (`codcat`) REFERENCES `categorias` (`codcat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES ('C1_01','Gel de Baño Fragancias del Mediterráneo','',1.50,3.95,1,7),('C1_02','Champú Rayos de sol','',2.00,4.95,1,10),('C1_03','Gel de Baño Fragancias del Adriático','',1.50,3.95,1,7),('C1_04','Gel de Baño Fragancias del Caribe','',1.50,3.95,1,10),('C2_01','Crema solar con aloe vera prot 10','',3.50,6.95,2,3),('C2_02','Crema solar con aloe vera prot 20','',4.50,7.95,2,10),('C2_03','Crema solar con aloe vera alta protección','',5.50,8.95,2,7),('C2_04','Crema solar con aloe vera especial niños','',5.50,8.95,2,10),('C2_05','Crema solar con aloe vera especial cara y cuello','',12.50,-22.00,2,7),('C2_06','AfterSun con aloe vera','',3.50,6.95,2,10),('C6_01','Agua de primavera','',7.90,12.95,6,7),('C6_02','Agua de verano','',8.90,13.95,6,10),('C6_03','Agua de otoño','',7.90,12.95,6,7),('C6_04','Agua de invierno','',8.90,13.95,6,10);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
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
