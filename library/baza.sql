/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.21-MariaDB : Database - library
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`library` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `library`;

/*Table structure for table `authors` */

DROP TABLE IF EXISTS `authors`;

CREATE TABLE `authors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `authors` */

insert  into `authors`(`id`,`firstname`,`lastname`,`birthday`,`gender`,`country_id`,`created_at`,`updated_at`) values 
(1,'Garett','Teresa','2014-01-02','muski, zenski',1,'2022-12-23 10:19:23','2022-12-23 10:19:23'),
(2,'Casimer','Makenna','1999-05-06','muski, zenski',2,'2022-12-23 10:19:23','2022-12-23 10:19:23'),
(3,'Barrett','Shanie','1984-07-02','muski, zenski',3,'2022-12-23 10:19:23','2022-12-23 10:19:23'),
(4,'Vinnie','Westley','1991-09-30','muski, zenski',4,'2022-12-23 10:19:23','2022-12-23 10:19:23'),
(5,'Javier','Stefanie','1971-09-23','muski, zenski',5,'2022-12-23 10:19:23','2022-12-23 10:19:23');

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `publish_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `author_id` bigint(20) unsigned NOT NULL,
  `publisher_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `books` */

insert  into `books`(`id`,`title`,`description`,`created_at`,`updated_at`,`publish_year`,`category_id`,`author_id`,`publisher_id`,`user_id`) values 
(1,'Ms.','Quod animi eum in.','2022-12-23 10:19:23','2022-12-23 10:19:23','2016',1,1,1,1),
(3,'Miss','Qui exercitationem eligendi magni quia.','2022-12-23 10:19:23','2022-12-23 10:19:23','1983',3,3,3,3),
(4,'Mrs.','Facilis numquam quaerat quisquam quo inventore tempore maxime odit.','2022-12-23 10:19:23','2022-12-23 10:19:23','1980',4,4,4,4),
(5,'Ms.','Excepturi error omnis laborum dignissimos.','2022-12-23 10:19:23','2022-12-23 10:19:23','2014',5,5,5,5),
(6,'Amerika','Prica o momku koji je otisao u Ameriku i nailazi na nevolje','2022-12-26 18:34:58','2022-12-26 18:37:48','1854',1,1,1,8),
(11,'Delibratska prescara','Nista','2022-12-26 19:11:11','2022-12-26 19:11:11','1966',2,2,2,8);

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`created_at`,`updated_at`) values 
(1,'quis','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(2,'rerum','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(3,'dolorem','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(4,'assumenda','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(5,'doloribus','2022-12-23 10:19:23','2022-12-23 10:19:23');

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `countries_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `countries` */

insert  into `countries`(`id`,`name`,`created_at`,`updated_at`) values 
(1,'Angola','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(2,'Poland','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(3,'Nauru','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(4,'Malta','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(5,'Malawi','2022-12-23 10:19:23','2022-12-23 10:19:23');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2022_12_20_175219_create_books_table',1),
(6,'2022_12_20_185119_create_categories_table',1),
(7,'2022_12_20_185919_create_authors_table',1),
(8,'2022_12_20_185959_create_publishers_table',1),
(9,'2022_12_20_190024_create_countries_table',1),
(10,'2022_12_22_183830_add_column_user_id_to_books_table',1),
(11,'2022_12_22_201949_remove_column_category_from_book_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

insert  into `personal_access_tokens`(`id`,`tokenable_type`,`tokenable_id`,`name`,`token`,`abilities`,`last_used_at`,`expires_at`,`created_at`,`updated_at`) values 
(1,'App\\Models\\User',6,'authentication_token','c460fc1cb9178636aa80b60b41af06b377a7aec99c7f33d1383fc83d29c03c7c','[\"*\"]',NULL,NULL,'2022-12-26 14:53:47','2022-12-26 14:53:47'),
(2,'App\\Models\\User',7,'authentication_token','6f758520ba39eb5d4605071c38f4133c602ae3504e7e96b6a987df29499d882e','[\"*\"]',NULL,NULL,'2022-12-26 15:09:55','2022-12-26 15:09:55'),
(7,'App\\Models\\User',8,'authentication_token','7e020dd172e04927e1fd05f9ca5faf6fb43221f59fe4ec9afaa7fb6c4851ced2','[\"*\"]','2022-12-26 19:11:11',NULL,'2022-12-26 18:21:20','2022-12-26 19:11:11');

/*Table structure for table `publishers` */

DROP TABLE IF EXISTS `publishers`;

CREATE TABLE `publishers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publishers_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `publishers` */

insert  into `publishers`(`id`,`name`,`created_at`,`updated_at`) values 
(1,'deserunt','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(2,'rem','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(3,'saepe','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(4,'qui','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(5,'ipsa','2022-12-23 10:19:23','2022-12-23 10:19:23');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Ms. Theresia Schinner','sophia.christiansen@example.com','2022-12-23 10:19:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','F97BxmkTYF','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(2,'Helga Koelpin','merl32@example.com','2022-12-23 10:19:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','IR7zFPEGJV','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(3,'Marcelo Kiehn','iemard@example.org','2022-12-23 10:19:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','VuwIJltFzg','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(4,'Cara Lind IV','herta52@example.org','2022-12-23 10:19:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Fqt3jltikX','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(5,'Rhoda Douglas MD','frances.thompson@example.com','2022-12-23 10:19:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','hdmyvBnju5','2022-12-23 10:19:23','2022-12-23 10:19:23'),
(6,'Nemanja','nemanja@mail.com',NULL,'gojko\n',NULL,'2022-12-26 14:53:47','2022-12-26 14:53:47'),
(7,'Gojko','gojko@mail.com',NULL,'gojko\n',NULL,'2022-12-26 15:09:55','2022-12-26 15:09:55'),
(8,'Ng','ng@mail.com',NULL,'$2y$10$IZXKDi5617hn0.nG4e3nYeeTLNH0gMb4ngPvQROjFqJTAaZS/iO9q',NULL,'2022-12-26 15:15:06','2022-12-26 15:15:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
