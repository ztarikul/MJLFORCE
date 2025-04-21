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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_teams`
--

LOCK TABLES `business_teams` WRITE;
/*!40000 ALTER TABLE `business_teams` DISABLE KEYS */;
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
INSERT INTO `customer_groups` VALUES (1,'Industrial',NULL,'01',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(2,'Direct',NULL,'06',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(3,'Distributor',NULL,'05',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(4,'Export-Deemed',NULL,'09',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(5,'Export',NULL,'08',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(6,'Marine',NULL,'10',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(7,'Retail Offline',NULL,'02',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(8,'Wholesale',NULL,'04',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(9,'Retail Online',NULL,'03',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL);
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
INSERT INTO `designations` VALUES (1,'Cheif Executive Officer',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:39','2025-04-21 03:51:39',NULL),(2,'Chief Operating Officer',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:39','2025-04-21 03:51:39',NULL),(3,'Senior General Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:39','2025-04-21 03:51:39',NULL),(4,'General Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:39','2025-04-21 03:51:39',NULL),(5,'Deputy General Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:39','2025-04-21 03:51:39',NULL),(6,'Assistant General Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(7,'Senior Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(8,'Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(9,'Deputy Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(10,'Assistant Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(11,'Sr. Executive',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(12,'Executive',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(13,'Officer',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(14,'Jr. Officer',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL);
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
INSERT INTO `distribution_ches` VALUES (1,'Industrial',NULL,'10',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(2,'Direct',NULL,'15',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(3,'Distributor',NULL,'14',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(4,'Export-Deemed',NULL,'20',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(5,'Export',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(6,'Marine',NULL,'30',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(7,'Retail Offline',NULL,'11',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(8,'Wholesale',NULL,'13',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(9,'Retail Online',NULL,'12',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(10,'MJL Online',NULL,'16',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loc_districts`
--

