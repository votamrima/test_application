-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.56.70    Database: words
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `english`
--

DROP TABLE IF EXISTS `english`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `english` (
  `english_id` int(25) NOT NULL AUTO_INCREMENT,
  `english_word` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `english_comment` text COLLATE utf8_unicode_ci,
  `english_example` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`english_id`),
  UNIQUE KEY `id_UNIQUE` (`english_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `english`
--

LOCK TABLES `english` WRITE;
/*!40000 ALTER TABLE `english` DISABLE KEYS */;
/*!40000 ALTER TABLE `english` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `german`
--

DROP TABLE IF EXISTS `german`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `german` (
  `german_id` int(25) NOT NULL AUTO_INCREMENT,
  `german_word` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `german_comment` text COLLATE utf8_unicode_ci,
  `german_example` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`german_id`),
  UNIQUE KEY `id_UNIQUE` (`german_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `german`
--

LOCK TABLES `german` WRITE;
/*!40000 ALTER TABLE `german` DISABLE KEYS */;
/*!40000 ALTER TABLE `german` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newwords`
--

DROP TABLE IF EXISTS `newwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang1` varchar(250) DEFAULT NULL,
  `lang2` varchar(259) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newwords`
--

LOCK TABLES `newwords` WRITE;
/*!40000 ALTER TABLE `newwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `newwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `russian`
--

DROP TABLE IF EXISTS `russian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `russian` (
  `russian_id` int(25) NOT NULL AUTO_INCREMENT,
  `russian_word` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `russian_comment` text COLLATE utf8_unicode_ci,
  `russian_example` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`russian_id`),
  UNIQUE KEY `id_UNIQUE` (`russian_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `russian`
--

LOCK TABLES `russian` WRITE;
/*!40000 ALTER TABLE `russian` DISABLE KEYS */;
/*!40000 ALTER TABLE `russian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words_tables`
--

DROP TABLE IF EXISTS `words_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `words_tables` (
  `idwords_tables` int(25) NOT NULL,
  `id_german` int(25) NOT NULL,
  `id_english` int(25) NOT NULL,
  `id_russian` int(25) NOT NULL,
  PRIMARY KEY (`idwords_tables`),
  UNIQUE KEY `idwords_tables_UNIQUE` (`idwords_tables`),
  KEY `id_german_idx` (`id_german`),
  KEY `id_english_idx` (`id_english`),
  KEY `id_russian_idx` (`id_russian`),
  CONSTRAINT `id_english` FOREIGN KEY (`id_english`) REFERENCES `english` (`english_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_german` FOREIGN KEY (`id_german`) REFERENCES `german` (`german_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_russian` FOREIGN KEY (`id_russian`) REFERENCES `russian` (`russian_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words_tables`
--

LOCK TABLES `words_tables` WRITE;
/*!40000 ALTER TABLE `words_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `words_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'words'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-05 19:52:04

