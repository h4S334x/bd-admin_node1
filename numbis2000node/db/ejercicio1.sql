-- MariaDB dump 10.20-11.8.9-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ejercicio1
-- ------------------------------------------------------
-- Server version	11.8.9-MariaDB-2 from Debian

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Current Database: `ejercicio1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ejercicio1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;

USE `ejercicio1`;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_emp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `trabajo` varchar(60) NOT NULL,
  `edad` tinyint(3) unsigned NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `mail` varchar(100) NOT NULL,
  PRIMARY KEY (`id_emp`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES
(1,'Juan','Hagan','Programador Senior',32,120000.00,'juan_hagan@bignet.com'),
(2,'Gonzalo','Pillai','Programador Senior',32,110000.00,'g_pillai@bignet.com'),
(3,'Ana','Dharma','Desarrollador Web',27,90000.00,'ana@bignet.com'),
(4,'Maria','Anchor','Desarrollador Web',26,85000.00,'mary@bignet.com'),
(5,'Alfred','Fernandez','Programador',31,75000.00,'af@bignet.com'),
(6,'Juan','Agüero','Programador',36,85000.00,'juan@bignet.com'),
(7,'Eduardo','Sacan','Programador',25,85000.00,'eddi@bignet.com'),
(8,'Alejandro','Nanda','Programador',32,70000.00,'alenanda@bignet.com'),
(9,'Hernan','Rosso','Especialista Multimedia',33,90000.00,'hernan@bignet.com'),
(10,'Pablo','Simon','Especialista Multimedia',43,85000.00,'ps@bignet.com'),
(11,'Arturo','Hernandez','Especialista Multimedia',32,75000.00,'arturo@bignet.com'),
(12,'Jimena','Cazado','Diseñador Web',32,110000.00,'jimena@bignet.com'),
(13,'Roberto','Luis','Administrador de sistemas',35,100000.00,'roberto@bignet.com'),
(14,'Daniel','Gutierrez','Administrador de sistemas',34,900000.00,'daniel@bignet.com'),
(15,'Miguel','Harper','Ejecutivo de Ventas Senior',36,120000.00,'miguel@bignet.com'),
(16,'Monica','Sanchez','Ejecutivo de ventas',30,90000.00,'monica@bignet.com'),
(17,'Alicia','Simlai','Ejecutivo de ventas',27,70000.00,'alicia@bignet.com'),
(18,'Jose','Iriarte','Ejecutivo de ventas',27,72000.00,'jose@bignet.com'),
(19,'Sabrina','Allende','Gerente de Soporte tecnico',32,200000.00,'sabrina@bignet.com'),
(20,'Pedro','Campeon','Gerente de finanzas',36,220000.00,'pedro@bignet.com'),
(21,'Mariano','Dharma','Presidente',28,300000.00,'mariano@bignet.com');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES
(1,'flavia','81dc9bdb52d04dc20036dbd8313ed055'),
(2,'augusto','674f3c2c1a8a6f90461e8a66fb5550ba');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-11-16 13:25:28