LOCK TABLES `loc_districts` WRITE;
/*!40000 ALTER TABLE `loc_districts` DISABLE KEYS */;
INSERT INTO `loc_districts` VALUES (1,1,'Gazipur',NULL,NULL,NULL,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loc_divisions`
--

LOCK TABLES `loc_divisions` WRITE;
/*!40000 ALTER TABLE `loc_divisions` DISABLE KEYS */;
INSERT INTO `loc_divisions` VALUES (1,'Dhaka',NULL,NULL,NULL,1,NULL,NULL);
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
  UNIQUE KEY `loc_post_offices_post_office_unique` (`post_office`),
  KEY `loc_post_offices_loc_upazila_id_foreign` (`loc_upazila_id`),
  CONSTRAINT `loc_post_offices_loc_upazila_id_foreign` FOREIGN KEY (`loc_upazila_id`) REFERENCES `loc_upazilas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loc_post_offices`
--

LOCK TABLES `loc_post_offices` WRITE;
/*!40000 ALTER TABLE `loc_post_offices` DISABLE KEYS */;
INSERT INTO `loc_post_offices` VALUES (1,1,'Gazipur','1122',1,NULL,NULL);
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
  UNIQUE KEY `loc_upazilas_name_unique` (`name`),
  KEY `loc_upazilas_loc_district_id_foreign` (`loc_district_id`),
  CONSTRAINT `loc_upazilas_loc_district_id_foreign` FOREIGN KEY (`loc_district_id`) REFERENCES `loc_districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loc_upazilas`
--

LOCK TABLES `loc_upazilas` WRITE;
/*!40000 ALTER TABLE `loc_upazilas` DISABLE KEYS */;
INSERT INTO `loc_upazilas` VALUES (1,1,'Gazipur City',NULL,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_03_17_063252_create_permission_tables',1),(5,'2025_03_17_070232_create_personal_access_tokens_table',1),(6,'2025_03_20_051500_create_loc_divisions_table',1),(7,'2025_03_20_051501_create_loc_districts_table',1),(8,'2025_03_20_051502_create_loc_upazilas_table',1),(9,'2025_03_20_051503_create_loc_post_offices_table',1),(10,'2025_03_20_051515_create_designations_table',1),(11,'2025_03_20_055435_create_business_teams_table',1),(12,'2025_03_20_062025_create_customer_groups_table',1),(13,'2025_03_20_062026_create_distribution_ches_table',1),(14,'2025_03_20_062027_create_regions_table',1),(15,'2025_03_20_062733_create_territories_table',1),(16,'2025_03_20_062734_create_territory_districts_table',1),(17,'2025_03_20_063314_create_trade_categories_table',1),(18,'2025_03_20_063315_create_trade_sub_categories_table',1),(19,'2025_03_20_063316_create_customer_types_table',1),(20,'2025_03_20_063518_create_complaint_types_table',1),(21,'2025_03_20_063743_create_visit_purposes_table',1),(22,'2025_03_24_162521_create_employees_table',1),(23,'2025_03_25_052354_create_attendance_histories_table',1),(24,'2025_03_25_180313_create_sold_to_parties_table',1),(25,'2025_04_01_171655_create_sold_to_party_process_logs_table',1),(26,'2025_04_13_111335_create_lead_stages_table',1),(27,'2025_04_13_111340_create_sold_to_party_lead_logs_table',1),(29,'2025_04_20_175501_create_sold_to_party_sales_areas_table',2);
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
INSERT INTO `regions` VALUES (1,'Dhaka',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(2,'Chittagong',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(3,'Jessore',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(4,'Bogura',NULL,NULL,NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL);
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
INSERT INTO `sessions` VALUES ('3Hx7NMSJmxu4cPts8sDS1p2hhZ5Q1l2XUqnrMyQL',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1BGTFZORm5uMXptR1RQVEZnMGtBdmVjV2dmcVlXNkVCOXhLQ2xiTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=',1745208186);
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
  `customer_acc_group` int DEFAULT NULL COMMENT 'KNA1-KTOKD',
  `company_code` int DEFAULT NULL COMMENT 'KNB1-BUKRS',
  `sales_org` int DEFAULT NULL COMMENT 'KNVV-VKORG',
  `distribution_ch` int DEFAULT NULL COMMENT 'KNVV-VTWEG',
  `sales_division` int DEFAULT NULL COMMENT 'KNVV-SPART',
  `acc_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-NAME1',
  `acc_name2` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-NAME2',
  `search_term` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-SORT1',
  `search_term2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-SORT2',
  `legacy_acc_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'BUTOOO-BPEXT',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-COUNTRY',
  `region` int unsigned DEFAULT NULL COMMENT 'ADRC-REGION',
  `region_id` bigint unsigned NOT NULL,
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
  `employee_id` bigint unsigned NOT NULL,
  `status` int NOT NULL DEFAULT '0',
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
INSERT INTO `territories` VALUES (1,'Bagerhat',NULL,NULL,'000001',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(2,'Bandarban',NULL,NULL,'000071',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(3,'Barguna',NULL,NULL,'000068',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(4,'Barishal',NULL,NULL,'000002',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(5,'Bhola',NULL,NULL,'000065',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(6,'Bogura',NULL,NULL,'000003',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(7,'Brahmanbaria',NULL,NULL,'000004',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(8,'Chandpur',NULL,NULL,'000005',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(9,'Chapai Nawabhganj',NULL,NULL,'000006',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(10,'Chattogram',NULL,NULL,'000007',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(11,'Chuadanga',NULL,NULL,'000008',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(12,'Cox\'s Bazar',NULL,NULL,'000061',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(13,'Cumilla',NULL,NULL,'000009',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(14,'Dana Eng.',NULL,NULL,'000010',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(15,'Dhaka',NULL,NULL,'000011',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(16,'Dhaka Center',NULL,NULL,'000013',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(17,'Dhaka Central',NULL,NULL,'000014',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(18,'Dhaka EPZ',NULL,NULL,'000015',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(19,'Dhaka North',NULL,NULL,'000016',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(20,'Dhaka North I',NULL,NULL,'000017',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(21,'Dhaka North II',NULL,NULL,'000018',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(22,'Dhaka North III',NULL,NULL,'000019',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(23,'Dhaka South',NULL,NULL,'000020',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(24,'Dhaka South I',NULL,NULL,'000022',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(25,'Dhaka South II',NULL,NULL,'000023',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(26,'Dhaka South III',NULL,NULL,'000024',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(27,'Dhamrai',NULL,NULL,'000025',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(28,'Dinajpur',NULL,NULL,'000026',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(29,'Faridpur',NULL,NULL,'000027',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(30,'Feni',NULL,NULL,'000028',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(31,'Gaibandha',NULL,NULL,'000029',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(32,'Gazipur',NULL,NULL,'000030',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(33,'Gopalganj',NULL,NULL,'000074',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(34,'Habiganj',NULL,NULL,'000031',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(35,'Jamalpur',NULL,NULL,'000032',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(36,'Jessore',NULL,NULL,'000033',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(37,'Jhalokati',NULL,NULL,'000069',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(38,'Jhinaidah',NULL,NULL,'000034',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(39,'Joypurhat',NULL,NULL,'000083',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(40,'Khagrachhari',NULL,NULL,'000072',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(41,'Khulna',NULL,NULL,'000035',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(42,'Kishoreganj',NULL,NULL,'000037',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(43,'Kurigram',NULL,NULL,'000064',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(44,'Kushtia',NULL,NULL,'000038',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(45,'Lalmonirhat',NULL,NULL,'000081',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(46,'Laxmipur',NULL,NULL,'000063',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(47,'Madaripur',NULL,NULL,'000075',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(48,'Magura',NULL,NULL,'000067',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(49,'Manikganj',NULL,NULL,'000039',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(50,'Meherpur',NULL,NULL,'000040',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(51,'Mongla',NULL,NULL,'000041',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(52,'Moulabibazar',NULL,NULL,'000042',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(53,'Munshiganj',NULL,NULL,'000043',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(54,'Mymensingh',NULL,NULL,'000044',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(55,'Naogaon',NULL,NULL,'000045',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(56,'Narail',NULL,NULL,'000066',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(57,'Narayanganj',NULL,NULL,'000046',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(58,'Narsingdi',NULL,NULL,'000047',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(59,'Natore',NULL,NULL,'000048',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(60,'Netrokona',NULL,NULL,'000078',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(61,'Nilphamari',NULL,NULL,'000049',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(62,'Noakhali',NULL,NULL,'000050',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(63,'Pabna',NULL,NULL,'000051',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(64,'Panchagarh',NULL,NULL,'000080',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(65,'Patuakhali',NULL,NULL,'000052',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(66,'Pirojpur',NULL,NULL,'000070',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(67,'Rajbari',NULL,NULL,'000062',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(68,'Rajshahi',NULL,NULL,'000053',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(69,'Rangamati',NULL,NULL,'000073',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(70,'Rangpur',NULL,NULL,'000054',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(71,'Satkhira',NULL,NULL,'000077',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(72,'Savar',NULL,NULL,'000055',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(73,'Shariatpur',NULL,NULL,'000076',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(74,'Shirajganj',NULL,NULL,'000056',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(75,'Sirajganj',NULL,NULL,'000082',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(76,'Sunamganj',NULL,NULL,'000057',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(77,'Sylhet',NULL,NULL,'000058',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(78,'Tangail',NULL,NULL,'000059',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(79,'Thakurgaon',NULL,NULL,'000079',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(80,'Tongi',NULL,NULL,'000060',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL);
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
INSERT INTO `trade_categories` VALUES (1,'Energy',NULL,'001',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(2,'FCD/FMD/RCD/LCC',NULL,'002',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(3,'General Manufacturing',NULL,'003',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(4,'Inland Marine',NULL,'004',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(5,'JOCL Distributors',NULL,'005',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(6,'Local Export',NULL,'006',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(7,'Marine FG',NULL,'007',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(8,'Metals',NULL,'008',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(9,'Nepal Export',NULL,'009',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(10,'Off-Highway',NULL,'010',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(11,'On-Highway',NULL,'011',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(12,'Paper',NULL,'012',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(13,'Process',NULL,'013',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(14,'Retail',NULL,'014',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL);
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
INSERT INTO `trade_sub_categories` VALUES (1,'Coal',1,NULL,'001',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(2,'Distribution',1,NULL,'002',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(3,'DMPP',1,NULL,'003',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(4,'Gas Engine',1,NULL,'004',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(5,'Oil and Gas On & Offshore',1,NULL,'005',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(6,'Nuclear',1,NULL,'007',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(7,'Gas Turbine/Steam Turbine',1,NULL,'008',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(8,'Franchised Car Dealer',2,NULL,'009',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(9,'Franchised Motorcycle Dealer',2,NULL,'010',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(10,'Recondition Car Dealer',2,NULL,'011',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(11,'LCC/IIW',2,NULL,'012',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(12,'Recondition Motorcycle Dealer',2,NULL,'013',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(13,'Pharmaceuticals',3,NULL,'014',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(14,'Plastic',3,NULL,'015',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(15,'Cooling & Refrigeration',3,NULL,'016',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(16,'Tire & Rubber Goods',3,NULL,'017',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(17,'Motor/Vehicle Assembly',3,NULL,'018',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(18,'Furniture',3,NULL,'019',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(19,'Electronic',3,NULL,'020',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(20,'Leather/Footwear',3,NULL,'021',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(21,'Edible Oil',3,NULL,'022',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(22,'Food & Beverage',3,NULL,'023',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(23,'Sugar Mills',3,NULL,'024',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(24,'Cargo',4,NULL,'025',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(25,'Fishing Trawler',4,NULL,'026',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(26,'Passenger/Ferry',4,NULL,'027',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(27,'Ship Yards',4,NULL,'028',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(28,'LNG/Carrier',4,NULL,'029',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(29,'Dredging',4,NULL,'030',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(30,'Tugs',4,NULL,'031',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(31,'Distributors',5,NULL,'032',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(32,'Local Export',6,NULL,'033',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(33,'Tankers',7,NULL,'034',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(34,'Bulk Carriers',7,NULL,'035',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(35,'Container Ships',7,NULL,'036',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(36,'Steel',8,NULL,'037',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(37,'Non-ferrous',8,NULL,'038',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(38,'Nepal Export',9,NULL,'039',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(39,'Agriculture',10,NULL,'040',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(40,'Construction',10,NULL,'041',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(41,'Mining',10,NULL,'042',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(42,'Railroads',10,NULL,'043',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(43,'CAT-Alliance Partner',10,NULL,'044',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(44,'Bus fleet',11,NULL,'045',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(45,'Transport/Cargo',11,NULL,'046',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(46,'Truck fleet',11,NULL,'047',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(47,'Pulp & Paper',12,NULL,'048',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(48,'Packaging Paper',12,NULL,'049',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(49,'Wood Processing',12,NULL,'050',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(50,'Cement',13,NULL,'051',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(51,'Ceramics',13,NULL,'052',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(52,'Chemical',13,NULL,'053',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(53,'Composites',13,NULL,'054',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(54,'Dyeing',13,NULL,'055',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(55,'Fabrics',13,NULL,'056',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(56,'Garments',13,NULL,'057',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(57,'Jute',13,NULL,'058',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(58,'Spinning',13,NULL,'059',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(59,'Tannery',13,NULL,'060',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(60,'Fertilizer',13,NULL,'066',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(61,'FS/CNG Station',14,NULL,'061',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(62,'Wholesaler',14,NULL,'062',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(63,'Retailer',14,NULL,'063',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(64,'E-Commerce',14,NULL,'064',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(65,'Auto Parts',14,NULL,'065',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL),(66,'Others',14,NULL,'006',NULL,1,NULL,NULL,'2025-04-21 03:51:40','2025-04-21 03:51:40',NULL);
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
INSERT INTO `users` VALUES (1,'tarikul.islam','Tarikul.Islam@mobilbd.com',NULL,'$2y$12$RfQgwxAXzb0RX6bWIVaiAe1vFhctC7HFEBCcuE5jTiO7JoYJMJCKa',NULL,'2025-04-21 04:03:02','2025-04-21 04:03:02');
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

-- Dump completed on 2025-04-21 17:52:56
