-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: apply
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` timestamp NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `freedom_fighter_quota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `employment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `ethnic_minority_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `disability_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'bangladeshi',
  `national_id_card_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `chest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `ssc_exam_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc_board` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc_roll_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc_result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc_passing_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsc_exam_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsc_board` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsc_roll_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsc_result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsc_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsc_passing_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `graduation_examination_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `graduation_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `graduation_institute_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `graduation_result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `graduation_passing_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `graduation_course_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '4',
  `masters_examination_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masters_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masters_institute_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masters_result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masters_passing_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masters_course_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` text COLLATE utf8mb4_unicode_ci,
  `present_address` text COLLATE utf8mb4_unicode_ci,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (1,'Lesley Brock','Lucas Henderson','Peter Compton','1981-02-01 18:00:00',NULL,NULL,'+1 (374) 745-6256','cesuvefori@mailinator.com','Pa$$w0rd!','female','yes','no','yes','yes','no','Unde commodi ad eaqu','392','Sint est excepteur','Aspernatur et aute v','Sed sint delectus','o_level','Inventore amet quae','220','Veniam dolorem a cu','science','1996','equivalent','Iusto molestiae dele','553','Sit irure molestias','humanities','2009','Dolor libero nisi qu','Enim aut est ab maio','Yuli Pennington','Unde recusandae Sed','1970','Iste rerum quae qui','Ipsam quis est iusto','Ad natus enim sit s','Tamekah Carson','Rerum quaerat offici','1998','Laudantium beatae i','Aut dolorem adipisic','Laboris reprehenderi','dutch_bangla','730','Alias sed placeat d','878','2021-02-15 06:36:57','2021-02-15 06:36:57'),(2,'Dalton Barlow','Britanni Spencer','Isabelle Gilliam','1981-09-08 18:00:00',NULL,NULL,'+1 (796) 933-5623','jaxih@mailinator.com','Pa$$w0rd!','female','no','no','yes','yes','yes','Vitae assumenda temp','266','Rerum consequatur I','Voluptas ipsam quia','Aperiam nesciunt su','dakhil','Dignissimos magni ex','745','Voluptas cumque nisi','science','1999','a_level','Dolorem Nam laboris','142','Placeat nobis digni','science','1999','Nemo perferendis in','Similique reprehende','Tyrone Hendricks','Exercitationem nihil','1978','Excepteur voluptatem','Quidem qui amet omn','Dignissimos ullamco','Kylynn Soto','In sunt consectetur','1986','Fugiat at suscipit','Eveniet et quo obca','Aut voluptatem Nam m','bkash','+1 (262) 757-4178','15','537','2021-02-15 06:38:58','2021-02-15 06:38:58'),(3,'Yetta James','Shaeleigh Wheeler','Galena French','2009-03-07 18:00:00',NULL,NULL,'+1 (946) 998-5206','zimebe@mailinator.com','Pa$$w0rd!','other','no','yes','yes','no','no','Blanditiis excepturi','307','Alias voluptas quae','Dicta eum id culpa','Aut at nostrum nulla','ssc','Est rerum omnis dele','289','Sed sit deserunt ac','science','1978','hsc','Perferendis qui cons','471','Architecto aliquam v','business_studies','1993','Natus harum enim ips','Assumenda aliquip hi','Ethan Daniels','In voluptate eligend','2014','Incidunt praesentiu','Ea ullamco voluptas','Beatae dolor velit','Nathaniel Sutton','Sit similique maior','1993','Cupiditate dolores i','Nostrud qui vero min','Repudiandae dolor mo','rocket','+1 (526) 976-1557','54','887','2021-02-15 07:01:28','2021-02-15 07:01:28');
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
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
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_circular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_activity_status` enum('taken','not_taken') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_taken',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms`
--

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
INSERT INTO `forms` VALUES (1,'Deangelo Hoeger',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(2,'Ava Lueilwitz II',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(3,'Angelica Monahan',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(4,'Dock Kihn',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(5,'Ms. Laisha Hansen',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(6,'Junior Kuhlman I',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(7,'Johan Mayert',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(8,'Alia Emmerich Sr.',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(9,'Immanuel Balistreri',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(10,'Litzy Schulist',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(11,'Velma Quitzon',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(12,'Prof. Estel Beier',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(13,'Kimberly Mann',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(14,'Miss Lorna Hane V',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(15,'Sister Runte',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(16,'Mrs. Albertha Monahan Jr.',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(17,'Randal VonRueden',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(18,'Otis Bruen',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(19,'Lawson Gerhold',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(20,'Mrs. Jacquelyn Beatty',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(21,'Kimberly Wilkinson',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(22,'Reed Cummerata',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(23,'Dr. Emmy Lind',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(24,'Betty Erdman',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(25,'Mabelle Koelpin',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(26,'Abbey Eichmann',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(27,'Bert Borer',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(28,'Mr. Harry O\'Connell',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(29,'Shayna Harber',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17'),(30,'Sonya Flatley',NULL,NULL,'2021-02-15 12:36:17','not_taken','2021-02-15 06:36:17','2021-02-15 06:36:17');
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2021_02_07_093122_create_applications_table',1),(10,'2021_02_07_101735_create_forms_table',1),(11,'2021_02_09_152547_create_payments_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `application_id` int NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('verified','unverified') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unverified',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,32,1,'dutch_bangla','730','Alias sed placeat d','878','unverified','2021-02-15 06:36:57','2021-02-15 06:36:57'),(2,33,2,'bkash','+1 (262) 757-4178','15','537','unverified','2021-02-15 06:38:58','2021-02-15 06:38:58'),(3,34,3,'rocket','+1 (526) 976-1557','54','887','unverified','2021-02-15 07:01:28','2021-02-15 07:01:28');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role` enum('applicant','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'applicant',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Mr. Admin','admin@admin.com',NULL,'$2y$10$GyP1XIXrLqTsOzdko1hBq.I8dJdM2rSBqPU0aNWVeQMWZONzW4mUm','cZyGZC8otdcJiwaaUhWnhsToYqewMmRaGA60Z0O4es7wTkul52h8acPRZHUf',NULL,NULL),(2,'applicant','Shaniya Walker','elliott49@example.net','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','D389wPpgI6','2021-02-15 06:36:17','2021-02-15 06:36:17'),(3,'applicant','Delaney Larson','ellie35@example.net','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JI6M62sJmz','2021-02-15 06:36:17','2021-02-15 06:36:17'),(4,'applicant','Prof. Syble Baumbach Jr.','ettie99@example.com','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','cAqjrHR52T','2021-02-15 06:36:17','2021-02-15 06:36:17'),(5,'applicant','Kenna Volkman','fkohler@example.org','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WcCv73NSZc','2021-02-15 06:36:17','2021-02-15 06:36:17'),(6,'applicant','Dr. Dawn Bergstrom','towne.ludwig@example.net','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','E3CIuUIQst','2021-02-15 06:36:17','2021-02-15 06:36:17'),(7,'applicant','Anya Bruen','odie.ledner@example.net','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','XWuXmTGUue','2021-02-15 06:36:17','2021-02-15 06:36:17'),(8,'applicant','Henri Tromp','cruickshank.roberto@example.net','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','XOVPbembHz','2021-02-15 06:36:17','2021-02-15 06:36:17'),(9,'applicant','Kiarra Kiehn','doyle.shanny@example.net','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','w6wikTI2Ot','2021-02-15 06:36:17','2021-02-15 06:36:17'),(10,'applicant','Prof. Jaquan Hauck V','ahaley@example.org','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','fy7pV7ey5R','2021-02-15 06:36:17','2021-02-15 06:36:17'),(11,'applicant','Emil Veum','xpacocha@example.net','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','H8OKhJLhWp','2021-02-15 06:36:17','2021-02-15 06:36:17'),(12,'applicant','Marvin Abernathy','valentine.kessler@example.org','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','8JYm4yxxVS','2021-02-15 06:36:17','2021-02-15 06:36:17'),(13,'applicant','Rossie Thiel','aoconnell@example.org','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Rb1d3qM6Jq','2021-02-15 06:36:17','2021-02-15 06:36:17'),(14,'applicant','Elena Friesen','nienow.esther@example.org','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','YCSGFyPZkw','2021-02-15 06:36:17','2021-02-15 06:36:17'),(15,'applicant','Arjun Marks','tmaggio@example.com','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2Tt0pcPzYE','2021-02-15 06:36:17','2021-02-15 06:36:17'),(16,'applicant','Mrs. Liana Hagenes','noemie65@example.com','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','IAbTX3kE5G','2021-02-15 06:36:17','2021-02-15 06:36:17'),(17,'applicant','Joshuah Walsh','ohamill@example.org','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','RpbEqyYJ1s','2021-02-15 06:36:17','2021-02-15 06:36:17'),(18,'applicant','Miss Kiana Gulgowski Jr.','ruthe46@example.com','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ZQVlhWdAb1','2021-02-15 06:36:17','2021-02-15 06:36:17'),(19,'applicant','Bertha Schuppe','viviane.stehr@example.net','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','3FJGybAIsH','2021-02-15 06:36:17','2021-02-15 06:36:17'),(20,'applicant','Dr. Dewayne Wolff','ebahringer@example.com','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','F5jEDBncjM','2021-02-15 06:36:17','2021-02-15 06:36:17'),(21,'applicant','Green Sipes Sr.','antonietta33@example.com','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','N7xJeGveh1','2021-02-15 06:36:17','2021-02-15 06:36:17'),(22,'applicant','Ludie Roberts','tressa.kirlin@example.org','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Qeo5enzhYD','2021-02-15 06:36:17','2021-02-15 06:36:17'),(23,'applicant','Jacynthe Zboncak','bo13@example.org','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','MRMZgoFc2F','2021-02-15 06:36:17','2021-02-15 06:36:17'),(24,'applicant','Milo Halvorson','zulauf.alayna@example.net','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2v7k4bT0uN','2021-02-15 06:36:17','2021-02-15 06:36:17'),(25,'applicant','Adolph Kerluke','dietrich.timothy@example.net','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JwmHX4M9NQ','2021-02-15 06:36:17','2021-02-15 06:36:17'),(26,'applicant','Ludie Grimes DVM','alan.wilderman@example.net','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ZOF9fOIUds','2021-02-15 06:36:17','2021-02-15 06:36:17'),(27,'applicant','Clyde Jast DVM','daren73@example.com','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Gqn3GE9nJ0','2021-02-15 06:36:17','2021-02-15 06:36:17'),(28,'applicant','Vivien Maggio III','bauch.marcia@example.net','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','A9X2ptPmhj','2021-02-15 06:36:17','2021-02-15 06:36:17'),(29,'applicant','Lizzie Eichmann','ikiehn@example.org','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CuxufjpnB5','2021-02-15 06:36:17','2021-02-15 06:36:17'),(30,'applicant','Madisyn Becker','emmalee.weissnat@example.com','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','sz4Y3SZb1f','2021-02-15 06:36:17','2021-02-15 06:36:17'),(31,'applicant','Lionel Mante MD','mellie.okeefe@example.org','2021-02-15 06:36:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','9tJgdCqiJq','2021-02-15 06:36:17','2021-02-15 06:36:17'),(32,'applicant','Lesley Brock','cesuvefori@mailinator.com',NULL,'$2y$10$AUsBXNQDSohPqTq09cqJfOKXsoKG2ZfS1lY5V43xrkicAThl5n1Xi',NULL,'2021-02-15 06:36:57','2021-02-15 06:36:57'),(33,'applicant','Dalton Barlow','jaxih@mailinator.com',NULL,'$2y$10$Kfq.I82XmSPRh8zE8Iys8ucZPQNiUHYrCh7CJx/NFDUIIkAwakf06',NULL,'2021-02-15 06:38:58','2021-02-15 06:38:58'),(34,'applicant','Yetta James','zimebe@mailinator.com',NULL,'$2y$10$Lhc2HNJMiiBcS278qrlzzumhv1tG7t0NDNyQv18276skUH1VB8oDm',NULL,'2021-02-15 07:01:28','2021-02-15 07:01:28');
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

-- Dump completed on 2021-02-18 12:53:38
