-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: webappsaler
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (1,'site vitrine'),(2,'site e-commerce'),(3,'site dynamique');
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef_de_projet`
--

DROP TABLE IF EXISTS `chef_de_projet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chef_de_projet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `boost_production` int NOT NULL,
  `id_collaborateur` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `chef_de_projet_collaborateur_id_fk` (`id_collaborateur`),
  CONSTRAINT `chef_de_projet_collaborateur_id_fk` FOREIGN KEY (`id_collaborateur`) REFERENCES `collaborateur` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_de_projet`
--

LOCK TABLES `chef_de_projet` WRITE;
/*!40000 ALTER TABLE `chef_de_projet` DISABLE KEYS */;
INSERT INTO `chef_de_projet` VALUES (4,8,14),(5,10,17),(6,10,18),(7,2,15);
/*!40000 ALTER TABLE `chef_de_projet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `raison_sociale` varchar(50) NOT NULL,
  `ridet` varchar(10) NOT NULL,
  `ssi2` tinyint(1) DEFAULT NULL,
  `command` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'skazy','ridet001',1,1,'alex'),(2,'sf2i','ridet003',1,3,'jean'),(3,'geant','ridet002',0,2,'nathan');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collaborateur`
--

DROP TABLE IF EXISTS `collaborateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collaborateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_lastname` varchar(50) NOT NULL,
  `niveau_competence` enum('1','2','3') NOT NULL,
  `prime_embauche` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collaborateur`
--

LOCK TABLES `collaborateur` WRITE;
/*!40000 ALTER TABLE `collaborateur` DISABLE KEYS */;
INSERT INTO `collaborateur` VALUES (14,'leon moroval','1',5),(15,'anselm trinh','1',5),(16,'elias baguette','2',6),(17,'jonathan','2',7),(18,'mavrick','2',8),(19,'vivian uedre','2',5),(20,'corentin longbar','2',6),(21,'isaia map et riz','2',7),(22,'angy angel','1',6),(23,'greg mma','2',5),(24,'yohann crane-doux','2',7),(25,'colin sora','2',4),(26,'bradon roti','3',2);
/*!40000 ALTER TABLE `collaborateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composant`
--

DROP TABLE IF EXISTS `composant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_module` int DEFAULT NULL,
  `libelle` varchar(50) NOT NULL,
  `charge` int NOT NULL,
  `progression` int NOT NULL,
  `type` enum('1','2','3') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `composant_module_id_fk` (`id_module`),
  CONSTRAINT `composant_module_id_fk` FOREIGN KEY (`id_module`) REFERENCES `module` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composant`
--

LOCK TABLES `composant` WRITE;
/*!40000 ALTER TABLE `composant` DISABLE KEYS */;
/*!40000 ALTER TABLE `composant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developpement`
--

DROP TABLE IF EXISTS `developpement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developpement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_developpeur` int NOT NULL,
  `id_chef_de_projet` int DEFAULT NULL,
  `type` enum('1','2','3') DEFAULT NULL,
  `id_application` int DEFAULT NULL,
  `id_module` int DEFAULT NULL,
  `id_composant` int DEFAULT NULL,
  `prix` int NOT NULL,
  `status` enum('0','1','2','3','4') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `developpement_developpeur_id_fk` (`id_developpeur`),
  KEY `developpement_chef_de_projet_id_fk` (`id_chef_de_projet`),
  KEY `developpement_application_id_fk` (`id_application`),
  KEY `developpement_module_id_fk` (`id_module`),
  KEY `developpement_composant_id_fk` (`id_composant`),
  CONSTRAINT `developpement_application_id_fk` FOREIGN KEY (`id_application`) REFERENCES `application` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `developpement_chef_de_projet_id_fk` FOREIGN KEY (`id_chef_de_projet`) REFERENCES `chef_de_projet` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `developpement_composant_id_fk` FOREIGN KEY (`id_composant`) REFERENCES `composant` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `developpement_developpeur_id_fk` FOREIGN KEY (`id_developpeur`) REFERENCES `developpeur` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `developpement_module_id_fk` FOREIGN KEY (`id_module`) REFERENCES `module` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developpement`
--

LOCK TABLES `developpement` WRITE;
/*!40000 ALTER TABLE `developpement` DISABLE KEYS */;
/*!40000 ALTER TABLE `developpement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developpeur`
--

DROP TABLE IF EXISTS `developpeur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developpeur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `indice_production` int NOT NULL,
  `id_collaborateur` int NOT NULL,
  `competence` enum('1','2','3') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `developpeur_developpement_id_fk` (`id_collaborateur`),
  CONSTRAINT `developpeur_collaborateur_id_fk` FOREIGN KEY (`id_collaborateur`) REFERENCES `collaborateur` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `developpeur_developpement_id_fk` FOREIGN KEY (`id_collaborateur`) REFERENCES `developpement` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developpeur`
--

LOCK TABLES `developpeur` WRITE;
/*!40000 ALTER TABLE `developpeur` DISABLE KEYS */;
/*!40000 ALTER TABLE `developpeur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipe`
--

DROP TABLE IF EXISTS `equipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(10) NOT NULL,
  `id_chef_de_projet` int NOT NULL,
  `id_developpement` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `equipe_chef_de_projet_id_fk` (`id_chef_de_projet`),
  KEY `equipe_developpement_id_fk` (`id_developpement`),
  CONSTRAINT `equipe_chef_de_projet_id_fk` FOREIGN KEY (`id_chef_de_projet`) REFERENCES `chef_de_projet` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `equipe_developpement_id_fk` FOREIGN KEY (`id_developpement`) REFERENCES `developpement` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipe`
--

LOCK TABLES `equipe` WRITE;
/*!40000 ALTER TABLE `equipe` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipe_base`
--

DROP TABLE IF EXISTS `equipe_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipe_base` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_equipe` int NOT NULL,
  `id_developpeur` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `equipe_base_equipe_id_fk` (`id_equipe`),
  KEY `equipe_base_developpeur_id_fk` (`id_developpeur`),
  CONSTRAINT `equipe_base_developpeur_id_fk` FOREIGN KEY (`id_developpeur`) REFERENCES `developpeur` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `equipe_base_equipe_id_fk` FOREIGN KEY (`id_equipe`) REFERENCES `equipe` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipe_base`
--

LOCK TABLES `equipe_base` WRITE;
/*!40000 ALTER TABLE `equipe_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipe_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  `id_application` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projet`
--

DROP TABLE IF EXISTS `projet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projet` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projet`
--

LOCK TABLES `projet` WRITE;
/*!40000 ALTER TABLE `projet` DISABLE KEYS */;
/*!40000 ALTER TABLE `projet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-04  4:05:41
