-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: mjlforce
-- ------------------------------------------------------
-- Server version	8.0.39

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
  `card_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `in_out` int DEFAULT NULL,
  `lat` decimal(9,6) DEFAULT NULL,
  `long` decimal(9,6) DEFAULT NULL,
  `street_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `customer_groups` VALUES (1,'Industrial',NULL,'01',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(2,'Direct',NULL,'06',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(3,'Distributor',NULL,'05',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(4,'Export-Deemed',NULL,'09',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(5,'Export',NULL,'08',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(6,'Marine',NULL,'10',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(7,'Retail Offline',NULL,'02',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(8,'Wholesale',NULL,'04',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(9,'Retail Online',NULL,'03',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL);
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_types_name_unique` (`name`),
  UNIQUE KEY `customer_types_code_unique` (`code`),
  UNIQUE KEY `customer_types_sap_code_unique` (`sap_code`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_types`
--

LOCK TABLES `customer_types` WRITE;
/*!40000 ALTER TABLE `customer_types` DISABLE KEYS */;
INSERT INTO `customer_types` VALUES (1,'Domestic',NULL,'Z001',NULL,1,NULL,NULL,NULL,NULL,NULL),(2,'Export/ Marine Bonded',NULL,'Z002',NULL,1,NULL,NULL,NULL,NULL,NULL),(3,'Service Customer -Sample Testing',NULL,'Z003',NULL,1,NULL,NULL,NULL,NULL,NULL),(4,'Service Customer - Oil Tanker',NULL,'Z004',NULL,1,NULL,NULL,NULL,NULL,NULL),(5,'Service Customer - Rent',NULL,'Z005',NULL,1,NULL,NULL,NULL,NULL,NULL),(6,'Service Customer - Marine Drop Shipment',NULL,'Z006',NULL,1,NULL,NULL,NULL,NULL,NULL),(7,'Service Customer - Others',NULL,'Z007',NULL,1,NULL,NULL,NULL,NULL,NULL),(8,'Raw Material Customer',NULL,'Z008',NULL,1,NULL,NULL,NULL,NULL,NULL),(9,'Ship To Party',NULL,'Z009',NULL,1,NULL,NULL,NULL,NULL,NULL),(10,'Agent Customer',NULL,'Z010',NULL,1,NULL,NULL,NULL,NULL,NULL),(11,'One Time Customer',NULL,'Z011',NULL,1,NULL,NULL,NULL,NULL,NULL),(12,'Plant Customer',NULL,'Z012',NULL,1,NULL,NULL,NULL,NULL,NULL),(13,'Other Customer',NULL,'Z014',NULL,1,NULL,NULL,NULL,NULL,NULL),(14,'Employee Customer',NULL,'Z015',NULL,1,NULL,NULL,NULL,NULL,NULL);
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `designations` VALUES (1,'Cheif Executive Officer',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(2,'Chief Operating Officer',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(3,'Senior General Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(4,'General Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(5,'Deputy General Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(6,'Assistant General Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(7,'Senior Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(8,'Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(9,'Deputy Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(10,'Assistant Manager',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(11,'Sr. Executive',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(12,'Executive',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(13,'Officer',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(14,'Jr. Officer',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL);
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `distribution_ches` VALUES (1,'Industrial',NULL,'10',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(2,'Direct',NULL,'15',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(3,'Distributor',NULL,'14',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(4,'Export-Deemed',NULL,'20',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(5,'Export',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(6,'Marine',NULL,'30',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(7,'Retail Offline',NULL,'11',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(8,'Wholesale',NULL,'13',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(9,'Retail Online',NULL,'12',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(10,'MJL Online',NULL,'16',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL);
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `card_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=>male, 2=>female, 3=>others',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nkn_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation_id` bigint unsigned NOT NULL,
  `business_team_id` bigint unsigned NOT NULL,
  `region_id` bigint unsigned NOT NULL,
  `territory_id` bigint unsigned NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `existing_visits`
--

DROP TABLE IF EXISTS `existing_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `existing_visits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sold_to_party_id` bigint unsigned NOT NULL,
  `ship_to_party_id` bigint unsigned DEFAULT NULL,
  `visit_purpose_id` bigint unsigned DEFAULT NULL,
  `other_purpose` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sales_performance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_verification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mkt_mat_display` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lat` decimal(9,6) DEFAULT NULL,
  `long` decimal(9,6) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` bigint unsigned DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `existing_visits_sold_to_party_id_foreign` (`sold_to_party_id`),
  KEY `existing_visits_ship_to_party_id_foreign` (`ship_to_party_id`),
  KEY `existing_visits_visit_purpose_id_foreign` (`visit_purpose_id`),
  KEY `existing_visits_employee_id_foreign` (`employee_id`),
  CONSTRAINT `existing_visits_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `existing_visits_ship_to_party_id_foreign` FOREIGN KEY (`ship_to_party_id`) REFERENCES `ship_to_parties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `existing_visits_sold_to_party_id_foreign` FOREIGN KEY (`sold_to_party_id`) REFERENCES `sold_to_parties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `existing_visits_visit_purpose_id_foreign` FOREIGN KEY (`visit_purpose_id`) REFERENCES `visit_purposes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `existing_visits`
--

LOCK TABLES `existing_visits` WRITE;
/*!40000 ALTER TABLE `existing_visits` DISABLE KEYS */;
/*!40000 ALTER TABLE `existing_visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_stages`
--

LOCK TABLES `lead_stages` WRITE;
/*!40000 ALTER TABLE `lead_stages` DISABLE KEYS */;
INSERT INTO `lead_stages` VALUES (1,'Prospect',NULL,1,'2025-06-18 03:47:26','2025-06-18 03:47:26'),(2,'Identify Account Need',NULL,1,'2025-06-18 03:47:26','2025-06-18 03:47:26'),(3,'Formulate Offer',NULL,1,'2025-06-18 03:47:26','2025-06-18 03:47:26'),(4,'Negotiate to Close',NULL,1,'2025-06-18 03:47:26','2025-06-18 03:47:26'),(5,'Manage Implementation',NULL,1,'2025-06-18 03:47:26','2025-06-18 03:47:26'),(6,'Loss',NULL,1,'2025-06-18 03:47:26','2025-06-18 03:47:26'),(7,'Complete for CMA',NULL,1,'2025-06-18 03:47:26','2025-06-18 03:47:26');
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `loc_districts` VALUES (1,3,'Dhaka','ঢাকা','23.7115253','90.4111451',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(2,3,'Faridpur','ফরিদপুর','23.6070822','89.8429406',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(3,3,'Gazipur','গাজীপুর','24.0022858','90.4264283',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(4,3,'Gopalganj','গোপালগঞ্জ','23.0050857','89.8266059',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(5,8,'Jamalpur','জামালপুর','24.937533','89.937775',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(6,3,'Kishoreganj','কিশোরগঞ্জ','24.444937','90.776575',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(7,3,'Madaripur','মাদারীপুর','23.164102','90.1896805',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(8,3,'Manikganj','মানিকগঞ্জ','23.8644','90.0047',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(9,3,'Munshiganj','মুন্সিগঞ্জ','23.5422','90.5305',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(10,8,'Mymensingh','ময়মনসিংহ','24.7471','90.4203',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(11,3,'Narayanganj','নারায়াণগঞ্জ','23.63366','90.496482',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(12,3,'Narsingdi','নরসিংদী','23.932233','90.71541',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(13,8,'Netrokona','নেত্রকোণা','24.870955','90.727887',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(14,3,'Rajbari','রাজবাড়ি','23.7574305','89.6444665',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(15,3,'Shariatpur','শরীয়তপুর','23.2423','90.4348',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(16,8,'Sherpur','শেরপুর','25.0204933','90.0152966',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(17,3,'Tangail','টাঙ্গাইল','24.2513','89.9167',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(18,5,'Bogura','বগুড়া','24.8465228','89.377755',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(19,5,'Joypurhat','জয়পুরহাট','25.0968','89.0227',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(20,5,'Naogaon','নওগাঁ','24.7936','88.9318',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(21,5,'Natore','নাটোর','24.420556','89.000282',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(22,5,'Nawabganj','নবাবগঞ্জ','24.5965034','88.2775122',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(23,5,'Pabna','পাবনা','23.998524','89.233645',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(24,5,'Rajshahi','রাজশাহী','24.3745','88.6042',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(25,5,'Sirajgonj','সিরাজগঞ্জ','24.4533978','89.7006815',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(26,6,'Dinajpur','দিনাজপুর','25.6217061','88.6354504',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(27,6,'Gaibandha','গাইবান্ধা','25.328751','89.528088',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(28,6,'Kurigram','কুড়িগ্রাম','25.805445','89.636174',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(29,6,'Lalmonirhat','লালমনিরহাট','25.9923','89.2847',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(30,6,'Nilphamari','নীলফামারী','25.931794','88.856006',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(31,6,'Panchagarh','পঞ্চগড়','26.3411','88.5541606',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(32,6,'Rangpur','রংপুর','25.7558096','89.244462',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(33,6,'Thakurgaon','ঠাকুরগাঁও','26.0336945','88.4616834',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(34,1,'Barguna','বরগুনা','22.0953','90.1121',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(35,1,'Barishal','বরিশাল','22.7010','90.3535',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(36,1,'Bhola','ভোলা','22.685923','90.648179',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(37,1,'Jhalokati','ঝালকাঠি','22.6406','90.1987',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(38,1,'Patuakhali','পটুয়াখালী','22.3596316','90.3298712',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(39,1,'Pirojpur','পিরোজপুর','22.5841','89.9720',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(40,2,'Bandarban','বান্দরবান','22.1953275','92.2183773',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(41,2,'Brahmanbaria','ব্রাহ্মণবাড়িয়া','23.9570904','91.1119286',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(42,2,'Chandpur','চাঁদপুর','23.2332585','90.6712912',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(43,2,'Chattogram','চট্টগ্রাম','22.335109','91.834073',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(44,2,'Cumilla','কুমিল্লা','23.4682747','91.1788135',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(45,2,'Cox\'s Bazar','কক্স বাজার','21.4272','92.0058',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(46,2,'Feni','ফেনী','23.0159','91.3976',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(47,2,'Khagrachari','খাগড়াছড়ি','23.119285','91.984663',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(48,2,'Lakshmipur','লক্ষ্মীপুর','22.942477','90.841184',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(49,2,'Noakhali','নোয়াখালী','22.869563','91.099398',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(50,2,'Rangamati','রাঙ্গামাটি','22.7324','92.2985',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(51,7,'Habiganj','হবিগঞ্জ','24.374945','91.41553',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(52,7,'Maulvibazar','মৌলভীবাজার','24.482934','91.777417',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(53,7,'Sunamganj','সুনামগঞ্জ','25.0658042','91.3950115',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(54,7,'Sylhet','সিলেট','24.8897956','91.8697894',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(55,4,'Bagerhat','বাগেরহাট','22.651568','89.785938',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(56,4,'Chuadanga','চুয়াডাঙ্গা','23.6401961','88.841841',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(57,4,'Jashore','যশোর','23.16643','89.2081126',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(58,4,'Jhenaidah','ঝিনাইদহ','23.5448176','89.1539213',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(59,4,'Khulna','খুলনা','22.815774','89.568679',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(60,4,'Kushtia','কুষ্টিয়া','23.901258','89.120482',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(61,4,'Magura','মাগুরা','23.487337','89.419956',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(62,4,'Meherpur','মেহেরপুর','23.762213','88.631821',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(63,4,'Narail','নড়াইল','23.172534','89.512672',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(64,4,'Satkhira','সাতক্ষীরা','22.7185','89.0705',1,'2025-05-25 05:41:43','2025-05-25 05:41:43');
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `loc_divisions` VALUES (1,'Barishal','বরিশাল','22.701002','90.353451',1,'2025-05-25 05:41:42','2025-05-25 05:41:42'),(2,'Chattogram','চট্টগ্রাম','22.356851','91.783182',1,'2025-05-25 05:41:42','2025-05-25 05:41:42'),(3,'Dhaka','ঢাকা','23.810332','90.412518',1,'2025-05-25 05:41:42','2025-05-25 05:41:42'),(4,'Khulna','খুলনা','22.845641','89.540328',1,'2025-05-25 05:41:42','2025-05-25 05:41:42'),(5,'Rajshahi','রাজশাহী','24.363589','88.624135',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(6,'Rangpur','রংপুর','25.743892','89.275227',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(7,'Sylhet','সিলেট','24.894929','91.868706',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(8,'Mymensingh','ময়মনসিংহ','24.747149','90.420273',1,'2025-05-25 05:41:43','2025-05-25 05:41:43');
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
  `loc_division_id` bigint unsigned NOT NULL,
  `loc_district_id` bigint unsigned NOT NULL,
  `post_office` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loc_post_offices_post_code_unique` (`post_code`),
  KEY `loc_post_offices_loc_division_id_foreign` (`loc_division_id`),
  KEY `loc_post_offices_loc_district_id_foreign` (`loc_district_id`),
  CONSTRAINT `loc_post_offices_loc_district_id_foreign` FOREIGN KEY (`loc_district_id`) REFERENCES `loc_districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `loc_post_offices_loc_division_id_foreign` FOREIGN KEY (`loc_division_id`) REFERENCES `loc_divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loc_post_offices`
--

LOCK TABLES `loc_post_offices` WRITE;
/*!40000 ALTER TABLE `loc_post_offices` DISABLE KEYS */;
INSERT INTO `loc_post_offices` VALUES (1,1,34,'Amtali','8710',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(2,1,34,'Bamna','8730',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(3,1,34,'Barguna Sadar','8700',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(4,1,34,'Nali Bandar','8701',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(5,1,34,'Betagi','8740',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(6,1,34,'Darul Ulam','8741',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(7,1,34,'Kakchira','8721',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(8,1,34,'Patharghata','8720',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(9,1,35,'Agailzhara','8240',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(10,1,35,'Gaila','8241',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(11,1,35,'Paisarhat','8242',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(12,1,35,'Babuganj','8210',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(13,1,35,'Barisal Cadet','8216',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(14,1,35,'Chandpasha','8212',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(15,1,35,'Madhabpasha','8213',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(16,1,35,'Nizamuddin College','8215',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(17,1,35,'Rahamatpur','8211',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(18,1,35,'Thakur Mallik','8214',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(19,1,35,'Barajalia','8260',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(20,1,35,'Osman Manjil','8261',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(21,1,35,'Barisal Sadar','8200',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(22,1,35,'Bukhainagar','8201',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(23,1,35,'Jaguarhat','8206',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(24,1,35,'Kashipur','8205',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(25,1,35,'Patang','8204',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(26,1,35,'Saheberhat','8202',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(27,1,35,'Sugandia','8203',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(28,1,35,'Batajor','8233',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(29,1,35,'Gouranadi','8230',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(30,1,35,'Kashemabad','8232',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(31,1,35,'Tarki Bandar','8231',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(32,1,35,'Langutia','8274',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(33,1,35,'Laskarpur','8271',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(34,1,35,'Mahendiganj','8270',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(35,1,35,'Nalgora','8273',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(36,1,35,'Ulania','8272',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(37,1,35,'Charkalekhan','8252',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(38,1,35,'Kazirchar','8251',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(39,1,35,'Muladi','8250',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(40,1,35,'Charamandi','8281',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(41,1,35,'kalaskati','8284',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(42,1,35,'Padri Shibpur','8282',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(43,1,35,'Sahebganj','8280',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(44,1,35,'Shialguni','8283',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(45,1,35,'Dakuarhat','8223',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(46,1,35,'Dhamura','8221',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(47,1,35,'Jugirkanda','8222',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(48,1,35,'Shikarpur','8224',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(49,1,35,'Uzirpur','8220',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(50,1,36,'Bhola Sadar','8300',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(51,1,36,'Joynagar','8301',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(52,1,36,'Borhanuddin UPO','8320',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(53,1,36,'Mirzakalu','8321',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(54,1,36,'Charfashion','8340',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(55,1,36,'Dularhat','8341',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(56,1,36,'Keramatganj','8342',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(57,1,36,'Doulatkhan','8310',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(58,1,36,'Hajipur','8311',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(59,1,36,'Hajirhat','8360',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(60,1,36,'Hatshoshiganj','8350',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(61,1,36,'Daurihat','8331',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(62,1,36,'Gazaria','8332',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(63,1,36,'Lalmohan UPO','8330',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(64,1,37,'Baukathi','8402',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(65,1,37,'Gabha','8403',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(66,1,37,'Jhalokathi Sadar','8400',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(67,1,37,'Nabagram','8401',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(68,1,37,'Shekherhat','8404',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(69,1,37,'Amua','8431',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(70,1,37,'Kathalia','8430',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(71,1,37,'Niamatee','8432',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(72,1,37,'Shoulajalia','8433',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(73,1,37,'Beerkathi','8421',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(74,1,37,'Nalchhiti','8420',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(75,1,37,'Rajapur','8410',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(76,1,38,'Bagabandar','8621',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(77,1,38,'Bauphal','8620',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(78,1,38,'Birpasha','8622',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(79,1,38,'Kalaia','8624',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(80,1,38,'Kalishari','8623',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(81,1,38,'Dashmina','8630',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(82,1,38,'Galachipa','8640',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(83,1,38,'Gazipur Bandar','8641',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(84,1,38,'Khepupara','8650',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(85,1,38,'Mahipur','8651',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(86,1,38,'Dumkee','8602',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(87,1,38,'Moukaran','8601',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(88,1,38,'Patuakhali Sadar','8600',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(89,1,38,'Rahimabad','8603',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(90,1,38,'Subidkhali','8610',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(91,1,39,'Banaripara','8530',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(92,1,39,'Chakhar','8531',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(93,1,39,'Bhandaria','8550',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(94,1,39,'Dhaoa','8552',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(95,1,39,'Kanudashkathi','8551',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(96,1,39,'Jolagati','8513',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(97,1,39,'Joykul','8512',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(98,1,39,'Kaukhali','8510',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(99,1,39,'Keundia','8511',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(100,1,39,'Betmor Natun Hat','8565',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(101,1,39,'Gulishakhali','8563',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(102,1,39,'Halta','8562',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(103,1,39,'Mathbaria','8560',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(104,1,39,'Shilarganj','8566',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(105,1,39,'Tiarkhali','8564',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(106,1,39,'Tushkhali','8561',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(107,1,39,'Nazirpur','8540',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(108,1,39,'Sriramkathi','8541',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(109,1,39,'Hularhat','8501',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(110,1,39,'Parerhat','8502',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(111,1,39,'Pirojpur Sadar','8500',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(112,1,39,'Darus Sunnat','8521',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(113,1,39,'Jalabari','8523',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(114,1,39,'Kaurikhara','8522',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(115,1,39,'Swarupkathi','8520',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(116,2,40,'Alikadam','4650',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(117,2,40,'Bandarban Sadar','4600',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(118,2,40,'Naikhong','4660',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(119,2,40,'Roanchhari','4610',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(120,2,40,'Ruma','4620',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(121,2,40,'Lama','4641',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(122,2,40,'Thanchi','4630',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(123,2,41,'Akhaura','3450',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(124,2,41,'Azampur','3451',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(125,2,41,'Gangasagar','3452',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(126,2,41,'Banchharampur','3420',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(127,2,41,'Ashuganj','3402',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(128,2,41,'Ashuganj Share','3403',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(129,2,41,'Brahamanbaria Sadar','3400',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(130,2,41,'Poun','3404',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(131,2,41,'Talshahar','3401',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(132,2,41,'Chandidar','3462',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(133,2,41,'Chargachh','3463',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(134,2,41,'Gopinathpur','3464',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(135,2,41,'Kasba','3460',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(136,2,41,'Kuti','3461',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(137,2,41,'Jibanganj','3419',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(138,2,41,'Kaitala','3417',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(139,2,41,'Laubfatehpur','3411',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(140,2,41,'Nabinagar','3410',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(141,2,41,'Rasullabad','3412',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(142,2,41,'Ratanpur','3414',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(143,2,41,'Salimganj','3418',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(144,2,41,'Shahapur','3415',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(145,2,41,'Shamgram','3413',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(146,2,41,'Fandauk','3441',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(147,2,41,'Nasirnagar','3440',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(148,2,41,'Chandura','3432',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(149,2,41,'Sarial','3430',1,'2025-05-25 05:45:09','2025-05-25 05:45:09'),(150,2,41,'Shahbajpur','3431',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(151,2,42,'Baburhat','3602',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(152,2,42,'Chandpur Sadar','3600',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(153,2,42,'Puranbazar','3601',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(154,2,42,'Sahatali','3603',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(155,2,42,'Chandra','3651',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(156,2,42,'Faridganj','3650',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(157,2,42,'Gridkaliandia','3653',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(158,2,42,'Islampur Shah Isain','3655',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(159,2,42,'Rampurbazar','3654',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(160,2,42,'Rupsha','3652',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(161,2,42,'Bolakhal','3611',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(162,2,42,'Hajiganj','3610',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(163,2,42,'Gandamara','3661',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(164,2,42,'Hayemchar','3660',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(165,2,42,'Kachua','3630',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(166,2,42,'Pak Shrirampur','3631',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(167,2,42,'Rahima Nagar','3632',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(168,2,42,'Shachar','3633',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(169,2,42,'Kalipur','3642',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(170,2,42,'Matlobganj','3640',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(171,2,42,'Mohanpur','3641',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(172,2,42,'Chotoshi','3623',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(173,2,42,'Islamia Madrasha','3624',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(174,2,42,'Khilabazar','3621',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(175,2,42,'Pashchim Kherihar Al','3622',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(176,2,42,'Shahrasti','3620',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(177,2,43,'Anowara','4376',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(178,2,43,'Battali','4378',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(179,2,43,'Paroikora','4377',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(180,2,43,'Boalkhali','4366',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(181,2,43,'Charandwip','4369',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(182,2,43,'Iqbal Park','4365',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(183,2,43,'Kadurkhal','4368',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(184,2,43,'Kanungopara','4363',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(185,2,43,'Sakpura','4367',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(186,2,43,'Saroatoli','4364',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(187,2,43,'Al- Amin Baria Madra','4221',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(188,2,43,'Amin Jute Mills','4211',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(189,2,43,'Anandabazar','4215',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(190,2,43,'Bayezid Bostami','4210',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(191,2,43,'Chandgaon','4212',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(192,2,43,'Chawkbazar','4203',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(193,2,43,'Chitt. Cantonment','4220',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(194,2,43,'Chitt. Customs Acca','4219',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(195,2,43,'Chitt. Politechnic In','4209',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(196,2,43,'Chitt. Sailers Colon','4218',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(197,2,43,'Chittagong Airport','4205',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(198,2,43,'Chittagong Bandar','4100',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(199,2,43,'Chittagong GPO','4000',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(200,2,43,'Export Processing','4223',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(201,2,43,'Firozshah','4207',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(202,2,43,'Halishahar','4216',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(203,2,43,'Halishshar','4225',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(204,2,43,'Jalalabad','4214',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(205,2,43,'Jaldia Merine Accade','4206',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(206,2,43,'Middle Patenga','4222',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(207,2,43,'Mohard','4208',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(208,2,43,'North Halishahar','4226',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(209,2,43,'North Katuli','4217',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(210,2,43,'Pahartoli','4202',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(211,2,43,'Patenga','4204',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(212,2,43,'Rampura TSO','4224',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(213,2,43,'Wazedia','4213',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(214,2,43,'Barma','4383',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(215,2,43,'Dohazari','4382',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(216,2,43,'East Joara','4380',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(217,2,43,'Gachbaria','4381',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(218,2,43,'Bhandar Sharif','4352',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(219,2,43,'Fatikchhari','4350',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(220,2,43,'Harualchhari','4354',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(221,2,43,'Najirhat','4353',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(222,2,43,'Nanupur','4351',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(223,2,43,'Narayanhat','4355',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(224,2,43,'Chitt.University','4331',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(225,2,43,'Fatahabad','4335',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(226,2,43,'Gorduara','4332',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(227,2,43,'Hathazari','4330',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(228,2,43,'Katirhat','4333',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(229,2,43,'Madrasa','4339',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(230,2,43,'Mirzapur','4334',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(231,2,43,'Nuralibari','4337',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(232,2,43,'Yunus Nagar','4338',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(233,2,43,'Banigram','4393',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(234,2,43,'Gunagari','4392',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(235,2,43,'Jaldi','4390',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(236,2,43,'Khan Bahadur','4391',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(237,2,43,'Chunti','4398',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(238,2,43,'Lohagara','4396',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(239,2,43,'Padua','4397',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(240,2,43,'Abutorab','4321',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(241,2,43,'Azampur','4325',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(242,2,43,'Bharawazhat','4323',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(243,2,43,'Darrogahat','4322',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(244,2,43,'Joarganj','4324',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(245,2,43,'Korerhat','4327',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(246,2,43,'Mirsharai','4320',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(247,2,43,'Mohazanhat','4328',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(248,2,43,'Budhpara','4371',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(249,2,43,'Patiya Head Office','4370',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(250,2,43,'Dhamair','4361',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(251,2,43,'Rangunia','4360',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(252,2,43,'B.I.T Post Office','4349',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(253,2,43,'Beenajuri','4341',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(254,2,43,'Dewanpur','4347',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(255,2,43,'Fatepur','4345',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(256,2,43,'Gahira','4343',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(257,2,43,'Guzra Noapara','4346',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(258,2,43,'jagannath Hat','4344',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(259,2,43,'Kundeshwari','4342',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(260,2,43,'Mohamuni','4348',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(261,2,43,'Rouzan','4340',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(262,2,43,'Sandwip','4300',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(263,2,43,'Shiberhat','4301',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(264,2,43,'Urirchar','4302',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(265,2,43,'Baitul Ijjat','4387',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(266,2,43,'Bazalia','4388',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(267,2,43,'Satkania','4386',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(268,2,43,'Barabkunda','4312',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(269,2,43,'Baroidhala','4311',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(270,2,43,'Bawashbaria','4313',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(271,2,43,'Bhatiari','4315',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(272,2,43,'Fouzdarhat','4316',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(273,2,43,'Jafrabad','4317',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(274,2,43,'Kumira','4314',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(275,2,43,'Sitakunda','4310',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(276,2,44,'Barura','3560',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(277,2,44,'Murdafarganj','3562',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(278,2,44,'Poyalgachha','3561',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(279,2,44,'Brahmanpara','3526',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(280,2,44,'Burichang','3520',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(281,2,44,'Maynamoti bazar','3521',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(282,2,44,'Chandia','3510',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(283,2,44,'Madhaiabazar','3511',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(284,2,44,'Batisa','3551',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(285,2,44,'Chiora','3552',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(286,2,44,'Chouddagram','3550',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(287,2,44,'Comilla Contoment','3501',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(288,2,44,'Comilla Sadar','3500',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(289,2,44,'Courtbari','3503',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(290,2,44,'Halimanagar','3502',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(291,2,44,'Suaganj','3504',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(292,2,44,'Dashpara','3518',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(293,2,44,'Daudkandi','3516',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(294,2,44,'Eliotganj','3519',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(295,2,44,'Gouripur','3517',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(296,2,44,'Barashalghar','3532',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(297,2,44,'Davidhar','3530',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(298,2,44,'Dhamtee','3533',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(299,2,44,'Gangamandal','3531',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(300,2,44,'Homna','3546',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(301,2,44,'Bipulasar','3572',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(302,2,44,'Laksam','3570',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(303,2,44,'Lakshamanpur','3571',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(304,2,44,'Chhariabazar','3582',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(305,2,44,'Dhalua','3581',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(306,2,44,'Gunabati','3583',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(307,2,44,'Langalkot','3580',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(308,2,44,'Bangra','3543',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(309,2,44,'Companyganj','3542',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(310,2,44,'Muradnagar','3540',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(311,2,44,'Pantibazar','3545',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(312,2,44,'Ramchandarpur','3541',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(313,2,44,'Sonakanda','3544',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(314,2,45,'Badarkali','4742',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(315,2,45,'Chiringga','4740',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(316,2,45,'Chiringga S.O','4741',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(317,2,45,'Malumghat','4743',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(318,2,45,'Coxs Bazar Sadar','4700',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(319,2,45,'Eidga','4702',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(320,2,45,'Zhilanja','4701',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(321,2,45,'Gorakghat','4710',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(322,2,45,'Kutubdia','4720',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(323,2,45,'Ramu','4730',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(324,2,45,'Hnila','4761',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(325,2,45,'St.Martin','4762',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(326,2,45,'Teknaf','4760',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(327,2,45,'Ukhia','4750',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(328,2,46,'Chhagalnaia','3910',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(329,2,46,'Daraga Hat','3912',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(330,2,46,'Maharajganj','3911',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(331,2,46,'Puabashimulia','3913',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(332,2,46,'Chhilonia','3922',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(333,2,46,'Dagondhuia','3920',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(334,2,46,'Dudmukha','3921',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(335,2,46,'Rajapur','3923',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(336,2,46,'Fazilpur','3901',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(337,2,46,'Feni Sadar','3900',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(338,2,46,'Laskarhat','3903',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(339,2,46,'Sharshadie','3902',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(340,2,46,'Fulgazi','3942',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(341,2,46,'Munshirhat','3943',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(342,2,46,'Pashurampur','3940',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(343,2,46,'Shuarbazar','3941',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(344,2,46,'Ahmadpur','3932',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(345,2,46,'Kazirhat','3933',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(346,2,46,'Motiganj','3931',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(347,2,46,'Sonagazi','3930',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(348,2,47,'Diginala','4420',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(349,2,47,'Khagrachari Sadar','4400',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(350,2,47,'Laxmichhari','4470',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(351,2,47,'Mahalchhari','4430',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(352,2,47,'Manikchhari','4460',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(353,2,47,'Matiranga','4450',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(354,2,47,'Panchhari','4410',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(355,2,47,'Ramghar Head Office','4440',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(356,2,48,'Char Alexgander','3730',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(357,2,48,'Hajirghat','3731',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(358,2,48,'Ramgatirhat','3732',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(359,2,48,'Amani Lakshimpur','3709',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(360,2,48,'Bhabaniganj','3702',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(361,2,48,'Chandraganj','3708',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(362,2,48,'Choupalli','3707',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(363,2,48,'Dalal Bazar','3701',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(364,2,48,'Duttapara','3706',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(365,2,48,'Keramatganj','3704',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(366,2,48,'Lakshimpur Sadar','3700',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(367,2,48,'Mandari','3703',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(368,2,48,'Rupchara','3705',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(369,2,48,'Alipur','3721',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(370,2,48,'Dolta','3725',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(371,2,48,'Kanchanpur','3723',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(372,2,48,'Naagmud','3724',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(373,2,48,'Panpara','3722',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(374,2,48,'Ramganj','3720',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(375,2,48,'Bhuabari','3714',1,'2025-05-25 05:45:10','2025-05-25 05:45:10'),(376,2,48,'Haydarganj','3713',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(377,2,48,'Nagerdighirpar','3712',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(378,2,48,'Rakhallia','3711',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(379,2,48,'Raypur','3710',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(380,2,49,'Basur Hat','3850',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(381,2,49,'Charhajari','3851',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(382,2,49,'Alaiarpur','3831',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(383,2,49,'Amisha Para','3847',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(384,2,49,'Banglabazar','3822',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(385,2,49,'Bazra','3824',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(386,2,49,'Begumganj','3820',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(387,2,49,'Bhabani Jibanpur','3837',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(388,2,49,'Choumohani','3821',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(389,2,49,'Dauti','3843',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(390,2,49,'Durgapur','3848',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(391,2,49,'Gopalpur','3828',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(392,2,49,'Jamidar Hat','3825',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(393,2,49,'Joyag','3844',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(394,2,49,'Joynarayanpur','3829',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(395,2,49,'Khalafat Bazar','3833',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(396,2,49,'Khalishpur','3842',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(397,2,49,'Maheshganj','3838',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(398,2,49,'Mir Owarishpur','3823',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(399,2,49,'Nadona','3839',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(400,2,49,'Nandiapara','3841',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(401,2,49,'Oachhekpur','3835',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(402,2,49,'Rajganj','3834',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(403,2,49,'Sonaimuri','3827',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(404,2,49,'Tangirpar','3832',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(405,2,49,'Thanar Hat','3845',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(406,2,49,'Bansa Bazar','3879',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(407,2,49,'Bodalcourt','3873',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(408,2,49,'Chatkhil','3870',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(409,2,49,'Dosh Gharia','3878',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(410,2,49,'Karihati','3877',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(411,2,49,'Khilpara','3872',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(412,2,49,'Palla','3871',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(413,2,49,'Rezzakpur','3874',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(414,2,49,'Sahapur','3881',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(415,2,49,'Sampara','3882',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(416,2,49,'Shingbahura','3883',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(417,2,49,'Solla','3875',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(418,2,49,'Afazia','3891',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(419,2,49,'Hatiya','3890',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(420,2,49,'Tamoraddi','3892',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(421,2,49,'Chaprashir Hat','3811',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(422,2,49,'Char Jabbar','3812',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(423,2,49,'Charam Tua','3809',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(424,2,49,'Din Monir Hat','3803',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(425,2,49,'Kabirhat','3807',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(426,2,49,'Khalifar Hat','3808',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(427,2,49,'Mriddarhat','3806',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(428,2,49,'Noakhali College','3801',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(429,2,49,'Noakhali Sadar','3800',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(430,2,49,'Pak Kishoreganj','3804',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(431,2,49,'Sonapur','3802',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(432,2,49,'Beezbag','3862',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(433,2,49,'Chatarpaia','3864',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(434,2,49,'Kallyandi','3861',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(435,2,49,'Kankirhat','3863',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(436,2,49,'Senbag','3860',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(437,2,49,'T.P. Lamua','3865',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(438,2,50,'Barakal','4570',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(439,2,50,'Bilaichhari','4550',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(440,2,50,'Jarachhari','4560',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(441,2,50,'Betbunia','4511',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(442,2,50,'Kalampati','4510',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(443,2,50,'Chandraghona','4531',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(444,2,50,'Kaptai','4530',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(445,2,50,'Kaptai Nuton Bazar','4533',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(446,2,50,'Kaptai Project','4532',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(447,2,50,'Longachh','4580',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(448,2,50,'Marishya','4590',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(449,2,50,'Nanichhar','4520',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(450,2,50,'Rajsthali','4540',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(451,2,50,'Rangamati Sadar','4500',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(452,3,1,'Demra','1360',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(453,3,1,'Matuail','1362',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(454,3,1,'Sarulia','1361',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(455,3,1,'Dhaka CantonmentTSO','1206',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(456,3,1,'Dhamrai','1350',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(457,3,1,'Kamalpur','1351',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(458,3,1,'Jigatala TSO','1209',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(459,3,1,'Banani TSO','1213',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(460,3,1,'Gulshan Model Town','1212',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(461,3,1,'Dhania TSO','1232',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(462,3,1,'Joypara','1330',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(463,3,1,'Narisha','1332',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(464,3,1,'Palamganj','1331',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(465,3,1,'Ati','1312',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(466,3,1,'Dhaka Jute Mills','1311',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(467,3,1,'Kalatia','1313',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(468,3,1,'Keraniganj','1310',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(469,3,1,'KhilgaonTSO','1219',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(470,3,1,'KhilkhetTSO','1229',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(471,3,1,'Posta TSO','1211',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(472,3,1,'Mirpur TSO','1216',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(473,3,1,'Mohammadpur Housing','1207',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(474,3,1,'Sangsad BhabanTSO','1225',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(475,3,1,'BangabhabanTSO','1222',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(476,3,1,'DilkushaTSO','1223',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(477,3,1,'Agla','1323',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(478,3,1,'Churain','1325',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(479,3,1,'Daudpur','1322',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(480,3,1,'Hasnabad','1321',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(481,3,1,'Khalpar','1324',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(482,3,1,'Nawabganj','1320',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(483,3,1,'New Market TSO','1205',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(484,3,1,'Dhaka GPO','1000',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(485,3,1,'Shantinagr TSO','1217',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(486,3,1,'Basabo TSO','1214',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(487,3,1,'Amin Bazar','1348',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(488,3,1,'Dairy Farm','1341',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(489,3,1,'EPZ','1349',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(490,3,1,'Jahangirnagar Univer','1342',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(491,3,1,'Kashem Cotton Mills','1346',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(492,3,1,'Rajphulbaria','1347',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(493,3,1,'Savar','1340',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(494,3,1,'Savar Canttonment','1344',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(495,3,1,'Saver P.A.T.C','1343',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(496,3,1,'Shimulia','1345',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(497,3,1,'Dhaka Sadar HO','1100',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(498,3,1,'Gendaria TSO','1204',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(499,3,1,'Wari TSO','1203',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(500,3,1,'Tejgaon TSO','1215',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(501,3,1,'Dhaka Politechnic','1208',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(502,3,1,'Uttara Model TwonTSO','1230',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(503,3,2,'Alfadanga','7870',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(504,3,2,'Bhanga','7830',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(505,3,2,'Boalmari','7860',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(506,3,2,'Rupatpat','7861',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(507,3,2,'Charbadrashan','7810',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(508,3,2,'Ambikapur','7802',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(509,3,2,'Baitulaman Politecni','7803',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(510,3,2,'Faridpursadar','7800',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(511,3,2,'Kanaipur','7801',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(512,3,2,'Kamarkali','7851',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(513,3,2,'Madukhali','7850',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(514,3,2,'Nagarkanda','7840',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(515,3,2,'Talma','7841',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(516,3,2,'Bishwa jaker Manjil','7822',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(517,3,2,'Hat Krishapur','7821',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(518,3,2,'Sadarpur','7820',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(519,3,2,'Shriangan','7804',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(520,3,3,'B.O.F','1703',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(521,3,3,'B.R.R','1701',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(522,3,3,'Chandna','1702',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(523,3,3,'Gazipur Sadar','1700',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(524,3,3,'National University','1704',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(525,3,3,'Kaliakaar','1750',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(526,3,3,'Safipur','1751',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(527,3,3,'Kaliganj','1720',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(528,3,3,'Pubail','1721',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(529,3,3,'Santanpara','1722',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(530,3,3,'Vaoal Jamalpur','1723',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(531,3,3,'kapashia','1730',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(532,3,3,'Ershad Nagar','1712',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(533,3,3,'Monnunagar','1710',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(534,3,3,'Nishat Nagar','1711',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(535,3,3,'Barmi','1743',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(536,3,3,'Bashamur','1747',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(537,3,3,'Boubi','1748',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(538,3,3,'Kawraid','1745',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(539,3,3,'Satkhamair','1744',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(540,3,3,'Sreepur','1740',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(541,3,3,'Rajendrapur','1741',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(542,3,3,'Rajendrapur Canttome','1742',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(543,3,4,'Barfa','8102',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(544,3,4,'Chandradighalia','8013',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(545,3,4,'Gopalganj Sadar','8100',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(546,3,4,'Ulpur','8101',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(547,3,4,'Jonapur','8133',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(548,3,4,'Kashiani','8130',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(549,3,4,'Ramdia College','8131',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(550,3,4,'Ratoil','8132',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(551,3,4,'Kotalipara','8110',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(552,3,4,'Batkiamari','8141',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(553,3,4,'Khandarpara','8142',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(554,3,4,'Maksudpur','8140',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(555,3,4,'Patgati','8121',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(556,3,4,'Tungipara','8120',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(557,3,5,'Dewangonj','2030',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(558,3,5,'Dewangonj S. Mills','2031',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(559,3,5,'Durmoot','2021',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(560,3,5,'Gilabari','2022',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(561,3,5,'Islampur','2020',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(562,3,5,'Jamalpur','2000',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(563,3,5,'Nandina','2001',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(564,3,5,'Narundi','2002',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(565,3,5,'Jamalpur','2011',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(566,3,5,'Mahmoodpur','2013',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(567,3,5,'Malancha','2012',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(568,3,5,'Malandah','2010',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(569,3,5,'Balijhuri','2041',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(570,3,5,'Mathargonj','2040',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(571,3,5,'Bausee','2052',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(572,3,5,'Gunerbari','2051',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(573,3,5,'Jagannath Ghat','2053',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(574,3,5,'Jamuna Sar Karkhana','2055',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(575,3,5,'Pingna','2054',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(576,3,5,'Shorishabari','2050',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(577,3,6,'Bajitpur','2336',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(578,3,6,'Laksmipur','2338',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(579,3,6,'Sararchar','2337',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(580,3,6,'Bhairab','2350',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(581,3,6,'Hossenpur','2320',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(582,3,6,'Itna','2390',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(583,3,6,'Karimganj','2310',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(584,3,6,'Gochhihata','2331',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(585,3,6,'Katiadi','2330',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(586,3,6,'Kishoreganj S.Mills','2301',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(587,3,6,'Kishoreganj Sadar','2300',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(588,3,6,'Maizhati','2302',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(589,3,6,'Nilganj','2303',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(590,3,6,'Chhoysuti','2341',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(591,3,6,'Kuliarchar','2340',1,'2025-05-25 05:45:11','2025-05-25 05:45:11'),(592,3,6,'Abdullahpur','2371',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(593,3,6,'MIthamoin','2370',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(594,3,6,'Nikli','2360',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(595,3,6,'Ostagram','2380',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(596,3,6,'Pakundia','2326',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(597,3,6,'Tarial','2316',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(598,3,7,'Bahadurpur','7932',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(599,3,7,'Barhamganj','7930',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(600,3,7,'Nilaksmibandar','7931',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(601,3,7,'Umedpur','7933',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(602,3,7,'Kalkini','7920',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(603,3,7,'Sahabrampur','7921',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(604,3,7,'Charmugria','7901',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(605,3,7,'Habiganj','7903',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(606,3,7,'Kulpaddi','7902',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(607,3,7,'Madaripur Sadar','7900',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(608,3,7,'Mustafapur','7904',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(609,3,7,'Khalia','7911',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(610,3,7,'Rajoir','7910',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(611,3,8,'Doulatpur','1860',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(612,3,8,'Gheor','1840',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(613,3,8,'Jhitka','1831',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(614,3,8,'Lechhraganj','1830',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(615,3,8,'Barangail','1804',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(616,3,8,'Gorpara','1802',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(617,3,8,'Mahadebpur','1803',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(618,3,8,'Manikganj Bazar','1801',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(619,3,8,'Manikganj Sadar','1800',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(620,3,8,'Baliati','1811',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(621,3,8,'Saturia','1810',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(622,3,8,'Aricha','1851',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(623,3,8,'Shibaloy','1850',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(624,3,8,'Tewta','1852',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(625,3,8,'Uthli','1853',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(626,3,8,'Baira','1821',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(627,3,8,'joymantop','1822',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(628,3,8,'Singair','1820',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(629,3,9,'Gajaria','1510',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(630,3,9,'Hossendi','1511',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(631,3,9,'Rasulpur','1512',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(632,3,9,'Gouragonj','1334',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(633,3,9,'Gouragonj','1534',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(634,3,9,'Haldia SO','1532',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(635,3,9,'Haridia','1333',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(636,3,9,'Haridia DESO','1533',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(637,3,9,'Korhati','1531',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(638,3,9,'Lohajang','1530',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(639,3,9,'Madini Mandal','1335',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(640,3,9,'Medini Mandal EDSO','1535',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(641,3,9,'Kathakhali','1503',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(642,3,9,'Mirkadim','1502',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(643,3,9,'Munshiganj Sadar','1500',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(644,3,9,'Rikabibazar','1501',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(645,3,9,'Ichapur','1542',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(646,3,9,'Kola','1541',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(647,3,9,'Malkha Nagar','1543',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(648,3,9,'Shekher Nagar','1544',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(649,3,9,'Sirajdikhan','1540',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(650,3,9,'Baghra','1557',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(651,3,9,'Barikhal','1551',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(652,3,9,'Bhaggyakul','1558',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(653,3,9,'Hashara','1553',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(654,3,9,'Kolapara','1554',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(655,3,9,'Kumarbhog','1555',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(656,3,9,'Mazpara','1552',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(657,3,9,'Srinagar','1550',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(658,3,9,'Vaggyakul SO','1556',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(659,3,9,'Bajrajugini','1523',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(660,3,9,'Baligao','1522',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(661,3,9,'Betkahat','1521',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(662,3,9,'Dighirpar','1525',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(663,3,9,'Hasail','1524',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(664,3,9,'Pura','1527',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(665,3,9,'Pura EDSO','1526',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(666,3,9,'Tangibari','1520',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(667,3,10,'Bhaluka','2240',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(668,3,10,'Fulbaria','2216',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(669,3,10,'Duttarbazar','2234',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(670,3,10,'Gaforgaon','2230',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(671,3,10,'Kandipara','2233',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(672,3,10,'Shibganj','2231',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(673,3,10,'Usti','2232',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(674,3,10,'Gouripur','2270',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(675,3,10,'Ramgopalpur','2271',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(676,3,10,'Dhara','2261',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(677,3,10,'Haluaghat','2260',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(678,3,10,'Munshirhat','2262',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(679,3,10,'Atharabari','2282',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(680,3,10,'Isshwargonj','2280',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(681,3,10,'Sohagi','2281',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(682,3,10,'Muktagachha','2210',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(683,3,10,'Agriculture Universi','2202',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(684,3,10,'Biddyaganj','2204',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(685,3,10,'Kawatkhali','2201',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(686,3,10,'Mymensingh Sadar','2200',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(687,3,10,'Pearpur','2205',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(688,3,10,'Shombhuganj','2203',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(689,3,10,'Gangail','2291',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(690,3,10,'Nandail','2290',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(691,3,10,'Beltia','2251',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(692,3,10,'Phulpur','2250',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(693,3,10,'Tarakanda','2252',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(694,3,10,'Ahmadbad','2221',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(695,3,10,'Dhala','2223',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(696,3,10,'Ram Amritaganj','2222',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(697,3,10,'Trishal','2220',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(698,3,11,'Araihazar','1450',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(699,3,11,'Gopaldi','1451',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(700,3,11,'Baidder Bazar','1440',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(701,3,11,'Bara Nagar','1441',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(702,3,11,'Barodi','1442',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(703,3,11,'Bandar','1410',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(704,3,11,'BIDS','1413',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(705,3,11,'D.C Mills','1411',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(706,3,11,'Madanganj','1414',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(707,3,11,'Nabiganj','1412',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(708,3,11,'Fatulla Bazar','1421',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(709,3,11,'Fatullah','1420',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(710,3,11,'Narayanganj Sadar','1400',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(711,3,11,'Bhulta','1462',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(712,3,11,'Kanchan','1461',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(713,3,11,'Murapara','1464',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(714,3,11,'Nagri','1463',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(715,3,11,'Rupganj','1460',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(716,3,11,'Adamjeenagar','1431',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(717,3,11,'LN Mills','1432',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(718,3,11,'Siddirganj','1430',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(719,3,12,'Belabo','1640',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(720,3,12,'Hatirdia','1651',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(721,3,12,'Katabaria','1652',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(722,3,12,'Monohordi','1650',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(723,3,12,'Karimpur','1605',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(724,3,12,'Madhabdi','1604',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(725,3,12,'Narsingdi College','1602',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(726,3,12,'Narsingdi Sadar','1600',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(727,3,12,'Panchdona','1603',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(728,3,12,'UMC Jute Mills','1601',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(729,3,12,'Char Sindhur','1612',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(730,3,12,'Ghorashal','1613',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(731,3,12,'Ghorashal Urea Facto','1611',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(732,3,12,'Palash','1610',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(733,3,12,'Bazar Hasnabad','1631',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(734,3,12,'Radhaganj bazar','1632',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(735,3,12,'Raypura','1630',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(736,3,12,'Shibpur','1620',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(737,3,13,'Susnng Durgapur','2420',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(738,3,13,'Atpara','2470',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(739,3,13,'Barhatta','2440',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(740,3,13,'Dharampasha','2450',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(741,3,13,'Dhobaura','2416',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(742,3,13,'Sakoai','2417',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(743,3,13,'Kalmakanda','2430',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(744,3,13,'Kendua','2480',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(745,3,13,'Khaliajhri','2460',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(746,3,13,'Shaldigha','2462',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(747,3,13,'Madan','2490',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(748,3,13,'Moddoynagar','2456',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(749,3,13,'Mohanganj','2446',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(750,3,13,'Baikherhati','2401',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(751,3,13,'Netrakona Sadar','2400',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(752,3,13,'Jaria Jhanjhail','2412',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(753,3,13,'Purbadhola','2410',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(754,3,13,'Shamgonj','2411',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(755,3,14,'Baliakandi','7730',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(756,3,14,'Nalia','7731',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(757,3,14,'Mrigibazar','7723',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(758,3,14,'Pangsha','7720',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(759,3,14,'Ramkol','7721',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(760,3,14,'Ratandia','7722',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(761,3,14,'Goalanda','7710',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(762,3,14,'Khankhanapur','7711',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(763,3,14,'Rajbari Sadar','7700',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(764,3,15,'Bhedorganj','8030',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(765,3,15,'Damudhya','8040',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(766,3,15,'Gosairhat','8050',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(767,3,15,'Jajira','8010',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(768,3,15,'Bhozeshwar','8021',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(769,3,15,'Gharisar','8022',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(770,3,15,'Kartikpur','8024',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(771,3,15,'Naria','8020',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(772,3,15,'Upshi','8023',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(773,3,15,'Angaria','8001',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(774,3,15,'Chikandi','8002',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(775,3,15,'Shariatpur Sadar','8000',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(776,3,16,'Bakshigonj','2140',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(777,3,16,'Jhinaigati','2120',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(778,3,16,'Gonopaddi','2151',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(779,3,16,'Nakla','2150',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(780,3,16,'Hatibandha','2111',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(781,3,16,'Nalitabari','2110',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(782,3,16,'Sherpur Shadar','2100',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(783,3,16,'Shribardi','2130',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(784,3,17,'Basail','1920',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(785,3,17,'Bhuapur','1960',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(786,3,17,'Delduar','1910',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(787,3,17,'Elasin','1913',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(788,3,17,'Hinga Nagar','1914',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(789,3,17,'Jangalia','1911',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(790,3,17,'Lowhati','1915',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(791,3,17,'Patharail','1912',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(792,3,17,'D. Pakutia','1982',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(793,3,17,'Dhalapara','1983',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(794,3,17,'Ghatial','1980',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(795,3,17,'Lohani','1984',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(796,3,17,'Zahidganj','1981',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(797,3,17,'Gopalpur','1990',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(798,3,17,'Hemnagar','1992',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(799,3,17,'Jhowail','1991',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(800,3,17,'Ballabazar','1973',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(801,3,17,'Elinga','1974',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(802,3,17,'Kalihati','1970',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(803,3,17,'Nagarbari','1977',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(804,3,17,'Nagarbari SO','1976',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(805,3,17,'Nagbari','1972',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(806,3,17,'Palisha','1975',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(807,3,17,'Rajafair','1971',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(808,3,17,'Kashkawlia','1930',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(809,3,17,'Dhobari','1997',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(810,3,17,'Madhupur','1996',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(811,3,17,'Gorai','1941',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(812,3,17,'Jarmuki','1944',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(813,3,17,'M.C. College','1942',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(814,3,17,'Mirzapur','1940',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(815,3,17,'Mohera','1945',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(816,3,17,'Warri paikpara','1943',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(817,3,17,'Dhuburia','1937',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(818,3,17,'Nagarpur','1936',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(819,3,17,'Salimabad','1938',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(820,3,17,'Kochua','1951',1,'2025-05-25 05:45:12','2025-05-25 05:45:12'),(821,3,17,'Sakhipur','1950',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(822,3,17,'Kagmari','1901',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(823,3,17,'Korotia','1903',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(824,3,17,'Purabari','1904',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(825,3,17,'Santosh','1902',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(826,3,17,'Tangail Sadar','1900',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(827,4,55,'Bagerhat Sadar','9300',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(828,4,55,'P.C College','9301',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(829,4,55,'Rangdia','9302',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(830,4,55,'Chalna Ankorage','9350',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(831,4,55,'Mongla Port','9351',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(832,4,55,'Barabaria','9361',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(833,4,55,'Chitalmari','9360',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(834,4,55,'Bhanganpar Bazar','9372',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(835,4,55,'Fakirhat','9370',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(836,4,55,'Mansa','9371',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(837,4,55,'Kachua','9310',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(838,4,55,'Sonarkola','9311',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(839,4,55,'Charkulia','9383',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(840,4,55,'Dariala','9382',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(841,4,55,'Kahalpur','9381',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(842,4,55,'Mollahat','9380',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(843,4,55,'Nagarkandi','9384',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(844,4,55,'Pak Gangni','9385',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(845,4,55,'Morelganj','9320',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(846,4,55,'Sannasi Bazar','9321',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(847,4,55,'Telisatee','9322',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(848,4,55,'Foylahat','9341',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(849,4,55,'Gourambha','9343',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(850,4,55,'Rampal','9340',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(851,4,55,'Sonatunia','9342',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(852,4,55,'Rayenda','9330',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(853,4,56,'Alamdanga','7210',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(854,4,56,'Hardi','7211',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(855,4,56,'Chuadanga Sadar','7200',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(856,4,56,'Munshiganj','7201',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(857,4,56,'Andulbaria','7222',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(858,4,56,'Damurhuda','7220',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(859,4,56,'Darshana','7221',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(860,4,56,'Doulatganj','7230',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(861,4,57,'Bagharpara','7470',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(862,4,57,'Gouranagar','7471',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(863,4,57,'Chougachha','7410',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(864,4,57,'Basundia','7406',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(865,4,57,'Chanchra','7402',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(866,4,57,'Churamankathi','7407',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(867,4,57,'Jessore Airbach','7404',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(868,4,57,'Jessore canttonment','7403',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(869,4,57,'Jessore Sadar','7400',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(870,4,57,'Jessore Upa-Shahar','7401',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(871,4,57,'Rupdia','7405',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(872,4,57,'Jhikargachha','7420',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(873,4,57,'Keshobpur','7450',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(874,4,57,'Monirampur','7440',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(875,4,57,'Bhugilhat','7462',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(876,4,57,'Noapara','7460',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(877,4,57,'Rajghat','7461',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(878,4,57,'Bag Achra','7433',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(879,4,57,'Benapole','7431',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(880,4,57,'Jadabpur','7432',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(881,4,57,'Sarsa','7430',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(882,4,58,'Harinakundu','7310',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(883,4,58,'Jinaidaha Cadet College','7301',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(884,4,58,'Jinaidaha Sadar','7300',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(885,4,58,'Kotchandpur','7330',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(886,4,58,'Maheshpur','7340',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(887,4,58,'Hatbar Bazar','7351',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(888,4,58,'Naldanga','7350',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(889,4,58,'Kumiradaha','7321',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(890,4,58,'Shailakupa','7320',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(891,4,59,'Alaipur','9240',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(892,4,59,'Belphulia','9242',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(893,4,59,'Rupsha','9241',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(894,4,59,'Batiaghat','9260',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(895,4,59,'Surkalee','9261',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(896,4,59,'Bajua','9272',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(897,4,59,'Chalna Bazar','9270',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(898,4,59,'Dakup','9271',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(899,4,59,'Nalian','9273',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(900,4,59,'Chandni Mahal','9221',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(901,4,59,'Digalia','9220',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(902,4,59,'Gazirhat','9224',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(903,4,59,'Ghoshghati','9223',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(904,4,59,'Senhati','9222',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(905,4,59,'Atra Shilpa Area','9207',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(906,4,59,'BIT Khulna','9203',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(907,4,59,'Doulatpur','9202',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(908,4,59,'Jahanabad Canttonmen','9205',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(909,4,59,'Khula Sadar','9100',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(910,4,59,'Khulna G.P.O','9000',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(911,4,59,'Khulna Shipyard','9201',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(912,4,59,'Khulna University','9208',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(913,4,59,'Siramani','9204',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(914,4,59,'Sonali Jute Mills','9206',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(915,4,59,'Amadee','9291',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(916,4,59,'Madinabad','9290',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(917,4,59,'Chandkhali','9284',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(918,4,59,'Garaikhali','9285',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(919,4,59,'Godaipur','9281',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(920,4,59,'Kapilmoni','9282',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(921,4,59,'Katipara','9283',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(922,4,59,'Paikgachha','9280',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(923,4,59,'Phultala','9210',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(924,4,59,'Chuknagar','9252',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(925,4,59,'Ghonabanda','9251',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(926,4,59,'Sajiara','9250',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(927,4,59,'Shahapur','9253',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(928,4,59,'Pak Barasat','9231',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(929,4,59,'Terakhada','9230',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(930,4,60,'Allardarga','7042',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(931,4,60,'Bheramara','7040',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(932,4,60,'Ganges Bheramara','7041',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(933,4,60,'Janipur','7020',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(934,4,60,'Khoksa','7021',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(935,4,60,'Kumarkhali','7010',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(936,4,60,'Panti','7011',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(937,4,60,'Islami University','7003',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(938,4,60,'Jagati','7002',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(939,4,60,'Kushtia Mohini','7001',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(940,4,60,'Kustia Sadar','7000',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(941,4,60,'Amla Sadarpur','7032',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(942,4,60,'Mirpur','7030',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(943,4,60,'Poradaha','7031',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(944,4,60,'Khasmathurapur','7052',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(945,4,60,'Rafayetpur','7050',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(946,4,60,'Taragunia','7051',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(947,4,61,'Arpara','7620',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(948,4,61,'Magura Sadar','7600',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(949,4,61,'Binodpur','7631',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(950,4,61,'Mohammadpur','7630',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(951,4,61,'Nahata','7632',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(952,4,61,'Langalbadh','7611',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(953,4,61,'Nachol','7612',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(954,4,61,'Shripur','7610',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(955,4,62,'Gangni','7110',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(956,4,62,'Amjhupi','7101',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(957,4,62,'Amjhupi','7152',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(958,4,62,'Meherpur Sadar','7100',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(959,4,62,'Mujib Nagar Complex','7102',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(960,4,63,'Kalia','7520',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(961,4,63,'Baradia','7514',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(962,4,63,'Itna','7512',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(963,4,63,'Laxmipasha','7510',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(964,4,63,'Lohagora','7511',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(965,4,63,'Naldi','7513',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(966,4,63,'Mohajan','7521',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(967,4,63,'Narail Sadar','7500',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(968,4,63,'Ratanganj','7501',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(969,4,64,'Ashashuni','9460',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(970,4,64,'Baradal','9461',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(971,4,64,'Debbhata','9430',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(972,4,64,'Gurugram','9431',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(973,4,64,'Chandanpur','9415',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(974,4,64,'Hamidpur','9413',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(975,4,64,'Jhaudanga','9412',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(976,4,64,'kalaroa','9410',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(977,4,64,'Khordo','9414',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(978,4,64,'Murarikati','9411',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(979,4,64,'Kaliganj UPO','9440',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(980,4,64,'Nalta Mubaroknagar','9441',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(981,4,64,'Ratanpur','9442',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(982,4,64,'Buri Goalini','9453',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(983,4,64,'Gabura','9454',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(984,4,64,'Habinagar','9455',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(985,4,64,'Nakipur','9450',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(986,4,64,'Naobeki','9452',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(987,4,64,'Noornagar','9451',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(988,4,64,'Budhhat','9403',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(989,4,64,'Gunakar kati','9402',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(990,4,64,'Satkhira Islamia Acc','9401',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(991,4,64,'Satkhira Sadar','9400',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(992,4,64,'Patkelghata','9421',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(993,4,64,'Taala','9420',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(994,5,18,'Adamdighi','5890',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(995,5,18,'Nasharatpur','5892',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(996,5,18,'Santahar','5891',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(997,5,18,'Bogra Canttonment','5801',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(998,5,18,'Bogra Sadar','5800',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(999,5,18,'Dhunat','5850',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(1000,5,18,'Gosaibari','5851',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(1001,5,18,'Dupchachia','5880',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(1002,5,18,'Talora','5881',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(1003,5,18,'Gabtoli','5820',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(1004,5,18,'Sukhanpukur','5821',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(1005,5,18,'Kahalu','5870',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(1006,5,18,'Nandigram','5860',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(1007,5,18,'Chandan Baisha','5831',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(1008,5,18,'Sariakandi','5830',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(1009,5,18,'Chandaikona','5841',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(1010,5,18,'Palli Unnyan Accadem','5842',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(1011,5,18,'Sherpur','5840',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(1012,5,18,'Shibganj','5810',1,'2025-05-25 05:45:13','2025-05-25 05:45:13'),(1013,5,18,'Sonatola','5826',1,'2025-05-25 05:45:13','2025-05-25 05:45:13');
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `loc_upazilas` VALUES (1,34,'Amtali','আমতলী',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(2,34,'Bamna','বামনা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(3,34,'Barguna Sadar','বরগুনা সদর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(4,34,'Betagi','বেতাগি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(5,34,'Patharghata','পাথরঘাটা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(6,34,'Taltali','তালতলী',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(7,35,'Muladi','মুলাদি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(8,35,'Babuganj','বাবুগঞ্জ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(9,35,'Agailjhara','আগাইলঝরা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(10,35,'Barisal Sadar','বরিশাল সদর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(11,35,'Bakerganj','বাকেরগঞ্জ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(12,35,'Banaripara','বানাড়িপারা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(13,35,'Gaurnadi','গৌরনদী',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(14,35,'Hizla','হিজলা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(15,35,'Mehendiganj','মেহেদিগঞ্জ ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(16,35,'Wazirpur','ওয়াজিরপুর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(17,36,'Bhola Sadar','ভোলা সদর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(18,36,'Burhanuddin','বুরহানউদ্দিন',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(19,36,'Char Fasson','চর ফ্যাশন',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(20,36,'Daulatkhan','দৌলতখান',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(21,36,'Lalmohan','লালমোহন',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(22,36,'Manpura','মনপুরা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(23,36,'Tazumuddin','তাজুমুদ্দিন',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(24,37,'Jhalokati Sadar','ঝালকাঠি সদর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(25,37,'Kathalia','কাঁঠালিয়া',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(26,37,'Nalchity','নালচিতি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(27,37,'Rajapur','রাজাপুর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(28,38,'Bauphal','বাউফল',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(29,38,'Dashmina','দশমিনা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(30,38,'Galachipa','গলাচিপা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(31,38,'Kalapara','কালাপারা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(32,38,'Mirzaganj','মির্জাগঞ্জ ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(33,38,'Patuakhali Sadar','পটুয়াখালী সদর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(34,38,'Dumki','ডুমকি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(35,38,'Rangabali','রাঙ্গাবালি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(36,39,'Bhandaria','ভ্যান্ডারিয়া',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(37,39,'Kaukhali','কাউখালি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(38,39,'Mathbaria','মাঠবাড়িয়া',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(39,39,'Nazirpur','নাজিরপুর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(40,39,'Nesarabad','নেসারাবাদ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(41,39,'Pirojpur Sadar','পিরোজপুর সদর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(42,39,'Zianagar','জিয়ানগর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(43,40,'Bandarban Sadar','বান্দরবন সদর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(44,40,'Thanchi','থানচি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(45,40,'Lama','লামা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(46,40,'Naikhongchhari','নাইখংছড়ি ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(47,40,'Ali kadam','আলী কদম',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(48,40,'Rowangchhari','রউয়াংছড়ি ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(49,40,'Ruma','রুমা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(50,41,'Brahmanbaria Sadar','ব্রাহ্মণবাড়িয়া সদর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(51,41,'Ashuganj','আশুগঞ্জ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(52,41,'Nasirnagar','নাসির নগর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(53,41,'Nabinagar','নবীনগর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(54,41,'Sarail','সরাইল',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(55,41,'Shahbazpur Town','শাহবাজপুর টাউন',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(56,41,'Kasba','কসবা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(57,41,'Akhaura','আখাউরা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(58,41,'Bancharampur','বাঞ্ছারামপুর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(59,41,'Bijoynagar','বিজয় নগর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(60,42,'Chandpur Sadar','চাঁদপুর সদর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(61,42,'Faridganj','ফরিদগঞ্জ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(62,42,'Haimchar','হাইমচর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(63,42,'Haziganj','হাজীগঞ্জ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(64,42,'Kachua','কচুয়া',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(65,42,'Matlab Uttar','মতলব উত্তর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(66,42,'Matlab Dakkhin','মতলব দক্ষিণ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(67,42,'Shahrasti','শাহরাস্তি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(68,43,'Anwara','আনোয়ারা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(69,43,'Banshkhali','বাশখালি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(70,43,'Boalkhali','বোয়ালখালি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(71,43,'Chandanaish','চন্দনাইশ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(72,43,'Fatikchhari','ফটিকছড়ি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(73,43,'Hathazari','হাঠহাজারী',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(74,43,'Lohagara','লোহাগারা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(75,43,'Mirsharai','মিরসরাই',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(76,43,'Patiya','পটিয়া',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(77,43,'Rangunia','রাঙ্গুনিয়া',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(78,43,'Raozan','রাউজান',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(79,43,'Sandwip','সন্দ্বীপ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(80,43,'Satkania','সাতকানিয়া',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(81,43,'Sitakunda','সীতাকুণ্ড',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(82,44,'Barura','বড়ুরা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(83,44,'Brahmanpara','ব্রাহ্মণপাড়া',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(84,44,'Burichong','বুড়িচং',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(85,44,'Chandina','চান্দিনা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(86,44,'Chauddagram','চৌদ্দগ্রাম',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(87,44,'Daudkandi','দাউদকান্দি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(88,44,'Debidwar','দেবীদ্বার',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(89,44,'Homna','হোমনা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(90,44,'Comilla Sadar','কুমিল্লা সদর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(91,44,'Laksam','লাকসাম',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(92,44,'Monohorgonj','মনোহরগঞ্জ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(93,44,'Meghna','মেঘনা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(94,44,'Muradnagar','মুরাদনগর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(95,44,'Nangalkot','নাঙ্গালকোট',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(96,44,'Comilla Sadar South','কুমিল্লা সদর দক্ষিণ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(97,44,'Titas','তিতাস',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(98,45,'Chakaria','চকরিয়া',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(99,45,'{{198}}\'\'{{199}}','কক্স বাজার সদর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(100,45,'Kutubdia','কুতুবদিয়া',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(101,45,'Maheshkhali','মহেশখালী',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(102,45,'Ramu','রামু',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(103,45,'Teknaf','টেকনাফ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(104,45,'Ukhia','উখিয়া',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(105,45,'Pekua','পেকুয়া',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(106,46,'Feni Sadar','ফেনী সদর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(107,46,'Chagalnaiya','ছাগল নাইয়া',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(108,46,'Daganbhyan','দাগানভিয়া',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(109,46,'Parshuram','পরশুরাম',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(110,46,'Fhulgazi','ফুলগাজি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(111,46,'Sonagazi','সোনাগাজি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(112,47,'Dighinala','দিঘিনালা ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(113,47,'Khagrachhari','খাগড়াছড়ি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(114,47,'Lakshmichhari','লক্ষ্মীছড়ি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(115,47,'Mahalchhari','মহলছড়ি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(116,47,'Manikchhari','মানিকছড়ি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(117,47,'Matiranga','মাটিরাঙ্গা',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(118,47,'Panchhari','পানছড়ি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(119,47,'Ramgarh','রামগড়',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(120,48,'Lakshmipur Sadar','লক্ষ্মীপুর সদর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(121,48,'Raipur','রায়পুর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(122,48,'Ramganj','রামগঞ্জ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(123,48,'Ramgati','রামগতি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(124,48,'Komol Nagar','কমল নগর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(125,49,'Noakhali Sadar','নোয়াখালী সদর',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(126,49,'Begumganj','বেগমগঞ্জ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(127,49,'Chatkhil','চাটখিল',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(128,49,'Companyganj','কোম্পানীগঞ্জ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(129,49,'Shenbag','শেনবাগ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(130,49,'Hatia','হাতিয়া',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(131,49,'Kobirhat','কবিরহাট ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(132,49,'Sonaimuri','সোনাইমুরি',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(133,49,'Suborno Char','সুবর্ণ চর ',1,'2025-05-25 05:41:43','2025-05-25 05:41:43'),(134,50,'Rangamati Sadar','রাঙ্গামাটি সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(135,50,'Belaichhari','বেলাইছড়ি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(136,50,'Bagaichhari','বাঘাইছড়ি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(137,50,'Barkal','বরকল',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(138,50,'Juraichhari','জুরাইছড়ি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(139,50,'Rajasthali','রাজাস্থলি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(140,50,'Kaptai','কাপ্তাই',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(141,50,'Langadu','লাঙ্গাডু',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(142,50,'Nannerchar','নান্নেরচর ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(143,1,'Dhamrai','ধামরাই',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(144,1,'Dohar','দোহার',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(145,1,'Keraniganj','কেরানীগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(146,1,'Nawabganj','নবাবগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(147,1,'Savar','সাভার',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(148,2,'Faridpur Sadar','ফরিদপুর সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(149,2,'Boalmari','বোয়ালমারী',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(150,2,'Alfadanga','আলফাডাঙ্গা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(151,2,'Madhukhali','মধুখালি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(152,2,'Bhanga','ভাঙ্গা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(153,2,'Nagarkanda','নগরকান্ড',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(154,2,'Charbhadrasan','চরভদ্রাসন ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(155,2,'Sadarpur','সদরপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(156,2,'Shaltha','শালথা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(157,3,'Gazipur Sadar-Joydebpur','গাজীপুর সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(158,3,'Kaliakior','কালিয়াকৈর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(159,3,'Kapasia','কাপাসিয়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(160,3,'Sripur','শ্রীপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(161,3,'Kaliganj','কালীগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(162,3,'Tongi','টঙ্গি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(163,4,'Gopalganj Sadar','গোপালগঞ্জ সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(164,4,'Kashiani','কাশিয়ানি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(165,4,'Kotalipara','কোটালিপাড়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(166,4,'Muksudpur','মুকসুদপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(167,4,'Tungipara','টুঙ্গিপাড়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(168,5,'Dewanganj','দেওয়ানগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(169,5,'Baksiganj','বকসিগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(170,5,'Islampur','ইসলামপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(171,5,'Jamalpur Sadar','জামালপুর সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(172,5,'Madarganj','মাদারগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(173,5,'Melandaha','মেলানদাহা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(174,5,'Sarishabari','সরিষাবাড়ি ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(175,5,'Narundi Police I.C','নারুন্দি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(176,6,'Astagram','অষ্টগ্রাম',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(177,6,'Bajitpur','বাজিতপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(178,6,'Bhairab','ভৈরব',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(179,6,'Hossainpur','হোসেনপুর ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(180,6,'Itna','ইটনা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(181,6,'Karimganj','করিমগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(182,6,'Katiadi','কতিয়াদি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(183,6,'Kishoreganj Sadar','কিশোরগঞ্জ সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(184,6,'Kuliarchar','কুলিয়ারচর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(185,6,'Mithamain','মিঠামাইন',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(186,6,'Nikli','নিকলি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(187,6,'Pakundia','পাকুন্ডা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(188,6,'Tarail','তাড়াইল',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(189,7,'Madaripur Sadar','মাদারীপুর সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(190,7,'Kalkini','কালকিনি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(191,7,'Rajoir','রাজইর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(192,7,'Shibchar','শিবচর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(193,8,'Manikganj Sadar','মানিকগঞ্জ সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(194,8,'Singair','সিঙ্গাইর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(195,8,'Shibalaya','শিবালয়',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(196,8,'Saturia','সাটুরিয়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(197,8,'Harirampur','হরিরামপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(198,8,'Ghior','ঘিওর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(199,8,'Daulatpur','দৌলতপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(200,9,'Lohajang','লোহাজং',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(201,9,'Sreenagar','শ্রীনগর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(202,9,'Munshiganj Sadar','মুন্সিগঞ্জ সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(203,9,'Sirajdikhan','সিরাজদিখান',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(204,9,'Tongibari','টঙ্গিবাড়ি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(205,9,'Gazaria','গজারিয়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(206,10,'Bhaluka','ভালুকা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(207,10,'Trishal','ত্রিশাল',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(208,10,'Haluaghat','হালুয়াঘাট',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(209,10,'Muktagachha','মুক্তাগাছা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(210,10,'Dhobaura','ধবারুয়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(211,10,'Fulbaria','ফুলবাড়িয়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(212,10,'Gaffargaon','গফরগাঁও',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(213,10,'Gauripur','গৌরিপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(214,10,'Ishwarganj','ঈশ্বরগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(215,10,'Mymensingh Sadar','ময়মনসিং সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(216,10,'Nandail','নন্দাইল',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(217,10,'Phulpur','ফুলপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(218,11,'Araihazar','আড়াইহাজার',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(219,11,'Sonargaon','সোনারগাঁও',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(220,11,'Bandar','বান্দার',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(221,11,'Naryanganj Sadar','নারায়ানগঞ্জ সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(222,11,'Rupganj','রূপগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(223,11,'Siddirgonj','সিদ্ধিরগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(224,12,'Belabo','বেলাবো',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(225,12,'Monohardi','মনোহরদি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(226,12,'Narsingdi Sadar','নরসিংদী সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(227,12,'Palash','পলাশ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(228,12,'Raipura, Narsingdi','রায়পুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(229,12,'Shibpur','শিবপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(230,13,'Kendua Upazilla','কেন্দুয়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(231,13,'Atpara Upazilla','আটপাড়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(232,13,'Barhatta Upazilla','বরহাট্টা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(233,13,'Durgapur Upazilla','দুর্গাপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(234,13,'Kalmakanda Upazilla','কলমাকান্দা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(235,13,'Madan Upazilla','মদন',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(236,13,'Mohanganj Upazilla','মোহনগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(237,13,'Netrakona-S Upazilla','নেত্রকোনা সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(238,13,'Purbadhala Upazilla','পূর্বধলা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(239,13,'Khaliajuri Upazilla','খালিয়াজুরি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(240,14,'Baliakandi','বালিয়াকান্দি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(241,14,'Goalandaghat','গোয়ালন্দ ঘাট',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(242,14,'Pangsha','পাংশা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(243,14,'Kalukhali','কালুখালি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(244,14,'Rajbari Sadar','রাজবাড়ি সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(245,15,'Shariatpur Sadar -Palong','শরীয়তপুর সদর ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(246,15,'Damudya','দামুদিয়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(247,15,'Naria','নড়িয়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(248,15,'Jajira','জাজিরা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(249,15,'Bhedarganj','ভেদারগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(250,15,'Gosairhat','গোসাইর হাট ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(251,16,'Jhenaigati','ঝিনাইগাতি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(252,16,'Nakla','নাকলা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(253,16,'Nalitabari','নালিতাবাড়ি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(254,16,'Sherpur Sadar','শেরপুর সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(255,16,'Sreebardi','শ্রীবরদি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(256,17,'Tangail Sadar','টাঙ্গাইল সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(257,17,'Sakhipur','সখিপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(258,17,'Basail','বসাইল',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(259,17,'Madhupur','মধুপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(260,17,'Ghatail','ঘাটাইল',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(261,17,'Kalihati','কালিহাতি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(262,17,'Nagarpur','নগরপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(263,17,'Mirzapur','মির্জাপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(264,17,'Gopalpur','গোপালপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(265,17,'Delduar','দেলদুয়ার',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(266,17,'Bhuapur','ভুয়াপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(267,17,'Dhanbari','ধানবাড়ি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(268,55,'Bagerhat Sadar','বাগেরহাট সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(269,55,'Chitalmari','চিতলমাড়ি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(270,55,'Fakirhat','ফকিরহাট',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(271,55,'Kachua','কচুয়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(272,55,'Mollahat','মোল্লাহাট ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(273,55,'Mongla','মংলা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(274,55,'Morrelganj','মরেলগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(275,55,'Rampal','রামপাল',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(276,55,'Sarankhola','স্মরণখোলা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(277,56,'Damurhuda','দামুরহুদা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(278,56,'Chuadanga-S','চুয়াডাঙ্গা সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(279,56,'Jibannagar','জীবন নগর ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(280,56,'Alamdanga','আলমডাঙ্গা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(281,57,'Abhaynagar','অভয়নগর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(282,57,'Keshabpur','কেশবপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(283,57,'Bagherpara','বাঘের পাড়া ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(284,57,'Jessore Sadar','যশোর সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(285,57,'Chaugachha','চৌগাছা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(286,57,'Manirampur','মনিরামপুর ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(287,57,'Jhikargachha','ঝিকরগাছা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(288,57,'Sharsha','সারশা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(289,58,'Jhenaidah Sadar','ঝিনাইদহ সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(290,58,'Maheshpur','মহেশপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(291,58,'Kaliganj','কালীগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(292,58,'Kotchandpur','কোট চাঁদপুর ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(293,58,'Shailkupa','শৈলকুপা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(294,58,'Harinakunda','হাড়িনাকুন্দা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(295,59,'Terokhada','তেরোখাদা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(296,59,'Batiaghata','বাটিয়াঘাটা ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(297,59,'Dacope','ডাকপে',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(298,59,'Dumuria','ডুমুরিয়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(299,59,'Dighalia','দিঘলিয়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(300,59,'Koyra','কয়ড়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(301,59,'Paikgachha','পাইকগাছা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(302,59,'Phultala','ফুলতলা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(303,59,'Rupsa','রূপসা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(304,60,'Kushtia Sadar','কুষ্টিয়া সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(305,60,'Kumarkhali','কুমারখালি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(306,60,'Daulatpur','দৌলতপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(307,60,'Mirpur','মিরপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(308,60,'Bheramara','ভেরামারা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(309,60,'Khoksa','খোকসা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(310,61,'Magura Sadar','মাগুরা সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(311,61,'Mohammadpur','মোহাম্মাদপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(312,61,'Shalikha','শালিখা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(313,61,'Sreepur','শ্রীপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(314,62,'angni','আংনি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(315,62,'Mujib Nagar','মুজিব নগর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(316,62,'Meherpur-S','মেহেরপুর সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(317,63,'Narail-S Upazilla','নড়াইল সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(318,63,'Lohagara Upazilla','লোহাগাড়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(319,63,'Kalia Upazilla','কালিয়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(320,64,'Satkhira Sadar','সাতক্ষীরা সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(321,64,'Assasuni','আসসাশুনি ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(322,64,'Debhata','দেভাটা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(323,64,'Tala','তালা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(324,64,'Kalaroa','কলরোয়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(325,64,'Kaliganj','কালীগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(326,64,'Shyamnagar','শ্যামনগর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(327,18,'Adamdighi','আদমদিঘী',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(328,18,'Bogra Sadar','বগুড়া সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(329,18,'Sherpur','শেরপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(330,18,'Dhunat','ধুনট',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(331,18,'Dhupchanchia','দুপচাচিয়া',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(332,18,'Gabtali','গাবতলি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(333,18,'Kahaloo','কাহালু',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(334,18,'Nandigram','নন্দিগ্রাম',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(335,18,'Sahajanpur','শাহজাহানপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(336,18,'Sariakandi','সারিয়াকান্দি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(337,18,'Shibganj','শিবগঞ্জ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(338,18,'Sonatala','সোনাতলা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(339,19,'Joypurhat S','জয়পুরহাট সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(340,19,'Akkelpur','আক্কেলপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(341,19,'Kalai','কালাই',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(342,19,'Khetlal','খেতলাল',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(343,19,'Panchbibi','পাঁচবিবি',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(344,20,'Naogaon Sadar','নওগাঁ সদর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(345,20,'Mohadevpur','মহাদেবপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(346,20,'Manda','মান্দা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(347,20,'Niamatpur','নিয়ামতপুর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(348,20,'Atrai','আত্রাই',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(349,20,'Raninagar','রাণীনগর',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(350,20,'Patnitala','পত্নীতলা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(351,20,'Dhamoirhat','ধামইরহাট ',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(352,20,'Sapahar','সাপাহার',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(353,20,'Porsha','পোরশা',1,'2025-05-25 05:41:44','2025-05-25 05:41:44'),(354,20,'Badalgachhi','বদলগাছি',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(355,21,'Natore Sadar','নাটোর সদর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(356,21,'Baraigram','বড়াইগ্রাম',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(357,21,'Bagatipara','বাগাতিপাড়া',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(358,21,'Lalpur','লালপুর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(359,21,'Natore Sadar','নাটোর সদর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(360,21,'Baraigram','বড়াই গ্রাম',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(361,22,'Bholahat','ভোলাহাট',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(362,22,'Gomastapur','গোমস্তাপুর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(363,22,'Nachole','নাচোল',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(364,22,'Nawabganj Sadar','নবাবগঞ্জ সদর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(365,22,'Shibganj','শিবগঞ্জ',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(366,23,'Atgharia','আটঘরিয়া',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(367,23,'Bera','বেড়া',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(368,23,'Bhangura','ভাঙ্গুরা',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(369,23,'Chatmohar','চাটমোহর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(370,23,'Faridpur','ফরিদপুর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(371,23,'Ishwardi','ঈশ্বরদী',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(372,23,'Pabna Sadar','পাবনা সদর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(373,23,'Santhia','সাথিয়া',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(374,23,'Sujanagar','সুজানগর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(375,24,'Bagha','বাঘা',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(376,24,'Bagmara','বাগমারা',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(377,24,'Charghat','চারঘাট',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(378,24,'Durgapur','দুর্গাপুর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(379,24,'Godagari','গোদাগারি',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(380,24,'Mohanpur','মোহনপুর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(381,24,'Paba','পবা',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(382,24,'Puthia','পুঠিয়া',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(383,24,'Tanore','তানোর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(384,25,'Sirajganj Sadar','সিরাজগঞ্জ সদর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(385,25,'Belkuchi','বেলকুচি',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(386,25,'Chauhali','চৌহালি',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(387,25,'Kamarkhanda','কামারখান্দা',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(388,25,'Kazipur','কাজীপুর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(389,25,'Raiganj','রায়গঞ্জ',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(390,25,'Shahjadpur','শাহজাদপুর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(391,25,'Tarash','তারাশ',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(392,25,'Ullahpara','উল্লাপাড়া',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(393,26,'Birampur','বিরামপুর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(394,26,'Birganj','বীরগঞ্জ',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(395,26,'Biral','বিড়াল',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(396,26,'Bochaganj','বোচাগঞ্জ',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(397,26,'Chirirbandar','চিরিরবন্দর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(398,26,'Phulbari','ফুলবাড়ি',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(399,26,'Ghoraghat','ঘোড়াঘাট',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(400,26,'Hakimpur','হাকিমপুর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(401,26,'Kaharole','কাহারোল',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(402,26,'Khansama','খানসামা',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(403,26,'Dinajpur Sadar','দিনাজপুর সদর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(404,26,'Nawabganj','নবাবগঞ্জ',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(405,26,'Parbatipur','পার্বতীপুর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(406,27,'Fulchhari','ফুলছড়ি',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(407,27,'Gaibandha sadar','গাইবান্ধা সদর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(408,27,'Gobindaganj','গোবিন্দগঞ্জ',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(409,27,'Palashbari','পলাশবাড়ী',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(410,27,'Sadullapur','সাদুল্যাপুর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(411,27,'Saghata','সাঘাটা',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(412,27,'Sundarganj','সুন্দরগঞ্জ',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(413,28,'Kurigram Sadar','কুড়িগ্রাম সদর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(414,28,'Nageshwari','নাগেশ্বরী',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(415,28,'Bhurungamari','ভুরুঙ্গামারি',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(416,28,'Phulbari','ফুলবাড়ি',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(417,28,'Rajarhat','রাজারহাট',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(418,28,'Ulipur','উলিপুর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(419,28,'Chilmari','চিলমারি',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(420,28,'Rowmari','রউমারি',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(421,28,'Char Rajibpur','চর রাজিবপুর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(422,29,'Lalmanirhat Sadar','লালমনিরহাট সদর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(423,29,'Aditmari','আদিতমারি',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(424,29,'Kaliganj','কালীগঞ্জ',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(425,29,'Hatibandha','হাতিবান্ধা',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(426,29,'Patgram','পাটগ্রাম',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(427,30,'Nilphamari Sadar','নীলফামারী সদর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(428,30,'Saidpur','সৈয়দপুর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(429,30,'Jaldhaka','জলঢাকা',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(430,30,'Kishoreganj','কিশোরগঞ্জ',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(431,30,'Domar','ডোমার',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(432,30,'Dimla','ডিমলা',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(433,31,'Panchagarh Sadar','পঞ্চগড় সদর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(434,31,'Debiganj','দেবীগঞ্জ',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(435,31,'Boda','বোদা',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(436,31,'Atwari','আটোয়ারি',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(437,31,'Tetulia','তেঁতুলিয়া',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(438,32,'Badarganj','বদরগঞ্জ',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(439,32,'Mithapukur','মিঠাপুকুর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(440,32,'Gangachara','গঙ্গাচরা',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(441,32,'Kaunia','কাউনিয়া',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(442,32,'Rangpur Sadar','রংপুর সদর',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(443,32,'Pirgachha','পীরগাছা',1,'2025-05-25 05:41:45','2025-05-25 05:41:45'),(444,32,'Pirganj','পীরগঞ্জ',1,'2025-05-25 05:41:46','2025-05-25 05:41:46'),(445,32,'Taraganj','তারাগঞ্জ',1,'2025-05-25 05:41:46','2025-05-25 05:41:46'),(446,33,'Thakurgaon Sadar','ঠাকুরগাঁও সদর',1,'2025-05-25 05:41:46','2025-05-25 05:41:46'),(447,33,'Pirganj','পীরগঞ্জ',1,'2025-05-25 05:41:46','2025-05-25 05:41:46'),(448,33,'Baliadangi','বালিয়াডাঙ্গি',1,'2025-05-25 05:41:46','2025-05-25 05:41:46'),(449,33,'Haripur','হরিপুর',1,'2025-05-25 05:41:46','2025-05-25 05:41:46'),(450,33,'Ranisankail','রাণীসংকইল',1,'2025-05-25 05:41:46','2025-05-25 05:41:46'),(451,51,'Ajmiriganj','আজমিরিগঞ্জ',1,'2025-05-25 05:41:46','2025-05-25 05:41:46'),(452,51,'Baniachang','বানিয়াচং',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(453,51,'Bahubal','বাহুবল',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(454,51,'Chunarughat','চুনারুঘাট',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(455,51,'Habiganj Sadar','হবিগঞ্জ সদর',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(456,51,'Lakhai','লাক্ষাই',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(457,51,'Madhabpur','মাধবপুর',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(458,51,'Nabiganj','নবীগঞ্জ',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(459,51,'Shaistagonj','শায়েস্তাগঞ্জ',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(460,52,'Moulvibazar Sadar','মৌলভীবাজার',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(461,52,'Barlekha','বড়লেখা',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(462,52,'Juri','জুড়ি',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(463,52,'Kamalganj','কামালগঞ্জ',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(464,52,'Kulaura','কুলাউরা',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(465,52,'Rajnagar','রাজনগর',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(466,52,'Sreemangal','শ্রীমঙ্গল',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(467,53,'Bishwamvarpur','বিসশম্ভারপুর',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(468,53,'Chhatak','ছাতক',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(469,53,'Derai','দেড়াই',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(470,53,'Dharampasha','ধরমপাশা',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(471,53,'Dowarabazar','দোয়ারাবাজার',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(472,53,'Jagannathpur','জগন্নাথপুর',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(473,53,'Jamalganj','জামালগঞ্জ',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(474,53,'Sulla','সুল্লা',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(475,53,'Sunamganj Sadar','সুনামগঞ্জ সদর',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(476,53,'Shanthiganj','শান্তিগঞ্জ',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(477,53,'Tahirpur','তাহিরপুর',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(478,54,'Sylhet Sadar','সিলেট সদর',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(479,54,'Beanibazar','বেয়ানিবাজার',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(480,54,'Bishwanath','বিশ্বনাথ',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(481,54,'Dakshin Surma','দক্ষিণ সুরমা',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(482,54,'Balaganj','বালাগঞ্জ',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(483,54,'Companiganj','কোম্পানিগঞ্জ',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(484,54,'Fenchuganj','ফেঞ্চুগঞ্জ',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(485,54,'Golapganj','গোলাপগঞ্জ',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(486,54,'Gowainghat','গোয়াইনঘাট',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(487,54,'Jointapur','জৈন্তাপুর',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(488,54,'Kanaighat','কানাইঘাট',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(489,54,'Zakiganj','জাকিগঞ্জ',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(490,54,'Nobigonj','নবীগঞ্জ',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(491,45,'Eidgaon','ঈদগাঁও',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(492,53,'Modhyanagar','মধ্যনগর',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(493,7,'Dasar','দশর',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(494,1,'Gulshan','গুলশান',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(495,1,'Banani','বনানী',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(496,1,'Baridhara','বারিধারা',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(497,1,'Uttara','উত্তরা',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(498,1,'Mirpur','মিরপুর',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(499,1,'Mohakhali','মহাখালী',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(500,1,'Niketon','নিকেতন',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(501,1,'Khilkhet','খিলক্ষেত',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(502,1,'Badda','বাড্ডা',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(503,1,'Cantonment','ক্যান্টনমেন্ট',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(504,1,'Kuril','কুড়িল',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(505,1,'Vatara','ভাটারা',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(506,1,'Adabor','আদাবর',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(507,1,'Shewrapara','শেওড়াপাড়া',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(508,1,'Agargaon','আগারগাঁও',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(509,1,'Kazipara','কাজীপাড়া',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(510,1,'Darussalam','দারুসসালাম',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(511,1,'Kafrul','কাফরুল',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(512,1,'Uttarkhan','উত্তরখান',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(513,1,'Pallabi','পল্লবী',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(514,1,'Nikunja','নিকুঞ্জ',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(515,1,'Bashundhara R/A','বসুন্ধরা রেজিডেন্সিয়াল এলাকা',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(516,1,'Tongi','টঙ্গি',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(517,1,'Kakrail','কাকরাইল',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(518,1,'Shyamoli','শ্যামলী',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(519,1,'Dhamrai','ধামরাই',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(520,1,'Mohakhali DOHS','মহাখালী ডিওএইচএস',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(521,1,'Rampura','রামপুরা',1,'2025-05-25 05:41:47','2025-05-25 05:41:47'),(522,1,'Mirpur DOHS','মিরপুর ডিওএইচএস',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(523,1,'Mirpur Cantonment','মিরপুর ক্যান্টনমেন্ট',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(524,1,'Shah Ali','শাহ আলী',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(525,1,'Rayer Bazar','রায়ের বাজার',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(526,1,'Farmgate','ফার্মগেট',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(527,1,'Kamalapur','কমলাপুর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(528,1,'Elephant Road','হাতিরঝিল',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(529,1,'Lalmatia','লালমাটিয়া',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(530,1,'Malibagh','মালিবাগ',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(531,1,'Tejgaon','তেজগাঁও',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(532,1,'Sher-e-Bangla Nagar','শের-ই-বাংলা নগর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(533,1,'Gabtoli','গাবতলী',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(534,1,'Rupnagar','রূপনগর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(535,1,'Dhanmondi','ধানমন্ডি',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(536,1,'Mohammadpur','মোহাম্মদপুর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(537,1,'Farmgate','ফার্মগেট',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(538,1,'Lalbagh','লালবাগ',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(539,1,'Kotwali','কোতওয়ালী',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(540,1,'Shahbag','শাহবাগ',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(541,1,'Armanitola','আরমানিটোলা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(542,1,'Shyampur','শ্যামপুর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(543,1,'Demra','ডেমরা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(544,1,'Laxmibazar','লক্ষ্মীবাজার',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(545,1,'Gendaria','গেন্ডারিয়া',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(546,1,'Wari','ওয়ারী',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(547,1,'Sutrapur','সুত্রাপুর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(548,1,'Kamrangirchar','কামরাঙ্গীরচর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(549,1,'Kotwali Police Line','কোতওয়ালী পুলিশ লাইন',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(550,1,'Bangshal','বংশাল',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(551,1,'Chawkbazar','চকবাজার',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(552,1,'Nayabazar','নয়াবাজার',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(553,1,'Nababganj','নবাবগঞ্জ',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(554,1,'Banglamotor','বাংলামটর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(555,1,'Fakirapool','ফকিরাপুল',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(556,1,'Shantinagar','শান্তিনগর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(557,1,'Moghbazar','মগবাজার',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(558,1,'Gulshan Model Town','গুলশান মডেল টাউন',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(559,1,'Banani','বনানী',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(560,1,'Baridhara','বারিধারা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(561,1,'Bashundhara','বসুন্ধরা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(562,1,'Kakrail','কাকরাইল',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(563,1,'Malibagh','মালিবাগ',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(564,1,'Mouchak','মৌচাক',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(565,1,'Siddheshwari','সিদ্ধেশ্বরী',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(566,1,'Jatrabari','যাত্রাবাড়ি',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(567,1,'Jurain','জুরাইন',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(568,1,'Dholpur','ধলপুর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(569,1,'Posta','পোস্টা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(570,1,'Dhaka Cantonment','ঢাকা ক্যান্টনমেন্ট',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(571,1,'Mirpur Cantonment','মিরপুর ক্যান্টনমেন্ট',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(572,1,'Uttar Khan','উত্তর খান',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(573,1,'Darus Salam','দারুস সালাম',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(574,1,'Khilkhet','খিলক্ষেত',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(575,1,'Nikunja','নিকুঞ্জ',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(576,1,'Airport','এয়ারপোর্ট',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(577,1,'Rampura Bazar','রামপুরা বাজার',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(578,1,'Middle Badda','মধ্য বড্ডা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(579,1,'Banasree Block-C','বনশ্রী ব্লক-সি',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(580,1,'North Badda','উত্তর বড্ডা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(581,1,'Postogola','পোস্তগোলা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(582,1,'Dakshinkhan','দক্ষিণখান',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(583,1,'Nawabganj','নবাবগঞ্জ',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(584,1,'Jhigatola','ঝিগাতলা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(585,1,'Pallabi Extension','পল্লবী এক্সটেনশন',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(586,1,'Uttara','উত্তরা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(587,1,'Mohakhali','মহাখালী',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(588,1,'Badda','বড্ডা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(589,1,'Basabo','বাসাবো',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(590,1,'Merul Badda','মেরুল বড্ডা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(591,1,'Bashabo','বাসাবো',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(592,1,'Shantibagh','শান্তিবাগ',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(593,1,'Basundhara Residential Area','বসুন্ধরা রেজিডেনশিয়াল এলাকা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(594,1,'Mohammadpur Housing','মোহাম্মদপুর হাউজিং',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(595,1,'Green Road','গ্রিন রোড',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(596,1,'Mohammadpur Krishi Market','মোহাম্মদপুর কৃষি মার্কেট',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(597,1,'Tikatuli','টিকাটুলি',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(598,1,'Kamalapur','কমলাপুর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(599,1,'Basundhara R/A','বসুন্ধরা আর/এ',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(600,1,'Shantibagh R/A','শান্তিবাগ আর/এ',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(601,1,'Monipur','মনিপুর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(602,1,'Rayer Bazar','রায়েরবাজার',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(603,1,'Baily Road','বেইলি রোড',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(604,1,'Elephant Road','হাতিরপুল',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(605,1,'New Market','নিউমার্কেট',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(606,1,'Hatirpool','হাতিরপুল',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(607,1,'Panthapath','পান্থপথ',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(608,1,'Zigatola','জিগাতোলা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(609,1,'Badda Link Road','বড্ডা লিংক রোড',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(610,1,'South Mugda','দক্ষিন মুগদা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(611,1,'Notun Bazar','নতুন বাজার',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(612,1,'Malibagh Chowdhurypara','মালিবাগ চৌধুরীপাড়া',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(613,1,'Kadamtoli','কাদমতলী',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(614,1,'Khilgaon','খিলগাঁও',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(615,1,'Shampur','শ্যামপুর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(616,1,'Malibagh Rail Gate','মালিবাগ রেলগেট',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(617,1,'Bongshal','বংশাল',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(618,1,'Motijheel','মতিঝিল',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(619,1,'Tanti Bazar','তান্তি বাজার',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(620,1,'Rupnagar','রূপনগর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(621,1,'Nayatola','নয়াটলা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(622,1,'Khilgaon Taltola','খিলগাঁও তালতলা',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(623,1,'Bijoynagar','বিজয়নগর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(624,1,'Islampur','ইসলামপুর',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(625,1,'Kalabagan','কলাবাগান',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(626,1,'Agargaon','আগারগাঁও',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(627,1,'Mirpur-1','মিরপুর-১',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(628,1,'Mirpur-2','মিরপুর-২',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(629,1,'Mirpur-6','মিরপুর-৬',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(630,1,'Mirpur-7','মিরপুর-৭',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(631,1,'Mirpur-10','মিরপুর-১০',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(632,1,'Mirpur-11','মিরপুর-১১',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(633,1,'Mirpur-12','মিরপুর-১২',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(634,1,'Mirpur-13','মিরপুর-১৩',1,'2025-05-25 05:41:48','2025-05-25 05:41:48'),(635,1,'Mirpur-14','মিরপুর-১৪',1,'2025-05-25 05:41:48','2025-05-25 05:41:48');
/*!40000 ALTER TABLE `loc_upazilas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sap_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nlp` double DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `materials_name_unique` (`name`),
  UNIQUE KEY `materials_sap_code_unique` (`sap_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (1,'Mobil Delvac 1340 | 20 LT PAIL','3000001','20 ltr','ltr',NULL,NULL,1,NULL,NULL,NULL,NULL),(2,'Mobil Delvac 1340 | 5 LT CAN','3000002','5 ltr','ltr',NULL,NULL,1,NULL,NULL,NULL,NULL),(3,'Mobil Special 20W-50 | 5 LT CAN','3000023','5 ltr','ltr',NULL,NULL,1,NULL,NULL,NULL,NULL),(4,'Mobil Special 20W-50 | 4 LT CAN','3000027','4 ltr','ltr',NULL,NULL,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (106,'0001_01_01_000000_create_users_table',1),(107,'0001_01_01_000001_create_cache_table',1),(108,'0001_01_01_000002_create_jobs_table',1),(109,'2025_03_17_063252_create_permission_tables',1),(110,'2025_03_17_070232_create_personal_access_tokens_table',1),(111,'2025_03_20_051500_create_loc_divisions_table',1),(112,'2025_03_20_051501_create_loc_districts_table',1),(113,'2025_03_20_051502_create_loc_upazilas_table',1),(114,'2025_03_20_051503_create_loc_post_offices_table',1),(115,'2025_03_20_051515_create_designations_table',1),(116,'2025_03_20_055435_create_business_teams_table',1),(117,'2025_03_20_062025_create_customer_groups_table',1),(118,'2025_03_20_062026_create_distribution_ches_table',1),(119,'2025_03_20_062027_create_regions_table',1),(120,'2025_03_20_062733_create_territories_table',1),(121,'2025_03_20_062734_create_territory_districts_table',1),(122,'2025_03_20_063314_create_trade_categories_table',1),(123,'2025_03_20_063315_create_trade_sub_categories_table',1),(124,'2025_03_20_063316_create_customer_types_table',1),(125,'2025_03_20_063518_create_complaint_types_table',1),(126,'2025_03_20_063743_create_visit_purposes_table',1),(127,'2025_03_24_162521_create_employees_table',1),(128,'2025_03_25_052354_create_attendance_histories_table',1),(129,'2025_03_25_180313_create_sold_to_parties_table',1),(130,'2025_04_01_171655_create_sold_to_party_process_logs_table',1),(131,'2025_04_13_111335_create_lead_stages_table',1),(132,'2025_04_13_111340_create_sold_to_party_lead_logs_table',1),(133,'2025_04_20_175501_create_sold_to_party_sales_areas_table',1),(134,'2025_04_29_121727_create_materials_table',1),(135,'2025_04_29_144209_create_promotions_table',1),(136,'2025_04_29_144552_create_promotion_items_table',1),(137,'2025_05_18_102053_create_ship_to_parties_table',1),(138,'2025_05_19_105556_create_ship_to_partyprocess_logs_table',1),(139,'2025_05_19_115650_create_existing_visits_table',1),(140,'2025_05_20_105548_create_other_visits_table',1);
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
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `other_visits`
--

DROP TABLE IF EXISTS `other_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `other_visits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_purpose_id` bigint unsigned DEFAULT NULL,
  `other_purpose` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `loc_division_id` bigint unsigned DEFAULT NULL,
  `loc_district_id` bigint unsigned DEFAULT NULL,
  `loc_upazila_id` bigint unsigned DEFAULT NULL,
  `loc_post_office_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` decimal(9,6) DEFAULT NULL,
  `long` decimal(9,6) DEFAULT NULL,
  `employee_id` bigint unsigned DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `other_visits_visit_purpose_id_foreign` (`visit_purpose_id`),
  KEY `other_visits_loc_division_id_foreign` (`loc_division_id`),
  KEY `other_visits_loc_district_id_foreign` (`loc_district_id`),
  KEY `other_visits_loc_upazila_id_foreign` (`loc_upazila_id`),
  KEY `other_visits_loc_post_office_id_foreign` (`loc_post_office_id`),
  KEY `other_visits_employee_id_foreign` (`employee_id`),
  CONSTRAINT `other_visits_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `other_visits_loc_district_id_foreign` FOREIGN KEY (`loc_district_id`) REFERENCES `loc_districts` (`id`),
  CONSTRAINT `other_visits_loc_division_id_foreign` FOREIGN KEY (`loc_division_id`) REFERENCES `loc_divisions` (`id`),
  CONSTRAINT `other_visits_loc_post_office_id_foreign` FOREIGN KEY (`loc_post_office_id`) REFERENCES `loc_post_offices` (`id`),
  CONSTRAINT `other_visits_loc_upazila_id_foreign` FOREIGN KEY (`loc_upazila_id`) REFERENCES `loc_upazilas` (`id`),
  CONSTRAINT `other_visits_visit_purpose_id_foreign` FOREIGN KEY (`visit_purpose_id`) REFERENCES `visit_purposes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_visits`
--

LOCK TABLES `other_visits` WRITE;
/*!40000 ALTER TABLE `other_visits` DISABLE KEYS */;
/*!40000 ALTER TABLE `other_visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
-- Table structure for table `promotion_items`
--

DROP TABLE IF EXISTS `promotion_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `promotion_id` bigint unsigned NOT NULL,
  `material_id` bigint unsigned DEFAULT NULL,
  `material_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_qnty` double DEFAULT NULL,
  `promo_material_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promo_qnty` double DEFAULT NULL,
  `promo_material_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `promotion_items_promotion_id_foreign` (`promotion_id`),
  KEY `promotion_items_material_id_foreign` (`material_id`),
  CONSTRAINT `promotion_items_material_id_foreign` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `promotion_items_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_items`
--

LOCK TABLES `promotion_items` WRITE;
/*!40000 ALTER TABLE `promotion_items` DISABLE KEYS */;
INSERT INTO `promotion_items` VALUES (1,1,1,'Mobil Delvac 1340 | 20 LT PAIL',NULL,50,'Mobil Delvac 1340 | 20 LT PAIL',5,NULL,NULL,1,NULL,NULL,NULL,NULL),(2,1,2,'Mobil Delvac 1340 | 5 LT CAN',NULL,50,'Mobil Delvac 1340 | 5 LT CAN',5,NULL,NULL,1,NULL,NULL,NULL,NULL),(3,1,3,'Mobil Special 20W-50 | 5 LT CAN',NULL,200,'Mobil Special 20W-50 | 5 LT CAN',20,NULL,NULL,1,NULL,NULL,NULL,NULL),(4,1,4,'Mobil Special 20W-50 | 4 LT CAN',NULL,50,'Mobil Special 20W-50 | 4 LT CAN',4,NULL,NULL,1,NULL,NULL,NULL,NULL),(5,2,2,'Mobil Delvac 1340 | 5 LT CAN',NULL,2,'Umbrella',1,NULL,NULL,1,NULL,NULL,NULL,NULL),(6,2,2,'Mobil Delvac 1340 | 5 LT CAN',NULL,1,'Cap',1,NULL,NULL,1,NULL,NULL,NULL,NULL),(7,3,3,'Mobil Special 20W-50 | 5 LT CAN',NULL,1,'Cap',1,NULL,NULL,1,NULL,NULL,NULL,NULL),(8,3,4,'Mobil Special 20W-50 | 4 LT CAN',NULL,1,'Key Ring',1,NULL,NULL,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `promotion_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sap_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_from` date DEFAULT NULL,
  `end_to` date DEFAULT NULL,
  `type` int DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (1,'Promotinal Offer',NULL,NULL,'2025-04-01','2025-12-31',1,1,NULL,NULL,NULL,NULL),(2,'Drizzle Deals',NULL,NULL,'2025-06-01','2025-08-31',1,1,NULL,NULL,NULL,NULL),(3,'Summer Offer',NULL,NULL,'2025-03-01','2025-06-30',1,1,NULL,NULL,NULL,NULL),(4,'Winter Offer',NULL,NULL,'2025-11-01','2025-12-31',1,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `regions` VALUES (1,'Dhaka',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(2,'Chittagong',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(3,'Jessore',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(4,'Bogura',NULL,NULL,NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL);
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `sessions` VALUES ('2cV0o36VO423tsqpfzuGUlIuWf0xe84ES7pqRaPA',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaG1hMGcwN0hLeUR2M0FuVzBFc21VeDk0ZjR3NU5YZjJYOWRDWkZwSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hc3NldHMvanMvY29uZmlnLmpzLi4iO319',1750155980),('6jNu90Xf7r3SCCEfBTu0rIANXeterV3gINh2FNea',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnRvU2IyVThhRW9vV2NnMVlIMHF0bHJIOHNuenp6SVNGOXVCZ0diUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hc3NldHMvanMvY29uZmlnLmpzLi4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1750133942),('HpQLQZm1P7M131HI8VoJtD6S4NoGYuzhqwQiMn67',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoibllUZTF3cU5XbUZUVE5oTDBMcGxpcFYzcTg5SHlDeVZvdHJkTnR3ciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2NtYS9uZXdfc29sZFRvUGFydHkiO319',1750147243),('t0Hwc8y49YkgozWqYYjKr6pGHMPwCBZEBfGdjKGf',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV29qQzcwZ0FRdzV0TjZBeDN2V3A2RTVUTTJWWnpYbDVBMUxVbzZyQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hc3NldHMvanMvY29uZmlnLmpzLi4iO319',1750227129),('vOqU4lE64H0uSy5mCDMrMFMmBZLzDpV0JZDv74Yu',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmg1WlRpUVo1OFl4U0tOMG9venlCZ0lyczlyUjdYTHFsbjd5ZVhMUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hc3NldHMvanMvY29uZmlnLmpzLi4iO319',1750332187);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ship_to_parties`
--

DROP TABLE IF EXISTS `ship_to_parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ship_to_parties` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sold_to_party_id` bigint unsigned DEFAULT NULL,
  `customer_code` int DEFAULT NULL COMMENT 'KNA1-KUNNR',
  `customer_acc_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1-KTOKD',
  `company_code` int DEFAULT NULL COMMENT 'KNB1-BUKRS',
  `sales_org` int DEFAULT NULL COMMENT 'KNVV-VKORG',
  `distribution_ch` int DEFAULT NULL COMMENT 'KNVV-VTWEG',
  `sales_division` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-SPART',
  `acc_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-NAME1',
  `acc_name2` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-NAME2',
  `search_term` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-SORT1',
  `search_term2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-SORT2',
  `legacy_acc_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'BUTOOO-BPEXT',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-COUNTRY',
  `region` int unsigned DEFAULT NULL COMMENT 'ADRC-REGION',
  `region_id` bigint unsigned DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-CITY1',
  `address` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-STREET',
  `ceo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-NAME_CO',
  `address_2` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-STR_SUPPL3',
  `address_3` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-LOCATION',
  `lang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-LANGU',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-TEL_NUMBER',
  `mobile_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1_TELF2',
  `fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1-TELFX',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADR6-SMTP_ADDR',
  `other_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADR12-URL_ADDR',
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-POST-CODE1',
  `contact_person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC_NAME_CO',
  `contact_person_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-TEL_NUMBER',
  `contact_person_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC2-TEL_NUMBER',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'BUT020-ADEXT',
  `payment_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1-KATRA',
  `bin_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1-BAHN5',
  `vat_reg_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1-BAHNE',
  `recon_acc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNB1-AKONT',
  `fi_payment_terms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNB1-ZTERM',
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-WAERS',
  `cust_pricing_procedure` int unsigned DEFAULT NULL COMMENT 'KNVV-KALKS',
  `shipping_condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-VSBED',
  `delivering_plant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-VWERK',
  `other_combination` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KZAZU',
  `incoterms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-INCO1',
  `incoterms_loc_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-INCO2_L',
  `sd_payment_terms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-ZTERM',
  `acc_assignment_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KTGRD',
  `tax_classification` int unsigned DEFAULT NULL COMMENT 'KNVI-TAXKD',
  `territory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-BZIRK',
  `customer_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV',
  `trade_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KVGR1',
  `trade_sub_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KVGR2',
  `customer_group_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KVGR3',
  `customer_group_4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KVGR4',
  `customer_group_5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KVGR5',
  `bp_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KATR2',
  `attr_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KATR3',
  `attr_4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KATR4',
  `attr_5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `factory_address_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-STR_SUPPL2',
  `loc_division_id` bigint unsigned DEFAULT NULL,
  `loc_district_id` bigint unsigned DEFAULT NULL,
  `loc_upazila_id` bigint unsigned DEFAULT NULL,
  `loc_post_office_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` decimal(9,6) DEFAULT NULL,
  `long` decimal(9,6) DEFAULT NULL,
  `employee_id` bigint unsigned DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_eligible_discount` tinyint(1) NOT NULL DEFAULT '0',
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ship_to_parties_customer_code_unique` (`customer_code`),
  KEY `ship_to_parties_sold_to_party_id_foreign` (`sold_to_party_id`),
  KEY `ship_to_parties_region_id_foreign` (`region_id`),
  KEY `ship_to_parties_loc_division_id_foreign` (`loc_division_id`),
  KEY `ship_to_parties_loc_district_id_foreign` (`loc_district_id`),
  KEY `ship_to_parties_loc_upazila_id_foreign` (`loc_upazila_id`),
  KEY `ship_to_parties_loc_post_office_id_foreign` (`loc_post_office_id`),
  KEY `ship_to_parties_employee_id_foreign` (`employee_id`),
  CONSTRAINT `ship_to_parties_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `ship_to_parties_loc_district_id_foreign` FOREIGN KEY (`loc_district_id`) REFERENCES `loc_districts` (`id`),
  CONSTRAINT `ship_to_parties_loc_division_id_foreign` FOREIGN KEY (`loc_division_id`) REFERENCES `loc_divisions` (`id`),
  CONSTRAINT `ship_to_parties_loc_post_office_id_foreign` FOREIGN KEY (`loc_post_office_id`) REFERENCES `loc_post_offices` (`id`),
  CONSTRAINT `ship_to_parties_loc_upazila_id_foreign` FOREIGN KEY (`loc_upazila_id`) REFERENCES `loc_upazilas` (`id`),
  CONSTRAINT `ship_to_parties_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`),
  CONSTRAINT `ship_to_parties_sold_to_party_id_foreign` FOREIGN KEY (`sold_to_party_id`) REFERENCES `sold_to_parties` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ship_to_parties`
--

LOCK TABLES `ship_to_parties` WRITE;
/*!40000 ALTER TABLE `ship_to_parties` DISABLE KEYS */;
INSERT INTO `ship_to_parties` VALUES (1,2,NULL,'Z001',1100,1100,10,'00','Toa Specra','',NULL,NULL,NULL,'BD',NULL,NULL,'Gazipur','Gazipur Chowrasta, 1 No Ward. Dhaka','Mr Toa','','','EN','01622000002','01622000002',NULL,NULL,NULL,'1700','Mr Rahim','991122321','01622000002','Toa',NULL,'0185-00211812',NULL,'12201000','Z001',NULL,1,'01',NULL,'X','FOB','NA',NULL,NULL,NULL,'000020','01','001','002',NULL,NULL,NULL,'Z001',NULL,NULL,NULL,NULL,NULL,3,3,157,523,NULL,23.776842,90.399570,1,1,'test SH2P',0,1,1,'HQ-IT-MPC-Zihad','2025-06-18 03:13:58','2025-06-18 03:13:58',NULL);
/*!40000 ALTER TABLE `ship_to_parties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ship_to_partyprocess_logs`
--

DROP TABLE IF EXISTS `ship_to_partyprocess_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ship_to_partyprocess_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ship_to_party_id` bigint unsigned NOT NULL,
  `chk_from` int DEFAULT NULL,
  `chk_to` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ship_to_partyprocess_logs_ship_to_party_id_foreign` (`ship_to_party_id`),
  CONSTRAINT `ship_to_partyprocess_logs_ship_to_party_id_foreign` FOREIGN KEY (`ship_to_party_id`) REFERENCES `ship_to_parties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ship_to_partyprocess_logs`
--

LOCK TABLES `ship_to_partyprocess_logs` WRITE;
/*!40000 ALTER TABLE `ship_to_partyprocess_logs` DISABLE KEYS */;
INSERT INTO `ship_to_partyprocess_logs` VALUES (1,1,1,3,1,'Verification Processing',1,'2025-06-18 03:13:58','2025-06-18 03:13:58');
/*!40000 ALTER TABLE `ship_to_partyprocess_logs` ENABLE KEYS */;
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
  `customer_acc_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1-KTOKD',
  `company_code` int DEFAULT NULL COMMENT 'KNB1-BUKRS',
  `sales_org` int DEFAULT NULL COMMENT 'KNVV-VKORG',
  `distribution_ch` int DEFAULT NULL COMMENT 'KNVV-VTWEG',
  `sales_division` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-SPART',
  `acc_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-NAME1',
  `acc_name2` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-NAME2',
  `search_term` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-SORT1',
  `search_term2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-SORT2',
  `legacy_acc_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'BUTOOO-BPEXT',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-COUNTRY',
  `region` int unsigned DEFAULT NULL COMMENT 'ADRC-REGION',
  `region_id` bigint unsigned DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-CITY1',
  `address` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-STREET',
  `ceo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-NAME_CO',
  `address_2` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-STR_SUPPL3',
  `address_3` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-LOCATION',
  `lang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-LANGU',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-TEL_NUMBER',
  `mobile_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1_TELF2',
  `fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1-TELFX',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADR6-SMTP_ADDR',
  `other_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADR12-URL_ADDR',
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-POST-CODE1',
  `contact_person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC_NAME_CO',
  `contact_person_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-TEL_NUMBER',
  `contact_person_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC2-TEL_NUMBER',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'BUT020-ADEXT',
  `payment_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1-KATRA',
  `bin_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1-BAHN5',
  `vat_reg_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNA1-BAHNE',
  `recon_acc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNB1-AKONT',
  `fi_payment_terms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNB1-ZTERM',
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-WAERS',
  `cust_pricing_procedure` int unsigned DEFAULT NULL COMMENT 'KNVV-KALKS',
  `shipping_condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-VSBED',
  `delivering_plant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-VWERK',
  `other_combination` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KZAZU',
  `incoterms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-INCO1',
  `incoterms_loc_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-INCO2_L',
  `sd_payment_terms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-ZTERM',
  `acc_assignment_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KTGRD',
  `tax_classification` int unsigned DEFAULT NULL COMMENT 'KNVI-TAXKD',
  `territory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-BZIRK',
  `customer_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV',
  `trade_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KVGR1',
  `trade_sub_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KVGR2',
  `customer_group_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KVGR3',
  `customer_group_4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KVGR4',
  `customer_group_5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KVGR5',
  `bp_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KATR2',
  `attr_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KATR3',
  `attr_4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'KNVV-KATR4',
  `attr_5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `factory_address_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ADRC-STR_SUPPL2',
  `loc_division_id` bigint unsigned DEFAULT NULL,
  `loc_district_id` bigint unsigned DEFAULT NULL,
  `loc_upazila_id` bigint unsigned DEFAULT NULL,
  `loc_post_office_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` decimal(9,6) DEFAULT NULL,
  `long` decimal(9,6) DEFAULT NULL,
  `employee_id` bigint unsigned DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_eligible_discount` tinyint(1) NOT NULL DEFAULT '0',
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sold_to_parties_customer_code_unique` (`customer_code`),
  UNIQUE KEY `sold_to_parties_fax_unique` (`fax`),
  UNIQUE KEY `sold_to_parties_email_unique` (`email`),
  UNIQUE KEY `sold_to_parties_bin_no_unique` (`bin_no`),
  KEY `sold_to_parties_region_id_foreign` (`region_id`),
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
  CONSTRAINT `sold_to_parties_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sold_to_parties`
--

LOCK TABLES `sold_to_parties` WRITE;
/*!40000 ALTER TABLE `sold_to_parties` DISABLE KEYS */;
INSERT INTO `sold_to_parties` VALUES (1,NULL,'Z002',1100,1100,15,'00','test customer','test industries limited','test cust 1',NULL,NULL,'BD',NULL,NULL,'Dhaka','Khilgao, Dhaka','test ceo',NULL,NULL,'EN','1122334455','12312',NULL,'test@test.com',NULL,'1219','test co','123123','234234 22','Bismilla','1G','123123',NULL,'12201000','Z001','BDT',1,'01','1122','X','FOB','NA','Z001','01',1,'000011','06','002','009','3',NULL,NULL,'Z001',NULL,NULL,NULL,NULL,NULL,3,1,614,469,NULL,23.774603,90.420186,1,1,'test',0,1,1,'HQ-IT-Zihad','2025-05-27 06:15:41','2025-06-16 16:40:32',NULL),(2,NULL,'Z001',1100,1100,10,'00','Toa Specra','',NULL,NULL,NULL,'BD',NULL,NULL,'Dhaka','Gulshan-1, DCC Market, Link Road, Post Office Road, Dhaka','Mr Toa','','','EN','01622000002','01622000002',NULL,NULL,NULL,'1212','Mr Karim','991122321','01622000001','Toa',NULL,'0185-00211812',NULL,'12201000','Z001',NULL,1,'01',NULL,'X','FOB','NA',NULL,NULL,NULL,'000017','01','001','002',NULL,NULL,NULL,'Z001',NULL,NULL,NULL,NULL,NULL,3,1,494,460,NULL,23.776461,90.420019,1,2,'test 2',0,1,1,'HQ-IT-Zihad','2025-06-17 03:47:16','2025-06-18 06:10:37',NULL),(3,NULL,'Z001',1100,1100,15,'00','test 2','',NULL,NULL,NULL,'BD',NULL,NULL,'Dhaka','Khilgao, Dhaka','adas','','','EN','12312','12312312',NULL,'78@test.com',NULL,'1213','ttes','12121212','1212121','xyz',NULL,'121212121',NULL,'12201000','Z001',NULL,1,'01',NULL,'X','FOB','NA',NULL,NULL,NULL,'000061','06','002','009',NULL,NULL,NULL,'Z001',NULL,NULL,NULL,NULL,NULL,3,1,576,459,NULL,23.780548,90.421954,1,1,'asdas',0,1,1,'HQ-IT-Zihad','2025-06-19 10:56:26','2025-06-19 10:56:26',NULL);
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
  `stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sold_to_party_lead_logs_sold_to_party_id_foreign` (`sold_to_party_id`),
  KEY `sold_to_party_lead_logs_lead_stage_id_foreign` (`lead_stage_id`),
  CONSTRAINT `sold_to_party_lead_logs_lead_stage_id_foreign` FOREIGN KEY (`lead_stage_id`) REFERENCES `lead_stages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sold_to_party_lead_logs_sold_to_party_id_foreign` FOREIGN KEY (`sold_to_party_id`) REFERENCES `sold_to_parties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sold_to_party_lead_logs`
--

LOCK TABLES `sold_to_party_lead_logs` WRITE;
/*!40000 ALTER TABLE `sold_to_party_lead_logs` DISABLE KEYS */;
INSERT INTO `sold_to_party_lead_logs` VALUES (1,2,7,'Complete for CMA',NULL,1,'2025-06-18 06:10:37','2025-06-18 06:10:37');
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
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sold_to_party_process_logs_sold_to_party_id_foreign` (`sold_to_party_id`),
  CONSTRAINT `sold_to_party_process_logs_sold_to_party_id_foreign` FOREIGN KEY (`sold_to_party_id`) REFERENCES `sold_to_parties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sold_to_party_process_logs`
--

LOCK TABLES `sold_to_party_process_logs` WRITE;
/*!40000 ALTER TABLE `sold_to_party_process_logs` DISABLE KEYS */;
INSERT INTO `sold_to_party_process_logs` VALUES (1,1,1,2,1,'Leads Processing',1,'2025-05-27 06:15:41','2025-05-27 06:15:41'),(2,1,2,3,1,'test',1,'2025-05-27 06:15:41','2025-05-27 06:15:41'),(3,1,3,4,1,'test',1,'2025-05-27 06:15:41','2025-05-27 06:15:41'),(10,2,1,2,1,'Leads Processing',1,'2025-06-17 03:47:16','2025-06-17 03:47:16'),(11,2,2,3,2,'Create CMA',1,'2025-06-18 06:10:37','2025-06-18 06:10:37'),(13,3,1,2,1,'Leads Processing',1,'2025-06-19 10:56:26','2025-06-19 10:56:26');
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` bigint unsigned DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `territories` VALUES (1,'Bagerhat',NULL,NULL,'000001',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(2,'Bandarban',NULL,NULL,'000071',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(3,'Barguna',NULL,NULL,'000068',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(4,'Barishal',NULL,NULL,'000002',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(5,'Bhola',NULL,NULL,'000065',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(6,'Bogura',NULL,NULL,'000003',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(7,'Brahmanbaria',NULL,NULL,'000004',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(8,'Chandpur',NULL,NULL,'000005',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(9,'Chapai Nawabhganj',NULL,NULL,'000006',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(10,'Chattogram',NULL,NULL,'000007',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(11,'Chuadanga',NULL,NULL,'000008',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(12,'Cox\'s Bazar',NULL,NULL,'000061',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(13,'Cumilla',NULL,NULL,'000009',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(14,'Dana Eng.',NULL,NULL,'000010',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(15,'Dhaka',NULL,NULL,'000011',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(16,'Dhaka Center',NULL,NULL,'000013',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(17,'Dhaka Central',NULL,NULL,'000014',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(18,'Dhaka EPZ',NULL,NULL,'000015',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(19,'Dhaka North',NULL,NULL,'000016',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(20,'Dhaka North I',NULL,NULL,'000017',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(21,'Dhaka North II',NULL,NULL,'000018',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(22,'Dhaka North III',NULL,NULL,'000019',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(23,'Dhaka South',NULL,NULL,'000020',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(24,'Dhaka South I',NULL,NULL,'000022',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(25,'Dhaka South II',NULL,NULL,'000023',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(26,'Dhaka South III',NULL,NULL,'000024',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(27,'Dhamrai',NULL,NULL,'000025',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(28,'Dinajpur',NULL,NULL,'000026',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(29,'Faridpur',NULL,NULL,'000027',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(30,'Feni',NULL,NULL,'000028',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(31,'Gaibandha',NULL,NULL,'000029',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(32,'Gazipur',NULL,NULL,'000030',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(33,'Gopalganj',NULL,NULL,'000074',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(34,'Habiganj',NULL,NULL,'000031',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(35,'Jamalpur',NULL,NULL,'000032',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(36,'Jessore',NULL,NULL,'000033',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(37,'Jhalokati',NULL,NULL,'000069',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(38,'Jhinaidah',NULL,NULL,'000034',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(39,'Joypurhat',NULL,NULL,'000083',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(40,'Khagrachhari',NULL,NULL,'000072',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(41,'Khulna',NULL,NULL,'000035',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(42,'Kishoreganj',NULL,NULL,'000037',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(43,'Kurigram',NULL,NULL,'000064',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(44,'Kushtia',NULL,NULL,'000038',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(45,'Lalmonirhat',NULL,NULL,'000081',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(46,'Laxmipur',NULL,NULL,'000063',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(47,'Madaripur',NULL,NULL,'000075',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(48,'Magura',NULL,NULL,'000067',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(49,'Manikganj',NULL,NULL,'000039',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(50,'Meherpur',NULL,NULL,'000040',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(51,'Mongla',NULL,NULL,'000041',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(52,'Moulabibazar',NULL,NULL,'000042',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(53,'Munshiganj',NULL,NULL,'000043',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(54,'Mymensingh',NULL,NULL,'000044',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(55,'Naogaon',NULL,NULL,'000045',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(56,'Narail',NULL,NULL,'000066',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(57,'Narayanganj',NULL,NULL,'000046',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(58,'Narsingdi',NULL,NULL,'000047',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(59,'Natore',NULL,NULL,'000048',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(60,'Netrokona',NULL,NULL,'000078',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(61,'Nilphamari',NULL,NULL,'000049',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(62,'Noakhali',NULL,NULL,'000050',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(63,'Pabna',NULL,NULL,'000051',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(64,'Panchagarh',NULL,NULL,'000080',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(65,'Patuakhali',NULL,NULL,'000052',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(66,'Pirojpur',NULL,NULL,'000070',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(67,'Rajbari',NULL,NULL,'000062',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(68,'Rajshahi',NULL,NULL,'000053',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(69,'Rangamati',NULL,NULL,'000073',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(70,'Rangpur',NULL,NULL,'000054',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(71,'Satkhira',NULL,NULL,'000077',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(72,'Savar',NULL,NULL,'000055',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(73,'Shariatpur',NULL,NULL,'000076',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(74,'Shirajganj',NULL,NULL,'000056',NULL,1,NULL,NULL,'2025-05-25 05:41:48','2025-05-25 05:41:48',NULL),(75,'Sirajganj',NULL,NULL,'000082',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(76,'Sunamganj',NULL,NULL,'000057',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(77,'Sylhet',NULL,NULL,'000058',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(78,'Tangail',NULL,NULL,'000059',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(79,'Thakurgaon',NULL,NULL,'000079',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(80,'Tongi',NULL,NULL,'000060',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL);
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `territory_id` bigint unsigned NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `trade_categories` VALUES (1,'Energy',NULL,'001',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(2,'FCD/FMD/RCD/LCC',NULL,'002',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(3,'General Manufacturing',NULL,'003',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(4,'Inland Marine',NULL,'004',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(5,'JOCL Distributors',NULL,'005',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(6,'Local Export',NULL,'006',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(7,'Marine FG',NULL,'007',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(8,'Metals',NULL,'008',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(9,'Nepal Export',NULL,'009',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(10,'Off-Highway',NULL,'010',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(11,'On-Highway',NULL,'011',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(12,'Paper',NULL,'012',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(13,'Process',NULL,'013',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(14,'Retail',NULL,'014',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL);
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trade_category_id` bigint unsigned DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `trade_sub_categories` VALUES (1,'Coal',1,NULL,'001',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(2,'Distribution',1,NULL,'002',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(3,'DMPP',1,NULL,'003',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(4,'Gas Engine',1,NULL,'004',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(5,'Oil and Gas On & Offshore',1,NULL,'005',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(6,'Nuclear',1,NULL,'007',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(7,'Gas Turbine/Steam Turbine',1,NULL,'008',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(8,'Franchised Car Dealer',2,NULL,'009',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(9,'Franchised Motorcycle Dealer',2,NULL,'010',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(10,'Recondition Car Dealer',2,NULL,'011',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(11,'LCC/IIW',2,NULL,'012',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(12,'Recondition Motorcycle Dealer',2,NULL,'013',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(13,'Pharmaceuticals',NULL,NULL,'014',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(14,'Plastic',NULL,NULL,'015',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(15,'Cooling & Refrigeration',NULL,NULL,'016',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(16,'Tire & Rubber Goods',NULL,NULL,'017',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(17,'Motor/Vehicle Assembly',NULL,NULL,'018',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(18,'Furniture',NULL,NULL,'019',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(19,'Electronic',NULL,NULL,'020',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(20,'Leather/Footwear',NULL,NULL,'021',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(21,'Edible Oil',NULL,NULL,'022',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(22,'Food & Beverage',NULL,NULL,'023',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(23,'Sugar Mills',NULL,NULL,'024',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(24,'Cargo',NULL,NULL,'025',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(25,'Fishing Trawler',NULL,NULL,'026',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(26,'Passenger/Ferry',NULL,NULL,'027',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(27,'Ship Yards',NULL,NULL,'028',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(28,'LNG/Carrier',NULL,NULL,'029',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(29,'Dredging',NULL,NULL,'030',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(30,'Tugs',NULL,NULL,'031',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(31,'Distributors',NULL,NULL,'032',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(32,'Local Export',NULL,NULL,'033',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(33,'Tankers',NULL,NULL,'034',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(34,'Bulk Carriers',NULL,NULL,'035',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(35,'Container Ships',NULL,NULL,'036',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(36,'Steel',NULL,NULL,'037',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(37,'Non-ferrous',NULL,NULL,'038',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(38,'Nepal Export',NULL,NULL,'039',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(39,'Agriculture',NULL,NULL,'040',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(40,'Construction',NULL,NULL,'041',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(41,'Mining',NULL,NULL,'042',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(42,'Railroads',NULL,NULL,'043',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(43,'CAT-Alliance Partner',NULL,NULL,'044',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(44,'Bus fleet',NULL,NULL,'045',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(45,'Transport/Cargo',NULL,NULL,'046',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(46,'Truck fleet',NULL,NULL,'047',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(47,'Pulp & Paper',NULL,NULL,'048',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(48,'Packaging Paper',NULL,NULL,'049',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(49,'Wood Processing',NULL,NULL,'050',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(50,'Cement',NULL,NULL,'051',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(51,'Ceramics',NULL,NULL,'052',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(52,'Chemical',NULL,NULL,'053',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(53,'Composites',NULL,NULL,'054',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(54,'Dyeing',NULL,NULL,'055',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(55,'Fabrics',NULL,NULL,'056',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(56,'Garments',NULL,NULL,'057',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(57,'Jute',NULL,NULL,'058',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(58,'Spinning',NULL,NULL,'059',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(59,'Tannery',NULL,NULL,'060',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(60,'Fertilizer',NULL,NULL,'066',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(61,'FS/CNG Station',NULL,NULL,'061',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(62,'Wholesaler',NULL,NULL,'062',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(63,'Retailer',NULL,NULL,'063',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(64,'E-Commerce',NULL,NULL,'064',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(65,'Auto Parts',NULL,NULL,'065',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL),(66,'Others',NULL,NULL,'006',NULL,1,NULL,NULL,'2025-05-25 05:41:49','2025-05-25 05:41:49',NULL);
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
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `users` VALUES (1,'tarikul.islam','Tarikul.Islam@mobilbd.com',NULL,'$2y$12$t2OeycKtczDuD6EGJkvW1eiTF1NLYDLIo2ZCSx4aOtbXajxZCc7hK',NULL,'2025-04-24 02:54:42','2025-04-24 02:54:42');
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sap_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purType` int NOT NULL DEFAULT '1',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

-- Dump completed on 2025-06-19 21:59:06
