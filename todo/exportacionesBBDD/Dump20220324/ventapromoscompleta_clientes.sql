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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `codcli` int NOT NULL,
  `nomcli` varchar(20) DEFAULT NULL,
  `ape1cli` varchar(20) DEFAULT NULL,
  `ape2cli` varchar(20) DEFAULT NULL,
  `tlfcli` char(9) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `dircli` varchar(150) DEFAULT NULL,
  `codposcli` char(5) DEFAULT NULL,
  `fecnaccli` date DEFAULT NULL,
  `fecincorpo` date DEFAULT NULL,
  `ptosacumulados` int DEFAULT NULL,
  `ptoscanjeados` int DEFAULT NULL,
  PRIMARY KEY (`codcli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Loreta','Zapata',NULL,'911 703 9','LoretaZapataOzuna@trashymail.c','C/ Eras 18 Pedrezuela','28723','2002-01-01','2013-01-01',10,10),(2,'Teodequilda','Godoy',NULL,'955 510 9','TeodequildaGodoyBahena@dodgit.','Eusebio Dávila 82 La Campana','41429','2001-08-09','2013-01-01',10,10),(3,'Danel','Jimínez',NULL,'877 886 7','DanelJiminezSisneros@pookmail.','Outid de Arriba 7 Alcanar','43530','2000-11-19','2013-01-01',10,10),(4,'Eliezer','Arroyo',NULL,'981 329 5','EliezerArroyoPedraza@pookmail.','Quevedo 1 Cariño','15360','2003-09-04','2013-01-01',10,10),(5,'Clelia','Gurule',NULL,'911 626 2','CleliaGuruleBenitez@mailinator','C/ Amoladera 95 Ajalvir','28864','2001-10-05','2013-01-01',10,10),(6,'Longinos','Nazario',NULL,'923 684 6','LonginosNazarioAcevedo@mailina','Enxertos 49 La Atalaya','37591','0000-00-00','2013-01-01',10,10),(7,'Débora','Carranza',NULL,'911 956 5','DeboraCarranzaOrdonez@mailinat','Avda. de la Estación 80 Chapinería','28694','0000-00-00','2013-01-01',10,10),(8,'Florida','Candelaria',NULL,'920 308 2','FloridaCandelariaOcasio@mailin','C/ Libertad 80 El Barraco','05110','0000-00-00','2013-01-01',10,10),(9,'Elisea','Pabón',NULL,'984 208 4','EliseaPabonAngulo@dodgit.com','Ctra. Villena 11 San Martín del Rey Aurelio','33950','0000-00-00','2013-01-01',10,10),(10,'Michele','Acosta',NULL,'971 452 1','MicheleAcostaLuevano@dodgit.co','Zumalakarregi etorbidea 83 Calvià','07184','2002-02-21','2013-01-01',10,10),(11,'Sofiel','Centeno',NULL,'710 745 1','SofielCentenoApodaca@trashymai','Avendaño 72 Níjar','04100','2002-04-21','2013-01-01',10,10),(12,'Abbot','Valadez',NULL,'967 914 8','AbbotValadezCenteno@spambob.co','C/ Domingo Beltrán 62 Mahora','02240','2001-11-30','2013-01-01',10,10),(13,'Myrna','Ibarra',NULL,'886 479 2','MyrnaIbarraRodriguez@mailinato','Atamaria 37 Pontecesures','36640','2000-02-05','2013-01-01',10,10),(14,'Hilario','Alonso',NULL,'928 949 3','HilarioAlonsoTijerina@pookmail','Avda. Explanada Barnuevo 23 Artenara','35350','2000-12-20','2013-01-01',10,10),(15,'Elsira','Gaytan',NULL,'881 364 7','ElsiraGaytanVillagomez@pookmai','El Roqueo 41 Ribeira','15960','2003-02-20','2013-01-01',10,10),(16,'Nacho','Batista',NULL,'643 260 1','NachoBatistaFranco@spambob.com','Cartagena 6 Cehegín','30430','1999-12-03','2013-01-01',10,10),(17,'Evarista','Torres',NULL,'687 956 1','EvaristaTorresSalazar@mailinat','Avda. Andalucía 96 Rabanera','26133','1999-06-04','2013-01-01',10,10),(18,'Domiciano','Ballesteros',NULL,'785 112 5','DomicianoBallesterosUribe@dodg','Plaza Colón 81 Astorga','24700','2001-10-17','2013-01-01',10,10),(19,'Arquímedes','Muñiz',NULL,'915 232 8','ArquimedesMunizCordova@trashym','C/ Eras 53 Lozoya','28742','2001-09-17','2013-01-01',10,10),(20,'Eira','Salcido',NULL,'953 001 8','EiraSalcidoTirado@trashymail.c','Ctra. Bailén-Motril 66 Santa Elena','23213','2001-08-15','2013-01-01',10,10),(21,'Carmine','Mata',NULL,'941 573 4','CarmineMataCarrera@trashymail.','Ctra. Hornos 33 Ochánduri','26213','2002-07-01','2013-01-01',10,10),(22,'Patsy','Cordova',NULL,'983 328 9','PatsyCordovaLebron@trashymail.','Calvo Sotelo 85 Tudela de Duero','47320','2002-06-14','2013-01-01',10,10),(23,'Madeleine','Merino',NULL,'932 032 3','MadeleineMerinoPosada@mailinat','Cercas Bajas 89 Lliçà d\'Amunt','08186','2002-06-14','2013-01-01',10,10),(24,'Hilen','Anaya',NULL,'637 192 0','HilenAnayaEnriquez@mailinator.','Cartagena 54 Ulea','30612','2001-06-21','2013-01-01',10,10),(25,'Gian','Gastelum',NULL,'964 171 8','GianGastelumBarrientos@pookmai','Paseo Junquera 33 Caudiel','12440','2001-06-29','2013-01-01',10,10),(26,'Fuencista','Becerra',NULL,'937 478 8','FuencistaBecerraAlvarez@pookma','C/ Benito Guinea 35 Premià de Mar','08330','1998-06-29','2013-01-01',10,10),(27,'Georges','Matos',NULL,'665 977 4','GeorgesMatosNevarez@trashymail','C/ Canarias 96 Hernani','20120','2003-12-18','2013-01-01',10,10),(28,'Midas','Saenz',NULL,'822 724 1','MidasSaenzEspinal@spambob.com','Antonio Vázquez 19 Fuencaliente de la Palma','38740','2001-01-15','2013-01-01',10,10),(29,'Ray','Villareal',NULL,'789 149 9','RayVillarealColunga@mailinator','Cruce Casa de Postas 36 Pampaneira','18411','2002-11-15','2013-01-01',10,10),(30,'Joseph','Haro',NULL,'716 392 8','JosephHaroPrado@pookmail.com','C/ Rosa de los Vientos 87 Arcos de la Frontera','11630','2000-11-19','2013-01-01',10,10),(31,'Alejandrino','Romero',NULL,'925 152 9','AlejandrinoRomeroMadrid@mailin','Reiseñor 97 Quintanar de la Orden','45800','2000-02-21','2013-01-01',10,10),(32,'Lain','Alaniz',NULL,'917 441 9','LainAlanizJasso@trashymail.com','C/ Henan Cortes 85 Alcorcón','28920','1985-04-01','2013-01-01',10,10),(33,'Jessica','Rojo',NULL,'981 095 4','JessicaRojoNava@mailinator.com','El Roqueo 54 Vedra','15885','2001-04-15','2013-01-01',10,10),(34,'Minotauro','Hinojosa',NULL,'959 586 3','MinotauroHinojosaMojica@dodgit','Prolongacion San Sebastian 62 Linares de la Sierra','21341','2001-04-17','2013-01-01',10,10),(35,'Ahmed','Zaragoza',NULL,'974 901 4','AhmedZaragozaVera@trashymail.c','Cañadilla 46 Aínsa-Sobrarbe','22330','2001-04-17','2013-01-01',10,10),(36,'Cupido','Sotelo',NULL,'628 406 3','CupidoSoteloRodrigez@mailinato','C/ Los Herrán 91 Villafranca de los Barros','06220','2001-09-13','2013-01-01',10,10),(37,'Grau','Nino',NULL,'858 206 6','GrauNinoRubio@pookmail.com','Paseo del Atlántico 46 Arenas del Rey','18126','2001-05-18','2013-01-01',10,10),(38,'Chiara','Leyva',NULL,'958 466 1','ChiaraLeyvaRojo@spambob.com','Paseo del Atlántico 92 Píñar','18127','2001-08-18','2013-01-01',10,10),(39,'Neptuno','Gamboa',NULL,'957 024 6','NeptunoGamboaPorras@dodgit.com','La Fontanilla 35 Villanueva de Córdoba','14440','2003-07-11','2013-01-01',10,10),(40,'Adassa','Porras',NULL,'868 006 4','AdassaPorrasApodaca@dodgit.com','Cartagena 3 Ojós','30611','2003-09-22','2013-01-01',10,10),(41,'Arydea','Segura',NULL,'941 042 5','ArydeaSeguraZavala@dodgit.com','Ctra. de la Puerta 42 Bergasa','26588','2003-01-22','2013-01-01',10,10),(42,'Daila','Mena',NULL,'958 000 3','DailaMenaTafoya@trashymail.com','Cádiz 87 Ferreira','18513','2003-01-12','2013-01-01',10,10),(43,'Igone','Gutiérrez',NULL,'923 105 2','IgoneGutierrezHernadez@pookmai','Socampo 1 Sepulcro-Hilario','37638','2001-03-12','2013-01-01',10,10),(44,'Clotilde','Ulibarri',NULL,'913 015 9','ClotildeUlibarriVelasco@mailin','Ventanilla de Beas 56 Madrid','28000','2001-04-18','2013-01-01',10,10),(45,'Lara','Varela',NULL,'691 127 3','LaraVarelaSoria@pookmail.com','Cartagena 97 Caravaca de la Cruz','30400','2001-04-30','2013-01-01',10,10),(46,'Dalma','Abrego',NULL,'868 570 4','DalmaAbregoSaldana@pookmail.co','Alcon Molina 8 Mazarrón','30870','1998-04-10','2013-01-01',10,10),(47,'Prudencio','Haro',NULL,'663 979 0','PrudencioHaroSanabria@mailinat','Rúa de San Pedro 42 Berrocal de Salvatierra','37795','2002-08-10','2013-01-01',10,10),(48,'Yair','Reyna',NULL,'693 941 4','YairReynaHinojosa@mailinator.c','Prolongacion San Sebastian 87 El Cerro de Andévalo','21320','2002-07-21','2013-01-01',10,10),(49,'Marién','Tejada',NULL,'923 579 4','MarienTejadaRangel@mailinator.','Rua da Rapina 91 Aldehuela de la Bóveda','37460','2002-10-30','2013-01-01',10,10),(50,'Amira','Cardona',NULL,'988 016 3','AmiraCardonaBarela@pookmail.co','Salzillo 91 A Mezquita','32549','2000-09-07','2013-01-01',10,10),(51,'Maggie','Benavidez',NULL,'913 712 3','MaggieBenavidezCenteno@pookmai','C/ Amoladera 20 Ribatejada','28815','2001-09-11','2013-01-01',10,10),(52,'Uberto','Mateo',NULL,'941 077 1','UbertoMateoUrias@pookmail.com','Plaza Colón 51 Albelda de Iregua','26120','2002-12-19','2013-01-01',10,10),(53,'Apia','Carrión',NULL,'968 843 6','ApiaCarrionRocha@pookmail.com','Alcon Molina 94 Los Alcázares','30710','0000-00-00','2013-01-01',10,10),(54,'Emillen','Oquendo',NULL,'971 142 3','EmillenOquendoPichardo@spambob','Zumalakarregi etorbidea 58 Bunyola','07110','0000-00-00','2013-01-01',10,10),(55,'Erico','Barrios',NULL,'601 095 1','EricoBarriosRael@pookmail.com','Bouciña 35 Amposta','43870','0000-00-00','2013-01-01',10,10);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
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
