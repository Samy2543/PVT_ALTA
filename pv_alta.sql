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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canastilla`
--

LOCK TABLES `canastilla` WRITE;
/*!40000 ALTER TABLE `canastilla` DISABLE KEYS */;
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
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'MARQUEZ PADILLA JOSE DE JESUS','','',''),(2,'ALCALA GONZALEZ JOSE','','',''),(3,'DELGADO ANDRADE JOSE DE JESUS','','',''),(4,'AGROPECUARIO LA CUESTA, S.P.R. DE R.L.','','',''),(5,'GUTIERREZ LOZANO ABELARDO','','',''),(6,'MARQUEZ PADILLA MIGUEL','','',''),(7,'MUÑOZ DE ANDA RICARDO','','',''),(8,'ORORZCO ALCALA FRANCISCO JAVIER','','',''),(9,'PRODUCTORES DE ATOYONALCO S.P.R. DE R.L.','','',''),(10,'AGROPECUARIA EL GIGANTE S.A. DE C.V.','','',''),(11,'GONZALEZ GUTIERREZ FERNANDO','','',''),(12,'GONZALEZ GUTIERREZ JORGE','','',''),(13,'GONZALEZ GUTIERREZ JOSE DE JESUS','','',''),(14,'ALVAREZ GONZALEZ JESUS ALEJANDRO','','',''),(15,'HORNEDO MARIN ALEJANDRINA','','',''),(16,'HERNANDEZ MUÑOZ LEOPOLDO','','',''),(17,'PADILLA PADILLA JOSE DE JESUS','','',''),(18,'DIAZ QUEZADA J. RAMIRO','','',''),(19,'MARQUEZ PADILLA SALVADOR','','',''),(20,'GONZALEZ CERDA EZEQUIEL','','',''),(21,'GRUPO CIENEGUITA, S.P.R. DE R.L.','','',''),(22,'PRODUCTOS PECUARIOS SAN EUGENIO, SPR DE RL','','',''),(23,'PEREZ GUTIERREZ DAVID','','',''),(24,'AGRICOLA GANADERA LA ESTANCIA','','',''),(25,'AGROPECUARIA POTRERO DEL REFUGIO, S.P.R. DE R.L.','','',''),(26,'AVILA SANTOYO SALVADOR','','',''),(27,'AGRICOLA Y GANADERA DEL BAJI, S.P.R. DE R.L.','','',''),(28,'AGROPERUARIA LOS PIONEROS S.P.R. DE R.L.','','',''),(29,'CUMMINGS DE ALBA EMET VICTOR','','',''),(30,'FRANCO VERDIN RAMIRO','','',''),(31,'EL MIRADOR DE AGUASCALIENTES, S.P.R. DE R.L.','','',''),(32,'ESPARZA RUELAS MIGUEL','','',''),(33,'GARCIA GUTIERREZ MANUEL','','',''),(34,'GOMEZ GONZALEZ RAMON','','',''),(35,'MARTINEZ MARTINEZ RAUL','','',''),(36,'MUÑOZ DE ALBA INDALECIO','','',''),(37,'MORALES ALARCON ABRAHAM','','',''),(38,'MORENO VELAZQUEZ CARLOS','','',''),(39,'MUÑOZ MARQUEZ BALTAZAR','','',''),(40,'ORNELAS GUTIERREZ JOSE GUADALUPE','','',''),(41,'PADILLA DIAZ GERARDO ERNESTO','','',''),(42,'PRODUCTORA AGROPECUARIA ASUNCION S.P.R. DE R.L.','','',''),(43,'SALADO GONZALEZ LORENZO','','',''),(44,'SILVA ARMAS JAIME','','',''),(45,'TORRES MARTINEZ JUAN GABRIEL','','',''),(46,'TLACUACHE, S.A. DE C.V.','','',''),(47,'UNION AGROPECUARIA DE AGUASCALIENTES, S.A. DE C.V.','','',''),(48,'RAMIREZ ESCOTO JESUS','','',''),(49,'RANCHO LOGO Y ASOCIADOS, S.P.R. DE R.L.','','',''),(50,'VAQUILLOS, S.P.R. DE R.L.','','',''),(51,'RAMIREZ JIMENEZ JOSE DE JESUS','','',''),(52,'RIOS ROMO ERASMO','','',''),(53,'GANADERIA MEDIA LUNA, S. DE P.R. DE R.L.','','',''),(54,'PRODUCTORA AGROPECUARIA CALIFORNIA, S.P.R. DE R.','','',''),(55,'SUTTI OSORIO PREDO MARIO','','',''),(56,'GONZALEZ REYNOSO CARLOS','','',''),(57,'GONZALEZ ULLOA JAIME','','',''),(58,'ALVAREZ ROMO JUAN FRANCIS','','',''),(59,'ORORZCO JIMENEZ FERNANDO','','',''),(60,'DE LA TORRE DE LA TORRE LUIS','','',''),(61,'JIMENEZ JIMENEZ CELESTINO','','',''),(62,'GONZALEZ ENQUIREZ JOSE','','',''),(63,'PEDROZA GUZMAN JAVIER DE LA LUZ','','',''),(64,'AGROPECUARIA EL TEPETATILLO, S.A. DE C.V.','','',''),(65,'HERNANDEZ VILLALPANDO GUADALUPE','','',''),(66,'SUTTI MARIN ERILIO','','',''),(67,'SUTTI MARIN MARIO','','',''),(68,'SUTTI MARIN PEDRO','','',''),(69,'PONCE HERNANDEZ JORGE EDUARDO','','',''),(70,'MARQUEZ MARQUEZ JOSE DE JESUS','','',''),(71,'DIAZ ESPARZA OFELIA','','',''),(72,'RANCHO FAPERGO, S.P.R. DE R.L. DE C.V.','','',''),(73,'SANTOSCOY PADILLA GENARO','','',''),(74,'UNION DE PRODUCTORES DE LECHE DE TEPATITLAN, S.','','',''),(75,'FRANCO JAUREGUI CARLOS','','',''),(76,'REYNOSO REYNOSO EMANUEL','','',''),(77,'PEDORZA HERNANDEZ ARTURO','','',''),(78,'GOMEZ CASTELLANOS JOSE DE JESUS','','',''),(79,'MARTIN SERRANO MIGUEL','','',''),(80,'GRANJA TONATIZIN, S.A. DE C.V.','','',''),(81,'GUILLEN TUEYES ELEUTERIO','','',''),(82,'GONEZ LOZA J. ROSARIO','','',''),(83,'VITAL SILVA GERARDO','','',''),(84,'ESCALERA PEREZ ALEJO','','',''),(85,'ESCALERA PEREZ JOSE LUIS','','',''),(86,'PONCE HERNANDEZ OSCAR','','',''),(87,'MARTINEZ TOPETE ANA SOFIA','','',''),(88,'RESENDIZ MACIAS MARIA AMPARO','','',''),(89,'GONZALEZ VILLASEÑOR CARLOS ERNESTO','','',''),(90,'BRIZUELA LOZANO J. GUADALUPE','','',''),(91,'AGROINDUSTRIAL PLAN DE GARABATOS, S.C. DE R.L.','','',''),(92,'MARTIN CASTELLANOS JOSE LUIS ','','',''),(93,'BARRAGAN MARTINEZ ALFREDO','','',''),(94,'RODRIGUEZ SANCHEZ JUNIOR ABELARDO','','',''),(95,'AGROLACTEOS EL SOCORRO, S.P.R. DE R.L.','','',''),(97,'NUTRICION Y REPRODUCCION DE LOS ALTOS, S.A. DE C.V.','','',''),(98,'GRUPO SAN JACINTO, S.A. DE C.V.','','',''),(99,'GONZALEZ GUTIERREZ ANGEL','','',''),(100,'ROMO MUÑOZ MANUEL','','',''),(101,'OÑATE AGUIRRE LUIS FRANCISCO','','',''),(102,'ESTABLO BETANIA S. DE P.R. DE R.L.','','',''),(103,'AGROPECUARIA LA CUESTA, S.P.R. DE R.L.','','',''),(104,'PRODUCTOS AGROPECUARIOS DVG, S.A. DE C.V.','','',''),(105,'GONZALEZ JIMENEZ ENRIQUE','','',''),(106,'GONZALEZ GUTIERREZ ANTONIO','','',''),(107,'CAMPOS HURTADO ROBERTO FLORENTINO','','',''),(108,'GONZALEZ PEREZ BENJAMIN LUIS J','','',''),(109,'GOMEZ SANDOVAL ABEL','','',''),(110,'PADILLA GONZALEZ ISMAEL','','',''),(111,'SIGAM ALIMENTOS LACTEOS, S.A. DE C.V.','','',''),(112,'PRODUCTORES DE LECHE SAN CARLOS, S.C. DE R.L.D.','','',''),(114,'GUZMAN ROMO GERARDO','','',''),(115,'RANCHO LA CHIRIPA, S. DE P.R. DE R.L.','','',''),(116,'ALTA GENETICS DE MEXICO, S. DE R.L. DE C.V.','','',''),(117,'MUÑOZ RAMIREZ DANIEL','','',''),(118,'GRUPO SOLIDARIO DE R.S.E. ILIMITADA','','',''),(119,'DELGADO ANDRADE JOSE DE JESUS','','',''),(120,' ALCALA ROMO PAOLA LETICIA','','',''),(121,'MONDRAGON BARRIOS EDGAR','','',''),(122,'ALVAREZ RODIGUEZ HERMANOS, S.A. DE C.V.','','',''),(123,'GUERRERO MEDINA ALBERTO','','',''),(124,'DISTRIBUIDORA DE INSUMOS PECUARIOS EL RODEO S.','','','');
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
  `id_termo` int(11) NOT NULL,
  `numero_termo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_termo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termo`
--

LOCK TABLES `termo` WRITE;
/*!40000 ALTER TABLE `termo` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_cambio`
--

