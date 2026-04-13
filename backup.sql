/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.11-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: craftcottage_bwn_db
-- ------------------------------------------------------
-- Server version	10.11.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` varchar(10) NOT NULL,
  `admin_mobile` varchar(10) NOT NULL,
  `admin_password` varchar(80) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `admin_created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `vendor_mobile` (`admin_mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES
('2147483647','9632587410','$2y$10$6NVG9qRlkq92Qv3VM/bKve4xdQRm9QBMeRmaZbd066aXUosJpPtvK','abc@xyz.com',NULL,'2025-09-20 16:03:04','2025-09-20 16:03:04');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `br_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `br_name` varchar(50) NOT NULL,
  `br_cmp` varchar(50) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`br_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES
(1,'Craft Cottage','Craft Cottage',1,'2026-03-15 05:15:02','2026-03-15 05:15:02'),
(2,'One Star','Radhika Enterprise',1,'2026-03-15 05:20:03','2026-03-15 05:20:03'),
(3,'Minu','Minu',1,'2026-03-18 12:41:00','2026-03-18 12:41:00'),
(4,'Silky Dhamaka','Piyush Textile',1,'2026-03-18 13:13:48','2026-03-18 13:13:48'),
(5,'Jamdani Saree','Shantipur Jamdani',1,'2026-03-18 13:22:27','2026-03-18 13:22:27'),
(6,'Shantipur','Shri Textile',1,'2026-03-18 13:30:10','2026-03-31 11:16:44'),
(7,'Mulberry Silk Saree','Jeevan Sri',1,'2026-03-18 13:37:31','2026-03-18 13:37:31'),
(8,'Evergreen Silk Saree','Reena Saree',1,'2026-03-18 13:43:20','2026-03-18 13:43:20'),
(9,'Katan Silk Banarasi Saree','Shantipur Saree',1,'2026-03-18 13:49:04','2026-03-19 12:40:09'),
(10,'Karni Chilam Silk Saree','Vivisha ',1,'2026-03-18 13:56:18','2026-03-18 13:56:18'),
(11,'Open Border Silk Saree','ShantiPur Saree',1,'2026-03-19 10:32:39','2026-03-19 10:32:39'),
(12,'Sartin Saree','Maliska Sartin',1,'2026-03-19 12:10:51','2026-03-19 12:10:51'),
(13,'Dhakai Muslin saree','Shantipur Saree',1,'2026-03-19 12:16:27','2026-03-19 12:16:27'),
(14,'Pochampalli Silk Saree','Shantipur Saree',1,'2026-03-19 12:51:03','2026-03-19 12:51:03'),
(15,'Dhola Silk Saree','Shantipur Saree',1,'2026-03-19 12:57:40','2026-03-19 12:57:40'),
(16,'Fandy Silk Saree','Surat',1,'2026-03-19 13:13:31','2026-03-19 13:13:31'),
(17,'Thausand Butti Silk Saree','Surat',1,'2026-03-19 14:05:32','2026-03-19 14:05:32'),
(18,'Classic Indigo Saree','Shantipur',1,'2026-03-20 05:40:15','2026-03-20 05:40:15'),
(19,'Pure Silk Swarnachuri Saree','       Julaha                                     ',1,'2026-03-20 07:01:40','2026-03-20 12:19:39'),
(20,'Handloom Saree','Babosa Saree',1,'2026-03-20 12:10:53','2026-03-20 12:10:53'),
(21,'Guddu Saree','Piyali Postion Jhalar',1,'2026-03-20 12:28:57','2026-03-20 12:28:57'),
(22,'Evergreen Silk Saree','Reena Saree',1,'2026-03-20 12:48:58','2026-03-20 12:48:58'),
(23,'Baluchuri Saree','Shantipur',1,'2026-03-20 13:10:28','2026-03-20 13:10:28'),
(24,'Exotic Ladies Handbag','Craft Cottage',1,'2026-03-20 13:16:28','2026-03-20 13:16:28'),
(25,'leather Handbag for Women','Woadland',1,'2026-03-20 13:34:08','2026-03-20 13:34:08'),
(26,'handcrafted cowrie shell necklace','Priksus',1,'2026-03-21 11:02:39','2026-03-21 11:02:39'),
(27,'Jimmy Choo Silk Saree','Gulab Fashion PVT  LTD',1,'2026-03-21 11:38:44','2026-03-21 11:38:44'),
(28,'Jute Necklace Set','Priksus',1,'2026-03-21 11:54:28','2026-03-21 11:54:28'),
(29,'Lux Cozi','Lux',1,'2026-03-31 11:56:51','2026-03-31 11:56:51'),
(30,'Rupa','Rupa  Company Limited',1,'2026-04-01 05:24:56','2026-04-01 05:24:56'),
(31,'Sonajhuri','Sonajhuri PVT LTD',1,'2026-04-01 05:59:00','2026-04-01 05:59:00'),
(32,'Dollar','Dollar Industries LTD',1,'2026-04-01 06:20:58','2026-04-01 06:20:58'),
(33,'Boxer','MTSNCS',1,'2026-04-01 06:54:22','2026-04-01 06:54:22'),
(34,'Neo','Gujarat PVT LTD',1,'2026-04-01 11:39:14','2026-04-01 11:39:14');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `parent_id` smallint(5) unsigned NOT NULL,
  `cat_id` smallint(5) unsigned NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES
(1,1,'Women\'s Fashion',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(2,2,'Men\'s Wear',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(3,3,'Kid\'s Wear',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(4,4,'Jewellery',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(5,5,'Decor',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(6,6,'Home & Kitchen',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(7,7,'Bags',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(8,8,'Collectibles',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,9,'Sarees',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,10,'Kurtas & Kurtis',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,11,'Dress Material',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,12,'Lehenga',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,13,'Kurta Sets & Salwar Suits',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,14,'Gowns',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,15,'Dupattas',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,16,'Jeans',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,17,'Topwear',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,18,'Leggings & Capris',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,19,'Bras & Panties',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,20,'Camisoles & Slips',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,21,'Palazzos',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,22,'Petticoats & Blouse',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,23,'Dhoti pants & Patiala pants',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,24,'Skirts',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,25,'Nighty',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,26,'Shawl',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,27,'Jacket',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(1,28,'Sweaters',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(2,29,'T-Shirts',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(2,30,'Formal Shirts',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(2,31,'Casual Shirts',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(2,32,'Jeans',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(2,33,'Casual Trousers',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(2,34,'Shorts & Cargos',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(2,35,'Jacket',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(2,36,'Sweater',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(2,37,'Tracksuits',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(2,38,'Lungi & Dhoti',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(2,39,'Punjabi & Payjama',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(2,40,'Brief & Vests',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(3,41,'Baby Boy combo set',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(3,42,'Baby Girl combo set',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(3,43,'T-Shirts & Shirts',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(3,44,'Innerwear',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(3,45,'Dresses & Gowns',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(3,46,'Shorts',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(3,47,'Girl\'s & Boy\'s sweater',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(3,48,'Girl\'s & Boy\'s jacket',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(3,49,'Thermals',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(4,50,'Jewellery',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(5,51,'Wall Decor',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(5,52,'Handicraft',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(6,53,'Home & Kitchen',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(7,54,'Handmade Bags',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(7,55,'Bags',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(7,56,'Crafted Collections',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(7,57,'Cotton Bags',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(7,58,'Leather Bags',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(7,59,'Hand Purse',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(8,60,'Wood Craft',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(8,61,'Terracota',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(8,62,'Metal Craft',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(8,63,'Dokra Art',1,'2025-07-12 16:32:56','2025-07-12 11:02:56'),
(2,64,'Inner Wear',1,'2026-04-11 10:02:00','2026-04-11 10:02:00');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_generic_map`
--

DROP TABLE IF EXISTS `category_generic_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_generic_map` (
  `cat_id` smallint(5) unsigned NOT NULL,
  `gen_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`,`gen_id`),
  KEY `map_generic_id_key` (`gen_id`),
  CONSTRAINT `map_category_id_key` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`),
  CONSTRAINT `map_generic_id_key` FOREIGN KEY (`gen_id`) REFERENCES `generic` (`gen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_generic_map`
--

LOCK TABLES `category_generic_map` WRITE;
/*!40000 ALTER TABLE `category_generic_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_generic_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charge`
--

DROP TABLE IF EXISTS `charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `charge` (
  `charge_id` int(11) NOT NULL AUTO_INCREMENT,
  `charge_head` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `min_order_amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`charge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charge`
--

LOCK TABLES `charge` WRITE;
/*!40000 ALTER TABLE `charge` DISABLE KEYS */;
/*!40000 ALTER TABLE `charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic`
--

DROP TABLE IF EXISTS `generic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `generic` (
  `gen_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL,
  `gen_name` varchar(100) NOT NULL,
  `gen_layout_json` varchar(300) DEFAULT NULL,
  `active` tinyint(3) unsigned NOT NULL,
  `rank` float unsigned NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`gen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic`
--

LOCK TABLES `generic` WRITE;
/*!40000 ALTER TABLE `generic` DISABLE KEYS */;
INSERT INTO `generic` VALUES
(1,0,'Kurti',NULL,0,0,'2026-03-14 14:22:44','2026-03-14 14:22:44'),
(2,0,'Woman Innerwear',NULL,0,0,'2026-03-15 05:18:18','2026-03-15 05:21:35'),
(3,0,'Saree',NULL,0,0,'2026-03-18 12:39:55','2026-03-18 12:39:55'),
(4,0,'Ladies HandBag',NULL,0,0,'2026-03-20 13:14:32','2026-03-20 13:16:50'),
(5,0,'leather handbags',NULL,0,0,'2026-03-20 13:32:33','2026-03-20 13:32:33'),
(6,0,'Handcrafted Cowrie Shell Necklace',NULL,0,0,'2026-03-21 11:03:40','2026-03-21 11:08:49'),
(7,0,'Jute Necklace Set',NULL,0,0,'2026-03-21 11:51:50','2026-03-21 11:51:50'),
(8,0,'Men Underwear',NULL,0,0,'2026-03-31 11:55:15','2026-03-31 11:55:15'),
(9,0,'Bermuda Shorts',NULL,0,0,'2026-04-01 05:23:06','2026-04-01 05:23:06'),
(10,0,'Half Shirt',NULL,0,0,'2026-04-01 05:56:31','2026-04-01 05:56:31'),
(11,0,'Men Kurta',NULL,0,0,'2026-04-01 06:15:26','2026-04-01 06:15:26'),
(12,0,'Punjabi For Men ',NULL,0,0,'2026-04-01 11:47:24','2026-04-01 11:52:37');
/*!40000 ALTER TABLE `generic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_meta`
--

DROP TABLE IF EXISTS `generic_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `generic_meta` (
  `gen_id` int(20) unsigned NOT NULL,
  `gen_meta_json` text NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`gen_id`),
  CONSTRAINT `gen_meta_id` FOREIGN KEY (`gen_id`) REFERENCES `generic` (`gen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_meta`
--

LOCK TABLES `generic_meta` WRITE;
/*!40000 ALTER TABLE `generic_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `generic_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gst`
--

DROP TABLE IF EXISTS `gst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `gst` (
  `gst_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `cgst_percent` decimal(5,2) unsigned NOT NULL,
  `sgst_percent` decimal(5,2) unsigned NOT NULL,
  `igst_percent` decimal(5,2) unsigned NOT NULL,
  PRIMARY KEY (`gst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gst`
--

LOCK TABLES `gst` WRITE;
/*!40000 ALTER TABLE `gst` DISABLE KEYS */;
INSERT INTO `gst` VALUES
(1,0.00,0.00,0.00);
/*!40000 ALTER TABLE `gst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` varchar(10) NOT NULL,
  `vendor_id` varchar(10) NOT NULL,
  `cat_id` smallint(5) unsigned NOT NULL,
  `br_id` int(10) unsigned NOT NULL,
  `gen_id` int(20) unsigned NOT NULL,
  `min_qty` smallint(5) unsigned NOT NULL,
  `unit_mrp` float unsigned NOT NULL,
  `unit_price` float unsigned NOT NULL,
  `gst_id` tinyint(3) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL,
  `rating` float unsigned NOT NULL,
  `rank` float unsigned NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sound` tinyint(4) NOT NULL DEFAULT 0,
  `item_description` text NOT NULL DEFAULT '',
  `item_name` text NOT NULL DEFAULT '',
  PRIMARY KEY (`item_id`),
  KEY `vendor_id_key` (`vendor_id`),
  KEY `generic_id_key` (`gen_id`),
  KEY `item_gst_id_key` (`gst_id`),
  CONSTRAINT `generic_id_key` FOREIGN KEY (`gen_id`) REFERENCES `generic` (`gen_id`),
  CONSTRAINT `item_gst_id_key` FOREIGN KEY (`gst_id`) REFERENCES `gst` (`gst_id`),
  CONSTRAINT `vendor_id_key` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES
('CC0V1D70NM','CCFR828QMM',9,5,3,1,860,650,1,1,0,1,'2026-03-21 10:46:10','2026-03-26 18:05:48',1,'Pure Cotton jamdani Saree','Pure Cotton jamdani Saree'),
('CC1CMRFXMM','CCFR828QMM',9,13,3,1,1420,1200,1,1,0,1,'2026-03-19 12:18:08','2026-03-26 18:05:48',1,'Dhakai Muslin Saree','Dhakai Muslin Saree'),
('CC1KXO3WMM','CCFR828QMM',9,9,3,1,2450,2160,1,1,0,1,'2026-03-18 13:52:21','2026-03-26 18:05:48',1,'Katan Silk Saree','Katan Silk Saree'),
('CC1SBQJXMM','CCFR828QMM',9,17,3,1,2150,1820,1,1,0,1,'2026-03-19 14:09:06','2026-03-26 18:05:48',1,' The elegance of traditional fabric and finery with Blouse .','Thausand Butti Silk Saree'),
('CC1W3AHXMM','CCFR828QMM',9,15,3,1,975,820,1,1,0,1,'2026-03-19 13:00:30','2026-03-26 18:05:48',1,'Dhola silk sarees are luxurious, soft, and lightweight garments made from a blend of silk and synthetic fibers , featuring a subtle sheen and high durability.','Dhola Silk Saree'),
('CC2FKUVYMM','CCFR828QMM',9,9,3,1,1050,900,1,1,0,1,'2026-03-20 12:36:05','2026-03-26 18:05:48',1,'Pure Soft & Silky','Maliska Sartin Silk Saree'),
('CC3FB1CXMM','CCFR828QMM',9,11,3,1,735,690,1,1,0,1,'2026-03-19 10:33:42','2026-03-26 18:05:48',1,'Open Border Silk Saree','Open Border Silk Saree'),
('CC3KP090NM','CCFR828QMM',9,4,3,1,799,510,1,1,0,1,'2026-03-21 11:32:33','2026-03-26 18:05:48',1,'Pure Silk Saree','Pure Silk Saree'),
('CC3ODJ80NM','CCFR828QMM',9,20,3,1,599,380,1,1,0,1,'2026-03-21 11:19:04','2026-03-26 18:05:48',1,'Pure Cotton Handloom Saree','Pure Cotton Handloom Saree'),
('CC3XW6ZFNM','CCFR828QMM',46,34,9,0,249,190,1,1,0,1,'2026-04-01 11:41:45','2026-04-01 11:43:49',1,'technical water sports shorts',' Neo Bermuda '),
('CC4D30PFNM','CCFR828QMM',46,33,9,0,299,190,1,1,0,1,'2026-04-01 06:56:31','2026-04-01 07:01:40',1,'Pure Cotton Bermuda Shorts','Pure Cotton Bermuda Shorts'),
('CC6B0BYYMM','CCFR828QMM',59,25,4,1,199,130,1,1,0,1,'2026-03-20 13:44:52','2026-03-26 18:05:48',1,'leather handbags for women','Hand Purse'),
('CC6CPLNFNM','CCFR828QMM',43,31,11,0,399,215,1,1,0,1,'2026-04-01 06:17:20','2026-04-01 06:18:32',1,'Men Printed Pure Cotton Blend Straight Kurta ','Men Printed Cotton Blend Straight Kurta '),
('CC6YQOOFNM','CCFR828QMM',10,31,11,0,299,215,1,1,0,1,'2026-04-01 06:47:41','2026-04-01 06:50:26',1,'Man Printed Cotton Blend Straight Kurta','Man Printed Cotton Blend Straight Kurta'),
('CC741JIXMM','CCFR828QMM',9,9,3,1,3960,3700,1,1,0,1,'2026-03-19 13:35:26','2026-03-26 18:05:48',1,'Katan Silk Bararasi Saree With Blouse Piece .','Katan Silk Banarasi Saree '),
('CC85NDWYMM','CCFR828QMM',9,22,3,1,799,690,1,1,0,1,'2026-03-20 12:50:55','2026-03-26 18:05:48',1,'Evergreen Silk Saree ','Evergreen Silk Saree '),
('CC9R8BA0NM','CCFR828QMM',9,20,3,1,599,300,1,1,0,1,'2026-03-21 12:08:44','2026-03-26 18:05:48',1,'Handloom Saree','Handloom Saree'),
('CCA6A0IXMM','CCFR828QMM',9,9,3,1,2250,2015,1,1,0,1,'2026-03-19 13:20:51','2026-03-26 18:05:48',1,'Katan Open Border Slik Banarasi Saree With Blouse Piece .','Katan Silk Banarasi Saree'),
('CCADDP80NM','CCFR828QMM',9,4,3,1,1199,980,1,1,0,1,'2026-03-21 11:23:44','2026-03-26 18:05:48',1,'Madhosh Silk Saree','Madhosh Silk Saree'),
('CCAJAIHXMM','CCFR828QMM',9,14,3,1,1220,940,1,1,0,1,'2026-03-19 13:06:52','2026-03-26 18:05:48',1,'A Pochampally saree is a traditional handwoven saree made in Bhoodan Pochampally, Telangana, India, renowned for its distinctive geometric patterns and vibrant colors.','Ponchampalli Chilam Silk Saree'),
('CCAMXSJXMM','CCFR828QMM',9,17,3,1,2150,1820,1,1,0,1,'2026-03-19 14:11:07','2026-03-26 18:05:48',1,'The elegance of traditional fabric and finery with Blouse .','1000 Butti Silk Saree'),
('CCB0R5A0NM','CCFR828QMM',9,20,3,1,599,300,1,1,0,1,'2026-03-21 12:04:28','2026-03-26 18:05:48',1,'Handloom Saree','Handloom Saree'),
('CCB2CYVYMM','CCFR828QMM',9,11,3,1,850,690,1,1,0,1,'2026-03-20 12:39:01','2026-03-26 18:05:48',1,'Open Border Silk Saree','Open Border Silk Saree'),
('CCBJD93WMM','CCFR828QMM',9,7,3,1,1050,854,1,1,0,1,'2026-03-18 13:40:15','2026-03-26 18:05:48',1,'Mulberry Silk Saree','Mulberry Silk Saree'),
('CCBL22NFNM','CCFR828QMM',31,31,10,0,399,240,1,1,0,1,'2026-04-01 06:02:04','2026-04-01 06:03:40',1,'Printed Half Sleeve Shirt for Men','Printed Half Sleeve Shirt for Men'),
('CCBOXCA0NM','CCFR828QMM',9,20,3,1,599,300,1,1,0,1,'2026-03-21 12:10:03','2026-03-26 18:05:48',1,'Handloom Saree','Handloom Saree'),
('CCCZK0XYMM','CCFR828QMM',9,12,3,1,1150,900,1,1,0,1,'2026-03-20 13:08:46','2026-03-26 18:05:48',1,'Maliska Sartin Silk Saree','Maliska Sartin Silk Saree'),
('CCD1E4XYMM','CCFR828QMM',9,23,3,1,885,690,1,1,0,1,'2026-03-20 13:11:43','2026-03-26 18:05:48',1,'Baluchuri Silk Saree','Baluchuri Silk Saree'),
('CCE2KDVYMM','CCFR828QMM',9,19,3,1,1125,975,1,1,0,1,'2026-03-20 12:22:52','2026-03-26 18:05:48',1,'Swarnachari sarees are opulent Bengali pure silk sarees .','Pure Silk Swarnachuri Saree'),
('CCEHXCGXMM','CCFR828QMM',9,12,3,1,1050,900,1,1,0,1,'2026-03-19 12:34:42','2026-03-26 18:05:48',1,'Maliska Sartin Saree','Maliska Sartin Saree'),
('CCEIGALENM','CCFR828QMM',9,6,3,0,499,375,1,1,0,1,'2026-03-31 12:24:50','2026-03-31 12:26:34',1,'Handloom sarees often have slight, charming irregularities, such as tiny knots or thread pulls, indicating they are made by hand, not machines.','Handloom Saree'),
('CCF3Y0YYMM','CCFR828QMM',55,25,5,1,425,350,1,1,0,1,'2026-03-20 13:37:02','2026-03-26 18:05:48',1,'leather handbags for women','leather handbags for women'),
('CCFBGOVYMM','CCFR828QMM',9,21,3,1,1230,1000,1,1,0,1,'2026-03-20 12:31:20','2026-03-26 18:05:48',1,' Frequently highlights Bollywood style, casual wear, and party wear.','Guddu Saree'),
('CCFLOAIXMM','CCFR828QMM',9,9,3,1,3150,2815,1,1,0,1,'2026-03-19 13:28:56','2026-03-26 18:05:48',1,'Katan Silk Banarasi Saree With Blouse Piece .','Katan Silk Banarasi Saree '),
('CCFOJSUYMM','CCFR828QMM',9,19,3,1,1520,1300,1,1,0,1,'2026-03-20 12:06:31','2026-03-26 18:05:48',1,'Swarnachuram Saree','Swarnachuram Saree'),
('CCFW5VNFNM','CCFR828QMM',46,32,8,0,199,125,1,1,0,1,'2026-04-01 06:24:41','2026-04-01 06:35:03',1,'100% super combed cotton, designed for all-day comfort with soft elastic waistbands and antimicrobial technology to prevent odor.','Dollar Interlock Trunk (SCD)'),
('CCGFJB0GNM','CCFR828QMM',39,31,12,0,410,280,1,1,0,1,'2026-04-01 12:13:21','2026-04-01 12:17:45',1,'A popular ethnic garment combining traditional styling with contemporary comfort','Men Printed Cotton Blend Straight Kurta'),
('CCH30O2WMM','CCFR828QMM',9,5,3,1,1450,1320,1,1,0,1,'2026-03-18 13:23:38','2026-03-26 18:05:48',1,'Jamdani Saree','Jamdani Saree'),
('CCHA8W90NM','CCFR828QMM',52,28,7,1,199,120,1,1,0,1,'2026-03-21 11:57:04','2026-03-26 18:05:48',1,'Deep Yellow Owl Jute Necklace Set\r\n','Deep Yellow Jute Owl Necklace Set'),
('CCIVGV80NM','CCFR828QMM',9,4,3,1,899,720,1,1,0,1,'2026-03-21 11:28:28','2026-03-26 18:05:48',1,'Saniya Patli Pallu Silk Saree With Blouse Piece','Saniya Patli Pallu Silk Saree'),
('CCJ91KFXMM','CCFR828QMM',9,12,3,1,1050,900,1,1,0,1,'2026-03-19 12:12:14','2026-03-26 18:05:48',1,'Sartin Saree','Sartin Saree'),
('CCJSN3LENM','CCFR828QMM',9,6,3,0,799,515,1,1,0,1,'2026-03-31 12:19:33','2026-03-31 12:23:31',1,' Handloom sarees often have slight, charming irregularities, such as tiny knots or thread pulls, indicating they are made by hand, not machines.','Handloom saree'),
('CCJSS1VYMM','CCFR828QMM',9,20,3,1,1050,820,1,1,0,1,'2026-03-20 12:13:43','2026-03-26 18:05:48',1,'comfortable and breathable, which makes them suitable to wear all year round. Cotton sarees are suitable during the monsoons, winters, and summers.','Handloom Cotton Saree'),
('CCL0AP60NM','CCFR828QMM',9,20,3,1,1050,820,1,1,0,1,'2026-03-21 10:27:40','2026-03-26 18:05:48',1,'Maahi Handloom Saree','Maahi Handloom Saree'),
('CCM4D5GXMM','CCFR828QMM',9,5,3,1,370,285,1,1,0,1,'2026-03-19 12:28:49','2026-03-26 18:05:48',1,'Jamdani Saree','Jamdani Saree'),
('CCMMRV3WMM','CCFR828QMM',9,10,3,1,2185,1815,1,1,0,1,'2026-03-18 13:57:40','2026-03-26 18:05:48',1,'Karni Chilam Silk Saree','Karni Chilam Silk Saree'),
('CCNKH0A0NM','CCFR828QMM',9,20,3,1,599,300,1,1,0,1,'2026-03-21 12:00:22','2026-03-26 18:05:48',1,'Handloom Saree','Handloom Saree'),
('CCNPTZGXMM','CCFR828QMM',9,14,3,1,1260,1000,1,1,0,1,'2026-03-19 12:52:30','2026-03-26 18:05:48',1,'Pochampalli Silk Woven Design Saree with Unstitched Blouse','Pochampalli Chilam Silk Saree'),
('CCP2TFKENM','CCFR828QMM',44,29,8,0,189,125,1,1,0,1,'2026-03-31 12:01:00','2026-03-31 12:04:39',1,'100% combed cotton, long-style innerwear designed for maximum comfort, breathability, and durability.','Lux Cozi Longs Interlock FCD'),
('CCPPP30GNM','CCFR828QMM',39,31,12,0,450,300,1,1,0,1,'2026-04-01 12:07:15','2026-04-01 12:10:28',1,'A popular ethnic garment combining traditional styling with contemporary comfort','Men Printed Cotton Blend Straight Punjabi'),
('CCQIF2HYMM','CCFR828QMM',9,18,3,1,850,635,1,1,0,1,'2026-03-20 05:42:18','2026-03-26 18:05:48',1,'Classic Indigo Saree','Classic Indigo Saree'),
('CCQJRZ60NM','CCFR828QMM',9,20,3,1,1399,1150,1,1,0,1,'2026-03-21 10:35:50','2026-03-26 18:05:48',1,'Maahi Handloom Saree','Maahi Handloom Saree'),
('CCQTVJCTMM','CCFR828QMM',10,1,1,1,110,100,1,1,0,1,'2026-03-16 15:37:03','2026-03-26 18:05:48',1,'demo description','Pname'),
('CCQW224WMM','CCFR828QMM',9,10,3,1,2195,1820,1,1,0,1,'2026-03-18 14:02:34','2026-03-26 18:05:48',1,'Karni Chilam Silk Saree','Karni Chilam Silk Saree'),
('CCQWR03WMM','CCFR828QMM',9,6,3,1,780,690,1,1,0,1,'2026-03-18 13:33:34','2026-03-26 18:05:48',1,'Silky Saree','Silky Saree'),
('CCRL8280NM','CCFR828QMM',52,26,6,1,199,120,1,1,0,1,'2026-03-21 11:05:45','2026-03-26 18:05:48',1,'Handmade Green & White Cowrie Shell Jewelry Set for Women – Ethnic Necklace & Earrings – Traditional & Tribal Jewellery for Festivals','Handcrafted cowrie shell necklace'),
('CCRTS91WMM','CCFR828QMM',9,3,3,1,1350,1200,1,1,0,1,'2026-03-18 12:44:36','2026-03-26 18:05:48',1,'Minu Silk Saree','Minu Silk Saree'),
('CCSBS8GXMM','CCFR828QMM',9,5,3,1,370,285,1,1,0,1,'2026-03-19 12:31:29','2026-03-26 18:05:48',1,'Jamdani Saree','Jamdani Saree'),
('CCT8IM80NM','CCFR828QMM',9,20,3,1,599,420,1,1,0,1,'2026-03-21 11:21:30','2026-03-26 18:05:48',1,'Pure Cotton Handloom Saree','Pure Cotton Handloom Saree'),
('CCT8SE2WMM','CCFR828QMM',9,4,3,1,750,685,1,1,0,1,'2026-03-18 13:16:28','2026-03-26 18:05:48',1,'Open Border Silk Saree','Open Border Silk Saree'),
('CCTCGC80NM','CCFR828QMM',52,26,6,1,199,120,1,1,0,1,'2026-03-21 11:13:41','2026-03-26 18:05:48',1,'Handcrafted Durga Devi Pendant Necklace, Traditional Indian Design with Shell Beads, Green and White','Handcrafted cowrie shell necklace'),
('CCTLPI0GNM','CCFR828QMM',39,31,12,0,410,280,1,1,0,1,'2026-04-01 12:18:55','2026-04-01 12:22:25',1,'A popular ethnic garment combining traditional styling with contemporary comfort','Men Printed Cotton Blend Straight Kurta'),
('CCUQT1YFNM','CCFR828QMM',31,31,10,0,299,240,1,1,0,1,'2026-04-01 11:09:48','2026-04-01 11:17:31',1,'	100% Cotton Half Sleeve Printed Shirt for Men & Lightweight & soft fabric.','Printed Half Sleeve Shirt for Man'),
('CCUWJNZFNM','CCFR828QMM',39,31,12,0,355,280,1,1,0,1,'2026-04-01 11:54:41','2026-04-01 11:56:30',1,'A popular ethnic garment combining traditional styling with contemporary comfort','Men Printed Cotton Blend Straight Punjabi'),
('CCV1LE3WMM','CCFR828QMM',9,8,3,1,675,550,1,1,0,1,'2026-03-18 13:44:18','2026-03-26 18:05:48',1,'Evergreen Silk Saree','Evergreen Silk Saree'),
('CCVPUOYFNM','CCFR828QMM',31,31,11,0,299,240,1,1,0,1,'2026-04-01 11:27:42','2026-04-01 11:31:34',1,' A breathable, lightweight blend of cotton and synthetic fibers, balancing durability with comfort.','Men Printed Cotton Blend Straight Kurta'),
('CCW6Z96UMM','CCFR828QMM',19,2,2,1,75,65,1,1,0,1,'2026-03-17 05:29:09','2026-03-26 18:05:48',1,'Women lnnerwear','Women lnnerwear'),
('CCW9KF90NM','CCFR828QMM',9,27,3,1,1399,1055,1,1,0,1,'2026-03-21 11:44:06','2026-03-26 18:05:48',1,'These sarees feature lightweight, flowy fabric that\'s perfect for warm weather .',' JENIFER PURE SOFT JIMMY CHOO SILK SAREE'),
('CCWC52GXMM','CCFR828QMM',9,5,3,1,425,375,1,1,0,1,'2026-03-19 12:26:19','2026-03-26 18:05:48',1,'Jamdani Saree','Jamdani Saree'),
('CCWCD6WYMM','CCFR828QMM',9,19,3,1,799,690,1,1,0,1,'2026-03-20 12:45:16','2026-03-26 18:05:48',1,'Swarnachuri Saree','Swarnachuri Saree'),
('CCWK8LXYMM','CCFR828QMM',55,24,4,1,299,150,1,1,0,1,'2026-03-20 13:24:49','2026-03-26 18:05:48',1,'Exotic Ladies Handbag','Exotic Ladies Handbag'),
('CCWKLTWYMM','CCFR828QMM',9,12,3,1,1150,900,1,1,0,1,'2026-03-20 13:03:20','2026-03-26 18:05:48',1,'Maliska Sartin Silk Saree','Maliska Sartin Silk Saree'),
('CCX1BNGXMM','CCFR828QMM',9,9,3,1,2495,2290,1,1,0,1,'2026-03-19 12:42:46','2026-03-26 18:05:48',1,'Katan Silk is the purest form of silk with a plain woven fabric .','Katan Silk Banarasi Saree'),
('CCX3MG5UMM','CCFR828QMM',19,2,2,1,85,75,1,1,0,1,'2026-03-17 05:06:20','2026-03-26 18:05:48',1,'Woman Innerwear','Woman Innerwear'),
('CCXRQ6IXMM','CCFR828QMM',9,11,3,1,1430,1140,1,1,0,1,'2026-03-19 13:25:53','2026-03-26 18:05:48',1,'Open border silk saree features a distinct, often contrasting border woven separately and attached, resulting in a luxurious, lightweight, and modern traditional look with Blouse Piece .','Open Border Silk Saree'),
('CCXU6EIXMM','CCFR828QMM',9,9,3,1,2265,2100,1,1,0,1,'2026-03-19 13:31:40','2026-03-26 18:05:48',1,'Katan Silk Banarasi Saree With Boluse Piece .','Katan Silk Banarasi Saree '),
('CCYTRGVYMM','CCFR828QMM',9,6,3,1,1740,1570,1,1,0,1,'2026-03-20 12:25:22','2026-03-26 18:05:48',1,'Super Silky Saree','Silk Saree'),
('CCZATVLFNM','CCFR828QMM',46,30,9,0,439,320,1,1,0,1,'2026-04-01 05:29:12','2026-04-01 05:36:53',1,'Comfortable, high-quality casual wear, typically made from 40s count super combed cotton for superior softness and durability.','Mercerised Printed Bermuda With Zip'),
('CCZAXTHXMM','CCFR828QMM',9,16,3,1,1050,850,1,1,0,1,'2026-03-19 13:15:54','2026-03-26 18:05:48',1,'Pure Fandy Silk Saree With Blouse','Pure Fandy Silk Saree'),
('CCZCQEYYMM','CCFR828QMM',9,20,3,1,425,380,1,1,0,1,'2026-03-20 13:47:45','2026-03-26 18:05:48',1,'Pure Cotton Handloom Saree','Pure Cotton Handloom Saree'),
('CCZXY6YYMM','CCFR828QMM',59,25,4,1,199,130,1,1,0,1,'2026-03-20 13:41:43','2026-03-26 18:05:48',1,'leather handbags for women',' Hand Purse');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_feature`
--

DROP TABLE IF EXISTS `item_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_feature` (
  `item_id` varchar(10) NOT NULL,
  `feature_id` varchar(50) NOT NULL,
  `feature_value` varchar(50) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`item_id`,`feature_id`),
  CONSTRAINT `item_feature_key` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_feature`
--

LOCK TABLES `item_feature` WRITE;
/*!40000 ALTER TABLE `item_feature` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_image`
--

DROP TABLE IF EXISTS `item_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_image` (
  `item_id` varchar(10) NOT NULL,
  `item_image_url` varchar(255) NOT NULL,
  `item_image_created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `color` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`item_id`,`item_image_url`),
  CONSTRAINT `image_item_id_key` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_image`
--

LOCK TABLES `item_image` WRITE;
/*!40000 ALTER TABLE `item_image` DISABLE KEYS */;
INSERT INTO `item_image` VALUES
('CC0V1D70NM','https://vendor.e-craft.in/uploads/CC0V1D70NM_69be77092e3eb_lg.jpeg','2026-03-21 10:46:33',''),
('CC0V1D70NM','https://vendor.e-craft.in/uploads/CC0V1D70NM_69be770f7a1aa_lg.jpeg','2026-03-21 10:46:39',''),
('CC0V1D70NM','https://vendor.e-craft.in/uploads/CC0V1D70NM_69be770f82cd8_lg.jpeg','2026-03-21 10:46:39',''),
('CC1CMRFXMM','https://vendor.e-craft.in/uploads/CC1CMRFXMM_69bbe999892fd_lg.jpeg','2026-03-19 12:18:33',''),
('CC1CMRFXMM','https://vendor.e-craft.in/uploads/CC1CMRFXMM_69bbe9a047953_lg.jpeg','2026-03-19 12:18:40',''),
('CC1CMRFXMM','https://vendor.e-craft.in/uploads/CC1CMRFXMM_69bbe9a62e4c6_lg.jpeg','2026-03-19 12:18:46',''),
('CC1KXO3WMM','https://vendor.e-craft.in/uploads/CC1KXO3WMM_69baae4d45904_lg.jpeg','2026-03-18 13:53:17',''),
('CC1KXO3WMM','https://vendor.e-craft.in/uploads/CC1KXO3WMM_69baae5e7e748_lg.jpeg','2026-03-18 13:53:34',''),
('CC1SBQJXMM','https://vendor.e-craft.in/uploads/CC1SBQJXMM_69bc0391e1b02_lg.jpeg','2026-03-19 14:09:21',''),
('CC1W3AHXMM','https://vendor.e-craft.in/uploads/CC1W3AHXMM_69bbf39360849_lg.jpeg','2026-03-19 13:01:07',''),
('CC1W3AHXMM','https://vendor.e-craft.in/uploads/CC1W3AHXMM_69bbf39b6ff68_lg.jpeg','2026-03-19 13:01:15',''),
('CC1W3AHXMM','https://vendor.e-craft.in/uploads/CC1W3AHXMM_69bbf3aad87c6_lg.jpeg','2026-03-19 13:01:30',''),
('CC2FKUVYMM','https://vendor.e-craft.in/uploads/CC2FKUVYMM_69bd3f52851d7_lg.jpeg','2026-03-20 12:36:34',''),
('CC2FKUVYMM','https://vendor.e-craft.in/uploads/CC2FKUVYMM_69bd3f72b792e_lg.jpeg','2026-03-20 12:37:06',''),
('CC2FKUVYMM','https://vendor.e-craft.in/uploads/CC2FKUVYMM_69bd3f7a1d2bb_lg.jpeg','2026-03-20 12:37:14',''),
('CC3FB1CXMM','https://vendor.e-craft.in/uploads/CC3FB1CXMM_69bbd1663b1ab_lg.jpeg','2026-03-19 10:35:18',''),
('CC3FB1CXMM','https://vendor.e-craft.in/uploads/CC3FB1CXMM_69bbd16c8990e_lg.jpeg','2026-03-19 10:35:24',''),
('CC3FB1CXMM','https://vendor.e-craft.in/uploads/CC3FB1CXMM_69bbd17303572_lg.jpeg','2026-03-19 10:35:31',''),
('CC3KP090NM','https://vendor.e-craft.in/uploads/CC3KP090NM_69be81e52c3ee_lg.jpeg','2026-03-21 11:32:53',''),
('CC3KP090NM','https://vendor.e-craft.in/uploads/CC3KP090NM_69be81ea600b6_lg.jpeg','2026-03-21 11:32:58',''),
('CC3ODJ80NM','https://vendor.e-craft.in/uploads/CC3ODJ80NM_69be7ed155923_lg.jpeg','2026-03-21 11:19:45',''),
('CC3ODJ80NM','https://vendor.e-craft.in/uploads/CC3ODJ80NM_69be7ed881b0c_lg.jpeg','2026-03-21 11:19:52',''),
('CC3ODJ80NM','https://vendor.e-craft.in/uploads/CC3ODJ80NM_69be7ed88deab_lg.jpeg','2026-03-21 11:19:52',''),
('CC3XW6ZFNM','https://vendor.e-craft.in/uploads/CC3XW6ZFNM_69cd04ee75bd1_lg.jpeg','2026-04-01 11:43:42','Sky Blue'),
('CC4D30PFNM','https://vendor.e-craft.in/uploads/CC4D30PFNM_69ccc29556662_lg.jpeg','2026-04-01 07:00:37','Navy Blue'),
('CC6B0BYYMM','https://vendor.e-craft.in/uploads/CC6B0BYYMM_69bd4f60b554e_lg.jpeg','2026-03-20 13:45:04',''),
('CC6B0BYYMM','https://vendor.e-craft.in/uploads/CC6B0BYYMM_69bd4f60ba2c7_lg.jpeg','2026-03-20 13:45:04',''),
('CC6CPLNFNM','https://vendor.e-craft.in/uploads/CC6CPLNFNM_69ccb8822c3bc_lg.jpeg','2026-04-01 06:17:38',''),
('CC6YQOOFNM','https://vendor.e-craft.in/uploads/CC6YQOOFNM_69ccbfdd6f67f_lg.jpeg','2026-04-01 06:49:01',''),
('CC741JIXMM','https://vendor.e-craft.in/uploads/CC741JIXMM_69bbfc031fe12_lg.jpeg','2026-03-19 13:37:07',''),
('CC741JIXMM','https://vendor.e-craft.in/uploads/CC741JIXMM_69bbfc09e9f9e_lg.jpeg','2026-03-19 13:37:13',''),
('CC85NDWYMM','https://vendor.e-craft.in/uploads/CC85NDWYMM_69bd42ca068f8_lg.jpeg','2026-03-20 12:51:22',''),
('CC85NDWYMM','https://vendor.e-craft.in/uploads/CC85NDWYMM_69bd42ca0ec52_lg.jpeg','2026-03-20 12:51:22',''),
('CC85NDWYMM','https://vendor.e-craft.in/uploads/CC85NDWYMM_69bd42ca18380_lg.jpeg','2026-03-20 12:51:22',''),
('CC9R8BA0NM','https://vendor.e-craft.in/uploads/CC9R8BA0NM_69be8a55b4d89_lg.jpeg','2026-03-21 12:08:53',''),
('CC9R8BA0NM','https://vendor.e-craft.in/uploads/CC9R8BA0NM_69be8a5ad628a_lg.jpeg','2026-03-21 12:08:58',''),
('CCA6A0IXMM','https://vendor.e-craft.in/uploads/CCA6A0IXMM_69bbf8a21f2cd_lg.jpeg','2026-03-19 13:22:42',''),
('CCA6A0IXMM','https://vendor.e-craft.in/uploads/CCA6A0IXMM_69bbf8b0c19b0_lg.jpeg','2026-03-19 13:22:56',''),
('CCA6A0IXMM','https://vendor.e-craft.in/uploads/CCA6A0IXMM_69bbf8b7ea391_lg.jpeg','2026-03-19 13:23:03',''),
('CCADDP80NM','https://vendor.e-craft.in/uploads/CCADDP80NM_69be800da55f3_lg.jpeg','2026-03-21 11:25:01',''),
('CCADDP80NM','https://vendor.e-craft.in/uploads/CCADDP80NM_69be80165d36d_lg.jpeg','2026-03-21 11:25:10',''),
('CCADDP80NM','https://vendor.e-craft.in/uploads/CCADDP80NM_69be801c31a89_lg.jpeg','2026-03-21 11:25:16',''),
('CCAJAIHXMM','https://vendor.e-craft.in/uploads/CCAJAIHXMM_69bbf51dbb9e7_lg.jpeg','2026-03-19 13:07:41',''),
('CCAJAIHXMM','https://vendor.e-craft.in/uploads/CCAJAIHXMM_69bbf523626b0_lg.jpeg','2026-03-19 13:07:47',''),
('CCAJAIHXMM','https://vendor.e-craft.in/uploads/CCAJAIHXMM_69bbf52905956_lg.jpeg','2026-03-19 13:07:53',''),
('CCAMXSJXMM','https://vendor.e-craft.in/uploads/CCAMXSJXMM_69bc0403a1a7d_lg.jpeg','2026-03-19 14:11:15',''),
('CCB0R5A0NM','https://vendor.e-craft.in/uploads/CCB0R5A0NM_69be896a95cd3_lg.jpeg','2026-03-21 12:04:58',''),
('CCB2CYVYMM','https://vendor.e-craft.in/uploads/CCB2CYVYMM_69bd40078c20d_lg.jpeg','2026-03-20 12:39:35',''),
('CCB2CYVYMM','https://vendor.e-craft.in/uploads/CCB2CYVYMM_69bd400796076_lg.jpeg','2026-03-20 12:39:35',''),
('CCB2CYVYMM','https://vendor.e-craft.in/uploads/CCB2CYVYMM_69bd40079d428_lg.jpeg','2026-03-20 12:39:35',''),
('CCBJD93WMM','https://vendor.e-craft.in/uploads/CCBJD93WMM_69baab7644af0_lg.jpeg','2026-03-18 13:41:10',''),
('CCBJD93WMM','https://vendor.e-craft.in/uploads/CCBJD93WMM_69baab7d0d096_lg.jpeg','2026-03-18 13:41:17',''),
('CCBJD93WMM','https://vendor.e-craft.in/uploads/CCBJD93WMM_69baab9fb8be1_lg.jpeg','2026-03-18 13:41:51',''),
('CCBL22NFNM','https://vendor.e-craft.in/uploads/CCBL22NFNM_69ccb4e8ca7f4_lg.jpeg','2026-04-01 06:02:16',''),
('CCBL22NFNM','https://vendor.e-craft.in/uploads/CCBL22NFNM_69ccb4f5cd0e5_lg.jpeg','2026-04-01 06:02:29',''),
('CCBOXCA0NM','https://vendor.e-craft.in/uploads/CCBOXCA0NM_69be8ae435a25_lg.jpeg','2026-03-21 12:11:16',''),
('CCBOXCA0NM','https://vendor.e-craft.in/uploads/CCBOXCA0NM_69be8aeded9e3_lg.jpeg','2026-03-21 12:11:26',''),
('CCCZK0XYMM','https://vendor.e-craft.in/uploads/CCCZK0XYMM_69bd46f0e137d_lg.jpeg','2026-03-20 13:09:04',''),
('CCCZK0XYMM','https://vendor.e-craft.in/uploads/CCCZK0XYMM_69bd46fbf2ba0_lg.jpeg','2026-03-20 13:09:16',''),
('CCCZK0XYMM','https://vendor.e-craft.in/uploads/CCCZK0XYMM_69bd46fc06acb_lg.jpeg','2026-03-20 13:09:16',''),
('CCD1E4XYMM','https://vendor.e-craft.in/uploads/CCD1E4XYMM_69bd47b53a49d_lg.jpeg','2026-03-20 13:12:21',''),
('CCD1E4XYMM','https://vendor.e-craft.in/uploads/CCD1E4XYMM_69bd47b53fcb2_lg.jpeg','2026-03-20 13:12:21',''),
('CCD1E4XYMM','https://vendor.e-craft.in/uploads/CCD1E4XYMM_69bd47b546250_lg.jpeg','2026-03-20 13:12:21',''),
('CCE2KDVYMM','https://vendor.e-craft.in/uploads/CCE2KDVYMM_69bd3c2f50db4_lg.jpeg','2026-03-20 12:23:11',''),
('CCE2KDVYMM','https://vendor.e-craft.in/uploads/CCE2KDVYMM_69bd3c2f56f84_lg.jpeg','2026-03-20 12:23:11',''),
('CCE2KDVYMM','https://vendor.e-craft.in/uploads/CCE2KDVYMM_69bd3c2f5c609_lg.jpeg','2026-03-20 12:23:11',''),
('CCEHXCGXMM','https://vendor.e-craft.in/uploads/CCEHXCGXMM_69bbed978ceed_lg.jpeg','2026-03-19 12:35:35',''),
('CCEHXCGXMM','https://vendor.e-craft.in/uploads/CCEHXCGXMM_69bbed9f1833c_lg.jpeg','2026-03-19 12:35:43',''),
('CCEHXCGXMM','https://vendor.e-craft.in/uploads/CCEHXCGXMM_69bbeda52e229_lg.jpeg','2026-03-19 12:35:49',''),
('CCEIGALENM','https://vendor.e-craft.in/uploads/CCEIGALENM_69cbbd651393f_lg.jpeg','2026-03-31 12:26:13',''),
('CCEIGALENM','https://vendor.e-craft.in/uploads/CCEIGALENM_69cbbd7211f68_lg.jpeg','2026-03-31 12:26:26',''),
('CCF3Y0YYMM','https://vendor.e-craft.in/uploads/CCF3Y0YYMM_69bd4da8d13da_lg.jpeg','2026-03-20 13:37:44',''),
('CCF3Y0YYMM','https://vendor.e-craft.in/uploads/CCF3Y0YYMM_69bd4da8d8090_lg.jpeg','2026-03-20 13:37:44',''),
('CCFBGOVYMM','https://vendor.e-craft.in/uploads/CCFBGOVYMM_69bd3e5ad3386_lg.jpeg','2026-03-20 12:32:26',''),
('CCFBGOVYMM','https://vendor.e-craft.in/uploads/CCFBGOVYMM_69bd3e6608a3b_lg.jpeg','2026-03-20 12:32:38',''),
('CCFBGOVYMM','https://vendor.e-craft.in/uploads/CCFBGOVYMM_69bd3e7673f60_lg.jpeg','2026-03-20 12:32:54',''),
('CCFLOAIXMM','https://vendor.e-craft.in/uploads/CCFLOAIXMM_69bbfa3541b14_lg.jpeg','2026-03-19 13:29:25',''),
('CCFLOAIXMM','https://vendor.e-craft.in/uploads/CCFLOAIXMM_69bbfa3be878d_lg.jpeg','2026-03-19 13:29:31',''),
('CCFLOAIXMM','https://vendor.e-craft.in/uploads/CCFLOAIXMM_69bbfa46dd8b1_lg.jpeg','2026-03-19 13:29:42',''),
('CCFOJSUYMM','https://vendor.e-craft.in/uploads/CCFOJSUYMM_69bd3902cbadb_lg.jpeg','2026-03-20 12:09:38',''),
('CCFOJSUYMM','https://vendor.e-craft.in/uploads/CCFOJSUYMM_69bd3902d6901_lg.jpeg','2026-03-20 12:09:38',''),
('CCFOJSUYMM','https://vendor.e-craft.in/uploads/CCFOJSUYMM_69bd3902dd7b6_lg.jpeg','2026-03-20 12:09:38',''),
('CCFW5VNFNM','https://vendor.e-craft.in/uploads/CCFW5VNFNM_69ccbc63f1b0d_lg.jpeg','2026-04-01 06:34:12','Black'),
('CCFW5VNFNM','https://vendor.e-craft.in/uploads/CCFW5VNFNM_69ccbc79c2228_lg.jpeg','2026-04-01 06:34:33','Dark Brown'),
('CCFW5VNFNM','https://vendor.e-craft.in/uploads/CCFW5VNFNM_69ccbc8e0a950_lg.jpeg','2026-04-01 06:34:54','Navy Blue'),
('CCGFJB0GNM','https://vendor.e-craft.in/uploads/CCGFJB0GNM_69cd0cde3907a_lg.jpeg','2026-04-01 12:17:34','Bright Green'),
('CCH30O2WMM','https://vendor.e-craft.in/uploads/CCH30O2WMM_69baa78877e7e_lg.jpeg','2026-03-18 13:24:24',''),
('CCH30O2WMM','https://vendor.e-craft.in/uploads/CCH30O2WMM_69baa78e540b4_lg.jpeg','2026-03-18 13:24:30',''),
('CCHA8W90NM','https://vendor.e-craft.in/uploads/CCHA8W90NM_69be879fad159_lg.jpeg','2026-03-21 11:57:19',''),
('CCIVGV80NM','https://vendor.e-craft.in/uploads/CCIVGV80NM_69be80fc18517_lg.jpeg','2026-03-21 11:29:00',''),
('CCIVGV80NM','https://vendor.e-craft.in/uploads/CCIVGV80NM_69be81031aaf8_lg.jpeg','2026-03-21 11:29:07',''),
('CCIVGV80NM','https://vendor.e-craft.in/uploads/CCIVGV80NM_69be810324aa9_lg.jpeg','2026-03-21 11:29:07',''),
('CCJ91KFXMM','https://vendor.e-craft.in/uploads/CCJ91KFXMM_69bbe854d1de8_lg.jpeg','2026-03-19 12:13:08',''),
('CCJ91KFXMM','https://vendor.e-craft.in/uploads/CCJ91KFXMM_69bbe870962bb_lg.jpeg','2026-03-19 12:13:36',''),
('CCJ91KFXMM','https://vendor.e-craft.in/uploads/CCJ91KFXMM_69bbe877b9ee6_lg.jpeg','2026-03-19 12:13:43',''),
('CCJSN3LENM','https://vendor.e-craft.in/uploads/CCJSN3LENM_69cce4a628404_lg.jpeg','2026-04-01 09:25:58',''),
('CCJSN3LENM','https://vendor.e-craft.in/uploads/CCJSN3LENM_69cce81a0b4d4_lg.jpeg','2026-04-01 09:40:42',''),
('CCJSS1VYMM','https://vendor.e-craft.in/uploads/CCJSS1VYMM_69bd3a6b02f7e_lg.jpeg','2026-03-20 12:15:39',''),
('CCJSS1VYMM','https://vendor.e-craft.in/uploads/CCJSS1VYMM_69bd3a6b18bd8_lg.jpeg','2026-03-20 12:15:39',''),
('CCJSS1VYMM','https://vendor.e-craft.in/uploads/CCJSS1VYMM_69bd3a6b25ab2_lg.jpeg','2026-03-20 12:15:39',''),
('CCL0AP60NM','https://vendor.e-craft.in/uploads/CCL0AP60NM_69be73902b025_lg.jpeg','2026-03-21 10:31:44',''),
('CCL0AP60NM','https://vendor.e-craft.in/uploads/CCL0AP60NM_69be73aac10ff_lg.jpeg','2026-03-21 10:32:10',''),
('CCL0AP60NM','https://vendor.e-craft.in/uploads/CCL0AP60NM_69be73c048ffc_lg.jpeg','2026-03-21 10:32:32',''),
('CCM4D5GXMM','https://vendor.e-craft.in/uploads/CCM4D5GXMM_69bbec4c8651c_lg.jpeg','2026-03-19 12:30:04',''),
('CCM4D5GXMM','https://vendor.e-craft.in/uploads/CCM4D5GXMM_69bbec53ae23b_lg.jpeg','2026-03-19 12:30:11',''),
('CCMMRV3WMM','https://vendor.e-craft.in/uploads/CCMMRV3WMM_69baaf7a8cee1_lg.jpeg','2026-03-18 13:58:18',''),
('CCMMRV3WMM','https://vendor.e-craft.in/uploads/CCMMRV3WMM_69baaf8144737_lg.jpeg','2026-03-18 13:58:25',''),
('CCMMRV3WMM','https://vendor.e-craft.in/uploads/CCMMRV3WMM_69baaf86a9f69_lg.jpeg','2026-03-18 13:58:30',''),
('CCNKH0A0NM','https://vendor.e-craft.in/uploads/CCNKH0A0NM_69be88be8d2dc_lg.jpeg','2026-03-21 12:02:06',''),
('CCNKH0A0NM','https://vendor.e-craft.in/uploads/CCNKH0A0NM_69be88c711a9d_lg.jpeg','2026-03-21 12:02:15',''),
('CCNKH0A0NM','https://vendor.e-craft.in/uploads/CCNKH0A0NM_69be88cc3b006_lg.jpeg','2026-03-21 12:02:20',''),
('CCNPTZGXMM','https://vendor.e-craft.in/uploads/CCNPTZGXMM_69bbf1fa0eea8_lg.jpeg','2026-03-19 12:54:18',''),
('CCNPTZGXMM','https://vendor.e-craft.in/uploads/CCNPTZGXMM_69bbf212be1af_lg.jpeg','2026-03-19 12:54:42',''),
('CCP2TFKENM','https://vendor.e-craft.in/uploads/CCP2TFKENM_69cbb806c167a_lg.jpeg','2026-03-31 12:03:18','Gray'),
('CCP2TFKENM','https://vendor.e-craft.in/uploads/CCP2TFKENM_69cbbe74a846d_lg.jpeg','2026-03-31 12:30:44','Red'),
('CCPPP30GNM','https://vendor.e-craft.in/uploads/CCPPP30GNM_69cd0b203cef3_lg.jpeg','2026-04-01 12:10:08','Red'),
('CCQIF2HYMM','https://vendor.e-craft.in/uploads/CCQIF2HYMM_69bcde4bb8a3f_lg.jpeg','2026-03-20 05:42:35',''),
('CCQIF2HYMM','https://vendor.e-craft.in/uploads/CCQIF2HYMM_69bcde4bc4bae_lg.jpeg','2026-03-20 05:42:35',''),
('CCQIF2HYMM','https://vendor.e-craft.in/uploads/CCQIF2HYMM_69bcde4bd6eb4_lg.jpeg','2026-03-20 05:42:35',''),
('CCQJRZ60NM','https://vendor.e-craft.in/uploads/CCQJRZ60NM_69be75fb3672c_lg.jpeg','2026-03-21 10:42:03',''),
('CCQJRZ60NM','https://vendor.e-craft.in/uploads/CCQJRZ60NM_69be760922d29_lg.jpeg','2026-03-21 10:42:17',''),
('CCQJRZ60NM','https://vendor.e-craft.in/uploads/CCQJRZ60NM_69be7624db82e_lg.jpeg','2026-03-21 10:42:44',''),
('CCQTVJCTMM','https://vendor.e-craft.in/uploads/CCQTVJCTMM_69b8262a6e956_lg.jpg','2026-03-16 15:47:54',''),
('CCQTVJCTMM','https://vendor.e-craft.in/uploads/CCQTVJCTMM_69b8265d2535d_lg.jpg','2026-03-16 15:48:45',''),
('CCQW224WMM','https://vendor.e-craft.in/uploads/CCQW224WMM_69bab0b60379e_lg.jpeg','2026-03-18 14:03:34',''),
('CCQW224WMM','https://vendor.e-craft.in/uploads/CCQW224WMM_69bab0bbef855_lg.jpeg','2026-03-18 14:03:40',''),
('CCQW224WMM','https://vendor.e-craft.in/uploads/CCQW224WMM_69bab0c29ccbc_lg.jpeg','2026-03-18 14:03:46',''),
('CCQWR03WMM','https://vendor.e-craft.in/uploads/CCQWR03WMM_69baa9d32f197_lg.jpeg','2026-03-18 13:34:11',''),
('CCQWR03WMM','https://vendor.e-craft.in/uploads/CCQWR03WMM_69baa9d90c95b_lg.jpeg','2026-03-18 13:34:17',''),
('CCRL8280NM','https://vendor.e-craft.in/uploads/CCRL8280NM_69be7b902ded0_lg.jpeg','2026-03-21 11:05:52',''),
('CCRTS91WMM','https://vendor.e-craft.in/uploads/CCRTS91WMM_69baa46e3d30f_lg.jpeg','2026-03-18 13:11:10',''),
('CCRTS91WMM','https://vendor.e-craft.in/uploads/CCRTS91WMM_69baa473297be_lg.jpeg','2026-03-18 13:11:15',''),
('CCRTS91WMM','https://vendor.e-craft.in/uploads/CCRTS91WMM_69baa47a75919_lg.jpeg','2026-03-18 13:11:22',''),
('CCSBS8GXMM','https://vendor.e-craft.in/uploads/CCSBS8GXMM_69bbecc83712f_lg.jpeg','2026-03-19 12:32:08',''),
('CCSBS8GXMM','https://vendor.e-craft.in/uploads/CCSBS8GXMM_69bbecd7d08eb_lg.jpeg','2026-03-19 12:32:23',''),
('CCT8IM80NM','https://vendor.e-craft.in/uploads/CCT8IM80NM_69be7f5f48169_lg.jpeg','2026-03-21 11:22:07',''),
('CCT8IM80NM','https://vendor.e-craft.in/uploads/CCT8IM80NM_69be7f64d7e05_lg.jpeg','2026-03-21 11:22:12',''),
('CCT8SE2WMM','https://vendor.e-craft.in/uploads/CCT8SE2WMM_69baa61ce1006_lg.jpeg','2026-03-18 13:18:20',''),
('CCT8SE2WMM','https://vendor.e-craft.in/uploads/CCT8SE2WMM_69baa626e77a1_lg.jpeg','2026-03-18 13:18:30',''),
('CCTCGC80NM','https://vendor.e-craft.in/uploads/CCTCGC80NM_69be7d6ce7267_lg.jpeg','2026-03-21 11:13:48',''),
('CCTLPI0GNM','https://vendor.e-craft.in/uploads/CCTLPI0GNM_69cd0df193d42_lg.jpeg','2026-04-01 12:22:09','Blue'),
('CCUQT1YFNM','https://vendor.e-craft.in/uploads/CCUQT1YFNM_69ccfebd6873f_lg.jpeg','2026-04-01 11:17:17','Blue'),
('CCUWJNZFNM','https://vendor.e-craft.in/uploads/CCUWJNZFNM_69cd07df7077a_lg.jpeg','2026-04-01 11:56:15','Green'),
('CCV1LE3WMM','https://vendor.e-craft.in/uploads/CCV1LE3WMM_69baac67df704_lg.jpeg','2026-03-18 13:45:12',''),
('CCV1LE3WMM','https://vendor.e-craft.in/uploads/CCV1LE3WMM_69baac6e643af_lg.jpeg','2026-03-18 13:45:18',''),
('CCV1LE3WMM','https://vendor.e-craft.in/uploads/CCV1LE3WMM_69baac73d300b_lg.jpeg','2026-03-18 13:45:23',''),
('CCVPUOYFNM','https://vendor.e-craft.in/uploads/CCVPUOYFNM_69cd020178e0e_lg.jpeg','2026-04-01 11:31:13','Blue'),
('CCW6Z96UMM','https://vendor.e-craft.in/uploads/CCW6Z96UMM_69b8e833b4b57_lg.jpeg','2026-03-17 05:35:47',''),
('CCW6Z96UMM','https://vendor.e-craft.in/uploads/CCW6Z96UMM_69b8e833ba336_lg.jpeg','2026-03-17 05:35:47',''),
('CCW9KF90NM','https://vendor.e-craft.in/uploads/CCW9KF90NM_69be849d7e436_lg.jpeg','2026-03-21 11:44:29',''),
('CCW9KF90NM','https://vendor.e-craft.in/uploads/CCW9KF90NM_69be84a67f14a_lg.jpeg','2026-03-21 11:44:38',''),
('CCWC52GXMM','https://vendor.e-craft.in/uploads/CCWC52GXMM_69bbeb7b3e855_lg.jpeg','2026-03-19 12:26:35',''),
('CCWC52GXMM','https://vendor.e-craft.in/uploads/CCWC52GXMM_69bbeb85a1985_lg.jpeg','2026-03-19 12:26:45',''),
('CCWC52GXMM','https://vendor.e-craft.in/uploads/CCWC52GXMM_69bbeb8b54a6c_lg.jpeg','2026-03-19 12:26:51',''),
('CCWCD6WYMM','https://vendor.e-craft.in/uploads/CCWCD6WYMM_69bd417e684ac_lg.jpeg','2026-03-20 12:45:50',''),
('CCWCD6WYMM','https://vendor.e-craft.in/uploads/CCWCD6WYMM_69bd417e740ef_lg.jpeg','2026-03-20 12:45:50',''),
('CCWCD6WYMM','https://vendor.e-craft.in/uploads/CCWCD6WYMM_69bd417e7d440_lg.jpeg','2026-03-20 12:45:50',''),
('CCWK8LXYMM','https://vendor.e-craft.in/uploads/CCWK8LXYMM_69bd4ab5a167d_lg.jpeg','2026-03-20 13:25:09',''),
('CCWK8LXYMM','https://vendor.e-craft.in/uploads/CCWK8LXYMM_69bd4ab5a5f01_lg.jpeg','2026-03-20 13:25:09',''),
('CCWKLTWYMM','https://vendor.e-craft.in/uploads/CCWKLTWYMM_69bd45c74a829_lg.jpeg','2026-03-20 13:04:07',''),
('CCWKLTWYMM','https://vendor.e-craft.in/uploads/CCWKLTWYMM_69bd4617d8f27_lg.jpeg','2026-03-20 13:05:27',''),
('CCWKLTWYMM','https://vendor.e-craft.in/uploads/CCWKLTWYMM_69bd4625acc72_lg.jpeg','2026-03-20 13:05:41',''),
('CCX1BNGXMM','https://vendor.e-craft.in/uploads/CCX1BNGXMM_69bbefbec0c01_lg.jpeg','2026-03-19 12:44:46',''),
('CCX1BNGXMM','https://vendor.e-craft.in/uploads/CCX1BNGXMM_69bbefc50c5db_lg.jpeg','2026-03-19 12:44:53',''),
('CCX1BNGXMM','https://vendor.e-craft.in/uploads/CCX1BNGXMM_69bbefcacec9c_lg.jpeg','2026-03-19 12:44:58',''),
('CCX3MG5UMM','https://vendor.e-craft.in/uploads/CCX3MG5UMM_69b8e32e7e23b_lg.jpeg','2026-03-17 05:14:22',''),
('CCX3MG5UMM','https://vendor.e-craft.in/uploads/CCX3MG5UMM_69b8e32e8d35e_lg.jpeg','2026-03-17 05:14:22',''),
('CCXRQ6IXMM','https://vendor.e-craft.in/uploads/CCXRQ6IXMM_69bbf97b1f0bd_lg.jpeg','2026-03-19 13:26:19',''),
('CCXRQ6IXMM','https://vendor.e-craft.in/uploads/CCXRQ6IXMM_69bbf98161d05_lg.jpeg','2026-03-19 13:26:25',''),
('CCXRQ6IXMM','https://vendor.e-craft.in/uploads/CCXRQ6IXMM_69bbf98649090_lg.jpeg','2026-03-19 13:26:30',''),
('CCXU6EIXMM','https://vendor.e-craft.in/uploads/CCXU6EIXMM_69bbfafe2d528_lg.jpeg','2026-03-19 13:32:46',''),
('CCXU6EIXMM','https://vendor.e-craft.in/uploads/CCXU6EIXMM_69bbfb0488132_lg.jpeg','2026-03-19 13:32:52',''),
('CCXU6EIXMM','https://vendor.e-craft.in/uploads/CCXU6EIXMM_69bbfb0ae5a10_lg.jpeg','2026-03-19 13:32:58',''),
('CCYTRGVYMM','https://vendor.e-craft.in/uploads/CCYTRGVYMM_69bd3d1a5b846_lg.jpeg','2026-03-20 12:27:06',''),
('CCYTRGVYMM','https://vendor.e-craft.in/uploads/CCYTRGVYMM_69bd3d29aafdd_lg.jpeg','2026-03-20 12:27:21',''),
('CCYTRGVYMM','https://vendor.e-craft.in/uploads/CCYTRGVYMM_69bd3d37418ea_lg.jpeg','2026-03-20 12:27:35',''),
('CCZATVLFNM','https://vendor.e-craft.in/uploads/CCZATVLFNM_69ccadd0bd8e9_lg.jpeg','2026-04-01 05:32:00','Black'),
('CCZATVLFNM','https://vendor.e-craft.in/uploads/CCZATVLFNM_69ccaea2b6cfe_lg.jpeg','2026-04-01 05:35:30','Red'),
('CCZATVLFNM','https://vendor.e-craft.in/uploads/CCZATVLFNM_69ccafa73d169_lg.jpeg','2026-04-01 05:39:51','Black'),
('CCZATVLFNM','https://vendor.e-craft.in/uploads/CCZATVLFNM_69ccb0b940c5b_lg.jpeg','2026-04-01 05:44:25','Green'),
('CCZATVLFNM','https://vendor.e-craft.in/uploads/CCZATVLFNM_69ccb0e3d4491_lg.jpeg','2026-04-01 05:45:08','Black'),
('CCZATVLFNM','https://vendor.e-craft.in/uploads/CCZATVLFNM_69ccb165b1009_lg.jpeg','2026-04-01 05:47:17','Sky Blue'),
('CCZAXTHXMM','https://vendor.e-craft.in/uploads/CCZAXTHXMM_69bbf722a30e4_lg.jpeg','2026-03-19 13:16:18',''),
('CCZAXTHXMM','https://vendor.e-craft.in/uploads/CCZAXTHXMM_69bbf72999e4c_lg.jpeg','2026-03-19 13:16:25',''),
('CCZCQEYYMM','https://vendor.e-craft.in/uploads/CCZCQEYYMM_69bd5016bee93_lg.jpeg','2026-03-20 13:48:06',''),
('CCZCQEYYMM','https://vendor.e-craft.in/uploads/CCZCQEYYMM_69bd5016c5094_lg.jpeg','2026-03-20 13:48:06',''),
('CCZCQEYYMM','https://vendor.e-craft.in/uploads/CCZCQEYYMM_69bd5016cb1b9_lg.jpeg','2026-03-20 13:48:06',''),
('CCZXY6YYMM','https://vendor.e-craft.in/uploads/CCZXY6YYMM_69bd4eb843f55_lg.jpeg','2026-03-20 13:42:16',''),
('CCZXY6YYMM','https://vendor.e-craft.in/uploads/CCZXY6YYMM_69bd4ebe583f3_lg.jpeg','2026-03-20 13:42:22','');
/*!40000 ALTER TABLE `item_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_soundx`
--

DROP TABLE IF EXISTS `item_soundx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_soundx` (
  `item_id` varchar(10) NOT NULL,
  `cat_id` smallint(5) unsigned NOT NULL,
  `br_id` int(10) unsigned NOT NULL,
  `generic_id` int(20) unsigned NOT NULL,
  `active` tinyint(3) unsigned NOT NULL,
  `rank` float unsigned NOT NULL,
  `sound` varchar(255) NOT NULL,
  `strength` float unsigned NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_soundx`
--

LOCK TABLES `item_soundx` WRITE;
/*!40000 ALTER TABLE `item_soundx` DISABLE KEYS */;
INSERT INTO `item_soundx` VALUES
('CCQTVJCTMM',10,1,1,1,1,'kurti',120,'2026-03-16 15:37:03','2026-03-16 15:37:03'),
('CCQTVJCTMM',10,1,1,1,1,'women',25,'2026-03-16 15:37:03','2026-03-16 15:37:03'),
('CCQTVJCTMM',10,1,1,1,1,'craft',50,'2026-03-16 15:37:03','2026-03-16 15:37:03'),
('CCQTVJCTMM',10,1,1,1,1,'pname',120,'2026-03-16 15:37:03','2026-03-16 15:37:03'),
('CCX3MG5UMM',19,2,2,1,1,'woman',42.8571,'2026-03-17 05:06:20','2026-03-17 05:06:20'),
('CCX3MG5UMM',19,2,2,1,1,'women',26.087,'2026-03-17 05:06:20','2026-03-17 05:06:20'),
('CCX3MG5UMM',19,2,2,1,1,'one',57.1429,'2026-03-17 05:06:20','2026-03-17 05:06:20'),
('CCX3MG5UMM',19,2,2,1,1,'woman',42.8571,'2026-03-17 05:06:20','2026-03-17 05:06:20'),
('CCW6Z96UMM',19,2,2,1,1,'woman',42.8571,'2026-03-17 05:29:09','2026-03-17 05:29:09'),
('CCW6Z96UMM',19,2,2,1,1,'women',26.087,'2026-03-17 05:29:10','2026-03-17 05:29:10'),
('CCW6Z96UMM',19,2,2,1,1,'one',57.1429,'2026-03-17 05:29:10','2026-03-17 05:29:10'),
('CCW6Z96UMM',19,2,2,1,1,'women',42.8571,'2026-03-17 05:29:10','2026-03-17 05:29:10'),
('CCRTS91WMM',9,3,3,1,1,'saree',120,'2026-03-18 12:44:36','2026-03-18 12:44:36'),
('CCRTS91WMM',9,3,3,1,1,'women',33.3333,'2026-03-18 12:44:36','2026-03-18 12:44:36'),
('CCRTS91WMM',9,3,3,1,1,'minu',125,'2026-03-18 12:44:36','2026-03-18 12:44:36'),
('CCRTS91WMM',9,3,3,1,1,'minu',38.4615,'2026-03-18 12:44:36','2026-03-18 12:44:36'),
('CCT8SE2WMM',9,4,3,1,1,'saree',120,'2026-03-18 13:16:28','2026-03-18 13:16:28'),
('CCT8SE2WMM',9,4,3,1,1,'women',33.3333,'2026-03-18 13:16:28','2026-03-18 13:16:28'),
('CCT8SE2WMM',9,4,3,1,1,'silky',50,'2026-03-18 13:16:28','2026-03-18 13:16:28'),
('CCT8SE2WMM',9,4,3,1,1,'open',26.3158,'2026-03-18 13:16:28','2026-03-18 13:16:28'),
('CCH30O2WMM',9,5,3,1,1,'saree',120,'2026-03-18 13:23:38','2026-03-18 13:23:38'),
('CCH30O2WMM',9,5,3,1,1,'women',33.3333,'2026-03-18 13:23:38','2026-03-18 13:23:38'),
('CCH30O2WMM',9,5,3,1,1,'jamdani',66.6667,'2026-03-18 13:23:38','2026-03-18 13:23:38'),
('CCH30O2WMM',9,5,3,1,1,'jamdani',66.6667,'2026-03-18 13:23:38','2026-03-18 13:23:38'),
('CCQWR03WMM',9,6,3,1,1,'saree',120,'2026-03-18 13:33:34','2026-03-18 13:33:34'),
('CCQWR03WMM',9,6,3,1,1,'women',33.3333,'2026-03-18 13:33:34','2026-03-18 13:33:34'),
('CCQWR03WMM',9,6,3,1,1,'silky',60,'2026-03-18 13:33:34','2026-03-18 13:33:34'),
('CCQWR03WMM',9,6,3,1,1,'silky',60,'2026-03-18 13:33:34','2026-03-18 13:33:34'),
('CCBJD93WMM',9,7,3,1,1,'saree',120,'2026-03-18 13:40:15','2026-03-18 13:40:15'),
('CCBJD93WMM',9,7,3,1,1,'women',33.3333,'2026-03-18 13:40:15','2026-03-18 13:40:15'),
('CCBJD93WMM',9,7,3,1,1,'mulberry',52.9412,'2026-03-18 13:40:15','2026-03-18 13:40:15'),
('CCBJD93WMM',9,7,3,1,1,'mulberry',52.9412,'2026-03-18 13:40:15','2026-03-18 13:40:15'),
('CCV1LE3WMM',9,8,3,1,1,'saree',120,'2026-03-18 13:44:18','2026-03-18 13:44:18'),
('CCV1LE3WMM',9,8,3,1,1,'women',33.3333,'2026-03-18 13:44:18','2026-03-18 13:44:18'),
('CCV1LE3WMM',9,8,3,1,1,'evergreen',55.5556,'2026-03-18 13:44:18','2026-03-18 13:44:18'),
('CCV1LE3WMM',9,8,3,1,1,'evergreen',55.5556,'2026-03-18 13:44:18','2026-03-18 13:44:18'),
('CC1KXO3WMM',9,9,3,1,1,'saree',120,'2026-03-18 13:52:21','2026-03-18 13:52:21'),
('CC1KXO3WMM',9,9,3,1,1,'women',33.3333,'2026-03-18 13:52:21','2026-03-18 13:52:21'),
('CC1KXO3WMM',9,9,3,1,1,'katan',42.8571,'2026-03-18 13:52:21','2026-03-18 13:52:21'),
('CC1KXO3WMM',9,9,3,1,1,'katan',42.8571,'2026-03-18 13:52:21','2026-03-18 13:52:21'),
('CCMMRV3WMM',9,10,3,1,1,'saree',120,'2026-03-18 13:57:40','2026-03-18 13:57:40'),
('CCMMRV3WMM',9,10,3,1,1,'women',33.3333,'2026-03-18 13:57:40','2026-03-18 13:57:40'),
('CCMMRV3WMM',9,10,3,1,1,'karni',30,'2026-03-18 13:57:40','2026-03-18 13:57:40'),
('CCMMRV3WMM',9,10,3,1,1,'karni',30,'2026-03-18 13:57:40','2026-03-18 13:57:40'),
('CCQW224WMM',9,10,3,1,1,'saree',120,'2026-03-18 14:02:34','2026-03-18 14:02:34'),
('CCQW224WMM',9,10,3,1,1,'women',33.3333,'2026-03-18 14:02:34','2026-03-18 14:02:34'),
('CCQW224WMM',9,10,3,1,1,'karni',30,'2026-03-18 14:02:34','2026-03-18 14:02:34'),
('CCQW224WMM',9,10,3,1,1,'karni',30,'2026-03-18 14:02:34','2026-03-18 14:02:34'),
('CC3FB1CXMM',9,11,3,1,1,'saree',120,'2026-03-19 10:33:42','2026-03-19 10:33:42'),
('CC3FB1CXMM',9,11,3,1,1,'women',33.3333,'2026-03-19 10:33:42','2026-03-19 10:33:42'),
('CC3FB1CXMM',9,11,3,1,1,'open',26.3158,'2026-03-19 10:33:42','2026-03-19 10:33:42'),
('CC3FB1CXMM',9,11,3,1,1,'open',26.3158,'2026-03-19 10:33:42','2026-03-19 10:33:42'),
('CCJ91KFXMM',9,12,3,1,1,'saree',120,'2026-03-19 12:12:14','2026-03-19 12:12:14'),
('CCJ91KFXMM',9,12,3,1,1,'women',33.3333,'2026-03-19 12:12:14','2026-03-19 12:12:14'),
('CCJ91KFXMM',9,12,3,1,1,'sartin',63.6364,'2026-03-19 12:12:14','2026-03-19 12:12:14'),
('CCJ91KFXMM',9,12,3,1,1,'sartin',63.6364,'2026-03-19 12:12:14','2026-03-19 12:12:14'),
('CC1CMRFXMM',9,13,3,1,1,'saree',120,'2026-03-19 12:18:08','2026-03-19 12:18:08'),
('CC1CMRFXMM',9,13,3,1,1,'women',33.3333,'2026-03-19 12:18:08','2026-03-19 12:18:08'),
('CC1CMRFXMM',9,13,3,1,1,'dhakai',41.1765,'2026-03-19 12:18:08','2026-03-19 12:18:08'),
('CC1CMRFXMM',9,13,3,1,1,'dhakai',41.1765,'2026-03-19 12:18:08','2026-03-19 12:18:08'),
('CCWC52GXMM',9,5,3,1,1,'saree',120,'2026-03-19 12:26:19','2026-03-19 12:26:19'),
('CCWC52GXMM',9,5,3,1,1,'women',33.3333,'2026-03-19 12:26:19','2026-03-19 12:26:19'),
('CCWC52GXMM',9,5,3,1,1,'jamdani',66.6667,'2026-03-19 12:26:19','2026-03-19 12:26:19'),
('CCWC52GXMM',9,5,3,1,1,'jamdani',66.6667,'2026-03-19 12:26:19','2026-03-19 12:26:19'),
('CCM4D5GXMM',9,5,3,1,1,'saree',120,'2026-03-19 12:28:49','2026-03-19 12:28:49'),
('CCM4D5GXMM',9,5,3,1,1,'women',33.3333,'2026-03-19 12:28:49','2026-03-19 12:28:49'),
('CCM4D5GXMM',9,5,3,1,1,'jamdani',66.6667,'2026-03-19 12:28:49','2026-03-19 12:28:49'),
('CCM4D5GXMM',9,5,3,1,1,'jamdani',66.6667,'2026-03-19 12:28:49','2026-03-19 12:28:49'),
('CCSBS8GXMM',9,5,3,1,1,'saree',120,'2026-03-19 12:31:29','2026-03-19 12:31:29'),
('CCSBS8GXMM',9,5,3,1,1,'women',33.3333,'2026-03-19 12:31:29','2026-03-19 12:31:29'),
('CCSBS8GXMM',9,5,3,1,1,'jamdani',66.6667,'2026-03-19 12:31:29','2026-03-19 12:31:29'),
('CCSBS8GXMM',9,5,3,1,1,'jamdani',66.6667,'2026-03-19 12:31:29','2026-03-19 12:31:29'),
('CCEHXCGXMM',9,12,3,1,1,'saree',120,'2026-03-19 12:34:42','2026-03-19 12:34:42'),
('CCEHXCGXMM',9,12,3,1,1,'women',33.3333,'2026-03-19 12:34:42','2026-03-19 12:34:42'),
('CCEHXCGXMM',9,12,3,1,1,'sartin',63.6364,'2026-03-19 12:34:42','2026-03-19 12:34:42'),
('CCEHXCGXMM',9,12,3,1,1,'maliska',44.4444,'2026-03-19 12:34:42','2026-03-19 12:34:42'),
('CCX1BNGXMM',9,9,3,1,1,'saree',120,'2026-03-19 12:42:46','2026-03-19 12:42:46'),
('CCX1BNGXMM',9,9,3,1,1,'women',33.3333,'2026-03-19 12:42:46','2026-03-19 12:42:46'),
('CCX1BNGXMM',9,9,3,1,1,'katan',27.2727,'2026-03-19 12:42:46','2026-03-19 12:42:46'),
('CCX1BNGXMM',9,9,3,1,1,'katan',27.2727,'2026-03-19 12:42:46','2026-03-19 12:42:46'),
('CCNPTZGXMM',9,14,3,1,1,'saree',120,'2026-03-19 12:52:30','2026-03-19 12:52:30'),
('CCNPTZGXMM',9,14,3,1,1,'women',33.3333,'2026-03-19 12:52:30','2026-03-19 12:52:30'),
('CCNPTZGXMM',9,14,3,1,1,'pochampalli',60,'2026-03-19 12:52:30','2026-03-19 12:52:30'),
('CCNPTZGXMM',9,14,3,1,1,'pochampalli',46.1538,'2026-03-19 12:52:30','2026-03-19 12:52:30'),
('CC1W3AHXMM',9,15,3,1,1,'saree',120,'2026-03-19 13:00:30','2026-03-19 13:00:30'),
('CC1W3AHXMM',9,15,3,1,1,'women',33.3333,'2026-03-19 13:00:30','2026-03-19 13:00:30'),
('CC1W3AHXMM',9,15,3,1,1,'dhola',42.8571,'2026-03-19 13:00:30','2026-03-19 13:00:30'),
('CC1W3AHXMM',9,15,3,1,1,'dhola',42.8571,'2026-03-19 13:00:30','2026-03-19 13:00:30'),
('CCAJAIHXMM',9,14,3,1,1,'saree',120,'2026-03-19 13:06:52','2026-03-19 13:06:52'),
('CCAJAIHXMM',9,14,3,1,1,'women',33.3333,'2026-03-19 13:06:52','2026-03-19 13:06:52'),
('CCAJAIHXMM',9,14,3,1,1,'pochampalli',60,'2026-03-19 13:06:52','2026-03-19 13:06:52'),
('CCAJAIHXMM',9,14,3,1,1,'ponchampalli',48.1481,'2026-03-19 13:06:52','2026-03-19 13:06:52'),
('CCZAXTHXMM',9,16,3,1,1,'saree',120,'2026-03-19 13:15:54','2026-03-19 13:15:54'),
('CCZAXTHXMM',9,16,3,1,1,'women',33.3333,'2026-03-19 13:15:54','2026-03-19 13:15:54'),
('CCZAXTHXMM',9,16,3,1,1,'fandy',42.8571,'2026-03-19 13:15:54','2026-03-19 13:15:54'),
('CCZAXTHXMM',9,16,3,1,1,'pure',27.7778,'2026-03-19 13:15:54','2026-03-19 13:15:54'),
('CCA6A0IXMM',9,9,3,1,1,'saree',120,'2026-03-19 13:20:51','2026-03-19 13:20:51'),
('CCA6A0IXMM',9,9,3,1,1,'women',33.3333,'2026-03-19 13:20:51','2026-03-19 13:20:51'),
('CCA6A0IXMM',9,9,3,1,1,'katan',27.2727,'2026-03-19 13:20:51','2026-03-19 13:20:51'),
('CCA6A0IXMM',9,9,3,1,1,'katan',27.2727,'2026-03-19 13:20:51','2026-03-19 13:20:51'),
('CCXRQ6IXMM',9,11,3,1,1,'saree',120,'2026-03-19 13:25:53','2026-03-19 13:25:53'),
('CCXRQ6IXMM',9,11,3,1,1,'women',33.3333,'2026-03-19 13:25:53','2026-03-19 13:25:53'),
('CCXRQ6IXMM',9,11,3,1,1,'open',26.3158,'2026-03-19 13:25:53','2026-03-19 13:25:53'),
('CCXRQ6IXMM',9,11,3,1,1,'open',26.3158,'2026-03-19 13:25:53','2026-03-19 13:25:53'),
('CCFLOAIXMM',9,9,3,1,1,'saree',120,'2026-03-19 13:28:56','2026-03-19 13:28:56'),
('CCFLOAIXMM',9,9,3,1,1,'women',33.3333,'2026-03-19 13:28:56','2026-03-19 13:28:56'),
('CCFLOAIXMM',9,9,3,1,1,'katan',27.2727,'2026-03-19 13:28:56','2026-03-19 13:28:56'),
('CCFLOAIXMM',9,9,3,1,1,'katan',27.2727,'2026-03-19 13:28:56','2026-03-19 13:28:56'),
('CCXU6EIXMM',9,9,3,1,1,'saree',120,'2026-03-19 13:31:40','2026-03-19 13:31:40'),
('CCXU6EIXMM',9,9,3,1,1,'women',33.3333,'2026-03-19 13:31:40','2026-03-19 13:31:40'),
('CCXU6EIXMM',9,9,3,1,1,'katan',27.2727,'2026-03-19 13:31:40','2026-03-19 13:31:40'),
('CCXU6EIXMM',9,9,3,1,1,'katan',27.2727,'2026-03-19 13:31:40','2026-03-19 13:31:40'),
('CC741JIXMM',9,9,3,1,1,'saree',120,'2026-03-19 13:35:26','2026-03-19 13:35:26'),
('CC741JIXMM',9,9,3,1,1,'women',33.3333,'2026-03-19 13:35:26','2026-03-19 13:35:26'),
('CC741JIXMM',9,9,3,1,1,'katan',27.2727,'2026-03-19 13:35:26','2026-03-19 13:35:26'),
('CC741JIXMM',9,9,3,1,1,'katan',27.2727,'2026-03-19 13:35:26','2026-03-19 13:35:26'),
('CC1SBQJXMM',9,17,3,1,1,'saree',120,'2026-03-19 14:09:06','2026-03-19 14:09:06'),
('CC1SBQJXMM',9,17,3,1,1,'women',33.3333,'2026-03-19 14:09:06','2026-03-19 14:09:06'),
('CC1SBQJXMM',9,17,3,1,1,'thausand',40.9091,'2026-03-19 14:09:06','2026-03-19 14:09:06'),
('CC1SBQJXMM',9,17,3,1,1,'thausand',40.9091,'2026-03-19 14:09:06','2026-03-19 14:09:06'),
('CCAMXSJXMM',9,17,3,1,1,'saree',120,'2026-03-19 14:11:07','2026-03-19 14:11:07'),
('CCAMXSJXMM',9,17,3,1,1,'women',33.3333,'2026-03-19 14:11:07','2026-03-19 14:11:07'),
('CCAMXSJXMM',9,17,3,1,1,'thausand',40.9091,'2026-03-19 14:11:07','2026-03-19 14:11:07'),
('CCAMXSJXMM',9,17,3,1,1,'0',13.3333,'2026-03-19 14:11:07','2026-03-19 14:11:07'),
('CCQIF2HYMM',9,18,3,1,1,'saree',120,'2026-03-20 05:42:18','2026-03-20 05:42:18'),
('CCQIF2HYMM',9,18,3,1,1,'women',33.3333,'2026-03-20 05:42:18','2026-03-20 05:42:18'),
('CCQIF2HYMM',9,18,3,1,1,'classic',44.4444,'2026-03-20 05:42:18','2026-03-20 05:42:18'),
('CCQIF2HYMM',9,18,3,1,1,'classic',44.4444,'2026-03-20 05:42:18','2026-03-20 05:42:18'),
('CCFOJSUYMM',9,19,3,1,1,'saree',120,'2026-03-20 12:06:31','2026-03-20 12:06:31'),
('CCFOJSUYMM',9,19,3,1,1,'women',33.3333,'2026-03-20 12:06:31','2026-03-20 12:06:31'),
('CCFOJSUYMM',9,19,3,1,1,'swarnachuram',76.4706,'2026-03-20 12:06:31','2026-03-20 12:06:31'),
('CCFOJSUYMM',9,19,3,1,1,'swarnachuram',76.4706,'2026-03-20 12:06:31','2026-03-20 12:06:31'),
('CCJSS1VYMM',9,20,3,1,1,'saree',120,'2026-03-20 12:13:43','2026-03-20 12:13:43'),
('CCJSS1VYMM',9,20,3,1,1,'women',33.3333,'2026-03-20 12:13:43','2026-03-20 12:13:43'),
('CCJSS1VYMM',9,20,3,1,1,'handloom',69.2308,'2026-03-20 12:13:43','2026-03-20 12:13:43'),
('CCJSS1VYMM',9,20,3,1,1,'handloom',47.3684,'2026-03-20 12:13:43','2026-03-20 12:13:43'),
('CCE2KDVYMM',9,19,3,1,1,'saree',120,'2026-03-20 12:22:52','2026-03-20 12:22:52'),
('CCE2KDVYMM',9,19,3,1,1,'women',33.3333,'2026-03-20 12:22:52','2026-03-20 12:22:52'),
('CCE2KDVYMM',9,19,3,1,1,'pure',20.8333,'2026-03-20 12:22:52','2026-03-20 12:22:52'),
('CCE2KDVYMM',9,19,3,1,1,'pure',20.8333,'2026-03-20 12:22:52','2026-03-20 12:22:52'),
('CCYTRGVYMM',9,6,3,1,1,'saree',120,'2026-03-20 12:25:22','2026-03-20 12:25:22'),
('CCYTRGVYMM',9,6,3,1,1,'women',33.3333,'2026-03-20 12:25:22','2026-03-20 12:25:22'),
('CCYTRGVYMM',9,6,3,1,1,'silky',60,'2026-03-20 12:25:22','2026-03-20 12:25:22'),
('CCYTRGVYMM',9,6,3,1,1,'silk',55.5556,'2026-03-20 12:25:22','2026-03-20 12:25:22'),
('CCFBGOVYMM',9,21,3,1,1,'saree',120,'2026-03-20 12:31:20','2026-03-20 12:31:20'),
('CCFBGOVYMM',9,21,3,1,1,'women',33.3333,'2026-03-20 12:31:20','2026-03-20 12:31:20'),
('CCFBGOVYMM',9,21,3,1,1,'guddu',60,'2026-03-20 12:31:20','2026-03-20 12:31:20'),
('CCFBGOVYMM',9,21,3,1,1,'guddu',60,'2026-03-20 12:31:20','2026-03-20 12:31:20'),
('CC2FKUVYMM',9,9,3,1,1,'saree',120,'2026-03-20 12:36:05','2026-03-20 12:36:05'),
('CC2FKUVYMM',9,9,3,1,1,'women',33.3333,'2026-03-20 12:36:05','2026-03-20 12:36:05'),
('CC2FKUVYMM',9,9,3,1,1,'katan',27.2727,'2026-03-20 12:36:05','2026-03-20 12:36:05'),
('CC2FKUVYMM',9,9,3,1,1,'maliska',36.3636,'2026-03-20 12:36:05','2026-03-20 12:36:05'),
('CCB2CYVYMM',9,11,3,1,1,'saree',120,'2026-03-20 12:39:01','2026-03-20 12:39:01'),
('CCB2CYVYMM',9,11,3,1,1,'women',33.3333,'2026-03-20 12:39:01','2026-03-20 12:39:01'),
('CCB2CYVYMM',9,11,3,1,1,'open',26.3158,'2026-03-20 12:39:01','2026-03-20 12:39:01'),
('CCB2CYVYMM',9,11,3,1,1,'open',26.3158,'2026-03-20 12:39:01','2026-03-20 12:39:01'),
('CCWCD6WYMM',9,19,3,1,1,'saree',120,'2026-03-20 12:45:16','2026-03-20 12:45:16'),
('CCWCD6WYMM',9,19,3,1,1,'women',33.3333,'2026-03-20 12:45:16','2026-03-20 12:45:16'),
('CCWCD6WYMM',9,19,3,1,1,'pure',20.8333,'2026-03-20 12:45:16','2026-03-20 12:45:16'),
('CCWCD6WYMM',9,19,3,1,1,'swarnachuri',75,'2026-03-20 12:45:16','2026-03-20 12:45:16'),
('CC85NDWYMM',9,22,3,1,1,'saree',120,'2026-03-20 12:50:55','2026-03-20 12:50:55'),
('CC85NDWYMM',9,22,3,1,1,'women',33.3333,'2026-03-20 12:50:55','2026-03-20 12:50:55'),
('CC85NDWYMM',9,22,3,1,1,'evergreen',55.5556,'2026-03-20 12:50:55','2026-03-20 12:50:55'),
('CC85NDWYMM',9,22,3,1,1,'evergreen',55.5556,'2026-03-20 12:50:55','2026-03-20 12:50:55'),
('CCWKLTWYMM',9,12,3,1,1,'saree',120,'2026-03-20 13:03:20','2026-03-20 13:03:20'),
('CCWKLTWYMM',9,12,3,1,1,'women',33.3333,'2026-03-20 13:03:20','2026-03-20 13:03:20'),
('CCWKLTWYMM',9,12,3,1,1,'sartin',63.6364,'2026-03-20 13:03:20','2026-03-20 13:03:20'),
('CCWKLTWYMM',9,12,3,1,1,'maliska',36.3636,'2026-03-20 13:03:20','2026-03-20 13:03:20'),
('CCCZK0XYMM',9,12,3,1,1,'saree',120,'2026-03-20 13:08:46','2026-03-20 13:08:46'),
('CCCZK0XYMM',9,12,3,1,1,'women',33.3333,'2026-03-20 13:08:46','2026-03-20 13:08:46'),
('CCCZK0XYMM',9,12,3,1,1,'sartin',63.6364,'2026-03-20 13:08:46','2026-03-20 13:08:46'),
('CCCZK0XYMM',9,12,3,1,1,'maliska',36.3636,'2026-03-20 13:08:46','2026-03-20 13:08:46'),
('CCD1E4XYMM',9,23,3,1,1,'saree',120,'2026-03-20 13:11:43','2026-03-20 13:11:43'),
('CCD1E4XYMM',9,23,3,1,1,'women',33.3333,'2026-03-20 13:11:43','2026-03-20 13:11:43'),
('CCD1E4XYMM',9,23,3,1,1,'baluchuri',71.4286,'2026-03-20 13:11:43','2026-03-20 13:11:43'),
('CCD1E4XYMM',9,23,3,1,1,'baluchuri',55.5556,'2026-03-20 13:11:43','2026-03-20 13:11:43'),
('CCWK8LXYMM',55,24,4,1,1,'ladies',53.8462,'2026-03-20 13:24:49','2026-03-20 13:24:49'),
('CCWK8LXYMM',55,24,4,1,1,'bags',125,'2026-03-20 13:24:49','2026-03-20 13:24:49'),
('CCWK8LXYMM',55,24,4,1,1,'exotic',36.8421,'2026-03-20 13:24:49','2026-03-20 13:24:49'),
('CCWK8LXYMM',55,24,4,1,1,'exotic',36.8421,'2026-03-20 13:24:49','2026-03-20 13:24:49'),
('CCF3Y0YYMM',55,25,5,1,1,'leather',53.3333,'2026-03-20 13:37:02','2026-03-20 13:37:02'),
('CCF3Y0YYMM',55,25,5,1,1,'bags',125,'2026-03-20 13:37:02','2026-03-20 13:37:02'),
('CCF3Y0YYMM',55,25,5,1,1,'leather',36.3636,'2026-03-20 13:37:02','2026-03-20 13:37:02'),
('CCF3Y0YYMM',55,25,5,1,1,'leather',34.7826,'2026-03-20 13:37:02','2026-03-20 13:37:02'),
('CCZXY6YYMM',59,25,4,1,1,'ladies',53.8462,'2026-03-20 13:41:43','2026-03-20 13:41:43'),
('CCZXY6YYMM',59,25,4,1,1,'bags',38.4615,'2026-03-20 13:41:43','2026-03-20 13:41:43'),
('CCZXY6YYMM',59,25,4,1,1,'leather',36.3636,'2026-03-20 13:41:43','2026-03-20 13:41:43'),
('CCZXY6YYMM',59,25,4,1,1,'hand',55.5556,'2026-03-20 13:41:43','2026-03-20 13:41:43'),
('CC6B0BYYMM',59,25,4,1,1,'ladies',53.8462,'2026-03-20 13:44:52','2026-03-20 13:44:52'),
('CC6B0BYYMM',59,25,4,1,1,'bags',38.4615,'2026-03-20 13:44:52','2026-03-20 13:44:52'),
('CC6B0BYYMM',59,25,4,1,1,'leather',36.3636,'2026-03-20 13:44:52','2026-03-20 13:44:52'),
('CC6B0BYYMM',59,25,4,1,1,'hand',55.5556,'2026-03-20 13:44:52','2026-03-20 13:44:52'),
('CCZCQEYYMM',9,20,3,1,1,'saree',120,'2026-03-20 13:47:45','2026-03-20 13:47:45'),
('CCZCQEYYMM',9,20,3,1,1,'women',33.3333,'2026-03-20 13:47:45','2026-03-20 13:47:45'),
('CCZCQEYYMM',9,20,3,1,1,'handloom',69.2308,'2026-03-20 13:47:45','2026-03-20 13:47:45'),
('CCZCQEYYMM',9,20,3,1,1,'pure',21.7391,'2026-03-20 13:47:45','2026-03-20 13:47:45'),
('CCL0AP60NM',9,20,3,1,1,'saree',120,'2026-03-21 10:27:40','2026-03-21 10:27:40'),
('CCL0AP60NM',9,20,3,1,1,'women',33.3333,'2026-03-21 10:27:40','2026-03-21 10:27:40'),
('CCL0AP60NM',9,20,3,1,1,'handloom',69.2308,'2026-03-21 10:27:40','2026-03-21 10:27:40'),
('CCL0AP60NM',9,20,3,1,1,'maahi',33.3333,'2026-03-21 10:27:40','2026-03-21 10:27:40'),
('CCQJRZ60NM',9,20,3,1,1,'saree',120,'2026-03-21 10:35:50','2026-03-21 10:35:50'),
('CCQJRZ60NM',9,20,3,1,1,'women',33.3333,'2026-03-21 10:35:50','2026-03-21 10:35:50'),
('CCQJRZ60NM',9,20,3,1,1,'handloom',69.2308,'2026-03-21 10:35:50','2026-03-21 10:35:50'),
('CCQJRZ60NM',9,20,3,1,1,'maahi',33.3333,'2026-03-21 10:35:50','2026-03-21 10:35:50'),
('CC0V1D70NM',9,5,3,1,1,'saree',120,'2026-03-21 10:46:10','2026-03-21 10:46:10'),
('CC0V1D70NM',9,5,3,1,1,'women',33.3333,'2026-03-21 10:46:10','2026-03-21 10:46:10'),
('CC0V1D70NM',9,5,3,1,1,'jamdani',66.6667,'2026-03-21 10:46:10','2026-03-21 10:46:10'),
('CC0V1D70NM',9,5,3,1,1,'pure',22.7273,'2026-03-21 10:46:10','2026-03-21 10:46:10'),
('CCRL8280NM',52,26,6,1,1,'handmade',60,'2026-03-21 11:05:45','2026-03-21 11:05:45'),
('CCRL8280NM',52,26,6,1,1,'decor',40,'2026-03-21 11:05:45','2026-03-21 11:05:45'),
('CCRL8280NM',52,26,6,1,1,'handcrafted',40,'2026-03-21 11:05:45','2026-03-21 11:05:45'),
('CCRL8280NM',52,26,6,1,1,'handmade',56.25,'2026-03-21 11:05:45','2026-03-21 11:05:45'),
('CCTCGC80NM',52,26,6,1,1,'handcrafted',40,'2026-03-21 11:13:41','2026-03-21 11:13:41'),
('CCTCGC80NM',52,26,6,1,1,'decor',40,'2026-03-21 11:13:41','2026-03-21 11:13:41'),
('CCTCGC80NM',52,26,6,1,1,'handcrafted',40,'2026-03-21 11:13:41','2026-03-21 11:13:41'),
('CCTCGC80NM',52,26,6,1,1,'handmade',56.25,'2026-03-21 11:13:41','2026-03-21 11:13:41'),
('CC3ODJ80NM',9,20,3,1,1,'saree',120,'2026-03-21 11:19:04','2026-03-21 11:19:04'),
('CC3ODJ80NM',9,20,3,1,1,'women',33.3333,'2026-03-21 11:19:04','2026-03-21 11:19:04'),
('CC3ODJ80NM',9,20,3,1,1,'handloom',69.2308,'2026-03-21 11:19:04','2026-03-21 11:19:04'),
('CC3ODJ80NM',9,20,3,1,1,'pure',21.7391,'2026-03-21 11:19:04','2026-03-21 11:19:04'),
('CCT8IM80NM',9,20,3,1,1,'saree',120,'2026-03-21 11:21:30','2026-03-21 11:21:30'),
('CCT8IM80NM',9,20,3,1,1,'women',33.3333,'2026-03-21 11:21:30','2026-03-21 11:21:30'),
('CCT8IM80NM',9,20,3,1,1,'handloom',69.2308,'2026-03-21 11:21:30','2026-03-21 11:21:30'),
('CCT8IM80NM',9,20,3,1,1,'pure',21.7391,'2026-03-21 11:21:30','2026-03-21 11:21:30'),
('CCADDP80NM',9,4,3,1,1,'saree',120,'2026-03-21 11:23:44','2026-03-21 11:23:44'),
('CCADDP80NM',9,4,3,1,1,'women',33.3333,'2026-03-21 11:23:44','2026-03-21 11:23:44'),
('CCADDP80NM',9,4,3,1,1,'silky',50,'2026-03-21 11:23:44','2026-03-21 11:23:44'),
('CCADDP80NM',9,4,3,1,1,'madhosh',50,'2026-03-21 11:23:44','2026-03-21 11:23:44'),
('CCIVGV80NM',9,4,3,1,1,'saree',120,'2026-03-21 11:28:28','2026-03-21 11:28:28'),
('CCIVGV80NM',9,4,3,1,1,'women',33.3333,'2026-03-21 11:28:28','2026-03-21 11:28:28'),
('CCIVGV80NM',9,4,3,1,1,'silky',50,'2026-03-21 11:28:28','2026-03-21 11:28:28'),
('CCIVGV80NM',9,4,3,1,1,'saniya',28,'2026-03-21 11:28:28','2026-03-21 11:28:28'),
('CC3KP090NM',9,4,3,1,1,'saree',120,'2026-03-21 11:32:33','2026-03-21 11:32:33'),
('CC3KP090NM',9,4,3,1,1,'women',33.3333,'2026-03-21 11:32:33','2026-03-21 11:32:33'),
('CC3KP090NM',9,4,3,1,1,'silky',50,'2026-03-21 11:32:33','2026-03-21 11:32:33'),
('CC3KP090NM',9,4,3,1,1,'pure',38.4615,'2026-03-21 11:32:33','2026-03-21 11:32:33'),
('CCW9KF90NM',9,27,3,1,1,'saree',120,'2026-03-21 11:44:06','2026-03-21 11:44:06'),
('CCW9KF90NM',9,27,3,1,1,'women',33.3333,'2026-03-21 11:44:06','2026-03-21 11:44:06'),
('CCW9KF90NM',9,27,3,1,1,'jimmy',33.3333,'2026-03-21 11:44:06','2026-03-21 11:44:06'),
('CCW9KF90NM',9,27,3,1,1,'jenifer',24.2424,'2026-03-21 11:44:06','2026-03-21 11:44:06'),
('CCHA8W90NM',52,28,7,1,1,'jute',33.3333,'2026-03-21 11:57:04','2026-03-21 11:57:04'),
('CCHA8W90NM',52,28,7,1,1,'decor',40,'2026-03-21 11:57:04','2026-03-21 11:57:04'),
('CCHA8W90NM',52,28,7,1,1,'jute',33.3333,'2026-03-21 11:57:04','2026-03-21 11:57:04'),
('CCHA8W90NM',52,28,7,1,1,'deep',17.8571,'2026-03-21 11:57:04','2026-03-21 11:57:04'),
('CCNKH0A0NM',9,20,3,1,1,'saree',120,'2026-03-21 12:00:22','2026-03-21 12:00:22'),
('CCNKH0A0NM',9,20,3,1,1,'women',33.3333,'2026-03-21 12:00:22','2026-03-21 12:00:22'),
('CCNKH0A0NM',9,20,3,1,1,'handloom',69.2308,'2026-03-21 12:00:22','2026-03-21 12:00:22'),
('CCNKH0A0NM',9,20,3,1,1,'handloom',69.2308,'2026-03-21 12:00:22','2026-03-21 12:00:22'),
('CCB0R5A0NM',9,20,3,1,1,'saree',120,'2026-03-21 12:04:28','2026-03-21 12:04:28'),
('CCB0R5A0NM',9,20,3,1,1,'women',33.3333,'2026-03-21 12:04:28','2026-03-21 12:04:28'),
('CCB0R5A0NM',9,20,3,1,1,'handloom',69.2308,'2026-03-21 12:04:28','2026-03-21 12:04:28'),
('CCB0R5A0NM',9,20,3,1,1,'handloom',69.2308,'2026-03-21 12:04:28','2026-03-21 12:04:28'),
('CC9R8BA0NM',9,20,3,1,1,'saree',120,'2026-03-21 12:08:44','2026-03-21 12:08:44'),
('CC9R8BA0NM',9,20,3,1,1,'women',33.3333,'2026-03-21 12:08:44','2026-03-21 12:08:44'),
('CC9R8BA0NM',9,20,3,1,1,'handloom',69.2308,'2026-03-21 12:08:44','2026-03-21 12:08:44'),
('CC9R8BA0NM',9,20,3,1,1,'handloom',69.2308,'2026-03-21 12:08:44','2026-03-21 12:08:44'),
('CCBOXCA0NM',9,20,3,1,1,'saree',120,'2026-03-21 12:10:03','2026-03-21 12:10:03'),
('CCBOXCA0NM',9,20,3,1,1,'women',33.3333,'2026-03-21 12:10:03','2026-03-21 12:10:03'),
('CCBOXCA0NM',9,20,3,1,1,'handloom',69.2308,'2026-03-21 12:10:03','2026-03-21 12:10:03'),
('CCBOXCA0NM',9,20,3,1,1,'handloom',69.2308,'2026-03-21 12:10:03','2026-03-21 12:10:03'),
('CCP2TFKENM',44,29,8,1,1,'men',33.3333,'2026-03-31 12:01:00','2026-03-31 12:01:00'),
('CCP2TFKENM',44,29,8,1,1,'innerwear',111.111,'2026-03-31 12:01:00','2026-03-31 12:01:00'),
('CCP2TFKENM',44,29,8,1,1,'lux',57.1429,'2026-03-31 12:01:00','2026-03-31 12:01:00'),
('CCP2TFKENM',44,29,8,1,1,'lux',16.6667,'2026-03-31 12:01:00','2026-03-31 12:01:00'),
('CCJSN3LENM',9,6,3,1,1,'saree',120,'2026-03-31 12:19:33','2026-03-31 12:19:33'),
('CCJSN3LENM',9,6,3,1,1,'sarees',116.667,'2026-03-31 12:19:33','2026-03-31 12:19:33'),
('CCJSN3LENM',9,6,3,1,1,'shantipur',111.111,'2026-03-31 12:19:33','2026-03-31 12:19:33'),
('CCJSN3LENM',9,6,3,1,1,'handloom',69.2308,'2026-03-31 12:19:33','2026-03-31 12:19:33'),
('CCEIGALENM',9,6,3,1,1,'saree',120,'2026-03-31 12:24:50','2026-03-31 12:24:50'),
('CCEIGALENM',9,6,3,1,1,'sarees',116.667,'2026-03-31 12:24:50','2026-03-31 12:24:50'),
('CCEIGALENM',9,6,3,1,1,'shantipur',111.111,'2026-03-31 12:24:50','2026-03-31 12:24:50'),
('CCEIGALENM',9,6,3,1,1,'handloom',69.2308,'2026-03-31 12:24:50','2026-03-31 12:24:50'),
('CCZATVLFNM',46,30,9,1,1,'bermuda',61.5385,'2026-04-01 05:29:12','2026-04-01 05:29:12'),
('CCZATVLFNM',46,30,9,1,1,'shorts',116.667,'2026-04-01 05:29:12','2026-04-01 05:29:12'),
('CCZATVLFNM',46,30,9,1,1,'rupa',125,'2026-04-01 05:29:12','2026-04-01 05:29:12'),
('CCZATVLFNM',46,30,9,1,1,'mercerised',35.4839,'2026-04-01 05:29:12','2026-04-01 05:29:12'),
('CCBL22NFNM',31,31,10,1,1,'half',55.5556,'2026-04-01 06:02:04','2026-04-01 06:02:04'),
('CCBL22NFNM',31,31,10,1,1,'casual',58.3333,'2026-04-01 06:02:04','2026-04-01 06:02:04'),
('CCBL22NFNM',31,31,10,1,1,'sonajhuri',111.111,'2026-04-01 06:02:04','2026-04-01 06:02:04'),
('CCBL22NFNM',31,31,10,1,1,'printed',28.5714,'2026-04-01 06:02:04','2026-04-01 06:02:04'),
('CC6CPLNFNM',43,31,11,1,1,'men',50,'2026-04-01 06:17:20','2026-04-01 06:17:20'),
('CC6CPLNFNM',43,31,11,1,1,'shirts',116.667,'2026-04-01 06:17:20','2026-04-01 06:17:20'),
('CC6CPLNFNM',43,31,11,1,1,'sonajhuri',111.111,'2026-04-01 06:17:20','2026-04-01 06:17:20'),
('CC6CPLNFNM',43,31,11,1,1,'men',11.7647,'2026-04-01 06:17:20','2026-04-01 06:17:20'),
('CCFW5VNFNM',46,32,8,1,1,'men',33.3333,'2026-04-01 06:24:41','2026-04-01 06:24:41'),
('CCFW5VNFNM',46,32,8,1,1,'shorts',116.667,'2026-04-01 06:24:41','2026-04-01 06:24:41'),
('CCFW5VNFNM',46,32,8,1,1,'dollar',116.667,'2026-04-01 06:24:41','2026-04-01 06:24:41'),
('CCFW5VNFNM',46,32,8,1,1,'dollar',30.4348,'2026-04-01 06:24:41','2026-04-01 06:24:41'),
('CC6YQOOFNM',10,31,11,1,1,'men',50,'2026-04-01 06:47:41','2026-04-01 06:47:41'),
('CC6YQOOFNM',10,31,11,1,1,'kurtas',58.3333,'2026-04-01 06:47:41','2026-04-01 06:47:41'),
('CC6YQOOFNM',10,31,11,1,1,'sonajhuri',111.111,'2026-04-01 06:47:41','2026-04-01 06:47:41'),
('CC6YQOOFNM',10,31,11,1,1,'man',11.7647,'2026-04-01 06:47:41','2026-04-01 06:47:41'),
('CC4D30PFNM',46,33,9,1,1,'bermuda',61.5385,'2026-04-01 06:56:31','2026-04-01 06:56:31'),
('CC4D30PFNM',46,33,9,1,1,'shorts',116.667,'2026-04-01 06:56:31','2026-04-01 06:56:31'),
('CC4D30PFNM',46,33,9,1,1,'boxer',120,'2026-04-01 06:56:31','2026-04-01 06:56:31'),
('CC4D30PFNM',46,33,9,1,1,'pure',21.7391,'2026-04-01 06:56:31','2026-04-01 06:56:31'),
('CCUQT1YFNM',31,31,10,1,1,'half',55.5556,'2026-04-01 11:09:48','2026-04-01 11:09:48'),
('CCUQT1YFNM',31,31,10,1,1,'casual',58.3333,'2026-04-01 11:09:48','2026-04-01 11:09:48'),
('CCUQT1YFNM',31,31,10,1,1,'sonajhuri',111.111,'2026-04-01 11:09:48','2026-04-01 11:09:48'),
('CCUQT1YFNM',31,31,10,1,1,'printed',28.5714,'2026-04-01 11:09:48','2026-04-01 11:09:48'),
('CCVPUOYFNM',31,31,11,1,1,'men',50,'2026-04-01 11:27:42','2026-04-01 11:27:42'),
('CCVPUOYFNM',31,31,11,1,1,'casual',58.3333,'2026-04-01 11:27:42','2026-04-01 11:27:42'),
('CCVPUOYFNM',31,31,11,1,1,'sonajhuri',111.111,'2026-04-01 11:27:42','2026-04-01 11:27:42'),
('CCVPUOYFNM',31,31,11,1,1,'men',11.7647,'2026-04-01 11:27:43','2026-04-01 11:27:43'),
('CC3XW6ZFNM',46,34,9,1,1,'bermuda',61.5385,'2026-04-01 11:41:45','2026-04-01 11:41:45'),
('CC3XW6ZFNM',46,34,9,1,1,'shorts',116.667,'2026-04-01 11:41:45','2026-04-01 11:41:45'),
('CC3XW6ZFNM',46,34,9,1,1,'neo',133.333,'2026-04-01 11:41:45','2026-04-01 11:41:45'),
('CC3XW6ZFNM',46,34,9,1,1,'neo',40,'2026-04-01 11:41:45','2026-04-01 11:41:45'),
('CCUWJNZFNM',39,31,12,1,1,'punjabi',61.5385,'2026-04-01 11:54:41','2026-04-01 11:54:41'),
('CCUWJNZFNM',39,31,12,1,1,'punjabi',57.1429,'2026-04-01 11:54:41','2026-04-01 11:54:41'),
('CCUWJNZFNM',39,31,12,1,1,'sonajhuri',111.111,'2026-04-01 11:54:41','2026-04-01 11:54:41'),
('CCUWJNZFNM',39,31,12,1,1,'men',11.1111,'2026-04-01 11:54:41','2026-04-01 11:54:41'),
('CCPPP30GNM',39,31,12,1,1,'punjabi',61.5385,'2026-04-01 12:07:15','2026-04-01 12:07:15'),
('CCPPP30GNM',39,31,12,1,1,'punjabi',57.1429,'2026-04-01 12:07:15','2026-04-01 12:07:15'),
('CCPPP30GNM',39,31,12,1,1,'sonajhuri',111.111,'2026-04-01 12:07:15','2026-04-01 12:07:15'),
('CCPPP30GNM',39,31,12,1,1,'men',11.1111,'2026-04-01 12:07:15','2026-04-01 12:07:15'),
('CCGFJB0GNM',39,31,12,1,1,'punjabi',61.5385,'2026-04-01 12:13:21','2026-04-01 12:13:21'),
('CCGFJB0GNM',39,31,12,1,1,'punjabi',57.1429,'2026-04-01 12:13:21','2026-04-01 12:13:21'),
('CCGFJB0GNM',39,31,12,1,1,'sonajhuri',111.111,'2026-04-01 12:13:21','2026-04-01 12:13:21'),
('CCGFJB0GNM',39,31,12,1,1,'men',11.7647,'2026-04-01 12:13:21','2026-04-01 12:13:21'),
('CCTLPI0GNM',39,31,12,1,1,'punjabi',61.5385,'2026-04-01 12:18:55','2026-04-01 12:18:55'),
('CCTLPI0GNM',39,31,12,1,1,'punjabi',57.1429,'2026-04-01 12:18:55','2026-04-01 12:18:55'),
('CCTLPI0GNM',39,31,12,1,1,'sonajhuri',111.111,'2026-04-01 12:18:55','2026-04-01 12:18:55'),
('CCTLPI0GNM',39,31,12,1,1,'men',11.7647,'2026-04-01 12:18:55','2026-04-01 12:18:55');
/*!40000 ALTER TABLE `item_soundx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_variant`
--

DROP TABLE IF EXISTS `item_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_variant` (
  `sku_id` varchar(50) NOT NULL,
  `item_id` varchar(10) NOT NULL,
  `size` varchar(30) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `unit_mrp` float unsigned NOT NULL,
  `unit_price` float unsigned NOT NULL,
  `stock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`sku_id`),
  KEY `item_variant_item_id_idx` (`item_id`),
  CONSTRAINT `item_variant_item_fk` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_variant`
--

LOCK TABLES `item_variant` WRITE;
/*!40000 ALTER TABLE `item_variant` DISABLE KEYS */;
INSERT INTO `item_variant` VALUES
('SKUE60WMNFNM','CC6CPLNFNM','42','Black',399,215,1,1,'2026-04-01 06:18:15','2026-04-01 06:18:15'),
('SKUIN7OHMFNM','CCZATVLFNM','XL','Sky Blue',439,320,1,1,'2026-04-01 05:46:12','2026-04-01 05:46:12'),
('SKUOEVMGLENM','CCP2TFKENM','85','Red',189,125,1,1,'2026-03-31 12:29:38','2026-04-01 05:16:16'),
('SKUOHFH5MFNM','CCZATVLFNM','L','Black',439,320,1,1,'2026-04-01 05:36:43','2026-04-01 05:36:43'),
('SKUP6RU3NFNM','CCBL22NFNM','42','Sky Bule',399,240,1,1,'2026-04-01 06:03:27','2026-04-01 06:03:27'),
('SKUPKHXOZFNM','CCUWJNZFNM','42','Green',355,280,1,1,'2026-04-01 11:55:46','2026-04-01 11:55:46'),
('SKUPP1J8ZFNM','CC3XW6ZFNM','L','Sky Blue',249,190,1,1,'2026-04-01 11:43:00','2026-04-01 11:43:00'),
('SKUPP65BLENM','CCEIGALENM',NULL,NULL,499,375,1,1,'2026-03-31 12:25:22','2026-03-31 12:25:22'),
('SKUPW9160GNM','CCPPP30GNM','44','Red',450,300,1,1,'2026-04-01 12:09:04','2026-04-01 12:09:04'),
('SKUQEMK9YFNM','CCUQT1YFNM','40','Blue',299,240,1,1,'2026-04-01 11:15:50','2026-04-01 11:15:50'),
('SKURDBNXLFNM','CCZATVLFNM','XL','Black',439,320,1,1,'2026-04-01 05:30:38','2026-04-01 05:30:38'),
('SKURTNS4OFNM','CCFW5VNFNM','85','Navy Blue',199,125,1,1,'2026-04-01 06:32:11','2026-04-01 06:32:11'),
('SKUT8HR1MFNM','CCZATVLFNM','XXL','Red',439,320,1,1,'2026-04-01 05:33:50','2026-04-01 05:33:50'),
('SKUTB6CG0GNM','CCGFJB0GNM','44','Bright Green',410,280,1,1,'2026-04-01 12:17:04','2026-04-01 12:17:04'),
('SKUTU65DMFNM','CCZATVLFNM','XXL','Green',439,320,1,1,'2026-04-01 05:42:41','2026-04-01 05:42:41'),
('SKUU6ESL0GNM','CCTLPI0GNM','44','Blue',410,280,1,1,'2026-04-01 12:21:19','2026-04-01 12:21:19'),
('SKUUE1D1OFNM','CCFW5VNFNM','100','Dark Brown',299,140,1,1,'2026-04-01 06:29:30','2026-04-01 06:29:30'),
('SKUUMVO2PFNM','CC4D30PFNM','L','Navy Blue',299,190,1,1,'2026-04-01 06:58:32','2026-04-01 06:58:32'),
('SKUY0V3RYFNM','CCVPUOYFNM','48','Blue',299,240,1,1,'2026-04-01 11:29:28','2026-04-01 11:29:28'),
('SKUY2N1YNFNM','CCFW5VNFNM','95','Black',299,140,1,1,'2026-04-01 06:26:56','2026-04-01 06:26:56'),
('SKUYB2TROFNM','CC6YQOOFNM','50','White',299,215,1,1,'2026-04-01 06:50:04','2026-04-01 06:50:04'),
('SKUYDLIHKENM','CCP2TFKENM','85','Gray',189,125,1,1,'2026-03-31 12:02:19','2026-03-31 12:02:19'),
('SKUYPP66LENM','CCJSN3LENM',NULL,NULL,799,515,1,1,'2026-03-31 12:21:30','2026-03-31 12:21:30');
/*!40000 ALTER TABLE `item_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `media_type` varchar(8) NOT NULL,
  `media_url` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `order_id` varchar(20) NOT NULL,
  `item_id` varchar(10) NOT NULL,
  `vendor_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(256) NOT NULL,
  `gen_name` varchar(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `br_name` varchar(50) NOT NULL,
  `br_cmp` varchar(50) NOT NULL,
  `item_image` varchar(256) NOT NULL,
  `unit_mrp` float NOT NULL,
  `unit_price` float NOT NULL,
  `order_qty` int(11) NOT NULL,
  `gross_discount` float NOT NULL,
  `tax_percent` float NOT NULL,
  `gross_tax` float NOT NULL,
  `net_payable_amount` float NOT NULL,
  `status_json` varchar(1024) NOT NULL,
  `delivery_otp` int(10) unsigned NOT NULL,
  `closed_on` timestamp NULL DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sku_id` varchar(50) NOT NULL DEFAULT '',
  `variant_label` varchar(100) NOT NULL DEFAULT '',
  `courier_name` varchar(50) DEFAULT NULL,
  `tracking_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`item_id`,`sku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES
('ORDRIWOWEWYUEM9I259Y','CCJSN3LENM','CCFR828QMM','Handloom saree','Saree','Sarees','Shantipur','Shri Textile','https://vendor.e-craft.in/uploads/CCJSN3LENM_69cbbcaa96ba8_lg.jpeg',799,515,1,284,0,0,515,'[{\"status\":\"initiated\",\"on\":\"2026-04-05T06:25:59.300Z\",\"by\":\"customer\",\"remark\":\"The order has been initiated by the customer having user_id:UMN471RJUF\"},{\"status\":\"Shipped\",\"on\":\"2026-04-06 10:44:35\",\"by\":\"CRAFT COTTAGE\",\"remark\":\"\"},{\"status\":\"Shipped\",\"on\":\"2026-04-06 10:45:28\",\"by\":\"CRAFT COTTAGE\",\"remark\":\"\"},{\"status\":\"Delivered\",\"on\":\"2026-04-09 11:37:49\",\"by\":\"CRAFT COTTAGE\",\"remark\":\"\"}]',13349,'2026-04-09 11:37:49','2026-04-05 06:25:59','2026-04-09 11:37:49','SKUYPP66LENM','',NULL,NULL);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_master`
--

DROP TABLE IF EXISTS `order_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_master` (
  `order_id` varchar(20) NOT NULL,
  `user_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` varchar(14) NOT NULL,
  `name` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pincode` int(10) unsigned NOT NULL,
  `net_payable_amount` float NOT NULL,
  `payment_mode` varchar(20) DEFAULT NULL,
  `payed_amount` float NOT NULL DEFAULT 0,
  `payed_on` timestamp NULL DEFAULT NULL,
  `payment_json` varchar(256) DEFAULT NULL,
  `status_json` varchar(1024) NOT NULL,
  `closed_on` timestamp NULL DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_master`
--

LOCK TABLES `order_master` WRITE;
/*!40000 ALTER TABLE `order_master` DISABLE KEYS */;
INSERT INTO `order_master` VALUES
('ORDRIWOWEWYUEM9I259Y','UMN471RJUF','UAWURTET6CIYRX','RANU ROY','DWARIAPUR','PURBA BARDHAMAN','WEST BENGAL',713128,564,'Cash on Delivery',0,NULL,NULL,'[{\"status\":\"initiated\",\"on\":\"2026-04-05T06:25:59.300Z\",\"by\":\"customer\",\"remark\":\"The order has been initiated by the customer having user_id:UMN471RJUF\"}]','2026-04-09 11:37:49','2026-04-05 06:25:59','2026-04-09 11:37:49');
/*!40000 ALTER TABLE `order_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `mrp` float NOT NULL,
  `generic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `gen_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `user_id` varchar(10) NOT NULL,
  `item_id` varchar(10) NOT NULL,
  `rating_value` decimal(2,1) unsigned NOT NULL,
  `rating_modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`,`item_id`),
  KEY `rating_item_id_key` (`item_id`),
  CONSTRAINT `rating_item_id_key` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  CONSTRAINT `rating_user_id_key` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `item_id` varchar(10) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `review` varchar(255) NOT NULL,
  `review_modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`item_id`,`user_id`),
  KEY `review_user_id_key` (`user_id`),
  CONSTRAINT `review_item_id_key` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  CONSTRAINT `review_user_id_key` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_key`
--

DROP TABLE IF EXISTS `search_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_key` (
  `search_key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `search_key_value` varchar(30) NOT NULL,
  `search_key_priority` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`search_key_id`),
  UNIQUE KEY `search_key_value` (`search_key_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_key`
--

LOCK TABLES `search_key` WRITE;
/*!40000 ALTER TABLE `search_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `section_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `section_visible` tinyint(1) NOT NULL,
  `section_type` varchar(8) NOT NULL DEFAULT 'normal',
  `section_label` varchar(50) NOT NULL,
  `label_position` varchar(5) NOT NULL DEFAULT 'up',
  `section_priority` smallint(6) NOT NULL,
  `section_image` varchar(255) NOT NULL,
  `item_query` varchar(255) NOT NULL,
  `section_rows` tinyint(3) unsigned NOT NULL,
  `section_cols` tinyint(3) unsigned NOT NULL,
  `section_rowspan` tinyint(3) unsigned NOT NULL,
  `section_colspan` tinyint(3) unsigned NOT NULL,
  `section_style` varchar(255) NOT NULL,
  `label_style` varchar(255) NOT NULL,
  `container_style` varchar(255) NOT NULL,
  `image_style` varchar(255) NOT NULL,
  `timestamp` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(100) NOT NULL,
  `vendor_id` varchar(10) DEFAULT NULL,
  `item_ids` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `carrier` varchar(50) NOT NULL,
  `service` varchar(100) DEFAULT NULL,
  `tracking_number` varchar(100) DEFAULT NULL,
  `label_url` text DEFAULT NULL,
  `status` enum('pending','label_created','picked_up','in_transit','out_for_delivery','delivered','cancelled','exception') NOT NULL DEFAULT 'pending',
  `last_tracking_event` text DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) NOT NULL DEFAULT 'USD',
  `pickup_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `manifest_id` varchar(100) DEFAULT NULL,
  `origin_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`origin_data`)),
  `destination_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`destination_data`)),
  `package_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`package_data`)),
  `raw_response` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `vendor_id` (`vendor_id`),
  KEY `tracking_number` (`tracking_number`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `superadmin`
--

DROP TABLE IF EXISTS `superadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `superadmin` (
  `uid` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superadmin`
--

LOCK TABLES `superadmin` WRITE;
/*!40000 ALTER TABLE `superadmin` DISABLE KEYS */;
INSERT INTO `superadmin` VALUES
('7001550929','U2FsdGVkX1/ebr+qdWjrBsJ04MoNA2w0/w8/LBDLQus=');
/*!40000 ALTER TABLE `superadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `tag_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` varchar(10) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_mobile` varchar(10) NOT NULL,
  `avatar_url` varchar(500) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `user_created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_mobile` (`user_mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
('UMN471RJUF','RANU ROY',NULL,'9800758192',NULL,1,'2026-03-24 05:48:28','2026-03-24 05:48:28'),
('UMNSLR2JCD','Adrish rana',NULL,'9883665296',NULL,1,'2026-04-10 07:46:31','2026-04-10 07:46:31'),
('UMNUI08OR1','Piu pa',NULL,'8101615236',NULL,1,'2026-04-11 15:37:13','2026-04-11 15:37:13');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_address` (
  `address_id` varchar(14) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `po` varchar(50) DEFAULT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pincode` int(10) unsigned NOT NULL,
  `address_created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `address_modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
INSERT INTO `user_address` VALUES
('UAWURTET6CIYRX','UMN471RJUF','RANU ROY','DWARIAPUR','GONNA DWARIAPUR','NEAR POST OFFICE','PURBA BARDHAMAN','WEST BENGAL',713128,'2026-03-24 05:50:15','2026-03-24 05:50:15');
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `vendor_id` varchar(10) NOT NULL,
  `vendor_name` varchar(100) NOT NULL,
  `vendor_mobile` varchar(10) NOT NULL,
  `vendor_password` varchar(80) NOT NULL,
  `vendor_active` tinyint(1) NOT NULL DEFAULT 0,
  `vendor_created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `vendor_modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`vendor_id`),
  UNIQUE KEY `vendor_mobile` (`vendor_mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES
('CCFR828QMM','CRAFT COTTAGE','7501725177','$2y$10$XNXzevB2W9raLAd6qepIEuMvPjPeZql1X7EwN9Lot/41rqJnnygrq',1,'2026-03-14 11:08:03','2026-03-14 11:09:46');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_shop_details`
--

DROP TABLE IF EXISTS `vendor_shop_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_shop_details` (
  `vendor_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_title` varchar(200) NOT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `shop_address` varchar(200) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `state` varchar(11) NOT NULL,
  `vendor_image` varchar(100) DEFAULT NULL,
  `shop_banner` varchar(100) DEFAULT NULL,
  `shop_info_extra` text DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_shop_details`
--

LOCK TABLES `vendor_shop_details` WRITE;
/*!40000 ALTER TABLE `vendor_shop_details` DISABLE KEYS */;
INSERT INTO `vendor_shop_details` VALUES
('CCFR828QMM','Demo Shop','abc@xyz.com','Shop Address','Shop City','123456','West Bengal',NULL,NULL,NULL,'2026-03-14 11:08:03','2026-03-14 11:08:03');
/*!40000 ALTER TABLE `vendor_shop_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-13 17:57:53
