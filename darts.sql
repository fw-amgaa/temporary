-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: darts
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accessories`
--

DROP TABLE IF EXISTS `accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `unit` int(11) NOT NULL,
  `measurements` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `general_info_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `general_info_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `general_info_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessories`
--

LOCK TABLES `accessories` WRITE;
/*!40000 ALTER TABLE `accessories` DISABLE KEYS */;
/*!40000 ALTER TABLE `accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$1S7uHWI4pN2I$lQSBXrB+I0lnEpe3dmeHmG2OGVoLOoDrSX3ebHdLUFU=','2020-07-18 07:44:44.384447',1,'mnkhod','','','mnkhod.dev@gmail.com',1,1,'2020-07-18 07:44:37.450661');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (1,'Мэдээ','2020-07-16 16:00:00','2020-07-16 16:00:00'),(2,'Нийтлэл','2020-07-16 16:00:00','2020-07-16 16:00:00');
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (13,'How to create a blog',1,1,'blogs/October2020/lNkHNec3BGT9UVjIgKSv.jpg','<p>Content</p>','2020-10-28 02:51:13','2020-10-28 02:51:13'),(14,'ADded a new blog',1,1,'blogs/October2020/ufhcDLzxLz2F310YW0rJ.jpg','<p>Blog contents</p>','2020-10-28 03:46:00','2020-10-28 03:54:16');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2020-08-17 21:21:51','2020-08-17 21:21:51'),(2,NULL,1,'Category 2','category-2','2020-08-17 21:21:52','2020-08-17 21:21:52');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','number','ID',1,0,0,0,0,0,NULL,1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,NULL,4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(29,5,'id','number','ID',1,0,0,0,0,0,NULL,1),(30,5,'author_id','text','Author',1,0,1,1,0,1,NULL,2),(31,5,'category_id','text','Category',1,0,1,1,1,0,NULL,3),(32,5,'title','text','Title',1,1,1,1,1,1,NULL,4),(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),(44,6,'id','number','ID',1,0,0,0,0,0,NULL,1),(45,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),(46,6,'title','text','Title',1,1,1,1,1,1,NULL,3),(47,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,4),(48,6,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',1,0,1,1,1,1,NULL,7),(51,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,NULL,8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',1,1,1,0,0,0,NULL,10),(54,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL,11),(55,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12),(56,7,'id','text','Id',1,0,0,0,0,0,'{}',1),(57,7,'name','text','Name',1,1,1,1,1,1,'{}',2),(58,7,'price','number','Price',1,1,1,1,1,1,'{}',3),(59,7,'images','multiple_images','Images',1,1,1,1,1,1,'{}',4),(60,7,'description','text_area','Description',1,1,1,1,1,1,'{}',5),(61,7,'featured','checkbox','Featured',1,1,1,1,1,1,'{}',6),(62,7,'rating','number','Rating',1,1,1,1,1,1,'{}',7),(63,7,'top_category_id','select_dropdown','Top Category Id',1,0,1,1,1,1,'{}',8),(64,7,'sub_category_id','select_dropdown','Sub Category Id',1,0,1,1,1,1,'{}',9),(65,7,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',10),(66,7,'updated_at','timestamp','Updated At',0,1,1,1,0,1,'{}',11),(67,7,'darts','text','Darts',1,0,1,1,1,1,'{}',12),(68,7,'packaging','text','Packaging',1,0,1,1,1,1,'{}',13),(69,7,'flights','text','Flights',1,0,1,1,1,1,'{}',14),(70,7,'shafts','text','Shafts',1,0,1,1,1,1,'{}',15),(71,7,'barrel_weight','text','Barrel Weight',1,0,1,1,1,1,'{}',16),(72,7,'tungsten','text','Tungsten',1,0,1,1,1,1,'{}',17),(73,7,'thread','text','Thread',1,0,1,1,1,1,'{}',18),(74,7,'weight_dist','text','Weight Dist',1,0,1,1,1,1,'{}',19),(75,7,'barrel_prof','text','Barrel Prof',1,0,1,1,1,1,'{}',20),(76,7,'front_prof','text','Front Prof',1,0,1,1,1,1,'{}',21),(77,7,'point_type','text','Point Type',1,0,1,1,1,1,'{}',22),(78,7,'grip_zone','text','Grip Zone',1,0,1,1,1,1,'{}',23),(79,7,'grip_type','text','Grip Type',1,0,1,1,1,1,'{}',24),(80,7,'grip_level','text','Grip Level',1,0,1,1,1,1,'{}',25),(81,7,'groove_colour','text','Groove Colour',1,0,1,1,1,1,'{}',26),(82,7,'laser_etched','text','Laser Etched',1,0,1,1,1,1,'{}',27),(83,7,'surface_finish','text','Surface Finish',1,0,1,1,1,1,'{}',28),(84,7,'dimensions','text','Dimensions',1,0,1,1,1,1,'{}',29),(85,7,'model_no','text','Model No',1,0,1,1,1,1,'{}',30),(86,7,'barcode','text','Barcode',1,0,1,1,1,1,'{}',31),(87,7,'range','text','Range',1,0,1,1,1,1,'{}',32),(88,7,'youtube_link','text','Youtube Link',1,0,1,1,1,1,'{}',33),(89,8,'id','number','Id',1,0,0,0,0,0,'{}',1),(90,8,'topname','text','Topname',0,1,1,1,1,1,'{}',2),(91,8,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',3),(92,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(93,7,'product_belongsto_top_category_relationship','relationship','top_categories',0,1,1,1,1,1,'{\"model\":\"App\\\\TopCategory\",\"table\":\"top_categories\",\"type\":\"belongsTo\",\"column\":\"top_category_id\",\"key\":\"id\",\"label\":\"topname\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}',34),(94,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(95,9,'top_category_id','select_dropdown','Top Category Id',1,1,1,1,1,1,'{}',2),(96,9,'name','text','Name',1,1,1,1,1,1,'{}',3),(97,9,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(98,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(99,7,'product_belongsto_sub_category_relationship','relationship','sub_categories',0,1,1,1,1,1,'{\"model\":\"App\\\\SubCategory\",\"table\":\"sub_categories\",\"type\":\"belongsTo\",\"column\":\"sub_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":null}',35),(108,11,'id','number','Id',1,0,0,0,0,0,'{}',1),(109,11,'title','text','Title',1,1,1,1,1,1,'{}',2),(110,11,'user_id','number','User Id',1,0,0,0,0,0,'{}',3),(111,11,'category_id','number','Category Id',1,0,0,0,0,0,'{\"default\":1}',4),(112,11,'image','image','Image',1,1,1,1,1,1,'{}',5),(113,11,'content','rich_text_box','Content',1,1,1,1,1,1,'{}',6),(114,11,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(115,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(116,12,'id','number','Id',1,0,0,0,0,0,'{}',1),(117,12,'name','text','Name',1,1,1,1,1,1,'{}',2),(118,12,'description','text_area','Description',1,1,1,1,1,1,'{}',3),(119,12,'image','image','Image',1,1,1,1,1,1,'{}',4),(120,12,'nickname','text','Nickname',1,1,1,1,1,1,'{}',5),(121,12,'dart_style','text','Dart Style',1,1,1,1,1,1,'{}',6),(122,12,'throwing_style','text','Throwing Style',1,1,1,1,1,1,'{}',7),(123,12,'best_match','text_area','Best Match',1,1,1,1,1,1,'{}',8),(124,12,'rank_title','text','Rank Title',1,1,1,1,1,1,'{}',9),(125,12,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',10),(126,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2020-08-17 21:21:40','2020-08-17 21:21:40'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2020-08-17 21:21:40','2020-08-17 21:21:40'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2020-08-17 21:21:40','2020-08-17 21:21:40'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2020-08-17 21:21:50','2020-08-17 21:21:50'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2020-08-17 21:21:52','2020-08-17 21:21:52'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2020-08-17 21:21:53','2020-08-17 21:21:53'),(7,'products','products','Product','Products','voyager-bag','App\\Product',NULL,NULL,NULL,1,0,'{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"desc\",\"default_search_key\":\"name\",\"scope\":null}','2020-08-24 21:38:27','2020-08-24 21:43:18'),(8,'top_categories','top-categories','Top Category','Top Categories','voyager-categories','App\\TopCategory',NULL,NULL,NULL,1,0,'{\"order_column\":\"topname\",\"order_display_column\":\"topname\",\"order_direction\":\"asc\",\"default_search_key\":null}','2020-08-24 21:40:23','2020-08-24 21:40:23'),(9,'sub_categories','sub-categories','Sub Category','Sub Categories','voyager-folder','App\\SubCategory',NULL,NULL,NULL,1,0,'{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"desc\",\"default_search_key\":\"name\"}','2020-08-24 21:46:41','2020-08-24 21:46:41'),(11,'blogs','blogs','Blog','Blogs','voyager-documentation','App\\Blog',NULL,NULL,NULL,1,0,'{\"order_column\":\"title\",\"order_display_column\":\"title\",\"order_direction\":\"desc\",\"default_search_key\":\"title\",\"scope\":null}','2020-10-27 12:59:34','2020-10-28 02:50:39'),(12,'players','players','Player','Players','voyager-people','App\\Player',NULL,NULL,NULL,1,0,'{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"desc\",\"default_search_key\":\"name\"}','2020-10-27 13:00:21','2020-10-27 13:00:21');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'main','blogs'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-07-18 07:41:03.251880'),(2,'auth','0001_initial','2020-07-18 07:41:03.414185'),(3,'admin','0001_initial','2020-07-18 07:41:03.876118'),(4,'admin','0002_logentry_remove_auto_add','2020-07-18 07:41:04.014815'),(5,'admin','0003_logentry_add_action_flag_choices','2020-07-18 07:41:04.024389'),(6,'contenttypes','0002_remove_content_type_name','2020-07-18 07:41:04.082507'),(7,'auth','0002_alter_permission_name_max_length','2020-07-18 07:41:04.147327'),(8,'auth','0003_alter_user_email_max_length','2020-07-18 07:41:04.162638'),(9,'auth','0004_alter_user_username_opts','2020-07-18 07:41:04.176109'),(10,'auth','0005_alter_user_last_login_null','2020-07-18 07:41:04.218479'),(11,'auth','0006_require_contenttypes_0002','2020-07-18 07:41:04.223285'),(12,'auth','0007_alter_validators_add_error_messages','2020-07-18 07:41:04.239486'),(13,'auth','0008_alter_user_username_max_length','2020-07-18 07:41:04.257325'),(14,'auth','0009_alter_user_last_name_max_length','2020-07-18 07:41:04.276351'),(15,'auth','0010_alter_group_name_max_length','2020-07-18 07:41:04.293282'),(16,'auth','0011_update_proxy_permissions','2020-07-18 07:41:04.310639'),(17,'sessions','0001_initial','2020-07-18 07:41:04.334138');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('grx8hy1lbgyj1hm1fixcp8kj54uy27am','YmQxZjdjZTM5N2JkMjkzMzgzZjVjNWNjYWRkM2M4ZDA5YzI2ZmRjODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MDY4MjRjZTcwNmNkMDk3ZTc5NDMzN2FhZjJlOWE0OTA1ZDc5OWNiIn0=','2020-08-01 07:44:44.388398');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'Aut voluptatibus perferendis enim fugit cum repellat consequatur adipisci tempore quisquam.','White Rabbit as he spoke. \'A cat may look at a reasonable pace,\' said the Caterpillar. \'I\'m afraid.','2020-07-17 03:28:34','2020-07-17 03:28:34'),(2,'Voluptatem distinctio ipsum adipisci consequatur aut et ducimus.','Mouse in the lock, and to her that she was now, and she tried her best to climb up one of these.','2020-07-17 03:28:34','2020-07-17 03:28:34'),(3,'Temporibus porro laudantium et ab et voluptate rerum facilis eos.','March Hare. \'I didn\'t know it to speak first, \'why your cat grins like that?\' \'It\'s a friend of.','2020-07-17 03:28:34','2020-07-17 03:28:34'),(4,'Ut optio et placeat sint dolor quis.','Gryphon. \'They can\'t have anything to say, she simply bowed, and took the cauldron of soup off the.','2020-07-17 03:28:34','2020-07-17 03:28:34'),(5,'Accusantium nam consequatur molestiae fugit et esse sit ad delectus odit.','English); \'now I\'m opening out like the right words,\' said poor Alice, and she crossed her hands.','2020-07-17 03:28:34','2020-07-17 03:28:34'),(7,'Chinii durtai awga ah hen be?','Shagai law bish','2020-08-06 21:25:40','2020-08-06 21:25:40');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flights` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `range` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flight_shape` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flight_thickness` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `micron` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_sliders`
--

DROP TABLE IF EXISTS `home_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `top_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bot_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_sliders`
--

LOCK TABLES `home_sliders` WRITE;
/*!40000 ALTER TABLE `home_sliders` DISABLE KEYS */;
INSERT INTO `home_sliders` VALUES (1,'Шинэ бараа ирлээ','img/photo-1579019163248-e7761241d85a.jpg','Хоёрыг авбал нэг үнэгүй онцгой урамшуулал','Энэ сарыг дуустал','Очиж үзэх','/admin/profile','2020-07-16 16:00:00','2020-07-16 16:00:00'),(2,'Шинэ бараа ирлээ','img/photo-1582172958571-208b55ba4bab.jpg','Гурвыг авбал нэг үнэгүй онцгой урамшуулал','8-р сарыг дуустал','Сонирхох','/admin/chart','2020-07-16 16:00:00','2020-07-16 16:00:00');
/*!40000 ALTER TABLE `home_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2020-08-17 21:21:41','2020-08-17 21:21:41','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,9,'2020-08-17 21:21:41','2020-10-27 13:00:40','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,8,'2020-08-17 21:21:41','2020-10-27 13:00:40','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,7,'2020-08-17 21:21:41','2020-10-27 13:00:40','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,13,'2020-08-17 21:21:41','2020-10-27 13:00:40',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2020-08-17 21:21:41','2020-08-24 21:41:08','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2020-08-17 21:21:41','2020-08-24 21:41:08','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2020-08-17 21:21:41','2020-08-24 21:41:08','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2020-08-17 21:21:41','2020-08-24 21:41:08','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,14,'2020-08-17 21:21:41','2020-10-27 13:00:40','voyager.settings.index',NULL),(11,1,'Categories','','_self','voyager-categories',NULL,NULL,12,'2020-08-17 21:21:51','2020-10-27 13:00:40','voyager.categories.index',NULL),(12,1,'Posts','','_self','voyager-news',NULL,NULL,10,'2020-08-17 21:21:53','2020-10-27 13:00:40','voyager.posts.index',NULL),(13,1,'Pages','','_self','voyager-file-text',NULL,NULL,11,'2020-08-17 21:21:54','2020-10-27 13:00:40','voyager.pages.index',NULL),(14,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2020-08-17 21:21:57','2020-08-24 21:41:08','voyager.hooks',NULL),(15,1,'Products','','_self','voyager-bag',NULL,NULL,2,'2020-08-24 21:38:27','2020-08-24 21:41:08','voyager.products.index',NULL),(16,1,'Top Categories','','_self','voyager-categories',NULL,NULL,5,'2020-08-24 21:40:23','2020-10-27 13:00:40','voyager.top-categories.index',NULL),(17,1,'Sub Categories','','_self','voyager-folder',NULL,NULL,6,'2020-08-24 21:46:42','2020-10-27 13:00:40','voyager.sub-categories.index',NULL),(19,1,'Blogs','','_self','voyager-documentation',NULL,NULL,4,'2020-10-27 12:59:34','2020-10-27 13:00:40','voyager.blogs.index',NULL),(20,1,'Players','','_self','voyager-people',NULL,NULL,3,'2020-10-27 13:00:21','2020-10-27 13:00:36','voyager.players.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2020-08-17 21:21:41','2020-08-17 21:21:41');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_06_29_180034_create_players_table',1),(5,'2020_07_04_094203_create_top_categories_table',1),(6,'2020_07_04_100517_create_products_table',1),(7,'2020_07_04_104549_create_sub_categories_table',1),(8,'2020_07_04_120459_create_accessories_table',1),(9,'2020_07_04_123550_create_steel_tips_table',1),(10,'2020_07_04_124148_create_soft_tips_table',1),(11,'2020_07_04_124533_create_player_darts_table',1),(12,'2020_07_04_125329_create_flights_table',1),(13,'2020_07_04_130405_create_shafts_table',1),(14,'2020_07_07_222614_create_faqs_table',1),(15,'2020_07_08_061109_create_blogs_table',1),(16,'2020_07_08_071410_create_blog_categories_table',1),(17,'2020_07_08_112436_create_sessions_table',1),(18,'2020_07_17_043115_create_user_roles_table',1),(19,'2020_07_17_081805_create_home_sliders_table',1),(20,'2016_01_01_000000_add_voyager_user_fields',2),(21,'2016_01_01_000000_create_data_types_table',2),(22,'2016_05_19_173453_create_menu_table',2),(23,'2016_10_21_190000_create_roles_table',2),(24,'2016_10_21_190000_create_settings_table',2),(25,'2016_11_30_135954_create_permission_table',2),(26,'2016_11_30_141208_create_permission_role_table',2),(27,'2016_12_26_201236_data_types__add__server_side',2),(28,'2017_01_13_000000_add_route_to_menu_items_table',2),(29,'2017_01_14_005015_create_translations_table',2),(30,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',2),(31,'2017_03_06_000000_add_controller_to_data_types_table',2),(32,'2017_04_21_000000_add_order_to_data_rows_table',2),(33,'2017_07_05_210000_add_policyname_to_data_types_table',2),(34,'2017_08_05_000000_add_group_to_settings_table',2),(35,'2017_11_26_013050_add_user_role_relationship',2),(36,'2017_11_26_015000_create_user_roles_table',3),(37,'2018_03_11_000000_add_user_settings',3),(40,'2016_01_01_000000_create_pages_table',4),(41,'2016_01_01_000000_create_posts_table',4),(42,'2016_02_15_204651_create_categories_table',4),(43,'2017_04_11_000000_alter_post_nullable_fields_table',4),(52,'2018_03_14_000000_add_details_to_data_types_table',5),(53,'2018_03_16_000000_make_settings_value_nullable',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2020-08-17 21:21:54','2020-08-17 21:21:54');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),(21,3),(22,3),(23,3),(24,3),(25,3),(26,3),(27,3),(28,3),(29,3),(30,3),(31,3),(32,3),(33,3),(34,3),(35,3),(36,3),(37,3),(38,3),(39,3),(40,3),(41,3),(42,3),(43,3),(44,3),(45,3),(46,3),(47,3),(48,3),(49,3),(50,3),(51,3),(52,3),(53,3),(54,3),(55,3),(56,3),(62,3),(63,3),(64,3),(65,3),(66,3),(67,3),(68,3),(69,3),(70,3),(71,3);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2020-08-17 21:21:42','2020-08-17 21:21:42'),(2,'browse_bread',NULL,'2020-08-17 21:21:42','2020-08-17 21:21:42'),(3,'browse_database',NULL,'2020-08-17 21:21:42','2020-08-17 21:21:42'),(4,'browse_media',NULL,'2020-08-17 21:21:42','2020-08-17 21:21:42'),(5,'browse_compass',NULL,'2020-08-17 21:21:42','2020-08-17 21:21:42'),(6,'browse_menus','menus','2020-08-17 21:21:42','2020-08-17 21:21:42'),(7,'read_menus','menus','2020-08-17 21:21:42','2020-08-17 21:21:42'),(8,'edit_menus','menus','2020-08-17 21:21:42','2020-08-17 21:21:42'),(9,'add_menus','menus','2020-08-17 21:21:42','2020-08-17 21:21:42'),(10,'delete_menus','menus','2020-08-17 21:21:42','2020-08-17 21:21:42'),(11,'browse_roles','roles','2020-08-17 21:21:42','2020-08-17 21:21:42'),(12,'read_roles','roles','2020-08-17 21:21:42','2020-08-17 21:21:42'),(13,'edit_roles','roles','2020-08-17 21:21:43','2020-08-17 21:21:43'),(14,'add_roles','roles','2020-08-17 21:21:43','2020-08-17 21:21:43'),(15,'delete_roles','roles','2020-08-17 21:21:43','2020-08-17 21:21:43'),(16,'browse_users','users','2020-08-17 21:21:43','2020-08-17 21:21:43'),(17,'read_users','users','2020-08-17 21:21:43','2020-08-17 21:21:43'),(18,'edit_users','users','2020-08-17 21:21:43','2020-08-17 21:21:43'),(19,'add_users','users','2020-08-17 21:21:43','2020-08-17 21:21:43'),(20,'delete_users','users','2020-08-17 21:21:43','2020-08-17 21:21:43'),(21,'browse_settings','settings','2020-08-17 21:21:43','2020-08-17 21:21:43'),(22,'read_settings','settings','2020-08-17 21:21:43','2020-08-17 21:21:43'),(23,'edit_settings','settings','2020-08-17 21:21:43','2020-08-17 21:21:43'),(24,'add_settings','settings','2020-08-17 21:21:43','2020-08-17 21:21:43'),(25,'delete_settings','settings','2020-08-17 21:21:43','2020-08-17 21:21:43'),(26,'browse_categories','categories','2020-08-17 21:21:51','2020-08-17 21:21:51'),(27,'read_categories','categories','2020-08-17 21:21:51','2020-08-17 21:21:51'),(28,'edit_categories','categories','2020-08-17 21:21:51','2020-08-17 21:21:51'),(29,'add_categories','categories','2020-08-17 21:21:51','2020-08-17 21:21:51'),(30,'delete_categories','categories','2020-08-17 21:21:51','2020-08-17 21:21:51'),(31,'browse_posts','posts','2020-08-17 21:21:53','2020-08-17 21:21:53'),(32,'read_posts','posts','2020-08-17 21:21:53','2020-08-17 21:21:53'),(33,'edit_posts','posts','2020-08-17 21:21:53','2020-08-17 21:21:53'),(34,'add_posts','posts','2020-08-17 21:21:53','2020-08-17 21:21:53'),(35,'delete_posts','posts','2020-08-17 21:21:53','2020-08-17 21:21:53'),(36,'browse_pages','pages','2020-08-17 21:21:54','2020-08-17 21:21:54'),(37,'read_pages','pages','2020-08-17 21:21:54','2020-08-17 21:21:54'),(38,'edit_pages','pages','2020-08-17 21:21:54','2020-08-17 21:21:54'),(39,'add_pages','pages','2020-08-17 21:21:54','2020-08-17 21:21:54'),(40,'delete_pages','pages','2020-08-17 21:21:54','2020-08-17 21:21:54'),(41,'browse_hooks',NULL,'2020-08-17 21:21:57','2020-08-17 21:21:57'),(42,'browse_products','products','2020-08-24 21:38:27','2020-08-24 21:38:27'),(43,'read_products','products','2020-08-24 21:38:27','2020-08-24 21:38:27'),(44,'edit_products','products','2020-08-24 21:38:27','2020-08-24 21:38:27'),(45,'add_products','products','2020-08-24 21:38:27','2020-08-24 21:38:27'),(46,'delete_products','products','2020-08-24 21:38:27','2020-08-24 21:38:27'),(47,'browse_top_categories','top_categories','2020-08-24 21:40:23','2020-08-24 21:40:23'),(48,'read_top_categories','top_categories','2020-08-24 21:40:23','2020-08-24 21:40:23'),(49,'edit_top_categories','top_categories','2020-08-24 21:40:23','2020-08-24 21:40:23'),(50,'add_top_categories','top_categories','2020-08-24 21:40:23','2020-08-24 21:40:23'),(51,'delete_top_categories','top_categories','2020-08-24 21:40:23','2020-08-24 21:40:23'),(52,'browse_sub_categories','sub_categories','2020-08-24 21:46:41','2020-08-24 21:46:41'),(53,'read_sub_categories','sub_categories','2020-08-24 21:46:41','2020-08-24 21:46:41'),(54,'edit_sub_categories','sub_categories','2020-08-24 21:46:41','2020-08-24 21:46:41'),(55,'add_sub_categories','sub_categories','2020-08-24 21:46:41','2020-08-24 21:46:41'),(56,'delete_sub_categories','sub_categories','2020-08-24 21:46:41','2020-08-24 21:46:41'),(62,'browse_blogs','blogs','2020-10-27 12:59:34','2020-10-27 12:59:34'),(63,'read_blogs','blogs','2020-10-27 12:59:34','2020-10-27 12:59:34'),(64,'edit_blogs','blogs','2020-10-27 12:59:34','2020-10-27 12:59:34'),(65,'add_blogs','blogs','2020-10-27 12:59:34','2020-10-27 12:59:34'),(66,'delete_blogs','blogs','2020-10-27 12:59:34','2020-10-27 12:59:34'),(67,'browse_players','players','2020-10-27 13:00:21','2020-10-27 13:00:21'),(68,'read_players','players','2020-10-27 13:00:21','2020-10-27 13:00:21'),(69,'edit_players','players','2020-10-27 13:00:21','2020-10-27 13:00:21'),(70,'add_players','players','2020-10-27 13:00:21','2020-10-27 13:00:21'),(71,'delete_players','players','2020-10-27 13:00:21','2020-10-27 13:00:21');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_darts`
--

DROP TABLE IF EXISTS `player_darts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_darts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `weight` bigint(20) NOT NULL,
  `dart_weight` bigint(20) NOT NULL,
  `dart_tungsten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dart_set` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dart_flight` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dart_shaft` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimensions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_darts`
--

LOCK TABLES `player_darts` WRITE;
/*!40000 ALTER TABLE `player_darts` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_darts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dart_style` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `throwing_style` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `best_match` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Queenie Reynolds','Iste et repellendus aut unde nemo. Sequi quibusdam sapiente rerum est quod. Blanditiis ut non eligendi aperiam.','/assets/images/dummy/player3.jpg','Cormier Knolls','Parallel','Left Handed','2009 vs Martin Adams (6-7)','Winner - Players Championship Finals 2010','2020-07-17 03:28:34','2020-07-17 03:28:34'),(2,'Catharine Volkman','Sit est eius iure similique animi neque repellat et. Ducimus sed iste ipsa officiis deserunt. Quae saepe quia laborum explicabo sed.','/assets/images/dummy/player3.jpg','Marvin Track','Scallop','Right Handed','2012 vs Wes Newton (11-5)','Winner - Players Championship Finals 2010','2020-07-17 03:28:34','2020-07-17 03:28:34'),(3,'Mrs. Vergie Armstrong','Repellat repellendus dolorem assumenda numquam possimus consequatur. Eos omnis dolor nihil ut inventore. Ea et ut illum blanditiis.','/assets/images/dummy/player2.jpg','Fadel Field','Specialist','Left Handed','2010 vs Mervyn King (13-11)','European Championship 2012','2020-07-17 03:28:34','2020-07-17 03:28:34'),(4,'Kenny Dickens','Tenetur omnis nihil fugiat velit et. Inventore quibusdam in ut sequi ad expedita. A officia sit occaecati magnam odit in laudantium. Nostrum magni maxime asperiores tempore.','/assets/images/dummy/player4.jpg','Kelsie Spurs','Specialist','Right Handed','2010 vs Mervyn King (13-11)','Last 32 - World Championship 2011','2020-07-17 03:28:34','2020-07-17 03:28:34'),(5,'Marcelle Prohaska','Voluptatem doloremque repellat sed consectetur cumque explicabo omnis. Delectus ut sit officia optio. Mollitia dicta iusto possimus. Incidunt quo qui voluptatibus ut ea.','/assets/images/dummy/player4.jpg','Nader Light','Specialist','Left Handed','2010 vs Mervyn King (13-11)','European Championship 2012','2020-07-17 03:28:34','2020-07-17 03:28:34'),(6,'Miss Jenifer Ratke IV','Voluptatem est tenetur soluta eveniet dignissimos. Soluta voluptas sit nobis ut velit facere. Modi provident fuga voluptatem inventore. Debitis dolorum debitis quia itaque iste.','/assets/images/dummy/player2.jpg','Metz Drive','Specialist','Right Handed','2009 vs Martin Adams (6-7)','Winner - Players Championship Finals 2010','2020-07-17 03:28:34','2020-07-17 03:28:34'),(7,'Ryder Senger','Asperiores a qui possimus harum. Natus sequi ut consequatur sed alias sit. Ea suscipit quis dolor fuga non autem laborum doloribus. Quam nemo mollitia vitae non commodi.','/assets/images/dummy/player4.jpg','Kiera View','Scallop','Right Handed','2010 vs Mervyn King (13-11)','Runner-up - World Masters 2009','2020-07-17 03:28:34','2020-07-17 03:28:34'),(8,'Carissa Hyatt','Officiis enim earum error omnis omnis et aut. Nihil ea dolores aspernatur molestiae est aut qui animi. Cupiditate aspernatur autem ea id. Deleniti est nemo dolorem non culpa in.','/assets/images/dummy/player1.jpg','Jorge Course','Parallel','Right Handed','Last 32 2011','European Championship 2012','2020-07-17 03:28:34','2020-07-17 03:28:34'),(9,'Dr. Jade Hermiston','Illum est distinctio in sunt dolores mollitia ut. Minima ipsum illum nisi placeat minus molestias. Temporibus minus accusantium eos culpa non quasi et esse. Eos a autem est.','/assets/images/dummy/player2.jpg','Ayden Burg','Parallel','Left Handed','2009 vs Martin Adams (6-7)','Runner-up - World Masters 2009','2020-07-17 03:28:34','2020-07-17 03:28:34'),(10,'Rubye Runte','Iure atque ipsam voluptatum et hic ipsam illum rerum. In et placeat delectus. Eos voluptatem natus eos consequatur est eum et. Quia deserunt corrupti officia assumenda.','/assets/images/dummy/player4.jpg','Kub Crescent','Scallop','Left Handed','2010 vs Mervyn King (13-11)','Runner-up - World Masters 2009','2020-07-17 03:28:34','2020-07-17 03:28:34'),(11,'Tomas Kunde','Eaque excepturi expedita dolores eos. Esse atque perspiciatis id ipsa nisi molestiae. Amet alias hic qui aut quo exercitationem. Omnis totam nam repudiandae explicabo ut.','players/October2020/BATBkSbAb6cfTvjezZ1g.jpg','Tamia Rue','Scallop','Left Handed','2009 vs Martin Adams (6-7)','Runner-up - World Masters 2009','2020-07-17 03:28:00','2020-10-28 03:46:32'),(12,'Prof. Keven Shanahan MD','Voluptate omnis officia veritatis quo voluptatem. Odio earum est est laudantium earum. Non voluptatum quia perferendis tempora ullam assumenda.','/assets/images/dummy/player3.jpg','Cassidy Prairie','Parallel','Left Handed','2012 vs Wes Newton (11-5)','Last 32 - World Championship 2011','2020-07-17 03:28:34','2020-07-17 03:28:34'),(13,'Lambert Littel','Hic tenetur aspernatur qui in possimus. Molestiae et harum ratione saepe consequatur soluta qui. Molestiae incidunt aut ut facere deleniti aut. Asperiores veritatis tempore reiciendis.','/assets/images/dummy/player4.jpg','Julius Radial','Specialist','Left Handed','2012 vs Wes Newton (11-5)','Last 32 - World Championship 2011','2020-07-17 03:28:34','2020-07-17 03:28:34'),(14,'Miss Aimee Gleichner','Rem voluptatem impedit dolore alias corrupti temporibus quod. Repellat aut beatae temporibus sunt. Est et nulla magni ducimus esse cum molestiae.','/assets/images/dummy/player4.jpg','Schmidt Crescent','Scallop','Right Handed','2012 vs Wes Newton (11-5)','European Championship 2012','2020-07-17 03:28:34','2020-07-17 03:28:34'),(15,'Cordie Kuhic','Aut omnis voluptatum dolor rerum dolor exercitationem. Est rerum fugiat laudantium aliquid fuga sunt. Et nostrum cum aliquam architecto. Sed maxime eveniet illo modi adipisci et.','/assets/images/dummy/player1.jpg','Schultz Run','Scallop','Right Handed','Last 32 2011','Last 32 - World Championship 2011','2020-07-17 03:28:34','2020-07-17 03:28:34'),(16,'Oswald Weimann','Temporibus sapiente ut eos nam numquam. Aut illo quia consequuntur. Hic praesentium temporibus veritatis et ducimus expedita non. Reiciendis enim est et quod vitae.','/assets/images/dummy/player4.jpg','Emmitt Turnpike','Scallop','Right Handed','2012 vs Wes Newton (11-5)','Winner - Players Championship Finals 2010','2020-07-17 03:28:34','2020-07-17 03:28:34'),(17,'Mrs. Berneice Abernathy MD','Nihil vero voluptatem et pariatur recusandae eos rem. Quibusdam laboriosam consequatur inventore sint animi ipsa dolor optio. Ea eaque aut sit facere molestiae et non mollitia.','/assets/images/dummy/player2.jpg','Fleta Lane','Specialist','Left Handed','2010 vs Mervyn King (13-11)','Runner-up - World Masters 2009','2020-07-17 03:28:34','2020-07-17 03:28:34'),(18,'Mrs. Gracie Treutel V','Possimus molestias dicta in est optio culpa fuga. Suscipit tenetur ratione explicabo autem et officia. Enim voluptatem et cumque placeat tenetur sunt eos.','/assets/images/dummy/player4.jpg','Marvin Common','Specialist','Left Handed','Last 32 2011','Last 32 - World Championship 2011','2020-07-17 03:28:34','2020-07-17 03:28:34'),(19,'Jed Jakubowski','Dolore dolores ducimus est quo reiciendis culpa similique. Voluptate quia quis impedit sit est voluptatem rerum magnam. Veritatis aut vitae qui esse quia quia quia.','/assets/images/dummy/player3.jpg','Schroeder Streets','Specialist','Right Handed','2009 vs Martin Adams (6-7)','Winner - Players Championship Finals 2010','2020-07-17 03:28:34','2020-07-17 03:28:34'),(20,'Ms. Leonor Prohaska','Qui eveniet rem rem aut nam libero. Dolores occaecati alias vel aut quas nihil et hic. Commodi sit iusto quis nisi quia eos id.','/assets/images/dummy/player2.jpg','Leannon Lane','Specialist','Right Handed','Last 32 2011','Runner-up - World Masters 2009','2020-07-17 03:28:34','2020-07-17 03:28:34');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2020-08-17 21:21:53','2020-08-17 21:21:53'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2020-08-17 21:21:53','2020-08-17 21:21:53'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2020-08-17 21:21:53','2020-08-17 21:21:53'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2020-08-17 21:21:53','2020-08-17 21:21:53');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `rating` int(11) NOT NULL,
  `top_category_id` bigint(20) unsigned NOT NULL,
  `sub_category_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `darts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `packaging` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flights` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shafts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `barrel_weight` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tungsten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thread` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight_dist` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `barrel_prof` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `front_prof` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `point_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `grip_zone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `grip_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `grip_level` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `groove_colour` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `laser_etched` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `surface_finish` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimensions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `range` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (15,'Apocalypse 22 gram','129000','[\"products\\/August2020\\/hLIz0z6KEUs3a7GtnXrR.png\",\"products\\/August2020\\/qMlInnIgozbJlcmkJHhZ.png\",\"products\\/August2020\\/BVEO0rErro7E0MSBraux.png\",\"products\\/August2020\\/nwQxwjE4ngcvkpyyzHAZ.png\"]','Finished in our stylish and unique black coated finish with a superb choice of grips coupled with exceptional performance characteristics. All round enhanced throw versatility with a complete range that\'s ready to start the career of any player.',1,5,2,13,'2020-08-28 07:46:00','2020-09-15 13:53:15','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.104','x1 Prism 1.0 medium 7015.204','22 grams','Brass','2BA','Centre','Specialist','Eliptical','Black high tensile','Full length','Square grooves','3 (1 = Smooth, 5 = Aggressive)','Black','Black Coated Finish','Black Coated Finish','8.8mm x 53.3mm','1207-22','5023231012074','Apocalypse','https://www.youtube.com/embed/qKtpzP__n8s'),(16,'Neutron 23 gram','129000','[\"products\\/August2020\\/UV6iCaJWdj54yeSNUzQR.png\",\"products\\/August2020\\/cWy0MJ0GJXb4QrDPG6M9.png\"]','Precision-machined brass darts, superbly engineered barrel designs provide consistency every time you throw. A comprehensive selection of popular styles and weights, a dart range that is perfectly suited to the entry level player.',1,5,2,13,'2020-08-28 08:07:00','2020-09-15 13:47:54','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.109','x1 Prism 1.0 medium 7015.204','23 grams','Brass','2BA','Centre','Specialist','Round','Black high tensile','Full length','Square grooves','3 (1 = Smooth, 5 = Aggressive)','Groove colour','laser etched','surface finish','8.8mm x 53.3mm','1208-21','5023231012104','Neutron','https://www.youtube.com/embed/vcY063heLDw'),(17,'Andy Fordham 24 gram','192000','[\"products\\/August2020\\/LLgURhX88fz1Gzfinmt1.png\",\"products\\/August2020\\/e1UfWK93Bbz0AuCvMnk2.png\",\"products\\/August2020\\/Mgk3M3om6R8U5EEr7JGE.png\"]','Still one of the most popular World Champions of all time, we\'ve honoured Andy with the most state-of-the-art double-mill cut blue Titanium Nitride special editions, to compliment Andy?s current Viking Raiders.',1,5,6,13,'2020-08-28 08:44:00','2020-08-28 08:44:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.158','x1 Prism Force medium 7020.202','24 grams','90% Tungsten alloy','2BA','Centre','Specialist','Eliptical','Silver effect high tensile','Full length','Specialist','4 (1 = Smooth, 5 = Aggressive)','Blue','Winmau W logo','Polished','7.85mm x 40.6mm','1431-24','5023231011732','Andy Fordham','https://www.youtube.com/embed/qKtpzP__n8s'),(18,'Majestic 24 gram','192000','[\"products\\/August2020\\/byHId3tnndDwhaFnkFP2.png\",\"products\\/August2020\\/6IXpznwhALhcoOr9ZZqa.png\"]','Majestic\'s twin technologies work together to create ultimate dart control. Ripsaw Grip Technology uses proprietary CNC angle-cut mapping with a classic torpedo profile, giving players free-flowing accuracy with every throw. C-axis machining and geometry provides maximum rotational stability and control. Ultimate performance and unrivalled consistency.',1,4,2,13,'2020-08-28 09:00:00','2020-08-28 09:00:00','x3 Darts per set','Premium, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.155','x1 Prism Force medium 7020.201','24 grams','90% Tungsten alloy','2BA','Front','Torpedo','Elliptical','Black Free-Flo','Centre','Ripsaw','4 (1 = Smooth, 5 = Aggressive)','Black','Winmau W logo','Onyx Performance Coating','8.1mm x 40.6mm','1432-24','5023231011756','Majestic','https://www.youtube.com/embed/0uu2HkdYH18'),(19,'Sabotage 22 gram','192000','[\"products\\/August2020\\/zVwIoQ1rSTEhknUHED5b.png\",\"products\\/August2020\\/STckfb63su1XcfG3NmGl.png\",\"products\\/August2020\\/IJvHeRlICOglMIEQ2b59.png\"]','Incorporating Winmau\'s renowned and aggressive Ripsaw grip technology. Sabotage delivers an unsurpassed grip control combined with popular parallel profile. New Onyx Coated version completes the iconic range',1,4,2,13,'2020-08-28 09:12:00','2020-08-28 09:12:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.109','x1 Prism Force medium 7020.206','22 grams','90% Tungsten alloy','2BA','Center','Parallel','Tapered','Black high tensile','Full length','Buttress grooves','4 (1 = Smooth, 5 = Aggressive)','Black','Winmau W logo','Onyx Performance Coating','6.4mm x 50.8mm','1433-22','5023231011770','Sabotage','https://www.youtube.com/embed/tseEzXp15F4'),(20,'Sicario 25 gram','192000','[\"products\\/August2020\\/GrP8VxLTIvh6bETbJa5H.png\",\"products\\/August2020\\/pYFaMHEt5PoKm4nUPXWm.png\"]','Our latest and greatest design of choice for serious players. Sicario features cutting-edge unique mini-scallop cluster grip technology, giving your fingers the sweetest feel ever and electric control, making these darts our most connected design. Finished with a co-ordinated tri-colour scheme these striking darts combine style, innovation and ultra-modern performance all together.',1,4,2,13,'2020-08-28 10:26:00','2020-08-28 10:26:00','x3 Darts per set','Premium, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.148','x1 Prism Force medium 7020.201','25 grams','90% Tungsten alloy','2BA','Centre','Torpedo','Tapered','Black Free-Flo','Front and rear','Cluster grip','4 (1 = Smooth, 5 = Aggressive)','Red','Winmau W logo','Onyx Performance Coating','7.9mm x 45.7mm','1435-25','5023231011954','Sicario','https://www.youtube.com/embed/ubii0vI1CaE'),(22,'Dennis Priestley 22 gram','192000','[\"products\\/August2020\\/dddv5MyyO2MPFrlArmew.png\",\"products\\/August2020\\/ButGN83Ra3OPI6TaNpB2.png\",\"products\\/August2020\\/Hh4nrA5h97ISou5QsqTT.png\",\"products\\/August2020\\/tIONNgndAmKqJJMMHg5v.png\"]','A testament to Double World Champion Dennis Priestley\'s incredible career, these latest special editions are a mark of respect to one of darts true global legends and ambassadors of the game - the perfect match.',1,5,6,13,'2020-08-30 09:42:00','2020-08-30 09:42:00','x3 Darts per set','High end, laser engraved aluminium point protector','x1 Prism Delta standard extra thick 6915.210','x1 Prism Force medium 7020.201','22 grams','90% Tungsten alloy','2BA','Front','Specialist','Eliptical','Black high tensile','Full length','Square grooves','3 (1 = Smooth, 5 = Aggressive)','Black, Red','Winmau W logo','Vetalic Performance Coating','7.55mm x 48.3mm','1436-22','5023231011961','Dennis Priestley','https://www.youtube.com/embed/ArTGd-LLrNM'),(23,'Simon Whitlock 22 gram','192000','[\"products\\/August2020\\/Y0yxfJ22gXwztou8OFlR.png\",\"products\\/August2020\\/OlYRkWAH9D34xSGuhotm.png\",\"products\\/August2020\\/NN1iyOkFIbdSA2wa5ElV.png\",\"products\\/August2020\\/m6kXcIE2H9UWl0jzYcs1.png\"]','Commemorating one of the world\'s most prolific players and characters, designed to showcase Simon\'s huge passion and life-long commitment to darts - these Special Editions capture the Wizard\'s magic dust for your game.',1,5,6,13,'2020-08-30 09:53:00','2020-09-15 13:10:00','x3 Darts per set','High end, laser engraved aluminium point protector','X1 Prism Delta standard extra thick 6915.209','x1 Prism Force medium 7020.201','22 grams','90% Tungsten alloy','2BA','Centre','Specialist','Tapered','Black Free-Flo','Full length','Specialist','4 (1 = Smooth, 5 = Aggressive)','Red','Winmau W logo','Dual Coating','6.0-7.2mm x 50.8mm','1437-22','5023231012418','Simon Whitlock','https://www.youtube.com/embed/E4Zy0mcCqWM'),(24,'Apocalypse 20 gram','129900','[\"products\\/August2020\\/K0HcpI9PYIKP4LkAPoCu.png\",\"products\\/August2020\\/IXQka4Nim2yMHp2IPvJi.png\",\"products\\/August2020\\/QGB6O8IPGsgaPKW3YYT8.png\",\"products\\/August2020\\/C9He71xzUT1ybHkAIG44.png\"]','Finished in our stylish and unique black coated finish with a superb choice of grips coupled with exceptional performance characteristics. All-round enhanced throw versatility with a complete range that\'s ready to start the career of any player.',0,5,3,14,'2020-08-31 05:28:00','2020-09-15 14:02:22','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.104','x1 Prism 1.0 medium 7015.204','20 grams','Brass','2BA','Centre','Specialist','Tapered','Softip','Front and rear','Medium knurl','4 (1 = Smooth, 5 = Aggressive)','Black, Red','Black Coated Finish','Black Coated Finish','8.8mm x 48.3mm','2222-20','5023231012364','Apocalypse','https://www.youtube.com/embed/Y9xsYwh58vc'),(25,'Apocalypse 21 gram','129900','[\"products\\/August2020\\/7fSaI6Ih2pTqXjPV3HTT.png\",\"products\\/August2020\\/hrnn3206I4jJXVLzSy3g.png\",\"products\\/August2020\\/WDJaW2mu4i5dTHg8Wx5O.png\",\"products\\/August2020\\/VVCVsIxMPVBnwdcDxW4S.png\"]','Finished in our stylish and unique black coated finish with a superb choice of grips coupled with exceptional performance characteristics. All round enhanced throw versatility with a complete range that\'s ready to start the career of any player.',0,5,2,13,'2020-08-31 05:33:00','2020-08-31 05:33:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.104','x1 Prism 1.0 medium 7015.204','21 grams','Brass','2BA','Centre','Specialist','Round','Black high tensile','Full length','Square grooves','3 (1 = Smooth, 5 = Aggressive)','Black','Black','Black Coated Finish','8.8mm x 53.3mm','1206-21','5023231011992','Apocalypse','https://www.youtube.com/embed/Y9xsYwh58vc'),(26,'Apocalypse 24 gram','129900','[\"products\\/August2020\\/psPUqbVKF2YDz5SVl928.png\",\"products\\/August2020\\/y410Lcabzzw2bRxgkpMi.png\",\"products\\/August2020\\/M9GGqtgLWr8Yh2IXjq4M.png\",\"products\\/August2020\\/4UJHK5mgFqopilEgc9DF.png\"]','Finished in our stylish and unique black coated finish with a superb choice of grips coupled with exceptional performance characteristics. All round enhanced throw versatility with a complete range that\'s ready to start the career of any player.',0,5,2,13,'2020-08-31 05:36:00','2020-08-31 05:36:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.104','x1 Prism 1.0 medium 7015.204','24 grams','Brass','2BA','Centre','Specialist','Eliptical','Black high tensile','Full length','Square grooves','3 (1 = Smooth, 5 = Aggressive)','Black','Black','Black Coated Finish','8.8mm x 57.3mm','1207-24','5023231012081','Apocalypse','https://www.youtube.com/embed/Y9xsYwh58vc'),(27,'Apocalypse 23 gram','129900','[\"products\\/August2020\\/9MraJI0YlW4FCHM1u2o8.png\",\"products\\/August2020\\/YFEEHmLgZsGCj2VTlvYj.png\",\"products\\/August2020\\/R0wdMefILKBThJtGaECv.png\",\"products\\/August2020\\/UPabMNvIAZH2RP1bOw4E.png\"]','Finished in our stylish and unique black coated finish with a superb choice of grips coupled with exceptional performance characteristics. All round enhanced throw versatility with a complete range that\'s ready to start the career of any player.',0,5,2,13,'2020-08-31 05:44:00','2020-08-31 05:44:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.104','x1 Prism 1.0 medium 7015.204','23 grams','Brass','2BA','Centre','Specialist','Round','Black high tensile','Front and rear','Medium knurl','4 (1 = Smooth, 5 = Aggressive)','Black','Black','Black Coated Finish','8.8mm x 53.3mm','1212-23','5023231012340','Apocalypse','https://www.youtube.com/embed/Y9xsYwh58vc'),(28,'Apocalypse 25 gram','129900','[\"products\\/August2020\\/p7C7GTPdRnwGrxYoudCs.png\",\"products\\/August2020\\/GCZhbfsgrWUEkPMhdI2R.png\",\"products\\/August2020\\/zBvsYmwdRcaSxTpDQ0Ub.png\",\"products\\/August2020\\/d11L29yDPMqPiUZgTSqr.png\"]','Finished in our stylish and unique black coated finish with a superb choice of grips coupled with exceptional performance characteristics. All round enhanced throw versatility with a complete range that\'s ready to start the career of any player.',0,5,2,13,'2020-08-31 06:01:00','2020-08-31 06:01:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.104','x1 Prism 1.0 medium 7015.204','25 grams','Brass','2BA','Centre','Specialist','Round','Black high tensile','Front and rear','Medium knurl','4 (1 = Smooth, 5 = Aggressive)','Black','Black','Black Coated Finish','8.8mm x 56.2mm','1212-25','5023231012357','Apocalypse','https://www.youtube.com/embed/Y9xsYwh58vc'),(29,'Aspria 22 gram','129900','[\"products\\/September2020\\/IaMnKqMFqGqpc38RmLys.png\",\"products\\/September2020\\/fXIztzbDpAGEghEDaPfr.png\",\"products\\/September2020\\/zCeDN0wAtDDFDBL8Fw82.png\",\"products\\/September2020\\/fcgnqiWYmCIG03RZdz49.png\"]','Aspria\'s Dual Core bi-directional, precision-cut, Axis Grip features the latest CAD-CAM machining technology. Made from Winmau\'s unique Dual-Core fused billets, incorporating 95/85% tungsten front-loaded darts that herald a new era of dart design, craftsmanship and performance finished with Genuine Gold Plating and Onyx Coating.',0,1,2,13,'2020-09-02 17:45:00','2020-09-02 17:45:00','x3 Darts per set','Premium, Winmau Aluminium Point Protector','X1 Prism Delta standard extra thick 6915.200','x1 Prism Force medium 7020.201','22 grams','95%/85% Tungsten alloy Dual Core technology','2BA','Centre','Parallel','Eliptical','Black high tensile','Full length','Axis grip','5 (1 = Smooth, 5 = Aggressive)','Gold','Winmau W Logo - 85/95% tungsten','Onyx Performance Coating','6.35mm x 50mm','1409-22','5023231009357','Aspria','https://www.youtube.com/embed/0Sh8youiZMs'),(30,'Aspria 24 gram','129900','[\"products\\/September2020\\/tu9vRpVYnsFsfVsdpMpU.png\",\"products\\/September2020\\/8hDbTe9s9fvOX10hgVLk.png\",\"products\\/September2020\\/Hg48AYcyzJNWY4r4tBRT.png\",\"products\\/September2020\\/PrRNqVH5vqG9GWPe8ejh.png\"]','Aspria\'s Dual Core bi-directional, precision-cut, Axis Grip features the latest CAD-CAM machining technology. Made from Winmau\'s unique Dual-Core fused billets, incorporating 95/85% tungsten front-loaded darts that herald a new era of dart design, craftsmanship and performance finished with Genuine Gold Plating and Onyx Coating.',0,5,2,13,'2020-09-02 17:49:00','2020-09-02 17:49:00','x3 Darts per set','Premium, Winmau Aluminium Point Protector','X1 Prism Delta standard extra thick 6915.200','x1 Prism Force medium 7020.201','24 grams','95%/85% Tungsten alloy Dual Core technology','2BA','Centre','Parallel','Eliptical','Black high tensile','Full length','Axis grip','5 (1 = Smooth, 5 = Aggressive)','Gold','Winmau W Logo - 85/95% tungsten','Onyx Performance Coating','6.7mm x 50mm','1409-24','5023231009364','Aspria','https://www.youtube.com/embed/0Sh8youiZMs'),(31,'Aspria 26 gram','129900','[\"products\\/September2020\\/cLPXjlyqsU5djbt5vcpV.png\",\"products\\/September2020\\/TYtipfHrHmhfA5rFNw3K.png\",\"products\\/September2020\\/qfvWzJKNaGsZjigQH2NG.png\",\"products\\/September2020\\/23taATPu2ZghWjRbKolY.png\"]','Aspria\'s Dual Core bi-directional, precision-cut, Axis Grip features the latest CAD CAM machining technology. Made from Winmau\'s unique Dual Core fused billets, incorporating 95/85% tungsten front loaded darts that herald a new era of dart design, craftsmanship and performance finished with Genuine Gold Plating and Onyx Coating.',0,5,2,13,'2020-09-02 17:53:00','2020-09-02 17:53:00','x3 Darts per set','Premium, Winmau Aluminium Point Protector','X1 Prism Delta standard extra thick 6915.200','x1 Prism Force medium 7020.201','26 grams','95%/85% Tungsten alloy Dual Core technology','2BA','Centre','Parallel','Eliptical','Black high tensile','Full length','Axis grip','5 (1 = Smooth, 5 = Aggressive)','Gold','Winmau W Logo - 85/95% tungsten','Onyx Performance Coating','6.7mm x 50.8mm','1409-26','5023231011657','Aspria','https://www.youtube.com/embed/0Sh8youiZMs'),(32,'Aspria 21 gram','129900','[\"products\\/September2020\\/dLKEq0Nx10pU6xRREo76.png\",\"products\\/September2020\\/AyPb5KIp61N4KcHktIQD.png\",\"products\\/September2020\\/laoOVVzPfVhNc4jWmWvA.png\",\"products\\/September2020\\/GvIdSzeI5mXbKkFwgxsb.png\"]','Aspria\'s Dual Core bi-directional, precision-cut, Axis Grip features the latest CAD CAM machining technology. Made from Winmau\'s unique Dual Core fused billets, incorporating 95/85% tungsten front loaded darts that herald a new era of dart design, craftsmanship and performance finished with Genuine Gold Plating and Onyx Coating.',0,5,2,13,'2020-09-02 17:58:00','2020-09-02 17:58:00','x3 Darts per set','Premium, Winmau Aluminium Point Protector','X1 Prism Delta standard extra thick 6915.200','x1 Prism Force medium 7020.201','21 grams','95%/85% Tungsten alloy Dual Core technology','2BA','Centre','Torpedo','Tapered','Black high tensile','Full length','Axis grip','5 (1 = Smooth, 5 = Aggressive)','Gold','Winmau W Logo - 85/95% tungsten','Onyx Performance Coating','7.9mm x 40.6mm','1410-21','5023231009371','Aspria','https://www.youtube.com/embed/0Sh8youiZMs'),(33,'Aspria 23 gram','129900','[\"products\\/September2020\\/xh1o8byuWKxdIRi6fOoe.png\",\"products\\/September2020\\/XsZgI0wSp7u6BOz8cYTj.png\",\"products\\/September2020\\/U08HX2AJtoLmi25kzhTZ.png\",\"products\\/September2020\\/BG4g7vlTBUN1dvbDnN63.png\"]','Aspria\'s Dual Core bi-directional, precision-cut, Axis Grip features the latest CAD CAM machining technology. Made from Winmau\'s unique Dual Core fused billets, incorporating 95/85% tungsten front loaded darts that herald a new era of dart design, craftsmanship and performance finished with Genuine Gold Plating and Onyx Coating.',0,5,2,13,'2020-09-02 18:01:00','2020-09-02 18:01:00','x3 Darts per set','Premium, Winmau Aluminium Point Protector','X1 Prism Delta standard extra thick 6915.200','x1 Prism Force medium 7020.201','23 grams','95%/85% Tungsten alloy Dual Core technology','2BA','Centre','Torpedo','Tapered','Black high tensile','Full length','Axis grip','5 (1 = Smooth, 5 = Aggressive)','Gold','Winmau W Logo - 85/95% tungsten','Onyx Performance Coating','7.9mm x 40.6mm','1410-23','5023231009388','Aspria','https://www.youtube.com/embed/0Sh8youiZMs'),(34,'Archangel 22 gram','129900','[\"products\\/September2020\\/TXdEi0RX2CMzCIi9n7C7.png\",\"products\\/September2020\\/y8Fdqxs6DjKHBx5IeqkU.png\",\"products\\/September2020\\/tG58mlGd5JvFNxdhYGGf.png\",\"products\\/September2020\\/pcO1s6f1KaSsBn6RNvTW.png\"]','Exquisite, contemporary designs combined with double ring grips. Superb performance exceeds the demands of modern players. Complete with an ultra-modern white finish.',0,5,2,13,'2020-09-02 18:06:00','2020-09-02 18:06:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Delta standard extra thick 6915.203','x1 Prism Force medium 7020.202','22 grams','90% Tungsten alloy','2BA','Centre','Torpedo','Tapered','Silver effect high tensile','Full length','Dual grooves','3 (1 = Smooth, 5 = Aggressive)','White','Winmau W logo','Polished','7.2mm x 40.2mm','1411-22','5023231009944','Archangel','https://www.youtube.com/embed/vF3Pvau228I'),(35,'Archangel 24 gram','129900','[\"products\\/September2020\\/sLyANAe9lSXGGE43D0Cy.png\",\"products\\/September2020\\/AmUHQODMjTBA4QEDUrf2.png\",\"products\\/September2020\\/6bkVg1KyZ1VDFhbm3ZeT.png\",\"products\\/September2020\\/3Ao72e7e703klRfC55Ne.png\"]','Exquisite, contemporary designs combined with double ring grips. Superb performance exceeds the demands of modern players. Complete with ultra-modern white finish.',0,5,2,13,'2020-09-02 18:11:00','2020-09-02 18:11:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Delta standard extra thick 6915.203','x1 Prism Force medium 7020.202','24 grams','90% Tungsten alloy','2BA','Centre','Torpedo','Tapered','Silver effect high tensile','Full length','Dual grooves','3 (1 = Smooth, 5 = Aggressive)','White','Winmau W logo','Polished','7.2mm x 43.3mm','1411-24','5023231009951','Archangel','https://www.youtube.com/embed/vF3Pvau228I'),(36,'Archangel 26 gram','129900','[\"products\\/September2020\\/3J175StSjLzatfDcxVIx.png\",\"products\\/September2020\\/pNkWGKgWLbYdSZVjlljA.png\",\"products\\/September2020\\/fShHUZntfMuN97tOM6Nb.png\",\"products\\/September2020\\/KekZt5o4m3mmPBzK5xep.png\"]','Exquisite, contemporary designs combined with double ring grips. Superb performance exceeds the demands of modern players. Complete with ultra-modern white finish.',1,5,2,13,'2020-09-02 18:15:00','2020-09-02 18:15:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Delta standard extra thick 6915.203','x1 Prism Force medium 7020.202','26 grams','90% Tungsten alloy','2BA','Centre','Torpedo','Tapered','Silver effect high tensile','Full length','Dual grooves','3 (1 = Smooth, 5 = Aggressive)','White','Winmau W logo','Polished','7.5mm x 43.3mm','1411-26','5023231009968','Archangel','https://www.youtube.com/embed/vF3Pvau228I'),(37,'Archangel 23 gram','129900','[\"products\\/September2020\\/gWn51rb97GfWvhy5XZ3S.png\",\"products\\/September2020\\/b4oCUz9cxTFys2anpW3L.png\",\"products\\/September2020\\/Fuxf2L3ZkRD03Q1PZnZt.png\",\"products\\/September2020\\/ofm1oQkGCwoCafozSDBT.png\"]','Exquisite, contemporary designs combined with double ring grips. Superb performance exceeds the demands of modern players. Complete with ultra-modern white finish.',0,5,2,13,'2020-09-08 04:07:00','2020-09-08 04:07:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Delta standard extra thick 6915.203','x1 Prism Force medium 7020.202','23 grams','90% Tungsten alloy','2BA','Centre','Parallel','Tapered','Silver effect high tensile','Full length','Dual grooves','3 (1 = Smooth, 5 = Aggressive)','White','Winmau W logo','Polished','6.35mm x 50.8mm','1412-23','5023231009975','Archangel','https://www.youtube.com/embed/vF3Pvau228I'),(38,'Archangel 25 gram','129900','[\"products\\/September2020\\/ld13kMHJyIa9Q0Gv716K.png\",\"products\\/September2020\\/s7mcmmpGv1qCNHhFy1Lc.png\",\"products\\/September2020\\/3FrBzKbk4H1x4NckC2hI.png\",\"products\\/September2020\\/Ei0dTBWYa9eEOELt6Y4T.png\"]','Exquisite, contemporary designs combined with double ring grips. Superb performance exceeds the demands of modern players. Complete with an ultra-modern white finish.',0,5,2,13,'2020-09-08 04:10:00','2020-09-08 04:10:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Delta standard extra thick 6915.203','x1 Prism Force medium 7020.202','25 grams','90% Tungsten alloy','2BA','Centre','Parallel','Tapered','Silver effect high tensile','Full length','Dual grooves','3 (1 = Smooth, 5 = Aggressive)','White','Winmau W logo','Polished','6.6mm x 50.8mm','1412-25','5023231009982','Archangel','https://www.youtube.com/embed/vF3Pvau228I'),(39,'Archangel 27 gram','129900','[\"products\\/September2020\\/qiLZXWVOwA5ZJ0KwxCAE.png\",\"products\\/September2020\\/IUHa1dmESRsREkagXgzp.png\",\"products\\/September2020\\/mQQCQj43NRrsMzNpv6Xo.png\",\"products\\/September2020\\/SmqGWhEsyKjB8kjbtNpD.png\"]','Exquisite, contemporary designs combined with double ring grips. Superb performance exceeds the demands of modern players. Complete with an ultra-modern white finish.',0,5,2,13,'2020-09-08 04:14:48','2020-09-08 04:14:48','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Delta standard extra thick 6915.203','x1 Prism Force medium 7020.202','27 grams','90% Tungsten alloy','2BA','Centre','Parallel','Tapered','Silver effect high tensile','Full length','Dual grooves','3 (1 = Smooth, 5 = Aggressive)','White','Winmau W logo','Polished','6.9mm x 50.8mm','1412-27','5023231009999','Archangel','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vF3Pvau228I\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),(40,'Barbarian 20 gram','129900','[\"products\\/September2020\\/h6GTYLSDxmO6nIk0T9fs.png\",\"products\\/September2020\\/cKtvw6seXxVRR0VMiJJO.png\",\"products\\/September2020\\/jmB5fh19bGC7WLyu6j8m.png\",\"products\\/September2020\\/toHv05XGv2ZNum3tcw6H.png\"]','Tungsten-style darts manufactured from premium grade Inox Steel. Precision-cut barrel design for maximum grip for the ultimate control.',0,4,2,13,'2020-09-08 04:20:00','2020-09-08 04:20:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.107','x1 Prism Force medium 7020.201','20 grams','Inox Steel','2BA','Centre','Parallel','Round','Black high tensile','Full length','Medium knurl','4 (1 = Smooth, 5 = Aggressive)','Black','Winmau W logo','Polished','8mm x 55.9mm','2302-20','5023231009159','Barbarian','https://www.youtube.com/embed/qKtpzP__n8s'),(41,'Barbarian 22 gram','129900','[\"products\\/September2020\\/wyT4embqeyW2Kb11u5IK.png\",\"products\\/September2020\\/OzQg3v4TLNL486vNKnDu.png\",\"products\\/September2020\\/OgJa83Rd7pwUnA945u91.png\",\"products\\/September2020\\/Wk26nX8oKy4ZXuubgaV8.png\"]','Tungsten-style darts manufactured from premium grade Inox Steel. Precision-cut barrel design for maximum grip for the ultimate control.',0,5,2,13,'2020-09-08 04:23:00','2020-09-08 04:23:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.107','x1 Prism Force medium 7020.201','22 grams','Inox Steel','2BA','Centre','Parallel','Round','Black high tensile','Full length','Medium knurl','4 (1 = Smooth, 5 = Aggressive)','Black','Winmau W logo','Polished','9mm x 50.8mm','2302-22','5023231009166','Barbarian','https://www.youtube.com/embed/qKtpzP__n8s'),(42,'Barbarian 24 gram','129900','[\"products\\/September2020\\/hbtZqjJ8i5XXb1hap8F2.png\",\"products\\/September2020\\/3ghF4jkv4DfYYYkxU3R0.png\",\"products\\/September2020\\/wRYPSgab5CS7Ua9Mczpo.png\",\"products\\/September2020\\/ENYjSlQI4KVaPQwIDPb4.png\"]','Tungsten-style darts manufactured from premium grade Inox Steel. Precision-cut barrel design for maximum grip for the ultimate control.',0,5,2,13,'2020-09-08 04:26:00','2020-09-08 04:26:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.107','x1 Prism Force medium 7020.201','24 grams','Inox Steel','2BA','Centre','Parallel','Round','Black high tensile','Full length','Medium knurl','4 (1 = Smooth, 5 = Aggressive)','Black','Winmau W logo','Polished','9mm x 53.3mm','2302-24','5023231009173','Barbarian','https://www.youtube.com/embed/qKtpzP__n8s'),(43,'Foxfire 21 gram','129900','[\"products\\/September2020\\/NxmaQsAMd4EAcXJXe4um.png\",\"products\\/September2020\\/dLLfuFKrdHxW5FSWKBvf.png\",\"products\\/September2020\\/gYd6tuwH2QpcSWpXurvX.png\",\"products\\/September2020\\/rOSKrwEX3OTmUIUnCk4A.png\"]','This 80% range offers a perfect introduction to the extra scoring power of tungsten\'s high-weight to the low-volume matrix. Assured quality delivers professional-level darts.',0,5,2,13,'2020-09-08 18:06:00','2020-09-08 18:06:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.125','x1 Prism Force medium 7020.201','21 grams','80% Tungsten alloy','2BA','Centre','Parallel','Round','Black high tensile','Full length','Square grooves','3 (1 = Smooth, 5 = Aggressive)','Natural tungsten','Winmau W logo','Polished','6.35mm x 48.3mm','1035-21','5023231115003','Foxfire','https://www.youtube.com/embed/85-EHujySP4'),(44,'Foxfire 22 gram','129900','[\"products\\/September2020\\/4rq3o6kYVWHgbIlENw9X.png\",\"products\\/September2020\\/rnGFNk4fEDQvCx0NWxq9.png\",\"products\\/September2020\\/Dd4Cjd2euEpfN0gtVJKq.png\",\"products\\/September2020\\/uQK7ZWJ3iUDRb7tL87mn.png\"]','This 80% range offers a perfect introduction to the extra scoring power of tungsten\'s high-weight to low-volume matrix. Assured quality delivers professional level darts.',0,5,2,13,'2020-09-08 18:11:00','2020-09-08 18:11:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.125','x1 Prism Force medium 7020.201','22 grams','80% Tungsten alloy','2BA','Centre','Torpedo','Eliptical','Black high tensile','Front and centre','Square grooves','3 (1 = Smooth, 5 = Aggressive)','Natural tungsten','Winmau W logo','Polished','8mm x 38.1mm','1035-22','5023231103529','Foxfire','https://www.youtube.com/embed/85-EHujySP4'),(45,'Foxfire 23 gram','129900','[\"products\\/September2020\\/XlTe2BSmgR4kMQjbmumn.png\",\"products\\/September2020\\/3L0izrmOmbvnJ3WgDdaN.png\",\"products\\/September2020\\/eajfFB7f1kwjfHJpm7Sy.png\",\"products\\/September2020\\/iHZCPdyf7mbQYZwHsnPl.png\"]','This 80% range offers a perfect introduction to the extra scoring power of tungsten\'s high-weight to the low-volume matrix. Assured quality delivers professional-level darts.',0,5,2,13,'2020-09-08 18:14:00','2020-09-08 18:14:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.125','x1 Prism Force medium 7020.201','23 grams','80% Tungsten alloy','2BA','Centre','Parallel','Round','Black high tensile','Full length','Square grooves','3 (1 = Smooth, 5 = Aggressive)','Natural tungsten','Winmau W logo','Polished','6.35mm x 50.8mm','1035-23','5023231103536','Foxfire','https://www.youtube.com/embed/85-EHujySP4'),(46,'Foxfire 24 gram','129900','[\"products\\/September2020\\/54MmT3bunrb7yccOA610.png\",\"products\\/September2020\\/KLU3YjYx10uJpuMCgcHP.png\",\"products\\/September2020\\/CUMoxTM05WWbjCaiIh3E.png\",\"products\\/September2020\\/sah9MnjJ6nNgWbW5jdvv.png\"]','This 80% range offers a perfect introduction to the extra scoring power of tungsten\'s high-weight to the low-volume matrix. Assured quality delivers professional-level darts.',0,5,2,13,'2020-09-08 18:18:00','2020-09-08 18:18:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.125','x1 Prism Force medium 7020.201','24 grams','80% Tungsten alloy','2BA','Centre','Torpedo','Eliptical','Black high tensile','Front and centre','Square grooves','3 (1 = Smooth, 5 = Aggressive)','Natural tungsten','Winmau W logo','Polished','8mm x 40.6mm','1035-24','5023231103543','Foxfire','https://www.youtube.com/embed/85-EHujySP4'),(47,'Foxfire 25 gram','129900','[\"products\\/September2020\\/V8bubUEYYlhSo9tt03FG.png\",\"products\\/September2020\\/SlEVlvqq3idhGh4vvHix.png\",\"products\\/September2020\\/1sYtAmljXkqZIfmrsh5p.png\",\"products\\/September2020\\/OAK6G2UOFUS2XDMTD23T.png\"]','This 80% range offers a perfect introduction to the extra scoring power of tungsten\'s high-weight to the low-volume matrix. Assured quality delivers professional-level darts.',0,5,2,13,'2020-09-08 18:21:00','2020-09-08 18:21:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.125','x1 Prism Force medium 7020.201','25 grams','80% Tungsten alloy','2BA','Centre','Parallel','Round','Black high tensile','Full length','Square grooves','3 (1 = Smooth, 5 = Aggressive)','Natural tungsten','Winmau W logo','Polished','6.6mm x 50.8mm','1035-25','5023231110510','Foxfire','https://www.youtube.com/embed/85-EHujySP4'),(48,'Foxfire 26 gram','129900','[\"products\\/September2020\\/Y1Lt8JUpbpgusnyT5cxk.png\",\"products\\/September2020\\/SmbW14Wc6dJr1gfioSeV.png\",\"products\\/September2020\\/lCIah3CFw3NoGjTnC6dY.png\",\"products\\/September2020\\/aL1AkITzF40GP9y8uLe8.png\"]','This 80% range offers a perfect introduction to the extra scoring power of tungsten\'s high-weight to the low-volume matrix. Assured quality delivers professional-level darts.',0,5,2,13,'2020-09-08 18:25:00','2020-09-08 18:25:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.125','x1 Prism Force medium 7020.201','26 grams','80% Tungsten alloy','2BA','Centre','Torpedo','Eliptical','Black high tensile','Front and centre','Square grooves','3 (1 = Smooth, 5 = Aggressive)','Natural tungsten','Winmau W logo','Polished','8mm x 43.2mm','1035-26','5023231103567','Foxfire','https://www.youtube.com/embed/85-EHujySP4'),(50,'Foxfire 28 gram','129900','[\"products\\/September2020\\/jSwi5ozurtUQTf5dHt8h.png\",\"products\\/September2020\\/koOdlSbw329zIvbczfYP.png\",\"products\\/September2020\\/5xLl1XpnDdFk8DtmZVLc.png\",\"products\\/September2020\\/zxUo8uoLl8h4Iiv959w3.png\"]','This 80% range offers a perfect introduction to the extra scoring power of tungsten\'s high-weight to the low-volume matrix. Assured quality delivers professional-level darts.',0,5,2,13,'2020-09-08 18:29:00','2020-09-08 18:29:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.125','x1 Prism Force medium 7020.201','28 grams','80% Tungsten alloy','2BA','Centre','Torpedo','Eliptical','Black high tensile','Front and centre','Square grooves','3 (1 = Smooth, 5 = Aggressive)','Natural tungsten','Winmau W logo','Polished','8mm x 45.7mm','1035-28','5023231103581','Foxfire','https://www.youtube.com/embed/85-EHujySP4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),(51,'Calibra 22 gram','129900','[\"products\\/September2020\\/bsOQncaIb4YryYaLbtIV.png\",\"products\\/September2020\\/OjJYKyTCKJndOYYoM1kS.png\",\"products\\/September2020\\/dTVbRCGwen64o5ROtrko.png\",\"products\\/September2020\\/OAQnjjvXRTL24YOgbwaC.png\"]','One of our most inspired barrels to date. A classic profile featuring matrix grip technology from cutting edge bi-directional machining combined with inspirational design.',0,5,2,13,'2020-09-18 18:29:57','2020-09-18 18:29:57','x3 Darts per set','Premium, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.141','x1 Prism Force medium 7020.204','22 grams','90% Tungsten alloy','2BA','Centre','Torpedo','Tapered','Black high tensile with Trident','Full length','Matrix','5 (1 = Smooth, 5 = Aggressive)','Black','Winmau logo & W logo','Onyx Performance Coating','7.8mm x 38.1mm','1419-22','5023231010988','Calibra','https://www.youtube.com/embed/YgVpRbsaHzE'),(52,'Graffiti 22 gram','129900','[\"products\\/September2020\\/7QJgrgU6sHCMvzErUqrs.png\",\"products\\/September2020\\/iy8vdNcTYHEgNuCaGrpX.png\",\"products\\/September2020\\/JOYY0VkA5fp6Dr1PqaWp.png\",\"products\\/September2020\\/rIqPDDcbXOg8VMHy1skT.png\"]','Each set is a unique work of art, with no two sets the same. Featuring our spectacular urban grip coating for the ultimate street design. Precision groove patterns allow perfect trajectory control.',1,5,2,13,'2020-09-18 18:53:10','2020-09-18 18:53:10','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.114','x1 Prism Force medium 7020.201','22 grams','85% Tungsten alloy','2BA','Centre','Parallel','Eliptical','Silver effect high tensile','Full length','Round grooves','3 (1 = Smooth, 5 = Aggressive)','Rainbow','Winmau W logo','Urban Grip Performance Coating','6.9mm x 45.7mm','1002-22','5023231100221','Graffiti','https://www.youtube.com/embed/1aTSzzbH5D8'),(53,'Interstellar 24 gram','129900','[\"products\\/September2020\\/pe8eitbDS7bAkcNxqhyz.png\",\"products\\/September2020\\/sElhp9Q7oMjjWVqZVO6W.png\",\"products\\/September2020\\/NHXnomklNSf5ATzZXPAA.png\",\"products\\/September2020\\/BBjbUP1WuM1mUhv4dDqK.png\"]','Stunning darts that perform every bit as good as they look. The grooved rings are machined with the highest quality tolerances for perfect hand-to-grip feel, and finished with space-age PVD grip. Crafted for aerodynamic perfection.',1,5,2,13,'2020-09-18 18:58:10','2020-09-18 18:58:10','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism 1.0 standard extra thick 6915.006','x1 Prism Force medium 7020.201','24 grams','85% Tungsten alloy','2BA','Centre','Parallel','Round','Silver effect high tensile','Full length','Round grooves','3 (1 = Smooth, 5 = Aggressive)','Pink','Winmau W logo','PVD Performance Coating','6.9mm x 50.8mm','1097-24','5023231007605','Interstellar','https://www.youtube.com/embed/31v7iEKWTBo'),(54,'Calibra 22 gram','129900','[\"products\\/September2020\\/bsOQncaIb4YryYaLbtIV.png\",\"products\\/September2020\\/OjJYKyTCKJndOYYoM1kS.png\",\"products\\/September2020\\/dTVbRCGwen64o5ROtrko.png\",\"products\\/September2020\\/OAQnjjvXRTL24YOgbwaC.png\"]','One of our most inspired barrels to date. A classic profile featuring matrix grip technology from cutting edge bi-directional machining combined with inspirational design.',0,5,2,13,'2020-09-18 18:29:57','2020-09-18 18:29:57','x3 Darts per set','Premium, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.141','x1 Prism Force medium 7020.204','22 grams','90% Tungsten alloy','2BA','Centre','Torpedo','Tapered','Black high tensile with Trident','Full length','Matrix','5 (1 = Smooth, 5 = Aggressive)','Black','Winmau logo & W logo','Onyx Performance Coating','7.8mm x 38.1mm','1419-22','5023231010988','Calibra','https://www.youtube.com/embed/YgVpRbsaHzE'),(55,'Calibra 22 gram','129900','[\"products\\/September2020\\/bsOQncaIb4YryYaLbtIV.png\",\"products\\/September2020\\/OjJYKyTCKJndOYYoM1kS.png\",\"products\\/September2020\\/dTVbRCGwen64o5ROtrko.png\",\"products\\/September2020\\/OAQnjjvXRTL24YOgbwaC.png\"]','One of our most inspired barrels to date. A classic profile featuring matrix grip technology from cutting edge bi-directional machining combined with inspirational design.',0,5,2,13,'2020-09-18 18:29:57','2020-09-18 18:29:57','x3 Darts per set','Premium, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.141','x1 Prism Force medium 7020.204','22 grams','90% Tungsten alloy','2BA','Centre','Torpedo','Tapered','Black high tensile with Trident','Full length','Matrix','5 (1 = Smooth, 5 = Aggressive)','Black','Winmau logo & W logo','Onyx Performance Coating','7.8mm x 38.1mm','1419-22','5023231010988','Calibra','https://www.youtube.com/embed/YgVpRbsaHzE'),(56,'Calibra 22 gram','129900','[\"products\\/September2020\\/bsOQncaIb4YryYaLbtIV.png\",\"products\\/September2020\\/OjJYKyTCKJndOYYoM1kS.png\",\"products\\/September2020\\/dTVbRCGwen64o5ROtrko.png\",\"products\\/September2020\\/OAQnjjvXRTL24YOgbwaC.png\"]','One of our most inspired barrels to date. A classic profile featuring matrix grip technology from cutting edge bi-directional machining combined with inspirational design.',0,5,2,13,'2020-09-18 18:29:57','2020-09-18 18:29:57','x3 Darts per set','Premium, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.141','x1 Prism Force medium 7020.204','22 grams','90% Tungsten alloy','2BA','Centre','Torpedo','Tapered','Black high tensile with Trident','Full length','Matrix','5 (1 = Smooth, 5 = Aggressive)','Black','Winmau logo & W logo','Onyx Performance Coating','7.8mm x 38.1mm','1419-22','5023231010988','Calibra','https://www.youtube.com/embed/YgVpRbsaHzE'),(57,'Graffiti 22 gram','129900','[\"products\\/September2020\\/7QJgrgU6sHCMvzErUqrs.png\",\"products\\/September2020\\/iy8vdNcTYHEgNuCaGrpX.png\",\"products\\/September2020\\/JOYY0VkA5fp6Dr1PqaWp.png\",\"products\\/September2020\\/rIqPDDcbXOg8VMHy1skT.png\"]','Each set is a unique work of art, with no two sets the same. Featuring our spectacular urban grip coating for the ultimate street design. Precision groove patterns allow perfect trajectory control.',1,5,2,13,'2020-09-18 18:53:10','2020-09-18 18:53:10','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.114','x1 Prism Force medium 7020.201','22 grams','85% Tungsten alloy','2BA','Centre','Parallel','Eliptical','Silver effect high tensile','Full length','Round grooves','3 (1 = Smooth, 5 = Aggressive)','Rainbow','Winmau W logo','Urban Grip Performance Coating','6.9mm x 45.7mm','1002-22','5023231100221','Graffiti','https://www.youtube.com/embed/1aTSzzbH5D8'),(58,'Graffiti 22 gram','129900','[\"products\\/September2020\\/7QJgrgU6sHCMvzErUqrs.png\",\"products\\/September2020\\/iy8vdNcTYHEgNuCaGrpX.png\",\"products\\/September2020\\/JOYY0VkA5fp6Dr1PqaWp.png\",\"products\\/September2020\\/rIqPDDcbXOg8VMHy1skT.png\"]','Each set is a unique work of art, with no two sets the same. Featuring our spectacular urban grip coating for the ultimate street design. Precision groove patterns allow perfect trajectory control.',1,5,2,13,'2020-09-18 18:53:10','2020-09-18 18:53:10','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.114','x1 Prism Force medium 7020.201','22 grams','85% Tungsten alloy','2BA','Centre','Parallel','Eliptical','Silver effect high tensile','Full length','Round grooves','3 (1 = Smooth, 5 = Aggressive)','Rainbow','Winmau W logo','Urban Grip Performance Coating','6.9mm x 45.7mm','1002-22','5023231100221','Graffiti','https://www.youtube.com/embed/1aTSzzbH5D8'),(59,'Graffiti 22 gram','129900','[\"products\\/September2020\\/7QJgrgU6sHCMvzErUqrs.png\",\"products\\/September2020\\/iy8vdNcTYHEgNuCaGrpX.png\",\"products\\/September2020\\/JOYY0VkA5fp6Dr1PqaWp.png\",\"products\\/September2020\\/rIqPDDcbXOg8VMHy1skT.png\"]','Each set is a unique work of art, with no two sets the same. Featuring our spectacular urban grip coating for the ultimate street design. Precision groove patterns allow perfect trajectory control.',1,5,2,13,'2020-09-18 18:53:10','2020-09-18 18:53:10','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.114','x1 Prism Force medium 7020.201','22 grams','85% Tungsten alloy','2BA','Centre','Parallel','Eliptical','Silver effect high tensile','Full length','Round grooves','3 (1 = Smooth, 5 = Aggressive)','Rainbow','Winmau W logo','Urban Grip Performance Coating','6.9mm x 45.7mm','1002-22','5023231100221','Graffiti','https://www.youtube.com/embed/1aTSzzbH5D8'),(60,'Navigator 21 gram','129900','[\"products\\/September2020\\/Jb7NRl26gDxAXCbwd26N.png\",\"products\\/September2020\\/aEdNTTgTZuUZNNHsamGd.png\",\"products\\/September2020\\/1zYcCPLD2rmqnEjcDBr2.png\",\"products\\/September2020\\/294GgGQd3CuBusnDNWK6.png\"]','Precision-cut knurled designs delivering the best mechanical grip advantage. Strikingly colour matched and designed for ultimate scoring.',0,5,2,13,'2020-09-21 14:20:14','2020-09-21 14:20:14','x3 Darts per set','High end, laser engraved aluminium point protector','x1 Prism Alpha standard extra thick 6915.120','x1 Prism Force medium 7020.204','21 grams','90% Tungsten alloy','2BA','Centre','Parallel','Eliptical','Black high tensile with Trident','Full length','Square grooves, Fine knurl, Scallop','4 (1 = Smooth, 5 = Aggressive)','Black, Red','Winmau W logo','Polished','5.5-6.35mm x 48.3mm','1010-21','5023231111012','Navigator','https://www.youtube.com/embed/jIZZGA2RqhE'),(61,'Saracen 23 gram','129900','[\"products\\/September2020\\/lPe1nggkc6Sywmmk75Bp.png\",\"products\\/September2020\\/a2AybeHGQuclfQ7YFVDC.png\",\"products\\/September2020\\/57vfPF3DSaiYHy5LgWZv.png\",\"products\\/September2020\\/R2OJ0TwEeNwWuA0hX3Sq.png\"]','Born from a passion for performance, this new generation knurled grip is positioned exactly where players need it, making them our most adaptable and stylish darts yet.',0,5,2,13,'2020-09-21 14:24:54','2020-09-21 14:24:54','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.123','x1 Prism Force medium 7020.204','23 grams','90% Tungsten alloy','2BA','Centre','Specialist','Eliptical','Black high tensile with Trident','Front and centre','Square grooves, Medium knurl','4 (1 = Smooth, 5 = Aggressive)','Black','Winmau W logo','Polished','8.3mm x 35.6mm','1029-23','5.02323E+12','Saracen','https://www.youtube.com/embed/0uu2HkdYH18'),(62,'Overdrive 22 gram','129900','[\"products\\/September2020\\/fkFWSboaECncupmZ73Qy.png\",\"products\\/September2020\\/2WXSyJU5CpObwVrNcyBY.png\",\"products\\/September2020\\/lf3rOwcHDlLne09ASuNw.png\",\"products\\/September2020\\/DlhMECuNr3Gc9d5g7A6k.png\"]','Stunning Vetalic design and finish that exudes quality. From the beautifully crisp parallel lines to the triple-cut rings, these darts offer a tour-level of playability and finish rarely seen from a production range. This latest generation of expertly-engineered darts continues our core traditions of innovation and excellence for today\'s best players.',0,5,2,13,'2020-09-21 15:13:29','2020-09-21 15:13:29','x3 Darts per set','Premium, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.150','x1 Prism Force medium 7020.202','22 grams','90% Tungsten alloy','2BA','Centre','Parallel','Round','Silver effect high tensile','Full length','Round grooves','3 (1 = Smooth, 5 = Aggressive)','Red','Winmau W logo','Vetalic Coating','6.35mm x 50.8mm','1434-22','5023231011909','Overdrive','https://www.youtube.com/embed/hz3ZS7pCshQ'),(63,'Pro-Line 21 gram','129900','[\"products\\/September2020\\/cNUzJXq9l2pRGQ61W6Md.png\",\"products\\/September2020\\/51OE5vtPIVJmtXK2O0NC.png\",\"products\\/September2020\\/WJzyjtJsj4RpQjdlAfRG.png\",\"products\\/September2020\\/GQqpefB7fdkoXZsM8uRj.png\"]','Modern and sporty dynamics combined with classic streamlined barrel design. Featuring tried and tested groove patterns these darts are perfectly weighted and complete with our signature Onyx coating.',0,5,2,14,'2020-09-21 15:20:09','2020-09-21 15:20:09','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.142','x1 Prism Force medium 7020.201','21 grams','90% Tungsten alloy','2BA','Centre','Specialist','Tapered','Black high tensile with Trident','Full length','Round grooves','3 (1 = Smooth, 5 = Aggressive)','Red','Winmau W logo','Onyx Performance Coating','6.3mm x 50.8mm','1421-21','5023231011077','Pro-Line','https://www.youtube.com/embed/xrGfhZHkRm8'),(64,'Pulsar 22 gram','129900','[\"products\\/September2020\\/4k1tKivnMjMk3hGIgCRY.png\",\"products\\/September2020\\/EEKvioaQ9Y8k9DOmBaaH.png\",\"products\\/September2020\\/DnP4S0rBqDVoVwM2rJPK.png\",\"products\\/September2020\\/ulEnSryR05pIXzWS8K8h.png\"]','Striking rainbow urban grip design over a superb range of shapes and weights deliver the most contemporary sports engineered darts to date, featuring double machined multi-faceted grooves.',0,5,2,13,'2020-09-21 15:23:12','2020-09-21 15:23:12','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.115','x1 Prism Force medium 7020.201','22 grams','90% Tungsten alloy','2BA','Centre','Torpedo','Eliptical','Black high tensile','Full length','Dual grooves','3 (1 = Smooth, 5 = Aggressive)','Rainbow','Winmau W logo','Urban Grip Performance Coating','8.0mm x 35.6mm','1400-22','5023231008442','Pulsar','https://www.youtube.com/embed/uL_7pDQQyxM'),(65,'Navigator 21 gram','129900','[\"products\\/September2020\\/Jb7NRl26gDxAXCbwd26N.png\",\"products\\/September2020\\/aEdNTTgTZuUZNNHsamGd.png\",\"products\\/September2020\\/1zYcCPLD2rmqnEjcDBr2.png\",\"products\\/September2020\\/294GgGQd3CuBusnDNWK6.png\"]','Precision-cut knurled designs delivering the best mechanical grip advantage. Strikingly colour matched and designed for ultimate scoring.',0,5,2,13,'2020-09-21 14:20:14','2020-09-21 14:20:14','x3 Darts per set','High end, laser engraved aluminium point protector','x1 Prism Alpha standard extra thick 6915.120','x1 Prism Force medium 7020.204','21 grams','90% Tungsten alloy','2BA','Centre','Parallel','Eliptical','Black high tensile with Trident','Full length','Square grooves, Fine knurl, Scallop','4 (1 = Smooth, 5 = Aggressive)','Black, Red','Winmau W logo','Polished','5.5-6.35mm x 48.3mm','1010-21','5023231111012','Navigator','https://www.youtube.com/embed/jIZZGA2RqhE'),(66,'Navigator 21 gram','129900','[\"products\\/September2020\\/Jb7NRl26gDxAXCbwd26N.png\",\"products\\/September2020\\/aEdNTTgTZuUZNNHsamGd.png\",\"products\\/September2020\\/1zYcCPLD2rmqnEjcDBr2.png\",\"products\\/September2020\\/294GgGQd3CuBusnDNWK6.png\"]','Precision-cut knurled designs delivering the best mechanical grip advantage. Strikingly colour matched and designed for ultimate scoring.',0,5,2,13,'2020-09-21 14:20:14','2020-09-21 14:20:14','x3 Darts per set','High end, laser engraved aluminium point protector','x1 Prism Alpha standard extra thick 6915.120','x1 Prism Force medium 7020.204','21 grams','90% Tungsten alloy','2BA','Centre','Parallel','Eliptical','Black high tensile with Trident','Full length','Square grooves, Fine knurl, Scallop','4 (1 = Smooth, 5 = Aggressive)','Black, Red','Winmau W logo','Polished','5.5-6.35mm x 48.3mm','1010-21','5023231111012','Navigator','https://www.youtube.com/embed/jIZZGA2RqhE'),(67,'Navigator 21 gram','129900','[\"products\\/September2020\\/Jb7NRl26gDxAXCbwd26N.png\",\"products\\/September2020\\/aEdNTTgTZuUZNNHsamGd.png\",\"products\\/September2020\\/1zYcCPLD2rmqnEjcDBr2.png\",\"products\\/September2020\\/294GgGQd3CuBusnDNWK6.png\"]','Precision-cut knurled designs delivering the best mechanical grip advantage. Strikingly colour matched and designed for ultimate scoring.',0,5,2,13,'2020-09-21 14:20:14','2020-09-21 14:20:14','x3 Darts per set','High end, laser engraved aluminium point protector','x1 Prism Alpha standard extra thick 6915.120','x1 Prism Force medium 7020.204','21 grams','90% Tungsten alloy','2BA','Centre','Parallel','Eliptical','Black high tensile with Trident','Full length','Square grooves, Fine knurl, Scallop','4 (1 = Smooth, 5 = Aggressive)','Black, Red','Winmau W logo','Polished','5.5-6.35mm x 48.3mm','1010-21','5023231111012','Navigator','https://www.youtube.com/embed/jIZZGA2RqhE'),(68,'Saracen 23 gram','129900','[\"products\\/September2020\\/lPe1nggkc6Sywmmk75Bp.png\",\"products\\/September2020\\/a2AybeHGQuclfQ7YFVDC.png\",\"products\\/September2020\\/57vfPF3DSaiYHy5LgWZv.png\",\"products\\/September2020\\/R2OJ0TwEeNwWuA0hX3Sq.png\"]','Born from a passion for performance, this new generation knurled grip is positioned exactly where players need it, making them our most adaptable and stylish darts yet.',0,5,2,13,'2020-09-21 14:24:54','2020-09-21 14:24:54','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.123','x1 Prism Force medium 7020.204','23 grams','90% Tungsten alloy','2BA','Centre','Specialist','Eliptical','Black high tensile with Trident','Front and centre','Square grooves, Medium knurl','4 (1 = Smooth, 5 = Aggressive)','Black','Winmau W logo','Polished','8.3mm x 35.6mm','1029-23','5.02323E+12','Saracen','https://www.youtube.com/embed/0uu2HkdYH18'),(69,'Saracen 23 gram','129900','[\"products\\/September2020\\/lPe1nggkc6Sywmmk75Bp.png\",\"products\\/September2020\\/a2AybeHGQuclfQ7YFVDC.png\",\"products\\/September2020\\/57vfPF3DSaiYHy5LgWZv.png\",\"products\\/September2020\\/R2OJ0TwEeNwWuA0hX3Sq.png\"]','Born from a passion for performance, this new generation knurled grip is positioned exactly where players need it, making them our most adaptable and stylish darts yet.',0,5,2,13,'2020-09-21 14:24:54','2020-09-21 14:24:54','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.123','x1 Prism Force medium 7020.204','23 grams','90% Tungsten alloy','2BA','Centre','Specialist','Eliptical','Black high tensile with Trident','Front and centre','Square grooves, Medium knurl','4 (1 = Smooth, 5 = Aggressive)','Black','Winmau W logo','Polished','8.3mm x 35.6mm','1029-23','5.02323E+12','Saracen','https://www.youtube.com/embed/0uu2HkdYH18'),(70,'Saracen 23 gram','129900','[\"products\\/September2020\\/lPe1nggkc6Sywmmk75Bp.png\",\"products\\/September2020\\/a2AybeHGQuclfQ7YFVDC.png\",\"products\\/September2020\\/57vfPF3DSaiYHy5LgWZv.png\",\"products\\/September2020\\/R2OJ0TwEeNwWuA0hX3Sq.png\"]','Born from a passion for performance, this new generation knurled grip is positioned exactly where players need it, making them our most adaptable and stylish darts yet.',0,5,2,13,'2020-09-21 14:24:54','2020-09-21 14:24:54','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.123','x1 Prism Force medium 7020.204','23 grams','90% Tungsten alloy','2BA','Centre','Specialist','Eliptical','Black high tensile with Trident','Front and centre','Square grooves, Medium knurl','4 (1 = Smooth, 5 = Aggressive)','Black','Winmau W logo','Polished','8.3mm x 35.6mm','1029-23','5.02323E+12','Saracen','https://www.youtube.com/embed/0uu2HkdYH18'),(71,'Overdrive 22 gram','129900','[\"products\\/September2020\\/fkFWSboaECncupmZ73Qy.png\",\"products\\/September2020\\/2WXSyJU5CpObwVrNcyBY.png\",\"products\\/September2020\\/lf3rOwcHDlLne09ASuNw.png\",\"products\\/September2020\\/DlhMECuNr3Gc9d5g7A6k.png\"]','Stunning Vetalic design and finish that exudes quality. From the beautifully crisp parallel lines to the triple-cut rings, these darts offer a tour-level of playability and finish rarely seen from a production range. This latest generation of expertly-engineered darts continues our core traditions of innovation and excellence for today\'s best players.',0,5,2,13,'2020-09-21 15:13:29','2020-09-21 15:13:29','x3 Darts per set','Premium, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.150','x1 Prism Force medium 7020.202','22 grams','90% Tungsten alloy','2BA','Centre','Parallel','Round','Silver effect high tensile','Full length','Round grooves','3 (1 = Smooth, 5 = Aggressive)','Red','Winmau W logo','Vetalic Coating','6.35mm x 50.8mm','1434-22','5023231011909','Overdrive','https://www.youtube.com/embed/hz3ZS7pCshQ'),(72,'Overdrive 22 gram','129900','[\"products\\/September2020\\/fkFWSboaECncupmZ73Qy.png\",\"products\\/September2020\\/2WXSyJU5CpObwVrNcyBY.png\",\"products\\/September2020\\/lf3rOwcHDlLne09ASuNw.png\",\"products\\/September2020\\/DlhMECuNr3Gc9d5g7A6k.png\"]','Stunning Vetalic design and finish that exudes quality. From the beautifully crisp parallel lines to the triple-cut rings, these darts offer a tour-level of playability and finish rarely seen from a production range. This latest generation of expertly-engineered darts continues our core traditions of innovation and excellence for today\'s best players.',0,5,2,13,'2020-09-21 15:13:29','2020-09-21 15:13:29','x3 Darts per set','Premium, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.150','x1 Prism Force medium 7020.202','22 grams','90% Tungsten alloy','2BA','Centre','Parallel','Round','Silver effect high tensile','Full length','Round grooves','3 (1 = Smooth, 5 = Aggressive)','Red','Winmau W logo','Vetalic Coating','6.35mm x 50.8mm','1434-22','5023231011909','Overdrive','https://www.youtube.com/embed/hz3ZS7pCshQ'),(73,'Overdrive 22 gram','129900','[\"products\\/September2020\\/fkFWSboaECncupmZ73Qy.png\",\"products\\/September2020\\/2WXSyJU5CpObwVrNcyBY.png\",\"products\\/September2020\\/lf3rOwcHDlLne09ASuNw.png\",\"products\\/September2020\\/DlhMECuNr3Gc9d5g7A6k.png\"]','Stunning Vetalic design and finish that exudes quality. From the beautifully crisp parallel lines to the triple-cut rings, these darts offer a tour-level of playability and finish rarely seen from a production range. This latest generation of expertly-engineered darts continues our core traditions of innovation and excellence for today\'s best players.',0,5,2,13,'2020-09-21 15:13:29','2020-09-21 15:13:29','x3 Darts per set','Premium, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.150','x1 Prism Force medium 7020.202','22 grams','90% Tungsten alloy','2BA','Centre','Parallel','Round','Silver effect high tensile','Full length','Round grooves','3 (1 = Smooth, 5 = Aggressive)','Red','Winmau W logo','Vetalic Coating','6.35mm x 50.8mm','1434-22','5023231011909','Overdrive','https://www.youtube.com/embed/hz3ZS7pCshQ'),(74,'Pro-Line 21 gram','129900','[\"products\\/September2020\\/cNUzJXq9l2pRGQ61W6Md.png\",\"products\\/September2020\\/51OE5vtPIVJmtXK2O0NC.png\",\"products\\/September2020\\/WJzyjtJsj4RpQjdlAfRG.png\",\"products\\/September2020\\/GQqpefB7fdkoXZsM8uRj.png\"]','Modern and sporty dynamics combined with classic streamlined barrel design. Featuring tried and tested groove patterns these darts are perfectly weighted and complete with our signature Onyx coating.',0,5,2,14,'2020-09-21 15:20:09','2020-09-21 15:20:09','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.142','x1 Prism Force medium 7020.201','21 grams','90% Tungsten alloy','2BA','Centre','Specialist','Tapered','Black high tensile with Trident','Full length','Round grooves','3 (1 = Smooth, 5 = Aggressive)','Red','Winmau W logo','Onyx Performance Coating','6.3mm x 50.8mm','1421-21','5023231011077','Pro-Line','https://www.youtube.com/embed/xrGfhZHkRm8'),(75,'Pro-Line 21 gram','129900','[\"products\\/September2020\\/cNUzJXq9l2pRGQ61W6Md.png\",\"products\\/September2020\\/51OE5vtPIVJmtXK2O0NC.png\",\"products\\/September2020\\/WJzyjtJsj4RpQjdlAfRG.png\",\"products\\/September2020\\/GQqpefB7fdkoXZsM8uRj.png\"]','Modern and sporty dynamics combined with classic streamlined barrel design. Featuring tried and tested groove patterns these darts are perfectly weighted and complete with our signature Onyx coating.',0,5,2,14,'2020-09-21 15:20:09','2020-09-21 15:20:09','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.142','x1 Prism Force medium 7020.201','21 grams','90% Tungsten alloy','2BA','Centre','Specialist','Tapered','Black high tensile with Trident','Full length','Round grooves','3 (1 = Smooth, 5 = Aggressive)','Red','Winmau W logo','Onyx Performance Coating','6.3mm x 50.8mm','1421-21','5023231011077','Pro-Line','https://www.youtube.com/embed/xrGfhZHkRm8'),(76,'Pro-Line 21 gram','129900','[\"products\\/September2020\\/cNUzJXq9l2pRGQ61W6Md.png\",\"products\\/September2020\\/51OE5vtPIVJmtXK2O0NC.png\",\"products\\/September2020\\/WJzyjtJsj4RpQjdlAfRG.png\",\"products\\/September2020\\/GQqpefB7fdkoXZsM8uRj.png\"]','Modern and sporty dynamics combined with classic streamlined barrel design. Featuring tried and tested groove patterns these darts are perfectly weighted and complete with our signature Onyx coating.',0,5,2,14,'2020-09-21 15:20:09','2020-09-21 15:20:09','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.142','x1 Prism Force medium 7020.201','21 grams','90% Tungsten alloy','2BA','Centre','Specialist','Tapered','Black high tensile with Trident','Full length','Round grooves','3 (1 = Smooth, 5 = Aggressive)','Red','Winmau W logo','Onyx Performance Coating','6.3mm x 50.8mm','1421-21','5023231011077','Pro-Line','https://www.youtube.com/embed/xrGfhZHkRm8'),(77,'Pro-Line 21 gram','129900','[\"products\\/September2020\\/cNUzJXq9l2pRGQ61W6Md.png\",\"products\\/September2020\\/51OE5vtPIVJmtXK2O0NC.png\",\"products\\/September2020\\/WJzyjtJsj4RpQjdlAfRG.png\",\"products\\/September2020\\/GQqpefB7fdkoXZsM8uRj.png\"]','Modern and sporty dynamics combined with classic streamlined barrel design. Featuring tried and tested groove patterns these darts are perfectly weighted and complete with our signature Onyx coating.',0,5,2,14,'2020-09-21 15:20:09','2020-09-21 15:20:09','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.142','x1 Prism Force medium 7020.201','21 grams','90% Tungsten alloy','2BA','Centre','Specialist','Tapered','Black high tensile with Trident','Full length','Round grooves','3 (1 = Smooth, 5 = Aggressive)','Red','Winmau W logo','Onyx Performance Coating','6.3mm x 50.8mm','1421-21','5023231011077','Pro-Line','https://www.youtube.com/embed/xrGfhZHkRm8'),(78,'Pro-Line 21 gram','129900','[\"products\\/September2020\\/cNUzJXq9l2pRGQ61W6Md.png\",\"products\\/September2020\\/51OE5vtPIVJmtXK2O0NC.png\",\"products\\/September2020\\/WJzyjtJsj4RpQjdlAfRG.png\",\"products\\/September2020\\/GQqpefB7fdkoXZsM8uRj.png\"]','Modern and sporty dynamics combined with classic streamlined barrel design. Featuring tried and tested groove patterns these darts are perfectly weighted and complete with our signature Onyx coating.',0,5,2,14,'2020-09-21 15:20:09','2020-09-21 15:20:09','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.142','x1 Prism Force medium 7020.201','21 grams','90% Tungsten alloy','2BA','Centre','Specialist','Tapered','Black high tensile with Trident','Full length','Round grooves','3 (1 = Smooth, 5 = Aggressive)','Red','Winmau W logo','Onyx Performance Coating','6.3mm x 50.8mm','1421-21','5023231011077','Pro-Line','https://www.youtube.com/embed/xrGfhZHkRm8'),(79,'Pulsar 22 gram','129900','[\"products\\/September2020\\/4k1tKivnMjMk3hGIgCRY.png\",\"products\\/September2020\\/EEKvioaQ9Y8k9DOmBaaH.png\",\"products\\/September2020\\/DnP4S0rBqDVoVwM2rJPK.png\",\"products\\/September2020\\/ulEnSryR05pIXzWS8K8h.png\"]','Striking rainbow urban grip design over a superb range of shapes and weights deliver the most contemporary sports engineered darts to date, featuring double machined multi-faceted grooves.',0,5,2,13,'2020-09-21 15:23:12','2020-09-21 15:23:12','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.115','x1 Prism Force medium 7020.201','22 grams','90% Tungsten alloy','2BA','Centre','Torpedo','Eliptical','Black high tensile','Full length','Dual grooves','3 (1 = Smooth, 5 = Aggressive)','Rainbow','Winmau W logo','Urban Grip Performance Coating','8.0mm x 35.6mm','1400-22','5023231008442','Pulsar','https://www.youtube.com/embed/uL_7pDQQyxM'),(80,'Pulsar 22 gram','129900','[\"products\\/September2020\\/4k1tKivnMjMk3hGIgCRY.png\",\"products\\/September2020\\/EEKvioaQ9Y8k9DOmBaaH.png\",\"products\\/September2020\\/DnP4S0rBqDVoVwM2rJPK.png\",\"products\\/September2020\\/ulEnSryR05pIXzWS8K8h.png\"]','Striking rainbow urban grip design over a superb range of shapes and weights deliver the most contemporary sports engineered darts to date, featuring double machined multi-faceted grooves.',0,5,2,13,'2020-09-21 15:23:12','2020-09-21 15:23:12','x3 Darts per set','Classic, Winmau Aluminium Point Protector','X1 Prism Alpha standard extra thick 6915.115','x1 Prism Force medium 7020.201','22 grams','90% Tungsten alloy','2BA','Centre','Torpedo','Eliptical','Black high tensile','Full length','Dual grooves','3 (1 = Smooth, 5 = Aggressive)','Rainbow','Winmau W logo','Urban Grip Performance Coating','8.0mm x 35.6mm','1400-22','5023231008442','Pulsar','https://www.youtube.com/embed/uL_7pDQQyxM'),(81,'Sabotage 22 gram','192000','[\"products\\/August2020\\/zVwIoQ1rSTEhknUHED5b.png\",\"products\\/August2020\\/STckfb63su1XcfG3NmGl.png\",\"products\\/August2020\\/IJvHeRlICOglMIEQ2b59.png\"]','Incorporating Winmau\'s renowned and aggressive Ripsaw grip technology. Sabotage delivers an unsurpassed grip control combined with popular parallel profile. New Onyx Coated version completes the iconic range',1,4,2,13,'2020-08-28 09:12:00','2020-08-28 09:12:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.109','x1 Prism Force medium 7020.206','22 grams','90% Tungsten alloy','2BA','Center','Parallel','Tapered','Black high tensile','Full length','Buttress grooves','4 (1 = Smooth, 5 = Aggressive)','Black','Winmau W logo','Onyx Performance Coating','6.4mm x 50.8mm','1433-22','5023231011770','Sabotage','https://www.youtube.com/embed/tseEzXp15F4'),(82,'Sabotage 22 gram','192000','[\"products\\/August2020\\/zVwIoQ1rSTEhknUHED5b.png\",\"products\\/August2020\\/STckfb63su1XcfG3NmGl.png\",\"products\\/August2020\\/IJvHeRlICOglMIEQ2b59.png\"]','Incorporating Winmau\'s renowned and aggressive Ripsaw grip technology. Sabotage delivers an unsurpassed grip control combined with popular parallel profile. New Onyx Coated version completes the iconic range',1,4,2,13,'2020-08-28 09:12:00','2020-08-28 09:12:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.109','x1 Prism Force medium 7020.206','22 grams','90% Tungsten alloy','2BA','Center','Parallel','Tapered','Black high tensile','Full length','Buttress grooves','4 (1 = Smooth, 5 = Aggressive)','Black','Winmau W logo','Onyx Performance Coating','6.4mm x 50.8mm','1433-22','5023231011770','Sabotage','https://www.youtube.com/embed/tseEzXp15F4'),(83,'Sabotage 22 gram','192000','[\"products\\/August2020\\/zVwIoQ1rSTEhknUHED5b.png\",\"products\\/August2020\\/STckfb63su1XcfG3NmGl.png\",\"products\\/August2020\\/IJvHeRlICOglMIEQ2b59.png\"]','Incorporating Winmau\'s renowned and aggressive Ripsaw grip technology. Sabotage delivers an unsurpassed grip control combined with popular parallel profile. New Onyx Coated version completes the iconic range',1,4,2,13,'2020-08-28 09:12:00','2020-08-28 09:12:00','x3 Darts per set','Classic, Winmau Aluminium Point Protector','x1 Prism Alpha standard extra thick 6915.109','x1 Prism Force medium 7020.206','22 grams','90% Tungsten alloy','2BA','Center','Parallel','Tapered','Black high tensile','Full length','Buttress grooves','4 (1 = Smooth, 5 = Aggressive)','Black','Winmau W logo','Onyx Performance Coating','6.4mm x 50.8mm','1433-22','5023231011770','Sabotage','https://www.youtube.com/embed/tseEzXp15F4');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (3,'admin','Administrator','2020-08-24 21:35:12','2020-08-24 21:35:12');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shafts`
--

DROP TABLE IF EXISTS `shafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shafts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `range` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `material` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `length` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shafts`
--

LOCK TABLES `shafts` WRITE;
/*!40000 ALTER TABLE `shafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `shafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soft_tips`
--

DROP TABLE IF EXISTS `soft_tips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_tips` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `barrel_weight` bigint(20) NOT NULL,
  `full_weight` bigint(20) NOT NULL,
  `weight` bigint(20) NOT NULL,
  `dart_weight` bigint(20) NOT NULL,
  `dart_tungsten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dart_set` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dart_flight` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dart_shaft` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimensions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soft_tips`
--

LOCK TABLES `soft_tips` WRITE;
/*!40000 ALTER TABLE `soft_tips` DISABLE KEYS */;
/*!40000 ALTER TABLE `soft_tips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `steel_tips`
--

DROP TABLE IF EXISTS `steel_tips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `steel_tips` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `weight` bigint(20) NOT NULL,
  `dart_weight` bigint(20) NOT NULL,
  `dart_tungsten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dart_set` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dart_flight` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dart_shaft` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimensions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `steel_tips`
--

LOCK TABLES `steel_tips` WRITE;
/*!40000 ALTER TABLE `steel_tips` DISABLE KEYS */;
/*!40000 ALTER TABLE `steel_tips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `top_category_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (1,1,'Surrounds','2020-07-16 16:00:00','2020-07-16 16:00:00'),(2,1,'Mats','2020-07-16 16:00:00','2020-07-16 16:00:00'),(3,1,'Cabinets','2020-07-16 16:00:00','2020-07-16 16:00:00'),(4,1,'Dart Sets','2020-07-16 16:00:00','2020-07-16 16:00:00'),(5,1,'Merchandising','2020-07-16 16:00:00','2020-07-16 16:00:00'),(6,1,'Apparel','2020-07-16 16:00:00','2020-07-16 16:00:00'),(7,1,'Dart Zone','2020-07-16 16:00:00','2020-07-16 16:00:00'),(8,1,'Electronic Collections','2020-07-16 16:00:00','2020-07-16 16:00:00'),(9,1,'Wallets/Cases','2020-07-16 16:00:00','2020-07-16 16:00:00'),(10,1,'Promo Items','2020-07-16 16:00:00','2020-07-16 16:00:00'),(11,1,'Points','2020-07-16 16:00:00','2020-07-16 16:00:00'),(12,1,'Budweiser','2020-07-16 16:00:00','2020-07-16 16:00:00'),(13,2,'Steel Tips','2020-07-16 16:00:00','2020-07-16 16:00:00'),(14,3,'Soft Tips','2020-07-16 16:00:00','2020-07-16 16:00:00'),(15,4,'World Championship','2020-07-16 16:00:00','2020-07-16 16:00:00'),(16,4,'International Championship','2020-07-16 16:00:00','2020-07-16 16:00:00'),(17,4,'Players Soft Tip','2020-07-16 16:00:00','2020-07-16 16:00:00'),(18,5,'Players','2020-07-16 16:00:00','2020-07-16 16:00:00'),(19,5,'Rhino','2020-07-16 16:00:00','2020-07-16 16:00:00'),(20,5,'Pear Poly','2020-07-16 16:00:00','2020-07-16 16:00:00'),(21,5,'Embossed','2020-07-16 16:00:00','2020-07-16 16:00:00'),(22,5,'Poly Kite','2020-07-16 16:00:00','2020-07-16 16:00:00'),(23,5,'Mega Standard','2020-07-16 16:00:00','2020-07-16 16:00:00'),(24,5,'Stealth','2020-07-16 16:00:00','2020-07-16 16:00:00'),(25,6,'Prism','2020-07-16 16:00:00','2020-07-16 16:00:00'),(26,6,'Nylon','2020-07-16 16:00:00','2020-07-16 16:00:00'),(27,6,'Carbon Fibre','2020-07-16 16:00:00','2020-07-16 16:00:00'),(28,6,'Aluminium','2020-07-16 16:00:00','2020-07-16 16:00:00'),(29,6,'Stealth','2020-07-16 16:00:00','2020-07-16 16:00:00');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_categories`
--

DROP TABLE IF EXISTS `top_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `topname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_categories`
--

LOCK TABLES `top_categories` WRITE;
/*!40000 ALTER TABLE `top_categories` DISABLE KEYS */;
INSERT INTO `top_categories` VALUES (1,'Accessories','2020-07-16 16:00:00','2020-07-16 16:00:00'),(2,'Steel Tip','2020-07-16 16:00:00','2020-07-16 16:00:00'),(3,'Soft Tip','2020-07-16 16:00:00','2020-07-16 16:00:00'),(4,'Flight','2020-07-16 16:00:00','2020-07-16 16:00:00'),(5,'Shaft','2020-07-16 16:00:00','2020-07-16 16:00:00'),(6,'Player Dart','2020-07-16 16:00:00','2020-07-16 16:00:00');
/*!40000 ALTER TABLE `top_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2020-08-17 21:21:54','2020-08-17 21:21:54'),(2,'data_types','display_name_singular',6,'pt','Página','2020-08-17 21:21:54','2020-08-17 21:21:54'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2020-08-17 21:21:55','2020-08-17 21:21:55'),(4,'data_types','display_name_singular',4,'pt','Categoria','2020-08-17 21:21:55','2020-08-17 21:21:55'),(5,'data_types','display_name_singular',2,'pt','Menu','2020-08-17 21:21:55','2020-08-17 21:21:55'),(6,'data_types','display_name_singular',3,'pt','Função','2020-08-17 21:21:55','2020-08-17 21:21:55'),(7,'data_types','display_name_plural',5,'pt','Posts','2020-08-17 21:21:55','2020-08-17 21:21:55'),(8,'data_types','display_name_plural',6,'pt','Páginas','2020-08-17 21:21:55','2020-08-17 21:21:55'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2020-08-17 21:21:55','2020-08-17 21:21:55'),(10,'data_types','display_name_plural',4,'pt','Categorias','2020-08-17 21:21:55','2020-08-17 21:21:55'),(11,'data_types','display_name_plural',2,'pt','Menus','2020-08-17 21:21:55','2020-08-17 21:21:55'),(12,'data_types','display_name_plural',3,'pt','Funções','2020-08-17 21:21:55','2020-08-17 21:21:55'),(13,'categories','slug',1,'pt','categoria-1','2020-08-17 21:21:55','2020-08-17 21:21:55'),(14,'categories','name',1,'pt','Categoria 1','2020-08-17 21:21:55','2020-08-17 21:21:55'),(15,'categories','slug',2,'pt','categoria-2','2020-08-17 21:21:55','2020-08-17 21:21:55'),(16,'categories','name',2,'pt','Categoria 2','2020-08-17 21:21:55','2020-08-17 21:21:55'),(17,'pages','title',1,'pt','Olá Mundo','2020-08-17 21:21:55','2020-08-17 21:21:55'),(18,'pages','slug',1,'pt','ola-mundo','2020-08-17 21:21:55','2020-08-17 21:21:55'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2020-08-17 21:21:55','2020-08-17 21:21:55'),(20,'menu_items','title',1,'pt','Painel de Controle','2020-08-17 21:21:56','2020-08-17 21:21:56'),(21,'menu_items','title',2,'pt','Media','2020-08-17 21:21:56','2020-08-17 21:21:56'),(22,'menu_items','title',12,'pt','Publicações','2020-08-17 21:21:56','2020-08-17 21:21:56'),(23,'menu_items','title',3,'pt','Utilizadores','2020-08-17 21:21:56','2020-08-17 21:21:56'),(24,'menu_items','title',11,'pt','Categorias','2020-08-17 21:21:56','2020-08-17 21:21:56'),(25,'menu_items','title',13,'pt','Páginas','2020-08-17 21:21:56','2020-08-17 21:21:56'),(26,'menu_items','title',4,'pt','Funções','2020-08-17 21:21:56','2020-08-17 21:21:56'),(27,'menu_items','title',5,'pt','Ferramentas','2020-08-17 21:21:56','2020-08-17 21:21:56'),(28,'menu_items','title',6,'pt','Menus','2020-08-17 21:21:56','2020-08-17 21:21:56'),(29,'menu_items','title',7,'pt','Base de dados','2020-08-17 21:21:56','2020-08-17 21:21:56'),(30,'menu_items','title',10,'pt','Configurações','2020-08-17 21:21:56','2020-08-17 21:21:56');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (13,'Altanshagai .M',3,'admin@admin.com',NULL,'$2y$10$WSgwp59D5HyK6SkPqOF8I.eQ2cvv/GZG7ocPdM7sPkSm3kdbvInq6','DgboOqPljwLCPwfJQX0zml9rGkDGyqKD582Kn0Wc7nQulaudA1CcvHFPdZfW','2020-08-24 21:35:12','2020-10-28 02:20:36','users/default.png','{\"locale\":\"en\"}');
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

-- Dump completed on 2020-12-07 12:01:46