LOCK TABLES `tipo_cambio` WRITE;
/*!40000 ALTER TABLE `tipo_cambio` DISABLE KEYS */;
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
INSERT INTO `toro` VALUES ('011HO00586','ACE-RED',1,'Activo'),('011HO11272','GILCREST',1,'Activo'),('011HO11379','RABO',1,'Activo'),('011HO11380','ROBLE',1,'Activo'),('011HO11478','LEAF',1,'Activo'),('011HO11499','MEGLO',1,'Activo'),('011HO11690','TIM',1,'Activo'),('011HO11716','JOEBOT',1,'Activo'),('011HO11725','AMULET',1,'Activo'),('011HO11737','HIDALGO',1,'Activo'),('011HO11740','FACET',1,'Activo'),('011HO11749','CRAIG',1,'Activo'),('011HO11750','FLACCO',1,'Activo'),('011HO11758','NIXER',1,'Activo'),('011HO11767','CONCORD',1,'Activo'),('011HO11780','EDDIE',1,'Activo'),('011HO11786','FAD',1,'Activo'),('011HO11803','EXTRA',1,'Activo'),('011HO11813','TOOHOT',1,'Activo'),('011HO11823','TIEROD',1,'Activo'),('011HO11826','LOBELLO',1,'Activo'),('011HO11827','MIGHTY P',1,'Activo'),('011HO11855','ADMIN',1,'Activo'),('011HO11866','HUNTER',1,'Activo'),('011HO11884','MAYO',1,'Activo'),('011HO11887','MARATHON',1,'Activo'),('011HO11892','MAESTRO',1,'Activo'),('011HO11911','DOOZER',1,'Activo'),('011HO11957','DOSSIER',1,'Activo'),('011HO11963','SWAG',1,'Activo'),('011HO11970','JABBA',1,'Activo'),('011HO11982','SPRITE',1,'Activo'),('011HO11987','PUEBLO',1,'Activo'),('011HO11993','BOMBAST',1,'Activo'),('011HO12021','SPITFIRE',1,'Activo'),('011HO12024','EXPAT',1,'Activo'),('011HO12029','MODER8',1,'Activo'),('011HO12050','BIGFORK',1,'Activo'),('011HO12052','KALISPELL',1,'Activo'),('011HO12075','LIFELINE',1,'Activo'),('011HO12082','DPORT',1,'Activo'),('011HO12083','ANTONIO',1,'Activo'),('011HO12093','NITRO',1,'Activo'),('011HO12094','ADMIRAL',1,'Activo'),('011HO12109','LITEYEAR',1,'Activo'),('011HO12115','FORCE',1,'Activo'),('011HO12122','STARJACK',1,'Activo'),('011HO12123','SNAPCHAT',1,'Activo'),('011HO12124','GOPRO',1,'Activo'),('011HO12128','49ER',1,'Activo'),('011HO12148','WILLIE',1,'Activo'),('011HO12155','ALTUVE',1,'Activo'),('011HO12165','BUGGY',1,'Activo'),('011HO12168','GILMORE',1,'Activo'),('011HO12169','EMIRATES',1,'Activo'),('011HO12174','EXPLOSION',1,'Activo'),('011HO12191','KEUCHEL',1,'Activo'),('011HO12194','CABOT',1,'Activo'),('011HO12197','BIGBOY',1,'Activo'),('011HO12203','DARVISH',1,'Activo'),('011HO12204','ASIF',1,'Activo'),('011HO12206','RONDON',1,'Activo'),('011HO12208','KADERO',1,'Activo'),('011HO12225','ZZZ',1,'Activo'),('011HO12228','OVACAO',1,'Activo'),('011HO12235','GINGER',1,'Activo'),('011HO12237','FLADON',1,'Activo'),('011HO12242','HATCHE',1,'Activo'),('011HO12258','STAFFORD',1,'Activo'),('011HO12261','SIZZLER',1,'Activo'),('011HO12263','PINETTA',1,'Activo'),('011HO12275','ZIGZAG',1,'Activo'),('011HO12277','MOCON',1,'Activo'),('011HO12278','BENTON',1,'Activo'),('011HO12282','LOCH',1,'Activo'),('011HO12287','EDIFY',1,'Activo'),('011HO12293','BUNDLE',1,'Activo'),('011HO12308','GRUNGE',1,'Activo'),('011HO12311','GLO',1,'Activo'),('011HO12314','BLUEDEVIL',1,'Activo'),('011HO12317','AGOTADO',1,'Activo'),('011HO12326','DEBUG',1,'Activo'),('011HO12328','INDIGO',1,'Activo'),('011HO12329','MAUI',1,'Activo'),('011HO12333','RUBAN',1,'Activo'),('011HO12334','INDULGE',1,'Activo'),('011HO12342','CURRY',1,'Activo'),('011JE01179','VICEROY',3,'Activo'),('011JE01308','RAZARRI',3,'Activo'),('011JE01326','CHIVE',3,'Activo'),('011JE01329','WISHBONE',3,'Activo'),('011JE01338','RICHT',3,'Activo'),('011JE01339','GRONK',3,'Activo'),('011JE01348','ZIZIC',3,'Activo'),('011JE01366','RASHFORD',3,'Activo'),('011JE01369','MONTRA',3,'Activo'),('511HO11716','JOEBOT',2,'Activo'),('511HO11725','AMULET',2,'Activo'),('511HO11750','FLACCO',2,'Activo'),('511HO11788','EMBOSS',2,'Activo'),('511HO11813','TOOHOT',2,'Activo'),('511HO11826','LOBELLO',2,'Activo'),('511HO11888','DURST',2,'Activo'),('511HO11957','DOSSIER',2,'Activo'),('511HO12000','REVIS',2,'Activo'),('511HO12050','BIGFORK',2,'Activo'),('511HO12093','NITRO',2,'Activo'),('511HO12115','FORCE',2,'Activo'),('511HO12177','SEVERINO',2,'Activo'),('511HO12226','LANSING',2,'Activo'),('511HO12264','ABBA',2,'Activo'),('511HO12275','ZIGZAG',2,'Activo'),('511HO12278','BENTON',2,'Activo'),('511HO12282','LOCH',2,'Activo'),('511JE01179','VICEROY',4,'Activo'),('511JE01329','WISHBONE',4,'Activo'),('511JE01340','MCGAHEE',4,'Activo'),('511JE01342','CABRERA',4,'Activo'),('511JE01345','GIANNIS',4,'Activo'),('511JE01379','ZIDANE',4,'Activo');
/*!40000 ALTER TABLE `toro` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`id`),
  KEY `id_permiso` (`id_permiso`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_permiso`) REFERENCES `permisos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-18 20:39:53
