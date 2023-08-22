-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: cuadre
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `gastos`
--

DROP TABLE IF EXISTS `gastos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gastos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `cajero` varchar(80) NOT NULL,
  `concepto` varchar(100) NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastos`
--

LOCK TABLES `gastos` WRITE;
/*!40000 ALTER TABLE `gastos` DISABLE KEYS */;
INSERT INTO `gastos` VALUES (6,'2023-07-17','LUZ AIDA','SURTIFAMILIAR',239000.00),(7,'2023-07-17','LUZ AIDA','Pandebonos',23000.00),(8,'2023-07-17','LUZ AIDA','Nomina Veronica Lozano',60000.00),(9,'2023-07-18','LENNIRET HUIZI','Molla carne',24000.00),(10,'2023-07-18','LENNIRET HUIZI','Megafruver',20000.00),(11,'2023-07-18','LENNIRET HUIZI','MonteCarlo',143400.00),(12,'2023-07-18','LENNIRET HUIZI','Nomina Zulma Quintero',120000.00),(13,'2023-07-18','LENNIRET HUIZI','Twister helados',144000.00),(14,'2023-07-19','LUZ AIDA','MAXIMARKET',14000.00),(15,'2023-07-19','LUZ AIDA','Nomina Alexander',180000.00),(16,'2023-07-19','LUZ AIDA','Compras para evento',13200.00),(17,'2023-07-19','LUZ AIDA','SERVICAMBIO',20000.00),(18,'2023-07-19','LUZ AIDA','Nomina Maritza',60000.00),(19,'2023-07-19','LUZ AIDA','Nómina Luz Aida',120000.00),(20,'2023-07-19','LUZ AIDA','Compras del D1',10950.00);
/*!40000 ALTER TABLE `gastos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registros`
--

DROP TABLE IF EXISTS `registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL DEFAULT (now()),
  `cajero` varchar(80) NOT NULL,
  `base` decimal(12,2) NOT NULL,
  `efectivo` decimal(12,2) NOT NULL DEFAULT '0.00',
  `bancolombia` decimal(12,2) DEFAULT '0.00',
  `nequi` decimal(12,2) DEFAULT '0.00',
  `software` decimal(12,2) NOT NULL DEFAULT '0.00',
  `gastos` decimal(12,2) NOT NULL DEFAULT '0.00',
  `cuentas_x_cobrar` decimal(12,2) NOT NULL DEFAULT '0.00',
  `cortesias` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `diferencia` decimal(12,2) NOT NULL DEFAULT '0.00',
  `nota` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `fecha_UNIQUE` (`fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros`
--

LOCK TABLES `registros` WRITE;
/*!40000 ALTER TABLE `registros` DISABLE KEYS */;
INSERT INTO `registros` VALUES (2,'2023-07-17','14:22:35','LUZ AIDA',800000.00,104500.00,13000.00,63000.00,501400.00,322000.00,0.00,0.00,502500.00,1100.00,''),(3,'2023-07-18','18:25:25','LENNIRET HUIZI',800000.00,523350.00,0.00,0.00,971600.00,451400.00,0.00,0.00,974750.00,3150.00,''),(4,'2023-07-19','17:28:30','LUZ AIDA',800000.00,804500.00,0.00,124000.00,1361500.00,418150.00,16000.00,0.00,1362650.00,1150.00,'');
/*!40000 ALTER TABLE `registros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (7,'LENNIRET HUIZI'),(1,'LUZ AIDA');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-19 17:47:58
