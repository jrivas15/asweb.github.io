-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: parking_db
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
-- Table structure for table `datos_parqueadero`
--

DROP TABLE IF EXISTS `datos_parqueadero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_parqueadero` (
  `razon_social` varchar(100) NOT NULL,
  `regimen` varchar(45) NOT NULL,
  `nit` varchar(45) NOT NULL,
  `iva` int NOT NULL,
  `max_v` int NOT NULL,
  `max_m` int NOT NULL,
  `encabezado` varchar(200) NOT NULL DEFAULT '',
  `enc_men_1` varchar(80) NOT NULL,
  `enc_men_2` varchar(80) NOT NULL,
  `footer_men_1` varchar(80) NOT NULL,
  `footer_men_2` varchar(80) NOT NULL,
  `footer` text NOT NULL,
  PRIMARY KEY (`razon_social`),
  UNIQUE KEY `razon_social_UNIQUE` (`razon_social`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_parqueadero`
--

LOCK TABLES `datos_parqueadero` WRITE;
/*!40000 ALTER TABLE `datos_parqueadero` DISABLE KEYS */;
INSERT INTO `datos_parqueadero` VALUES ('PARKING SEGURO','Simplificado','12',19,0,1,'NIT: 901318950-7\nDIRECCIÓN: CARRERA 9 # 6-08\nTelefono fijo 8800582\nHorario Lunes a Viernes 6am a 3 pm\nPOLIZA NRO. C-250002779\nSEGUROS MUNDIAL','','','','','El vehículo se entregará al portador del recibo. No aceptamos \n                ordenes telefónicas ni escritas. Retirado el vehículo, no \n                aceptamos ningún tipo de reclamo.* No respondemos por objetos \n                dejados en el vehículo. * No respondemos por hurto. * No \n                respondemos por la pérdida, deterioro o daños ocurridos como \n                consecuencia de incendio, terremoto, asonada, revolución, \n                u otras causas similares. * El conductor debe asegurarse que\n                el vehículo esta bien asegurado.* No respondemos por daños al \n                vehículo causados por terceros.En caso de perdida del \n                recibo se debe diligenciar un formato con copia tarjeta\n                de propiedad.');
/*!40000 ALTER TABLE `datos_parqueadero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liquidaciones`
--

DROP TABLE IF EXISTS `liquidaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liquidaciones` (
  `liquidacion` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `efectivo` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tarjeta` decimal(12,2) NOT NULL DEFAULT '0.00',
  `descuento` decimal(10,2) NOT NULL,
  `valor_base` decimal(12,2) NOT NULL,
  `valor_iva` decimal(11,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `nota` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`liquidacion`),
  UNIQUE KEY `liquidacion_UNIQUE` (`liquidacion`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liquidaciones`
--

LOCK TABLES `liquidaciones` WRITE;
/*!40000 ALTER TABLE `liquidaciones` DISABLE KEYS */;
INSERT INTO `liquidaciones` VALUES (1,'2023-06-15','00:10:14','Administrador del sistema',11154500.00,0.00,4000.00,1109500.00,0.00,11154500.00,'prueba 2'),(2,'2023-06-15','00:13:28','Administrador del sistema',11154500.00,0.00,4000.00,1109500.00,0.00,11154500.00,'ok'),(3,'2023-06-15','10:44:05','Administrador del sistema',11156500.00,0.00,4000.00,1111500.00,0.00,11156500.00,''),(4,'2023-07-25','23:08:37','Administrador del sistema',0.00,50000.00,0.00,75630.00,14370.00,90000.00,'Prueba 1'),(5,'2023-07-25','23:08:37','Administrador del sistema',0.00,50000.00,0.00,75630.00,14370.00,90000.00,'Prueba 1'),(6,'2023-07-25','23:12:14','Administrador del sistema',0.00,18.00,0.00,18.00,0.00,18.00,''),(7,'2023-07-25','23:19:08','Administrador del sistema',61000.00,0.00,0.00,61000.00,0.00,61000.00,''),(8,'2023-07-29','23:28:48','Administrador del sistema',0.00,0.00,4000.00,6464701.00,272799.00,16782500.00,'test'),(9,'2023-07-29','23:31:22','Administrador del sistema',0.00,0.00,0.00,28000.00,0.00,28000.00,''),(10,'2023-07-30','13:09:21','Administrador del sistema',0.00,0.00,0.00,72385.58,31150.42,103536.00,''),(11,'2023-07-30','13:19:52','Administrador del sistema',9.00,47500.00,0.00,39923.53,7585.47,47509.00,''),(12,'2023-07-30','13:26:04','Administrador del sistema',9.00,670500.00,0.00,563452.94,107056.06,670509.00,''),(13,'2023-07-30','13:31:35','Administrador del sistema',2009.00,0.00,0.00,1688.23,320.77,2009.00,''),(14,'2023-07-31','22:54:45','Administrador del sistemas',4000.00,0.00,0.00,3361.34,638.66,4000.00,''),(15,'2023-07-31','23:51:33','Administrador del sistemas',8000.00,0.00,0.00,6722.68,1277.32,8000.00,'PRUEBA ANTES DE LA VENTA '),(16,'2023-08-01','00:14:20','Aleja Tasconi',15000.00,12000.00,0.00,22689.05,4310.95,27000.00,'prueba'),(17,'2023-07-31','23:33:42','Aleja Tasconi',8000.00,2000.00,0.00,8403.35,1596.65,10000.00,'pr');
/*!40000 ALTER TABLE `liquidaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensualidades`
--

DROP TABLE IF EXISTS `mensualidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensualidades` (
  `placa` varchar(15) NOT NULL,
  `propietario` varchar(80) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `precio` decimal(10,0) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_venc` date NOT NULL,
  `observacion` varchar(100) DEFAULT NULL,
  `mora` tinyint DEFAULT NULL,
  `activo` tinyint NOT NULL,
  PRIMARY KEY (`placa`),
  UNIQUE KEY `placa_UNIQUE` (`placa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensualidades`
--

LOCK TABLES `mensualidades` WRITE;
/*!40000 ALTER TABLE `mensualidades` DISABLE KEYS */;
INSERT INTO `mensualidades` VALUES ('AAA111','USER 1 ','','15486842',180000,'2023-07-14','2023-07-14','KIA AZUL',1,1),('AAA222','AAAAAAA','SASFASF','333333',80000,'2023-07-16','2023-07-16','22222',1,0),('AAA777','LIO','','222222222',100000,'2023-07-16','2023-07-16','',1,1),('DZS959','ANDRES','CARRERA 9','5163277',90000,'2023-07-15','2023-07-15','Mazda blanco',1,1),('ICU005','ALIS','','12345',0,'2023-07-10','2023-07-15','',1,1),('ICU006','JONA','Calle 12 ','123456879',200000,'2023-07-15','2023-07-15',' Todo ok',0,1),('III55S','THEDOR','ASDASDA','112222',95000,'2023-07-16','2023-07-16','OK',1,1),('IIQ712','felipe','calle03','0000000',15000,'2023-07-16','2023-07-16','AZUL',1,1),('IIQ714','FE2','','458225601',50000,'2023-07-16','2023-07-16','',1,0),('OOO888','RIQUELME','CA','5555555',200000,'2023-07-15','2023-07-22','',0,1),('SSS888','MESSI','','8545215',45000,'2023-07-16','2023-07-16','AUDI Q8',1,1),('YGF457','IKAY','DS333','12333',45000,'2023-07-16','2023-07-16','',1,1),('YYY77P','ANDER HERRERA','DD15','1232321',60000,'2023-07-16','2023-07-16','MAZDA',1,1);
/*!40000 ALTER TABLE `mensualidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos` (
  `n_recibo` int NOT NULL AUTO_INCREMENT,
  `placa` varchar(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo_vehiculo` char(2) NOT NULL DEFAULT '',
  `atendido_por` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`n_recibo`),
  UNIQUE KEY `id_UNIQUE` (`n_recibo`),
  UNIQUE KEY `placa_UNIQUE` (`placa`)
) ENGINE=InnoDB AUTO_INCREMENT=1061 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos`
--

LOCK TABLES `movimientos` WRITE;
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos_mens`
--

DROP TABLE IF EXISTS `pagos_mens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos_mens` (
  `recibo` int NOT NULL AUTO_INCREMENT,
  `placa` varchar(15) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `facturado_por` varchar(45) NOT NULL,
  `medio_pago` varchar(60) NOT NULL,
  `descuento` decimal(10,2) NOT NULL,
  `valor_base` decimal(12,2) NOT NULL,
  `valor_iva` decimal(11,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `concepto` varchar(100) NOT NULL,
  `estado_pago` varchar(20) NOT NULL DEFAULT '',
  `fecha_vencimiento` date NOT NULL,
  PRIMARY KEY (`recibo`),
  UNIQUE KEY `n_recibo_UNIQUE` (`recibo`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos_mens`
--

LOCK TABLES `pagos_mens` WRITE;
/*!40000 ALTER TABLE `pagos_mens` DISABLE KEYS */;
INSERT INTO `pagos_mens` VALUES (1,'ICU006','2000-01-20','12:25:51','Test2','Efectivo',0.00,200000.00,0.00,200000.00,'MENSUALIDAD','Pagado','2000-02-19'),(2,'ICU005','2000-01-01','12:27:47','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD','Pendiente','2000-01-31'),(3,'DZS959','2000-01-27','14:11:32','Test2','Efectivo',0.00,85500.00,4500.00,90000.00,'MENSUALIDAD','Pagado','2000-02-26'),(4,'DZS959','2023-07-14','14:35:52','Test2','Efectivo',0.00,85500.00,4500.00,90000.00,'MENSUALIDAD','Pagado','2000-03-27'),(5,'DZS959','2023-07-14','14:37:42','Test2','Efectivo',0.00,85500.00,4500.00,90000.00,'MENSUALIDAD','Pagado','2000-04-26'),(6,'ICU006','2023-07-14','17:42:41','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD','Pagado','2000-03-20'),(7,'ICU006','2023-07-14','17:42:46','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD','Pagado','2000-04-19'),(8,'ICU006','2023-07-14','17:42:50','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD','Pagado','2000-05-19'),(9,'AAA111','2023-07-14','18:05:26','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD','Pendiente','2023-08-13'),(10,'AAA111','2023-07-14','18:05:56','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD','Pendiente','2023-09-12'),(11,'AAA111','2023-07-14','18:42:45','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Julio 2023','Pendiente','2023-10-12'),(12,'AAA111','2023-07-14','18:43:23','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Julio 2023','Pendiente','2023-11-11'),(13,'AAA111','2023-07-14','18:45:51','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Julio 2023','Pendiente','2023-12-11'),(14,'AAA111','2023-07-14','18:45:55','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Julio 2023','Pendiente','2024-01-10'),(15,'ICU005','2023-07-14','18:47:01','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Julio 2000','Pendiente','2000-03-01'),(16,'ICU005','2023-07-14','18:47:45','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Julio 2000','Pendiente','2000-03-31'),(17,'AAA111','2023-07-14','18:48:12','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Enero 2024','Pendiente','2024-02-09'),(18,'AAA111','2023-07-14','18:48:14','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Febrero 2024','Pendiente','2024-03-10'),(19,'AAA111','2023-07-14','18:48:14','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Marzo 2024','Pendiente','2024-04-09'),(20,'AAA111','2023-07-14','18:48:15','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Abril 2024','Pendiente','2024-05-09'),(21,'AAA111','2023-07-14','18:48:15','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Mayo 2024','Pendiente','2024-06-08'),(22,'AAA111','2023-07-14','18:48:16','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Junio 2024','Pendiente','2024-07-08'),(23,'AAA111','2023-07-14','18:48:16','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Julio 2024','Pendiente','2024-08-07'),(24,'AAA111','2023-07-14','18:48:17','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Agosto 2024','Pendiente','2024-09-06'),(25,'AAA111','2023-07-14','18:48:18','Test2','Efectivo',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Septiembre 2024','Pagado','2024-10-06'),(26,'AAA111','2023-07-14','18:48:18','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Octubre 2024','Pendiente','2024-11-05'),(27,'AAA111','2023-07-14','18:48:19','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Noviembre 2024','Pendiente','2024-12-05'),(28,'AAA111','2023-07-14','18:48:19','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Diciembre 2024','Pendiente','2025-01-04'),(29,'AAA111','2023-07-14','18:48:20','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Enero 2025','Pendiente','2025-02-03'),(30,'AAA111','2023-07-14','18:48:21','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Febrero 2025','Pendiente','2025-03-05'),(31,'AAA111','2023-07-14','18:48:21','Test2','Efectivo',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Marzo 2025','Pagado','2025-04-04'),(32,'AAA111','2023-07-14','18:48:21','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Abril 2025','Pendiente','2025-05-04'),(33,'AAA111','2023-07-14','18:48:21','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Mayo 2025','Pendiente','2025-06-03'),(34,'AAA111','2023-07-14','18:48:22','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Junio 2025','Pendiente','2025-07-03'),(35,'AAA111','2023-07-14','18:48:22','Test','',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Julio 2025','Pendiente','2025-08-02'),(36,'AAA111','2023-07-14','18:48:22','Test2','Efectivo',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Agosto 2025','Pagado','2025-09-01'),(37,'AAA111','2023-07-14','18:48:22','Test2','Efectivo',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Septiembre 2025','Pagado','2025-10-01'),(38,'AAA111','2023-07-14','18:48:27','Test2','Efectivo',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Octubre 2025','Pagado','2025-10-31'),(39,'AAA111','2023-07-14','18:48:28','Test2','Efectivo',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Octubre 2025','Pagado','2025-11-30'),(40,'AAA111','2023-07-14','18:48:32','Test2','Efectivo',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Noviembre 2025','Pagado','2025-12-30'),(41,'ICU005','2023-07-14','18:49:20','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Marzo 2000','Pendiente','2000-04-30'),(42,'ICU005','2023-07-14','18:49:22','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Abril 2000','Pendiente','2000-05-30'),(43,'ICU005','2023-07-14','18:49:23','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Mayo 2000','Pendiente','2000-06-29'),(44,'ICU005','2023-07-14','18:49:23','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Junio 2000','Pendiente','2000-07-29'),(45,'ICU005','2023-07-14','18:49:24','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Julio 2000','Pendiente','2000-08-28'),(46,'ICU005','2023-07-14','18:49:25','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Agosto 2000','Pendiente','2000-09-27'),(47,'ICU005','2023-07-14','18:49:25','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Septiembre 2000','Pendiente','2000-10-27'),(48,'ICU005','2023-07-14','18:49:26','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Octubre 2000','Pendiente','2000-11-26'),(49,'ICU005','2023-07-14','18:49:27','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Noviembre 2000','Pendiente','2000-12-26'),(50,'ICU005','2023-07-14','18:49:27','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Diciembre 2000','Pendiente','2001-01-25'),(51,'ICU005','2023-07-14','18:49:28','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Enero 2001','Pendiente','2001-02-24'),(52,'ICU005','2023-07-14','18:49:28','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Febrero 2001','Pendiente','2001-03-26'),(53,'ICU005','2023-07-14','18:49:29','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Marzo 2001','Pendiente','2001-04-25'),(54,'ICU005','2023-07-14','18:49:29','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Abril 2001','Pendiente','2001-05-25'),(55,'ICU005','2023-07-14','18:49:30','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Mayo 2001','Pendiente','2001-06-24'),(56,'ICU005','2023-07-14','18:49:30','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Junio 2001','Pendiente','2001-07-24'),(57,'ICU005','2023-07-14','18:49:31','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Julio 2001','Pendiente','2001-08-23'),(58,'ICU005','2023-07-14','18:49:31','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Agosto 2001','Pendiente','2001-09-22'),(59,'ICU005','2023-07-14','18:49:32','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Septiembre 2001','Pendiente','2001-10-22'),(60,'ICU005','2023-07-14','18:49:33','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Octubre 2001','Pendiente','2001-11-21'),(61,'ICU005','2023-07-14','18:49:34','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Noviembre 2001','Pendiente','2001-12-21'),(62,'ICU005','2023-07-14','18:49:35','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Diciembre 2001','Pendiente','2002-01-20'),(63,'ICU005','2023-07-14','18:49:35','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Enero 2002','Pendiente','2002-02-19'),(64,'ICU005','2023-07-14','18:49:36','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Febrero 2002','Pendiente','2002-03-21'),(65,'ICU005','2023-07-14','18:49:36','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Marzo 2002','Pendiente','2002-04-20'),(66,'ICU005','2023-07-14','18:49:37','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Abril 2002','Pendiente','2002-05-20'),(67,'ICU005','2023-07-14','18:49:37','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Mayo 2002','Pendiente','2002-06-19'),(68,'ICU005','2023-07-14','18:49:38','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Junio 2002','Pendiente','2002-07-19'),(69,'ICU005','2023-07-14','18:49:38','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Julio 2002','Pendiente','2002-08-18'),(70,'ICU005','2023-07-14','18:49:39','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Agosto 2002','Pendiente','2002-09-17'),(71,'ICU005','2023-07-14','18:49:39','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Septiembre 2002','Pendiente','2002-10-17'),(72,'ICU005','2023-07-14','18:49:40','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Octubre 2002','Pendiente','2002-11-16'),(73,'ICU005','2023-07-14','18:49:40','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Noviembre 2002','Pendiente','2002-12-16'),(74,'ICU005','2023-07-14','18:49:41','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Diciembre 2002','Pendiente','2003-01-15'),(75,'ICU005','2023-07-14','18:49:44','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Enero 2003','Pendiente','2003-02-14'),(76,'ICU005','2023-07-14','18:49:45','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Febrero 2003','Pendiente','2003-03-16'),(77,'ICU005','2023-07-14','18:49:48','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Marzo 2003','Pendiente','2003-04-15'),(78,'ICU005','2023-07-14','18:49:48','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Abril 2003','Pendiente','2003-05-15'),(79,'ICU005','2023-07-14','18:49:49','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Mayo 2003','Pendiente','2003-06-14'),(80,'ICU005','2023-07-14','18:49:50','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Junio 2003','Pendiente','2003-07-14'),(81,'ICU005','2023-07-14','18:49:50','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Julio 2003','Pendiente','2003-08-13'),(82,'ICU005','2023-07-14','18:49:51','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Agosto 2003','Pendiente','2003-09-12'),(83,'ICU005','2023-07-14','18:49:52','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Septiembre 2003','Pendiente','2003-10-12'),(84,'ICU005','2023-07-14','18:49:53','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Octubre 2003','Pendiente','2003-11-11'),(85,'ICU005','2023-07-14','18:49:53','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Noviembre 2003','Pendiente','2003-12-11'),(86,'ICU005','2023-07-14','18:49:55','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Diciembre 2003','Pendiente','2004-01-10'),(87,'ICU005','2023-07-14','18:49:57','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Enero 2004','Pendiente','2004-02-09'),(88,'ICU005','2023-07-14','18:49:58','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Febrero 2004','Pendiente','2004-03-10'),(89,'ICU005','2023-07-14','18:49:59','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Marzo 2004','Pendiente','2004-04-09'),(90,'ICU005','2023-07-14','18:49:59','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Abril 2004','Pendiente','2004-05-09'),(91,'ICU005','2023-07-14','18:50:00','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Mayo 2004','Pendiente','2004-06-08'),(92,'ICU005','2023-07-14','18:50:00','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Junio 2004','Pendiente','2004-07-08'),(93,'ICU005','2023-07-14','18:50:01','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Julio 2004','Pendiente','2004-08-07'),(94,'ICU005','2023-07-14','18:50:02','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Agosto 2004','Pendiente','2004-09-06'),(95,'ICU005','2023-07-14','18:50:02','Test2','Efectivo',0.00,0.00,0.00,0.00,'MENSUALIDAD Septiembre 2004','Pagado','2004-10-06'),(96,'ICU005','2023-07-14','18:50:04','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Octubre 2004','Pendiente','2004-11-05'),(97,'ICU005','2023-07-14','18:50:04','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Noviembre 2004','Pendiente','2004-12-05'),(98,'AAA111','2023-07-14','18:54:48','Test2','Efectivo',0.00,171000.00,9000.00,180000.00,'MENSUALIDAD Diciembre 2025','Pagado','2026-01-29'),(99,'ICU006','2023-07-14','18:58:06','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Junio 2000','Pagado','2000-06-18'),(100,'ICU006','2023-07-14','18:58:15','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Julio 2000','Pagado','2000-07-18'),(101,'ICU006','2023-07-14','18:58:23','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Agosto 2000','Pagado','2000-08-17'),(102,'ICU006','2023-07-14','18:58:27','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Septiembre 2000','Pagado','2000-09-16'),(103,'ICU006','2023-07-14','18:58:30','Test2','Tarjeta crédito o débito',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Octubre 2000','Pagado','2000-10-16'),(104,'ICU006','2023-07-14','18:58:48','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Noviembre 2000','Pagado','2000-11-15'),(105,'ICU006','2023-07-14','18:58:49','Test2','Tarjeta crédito o débito',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Diciembre 2000','Pagado','2000-12-15'),(106,'ICU006','2023-07-14','18:58:50','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Enero 2001','Pagado','2001-01-14'),(107,'ICU006','2023-07-14','18:58:52','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Febrero 2001','Pagado','2001-02-13'),(108,'ICU006','2023-07-14','18:58:55','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Marzo 2001','Pagado','2001-03-15'),(109,'ICU006','2023-07-14','18:58:57','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Abril 2001','Pagado','2001-04-14'),(110,'ICU006','2023-07-14','18:58:58','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Mayo 2001','Pagado','2001-05-14'),(111,'ICU005','2023-07-14','19:06:00','Test','',0.00,0.00,0.00,0.00,'MENSUALIDAD Enero 2005','Pendiente','2023-01-04'),(112,'DZS959','2023-07-14','19:06:59','Test2','Efectivo',0.00,85500.00,4500.00,90000.00,'MENSUALIDAD Mayo 2000','Pagado','2000-05-26'),(113,'ICU006','2023-07-14','22:20:20','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Junio 2001','Pagado','2001-06-13'),(114,'DZS959','2023-07-15','22:46:16','Test','',0.00,85500.00,4500.00,90000.00,'MENSUALIDAD Junio 2000','Pendiente','2000-06-25'),(115,'DZS959','2023-07-15','22:46:47','Test','',0.00,85500.00,4500.00,90000.00,'MENSUALIDAD Julio 2000','Pendiente','2000-07-25'),(116,'DZS959','2023-07-15','22:46:47','Test','',0.00,85500.00,4500.00,90000.00,'MENSUALIDAD Agosto 2000','Pendiente','2000-08-24'),(117,'DZS959','2023-07-15','22:46:47','Test','',0.00,85500.00,4500.00,90000.00,'MENSUALIDAD Septiembre 2000','Pendiente','2000-09-23'),(118,'DZS959','2023-07-15','22:46:47','Test','',0.00,85500.00,4500.00,90000.00,'MENSUALIDAD Octubre 2000','Pendiente','2000-10-23'),(119,'DZS959','2023-07-15','22:46:47','Test','',0.00,85500.00,4500.00,90000.00,'MENSUALIDAD Noviembre 2000','Pendiente','2000-11-22'),(120,'DZS959','2023-07-15','22:46:48','Test','',0.00,85500.00,4500.00,90000.00,'MENSUALIDAD Diciembre 2000','Pendiente','2000-12-22'),(121,'DZS959','2023-07-15','22:46:50','Test','',0.00,85500.00,4500.00,90000.00,'MENSUALIDAD Enero 2001','Pendiente','2001-01-21'),(122,'DZS959','2023-07-15','22:46:50','Test','',0.00,85500.00,4500.00,90000.00,'MENSUALIDAD Febrero 2001','Pendiente','2001-02-20'),(123,'DZS959','2023-07-15','22:46:50','Test','',0.00,85500.00,4500.00,90000.00,'MENSUALIDAD Marzo 2001','Pendiente','2023-03-22'),(124,'OOO888','2023-07-15','22:47:42','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Agosto 2023','Pagado','2023-08-14'),(125,'OOO888','2023-07-16','12:25:47','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Septiembre 2023','Pagado','2023-09-13'),(126,'OOO888','2023-07-16','13:25:06','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Octubre 2023','Pagado','2023-10-13'),(127,'ICU006','2023-07-16','16:20:06','Test2','Efectivo',0.00,190000.00,10000.00,200000.00,'MENSUALIDAD Julio 2001','Pagado','2023-07-13'),(128,'YGF457','2023-07-16','17:50:14','Test','',0.00,42750.00,2250.00,45000.00,'MENSUALIDAD Agosto 2023','Pendiente','2023-08-15'),(129,'DZS959','2023-07-25','16:42:01','JR','',0.00,75630.25,14369.75,90000.00,'MENSUALIDAD Abril 2023','Pendiente','2023-04-21'),(130,'ICU005','2023-07-25','16:42:01','JR','',0.00,0.00,0.00,0.00,'MENSUALIDAD Febrero 2023','Pendiente','2023-02-03'),(131,'ICU006','2023-07-25','16:42:01','Test2','Efectivo',0.00,168067.23,31932.77,200000.00,'MENSUALIDAD Agosto 2023','Pagado','2023-08-12'),(132,'DZS959','2023-07-25','16:42:06','JR','',0.00,75630.25,14369.75,90000.00,'MENSUALIDAD Mayo 2023','Pendiente','2023-05-21'),(133,'ICU005','2023-07-25','16:42:06','JR','',0.00,0.00,0.00,0.00,'MENSUALIDAD Marzo 2023','Pendiente','2023-03-05'),(134,'DZS959','2023-07-25','16:42:12','JR','',0.00,75630.25,14369.75,90000.00,'MENSUALIDAD Junio 2023','Pendiente','2023-06-20'),(135,'ICU005','2023-07-25','16:42:12','JR','',0.00,0.00,0.00,0.00,'MENSUALIDAD Abril 2023','Pendiente','2023-04-04'),(136,'DZS959','2023-07-25','16:42:17','JR','',0.00,75630.25,14369.75,90000.00,'MENSUALIDAD Julio 2023','Pendiente','2023-07-20'),(137,'ICU005','2023-07-25','16:42:17','JR','',0.00,0.00,0.00,0.00,'MENSUALIDAD Mayo 2023','Pendiente','2023-05-04'),(138,'DZS959','2023-07-25','16:42:22','JR','',0.00,75630.25,14369.75,90000.00,'MENSUALIDAD Agosto 2023','Pendiente','2023-08-19'),(139,'ICU005','2023-07-25','16:42:22','JR','',0.00,0.00,0.00,0.00,'MENSUALIDAD Junio 2023','Pendiente','2023-06-03'),(140,'ICU005','2023-07-25','16:42:27','JR','',0.00,0.00,0.00,0.00,'MENSUALIDAD Julio 2023','Pendiente','2023-07-03'),(141,'ICU005','2023-07-25','16:42:32','JR','',0.00,0.00,0.00,0.00,'MENSUALIDAD Agosto 2023','Pendiente','2023-08-02'),(142,'ICU005','2023-08-19','16:44:00','JR','',0.00,0.00,0.00,0.00,'MENSUALIDAD Septiembre 2023','Pendiente','2023-09-01'),(143,'ICU006','2023-08-19','16:44:00','Test2','Efectivo',0.00,168067.23,31932.77,200000.00,'MENSUALIDAD Septiembre 2023','Pagado','2023-09-11'),(144,'YGF457','2023-08-19','16:44:00','JR','',0.00,37815.13,7184.87,45000.00,'MENSUALIDAD Septiembre 2023','Pendiente','2023-09-14'),(145,'DZS959','2023-08-20','16:44:24','Test2','Efectivo',0.00,75630.25,14369.75,90000.00,'MENSUALIDAD Septiembre 2023','Pagado','2023-09-18'),(146,'ICU005','2023-09-12','16:46:49','JR','',0.00,0.00,0.00,0.00,'MENSUALIDAD Octubre 2023','Pendiente','2023-10-01'),(147,'ICU006','2023-09-12','16:46:49','Test2','Efectivo',0.00,168067.23,31932.77,200000.00,'MENSUALIDAD Octubre 2023','Pagado','2023-10-11');
/*!40000 ALTER TABLE `pagos_mens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifas`
--

DROP TABLE IF EXISTS `tarifas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarifas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `tipo_vehiculo` varchar(2) NOT NULL,
  `tipo_tarifa` varchar(25) NOT NULL,
  `valor_x_hora` decimal(9,2) NOT NULL,
  `valor_hora_adicional` decimal(9,2) NOT NULL DEFAULT '0.00',
  `valor_max_hora` decimal(9,2) NOT NULL DEFAULT '0.00',
  `valor_diurno` decimal(9,2) NOT NULL DEFAULT '0.00',
  `valor_max_diurno` decimal(9,2) NOT NULL DEFAULT '0.00',
  `valor_nocturno` decimal(9,2) NOT NULL DEFAULT '0.00',
  `valor_max_nocturno` decimal(9,2) NOT NULL DEFAULT '0.00',
  `horario` varchar(50) NOT NULL,
  `min_generar_cobro` tinyint NOT NULL,
  `min_generar_cobro_adi` tinyint NOT NULL,
  `dias_validos` varchar(7) NOT NULL,
  `tarifa_activa` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifas`
--

LOCK TABLES `tarifas` WRITE;
/*!40000 ALTER TABLE `tarifas` DISABLE KEYS */;
INSERT INTO `tarifas` VALUES (1,'CARRO','V','Sencilla',4000.00,3000.00,0.00,0.00,0.00,0.00,0.00,'DDDDDDDDDDDDDDDDDDNDDDDD',6,6,'1111111',1),(4,'CAMION','CA','Sencilla',2000.00,1000.00,20000.00,0.00,0.00,0.00,0.00,'DDDDDDDDDDDDDDDDDDDDDDDD',25,0,'1100111',1),(6,'MOTOS','M','Por conteo de horas',1000.00,1000.00,0.00,1000.00,9000.00,2000.00,10000.00,'NNNNNNDDDDDDDDDDDDNNNNNN',6,6,'1111001',1),(7,'CARROS','V','Sencilla',1500.00,0.00,0.00,0.00,0.00,0.00,0.00,'DDDDDDDDDDDDDDDDDDDDDDDD',10,5,'1011010',1),(8,'Motos Noche 2','V','Sencilla',1000.00,500.00,9.00,0.00,0.00,0.00,0.00,'DDDDDDDNNNNNNNNDDDDDDDDD',0,4,'0010011',1),(14,'VEHICULO','V','Sencilla',1000.00,500.00,0.00,0.00,0.00,0.00,0.00,'DDDDDDDDDDDDDDDDDDDDDDDD',5,5,'1111111',1);
/*!40000 ALTER TABLE `tarifas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL DEFAULT '',
  `nombre` varchar(45) NOT NULL DEFAULT '',
  `tipo_doc` varchar(45) DEFAULT NULL,
  `n_doc` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `ultimo_ingreso` datetime NOT NULL DEFAULT '2023-01-01 00:00:00',
  `balance` tinyint NOT NULL DEFAULT '0',
  `descuentos` tinyint NOT NULL DEFAULT '0',
  `liquidar` tinyint NOT NULL DEFAULT '0',
  `notificar` tinyint NOT NULL DEFAULT '0',
  `crear_men` tinyint NOT NULL DEFAULT '0',
  `crear_quin` tinyint NOT NULL DEFAULT '0',
  `pago_men` tinyint NOT NULL DEFAULT '0',
  `pago_quin` tinyint NOT NULL DEFAULT '0',
  `editar_men` tinyint NOT NULL DEFAULT '0',
  `editar_quin` tinyint NOT NULL DEFAULT '0',
  `anular` tinyint NOT NULL DEFAULT '0',
  `tiempo_anular` tinyint NOT NULL DEFAULT '0',
  `editar_recibos` tinyint NOT NULL DEFAULT '0',
  `editar_tarifa` tinyint NOT NULL DEFAULT '0',
  `activo` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idusuarios_UNIQUE` (`id`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'ADMIN','','Administrador del sistemas','','None','123456789','2023-01-01 00:00:00',0,0,1,0,0,0,1,0,0,1,0,0,0,0,0),(4,'ALEJA','','Aleja Tasconi','Cédula de ciudadanía','12455211','1245555','2023-01-01 00:00:00',0,0,0,0,0,0,0,1,1,0,0,4,1,1,1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_venta` int unsigned NOT NULL AUTO_INCREMENT,
  `recibo` int unsigned NOT NULL,
  `placa` varchar(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `hora_entrada` time NOT NULL,
  `fecha_salida` date NOT NULL,
  `hora_salida` time NOT NULL,
  `tiempo_parking` varchar(50) NOT NULL,
  `medio_pago` varchar(60) NOT NULL,
  `descuento` decimal(10,2) NOT NULL,
  `valor_base` decimal(12,2) NOT NULL,
  `valor_iva` decimal(11,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `ingresado_por` varchar(100) NOT NULL,
  `facturado_por` varchar(100) NOT NULL,
  `nota` varchar(120) NOT NULL DEFAULT '',
  `liquidacion` int unsigned DEFAULT '0',
  `tipo_vehiculo` char(2) NOT NULL DEFAULT '',
  `tarifa` varchar(50) NOT NULL DEFAULT '',
  `concepto` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_venta`),
  UNIQUE KEY `id_venta_UNIQUE` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,'ICU006','2023-04-30','16:07:16','2023-06-14','00:26:21','44 Días + 8 Horas + 20 Minutos','Efectivo',0.00,17000.00,0.00,17000.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(2,2,'ICU005','2023-05-03','01:38:59','2023-06-14','00:26:01','41 Días + 22 Horas + 48 Minutos','Efectivo',0.00,17000.00,0.00,17000.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(3,3,'DZS959','2023-05-03','01:50:46','2023-06-13','00:22:09','41 Días + 22 Horas + 32 Minutos','Efectivo',0.00,504000.00,0.00,504000.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(4,4,'POB123','2023-05-03','01:52:12','2023-06-14','00:28:09','41 Días + 22 Horas + 36 Minutos','Efectivo',0.00,17000.00,0.00,17000.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(5,5,'ACS123','2023-05-03','01:52:18','2023-06-15','00:28:16','41 Días + 22 Horas + 36 Minutos','Efectivo',0.00,17000.00,0.00,17000.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(6,6,'MOT12A','2023-05-03','01:55:46','2023-07-09','18:18:02','67 Días + 16 Horas + 23 Minutos','Efectivo',0.00,19000.00,0.00,19000.00,'ADMIN','JR','',7,'M','MOTOS','Parking'),(7,7,'381ABH','2023-05-03','01:56:35','2023-06-14','00:28:34','41 Días + 22 Horas + 32 Minutos','Efectivo',4000.00,500000.00,0.00,500000.00,'ADMIN','JR','',8,'CM','CARRO','Parking'),(8,11,'852SSS','2023-06-04','17:59:35','2023-07-09','18:20:34','35 Días + 0 Horas + 21 Minutos','Efectivo',0.00,9.00,0.00,9.00,'ADMIN','JR','',6,'CM','Motos Noche 2','Parking'),(9,16,'ICU010','2023-06-13','01:04:59','2023-06-14','00:27:59','23 Horas + 23 Minutos','Efectivo',0.00,13500.00,0.00,13500.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(10,17,'MKS15P','2023-06-13','01:05:11','2023-06-14','00:27:00','23 Horas + 22 Minutos','Tarjeta crédito o débito',0.00,19000.00,0.00,19000.00,'ADMIN','JR','',7,'M','MOTOS','Parking'),(11,18,'UUU888','2023-06-13','18:16:54','2023-06-14','00:26:42','6 Horas + 10 Minutos','Efectivo',0.00,5000.00,0.00,10050000.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(12,19,'SSS888','2023-06-15','09:22:07','2023-06-15','09:29:33','0 Horas + 8 Minutos','Efectivo',0.00,2000.00,0.00,2000.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(13,22,'PPP555','2023-06-15','22:22:55','2023-07-09','18:13:51','23 Días + 19 Horas + 51 Minutos','Efectivo',0.00,9.00,0.00,9.00,'ADMIN','JR','',6,'V','Motos Noche 2','Parking'),(14,24,'TYH15G','2023-06-15','22:23:30','2023-07-09','18:15:57','23 Días + 19 Horas + 53 Minutos','Efectivo',0.00,19000.00,0.00,19000.00,'ADMIN','JR','',7,'M','MOTOS','Parking'),(15,25,'GGG64M','2023-06-15','22:23:46','2023-06-15','23:44:12','1 Horas + 21 Minutos','Tarjeta crédito o débito',0.00,4000.00,0.00,4000.00,'ADMIN','JR','ok',7,'M','MOTOS','Parking'),(16,26,'DZS959','2023-06-16','21:03:13','2023-07-09','12:50:52','22 Días + 15 Horas + 48 Minutos','Efectivo',0.00,272500.00,0.00,272500.00,'ADMIN','JR','',8,'V','VEHICULO','Parking'),(17,8,'ASU456','2023-06-04','16:59:35','2023-07-14','20:12:21','40 Días + 3 Horas + 13 Minutos','Efectivo',0.00,482500.00,0.00,482500.00,'ADMIN','JR','',8,'V','VEHICULO','Parking'),(18,9,'IIU789','2023-06-04','20:58:47','2023-07-14','20:12:32','39 Días + 23 Horas + 14 Minutos','Efectivo',0.00,480500.00,0.00,480500.00,'ADMIN','JR','',8,'V','VEHICULO','Parking'),(20,27,'KJC445','2023-07-14','20:03:29','2023-07-14','20:21:09','0 Horas + 18 Minutos','Efectivo',0.00,1000.00,0.00,1000.00,'ADMIN','JR','',8,'V','VEHICULO','Parking'),(21,0,'ICU005','2023-07-14','22:13:13','2023-07-14','22:13:13','','Efectivo',0.00,0.00,0.00,0.00,'Test2','Test2','',8,'','','MENSUALIDAD Septiembre 2004'),(23,0,'ICU006','2023-07-14','22:20:31','2023-07-14','22:20:31','','Efectivo',0.00,190000.00,10000.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD Junio 2001'),(24,0,'DZS959','2023-07-14','22:22:46','2023-07-14','22:22:46','','Efectivo',0.00,85500.00,4500.00,90000.00,'Test2','Test2','',8,'','','MENSUALIDAD'),(25,0,'AAA111','2023-07-14','22:27:24','2023-07-14','22:27:24','','Efectivo',0.00,171000.00,9000.00,180000.00,'Test2','Test2','',8,'','','MENSUALIDAD Marzo 2025'),(26,0,'ICU006','2023-07-14','22:34:54','2023-07-14','22:34:54','','Efectivo',0.00,190000.00,10000.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD'),(27,0,'ICU006','2023-07-14','22:35:31','2023-07-14','22:35:31','','Efectivo',0.00,190000.00,10000.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD Enero 2001'),(28,0,'ICU006','2023-07-14','22:35:38','2023-07-14','22:35:38','','Efectivo',0.00,190000.00,10000.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD'),(29,0,'ICU006','2023-07-14','22:35:44','2023-07-14','22:35:44','','Efectivo',0.00,190000.00,10000.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD Noviembre 2000'),(30,0,'ICU006','2023-07-14','22:35:51','2023-07-14','22:35:51','','Tarjeta crédito o débito',0.00,190000.00,10000.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD Octubre 2000'),(31,0,'DZS959','2023-07-15','22:19:04','2023-07-15','22:19:04','','Efectivo',0.00,85500.00,4500.00,90000.00,'Test2','Test2','',8,'','','MENSUALIDAD'),(32,0,'DZS959','2023-07-15','22:19:16','2023-07-15','22:19:16','','Efectivo',0.00,85500.00,4500.00,90000.00,'Test2','Test2','enero',8,'','','MENSUALIDAD'),(33,0,'DZS959','2023-07-15','22:43:48','2023-07-15','22:43:48','','Efectivo',0.00,85500.00,4500.00,90000.00,'Test2','Test2','',8,'','','MENSUALIDAD Mayo 2000'),(34,0,'OOO888','2023-07-16','12:23:52','2023-07-16','12:23:52','','Efectivo',0.00,190000.00,10000.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD Agosto 2023'),(35,0,'OOO888','2023-07-16','12:26:07','2023-07-16','12:26:07','','Efectivo',0.00,190000.00,10000.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD Septiembre 2023'),(36,0,'ICU006','2023-07-16','12:27:04','2023-07-16','12:27:04','','Efectivo',0.00,200000.00,0.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD'),(37,0,'ICU006','2023-07-16','12:27:09','2023-07-16','12:27:09','','Efectivo',0.00,190000.00,10000.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD'),(38,0,'ICU006','2023-07-16','12:27:14','2023-07-16','12:27:14','','Efectivo',0.00,190000.00,10000.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD Junio 2000'),(39,0,'ICU006','2023-07-16','12:27:20','2023-07-16','12:27:20','','Efectivo',0.00,190000.00,10000.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD Julio 2000'),(40,0,'ICU006','2023-07-16','12:27:26','2023-07-16','12:27:26','','Efectivo',0.00,190000.00,10000.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD Agosto 2000'),(41,0,'ICU006','2023-07-16','12:27:30','2023-07-16','12:27:30','','Efectivo',0.00,190000.00,10000.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD Septiembre 2000'),(42,0,'OOO888','2023-07-16','13:29:23','2023-07-16','13:29:23','','Efectivo',0.00,190000.00,10000.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD Octubre 2023'),(43,0,'ICU006','2023-07-16','16:21:25','2023-07-16','16:21:25','','Efectivo',0.00,190000.00,10000.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD Julio 2001'),(44,0,'ICU006','2023-08-20','16:45:41','2023-08-20','16:45:41','','Efectivo',0.00,168067.00,31933.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD Agosto 2023'),(45,0,'ICU006','2023-08-20','16:45:49','2023-08-20','16:45:49','','Efectivo',0.00,168067.00,31933.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD Septiembre 2023'),(46,0,'ICU006','2023-09-12','16:48:18','2023-09-12','16:48:18','','Efectivo',0.00,168067.00,31933.00,200000.00,'Test2','Test2','',8,'','','MENSUALIDAD Octubre 2023'),(47,0,'DZS959','2023-07-25','17:11:36','2023-07-25','17:11:36','','Efectivo',0.00,75630.00,14370.00,90000.00,'Test2','Test2','',4,'','','MENSUALIDAD Septiembre 2023'),(48,1027,'328ABH','2023-07-27','00:18:30','2023-07-27','00:21:55','0 Horas + 4 Minutos','Efectivo',0.00,2000.00,0.00,2000.00,'ADMIN','JR','',8,'CM','CARRO','Parking'),(49,1025,'AAA444','2023-07-27','00:17:19','2023-07-27','00:26:07','0 Horas + 9 Minutos','Efectivo',0.00,2000.00,0.00,2000.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(50,1021,'SSS555','2023-07-27','00:09:33','2023-07-27','17:43:48','17 Horas + 35 Minutos','Efectivo',0.00,10500.00,0.00,10500.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(51,1032,'AAA123','2023-07-27','17:37:22','2023-07-27','17:44:07','0 Horas + 7 Minutos','Tarjeta crédito o débito',0.00,2000.00,0.00,2000.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(52,1023,'ALE456','2023-07-27','00:14:44','2023-07-27','17:56:45','17 Horas + 43 Minutos','Efectivo',0.00,10500.00,0.00,10500.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(53,1024,'ALE127','2023-07-27','00:15:59','2023-07-27','17:57:09','17 Horas + 42 Minutos','Efectivo',0.00,10500.00,0.00,10500.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(54,1021,'SSS555','2023-07-27','00:09:33','2023-07-27','18:12:43','18 Horas + 4 Minutos','Efectivo',0.00,11000.00,0.00,11000.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(55,33,'ICU004','2023-07-26','17:34:07','2023-07-27','18:17:34','1 Día + 0 Horas + 44 Minutos','Efectivo',0.00,14000.00,0.00,14000.00,'JR','JR','',8,'V','CARRO','Parking'),(56,1031,'AAA222','2023-07-27','17:37:16','2023-07-27','18:19:49','0 Horas + 43 Minutos','Efectivo',0.00,2000.00,0.00,2000.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(57,1033,'AAA015','2023-07-27','17:37:46','2023-07-27','18:22:12','0 Horas + 45 Minutos','Efectivo',0.00,2000.00,0.00,2000.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(58,1039,'IIH654','2023-07-27','18:33:22','2023-07-27','18:33:47','0 Horas + 1 Minutos','Efectivo',0.00,2000.00,0.00,2000.00,'ADMIN','JR','',8,'V','CARRO','Parking'),(59,1038,'RRR222','2023-07-27','18:32:37','2023-07-29','23:30:37','2 Días + 4 Horas + 59 Minutos','Efectivo',0.00,28000.00,0.00,28000.00,'ADMIN','JR','',9,'V','CARRO','Parking'),(60,9,'IIU789','2023-06-04','20:58:47','2023-07-30','00:09:00','55 Días + 3 Horas + 11 Minutos','Efectivo',0.00,9.00,0.00,9.00,'ADMIN','JR','',10,'V','Motos Noche 2','Parking'),(61,14,'IUU754','2023-06-02','13:18:01','2023-07-30','00:09:26','57 Días + 10 Horas + 52 Minutos','Efectivo',0.00,9.00,0.00,9.00,'ADMIN','JR','',10,'V','Motos Noche 2','Parking'),(62,1025,'AAA444','2023-07-27','00:17:19','2023-07-30','00:09:56','2 Días + 23 Horas + 53 Minutos','Efectivo',0.00,9.00,0.00,9.00,'ADMIN','JR','',10,'V','Motos Noche 2','Parking'),(63,32,'ICU002','2023-07-26','17:34:00','2023-07-30','00:35:45','3 Días + 7 Horas + 2 Minutos','Efectivo',0.00,9.00,0.00,9.00,'JR','JR','',10,'V','Motos Noche 2','Parking'),(64,1026,'ASD54K','2023-07-27','00:17:54','2023-07-30','00:45:41','3 Días + 0 Horas + 28 Minutos','Tarjeta crédito o débito',0.00,19000.00,0.00,19000.00,'ADMIN','JR','',10,'M','MOTOS','Parking'),(65,1035,'OIU444','2023-07-27','17:52:35','2023-07-30','00:50:18','2 Días + 6 Horas + 58 Minutos','Efectivo',0.00,28000.00,0.00,28000.00,'ADMIN','JR','',10,'V','VEHICULO','Parking'),(66,1036,'AKC222','2023-07-27','18:28:21','2023-07-30','00:56:19','2 Días + 6 Horas + 28 Minutos','Efectivo',0.00,1400.00,26600.00,28000.00,'ADMIN','JR','',10,'V','VEHICULO','Parking'),(67,1034,'AAA111','2023-07-27','17:46:38','2023-07-30','00:57:52','2 Días + 7 Horas + 12 Minutos','Efectivo',0.00,23949.58,4550.42,28500.00,'ADMIN','JR','',10,'V','VEHICULO','Parking'),(68,1037,'WWW555','2023-07-27','18:32:24','2023-07-30','13:14:53','2 Días + 18 Horas + 43 Minutos','Tarjeta crédito o débito',0.00,7.56,1.44,9.00,'ADMIN','JR','',11,'V','Motos Noche 2','Parking'),(69,1020,'PPP452','2023-06-15','22:22:37','2023-07-30','13:15:23','44 Días + 14 Horas + 53 Minutos','Efectivo',0.00,450420.17,85579.83,536000.00,'ADMIN','JR','',11,'V','VEHICULO','Parking'),(70,31,'ICU001','2023-07-19','17:29:59','2023-07-30','13:18:58','10 Días + 19 Horas + 49 Minutos','Efectivo',0.00,7.56,1.44,9.00,'ADMIN','JR','',11,'V','Motos Noche 2','Parking'),(71,30,'III444','2023-07-26','16:18:35','2023-07-30','13:19:18','3 Días + 21 Horas + 1 Minutos','Tarjeta crédito o débito',0.00,39915.97,7584.03,47500.00,'ADMIN','JR','',11,'V','VEHICULO','Parking'),(72,28,'OIS452','2023-07-26','11:15:03','2023-07-30','13:25:19','4 Días + 2 Horas + 11 Minutos','Efectivo',0.00,7.56,1.44,9.00,'ADMIN','JR','',12,'V','Motos Noche 2','Parking'),(73,11,'852SSS','2023-06-04','17:59:35','2023-07-30','13:25:36','55 Días + 19 Horas + 27 Minutos','Tarjeta crédito o débito',0.00,563445.38,107054.62,670500.00,'ADMIN','JR','',12,'CM','VEHICULO','Parking'),(74,1041,'ADC25F','2023-07-30','13:30:32','2023-07-30','13:30:45','0 Horas + 1 Minutos','Efectivo',0.00,1680.67,319.33,2000.00,'ADMIN','JR','',13,'M','MOTOS','Parking'),(75,1040,'JHS512','2023-07-30','13:30:27','2023-07-30','13:31:00','0 Horas + 1 Minutos','Efectivo',0.00,7.56,1.44,9.00,'ADMIN','JR','',13,'V','Motos Noche 2','Parking'),(76,1042,'IUC664','2023-07-31','10:54:25','2023-07-31','18:21:38','7 Horas + 28 Minutos','Tarjeta crédito o débito',0.00,21008.40,3991.60,25000.00,'ADMIN','JR','',0,'V','CARRO','Parking'),(77,1043,'UJN452','2023-07-31','21:06:27','2023-07-31','21:33:31','0 Horas + 28 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'ADMIN','JR','',0,'V','CARRO','Parking'),(78,1043,'UJN452','2023-07-31','21:06:27','2023-07-31','21:34:21','0 Horas + 28 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'ADMIN','JR','',0,'V','CARRO','Parking'),(79,1043,'UJN452','2023-07-31','21:06:27','2023-07-31','21:35:35','0 Horas + 30 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'ADMIN','JR','',0,'V','CARRO','Parking'),(80,1043,'UJN452','2023-07-31','21:06:27','2023-07-31','21:36:09','0 Horas + 30 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'ADMIN','JR','',0,'V','CARRO','Parking'),(81,12,'AHC22S','2023-06-04','23:59:41','2023-07-31','21:38:52','56 Días + 21 Horas + 40 Minutos','Efectivo',0.00,15966.39,3033.61,19000.00,'ADMIN','JR','',0,'M','MOTOS','Parking'),(82,8,'ASU456','2023-06-04','16:59:35','2023-07-31','21:58:28','57 Días + 4 Horas + 59 Minutos','Efectivo',0.00,3462184.87,657815.13,4120000.00,'ADMIN','ADMIN','',0,'V','CARRO','Parking'),(83,1044,'IUC444','2023-07-31','22:00:13','2023-07-31','22:00:32','0 Horas + 1 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'ADMIN','ADMIN','',0,'V','CARRO','Parking'),(84,1045,'OOO555','2023-07-31','22:15:04','2023-07-31','22:15:06','0 Horas + 1 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'ADMIN','Administrador del sistemas','',14,'V','CARRO','Parking'),(85,1046,'HHG451','2023-07-31','23:00:57','2023-07-31','23:01:14','0 Horas + 1 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'ADMIN','Administrador del sistemas','',15,'V','CARRO','Parking'),(86,1047,'MCN555','2023-07-31','23:01:03','2023-07-31','23:01:26','0 Horas + 1 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'ADMIN','Administrador del sistemas','',15,'V','CARRO','Parking'),(87,1050,'ART527','2023-07-31','23:39:55','2023-07-31','23:40:45','0 Horas + 1 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'ALEJA','Aleja Tasconi','MAZDA BLANCO ',16,'V','CARRO','Parking'),(88,1049,'YSA444','2023-07-31','23:39:20','2023-07-31','23:48:28','0 Horas + 10 Minutos','Tarjeta crédito o débito',0.00,3361.34,638.66,4000.00,'ADMIN','Aleja Tasconi','',16,'V','CARRO','Parking'),(89,1054,'GRF45E','2023-08-01','00:04:17','2023-08-01','00:04:59','0 Horas + 1 Minutos','Efectivo',0.00,1680.67,319.33,2000.00,'ALEJA','Aleja Tasconi','',16,'M','MOTOS','Parking'),(90,1053,'LOU875','2023-08-01','00:03:30','2023-08-01','00:05:47','0 Horas + 3 Minutos','Tarjeta crédito o débito',0.00,3361.34,638.66,4000.00,'ALEJA','Aleja Tasconi','',16,'V','CARRO','Parking'),(91,1052,'ERT58P','2023-08-01','00:02:59','2023-08-01','00:06:02','0 Horas + 4 Minutos','Efectivo',0.00,1680.67,319.33,2000.00,'ALEJA','Aleja Tasconi','',16,'M','MOTOS','Parking'),(92,1051,'OFR587','2023-08-01','00:00:46','2023-08-01','00:08:10','0 Horas + 8 Minutos','Tarjeta crédito o débito',0.00,3361.34,638.66,4000.00,'ALEJA','Aleja Tasconi','',16,'V','CARRO','Parking'),(93,1048,'SSP444','2023-07-31','23:01:13','2023-08-01','00:08:57','1 Horas + 8 Minutos','Efectivo',0.00,5882.35,1117.65,7000.00,'ADMIN','Aleja Tasconi','',16,'V','CARRO','Parking'),(94,1057,'SDE478','2023-07-31','23:30:48','2023-07-31','23:30:57','0 Horas + 1 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'ALEJA','Aleja Tasconi','',17,'V','CARRO','Parking'),(95,1056,'WHW785','2023-07-31','23:30:35','2023-07-31','23:31:09','0 Horas + 1 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'ALEJA','Aleja Tasconi','',17,'V','CARRO','Parking'),(96,1055,'FEG27E','2023-07-31','23:29:11','2023-07-31','23:31:18','0 Horas + 3 Minutos','Tarjeta crédito o débito',0.00,1680.67,319.33,2000.00,'ALEJA','Aleja Tasconi','',17,'M','MOTOS','Parking'),(97,1060,'DTG85G','2023-07-31','23:35:37','2023-07-31','23:36:56','0 Horas + 2 Minutos','Efectivo',0.00,1680.67,319.33,2000.00,'ALEJA','Aleja Tasconi','',0,'M','MOTOS','Parking'),(98,1059,'WHW885','2023-07-31','23:35:28','2023-07-31','23:37:25','0 Horas + 2 Minutos','Tarjeta crédito o débito',0.00,3361.34,638.66,4000.00,'ALEJA','Aleja Tasconi','',0,'V','CARRO','Parking'),(99,1058,'LIU458','2023-07-31','23:35:12','2023-07-31','23:37:35','0 Horas + 3 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'ALEJA','Aleja Tasconi','',0,'V','CARRO','Parking');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-01  0:39:03
