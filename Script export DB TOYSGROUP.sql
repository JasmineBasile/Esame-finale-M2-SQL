-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: toysgroup
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Categoryname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Costruzione'),(2,'Fisico'),(3,'Tecnologici'),(4,'Immaginazione'),(5,'Cognitivi');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `informazioni_geografiche`
--

DROP TABLE IF EXISTS `informazioni_geografiche`;
/*!50001 DROP VIEW IF EXISTS `informazioni_geografiche`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `informazioni_geografiche` AS SELECT 
 1 AS `ID`,
 1 AS `Statename`,
 1 AS `IDRegion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `prodotti`
--

DROP TABLE IF EXISTS `prodotti`;
/*!50001 DROP VIEW IF EXISTS `prodotti`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `prodotti` AS SELECT 
 1 AS `ID`,
 1 AS `Productname`,
 1 AS `Categoryname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Productname` varchar(50) DEFAULT NULL,
  `IDCategory` int NOT NULL,
  `Unitprice` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDCategory` (`IDCategory`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`IDCategory`) REFERENCES `category` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (21,'Bambola',4,150.99),(22,'Trenino',2,99.49),(23,'Cubi di costruzione',1,120.89),(24,'Peluche',4,75.50),(25,'Macchinine',2,69.99),(26,'Puzzle',5,80.75),(27,'Gioco da tavolo',5,149.99),(28,'Giocattolo interattivo',3,199.49),(29,'Giostrina',4,102.29),(30,'Aeroplano giocattolo',2,119.99),(31,'Lego',1,299.99),(32,'Yo-yo',5,57.90),(33,'Palla',2,49.99),(34,'Puzzle 3D',5,225.50),(35,'Bici',2,1899.99),(36,'Tenda da gioco',4,249.99),(37,'Robot',3,399.99),(38,'Strumenti musicali giocattolo',5,134.49),(39,'Mini droni',2,459.99),(40,'Costruzioni magnetiche',1,198.90);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Regionname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'WestEurope'),(2,'SouthEurope'),(3,'NorthEurope'),(4,'EastEurope'),(5,'CentralEurope'),(6,'SoutheastEurope');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Salesdate` date NOT NULL,
  `IDProduct` int NOT NULL,
  `IDRegion` int NOT NULL,
  `Quantity` int NOT NULL,
  `UnitPrice` decimal(8,2) NOT NULL,
  `Salesamount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDProduct` (`IDProduct`),
  KEY `IDRegion` (`IDRegion`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`IDProduct`) REFERENCES `product` (`ID`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`IDRegion`) REFERENCES `region` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (401,'2024-08-25',21,1,3,199.49,598.47),(402,'2024-08-31',22,2,5,249.99,1249.95),(403,'2024-09-14',23,3,2,399.99,799.98),(404,'2024-09-27',24,4,7,299.99,2099.93),(405,'2024-10-31',25,5,4,134.49,537.96),(406,'2024-12-31',26,6,3,459.99,1379.97),(407,'2024-11-03',27,1,0,198.90,0.00),(408,'2025-01-31',28,2,6,149.99,899.94),(409,'2025-01-15',29,3,1,57.90,57.90),(410,'2025-02-12',30,4,3,225.50,676.50),(411,'2025-08-25',31,5,8,119.99,959.92),(412,'2025-08-31',32,6,0,80.75,0.00),(413,'2025-09-14',33,1,4,102.29,409.16),(414,'2025-09-27',34,2,5,299.99,1499.95),(415,'2025-10-31',35,3,7,149.99,1049.93),(416,'2025-12-31',36,4,6,134.49,806.94),(417,'2025-11-03',37,5,2,198.90,397.80),(418,'2025-01-31',38,6,3,199.49,598.47),(419,'2025-01-15',39,1,8,80.75,646.00),(420,'2025-02-12',40,2,5,119.99,599.95),(421,'2023-02-20',21,3,4,299.99,1199.96),(422,'2023-02-22',22,4,7,57.90,405.30),(423,'2023-02-25',23,5,3,225.50,676.50),(424,'2023-03-01',24,6,6,249.99,1499.94),(425,'2023-03-03',25,1,0,399.99,0.00),(426,'2023-03-06',26,2,3,134.49,403.47),(427,'2023-03-10',27,3,2,459.99,919.98),(428,'2023-03-12',28,4,5,198.90,994.50),(429,'2023-03-15',29,5,4,150.99,603.96),(430,'2023-03-18',30,6,1,149.99,149.99),(431,'2023-03-20',31,1,2,199.49,398.98),(432,'2023-03-22',32,2,0,57.90,0.00),(433,'2023-03-25',33,3,6,119.99,719.94),(434,'2023-03-28',34,4,3,299.99,899.97),(435,'2023-04-01',35,5,5,80.75,403.75),(436,'2023-04-03',36,6,0,80.75,0.00),(437,'2023-04-06',37,1,7,119.99,839.93),(438,'2023-04-09',38,2,3,299.99,899.97),(439,'2023-04-12',39,3,5,149.99,749.95),(440,'2023-04-15',40,4,2,134.49,268.98),(441,'2023-04-18',21,5,6,198.90,1193.40),(442,'2023-04-20',22,6,1,199.49,199.49),(443,'2023-04-23',23,1,2,80.75,161.50),(444,'2023-04-25',24,2,4,119.99,479.96),(445,'2023-04-28',25,3,3,299.99,899.97),(446,'2023-05-01',26,4,8,150.99,1207.92),(447,'2023-05-03',27,5,5,134.49,672.45),(448,'2023-05-05',28,6,6,80.75,484.50),(449,'2023-05-08',29,1,4,119.99,479.96),(450,'2023-05-10',30,2,7,299.99,2099.93),(451,'2023-05-13',31,3,3,150.99,452.97),(452,'2023-05-15',32,4,0,57.90,0.00),(453,'2023-05-18',33,5,8,199.49,1595.92),(454,'2023-05-20',34,6,4,249.99,999.96),(455,'2023-05-22',21,1,3,150.99,452.97),(456,'2023-05-24',22,2,6,99.49,596.94),(457,'2023-05-27',23,3,2,299.99,599.98),(458,'2023-05-29',24,4,7,249.99,1749.93),(459,'2023-06-01',25,5,4,134.49,537.96),(460,'2023-06-03',26,6,5,459.99,2299.95),(461,'2023-06-05',27,1,0,198.90,0.00),(462,'2023-06-07',28,2,3,149.99,449.97),(463,'2023-06-10',29,3,1,57.90,57.90),(464,'2023-06-12',30,4,2,225.50,451.00),(465,'2023-06-14',31,5,4,119.99,479.96),(466,'2023-06-17',32,6,0,80.75,0.00),(467,'2023-06-20',33,1,6,102.29,613.74),(468,'2023-06-22',34,2,5,299.99,1499.95),(469,'2023-06-24',35,3,3,149.99,449.97),(470,'2023-06-27',36,4,2,134.49,268.98),(471,'2023-06-30',37,5,6,198.90,1193.40),(472,'2023-07-03',38,6,3,199.49,598.47),(473,'2023-07-05',39,1,7,80.75,565.25),(474,'2023-07-07',40,2,5,119.99,599.95),(475,'2023-07-09',21,3,8,299.99,2399.92),(476,'2023-07-12',22,4,4,57.90,231.60),(477,'2023-07-14',23,5,3,225.50,676.50),(478,'2023-07-16',24,6,7,249.99,1749.93),(479,'2023-07-18',25,1,6,399.99,2399.94),(480,'2023-07-21',26,2,2,134.49,268.98),(481,'2023-07-23',27,3,0,459.99,0.00),(482,'2023-07-25',28,4,3,198.90,596.70),(483,'2023-07-28',29,5,4,150.99,603.96),(484,'2023-07-30',30,6,8,149.99,1199.92),(485,'2023-08-02',31,1,1,199.49,199.49),(486,'2023-08-04',32,2,0,57.90,0.00),(487,'2023-08-06',33,3,6,119.99,719.94),(488,'2023-08-08',34,4,4,299.99,1199.96),(489,'2023-08-10',35,5,5,80.75,403.75),(490,'2023-08-12',36,6,2,80.75,161.50),(491,'2023-08-15',37,1,7,119.99,839.93),(492,'2023-08-17',38,2,4,299.99,1199.96),(493,'2023-08-19',39,3,1,150.99,150.99),(494,'2023-08-22',40,4,3,134.49,403.47),(495,'2023-08-24',21,5,0,198.90,0.00),(496,'2023-08-26',22,6,5,199.49,997.45),(497,'2023-08-28',23,1,4,80.75,323.00),(498,'2023-08-30',24,2,7,119.99,839.93),(499,'2023-09-02',25,3,6,299.99,1799.94),(500,'2023-09-04',26,4,2,150.99,301.98),(501,'2023-09-06',27,5,5,134.49,672.45),(502,'2023-09-09',28,6,1,80.75,80.75);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Statename` varchar(50) DEFAULT NULL,
  `IDRegion` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDRegion` (`IDRegion`),
  CONSTRAINT `state_ibfk_1` FOREIGN KEY (`IDRegion`) REFERENCES `region` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'France',1),(2,'Germany',1),(3,'Netherlands',1),(4,'Belgium',1),(5,'Luxembourg',1),(6,'Italy',2),(7,'Greece',2),(8,'Spain',2),(9,'Portugal',2),(10,'Croatia',2),(11,'United Kingdom',3),(12,'Ireland',3),(13,'Denmark',3),(14,'Sweden',3),(15,'Norway',3),(16,'Poland',4),(17,'Czech Republic',4),(18,'Hungary',4),(19,'Slovakia',4),(20,'Romania',4),(21,'Austria',5),(22,'Switzerland',5),(23,'Belgium',5),(24,'Slovenia',5),(25,'Liechtenstein',5),(26,'Bulgaria',6),(27,'Albania',6),(28,'Serbia',6),(29,'Montenegro',6),(30,'North Macedonia',6);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'toysgroup'
--

--
-- Final view structure for view `informazioni_geografiche`
--

/*!50001 DROP VIEW IF EXISTS `informazioni_geografiche`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `informazioni_geografiche` AS select `state`.`ID` AS `ID`,`state`.`Statename` AS `Statename`,`state`.`IDRegion` AS `IDRegion` from `state` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prodotti`
--

/*!50001 DROP VIEW IF EXISTS `prodotti`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prodotti` AS select `product`.`ID` AS `ID`,`product`.`Productname` AS `Productname`,`category`.`Categoryname` AS `Categoryname` from (`product` join `category` on((`product`.`IDCategory` = `category`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-23 11:54:36
