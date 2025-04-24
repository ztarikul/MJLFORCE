-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: mjlforce
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `attendance_histories`
--

DROP TABLE IF EXISTS `attendance_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `in_out` int DEFAULT NULL,
  `lat` decimal(9,6) DEFAULT NULL,
  `long` decimal(9,6) DEFAULT NULL,
  `street_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_histories`
--

LOCK TABLES `attendance_histories` WRITE;
/*!40000 ALTER TABLE `attendance_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_teams`
--

DROP TABLE IF EXISTS `business_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `business_teams_name_unique` (`name`),
  UNIQUE KEY `business_teams_code_unique` (`code`),
  UNIQUE KEY `business_teams_sap_code_unique` (`sap_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_teams`
--

LOCK TABLES `business_teams` WRITE;
/*!40000 ALTER TABLE `business_teams` DISABLE KEYS */;
INSERT INTO `business_teams` VALUES (1,'Industrial',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `business_teams` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `complaint_types`
--

DROP TABLE IF EXISTS `complaint_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaint_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `complaint_types_name_unique` (`name`),
  UNIQUE KEY `complaint_types_code_unique` (`code`),
  UNIQUE KEY `complaint_types_sap_code_unique` (`sap_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_types`
--

LOCK TABLES `complaint_types` WRITE;
/*!40000 ALTER TABLE `complaint_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_groups`
--

DROP TABLE IF EXISTS `customer_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_groups_name_unique` (`name`),
  UNIQUE KEY `customer_groups_code_unique` (`code`),
  UNIQUE KEY `customer_groups_sap_code_unique` (`sap_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_groups`
--

LOCK TABLES `customer_groups` WRITE;
/*!40000 ALTER TABLE `customer_groups` DISABLE KEYS */;
INSERT INTO `customer_groups` VALUES (1,'Industrial',NULL,'01',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(2,'Direct',NULL,'06',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(3,'Distributor',NULL,'05',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(4,'Export-Deemed',NULL,'09',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(5,'Export',NULL,'08',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(6,'Marine',NULL,'10',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(7,'Retail Offline',NULL,'02',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(8,'Wholesale',NULL,'04',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(9,'Retail Online',NULL,'03',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL);
/*!40000 ALTER TABLE `customer_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_types`
--

DROP TABLE IF EXISTS `customer_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_types_name_unique` (`name`),
  UNIQUE KEY `customer_types_code_unique` (`code`),
  UNIQUE KEY `customer_types_sap_code_unique` (`sap_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_types`
--

LOCK TABLES `customer_types` WRITE;
/*!40000 ALTER TABLE `customer_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designations`
--

DROP TABLE IF EXISTS `designations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `designations_name_unique` (`name`),
  UNIQUE KEY `designations_code_unique` (`code`),
  UNIQUE KEY `designations_sap_code_unique` (`sap_code`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designations`
--

LOCK TABLES `designations` WRITE;
/*!40000 ALTER TABLE `designations` DISABLE KEYS */;
INSERT INTO `designations` VALUES (1,'Cheif Executive Officer',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(2,'Chief Operating Officer',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(3,'Senior General Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(4,'General Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(5,'Deputy General Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(6,'Assistant General Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(7,'Senior Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(8,'Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(9,'Deputy Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(10,'Assistant Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(11,'Sr. Executive',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(12,'Executive',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(13,'Officer',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(14,'Jr. Officer',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL);
/*!40000 ALTER TABLE `designations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribution_ches`
--

DROP TABLE IF EXISTS `distribution_ches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distribution_ches` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `distribution_ches_name_unique` (`name`),
  UNIQUE KEY `distribution_ches_code_unique` (`code`),
  UNIQUE KEY `distribution_ches_sap_code_unique` (`sap_code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribution_ches`
--

LOCK TABLES `distribution_ches` WRITE;
/*!40000 ALTER TABLE `distribution_ches` DISABLE KEYS */;
INSERT INTO `distribution_ches` VALUES (1,'Industrial',NULL,'10',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(2,'Direct',NULL,'15',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(3,'Distributor',NULL,'14',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(4,'Export-Deemed',NULL,'20',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(5,'Export',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(6,'Marine',NULL,'30',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(7,'Retail Offline',NULL,'11',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(8,'Wholesale',NULL,'13',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(9,'Retail Online',NULL,'12',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(10,'MJL Online',NULL,'16',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL);
/*!40000 ALTER TABLE `distribution_ches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `card_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=>male, 2=>female, 3=>others',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nkn_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation_id` bigint unsigned NOT NULL,
  `business_team_id` bigint unsigned NOT NULL,
  `region_id` bigint unsigned NOT NULL,
  `territory_id` bigint unsigned NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_card_id_unique` (`card_id`),
  UNIQUE KEY `employees_emp_code_unique` (`emp_code`),
  UNIQUE KEY `employees_sap_code_unique` (`sap_code`),
  UNIQUE KEY `employees_image_unique` (`image`),
  UNIQUE KEY `employees_mobile_unique` (`mobile`),
  UNIQUE KEY `employees_email_unique` (`email`),
  UNIQUE KEY `employees_address_unique` (`address`),
  UNIQUE KEY `employees_doj_unique` (`doj`),
  UNIQUE KEY `employees_nkn_code_unique` (`nkn_code`),
  KEY `employees_user_id_foreign` (`user_id`),
  KEY `employees_designation_id_foreign` (`designation_id`),
  KEY `employees_business_team_id_foreign` (`business_team_id`),
  KEY `employees_region_id_foreign` (`region_id`),
  KEY `employees_territory_id_foreign` (`territory_id`),
  CONSTRAINT `employees_business_team_id_foreign` FOREIGN KEY (`business_team_id`) REFERENCES `business_teams` (`id`),
  CONSTRAINT `employees_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`),
  CONSTRAINT `employees_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`),
  CONSTRAINT `employees_territory_id_foreign` FOREIGN KEY (`territory_id`) REFERENCES `territories` (`id`),
  CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Tarikul Islam Zihad',1,'10378','10378','E00078',NULL,NULL,'01622363008','Tarikul.Islam@mobilbd.com',NULL,NULL,NULL,12,1,1,15,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
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
-- Table structure for table `lead_stages`
--

DROP TABLE IF EXISTS `lead_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_stages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `stage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_stages`
--

LOCK TABLES `lead_stages` WRITE;
/*!40000 ALTER TABLE `lead_stages` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loc_districts`
--

DROP TABLE IF EXISTS `loc_districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loc_districts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `loc_division_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loc_districts_name_unique` (`name`),
  KEY `loc_districts_loc_division_id_foreign` (`loc_division_id`),
  CONSTRAINT `loc_districts_loc_division_id_foreign` FOREIGN KEY (`loc_division_id`) REFERENCES `loc_divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loc_districts`
--

LOCK TABLES `loc_districts` WRITE;
/*!40000 ALTER TABLE `loc_districts` DISABLE KEYS */;
INSERT INTO `loc_districts` VALUES (1,3,'Dhaka','ঢাকা','23.7115253','90.4111451',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(2,3,'Faridpur','ফরিদপুর','23.6070822','89.8429406',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(3,3,'Gazipur','গাজীপুর','24.0022858','90.4264283',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(4,3,'Gopalganj','গোপালগঞ্জ','23.0050857','89.8266059',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(5,8,'Jamalpur','জামালপুর','24.937533','89.937775',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(6,3,'Kishoreganj','কিশোরগঞ্জ','24.444937','90.776575',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(7,3,'Madaripur','মাদারীপুর','23.164102','90.1896805',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(8,3,'Manikganj','মানিকগঞ্জ','23.8644','90.0047',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(9,3,'Munshiganj','মুন্সিগঞ্জ','23.5422','90.5305',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(10,8,'Mymensingh','ময়মনসিংহ','24.7471','90.4203',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(11,3,'Narayanganj','নারায়াণগঞ্জ','23.63366','90.496482',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(12,3,'Narsingdi','নরসিংদী','23.932233','90.71541',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(13,8,'Netrokona','নেত্রকোণা','24.870955','90.727887',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(14,3,'Rajbari','রাজবাড়ি','23.7574305','89.6444665',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(15,3,'Shariatpur','শরীয়তপুর','23.2423','90.4348',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(16,8,'Sherpur','শেরপুর','25.0204933','90.0152966',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(17,3,'Tangail','টাঙ্গাইল','24.2513','89.9167',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(18,5,'Bogura','বগুড়া','24.8465228','89.377755',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(19,5,'Joypurhat','জয়পুরহাট','25.0968','89.0227',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(20,5,'Naogaon','নওগাঁ','24.7936','88.9318',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(21,5,'Natore','নাটোর','24.420556','89.000282',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(22,5,'Nawabganj','নবাবগঞ্জ','24.5965034','88.2775122',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(23,5,'Pabna','পাবনা','23.998524','89.233645',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(24,5,'Rajshahi','রাজশাহী','24.3745','88.6042',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(25,5,'Sirajgonj','সিরাজগঞ্জ','24.4533978','89.7006815',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(26,6,'Dinajpur','দিনাজপুর','25.6217061','88.6354504',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(27,6,'Gaibandha','গাইবান্ধা','25.328751','89.528088',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(28,6,'Kurigram','কুড়িগ্রাম','25.805445','89.636174',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(29,6,'Lalmonirhat','লালমনিরহাট','25.9923','89.2847',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(30,6,'Nilphamari','নীলফামারী','25.931794','88.856006',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(31,6,'Panchagarh','পঞ্চগড়','26.3411','88.5541606',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(32,6,'Rangpur','রংপুর','25.7558096','89.244462',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(33,6,'Thakurgaon','ঠাকুরগাঁও','26.0336945','88.4616834',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(34,1,'Barguna','বরগুনা','22.0953','90.1121',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(35,1,'Barishal','বরিশাল','22.7010','90.3535',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(36,1,'Bhola','ভোলা','22.685923','90.648179',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(37,1,'Jhalokati','ঝালকাঠি','22.6406','90.1987',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(38,1,'Patuakhali','পটুয়াখালী','22.3596316','90.3298712',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(39,1,'Pirojpur','পিরোজপুর','22.5841','89.9720',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(40,2,'Bandarban','বান্দরবান','22.1953275','92.2183773',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(41,2,'Brahmanbaria','ব্রাহ্মণবাড়িয়া','23.9570904','91.1119286',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(42,2,'Chandpur','চাঁদপুর','23.2332585','90.6712912',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(43,2,'Chattogram','চট্টগ্রাম','22.335109','91.834073',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(44,2,'Cumilla','কুমিল্লা','23.4682747','91.1788135',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(45,2,'Cox\'s Bazar','কক্স বাজার','21.4272','92.0058',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(46,2,'Feni','ফেনী','23.0159','91.3976',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(47,2,'Khagrachari','খাগড়াছড়ি','23.119285','91.984663',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(48,2,'Lakshmipur','লক্ষ্মীপুর','22.942477','90.841184',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(49,2,'Noakhali','নোয়াখালী','22.869563','91.099398',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(50,2,'Rangamati','রাঙ্গামাটি','22.7324','92.2985',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(51,7,'Habiganj','হবিগঞ্জ','24.374945','91.41553',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(52,7,'Maulvibazar','মৌলভীবাজার','24.482934','91.777417',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(53,7,'Sunamganj','সুনামগঞ্জ','25.0658042','91.3950115',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(54,7,'Sylhet','সিলেট','24.8897956','91.8697894',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(55,4,'Bagerhat','বাগেরহাট','22.651568','89.785938',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(56,4,'Chuadanga','চুয়াডাঙ্গা','23.6401961','88.841841',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(57,4,'Jashore','যশোর','23.16643','89.2081126',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(58,4,'Jhenaidah','ঝিনাইদহ','23.5448176','89.1539213',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(59,4,'Khulna','খুলনা','22.815774','89.568679',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(60,4,'Kushtia','কুষ্টিয়া','23.901258','89.120482',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(61,4,'Magura','মাগুরা','23.487337','89.419956',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(62,4,'Meherpur','মেহেরপুর','23.762213','88.631821',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(63,4,'Narail','নড়াইল','23.172534','89.512672',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(64,4,'Satkhira','সাতক্ষীরা','22.7185','89.0705',1,'2025-04-24 08:52:53','2025-04-24 08:52:53');
/*!40000 ALTER TABLE `loc_districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loc_divisions`
--

DROP TABLE IF EXISTS `loc_divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loc_divisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loc_divisions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loc_divisions`
--

LOCK TABLES `loc_divisions` WRITE;
/*!40000 ALTER TABLE `loc_divisions` DISABLE KEYS */;
INSERT INTO `loc_divisions` VALUES (1,'Barishal','বরিশাল','22.701002','90.353451',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(2,'Chattogram','চট্টগ্রাম','22.356851','91.783182',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(3,'Dhaka','ঢাকা','23.810332','90.412518',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(4,'Khulna','খুলনা','22.845641','89.540328',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(5,'Rajshahi','রাজশাহী','24.363589','88.624135',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(6,'Rangpur','রংপুর','25.743892','89.275227',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(7,'Sylhet','সিলেট','24.894929','91.868706',1,'2025-04-24 08:52:52','2025-04-24 08:52:52'),(8,'Mymensingh','ময়মনসিংহ','24.747149','90.420273',1,'2025-04-24 08:52:52','2025-04-24 08:52:52');
/*!40000 ALTER TABLE `loc_divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loc_post_offices`
--

DROP TABLE IF EXISTS `loc_post_offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loc_post_offices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `loc_upazila_id` bigint unsigned NOT NULL,
  `post_office` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loc_post_offices_post_code_unique` (`post_code`),
  KEY `loc_post_offices_loc_upazila_id_foreign` (`loc_upazila_id`),
  CONSTRAINT `loc_post_offices_loc_upazila_id_foreign` FOREIGN KEY (`loc_upazila_id`) REFERENCES `loc_upazilas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loc_post_offices`
--

LOCK TABLES `loc_post_offices` WRITE;
/*!40000 ALTER TABLE `loc_post_offices` DISABLE KEYS */;
/*!40000 ALTER TABLE `loc_post_offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loc_upazilas`
--

DROP TABLE IF EXISTS `loc_upazilas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loc_upazilas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `loc_district_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loc_upazilas_loc_district_id_foreign` (`loc_district_id`),
  CONSTRAINT `loc_upazilas_loc_district_id_foreign` FOREIGN KEY (`loc_district_id`) REFERENCES `loc_districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=636 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loc_upazilas`
--

LOCK TABLES `loc_upazilas` WRITE;
/*!40000 ALTER TABLE `loc_upazilas` DISABLE KEYS */;
INSERT INTO `loc_upazilas` VALUES (1,34,'Amtali','আমতলী',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(2,34,'Bamna','বামনা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(3,34,'Barguna Sadar','বরগুনা সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(4,34,'Betagi','বেতাগি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(5,34,'Patharghata','পাথরঘাটা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(6,34,'Taltali','তালতলী',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(7,35,'Muladi','মুলাদি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(8,35,'Babuganj','বাবুগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(9,35,'Agailjhara','আগাইলঝরা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(10,35,'Barisal Sadar','বরিশাল সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(11,35,'Bakerganj','বাকেরগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(12,35,'Banaripara','বানাড়িপারা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(13,35,'Gaurnadi','গৌরনদী',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(14,35,'Hizla','হিজলা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(15,35,'Mehendiganj','মেহেদিগঞ্জ ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(16,35,'Wazirpur','ওয়াজিরপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(17,36,'Bhola Sadar','ভোলা সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(18,36,'Burhanuddin','বুরহানউদ্দিন',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(19,36,'Char Fasson','চর ফ্যাশন',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(20,36,'Daulatkhan','দৌলতখান',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(21,36,'Lalmohan','লালমোহন',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(22,36,'Manpura','মনপুরা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(23,36,'Tazumuddin','তাজুমুদ্দিন',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(24,37,'Jhalokati Sadar','ঝালকাঠি সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(25,37,'Kathalia','কাঁঠালিয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(26,37,'Nalchity','নালচিতি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(27,37,'Rajapur','রাজাপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(28,38,'Bauphal','বাউফল',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(29,38,'Dashmina','দশমিনা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(30,38,'Galachipa','গলাচিপা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(31,38,'Kalapara','কালাপারা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(32,38,'Mirzaganj','মির্জাগঞ্জ ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(33,38,'Patuakhali Sadar','পটুয়াখালী সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(34,38,'Dumki','ডুমকি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(35,38,'Rangabali','রাঙ্গাবালি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(36,39,'Bhandaria','ভ্যান্ডারিয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(37,39,'Kaukhali','কাউখালি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(38,39,'Mathbaria','মাঠবাড়িয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(39,39,'Nazirpur','নাজিরপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(40,39,'Nesarabad','নেসারাবাদ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(41,39,'Pirojpur Sadar','পিরোজপুর সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(42,39,'Zianagar','জিয়ানগর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(43,40,'Bandarban Sadar','বান্দরবন সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(44,40,'Thanchi','থানচি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(45,40,'Lama','লামা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(46,40,'Naikhongchhari','নাইখংছড়ি ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(47,40,'Ali kadam','আলী কদম',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(48,40,'Rowangchhari','রউয়াংছড়ি ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(49,40,'Ruma','রুমা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(50,41,'Brahmanbaria Sadar','ব্রাহ্মণবাড়িয়া সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(51,41,'Ashuganj','আশুগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(52,41,'Nasirnagar','নাসির নগর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(53,41,'Nabinagar','নবীনগর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(54,41,'Sarail','সরাইল',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(55,41,'Shahbazpur Town','শাহবাজপুর টাউন',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(56,41,'Kasba','কসবা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(57,41,'Akhaura','আখাউরা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(58,41,'Bancharampur','বাঞ্ছারামপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(59,41,'Bijoynagar','বিজয় নগর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(60,42,'Chandpur Sadar','চাঁদপুর সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(61,42,'Faridganj','ফরিদগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(62,42,'Haimchar','হাইমচর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(63,42,'Haziganj','হাজীগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(64,42,'Kachua','কচুয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(65,42,'Matlab Uttar','মতলব উত্তর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(66,42,'Matlab Dakkhin','মতলব দক্ষিণ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(67,42,'Shahrasti','শাহরাস্তি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(68,43,'Anwara','আনোয়ারা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(69,43,'Banshkhali','বাশখালি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(70,43,'Boalkhali','বোয়ালখালি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(71,43,'Chandanaish','চন্দনাইশ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(72,43,'Fatikchhari','ফটিকছড়ি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(73,43,'Hathazari','হাঠহাজারী',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(74,43,'Lohagara','লোহাগারা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(75,43,'Mirsharai','মিরসরাই',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(76,43,'Patiya','পটিয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(77,43,'Rangunia','রাঙ্গুনিয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(78,43,'Raozan','রাউজান',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(79,43,'Sandwip','সন্দ্বীপ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(80,43,'Satkania','সাতকানিয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(81,43,'Sitakunda','সীতাকুণ্ড',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(82,44,'Barura','বড়ুরা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(83,44,'Brahmanpara','ব্রাহ্মণপাড়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(84,44,'Burichong','বুড়িচং',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(85,44,'Chandina','চান্দিনা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(86,44,'Chauddagram','চৌদ্দগ্রাম',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(87,44,'Daudkandi','দাউদকান্দি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(88,44,'Debidwar','দেবীদ্বার',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(89,44,'Homna','হোমনা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(90,44,'Comilla Sadar','কুমিল্লা সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(91,44,'Laksam','লাকসাম',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(92,44,'Monohorgonj','মনোহরগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(93,44,'Meghna','মেঘনা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(94,44,'Muradnagar','মুরাদনগর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(95,44,'Nangalkot','নাঙ্গালকোট',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(96,44,'Comilla Sadar South','কুমিল্লা সদর দক্ষিণ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(97,44,'Titas','তিতাস',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(98,45,'Chakaria','চকরিয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(99,45,'{{198}}\'\'{{199}}','কক্স বাজার সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(100,45,'Kutubdia','কুতুবদিয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(101,45,'Maheshkhali','মহেশখালী',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(102,45,'Ramu','রামু',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(103,45,'Teknaf','টেকনাফ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(104,45,'Ukhia','উখিয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(105,45,'Pekua','পেকুয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(106,46,'Feni Sadar','ফেনী সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(107,46,'Chagalnaiya','ছাগল নাইয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(108,46,'Daganbhyan','দাগানভিয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(109,46,'Parshuram','পরশুরাম',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(110,46,'Fhulgazi','ফুলগাজি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(111,46,'Sonagazi','সোনাগাজি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(112,47,'Dighinala','দিঘিনালা ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(113,47,'Khagrachhari','খাগড়াছড়ি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(114,47,'Lakshmichhari','লক্ষ্মীছড়ি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(115,47,'Mahalchhari','মহলছড়ি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(116,47,'Manikchhari','মানিকছড়ি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(117,47,'Matiranga','মাটিরাঙ্গা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(118,47,'Panchhari','পানছড়ি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(119,47,'Ramgarh','রামগড়',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(120,48,'Lakshmipur Sadar','লক্ষ্মীপুর সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(121,48,'Raipur','রায়পুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(122,48,'Ramganj','রামগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(123,48,'Ramgati','রামগতি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(124,48,'Komol Nagar','কমল নগর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(125,49,'Noakhali Sadar','নোয়াখালী সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(126,49,'Begumganj','বেগমগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(127,49,'Chatkhil','চাটখিল',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(128,49,'Companyganj','কোম্পানীগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(129,49,'Shenbag','শেনবাগ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(130,49,'Hatia','হাতিয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(131,49,'Kobirhat','কবিরহাট ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(132,49,'Sonaimuri','সোনাইমুরি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(133,49,'Suborno Char','সুবর্ণ চর ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(134,50,'Rangamati Sadar','রাঙ্গামাটি সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(135,50,'Belaichhari','বেলাইছড়ি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(136,50,'Bagaichhari','বাঘাইছড়ি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(137,50,'Barkal','বরকল',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(138,50,'Juraichhari','জুরাইছড়ি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(139,50,'Rajasthali','রাজাস্থলি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(140,50,'Kaptai','কাপ্তাই',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(141,50,'Langadu','লাঙ্গাডু',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(142,50,'Nannerchar','নান্নেরচর ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(143,1,'Dhamrai','ধামরাই',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(144,1,'Dohar','দোহার',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(145,1,'Keraniganj','কেরানীগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(146,1,'Nawabganj','নবাবগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(147,1,'Savar','সাভার',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(148,2,'Faridpur Sadar','ফরিদপুর সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(149,2,'Boalmari','বোয়ালমারী',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(150,2,'Alfadanga','আলফাডাঙ্গা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(151,2,'Madhukhali','মধুখালি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(152,2,'Bhanga','ভাঙ্গা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(153,2,'Nagarkanda','নগরকান্ড',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(154,2,'Charbhadrasan','চরভদ্রাসন ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(155,2,'Sadarpur','সদরপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(156,2,'Shaltha','শালথা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(157,3,'Gazipur Sadar-Joydebpur','গাজীপুর সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(158,3,'Kaliakior','কালিয়াকৈর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(159,3,'Kapasia','কাপাসিয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(160,3,'Sripur','শ্রীপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(161,3,'Kaliganj','কালীগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(162,3,'Tongi','টঙ্গি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(163,4,'Gopalganj Sadar','গোপালগঞ্জ সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(164,4,'Kashiani','কাশিয়ানি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(165,4,'Kotalipara','কোটালিপাড়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(166,4,'Muksudpur','মুকসুদপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(167,4,'Tungipara','টুঙ্গিপাড়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(168,5,'Dewanganj','দেওয়ানগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(169,5,'Baksiganj','বকসিগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(170,5,'Islampur','ইসলামপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(171,5,'Jamalpur Sadar','জামালপুর সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(172,5,'Madarganj','মাদারগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(173,5,'Melandaha','মেলানদাহা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(174,5,'Sarishabari','সরিষাবাড়ি ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(175,5,'Narundi Police I.C','নারুন্দি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(176,6,'Astagram','অষ্টগ্রাম',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(177,6,'Bajitpur','বাজিতপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(178,6,'Bhairab','ভৈরব',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(179,6,'Hossainpur','হোসেনপুর ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(180,6,'Itna','ইটনা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(181,6,'Karimganj','করিমগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(182,6,'Katiadi','কতিয়াদি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(183,6,'Kishoreganj Sadar','কিশোরগঞ্জ সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(184,6,'Kuliarchar','কুলিয়ারচর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(185,6,'Mithamain','মিঠামাইন',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(186,6,'Nikli','নিকলি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(187,6,'Pakundia','পাকুন্ডা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(188,6,'Tarail','তাড়াইল',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(189,7,'Madaripur Sadar','মাদারীপুর সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(190,7,'Kalkini','কালকিনি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(191,7,'Rajoir','রাজইর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(192,7,'Shibchar','শিবচর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(193,8,'Manikganj Sadar','মানিকগঞ্জ সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(194,8,'Singair','সিঙ্গাইর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(195,8,'Shibalaya','শিবালয়',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(196,8,'Saturia','সাটুরিয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(197,8,'Harirampur','হরিরামপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(198,8,'Ghior','ঘিওর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(199,8,'Daulatpur','দৌলতপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(200,9,'Lohajang','লোহাজং',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(201,9,'Sreenagar','শ্রীনগর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(202,9,'Munshiganj Sadar','মুন্সিগঞ্জ সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(203,9,'Sirajdikhan','সিরাজদিখান',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(204,9,'Tongibari','টঙ্গিবাড়ি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(205,9,'Gazaria','গজারিয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(206,10,'Bhaluka','ভালুকা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(207,10,'Trishal','ত্রিশাল',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(208,10,'Haluaghat','হালুয়াঘাট',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(209,10,'Muktagachha','মুক্তাগাছা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(210,10,'Dhobaura','ধবারুয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(211,10,'Fulbaria','ফুলবাড়িয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(212,10,'Gaffargaon','গফরগাঁও',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(213,10,'Gauripur','গৌরিপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(214,10,'Ishwarganj','ঈশ্বরগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(215,10,'Mymensingh Sadar','ময়মনসিং সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(216,10,'Nandail','নন্দাইল',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(217,10,'Phulpur','ফুলপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(218,11,'Araihazar','আড়াইহাজার',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(219,11,'Sonargaon','সোনারগাঁও',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(220,11,'Bandar','বান্দার',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(221,11,'Naryanganj Sadar','নারায়ানগঞ্জ সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(222,11,'Rupganj','রূপগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(223,11,'Siddirgonj','সিদ্ধিরগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(224,12,'Belabo','বেলাবো',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(225,12,'Monohardi','মনোহরদি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(226,12,'Narsingdi Sadar','নরসিংদী সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(227,12,'Palash','পলাশ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(228,12,'Raipura, Narsingdi','রায়পুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(229,12,'Shibpur','শিবপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(230,13,'Kendua Upazilla','কেন্দুয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(231,13,'Atpara Upazilla','আটপাড়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(232,13,'Barhatta Upazilla','বরহাট্টা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(233,13,'Durgapur Upazilla','দুর্গাপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(234,13,'Kalmakanda Upazilla','কলমাকান্দা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(235,13,'Madan Upazilla','মদন',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(236,13,'Mohanganj Upazilla','মোহনগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(237,13,'Netrakona-S Upazilla','নেত্রকোনা সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(238,13,'Purbadhala Upazilla','পূর্বধলা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(239,13,'Khaliajuri Upazilla','খালিয়াজুরি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(240,14,'Baliakandi','বালিয়াকান্দি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(241,14,'Goalandaghat','গোয়ালন্দ ঘাট',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(242,14,'Pangsha','পাংশা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(243,14,'Kalukhali','কালুখালি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(244,14,'Rajbari Sadar','রাজবাড়ি সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(245,15,'Shariatpur Sadar -Palong','শরীয়তপুর সদর ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(246,15,'Damudya','দামুদিয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(247,15,'Naria','নড়িয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(248,15,'Jajira','জাজিরা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(249,15,'Bhedarganj','ভেদারগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(250,15,'Gosairhat','গোসাইর হাট ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(251,16,'Jhenaigati','ঝিনাইগাতি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(252,16,'Nakla','নাকলা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(253,16,'Nalitabari','নালিতাবাড়ি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(254,16,'Sherpur Sadar','শেরপুর সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(255,16,'Sreebardi','শ্রীবরদি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(256,17,'Tangail Sadar','টাঙ্গাইল সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(257,17,'Sakhipur','সখিপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(258,17,'Basail','বসাইল',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(259,17,'Madhupur','মধুপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(260,17,'Ghatail','ঘাটাইল',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(261,17,'Kalihati','কালিহাতি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(262,17,'Nagarpur','নগরপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(263,17,'Mirzapur','মির্জাপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(264,17,'Gopalpur','গোপালপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(265,17,'Delduar','দেলদুয়ার',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(266,17,'Bhuapur','ভুয়াপুর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(267,17,'Dhanbari','ধানবাড়ি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(268,55,'Bagerhat Sadar','বাগেরহাট সদর',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(269,55,'Chitalmari','চিতলমাড়ি',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(270,55,'Fakirhat','ফকিরহাট',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(271,55,'Kachua','কচুয়া',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(272,55,'Mollahat','মোল্লাহাট ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(273,55,'Mongla','মংলা',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(274,55,'Morrelganj','মরেলগঞ্জ',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(275,55,'Rampal','রামপাল',1,'2025-04-24 08:52:53','2025-04-24 08:52:53'),(276,55,'Sarankhola','স্মরণখোলা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(277,56,'Damurhuda','দামুরহুদা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(278,56,'Chuadanga-S','চুয়াডাঙ্গা সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(279,56,'Jibannagar','জীবন নগর ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(280,56,'Alamdanga','আলমডাঙ্গা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(281,57,'Abhaynagar','অভয়নগর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(282,57,'Keshabpur','কেশবপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(283,57,'Bagherpara','বাঘের পাড়া ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(284,57,'Jessore Sadar','যশোর সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(285,57,'Chaugachha','চৌগাছা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(286,57,'Manirampur','মনিরামপুর ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(287,57,'Jhikargachha','ঝিকরগাছা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(288,57,'Sharsha','সারশা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(289,58,'Jhenaidah Sadar','ঝিনাইদহ সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(290,58,'Maheshpur','মহেশপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(291,58,'Kaliganj','কালীগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(292,58,'Kotchandpur','কোট চাঁদপুর ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(293,58,'Shailkupa','শৈলকুপা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(294,58,'Harinakunda','হাড়িনাকুন্দা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(295,59,'Terokhada','তেরোখাদা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(296,59,'Batiaghata','বাটিয়াঘাটা ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(297,59,'Dacope','ডাকপে',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(298,59,'Dumuria','ডুমুরিয়া',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(299,59,'Dighalia','দিঘলিয়া',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(300,59,'Koyra','কয়ড়া',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(301,59,'Paikgachha','পাইকগাছা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(302,59,'Phultala','ফুলতলা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(303,59,'Rupsa','রূপসা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(304,60,'Kushtia Sadar','কুষ্টিয়া সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(305,60,'Kumarkhali','কুমারখালি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(306,60,'Daulatpur','দৌলতপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(307,60,'Mirpur','মিরপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(308,60,'Bheramara','ভেরামারা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(309,60,'Khoksa','খোকসা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(310,61,'Magura Sadar','মাগুরা সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(311,61,'Mohammadpur','মোহাম্মাদপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(312,61,'Shalikha','শালিখা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(313,61,'Sreepur','শ্রীপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(314,62,'angni','আংনি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(315,62,'Mujib Nagar','মুজিব নগর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(316,62,'Meherpur-S','মেহেরপুর সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(317,63,'Narail-S Upazilla','নড়াইল সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(318,63,'Lohagara Upazilla','লোহাগাড়া',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(319,63,'Kalia Upazilla','কালিয়া',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(320,64,'Satkhira Sadar','সাতক্ষীরা সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(321,64,'Assasuni','আসসাশুনি ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(322,64,'Debhata','দেভাটা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(323,64,'Tala','তালা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(324,64,'Kalaroa','কলরোয়া',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(325,64,'Kaliganj','কালীগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(326,64,'Shyamnagar','শ্যামনগর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(327,18,'Adamdighi','আদমদিঘী',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(328,18,'Bogra Sadar','বগুড়া সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(329,18,'Sherpur','শেরপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(330,18,'Dhunat','ধুনট',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(331,18,'Dhupchanchia','দুপচাচিয়া',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(332,18,'Gabtali','গাবতলি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(333,18,'Kahaloo','কাহালু',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(334,18,'Nandigram','নন্দিগ্রাম',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(335,18,'Sahajanpur','শাহজাহানপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(336,18,'Sariakandi','সারিয়াকান্দি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(337,18,'Shibganj','শিবগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(338,18,'Sonatala','সোনাতলা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(339,19,'Joypurhat S','জয়পুরহাট সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(340,19,'Akkelpur','আক্কেলপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(341,19,'Kalai','কালাই',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(342,19,'Khetlal','খেতলাল',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(343,19,'Panchbibi','পাঁচবিবি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(344,20,'Naogaon Sadar','নওগাঁ সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(345,20,'Mohadevpur','মহাদেবপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(346,20,'Manda','মান্দা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(347,20,'Niamatpur','নিয়ামতপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(348,20,'Atrai','আত্রাই',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(349,20,'Raninagar','রাণীনগর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(350,20,'Patnitala','পত্নীতলা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(351,20,'Dhamoirhat','ধামইরহাট ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(352,20,'Sapahar','সাপাহার',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(353,20,'Porsha','পোরশা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(354,20,'Badalgachhi','বদলগাছি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(355,21,'Natore Sadar','নাটোর সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(356,21,'Baraigram','বড়াইগ্রাম',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(357,21,'Bagatipara','বাগাতিপাড়া',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(358,21,'Lalpur','লালপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(359,21,'Natore Sadar','নাটোর সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(360,21,'Baraigram','বড়াই গ্রাম',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(361,22,'Bholahat','ভোলাহাট',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(362,22,'Gomastapur','গোমস্তাপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(363,22,'Nachole','নাচোল',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(364,22,'Nawabganj Sadar','নবাবগঞ্জ সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(365,22,'Shibganj','শিবগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(366,23,'Atgharia','আটঘরিয়া',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(367,23,'Bera','বেড়া',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(368,23,'Bhangura','ভাঙ্গুরা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(369,23,'Chatmohar','চাটমোহর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(370,23,'Faridpur','ফরিদপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(371,23,'Ishwardi','ঈশ্বরদী',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(372,23,'Pabna Sadar','পাবনা সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(373,23,'Santhia','সাথিয়া',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(374,23,'Sujanagar','সুজানগর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(375,24,'Bagha','বাঘা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(376,24,'Bagmara','বাগমারা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(377,24,'Charghat','চারঘাট',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(378,24,'Durgapur','দুর্গাপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(379,24,'Godagari','গোদাগারি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(380,24,'Mohanpur','মোহনপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(381,24,'Paba','পবা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(382,24,'Puthia','পুঠিয়া',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(383,24,'Tanore','তানোর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(384,25,'Sirajganj Sadar','সিরাজগঞ্জ সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(385,25,'Belkuchi','বেলকুচি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(386,25,'Chauhali','চৌহালি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(387,25,'Kamarkhanda','কামারখান্দা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(388,25,'Kazipur','কাজীপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(389,25,'Raiganj','রায়গঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(390,25,'Shahjadpur','শাহজাদপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(391,25,'Tarash','তারাশ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(392,25,'Ullahpara','উল্লাপাড়া',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(393,26,'Birampur','বিরামপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(394,26,'Birganj','বীরগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(395,26,'Biral','বিড়াল',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(396,26,'Bochaganj','বোচাগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(397,26,'Chirirbandar','চিরিরবন্দর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(398,26,'Phulbari','ফুলবাড়ি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(399,26,'Ghoraghat','ঘোড়াঘাট',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(400,26,'Hakimpur','হাকিমপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(401,26,'Kaharole','কাহারোল',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(402,26,'Khansama','খানসামা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(403,26,'Dinajpur Sadar','দিনাজপুর সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(404,26,'Nawabganj','নবাবগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(405,26,'Parbatipur','পার্বতীপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(406,27,'Fulchhari','ফুলছড়ি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(407,27,'Gaibandha sadar','গাইবান্ধা সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(408,27,'Gobindaganj','গোবিন্দগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(409,27,'Palashbari','পলাশবাড়ী',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(410,27,'Sadullapur','সাদুল্যাপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(411,27,'Saghata','সাঘাটা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(412,27,'Sundarganj','সুন্দরগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(413,28,'Kurigram Sadar','কুড়িগ্রাম সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(414,28,'Nageshwari','নাগেশ্বরী',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(415,28,'Bhurungamari','ভুরুঙ্গামারি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(416,28,'Phulbari','ফুলবাড়ি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(417,28,'Rajarhat','রাজারহাট',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(418,28,'Ulipur','উলিপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(419,28,'Chilmari','চিলমারি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(420,28,'Rowmari','রউমারি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(421,28,'Char Rajibpur','চর রাজিবপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(422,29,'Lalmanirhat Sadar','লালমনিরহাট সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(423,29,'Aditmari','আদিতমারি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(424,29,'Kaliganj','কালীগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(425,29,'Hatibandha','হাতিবান্ধা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(426,29,'Patgram','পাটগ্রাম',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(427,30,'Nilphamari Sadar','নীলফামারী সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(428,30,'Saidpur','সৈয়দপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(429,30,'Jaldhaka','জলঢাকা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(430,30,'Kishoreganj','কিশোরগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(431,30,'Domar','ডোমার',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(432,30,'Dimla','ডিমলা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(433,31,'Panchagarh Sadar','পঞ্চগড় সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(434,31,'Debiganj','দেবীগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(435,31,'Boda','বোদা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(436,31,'Atwari','আটোয়ারি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(437,31,'Tetulia','তেঁতুলিয়া',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(438,32,'Badarganj','বদরগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(439,32,'Mithapukur','মিঠাপুকুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(440,32,'Gangachara','গঙ্গাচরা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(441,32,'Kaunia','কাউনিয়া',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(442,32,'Rangpur Sadar','রংপুর সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(443,32,'Pirgachha','পীরগাছা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(444,32,'Pirganj','পীরগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(445,32,'Taraganj','তারাগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(446,33,'Thakurgaon Sadar','ঠাকুরগাঁও সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(447,33,'Pirganj','পীরগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(448,33,'Baliadangi','বালিয়াডাঙ্গি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(449,33,'Haripur','হরিপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(450,33,'Ranisankail','রাণীসংকইল',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(451,51,'Ajmiriganj','আজমিরিগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(452,51,'Baniachang','বানিয়াচং',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(453,51,'Bahubal','বাহুবল',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(454,51,'Chunarughat','চুনারুঘাট',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(455,51,'Habiganj Sadar','হবিগঞ্জ সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(456,51,'Lakhai','লাক্ষাই',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(457,51,'Madhabpur','মাধবপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(458,51,'Nabiganj','নবীগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(459,51,'Shaistagonj','শায়েস্তাগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(460,52,'Moulvibazar Sadar','মৌলভীবাজার',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(461,52,'Barlekha','বড়লেখা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(462,52,'Juri','জুড়ি',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(463,52,'Kamalganj','কামালগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(464,52,'Kulaura','কুলাউরা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(465,52,'Rajnagar','রাজনগর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(466,52,'Sreemangal','শ্রীমঙ্গল',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(467,53,'Bishwamvarpur','বিসশম্ভারপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(468,53,'Chhatak','ছাতক',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(469,53,'Derai','দেড়াই',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(470,53,'Dharampasha','ধরমপাশা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(471,53,'Dowarabazar','দোয়ারাবাজার',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(472,53,'Jagannathpur','জগন্নাথপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(473,53,'Jamalganj','জামালগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(474,53,'Sulla','সুল্লা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(475,53,'Sunamganj Sadar','সুনামগঞ্জ সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(476,53,'Shanthiganj','শান্তিগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(477,53,'Tahirpur','তাহিরপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(478,54,'Sylhet Sadar','সিলেট সদর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(479,54,'Beanibazar','বেয়ানিবাজার',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(480,54,'Bishwanath','বিশ্বনাথ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(481,54,'Dakshin Surma','দক্ষিণ সুরমা',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(482,54,'Balaganj','বালাগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(483,54,'Companiganj','কোম্পানিগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(484,54,'Fenchuganj','ফেঞ্চুগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(485,54,'Golapganj','গোলাপগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(486,54,'Gowainghat','গোয়াইনঘাট',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(487,54,'Jointapur','জৈন্তাপুর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(488,54,'Kanaighat','কানাইঘাট',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(489,54,'Zakiganj','জাকিগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(490,54,'Nobigonj','নবীগঞ্জ',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(491,45,'Eidgaon','ঈদগাঁও',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(492,53,'Modhyanagar','মধ্যনগর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(493,7,'Dasar','দশর',1,'2025-04-24 08:52:54','2025-04-24 08:52:54'),(494,1,'Gulshan','গুলশান',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(495,1,'Banani','বনানী',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(496,1,'Baridhara','বারিধারা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(497,1,'Uttara','উত্তরা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(498,1,'Mirpur','মিরপুর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(499,1,'Mohakhali','মহাখালী',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(500,1,'Niketon','নিকেতন',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(501,1,'Khilkhet','খিলক্ষেত',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(502,1,'Badda','বাড্ডা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(503,1,'Cantonment','ক্যান্টনমেন্ট',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(504,1,'Kuril','কুড়িল',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(505,1,'Vatara','ভাটারা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(506,1,'Adabor','আদাবর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(507,1,'Shewrapara','শেওড়াপাড়া',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(508,1,'Agargaon','আগারগাঁও',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(509,1,'Kazipara','কাজীপাড়া',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(510,1,'Darussalam','দারুসসালাম',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(511,1,'Kafrul','কাফরুল',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(512,1,'Uttarkhan','উত্তরখান',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(513,1,'Pallabi','পল্লবী',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(514,1,'Nikunja','নিকুঞ্জ',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(515,1,'Bashundhara R/A','বসুন্ধরা রেজিডেন্সিয়াল এলাকা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(516,1,'Tongi','টঙ্গি',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(517,1,'Kakrail','কাকরাইল',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(518,1,'Shyamoli','শ্যামলী',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(519,1,'Dhamrai','ধামরাই',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(520,1,'Mohakhali DOHS','মহাখালী ডিওএইচএস',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(521,1,'Rampura','রামপুরা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(522,1,'Mirpur DOHS','মিরপুর ডিওএইচএস',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(523,1,'Mirpur Cantonment','মিরপুর ক্যান্টনমেন্ট',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(524,1,'Shah Ali','শাহ আলী',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(525,1,'Rayer Bazar','রায়ের বাজার',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(526,1,'Farmgate','ফার্মগেট',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(527,1,'Kamalapur','কমলাপুর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(528,1,'Elephant Road','হাতিরঝিল',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(529,1,'Lalmatia','লালমাটিয়া',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(530,1,'Malibagh','মালিবাগ',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(531,1,'Tejgaon','তেজগাঁও',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(532,1,'Sher-e-Bangla Nagar','শের-ই-বাংলা নগর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(533,1,'Gabtoli','গাবতলী',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(534,1,'Rupnagar','রূপনগর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(535,1,'Dhanmondi','ধানমন্ডি',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(536,1,'Mohammadpur','মোহাম্মদপুর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(537,1,'Farmgate','ফার্মগেট',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(538,1,'Lalbagh','লালবাগ',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(539,1,'Kotwali','কোতওয়ালী',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(540,1,'Shahbag','শাহবাগ',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(541,1,'Armanitola','আরমানিটোলা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(542,1,'Shyampur','শ্যামপুর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(543,1,'Demra','ডেমরা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(544,1,'Laxmibazar','লক্ষ্মীবাজার',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(545,1,'Gendaria','গেন্ডারিয়া',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(546,1,'Wari','ওয়ারী',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(547,1,'Sutrapur','সুত্রাপুর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(548,1,'Kamrangirchar','কামরাঙ্গীরচর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(549,1,'Kotwali Police Line','কোতওয়ালী পুলিশ লাইন',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(550,1,'Bangshal','বংশাল',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(551,1,'Chawkbazar','চকবাজার',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(552,1,'Nayabazar','নয়াবাজার',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(553,1,'Nababganj','নবাবগঞ্জ',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(554,1,'Banglamotor','বাংলামটর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(555,1,'Fakirapool','ফকিরাপুল',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(556,1,'Shantinagar','শান্তিনগর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(557,1,'Moghbazar','মগবাজার',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(558,1,'Gulshan Model Town','গুলশান মডেল টাউন',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(559,1,'Banani','বনানী',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(560,1,'Baridhara','বারিধারা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(561,1,'Bashundhara','বসুন্ধরা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(562,1,'Kakrail','কাকরাইল',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(563,1,'Malibagh','মালিবাগ',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(564,1,'Mouchak','মৌচাক',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(565,1,'Siddheshwari','সিদ্ধেশ্বরী',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(566,1,'Jatrabari','যাত্রাবাড়ি',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(567,1,'Jurain','জুরাইন',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(568,1,'Dholpur','ধলপুর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(569,1,'Posta','পোস্টা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(570,1,'Dhaka Cantonment','ঢাকা ক্যান্টনমেন্ট',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(571,1,'Mirpur Cantonment','মিরপুর ক্যান্টনমেন্ট',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(572,1,'Uttar Khan','উত্তর খান',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(573,1,'Darus Salam','দারুস সালাম',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(574,1,'Khilkhet','খিলক্ষেত',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(575,1,'Nikunja','নিকুঞ্জ',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(576,1,'Airport','এয়ারপোর্ট',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(577,1,'Rampura Bazar','রামপুরা বাজার',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(578,1,'Middle Badda','মধ্য বড্ডা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(579,1,'Banasree Block-C','বনশ্রী ব্লক-সি',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(580,1,'North Badda','উত্তর বড্ডা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(581,1,'Postogola','পোস্তগোলা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(582,1,'Dakshinkhan','দক্ষিণখান',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(583,1,'Nawabganj','নবাবগঞ্জ',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(584,1,'Jhigatola','ঝিগাতলা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(585,1,'Pallabi Extension','পল্লবী এক্সটেনশন',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(586,1,'Uttara','উত্তরা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(587,1,'Mohakhali','মহাখালী',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(588,1,'Badda','বড্ডা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(589,1,'Basabo','বাসাবো',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(590,1,'Merul Badda','মেরুল বড্ডা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(591,1,'Bashabo','বাসাবো',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(592,1,'Shantibagh','শান্তিবাগ',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(593,1,'Basundhara Residential Area','বসুন্ধরা রেজিডেনশিয়াল এলাকা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(594,1,'Mohammadpur Housing','মোহাম্মদপুর হাউজিং',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(595,1,'Green Road','গ্রিন রোড',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(596,1,'Mohammadpur Krishi Market','মোহাম্মদপুর কৃষি মার্কেট',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(597,1,'Tikatuli','টিকাটুলি',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(598,1,'Kamalapur','কমলাপুর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(599,1,'Basundhara R/A','বসুন্ধরা আর/এ',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(600,1,'Shantibagh R/A','শান্তিবাগ আর/এ',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(601,1,'Monipur','মনিপুর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(602,1,'Rayer Bazar','রায়েরবাজার',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(603,1,'Baily Road','বেইলি রোড',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(604,1,'Elephant Road','হাতিরপুল',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(605,1,'New Market','নিউমার্কেট',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(606,1,'Hatirpool','হাতিরপুল',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(607,1,'Panthapath','পান্থপথ',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(608,1,'Zigatola','জিগাতোলা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(609,1,'Badda Link Road','বড্ডা লিংক রোড',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(610,1,'South Mugda','দক্ষিন মুগদা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(611,1,'Notun Bazar','নতুন বাজার',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(612,1,'Malibagh Chowdhurypara','মালিবাগ চৌধুরীপাড়া',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(613,1,'Kadamtoli','কাদমতলী',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(614,1,'Khilgaon','খিলগাঁও',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(615,1,'Shampur','শ্যামপুর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(616,1,'Malibagh Rail Gate','মালিবাগ রেলগেট',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(617,1,'Bongshal','বংশাল',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(618,1,'Motijheel','মতিঝিল',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(619,1,'Tanti Bazar','তান্তি বাজার',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(620,1,'Rupnagar','রূপনগর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(621,1,'Nayatola','নয়াটলা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(622,1,'Khilgaon Taltola','খিলগাঁও তালতলা',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(623,1,'Bijoynagar','বিজয়নগর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(624,1,'Islampur','ইসলামপুর',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(625,1,'Kalabagan','কলাবাগান',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(626,1,'Agargaon','আগারগাঁও',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(627,1,'Mirpur-1','মিরপুর-১',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(628,1,'Mirpur-2','মিরপুর-২',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(629,1,'Mirpur-6','মিরপুর-৬',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(630,1,'Mirpur-7','মিরপুর-৭',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(631,1,'Mirpur-10','মিরপুর-১০',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(632,1,'Mirpur-11','মিরপুর-১১',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(633,1,'Mirpur-12','মিরপুর-১২',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(634,1,'Mirpur-13','মিরপুর-১৩',1,'2025-04-24 09:26:46','2025-04-24 09:26:46'),(635,1,'Mirpur-14','মিরপুর-১৪',1,'2025-04-24 09:26:46','2025-04-24 09:26:46');
/*!40000 ALTER TABLE `loc_upazilas` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (101,'0001_01_01_000000_create_users_table',1),(102,'0001_01_01_000001_create_cache_table',1),(103,'0001_01_01_000002_create_jobs_table',1),(104,'2025_03_17_063252_create_permission_tables',1),(105,'2025_03_17_070232_create_personal_access_tokens_table',1),(106,'2025_03_20_051500_create_loc_divisions_table',1),(107,'2025_03_20_051501_create_loc_districts_table',1),(108,'2025_03_20_051502_create_loc_upazilas_table',1),(109,'2025_03_20_051503_create_loc_post_offices_table',1),(110,'2025_03_20_051515_create_designations_table',1),(111,'2025_03_20_055435_create_business_teams_table',1),(112,'2025_03_20_062025_create_customer_groups_table',1),(113,'2025_03_20_062026_create_distribution_ches_table',1),(114,'2025_03_20_062027_create_regions_table',1),(115,'2025_03_20_062733_create_territories_table',1),(116,'2025_03_20_062734_create_territory_districts_table',1),(117,'2025_03_20_063314_create_trade_categories_table',1),(118,'2025_03_20_063315_create_trade_sub_categories_table',1),(119,'2025_03_20_063316_create_customer_types_table',1),(120,'2025_03_20_063518_create_complaint_types_table',1),(121,'2025_03_20_063743_create_visit_purposes_table',1),(122,'2025_03_24_162521_create_employees_table',1),(123,'2025_03_25_052354_create_attendance_histories_table',1),(124,'2025_03_25_180313_create_sold_to_parties_table',1),(125,'2025_04_01_171655_create_sold_to_party_process_logs_table',1),(126,'2025_04_13_111335_create_lead_stages_table',1),(127,'2025_04_13_111340_create_sold_to_party_lead_logs_table',1),(128,'2025_04_20_175501_create_sold_to_party_sales_areas_table',1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
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
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `regions_name_unique` (`name`),
  UNIQUE KEY `regions_code_unique` (`code`),
  UNIQUE KEY `regions_sap_code_unique` (`sap_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Dhaka',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(2,'Chittagong',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(3,'Jessore',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(4,'Bogura',NULL,NULL,NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL);
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
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
INSERT INTO `sessions` VALUES ('JrUzr0bmtukAIxben71EWpNGBAgdcd0lWwDY2Kjp',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXgzanFGcmVBOTByZGl3VmwxdVhkaGZaUjdKMzdBYmlHNlJuek52SSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=',1745484885);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sold_to_parties`
--

DROP TABLE IF EXISTS `sold_to_parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sold_to_parties` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_code` int DEFAULT NULL COMMENT 'KNA1-KUNNR',
  `customer_acc_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1-KTOKD',
  `company_code` int DEFAULT NULL COMMENT 'KNB1-BUKRS',
  `sales_org` int DEFAULT NULL COMMENT 'KNVV-VKORG',
  `distribution_ch` int DEFAULT NULL COMMENT 'KNVV-VTWEG',
  `sales_division` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-SPART',
  `acc_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-NAME1',
  `acc_name2` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-NAME2',
  `search_term` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-SORT1',
  `search_term2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-SORT2',
  `legacy_acc_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'BUTOOO-BPEXT',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-COUNTRY',
  `region` int unsigned DEFAULT NULL COMMENT 'ADRC-REGION',
  `region_id` bigint unsigned DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-CITY1',
  `address` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-STREET',
  `ceo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-NAME_CO',
  `address_2` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-STR_SUPPL3',
  `address_3` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-LOCATION',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-LANGU',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-TEL_NUMBER',
  `mobile_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1_TELF2',
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1-TELFX',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADR6-SMTP_ADDR',
  `other_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADR12-URL_ADDR',
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-POST-CODE1',
  `contact_person_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC_NAME_CO',
  `contact_person_tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-TEL_NUMBER',
  `contact_person_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC2-TEL_NUMBER',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'BUT020-ADEXT',
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1-KATRA',
  `bin_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1-BAHN5',
  `vat_reg_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1-BAHNE',
  `recon_acc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNB1-AKONT',
  `fi_payment_terms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNB1-ZTERM',
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-WAERS',
  `cust_pricing_procedure` int unsigned DEFAULT NULL COMMENT 'KNVV-KALKS',
  `shipping_condition` int unsigned DEFAULT NULL COMMENT 'KNVV-VSBED',
  `delivering_plant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-VWERK',
  `other_combination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KZAZU',
  `incoterms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-INCO1',
  `incoterms_loc_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-INCO2_L',
  `sd_payment_terms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-ZTERM',
  `acc_assignment_group` int unsigned DEFAULT NULL COMMENT 'KNVV-KTGRD',
  `tax_classification` int unsigned DEFAULT NULL COMMENT 'KNVI-TAXKD',
  `territory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-BZIRK',
  `territory_id` bigint unsigned NOT NULL,
  `customer_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV',
  `trade_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KVGR1',
  `trade_sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KVGR2',
  `customer_group_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KVGR3',
  `customer_group_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KVGR4',
  `customer_group_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KVGR5',
  `bp_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KATR2',
  `attr_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KATR3',
  `attr_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KATR4',
  `factory_address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-STR_SUPPL2',
  `loc_division_id` bigint unsigned DEFAULT NULL,
  `loc_district_id` bigint unsigned DEFAULT NULL,
  `loc_upazila_id` bigint unsigned DEFAULT NULL,
  `loc_post_office_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` decimal(9,6) DEFAULT NULL,
  `long` decimal(9,6) DEFAULT NULL,
  `employee_id` bigint unsigned DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `is_eligible_discount` tinyint(1) NOT NULL DEFAULT '0',
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sold_to_parties_customer_code_unique` (`customer_code`),
  UNIQUE KEY `sold_to_parties_fax_unique` (`fax`),
  UNIQUE KEY `sold_to_parties_email_unique` (`email`),
  UNIQUE KEY `sold_to_parties_bin_no_unique` (`bin_no`),
  KEY `sold_to_parties_region_id_foreign` (`region_id`),
  KEY `sold_to_parties_territory_id_foreign` (`territory_id`),
  KEY `sold_to_parties_loc_division_id_foreign` (`loc_division_id`),
  KEY `sold_to_parties_loc_district_id_foreign` (`loc_district_id`),
  KEY `sold_to_parties_loc_upazila_id_foreign` (`loc_upazila_id`),
  KEY `sold_to_parties_loc_post_office_id_foreign` (`loc_post_office_id`),
  KEY `sold_to_parties_employee_id_foreign` (`employee_id`),
  CONSTRAINT `sold_to_parties_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `sold_to_parties_loc_district_id_foreign` FOREIGN KEY (`loc_district_id`) REFERENCES `loc_districts` (`id`),
  CONSTRAINT `sold_to_parties_loc_division_id_foreign` FOREIGN KEY (`loc_division_id`) REFERENCES `loc_divisions` (`id`),
  CONSTRAINT `sold_to_parties_loc_post_office_id_foreign` FOREIGN KEY (`loc_post_office_id`) REFERENCES `loc_post_offices` (`id`),
  CONSTRAINT `sold_to_parties_loc_upazila_id_foreign` FOREIGN KEY (`loc_upazila_id`) REFERENCES `loc_upazilas` (`id`),
  CONSTRAINT `sold_to_parties_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`),
  CONSTRAINT `sold_to_parties_territory_id_foreign` FOREIGN KEY (`territory_id`) REFERENCES `territories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sold_to_parties`
--

LOCK TABLES `sold_to_parties` WRITE;
/*!40000 ALTER TABLE `sold_to_parties` DISABLE KEYS */;
/*!40000 ALTER TABLE `sold_to_parties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sold_to_party_lead_logs`
--

DROP TABLE IF EXISTS `sold_to_party_lead_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sold_to_party_lead_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sold_to_party_id` bigint unsigned NOT NULL,
  `lead_stage_id` bigint unsigned NOT NULL,
  `stage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sold_to_party_lead_logs_sold_to_party_id_foreign` (`sold_to_party_id`),
  KEY `sold_to_party_lead_logs_lead_stage_id_foreign` (`lead_stage_id`),
  CONSTRAINT `sold_to_party_lead_logs_lead_stage_id_foreign` FOREIGN KEY (`lead_stage_id`) REFERENCES `lead_stages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sold_to_party_lead_logs_sold_to_party_id_foreign` FOREIGN KEY (`sold_to_party_id`) REFERENCES `sold_to_parties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sold_to_party_lead_logs`
--

LOCK TABLES `sold_to_party_lead_logs` WRITE;
/*!40000 ALTER TABLE `sold_to_party_lead_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sold_to_party_lead_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sold_to_party_process_logs`
--

DROP TABLE IF EXISTS `sold_to_party_process_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sold_to_party_process_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sold_to_party_id` bigint unsigned NOT NULL,
  `chk_from` int DEFAULT NULL,
  `chk_to` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sold_to_party_process_logs_sold_to_party_id_foreign` (`sold_to_party_id`),
  CONSTRAINT `sold_to_party_process_logs_sold_to_party_id_foreign` FOREIGN KEY (`sold_to_party_id`) REFERENCES `sold_to_parties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sold_to_party_process_logs`
--

LOCK TABLES `sold_to_party_process_logs` WRITE;
/*!40000 ALTER TABLE `sold_to_party_process_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sold_to_party_process_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sold_to_party_sales_areas`
--

DROP TABLE IF EXISTS `sold_to_party_sales_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sold_to_party_sales_areas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `distribution_ch_id` bigint unsigned DEFAULT NULL,
  `customer_group_id` bigint unsigned DEFAULT NULL,
  `trade_category_id` bigint unsigned DEFAULT NULL,
  `trade_sub_category_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sold_to_party_sales_areas_distribution_ch_id_foreign` (`distribution_ch_id`),
  KEY `sold_to_party_sales_areas_customer_group_id_foreign` (`customer_group_id`),
  KEY `sold_to_party_sales_areas_trade_category_id_foreign` (`trade_category_id`),
  KEY `sold_to_party_sales_areas_trade_sub_category_id_foreign` (`trade_sub_category_id`),
  CONSTRAINT `sold_to_party_sales_areas_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sold_to_party_sales_areas_distribution_ch_id_foreign` FOREIGN KEY (`distribution_ch_id`) REFERENCES `distribution_ches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sold_to_party_sales_areas_trade_category_id_foreign` FOREIGN KEY (`trade_category_id`) REFERENCES `trade_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sold_to_party_sales_areas_trade_sub_category_id_foreign` FOREIGN KEY (`trade_sub_category_id`) REFERENCES `trade_sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sold_to_party_sales_areas`
--

LOCK TABLES `sold_to_party_sales_areas` WRITE;
/*!40000 ALTER TABLE `sold_to_party_sales_areas` DISABLE KEYS */;
INSERT INTO `sold_to_party_sales_areas` VALUES (1,1,1,1,1,NULL,NULL),(2,1,1,1,2,NULL,NULL),(3,1,1,1,3,NULL,NULL),(4,1,1,1,4,NULL,NULL),(5,1,1,1,5,NULL,NULL),(6,1,1,1,6,NULL,NULL),(7,1,1,1,7,NULL,NULL),(8,2,2,2,8,NULL,NULL),(9,2,2,2,9,NULL,NULL),(10,2,2,2,10,NULL,NULL),(11,2,2,2,11,NULL,NULL),(12,2,2,2,12,NULL,NULL),(13,1,1,3,13,NULL,NULL),(14,1,1,3,14,NULL,NULL),(15,1,1,3,15,NULL,NULL),(16,1,1,3,16,NULL,NULL);
/*!40000 ALTER TABLE `sold_to_party_sales_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `territories`
--

DROP TABLE IF EXISTS `territories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `territories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` bigint unsigned DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `territories_name_unique` (`name`),
  UNIQUE KEY `territories_code_unique` (`code`),
  UNIQUE KEY `territories_sap_code_unique` (`sap_code`),
  KEY `territories_region_id_foreign` (`region_id`),
  CONSTRAINT `territories_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `territories`
--

LOCK TABLES `territories` WRITE;
/*!40000 ALTER TABLE `territories` DISABLE KEYS */;
INSERT INTO `territories` VALUES (1,'Bagerhat',NULL,NULL,'000001',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(2,'Bandarban',NULL,NULL,'000071',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(3,'Barguna',NULL,NULL,'000068',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(4,'Barishal',NULL,NULL,'000002',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(5,'Bhola',NULL,NULL,'000065',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(6,'Bogura',NULL,NULL,'000003',NULL,1,NULL,NULL,'2025-04-24 08:52:54','2025-04-24 08:52:54',NULL),(7,'Brahmanbaria',NULL,NULL,'000004',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(8,'Chandpur',NULL,NULL,'000005',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(9,'Chapai Nawabhganj',NULL,NULL,'000006',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(10,'Chattogram',NULL,NULL,'000007',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(11,'Chuadanga',NULL,NULL,'000008',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(12,'Cox\'s Bazar',NULL,NULL,'000061',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(13,'Cumilla',NULL,NULL,'000009',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(14,'Dana Eng.',NULL,NULL,'000010',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(15,'Dhaka',NULL,NULL,'000011',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(16,'Dhaka Center',NULL,NULL,'000013',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(17,'Dhaka Central',NULL,NULL,'000014',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(18,'Dhaka EPZ',NULL,NULL,'000015',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(19,'Dhaka North',NULL,NULL,'000016',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(20,'Dhaka North I',NULL,NULL,'000017',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(21,'Dhaka North II',NULL,NULL,'000018',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(22,'Dhaka North III',NULL,NULL,'000019',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(23,'Dhaka South',NULL,NULL,'000020',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(24,'Dhaka South I',NULL,NULL,'000022',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(25,'Dhaka South II',NULL,NULL,'000023',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(26,'Dhaka South III',NULL,NULL,'000024',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(27,'Dhamrai',NULL,NULL,'000025',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(28,'Dinajpur',NULL,NULL,'000026',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(29,'Faridpur',NULL,NULL,'000027',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(30,'Feni',NULL,NULL,'000028',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(31,'Gaibandha',NULL,NULL,'000029',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(32,'Gazipur',NULL,NULL,'000030',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(33,'Gopalganj',NULL,NULL,'000074',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(34,'Habiganj',NULL,NULL,'000031',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(35,'Jamalpur',NULL,NULL,'000032',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(36,'Jessore',NULL,NULL,'000033',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(37,'Jhalokati',NULL,NULL,'000069',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(38,'Jhinaidah',NULL,NULL,'000034',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(39,'Joypurhat',NULL,NULL,'000083',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(40,'Khagrachhari',NULL,NULL,'000072',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(41,'Khulna',NULL,NULL,'000035',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(42,'Kishoreganj',NULL,NULL,'000037',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(43,'Kurigram',NULL,NULL,'000064',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(44,'Kushtia',NULL,NULL,'000038',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(45,'Lalmonirhat',NULL,NULL,'000081',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(46,'Laxmipur',NULL,NULL,'000063',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(47,'Madaripur',NULL,NULL,'000075',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(48,'Magura',NULL,NULL,'000067',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(49,'Manikganj',NULL,NULL,'000039',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(50,'Meherpur',NULL,NULL,'000040',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(51,'Mongla',NULL,NULL,'000041',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(52,'Moulabibazar',NULL,NULL,'000042',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(53,'Munshiganj',NULL,NULL,'000043',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(54,'Mymensingh',NULL,NULL,'000044',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(55,'Naogaon',NULL,NULL,'000045',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(56,'Narail',NULL,NULL,'000066',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(57,'Narayanganj',NULL,NULL,'000046',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(58,'Narsingdi',NULL,NULL,'000047',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(59,'Natore',NULL,NULL,'000048',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(60,'Netrokona',NULL,NULL,'000078',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(61,'Nilphamari',NULL,NULL,'000049',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(62,'Noakhali',NULL,NULL,'000050',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(63,'Pabna',NULL,NULL,'000051',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(64,'Panchagarh',NULL,NULL,'000080',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(65,'Patuakhali',NULL,NULL,'000052',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(66,'Pirojpur',NULL,NULL,'000070',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(67,'Rajbari',NULL,NULL,'000062',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(68,'Rajshahi',NULL,NULL,'000053',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(69,'Rangamati',NULL,NULL,'000073',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(70,'Rangpur',NULL,NULL,'000054',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(71,'Satkhira',NULL,NULL,'000077',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(72,'Savar',NULL,NULL,'000055',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(73,'Shariatpur',NULL,NULL,'000076',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(74,'Shirajganj',NULL,NULL,'000056',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(75,'Sirajganj',NULL,NULL,'000082',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(76,'Sunamganj',NULL,NULL,'000057',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(77,'Sylhet',NULL,NULL,'000058',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(78,'Tangail',NULL,NULL,'000059',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(79,'Thakurgaon',NULL,NULL,'000079',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(80,'Tongi',NULL,NULL,'000060',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL);
/*!40000 ALTER TABLE `territories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `territory_districts`
--

DROP TABLE IF EXISTS `territory_districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `territory_districts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `territory_id` bigint unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `territory_districts_name_unique` (`name`),
  UNIQUE KEY `territory_districts_code_unique` (`code`),
  UNIQUE KEY `territory_districts_sap_code_unique` (`sap_code`),
  KEY `territory_districts_territory_id_foreign` (`territory_id`),
  CONSTRAINT `territory_districts_territory_id_foreign` FOREIGN KEY (`territory_id`) REFERENCES `territories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `territory_districts`
--

LOCK TABLES `territory_districts` WRITE;
/*!40000 ALTER TABLE `territory_districts` DISABLE KEYS */;
/*!40000 ALTER TABLE `territory_districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_categories`
--

DROP TABLE IF EXISTS `trade_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trade_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_categories_name_unique` (`name`),
  UNIQUE KEY `trade_categories_code_unique` (`code`),
  UNIQUE KEY `trade_categories_sap_code_unique` (`sap_code`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_categories`
--

LOCK TABLES `trade_categories` WRITE;
/*!40000 ALTER TABLE `trade_categories` DISABLE KEYS */;
INSERT INTO `trade_categories` VALUES (1,'Energy',NULL,'001',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(2,'FCD/FMD/RCD/LCC',NULL,'002',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(3,'General Manufacturing',NULL,'003',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(4,'Inland Marine',NULL,'004',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(5,'JOCL Distributors',NULL,'005',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(6,'Local Export',NULL,'006',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(7,'Marine FG',NULL,'007',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(8,'Metals',NULL,'008',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(9,'Nepal Export',NULL,'009',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(10,'Off-Highway',NULL,'010',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(11,'On-Highway',NULL,'011',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(12,'Paper',NULL,'012',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(13,'Process',NULL,'013',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(14,'Retail',NULL,'014',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL);
/*!40000 ALTER TABLE `trade_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_sub_categories`
--

DROP TABLE IF EXISTS `trade_sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trade_sub_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trade_category_id` bigint unsigned DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_sub_categories_name_unique` (`name`),
  UNIQUE KEY `trade_sub_categories_code_unique` (`code`),
  UNIQUE KEY `trade_sub_categories_sap_code_unique` (`sap_code`),
  KEY `trade_sub_categories_trade_category_id_foreign` (`trade_category_id`),
  CONSTRAINT `trade_sub_categories_trade_category_id_foreign` FOREIGN KEY (`trade_category_id`) REFERENCES `trade_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_sub_categories`
--

LOCK TABLES `trade_sub_categories` WRITE;
/*!40000 ALTER TABLE `trade_sub_categories` DISABLE KEYS */;
INSERT INTO `trade_sub_categories` VALUES (1,'Coal',NULL,NULL,'001',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(2,'Distribution',NULL,NULL,'002',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(3,'DMPP',NULL,NULL,'003',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(4,'Gas Engine',NULL,NULL,'004',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(5,'Oil and Gas On & Offshore',NULL,NULL,'005',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(6,'Nuclear',NULL,NULL,'007',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(7,'Gas Turbine/Steam Turbine',NULL,NULL,'008',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(8,'Franchised Car Dealer',NULL,NULL,'009',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(9,'Franchised Motorcycle Dealer',NULL,NULL,'010',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(10,'Recondition Car Dealer',NULL,NULL,'011',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(11,'LCC/IIW',NULL,NULL,'012',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(12,'Recondition Motorcycle Dealer',NULL,NULL,'013',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(13,'Pharmaceuticals',NULL,NULL,'014',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(14,'Plastic',NULL,NULL,'015',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(15,'Cooling & Refrigeration',NULL,NULL,'016',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(16,'Tire & Rubber Goods',NULL,NULL,'017',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(17,'Motor/Vehicle Assembly',NULL,NULL,'018',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(18,'Furniture',NULL,NULL,'019',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(19,'Electronic',NULL,NULL,'020',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(20,'Leather/Footwear',NULL,NULL,'021',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(21,'Edible Oil',NULL,NULL,'022',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(22,'Food & Beverage',NULL,NULL,'023',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(23,'Sugar Mills',NULL,NULL,'024',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(24,'Cargo',NULL,NULL,'025',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(25,'Fishing Trawler',NULL,NULL,'026',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(26,'Passenger/Ferry',NULL,NULL,'027',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(27,'Ship Yards',NULL,NULL,'028',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(28,'LNG/Carrier',NULL,NULL,'029',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(29,'Dredging',NULL,NULL,'030',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(30,'Tugs',NULL,NULL,'031',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(31,'Distributors',NULL,NULL,'032',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(32,'Local Export',NULL,NULL,'033',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(33,'Tankers',NULL,NULL,'034',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(34,'Bulk Carriers',NULL,NULL,'035',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(35,'Container Ships',NULL,NULL,'036',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(36,'Steel',NULL,NULL,'037',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(37,'Non-ferrous',NULL,NULL,'038',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(38,'Nepal Export',NULL,NULL,'039',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(39,'Agriculture',NULL,NULL,'040',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(40,'Construction',NULL,NULL,'041',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(41,'Mining',NULL,NULL,'042',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(42,'Railroads',NULL,NULL,'043',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(43,'CAT-Alliance Partner',NULL,NULL,'044',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(44,'Bus fleet',NULL,NULL,'045',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(45,'Transport/Cargo',NULL,NULL,'046',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(46,'Truck fleet',NULL,NULL,'047',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(47,'Pulp & Paper',NULL,NULL,'048',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(48,'Packaging Paper',NULL,NULL,'049',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(49,'Wood Processing',NULL,NULL,'050',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(50,'Cement',NULL,NULL,'051',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(51,'Ceramics',NULL,NULL,'052',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(52,'Chemical',NULL,NULL,'053',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(53,'Composites',NULL,NULL,'054',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(54,'Dyeing',NULL,NULL,'055',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(55,'Fabrics',NULL,NULL,'056',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(56,'Garments',NULL,NULL,'057',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(57,'Jute',NULL,NULL,'058',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(58,'Spinning',NULL,NULL,'059',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(59,'Tannery',NULL,NULL,'060',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(60,'Fertilizer',NULL,NULL,'066',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(61,'FS/CNG Station',NULL,NULL,'061',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(62,'Wholesaler',NULL,NULL,'062',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(63,'Retailer',NULL,NULL,'063',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(64,'E-Commerce',NULL,NULL,'064',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(65,'Auto Parts',NULL,NULL,'065',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL),(66,'Others',NULL,NULL,'006',NULL,1,NULL,NULL,'2025-04-24 08:52:55','2025-04-24 08:52:55',NULL);
/*!40000 ALTER TABLE `trade_sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'tarikul.islam','Tarikul.Islam@mobilbd.com',NULL,'$2y$12$t2OeycKtczDuD6EGJkvW1eiTF1NLYDLIo2ZCSx4aOtbXajxZCc7hK',NULL,'2025-04-24 08:54:42','2025-04-24 08:54:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_purposes`
--

DROP TABLE IF EXISTS `visit_purposes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_purposes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purType` int NOT NULL DEFAULT '1',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `visit_purposes_name_unique` (`name`),
  UNIQUE KEY `visit_purposes_code_unique` (`code`),
  UNIQUE KEY `visit_purposes_sap_code_unique` (`sap_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_purposes`
--

LOCK TABLES `visit_purposes` WRITE;
/*!40000 ALTER TABLE `visit_purposes` DISABLE KEYS */;
/*!40000 ALTER TABLE `visit_purposes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-24 15:45:16
