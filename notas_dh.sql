-- MySQL dump 10.13  Distrib 5.7.23, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: notas_dh
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Categorias`
--

DROP TABLE IF EXISTS `Categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categorias`
--

LOCK TABLES `Categorias` WRITE;
/*!40000 ALTER TABLE `Categorias` DISABLE KEYS */;
INSERT INTO `Categorias` VALUES (1,'Musica'),(2,'Deporte'),(3,'Libros'),(4,'Pagos'),(5,'Viajes'),(6,'Curso FULLSTACK'),(7,'Recetas '),(8,'Restaurantes'),(9,'Vinos'),(10,'Mascotas');
/*!40000 ALTER TABLE `Categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Notas`
--

DROP TABLE IF EXISTS `Notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(100) NOT NULL,
  `Usuario_id` int NOT NULL,
  `Contenido` varchar(255) DEFAULT NULL,
  `Fecha_creacion` date NOT NULL,
  `Fecha_modificacion` date DEFAULT NULL,
  `Eliminar` binary(1) DEFAULT NULL,
  `Fecha_eliminar` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_27058536-af01-4fcd-b6f7-967a85488814` (`Usuario_id`),
  CONSTRAINT `FK_27058536-af01-4fcd-b6f7-967a85488814` FOREIGN KEY (`Usuario_id`) REFERENCES `Usuarios` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Notas`
--

LOCK TABLES `Notas` WRITE;
/*!40000 ALTER TABLE `Notas` DISABLE KEYS */;
INSERT INTO `Notas` VALUES (4,'Bariloche',2,'Bueno, este fue un viajecito muy divertido con mis amigos.','2021-09-02',NULL,_binary '0',NULL),(5,'Torta café',1,'BIzcochuelo  con crema de manteca y saborizada naturalmente con gusto a café','2021-09-02',NULL,_binary '0',NULL),(6,'Laureano Gomez',2,'Este vino es excelente','2021-09-02',NULL,_binary '1',NULL),(7,'Sunderland',1,'La direccion del club es Lugones 3161.  Las clases se dictan de lunes a viernes de 17 a 20 horas. ','2021-09-02',NULL,_binary '1',NULL),(8,'Nepal',3,'Es el pais donde está la montaña más alta','2021-09-02',NULL,_binary '1',NULL),(9,'100 años de Soledad',4,'Hermosa novela de Gabriel García Marquez','2021-09-02',NULL,_binary '0',NULL),(10,'Alcorta',1,'Las clases en la plaza de Alcorta y Echeverria se dan los viernes a las 15 hroas','2021-09-02',NULL,_binary '0',NULL),(11,'Peñarol',7,'Este es el mejor club de Uruguay','2021-09-17','2021-09-24',_binary '1',NULL),(12,'Coldplay',6,'Muy buena música','2021-08-18',NULL,_binary '1',NULL),(13,'Patinaje',1,'El mejor deporte, muy completo','2021-07-01','2021-09-01',NULL,NULL);
/*!40000 ALTER TABLE `Notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Notas_Categorias`
--

DROP TABLE IF EXISTS `Notas_Categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notas_Categorias` (
  `id` int NOT NULL,
  `nota_id` int NOT NULL,
  `categoria_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2d8a0c75-242f-4368-8978-cb89630a5918` (`categoria_id`),
  KEY `nota_id` (`nota_id`),
  CONSTRAINT `FK_2d8a0c75-242f-4368-8978-cb89630a5918` FOREIGN KEY (`categoria_id`) REFERENCES `Categorias` (`id`),
  CONSTRAINT `notas_categorias_ibfk_1` FOREIGN KEY (`nota_id`) REFERENCES `Notas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Notas_Categorias`
--

LOCK TABLES `Notas_Categorias` WRITE;
/*!40000 ALTER TABLE `Notas_Categorias` DISABLE KEYS */;
INSERT INTO `Notas_Categorias` VALUES (1,4,5),(2,5,7),(3,6,9),(4,7,2),(5,8,5),(6,9,3),(7,10,2),(8,11,2),(9,12,1),(10,13,2);
/*!40000 ALTER TABLE `Notas_Categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuarios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,'Bea','Ham','bea@ham.com'),(2,'Ari','Barre','abarre@gmail.com'),(3,'Agus','Barre','agus.barre@ham.com'),(4,'Cata','Barre','cata.barre@gmail.com'),(5,'Ana','Mijee','ana.mij@adinet.com.uy'),(6,'Juan','Ham','jhambeck@ham.com'),(7,'Dani','Ham','dhamb@yahoo.com'),(8,'Cata','Cist','catacist@jaca.com'),(9,'Facu','Tis','facutis@hotmail.com'),(10,'Lucas ','Riv','Lrivero@yahoo.com');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'notas_dh'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-02 15:39:49
