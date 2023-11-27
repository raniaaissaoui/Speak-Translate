-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (x86_64)
--
-- Host: localhost    Database: translation_app_db
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `native` varchar(100) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (3,'English','English','en'),(4,'Afrikaans','Afrikaans','af'),(5,'Albanian','Shqip','sq'),(6,'Arabic','عربي','ar'),(7,'Armenian','Հայերէն','hy'),(8,'Azerbaijani','آذربایجان دیلی','az'),(9,'Basque','Euskara','eu'),(10,'Belarusian','Беларуская','be'),(11,'Bulgarian','Български','bg'),(12,'Catalan','Català','ca'),(13,'Chinese (Simplified)','中文简体','zh-CN'),(14,'Chinese (Traditional)','中文繁體','zh-TW'),(15,'Croatian','Hrvatski','hr'),(16,'Czech','Čeština','cs'),(17,'Danish','Dansk','da'),(18,'Dutch','Nederlands','nl'),(19,'Estonian','Eesti keel','et'),(20,'Filipino','Filipino','tl'),(21,'Finnish','Suomi','fi'),(22,'French','Français','fr'),(23,'Galician','Galego','gl'),(24,'Georgian','ქართული','ka'),(25,'German','Deutsch','de'),(26,'Greek','Ελληνικά','el'),(27,'Haitian Creole','Kreyòl ayisyen','ht'),(28,'Hebrew','עברית','iw'),(29,'Hindi','हिन्दी','hi'),(30,'Hungarian','Magyar','hu'),(31,'Icelandic','Íslenska','is'),(32,'Indonesian','Bahasa Indonesia','id'),(33,'Irish','Gaeilge','ga'),(34,'Italian','Italiano','it'),(35,'Japanese','日本語','ja'),(36,'Korean','한국어','ko'),(37,'Latvian','Latviešu','lv'),(38,'Lithuanian','Lietuvių kalba','lt'),(39,'Macedonian','Македонски','mk'),(40,'Malay','Malay','ms'),(41,'Maltese','Malti','mt'),(42,'Norwegian','Norsk','no'),(43,'Persian','فارسی','fa'),(44,'Polish','Polski','pl'),(45,'Portuguese','Português','pt'),(46,'Romanian','Română','ro'),(47,'Russian','Русский','ru'),(48,'Serbian','Српски','sr'),(49,'Slovak','Slovenčina','sk'),(50,'Slovenian','Slovensko','sl'),(51,'Spanish','Español','es'),(52,'Swahili','Kiswahili','sw'),(53,'Swedish','Svenska','sv'),(54,'Thai','ไทย','th'),(55,'Turkish','Türkçe','tr'),(56,'Ukrainian','Українська','uk'),(57,'Urdu','اردو','ur'),(58,'Vietnamese','Tiếng Việt','vi'),(59,'Welsh','Cymraeg','cy'),(60,'Yiddish','ייִדיש','yi');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `text` varchar(500) NOT NULL,
  `translation` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `translations_FK` (`userId`),
  CONSTRAINT `translations_FK` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_UN` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'translation_app_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-26  1:44:04
