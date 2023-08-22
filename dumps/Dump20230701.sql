-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 192.168.110.28    Database: gane_db
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
  `fecha` date NOT NULL DEFAULT '2022-12-30',
  `cajero` varchar(45) NOT NULL DEFAULT '',
  `a_consignar` double NOT NULL DEFAULT '0',
  `consignado` double NOT NULL DEFAULT '0',
  `diferencia` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consignaciones`
--

LOCK TABLES `consignaciones` WRITE;
/*!40000 ALTER TABLE `consignaciones` DISABLE KEYS */;
INSERT INTO `consignaciones` VALUES (1,'2023-06-03','ADMIN',4812340,4812340,0),(6,'2023-06-08','Casher',0,0,0),(7,'2023-06-12','ADMIN',18355512,0,18355512);
/*!40000 ALTER TABLE `consignaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consignaciones_gane`
--

DROP TABLE IF EXISTS `consignaciones_gane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consignaciones_gane` (
  `fecha` date NOT NULL,
  `consignacion` double NOT NULL DEFAULT '0',
  `diferencia` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`fecha`),
  UNIQUE KEY `fecha_UNIQUE` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consignaciones_gane`
--

LOCK TABLES `consignaciones_gane` WRITE;
/*!40000 ALTER TABLE `consignaciones_gane` DISABLE KEYS */;
INSERT INTO `consignaciones_gane` VALUES ('2023-06-03',0,0),('2023-06-08',0,0),('2023-06-12',0,0);
/*!40000 ALTER TABLE `consignaciones_gane` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos`
--

LOCK TABLES `movimientos` WRITE;
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
INSERT INTO `movimientos` VALUES (1,'2022-12-30','ADMIN',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10754868,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,'2023-06-03','ADMIN',10754868,0,0,0,0,0,0,0,0,0,0,0,4066637,1,165163,11624104,1,30000000,21018838,0,0,0,0,0,0,0,0,12343726,0,0,12343726,0,0,0,0,0,2954786,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2954786,0,0,1857554,1,-28411142,4812340,0),(13,'2022-12-30','Casher',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,'2023-06-08','Casher',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(17,'2023-06-13','ADMIN',0,5,1,1,1,1,1,1,1,0,0,0,6368072,1,232428,46844980,1,0,48428198,0,0,20178,0,0,50000000,0,0,-38652500,0,38941000,288500,0,0,0,0,0,14780863,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,14780863,0,0,3574649,0,-88672678,18355512,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,'De JUN 3/2023 --> JUN 4/2023 ','2023-06-06',-46440978,0,40440978,-6000000,'2023-06-04'),(3,'De JUN 5/2023 --> JUN 6/2023 ','2023-06-06',-142017743,-6000000,147017743,-1000000,'2023-06-06');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provisiones`
--

LOCK TABLES `provisiones` WRITE;
/*!40000 ALTER TABLE `provisiones` DISABLE KEYS */;
INSERT INTO `provisiones` VALUES (1,'Dinero1',30000000,'ADMIN','2023-06-03','18:55:41'),(2,'Dinero1',15000000,'ADMIN','2023-06-04','19:23:59'),(3,'Dinero1',85000000,'ADMIN','2023-06-05','19:27:05'),(4,'Dinero1',60000000,'ADMIN','2023-06-06','20:52:16'),(5,'Dinero1',25000000,'ADMIN','2023-06-02','21:35:07'),(8,'Dinero1',50000000,'ADMIN','2023-06-12','13:58:59');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recargas`
--

LOCK TABLES `recargas` WRITE;
/*!40000 ALTER TABLE `recargas` DISABLE KEYS */;
INSERT INTO `recargas` VALUES (1,'ADMIN','2023-06-03','18:56:55',0,0),(12,'Casher','2023-06-08','15:59:40',0,0),(15,'ADMIN','2023-06-12','14:18:50',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'ADMIN','','Administrador del sistema','ADMIN','','','',''),(2,'Contador','','Conta','Contable','CONTABILIDAD','Cédula de ciudadanía','11111111','000000'),(3,'Casher','','casher','Cajer@','CENTRO','Cédula de ciudadanía','6666666','444444'),(4,'ASTRID','1130590741','ASTRID GUTIERREZ OSSA','Cajer@','DISTRITO','Cédula de ciudadanía','1130590741','3207340776');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `varios`
--

LOCK TABLES `varios` WRITE;
/*!40000 ALTER TABLE `varios` DISABLE KEYS */;
INSERT INTO `varios` VALUES (3,'Acueduecto',1000000),(4,'Agua',750000),(5,'Impuesto',4000000),(6,'Gas',2500000),(7,'Administracion',7510000),(8,'GASTO',1500000);
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

-- Dump completed on 2023-07-01 15:40:14
