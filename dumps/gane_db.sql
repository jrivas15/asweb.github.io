-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: gane_db
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
-- Table structure for table `consignaciones`
--

DROP TABLE IF EXISTS `consignaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consignaciones` (
  `ID` int NOT NULL DEFAULT '1',
  `fecha` date NOT NULL DEFAULT '2022-12-30' COMMENT '\\n',
  `cajero` varchar(45) NOT NULL DEFAULT '',
  `a_consignar` double NOT NULL DEFAULT '0',
  `consignado` double NOT NULL DEFAULT '0',
  `diferencia` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consignaciones`
--

LOCK TABLES `consignaciones` WRITE;
/*!40000 ALTER TABLE `consignaciones` DISABLE KEYS */;
INSERT INTO `consignaciones` VALUES (1,'2023-03-04','ADMIN',1000000,1000000,0);
/*!40000 ALTER TABLE `consignaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturacion`
--

DROP TABLE IF EXISTS `facturacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturacion` (
  `idfacturacion` int NOT NULL AUTO_INCREMENT,
  `years` year NOT NULL,
  PRIMARY KEY (`idfacturacion`),
  UNIQUE KEY `idfacturacion_UNIQUE` (`idfacturacion`),
  UNIQUE KEY `years_UNIQUE` (`years`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturacion`
--

LOCK TABLES `facturacion` WRITE;
/*!40000 ALTER TABLE `facturacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos` (
  `id_reg` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL DEFAULT '2022-12-30',
  `cajero` varchar(45) NOT NULL,
  `saldo_ant` double NOT NULL DEFAULT '0',
  `b_100` int NOT NULL DEFAULT '0',
  `b_50` int NOT NULL DEFAULT '0',
  `b_20` int NOT NULL DEFAULT '0',
  `b_10` int NOT NULL DEFAULT '0',
  `b_5` int NOT NULL DEFAULT '0',
  `b_2` int NOT NULL DEFAULT '0',
  `m_1000` int NOT NULL DEFAULT '0',
  `m_500` int NOT NULL DEFAULT '0',
  `m_200` int NOT NULL DEFAULT '0',
  `m_100` int NOT NULL DEFAULT '0',
  `m_50` int NOT NULL DEFAULT '0',
  `i_giros_enviados` double NOT NULL DEFAULT '0',
  `cant_giros_enviados` int NOT NULL DEFAULT '0',
  `i_fletes_giros` double NOT NULL DEFAULT '0',
  `e_giros_nacionales` double NOT NULL DEFAULT '0',
  `cant_egre_giros_nac` int NOT NULL DEFAULT '0',
  `provisiones` double DEFAULT '0',
  `e_giros_intern` double NOT NULL DEFAULT '0',
  `i_recarga_betplay` double NOT NULL DEFAULT '0',
  `e_retiro_betplay` double NOT NULL DEFAULT '0',
  `i_seguro` double NOT NULL DEFAULT '0',
  `e_seguro` double NOT NULL DEFAULT '0',
  `e_anulacion_giros` double NOT NULL DEFAULT '0',
  `i_acciones_valores` double NOT NULL DEFAULT '0',
  `e_acciones_valores` double NOT NULL DEFAULT '0',
  `i_soat` double NOT NULL DEFAULT '0',
  `saldo_parcial` double NOT NULL DEFAULT '0',
  `e_gastos_legalizar` double NOT NULL DEFAULT '0',
  `i_gastos_legalizados` double NOT NULL DEFAULT '0',
  `nuevo_saldo` double NOT NULL DEFAULT '0',
  `i_soat_credito` double NOT NULL DEFAULT '0',
  `i_soat_contado` double NOT NULL DEFAULT '0',
  `i_soat_credito1` double NOT NULL DEFAULT '0',
  `total_soat_vendido` double NOT NULL DEFAULT '0',
  `cant_soat_vendidos` int NOT NULL DEFAULT '0',
  `ingresos_emcali` double NOT NULL DEFAULT '0',
  `cant_ingr_emcali` int NOT NULL DEFAULT '0',
  `ingresos_x_reg` double NOT NULL DEFAULT '0',
  `cant_ingresos_x_reg` int NOT NULL DEFAULT '0',
  `ingresos_recargas` double NOT NULL DEFAULT '0',
  `cant_ingresos_recargas` int NOT NULL DEFAULT '0',
  `i_soat_efectivo_acs_sg` double NOT NULL DEFAULT '0',
  `cant_i_soat_efectivo_acs_sg` int NOT NULL DEFAULT '0',
  `i_soat_vend_acs_sg` double NOT NULL DEFAULT '0',
  `cant_i_soat_vend_acs_sg` int NOT NULL DEFAULT '0',
  `i_soat_virtual` double NOT NULL DEFAULT '0',
  `cant_i_soat_virtual` int NOT NULL DEFAULT '0',
  `i_otros_soat_redcolsa` double NOT NULL DEFAULT '0',
  `cant_i_otros_soat_redcolsa` int NOT NULL DEFAULT '0',
  `total_soat` double NOT NULL DEFAULT '0',
  `e_comision` double NOT NULL DEFAULT '0',
  `e_pago_soat` double NOT NULL DEFAULT '0',
  `saldo_x_pagar_soat` double NOT NULL DEFAULT '0',
  `soat_distrito_acs` double NOT NULL DEFAULT '0',
  `cant_soat_distrito_acs` int NOT NULL DEFAULT '0',
  `varios` double NOT NULL DEFAULT '0',
  `cant_varios` int NOT NULL DEFAULT '0',
  `cxp_gane` double NOT NULL DEFAULT '0',
  `consignar` double NOT NULL DEFAULT '0',
  `saldo_ant_recargas` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_reg`),
  UNIQUE KEY `id_reg_UNIQUE` (`id_reg`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos`
--

LOCK TABLES `movimientos` WRITE;
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
INSERT INTO `movimientos` VALUES (2,'2022-12-30','ADMIN',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,'2022-12-30','ADMIN',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,'2022-12-30','ADMIN',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,108,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(5,'2022-12-30','ADMIN',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10754868,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,'2023-02-23','ADMIN',12343750,120,6,2,0,0,1,1,1,1,0,1,4066637,0,165163,11624104,0,30000000,21018838,0,0,0,0,0,0,0,0,12343726,0,0,12343726,0,0,0,0,0,2954786,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2954786,0,0,1857554,0,-28411142,4812340,0),(8,'2023-02-24','ADMIN',9313900,90,6,0,1,0,1,1,1,1,0,4,2800700,0,113700,2916600,0,15000000,18027636,0,0,0,0,0,0,0,0,9313890,0,0,9313890,0,0,0,0,0,7238734,0,0,0,-12000,0,0,0,0,0,0,0,0,0,0,0,0,7250734,0,0,568823,0,-18029836,7819557,0),(13,'2023-02-25','ADMIN',39313900,350,80,15,1,0,1,1,1,1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9313890,0,0,9313890,0,0,0,0,0,0,0,0,0,1500000,0,0,0,0,0,0,0,0,0,0,0,0,2500000,0,0,0,0,0,2500000,0),(21,'2023-03-03','ADMIN',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500000,0,0,0,0,0,0,0,0,0,10813890,0,0,10813890,0,0,0,0,0,0,0,0,0,1000000,0,0,0,0,0,0,0,0,0,0,0,0,1000000,0,0,0,0,0,1000000,-2000000),(23,'2023-03-04','ADMIN',400000,4,0,0,0,0,0,0,0,0,0,0,4500000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15313890,0,0,15313890,0,0,0,0,0,0,0,0,0,250000,0,0,0,0,0,0,0,0,0,0,0,0,250000,0,0,750000,0,4500000,1000000,-2000000),(25,'2022-12-30','ADMIN',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(27,'2022-12-30','ADMIN',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(28,'2022-12-30','Ana',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7584000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(29,'2022-12-30','Ana',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30,'2022-12-30','ADMIN',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1600000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rango_pago` varchar(45) NOT NULL DEFAULT '',
  `fecha_pago` date NOT NULL DEFAULT '2023-01-01',
  `valor_pagar` double NOT NULL DEFAULT '0',
  `saldo_pendiente` double NOT NULL DEFAULT '0',
  `valor_pagado` double NOT NULL DEFAULT '0',
  `diferencia` double NOT NULL DEFAULT '0',
  `fecha_final_pago` date DEFAULT '2023-01-01',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (3,'De FEB 23/2023 --> FEB 23/2023 ','2023-02-24',-28411142,0,25000000,-3411142,'2023-02-23'),(4,'De FEB 24/2023 --> FEB 25/2023 ','2023-02-24',-18029836,-3411142,21440977,-1,'2023-02-25');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provisiones`
--

DROP TABLE IF EXISTS `provisiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provisiones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `concepto` varchar(45) NOT NULL DEFAULT '',
  `valor` double NOT NULL DEFAULT '0',
  `cajero` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provisiones`
--

LOCK TABLES `provisiones` WRITE;
/*!40000 ALTER TABLE `provisiones` DISABLE KEYS */;
INSERT INTO `provisiones` VALUES (4,'Dinero1',30000000,'ADMIN','2023-02-23','10:32:03'),(5,'Dinero1',15000000,'ADMIN','2023-02-24','11:36:31'),(6,'Dinero1',1500000,'ADMIN','2023-03-03','21:38:24');
/*!40000 ALTER TABLE `provisiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recargas`
--

DROP TABLE IF EXISTS `recargas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recargas` (
  `idrecargas` int NOT NULL AUTO_INCREMENT,
  `cajero` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL DEFAULT '00:00:00',
  `provision` double NOT NULL DEFAULT '0',
  `saldo_actual` double NOT NULL,
  PRIMARY KEY (`idrecargas`),
  UNIQUE KEY `idrecargas_UNIQUE` (`idrecargas`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recargas`
--

LOCK TABLES `recargas` WRITE;
/*!40000 ALTER TABLE `recargas` DISABLE KEYS */;
INSERT INTO `recargas` VALUES (6,'ADMIN','2023-02-23','18:58:36',1000000,1000000),(7,'ADMIN','2023-02-23','18:58:50',3000000,4000000),(8,'ADMIN','2023-02-23','18:59:29',1000000,5000000),(9,'ADMIN','2023-02-25','20:44:43',0,0),(10,'ADMIN','2023-02-25','20:55:55',4000000,4000000),(11,'ADMIN','2023-02-25','20:56:32',0,1500000),(12,'ADMIN','2023-02-26','21:12:10',0,-2000000),(13,'ADMIN','2023-02-27','21:26:41',0,-2000000),(21,'ADMIN','2023-03-04','01:25:44',0,250000),(22,'ADMIN','2023-03-05','02:11:53',0,0);
/*!40000 ALTER TABLE `recargas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporal_mov`
--

DROP TABLE IF EXISTS `temporal_mov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporal_mov` (
  `id_reg` int NOT NULL DEFAULT '1',
  `fecha` date NOT NULL DEFAULT '2022-12-30' COMMENT '\n',
  `cajero` varchar(45) NOT NULL,
  `saldo_ant` double NOT NULL DEFAULT '0',
  `b_100` int NOT NULL DEFAULT '0',
  `b_50` int NOT NULL DEFAULT '0',
  `b_20` int NOT NULL DEFAULT '0',
  `b_10` int NOT NULL DEFAULT '0',
  `b_5` int NOT NULL DEFAULT '0',
  `b_2` int NOT NULL DEFAULT '0',
  `m_1000` int NOT NULL DEFAULT '0',
  `m_500` int NOT NULL DEFAULT '0',
  `m_200` int NOT NULL DEFAULT '0',
  `m_100` int NOT NULL DEFAULT '0',
  `m_50` int NOT NULL DEFAULT '0',
  `i_giros_enviados` double NOT NULL DEFAULT '0',
  `cant_giros_enviados` int NOT NULL DEFAULT '0',
  `i_fletes_giros` double NOT NULL DEFAULT '0',
  `e_giros_nacionales` double NOT NULL DEFAULT '0',
  `cant_egre_giros_nac` int NOT NULL DEFAULT '0',
  `provisiones` varchar(100) DEFAULT 'p1=0',
  `e_giros_intern` double NOT NULL DEFAULT '0',
  `i_recarga_betplay` double NOT NULL DEFAULT '0',
  `e_retiro_betplay` double NOT NULL DEFAULT '0',
  `i_seguro` double NOT NULL DEFAULT '0',
  `e_seguro` double NOT NULL DEFAULT '0',
  `e_anulacion_giros` double NOT NULL DEFAULT '0',
  `i_acciones_valores` double NOT NULL DEFAULT '0',
  `e_acciones_valores` double NOT NULL DEFAULT '0',
  `i_soat` double NOT NULL DEFAULT '0',
  `saldo_parcial` double NOT NULL DEFAULT '0',
  `e_gastos_legalizar` double NOT NULL DEFAULT '0',
  `i_gastos_legalizados` double NOT NULL DEFAULT '0',
  `nuevo_saldo` double NOT NULL DEFAULT '0',
  `i_soat_credito` double NOT NULL DEFAULT '0',
  `i_soat_contado` double NOT NULL DEFAULT '0',
  `i_soat_credito1` double NOT NULL DEFAULT '0',
  `total_soat_vendido` double NOT NULL DEFAULT '0',
  `cant_soat_vendidos` int NOT NULL DEFAULT '0',
  `ingresos_emcali` double NOT NULL DEFAULT '0',
  `cant_ingr_emcali` int NOT NULL DEFAULT '0',
  `ingresos_x_reg` double NOT NULL DEFAULT '0',
  `cant_ingresos_x_reg` int NOT NULL DEFAULT '0',
  `ingresos_recargas` double NOT NULL DEFAULT '0',
  `cant_ingresos_recargas` int NOT NULL DEFAULT '0',
  `i_soat_efectivo_acs_sg` double NOT NULL DEFAULT '0',
  `cant_i_soat_efectivo_acs_sg` int NOT NULL DEFAULT '0',
  `i_soat_vend_acs_sg` double NOT NULL DEFAULT '0',
  `cant_i_soat_vend_acs_sg` int NOT NULL DEFAULT '0',
  `i_soat_virtual` double NOT NULL DEFAULT '0',
  `cant_i_soat_virtual` int NOT NULL DEFAULT '0',
  `i_otros_soat_redcolsa` double NOT NULL DEFAULT '0',
  `cant_i_otros_soat_redcolsa` int NOT NULL DEFAULT '0',
  `total_soat` double NOT NULL DEFAULT '0',
  `e_comision` double NOT NULL DEFAULT '0',
  `e_pago_soat` double NOT NULL DEFAULT '0',
  `saldo_x_pagar_soat` double NOT NULL DEFAULT '0',
  `soat_distrito_acs` double NOT NULL DEFAULT '0',
  `cant_soat_distrito_acs` int NOT NULL DEFAULT '0',
  `varios` double NOT NULL DEFAULT '0',
  `cant_varios` int NOT NULL DEFAULT '0',
  `cxp_gane` double NOT NULL DEFAULT '0',
  `consignar` double NOT NULL DEFAULT '0',
  `saldo_ant_recargas` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_reg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporal_mov`
--

LOCK TABLES `temporal_mov` WRITE;
/*!40000 ALTER TABLE `temporal_mov` DISABLE KEYS */;
INSERT INTO `temporal_mov` VALUES (26,'2023-05-04','ADMIN',0,0,0,0,0,0,0,0,0,0,0,0,4500000,0,0,0,0,'0.0',0,0,0,0,0,0,0,0,0,14500000,0,0,14500000,0,0,0,0,0,650000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,650000,0,0,2500000,0,4500000,3150000,0);
/*!40000 ALTER TABLE `temporal_mov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `user` varchar(80) NOT NULL,
  `passwd` varchar(80) NOT NULL DEFAULT '',
  `nombre` varchar(45) NOT NULL,
  `rol` varchar(45) NOT NULL,
  `agencia` varchar(25) DEFAULT '',
  `tipo_doc` varchar(45) DEFAULT '',
  `no_doc` varchar(45) DEFAULT '',
  `tel` varchar(45) DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `user_UNIQUE` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'ADMIN','','Administrador del sistema','ADMIN','','','11111111111',''),(3,'Ana','','Ana Rodriguez','Cajer@','','Cédula de ciudadanía','00000000','');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `varios`
--

DROP TABLE IF EXISTS `varios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `varios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `concepto` varchar(100) NOT NULL DEFAULT ' ',
  `valor` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `id_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `varios`
--

LOCK TABLES `varios` WRITE;
/*!40000 ALTER TABLE `varios` DISABLE KEYS */;
/*!40000 ALTER TABLE `varios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-22 14:46:39
