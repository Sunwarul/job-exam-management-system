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
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `applications` VALUES (1,'Amanda Bauer','Erin Brady','Aiko Griffith','2007-11-30 18:00:00',NULL,NULL,'+1 (856) 726-9251','busovufa@mailinator.com','Pa$$w0rd!','male','yes','yes','yes','no','no','Aliqua Fugiat temp','902','Vero dicta incidunt','Tenetur cumque volup','Iste et ipsa quod q','vocational','Odio excepteur quibu','682','Qui magna anim neque','science','2017','alim','Nihil exercitationem','98','Ea sit nulla tempore','business_studies','2009','Rerum aut suscipit e','In maiores impedit','Hilda Maddox','Quia et ad amet in','2011','Nostrum voluptas iur','Est rerum ipsam inci','Corporis corporis ex','Sandra Thornton','Quod et et deserunt','2017','Numquam numquam est','Quo consequat Excep','Qui occaecat minus c','rocket','398','788','2021-02-09 08:30:53','2021-02-09 08:30:53'),(2,'Laith Emerson','Orli Noel','Cameron Estrada','1985-03-28 18:00:00',NULL,NULL,'+1 (488) 778-6098','jezedo@mailinator.com','Pa$$w0rd!','male','no','no','yes','no','yes','Obcaecati exercitati','230','Qui commodo pariatur','Non excepteur impedi','Temporibus tempore','dakhil','Molestias in obcaeca','268','Iure placeat volupt','business_studies','2019','alim','Sit fugiat aut a re','423','Dolorem tempora non','business_studies','1996','Eu cillum harum susc','Quia aut aut pariatu','Brett Todd','Aut aspernatur repud','1998','Ea omnis dolorem ven','Ut velit eiusmod dic','Earum in deleniti es','Haviva Marks','Laboris ipsam est po','2004','Ullam voluptates nem','Fugit magna veniam','Voluptate sint sint','rocket','156','51','2021-02-09 08:31:13','2021-02-09 08:31:13'),(3,'Sage English','Hannah Dean','Phyllis Mcfadden','2018-06-14 18:00:00',NULL,NULL,'+1 (526) 946-7153','bulol@mailinator.com','Pa$$w0rd!','other','yes','yes','yes','no','yes','Adipisicing fugiat d','102','Fugiat quasi amet','Repellendus Ipsum','Reprehenderit porro','o_level','Est est quo et ut e','482','Ex quo sit soluta e','business_studies','1981','hsc','Quaerat ea provident','419','Dolor lorem dolor of','science','1976','Sed accusamus nulla','Totam quam inventore','Jackson Ferguson','Esse nisi odit magn','1991','Iusto est rerum qui','Aut velit temporibu','Modi fugiat reprehe','Candace Pruitt','Est ut architecto fa','1999','Voluptatem Aut duis','Minim nulla commodo','Id rerum ut dolorum','bank','621','42','2021-02-09 08:31:23','2021-02-09 08:31:23');
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
  `exam_circular_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_date` timestamp NOT NULL,
  `exam_activity_status` enum('taken','not_taken') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_taken',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms`
--

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
INSERT INTO `forms` VALUES (1,'Abdul Garza','Aut autem aspernatur',NULL,'2012-09-24 18:00:00','taken','2021-02-09 08:31:52','2021-02-09 08:31:52'),(2,'Kevyn Anthony','Eveniet voluptates',NULL,'1989-09-26 18:00:00','taken','2021-02-09 08:31:56','2021-02-09 08:31:56'),(3,'Susan Page','Et eos soluta rerum',NULL,'1977-05-24 18:00:00','taken','2021-02-09 08:32:01','2021-02-09 08:32:01'),(4,'Stephen Ellis','Sunt quidem nulla e',NULL,'2013-12-18 18:00:00','taken','2021-02-09 08:32:07','2021-02-09 08:32:07'),(5,'Thor Bright','Modi cumque impedit',NULL,'1999-06-03 18:00:00','taken','2021-02-09 08:32:23','2021-02-09 08:32:23');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_02_07_093122_create_applications_table',1),(5,'2021_02_07_101735_create_forms_table',1),(6,'2021_02_09_074012_create_payment_methods_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
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
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Mr. Admin','admin@admin.com',NULL,'$2y$10$KJIMqF7agUObltFMZfmxG.qBn1eZxuOnlKBJzfIDzMs9X/Ynlk4se','rv2plk3OG7YgKqfZT8TfpYa17Wg9XWucbuRSxEUHoiMuJwcV4K8ZOFlcummx',NULL,NULL),(2,'applicant','Amanda Bauer','busovufa@mailinator.com',NULL,'$2y$10$Gr/aO10x707FHsTNGGccAOSevg5x/NXmQVOSYZqxCWPVRAZ6eJ1/6',NULL,'2021-02-09 08:30:53','2021-02-09 08:30:53'),(3,'applicant','Laith Emerson','jezedo@mailinator.com',NULL,'$2y$10$Ye8SfToLy3Z8N4Inb.45fuaPS1.Ag76oGytqVNZ.VQirDPbFkFPVW',NULL,'2021-02-09 08:31:13','2021-02-09 08:31:13'),(4,'applicant','Sage English','bulol@mailinator.com',NULL,'$2y$10$xvu58GIXQAF8wrmFZXeolu.SxXp3DWZjUK1x88H48c3O5SNZd0E2O',NULL,'2021-02-09 08:31:23','2021-02-09 08:31:23');
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

-- Dump completed on 2021-02-09 20:35:47
