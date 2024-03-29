-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: app_gestion
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('spatie.permission.cache','a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:4:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:3:\"ver\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"crear\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:6:\"editar\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:8:\"eliminar\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:15:\"Administración\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:11:\"Responsable\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:8:\"Asignado\";s:1:\"c\";s:3:\"web\";}}}',1711703829);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos`
--

DROP TABLE IF EXISTS `documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `relevancia` enum('Alta','Media','Baja') COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_aprobacion` date NOT NULL,
  `fecha_subida` date NOT NULL,
  `documento_pdf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos`
--

LOCK TABLES `documentos` WRITE;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
INSERT INTO `documentos` VALUES (1,'Documento 1','Descripción del Documento 1','Baja','2024-01-31','2022-10-25','documento1.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(2,'Documento 2','Descripción del Documento 2','Alta','2024-03-01','2022-11-07','documento2.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(3,'Documento 3','Descripción del Documento 3','Baja','2023-09-18','2022-04-18','documento3.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(4,'Documento 4','Descripción del Documento 4','Media','2023-07-01','2022-07-31','documento4.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(5,'Documento 5','Descripción del Documento 5','Baja','2023-06-11','2022-05-15','documento5.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(6,'Documento 6','Descripción del Documento 6','Baja','2023-09-22','2022-07-05','documento6.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(7,'Documento 7','Descripción del Documento 7','Media','2023-04-30','2023-01-26','documento7.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(8,'Documento 8','Descripción del Documento 8','Alta','2023-12-15','2022-08-15','documento8.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(9,'Documento 9','Descripción del Documento 9','Alta','2023-06-03','2022-12-19','documento9.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(10,'Documento 10','Descripción del Documento 10','Alta','2024-02-15','2023-03-05','documento10.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(11,'Documento 11','Descripción del Documento 11','Alta','2023-07-11','2022-06-19','documento11.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(12,'Documento 12','Descripción del Documento 12','Alta','2024-03-04','2023-01-09','documento12.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(13,'Documento 13','Descripción del Documento 13','Baja','2023-04-11','2022-11-20','documento13.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(14,'Documento 14','Descripción del Documento 14','Alta','2023-12-19','2023-03-23','documento14.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(15,'Documento 15','Descripción del Documento 15','Media','2023-04-19','2022-06-25','documento15.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(16,'Documento 16','Descripción del Documento 16','Media','2023-04-16','2023-01-06','documento16.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(17,'Documento 17','Descripción del Documento 17','Baja','2023-07-08','2023-01-07','documento17.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(18,'Documento 18','Descripción del Documento 18','Baja','2023-10-07','2022-11-04','documento18.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(19,'Documento 19','Descripción del Documento 19','Media','2024-01-29','2022-04-15','documento19.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(20,'Documento 20','Descripción del Documento 20','Baja','2023-07-03','2023-01-08','documento20.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(21,'Documento 21','Descripción del Documento 21','Media','2023-07-18','2022-08-01','documento21.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(22,'Documento 22','Descripción del Documento 22','Alta','2023-08-14','2022-04-11','documento22.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(23,'Documento 23','Descripción del Documento 23','Alta','2023-12-18','2022-08-29','documento23.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(24,'Documento 24','Descripción del Documento 24','Baja','2023-07-02','2022-07-19','documento24.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(25,'Documento 25','Descripción del Documento 25','Baja','2023-04-04','2022-05-16','documento25.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(26,'Documento 26','Descripción del Documento 26','Baja','2023-04-16','2022-07-18','documento26.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(27,'Documento 27','Descripción del Documento 27','Media','2024-03-24','2022-06-22','documento27.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(28,'Documento 28','Descripción del Documento 28','Alta','2023-06-06','2023-03-14','documento28.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(29,'Documento 29','Descripción del Documento 29','Baja','2023-05-07','2022-07-23','documento29.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(30,'Documento 30','Descripción del Documento 30','Baja','2023-07-03','2022-04-23','documento30.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(31,'Documento 31','Descripción del Documento 31','Alta','2023-06-01','2023-03-25','documento31.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(32,'Documento 32','Descripción del Documento 32','Media','2023-05-26','2022-12-30','documento32.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(33,'Documento 33','Descripción del Documento 33','Media','2023-08-01','2022-09-02','documento33.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(34,'Documento 34','Descripción del Documento 34','Baja','2023-08-21','2022-12-14','documento34.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(35,'Documento 35','Descripción del Documento 35','Baja','2023-05-07','2022-09-29','documento35.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(36,'Documento 36','Descripción del Documento 36','Media','2023-10-31','2022-09-29','documento36.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(37,'Documento 37','Descripción del Documento 37','Baja','2023-03-29','2022-06-01','documento37.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(38,'Documento 38','Descripción del Documento 38','Alta','2023-12-22','2022-09-17','documento38.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(39,'Documento 39','Descripción del Documento 39','Media','2023-09-14','2023-02-06','documento39.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(40,'Documento 40','Descripción del Documento 40','Baja','2023-09-15','2022-06-01','documento40.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(41,'Documento 41','Descripción del Documento 41','Baja','2023-07-20','2022-10-10','documento41.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(42,'Documento 42','Descripción del Documento 42','Baja','2024-03-05','2022-07-04','documento42.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(43,'Documento 43','Descripción del Documento 43','Baja','2023-04-03','2022-08-16','documento43.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(44,'Documento 44','Descripción del Documento 44','Media','2023-10-27','2022-07-24','documento44.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(45,'Documento 45','Descripción del Documento 45','Baja','2023-06-18','2022-10-26','documento45.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(46,'Documento 46','Descripción del Documento 46','Media','2024-03-23','2022-12-24','documento46.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(47,'Documento 47','Descripción del Documento 47','Baja','2023-04-19','2023-01-08','documento47.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(48,'Documento 48','Descripción del Documento 48','Baja','2023-04-24','2022-11-27','documento48.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(49,'Documento 49','Descripción del Documento 49','Alta','2023-07-14','2022-04-24','documento49.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54'),(50,'Documento 50','Descripción del Documento 50','Baja','2023-06-20','2022-05-10','documento50.pdf','2024-03-28 15:33:54','2024-03-28 15:33:54');
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_03_28_085032_create_permission_tables',2),(6,'2024_03_28_085712_create_documentos_table',3),(7,'2024_03_28_141216_create_personal_access_tokens_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(2,'App\\Models\\User',2),(3,'App\\Models\\User',3);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'ver','web','2024-03-28 07:54:18','2024-03-28 07:54:18'),(2,'crear','web','2024-03-28 07:54:18','2024-03-28 07:54:18'),(3,'editar','web','2024-03-28 07:54:18','2024-03-28 07:54:18'),(4,'eliminar','web','2024-03-28 07:54:18','2024-03-28 07:54:18');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(1,2),(2,2),(1,3);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administración','web','2024-03-28 07:54:18','2024-03-28 07:54:18'),(2,'Responsable','web','2024-03-28 07:54:18','2024-03-28 07:54:18'),(3,'Asignado','web','2024-03-28 07:54:18','2024-03-28 07:54:18');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('17yDXvjokIaQMEe57XzjBPabSD23lPpQEE4PKp4g',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV0NoSW5rcHVRWTRvemxybnBVUzBEZkJNMngwdW90Q0Q2UHExQnJ4dyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fX0=',1711650429),('BbcrDSh6pkA4UrpErZ7s5dIVknEUTdc3iI2zA0J4',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmdDS3pvVUpvUTNTWUc1UEhaV0tzR0JqNHZsajVjVVQ5a203SWRtYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1711647979);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Juan','insoundj@hotmail.com',NULL,'$2y$12$6SHOqiWNSkCfDdWkoo5izuHZ4zyhT8wDvvZ8G67HQDWX7beuha/VS',NULL,'2024-03-28 07:53:50','2024-03-28 07:53:50'),(2,'Ana','ana@gmail.com',NULL,'$2y$12$G5/CejUNXtiziwgzGrO14.n7HHqeujZwr2mRAwqdG8Hx7.I8o4/a.',NULL,'2024-03-28 08:30:00','2024-03-28 08:30:00'),(3,'María','maria@gmail.com',NULL,'$2y$12$.X.zh/3f1VqsorA6r779E.fwefb6WElhM4UsuK5ZqLfS8IpPTbwZi',NULL,'2024-03-28 08:53:38','2024-03-28 08:53:38'),(4,'José','jose@gmail.com',NULL,'$2y$12$W0lBDcTt.WzNZTt4LkHLeO8YfZ//cAWnwYmRT1TqSqFtRvPy20qGC',NULL,'2024-03-28 08:54:55','2024-03-28 08:54:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-28 19:31:52
