-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: pv_alta
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bitacora` (
  `id_bit` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id_bit`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (2,1,'2019-04-21','El usuario JuanV1 creo al usuario JuanV1'),(3,1,'2019-04-21','El usuario JuanV1 capturo la venta # HV21');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `bitacora_c`
--

DROP TABLE IF EXISTS `bitacora_c`;
/*!50001 DROP VIEW IF EXISTS `bitacora_c`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `bitacora_c` AS SELECT 
 1 AS `Usuario`,
 1 AS `Fecha`,
 1 AS `Descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `canastilla`
--

DROP TABLE IF EXISTS `canastilla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `canastilla` (
  `id_canastilla` int(11) NOT NULL AUTO_INCREMENT,
  `id_termo` int(11) DEFAULT NULL,
  `num_canasta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_canastilla`),
  KEY `id_termo` (`id_termo`),
  CONSTRAINT `canastilla_ibfk_1` FOREIGN KEY (`id_termo`) REFERENCES `termo` (`id_termo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canastilla`
--

LOCK TABLES `canastilla` WRITE;
/*!40000 ALTER TABLE `canastilla` DISABLE KEYS */;
INSERT INTO `canastilla` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6);
/*!40000 ALTER TABLE `canastilla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(80) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `codigo_p` varchar(20) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `estatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'MARQUEZ PADILLA JOSE DE JESUS','','','',NULL),(2,'ALCALA GONZALEZ JOSE','','','',NULL),(3,'DELGADO ANDRADE JOSE DE JESUS','','','',NULL),(4,'AGROPECUARIO LA CUESTA, S.P.R. DE R.L.','','','',NULL),(5,'GUTIERREZ LOZANO ABELARDO','','','',NULL),(6,'MARQUEZ PADILLA MIGUEL','','','',NULL),(7,'MUÑOZ DE ANDA RICARDO','','','',NULL),(8,'ORORZCO ALCALA FRANCISCO JAVIER','','','',NULL),(9,'PRODUCTORES DE ATOYONALCO S.P.R. DE R.L.','','','',NULL),(10,'AGROPECUARIA EL GIGANTE S.A. DE C.V.','','','',NULL),(11,'GONZALEZ GUTIERREZ FERNANDO','','','',NULL),(12,'GONZALEZ GUTIERREZ JORGE','','','',NULL),(13,'GONZALEZ GUTIERREZ JOSE DE JESUS','','','',NULL),(14,'ALVAREZ GONZALEZ JESUS ALEJANDRO','','','',NULL),(15,'HORNEDO MARIN ALEJANDRINA','','','',NULL),(16,'HERNANDEZ MUÑOZ LEOPOLDO','','','',NULL),(17,'PADILLA PADILLA JOSE DE JESUS','','','',NULL),(18,'DIAZ QUEZADA J. RAMIRO','','','',NULL),(19,'MARQUEZ PADILLA SALVADOR','','','',NULL),(20,'GONZALEZ CERDA EZEQUIEL','','','',NULL),(21,'GRUPO CIENEGUITA, S.P.R. DE R.L.','','','',NULL),(22,'PRODUCTOS PECUARIOS SAN EUGENIO, SPR DE RL','','','',NULL),(23,'PEREZ GUTIERREZ DAVID','','','',NULL),(24,'AGRICOLA GANADERA LA ESTANCIA','','','',NULL),(25,'AGROPECUARIA POTRERO DEL REFUGIO, S.P.R. DE R.L.','','','',NULL),(26,'AVILA SANTOYO SALVADOR','','','',NULL),(27,'AGRICOLA Y GANADERA DEL BAJI, S.P.R. DE R.L.','','','',NULL),(28,'AGROPERUARIA LOS PIONEROS S.P.R. DE R.L.','','','',NULL),(29,'CUMMINGS DE ALBA EMET VICTOR','','','',NULL),(30,'FRANCO VERDIN RAMIRO','','','',NULL),(31,'EL MIRADOR DE AGUASCALIENTES, S.P.R. DE R.L.','','','',NULL),(32,'ESPARZA RUELAS MIGUEL','','','',NULL),(33,'GARCIA GUTIERREZ MANUEL','','','',NULL),(34,'GOMEZ GONZALEZ RAMON','','','',NULL),(35,'MARTINEZ MARTINEZ RAUL','','','',NULL),(36,'MUÑOZ DE ALBA INDALECIO','','','',NULL),(37,'MORALES ALARCON ABRAHAM','','','',NULL),(38,'MORENO VELAZQUEZ CARLOS','','','',NULL),(39,'MUÑOZ MARQUEZ BALTAZAR','','','',NULL),(40,'ORNELAS GUTIERREZ JOSE GUADALUPE','','','',NULL),(41,'PADILLA DIAZ GERARDO ERNESTO','','','',NULL),(42,'PRODUCTORA AGROPECUARIA ASUNCION S.P.R. DE R.L.','','','',NULL),(43,'SALADO GONZALEZ LORENZO','','','',NULL),(44,'SILVA ARMAS JAIME','','','',NULL),(45,'TORRES MARTINEZ JUAN GABRIEL','','','',NULL),(46,'TLACUACHE, S.A. DE C.V.','','','',NULL),(47,'UNION AGROPECUARIA DE AGUASCALIENTES, S.A. DE C.V.','','','',NULL),(48,'RAMIREZ ESCOTO JESUS','','','',NULL),(49,'RANCHO LOGO Y ASOCIADOS, S.P.R. DE R.L.','','','',NULL),(50,'VAQUILLOS, S.P.R. DE R.L.','','','',NULL),(51,'RAMIREZ JIMENEZ JOSE DE JESUS','','','',NULL),(52,'RIOS ROMO ERASMO','','','',NULL),(53,'GANADERIA MEDIA LUNA, S. DE P.R. DE R.L.','','','',NULL),(54,'PRODUCTORA AGROPECUARIA CALIFORNIA, S.P.R. DE R.','','','',NULL),(55,'SUTTI OSORIO PREDO MARIO','','','',NULL),(56,'GONZALEZ REYNOSO CARLOS','','','',NULL),(57,'GONZALEZ ULLOA JAIME','','','',NULL),(58,'ALVAREZ ROMO JUAN FRANCIS','','','',NULL),(59,'ORORZCO JIMENEZ FERNANDO','','','',NULL),(60,'DE LA TORRE DE LA TORRE LUIS','','','',NULL),(61,'JIMENEZ JIMENEZ CELESTINO','','','',NULL),(62,'GONZALEZ ENQUIREZ JOSE','','','',NULL),(63,'PEDROZA GUZMAN JAVIER DE LA LUZ','','','',NULL),(64,'AGROPECUARIA EL TEPETATILLO, S.A. DE C.V.','','','',NULL),(65,'HERNANDEZ VILLALPANDO GUADALUPE','','','',NULL),(66,'SUTTI MARIN ERILIO','','','',NULL),(67,'SUTTI MARIN MARIO','','','',NULL),(68,'SUTTI MARIN PEDRO','','','',NULL),(69,'PONCE HERNANDEZ JORGE EDUARDO','','','',NULL),(70,'MARQUEZ MARQUEZ JOSE DE JESUS','','','',NULL),(71,'DIAZ ESPARZA OFELIA','','','',NULL),(72,'RANCHO FAPERGO, S.P.R. DE R.L. DE C.V.','','','',NULL),(73,'SANTOSCOY PADILLA GENARO','','','',NULL),(74,'UNION DE PRODUCTORES DE LECHE DE TEPATITLAN, S.','','','',NULL),(75,'FRANCO JAUREGUI CARLOS','','','',NULL),(76,'REYNOSO REYNOSO EMANUEL','','','',NULL),(77,'PEDORZA HERNANDEZ ARTURO','','','',NULL),(78,'GOMEZ CASTELLANOS JOSE DE JESUS','','','',NULL),(79,'MARTIN SERRANO MIGUEL','','','',NULL),(80,'GRANJA TONATIZIN, S.A. DE C.V.','','','',NULL),(81,'GUILLEN TUEYES ELEUTERIO','','','',NULL),(82,'GONEZ LOZA J. ROSARIO','','','',NULL),(83,'VITAL SILVA GERARDO','','','',NULL),(84,'ESCALERA PEREZ ALEJO','','','',NULL),(85,'ESCALERA PEREZ JOSE LUIS','','','',NULL),(86,'PONCE HERNANDEZ OSCAR','','','',NULL),(87,'MARTINEZ TOPETE ANA SOFIA','','','',NULL),(88,'RESENDIZ MACIAS MARIA AMPARO','','','',NULL),(89,'GONZALEZ VILLASEÑOR CARLOS ERNESTO','','','',NULL),(90,'BRIZUELA LOZANO J. GUADALUPE','','','',NULL),(91,'AGROINDUSTRIAL PLAN DE GARABATOS, S.C. DE R.L.','','','',NULL),(92,'MARTIN CASTELLANOS JOSE LUIS ','','','',NULL),(93,'BARRAGAN MARTINEZ ALFREDO','','','',NULL),(94,'RODRIGUEZ SANCHEZ JUNIOR ABELARDO','','','',NULL),(95,'AGROLACTEOS EL SOCORRO, S.P.R. DE R.L.','','','',NULL),(97,'NUTRICION Y REPRODUCCION DE LOS ALTOS, S.A. DE C.V.','','','',NULL),(98,'GRUPO SAN JACINTO, S.A. DE C.V.','','','',NULL),(99,'GONZALEZ GUTIERREZ ANGEL','','','',NULL),(100,'ROMO MUÑOZ MANUEL','','','',NULL),(101,'OÑATE AGUIRRE LUIS FRANCISCO','','','',NULL),(102,'ESTABLO BETANIA S. DE P.R. DE R.L.','','','',NULL),(103,'AGROPECUARIA LA CUESTA, S.P.R. DE R.L.','','','',NULL),(104,'PRODUCTOS AGROPECUARIOS DVG, S.A. DE C.V.','','','',NULL),(105,'GONZALEZ JIMENEZ ENRIQUE','','','',NULL),(106,'GONZALEZ GUTIERREZ ANTONIO','','','',NULL),(107,'CAMPOS HURTADO ROBERTO FLORENTINO','','','',NULL),(108,'GONZALEZ PEREZ BENJAMIN LUIS J','','','',NULL),(109,'GOMEZ SANDOVAL ABEL','','','',NULL),(110,'PADILLA GONZALEZ ISMAEL','','','',NULL),(111,'SIGAM ALIMENTOS LACTEOS, S.A. DE C.V.','','','',NULL),(112,'PRODUCTORES DE LECHE SAN CARLOS, S.C. DE R.L.D.','','','',NULL),(114,'GUZMAN ROMO GERARDO','','','',NULL),(115,'RANCHO LA CHIRIPA, S. DE P.R. DE R.L.','','','',NULL),(116,'ALTA GENETICS DE MEXICO, S. DE R.L. DE C.V.','','','',NULL),(117,'MUÑOZ RAMIREZ DANIEL','','','',NULL),(118,'GRUPO SOLIDARIO DE R.S.E. ILIMITADA','','','',NULL),(119,'DELGADO ANDRADE JOSE DE JESUS','','','',NULL),(120,' ALCALA ROMO PAOLA LETICIA','','','',NULL),(121,'MONDRAGON BARRIOS EDGAR','','','',NULL),(122,'ALVAREZ RODIGUEZ HERMANOS, S.A. DE C.V.','','','',NULL),(123,'GUERRERO MEDINA ALBERTO','','','',NULL),(124,'DISTRIBUIDORA DE INSUMOS PECUARIOS EL RODEO S.','','','',NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_pedidos`
--

DROP TABLE IF EXISTS `detalle_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `id_pedido` varchar(10) DEFAULT NULL,
  `unidades_vendidas` int(11) DEFAULT NULL,
  `sub_total` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pedido` (`id_pedido`),
  CONSTRAINT `detalle_pedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedidos`
--

LOCK TABLES `detalle_pedidos` WRITE;
/*!40000 ALTER TABLE `detalle_pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `info_usuarios`
--

DROP TABLE IF EXISTS `info_usuarios`;
/*!50001 DROP VIEW IF EXISTS `info_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `info_usuarios` AS SELECT 
 1 AS `Nombre`,
 1 AS `Usuario`,
 1 AS `Permiso`,
 1 AS `Descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!50001 DROP VIEW IF EXISTS `inventario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `inventario` AS SELECT 
 1 AS `Arete`,
 1 AS `Nombre`,
 1 AS `Termo`,
 1 AS `Canastilla`,
 1 AS `Unidades`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lista_precios_sellor`
--

DROP TABLE IF EXISTS `lista_precios_sellor`;
/*!50001 DROP VIEW IF EXISTS `lista_precios_sellor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `lista_precios_sellor` AS SELECT 
 1 AS `Arete`,
 1 AS `Toro`,
 1 AS `Raza`,
 1 AS `Precio_Publico`,
 1 AS `Descuento`,
 1 AS `Apoyo`,
 1 AS `Precio_Productor`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pedidos` (
  `id_pedido` varchar(10) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_captura` date DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `id_tipo_c` int(11) DEFAULT NULL,
  `estatus` tinyint(1) DEFAULT NULL,
  `total` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_tipo_c` (`id_tipo_c`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `pedidos_ibfk_4` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `pedidos_ibfk_5` FOREIGN KEY (`id_tipo_c`) REFERENCES `tipo_cambio` (`id`),
  CONSTRAINT `pedidos_ibfk_6` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `registro_V` AFTER INSERT ON `pedidos` FOR EACH ROW begin
			insert into bitacora(id_bit,id_usuario,fecha,descripcion)
            values(null,new.id_usuario,new.fecha_captura,
            concat("El usuario ", (select usuario from usuario where id= new.id_usuario) ," capturo la venta # ",new.id_pedido));
        end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `permisos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `Nombre` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
INSERT INTO `permisos` VALUES (1,'permiso del administrador del sistema','ADM'),(2,'Permiso para hacer venta','VTA'),(3,'Permiso para Manejo de inventarios','INV');
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precios`
--

DROP TABLE IF EXISTS `precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `precios` (
  `id_empresa` int(11) NOT NULL,
  `id_toro` varchar(10) NOT NULL,
  `precio_publico` decimal(19,4) DEFAULT NULL,
  `desc_alta` decimal(19,4) DEFAULT NULL,
  `apoyo` decimal(19,4) DEFAULT NULL,
  `precio_productor` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`,`id_toro`),
  KEY `id_toro` (`id_toro`),
  CONSTRAINT `precios_ibfk_2` FOREIGN KEY (`id_toro`) REFERENCES `toro` (`id`),
  CONSTRAINT `precios_ibfk_3` FOREIGN KEY (`id_empresa`) REFERENCES `subsidiaria` (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precios`
--

LOCK TABLES `precios` WRITE;
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
INSERT INTO `precios` VALUES (1,'011HO00586',12.0000,4.2000,3.0000,4.8000),(1,'011HO11272',12.0000,4.2000,3.0000,4.8000),(1,'011HO11379',17.5000,6.1250,4.3750,7.0000),(1,'011HO11478',22.0000,7.7000,5.5000,8.8000),(1,'011HO11499',17.0000,5.9500,4.2500,6.8000),(1,'011HO11690',10.0000,3.5000,2.5000,4.0000),(1,'011HO11716',14.0000,4.9000,3.5000,5.6000),(1,'011HO11725',17.0000,5.9500,4.2500,6.8000),(1,'011HO11737',12.0000,4.2000,3.0000,4.8000),(1,'011HO11740',12.0000,4.2000,3.0000,4.8000),(1,'011HO11749',13.5000,4.7250,3.3750,5.4000),(1,'011HO11750',15.0000,5.2500,3.7500,6.0000),(1,'011HO11758',20.0000,7.0000,5.0000,8.0000),(1,'011HO11767',15.0000,5.2500,3.7500,6.0000),(1,'011HO11780',17.0000,5.9500,4.2500,6.8000),(1,'011HO11786',13.0000,4.5500,325.0000,5.2000),(1,'011HO11803',13.0000,4.5500,3.2500,5.2000),(1,'011HO11823',15.0000,5.2500,3.7500,6.0000),(1,'011HO11826',13.0000,4.5500,3.2500,5.2000),(1,'011HO11827',14.0000,4.9000,3.5000,5.6000),(1,'011HO11855',12.0000,4.2000,3.0000,4.8000),(1,'011HO11866',13.0000,4.5500,3.2500,5.2000),(1,'011HO11884',15.5000,5.4250,3.8750,6.2000),(1,'011HO11887',12.0000,4.2000,3.0000,4.8000),(1,'011HO11892',14.0000,4.9000,3.5000,5.6000),(1,'011HO11911',17.0000,5.9500,4.2500,6.8000),(1,'011HO11963',17.0000,5.9500,4.2500,6.8000),(1,'011HO11970',13.0000,4.5500,3.2500,5.2000),(1,'011HO11987',14.0000,4.9000,3.5000,5.6000),(1,'011HO11993',14.0000,4.9000,3.5000,5.6000),(1,'011HO12021',17.0000,5.9500,4.2500,6.8000),(1,'011HO12024',15.0000,5.2500,3.7500,6.0000),(1,'011HO12029',15.0000,5.2500,3.7500,6.0000),(1,'011HO12050',15.5000,5.4250,3.8750,6.2000),(1,'011HO12052',14.0000,4.9000,3.5000,5.6000),(1,'011HO12075',14.0000,4.9000,3.5000,5.6000),(1,'011HO12082',15.0000,5.2500,3.7500,6.0000),(1,'011HO12083',17.0000,5.9500,4.2500,6.8000),(1,'011HO12093',17.0000,5.9500,4.2500,6.8000),(1,'011HO12094',14.0000,4.9000,3.5000,5.6000),(1,'011HO12109',15.0000,5.2500,3.7500,6.0000),(1,'011HO12115',20.0000,7.0000,5.0000,8.0000),(1,'011HO12122',20.0000,7.0000,5.0000,8.0000),(1,'011HO12123',20.0000,7.0000,5.0000,8.0000),(1,'011HO12124',20.0000,7.0000,5.0000,8.0000),(1,'011HO12128',15.0000,5.2500,3.7500,6.0000),(1,'011HO12148',19.0000,6.6500,4.7500,7.6000),(1,'011HO12155',20.0000,7.0000,5.0000,8.0000),(1,'011HO12165',20.0000,7.0000,5.0000,8.0000),(1,'011HO12168',23.0000,8.0500,5.7500,9.2000),(1,'011HO12169',23.0000,8.0500,5.7500,9.2000),(1,'011HO12174',28.0000,9.8000,7.0000,11.2000),(1,'011HO12194',25.0000,8.7500,6.2500,10.0000),(1,'011HO12197',13.0000,4.5500,3.2500,5.2000),(1,'011HO12203',17.0000,5.9500,4.2500,6.8000),(1,'011HO12204',15.5000,5.4250,3.8750,6.2000),(1,'011HO12206',22.0000,7.7000,5.5000,8.8000),(1,'011HO12208',15.5000,5.4250,3.8750,6.2000),(1,'011HO12225',22.0000,7.7000,5.5000,8.8000),(1,'011HO12228',17.0000,5.9500,4.2500,6.8000),(1,'011HO12235',17.0000,5.9500,4.2500,6.8000),(1,'011HO12237',22.0000,7.7000,5.5000,8.8000),(1,'011HO12242',15.0000,5.2500,3.7500,6.0000),(1,'011HO12261',28.0000,9.8000,7.0000,11.2000),(1,'011HO12263',19.0000,6.6500,4.7500,7.6000),(1,'011HO12275',22.0000,7.7000,5.5000,8.8000),(1,'011HO12278',16.0000,5.6000,4.0000,6.4000),(1,'011HO12282',20.0000,7.0000,5.0000,8.0000),(1,'011HO12287',23.0000,8.0500,5.7500,9.2000),(1,'011HO12293',28.0000,9.8000,7.0000,11.2000),(1,'011HO12308',22.0000,7.7000,5.5000,8.8000),(1,'011HO12311',20.0000,7.0000,5.0000,8.0000),(1,'011HO12314',19.0000,6.6500,4.7500,7.6000),(1,'011HO12317',28.0000,9.8000,7.0000,11.2000),(1,'011HO12326',28.0000,9.8000,7.0000,11.2000),(1,'011HO12328',25.0000,8.7500,6.2500,10.0000),(1,'011HO12329',22.0000,7.7000,5.5000,8.8000),(1,'011HO12333',22.0000,7.7000,5.5000,8.8000),(1,'011HO12334',25.0000,8.7500,6.2500,10.0000),(1,'011HO12342',28.0000,9.8000,7.0000,11.2000),(1,'011JE01179',20.0000,7.0000,5.0000,8.0000),(1,'011JE01308',15.5000,5.4250,3.8750,6.2000),(1,'011JE01326',17.0000,5.9500,4.2500,6.8000),(1,'011JE01329',16.0000,5.6000,4.0000,6.4000),(1,'011JE01338',16.0000,5.6000,4.0000,6.4000),(1,'011JE01339',17.0000,5.9500,4.2500,6.8000),(1,'011JE01348',20.0000,7.0000,5.0000,8.0000),(1,'011JE01366',20.0000,7.0000,5.0000,8.0000),(1,'011JE01369',22.0000,7.7000,5.5000,8.8000),(1,'511HO11716',33.0000,11.5500,8.2500,13.2000),(1,'511HO11750',33.0000,11.5500,8.2500,13.2000),(1,'511HO11788',35.0000,12.2500,8.7500,14.0000),(1,'511HO11813',38.0000,13.3000,9.5000,15.2000),(1,'511HO11826',38.0000,13.3000,9.5000,15.2000),(1,'511HO11888',38.0000,13.3000,9.5000,15.2000),(1,'511HO11957',38.0000,13.3000,9.5000,15.2000),(1,'511HO12000',37.5000,13.1250,9.3750,15.0000),(1,'511HO12050',35.0000,12.2500,8.7500,14.0000),(1,'511HO12093',38.0000,13.3000,9.5000,15.2000),(1,'511HO12177',38.0000,13.3000,9.5000,15.2000),(1,'511HO12226',38.0000,13.3000,9.5000,15.2000),(1,'511HO12264',38.0000,13.3000,9.5000,15.2000),(1,'511HO12278',38.0000,13.3000,9.5000,15.2000),(1,'511JE01179',40.5000,14.1750,10.1250,16.2000),(1,'511JE01329',39.0000,13.6500,9.7500,15.6000),(1,'511JE01340',39.0000,13.6500,9.7500,15.6000),(1,'511JE01342',39.0000,13.6500,9.7500,15.6000),(1,'511JE01345',39.0000,13.6500,9.7500,15.6000);
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raza`
--

DROP TABLE IF EXISTS `raza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `raza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raza`
--

LOCK TABLES `raza` WRITE;
/*!40000 ALTER TABLE `raza` DISABLE KEYS */;
INSERT INTO `raza` VALUES (1,'Holstein'),(2,'Holstein Sexado'),(3,'Jersey'),(4,'Jersey Sexado');
/*!40000 ALTER TABLE `raza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sacado_de`
--

DROP TABLE IF EXISTS `sacado_de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sacado_de` (
  `id_det` int(11) DEFAULT NULL,
  `id_termo` int(11) DEFAULT NULL,
  KEY `id_det` (`id_det`),
  KEY `id_termo` (`id_termo`),
  CONSTRAINT `sacado_de_ibfk_1` FOREIGN KEY (`id_det`) REFERENCES `detalle_pedidos` (`id`),
  CONSTRAINT `sacado_de_ibfk_2` FOREIGN KEY (`id_termo`) REFERENCES `termo` (`id_termo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sacado_de`
--

LOCK TABLES `sacado_de` WRITE;
/*!40000 ALTER TABLE `sacado_de` DISABLE KEYS */;
/*!40000 ALTER TABLE `sacado_de` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semen`
--

DROP TABLE IF EXISTS `semen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `semen` (
  `id_canastilla` int(11) DEFAULT NULL,
  `id_toro` varchar(10) DEFAULT NULL,
  `unidades` int(11) DEFAULT NULL,
  KEY `id_toro` (`id_toro`),
  KEY `id_canastilla` (`id_canastilla`),
  CONSTRAINT `semen_ibfk_2` FOREIGN KEY (`id_toro`) REFERENCES `toro` (`id`),
  CONSTRAINT `semen_ibfk_3` FOREIGN KEY (`id_canastilla`) REFERENCES `canastilla` (`id_canastilla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semen`
--

LOCK TABLES `semen` WRITE;
/*!40000 ALTER TABLE `semen` DISABLE KEYS */;
INSERT INTO `semen` VALUES (1,'011HO11767',860),(2,'011HO12191',450),(2,'511HO12275',150),(2,'011HO12228',200),(3,'011HO12124',440),(3,'511HO12264',395),(4,'511HO12226',180),(4,'011HO12263',350),(5,'011HO11982',1048),(6,'011HO11963',30),(6,'011HO12174',340),(6,'511HO11813',30);
/*!40000 ALTER TABLE `semen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subsidiaria`
--

DROP TABLE IF EXISTS `subsidiaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subsidiaria` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsidiaria`
--

LOCK TABLES `subsidiaria` WRITE;
/*!40000 ALTER TABLE `subsidiaria` DISABLE KEYS */;
INSERT INTO `subsidiaria` VALUES (1,'Sello Rojo','Fatima #329');
/*!40000 ALTER TABLE `subsidiaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `termo`
--

DROP TABLE IF EXISTS `termo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `termo` (
  `id_termo` int(11) NOT NULL AUTO_INCREMENT,
  `numero_termo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_termo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termo`
--

LOCK TABLES `termo` WRITE;
/*!40000 ALTER TABLE `termo` DISABLE KEYS */;
INSERT INTO `termo` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `termo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_cambio`
--

