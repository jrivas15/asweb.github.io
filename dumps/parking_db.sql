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
INSERT INTO `datos_parqueadero` VALUES ('Parqueadero','Simplificado','0',19,0,0,'','','','','','  El vehículo se entregará al portador del recibo. No aceptamos \n                ordenes telefónicas ni escritas. Retirado el vehículo, no \n                aceptamos ningún tipo de reclamo.* No respondemos por objetos \n                dejados en el vehículo. * No respondemos por hurto. * No \n                respondemos por la pérdida, deterioro o daños ocurridos como \n                consecuencia de incendio, terremoto, asonada, revolución, \n                u otras causas similares. * El conductor debe asegurarse que\n                el vehículo esta bien asegurado.* No respondemos por daños al \n                vehículo causados por terceros.En caso de perdida del \n                recibo se debe diligenciar un formato con copia tarjeta\n                de propiedad.');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liquidaciones`
--

LOCK TABLES `liquidaciones` WRITE;
/*!40000 ALTER TABLE `liquidaciones` DISABLE KEYS */;
INSERT INTO `liquidaciones` VALUES (1,'2023-08-01','05:16:51','Administrador del sistema',4000.00,0.00,0.00,4000.00,0.00,4000.00,'');
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
INSERT INTO `mensualidades` VALUES ('DZS959','AS13','','111111111',20000,'2023-08-06','2023-08-06','',1,0),('ICU006','ASEGUROS','CALLE 12','123533456',15000,'2023-08-06','2023-08-06','PRUEBA',1,1),('IIQ713','AS12','','12312312',85000,'2023-08-06','2023-08-06','',1,1),('KQK880','AS44','','12312312312',20000,'2023-08-06','2023-08-06','',1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos`
--

LOCK TABLES `movimientos` WRITE;
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
INSERT INTO `movimientos` VALUES (8,'BICI002','2023-07-31','04:38:37','B','ADMIN'),(14,'DEA147','2023-08-01','23:05:40','V','ADMIN'),(15,'SSQ330','2023-08-01','23:05:43','V','ADMIN'),(17,'GHY547','2023-08-01','23:05:49','V','ADMIN'),(18,'CDS582','2023-08-01','23:05:55','V','ADMIN'),(19,'HVE756','2023-08-06','12:08:22','V','Maq.JSERVER'),(20,'ZOW101','2023-08-06','12:43:54','V','Maq.JSERVER'),(21,'BTR672','2023-08-06','12:52:22','V','Maq.JSERVER'),(22,'NIH75W','2023-08-06','12:53:49','M','Maq.JSERVER'),(24,'WGD279','2023-08-06','13:02:37','V','Maq.JSERVER'),(25,'ERM52M','2023-08-06','13:47:53','M','Maq.JSERVER'),(26,'NCD43N','2023-08-06','13:55:23','M','Maq.JSERVER'),(27,'FDF90A','2023-08-06','14:02:17','M','Maq.JSERVER'),(31,'HCV222','2023-08-06','16:18:11','V','ADMIN'),(33,'UXF15P','2023-08-06','16:38:22','M','Maq.JSERVER'),(35,'SSS888','2023-08-10','08:38:10','V','ADMIN'),(36,'YYT444','2023-08-10','08:38:59','V','ADMIN'),(38,'IEI69R','2023-08-13','23:15:53','M','Maq.JSERVER'),(40,'VLR92F','2023-08-13','23:18:18','M','Maq.JSERVER'),(41,'DIB31U','2023-08-13','23:23:29','M','Maq.JSERVER'),(42,'MHR16J','2023-08-13','23:23:48','M','Maq.JSERVER'),(43,'KWO77D','2023-08-13','23:31:10','M','Maq.JSERVER'),(48,'IDMOT10','2023-08-14','01:41:22','M','Maq.JSERVER'),(50,'IDMOT81','2023-08-14','01:42:17','M','Maq.JSERVER');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos_mens`
--

LOCK TABLES `pagos_mens` WRITE;
/*!40000 ALTER TABLE `pagos_mens` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifas`
--

