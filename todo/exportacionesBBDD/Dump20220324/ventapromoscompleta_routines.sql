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
-- Temporary view structure for view `catalogoprecios`
--

DROP TABLE IF EXISTS `catalogoprecios`;
/*!50001 DROP VIEW IF EXISTS `catalogoprecios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `catalogoprecios` AS SELECT 
 1 AS `refProducto`,
 1 AS `descripProducto`,
 1 AS `precioactualProducto`,
 1 AS `codcat`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `catalogoprecios`
--

/*!50001 DROP VIEW IF EXISTS `catalogoprecios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `catalogoprecios` (`refProducto`,`descripProducto`,`precioactualProducto`,`codcat`) AS select `articulos`.`refart` AS `refart`,`articulos`.`desart` AS `desart`,`articulos`.`precioventa` AS `precioventa`,`categorias`.`codcat` AS `codcat` from (`articulos` join `categorias` on((`articulos`.`codcat` = `categorias`.`codcat`))) where `articulos`.`refart` in (select `catalogospromos`.`refart` from (`catalogospromos` join `promociones` on((`catalogospromos`.`codpromo` = `promociones`.`codpromo`))) where (curdate() between `promociones`.`fecinipromo` and (`promociones`.`fecinipromo` + interval `promociones`.`duracionpromo` day))) is false union select `articulos`.`refart` AS `refart`,`articulos`.`desart` AS `desart`,`catalogospromos`.`precioartpromo` AS `precioartpromo`,`categorias`.`codcat` AS `codcat` from (((`articulos` join `catalogospromos` on((`articulos`.`refart` = `catalogospromos`.`refart`))) join `promociones` on((`catalogospromos`.`codpromo` = `promociones`.`codpromo`))) join `categorias` on((`articulos`.`codcat` = `categorias`.`codcat`))) where (curdate() between `promociones`.`fecinipromo` and (`promociones`.`fecinipromo` + interval `promociones`.`duracionpromo` day)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'ventapromoscompleta'
--
/*!50003 DROP PROCEDURE IF EXISTS `proc6_7_5` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`victoria`@`192.168.56.1` PROCEDURE `proc6_7_5`(in anio year)
begin
	-- call proc6_7_5('2012');
select SUM(precioventa*cant) as 'VentaTotal', monthname(ventas.fecventa) as 'Mes'
from detalleventa join ventas
	on detalleventa.codventa = ventas.codventa
where year(ventas.fecventa) = anio
group by monthname(ventas.fecventa);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc6_7_6` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`victoria`@`192.168.56.1` PROCEDURE `proc6_7_6`(in anio year)
begin
	-- call proc6_7_6('2012');
select SUM(precioventa*cant) as 'VentaTotal',
		monthname(ventas.fecventa) as 'Mes'
from venta left join detalleventa
	on detalleventa.codventa = ventas.codventa
where year(ventas.fecventa) = anio
group by monthname(ventas.fecventa)

having SUM(detalleventa.precioventa*cant) > (select avg(detalleventa.precioventa*cant)
										from ventas join detalleventa
											on ventas.codventa = detalleventa.codventa
                                        where year(ventas.fecventa) = anio);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-24 10:24:47