DROP TABLE IF EXISTS `tipo_cambio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipo_cambio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `valor` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_cambio`
--

LOCK TABLES `tipo_cambio` WRITE;
/*!40000 ALTER TABLE `tipo_cambio` DISABLE KEYS */;
INSERT INTO `tipo_cambio` VALUES (1,'2019-04-21',17.8500);
/*!40000 ALTER TABLE `tipo_cambio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toro`
--

DROP TABLE IF EXISTS `toro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `toro` (
  `id` varchar(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `id_raza` int(11) DEFAULT NULL,
  `estatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_raza` (`id_raza`),
  CONSTRAINT `toro_ibfk_1` FOREIGN KEY (`id_raza`) REFERENCES `raza` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toro`
--

LOCK TABLES `toro` WRITE;
/*!40000 ALTER TABLE `toro` DISABLE KEYS */;
INSERT INTO `toro` VALUES ('011HO00586','ACE-RED',1,'Activo'),('011HO11272','GILCREST',1,'Activo'),('011HO11379','RABO',1,'Activo'),('011HO11380','ROBLE',1,'Activo'),('011HO11478','LEAF',1,'Activo'),('011HO11499','MEGLO',1,'Activo'),('011HO11690','TIM',1,'Activo'),('011HO11716','JOEBOT',1,'Activo'),('011HO11725','AMULET',1,'Activo'),('011HO11737','HIDALGO',1,'Activo'),('011HO11740','FACET',1,'Activo'),('011HO11749','CRAIG',1,'Activo'),('011HO11750','FLACCO',1,'Activo'),('011HO11758','NIXER',1,'Activo'),('011HO11767','CONCORD',1,'Activo'),('011HO11780','EDDIE',1,'Activo'),('011HO11786','FAD',1,'Activo'),('011HO11803','EXTRA',1,'Activo'),('011HO11813','TOOHOT',1,'Activo'),('011HO11823','TIEROD',1,'Activo'),('011HO11826','LOBELLO',1,'Activo'),('011HO11827','MIGHTY P',1,'Activo'),('011HO11855','ADMIN',1,'Activo'),('011HO11866','HUNTER',1,'Activo'),('011HO11884','MAYO',1,'Activo'),('011HO11887','MARATHON',1,'Activo'),('011HO11892','MAESTRO',1,'Activo'),('011HO11911','DOOZER',1,'Activo'),('011HO11957','DOSSIER',1,'Activo'),('011HO11963','SWAG',1,'Activo'),('011HO11970','JABBA',1,'Activo'),('011HO11982','SPRITE',1,'Activo'),('011HO11987','PUEBLO',1,'Activo'),('011HO11993','BOMBAST',1,'Activo'),('011HO12021','SPITFIRE',1,'Activo'),('011HO12024','EXPAT',1,'Activo'),('011HO12029','MODER8',1,'Activo'),('011HO12050','BIGFORK',1,'Activo'),('011HO12052','KALISPELL',1,'Activo'),('011HO12075','LIFELINE',1,'Activo'),('011HO12082','DPORT',1,'Activo'),('011HO12083','ANTONIO',1,'Activo'),('011HO12093','NITRO',1,'Activo'),('011HO12094','ADMIRAL',1,'Activo'),('011HO12109','LITEYEAR',1,'Activo'),('011HO12115','FORCE',1,'Activo'),('011HO12122','STARJACK',1,'Activo'),('011HO12123','SNAPCHAT',1,'Activo'),('011HO12124','GOPRO',1,'Activo'),('011HO12128','49ER',1,'Activo'),('011HO12148','WILLIE',1,'Activo'),('011HO12155','ALTUVE',1,'Activo'),('011HO12165','BUGGY',1,'Activo'),('011HO12168','GILMORE',1,'Activo'),('011HO12169','EMIRATES',1,'Activo'),('011HO12174','EXPLOSION',1,'Activo'),('011HO12191','KETUCHEL',1,'Activo'),('011HO12194','CABOT',1,'Activo'),('011HO12197','BIGBOY',1,'Activo'),('011HO12203','DARVISH',1,'Activo'),('011HO12204','ASIF',1,'Activo'),('011HO12206','RONDON',1,'Activo'),('011HO12208','KADERO',1,'Activo'),('011HO12225','ZZZ',1,'Activo'),('011HO12228','OVACAO',1,'Activo'),('011HO12235','GINGER',1,'Activo'),('011HO12237','FLADON',1,'Activo'),('011HO12242','HATCHE',1,'Activo'),('011HO12258','STAFFORD',1,'Activo'),('011HO12261','SIZZLER',1,'Activo'),('011HO12263','PINETA',1,'Activo'),('011HO12275','ZIGZAG',1,'Activo'),('011HO12277','MOCON',1,'Activo'),('011HO12278','BENTON',1,'Activo'),('011HO12282','LOCH',1,'Activo'),('011HO12287','EDIFY',1,'Activo'),('011HO12293','BUNDLE',1,'Activo'),('011HO12308','GRUNGE',1,'Activo'),('011HO12311','GLO',1,'Activo'),('011HO12314','BLUEDEVIL',1,'Activo'),('011HO12317','AGOTADO',1,'Activo'),('011HO12326','DEBUG',1,'Activo'),('011HO12328','INDIGO',1,'Activo'),('011HO12329','MAUI',1,'Activo'),('011HO12333','RUBAN',1,'Activo'),('011HO12334','INDULGE',1,'Activo'),('011HO12342','CURRY',1,'Activo'),('011JE01179','VICEROY',3,'Activo'),('011JE01308','RAZARRI',3,'Activo'),('011JE01326','CHIVE',3,'Activo'),('011JE01329','WISHBONE',3,'Activo'),('011JE01338','RICHT',3,'Activo'),('011JE01339','GRONK',3,'Activo'),('011JE01348','ZIZIC',3,'Activo'),('011JE01366','RASHFORD',3,'Activo'),('011JE01369','MONTRA',3,'Activo'),('511HO11716','JOEBOT',2,'Activo'),('511HO11725','AMULET',2,'Activo'),('511HO11750','FLACCO',2,'Activo'),('511HO11788','EMBOSS',2,'Activo'),('511HO11813','TOOHOT',2,'Activo'),('511HO11826','LOBELLO',2,'Activo'),('511HO11888','DURST',2,'Activo'),('511HO11957','DOSSIER',2,'Activo'),('511HO12000','REVIS',2,'Activo'),('511HO12050','BIGFORK',2,'Activo'),('511HO12093','NITRO',2,'Activo'),('511HO12115','FORCE',2,'Activo'),('511HO12177','SEVERINO',2,'Activo'),('511HO12226','LANCING',2,'Activo'),('511HO12264','ABBA',2,'Activo'),('511HO12275','ZIGZAG',2,'Activo'),('511HO12278','BENTON',2,'Activo'),('511HO12282','LOCH',2,'Activo'),('511JE01179','VICEROY',4,'Activo'),('511JE01329','WISHBONE',4,'Activo'),('511JE01340','MCGAHEE',4,'Activo'),('511JE01342','CABRERA',4,'Activo'),('511JE01345','GIANNIS',4,'Activo'),('511JE01379','ZIDANE',4,'Activo');
/*!40000 ALTER TABLE `toro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `toros`
--

DROP TABLE IF EXISTS `toros`;
/*!50001 DROP VIEW IF EXISTS `toros`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `toros` AS SELECT 
 1 AS `Arete`,
 1 AS `Nombre`,
 1 AS `Raza`,
 1 AS `Estatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `passw` varchar(30) NOT NULL,
  `id_permiso` int(11) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `id_u_registro` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_permiso` (`id_permiso`),
  KEY `id_u_registro` (`id_u_registro`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_permiso`) REFERENCES `permisos` (`id`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_u_registro`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Juan V','123',1,'JuanV1',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `registro_U` AFTER INSERT ON `usuario` FOR EACH ROW begin
				insert into bitacora(id_bit,id_usuario,fecha,descripcion)
                values(null,1,now(), concat("El usuario ",(select usuario from usuario where id=new.id_u_registro)," creo al usuario ",new.usuario));
            end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `bitacora_c`
--

/*!50001 DROP VIEW IF EXISTS `bitacora_c`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bitacora_c` AS select `u`.`usuario` AS `Usuario`,`b`.`fecha` AS `Fecha`,`b`.`descripcion` AS `Descripcion` from (`usuario` `u` join `bitacora` `b` on((`u`.`id` = `b`.`id_usuario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `info_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `info_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `info_usuarios` AS select `u`.`Nombre` AS `Nombre`,`u`.`usuario` AS `Usuario`,`p`.`Nombre` AS `Permiso`,`p`.`descripcion` AS `Descripcion` from (`usuario` `u` join `permisos` `p` on((`u`.`id_permiso` = `p`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inventario`
--

/*!50001 DROP VIEW IF EXISTS `inventario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inventario` AS select `t`.`id` AS `Arete`,`t`.`nombre` AS `Nombre`,`tr`.`id_termo` AS `Termo`,`c`.`num_canasta` AS `Canastilla`,`s`.`unidades` AS `Unidades` from (((`toro` `t` join `semen` `s` on((`t`.`id` = `s`.`id_toro`))) join `canastilla` `c` on((`s`.`id_canastilla` = `c`.`id_canastilla`))) join `termo` `tr` on((`tr`.`id_termo` = `c`.`id_termo`))) order by `t`.`id`,`tr`.`id_termo`,`c`.`id_canastilla` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lista_precios_sellor`
--

/*!50001 DROP VIEW IF EXISTS `lista_precios_sellor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_precios_sellor` AS select `t`.`id` AS `Arete`,`t`.`nombre` AS `Toro`,`r`.`nombre` AS `Raza`,`p`.`precio_publico` AS `Precio_Publico`,`p`.`desc_alta` AS `Descuento`,`p`.`apoyo` AS `Apoyo`,`p`.`precio_productor` AS `Precio_Productor` from ((`toro` `t` join `raza` `r` on((`t`.`id_raza` = `r`.`id`))) join `precios` `p` on((`t`.`id` = `p`.`id_toro`))) where (`p`.`id_empresa` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `toros`
--

/*!50001 DROP VIEW IF EXISTS `toros`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `toros` AS select `t`.`id` AS `Arete`,`t`.`nombre` AS `Nombre`,`r`.`nombre` AS `Raza`,`t`.`estatus` AS `Estatus` from (`toro` `t` join `raza` `r` on((`t`.`id_raza` = `r`.`id`))) */;
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

-- Dump completed on 2019-04-21 18:47:49