LOCK TABLES `tarifas` WRITE;
/*!40000 ALTER TABLE `tarifas` DISABLE KEYS */;
INSERT INTO `tarifas` VALUES (1,'CARRO','V','Sencilla',4000.00,3000.00,0.00,0.00,0.00,0.00,0.00,'DDDDDDDDDDDDDDDDDDDDDDDD',5,5,'1111111',1),(2,'MOTO','M','Sencilla',2000.00,1000.00,0.00,0.00,0.00,0.00,0.00,'DDDDDDDDDDDDDDDDDDDDDDDD',0,2,'1111111',1),(3,'BICICLETA','B','Sencilla',1000.00,500.00,2000.00,0.00,0.00,0.00,0.00,'DDDDDDDDDDDDDDDDDDDDDDDD',0,0,'1111111',1),(4,'dia c','V','Sencilla',3000.00,2500.00,17000.00,0.00,0.00,0.00,0.00,'DDDDDDDDDDDDDDDDDDDDDDDD',0,0,'1111111',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'ADMIN','','Administrador del sistema','','None','00000','2023-08-16 10:04:22',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(2,'ALEJA','','ALEJA TASCONI','Cédula de ciudadanía','1567431','5555555','2023-08-10 13:09:03',0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,2,'SSS777','2023-07-31','03:28:33','2023-08-01','03:28:41','1 Día + 0 Horas + 1 Minutos','Efectivo',0.00,73000.00,0.00,73000.00,'ALEJA','ALEJA TASCONI','',0,'V','CARRO','Parking'),(6,10,'VVC889','2023-08-01','05:00:49','2023-08-01','05:14:52','0 Horas + 15 Minutos','Efectivo',0.00,4000.00,0.00,4000.00,'ALEJA','Administrador del sistema','',1,'V','CARRO','Parking'),(7,16,'FRT568','2023-08-01','23:05:46','2023-08-01','23:05:59','0 Horas + 1 Minutos','Efectivo',0.00,0.00,0.00,0.00,'ADMIN','Administrador del sistema','',0,'V','CARRO','Parking'),(8,16,'FRT568','2023-08-01','23:05:46','2023-08-01','23:19:37','0 Horas + 14 Minutos','Efectivo',0.00,4000.00,0.00,4000.00,'ADMIN','Administrador del sistema','',0,'V','CARRO','Parking'),(9,16,'FRT568','2023-08-01','23:05:46','2023-08-01','23:29:37','0 Horas + 24 Minutos','Efectivo',0.00,3781.51,718.49,4500.00,'ADMIN','Administrador del sistema','',0,'V','CARRO','Parking'),(10,11,'AAA231','2023-08-01','05:00:57','2023-08-01','23:29:47','18 Horas + 29 Minutos','Efectivo',0.00,58000.00,0.00,58000.00,'ALEJA','Administrador del sistema','',0,'V','CARRO','Parking'),(11,12,'SDA556','2023-08-01','23:05:33','2023-08-01','23:30:06','0 Horas + 25 Minutos','Efectivo',0.00,4000.00,0.00,4000.00,'ADMIN','Administrador del sistema','',0,'V','CARRO','Parking'),(12,4,'FFG44S','2023-07-12','03:57:07','2023-08-01','23:31:12','20 Días + 19 Horas + 35 Minutos','Efectivo',0.00,501000.00,0.00,501000.00,'ALEJA','Administrador del sistema','',0,'M','MOTO','Parking'),(13,13,'SSW222','2023-08-01','23:05:37','2023-08-01','23:33:36','0 Horas + 28 Minutos','Efectivo',0.00,4000.00,0.00,4000.00,'ADMIN','Administrador del sistema','',0,'V','CARRO','Parking'),(14,29,'FXD479','2023-08-06','14:46:17','2023-08-06','15:36:10','0 Horas + 50 Minutos','Efectivo',0.00,1500.00,0.00,1500.00,'Maq.JSERVER','Administrador del sistema','',0,'V','CARRO','Parking'),(15,28,'JSJ36E','2023-08-06','14:03:42','2023-08-10','08:44:50','3 Días + 18 Horas + 42 Minutos','Efectivo',0.00,92000.00,0.00,92000.00,'Maq.JSERVER','Administrador del sistema','',0,'M','MOTO','Parking'),(16,23,'YAZ52F','2023-08-06','12:57:56','2023-08-10','08:45:18','3 Días + 19 Horas + 48 Minutos','Efectivo',0.00,93000.00,0.00,93000.00,'Maq.JSERVER','Administrador del sistema','',0,'M','MOTO','Parking'),(17,30,'SSS445','2023-08-06','16:17:44','2023-08-10','12:11:32','3 Días + 19 Horas + 54 Minutos','Efectivo',0.00,277000.00,0.00,277000.00,'ADMIN','Administrador del sistema','',0,'V','CARRO','Parking'),(18,44,'IDCAR5516','2023-08-13','23:33:06','2023-08-13','23:36:03','0 Horas + 3 Minutos','Efectivo',0.00,2521.01,478.99,3000.00,'Maq.JSERVER','Administrador del sistema','',0,'V','dia c','Parking'),(19,45,'IDMOT46','2023-08-13','23:38:11','2023-08-13','23:38:43','0 Horas + 1 Minutos','Efectivo',0.00,840.34,159.66,1000.00,'Maq.JSERVER','Administrador del sistema','',0,'M','MOTO','Parking'),(20,46,'IDMOT20','2023-08-14','01:31:08','2023-08-14','01:49:03','0 Horas + 18 Minutos','Efectivo',0.00,1680.67,319.33,2000.00,'Maq.JSERVER','Administrador del sistema','',0,'M','MOTO','Parking'),(21,39,'RDN47M','2023-08-13','23:18:10','2023-08-14','01:49:20','2 Horas + 32 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'Maq.JSERVER','Administrador del sistema','',0,'M','MOTO','Parking'),(22,34,'YVF876','2023-08-09','12:18:23','2023-08-14','01:49:29','4 Días + 13 Horas + 32 Minutos','Efectivo',0.00,278151.26,52848.74,331000.00,'ADMIN','Administrador del sistema','',0,'V','CARRO','Parking'),(23,51,'IDCAR5619','2023-08-14','01:42:26','2023-08-14','01:52:10','0 Horas + 10 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'Maq.JSERVER','Administrador del sistema','',0,'V','CARRO','Parking'),(24,37,'SNU71U','2023-08-13','23:15:35','2023-08-14','01:52:48','2 Horas + 38 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'Maq.JSERVER','Administrador del sistema','',0,'M','MOTO','Parking'),(25,47,'IDCAR9104','2023-08-14','01:31:45','2023-08-14','01:53:47','0 Horas + 23 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'Maq.JSERVER','Administrador del sistema','',0,'V','CARRO','Parking'),(26,53,'SSS555','2023-08-14','01:59:35','2023-08-14','01:59:38','0 Horas + 1 Minutos','Efectivo',0.00,0.00,0.00,0.00,'ADMIN','Administrador del sistema','',0,'V','CARRO','Parking'),(27,49,'IDCAR8179','2023-08-14','01:41:40','2023-08-14','02:14:12','0 Horas + 33 Minutos','Efectivo',0.00,3361.34,638.66,4000.00,'Maq.JSERVER','Administrador del sistema','',0,'V','CARRO','Parking'),(28,52,'IDMOT49','2023-08-14','01:42:39','2023-08-15','20:11:14','1 Día + 18 Horas + 29 Minutos','Efectivo',0.00,36974.79,7025.21,44000.00,'Maq.JSERVER','Administrador del sistema','',0,'M','MOTO','Parking'),(29,32,'VWM556','2023-08-06','16:19:23','2023-08-16','08:04:30','9 Días + 15 Horas + 46 Minutos','Efectivo',0.00,585714.29,111285.71,697000.00,'Maq.JSERVER','Administrador del sistema','',0,'V','CARRO','Parking');
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

-- Dump completed on 2023-08-22 14:45:42
