-- MySQL dump 10.13  Distrib 5.1.66, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: c12evideo_org_ua
-- ------------------------------------------------------
-- Server version	5.1.66-0+squeeze1


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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affiliate`
--

DROP TABLE IF EXISTS `affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(96) NOT NULL DEFAULT '',
  `telephone` varchar(32) NOT NULL DEFAULT '',
  `fax` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL DEFAULT '',
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL DEFAULT '',
  `postcode` varchar(10) NOT NULL DEFAULT '',
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL DEFAULT '',
  `paypal` varchar(64) NOT NULL DEFAULT '',
  `bank_name` varchar(64) NOT NULL DEFAULT '',
  `bank_branch_number` varchar(64) NOT NULL DEFAULT '',
  `bank_swift_code` varchar(64) NOT NULL DEFAULT '',
  `bank_account_name` varchar(64) NOT NULL DEFAULT '',
  `bank_account_number` varchar(64) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affiliate`
--

LOCK TABLES `affiliate` WRITE;
/*!40000 ALTER TABLE `affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affiliate_transaction`
--

DROP TABLE IF EXISTS `affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affiliate_transaction`
--

LOCK TABLES `affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute`
--

DROP TABLE IF EXISTS `attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute`
--

LOCK TABLES `attribute` WRITE;
/*!40000 ALTER TABLE `attribute` DISABLE KEYS */;
INSERT INTO `attribute` VALUES (1,6,1),(2,6,5),(3,6,3),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,3,7),(11,3,8);
/*!40000 ALTER TABLE `attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_description`
--

DROP TABLE IF EXISTS `attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_description`
--

LOCK TABLES `attribute_description` WRITE;
/*!40000 ALTER TABLE `attribute_description` DISABLE KEYS */;
INSERT INTO `attribute_description` VALUES (1,1,'Description'),(2,1,'No. of Cores'),(4,1,'test 1'),(5,1,'test 2'),(6,1,'test 3'),(7,1,'test 4'),(8,1,'test 5'),(9,1,'test 6'),(10,1,'test 7'),(11,1,'test 8'),(3,1,'Clockspeed');
/*!40000 ALTER TABLE `attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_group`
--

DROP TABLE IF EXISTS `attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_group`
--

LOCK TABLES `attribute_group` WRITE;
/*!40000 ALTER TABLE `attribute_group` DISABLE KEYS */;
INSERT INTO `attribute_group` VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_group_description`
--

DROP TABLE IF EXISTS `attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_group_description`
--

LOCK TABLES `attribute_group_description` WRITE;
/*!40000 ALTER TABLE `attribute_group_description` DISABLE KEYS */;
INSERT INTO `attribute_group_description` VALUES (3,1,'Память'),(4,1,'Technical'),(5,1,'Материнская плата'),(6,1,'Процессор');
/*!40000 ALTER TABLE `attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (6,'HP Products',1),(7,'Samsung Tab',1),(8,'Manufacturers',1);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_image`
--

DROP TABLE IF EXISTS `banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_image`
--

LOCK TABLES `banner_image` WRITE;
/*!40000 ALTER TABLE `banner_image` DISABLE KEYS */;
INSERT INTO `banner_image` VALUES (54,7,'index.php?route=product/product&amp;path=57&amp;product_id=49','data/samsung_banner.jpg'),(52,6,'/index.php?route=product/manufacturer/product&amp;manufacturer_id=7','data/hp_banner.jpg'),(77,6,'/index.php?route=product/manufacturer/product&amp;manufacturer_id=7','data/hp_banner.jpg'),(75,8,'/index.php?route=product/manufacturer/product&amp;manufacturer_id=5','data/htc_logo.jpg'),(73,8,'/index.php?route=product/manufacturer/product&amp;manufacturer_id=8','data/apple_logo.jpg'),(74,8,'/index.php?route=product/manufacturer/product&amp;manufacturer_id=9','data/canon_logo.jpg'),(71,8,'/index.php?route=product/manufacturer/product&amp;manufacturer_id=10','data/sony_logo.jpg'),(72,8,'/index.php?route=product/manufacturer/product&amp;manufacturer_id=6','data/palm_logo.jpg'),(76,8,'/index.php?route=product/manufacturer/product&amp;manufacturer_id=7','data/hp_logo.jpg');
/*!40000 ALTER TABLE `banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_image_description`
--

DROP TABLE IF EXISTS `banner_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_image_description`
--

LOCK TABLES `banner_image_description` WRITE;
/*!40000 ALTER TABLE `banner_image_description` DISABLE KEYS */;
INSERT INTO `banner_image_description` VALUES (54,1,7,'Samsung Tab 10.1'),(52,1,6,'HP Banner'),(77,1,6,'HP Banner'),(75,1,8,'HTC'),(74,1,8,'Canon'),(73,1,8,'Apple'),(72,1,8,'Palm'),(71,1,8,'Sony'),(76,1,8,'Hewlett-Packard');
/*!40000 ALTER TABLE `banner_image_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (25,'',0,1,1,3,1,'2009-01-31 01:04:25','2011-05-30 12:14:55'),(27,'',20,0,0,2,1,'2009-01-31 01:55:34','2010-08-22 06:32:15'),(20,'data/compaq_presario.jpg',0,1,1,1,1,'2009-01-05 21:49:43','2011-05-30 12:13:49'),(24,'',0,1,1,5,1,'2009-01-20 02:36:26','2011-05-30 12:15:18'),(18,'data/hp_2.jpg',0,1,0,2,1,'2009-01-05 21:49:15','2011-05-30 12:13:55'),(17,'',0,1,1,4,1,'2009-01-03 21:08:57','2011-05-30 12:15:11'),(28,'',25,0,0,1,1,'2009-02-02 13:11:12','2010-08-22 06:32:46'),(26,'',20,0,0,1,1,'2009-01-31 01:55:14','2010-08-22 06:31:45'),(29,'',25,0,0,1,1,'2009-02-02 13:11:37','2010-08-22 06:32:39'),(30,'',25,0,0,1,1,'2009-02-02 13:11:59','2010-08-22 06:33:00'),(31,'',25,0,0,1,1,'2009-02-03 14:17:24','2010-08-22 06:33:06'),(32,'',25,0,0,1,1,'2009-02-03 14:17:34','2010-08-22 06:33:12'),(33,'',0,1,1,6,1,'2009-02-03 14:17:55','2011-05-30 12:15:25'),(34,'data/ipod_touch_4.jpg',0,1,4,7,1,'2009-02-03 14:18:11','2011-05-30 12:15:31'),(35,'',28,0,0,0,1,'2010-09-17 10:06:48','2010-09-18 14:02:42'),(36,'',28,0,0,0,1,'2010-09-17 10:07:13','2010-09-18 14:02:55'),(37,'',34,0,0,0,1,'2010-09-18 14:03:39','2011-04-22 01:55:08'),(38,'',34,0,0,0,1,'2010-09-18 14:03:51','2010-09-18 14:03:51'),(39,'',34,0,0,0,1,'2010-09-18 14:04:17','2011-04-22 01:55:20'),(40,'',34,0,0,0,1,'2010-09-18 14:05:36','2010-09-18 14:05:36'),(41,'',34,0,0,0,1,'2010-09-18 14:05:49','2011-04-22 01:55:30'),(42,'',34,0,0,0,1,'2010-09-18 14:06:34','2010-11-07 20:31:04'),(43,'',34,0,0,0,1,'2010-09-18 14:06:49','2011-04-22 01:55:40'),(44,'',34,0,0,0,1,'2010-09-21 15:39:21','2010-11-07 20:30:55'),(45,'',18,0,0,0,1,'2010-09-24 18:29:16','2011-04-26 08:52:11'),(46,'',18,0,0,0,1,'2010-09-24 18:29:31','2011-04-26 08:52:23'),(47,'',34,0,0,0,1,'2010-11-07 11:13:16','2010-11-07 11:13:16'),(48,'',34,0,0,0,1,'2010-11-07 11:13:33','2010-11-07 11:13:33'),(49,'',34,0,0,0,1,'2010-11-07 11:14:04','2010-11-07 11:14:04'),(50,'',34,0,0,0,1,'2010-11-07 11:14:23','2011-04-22 01:16:01'),(51,'',34,0,0,0,1,'2010-11-07 11:14:38','2011-04-22 01:16:13'),(52,'',34,0,0,0,1,'2010-11-07 11:16:09','2011-04-22 01:54:57'),(53,'',34,0,0,0,1,'2010-11-07 11:28:53','2011-04-22 01:14:36'),(54,'',34,0,0,0,1,'2010-11-07 11:29:16','2011-04-22 01:16:50'),(55,'',34,0,0,0,1,'2010-11-08 10:31:32','2010-11-08 10:31:32'),(56,'',34,0,0,0,1,'2010-11-08 10:31:50','2011-04-22 01:16:37'),(57,'',0,1,1,3,1,'2011-04-26 08:53:16','2011-05-30 12:15:05'),(58,'',52,0,0,0,1,'2011-05-08 13:44:16','2011-05-08 13:44:16');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_description`
--

DROP TABLE IF EXISTS `category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_description`
--

LOCK TABLES `category_description` WRITE;
/*!40000 ALTER TABLE `category_description` DISABLE KEYS */;
INSERT INTO `category_description` VALUES (28,1,'Мониторы','','',''),(33,1,'Камеры','','',''),(32,1,'Веб-камеры','','',''),(31,1,'Сканеры','','',''),(30,1,'Принтеры','','',''),(29,1,'Мышки','','',''),(27,1,'Mac','','',''),(26,1,'PC','','',''),(17,1,'Програмное обеспечение','','',''),(25,1,'Компоненты','','',''),(24,1,'Телефоны и PDA','','',''),(20,1,'Компьютеры','&lt;p&gt;\r\n	Пример текста в описания категории&lt;/p&gt;\r\n','Пример описания категории',''),(35,1,'test 1','','',''),(36,1,'test 2','','',''),(37,1,'test 5','','',''),(38,1,'test 4','','',''),(39,1,'test 6','','',''),(40,1,'test 7','','',''),(41,1,'test 8','','',''),(42,1,'test 9','','',''),(43,1,'test 11','','',''),(34,1,'MP3 Плееры','&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n','',''),(18,1,'Ноутбуки','&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n','',''),(44,1,'test 12','','',''),(45,1,'Windows','','',''),(46,1,'Macs','','',''),(47,1,'test 15','','',''),(48,1,'test 16','','',''),(49,1,'test 17','','',''),(50,1,'test 18','','',''),(51,1,'test 19','','',''),(52,1,'test 20','','',''),(53,1,'test 21','','',''),(54,1,'test 22','','',''),(55,1,'test 23','','',''),(56,1,'test 24','','',''),(57,1,'Планшеты','','',''),(58,1,'test 25','','','');
/*!40000 ALTER TABLE `category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_to_layout`
--

DROP TABLE IF EXISTS `category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_to_layout`
--

LOCK TABLES `category_to_layout` WRITE;
/*!40000 ALTER TABLE `category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_to_store`
--

DROP TABLE IF EXISTS `category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_to_store`
--

LOCK TABLES `category_to_store` WRITE;
/*!40000 ALTER TABLE `category_to_store` DISABLE KEYS */;
INSERT INTO `category_to_store` VALUES (17,0),(18,0),(20,0),(24,0),(25,0),(26,0),(27,0),(28,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,0),(37,0),(38,0),(39,0),(40,0),(41,0),(42,0),(43,0),(44,0),(45,0),(46,0),(47,0),(48,0),(49,0),(50,0),(51,0),(52,0),(53,0),(54,0),(55,0),(56,0),(57,0),(58,0);
/*!40000 ALTER TABLE `category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL DEFAULT '',
  `iso_code_3` varchar(3) NOT NULL DEFAULT '',
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Афганистан','AF','AFG','',0,1),(2,'Албания','AL','ALB','',0,1),(3,'Алжир','DZ','DZA','',0,1),(4,'Восточное Самоа','AS','ASM','',0,1),(5,'Андорра','AD','AND','',0,1),(6,'Ангола','AO','AGO','',0,1),(7,'Ангилья','AI','AIA','',0,1),(8,'Антарктида','AQ','ATA','',0,1),(9,'Антигуа и Барбуда','AG','ATG','',0,1),(10,'Аргентина','AR','ARG','',0,1),(11,'Армения','AM','ARM','',0,1),(12,'Аруба','AW','ABW','',0,1),(13,'Австралия','AU','AUS','',0,1),(14,'Австрия','AT','AUT','',0,1),(15,'Азербайджан','AZ','AZE','',0,1),(16,'Багамские острова','BS','BHS','',0,1),(17,'Бахрейн','BH','BHR','',0,1),(18,'Бангладеш','BD','BGD','',0,1),(19,'Барбадос','BB','BRB','',0,1),(20,'Белоруссия (Беларусь)','BY','BLR','',0,1),(21,'Бельгия','BE','BEL','',0,1),(22,'Белиз','BZ','BLZ','',0,1),(23,'Бенин','BJ','BEN','',0,1),(24,'Бермудские острова','BM','BMU','',0,1),(25,'Бутан','BT','BTN','',0,1),(26,'Боливия','BO','BOL','',0,1),(27,'Босния и Герцеговина','BA','BIH','',0,1),(28,'Ботсвана','BW','BWA','',0,1),(29,'Остров Буве','BV','BVT','',0,1),(30,'Бразилия','BR','BRA','',0,1),(31,'Британская территория в Индийском океане','IO','IOT','',0,1),(32,'Бруней','BN','BRN','',0,1),(33,'Болгария','BG','BGR','',0,1),(34,'Буркина-Фасо','BF','BFA','',0,1),(35,'Бурунди','BI','BDI','',0,1),(36,'Камбоджа','KH','KHM','',0,1),(37,'Камерун','CM','CMR','',0,1),(38,'Канада','CA','CAN','',0,1),(39,'Кабо-Верде','CV','CPV','',0,1),(40,'Каймановы острова','KY','CYM','',0,1),(41,'Центрально-Африканская Республика','CF','CAF','',0,1),(42,'Чад','TD','TCD','',0,1),(43,'Чили','CL','CHL','',0,1),(44,'Китайская Народная Республика','CN','CHN','',0,1),(45,'Остров Рождества','CX','CXR','',0,1),(46,'Кокосовые острова','CC','CCK','',0,1),(47,'Колумбия','CO','COL','',0,1),(48,'Коморские острова','KM','COM','',0,1),(49,'Конго','CG','COG','',0,1),(50,'Острова Кука','CK','COK','',0,1),(51,'Коста-Рика','CR','CRI','',0,1),(52,'Кот д\'Ивуар','CI','CIV','',0,1),(53,'Хорватия','HR','HRV','',0,1),(54,'Куба','CU','CUB','',0,1),(55,'Кипр','CY','CYP','',0,1),(56,'Чехия','CZ','CZE','',0,1),(57,'Дания','DK','DNK','',0,1),(58,'Джибути','DJ','DJI','',0,1),(59,'Доминика','DM','DMA','',0,1),(60,'Доминиканская Республика','DO','DOM','',0,1),(61,'Восточный Тимор','TP','TMP','',0,1),(62,'Эквадор','EC','ECU','',0,1),(63,'Египет','EG','EGY','',0,1),(64,'Сальвадор','SV','SLV','',0,1),(65,'Экваториальная Гвинея','GQ','GNQ','',0,1),(66,'Эритрея','ER','ERI','',0,1),(67,'Эстония','EE','EST','',0,1),(68,'Эфиопия','ET','ETH','',0,1),(69,'Фолклендские (Мальвинские) острова','FK','FLK','',0,1),(70,'Фарерские острова','FO','FRO','',0,1),(71,'Фиджи','FJ','FJI','',0,1),(72,'Финляндия','FI','FIN','',0,1),(73,'Франция','FR','FRA','',0,1),(74,'Франция, Метрополия','FX','FXX','',0,1),(75,'Французская Гвиана','GF','GUF','',0,1),(76,'Французская Полинезия','PF','PYF','',0,1),(77,'Французские Южные территории','TF','ATF','',0,1),(78,'Габон','GA','GAB','',0,1),(79,'Гамбия','GM','GMB','',0,1),(80,'Грузия','GE','GEO','',0,1),(81,'Германия','DE','DEU','',0,1),(82,'Гана','GH','GHA','',0,1),(83,'Гибралтар','GI','GIB','',0,1),(84,'Греция','GR','GRC','',0,1),(85,'Гренландия','GL','GRL','',0,1),(86,'Гренада','GD','GRD','',0,1),(87,'Гваделупа','GP','GLP','',0,1),(88,'Гуам','GU','GUM','',0,1),(89,'Гватемала','GT','GTM','',0,1),(90,'Гвинея','GN','GIN','',0,1),(91,'Гвинея-Бисау','GW','GNB','',0,1),(92,'Гайана','GY','GUY','',0,1),(93,'Гаити','HT','HTI','',0,1),(94,'Херд и Макдональд, острова','HM','HMD','',0,1),(95,'Гондурас','HN','HND','',0,1),(96,'Гонконг','HK','HKG','',0,1),(97,'Венгрия','HU','HUN','',0,1),(98,'Исландия','IS','ISL','',0,1),(99,'Индия','IN','IND','',0,1),(100,'Индонезия','ID','IDN','',0,1),(101,'Иран','IR','IRN','',0,1),(102,'Ирак','IQ','IRQ','',0,1),(103,'Ирландия','IE','IRL','',0,1),(104,'Израиль','IL','ISR','',0,1),(105,'Италия','IT','ITA','',0,1),(106,'Ямайка','JM','JAM','',0,1),(107,'Япония','JP','JPN','',0,1),(108,'Иордания','JO','JOR','',0,1),(109,'Казахстан','KZ','KAZ','',0,1),(110,'Кения','KE','KEN','',0,1),(111,'Кирибати','KI','KIR','',0,1),(112,'Корейская Народно-Демократическая Республика','KP','PRK','',0,1),(113,'Республика Корея','KR','KOR','',0,1),(114,'Кувейт','KW','KWT','',0,1),(115,'Киргизия (Кыргызстан)','KG','KGZ','',0,1),(116,'Лаос','LA','LAO','',0,1),(117,'Латвия','LV','LVA','',0,1),(118,'Ливан','LB','LBN','',0,1),(119,'Лесото','LS','LSO','',0,1),(120,'Либерия','LR','LBR','',0,1),(121,'Ливия','LY','LBY','',0,1),(122,'Лихтенштейн','LI','LIE','',0,1),(123,'Литва','LT','LTU','',0,1),(124,'Люксембург','LU','LUX','',0,1),(125,'Макао','MO','MAC','',0,1),(126,'Македония','MK','MKD','',0,1),(127,'Мадагаскар','MG','MDG','',0,1),(128,'Малави','MW','MWI','',0,1),(129,'Малайзия','MY','MYS','',0,1),(130,'Мальдивы','MV','MDV','',0,1),(131,'Мали','ML','MLI','',0,1),(132,'Мальта','MT','MLT','',0,1),(133,'Маршалловы острова','MH','MHL','',0,1),(134,'Мартиника','MQ','MTQ','',0,1),(135,'Мавритания','MR','MRT','',0,1),(136,'Маврикий','MU','MUS','',0,1),(137,'Майотта','YT','MYT','',0,1),(138,'Мексика','MX','MEX','',0,1),(139,'Микронезия','FM','FSM','',0,1),(140,'Молдова','MD','MDA','',0,1),(141,'Монако','MC','MCO','',0,1),(142,'Монголия','MN','MNG','',0,1),(143,'Монтсеррат','MS','MSR','',0,1),(144,'Марокко','MA','MAR','',0,1),(145,'Мозамбик','MZ','MOZ','',0,1),(146,'Мьянма','MM','MMR','',0,1),(147,'Намибия','NA','NAM','',0,1),(148,'Науру','NR','NRU','',0,1),(149,'Непал','NP','NPL','',0,1),(150,'Нидерланды','NL','NLD','',0,1),(151,'Антильские (Нидерландские) острова','AN','ANT','',0,1),(152,'Новая Каледония','NC','NCL','',0,1),(153,'Новая Зеландия','NZ','NZL','',0,1),(154,'Никарагуа','NI','NIC','',0,1),(155,'Нигер','NE','NER','',0,1),(156,'Нигерия','NG','NGA','',0,1),(157,'Ниуэ','NU','NIU','',0,1),(158,'Остров Норфолк','NF','NFK','',0,1),(159,'Северные Марианские острова','MP','MNP','',0,1),(160,'Норвегия','NO','NOR','',0,1),(161,'Оман','OM','OMN','',0,1),(162,'Пакистан','PK','PAK','',0,1),(163,'Палау','PW','PLW','',0,1),(164,'Панама','PA','PAN','',0,1),(165,'Папуа - Новая Гвинея','PG','PNG','',0,1),(166,'Парагвай','PY','PRY','',0,1),(167,'Перу','PE','PER','',0,1),(168,'Филиппины','PH','PHL','',0,1),(169,'Острова Питкэрн','PN','PCN','',0,1),(170,'Польша','PL','POL','',0,1),(171,'Португалия','PT','PRT','',0,1),(172,'Пуэрто-Рико','PR','PRI','',0,1),(173,'Катар','QA','QAT','',0,1),(174,'Реюньон','RE','REU','',0,1),(175,'Румыния','RO','ROM','',0,1),(176,'Российская Федерация','RU','RUS','',0,1),(177,'Руанда','RW','RWA','',0,1),(178,'Сент-Китс и Невис','KN','KNA','',0,1),(179,'Сент-Люсия','LC','LCA','',0,1),(180,'Сент-Винсент и Гренадины','VC','VCT','',0,1),(181,'Западное Самоа','WS','WSM','',0,1),(182,'Сан-Марино','SM','SMR','',0,1),(183,'Сан-Томе и Принсипи','ST','STP','',0,1),(184,'Саудовская Аравия','SA','SAU','',0,1),(185,'Сенегал','SN','SEN','',0,1),(186,'Сейшельские острова','SC','SYC','',0,1),(187,'Сьерра-Леоне','SL','SLE','',0,1),(188,'Сингапур','SG','SGP','',0,1),(189,'Словакия','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Словения','SI','SVN','',0,1),(191,'Соломоновы острова','SB','SLB','',0,1),(192,'Сомали','SO','SOM','',0,1),(193,'Южно-Африканская Республика','ZA','ZAF','',0,1),(194,'Южная Джорджия и Южные Сандвичевы острова','GS','SGS','',0,1),(195,'Испания','ES','ESP','',0,1),(196,'Шри-Ланка','LK','LKA','',0,1),(197,'Остров Святой Елены','SH','SHN','',0,1),(198,'Сен-Пьер и Микелон','PM','SPM','',0,1),(199,'Судан','SD','SDN','',0,1),(200,'Суринам','SR','SUR','',0,1),(201,'Шпицберген и Ян Майен','SJ','SJM','',0,1),(202,'Свазиленд','SZ','SWZ','',0,1),(203,'Швеция','SE','SWE','',0,1),(204,'Швейцария','CH','CHE','',0,1),(205,'Сирия','SY','SYR','',0,1),(206,'Тайвань (провинция Китая)','TW','TWN','',0,1),(207,'Таджикистан','TJ','TJK','',0,1),(208,'Танзания','TZ','TZA','',0,1),(209,'Таиланд','TH','THA','',0,1),(210,'Того','TG','TGO','',0,1),(211,'Токелау','TK','TKL','',0,1),(212,'Тонга','TO','TON','',0,1),(213,'Тринидад и Тобаго','TT','TTO','',0,1),(214,'Тунис','TN','TUN','',0,1),(215,'Турция','TR','TUR','',0,1),(216,'Туркменистан','TM','TKM','',0,1),(217,'Острова Теркс и Кайкос','TC','TCA','',0,1),(218,'Тувалу','TV','TUV','',0,1),(219,'Уганда','UG','UGA','',0,1),(220,'Украина','UA','UKR','',0,1),(221,'Объединенные Арабские Эмираты','AE','ARE','',0,1),(222,'Великобритания','GB','GBR','',1,1),(223,'Соединенные Штаты Америки','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'Мелкие отдаленные острова США','UM','UMI','',0,1),(225,'Уругвай','UY','URY','',0,1),(226,'Узбекистан','UZ','UZB','',0,1),(227,'Вануату','VU','VUT','',0,1),(228,'Ватикан','VA','VAT','',0,1),(229,'Венесуэла','VE','VEN','',0,1),(230,'Вьетнам','VN','VNM','',0,1),(231,'Виргинские острова (Британские)','VG','VGB','',0,1),(232,'Виргинские острова (США)','VI','VIR','',0,1),(233,'Уоллис и Футуна','WF','WLF','',0,1),(234,'Западная Сахара','EH','ESH','',0,1),(235,'Йемен','YE','YEM','',0,1),(236,'Сербия и Черногория','SC','CS','',0,1),(237,'Заир','ZR','ZAR','',0,1),(238,'Замбия','ZM','ZMB','',0,1),(239,'Зимбабве','ZW','ZWE','',0,1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES (4,'-10% скидка','2222','P','10.0000',0,0,'0.0000','2011-01-01','2012-01-01',10,'10',1,'2009-01-27 13:55:03'),(5,'Бесплатная доставка','3333','P','0.0000',0,1,'100.0000','2009-03-01','2009-08-31',10,'10',1,'2009-03-14 21:13:53'),(6,'-10.00 скидка','1111','F','10.0000',0,0,'10.0000','1970-11-01','2020-11-01',100000,'10000',1,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_history`
--

DROP TABLE IF EXISTS `coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_history`
--

LOCK TABLES `coupon_history` WRITE;
/*!40000 ALTER TABLE `coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_product`
--

DROP TABLE IF EXISTS `coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_product`
--

LOCK TABLES `coupon_product` WRITE;
/*!40000 ALTER TABLE `coupon_product` DISABLE KEYS */;
INSERT INTO `coupon_product` VALUES (4,7,47),(3,7,30);
/*!40000 ALTER TABLE `coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL DEFAULT '',
  `code` varchar(3) NOT NULL DEFAULT '',
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'Рубль','RUB','',' р.','2',1.00000000,1,'2010-06-28 08:52:14'),(2,'US Dollar','USD','$','','2',1.52600002,1,'2010-04-06 22:00:54'),(3,'Euro','EUR','','€','2',1.13999999,1,'2010-04-06 22:00:54');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(96) NOT NULL DEFAULT '',
  `telephone` varchar(32) NOT NULL DEFAULT '',
  `fax` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group`
--

DROP TABLE IF EXISTS `customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_group`
--

LOCK TABLES `customer_group` WRITE;
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;
INSERT INTO `customer_group` VALUES (8,'По умолчанию'),(6,'Оптовики');
/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_ip`
--

DROP TABLE IF EXISTS `customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_ip`
--

LOCK TABLES `customer_ip` WRITE;
/*!40000 ALTER TABLE `customer_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_reward`
--

DROP TABLE IF EXISTS `customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_reward`
--

LOCK TABLES `customer_reward` WRITE;
/*!40000 ALTER TABLE `customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_transaction`
--

DROP TABLE IF EXISTS `customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_transaction`
--

LOCK TABLES `customer_transaction` WRITE;
/*!40000 ALTER TABLE `customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download`
--

DROP TABLE IF EXISTS `download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL DEFAULT '',
  `mask` varchar(128) NOT NULL DEFAULT '',
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download`
--

LOCK TABLES `download` WRITE;
/*!40000 ALTER TABLE `download` DISABLE KEYS */;
/*!40000 ALTER TABLE `download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_description`
--

DROP TABLE IF EXISTS `download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_description`
--

LOCK TABLES `download_description` WRITE;
/*!40000 ALTER TABLE `download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extension`
--

DROP TABLE IF EXISTS `extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=428 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extension`
--

LOCK TABLES `extension` WRITE;
/*!40000 ALTER TABLE `extension` DISABLE KEYS */;
INSERT INTO `extension` VALUES (23,'payment','cod'),(22,'total','shipping'),(57,'total','sub_total'),(58,'total','tax'),(59,'total','total'),(410,'module','banner'),(426,'module','carousel'),(390,'total','credit'),(387,'shipping','flat'),(349,'total','handling'),(350,'total','low_order_fee'),(389,'total','coupon'),(413,'module','category'),(411,'module','affiliate'),(408,'module','account'),(393,'total','reward'),(398,'total','voucher'),(407,'payment','free_checkout'),(427,'module','featured'),(419,'module','slideshow');
/*!40000 ALTER TABLE `extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_zone`
--

DROP TABLE IF EXISTS `geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_zone`
--

LOCK TABLES `geo_zone` WRITE;
/*!40000 ALTER TABLE `geo_zone` DISABLE KEYS */;
INSERT INTO `geo_zone` VALUES (3,'НДС','Облагаемые НДС','2010-02-26 22:33:24','2009-01-06 23:26:25');
/*!40000 ALTER TABLE `geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES (3,3,1),(4,1,1),(5,4,1),(6,2,1);
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information_description`
--

DROP TABLE IF EXISTS `information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information_description`
--

LOCK TABLES `information_description` WRITE;
/*!40000 ALTER TABLE `information_description` DISABLE KEYS */;
INSERT INTO `information_description` VALUES (4,1,'О нас','&lt;p&gt;\r\n	О нас&lt;/p&gt;\r\n'),(5,1,'Условия соглашения','&lt;p&gt;\r\n	Условия соглашения&lt;/p&gt;\r\n'),(3,1,'Политика Безопасности','&lt;p&gt;\r\n	Политика Безопасности&lt;/p&gt;\r\n'),(6,1,'Информация о доставке','&lt;p&gt;\r\n	Информация о доставке&lt;/p&gt;\r\n');
/*!40000 ALTER TABLE `information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information_to_layout`
--

DROP TABLE IF EXISTS `information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information_to_layout`
--

LOCK TABLES `information_to_layout` WRITE;
/*!40000 ALTER TABLE `information_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information_to_store`
--

DROP TABLE IF EXISTS `information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information_to_store`
--

LOCK TABLES `information_to_store` WRITE;
/*!40000 ALTER TABLE `information_to_store` DISABLE KEYS */;
INSERT INTO `information_to_store` VALUES (3,0),(4,0),(5,0),(6,0);
/*!40000 ALTER TABLE `information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL DEFAULT '',
  `filename` varchar(64) NOT NULL DEFAULT '',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'Russian','ru','ru_RU.UTF-8,ru_RU,russian','ru.png','russian','russian',1,1),(2,'English','en','en_US.UTF-8,en_US,en-gb,english','gb.png','english','english',2,0);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout`
--

DROP TABLE IF EXISTS `layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout`
--

LOCK TABLES `layout` WRITE;
/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information');
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout_route`
--

DROP TABLE IF EXISTS `layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout_route`
--

LOCK TABLES `layout_route` WRITE;
/*!40000 ALTER TABLE `layout_route` DISABLE KEYS */;
INSERT INTO `layout_route` VALUES (30,6,0,'account'),(17,10,0,'affiliate/'),(29,3,0,'product/category'),(27,1,3,'common/home'),(26,1,0,'common/home'),(20,2,0,'product/product'),(24,11,0,'information/information'),(22,5,0,'product/manufacturer'),(23,7,0,'checkout/'),(31,8,0,'information/contact');
/*!40000 ALTER TABLE `layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `length_class`
--

DROP TABLE IF EXISTS `length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `length_class`
--

LOCK TABLES `length_class` WRITE;
/*!40000 ALTER TABLE `length_class` DISABLE KEYS */;
INSERT INTO `length_class` VALUES (1,'1.00000000'),(2,'10.00000000');
/*!40000 ALTER TABLE `length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `length_class_description`
--

DROP TABLE IF EXISTS `length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `length_class_description`
--

LOCK TABLES `length_class_description` WRITE;
/*!40000 ALTER TABLE `length_class_description` DISABLE KEYS */;
INSERT INTO `length_class_description` VALUES (1,1,'Сантиметр','см'),(2,1,'Миллиметр','мм');
/*!40000 ALTER TABLE `length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (5,'HTC','data/htc_logo.jpg',0),(6,'Palm','data/palm_logo.jpg',0),(7,'Hewlett-Packard','data/hp_logo.jpg',0),(8,'Apple','data/apple_logo.jpg',0),(9,'Canon','data/canon_logo.jpg',0),(10,'Sony','data/sony_logo.jpg',0);
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer_to_store`
--

DROP TABLE IF EXISTS `manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer_to_store`
--

LOCK TABLES `manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `manufacturer_to_store` VALUES (5,0),(6,0),(7,0),(8,0),(9,0),(10,0);
/*!40000 ALTER TABLE `manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address`
--

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate`
--

DROP TABLE IF EXISTS `oc_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate`
--

LOCK TABLES `oc_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_transaction`
--

DROP TABLE IF EXISTS `oc_affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_transaction`
--

LOCK TABLES `oc_affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute`
--

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` VALUES (120,16,9),(112,16,1),(114,16,3),(113,16,2),(132,16,21),(127,16,16),(118,16,7),(130,16,19),(138,16,27),(134,16,23),(139,16,28),(117,16,6),(121,16,10),(135,16,24),(136,16,25),(124,16,13),(123,16,12),(122,16,11),(133,16,22),(129,16,18),(125,16,14),(137,16,26),(128,16,17),(126,16,15),(119,16,8),(131,16,20),(116,16,5),(115,16,4);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_description`
--

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` VALUES (112,2,'Тип'),(113,2,'Диагональ экрана, дюймов'),(114,2,'Тип матрицы'),(115,2,'Тип покрытия экрана'),(116,2,'Разрешение экрана'),(117,2,'Тип процессора'),(118,2,'Частота, GHz'),(119,2,'Предустановленная ОС'),(120,2,'Масса, кг'),(121,2,'Габариты, мм'),(122,2,'Чипсет'),(123,2,'Объем оперативной памяти (стандарт/максимум), MB'),(124,2,'Жесткий диск, GB'),(125,2,'Оптический привод'),(126,2,'Графический адаптер, объем памяти'),(127,2,'Внешние порты'),(128,2,'Слот расширения'),(129,2,'Кардридер'),(130,2,'WEB-камера'),(131,2,'Сетевой адаптер'),(132,2,'Модем 56К'),(133,2,'Wi-Fi'),(134,2,'WiMAX'),(135,2,'Bluetooth'),(136,2,'3G'),(137,2,'Емкость батареи, мА.ч'),(138,2,'Напряжение батареи, В'),(139,2,'Графический адаптер');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group`
--

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (7,5),(8,6),(16,14),(10,8),(11,9),(12,10),(13,11),(14,12),(15,13);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group_description`
--

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (8,2,'Процесор'),(7,2,'Память'),(16,2,'Общие характеристики'),(10,2,'Экран'),(11,2,'Оперативная память'),(12,2,'Устройства хранения данных'),(13,2,'Связь'),(14,2,'Питание'),(15,2,'Габариты и вес');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner`
--

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (6,'HP Products',1),(7,'Samsung Tab',1),(8,'Manufacturers',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image`
--

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (54,7,'index.php?route=product/product&amp;path=57&amp;product_id=49','data/demo/samsung_banner.jpg'),(77,6,'index.php?route=product/manufacturer/info&amp;manufacturer_id=7','data/demo/hp_banner.jpg'),(75,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=5','data/demo/htc_logo.jpg'),(73,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=8','data/demo/apple_logo.jpg'),(74,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=9','data/demo/canon_logo.jpg'),(71,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=10','data/demo/sony_logo.jpg'),(72,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=6','data/demo/palm_logo.jpg'),(76,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=7','data/demo/hp_logo.jpg');
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image_description`
--

LOCK TABLES `oc_banner_image_description` WRITE;
/*!40000 ALTER TABLE `oc_banner_image_description` DISABLE KEYS */;
INSERT INTO `oc_banner_image_description` VALUES (54,2,7,'Samsung Tab 10.1'),(77,2,6,'HP Banner'),(75,2,8,'HTC'),(74,2,8,'Canon'),(73,2,8,'Apple'),(72,2,8,'Palm'),(71,2,8,'Sony'),(76,2,8,'Hewlett-Packard');
/*!40000 ALTER TABLE `oc_banner_image_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category`
--

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (18,'data/demo/hp_2.jpg',0,1,1,0,1,'2009-01-05 21:49:15','2013-04-01 23:31:56'),(70,'',0,1,1,0,1,'2013-03-24 15:22:48','2013-03-26 01:01:51'),(68,'',18,1,3,1,1,'2013-03-24 15:01:04','2013-04-02 21:58:38'),(33,'',0,1,1,6,1,'2009-02-03 14:17:55','2013-04-02 13:15:32'),(34,'data/demo/ipod_touch_4.jpg',0,1,4,7,1,'2009-02-03 14:18:11','2013-03-24 14:54:06'),(46,'',18,0,1,0,1,'2010-09-24 18:29:31','2013-04-02 14:13:26'),(67,'',18,0,1,2,0,'2013-03-24 14:57:31','2013-03-25 04:16:57'),(25,'',18,1,2,3,1,'2009-01-31 01:04:25','2013-03-24 14:55:19'),(45,'',18,0,2,3,0,'2010-09-24 18:29:16','2013-03-25 04:16:45'),(17,'',18,1,1,4,1,'2009-01-03 21:08:57','2013-03-26 00:13:24'),(38,'',34,0,0,0,1,'2010-09-18 14:03:51','2010-09-18 14:03:51'),(42,'',34,0,0,0,1,'2010-09-18 14:06:34','2010-11-07 20:31:04'),(69,'',68,0,1,0,1,'2013-03-24 15:22:12','2013-03-24 15:22:12'),(71,'',68,0,1,0,1,'2013-03-24 15:25:13','2013-03-24 15:40:25'),(72,'',68,0,1,0,1,'2013-03-24 15:26:27','2013-03-24 15:40:32'),(73,'',68,0,1,0,1,'2013-03-24 15:28:11','2013-03-24 15:28:11'),(74,'',68,0,1,0,1,'2013-03-24 15:28:51','2013-03-24 15:28:51'),(75,'',68,0,1,0,1,'2013-03-24 15:31:00','2013-03-24 15:31:00'),(76,'data/demo/apple_cinema_30.jpg',68,0,1,0,1,'2013-03-24 15:32:14','2013-03-24 15:58:59'),(77,'',68,0,1,0,1,'2013-03-24 15:42:44','2013-03-24 15:42:44'),(78,'',68,0,1,0,1,'2013-03-24 15:44:30','2013-03-24 15:44:30'),(79,'',68,0,1,0,1,'2013-03-24 15:45:46','2013-03-24 15:45:46'),(80,'',68,0,1,0,1,'2013-03-24 15:50:46','2013-03-24 15:50:46'),(81,'',68,0,1,0,1,'2013-03-24 15:52:29','2013-03-24 15:52:29'),(82,'',68,0,1,0,1,'2013-03-24 15:53:51','2013-03-24 15:53:51'),(83,'',70,0,1,0,1,'2013-03-26 01:02:48','2013-03-26 01:16:23'),(84,'',70,0,1,0,1,'2013-03-26 01:04:08','2013-03-26 01:04:08'),(85,'',70,0,1,0,1,'2013-03-26 01:05:53','2013-03-26 01:05:53'),(86,'',70,0,1,0,1,'2013-03-26 01:13:47','2013-03-26 01:13:47'),(87,'',70,0,1,0,1,'2013-03-26 01:14:14','2013-03-26 01:14:14'),(88,'',70,0,1,0,1,'2013-03-26 01:14:42','2013-03-26 01:14:42'),(89,'',70,0,1,0,1,'2013-03-26 01:17:09','2013-03-26 01:17:09'),(90,'',83,0,1,0,1,'2013-03-26 01:40:46','2013-03-26 01:40:46'),(91,'',83,0,1,0,1,'2013-04-02 12:16:52','2013-04-02 12:16:52'),(92,'',83,0,1,0,1,'2013-04-02 12:24:28','2013-04-02 12:24:28'),(93,'',83,0,1,0,1,'2013-04-02 12:25:39','2013-04-02 12:25:39'),(94,'',83,0,1,0,1,'2013-04-02 12:26:07','2013-04-02 12:26:07'),(95,'',83,0,1,0,1,'2013-04-02 12:46:53','2013-04-02 12:46:53'),(96,'',83,0,1,0,1,'2013-04-02 12:47:25','2013-04-02 12:47:25'),(97,'',83,0,1,0,1,'2013-04-02 12:48:00','2013-04-02 12:48:00'),(98,'',83,0,1,0,1,'2013-04-02 12:50:04','2013-04-02 12:50:04'),(99,'',33,0,1,0,1,'2013-04-02 13:52:39','2013-04-02 13:52:39'),(100,'',33,0,1,0,1,'2013-04-02 13:53:06','2013-04-02 13:53:06'),(101,'',33,0,1,0,1,'2013-04-02 13:54:09','2013-04-02 13:54:09'),(102,'',33,0,1,0,1,'2013-04-02 13:59:44','2013-04-02 14:03:10'),(103,'',33,0,1,0,1,'2013-04-02 14:00:10','2013-04-02 14:00:10'),(104,'',33,0,1,0,1,'2013-04-02 14:01:17','2013-04-02 14:01:17'),(105,'',33,0,1,0,1,'2013-04-02 14:03:58','2013-04-02 14:03:58'),(106,'',33,0,1,0,1,'2013-04-02 14:04:22','2013-04-02 14:04:22');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_description`
--

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (106,2,'Музыкальные инструменты','','',''),(104,2,'Аудио техника и аксессуары','','',''),(103,2,'Видеокамеры','','',''),(102,2,'Крепления и аксессуары для ТВ','','',''),(105,2,'Проекторы и все для презентаций','','',''),(101,2,'Телевизоры и плееры','','',''),(100,2,'Профессиональное фото','','',''),(99,2,'Любительское фото','','',''),(98,2,'Радиотелефоны DECT','','',''),(97,2,'Карты памяти','','',''),(96,2,'Гарнитуры Bluetooth','','',''),(95,2,'Смартфоны','','',''),(94,2,'Факсы','','',''),(93,2,'Проводные телефоны','','',''),(92,2,'Гарнитуры проводные','','',''),(91,2,'Коммуникаторы','','',''),(90,2,'Мобильные телефоны','','',''),(89,2,'GPS устройства','','',''),(88,2,'Электронные книги','','',''),(87,2,'MP3 и MP4 плееры','','',''),(70,2,'Телефоны  и плееры','','',''),(68,2,'Комплектующие','','',''),(33,2,'Фото, видео,  аудио и ТВ','','',''),(34,2,'ТВ и мультимедиа','&lt;p&gt;Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\n','',''),(86,2,'Интернет-планшеты','','',''),(85,2,'Игровые приставки','','',''),(84,2,'Аксессуары к телефонам','','',''),(83,2,'Телефоны и смартфоны','','',''),(82,2,'Охлаждение и моддинг','','',''),(81,2,'Блоки питания','','',''),(80,2,'Корпуса','','',''),(79,2,'Оперативная память','','',''),(78,2,'Сетевые карты','','',''),(77,2,'Материнские платы','','',''),(76,2,'TV-тюнеры','','',''),(75,2,'Кардридеры','','',''),(74,2,'Звуковые платы','','',''),(73,2,'Видеокарты','','',''),(72,2,'Оптические приводы','','',''),(71,2,'Жесткие диски','','',''),(69,2,'Процессоры','','',''),(46,2,'Ноутбуки','','',''),(67,2,'Моноблоки','','',''),(25,2,'Компьютеры','','',''),(45,2,'Планшеты','','',''),(17,2,'Программное обеспечение','','',''),(38,2,'test 4','','',''),(42,2,'test 9','','',''),(18,2,'Ноутбуки, ПК и  оргтехника','&lt;p&gt;Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\n','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_filter`
--

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (18,18,0),(46,18,0),(46,46,1),(81,18,0),(68,18,0),(67,18,0),(67,67,1),(25,18,0),(25,25,1),(45,18,0),(45,45,1),(17,18,0),(17,17,1),(70,70,0),(83,70,0),(83,83,1),(90,70,0),(90,83,1),(90,90,2),(84,70,0),(84,84,1),(85,70,0),(85,85,1),(86,70,0),(86,86,1),(87,70,0),(87,87,1),(88,70,0),(88,88,1),(89,70,0),(89,89,1),(68,68,1),(69,68,1),(69,69,2),(71,68,1),(71,71,2),(72,68,1),(72,72,2),(73,68,1),(73,73,2),(74,68,1),(74,74,2),(75,68,1),(75,75,2),(76,68,1),(76,76,2),(77,68,1),(77,77,2),(78,68,1),(78,78,2),(79,68,1),(79,79,2),(80,68,1),(80,80,2),(81,68,1),(81,81,2),(82,68,1),(82,82,2),(33,33,0),(34,34,0),(38,34,0),(38,38,1),(42,34,0),(42,42,1),(91,70,0),(91,83,1),(91,91,2),(92,70,0),(92,83,1),(92,92,2),(93,70,0),(93,83,1),(93,93,2),(94,70,0),(94,83,1),(94,94,2),(95,70,0),(95,83,1),(95,95,2),(96,70,0),(96,83,1),(96,96,2),(97,70,0),(97,83,1),(97,97,2),(98,70,0),(98,83,1),(98,98,2),(99,33,0),(99,99,1),(100,33,0),(100,100,1),(101,33,0),(101,101,1),(102,33,0),(102,102,1),(103,33,0),(103,103,1),(104,33,0),(104,104,1),(105,33,0),(105,105,1),(106,33,0),(106,106,1),(80,18,0),(79,18,0),(78,18,0),(77,18,0),(76,18,0),(75,18,0),(74,18,0),(73,18,0),(72,18,0),(71,18,0),(69,18,0),(82,18,0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_layout`
--

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_store`
--

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (17,0),(18,0),(25,0),(33,0),(34,0),(38,0),(42,0),(45,0),(46,0),(67,0),(68,0),(69,0),(70,0),(71,0),(72,0),(73,0),(74,0),(75,0),(76,0),(77,0),(78,0),(79,0),(80,0),(81,0),(82,0),(83,0),(84,0),(85,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(93,0),(94,0),(95,0),(96,0),(97,0),(98,0),(99,0),(100,0),(101,0),(102,0),(103,0),(104,0),(105,0),(106,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_country`
--

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (1,'Afghanistan','AF','AFG','',0,1),(2,'Albania','AL','ALB','',0,1),(3,'Algeria','DZ','DZA','',0,1),(4,'American Samoa','AS','ASM','',0,1),(5,'Andorra','AD','AND','',0,1),(6,'Angola','AO','AGO','',0,1),(7,'Anguilla','AI','AIA','',0,1),(8,'Antarctica','AQ','ATA','',0,1),(9,'Antigua and Barbuda','AG','ATG','',0,1),(10,'Argentina','AR','ARG','',0,1),(11,'Armenia','AM','ARM','',0,1),(12,'Aruba','AW','ABW','',0,1),(13,'Australia','AU','AUS','',0,1),(14,'Austria','AT','AUT','',0,1),(15,'Azerbaijan','AZ','AZE','',0,1),(16,'Bahamas','BS','BHS','',0,1),(17,'Bahrain','BH','BHR','',0,1),(18,'Bangladesh','BD','BGD','',0,1),(19,'Barbados','BB','BRB','',0,1),(20,'Belarus','BY','BLR','',0,1),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(22,'Belize','BZ','BLZ','',0,1),(23,'Benin','BJ','BEN','',0,1),(24,'Bermuda','BM','BMU','',0,1),(25,'Bhutan','BT','BTN','',0,1),(26,'Bolivia','BO','BOL','',0,1),(27,'Bosnia and Herzegovina','BA','BIH','',0,1),(28,'Botswana','BW','BWA','',0,1),(29,'Bouvet Island','BV','BVT','',0,1),(30,'Brazil','BR','BRA','',0,1),(31,'British Indian Ocean Territory','IO','IOT','',0,1),(32,'Brunei Darussalam','BN','BRN','',0,1),(33,'Bulgaria','BG','BGR','',0,1),(34,'Burkina Faso','BF','BFA','',0,1),(35,'Burundi','BI','BDI','',0,1),(36,'Cambodia','KH','KHM','',0,1),(37,'Cameroon','CM','CMR','',0,1),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,1),(40,'Cayman Islands','KY','CYM','',0,1),(41,'Central African Republic','CF','CAF','',0,1),(42,'Chad','TD','TCD','',0,1),(43,'Chile','CL','CHL','',0,1),(44,'China','CN','CHN','',0,1),(45,'Christmas Island','CX','CXR','',0,1),(46,'Cocos (Keeling) Islands','CC','CCK','',0,1),(47,'Colombia','CO','COL','',0,1),(48,'Comoros','KM','COM','',0,1),(49,'Congo','CG','COG','',0,1),(50,'Cook Islands','CK','COK','',0,1),(51,'Costa Rica','CR','CRI','',0,1),(52,'Cote D\'Ivoire','CI','CIV','',0,1),(53,'Croatia','HR','HRV','',0,1),(54,'Cuba','CU','CUB','',0,1),(55,'Cyprus','CY','CYP','',0,1),(56,'Czech Republic','CZ','CZE','',0,1),(57,'Denmark','DK','DNK','',0,1),(58,'Djibouti','DJ','DJI','',0,1),(59,'Dominica','DM','DMA','',0,1),(60,'Dominican Republic','DO','DOM','',0,1),(61,'East Timor','TL','TLS','',0,1),(62,'Ecuador','EC','ECU','',0,1),(63,'Egypt','EG','EGY','',0,1),(64,'El Salvador','SV','SLV','',0,1),(65,'Equatorial Guinea','GQ','GNQ','',0,1),(66,'Eritrea','ER','ERI','',0,1),(67,'Estonia','EE','EST','',0,1),(68,'Ethiopia','ET','ETH','',0,1),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1),(70,'Faroe Islands','FO','FRO','',0,1),(71,'Fiji','FJ','FJI','',0,1),(72,'Finland','FI','FIN','',0,1),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(75,'French Guiana','GF','GUF','',0,1),(76,'French Polynesia','PF','PYF','',0,1),(77,'French Southern Territories','TF','ATF','',0,1),(78,'Gabon','GA','GAB','',0,1),(79,'Gambia','GM','GMB','',0,1),(80,'Georgia','GE','GEO','',0,1),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(82,'Ghana','GH','GHA','',0,1),(83,'Gibraltar','GI','GIB','',0,1),(84,'Greece','GR','GRC','',0,1),(85,'Greenland','GL','GRL','',0,1),(86,'Grenada','GD','GRD','',0,1),(87,'Guadeloupe','GP','GLP','',0,1),(88,'Guam','GU','GUM','',0,1),(89,'Guatemala','GT','GTM','',0,1),(90,'Guinea','GN','GIN','',0,1),(91,'Guinea-Bissau','GW','GNB','',0,1),(92,'Guyana','GY','GUY','',0,1),(93,'Haiti','HT','HTI','',0,1),(94,'Heard and Mc Donald Islands','HM','HMD','',0,1),(95,'Honduras','HN','HND','',0,1),(96,'Hong Kong','HK','HKG','',0,1),(97,'Hungary','HU','HUN','',0,1),(98,'Iceland','IS','ISL','',0,1),(99,'India','IN','IND','',0,1),(100,'Indonesia','ID','IDN','',0,1),(101,'Iran (Islamic Republic of)','IR','IRN','',0,1),(102,'Iraq','IQ','IRQ','',0,1),(103,'Ireland','IE','IRL','',0,1),(104,'Israel','IL','ISR','',0,1),(105,'Italy','IT','ITA','',0,1),(106,'Jamaica','JM','JAM','',0,1),(107,'Japan','JP','JPN','',0,1),(108,'Jordan','JO','JOR','',0,1),(109,'Kazakhstan','KZ','KAZ','',0,1),(110,'Kenya','KE','KEN','',0,1),(111,'Kiribati','KI','KIR','',0,1),(112,'North Korea','KP','PRK','',0,1),(113,'Korea, Republic of','KR','KOR','',0,1),(114,'Kuwait','KW','KWT','',0,1),(115,'Kyrgyzstan','KG','KGZ','',0,1),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1),(117,'Latvia','LV','LVA','',0,1),(118,'Lebanon','LB','LBN','',0,1),(119,'Lesotho','LS','LSO','',0,1),(120,'Liberia','LR','LBR','',0,1),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1),(122,'Liechtenstein','LI','LIE','',0,1),(123,'Lithuania','LT','LTU','',0,1),(124,'Luxembourg','LU','LUX','',0,1),(125,'Macau','MO','MAC','',0,1),(126,'FYROM','MK','MKD','',0,1),(127,'Madagascar','MG','MDG','',0,1),(128,'Malawi','MW','MWI','',0,1),(129,'Malaysia','MY','MYS','',0,1),(130,'Maldives','MV','MDV','',0,1),(131,'Mali','ML','MLI','',0,1),(132,'Malta','MT','MLT','',0,1),(133,'Marshall Islands','MH','MHL','',0,1),(134,'Martinique','MQ','MTQ','',0,1),(135,'Mauritania','MR','MRT','',0,1),(136,'Mauritius','MU','MUS','',0,1),(137,'Mayotte','YT','MYT','',0,1),(138,'Mexico','MX','MEX','',0,1),(139,'Micronesia, Federated States of','FM','FSM','',0,1),(140,'Moldova, Republic of','MD','MDA','',0,1),(141,'Monaco','MC','MCO','',0,1),(142,'Mongolia','MN','MNG','',0,1),(143,'Montserrat','MS','MSR','',0,1),(144,'Morocco','MA','MAR','',0,1),(145,'Mozambique','MZ','MOZ','',0,1),(146,'Myanmar','MM','MMR','',0,1),(147,'Namibia','NA','NAM','',0,1),(148,'Nauru','NR','NRU','',0,1),(149,'Nepal','NP','NPL','',0,1),(150,'Netherlands','NL','NLD','',0,1),(151,'Netherlands Antilles','AN','ANT','',0,1),(152,'New Caledonia','NC','NCL','',0,1),(153,'New Zealand','NZ','NZL','',0,1),(154,'Nicaragua','NI','NIC','',0,1),(155,'Niger','NE','NER','',0,1),(156,'Nigeria','NG','NGA','',0,1),(157,'Niue','NU','NIU','',0,1),(158,'Norfolk Island','NF','NFK','',0,1),(159,'Northern Mariana Islands','MP','MNP','',0,1),(160,'Norway','NO','NOR','',0,1),(161,'Oman','OM','OMN','',0,1),(162,'Pakistan','PK','PAK','',0,1),(163,'Palau','PW','PLW','',0,1),(164,'Panama','PA','PAN','',0,1),(165,'Papua New Guinea','PG','PNG','',0,1),(166,'Paraguay','PY','PRY','',0,1),(167,'Peru','PE','PER','',0,1),(168,'Philippines','PH','PHL','',0,1),(169,'Pitcairn','PN','PCN','',0,1),(170,'Poland','PL','POL','',0,1),(171,'Portugal','PT','PRT','',0,1),(172,'Puerto Rico','PR','PRI','',0,1),(173,'Qatar','QA','QAT','',0,1),(174,'Reunion','RE','REU','',0,1),(175,'Romania','RO','ROM','',0,1),(176,'Russian Federation','RU','RUS','',0,1),(177,'Rwanda','RW','RWA','',0,1),(178,'Saint Kitts and Nevis','KN','KNA','',0,1),(179,'Saint Lucia','LC','LCA','',0,1),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1),(181,'Samoa','WS','WSM','',0,1),(182,'San Marino','SM','SMR','',0,1),(183,'Sao Tome and Principe','ST','STP','',0,1),(184,'Saudi Arabia','SA','SAU','',0,1),(185,'Senegal','SN','SEN','',0,1),(186,'Seychelles','SC','SYC','',0,1),(187,'Sierra Leone','SL','SLE','',0,1),(188,'Singapore','SG','SGP','',0,1),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Slovenia','SI','SVN','',0,1),(191,'Solomon Islands','SB','SLB','',0,1),(192,'Somalia','SO','SOM','',0,1),(193,'South Africa','ZA','ZAF','',0,1),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1),(195,'Spain','ES','ESP','',0,1),(196,'Sri Lanka','LK','LKA','',0,1),(197,'St. Helena','SH','SHN','',0,1),(198,'St. Pierre and Miquelon','PM','SPM','',0,1),(199,'Sudan','SD','SDN','',0,1),(200,'Suriname','SR','SUR','',0,1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1),(202,'Swaziland','SZ','SWZ','',0,1),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(204,'Switzerland','CH','CHE','',0,1),(205,'Syrian Arab Republic','SY','SYR','',0,1),(206,'Taiwan','TW','TWN','',0,1),(207,'Tajikistan','TJ','TJK','',0,1),(208,'Tanzania, United Republic of','TZ','TZA','',0,1),(209,'Thailand','TH','THA','',0,1),(210,'Togo','TG','TGO','',0,1),(211,'Tokelau','TK','TKL','',0,1),(212,'Tonga','TO','TON','',0,1),(213,'Trinidad and Tobago','TT','TTO','',0,1),(214,'Tunisia','TN','TUN','',0,1),(215,'Turkey','TR','TUR','',0,1),(216,'Turkmenistan','TM','TKM','',0,1),(217,'Turks and Caicos Islands','TC','TCA','',0,1),(218,'Tuvalu','TV','TUV','',0,1),(219,'Uganda','UG','UGA','',0,1),(220,'Ukraine','UA','UKR','',0,1),(221,'United Arab Emirates','AE','ARE','',0,1),(222,'United Kingdom','GB','GBR','',1,1),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,1),(225,'Uruguay','UY','URY','',0,1),(226,'Uzbekistan','UZ','UZB','',0,1),(227,'Vanuatu','VU','VUT','',0,1),(228,'Vatican City State (Holy See)','VA','VAT','',0,1),(229,'Venezuela','VE','VEN','',0,1),(230,'Viet Nam','VN','VNM','',0,1),(231,'Virgin Islands (British)','VG','VGB','',0,1),(232,'Virgin Islands (U.S.)','VI','VIR','',0,1),(233,'Wallis and Futuna Islands','WF','WLF','',0,1),(234,'Western Sahara','EH','ESH','',0,1),(235,'Yemen','YE','YEM','',0,1),(237,'Democratic Republic of Congo','CD','COD','',0,1),(238,'Zambia','ZM','ZMB','',0,1),(239,'Zimbabwe','ZW','ZWE','',0,1),(240,'Jersey','JE','JEY','',1,1),(241,'Guernsey','GG','GGY','',1,1),(242,'Montenegro','ME','MNE','',0,1),(243,'Serbia','RS','SRB','',0,1),(244,'Aaland Islands','AX','ALA','',0,1),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1),(246,'Curacao','CW','CUW','',0,1),(247,'Palestinian Territory, Occupied','PS','PSE','',0,1),(248,'South Sudan','SS','SSD','',0,1),(249,'St. Barthelemy','BL','BLM','',0,1),(250,'St. Martin (French part)','MF','MAF','',0,1),(251,'Canary Islands','IC','ICA','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon`
--

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P','10.0000',0,0,'0.0000','2011-01-01','2012-01-01',10,'10',1,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P','0.0000',0,1,'100.0000','2009-03-01','2009-08-31',10,'10',1,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F','10.0000',0,0,'10.0000','1970-11-01','2020-11-01',100000,'10000',1,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_category`
--

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_history`
--

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_product`
--

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_currency`
--

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (2,'US Dollar','USD','$','','2',1.00000000,1,'2013-04-02 11:07:36'),(3,'Euro','EUR','','€','2',0.78100002,1,'2013-04-01 20:16:08'),(4,'грн','UAH','','грн','0',8.13899994,1,'2013-04-01 20:16:08');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `location` varchar(32) NOT NULL,
  `position` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field`
--

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_description`
--

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_to_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_to_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_to_customer_group`
--

LOCK TABLES `oc_custom_field_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_to_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value`
--

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value_description`
--

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer`
--

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ban_ip`
--

DROP TABLE IF EXISTS `oc_customer_ban_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ban_ip`
--

LOCK TABLES `oc_customer_ban_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ban_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ban_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_field`
--

DROP TABLE IF EXISTS `oc_customer_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_field` (
  `customer_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_field`
--

LOCK TABLES `oc_customer_field` WRITE;
/*!40000 ALTER TABLE `oc_customer_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group`
--

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1,0,0,1,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group_description`
--

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,2,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_history`
--

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ip`
--

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_online`
--

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_reward`
--

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_transaction`
--

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download`
--

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download_description`
--

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=429 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (23,'payment','cod'),(22,'total','shipping'),(57,'total','sub_total'),(58,'total','tax'),(59,'total','total'),(410,'module','banner'),(426,'module','carousel'),(390,'total','credit'),(387,'shipping','flat'),(349,'total','handling'),(350,'total','low_order_fee'),(389,'total','coupon'),(413,'module','category'),(411,'module','affiliate'),(408,'module','account'),(393,'total','reward'),(398,'total','voucher'),(407,'payment','free_checkout'),(427,'module','featured'),(419,'module','slideshow'),(428,'module','filter');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_description`
--

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group_description`
--

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_geo_zone`
--

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'UK VAT Zone','UK VAT','2010-02-26 22:33:24','2009-01-06 23:26:25'),(4,'UK Shipping','UK Shipping Zones','2010-12-15 15:18:13','2009-06-23 01:14:53');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information`
--

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_description`
--

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (4,2,'About Us','&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n'),(5,2,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n'),(3,2,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n'),(6,2,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_layout`
--

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_store`
--

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_language`
--

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (2,'Русский','ru','ru,ru_RU,ru_RU.UTF-8','ru.png','russian','russian',1,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout`
--

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (30,6,0,'account'),(17,10,0,'affiliate/'),(29,3,0,'product/category'),(26,1,0,'common/home'),(20,2,0,'product/product'),(24,11,0,'information/information'),(22,5,0,'product/manufacturer'),(23,7,0,'checkout/'),(31,8,0,'information/contact'),(32,9,0,'information/sitemap');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class`
--

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,'1.00000000'),(2,'10.00000000'),(3,'0.39370000');
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class_description`
--

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,2,'Centimeter','cm'),(2,2,'Millimeter','mm'),(3,2,'Inch','in');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer`
--

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (5,'HTC','data/demo/htc_logo.jpg',0),(6,'Palm','data/demo/palm_logo.jpg',0),(7,'Hewlett-Packard','data/demo/hp_logo.jpg',0),(8,'Apple','data/demo/apple_logo.jpg',0),(9,'Canon','data/demo/canon_logo.jpg',0),(10,'Sony','data/demo/sony_logo.jpg',0),(11,'Acer','',0),(12,'Asus','',0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (5,0),(6,0),(8,0),(9,0),(11,0),(12,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option`
--

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',2),(2,'checkbox',3),(4,'text',4),(5,'select',1),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',1),(12,'date',1),(13,'select',0);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_description`
--

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (13,2,'Гарантия'),(1,2,'Radio'),(2,2,'Checkbox'),(4,2,'Text'),(6,2,'Textarea'),(8,2,'Date'),(7,2,'File'),(5,2,'Select'),(9,2,'Time'),(10,2,'Date &amp; Time'),(12,2,'Delivery Date'),(11,2,'Size');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value`
--

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(39,5,'',1),(40,5,'',2),(31,1,'',2),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3),(49,13,'',0),(50,13,'',0),(51,13,'',0);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value_description`
--

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (51,2,13,'36 мис'),(50,2,13,'12 мис'),(49,2,13,'6 мис'),(43,2,1,'Large'),(32,2,1,'Small'),(45,2,2,'Checkbox 4'),(44,2,2,'Checkbox 3'),(31,2,1,'Medium'),(42,2,5,'Yellow'),(41,2,5,'Green'),(39,2,5,'Red'),(40,2,5,'Blue'),(23,2,2,'Checkbox 1'),(24,2,2,'Checkbox 2'),(48,2,11,'Large'),(47,2,11,'Medium'),(46,2,11,'Small');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(32) NOT NULL,
  `payment_company_id` varchar(32) NOT NULL,
  `payment_tax_id` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order`
--

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_download`
--

DROP TABLE IF EXISTS `oc_order_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_download` (
  `order_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_download`
--

LOCK TABLES `oc_order_download` WRITE;
/*!40000 ALTER TABLE `oc_order_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_field`
--

DROP TABLE IF EXISTS `oc_order_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_field` (
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_field`
--

LOCK TABLES `oc_order_field` WRITE;
/*!40000 ALTER TABLE `oc_order_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_fraud`
--

DROP TABLE IF EXISTS `oc_order_fraud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_fraud`
--

LOCK TABLES `oc_order_fraud` WRITE;
/*!40000 ALTER TABLE `oc_order_fraud` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_fraud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_history`
--

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_option`
--

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_product`
--

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_status`
--

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (2,2,'Processing'),(3,2,'Shipped'),(7,2,'Canceled'),(5,2,'Complete'),(8,2,'Denied'),(9,2,'Canceled Reversal'),(10,2,'Failed'),(11,2,'Refunded'),(12,2,'Reversed'),(13,2,'Chargeback'),(1,2,'Pending'),(16,2,'Voided'),(15,2,'Processed'),(14,2,'Expired');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_total`
--

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_voucher`
--

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product`
--

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (28,'Product 1','','','','','','','',939,7,'data/demo/htc_touch_hd_1.jpg',5,1,'100.0000',200,9,'2009-02-03','146.40000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,0,1,'2009-02-03 16:06:50','2011-09-30 01:05:39',0),(29,'Product 2','','','','','','','',999,6,'data/demo/palm_treo_pro_1.jpg',6,1,'279.9900',0,9,'2009-02-03','133.00000000',2,'0.00000000','0.00000000','0.00000000',3,1,1,0,1,'2009-02-03 16:42:17','2011-09-30 01:06:08',0),(30,'Product 3','','','','','','','',7,6,'data/demo/canon_eos_5d_1.jpg',9,1,'100.0000',0,9,'2009-02-03','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,0,1,'2009-02-03 16:59:00','2011-09-30 01:05:23',4),(31,'Product 4','','','','','','','',1000,6,'data/demo/nikon_d300_1.jpg',0,1,'80.0000',0,9,'2009-02-03','0.00000000',1,'0.00000000','0.00000000','0.00000000',3,1,1,0,1,'2009-02-03 17:00:10','2011-09-30 01:06:00',0),(32,'Product 5','','','','','','','',999,6,'data/demo/ipod_touch_1.jpg',8,1,'100.0000',0,9,'2009-02-03','5.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,0,1,'2009-02-03 17:07:26','2011-09-30 01:07:22',1),(33,'Product 6','','','','','','','',1000,6,'data/demo/samsung_syncmaster_941bw.jpg',0,1,'200.0000',0,9,'2009-02-03','5.00000000',1,'0.00000000','0.00000000','0.00000000',2,1,1,0,1,'2009-02-03 17:08:31','2013-03-24 00:26:17',0),(34,'Product 7','','','','','','','',1000,6,'data/demo/ipod_shuffle_1.jpg',8,1,'100.0000',0,9,'2009-02-03','5.00000000',1,'0.00000000','0.00000000','0.00000000',2,1,1,0,1,'2009-02-03 18:07:54','2011-09-30 01:07:17',0),(35,'Product 8','','','','','','','',1000,5,'',0,0,'100.0000',0,9,'2009-02-03','5.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,0,1,'2009-02-03 18:08:31','2011-09-30 01:06:17',0),(36,'Product 9','','','','','','','',994,6,'data/demo/ipod_nano_1.jpg',8,0,'100.0000',100,9,'2009-02-03','5.00000000',1,'0.00000000','0.00000000','0.00000000',2,1,1,0,1,'2009-02-03 18:09:19','2011-09-30 01:07:12',1),(40,'product 11','','','','','','','',970,5,'data/demo/iphone_1.jpg',8,1,'101.0000',0,9,'2009-02-03','10.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,0,1,'2009-02-03 21:07:12','2011-09-30 01:06:53',3),(41,'Product 14','','','','','','','',977,5,'data/demo/imac_1.jpg',8,1,'100.0000',0,9,'2009-02-03','5.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,0,1,'2009-02-03 21:07:26','2011-09-30 01:06:44',2),(42,'Product 15','','','','','','','',990,5,'data/demo/apple_cinema_30.jpg',8,1,'100.0000',400,9,'2009-02-04','12.50000000',1,'1.00000000','2.00000000','3.00000000',1,1,1,0,1,'2009-02-03 21:07:37','2013-03-24 00:28:46',6),(48,'product 20','test 1','','','','','','test 2',995,5,'data/demo/ipod_classic_1.jpg',8,1,'100.0000',0,9,'2009-02-08','1.00000000',1,'0.00000000','0.00000000','0.00000000',2,1,1,0,1,'2009-02-08 17:21:51','2011-09-30 01:07:06',0),(49,'SAM1','','','','','','','',0,8,'data/demo/samsung_tab_1.jpg',0,1,'199.9900',0,9,'2011-04-25','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2011-04-26 08:57:34','2011-09-30 01:06:23',1),(50,'NX.M12EU.019','','','','','','','',10,8,'data/43394_23709.jpg',11,1,'340.0000',0,0,'2011-04-26','2.45000000',1,'342.00000000','245.00000000','33.00000000',1,1,1,1,1,'2011-04-26 08:57:35','2013-03-25 22:43:06',35),(51,'NX.M58EU.001','','','','','','','',10,8,'data/43411_23715.jpg',11,1,'430.0000',0,9,'2011-04-27','2.50000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2011-04-26 08:57:36','2013-03-25 01:36:58',5),(52,'NX.M7BEU.001','','','','','','','',10,8,'data/43415_23717.jpg',11,1,'440.0000',0,9,'2011-04-28','2.50000000',1,'0.00000000','0.00000000','0.00000000',1,1,4,1,1,'2011-04-26 08:57:37','2013-03-25 01:30:04',8),(53,'NX.M7BEU.003','','','','','','','',10,8,'data/40916_22742.jpg',11,1,'450.0000',0,9,'2011-04-30','2.50000000',1,'0.00000000','0.00000000','0.00000000',1,1,5,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',8),(54,'NX.M45EU.001','','','','','','','',10,8,'data/noutbuk-acer-aspire-v5-551g-64456g75makk-nx-m45eu-001(2).jpg',11,1,'500.0000',0,9,'2011-04-30','2.50000000',1,'0.00000000','0.00000000','0.00000000',1,1,6,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',3),(55,'NX.RZKEU.008','','','','','','','',10,8,'data/38163_22385.jpg',11,1,'565.0000',0,9,'2011-04-30','2.50000000',1,'0.00000000','0.00000000','0.00000000',1,1,7,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',11),(56,'NX.RZPEU.008','','','','','','','',10,8,'data/8420485.jpg',11,1,'588.0000',0,9,'2011-04-30','2.50000000',1,'0.00000000','0.00000000','0.00000000',1,1,8,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',7),(57,'NX.M67EU.001','','','','','','','',10,8,'data/7841385.jpg',11,1,'610.0000',0,9,'2011-04-30','2.50000000',1,'0.00000000','0.00000000','0.00000000',1,1,9,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',6),(58,'NX.RZJEU.022','','','','','','','',10,8,'data/aspire-v3-571g_1.jpg',11,1,'610.0000',0,9,'2011-04-30','2.50000000',1,'0.00000000','0.00000000','0.00000000',1,1,0,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',3),(59,'X55A-SX117D','','','','','','','',10,8,'',12,1,'340.0000',0,9,'2011-04-30','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',3),(60,'X55A-SX116D','','','','','','','',10,8,'',12,1,'348.0000',0,9,'2011-04-30','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,2,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',3),(61,'X501U-XX056D','','','','','','','',10,8,'',12,1,'361.0000',0,9,'2011-04-30','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,3,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',3),(62,'X501U-XX058D','','','','','','','',10,8,'',12,1,'363.0000',0,9,'2011-04-30','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,4,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',3),(63,'X55A-SX101D','','','','','','','',10,8,'',12,1,'385.0000',0,9,'2011-04-30','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,5,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',3),(64,'X501A-XX242D','','','','','','','',10,8,'',12,1,'388.0000',0,9,'2011-04-30','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,6,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',3),(65,'K53Br-SX007D','','','','','','','',10,8,'data/1994604.jpg',12,1,'412.0000',0,9,'2011-04-30','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,7,1,1,'2011-04-26 08:57:38','2013-04-02 14:33:16',7),(66,'X501A-XX427D','','','','','','','',10,8,'',12,1,'425.0000',0,9,'2011-04-30','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,8,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',3),(67,'X55A-SX195D','','','','','','','',10,8,'',12,1,'429.7000',0,9,'2011-04-30','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,9,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',3),(68,'X55VD-SX076D','','','','','','','',10,8,'',12,1,'440.0000',0,9,'2011-04-30','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,10,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',3),(69,'K55Dr-SX028D','','','','','','','',10,8,'',12,1,'469.0000',0,9,'2011-04-30','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,11,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',3),(70,'X55VD-SX002D','','','','','','','',10,8,'',12,1,'497.0000',0,9,'2011-04-30','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,12,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',3),(71,'X55VD-SX212D','','','','','','','',10,8,'',12,1,'541.8000',0,9,'2011-04-30','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,13,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',4),(72,'K55VD-SX620D','','','','','','','',10,8,'',12,1,'557.0000',0,9,'2011-04-30','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,14,1,1,'2011-04-26 08:57:38','2013-03-25 01:00:12',3);
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_attribute`
--

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
INSERT INTO `oc_product_attribute` VALUES (55,139,2,'NVIDIA GeForce GT 630M, 1GB'),(55,138,2,'н.д.'),(55,137,2,'4400'),(55,136,2,'-'),(55,135,2,'+'),(55,133,2,'802.11 b/g/n'),(55,134,2,'-'),(55,132,2,'-'),(55,129,2,'SD, MMC, MS, MS Pro, xD'),(55,130,2,'+'),(55,131,2,'10/100/1000'),(55,128,2,'-'),(55,127,2,'1xUSB 3.0, 2xUSB 2.0, HDMI, VGA, speaker out, mic-in'),(55,125,2,'DVD-RW'),(55,124,2,'750'),(55,123,2,'6144'),(55,122,2,'Intel HM77'),(55,120,2,'2.6'),(55,121,2,'382x253x33'),(55,119,2,'Linux'),(55,118,2,'2.5'),(55,117,2,'Intel Core i5-3210M'),(55,116,2,'1366x768'),(55,112,2,'Ноутбук'),(55,113,2,'15.6'),(55,114,2,'TN+film'),(55,115,2,'глянцевое'),(53,138,2,'нет данных'),(53,137,2,'нет данных'),(53,136,2,'-'),(53,135,2,'+, Bluetooth 4.0'),(53,134,2,'-'),(53,133,2,'802.11 b/g/n'),(53,132,2,'-'),(53,131,2,'10/100/1000'),(53,128,2,'-'),(53,129,2,'SD, MMC, MS, MS Pro, xD'),(53,130,2,'+'),(53,127,2,'3xUSB 2.0, HDMI, VGA, speaker out, mic-in'),(53,126,2,'NVidia GeForce 710M, 2GB'),(53,125,2,'DVD-RW'),(53,123,2,'4096'),(53,124,2,'750'),(53,122,2,'нет данных'),(53,121,2,'342x245x33'),(53,120,2,'2.4'),(53,119,2,'Linux'),(53,118,2,'2.2'),(53,117,2,'Intel Pentium B960'),(53,116,2,'1366x768'),(53,115,2,'глянцевое'),(53,114,2,'TN+film'),(53,112,2,'Ноутбук'),(53,113,2,'15.6'),(52,138,2,'нет данных'),(52,137,2,'4400'),(52,136,2,'-'),(52,135,2,'-'),(52,134,2,'-'),(52,133,2,'802.11 b/g/n'),(52,132,2,'-'),(52,131,2,'10/100/1000'),(52,130,2,'+'),(52,128,2,'-'),(52,129,2,'SD, MS, MS Pro, MMC, xD'),(52,127,2,'3xUSB 2.0, VGA, HDMI, headphone, mic-in'),(52,126,2,'NVidia GeForce 710M, 2GB'),(52,125,2,'DVD-RW'),(52,124,2,'500'),(52,123,2,'4096/8192'),(52,122,2,'Intel HM70'),(52,120,2,'2.5'),(52,121,2,'381x254x34'),(52,119,2,'Linpus (boot-up Linux)'),(52,118,2,'2.2'),(52,117,2,'Intel Pentium B960'),(52,116,2,'1366x768'),(52,115,2,'глянцевое'),(52,114,2,'TN+film'),(52,113,2,'15.6'),(52,112,2,'Ноутбук'),(51,138,2,'н.д.'),(51,137,2,'4400'),(51,136,2,'-'),(51,135,2,'-'),(51,134,2,'-'),(51,133,2,'802.11b/g/n'),(51,132,2,'-'),(51,131,2,'10/100'),(51,130,2,'+'),(51,128,2,'-'),(51,129,2,'+'),(51,127,2,'3x USB 2.0, VGA, HDMI, mic-in, speaker-out'),(51,126,2,'NVidia GeForce 710M, 1GB'),(51,125,2,'DVD-RW'),(51,124,2,'500'),(51,123,2,'4096/8192'),(51,122,2,'Intel HM77'),(51,121,2,'381x254x34'),(51,120,2,'2.5'),(51,119,2,'Linpus'),(51,118,2,'2.2'),(51,117,2,'Intel Pentium B960'),(51,116,2,'1366x768'),(51,115,2,'глянцевое'),(51,114,2,'TN+film'),(51,113,2,'15.6'),(51,112,2,'Ноутбук'),(50,138,2,'нет данных'),(50,137,2,'4400'),(50,136,2,'-'),(50,135,2,'-'),(50,134,2,'-'),(50,133,2,'802.11 b/g/n'),(50,132,2,'-'),(50,130,2,'1,3 МП'),(50,131,2,'10/100/1000'),(50,128,2,'-'),(50,129,2,'xD, SD, MMC, MS, MS Pro'),(50,127,2,'3хUSB 2.0, VGA, HDMI, headphone, mic-in'),(50,126,2,'Intel GMA HD'),(50,125,2,'DVD-RW'),(50,124,2,'500'),(50,123,2,'2048/8192'),(50,122,2,'Intel HM70'),(50,121,2,'342x245x33,4'),(50,120,2,'2.45'),(50,119,2,'Linux'),(50,118,2,'1.8'),(50,117,2,'Intel Celeron B83'),(50,116,2,'1366x768'),(50,115,2,'глянцевое'),(50,114,2,'TN+film'),(50,113,2,'15.6'),(50,112,2,'Ноутбук');
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_description`
--

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (48,2,'iPod Classic','&lt;div class=&quot;cpt_product_description &quot;&gt;\n	&lt;div&gt;\n		&lt;p&gt;\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\n	&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- cpt_container_end --&gt;','','',''),(49,2,'Samsung Galaxy Tab 10.1','&lt;p&gt;\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\n&lt;p&gt;\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\n&lt;p&gt;\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\n','','',''),(40,2,'iPhone','&lt;p class=&quot;intro&quot;&gt;\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\n','','',''),(67,2,'ASUS X55A-SX195D','15.6&#039;/(1366x768)HD LED/Intel 2020M/2.4 GHz/mem4 Gb/HDD500 Gb/DVD-SMulti DL/intel HD/GLan+/Wi-Fi bgn/BT4.0/DOS/2.45kg/1*USB2.0+1*USB3.0/VGA-out+/HDMI+/CR 3in1/web-cam0.3/black','','',''),(68,2,'ASUS X55VD-SX076D','15.6&quot; (1366x768) HD LED, glossy/Intel Pentium B980 (2.4 GHz)/HM65 Express/4GB DDR3/500GB/NVIDIA GeForce 610M, 1GB/DVD-SM/1xUSB 3.0/1xUSB 2.0/VGA/HDMI/Mic-in/Line-out/CR/GLAN/Wi-Fi 802.11 b/g/n/Bluetooth/Web-cam 0.3Mpx/Li-ion 6 cell 4400mAh/DOS/2.6kg/Dark Blue','','',''),(69,2,'ASUS K55Dr-SX028D','15.6&quot; (1366х768) LED, glossy/AMD Dual-Core A6-4400M (2.6 GHz)/4GB DDR3-1333/500GB/AMD Radeon HD 7470, 1GB/DVD SM/2xUSB 3.0/1xUSB 2.0/VGA/HDMI/Mic-in/Line-out/CR/GLAN/Wi-Fi 802.11 b/g/n/Bluetooth/Web-cam 0.3Mpx/Li-ion 6 cell 4700mAh/DOS/2.6kg/Dark Indigo','','',''),(70,2,'ASUS X55VD-SX002D','15.6&quot; (1366x768) HD LED, glossy/Intel Core i3-3110M (2.4 GHz)/HM65 Express/4GB DDR3/500GB/NVIDIA GeForce 610M, 1GB/DVD-SM/1xUSB 3.0/1xUSB 2.0/VGA/HDMI/Mic-in/Line-out/CR/GLAN/Wi-Fi 802.11 b/g/n/Bluetooth/Web-cam 0.3Mpx/Li-ion 6 cell 4400mAh/DOS/2.6kg/Dark Blue (Gray)','','',''),(71,2,'ASUS X55VD-SX212D','15/i3-3120/4/500/GT610 1Gb/DRW/DOS/Blue','','',''),(72,2,'ASUS K55VD-SX620D','15.6&#039;/(1366x768)HD LED/i3-3120M/2.5 GHz/mem4 Gb/HDD500 Gb/DVD-SMulti DL/GT610M/2GB/Lan+/Wi-Fi bgn/BT4.0/DOS/2.52kg/2*USB3.0+1*USB2.0/HDMI+/CR 5in1/web-cam0.3/Smoky Black','','',''),(65,2,'ASUS K53Br-SX007D','&lt;p&gt;AMD E450 (1.6GHz),AMD A50M,4GB DDR3 1333,750G5S,DVD-SM,15.6&quot;HD LED,AMD HD7470 1GB,VGA,HDMI,GLAN,WiFi b/g/n,BT3.0,WC 0.3Mp,3xUSB2.0,CR4in1,6cell,DOS,2.6kg,Dark Brown Matte (90N8SC418W21446013AC)&lt;/p&gt;\r\n','','',''),(66,2,'ASUS X501A-XX427D','15/2020/4/500/HD2500/DOS/Dark Blue','','',''),(64,2,'ASUS X501A-XX242D','15,6&quot; (366x768) HD LED, glossy/Intel Pentium B980 (2,3 GHz)/HM76/4GB DDR3/500GB/Intel HD 2000/no ODD/1xUSB 3.0/1xUSB 2.0/HDMI/VGA/Mic-in/Line-out/CR/GLAN/Wi-Fi 802.11 b/g/n/Bluetooth 4.0/Web-cam 0.3Mpx/Li-ion 6 cell 4400mAh/FreeDOS/2,07kg/Dark Blue','','',''),(57,2,'Acer Aspire V3-571G-33124G75Makk (NX.M67EU.001)','&lt;p&gt;15.6&rdquo; (1366x768) HD LED, глянцевый / Intel Core i3-3120M (2.5 ГГц) / RAM 4 ГБ / HDD 750 ГБ / nVidia GeForce GT730M, 2 ГБ / DVD Super Multi / LAN / Wi-Fi / Bluetooth / веб-камера / Linpus (boot-up Linux) / 2.6 кг / черный&lt;/p&gt;\n','','',''),(58,2,'Acer Aspire V3-571G (NX.RZJEU.022)','&lt;p&gt;15.6&quot; Диодная Подсветка CineCrystal (1366x768) TFT, Core i5 Mobile 3210M, DDR3 SDRAM 8ГБ, DVD Super Multi, GeForce GT 630M 1ГБ, Wi-Fi, 750ГБ HDD, Web Cam, HDMI, 6 cells, Win7 Home Basic, Черный&lt;/p&gt;\n','','',''),(59,2,'ASUS X55A-SX117D','15.6&quot; (1366x768) HD LED, glossy/Intel Celeron B830 (1.8 GHz)/2GB DDR3-1333/320GB/Intel HD Graphics/DVD-SM/1xUSB 3.0/1xUSB 2.0/VGA/HDMI/Mic-in/Line-out/CR/GLAN/Wi-Fi 802.11 b/g/n/Bluetooth/Web-cam 0.3Mpx/Li-ion 6 cell 4400mAh/DOS/2.6kg/Black','','',''),(60,2,'ASUS X55A-SX116D','15.6&quot; (1366x768) HD LED, glossy/Intel Celeron B830 (1.8 GHz)/2GB DDR3-1333/500GB/Intel HD Graphics/DVD-SM/1xUSB 3.0/1xUSB 2.0/VGA/HDMI/Mic-in/Line-out/CR/GLAN/Wi-Fi 802.11 b/g/n/Bluetooth/Web-cam 0.3Mpx/Li-ion 6 cell 4400mAh/DOS/2.6kg/Black','','',''),(61,2,'ASUS X501U-XX056D','15.6&quot; (1366x768) HD LED, glossy/AMD Dual-Core E2-1800 (1.7 GHz)/A68M/4GB DDR3-1600/500GB/AMD Radeon HD7340M/no ODD/2xUSB 3.0/VGA/HDMI/Mic-in/Line-out/CR 2in1/GLAN/Wi-Fi 802.11 b/g/n/Bluetooth 4.0/Web-cam 0.3Mpx/Li-ion 6 cell 4400mAh/DOS/2.07kg/Dark Blue','','',''),(62,2,'ASUS X501U-XX058D','15.6&quot; (1366x768) HD LED, glossy/AMD Dual-Core E2-1800 (1.7 GHz)/A68M/4GB DDR3/500GB/AMD Radeon HD7340M/no ODD/2xUSB 3.0/VGA/HDMI/Mic-in/Line-out/CR 2in1/GLAN/Wi-Fi 802.11 b/g/n/Bluetooth 4.0/Web-cam 0.3Mpx/Li-ion 6 cell 4400mAh/DOS/2.07kg/White','','',''),(63,2,'ASUS X55A-SX101D','15.6&quot; (1366x768) HD LED, glossy/Intel Pentium B980 (2.4 GHz)/2GB DDR3-1333/500GB/Intel HD Graphics/DVD-SM/1xUSB 3.0/1xUSB 2.0/VGA/HDMI/Mic-in/Line-out/CR/GLAN/Wi-Fi 802.11 b/g/n/Bluetooth/Web-cam 0.3Mpx/Li-ion 6 cell 4400mAh/DOS/2.6kg/Black','','',''),(50,2,'Acer Aspire E1-531-B8302G50MNKS (NX.M12EU.019)','&lt;p&gt;15.6&#039;&#039; (1366x768) HD LED, glossy/Intel Celeron B830 (1.8 GHz)/2GB DDR3/500GB/Intel HD Graphics/DVD-SM/3xUSB 2.0/HDMI/VGA/Mic-in/Line-out/CR 5in1/GLAN/Wi-Fi 802.11 b/g/n/Web-cam 1.3Mpx/Li-ion 6 cell 4400mAh/Linux/2.45kg/Black&lt;/p&gt;\n','','',''),(51,2,'Acer Aspire E1-531G-B9604G50Maks (NX.M58EU.001)','&lt;p&gt;15.6&#039;&#039; (1366x768) HD, глянцевый / Intel Pentium B960 (2.2 ГГц) / RAM 4 ГБ / HDD 500 ГБ / NVIDIA GeForce 710M, 1 ГБ / DVD Super Multi / LAN / Wi-Fi / веб-камера / Linpus (boot-up Linux) / 2.5 кг / черный&lt;/p&gt;\n','','',''),(52,2,'Acer Aspire E1-531G-B9604G50Maks (NX.M7BEU.001)','&lt;p&gt;15.6&#039;&#039; (1366x768) HD, глянцевый / Intel Pentium B960 (2.2 ГГц) / RAM 4 ГБ / HDD 500 ГБ / NVIDIA GeForce 710M, 2 ГБ / DVD Super Multi / LAN / Wi-Fi / веб-камера / Linpus (boot-up Linux) / 2.5 кг / черный&lt;/p&gt;\n','','',''),(53,2,'Acer Aspire E1-531G-B9604G75Maks (NX.M7BEU.003)','&lt;p&gt;15.6&#039;&#039; (1366x768) HD, glossy/Intel Pentium B960 (2.2 GHz)/HM77/4GB DDR3/750GB/NVIDIA GeForce 710M, 2GB/DVD-SM/3xUSB 2.0/HDMI/VGA/Mic-in/Line-out/CR 5in1/GLAN/Wi-Fi 802.11 b/g/n/Web-cam HD/Li-ion 6 cell 4400mAh/Linpus (boot-up Linux)/2.5kg/Black&lt;/p&gt;\n','','',''),(54,2,'Acer Aspire V5-551G-64456G75Makk (NX.M45EU.001)','&lt;p&gt;15.6&rdquo; (1366x768) HD LED, glossy/AMD Dual-Core A6-4455M (2.1-2.6 GHz)/6GB DDR3/750GB/AMD Radeon HD7650M, 1GB/DVD-SM/3xUSB 2.0/HDMI/Mic-in/Line-out/CR 2in1/GLAN/Wi-Fi 802.11 b/g/n/Web-cam 1.3Mpx/Li-ion 4 cell/Windows 8/2.3kg/Black&lt;/p&gt;\n','','',''),(55,2,'Acer Aspire V3-571G-53216G75Maii (NX.RZKEU.008)','&lt;p&gt;15.6&quot; (1366x768) HD LED, glossy/Intel Core i5-3210M (2.5 GHz)/HM77/6GB DDR3/750GB/nVidia GeForce GT630M, 1GB/DVD-SM/1xUSB 3.0/2xUSB 2.0/VGA/HDMI/Mic-in/Line-out/CR 5in1/GLAN/Wi-Fi 802.11 a/g/n/Bluetooth/Web-cam 1.3Mpx/Li-ion 6 cell 4400mAh/Linux/2.6kg/Black&lt;/p&gt;\n','','',''),(56,2,'Acer Aspire V3-571G-33118G1TMAII (NX.RZPEU.008)','&lt;p&gt;15.6&rdquo; (1366x768) HD LED, glossy/Intel Core i3-3110M (2.4 GHz)/HM77/8GB DDR3/1TB/nVidia GeForce GT640M, 2GB/DVD-SM/1xUSB 3.0/2xUSB 2.0/VGA/HDMI/Mic-in/Line-out/CR 5in1/GLAN/Wi-Fi 802.11 a/g/n/Bluetooth/Web-cam 1.3Mpx/Li-ion 6 cell 4400mAh/Linux/2.6kg/Black&lt;/p&gt;\n','','',''),(32,2,'iPod Touch','&lt;p&gt;\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\n	&amp;nbsp;&lt;/p&gt;\n','','',''),(33,2,'Samsung SyncMaster 941BW','&lt;div&gt;Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&#039;s not hard to imagine.&lt;/div&gt;\n','','',''),(34,2,'iPod Shuffle','&lt;div&gt;\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\n	&lt;p&gt;\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\n	&lt;p&gt;\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\n&lt;/div&gt;\n','','',''),(41,2,'iMac','&lt;div&gt;\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\n','','',''),(42,2,'Apple Cinema 30&quot;','&lt;p&gt;&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there&#039;s no limit to what you can achieve. &lt;/font&gt;&lt;br /&gt;\n&lt;br /&gt;\n&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it&#039;s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;/font&gt;&lt;br /&gt;\n&lt;br /&gt;\n&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple&#039;s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;/font&gt;&lt;br /&gt;\n&lt;br /&gt;\n&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;/font&gt;&lt;br /&gt;\n&lt;br /&gt;\n&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\n\n&lt;h3&gt;Features:&lt;/h3&gt;\n\n&lt;p&gt;Unrivaled display performance&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\n	&lt;li&gt;Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\n	&lt;li&gt;Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\n	&lt;li&gt;Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\n	&lt;li&gt;Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\n	&lt;li&gt;Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\n	&lt;li&gt;Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;Simple setup and operation&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\n	&lt;li&gt;Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\n	&lt;li&gt;Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;Sleek, elegant design&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Huge virtual workspace, very small footprint.&lt;/li&gt;\n	&lt;li&gt;Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\n	&lt;li&gt;Unique hinge design for effortless adjustment&lt;/li&gt;\n	&lt;li&gt;Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;h3&gt;Technical specifications&lt;/h3&gt;\n\n&lt;p&gt;&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\n	&lt;li&gt;2048 x 1280&lt;/li&gt;\n	&lt;li&gt;1920 x 1200&lt;/li&gt;\n	&lt;li&gt;1280 x 800&lt;/li&gt;\n	&lt;li&gt;1024 x 640&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;16.7 million&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;170&deg; horizontal; 170&deg; vertical&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;700:1&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;16 ms&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Antiglare hardcoat&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Display Power,&lt;/li&gt;\n	&lt;li&gt;System sleep, wake&lt;/li&gt;\n	&lt;li&gt;Brightness&lt;/li&gt;\n	&lt;li&gt;Monitor tilt&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br /&gt;\nCable&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;DVI (Digital Visual Interface)&lt;/li&gt;\n	&lt;li&gt;FireWire 400&lt;/li&gt;\n	&lt;li&gt;USB 2.0&lt;/li&gt;\n	&lt;li&gt;DC power (24 V)&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;Connectors&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Two-port, self-powered USB 2.0 hub&lt;/li&gt;\n	&lt;li&gt;Two FireWire 400 ports&lt;/li&gt;\n	&lt;li&gt;Kensington security port&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br /&gt;\nRequires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\n	&lt;li&gt;Maximum power when operating: 150W&lt;/li&gt;\n	&lt;li&gt;Energy saver mode: 3W or less&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Operating temperature: 50&deg; to 95&deg; F (10&deg; to 35&deg; C)&lt;/li&gt;\n	&lt;li&gt;Storage temperature: -40&deg; to 116&deg; F (-40&deg; to 47&deg; C)&lt;/li&gt;\n	&lt;li&gt;Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\n	&lt;li&gt;Maximum operating altitude: 10,000 feet&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;FCC Part 15 Class B&lt;/li&gt;\n	&lt;li&gt;EN55022 Class B&lt;/li&gt;\n	&lt;li&gt;EN55024&lt;/li&gt;\n	&lt;li&gt;VCCI Class B&lt;/li&gt;\n	&lt;li&gt;AS/NZS 3548 Class B&lt;/li&gt;\n	&lt;li&gt;CNS 13438 Class B&lt;/li&gt;\n	&lt;li&gt;ICES-003 Class B&lt;/li&gt;\n	&lt;li&gt;ISO 13406 part 2&lt;/li&gt;\n	&lt;li&gt;MPR II&lt;/li&gt;\n	&lt;li&gt;IEC 60950&lt;/li&gt;\n	&lt;li&gt;UL 60950&lt;/li&gt;\n	&lt;li&gt;CSA 60950&lt;/li&gt;\n	&lt;li&gt;EN60950&lt;/li&gt;\n	&lt;li&gt;ENERGY STAR&lt;/li&gt;\n	&lt;li&gt;TCO &#039;03&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;Size and weight&lt;/b&gt;&lt;br /&gt;\n30-inch Apple Cinema HD Display&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Height: 21.3 inches (54.3 cm)&lt;/li&gt;\n	&lt;li&gt;Width: 27.2 inches (68.8 cm)&lt;/li&gt;\n	&lt;li&gt;Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\n	&lt;li&gt;Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Mac Pro, all graphic options&lt;/li&gt;\n	&lt;li&gt;MacBook Pro&lt;/li&gt;\n	&lt;li&gt;Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\n	&lt;li&gt;Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\n	&lt;li&gt;PowerBook G4 with dual-link DVI support&lt;/li&gt;\n	&lt;li&gt;Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\n&lt;/ul&gt;\n','','',''),(30,2,'Canon EOS 5D','&lt;p&gt;\n	Canon&#039;s press material for the EOS 5D states that it &#039;defines (a) new D-SLR category&#039;, while we&#039;re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably &#039;chunkier&#039;). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR&#039;s, an important difference when compared to the latter is that the EOS 5D doesn&#039;t have any environmental seals. While Canon don&#039;t specifically refer to the EOS 5D as a &#039;professional&#039; digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they&#039;ve not bought too many EF-S lenses...) &auml;&euml;&lt;/p&gt;\n','','',''),(31,2,'Nikon D300','&lt;div class=&quot;cpt_product_description &quot;&gt;\n	&lt;div&gt;\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\n		&lt;br /&gt;\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\n		&lt;br /&gt;\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\n		&lt;br /&gt;\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- cpt_container_end --&gt;','','',''),(35,2,'Product 8','&lt;p&gt;\n	Product 8&lt;/p&gt;\n','','',''),(36,2,'iPod Nano','&lt;div&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\n&lt;/div&gt;\n','','',''),(28,2,'HTC Touch HD','&lt;p&gt;\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\n	&lt;li&gt;\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\n	&lt;li&gt;\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\n	&lt;li&gt;\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\n	&lt;li&gt;\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\n	&lt;li&gt;\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\n	&lt;li&gt;\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\n	&lt;li&gt;\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\n	&lt;li&gt;\n		GPS and A-GPS ready&lt;/li&gt;\n	&lt;li&gt;\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\n	&lt;li&gt;\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\n	&lt;li&gt;\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\n	&lt;li&gt;\n		5 megapixel color camera with auto focus&lt;/li&gt;\n	&lt;li&gt;\n		VGA CMOS color camera&lt;/li&gt;\n	&lt;li&gt;\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\n	&lt;li&gt;\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\n	&lt;li&gt;\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\n	&lt;li&gt;\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\n	&lt;li&gt;\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\n	&lt;li&gt;\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\n	&lt;li&gt;\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\n&lt;/ul&gt;\n','','',''),(29,2,'Palm Treo Pro','&lt;p&gt;\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\n	&lt;li&gt;\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\n	&lt;li&gt;\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\n	&lt;li&gt;\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\n	&lt;li&gt;\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\n	&lt;li&gt;\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\n	&lt;li&gt;\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\n	&lt;li&gt;\n		Built-in GPS&lt;/li&gt;\n	&lt;li&gt;\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\n	&lt;li&gt;\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\n	&lt;li&gt;\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\n	&lt;li&gt;\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\n	&lt;li&gt;\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\n	&lt;li&gt;\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\n	&lt;li&gt;\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\n	&lt;li&gt;\n		3.5mm stereo headset jack&lt;/li&gt;\n	&lt;li&gt;\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\n&lt;/ul&gt;\n','','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=456 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_discount`
--

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
INSERT INTO `oc_product_discount` VALUES (1,42,1,10,1,'88.0000','0000-00-00','0000-00-00'),(2,42,1,30,1,'66.0000','0000-00-00','0000-00-00'),(3,42,1,20,1,'77.0000','0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_filter`
--

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2479 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_image`
--

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` VALUES (1,28,'data/demo/htc_touch_hd_2.jpg',0),(2,28,'data/demo/htc_touch_hd_3.jpg',0),(3,29,'data/demo/palm_treo_pro_2.jpg',0),(4,29,'data/demo/palm_treo_pro_3.jpg',0),(5,30,'data/demo/canon_eos_5d_2.jpg',0),(6,30,'data/demo/canon_eos_5d_3.jpg',0),(7,31,'data/demo/nikon_d300_2.jpg',0),(8,31,'data/demo/nikon_d300_3.jpg',0),(9,31,'data/demo/nikon_d300_4.jpg',0),(10,31,'data/demo/nikon_d300_5.jpg',0),(11,32,'data/demo/ipod_touch_2.jpg',0),(12,32,'data/demo/ipod_touch_3.jpg',0),(13,32,'data/demo/ipod_touch_4.jpg',0),(14,32,'data/demo/ipod_touch_5.jpg',0),(15,32,'data/demo/ipod_touch_6.jpg',0),(16,32,'data/demo/ipod_touch_7.jpg',0),(17,34,'data/demo/ipod_shuffle_2.jpg',0),(18,34,'data/demo/ipod_shuffle_3.jpg',0),(19,34,'data/demo/ipod_shuffle_4.jpg',0),(20,34,'data/demo/ipod_shuffle_5.jpg',0),(21,36,'data/demo/ipod_nano_2.jpg',0),(22,36,'data/demo/ipod_nano_3.jpg',0),(23,36,'data/demo/ipod_nano_4.jpg',0),(24,36,'data/demo/ipod_nano_5.jpg',0),(25,40,'data/demo/iphone_2.jpg',0),(26,40,'data/demo/iphone_3.jpg',0),(27,40,'data/demo/iphone_4.jpg',0),(28,40,'data/demo/iphone_5.jpg',0),(29,40,'data/demo/iphone_6.jpg',0),(30,41,'data/demo/imac_2.jpg',0),(31,41,'data/demo/imac_3.jpg',0),(32,42,'data/demo/canon_eos_5d_1.jpg',0),(33,42,'data/demo/canon_eos_5d_2.jpg',0),(34,42,'data/demo/canon_logo.jpg',0),(35,42,'data/demo/compaq_presario.jpg',0),(36,42,'data/demo/hp_1.jpg',0),(37,48,'data/demo/ipod_classic_2.jpg',0),(38,48,'data/demo/ipod_classic_3.jpg',0),(39,48,'data/demo/ipod_classic_4.jpg',0),(40,49,'data/demo/samsung_tab_2.jpg',0),(41,49,'data/demo/samsung_tab_3.jpg',0),(42,49,'data/demo/samsung_tab_4.jpg',0),(43,49,'data/demo/samsung_tab_5.jpg',0),(44,49,'data/demo/samsung_tab_6.jpg',0),(45,49,'data/demo/samsung_tab_7.jpg',0),(46,50,'data/43395_23709.jpg',0),(47,50,'data/43396_23709.jpg',0),(48,51,'data/43412_23715.jpg',0),(49,51,'data/43413_23715.jpg',0),(50,51,'data/43414_23715.jpg',0),(51,52,'data/43416_23717.jpg',0),(52,52,'data/43417_23717.jpg',0),(53,52,'data/43418_23717.jpg',0),(54,53,'data/40914_22742.jpg',0),(55,53,'data/40915_22742.jpg',0),(56,53,'data/40917_22742.jpg',0),(57,54,'',0),(58,54,'data/6Az9U21V.jpg',0),(59,54,'data/7791475.jpg',0),(60,55,'data/38161_22385.jpg',0),(61,55,'data/38162_22385.jpg',0),(62,55,'data/38164_22385.jpg',0),(63,56,'data/7791455.jpg',0),(64,56,'data/7791465.jpg',0),(65,56,'data/7791475.jpg',0),(66,57,'data/7791465.jpg',0),(67,57,'data/7841395.jpg',0),(68,57,'data/7841415.jpg',0),(69,58,'data/2_2_1_12.jpg',0),(70,58,'data/2_5_1_4.jpg',0),(71,58,'data/2_6_1_3.jpg',0),(2476,65,'data/1994613.jpg',0),(2477,65,'data/1994730.jpg',0),(2478,65,'data/1994624.jpg',0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option`
--

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
INSERT INTO `oc_product_option` VALUES (1,30,5,'',1),(2,35,11,'',1),(3,42,1,'',1),(4,42,2,'',1),(5,42,4,'test',1),(6,42,5,'',1),(7,42,6,'',1),(8,42,7,'',1),(9,42,8,'2011-02-20',1),(10,42,9,'22:25',1),(11,42,10,'2011-02-20 22:25',1),(12,50,13,'',1);
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option_value`
--

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
INSERT INTO `oc_product_option_value` VALUES (1,1,30,5,39,2,1,'0.0000','+',0,'+','0.00000000','+'),(2,1,30,5,40,5,1,'0.0000','+',0,'+','0.00000000','+'),(3,2,35,11,46,0,1,'5.0000','+',0,'+','0.00000000','+'),(4,2,35,11,47,10,1,'10.0000','+',0,'+','0.00000000','+'),(5,2,35,11,48,15,1,'15.0000','+',0,'+','0.00000000','+'),(6,3,42,1,31,146,1,'20.0000','+',2,'-','20.00000000','+'),(7,3,42,1,32,96,1,'10.0000','+',1,'+','10.00000000','+'),(8,3,42,1,43,300,1,'30.0000','+',3,'+','30.00000000','+'),(9,4,42,2,23,48,1,'10.0000','+',0,'+','10.00000000','+'),(10,4,42,2,24,194,1,'20.0000','+',0,'+','20.00000000','+'),(11,4,42,2,44,2696,1,'30.0000','+',0,'+','30.00000000','+'),(12,4,42,2,45,3998,1,'40.0000','+',0,'+','40.00000000','+'),(13,6,42,5,39,92,1,'4.0000','+',0,'+','4.00000000','+'),(14,6,42,5,40,300,0,'3.0000','+',0,'+','3.00000000','+'),(15,6,42,5,41,100,0,'1.0000','+',0,'+','1.00000000','+'),(16,6,42,5,42,200,1,'2.0000','+',0,'+','2.00000000','+'),(17,12,50,13,49,1,1,'20.0000','+',0,'+','0.00000000','+'),(18,12,50,13,50,1,1,'15.0000','+',0,'+','0.00000000','+'),(19,12,50,13,51,1,1,'10.0000','+',0,'+','0.00000000','+');
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related`
--

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
INSERT INTO `oc_product_related` VALUES (40,42),(41,42),(42,40),(42,41);
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=590 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_reward`
--

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
INSERT INTO `oc_product_reward` VALUES (1,28,1,400),(2,29,1,0),(3,30,1,200),(4,31,1,0),(5,32,1,0),(6,33,1,0),(7,34,1,0),(8,35,1,0),(9,36,1,0),(10,40,1,0),(11,41,1,0),(12,42,1,100),(13,48,1,0),(14,49,1,1000),(15,50,1,0),(16,51,1,0),(17,52,1,0),(18,53,1,0),(19,54,1,0),(20,55,1,0),(21,56,1,0),(22,57,1,0),(23,58,1,0),(589,65,1,0);
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=445 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_special`
--

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
INSERT INTO `oc_product_special` VALUES (1,30,1,2,'90.0000','0000-00-00','0000-00-00'),(2,30,1,1,'80.0000','0000-00-00','0000-00-00'),(3,42,1,1,'90.0000','0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_category`
--

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (30,33),(31,33),(32,34),(34,34),(36,34),(42,25),(48,34),(50,18),(50,46),(51,18),(51,46),(52,18),(52,46),(53,18),(53,46),(54,18),(54,46),(55,18),(55,46),(56,18),(56,46),(57,18),(57,46),(58,18),(58,46),(59,18),(59,46),(60,18),(60,46),(61,18),(61,46),(62,18),(62,46),(63,18),(63,46),(64,18),(64,46),(65,18),(65,46),(66,18),(66,46),(67,18),(67,46),(68,18),(68,46),(69,18),(69,46),(70,18),(70,46),(71,18),(71,46),(72,18),(72,46);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_download`
--

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_layout`
--

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_store`
--

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (28,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,0),(40,0),(41,0),(42,0),(48,0),(49,0),(50,0),(51,0),(52,0),(53,0),(54,0),(55,0),(56,0),(57,0),(58,0),(59,0),(60,0),(61,0),(62,0),(63,0),(64,0),(65,0),(66,0),(67,0),(68,0),(69,0),(70,0),(71,0),(72,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return`
--

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_action`
--

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,2,'Refunded'),(2,2,'Credit Issued'),(3,2,'Replacement Sent');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_history`
--

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_reason`
--

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,2,'Dead On Arrival'),(2,2,'Received Wrong Item'),(3,2,'Order Error'),(4,2,'Faulty, please supply details'),(5,2,'Other, please supply details');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_status`
--

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,2,'Pending'),(3,2,'Complete'),(2,2,'Awaiting Products');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_review`
--

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1081 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_setting`
--

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (1,0,'shipping','shipping_sort_order','3',0),(2,0,'sub_total','sub_total_sort_order','1',0),(3,0,'sub_total','sub_total_status','1',0),(4,0,'tax','tax_status','1',0),(5,0,'total','total_sort_order','9',0),(6,0,'total','total_status','1',0),(7,0,'tax','tax_sort_order','5',0),(8,0,'free_checkout','free_checkout_sort_order','1',0),(9,0,'cod','cod_sort_order','5',0),(10,0,'cod','cod_total','0.01',0),(11,0,'cod','cod_order_status_id','1',0),(12,0,'cod','cod_geo_zone_id','0',0),(13,0,'cod','cod_status','1',0),(14,0,'shipping','shipping_status','1',0),(15,0,'shipping','shipping_estimator','1',0),(1080,0,'config','config_google_analytics','',0),(27,0,'coupon','coupon_sort_order','4',0),(28,0,'coupon','coupon_status','1',0),(1079,0,'config','config_error_filename','error.txt',0),(1077,0,'config','config_error_display','1',0),(1078,0,'config','config_error_log','1',0),(34,0,'flat','flat_sort_order','1',0),(35,0,'flat','flat_status','1',0),(36,0,'flat','flat_geo_zone_id','0',0),(37,0,'flat','flat_tax_class_id','9',0),(38,0,'carousel','carousel_module','a:1:{i:0;a:10:{s:9:\"banner_id\";s:1:\"8\";s:5:\"limit\";s:1:\"5\";s:6:\"scroll\";s:1:\"3\";s:5:\"width\";s:2:\"80\";s:6:\"height\";s:2:\"80\";s:11:\"resize_type\";s:7:\"default\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:2:\"-1\";}}',1),(39,0,'featured','featured_product','43,40,42,49,46,47,28',0),(40,0,'featured','featured_module','a:1:{i:0;a:8:{s:5:\"limit\";s:1:\"6\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:11:\"resize_type\";s:7:\"default\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(41,0,'flat','flat_cost','5.00',0),(42,0,'credit','credit_sort_order','7',0),(43,0,'credit','credit_status','1',0),(1073,0,'config','config_maintenance','0',0),(1074,0,'config','config_password','1',0),(1075,0,'config','config_encryption','b87c917ed4561714f35b0ed9d8c1453b',0),(1076,0,'config','config_compression','0',0),(53,0,'reward','reward_sort_order','2',0),(54,0,'reward','reward_status','1',0),(56,0,'affiliate','affiliate_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(358,0,'category','category_module','a:2:{i:0;a:4:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(60,0,'account','account_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(1072,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet',0),(1071,0,'config','config_file_extension_allowed','txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods',0),(1070,0,'config','config_seo_url','0',0),(94,0,'voucher','voucher_sort_order','8',0),(95,0,'voucher','voucher_status','1',0),(1066,0,'config','config_fraud_status_id','7',0),(1067,0,'config','config_secure','0',0),(1068,0,'config','config_shared','0',0),(1069,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(103,0,'free_checkout','free_checkout_status','1',0),(104,0,'free_checkout','free_checkout_order_status_id','1',0),(462,0,'slideshow','slideshow_module','a:1:{i:0;a:7:{s:9:\"banner_id\";s:1:\"7\";s:5:\"width\";s:3:\"934\";s:6:\"height\";s:3:\"290\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(341,0,'banner','banner_module','a:1:{i:0;a:7:{s:9:\"banner_id\";s:1:\"6\";s:5:\"width\";s:3:\"182\";s:6:\"height\";s:3:\"182\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"3\";}}',1),(1065,0,'config','config_fraud_score','',0),(1064,0,'config','config_fraud_key','',0),(1063,0,'config','config_fraud_detection','0',0),(1062,0,'config','config_alert_emails','',0),(1061,0,'config','config_account_mail','0',0),(1060,0,'config','config_alert_mail','0',0),(1059,0,'config','config_smtp_timeout','5',0),(1058,0,'config','config_smtp_port','25',0),(1057,0,'config','config_smtp_password','',0),(1056,0,'config','config_smtp_username','',0),(1055,0,'config','config_smtp_host','',0),(1054,0,'config','config_mail_parameter','',0),(1053,0,'config','config_mail_protocol','mail',0),(1052,0,'config','config_ftp_status','0',0),(1051,0,'config','config_ftp_root','',0),(1050,0,'config','config_ftp_password','',0),(1049,0,'config','config_ftp_username','',0),(1048,0,'config','config_ftp_port','21',0),(1047,0,'config','config_ftp_host','evideo.org.ua',0),(1046,0,'config','config_image_cart_height','47',0),(1045,0,'config','config_image_cart_width','47',0),(1044,0,'config','config_image_wishlist_height','47',0),(1043,0,'config','config_image_wishlist_width','47',0),(1042,0,'config','config_image_compare_height','90',0),(1041,0,'config','config_image_compare_width','90',0),(1040,0,'config','config_image_related_height','220',0),(1039,0,'config','config_image_related_width','220',0),(1038,0,'config','config_image_additional_height','74',0),(1037,0,'config','config_image_additional_width','74',0),(1036,0,'config','config_image_product_height','220',0),(1035,0,'config','config_image_product_width','220',0),(1034,0,'config','config_image_popup_height','600',0),(1033,0,'config','config_image_popup_width','600',0),(1032,0,'config','config_image_thumb_height','228',0),(1031,0,'config','config_image_thumb_width','228',0),(1030,0,'config','config_image_category_height','220',0),(1029,0,'config','config_image_category_width','220',0),(1028,0,'config','config_icon','data/cart.png',0),(1027,0,'config','config_logo','data/logo.png',0),(1026,0,'config','config_return_status_id','2',0),(1025,0,'config','config_return_id','0',0),(1024,0,'config','config_commission','5',0),(1023,0,'config','config_affiliate_id','4',0),(1022,0,'config','config_stock_status_id','5',0),(1021,0,'config','config_stock_checkout','0',0),(1020,0,'config','config_stock_warning','0',0),(1019,0,'config','config_stock_display','0',0),(1018,0,'config','config_complete_status_id','5',0),(1017,0,'config','config_order_status_id','1',0),(1016,0,'config','config_invoice_prefix','INV-2013-00',0),(1015,0,'config','config_order_edit','100',0),(1012,0,'config','config_cart_weight','1',0),(1013,0,'config','config_guest_checkout','1',0),(1014,0,'config','config_checkout_id','5',0),(1011,0,'config','config_account_id','3',0),(1010,0,'config','config_customer_price','0',0),(1009,0,'config','config_customer_group_display','a:1:{i:0;s:1:\"1\";}',1),(1008,0,'config','config_customer_group_id','1',0),(1007,0,'config','config_customer_online','0',0),(1006,0,'config','config_tax_customer','shipping',0),(1005,0,'config','config_tax_default','shipping',0),(1004,0,'config','config_vat','0',0),(1003,0,'config','config_tax','1',0),(1002,0,'config','config_voucher_max','1000',0),(1001,0,'config','config_voucher_min','1',0),(1000,0,'config','config_download','1',0),(999,0,'config','config_review_status','1',0),(998,0,'config','config_product_count','0',0),(997,0,'config','config_admin_limit','20',0),(996,0,'config','config_catalog_limit','15',0),(995,0,'config','config_weight_class_id','1',0),(994,0,'config','config_length_class_id','1',0),(993,0,'config','config_currency_auto','1',0),(992,0,'config','config_currency','USD',0),(991,0,'config','config_admin_language','ru',0),(987,0,'config','config_layout_id','4',0),(985,0,'config','config_meta_description','My Store',0),(988,0,'config','config_country_id','220',0),(989,0,'config','config_zone_id','3490',0),(990,0,'config','config_language','ru',0),(986,0,'config','config_template','tecart',0),(984,0,'config','config_title','Интернет-магазин ## -бытовой и компьютерной техники, ТВ, Аудио, Видео......',0),(980,0,'config','config_address','Address 1',0),(981,0,'config','config_email','info@evideo.org.ua',0),(982,0,'config','config_telephone','123456789',0),(983,0,'config','config_fax','',0),(351,0,'filter','filter_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:1:\"9\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"0\";}}',1),(978,0,'config','config_name','Интернет-магазин ## -бытовой и компьютерной техники, ТВ, Аудио, Видео......',0),(979,0,'config','config_owner','Your Name',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_stock_status`
--

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,2,'In Stock'),(8,2,'Pre-Order'),(5,2,'Out Of Stock'),(6,2,'2 - 3 Days');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_store`
--

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_class`
--

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Taxable Goods','Taxed Stuff','2009-01-06 23:21:53','2011-09-23 14:07:50'),(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate`
--

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (86,3,'VAT (17.5%)','17.5000','P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)','2.0000','F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rule`
--

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_url_alias`
--

DROP TABLE IF EXISTS `oc_url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`)
) ENGINE=MyISAM AUTO_INCREMENT=965 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_url_alias`
--

LOCK TABLES `oc_url_alias` WRITE;
/*!40000 ALTER TABLE `oc_url_alias` DISABLE KEYS */;
INSERT INTO `oc_url_alias` VALUES (730,'manufacturer_id=8','apple'),(772,'information_id=4','about_us'),(964,'product_id=48','ipod_classic'),(963,'product_id=42','test'),(962,'category_id=34','mp3-players');
/*!40000 ALTER TABLE `oc_url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user`
--

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'admin','866c1c5b2db77fc5b1f3e5344a15a3229e6c4450','e49c4642b','','','info@evideo.org.ua','','37.221.135.10',1,'2013-03-19 21:29:32');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_group`
--

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Top Administrator','a:2:{s:6:\"access\";a:127:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:14:\"catalog/review\";i:10;s:18:\"common/filemanager\";i:11;s:13:\"design/banner\";i:12;s:19:\"design/custom_field\";i:13;s:13:\"design/layout\";i:14;s:14:\"extension/feed\";i:15;s:17:\"extension/manager\";i:16;s:16:\"extension/module\";i:17;s:17:\"extension/payment\";i:18;s:18:\"extension/shipping\";i:19;s:15:\"extension/total\";i:20;s:16:\"feed/google_base\";i:21;s:19:\"feed/google_sitemap\";i:22;s:20:\"localisation/country\";i:23;s:21:\"localisation/currency\";i:24;s:21:\"localisation/geo_zone\";i:25;s:21:\"localisation/language\";i:26;s:25:\"localisation/length_class\";i:27;s:25:\"localisation/order_status\";i:28;s:26:\"localisation/return_action\";i:29;s:26:\"localisation/return_reason\";i:30;s:26:\"localisation/return_status\";i:31;s:25:\"localisation/stock_status\";i:32;s:22:\"localisation/tax_class\";i:33;s:21:\"localisation/tax_rate\";i:34;s:25:\"localisation/weight_class\";i:35;s:17:\"localisation/zone\";i:36;s:14:\"module/account\";i:37;s:16:\"module/affiliate\";i:38;s:13:\"module/banner\";i:39;s:17:\"module/bestseller\";i:40;s:15:\"module/carousel\";i:41;s:15:\"module/category\";i:42;s:15:\"module/featured\";i:43;s:13:\"module/filter\";i:44;s:18:\"module/google_talk\";i:45;s:18:\"module/information\";i:46;s:13:\"module/latest\";i:47;s:16:\"module/slideshow\";i:48;s:14:\"module/special\";i:49;s:12:\"module/store\";i:50;s:14:\"module/welcome\";i:51;s:24:\"payment/authorizenet_aim\";i:52;s:21:\"payment/bank_transfer\";i:53;s:14:\"payment/cheque\";i:54;s:11:\"payment/cod\";i:55;s:21:\"payment/free_checkout\";i:56;s:22:\"payment/klarna_account\";i:57;s:22:\"payment/klarna_invoice\";i:58;s:14:\"payment/liqpay\";i:59;s:20:\"payment/moneybookers\";i:60;s:14:\"payment/nochex\";i:61;s:15:\"payment/paymate\";i:62;s:16:\"payment/paypoint\";i:63;s:13:\"payment/payza\";i:64;s:26:\"payment/perpetual_payments\";i:65;s:14:\"payment/pp_pro\";i:66;s:17:\"payment/pp_pro_uk\";i:67;s:19:\"payment/pp_standard\";i:68;s:15:\"payment/sagepay\";i:69;s:22:\"payment/sagepay_direct\";i:70;s:18:\"payment/sagepay_us\";i:71;s:19:\"payment/twocheckout\";i:72;s:28:\"payment/web_payment_software\";i:73;s:16:\"payment/worldpay\";i:74;s:27:\"report/affiliate_commission\";i:75;s:22:\"report/customer_credit\";i:76;s:22:\"report/customer_online\";i:77;s:21:\"report/customer_order\";i:78;s:22:\"report/customer_reward\";i:79;s:24:\"report/product_purchased\";i:80;s:21:\"report/product_viewed\";i:81;s:18:\"report/sale_coupon\";i:82;s:17:\"report/sale_order\";i:83;s:18:\"report/sale_return\";i:84;s:20:\"report/sale_shipping\";i:85;s:15:\"report/sale_tax\";i:86;s:14:\"sale/affiliate\";i:87;s:12:\"sale/contact\";i:88;s:11:\"sale/coupon\";i:89;s:13:\"sale/customer\";i:90;s:20:\"sale/customer_ban_ip\";i:91;s:19:\"sale/customer_group\";i:92;s:10:\"sale/order\";i:93;s:11:\"sale/return\";i:94;s:12:\"sale/voucher\";i:95;s:18:\"sale/voucher_theme\";i:96;s:15:\"setting/setting\";i:97;s:13:\"setting/store\";i:98;s:16:\"shipping/auspost\";i:99;s:17:\"shipping/citylink\";i:100;s:14:\"shipping/fedex\";i:101;s:13:\"shipping/flat\";i:102;s:13:\"shipping/free\";i:103;s:13:\"shipping/item\";i:104;s:23:\"shipping/parcelforce_48\";i:105;s:15:\"shipping/pickup\";i:106;s:19:\"shipping/royal_mail\";i:107;s:12:\"shipping/ups\";i:108;s:13:\"shipping/usps\";i:109;s:15:\"shipping/weight\";i:110;s:11:\"tool/backup\";i:111;s:14:\"tool/error_log\";i:112;s:11:\"tool/export\";i:113;s:12:\"total/coupon\";i:114;s:12:\"total/credit\";i:115;s:14:\"total/handling\";i:116;s:16:\"total/klarna_fee\";i:117;s:19:\"total/low_order_fee\";i:118;s:12:\"total/reward\";i:119;s:14:\"total/shipping\";i:120;s:15:\"total/sub_total\";i:121;s:9:\"total/tax\";i:122;s:11:\"total/total\";i:123;s:13:\"total/voucher\";i:124;s:9:\"user/user\";i:125;s:20:\"user/user_permission\";i:126;s:13:\"module/filter\";}s:6:\"modify\";a:127:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:14:\"catalog/review\";i:10;s:18:\"common/filemanager\";i:11;s:13:\"design/banner\";i:12;s:19:\"design/custom_field\";i:13;s:13:\"design/layout\";i:14;s:14:\"extension/feed\";i:15;s:17:\"extension/manager\";i:16;s:16:\"extension/module\";i:17;s:17:\"extension/payment\";i:18;s:18:\"extension/shipping\";i:19;s:15:\"extension/total\";i:20;s:16:\"feed/google_base\";i:21;s:19:\"feed/google_sitemap\";i:22;s:20:\"localisation/country\";i:23;s:21:\"localisation/currency\";i:24;s:21:\"localisation/geo_zone\";i:25;s:21:\"localisation/language\";i:26;s:25:\"localisation/length_class\";i:27;s:25:\"localisation/order_status\";i:28;s:26:\"localisation/return_action\";i:29;s:26:\"localisation/return_reason\";i:30;s:26:\"localisation/return_status\";i:31;s:25:\"localisation/stock_status\";i:32;s:22:\"localisation/tax_class\";i:33;s:21:\"localisation/tax_rate\";i:34;s:25:\"localisation/weight_class\";i:35;s:17:\"localisation/zone\";i:36;s:14:\"module/account\";i:37;s:16:\"module/affiliate\";i:38;s:13:\"module/banner\";i:39;s:17:\"module/bestseller\";i:40;s:15:\"module/carousel\";i:41;s:15:\"module/category\";i:42;s:15:\"module/featured\";i:43;s:13:\"module/filter\";i:44;s:18:\"module/google_talk\";i:45;s:18:\"module/information\";i:46;s:13:\"module/latest\";i:47;s:16:\"module/slideshow\";i:48;s:14:\"module/special\";i:49;s:12:\"module/store\";i:50;s:14:\"module/welcome\";i:51;s:24:\"payment/authorizenet_aim\";i:52;s:21:\"payment/bank_transfer\";i:53;s:14:\"payment/cheque\";i:54;s:11:\"payment/cod\";i:55;s:21:\"payment/free_checkout\";i:56;s:22:\"payment/klarna_account\";i:57;s:22:\"payment/klarna_invoice\";i:58;s:14:\"payment/liqpay\";i:59;s:20:\"payment/moneybookers\";i:60;s:14:\"payment/nochex\";i:61;s:15:\"payment/paymate\";i:62;s:16:\"payment/paypoint\";i:63;s:13:\"payment/payza\";i:64;s:26:\"payment/perpetual_payments\";i:65;s:14:\"payment/pp_pro\";i:66;s:17:\"payment/pp_pro_uk\";i:67;s:19:\"payment/pp_standard\";i:68;s:15:\"payment/sagepay\";i:69;s:22:\"payment/sagepay_direct\";i:70;s:18:\"payment/sagepay_us\";i:71;s:19:\"payment/twocheckout\";i:72;s:28:\"payment/web_payment_software\";i:73;s:16:\"payment/worldpay\";i:74;s:27:\"report/affiliate_commission\";i:75;s:22:\"report/customer_credit\";i:76;s:22:\"report/customer_online\";i:77;s:21:\"report/customer_order\";i:78;s:22:\"report/customer_reward\";i:79;s:24:\"report/product_purchased\";i:80;s:21:\"report/product_viewed\";i:81;s:18:\"report/sale_coupon\";i:82;s:17:\"report/sale_order\";i:83;s:18:\"report/sale_return\";i:84;s:20:\"report/sale_shipping\";i:85;s:15:\"report/sale_tax\";i:86;s:14:\"sale/affiliate\";i:87;s:12:\"sale/contact\";i:88;s:11:\"sale/coupon\";i:89;s:13:\"sale/customer\";i:90;s:20:\"sale/customer_ban_ip\";i:91;s:19:\"sale/customer_group\";i:92;s:10:\"sale/order\";i:93;s:11:\"sale/return\";i:94;s:12:\"sale/voucher\";i:95;s:18:\"sale/voucher_theme\";i:96;s:15:\"setting/setting\";i:97;s:13:\"setting/store\";i:98;s:16:\"shipping/auspost\";i:99;s:17:\"shipping/citylink\";i:100;s:14:\"shipping/fedex\";i:101;s:13:\"shipping/flat\";i:102;s:13:\"shipping/free\";i:103;s:13:\"shipping/item\";i:104;s:23:\"shipping/parcelforce_48\";i:105;s:15:\"shipping/pickup\";i:106;s:19:\"shipping/royal_mail\";i:107;s:12:\"shipping/ups\";i:108;s:13:\"shipping/usps\";i:109;s:15:\"shipping/weight\";i:110;s:11:\"tool/backup\";i:111;s:14:\"tool/error_log\";i:112;s:11:\"tool/export\";i:113;s:12:\"total/coupon\";i:114;s:12:\"total/credit\";i:115;s:14:\"total/handling\";i:116;s:16:\"total/klarna_fee\";i:117;s:19:\"total/low_order_fee\";i:118;s:12:\"total/reward\";i:119;s:14:\"total/shipping\";i:120;s:15:\"total/sub_total\";i:121;s:9:\"total/tax\";i:122;s:11:\"total/total\";i:123;s:13:\"total/voucher\";i:124;s:9:\"user/user\";i:125;s:20:\"user/user_permission\";i:126;s:13:\"module/filter\";}}'),(10,'Demonstration','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher`
--

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_history`
--

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme`
--

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'data/demo/canon_eos_5d_2.jpg'),(7,'data/demo/gift-voucher-birthday.jpg'),(6,'data/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme_description`
--

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,2,'Christmas'),(7,2,'Birthday'),(8,2,'General');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class`
--

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,'1.00000000'),(2,'1000.00000000'),(5,'2.20460000'),(6,'35.27400000');
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class_description`
--

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,2,'Kilogram','kg'),(2,2,'Gram','g'),(5,2,'Pound ','lb'),(6,2,'Ounce','oz');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4033 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone`
--

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (1,1,'Badakhshan','BDS',1),(2,1,'Badghis','BDG',1),(3,1,'Baghlan','BGL',1),(4,1,'Balkh','BAL',1),(5,1,'Bamian','BAM',1),(6,1,'Farah','FRA',1),(7,1,'Faryab','FYB',1),(8,1,'Ghazni','GHA',1),(9,1,'Ghowr','GHO',1),(10,1,'Helmand','HEL',1),(11,1,'Herat','HER',1),(12,1,'Jowzjan','JOW',1),(13,1,'Kabul','KAB',1),(14,1,'Kandahar','KAN',1),(15,1,'Kapisa','KAP',1),(16,1,'Khost','KHO',1),(17,1,'Konar','KNR',1),(18,1,'Kondoz','KDZ',1),(19,1,'Laghman','LAG',1),(20,1,'Lowgar','LOW',1),(21,1,'Nangrahar','NAN',1),(22,1,'Nimruz','NIM',1),(23,1,'Nurestan','NUR',1),(24,1,'Oruzgan','ORU',1),(25,1,'Paktia','PIA',1),(26,1,'Paktika','PKA',1),(27,1,'Parwan','PAR',1),(28,1,'Samangan','SAM',1),(29,1,'Sar-e Pol','SAR',1),(30,1,'Takhar','TAK',1),(31,1,'Wardak','WAR',1),(32,1,'Zabol','ZAB',1),(33,2,'Berat','BR',1),(34,2,'Bulqize','BU',1),(35,2,'Delvine','DL',1),(36,2,'Devoll','DV',1),(37,2,'Diber','DI',1),(38,2,'Durres','DR',1),(39,2,'Elbasan','EL',1),(40,2,'Kolonje','ER',1),(41,2,'Fier','FR',1),(42,2,'Gjirokaster','GJ',1),(43,2,'Gramsh','GR',1),(44,2,'Has','HA',1),(45,2,'Kavaje','KA',1),(46,2,'Kurbin','KB',1),(47,2,'Kucove','KC',1),(48,2,'Korce','KO',1),(49,2,'Kruje','KR',1),(50,2,'Kukes','KU',1),(51,2,'Librazhd','LB',1),(52,2,'Lezhe','LE',1),(53,2,'Lushnje','LU',1),(54,2,'Malesi e Madhe','MM',1),(55,2,'Mallakaster','MK',1),(56,2,'Mat','MT',1),(57,2,'Mirdite','MR',1),(58,2,'Peqin','PQ',1),(59,2,'Permet','PR',1),(60,2,'Pogradec','PG',1),(61,2,'Puke','PU',1),(62,2,'Shkoder','SH',1),(63,2,'Skrapar','SK',1),(64,2,'Sarande','SR',1),(65,2,'Tepelene','TE',1),(66,2,'Tropoje','TP',1),(67,2,'Tirane','TR',1),(68,2,'Vlore','VL',1),(69,3,'Adrar','ADR',1),(70,3,'Ain Defla','ADE',1),(71,3,'Ain Temouchent','ATE',1),(72,3,'Alger','ALG',1),(73,3,'Annaba','ANN',1),(74,3,'Batna','BAT',1),(75,3,'Bechar','BEC',1),(76,3,'Bejaia','BEJ',1),(77,3,'Biskra','BIS',1),(78,3,'Blida','BLI',1),(79,3,'Bordj Bou Arreridj','BBA',1),(80,3,'Bouira','BOA',1),(81,3,'Boumerdes','BMD',1),(82,3,'Chlef','CHL',1),(83,3,'Constantine','CON',1),(84,3,'Djelfa','DJE',1),(85,3,'El Bayadh','EBA',1),(86,3,'El Oued','EOU',1),(87,3,'El Tarf','ETA',1),(88,3,'Ghardaia','GHA',1),(89,3,'Guelma','GUE',1),(90,3,'Illizi','ILL',1),(91,3,'Jijel','JIJ',1),(92,3,'Khenchela','KHE',1),(93,3,'Laghouat','LAG',1),(94,3,'Muaskar','MUA',1),(95,3,'Medea','MED',1),(96,3,'Mila','MIL',1),(97,3,'Mostaganem','MOS',1),(98,3,'M\'Sila','MSI',1),(99,3,'Naama','NAA',1),(100,3,'Oran','ORA',1),(101,3,'Ouargla','OUA',1),(102,3,'Oum el-Bouaghi','OEB',1),(103,3,'Relizane','REL',1),(104,3,'Saida','SAI',1),(105,3,'Setif','SET',1),(106,3,'Sidi Bel Abbes','SBA',1),(107,3,'Skikda','SKI',1),(108,3,'Souk Ahras','SAH',1),(109,3,'Tamanghasset','TAM',1),(110,3,'Tebessa','TEB',1),(111,3,'Tiaret','TIA',1),(112,3,'Tindouf','TIN',1),(113,3,'Tipaza','TIP',1),(114,3,'Tissemsilt','TIS',1),(115,3,'Tizi Ouzou','TOU',1),(116,3,'Tlemcen','TLE',1),(117,4,'Eastern','E',1),(118,4,'Manu\'a','M',1),(119,4,'Rose Island','R',1),(120,4,'Swains Island','S',1),(121,4,'Western','W',1),(122,5,'Andorra la Vella','ALV',1),(123,5,'Canillo','CAN',1),(124,5,'Encamp','ENC',1),(125,5,'Escaldes-Engordany','ESE',1),(126,5,'La Massana','LMA',1),(127,5,'Ordino','ORD',1),(128,5,'Sant Julia de Loria','SJL',1),(129,6,'Bengo','BGO',1),(130,6,'Benguela','BGU',1),(131,6,'Bie','BIE',1),(132,6,'Cabinda','CAB',1),(133,6,'Cuando-Cubango','CCU',1),(134,6,'Cuanza Norte','CNO',1),(135,6,'Cuanza Sul','CUS',1),(136,6,'Cunene','CNN',1),(137,6,'Huambo','HUA',1),(138,6,'Huila','HUI',1),(139,6,'Luanda','LUA',1),(140,6,'Lunda Norte','LNO',1),(141,6,'Lunda Sul','LSU',1),(142,6,'Malange','MAL',1),(143,6,'Moxico','MOX',1),(144,6,'Namibe','NAM',1),(145,6,'Uige','UIG',1),(146,6,'Zaire','ZAI',1),(147,9,'Saint George','ASG',1),(148,9,'Saint John','ASJ',1),(149,9,'Saint Mary','ASM',1),(150,9,'Saint Paul','ASL',1),(151,9,'Saint Peter','ASR',1),(152,9,'Saint Philip','ASH',1),(153,9,'Barbuda','BAR',1),(154,9,'Redonda','RED',1),(155,10,'Antartida e Islas del Atlantico','AN',1),(156,10,'Buenos Aires','BA',1),(157,10,'Catamarca','CA',1),(158,10,'Chaco','CH',1),(159,10,'Chubut','CU',1),(160,10,'Cordoba','CO',1),(161,10,'Corrientes','CR',1),(162,10,'Distrito Federal','DF',1),(163,10,'Entre Rios','ER',1),(164,10,'Formosa','FO',1),(165,10,'Jujuy','JU',1),(166,10,'La Pampa','LP',1),(167,10,'La Rioja','LR',1),(168,10,'Mendoza','ME',1),(169,10,'Misiones','MI',1),(170,10,'Neuquen','NE',1),(171,10,'Rio Negro','RN',1),(172,10,'Salta','SA',1),(173,10,'San Juan','SJ',1),(174,10,'San Luis','SL',1),(175,10,'Santa Cruz','SC',1),(176,10,'Santa Fe','SF',1),(177,10,'Santiago del Estero','SD',1),(178,10,'Tierra del Fuego','TF',1),(179,10,'Tucuman','TU',1),(180,11,'Aragatsotn','AGT',1),(181,11,'Ararat','ARR',1),(182,11,'Armavir','ARM',1),(183,11,'Geghark\'unik\'','GEG',1),(184,11,'Kotayk\'','KOT',1),(185,11,'Lorri','LOR',1),(186,11,'Shirak','SHI',1),(187,11,'Syunik\'','SYU',1),(188,11,'Tavush','TAV',1),(189,11,'Vayots\' Dzor','VAY',1),(190,11,'Yerevan','YER',1),(191,13,'Australian Capital Territory','ACT',1),(192,13,'New South Wales','NSW',1),(193,13,'Northern Territory','NT',1),(194,13,'Queensland','QLD',1),(195,13,'South Australia','SA',1),(196,13,'Tasmania','TAS',1),(197,13,'Victoria','VIC',1),(198,13,'Western Australia','WA',1),(199,14,'Burgenland','BUR',1),(200,14,'Kärnten','KAR',1),(201,14,'Nieder&ouml;sterreich','NOS',1),(202,14,'Ober&ouml;sterreich','OOS',1),(203,14,'Salzburg','SAL',1),(204,14,'Steiermark','STE',1),(205,14,'Tirol','TIR',1),(206,14,'Vorarlberg','VOR',1),(207,14,'Wien','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Brestskaya (Brest)','BR',1),(338,20,'Homyel\'skaya (Homyel\')','HO',1),(339,20,'Horad Minsk','HM',1),(340,20,'Hrodzyenskaya (Hrodna)','HR',1),(341,20,'Mahilyowskaya (Mahilyow)','MA',1),(342,20,'Minskaya','MI',1),(343,20,'Vitsyebskaya (Vitsyebsk)','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liège','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapá','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceará','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espírito Santo','ES',1),(448,30,'Goiás','GO',1),(449,30,'Maranhão','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Pará','PA',1),(454,30,'Paraíba','PB',1),(455,30,'Paraná','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piauí','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondônia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'São Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÔ','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Hi','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chi','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovar-Bilogora','BB',1),(848,53,'City of Zagreb','CZ',1),(849,53,'Dubrovnik-Neretva','DN',1),(850,53,'Istra','IS',1),(851,53,'Karlovac','KA',1),(852,53,'Koprivnica-Krizevci','KK',1),(853,53,'Krapina-Zagorje','KZ',1),(854,53,'Lika-Senj','LS',1),(855,53,'Medimurje','ME',1),(856,53,'Osijek-Baranja','OB',1),(857,53,'Pozega-Slavonia','PS',1),(858,53,'Primorje-Gorski Kotar','PG',1),(859,53,'Sibenik','SI',1),(860,53,'Sisak-Moslavina','SM',1),(861,53,'Slavonski Brod-Posavina','SB',1),(862,53,'Split-Dalmatia','SD',1),(863,53,'Varazdin','VA',1),(864,53,'Virovitica-Podravina','VP',1),(865,53,'Vukovar-Srijem','VS',1),(866,53,'Zadar-Knin','ZK',1),(867,53,'Zagreb','ZA',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan Laani','AL',1),(1086,72,'Etela-Suomen Laani','ES',1),(1087,72,'Ita-Suomen Laani','IS',1),(1088,72,'Lansi-Suomen Laani','LS',1),(1089,72,'Lapin Lanani','LA',1),(1090,72,'Oulun Laani','OU',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-W&uuml;rttemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Th&uuml;ringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1428,97,'Bacs-Kiskun','BK',1),(1429,97,'Baranya','BA',1),(1430,97,'Bekes','BE',1),(1431,97,'Bekescsaba','BS',1),(1432,97,'Borsod-Abauj-Zemplen','BZ',1),(1433,97,'Budapest','BU',1),(1434,97,'Csongrad','CS',1),(1435,97,'Debrecen','DE',1),(1436,97,'Dunaujvaros','DU',1),(1437,97,'Eger','EG',1),(1438,97,'Fejer','FE',1),(1439,97,'Gyor','GY',1),(1440,97,'Gyor-Moson-Sopron','GM',1),(1441,97,'Hajdu-Bihar','HB',1),(1442,97,'Heves','HE',1),(1443,97,'Hodmezovasarhely','HO',1),(1444,97,'Jasz-Nagykun-Szolnok','JN',1),(1445,97,'Kaposvar','KA',1),(1446,97,'Kecskemet','KE',1),(1447,97,'Komarom-Esztergom','KO',1),(1448,97,'Miskolc','MI',1),(1449,97,'Nagykanizsa','NA',1),(1450,97,'Nograd','NO',1),(1451,97,'Nyiregyhaza','NY',1),(1452,97,'Pecs','PE',1),(1453,97,'Pest','PS',1),(1454,97,'Somogy','SO',1),(1455,97,'Sopron','SP',1),(1456,97,'Szabolcs-Szatmar-Bereg','SS',1),(1457,97,'Szeged','SZ',1),(1458,97,'Szekesfehervar','SE',1),(1459,97,'Szolnok','SL',1),(1460,97,'Szombathely','SM',1),(1461,97,'Tatabanya','TA',1),(1462,97,'Tolna','TO',1),(1463,97,'Vas','VA',1),(1464,97,'Veszprem','VE',1),(1465,97,'Zala','ZA',1),(1466,97,'Zalaegerszeg','ZZ',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Pondicherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'BoDeTaBek','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta Raya','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Almaty','AL',1),(1717,109,'Almaty City','AC',1),(1718,109,'Aqmola','AM',1),(1719,109,'Aqtobe','AQ',1),(1720,109,'Astana City','AS',1),(1721,109,'Atyrau','AT',1),(1722,109,'Batys Qazaqstan','BA',1),(1723,109,'Bayqongyr City','BY',1),(1724,109,'Mangghystau','MA',1),(1725,109,'Ongtustik Qazaqstan','ON',1),(1726,109,'Pavlodar','PA',1),(1727,109,'Qaraghandy','QA',1),(1728,109,'Qostanay','QO',1),(1729,109,'Qyzylorda','QY',1),(1730,109,'Shyghys Qazaqstan','SH',1),(1731,109,'Soltustik Qazaqstan','SO',1),(1732,109,'Zhambyl','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1819,117,'Aizkraukles Rajons','AIZ',1),(1820,117,'Aluksnes Rajons','ALU',1),(1821,117,'Balvu Rajons','BAL',1),(1822,117,'Bauskas Rajons','BAU',1),(1823,117,'Cesu Rajons','CES',1),(1824,117,'Daugavpils Rajons','DGR',1),(1825,117,'Dobeles Rajons','DOB',1),(1826,117,'Gulbenes Rajons','GUL',1),(1827,117,'Jekabpils Rajons','JEK',1),(1828,117,'Jelgavas Rajons','JGR',1),(1829,117,'Kraslavas Rajons','KRA',1),(1830,117,'Kuldigas Rajons','KUL',1),(1831,117,'Liepajas Rajons','LPR',1),(1832,117,'Limbazu Rajons','LIM',1),(1833,117,'Ludzas Rajons','LUD',1),(1834,117,'Madonas Rajons','MAD',1),(1835,117,'Ogres Rajons','OGR',1),(1836,117,'Preilu Rajons','PRE',1),(1837,117,'Rezeknes Rajons','RZR',1),(1838,117,'Rigas Rajons','RGR',1),(1839,117,'Saldus Rajons','SAL',1),(1840,117,'Talsu Rajons','TAL',1),(1841,117,'Tukuma Rajons','TUK',1),(1842,117,'Valkas Rajons','VLK',1),(1843,117,'Valmieras Rajons','VLM',1),(1844,117,'Ventspils Rajons','VSR',1),(1845,117,'Daugavpils','DGV',1),(1846,117,'Jelgava','JGV',1),(1847,117,'Jurmala','JUR',1),(1848,117,'Liepaja','LPK',1),(1849,117,'Rezekne','RZK',1),(1850,117,'Riga','RGA',1),(1851,117,'Ventspils','VSL',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','JO',1),(1972,129,'Kedah','KE',1),(1973,129,'Kelantan','KL',1),(1974,129,'Labuan','LA',1),(1975,129,'Melaka','ME',1),(1976,129,'Negeri Sembilan','NS',1),(1977,129,'Pahang','PA',1),(1978,129,'Perak','PE',1),(1979,129,'Perlis','PR',1),(1980,129,'Pulau Pinang','PP',1),(1981,129,'Sabah','SA',1),(1982,129,'Sarawak','SR',1),(1983,129,'Selangor','SE',1),(1984,129,'Terengganu','TE',1),(1985,129,'Wilayah Persekutuan','WP',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord Brabant','NB',1),(2336,150,'Noord Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Abakan','AB',1),(2722,176,'Aginskoye','AG',1),(2723,176,'Anadyr','AN',1),(2724,176,'Arkahangelsk','AR',1),(2725,176,'Astrakhan','AS',1),(2726,176,'Barnaul','BA',1),(2727,176,'Belgorod','BE',1),(2728,176,'Birobidzhan','BI',1),(2729,176,'Blagoveshchensk','BL',1),(2730,176,'Bryansk','BR',1),(2731,176,'Cheboksary','CH',1),(2732,176,'Chelyabinsk','CL',1),(2733,176,'Cherkessk','CR',1),(2734,176,'Chita','CI',1),(2735,176,'Dudinka','DU',1),(2736,176,'Elista','EL',1),(2737,176,'Gomo-Altaysk','GO',1),(2738,176,'Gorno-Altaysk','GA',1),(2739,176,'Groznyy','GR',1),(2740,176,'Irkutsk','IR',1),(2741,176,'Ivanovo','IV',1),(2742,176,'Izhevsk','IZ',1),(2743,176,'Kalinigrad','KA',1),(2744,176,'Kaluga','KL',1),(2745,176,'Kasnodar','KS',1),(2746,176,'Kazan','KZ',1),(2747,176,'Kemerovo','KE',1),(2748,176,'Khabarovsk','KH',1),(2749,176,'Khanty-Mansiysk','KM',1),(2750,176,'Kostroma','KO',1),(2751,176,'Krasnodar','KR',1),(2752,176,'Krasnoyarsk','KN',1),(2753,176,'Kudymkar','KU',1),(2754,176,'Kurgan','KG',1),(2755,176,'Kursk','KK',1),(2756,176,'Kyzyl','KY',1),(2757,176,'Lipetsk','LI',1),(2758,176,'Magadan','MA',1),(2759,176,'Makhachkala','MK',1),(2760,176,'Maykop','MY',1),(2761,176,'Moscow','MO',1),(2762,176,'Murmansk','MU',1),(2763,176,'Nalchik','NA',1),(2764,176,'Naryan Mar','NR',1),(2765,176,'Nazran','NZ',1),(2766,176,'Nizhniy Novgorod','NI',1),(2767,176,'Novgorod','NO',1),(2768,176,'Novosibirsk','NV',1),(2769,176,'Omsk','OM',1),(2770,176,'Orel','OR',1),(2771,176,'Orenburg','OE',1),(2772,176,'Palana','PA',1),(2773,176,'Penza','PE',1),(2774,176,'Perm','PR',1),(2775,176,'Petropavlovsk-Kamchatskiy','PK',1),(2776,176,'Petrozavodsk','PT',1),(2777,176,'Pskov','PS',1),(2778,176,'Rostov-na-Donu','RO',1),(2779,176,'Ryazan','RY',1),(2780,176,'Salekhard','SL',1),(2781,176,'Samara','SA',1),(2782,176,'Saransk','SR',1),(2783,176,'Saratov','SV',1),(2784,176,'Smolensk','SM',1),(2785,176,'St. Petersburg','SP',1),(2786,176,'Stavropol','ST',1),(2787,176,'Syktyvkar','SY',1),(2788,176,'Tambov','TA',1),(2789,176,'Tomsk','TO',1),(2790,176,'Tula','TU',1),(2791,176,'Tura','TR',1),(2792,176,'Tver','TV',1),(2793,176,'Tyumen','TY',1),(2794,176,'Ufa','UF',1),(2795,176,'Ul\'yanovsk','UL',1),(2796,176,'Ulan-Ude','UU',1),(2797,176,'Ust\'-Ordynskiy','US',1),(2798,176,'Vladikavkaz','VL',1),(2799,176,'Vladimir','VA',1),(2800,176,'Vladivostok','VV',1),(2801,176,'Volgograd','VG',1),(2802,176,'Vologda','VD',1),(2803,176,'Voronezh','VO',1),(2804,176,'Vyatka','VY',1),(2805,176,'Yakutsk','YA',1),(2806,176,'Yaroslavl','YR',1),(2807,176,'Yekaterinburg','YE',1),(2808,176,'Yoshkar-Ola','YO',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3031,197,'Ascension','A',1),(3032,197,'Saint Helena','S',1),(3033,197,'Tristan da Cunha','T',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'G&auml;vleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'J&auml;mtland','Z',1),(3080,203,'J&ouml;nk&ouml;ping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'&Ouml;rebro','T',1),(3085,203,'&Ouml;sterg&ouml;tland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'S&ouml;dermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'V&auml;rmland','S',1),(3091,203,'V&auml;sterbotten','AC',1),(3092,203,'V&auml;sternorrland','Y',1),(3093,203,'V&auml;stmanland','U',1),(3094,203,'V&auml;stra G&ouml;taland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graub&uuml;nden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Z&uuml;rich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakir','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazığ','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kırıkkale','KRK',1),(3364,215,'Kırklareli','KLR',1),(3365,215,'Kırşehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Cherkasy','CK',1),(3481,220,'Chernihiv','CH',1),(3482,220,'Chernivtsi','CV',1),(3483,220,'Crimea','CR',1),(3484,220,'Dnipropetrovs\'k','DN',1),(3485,220,'Donets\'k','DO',1),(3486,220,'Ivano-Frankivs\'k','IV',1),(3487,220,'Kharkiv Kherson','KL',1),(3488,220,'Khmel\'nyts\'kyy','KM',1),(3489,220,'Kirovohrad','KR',1),(3490,220,'Kiev','KV',1),(3491,220,'Kyyiv','KY',1),(3492,220,'Luhans\'k','LU',1),(3493,220,'L\'viv','LV',1),(3494,220,'Mykolayiv','MY',1),(3495,220,'Odesa','OD',1),(3496,220,'Poltava','PO',1),(3497,220,'Rivne','RI',1),(3498,220,'Sevastopol','SE',1),(3499,220,'Sumy','SU',1),(3500,220,'Ternopil\'','TE',1),(3501,220,'Vinnytsya','VI',1),(3502,220,'Volyn\'','VO',1),(3503,220,'Zakarpattya','ZK',1),(3504,220,'Zaporizhzhya','ZA',1),(3505,220,'Zhytomyr','ZH',1),(3506,221,'Abu Zaby','AZ',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubayy','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3862,105,'Carbonia-Iglesias','CI',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3895,105,'Medio Campidano','VS',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3902,105,'Ogliastra','OG',1),(3903,105,'Olbia-Tempio','OT',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,21,'Brussels-Capital Region','BRU',1),(3971,138,'Aguascalientes','AG',1),(3972,222,'Isle of Man','IOM',1),(3973,242,'Andrijevica','01',1),(3974,242,'Bar','02',1),(3975,242,'Berane','03',1),(3976,242,'Bijelo Polje','04',1),(3977,242,'Budva','05',1),(3978,242,'Cetinje','06',1),(3979,242,'Danilovgrad','07',1),(3980,242,'Herceg-Novi','08',1),(3981,242,'Kolašin','09',1),(3982,242,'Kotor','10',1),(3983,242,'Mojkovac','11',1),(3984,242,'Nikšić','12',1),(3985,242,'Plav','13',1),(3986,242,'Pljevlja','14',1),(3987,242,'Plužine','15',1),(3988,242,'Podgorica','16',1),(3989,242,'Rožaje','17',1),(3990,242,'Šavnik','18',1),(3991,242,'Tivat','19',1),(3992,242,'Ulcinj','20',1),(3993,242,'Žabljak','21',1),(3994,243,'Belgrade','00',1),(3995,243,'North Bačka','01',1),(3996,243,'Central Banat','02',1),(3997,243,'North Banat','03',1),(3998,243,'South Banat','04',1),(3999,243,'West Bačka','05',1),(4000,243,'South Bačka','06',1),(4001,243,'Srem','07',1),(4002,243,'Mačva','08',1),(4003,243,'Kolubara','09',1),(4004,243,'Podunavlje','10',1),(4005,243,'Braničevo','11',1),(4006,243,'Šumadija','12',1),(4007,243,'Pomoravlje','13',1),(4008,243,'Bor','14',1),(4009,243,'Zaječar','15',1),(4010,243,'Zlatibor','16',1),(4011,243,'Moravica','17',1),(4012,243,'Raška','18',1),(4013,243,'Rasina','19',1),(4014,243,'Nišava','20',1),(4015,243,'Toplica','21',1),(4016,243,'Pirot','22',1),(4017,243,'Jablanica','23',1),(4018,243,'Pčinja','24',1),(4019,243,'Kosovo','KM',1),(4020,245,'Bonaire','BO',1),(4021,245,'Saba','SA',1),(4022,245,'Sint Eustatius','SE',1),(4023,248,'Central Equatoria','EC',1),(4024,248,'Eastern Equatoria','EE',1),(4025,248,'Jonglei','JG',1),(4026,248,'Lakes','LK',1),(4027,248,'Northern Bahr el-Ghazal','BN',1),(4028,248,'Unity','UY',1),(4029,248,'Upper Nile','NU',1),(4030,248,'Warrap','WR',1),(4031,248,'Western Bahr el-Ghazal','BW',1),(4032,248,'Western Equatoria','EW',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (57,222,0,3,'2010-02-26 22:33:24','0000-00-00 00:00:00'),(65,222,0,4,'2010-12-15 15:18:13','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option`
--

DROP TABLE IF EXISTS `option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option`
--

LOCK TABLES `option` WRITE;
/*!40000 ALTER TABLE `option` DISABLE KEYS */;
INSERT INTO `option` VALUES (1,'radio',2),(2,'checkbox',3),(4,'text',4),(5,'select',1),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',1),(12,'date',1);
/*!40000 ALTER TABLE `option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_description`
--

DROP TABLE IF EXISTS `option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_description`
--

LOCK TABLES `option_description` WRITE;
/*!40000 ALTER TABLE `option_description` DISABLE KEYS */;
INSERT INTO `option_description` VALUES (1,1,'Radio'),(2,1,'Checkbox'),(4,1,'Text'),(6,1,'Textarea'),(8,1,'Date'),(7,1,'File'),(5,1,'Select'),(9,1,'Time'),(10,1,'Date &amp; Time'),(12,1,'Delivery Date'),(11,1,'Size');
/*!40000 ALTER TABLE `option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_value`
--

DROP TABLE IF EXISTS `option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_value`
--

LOCK TABLES `option_value` WRITE;
/*!40000 ALTER TABLE `option_value` DISABLE KEYS */;
INSERT INTO `option_value` VALUES (43,1,3),(32,1,1),(45,2,4),(44,2,3),(42,5,4),(41,5,3),(39,5,1),(40,5,2),(31,1,2),(23,2,1),(24,2,2),(46,11,1),(47,11,2),(48,11,3);
/*!40000 ALTER TABLE `option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_value_description`
--

DROP TABLE IF EXISTS `option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_value_description`
--

LOCK TABLES `option_value_description` WRITE;
/*!40000 ALTER TABLE `option_value_description` DISABLE KEYS */;
INSERT INTO `option_value_description` VALUES (43,1,1,'Large'),(32,1,1,'Small'),(45,1,2,'Checkbox 4'),(44,1,2,'Checkbox 3'),(31,1,1,'Medium'),(42,1,5,'Yellow'),(41,1,5,'Green'),(39,1,5,'Red'),(40,1,5,'Blue'),(23,1,2,'Checkbox 1'),(24,1,2,'Checkbox 2'),(48,1,11,'Large'),(47,1,11,'Medium'),(46,1,11,'Small');
/*!40000 ALTER TABLE `option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL DEFAULT '',
  `fax` varchar(32) NOT NULL DEFAULT '',
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL DEFAULT '',
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL DEFAULT '',
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL DEFAULT '',
  `payment_firstname` varchar(32) NOT NULL DEFAULT '',
  `payment_lastname` varchar(32) NOT NULL DEFAULT '',
  `payment_company` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL DEFAULT '',
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_download`
--

DROP TABLE IF EXISTS `order_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_download` (
  `order_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `filename` varchar(128) NOT NULL DEFAULT '',
  `mask` varchar(128) NOT NULL DEFAULT '',
  `remaining` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_download`
--

LOCK TABLES `order_download` WRITE;
/*!40000 ALTER TABLE `order_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_history`
--

LOCK TABLES `order_history` WRITE;
/*!40000 ALTER TABLE `order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_option`
--

DROP TABLE IF EXISTS `order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_option`
--

LOCK TABLES `order_option` WRITE;
/*!40000 ALTER TABLE `order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(24) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=577 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (576,326,33,'Samsung SyncMaster 941BW','Product 6',1,'200.0000','200.0000','17.5000');
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (2,1,'В обработке'),(3,1,'Доставлено'),(7,1,'Отменено'),(5,1,'Сделка завершена'),(8,1,'Возврат'),(9,1,'Отмена и аннулирование'),(10,1,'Неудавшийся'),(11,1,'Возмещенный'),(12,1,'Полностью измененный'),(13,1,'Полный возврат'),(1,1,'Ожидание'),(16,1,'Voided'),(15,1,'Processed'),(14,1,'Expired');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_total`
--

DROP TABLE IF EXISTS `order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` varchar(255) NOT NULL DEFAULT '',
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1244 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_total`
--

LOCK TABLES `order_total` WRITE;
/*!40000 ALTER TABLE `order_total` DISABLE KEYS */;
INSERT INTO `order_total` VALUES (1243,326,'total','Total:','$576.24','349.6411',8),(1240,326,'sub_total','Sub-Total:','$329.62','200.0000',1),(1241,326,'shipping','UPS Worldwide Express:','$188.94','114.6411',3),(1242,326,'tax','VAT 17.5%:','$57.68','35.0000',5);
/*!40000 ALTER TABLE `order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(5,2) NOT NULL DEFAULT '0.00',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(5,2) NOT NULL DEFAULT '0.00',
  `width` decimal(5,2) NOT NULL DEFAULT '0.00',
  `height` decimal(5,2) NOT NULL DEFAULT '0.00',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (28,'Товар 1','','','',946,7,'data/htc_touch_hd_1.jpg',5,1,'500.0000',200,9,'2009-02-03','146.40',2,'0.00','0.00','0.00',1,1,1,0,1,'2009-02-03 16:06:50','2011-03-28 08:31:42',0),(29,'Товар 2','','','',1000,6,'data/palm_treo_pro_1.jpg',6,1,'279.9900',0,9,'2009-02-03','133.00',2,'0.00','0.00','0.00',3,1,1,0,1,'2009-02-03 16:42:17','2011-03-19 03:55:24',0),(30,'Товар 3','','','',995,6,'data/canon_eos_5d_1.jpg',9,1,'100.0000',0,9,'2009-02-03','0.00',1,'0.00','0.00','0.00',1,1,1,0,1,'2009-02-03 16:59:00','2011-03-19 03:54:10',2),(31,'Товар 4','','','',1000,6,'data/nikon_d300_1.jpg',0,1,'80.0000',0,9,'2009-02-03','0.00',1,'0.00','0.00','0.00',3,1,1,0,1,'2009-02-03 17:00:10','2011-03-19 03:55:17',0),(32,'Товар 5','','','',999,6,'data/ipod_touch_1.jpg',8,1,'100.0000',0,9,'2009-02-03','5.00',1,'0.00','0.00','0.00',1,1,1,0,1,'2009-02-03 17:07:26','2011-03-19 03:56:43',1),(33,'Товар 6','','','',1000,6,'data/samsung_syncmaster_941bw.jpg',0,1,'200.0000',0,9,'2009-02-03','5.00',1,'0.00','0.00','0.00',2,1,1,0,1,'2009-02-03 17:08:31','2011-03-19 03:55:46',3),(34,'Товар 7','','','',1000,6,'data/ipod_shuffle_1.jpg',8,1,'100.0000',0,9,'2009-02-03','5.00',1,'0.00','0.00','0.00',2,1,1,0,1,'2009-02-03 18:07:54','2011-03-19 03:56:35',1),(35,'Товар 8','','','',1000,5,'',0,0,'100.0000',0,9,'2009-02-03','5.00',1,'0.00','0.00','0.00',1,1,1,0,1,'2009-02-03 18:08:31','2011-04-28 01:47:48',0),(36,'Товар 9','','','',995,6,'data/ipod_nano_1.jpg',8,0,'100.0000',0,9,'2009-02-03','5.00',1,'0.00','0.00','0.00',2,1,1,0,1,'2009-02-03 18:09:19','2011-03-19 03:56:26',1),(40,'Товар 11','','','',975,5,'data/iphone_1.jpg',8,1,'101.0000',0,9,'2009-02-03','10.00',1,'0.00','0.00','0.00',1,1,1,0,1,'2009-02-03 21:07:12','2011-03-19 03:55:09',1),(41,'Товар 14','','','',994,5,'data/imac_1.jpg',8,0,'500.0000',0,9,'2009-02-03','0.00',1,'0.00','0.00','0.00',1,1,1,0,1,'2009-02-03 21:07:26','2011-03-19 03:56:14',2),(42,'Товар 15','','','',992,5,'data/apple_cinema_30.jpg',8,1,'100.0000',10,9,'2009-02-04','12.50',5,'1.00','2.00','3.00',2,1,2,0,1,'2009-02-03 21:07:37','2011-05-30 22:12:03',1),(43,'Товар 16','','','',929,5,'data/macbook_1.jpg',8,0,'500.0000',0,9,'2009-02-03','0.00',1,'0.00','0.00','0.00',2,1,1,0,1,'2009-02-03 21:07:49','2011-03-19 03:54:41',7),(44,'Товар 17','','','',1000,5,'data/macbook_air_1.jpg',8,1,'1000.0000',0,9,'2009-02-03','0.00',1,'0.00','0.00','0.00',2,1,1,0,1,'2009-02-03 21:08:00','2011-03-19 03:54:51',0),(45,'Товар 18','','','',998,5,'data/macbook_pro_1.jpg',8,1,'2000.0000',0,9,'2009-02-03','0.00',1,'0.00','0.00','0.00',2,1,1,0,1,'2009-02-03 21:08:17','2011-03-19 03:55:00',0),(46,'Товар 19','','','',1000,5,'data/sony_vaio_1.jpg',10,1,'1000.0000',0,9,'2009-02-03','0.00',1,'0.00','0.00','0.00',2,1,1,0,1,'2009-02-03 21:08:29','2011-03-19 03:55:55',2),(47,'Товар 21','','','',1000,5,'data/hp_1.jpg',7,1,'100.0000',50,9,'2009-02-03','0.00',1,'0.00','0.00','0.00',1,0,2,0,1,'2009-02-03 21:08:40','2011-05-10 01:23:14',0),(48,'Товар 20','test 1','','test 2',995,5,'data/ipod_classic_1.jpg',8,1,'100.0000',0,9,'2009-02-08','1.00',1,'0.00','0.00','0.00',2,1,1,0,1,'2009-02-08 17:21:51','2011-03-19 03:55:39',1),(49,'SAM1','','','',0,8,'data/samsung_tab_1.jpg',0,1,'199.9900',0,9,'2011-04-25','0.00',1,'0.00','0.00','0.00',1,1,1,1,1,'2011-04-26 08:57:34','2011-04-26 09:21:13',11),(64,'Товар 1','','','',946,7,'data/htc_touch_hd_1.jpg',5,1,'500.0000',200,9,'2009-02-03','146.40',2,'0.00','0.00','0.00',1,1,1,0,0,'2011-05-24 23:48:34','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attribute`
--

DROP TABLE IF EXISTS `product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attribute`
--

LOCK TABLES `product_attribute` WRITE;
/*!40000 ALTER TABLE `product_attribute` DISABLE KEYS */;
INSERT INTO `product_attribute` VALUES (43,2,1,'1'),(47,2,1,'4'),(43,4,1,'8гб'),(42,3,1,'100мгц'),(47,4,1,'16ГБ');
/*!40000 ALTER TABLE `product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_description`
--

DROP TABLE IF EXISTS `product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_description` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_description`
--

LOCK TABLES `product_description` WRITE;
/*!40000 ALTER TABLE `product_description` DISABLE KEYS */;
INSERT INTO `product_description` VALUES (35,1,'Товар 8','&lt;p&gt;\r\n	Товар 8&lt;/p&gt;\r\n','',''),(48,1,'iPod Classic','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','',''),(40,1,'iPhone','&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n','',''),(28,1,'HTC Touch HD','&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','',''),(44,1,'MacBook Air','&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n','',''),(45,1,'MacBook Pro','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','',''),(29,1,'Palm Treo Pro','&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','',''),(36,1,'iPod Nano','&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n','',''),(46,1,'Sony VAIO','&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n','',''),(47,1,'HP LP3065','&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n','',''),(32,1,'iPod Touch','&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n','',''),(30,1,'Canon EOS 5D','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Canon&amp;#39;s press material for the EOS 5D states that it &amp;#39;defines (a) new D-SLR category&amp;#39;, while we&amp;#39;re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably &amp;#39;chunkier&amp;#39;). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR&amp;#39;s, an important difference when compared to the latter is that the EOS 5D doesn&amp;#39;t have any environmental seals. While Canon don&amp;#39;t specifically refer to the EOS 5D as a &amp;#39;professional&amp;#39; digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they&amp;#39;ve not bought too many EF-S lenses...)&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','',''),(41,1,'iMac','&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&amp;rsquo;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &amp;rsquo;08, and it&amp;rsquo;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n','',''),(33,1,'Samsung SyncMaster 941BW','&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n','',''),(34,1,'iPod Shuffle','&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n','',''),(43,1,'MacBook','&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n','',''),(31,1,'Nikon D300','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','',''),(49,1,'Samsung Galaxy Tab 10.1','&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&lt;/p&gt;\r\n','',''),(42,1,'Apple Cinema 30&quot;','&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there&amp;#39;s no limit to what you can achieve. &lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it&amp;#39;s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple&amp;#39;s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br /&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170&amp;deg; horizontal; 170&amp;deg; vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br /&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br /&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50&amp;deg; to 95&amp;deg; F (10&amp;deg; to 35&amp;deg; C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40&amp;deg; to 116&amp;deg; F (-40&amp;deg; to 47&amp;deg; C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO &amp;#39;03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br /&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','',''),(64,1,'HTC Touch HD','&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','');
/*!40000 ALTER TABLE `product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_discount`
--

DROP TABLE IF EXISTS `product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_discount`
--

LOCK TABLES `product_discount` WRITE;
/*!40000 ALTER TABLE `product_discount` DISABLE KEYS */;
INSERT INTO `product_discount` VALUES (296,32,6,10,1,'10.0000','2010-01-01','2010-01-31'),(440,42,8,30,1,'66.0000','0000-00-00','0000-00-00'),(439,42,8,20,1,'77.0000','0000-00-00','0000-00-00'),(438,42,8,10,1,'88.0000','0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2318 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (1960,30,'data/canon_eos_5d_2.jpg'),(2219,47,'data/hp_2.jpg'),(2035,28,'data/htc_touch_hd_2.jpg'),(1997,41,'data/imac_2.jpg'),(1982,40,'data/iphone_6.jpg'),(2001,36,'data/ipod_nano_5.jpg'),(2000,36,'data/ipod_nano_4.jpg'),(2005,34,'data/ipod_shuffle_5.jpg'),(2004,34,'data/ipod_shuffle_4.jpg'),(2011,32,'data/ipod_touch_7.jpg'),(2010,32,'data/ipod_touch_6.jpg'),(2009,32,'data/ipod_touch_5.jpg'),(1971,43,'data/macbook_5.jpg'),(1970,43,'data/macbook_4.jpg'),(1974,44,'data/macbook_air_4.jpg'),(1973,44,'data/macbook_air_2.jpg'),(1977,45,'data/macbook_pro_2.jpg'),(1976,45,'data/macbook_pro_3.jpg'),(1986,31,'data/nikon_d300_3.jpg'),(1985,31,'data/nikon_d300_2.jpg'),(1988,29,'data/palm_treo_pro_3.jpg'),(1995,46,'data/sony_vaio_5.jpg'),(1994,46,'data/sony_vaio_4.jpg'),(1991,48,'data/ipod_classic_4.jpg'),(1990,48,'data/ipod_classic_3.jpg'),(1981,40,'data/iphone_2.jpg'),(1980,40,'data/iphone_5.jpg'),(1959,30,'data/canon_eos_5d_3.jpg'),(2218,47,'data/hp_3.jpg'),(2034,28,'data/htc_touch_hd_3.jpg'),(1996,41,'data/imac_3.jpg'),(1979,40,'data/iphone_3.jpg'),(1978,40,'data/iphone_4.jpg'),(1989,48,'data/ipod_classic_2.jpg'),(1999,36,'data/ipod_nano_2.jpg'),(1998,36,'data/ipod_nano_3.jpg'),(2003,34,'data/ipod_shuffle_2.jpg'),(2002,34,'data/ipod_shuffle_3.jpg'),(2008,32,'data/ipod_touch_2.jpg'),(2007,32,'data/ipod_touch_3.jpg'),(2006,32,'data/ipod_touch_4.jpg'),(1969,43,'data/macbook_2.jpg'),(1968,43,'data/macbook_3.jpg'),(1972,44,'data/macbook_air_3.jpg'),(1975,45,'data/macbook_pro_4.jpg'),(1984,31,'data/nikon_d300_4.jpg'),(1983,31,'data/nikon_d300_5.jpg'),(1987,29,'data/palm_treo_pro_2.jpg'),(1993,46,'data/sony_vaio_2.jpg'),(1992,46,'data/sony_vaio_3.jpg'),(2099,49,'data/samsung_tab_2.jpg'),(2098,49,'data/samsung_tab_3.jpg'),(2097,49,'data/samsung_tab_4.jpg'),(2096,49,'data/samsung_tab_5.jpg'),(2095,49,'data/samsung_tab_6.jpg'),(2094,49,'data/samsung_tab_7.jpg'),(2317,42,'data/canon_logo.jpg'),(2316,42,'data/hp_1.jpg'),(2315,42,'data/compaq_presario.jpg'),(2314,42,'data/canon_eos_5d_1.jpg'),(2313,42,'data/canon_eos_5d_2.jpg'),(2275,64,'data/htc_touch_hd_2.jpg'),(2276,64,'data/htc_touch_hd_3.jpg');
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option`
--

DROP TABLE IF EXISTS `product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option`
--

LOCK TABLES `product_option` WRITE;
/*!40000 ALTER TABLE `product_option` DISABLE KEYS */;
INSERT INTO `product_option` VALUES (224,35,11,'',1),(225,47,12,'2011-04-22',1),(223,42,2,'',1),(217,42,5,'',1),(209,42,6,'',1),(218,42,1,'',1),(208,42,4,'test',1),(219,42,8,'2011-02-20',1),(222,42,7,'',1),(221,42,9,'22:25',1),(220,42,10,'2011-02-20 22:25',1);
/*!40000 ALTER TABLE `product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option_value`
--

DROP TABLE IF EXISTS `product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option_value`
--

LOCK TABLES `product_option_value` WRITE;
/*!40000 ALTER TABLE `product_option_value` DISABLE KEYS */;
INSERT INTO `product_option_value` VALUES (1,217,42,5,41,100,0,'1.0000','+',0,'+','1.00000000','+'),(6,218,42,1,31,146,1,'20.0000','+',2,'-','20.00000000','+'),(7,218,42,1,43,300,1,'30.0000','+',3,'+','30.00000000','+'),(5,218,42,1,32,96,1,'10.0000','+',1,'+','10.00000000','+'),(4,217,42,5,39,92,1,'4.0000','+',0,'+','4.00000000','+'),(2,217,42,5,42,200,1,'2.0000','+',0,'+','2.00000000','+'),(3,217,42,5,40,300,0,'3.0000','+',0,'+','3.00000000','+'),(8,223,42,2,23,48,1,'10.0000','+',0,'+','10.00000000','+'),(10,223,42,2,44,2696,1,'30.0000','+',0,'+','30.00000000','+'),(9,223,42,2,24,194,1,'20.0000','+',0,'+','20.00000000','+'),(11,223,42,2,45,3998,1,'40.0000','+',0,'+','40.00000000','+'),(12,224,35,11,46,0,1,'5.0000','+',0,'+','0.00000000','+'),(13,224,35,11,47,10,1,'10.0000','+',0,'+','0.00000000','+'),(14,224,35,11,48,15,1,'15.0000','+',0,'+','0.00000000','+');
/*!40000 ALTER TABLE `product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_related`
--

DROP TABLE IF EXISTS `product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_related`
--

LOCK TABLES `product_related` WRITE;
/*!40000 ALTER TABLE `product_related` DISABLE KEYS */;
INSERT INTO `product_related` VALUES (40,42),(41,42),(42,40),(42,41);
/*!40000 ALTER TABLE `product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reward`
--

DROP TABLE IF EXISTS `product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=517 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reward`
--

LOCK TABLES `product_reward` WRITE;
/*!40000 ALTER TABLE `product_reward` DISABLE KEYS */;
INSERT INTO `product_reward` VALUES (516,42,6,10),(515,42,8,100),(472,47,6,30),(471,47,8,300),(380,28,6,400),(379,28,8,400),(330,43,6,60),(329,43,8,600),(340,29,6,0),(339,29,8,0),(344,48,6,0),(343,48,8,0),(336,40,6,0),(335,40,8,0),(324,30,6,20),(323,30,8,200),(332,44,6,70),(331,44,8,700),(334,45,6,80),(333,45,8,800),(337,31,8,0),(338,31,6,0),(426,35,6,0),(425,35,8,0),(345,33,8,0),(346,33,6,0),(347,46,8,0),(348,46,6,0),(349,41,8,0),(350,41,6,0),(351,36,8,0),(352,36,6,0),(353,34,8,0),(354,34,6,0),(355,32,8,0),(356,32,6,0),(416,49,6,1000),(415,49,8,1000),(496,64,8,400),(495,64,6,400);
/*!40000 ALTER TABLE `product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_special`
--

DROP TABLE IF EXISTS `product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=420 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_special`
--

LOCK TABLES `product_special` WRITE;
/*!40000 ALTER TABLE `product_special` DISABLE KEYS */;
INSERT INTO `product_special` VALUES (419,42,8,1,'90.0000','0000-00-00','0000-00-00'),(391,50,8,1,'90.0000','0000-00-00','0000-00-00'),(359,30,8,2,'90.0000','0000-00-00','0000-00-00'),(358,30,8,1,'80.0000','0000-00-00','0000-00-00'),(390,50,8,1,'50.0000','2010-02-01','2010-02-28'),(392,51,8,1,'90.0000','0000-00-00','0000-00-00'),(397,52,8,1,'90.0000','0000-00-00','0000-00-00'),(396,52,8,1,'50.0000','2010-02-01','2010-02-28'),(393,53,8,1,'90.0000','0000-00-00','0000-00-00'),(399,54,8,1,'90.0000','0000-00-00','0000-00-00'),(398,54,8,1,'50.0000','2010-02-01','2010-02-28'),(400,55,8,1,'90.0000','0000-00-00','0000-00-00'),(395,56,8,1,'90.0000','0000-00-00','0000-00-00'),(394,56,8,1,'50.0000','2010-02-01','2010-02-28');
/*!40000 ALTER TABLE `product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tag`
--

DROP TABLE IF EXISTS `product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_tag` (
  `product_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `tag` varchar(32) NOT NULL,
  PRIMARY KEY (`product_tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=343 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tag`
--

LOCK TABLES `product_tag` WRITE;
/*!40000 ALTER TABLE `product_tag` DISABLE KEYS */;
INSERT INTO `product_tag` VALUES (341,42,1,'тест 1'),(342,42,1,'тест 2');
/*!40000 ALTER TABLE `product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_to_category`
--

DROP TABLE IF EXISTS `product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `main_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_to_category`
--

LOCK TABLES `product_to_category` WRITE;
/*!40000 ALTER TABLE `product_to_category` DISABLE KEYS */;
INSERT INTO `product_to_category` VALUES (28,20,0),(28,24,0),(29,20,0),(29,24,0),(30,20,0),(30,33,0),(31,33,0),(32,34,0),(33,20,0),(33,28,0),(34,34,0),(35,20,0),(36,34,0),(40,20,0),(40,24,0),(41,27,0),(42,20,0),(42,28,0),(43,18,0),(43,20,0),(44,18,0),(44,20,0),(45,18,0),(46,18,0),(46,20,0),(47,18,0),(47,20,0),(48,20,0),(48,34,0),(49,57,0),(64,20,0),(64,24,0);
/*!40000 ALTER TABLE `product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_to_download`
--

DROP TABLE IF EXISTS `product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_to_download`
--

LOCK TABLES `product_to_download` WRITE;
/*!40000 ALTER TABLE `product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_to_layout`
--

DROP TABLE IF EXISTS `product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_to_layout`
--

LOCK TABLES `product_to_layout` WRITE;
/*!40000 ALTER TABLE `product_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_to_store`
--

DROP TABLE IF EXISTS `product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_to_store`
--

LOCK TABLES `product_to_store` WRITE;
/*!40000 ALTER TABLE `product_to_store` DISABLE KEYS */;
INSERT INTO `product_to_store` VALUES (28,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,0),(40,0),(41,0),(42,0),(43,0),(44,0),(45,0),(46,0),(47,0),(48,0),(49,0),(64,0);
/*!40000 ALTER TABLE `product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return`
--

DROP TABLE IF EXISTS `return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_ordered` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return`
--

LOCK TABLES `return` WRITE;
/*!40000 ALTER TABLE `return` DISABLE KEYS */;
/*!40000 ALTER TABLE `return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_action`
--

DROP TABLE IF EXISTS `return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_action`
--

LOCK TABLES `return_action` WRITE;
/*!40000 ALTER TABLE `return_action` DISABLE KEYS */;
INSERT INTO `return_action` VALUES (1,1,'Refunded'),(2,1,'Credit Issued'),(3,1,'Replacement Sent');
/*!40000 ALTER TABLE `return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_history`
--

DROP TABLE IF EXISTS `return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_history`
--

LOCK TABLES `return_history` WRITE;
/*!40000 ALTER TABLE `return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_product`
--

DROP TABLE IF EXISTS `return_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_product` (
  `return_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `return_action_id` int(11) NOT NULL,
  PRIMARY KEY (`return_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_product`
--

LOCK TABLES `return_product` WRITE;
/*!40000 ALTER TABLE `return_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `return_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_reason`
--

DROP TABLE IF EXISTS `return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_reason`
--

LOCK TABLES `return_reason` WRITE;
/*!40000 ALTER TABLE `return_reason` DISABLE KEYS */;
INSERT INTO `return_reason` VALUES (1,1,'Dead On Arrival'),(2,1,'Received Wrong Item'),(3,1,'Order Error'),(4,1,'Faulty, please supply details'),(5,1,'Other, please supply details');
/*!40000 ALTER TABLE `return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_status`
--

DROP TABLE IF EXISTS `return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_status`
--

LOCK TABLES `return_status` WRITE;
/*!40000 ALTER TABLE `return_status` DISABLE KEYS */;
INSERT INTO `return_status` VALUES (1,1,'Pending'),(3,1,'Complete'),(2,1,'Awaiting Products');
/*!40000 ALTER TABLE `return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20611 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (9457,0,'shipping','shipping_sort_order','3',0),(3453,0,'sub_total','sub_total_sort_order','1',0),(3452,0,'sub_total','sub_total_status','1',0),(272,0,'tax','tax_status','1',0),(16013,0,'total','total_sort_order','9',0),(16012,0,'total','total_status','1',0),(273,0,'tax','tax_sort_order','5',0),(19411,0,'free_checkout','free_checkout_sort_order','1',0),(20444,0,'cod','cod_sort_order','5',0),(20440,0,'cod','cod_total','0.01',0),(20441,0,'cod','cod_order_status_id','1',0),(20442,0,'cod','cod_geo_zone_id','0',0),(20443,0,'cod','cod_status','1',0),(9456,0,'shipping','shipping_status','1',0),(9455,0,'shipping','shipping_estimator','1',0),(20608,0,'config','config_google_analytics','',0),(20607,0,'config','config_error_filename','error.txt',0),(20606,0,'config','config_error_log','1',0),(20605,0,'config','config_error_display','1',0),(20604,0,'config','config_compression','0',0),(20603,0,'config','config_encryption','12345',0),(20602,0,'config','config_maintenance','0',0),(20598,0,'config','config_account_mail','0',0),(20599,0,'config','config_alert_emails','',0),(20600,0,'config','config_use_ssl','0',0),(20601,0,'config','config_seo_url','0',0),(13801,0,'coupon','coupon_sort_order','4',0),(13800,0,'coupon','coupon_status','1',0),(20597,0,'config','config_alert_mail','0',0),(20593,0,'config','config_smtp_username','',0),(20594,0,'config','config_smtp_password','',0),(20595,0,'config','config_smtp_port','25',0),(20596,0,'config','config_smtp_timeout','5',0),(20422,0,'flat','flat_sort_order','1',0),(20421,0,'flat','flat_status','1',0),(20420,0,'flat','flat_geo_zone_id','0',0),(20419,0,'flat','flat_tax_class_id','9',0),(20026,0,'carousel','carousel_module','a:1:{i:0;a:9:{s:9:\"banner_id\";s:1:\"8\";s:5:\"limit\";s:1:\"5\";s:6:\"scroll\";s:1:\"3\";s:5:\"width\";s:2:\"80\";s:6:\"height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:2:\"-1\";}}',1),(20036,0,'featured','product','',0),(20037,0,'featured','featured_product','41,40,48,36,34,32',0),(20038,0,'featured','featured_module','a:1:{i:0;a:6:{s:11:\"image_width\";s:2:\"90\";s:12:\"image_height\";s:2:\"90\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(20418,0,'flat','flat_cost','5.00',0),(9444,0,'credit','credit_sort_order','7',0),(9443,0,'credit','credit_status','1',0),(20592,0,'config','config_smtp_host','',0),(20589,0,'config','config_image_cart_height','80',0),(20590,0,'config','config_mail_protocol','mail',0),(20591,0,'config','config_mail_parameter','',0),(20587,0,'config','config_image_wishlist_height','50',0),(20588,0,'config','config_image_cart_width','80',0),(20586,0,'config','config_image_wishlist_width','50',0),(20585,0,'config','config_image_compare_height','90',0),(20584,0,'config','config_image_compare_width','90',0),(18432,0,'reward','reward_sort_order','2',0),(18431,0,'reward','reward_status','1',0),(20583,0,'config','config_image_related_height','80',0),(19721,0,'affiliate','affiliate_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(19927,0,'category','category_module','a:2:{i:0;a:4:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(20582,0,'config','config_image_related_width','80',0),(20581,0,'config','config_image_additional_height','74',0),(19925,0,'account','account_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(20580,0,'config','config_image_additional_width','74',0),(20579,0,'config','config_image_manufacturer_height','80',0),(20578,0,'config','config_image_manufacturer_width','80',0),(20577,0,'config','config_image_category_height','80',0),(20576,0,'config','config_image_category_width','80',0),(20575,0,'config','config_image_product_height','80',0),(20574,0,'config','config_image_product_width','80',0),(20573,0,'config','config_image_popup_height','500',0),(20572,0,'config','config_image_popup_width','500',0),(20571,0,'config','config_image_thumb_height','228',0),(20570,0,'config','config_image_thumb_width','228',0),(20569,0,'config','config_icon','data/cart.png',0),(20568,0,'config','config_logo','data/logo.png',0),(20567,0,'config','config_cart_weight','1',0),(20566,0,'config','config_upload_allowed','jpg, JPG, jpeg, gif, png, txt',0),(20564,0,'config','config_review_status','1',0),(20565,0,'config','config_download','1',0),(20563,0,'config','config_return_status_id','2',0),(20562,0,'config','config_complete_status_id','5',0),(20561,0,'config','config_order_status_id','1',0),(20560,0,'config','config_stock_status_id','5',0),(20559,0,'config','config_stock_checkout','0',0),(20558,0,'config','config_stock_warning','0',0),(20557,0,'config','config_stock_display','0',0),(20556,0,'config','config_commission','5',0),(20555,0,'config','config_affiliate_id','4',0),(20554,0,'config','config_checkout_id','5',0),(20552,0,'config','config_guest_checkout','1',0),(20553,0,'config','config_account_id','3',0),(20551,0,'config','config_customer_approval','0',0),(20550,0,'config','config_customer_price','0',0),(20549,0,'config','config_customer_group_id','8',0),(16017,0,'voucher','voucher_sort_order','8',0),(16016,0,'voucher','voucher_status','1',0),(20543,0,'config','config_length_class_id','1',0),(20548,0,'config','config_invoice_prefix','INV-2011-00',0),(20547,0,'config','config_tax','1',0),(20546,0,'config','config_admin_limit','20',0),(20545,0,'config','config_catalog_limit','15',0),(19410,0,'free_checkout','free_checkout_status','1',0),(19409,0,'free_checkout','free_checkout_order_status_id','1',0),(20544,0,'config','config_weight_class_id','1',0),(20542,0,'config','config_currency_auto','1',0),(20541,0,'config','config_currency','USD',0),(20029,0,'slideshow','slideshow_module','a:1:{i:0;a:7:{s:9:\"banner_id\";s:1:\"7\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:3:\"280\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(20030,0,'banner','banner_module','a:1:{i:0;a:7:{s:9:\"banner_id\";s:1:\"6\";s:5:\"width\";s:3:\"182\";s:6:\"height\";s:3:\"182\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}}',1),(20527,0,'config','config_name','Мой Магазин',0),(20528,0,'config','config_owner','Мое Имя',0),(20529,0,'config','config_address','Адрес',0),(20609,0,'config','config_email','admin@evideo.org.ua',0),(20531,0,'config','config_telephone','74951234567',0),(20532,0,'config','config_fax','',0),(20533,0,'config','config_title','Мой Магазин',0),(20534,0,'config','config_meta_description','Мой Магазин',0),(20535,0,'config','config_template','default',0),(20536,0,'config','config_layout_id','4',0),(20537,0,'config','config_country_id','176',0),(20538,0,'config','config_zone_id','2761',0),(20539,0,'config','config_language','ru',0),(20540,0,'config','config_admin_language','ru',0),(20610,0,'config','config_url','http://evideo.org.ua/',0);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_status`
--

DROP TABLE IF EXISTS `stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_status`
--

LOCK TABLES `stock_status` WRITE;
/*!40000 ALTER TABLE `stock_status` DISABLE KEYS */;
INSERT INTO `stock_status` VALUES (7,1,'В наличии'),(8,1,'Предзаказ'),(5,1,'Нет в наличии'),(6,1,'Ожидание 2-3 дня');
/*!40000 ALTER TABLE `stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_class`
--

LOCK TABLES `tax_class` WRITE;
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;
INSERT INTO `tax_class` VALUES (9,'Налоги','Облагаемые налогом','2009-01-06 23:21:53','2011-03-09 21:17:10');
/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rate`
--

DROP TABLE IF EXISTS `tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `rate` decimal(7,4) NOT NULL DEFAULT '0.0000',
  `description` varchar(255) NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rate`
--

LOCK TABLES `tax_rate` WRITE;
/*!40000 ALTER TABLE `tax_rate` DISABLE KEYS */;
INSERT INTO `tax_rate` VALUES (86,3,9,1,'18.0000','НДС 18%','0000-00-00 00:00:00','2011-03-09 21:17:10');
/*!40000 ALTER TABLE `tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url_alias`
--

DROP TABLE IF EXISTS `url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`)
) ENGINE=MyISAM AUTO_INCREMENT=769 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url_alias`
--

LOCK TABLES `url_alias` WRITE;
/*!40000 ALTER TABLE `url_alias` DISABLE KEYS */;
INSERT INTO `url_alias` VALUES (704,'product_id=48','ipod_classic'),(766,'category_id=20','desktops'),(503,'category_id=26','pc'),(505,'category_id=27','mac'),(730,'manufacturer_id=8','apple'),(732,'information_id=4','about_us'),(768,'product_id=42','test'),(767,'category_id=34','mp3-players'),(536,'category_id=36','Normal');
/*!40000 ALTER TABLE `url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(96) NOT NULL DEFAULT '',
  `code` varchar(32) NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'admin','dfd8095ece5b9bbb4dae960c4b5e2438','','','admin@evideo.org.ua','','37.221.135.10',1,'2012-10-17 22:47:10');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` VALUES (1,'Главный администратор','a:2:{s:6:\"access\";a:131:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:19:\"catalog/information\";i:5;s:20:\"catalog/manufacturer\";i:6;s:14:\"catalog/option\";i:7;s:15:\"catalog/product\";i:8;s:14:\"catalog/review\";i:9;s:18:\"common/filemanager\";i:10;s:13:\"design/banner\";i:11;s:13:\"design/layout\";i:12;s:11:\"design/menu\";i:13;s:14:\"extension/feed\";i:14;s:16:\"extension/module\";i:15;s:17:\"extension/payment\";i:16;s:18:\"extension/shipping\";i:17;s:15:\"extension/total\";i:18;s:16:\"feed/google_base\";i:19;s:19:\"feed/google_sitemap\";i:20;s:20:\"localisation/country\";i:21;s:21:\"localisation/currency\";i:22;s:21:\"localisation/geo_zone\";i:23;s:21:\"localisation/language\";i:24;s:25:\"localisation/length_class\";i:25;s:25:\"localisation/order_status\";i:26;s:26:\"localisation/return_action\";i:27;s:26:\"localisation/return_reason\";i:28;s:26:\"localisation/return_status\";i:29;s:25:\"localisation/stock_status\";i:30;s:22:\"localisation/tax_class\";i:31;s:25:\"localisation/weight_class\";i:32;s:17:\"localisation/zone\";i:33;s:14:\"module/account\";i:34;s:16:\"module/affiliate\";i:35;s:13:\"module/banner\";i:36;s:17:\"module/bestseller\";i:37;s:15:\"module/category\";i:38;s:15:\"module/featured\";i:39;s:18:\"module/google_talk\";i:40;s:18:\"module/information\";i:41;s:13:\"module/latest\";i:42;s:19:\"module/manufacturer\";i:43;s:16:\"module/slideshow\";i:44;s:14:\"module/special\";i:45;s:12:\"module/store\";i:46;s:14:\"module/welcome\";i:47;s:16:\"payment/alertpay\";i:48;s:24:\"payment/authorizenet_aim\";i:49;s:21:\"payment/bank_transfer\";i:50;s:14:\"payment/cheque\";i:51;s:11:\"payment/cod\";i:52;s:21:\"payment/free_checkout\";i:53;s:14:\"payment/liqpay\";i:54;s:20:\"payment/moneybookers\";i:55;s:14:\"payment/nochex\";i:56;s:15:\"payment/paymate\";i:57;s:16:\"payment/paypoint\";i:58;s:26:\"payment/perpetual_payments\";i:59;s:14:\"payment/pp_pro\";i:60;s:17:\"payment/pp_pro_uk\";i:61;s:19:\"payment/pp_standard\";i:62;s:15:\"payment/sagepay\";i:63;s:22:\"payment/sagepay_direct\";i:64;s:18:\"payment/sagepay_us\";i:65;s:19:\"payment/twocheckout\";i:66;s:16:\"payment/worldpay\";i:67;s:16:\"report/purchased\";i:68;s:11:\"report/sale\";i:69;s:13:\"report/viewed\";i:70;s:14:\"sale/affiliate\";i:71;s:12:\"sale/contact\";i:72;s:11:\"sale/coupon\";i:73;s:13:\"sale/customer\";i:74;s:19:\"sale/customer_group\";i:75;s:10:\"sale/order\";i:76;s:11:\"sale/return\";i:77;s:12:\"sale/voucher\";i:78;s:18:\"sale/voucher_theme\";i:79;s:15:\"setting/setting\";i:80;s:13:\"setting/store\";i:81;s:17:\"shipping/citylink\";i:82;s:13:\"shipping/flat\";i:83;s:13:\"shipping/free\";i:84;s:13:\"shipping/item\";i:85;s:23:\"shipping/parcelforce_48\";i:86;s:15:\"shipping/pickup\";i:87;s:19:\"shipping/royal_mail\";i:88;s:12:\"shipping/ups\";i:89;s:13:\"shipping/usps\";i:90;s:15:\"shipping/weight\";i:91;s:11:\"tool/backup\";i:92;s:14:\"tool/error_log\";i:93;s:12:\"total/coupon\";i:94;s:12:\"total/credit\";i:95;s:14:\"total/handling\";i:96;s:19:\"total/low_order_fee\";i:97;s:12:\"total/reward\";i:98;s:14:\"total/shipping\";i:99;s:15:\"total/sub_total\";i:100;s:9:\"total/tax\";i:101;s:11:\"total/total\";i:102;s:13:\"total/voucher\";i:103;s:9:\"user/user\";i:104;s:20:\"user/user_permission\";i:105;s:19:\"shipping/royal_mail\";i:106;s:12:\"shipping/ups\";i:107;s:12:\"shipping/ups\";i:108;s:13:\"shipping/usps\";i:109;s:19:\"payment/pp_standard\";i:110;s:19:\"payment/pp_standard\";i:111;s:19:\"payment/pp_standard\";i:112;s:21:\"payment/free_checkout\";i:113;s:16:\"payment/alertpay\";i:114;s:24:\"payment/authorizenet_aim\";i:115;s:21:\"payment/bank_transfer\";i:116;s:14:\"payment/cheque\";i:117;s:14:\"payment/liqpay\";i:118;s:20:\"payment/moneybookers\";i:119;s:14:\"payment/nochex\";i:120;s:15:\"payment/paymate\";i:121;s:16:\"payment/paypoint\";i:122;s:26:\"payment/perpetual_payments\";i:123;s:17:\"payment/pp_pro_uk\";i:124;s:14:\"payment/pp_pro\";i:125;s:19:\"payment/pp_standard\";i:126;s:15:\"payment/sagepay\";i:127;s:16:\"payment/worldpay\";i:128;s:19:\"payment/twocheckout\";i:129;s:18:\"payment/sagepay_us\";i:130;s:22:\"payment/sagepay_direct\";}s:6:\"modify\";a:131:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:19:\"catalog/information\";i:5;s:20:\"catalog/manufacturer\";i:6;s:14:\"catalog/option\";i:7;s:15:\"catalog/product\";i:8;s:14:\"catalog/review\";i:9;s:18:\"common/filemanager\";i:10;s:13:\"design/banner\";i:11;s:13:\"design/layout\";i:12;s:11:\"design/menu\";i:13;s:14:\"extension/feed\";i:14;s:16:\"extension/module\";i:15;s:17:\"extension/payment\";i:16;s:18:\"extension/shipping\";i:17;s:15:\"extension/total\";i:18;s:16:\"feed/google_base\";i:19;s:19:\"feed/google_sitemap\";i:20;s:20:\"localisation/country\";i:21;s:21:\"localisation/currency\";i:22;s:21:\"localisation/geo_zone\";i:23;s:21:\"localisation/language\";i:24;s:25:\"localisation/length_class\";i:25;s:25:\"localisation/order_status\";i:26;s:26:\"localisation/return_action\";i:27;s:26:\"localisation/return_reason\";i:28;s:26:\"localisation/return_status\";i:29;s:25:\"localisation/stock_status\";i:30;s:22:\"localisation/tax_class\";i:31;s:25:\"localisation/weight_class\";i:32;s:17:\"localisation/zone\";i:33;s:14:\"module/account\";i:34;s:16:\"module/affiliate\";i:35;s:13:\"module/banner\";i:36;s:17:\"module/bestseller\";i:37;s:15:\"module/category\";i:38;s:15:\"module/featured\";i:39;s:18:\"module/google_talk\";i:40;s:18:\"module/information\";i:41;s:13:\"module/latest\";i:42;s:19:\"module/manufacturer\";i:43;s:16:\"module/slideshow\";i:44;s:14:\"module/special\";i:45;s:12:\"module/store\";i:46;s:14:\"module/welcome\";i:47;s:16:\"payment/alertpay\";i:48;s:24:\"payment/authorizenet_aim\";i:49;s:21:\"payment/bank_transfer\";i:50;s:14:\"payment/cheque\";i:51;s:11:\"payment/cod\";i:52;s:21:\"payment/free_checkout\";i:53;s:14:\"payment/liqpay\";i:54;s:20:\"payment/moneybookers\";i:55;s:14:\"payment/nochex\";i:56;s:15:\"payment/paymate\";i:57;s:16:\"payment/paypoint\";i:58;s:26:\"payment/perpetual_payments\";i:59;s:14:\"payment/pp_pro\";i:60;s:17:\"payment/pp_pro_uk\";i:61;s:19:\"payment/pp_standard\";i:62;s:15:\"payment/sagepay\";i:63;s:22:\"payment/sagepay_direct\";i:64;s:18:\"payment/sagepay_us\";i:65;s:19:\"payment/twocheckout\";i:66;s:16:\"payment/worldpay\";i:67;s:16:\"report/purchased\";i:68;s:11:\"report/sale\";i:69;s:13:\"report/viewed\";i:70;s:14:\"sale/affiliate\";i:71;s:12:\"sale/contact\";i:72;s:11:\"sale/coupon\";i:73;s:13:\"sale/customer\";i:74;s:19:\"sale/customer_group\";i:75;s:10:\"sale/order\";i:76;s:11:\"sale/return\";i:77;s:12:\"sale/voucher\";i:78;s:18:\"sale/voucher_theme\";i:79;s:15:\"setting/setting\";i:80;s:13:\"setting/store\";i:81;s:17:\"shipping/citylink\";i:82;s:13:\"shipping/flat\";i:83;s:13:\"shipping/free\";i:84;s:13:\"shipping/item\";i:85;s:23:\"shipping/parcelforce_48\";i:86;s:15:\"shipping/pickup\";i:87;s:19:\"shipping/royal_mail\";i:88;s:12:\"shipping/ups\";i:89;s:13:\"shipping/usps\";i:90;s:15:\"shipping/weight\";i:91;s:11:\"tool/backup\";i:92;s:14:\"tool/error_log\";i:93;s:12:\"total/coupon\";i:94;s:12:\"total/credit\";i:95;s:14:\"total/handling\";i:96;s:19:\"total/low_order_fee\";i:97;s:12:\"total/reward\";i:98;s:14:\"total/shipping\";i:99;s:15:\"total/sub_total\";i:100;s:9:\"total/tax\";i:101;s:11:\"total/total\";i:102;s:13:\"total/voucher\";i:103;s:9:\"user/user\";i:104;s:20:\"user/user_permission\";i:105;s:19:\"shipping/royal_mail\";i:106;s:12:\"shipping/ups\";i:107;s:12:\"shipping/ups\";i:108;s:13:\"shipping/usps\";i:109;s:19:\"payment/pp_standard\";i:110;s:19:\"payment/pp_standard\";i:111;s:19:\"payment/pp_standard\";i:112;s:21:\"payment/free_checkout\";i:113;s:16:\"payment/alertpay\";i:114;s:24:\"payment/authorizenet_aim\";i:115;s:21:\"payment/bank_transfer\";i:116;s:14:\"payment/cheque\";i:117;s:14:\"payment/liqpay\";i:118;s:20:\"payment/moneybookers\";i:119;s:14:\"payment/nochex\";i:120;s:15:\"payment/paymate\";i:121;s:16:\"payment/paypoint\";i:122;s:26:\"payment/perpetual_payments\";i:123;s:17:\"payment/pp_pro_uk\";i:124;s:14:\"payment/pp_pro\";i:125;s:19:\"payment/pp_standard\";i:126;s:15:\"payment/sagepay\";i:127;s:16:\"payment/worldpay\";i:128;s:19:\"payment/twocheckout\";i:129;s:18:\"payment/sagepay_us\";i:130;s:22:\"payment/sagepay_direct\";}}'),(10,'Демонстрация','');
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_history`
--

DROP TABLE IF EXISTS `voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_history`
--

LOCK TABLES `voucher_history` WRITE;
/*!40000 ALTER TABLE `voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_theme`
--

DROP TABLE IF EXISTS `voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_theme`
--

LOCK TABLES `voucher_theme` WRITE;
/*!40000 ALTER TABLE `voucher_theme` DISABLE KEYS */;
INSERT INTO `voucher_theme` VALUES (8,'data/canon_eos_5d_2.jpg'),(7,'data/gift-voucher-birthday.jpg'),(6,'data/apple_logo.jpg');
/*!40000 ALTER TABLE `voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_theme_description`
--

DROP TABLE IF EXISTS `voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_theme_description`
--

LOCK TABLES `voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `voucher_theme_description` DISABLE KEYS */;
INSERT INTO `voucher_theme_description` VALUES (6,1,'Рождество'),(7,1,'День рождения'),(8,1,'Основной');
/*!40000 ALTER TABLE `voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weight_class`
--

DROP TABLE IF EXISTS `weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_class`
--

LOCK TABLES `weight_class` WRITE;
/*!40000 ALTER TABLE `weight_class` DISABLE KEYS */;
INSERT INTO `weight_class` VALUES (1,'1.00000000'),(2,'1000.00000000');
/*!40000 ALTER TABLE `weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weight_class_description`
--

DROP TABLE IF EXISTS `weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL DEFAULT '',
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_class_description`
--

LOCK TABLES `weight_class_description` WRITE;
/*!40000 ALTER TABLE `weight_class_description` DISABLE KEYS */;
INSERT INTO `weight_class_description` VALUES (1,1,'Килограммы','кг'),(2,1,'Граммы','г');
/*!40000 ALTER TABLE `weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3956 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT INTO `zone` VALUES (1,1,'BDS','Бадахшан',1),(2,1,'BDG','Бадгис',1),(3,1,'BGL','Баглан',1),(4,1,'BAL','Балх',1),(5,1,'BAM','Бамиан',1),(6,1,'FRA','Фарах',1),(7,1,'FYB','Фарьяб',1),(8,1,'GHA','Газни',1),(9,1,'GHO','Гор',1),(10,1,'HEL','Гильменд',1),(11,1,'HER','Герат',1),(12,1,'JOW','Джаузджан',1),(13,1,'KAB','Кабул',1),(14,1,'KAN','Кандагар',1),(15,1,'KAP','Каписа',1),(16,1,'KHO','Хост',1),(17,1,'KNR','Кунар',1),(18,1,'KDZ','Кундуз',1),(19,1,'LAG','Лагман',1),(20,1,'LOW','Логар',1),(21,1,'NAN','Нангархар',1),(22,1,'NIM','Нимроз',1),(23,1,'NUR','Нуристан',1),(24,1,'ORU','Урузган',1),(25,1,'PIA','Пактия',1),(26,1,'PKA','Пактика',1),(27,1,'PAR','Парван',1),(28,1,'SAM','Саманган',1),(29,1,'SAR','Сари-Пуль',1),(30,1,'TAK','Тахар',1),(31,1,'WAR','Вардак',1),(32,1,'ZAB','Забуль',1),(33,2,'BR','Берат',1),(34,2,'BU','Булькиза',1),(35,2,'DL','Дельвина',1),(36,2,'DV','Девол',1),(37,2,'DI','Дибра',1),(38,2,'DR','Дуррес',1),(39,2,'EL','Эльбасан',1),(40,2,'ER','Колёня',1),(41,2,'FR','Фиери',1),(42,2,'GJ','Гирокастра',1),(43,2,'GR','Грамши',1),(44,2,'HA','Хас',1),(45,2,'KA','Кавая',1),(46,2,'KB','Курбин',1),(47,2,'KC','Кучова',1),(48,2,'KO','Корча',1),(49,2,'KR','Круя',1),(50,2,'KU','Кукес',1),(51,2,'LB','Либражди',1),(52,2,'LE','Лежа',1),(53,2,'LU','Люшня',1),(54,2,'MM','Мальси-э-Мади',1),(55,2,'MK','Малакастра',1),(56,2,'MT','Мати',1),(57,2,'MR','Мирдита',1),(58,2,'PQ','Пекини',1),(59,2,'PR','Пермети',1),(60,2,'PG','Поградец',1),(61,2,'PU','Пука',1),(62,2,'SH','Шкодер',1),(63,2,'SK','Скрапари',1),(64,2,'SR','Саранда',1),(65,2,'TE','Тепелена',1),(66,2,'TP','Тропоя',1),(67,2,'TR','Тирана',1),(68,2,'VL','Влёра',1),(69,3,'ADR','Адрар',1),(70,3,'ADE','Айн-Дефла',1),(71,3,'ATE','Айн-Темухент',1),(72,3,'ALG','Алжир',1),(73,3,'ANN','Аннаба',1),(74,3,'BAT','Батна',1),(75,3,'BEC','Бешар',1),(76,3,'BEJ','Беджая',1),(77,3,'BIS','Бискра',1),(78,3,'BLI','Блида',1),(79,3,'BBA','Бордж-Бу-Арреридж',1),(80,3,'BOA','Буйра',1),(81,3,'BMD','Бумердес',1),(82,3,'CHL','Шлеф',1),(83,3,'CON','Константина',1),(84,3,'DJE','Джельфа',1),(85,3,'EBA','Эль-Баяд',1),(86,3,'EOU','Эль-Уэд',1),(87,3,'ETA','Эль-Тарф',1),(88,3,'GHA','Гардая',1),(89,3,'GUE','Гуэльма',1),(90,3,'ILL','Иллизи',1),(91,3,'JIJ','Джиджель',1),(92,3,'KHE','Хеншела',1),(93,3,'LAG','Лагуат',1),(94,3,'MUA','Маскара',1),(95,3,'MED','Медеа',1),(96,3,'MIL','Мила',1),(97,3,'MOS','Мостаганем',1),(98,3,'MSI','Мсила',1),(99,3,'NAA','Наама',1),(100,3,'ORA','Оран',1),(101,3,'OUA','Уаргла',1),(102,3,'OEB','Ум Эль-Буахи',1),(103,3,'REL','Релизан',1),(104,3,'SAI','Саида',1),(105,3,'SET','Сетиф',1),(106,3,'SBA','Сиди-Бель-Аббес',1),(107,3,'SKI','Скикда',1),(108,3,'SAH','Сук-Ахрас',1),(109,3,'TAM','Таменрассет',1),(110,3,'TEB','Тебесса',1),(111,3,'TIA','Тиарет',1),(112,3,'TIN','Тиндуф',1),(113,3,'TIP','Типаза',1),(114,3,'TIS','Тиссемсилт',1),(115,3,'TOU','Тизи-Узу',1),(116,3,'TLE','Тлемсен',1),(117,4,'E','Восточный округ',1),(118,4,'M','Мануа',1),(119,4,'R','Остров Роз',1),(120,4,'S','Остров Суэйнс',1),(121,4,'W','Западный округ',1),(122,5,'ALV','Андорра-ла-Велья',1),(123,5,'CAN','Канильо',1),(124,5,'ENC','Энкамп',1),(125,5,'ESE','Эскальдес-Энгордань',1),(126,5,'LMA','Ла-Массана',1),(127,5,'ORD','Ордино',1),(128,5,'SJL','Сант-Жулия-де-Лория',1),(129,6,'BGO','Бенго',1),(130,6,'BGU','Бенгела',1),(131,6,'BIE','Бие',1),(132,6,'CAB','Кабинда',1),(133,6,'CCU','Квандо-Кубанго',1),(134,6,'CNO','Северная Кванза',1),(135,6,'CUS','Южная Кванза',1),(136,6,'CNN','Кунене',1),(137,6,'HUA','Уамбо',1),(138,6,'HUI','Уила',1),(139,6,'LUA','Луанда',1),(140,6,'LNO','Северная Лунда',1),(141,6,'LSU','Южная Лунда',1),(142,6,'MAL','Маланже',1),(143,6,'MOX','Мошико',1),(144,6,'NAM','Намибе',1),(145,6,'UIG','Уиже',1),(146,6,'ZAI','Заире',1),(147,9,'ASG','Сент-Джордж',1),(148,9,'ASJ','Сент-Джон',1),(149,9,'ASM','Сент-Мери',1),(150,9,'ASL','Сент-Пол',1),(151,9,'ASR','Сент-Петер',1),(152,9,'ASH','Сент-Филип',1),(153,9,'BAR','Барбуда',1),(154,9,'RED','Редонда',1),(155,10,'AN','Антарктида и острова Южной Атлантики',1),(156,10,'BA','Буэнос-Айрес',1),(157,10,'CA','Катамарка',1),(158,10,'CH','Чако',1),(159,10,'CU','Чубут',1),(160,10,'CO','Кордова',1),(161,10,'CR','Корриентес',1),(162,10,'DF','Федеральный округ',1),(163,10,'ER','Энтре-Риос',1),(164,10,'FO','Формоса',1),(165,10,'JU','Жужуй',1),(166,10,'LP','Ла-Пампа',1),(167,10,'LR','Ла-Риоха',1),(168,10,'ME','Мендоса',1),(169,10,'MI','Мисьонес',1),(170,10,'NE','Неукен',1),(171,10,'RN','Рио-Негро',1),(172,10,'SA','Сальта',1),(173,10,'SJ','Сан-Хуан',1),(174,10,'SL','Сан-Луис',1),(175,10,'SC','Санта-Крус',1),(176,10,'SF','Санта-Фе',1),(177,10,'SD','Сантьяго-дель-Эстеро',1),(178,10,'TF','Тьерра-дель-Фуэго',1),(179,10,'TU','Тукуман',1),(180,11,'AGT','Арагацотн',1),(181,11,'ARR','Арарат',1),(182,11,'ARM','Армавир',1),(183,11,'GEG','Гегаркуник',1),(184,11,'KOT','Котайк',1),(185,11,'LOR','Лори',1),(186,11,'SHI','Ширак',1),(187,11,'SYU','Сюник',1),(188,11,'TAV','Тавуш',1),(189,11,'VAY','Вайоц Дзор',1),(190,11,'YER','Ереван',1),(191,13,'ACT','Австралийская столичная территория',1),(192,13,'NSW','Новый Южный Уэльс',1),(193,13,'NT','Северная территория',1),(194,13,'QLD','Квинсленд',1),(195,13,'SA','Южная Австралия',1),(196,13,'TAS','Тасмания',1),(197,13,'VIC','Виктория',1),(198,13,'WA','Западная Австралия',1),(199,14,'BUR','Бургенланд',1),(200,14,'KAR','Каринтия',1),(201,14,'NOS','Нижняя Австрия',1),(202,14,'OOS','Верхняя Австрия',1),(203,14,'SAL','Зальцбург',1),(204,14,'STE','Штирия',1),(205,14,'TIR','Тироль',1),(206,14,'VOR','Форарльберг',1),(207,14,'WIE','Вена',1),(208,15,'AB','Ali Bayramli',1),(209,15,'ABS','Abseron',1),(210,15,'AGC','AgcabAdi',1),(211,15,'AGM','Agdam',1),(212,15,'AGS','Agdas',1),(213,15,'AGA','Agstafa',1),(214,15,'AGU','Agsu',1),(215,15,'AST','Astara',1),(216,15,'BA','Baki',1),(217,15,'BAB','BabAk',1),(218,15,'BAL','BalakAn',1),(219,15,'BAR','BArdA',1),(220,15,'BEY','Beylaqan',1),(221,15,'BIL','Bilasuvar',1),(222,15,'CAB','Cabrayil',1),(223,15,'CAL','Calilabab',1),(224,15,'CUL','Culfa',1),(225,15,'DAS','Daskasan',1),(226,15,'DAV','Davaci',1),(227,15,'FUZ','Fuzuli',1),(228,15,'GA','Ganca',1),(229,15,'GAD','Gadabay',1),(230,15,'GOR','Goranboy',1),(231,15,'GOY','Goycay',1),(232,15,'HAC','Haciqabul',1),(233,15,'IMI','Imisli',1),(234,15,'ISM','Ismayilli',1),(235,15,'KAL','Kalbacar',1),(236,15,'KUR','Kurdamir',1),(237,15,'LA','Lankaran',1),(238,15,'LAC','Lacin',1),(239,15,'LAN','Lankaran',1),(240,15,'LER','Lerik',1),(241,15,'MAS','Masalli',1),(242,15,'MI','Mingacevir',1),(243,15,'NA','Naftalan',1),(244,15,'NEF','Neftcala',1),(245,15,'OGU','Oguz',1),(246,15,'ORD','Ordubad',1),(247,15,'QAB','Qabala',1),(248,15,'QAX','Qax',1),(249,15,'QAZ','Qazax',1),(250,15,'QOB','Qobustan',1),(251,15,'QBA','Quba',1),(252,15,'QBI','Qubadli',1),(253,15,'QUS','Qusar',1),(254,15,'SA','Saki',1),(255,15,'SAT','Saatli',1),(256,15,'SAB','Sabirabad',1),(257,15,'SAD','Sadarak',1),(258,15,'SAH','Sahbuz',1),(259,15,'SAK','Saki',1),(260,15,'SAL','Salyan',1),(261,15,'SM','Sumqayit',1),(262,15,'SMI','Samaxi',1),(263,15,'SKR','Samkir',1),(264,15,'SMX','Samux',1),(265,15,'SAR','Sarur',1),(266,15,'SIY','Siyazan',1),(267,15,'SS','Susa',1),(268,15,'SUS','Susa',1),(269,15,'TAR','Tartar',1),(270,15,'TOV','Tovuz',1),(271,15,'UCA','Ucar',1),(272,15,'XA','Xankandi',1),(273,15,'XAC','Xacmaz',1),(274,15,'XAN','Xanlar',1),(275,15,'XIZ','Xizi',1),(276,15,'XCI','Xocali',1),(277,15,'XVD','Xocavand',1),(278,15,'YAR','Yardimli',1),(279,15,'YEV','Yevlax',1),(280,15,'ZAN','Zangilan',1),(281,15,'ZAQ','Zaqatala',1),(282,15,'ZAR','Zardab',1),(283,15,'NX','Naxcivan',1),(284,16,'ACK','Acklins',1),(285,16,'BER','Berry Islands',1),(286,16,'BIM','Bimini',1),(287,16,'BLK','Black Point',1),(288,16,'CAT','Cat Island',1),(289,16,'CAB','Central Abaco',1),(290,16,'CAN','Central Andros',1),(291,16,'CEL','Central Eleuthera',1),(292,16,'FRE','City of Freeport',1),(293,16,'CRO','Crooked Island',1),(294,16,'EGB','East Grand Bahama',1),(295,16,'EXU','Exuma',1),(296,16,'GRD','Grand Cay',1),(297,16,'HAR','Harbour Island',1),(298,16,'HOP','Hope Town',1),(299,16,'INA','Inagua',1),(300,16,'LNG','Long Island',1),(301,16,'MAN','Mangrove Cay',1),(302,16,'MAY','Mayaguana',1),(303,16,'MOO','Moore\'s Island',1),(304,16,'NAB','North Abaco',1),(305,16,'NAN','North Andros',1),(306,16,'NEL','North Eleuthera',1),(307,16,'RAG','Ragged Island',1),(308,16,'RUM','Rum Cay',1),(309,16,'SAL','San Salvador',1),(310,16,'SAB','South Abaco',1),(311,16,'SAN','South Andros',1),(312,16,'SEL','South Eleuthera',1),(313,16,'SWE','Spanish Wells',1),(314,16,'WGB','West Grand Bahama',1),(315,17,'CAP','Capital',1),(316,17,'CEN','Central',1),(317,17,'MUH','Muharraq',1),(318,17,'NOR','Northern',1),(319,17,'SOU','Southern',1),(320,18,'BAR','Barisal',1),(321,18,'CHI','Chittagong',1),(322,18,'DHA','Dhaka',1),(323,18,'KHU','Khulna',1),(324,18,'RAJ','Rajshahi',1),(325,18,'SYL','Sylhet',1),(326,19,'CC','Christ Church',1),(327,19,'AND','Saint Andrew',1),(328,19,'GEO','Saint George',1),(329,19,'JAM','Saint James',1),(330,19,'JOH','Saint John',1),(331,19,'JOS','Saint Joseph',1),(332,19,'LUC','Saint Lucy',1),(333,19,'MIC','Saint Michael',1),(334,19,'PET','Saint Peter',1),(335,19,'PHI','Saint Philip',1),(336,19,'THO','Saint Thomas',1),(337,20,'BR','Брест',1),(338,20,'HO','Гомель',1),(339,20,'HM','Минск',1),(340,20,'HR','Гродно',1),(341,20,'MA','Могилев',1),(342,20,'MI','Минская область',1),(343,20,'VI','Витебск',1),(344,21,'VAN','Antwerpen',1),(345,21,'WBR','Brabant Wallon',1),(346,21,'WHT','Hainaut',1),(347,21,'WLG','Liege',1),(348,21,'VLI','Limburg',1),(349,21,'WLX','Luxembourg',1),(350,21,'WNA','Namur',1),(351,21,'VOV','Oost-Vlaanderen',1),(352,21,'VBR','Vlaams Brabant',1),(353,21,'VWV','West-Vlaanderen',1),(354,22,'BZ','Belize',1),(355,22,'CY','Cayo',1),(356,22,'CR','Corozal',1),(357,22,'OW','Orange Walk',1),(358,22,'SC','Stann Creek',1),(359,22,'TO','Toledo',1),(360,23,'AL','Alibori',1),(361,23,'AK','Atakora',1),(362,23,'AQ','Atlantique',1),(363,23,'BO','Borgou',1),(364,23,'CO','Collines',1),(365,23,'DO','Donga',1),(366,23,'KO','Kouffo',1),(367,23,'LI','Littoral',1),(368,23,'MO','Mono',1),(369,23,'OU','Oueme',1),(370,23,'PL','Plateau',1),(371,23,'ZO','Zou',1),(372,24,'DS','Devonshire',1),(373,24,'HC','Hamilton City',1),(374,24,'HA','Hamilton',1),(375,24,'PG','Paget',1),(376,24,'PB','Pembroke',1),(377,24,'GC','Saint George City',1),(378,24,'SG','Saint George\'s',1),(379,24,'SA','Sandys',1),(380,24,'SM','Smith\'s',1),(381,24,'SH','Southampton',1),(382,24,'WA','Warwick',1),(383,25,'BUM','Bumthang',1),(384,25,'CHU','Chukha',1),(385,25,'DAG','Dagana',1),(386,25,'GAS','Gasa',1),(387,25,'HAA','Haa',1),(388,25,'LHU','Lhuntse',1),(389,25,'MON','Mongar',1),(390,25,'PAR','Paro',1),(391,25,'PEM','Pemagatshel',1),(392,25,'PUN','Punakha',1),(393,25,'SJO','Samdrup Jongkhar',1),(394,25,'SAT','Samtse',1),(395,25,'SAR','Sarpang',1),(396,25,'THI','Thimphu',1),(397,25,'TRG','Trashigang',1),(398,25,'TRY','Trashiyangste',1),(399,25,'TRO','Trongsa',1),(400,25,'TSI','Tsirang',1),(401,25,'WPH','Wangdue Phodrang',1),(402,25,'ZHE','Zhemgang',1),(403,26,'BEN','Beni',1),(404,26,'CHU','Chuquisaca',1),(405,26,'COC','Cochabamba',1),(406,26,'LPZ','La Paz',1),(407,26,'ORU','Oruro',1),(408,26,'PAN','Pando',1),(409,26,'POT','Potosi',1),(410,26,'SCZ','Santa Cruz',1),(411,26,'TAR','Tarija',1),(412,27,'BRO','Brcko district',1),(413,27,'FUS','Unsko-Sanski Kanton',1),(414,27,'FPO','Posavski Kanton',1),(415,27,'FTU','Tuzlanski Kanton',1),(416,27,'FZE','Zenicko-Dobojski Kanton',1),(417,27,'FBP','Bosanskopodrinjski Kanton',1),(418,27,'FSB','Srednjebosanski Kanton',1),(419,27,'FHN','Hercegovacko-neretvanski Kanton',1),(420,27,'FZH','Zapadnohercegovacka Zupanija',1),(421,27,'FSA','Kanton Sarajevo',1),(422,27,'FZA','Zapadnobosanska',1),(423,27,'SBL','Banja Luka',1),(424,27,'SDO','Doboj',1),(425,27,'SBI','Bijeljina',1),(426,27,'SVL','Vlasenica',1),(427,27,'SSR','Sarajevo-Romanija or Sokolac',1),(428,27,'SFO','Foca',1),(429,27,'STR','Trebinje',1),(430,28,'CE','Central',1),(431,28,'GH','Ghanzi',1),(432,28,'KD','Kgalagadi',1),(433,28,'KT','Kgatleng',1),(434,28,'KW','Kweneng',1),(435,28,'NG','Ngamiland',1),(436,28,'NE','North East',1),(437,28,'NW','North West',1),(438,28,'SE','South East',1),(439,28,'SO','Southern',1),(440,30,'AC','Acre',1),(441,30,'AL','Alagoas',1),(442,30,'AP','Amapa',1),(443,30,'AM','Amazonas',1),(444,30,'BA','Bahia',1),(445,30,'CE','Ceara',1),(446,30,'DF','Distrito Federal',1),(447,30,'ES','Espirito Santo',1),(448,30,'GO','Goias',1),(449,30,'MA','Maranhao',1),(450,30,'MT','Mato Grosso',1),(451,30,'MS','Mato Grosso do Sul',1),(452,30,'MG','Minas Gerais',1),(453,30,'PA','Para',1),(454,30,'PB','Paraiba',1),(455,30,'PR','Parana',1),(456,30,'PE','Pernambuco',1),(457,30,'PI','Piaui',1),(458,30,'RJ','Rio de Janeiro',1),(459,30,'RN','Rio Grande do Norte',1),(460,30,'RS','Rio Grande do Sul',1),(461,30,'RO','Rondonia',1),(462,30,'RR','Roraima',1),(463,30,'SC','Santa Catarina',1),(464,30,'SP','Sao Paulo',1),(465,30,'SE','Sergipe',1),(466,30,'TO','Tocantins',1),(467,31,'PB','Peros Banhos',1),(468,31,'SI','Salomon Islands',1),(469,31,'NI','Nelsons Island',1),(470,31,'TB','Three Brothers',1),(471,31,'EA','Eagle Islands',1),(472,31,'DI','Danger Island',1),(473,31,'EG','Egmont Islands',1),(474,31,'DG','Diego Garcia',1),(475,32,'BEL','Belait',1),(476,32,'BRM','Brunei and Muara',1),(477,32,'TEM','Temburong',1),(478,32,'TUT','Tutong',1),(479,33,'','Blagoevgrad',1),(480,33,'','Burgas',1),(481,33,'','Dobrich',1),(482,33,'','Gabrovo',1),(483,33,'','Haskovo',1),(484,33,'','Kardjali',1),(485,33,'','Kyustendil',1),(486,33,'','Lovech',1),(487,33,'','Montana',1),(488,33,'','Pazardjik',1),(489,33,'','Pernik',1),(490,33,'','Pleven',1),(491,33,'','Plovdiv',1),(492,33,'','Razgrad',1),(493,33,'','Shumen',1),(494,33,'','Silistra',1),(495,33,'','Sliven',1),(496,33,'','Smolyan',1),(497,33,'','Sofia',1),(498,33,'','Sofia - town',1),(499,33,'','Stara Zagora',1),(500,33,'','Targovishte',1),(501,33,'','Varna',1),(502,33,'','Veliko Tarnovo',1),(503,33,'','Vidin',1),(504,33,'','Vratza',1),(505,33,'','Yambol',1),(506,34,'BAL','Bale',1),(507,34,'BAM','Bam',1),(508,34,'BAN','Banwa',1),(509,34,'BAZ','Bazega',1),(510,34,'BOR','Bougouriba',1),(511,34,'BLG','Boulgou',1),(512,34,'BOK','Boulkiemde',1),(513,34,'COM','Comoe',1),(514,34,'GAN','Ganzourgou',1),(515,34,'GNA','Gnagna',1),(516,34,'GOU','Gourma',1),(517,34,'HOU','Houet',1),(518,34,'IOA','Ioba',1),(519,34,'KAD','Kadiogo',1),(520,34,'KEN','Kenedougou',1),(521,34,'KOD','Komondjari',1),(522,34,'KOP','Kompienga',1),(523,34,'KOS','Kossi',1),(524,34,'KOL','Koulpelogo',1),(525,34,'KOT','Kouritenga',1),(526,34,'KOW','Kourweogo',1),(527,34,'LER','Leraba',1),(528,34,'LOR','Loroum',1),(529,34,'MOU','Mouhoun',1),(530,34,'NAH','Nahouri',1),(531,34,'NAM','Namentenga',1),(532,34,'NAY','Nayala',1),(533,34,'NOU','Noumbiel',1),(534,34,'OUB','Oubritenga',1),(535,34,'OUD','Oudalan',1),(536,34,'PAS','Passore',1),(537,34,'PON','Poni',1),(538,34,'SAG','Sanguie',1),(539,34,'SAM','Sanmatenga',1),(540,34,'SEN','Seno',1),(541,34,'SIS','Sissili',1),(542,34,'SOM','Soum',1),(543,34,'SOR','Sourou',1),(544,34,'TAP','Tapoa',1),(545,34,'TUY','Tuy',1),(546,34,'YAG','Yagha',1),(547,34,'YAT','Yatenga',1),(548,34,'ZIR','Ziro',1),(549,34,'ZOD','Zondoma',1),(550,34,'ZOW','Zoundweogo',1),(551,35,'BB','Bubanza',1),(552,35,'BJ','Bujumbura',1),(553,35,'BR','Bururi',1),(554,35,'CA','Cankuzo',1),(555,35,'CI','Cibitoke',1),(556,35,'GI','Gitega',1),(557,35,'KR','Karuzi',1),(558,35,'KY','Kayanza',1),(559,35,'KI','Kirundo',1),(560,35,'MA','Makamba',1),(561,35,'MU','Muramvya',1),(562,35,'MY','Muyinga',1),(563,35,'MW','Mwaro',1),(564,35,'NG','Ngozi',1),(565,35,'RT','Rutana',1),(566,35,'RY','Ruyigi',1),(567,36,'PP','Phnom Penh',1),(568,36,'PS','Preah Seihanu (Kompong Som or Sihanoukville)',1),(569,36,'PA','Pailin',1),(570,36,'KB','Keb',1),(571,36,'BM','Banteay Meanchey',1),(572,36,'BA','Battambang',1),(573,36,'KM','Kampong Cham',1),(574,36,'KN','Kampong Chhnang',1),(575,36,'KU','Kampong Speu',1),(576,36,'KO','Kampong Som',1),(577,36,'KT','Kampong Thom',1),(578,36,'KP','Kampot',1),(579,36,'KL','Kandal',1),(580,36,'KK','Kaoh Kong',1),(581,36,'KR','Kratie',1),(582,36,'MK','Mondul Kiri',1),(583,36,'OM','Oddar Meancheay',1),(584,36,'PU','Pursat',1),(585,36,'PR','Preah Vihear',1),(586,36,'PG','Prey Veng',1),(587,36,'RK','Ratanak Kiri',1),(588,36,'SI','Siemreap',1),(589,36,'ST','Stung Treng',1),(590,36,'SR','Svay Rieng',1),(591,36,'TK','Takeo',1),(592,37,'ADA','Adamawa (Adamaoua)',1),(593,37,'CEN','Centre',1),(594,37,'EST','East (Est)',1),(595,37,'EXN','Extreme North (Extreme-Nord)',1),(596,37,'LIT','Littoral',1),(597,37,'NOR','North (Nord)',1),(598,37,'NOT','Northwest (Nord-Ouest)',1),(599,37,'OUE','West (Ouest)',1),(600,37,'SUD','South (Sud)',1),(601,37,'SOU','Southwest (Sud-Ouest).',1),(602,38,'AB','Alberta',1),(603,38,'BC','British Columbia',1),(604,38,'MB','Manitoba',1),(605,38,'NB','New Brunswick',1),(606,38,'NL','Newfoundland and Labrador',1),(607,38,'NT','Northwest Territories',1),(608,38,'NS','Nova Scotia',1),(609,38,'NU','Nunavut',1),(610,38,'ON','Ontario',1),(611,38,'PE','Prince Edward Island',1),(612,38,'QC','Qu&eacute;bec',1),(613,38,'SK','Saskatchewan',1),(614,38,'YT','Yukon Territory',1),(615,39,'BV','Boa Vista',1),(616,39,'BR','Brava',1),(617,39,'CS','Calheta de Sao Miguel',1),(618,39,'MA','Maio',1),(619,39,'MO','Mosteiros',1),(620,39,'PA','Paul',1),(621,39,'PN','Porto Novo',1),(622,39,'PR','Praia',1),(623,39,'RG','Ribeira Grande',1),(624,39,'SL','Sal',1),(625,39,'CA','Santa Catarina',1),(626,39,'CR','Santa Cruz',1),(627,39,'SD','Sao Domingos',1),(628,39,'SF','Sao Filipe',1),(629,39,'SN','Sao Nicolau',1),(630,39,'SV','Sao Vicente',1),(631,39,'TA','Tarrafal',1),(632,40,'CR','Creek',1),(633,40,'EA','Eastern',1),(634,40,'ML','Midland',1),(635,40,'ST','South Town',1),(636,40,'SP','Spot Bay',1),(637,40,'SK','Stake Bay',1),(638,40,'WD','West End',1),(639,40,'WN','Western',1),(640,41,'BBA','Bamingui-Bangoran',1),(641,41,'BKO','Basse-Kotto',1),(642,41,'HKO','Haute-Kotto',1),(643,41,'HMB','Haut-Mbomou',1),(644,41,'KEM','Kemo',1),(645,41,'LOB','Lobaye',1),(646,41,'MKD','Mambere-KadeÔ',1),(647,41,'MBO','Mbomou',1),(648,41,'NMM','Nana-Mambere',1),(649,41,'OMP','Ombella-M\'Poko',1),(650,41,'OUK','Ouaka',1),(651,41,'OUH','Ouham',1),(652,41,'OPE','Ouham-Pende',1),(653,41,'VAK','Vakaga',1),(654,41,'NGR','Nana-Grebizi',1),(655,41,'SMB','Sangha-Mbaere',1),(656,41,'BAN','Bangui',1),(657,42,'BA','Batha',1),(658,42,'BI','Biltine',1),(659,42,'BE','Borkou-Ennedi-Tibesti',1),(660,42,'CB','Chari-Baguirmi',1),(661,42,'GU','Guera',1),(662,42,'KA','Kanem',1),(663,42,'LA','Lac',1),(664,42,'LC','Logone Occidental',1),(665,42,'LR','Logone Oriental',1),(666,42,'MK','Mayo-Kebbi',1),(667,42,'MC','Moyen-Chari',1),(668,42,'OU','Ouaddai',1),(669,42,'SA','Salamat',1),(670,42,'TA','Tandjile',1),(671,43,'AI','Aisen del General Carlos Ibanez',1),(672,43,'AN','Antofagasta',1),(673,43,'AR','Araucania',1),(674,43,'AT','Atacama',1),(675,43,'BI','Bio-Bio',1),(676,43,'CO','Coquimbo',1),(677,43,'LI','Libertador General Bernardo O\'Hi',1),(678,43,'LL','Los Lagos',1),(679,43,'MA','Magallanes y de la Antartica Chi',1),(680,43,'ML','Maule',1),(681,43,'RM','Region Metropolitana',1),(682,43,'TA','Tarapaca',1),(683,43,'VS','Valparaiso',1),(684,44,'AN','Anhui',1),(685,44,'BE','Beijing',1),(686,44,'CH','Chongqing',1),(687,44,'FU','Fujian',1),(688,44,'GA','Gansu',1),(689,44,'GU','Guangdong',1),(690,44,'GX','Guangxi',1),(691,44,'GZ','Guizhou',1),(692,44,'HA','Hainan',1),(693,44,'HB','Hebei',1),(694,44,'HL','Heilongjiang',1),(695,44,'HE','Henan',1),(696,44,'HK','Hong Kong',1),(697,44,'HU','Hubei',1),(698,44,'HN','Hunan',1),(699,44,'IM','Inner Mongolia',1),(700,44,'JI','Jiangsu',1),(701,44,'JX','Jiangxi',1),(702,44,'JL','Jilin',1),(703,44,'LI','Liaoning',1),(704,44,'MA','Macau',1),(705,44,'NI','Ningxia',1),(706,44,'SH','Shaanxi',1),(707,44,'SA','Shandong',1),(708,44,'SG','Shanghai',1),(709,44,'SX','Shanxi',1),(710,44,'SI','Sichuan',1),(711,44,'TI','Tianjin',1),(712,44,'XI','Xinjiang',1),(713,44,'YU','Yunnan',1),(714,44,'ZH','Zhejiang',1),(715,46,'D','Direction Island',1),(716,46,'H','Home Island',1),(717,46,'O','Horsburgh Island',1),(718,46,'S','South Island',1),(719,46,'W','West Island',1),(720,47,'AMZ','Amazonas',1),(721,47,'ANT','Antioquia',1),(722,47,'ARA','Arauca',1),(723,47,'ATL','Atlantico',1),(724,47,'BDC','Bogota D.C.',1),(725,47,'BOL','Bolivar',1),(726,47,'BOY','Boyaca',1),(727,47,'CAL','Caldas',1),(728,47,'CAQ','Caqueta',1),(729,47,'CAS','Casanare',1),(730,47,'CAU','Cauca',1),(731,47,'CES','Cesar',1),(732,47,'CHO','Choco',1),(733,47,'COR','Cordoba',1),(734,47,'CAM','Cundinamarca',1),(735,47,'GNA','Guainia',1),(736,47,'GJR','Guajira',1),(737,47,'GVR','Guaviare',1),(738,47,'HUI','Huila',1),(739,47,'MAG','Magdalena',1),(740,47,'MET','Meta',1),(741,47,'NAR','Narino',1),(742,47,'NDS','Norte de Santander',1),(743,47,'PUT','Putumayo',1),(744,47,'QUI','Quindio',1),(745,47,'RIS','Risaralda',1),(746,47,'SAP','San Andres y Providencia',1),(747,47,'SAN','Santander',1),(748,47,'SUC','Sucre',1),(749,47,'TOL','Tolima',1),(750,47,'VDC','Valle del Cauca',1),(751,47,'VAU','Vaupes',1),(752,47,'VIC','Vichada',1),(753,48,'G','Grande Comore',1),(754,48,'A','Anjouan',1),(755,48,'M','Moheli',1),(756,49,'BO','Bouenza',1),(757,49,'BR','Brazzaville',1),(758,49,'CU','Cuvette',1),(759,49,'CO','Cuvette-Ouest',1),(760,49,'KO','Kouilou',1),(761,49,'LE','Lekoumou',1),(762,49,'LI','Likouala',1),(763,49,'NI','Niari',1),(764,49,'PL','Plateaux',1),(765,49,'PO','Pool',1),(766,49,'SA','Sangha',1),(767,50,'PU','Pukapuka',1),(768,50,'RK','Rakahanga',1),(769,50,'MK','Manihiki',1),(770,50,'PE','Penrhyn',1),(771,50,'NI','Nassau Island',1),(772,50,'SU','Surwarrow',1),(773,50,'PA','Palmerston',1),(774,50,'AI','Aitutaki',1),(775,50,'MA','Manuae',1),(776,50,'TA','Takutea',1),(777,50,'MT','Mitiaro',1),(778,50,'AT','Atiu',1),(779,50,'MU','Mauke',1),(780,50,'RR','Rarotonga',1),(781,50,'MG','Mangaia',1),(782,51,'AL','Alajuela',1),(783,51,'CA','Cartago',1),(784,51,'GU','Guanacaste',1),(785,51,'HE','Heredia',1),(786,51,'LI','Limon',1),(787,51,'PU','Puntarenas',1),(788,51,'SJ','San Jose',1),(789,52,'ABE','Abengourou',1),(790,52,'ABI','Abidjan',1),(791,52,'ABO','Aboisso',1),(792,52,'ADI','Adiake',1),(793,52,'ADZ','Adzope',1),(794,52,'AGB','Agboville',1),(795,52,'AGN','Agnibilekrou',1),(796,52,'ALE','Alepe',1),(797,52,'BOC','Bocanda',1),(798,52,'BAN','Bangolo',1),(799,52,'BEO','Beoumi',1),(800,52,'BIA','Biankouma',1),(801,52,'BDK','Bondoukou',1),(802,52,'BGN','Bongouanou',1),(803,52,'BFL','Bouafle',1),(804,52,'BKE','Bouake',1),(805,52,'BNA','Bouna',1),(806,52,'BDL','Boundiali',1),(807,52,'DKL','Dabakala',1),(808,52,'DBU','Dabou',1),(809,52,'DAL','Daloa',1),(810,52,'DAN','Danane',1),(811,52,'DAO','Daoukro',1),(812,52,'DIM','Dimbokro',1),(813,52,'DIV','Divo',1),(814,52,'DUE','Duekoue',1),(815,52,'FER','Ferkessedougou',1),(816,52,'GAG','Gagnoa',1),(817,52,'GBA','Grand-Bassam',1),(818,52,'GLA','Grand-Lahou',1),(819,52,'GUI','Guiglo',1),(820,52,'ISS','Issia',1),(821,52,'JAC','Jacqueville',1),(822,52,'KAT','Katiola',1),(823,52,'KOR','Korhogo',1),(824,52,'LAK','Lakota',1),(825,52,'MAN','Man',1),(826,52,'MKN','Mankono',1),(827,52,'MBA','Mbahiakro',1),(828,52,'ODI','Odienne',1),(829,52,'OUM','Oume',1),(830,52,'SAK','Sakassou',1),(831,52,'SPE','San-Pedro',1),(832,52,'SAS','Sassandra',1),(833,52,'SEG','Seguela',1),(834,52,'SIN','Sinfra',1),(835,52,'SOU','Soubre',1),(836,52,'TAB','Tabou',1),(837,52,'TAN','Tanda',1),(838,52,'TIE','Tiebissou',1),(839,52,'TIN','Tingrela',1),(840,52,'TIA','Tiassale',1),(841,52,'TBA','Touba',1),(842,52,'TLP','Toulepleu',1),(843,52,'TMD','Toumodi',1),(844,52,'VAV','Vavoua',1),(845,52,'YAM','Yamoussoukro',1),(846,52,'ZUE','Zuenoula',1),(847,53,'BB','Bjelovar-Bilogora',1),(848,53,'CZ','City of Zagreb',1),(849,53,'DN','Dubrovnik-Neretva',1),(850,53,'IS','Istra',1),(851,53,'KA','Karlovac',1),(852,53,'KK','Koprivnica-Krizevci',1),(853,53,'KZ','Krapina-Zagorje',1),(854,53,'LS','Lika-Senj',1),(855,53,'ME','Medimurje',1),(856,53,'OB','Osijek-Baranja',1),(857,53,'PS','Pozega-Slavonia',1),(858,53,'PG','Primorje-Gorski Kotar',1),(859,53,'SI','Sibenik',1),(860,53,'SM','Sisak-Moslavina',1),(861,53,'SB','Slavonski Brod-Posavina',1),(862,53,'SD','Split-Dalmatia',1),(863,53,'VA','Varazdin',1),(864,53,'VP','Virovitica-Podravina',1),(865,53,'VS','Vukovar-Srijem',1),(866,53,'ZK','Zadar-Knin',1),(867,53,'ZA','Zagreb',1),(868,54,'CA','Camaguey',1),(869,54,'CD','Ciego de Avila',1),(870,54,'CI','Cienfuegos',1),(871,54,'CH','Ciudad de La Habana',1),(872,54,'GR','Granma',1),(873,54,'GU','Guantanamo',1),(874,54,'HO','Holguin',1),(875,54,'IJ','Isla de la Juventud',1),(876,54,'LH','La Habana',1),(877,54,'LT','Las Tunas',1),(878,54,'MA','Matanzas',1),(879,54,'PR','Pinar del Rio',1),(880,54,'SS','Sancti Spiritus',1),(881,54,'SC','Santiago de Cuba',1),(882,54,'VC','Villa Clara',1),(883,55,'F','Famagusta',1),(884,55,'K','Kyrenia',1),(885,55,'A','Larnaca',1),(886,55,'I','Limassol',1),(887,55,'N','Nicosia',1),(888,55,'P','Paphos',1),(889,56,'U','Ustecky',1),(890,56,'C','Jihocesky',1),(891,56,'B','Jihomoravsky',1),(892,56,'K','Karlovarsky',1),(893,56,'H','Kralovehradecky',1),(894,56,'L','Liberecky',1),(895,56,'T','Moravskoslezsky',1),(896,56,'M','Olomoucky',1),(897,56,'E','Pardubicky',1),(898,56,'P','Plzensky',1),(899,56,'A','Praha',1),(900,56,'S','Stredocesky',1),(901,56,'J','Vysocina',1),(902,56,'Z','Zlinsky',1),(903,57,'AR','Arhus',1),(904,57,'BH','Bornholm',1),(905,57,'CO','Copenhagen',1),(906,57,'FO','Faroe Islands',1),(907,57,'FR','Frederiksborg',1),(908,57,'FY','Fyn',1),(909,57,'KO','Kobenhavn',1),(910,57,'NO','Nordjylland',1),(911,57,'RI','Ribe',1),(912,57,'RK','Ringkobing',1),(913,57,'RO','Roskilde',1),(914,57,'SO','Sonderjylland',1),(915,57,'ST','Storstrom',1),(916,57,'VK','Vejle',1),(917,57,'VJ','Vestj&aelig;lland',1),(918,57,'VB','Viborg',1),(919,58,'S','\'Ali Sabih',1),(920,58,'K','Dikhil',1),(921,58,'J','Djibouti',1),(922,58,'O','Obock',1),(923,58,'T','Tadjoura',1),(924,59,'AND','Saint Andrew Parish',1),(925,59,'DAV','Saint David Parish',1),(926,59,'GEO','Saint George Parish',1),(927,59,'JOH','Saint John Parish',1),(928,59,'JOS','Saint Joseph Parish',1),(929,59,'LUK','Saint Luke Parish',1),(930,59,'MAR','Saint Mark Parish',1),(931,59,'PAT','Saint Patrick Parish',1),(932,59,'PAU','Saint Paul Parish',1),(933,59,'PET','Saint Peter Parish',1),(934,60,'DN','Distrito Nacional',1),(935,60,'AZ','Azua',1),(936,60,'BC','Baoruco',1),(937,60,'BH','Barahona',1),(938,60,'DJ','Dajabon',1),(939,60,'DU','Duarte',1),(940,60,'EL','Elias Pina',1),(941,60,'SY','El Seybo',1),(942,60,'ET','Espaillat',1),(943,60,'HM','Hato Mayor',1),(944,60,'IN','Independencia',1),(945,60,'AL','La Altagracia',1),(946,60,'RO','La Romana',1),(947,60,'VE','La Vega',1),(948,60,'MT','Maria Trinidad Sanchez',1),(949,60,'MN','Monsenor Nouel',1),(950,60,'MC','Monte Cristi',1),(951,60,'MP','Monte Plata',1),(952,60,'PD','Pedernales',1),(953,60,'PR','Peravia (Bani)',1),(954,60,'PP','Puerto Plata',1),(955,60,'SL','Salcedo',1),(956,60,'SM','Samana',1),(957,60,'SH','Sanchez Ramirez',1),(958,60,'SC','San Cristobal',1),(959,60,'JO','San Jose de Ocoa',1),(960,60,'SJ','San Juan',1),(961,60,'PM','San Pedro de Macoris',1),(962,60,'SA','Santiago',1),(963,60,'ST','Santiago Rodriguez',1),(964,60,'SD','Santo Domingo',1),(965,60,'VA','Valverde',1),(966,61,'AL','Aileu',1),(967,61,'AN','Ainaro',1),(968,61,'BA','Baucau',1),(969,61,'BO','Bobonaro',1),(970,61,'CO','Cova Lima',1),(971,61,'DI','Dili',1),(972,61,'ER','Ermera',1),(973,61,'LA','Lautem',1),(974,61,'LI','Liquica',1),(975,61,'MT','Manatuto',1),(976,61,'MF','Manufahi',1),(977,61,'OE','Oecussi',1),(978,61,'VI','Viqueque',1),(979,62,'AZU','Azuay',1),(980,62,'BOL','Bolivar',1),(981,62,'CAN','Ca&ntilde;ar',1),(982,62,'CAR','Carchi',1),(983,62,'CHI','Chimborazo',1),(984,62,'COT','Cotopaxi',1),(985,62,'EOR','El Oro',1),(986,62,'ESM','Esmeraldas',1),(987,62,'GPS','Gal&aacute;pagos',1),(988,62,'GUA','Guayas',1),(989,62,'IMB','Imbabura',1),(990,62,'LOJ','Loja',1),(991,62,'LRO','Los Rios',1),(992,62,'MAN','Manab&iacute;',1),(993,62,'MSA','Morona Santiago',1),(994,62,'NAP','Napo',1),(995,62,'ORE','Orellana',1),(996,62,'PAS','Pastaza',1),(997,62,'PIC','Pichincha',1),(998,62,'SUC','Sucumb&iacute;os',1),(999,62,'TUN','Tungurahua',1),(1000,62,'ZCH','Zamora Chinchipe',1),(1001,63,'DHY','Ad Daqahliyah',1),(1002,63,'BAM','Al Bahr al Ahmar',1),(1003,63,'BHY','Al Buhayrah',1),(1004,63,'FYM','Al Fayyum',1),(1005,63,'GBY','Al Gharbiyah',1),(1006,63,'IDR','Al Iskandariyah',1),(1007,63,'IML','Al Isma\'iliyah',1),(1008,63,'JZH','Al Jizah',1),(1009,63,'MFY','Al Minufiyah',1),(1010,63,'MNY','Al Minya',1),(1011,63,'QHR','Al Qahirah',1),(1012,63,'QLY','Al Qalyubiyah',1),(1013,63,'WJD','Al Wadi al Jadid',1),(1014,63,'SHQ','Ash Sharqiyah',1),(1015,63,'SWY','As Suways',1),(1016,63,'ASW','Aswan',1),(1017,63,'ASY','Asyut',1),(1018,63,'BSW','Bani Suwayf',1),(1019,63,'BSD','Bur Sa\'id',1),(1020,63,'DMY','Dumyat',1),(1021,63,'JNS','Janub Sina\'',1),(1022,63,'KSH','Kafr ash Shaykh',1),(1023,63,'MAT','Matruh',1),(1024,63,'QIN','Qina',1),(1025,63,'SHS','Shamal Sina\'',1),(1026,63,'SUH','Suhaj',1),(1027,64,'AH','Ahuachapan',1),(1028,64,'CA','Cabanas',1),(1029,64,'CH','Chalatenango',1),(1030,64,'CU','Cuscatlan',1),(1031,64,'LB','La Libertad',1),(1032,64,'PZ','La Paz',1),(1033,64,'UN','La Union',1),(1034,64,'MO','Morazan',1),(1035,64,'SM','San Miguel',1),(1036,64,'SS','San Salvador',1),(1037,64,'SV','San Vicente',1),(1038,64,'SA','Santa Ana',1),(1039,64,'SO','Sonsonate',1),(1040,64,'US','Usulutan',1),(1041,65,'AN','Provincia Annobon',1),(1042,65,'BN','Provincia Bioko Norte',1),(1043,65,'BS','Provincia Bioko Sur',1),(1044,65,'CS','Provincia Centro Sur',1),(1045,65,'KN','Provincia Kie-Ntem',1),(1046,65,'LI','Provincia Litoral',1),(1047,65,'WN','Provincia Wele-Nzas',1),(1048,66,'MA','Central (Maekel)',1),(1049,66,'KE','Anseba (Keren)',1),(1050,66,'DK','Southern Red Sea (Debub-Keih-Bahri)',1),(1051,66,'SK','Northern Red Sea (Semien-Keih-Bahri)',1),(1052,66,'DE','Southern (Debub)',1),(1053,66,'BR','Gash-Barka (Barentu)',1),(1054,67,'HA','Harjumaa (Tallinn)',1),(1055,67,'HI','Hiiumaa (Kardla)',1),(1056,67,'IV','Ida-Virumaa (Johvi)',1),(1057,67,'JA','Jarvamaa (Paide)',1),(1058,67,'JO','Jogevamaa (Jogeva)',1),(1059,67,'LV','Laane-Virumaa (Rakvere)',1),(1060,67,'LA','Laanemaa (Haapsalu)',1),(1061,67,'PA','Parnumaa (Parnu)',1),(1062,67,'PO','Polvamaa (Polva)',1),(1063,67,'RA','Raplamaa (Rapla)',1),(1064,67,'SA','Saaremaa (Kuessaare)',1),(1065,67,'TA','Tartumaa (Tartu)',1),(1066,67,'VA','Valgamaa (Valga)',1),(1067,67,'VI','Viljandimaa (Viljandi)',1),(1068,67,'VO','Vorumaa (Voru)',1),(1069,68,'AF','Afar',1),(1070,68,'AH','Amhara',1),(1071,68,'BG','Benishangul-Gumaz',1),(1072,68,'GB','Gambela',1),(1073,68,'HR','Hariai',1),(1074,68,'OR','Oromia',1),(1075,68,'SM','Somali',1),(1076,68,'SN','Southern Nations - Nationalities and Peoples Region',1),(1077,68,'TG','Tigray',1),(1078,68,'AA','Addis Ababa',1),(1079,68,'DD','Dire Dawa',1),(1080,71,'C','Central Division',1),(1081,71,'N','Northern Division',1),(1082,71,'E','Eastern Division',1),(1083,71,'W','Western Division',1),(1084,71,'R','Rotuma',1),(1085,72,'AL','Ahvenanmaan Laani',1),(1086,72,'ES','Etela-Suomen Laani',1),(1087,72,'IS','Ita-Suomen Laani',1),(1088,72,'LS','Lansi-Suomen Laani',1),(1089,72,'LA','Lapin Lanani',1),(1090,72,'OU','Oulun Laani',1),(1091,73,'AL','Alsace',1),(1092,73,'AQ','Aquitaine',1),(1093,73,'AU','Auvergne',1),(1094,73,'BR','Brittany',1),(1095,73,'BU','Burgundy',1),(1096,73,'CE','Center Loire Valley',1),(1097,73,'CH','Champagne',1),(1098,73,'CO','Corse',1),(1099,73,'FR','France Comte',1),(1100,73,'LA','Languedoc Roussillon',1),(1101,73,'LI','Limousin',1),(1102,73,'LO','Lorraine',1),(1103,73,'MI','Midi Pyrenees',1),(1104,73,'NO','Nord Pas de Calais',1),(1105,73,'NR','Normandy',1),(1106,73,'PA','Paris / Ill de France',1),(1107,73,'PI','Picardie',1),(1108,73,'PO','Poitou Charente',1),(1109,73,'PR','Provence',1),(1110,73,'RH','Rhone Alps',1),(1111,73,'RI','Riviera',1),(1112,73,'WE','Western Loire Valley',1),(1113,74,'Et','Etranger',1),(1114,74,'01','Ain',1),(1115,74,'02','Aisne',1),(1116,74,'03','Allier',1),(1117,74,'04','Alpes de Haute Provence',1),(1118,74,'05','Hautes-Alpes',1),(1119,74,'06','Alpes Maritimes',1),(1120,74,'07','Ard&egrave;che',1),(1121,74,'08','Ardennes',1),(1122,74,'09','Ari&egrave;ge',1),(1123,74,'10','Aube',1),(1124,74,'11','Aude',1),(1125,74,'12','Aveyron',1),(1126,74,'13','Bouches du Rh&ocirc;ne',1),(1127,74,'14','Calvados',1),(1128,74,'15','Cantal',1),(1129,74,'16','Charente',1),(1130,74,'17','Charente Maritime',1),(1131,74,'18','Cher',1),(1132,74,'19','Corr&egrave;ze',1),(1133,74,'2A','Corse du Sud',1),(1134,74,'2B','Haute Corse',1),(1135,74,'21','C&ocirc;te d&#039;or',1),(1136,74,'22','C&ocirc;tes d&#039;Armor',1),(1137,74,'23','Creuse',1),(1138,74,'24','Dordogne',1),(1139,74,'25','Doubs',1),(1140,74,'26','Dr&ocirc;me',1),(1141,74,'27','Eure',1),(1142,74,'28','Eure et Loir',1),(1143,74,'29','Finist&egrave;re',1),(1144,74,'30','Gard',1),(1145,74,'31','Haute Garonne',1),(1146,74,'32','Gers',1),(1147,74,'33','Gironde',1),(1148,74,'34','H&eacute;rault',1),(1149,74,'35','Ille et Vilaine',1),(1150,74,'36','Indre',1),(1151,74,'37','Indre et Loire',1),(1152,74,'38','Is&eacute;re',1),(1153,74,'39','Jura',1),(1154,74,'40','Landes',1),(1155,74,'41','Loir et Cher',1),(1156,74,'42','Loire',1),(1157,74,'43','Haute Loire',1),(1158,74,'44','Loire Atlantique',1),(1159,74,'45','Loiret',1),(1160,74,'46','Lot',1),(1161,74,'47','Lot et Garonne',1),(1162,74,'48','Loz&egrave;re',1),(1163,74,'49','Maine et Loire',1),(1164,74,'50','Manche',1),(1165,74,'51','Marne',1),(1166,74,'52','Haute Marne',1),(1167,74,'53','Mayenne',1),(1168,74,'54','Meurthe et Moselle',1),(1169,74,'55','Meuse',1),(1170,74,'56','Morbihan',1),(1171,74,'57','Moselle',1),(1172,74,'58','Ni&egrave;vre',1),(1173,74,'59','Nord',1),(1174,74,'60','Oise',1),(1175,74,'61','Orne',1),(1176,74,'62','Pas de Calais',1),(1177,74,'63','Puy de D&ocirc;me',1),(1178,74,'64','Pyr&eacute;n&eacute;es Atlantiques',1),(1179,74,'65','Hautes Pyr&eacute;n&eacute;es',1),(1180,74,'66','Pyr&eacute;n&eacute;es Orientales',1),(1181,74,'67','Bas Rhin',1),(1182,74,'68','Haut Rhin',1),(1183,74,'69','Rh&ocirc;ne',1),(1184,74,'70','Haute Sa&ocirc;ne',1),(1185,74,'71','Sa&ocirc;ne et Loire',1),(1186,74,'72','Sarthe',1),(1187,74,'73','Savoie',1),(1188,74,'74','Haute Savoie',1),(1189,74,'75','Paris',1),(1190,74,'76','Seine Maritime',1),(1191,74,'77','Seine et Marne',1),(1192,74,'78','Yvelines',1),(1193,74,'79','Deux S&egrave;vres',1),(1194,74,'80','Somme',1),(1195,74,'81','Tarn',1),(1196,74,'82','Tarn et Garonne',1),(1197,74,'83','Var',1),(1198,74,'84','Vaucluse',1),(1199,74,'85','Vend&eacute;e',1),(1200,74,'86','Vienne',1),(1201,74,'87','Haute Vienne',1),(1202,74,'88','Vosges',1),(1203,74,'89','Yonne',1),(1204,74,'90','Territoire de Belfort',1),(1205,74,'91','Essonne',1),(1206,74,'92','Hauts de Seine',1),(1207,74,'93','Seine St-Denis',1),(1208,74,'94','Val de Marne',1),(1209,74,'95','Val d\'Oise',1),(1210,76,'M','Archipel des Marquises',1),(1211,76,'T','Archipel des Tuamotu',1),(1212,76,'I','Archipel des Tubuai',1),(1213,76,'V','Iles du Vent',1),(1214,76,'S','Iles Sous-le-Vent',1),(1215,77,'C','Iles Crozet',1),(1216,77,'K','Iles Kerguelen',1),(1217,77,'A','Ile Amsterdam',1),(1218,77,'P','Ile Saint-Paul',1),(1219,77,'D','Adelie Land',1),(1220,78,'ES','Estuaire',1),(1221,78,'HO','Haut-Ogooue',1),(1222,78,'MO','Moyen-Ogooue',1),(1223,78,'NG','Ngounie',1),(1224,78,'NY','Nyanga',1),(1225,78,'OI','Ogooue-Ivindo',1),(1226,78,'OL','Ogooue-Lolo',1),(1227,78,'OM','Ogooue-Maritime',1),(1228,78,'WN','Woleu-Ntem',1),(1229,79,'BJ','Banjul',1),(1230,79,'BS','Basse',1),(1231,79,'BR','Brikama',1),(1232,79,'JA','Janjangbure',1),(1233,79,'KA','Kanifeng',1),(1234,79,'KE','Kerewan',1),(1235,79,'KU','Kuntaur',1),(1236,79,'MA','Mansakonko',1),(1237,79,'LR','Lower River',1),(1238,79,'CR','Central River',1),(1239,79,'NB','North Bank',1),(1240,79,'UR','Upper River',1),(1241,79,'WE','Western',1),(1242,80,'AB','Abkhazia',1),(1243,80,'AJ','Ajaria',1),(1244,80,'TB','Tbilisi',1),(1245,80,'GU','Guria',1),(1246,80,'IM','Imereti',1),(1247,80,'KA','Kakheti',1),(1248,80,'KK','Kvemo Kartli',1),(1249,80,'MM','Mtskheta-Mtianeti',1),(1250,80,'RL','Racha Lechkhumi and Kvemo Svanet',1),(1251,80,'SZ','Samegrelo-Zemo Svaneti',1),(1252,80,'SJ','Samtskhe-Javakheti',1),(1253,80,'SK','Shida Kartli',1),(1254,81,'BAW','Baden-W&uuml;rttemberg',1),(1255,81,'BAY','Bayern',1),(1256,81,'BER','Berlin',1),(1257,81,'BRG','Brandenburg',1),(1258,81,'BRE','Bremen',1),(1259,81,'HAM','Hamburg',1),(1260,81,'HES','Hessen',1),(1261,81,'MEC','Mecklenburg-Vorpommern',1),(1262,81,'NDS','Niedersachsen',1),(1263,81,'NRW','Nordrhein-Westfalen',1),(1264,81,'RHE','Rheinland-Pfalz',1),(1265,81,'SAR','Saarland',1),(1266,81,'SAS','Sachsen',1),(1267,81,'SAC','Sachsen-Anhalt',1),(1268,81,'SCN','Schleswig-Holstein',1),(1269,81,'THE','Th&uuml;ringen',1),(1270,82,'AS','Ashanti Region',1),(1271,82,'BA','Brong-Ahafo Region',1),(1272,82,'CE','Central Region',1),(1273,82,'EA','Eastern Region',1),(1274,82,'GA','Greater Accra Region',1),(1275,82,'NO','Northern Region',1),(1276,82,'UE','Upper East Region',1),(1277,82,'UW','Upper West Region',1),(1278,82,'VO','Volta Region',1),(1279,82,'WE','Western Region',1),(1280,84,'AT','Attica',1),(1281,84,'CN','Central Greece',1),(1282,84,'CM','Central Macedonia',1),(1283,84,'CR','Crete',1),(1284,84,'EM','East Macedonia and Thrace',1),(1285,84,'EP','Epirus',1),(1286,84,'II','Ionian Islands',1),(1287,84,'NA','North Aegean',1),(1288,84,'PP','Peloponnesos',1),(1289,84,'SA','South Aegean',1),(1290,84,'TH','Thessaly',1),(1291,84,'WG','West Greece',1),(1292,84,'WM','West Macedonia',1),(1293,85,'A','Avannaa',1),(1294,85,'T','Tunu',1),(1295,85,'K','Kitaa',1),(1296,86,'A','Saint Andrew',1),(1297,86,'D','Saint David',1),(1298,86,'G','Saint George',1),(1299,86,'J','Saint John',1),(1300,86,'M','Saint Mark',1),(1301,86,'P','Saint Patrick',1),(1302,86,'C','Carriacou',1),(1303,86,'Q','Petit Martinique',1),(1304,89,'AV','Alta Verapaz',1),(1305,89,'BV','Baja Verapaz',1),(1306,89,'CM','Chimaltenango',1),(1307,89,'CQ','Chiquimula',1),(1308,89,'PE','El Peten',1),(1309,89,'PR','El Progreso',1),(1310,89,'QC','El Quiche',1),(1311,89,'ES','Escuintla',1),(1312,89,'GU','Guatemala',1),(1313,89,'HU','Huehuetenango',1),(1314,89,'IZ','Izabal',1),(1315,89,'JA','Jalapa',1),(1316,89,'JU','Jutiapa',1),(1317,89,'QZ','Quetzaltenango',1),(1318,89,'RE','Retalhuleu',1),(1319,89,'ST','Sacatepequez',1),(1320,89,'SM','San Marcos',1),(1321,89,'SR','Santa Rosa',1),(1322,89,'SO','Solola',1),(1323,89,'SU','Suchitepequez',1),(1324,89,'TO','Totonicapan',1),(1325,89,'ZA','Zacapa',1),(1326,90,'CNK','Conakry',1),(1327,90,'BYL','Beyla',1),(1328,90,'BFA','Boffa',1),(1329,90,'BOK','Boke',1),(1330,90,'COY','Coyah',1),(1331,90,'DBL','Dabola',1),(1332,90,'DLB','Dalaba',1),(1333,90,'DGR','Dinguiraye',1),(1334,90,'DBR','Dubreka',1),(1335,90,'FRN','Faranah',1),(1336,90,'FRC','Forecariah',1),(1337,90,'FRI','Fria',1),(1338,90,'GAO','Gaoual',1),(1339,90,'GCD','Gueckedou',1),(1340,90,'KNK','Kankan',1),(1341,90,'KRN','Kerouane',1),(1342,90,'KND','Kindia',1),(1343,90,'KSD','Kissidougou',1),(1344,90,'KBA','Koubia',1),(1345,90,'KDA','Koundara',1),(1346,90,'KRA','Kouroussa',1),(1347,90,'LAB','Labe',1),(1348,90,'LLM','Lelouma',1),(1349,90,'LOL','Lola',1),(1350,90,'MCT','Macenta',1),(1351,90,'MAL','Mali',1),(1352,90,'MAM','Mamou',1),(1353,90,'MAN','Mandiana',1),(1354,90,'NZR','Nzerekore',1),(1355,90,'PIT','Pita',1),(1356,90,'SIG','Siguiri',1),(1357,90,'TLM','Telimele',1),(1358,90,'TOG','Tougue',1),(1359,90,'YOM','Yomou',1),(1360,91,'BF','Bafata Region',1),(1361,91,'BB','Biombo Region',1),(1362,91,'BS','Bissau Region',1),(1363,91,'BL','Bolama Region',1),(1364,91,'CA','Cacheu Region',1),(1365,91,'GA','Gabu Region',1),(1366,91,'OI','Oio Region',1),(1367,91,'QU','Quinara Region',1),(1368,91,'TO','Tombali Region',1),(1369,92,'BW','Barima-Waini',1),(1370,92,'CM','Cuyuni-Mazaruni',1),(1371,92,'DM','Demerara-Mahaica',1),(1372,92,'EC','East Berbice-Corentyne',1),(1373,92,'EW','Essequibo Islands-West Demerara',1),(1374,92,'MB','Mahaica-Berbice',1),(1375,92,'PM','Pomeroon-Supenaam',1),(1376,92,'PI','Potaro-Siparuni',1),(1377,92,'UD','Upper Demerara-Berbice',1),(1378,92,'UT','Upper Takutu-Upper Essequibo',1),(1379,93,'AR','Artibonite',1),(1380,93,'CE','Centre',1),(1381,93,'GA','Grand\'Anse',1),(1382,93,'ND','Nord',1),(1383,93,'NE','Nord-Est',1),(1384,93,'NO','Nord-Ouest',1),(1385,93,'OU','Ouest',1),(1386,93,'SD','Sud',1),(1387,93,'SE','Sud-Est',1),(1388,94,'F','Flat Island',1),(1389,94,'M','McDonald Island',1),(1390,94,'S','Shag Island',1),(1391,94,'H','Heard Island',1),(1392,95,'AT','Atlantida',1),(1393,95,'CH','Choluteca',1),(1394,95,'CL','Colon',1),(1395,95,'CM','Comayagua',1),(1396,95,'CP','Copan',1),(1397,95,'CR','Cortes',1),(1398,95,'PA','El Paraiso',1),(1399,95,'FM','Francisco Morazan',1),(1400,95,'GD','Gracias a Dios',1),(1401,95,'IN','Intibuca',1),(1402,95,'IB','Islas de la Bahia (Bay Islands)',1),(1403,95,'PZ','La Paz',1),(1404,95,'LE','Lempira',1),(1405,95,'OC','Ocotepeque',1),(1406,95,'OL','Olancho',1),(1407,95,'SB','Santa Barbara',1),(1408,95,'VA','Valle',1),(1409,95,'YO','Yoro',1),(1410,96,'HCW','Central and Western Hong Kong Island',1),(1411,96,'HEA','Eastern Hong Kong Island',1),(1412,96,'HSO','Southern Hong Kong Island',1),(1413,96,'HWC','Wan Chai Hong Kong Island',1),(1414,96,'KKC','Kowloon City Kowloon',1),(1415,96,'KKT','Kwun Tong Kowloon',1),(1416,96,'KSS','Sham Shui Po Kowloon',1),(1417,96,'KWT','Wong Tai Sin Kowloon',1),(1418,96,'KYT','Yau Tsim Mong Kowloon',1),(1419,96,'NIS','Islands New Territories',1),(1420,96,'NKT','Kwai Tsing New Territories',1),(1421,96,'NNO','North New Territories',1),(1422,96,'NSK','Sai Kung New Territories',1),(1423,96,'NST','Sha Tin New Territories',1),(1424,96,'NTP','Tai Po New Territories',1),(1425,96,'NTW','Tsuen Wan New Territories',1),(1426,96,'NTM','Tuen Mun New Territories',1),(1427,96,'NYL','Yuen Long New Territories',1),(1428,97,'BK','Bacs-Kiskun',1),(1429,97,'BA','Baranya',1),(1430,97,'BE','Bekes',1),(1431,97,'BS','Bekescsaba',1),(1432,97,'BZ','Borsod-Abauj-Zemplen',1),(1433,97,'BU','Budapest',1),(1434,97,'CS','Csongrad',1),(1435,97,'DE','Debrecen',1),(1436,97,'DU','Dunaujvaros',1),(1437,97,'EG','Eger',1),(1438,97,'FE','Fejer',1),(1439,97,'GY','Gyor',1),(1440,97,'GM','Gyor-Moson-Sopron',1),(1441,97,'HB','Hajdu-Bihar',1),(1442,97,'HE','Heves',1),(1443,97,'HO','Hodmezovasarhely',1),(1444,97,'JN','Jasz-Nagykun-Szolnok',1),(1445,97,'KA','Kaposvar',1),(1446,97,'KE','Kecskemet',1),(1447,97,'KO','Komarom-Esztergom',1),(1448,97,'MI','Miskolc',1),(1449,97,'NA','Nagykanizsa',1),(1450,97,'NO','Nograd',1),(1451,97,'NY','Nyiregyhaza',1),(1452,97,'PE','Pecs',1),(1453,97,'PS','Pest',1),(1454,97,'SO','Somogy',1),(1455,97,'SP','Sopron',1),(1456,97,'SS','Szabolcs-Szatmar-Bereg',1),(1457,97,'SZ','Szeged',1),(1458,97,'SE','Szekesfehervar',1),(1459,97,'SL','Szolnok',1),(1460,97,'SM','Szombathely',1),(1461,97,'TA','Tatabanya',1),(1462,97,'TO','Tolna',1),(1463,97,'VA','Vas',1),(1464,97,'VE','Veszprem',1),(1465,97,'ZA','Zala',1),(1466,97,'ZZ','Zalaegerszeg',1),(1467,98,'AL','Austurland',1),(1468,98,'HF','Hofuoborgarsvaeoi',1),(1469,98,'NE','Norourland eystra',1),(1470,98,'NV','Norourland vestra',1),(1471,98,'SL','Suourland',1),(1472,98,'SN','Suournes',1),(1473,98,'VF','Vestfiroir',1),(1474,98,'VL','Vesturland',1),(1475,99,'AN','Andaman and Nicobar Islands',1),(1476,99,'AP','Andhra Pradesh',1),(1477,99,'AR','Arunachal Pradesh',1),(1478,99,'AS','Assam',1),(1479,99,'BI','Bihar',1),(1480,99,'CH','Chandigarh',1),(1481,99,'DA','Dadra and Nagar Haveli',1),(1482,99,'DM','Daman and Diu',1),(1483,99,'DE','Delhi',1),(1484,99,'GO','Goa',1),(1485,99,'GU','Gujarat',1),(1486,99,'HA','Haryana',1),(1487,99,'HP','Himachal Pradesh',1),(1488,99,'JA','Jammu and Kashmir',1),(1489,99,'KA','Karnataka',1),(1490,99,'KE','Kerala',1),(1491,99,'LI','Lakshadweep Islands',1),(1492,99,'MP','Madhya Pradesh',1),(1493,99,'MA','Maharashtra',1),(1494,99,'MN','Manipur',1),(1495,99,'ME','Meghalaya',1),(1496,99,'MI','Mizoram',1),(1497,99,'NA','Nagaland',1),(1498,99,'OR','Orissa',1),(1499,99,'PO','Pondicherry',1),(1500,99,'PU','Punjab',1),(1501,99,'RA','Rajasthan',1),(1502,99,'SI','Sikkim',1),(1503,99,'TN','Tamil Nadu',1),(1504,99,'TR','Tripura',1),(1505,99,'UP','Uttar Pradesh',1),(1506,99,'WB','West Bengal',1),(1507,100,'AC','Aceh',1),(1508,100,'BA','Bali',1),(1509,100,'BT','Banten',1),(1510,100,'BE','Bengkulu',1),(1511,100,'BD','BoDeTaBek',1),(1512,100,'GO','Gorontalo',1),(1513,100,'JK','Jakarta Raya',1),(1514,100,'JA','Jambi',1),(1515,100,'JB','Jawa Barat',1),(1516,100,'JT','Jawa Tengah',1),(1517,100,'JI','Jawa Timur',1),(1518,100,'KB','Kalimantan Barat',1),(1519,100,'KS','Kalimantan Selatan',1),(1520,100,'KT','Kalimantan Tengah',1),(1521,100,'KI','Kalimantan Timur',1),(1522,100,'BB','Kepulauan Bangka Belitung',1),(1523,100,'LA','Lampung',1),(1524,100,'MA','Maluku',1),(1525,100,'MU','Maluku Utara',1),(1526,100,'NB','Nusa Tenggara Barat',1),(1527,100,'NT','Nusa Tenggara Timur',1),(1528,100,'PA','Papua',1),(1529,100,'RI','Riau',1),(1530,100,'SN','Sulawesi Selatan',1),(1531,100,'ST','Sulawesi Tengah',1),(1532,100,'SG','Sulawesi Tenggara',1),(1533,100,'SA','Sulawesi Utara',1),(1534,100,'SB','Sumatera Barat',1),(1535,100,'SS','Sumatera Selatan',1),(1536,100,'SU','Sumatera Utara',1),(1537,100,'YO','Yogyakarta',1),(1538,101,'TEH','Tehran',1),(1539,101,'QOM','Qom',1),(1540,101,'MKZ','Markazi',1),(1541,101,'QAZ','Qazvin',1),(1542,101,'GIL','Gilan',1),(1543,101,'ARD','Ardabil',1),(1544,101,'ZAN','Zanjan',1),(1545,101,'EAZ','East Azarbaijan',1),(1546,101,'WEZ','West Azarbaijan',1),(1547,101,'KRD','Kurdistan',1),(1548,101,'HMD','Hamadan',1),(1549,101,'KRM','Kermanshah',1),(1550,101,'ILM','Ilam',1),(1551,101,'LRS','Lorestan',1),(1552,101,'KZT','Khuzestan',1),(1553,101,'CMB','Chahar Mahaal and Bakhtiari',1),(1554,101,'KBA','Kohkiluyeh and Buyer Ahmad',1),(1555,101,'BSH','Bushehr',1),(1556,101,'FAR','Fars',1),(1557,101,'HRM','Hormozgan',1),(1558,101,'SBL','Sistan and Baluchistan',1),(1559,101,'KRB','Kerman',1),(1560,101,'YZD','Yazd',1),(1561,101,'EFH','Esfahan',1),(1562,101,'SMN','Semnan',1),(1563,101,'MZD','Mazandaran',1),(1564,101,'GLS','Golestan',1),(1565,101,'NKH','North Khorasan',1),(1566,101,'RKH','Razavi Khorasan',1),(1567,101,'SKH','South Khorasan',1),(1568,102,'BD','Baghdad',1),(1569,102,'SD','Salah ad Din',1),(1570,102,'DY','Diyala',1),(1571,102,'WS','Wasit',1),(1572,102,'MY','Maysan',1),(1573,102,'BA','Al Basrah',1),(1574,102,'DQ','Dhi Qar',1),(1575,102,'MU','Al Muthanna',1),(1576,102,'QA','Al Qadisyah',1),(1577,102,'BB','Babil',1),(1578,102,'KB','Al Karbala',1),(1579,102,'NJ','An Najaf',1),(1580,102,'AB','Al Anbar',1),(1581,102,'NN','Ninawa',1),(1582,102,'DH','Dahuk',1),(1583,102,'AL','Arbil',1),(1584,102,'TM','At Ta\'mim',1),(1585,102,'SL','As Sulaymaniyah',1),(1586,103,'CA','Carlow',1),(1587,103,'CV','Cavan',1),(1588,103,'CL','Clare',1),(1589,103,'CO','Cork',1),(1590,103,'DO','Donegal',1),(1591,103,'DU','Dublin',1),(1592,103,'GA','Galway',1),(1593,103,'KE','Kerry',1),(1594,103,'KI','Kildare',1),(1595,103,'KL','Kilkenny',1),(1596,103,'LA','Laois',1),(1597,103,'LE','Leitrim',1),(1598,103,'LI','Limerick',1),(1599,103,'LO','Longford',1),(1600,103,'LU','Louth',1),(1601,103,'MA','Mayo',1),(1602,103,'ME','Meath',1),(1603,103,'MO','Monaghan',1),(1604,103,'OF','Offaly',1),(1605,103,'RO','Roscommon',1),(1606,103,'SL','Sligo',1),(1607,103,'TI','Tipperary',1),(1608,103,'WA','Waterford',1),(1609,103,'WE','Westmeath',1),(1610,103,'WX','Wexford',1),(1611,103,'WI','Wicklow',1),(1612,104,'BS','Be\'er Sheva',1),(1613,104,'BH','Bika\'at Hayarden',1),(1614,104,'EA','Eilat and Arava',1),(1615,104,'GA','Galil',1),(1616,104,'HA','Haifa',1),(1617,104,'JM','Jehuda Mountains',1),(1618,104,'JE','Jerusalem',1),(1619,104,'NE','Negev',1),(1620,104,'SE','Semaria',1),(1621,104,'SH','Sharon',1),(1622,104,'TA','Tel Aviv (Gosh Dan)',1),(3860,105,'CL','Caltanissetta',1),(3842,105,'AG','Agrigento',1),(3843,105,'AL','Alessandria',1),(3844,105,'AN','Ancona',1),(3845,105,'AO','Aosta',1),(3846,105,'AR','Arezzo',1),(3847,105,'AP','Ascoli Piceno',1),(3848,105,'AT','Asti',1),(3849,105,'AV','Avellino',1),(3850,105,'BA','Bari',1),(3851,105,'BL','Belluno',1),(3852,105,'BN','Benevento',1),(3853,105,'BG','Bergamo',1),(3854,105,'BI','Biella',1),(3855,105,'BO','Bologna',1),(3856,105,'BZ','Bolzano',1),(3857,105,'BS','Brescia',1),(3858,105,'BR','Brindisi',1),(3859,105,'CA','Cagliari',1),(1643,106,'CLA','Clarendon Parish',1),(1644,106,'HAN','Hanover Parish',1),(1645,106,'KIN','Kingston Parish',1),(1646,106,'MAN','Manchester Parish',1),(1647,106,'POR','Portland Parish',1),(1648,106,'AND','Saint Andrew Parish',1),(1649,106,'ANN','Saint Ann Parish',1),(1650,106,'CAT','Saint Catherine Parish',1),(1651,106,'ELI','Saint Elizabeth Parish',1),(1652,106,'JAM','Saint James Parish',1),(1653,106,'MAR','Saint Mary Parish',1),(1654,106,'THO','Saint Thomas Parish',1),(1655,106,'TRL','Trelawny Parish',1),(1656,106,'WML','Westmoreland Parish',1),(1657,107,'AI','Aichi',1),(1658,107,'AK','Akita',1),(1659,107,'AO','Aomori',1),(1660,107,'CH','Chiba',1),(1661,107,'EH','Ehime',1),(1662,107,'FK','Fukui',1),(1663,107,'FU','Fukuoka',1),(1664,107,'FS','Fukushima',1),(1665,107,'GI','Gifu',1),(1666,107,'GU','Gumma',1),(1667,107,'HI','Hiroshima',1),(1668,107,'HO','Hokkaido',1),(1669,107,'HY','Hyogo',1),(1670,107,'IB','Ibaraki',1),(1671,107,'IS','Ishikawa',1),(1672,107,'IW','Iwate',1),(1673,107,'KA','Kagawa',1),(1674,107,'KG','Kagoshima',1),(1675,107,'KN','Kanagawa',1),(1676,107,'KO','Kochi',1),(1677,107,'KU','Kumamoto',1),(1678,107,'KY','Kyoto',1),(1679,107,'MI','Mie',1),(1680,107,'MY','Miyagi',1),(1681,107,'MZ','Miyazaki',1),(1682,107,'NA','Nagano',1),(1683,107,'NG','Nagasaki',1),(1684,107,'NR','Nara',1),(1685,107,'NI','Niigata',1),(1686,107,'OI','Oita',1),(1687,107,'OK','Okayama',1),(1688,107,'ON','Okinawa',1),(1689,107,'OS','Osaka',1),(1690,107,'SA','Saga',1),(1691,107,'SI','Saitama',1),(1692,107,'SH','Shiga',1),(1693,107,'SM','Shimane',1),(1694,107,'SZ','Shizuoka',1),(1695,107,'TO','Tochigi',1),(1696,107,'TS','Tokushima',1),(1697,107,'TK','Tokyo',1),(1698,107,'TT','Tottori',1),(1699,107,'TY','Toyama',1),(1700,107,'WA','Wakayama',1),(1701,107,'YA','Yamagata',1),(1702,107,'YM','Yamaguchi',1),(1703,107,'YN','Yamanashi',1),(1704,108,'AM','\'Amman',1),(1705,108,'AJ','Ajlun',1),(1706,108,'AA','Al \'Aqabah',1),(1707,108,'AB','Al Balqa\'',1),(1708,108,'AK','Al Karak',1),(1709,108,'AL','Al Mafraq',1),(1710,108,'AT','At Tafilah',1),(1711,108,'AZ','Az Zarqa\'',1),(1712,108,'IR','Irbid',1),(1713,108,'JA','Jarash',1),(1714,108,'MA','Ma\'an',1),(1715,108,'MD','Madaba',1),(1716,109,'AL','Almaty',1),(1717,109,'AC','Almaty City',1),(1718,109,'AM','Aqmola',1),(1719,109,'AQ','Aqtobe',1),(1720,109,'AS','Astana City',1),(1721,109,'AT','Atyrau',1),(1722,109,'BA','Batys Qazaqstan',1),(1723,109,'BY','Bayqongyr City',1),(1724,109,'MA','Mangghystau',1),(1725,109,'ON','Ongtustik Qazaqstan',1),(1726,109,'PA','Pavlodar',1),(1727,109,'QA','Qaraghandy',1),(1728,109,'QO','Qostanay',1),(1729,109,'QY','Qyzylorda',1),(1730,109,'SH','Shyghys Qazaqstan',1),(1731,109,'SO','Soltustik Qazaqstan',1),(1732,109,'ZH','Zhambyl',1),(1733,110,'CE','Central',1),(1734,110,'CO','Coast',1),(1735,110,'EA','Eastern',1),(1736,110,'NA','Nairobi Area',1),(1737,110,'NE','North Eastern',1),(1738,110,'NY','Nyanza',1),(1739,110,'RV','Rift Valley',1),(1740,110,'WE','Western',1),(1741,111,'AG','Abaiang',1),(1742,111,'AM','Abemama',1),(1743,111,'AK','Aranuka',1),(1744,111,'AO','Arorae',1),(1745,111,'BA','Banaba',1),(1746,111,'BE','Beru',1),(1747,111,'bT','Butaritari',1),(1748,111,'KA','Kanton',1),(1749,111,'KR','Kiritimati',1),(1750,111,'KU','Kuria',1),(1751,111,'MI','Maiana',1),(1752,111,'MN','Makin',1),(1753,111,'ME','Marakei',1),(1754,111,'NI','Nikunau',1),(1755,111,'NO','Nonouti',1),(1756,111,'ON','Onotoa',1),(1757,111,'TT','Tabiteuea',1),(1758,111,'TR','Tabuaeran',1),(1759,111,'TM','Tamana',1),(1760,111,'TW','Tarawa',1),(1761,111,'TE','Teraina',1),(1762,112,'CHA','Chagang-do',1),(1763,112,'HAB','Hamgyong-bukto',1),(1764,112,'HAN','Hamgyong-namdo',1),(1765,112,'HWB','Hwanghae-bukto',1),(1766,112,'HWN','Hwanghae-namdo',1),(1767,112,'KAN','Kangwon-do',1),(1768,112,'PYB','P\'yongan-bukto',1),(1769,112,'PYN','P\'yongan-namdo',1),(1770,112,'YAN','Ryanggang-do (Yanggang-do)',1),(1771,112,'NAJ','Rason Directly Governed City',1),(1772,112,'PYO','P\'yongyang Special City',1),(1773,113,'CO','Ch\'ungch\'ong-bukto',1),(1774,113,'CH','Ch\'ungch\'ong-namdo',1),(1775,113,'CD','Cheju-do',1),(1776,113,'CB','Cholla-bukto',1),(1777,113,'CN','Cholla-namdo',1),(1778,113,'IG','Inch\'on-gwangyoksi',1),(1779,113,'KA','Kangwon-do',1),(1780,113,'KG','Kwangju-gwangyoksi',1),(1781,113,'KD','Kyonggi-do',1),(1782,113,'KB','Kyongsang-bukto',1),(1783,113,'KN','Kyongsang-namdo',1),(1784,113,'PG','Pusan-gwangyoksi',1),(1785,113,'SO','Soul-t\'ukpyolsi',1),(1786,113,'TA','Taegu-gwangyoksi',1),(1787,113,'TG','Taejon-gwangyoksi',1),(1788,114,'AL','Al \'Asimah',1),(1789,114,'AA','Al Ahmadi',1),(1790,114,'AF','Al Farwaniyah',1),(1791,114,'AJ','Al Jahra\'',1),(1792,114,'HA','Hawalli',1),(1793,115,'GB','Bishkek',1),(1794,115,'B','Batken',1),(1795,115,'C','Chu',1),(1796,115,'J','Jalal-Abad',1),(1797,115,'N','Naryn',1),(1798,115,'O','Osh',1),(1799,115,'T','Talas',1),(1800,115,'Y','Ysyk-Kol',1),(1801,116,'VT','Vientiane',1),(1802,116,'AT','Attapu',1),(1803,116,'BK','Bokeo',1),(1804,116,'BL','Bolikhamxai',1),(1805,116,'CH','Champasak',1),(1806,116,'HO','Houaphan',1),(1807,116,'KH','Khammouan',1),(1808,116,'LM','Louang Namtha',1),(1809,116,'LP','Louangphabang',1),(1810,116,'OU','Oudomxai',1),(1811,116,'PH','Phongsali',1),(1812,116,'SL','Salavan',1),(1813,116,'SV','Savannakhet',1),(1814,116,'VI','Vientiane',1),(1815,116,'XA','Xaignabouli',1),(1816,116,'XE','Xekong',1),(1817,116,'XI','Xiangkhoang',1),(1818,116,'XN','Xaisomboun',1),(1819,117,'AIZ','Aizkraukles Rajons',1),(1820,117,'ALU','Aluksnes Rajons',1),(1821,117,'BAL','Balvu Rajons',1),(1822,117,'BAU','Bauskas Rajons',1),(1823,117,'CES','Cesu Rajons',1),(1824,117,'DGR','Daugavpils Rajons',1),(1825,117,'DOB','Dobeles Rajons',1),(1826,117,'GUL','Gulbenes Rajons',1),(1827,117,'JEK','Jekabpils Rajons',1),(1828,117,'JGR','Jelgavas Rajons',1),(1829,117,'KRA','Kraslavas Rajons',1),(1830,117,'KUL','Kuldigas Rajons',1),(1831,117,'LPR','Liepajas Rajons',1),(1832,117,'LIM','Limbazu Rajons',1),(1833,117,'LUD','Ludzas Rajons',1),(1834,117,'MAD','Madonas Rajons',1),(1835,117,'OGR','Ogres Rajons',1),(1836,117,'PRE','Preilu Rajons',1),(1837,117,'RZR','Rezeknes Rajons',1),(1838,117,'RGR','Rigas Rajons',1),(1839,117,'SAL','Saldus Rajons',1),(1840,117,'TAL','Talsu Rajons',1),(1841,117,'TUK','Tukuma Rajons',1),(1842,117,'VLK','Valkas Rajons',1),(1843,117,'VLM','Valmieras Rajons',1),(1844,117,'VSR','Ventspils Rajons',1),(1845,117,'DGV','Daugavpils',1),(1846,117,'JGV','Jelgava',1),(1847,117,'JUR','Jurmala',1),(1848,117,'LPK','Liepaja',1),(1849,117,'RZK','Rezekne',1),(1850,117,'RGA','Riga',1),(1851,117,'VSL','Ventspils',1),(1852,119,'BE','Berea',1),(1853,119,'BB','Butha-Buthe',1),(1854,119,'LE','Leribe',1),(1855,119,'MF','Mafeteng',1),(1856,119,'MS','Maseru',1),(1857,119,'MH','Mohale\'s Hoek',1),(1858,119,'MK','Mokhotlong',1),(1859,119,'QN','Qacha\'s Nek',1),(1860,119,'QT','Quthing',1),(1861,119,'TT','Thaba-Tseka',1),(1862,120,'BI','Bomi',1),(1863,120,'BG','Bong',1),(1864,120,'GB','Grand Bassa',1),(1865,120,'CM','Grand Cape Mount',1),(1866,120,'GG','Grand Gedeh',1),(1867,120,'GK','Grand Kru',1),(1868,120,'LO','Lofa',1),(1869,120,'MG','Margibi',1),(1870,120,'ML','Maryland',1),(1871,120,'MS','Montserrado',1),(1872,120,'NB','Nimba',1),(1873,120,'RC','River Cess',1),(1874,120,'SN','Sinoe',1),(1875,121,'AJ','Ajdabiya',1),(1876,121,'AZ','Al \'Aziziyah',1),(1877,121,'FA','Al Fatih',1),(1878,121,'JA','Al Jabal al Akhdar',1),(1879,121,'JU','Al Jufrah',1),(1880,121,'KH','Al Khums',1),(1881,121,'KU','Al Kufrah',1),(1882,121,'NK','An Nuqat al Khams',1),(1883,121,'AS','Ash Shati\'',1),(1884,121,'AW','Awbari',1),(1885,121,'ZA','Az Zawiyah',1),(1886,121,'BA','Banghazi',1),(1887,121,'DA','Darnah',1),(1888,121,'GD','Ghadamis',1),(1889,121,'GY','Gharyan',1),(1890,121,'MI','Misratah',1),(1891,121,'MZ','Murzuq',1),(1892,121,'SB','Sabha',1),(1893,121,'SW','Sawfajjin',1),(1894,121,'SU','Surt',1),(1895,121,'TL','Tarabulus (Tripoli)',1),(1896,121,'TH','Tarhunah',1),(1897,121,'TU','Tubruq',1),(1898,121,'YA','Yafran',1),(1899,121,'ZL','Zlitan',1),(1900,122,'V','Vaduz',1),(1901,122,'A','Schaan',1),(1902,122,'B','Balzers',1),(1903,122,'N','Triesen',1),(1904,122,'E','Eschen',1),(1905,122,'M','Mauren',1),(1906,122,'T','Triesenberg',1),(1907,122,'R','Ruggell',1),(1908,122,'G','Gamprin',1),(1909,122,'L','Schellenberg',1),(1910,122,'P','Planken',1),(1911,123,'AL','Alytus',1),(1912,123,'KA','Kaunas',1),(1913,123,'KL','Klaipeda',1),(1914,123,'MA','Marijampole',1),(1915,123,'PA','Panevezys',1),(1916,123,'SI','Siauliai',1),(1917,123,'TA','Taurage',1),(1918,123,'TE','Telsiai',1),(1919,123,'UT','Utena',1),(1920,123,'VI','Vilnius',1),(1921,124,'DD','Diekirch',1),(1922,124,'DC','Clervaux',1),(1923,124,'DR','Redange',1),(1924,124,'DV','Vianden',1),(1925,124,'DW','Wiltz',1),(1926,124,'GG','Grevenmacher',1),(1927,124,'GE','Echternach',1),(1928,124,'GR','Remich',1),(1929,124,'LL','Luxembourg',1),(1930,124,'LC','Capellen',1),(1931,124,'LE','Esch-sur-Alzette',1),(1932,124,'LM','Mersch',1),(1933,125,'OLF','Our Lady Fatima Parish',1),(1934,125,'ANT','St. Anthony Parish',1),(1935,125,'LAZ','St. Lazarus Parish',1),(1936,125,'CAT','Cathedral Parish',1),(1937,125,'LAW','St. Lawrence Parish',1),(1938,127,'AN','Antananarivo',1),(1939,127,'AS','Antsiranana',1),(1940,127,'FN','Fianarantsoa',1),(1941,127,'MJ','Mahajanga',1),(1942,127,'TM','Toamasina',1),(1943,127,'TL','Toliara',1),(1944,128,'BLK','Balaka',1),(1945,128,'BLT','Blantyre',1),(1946,128,'CKW','Chikwawa',1),(1947,128,'CRD','Chiradzulu',1),(1948,128,'CTP','Chitipa',1),(1949,128,'DDZ','Dedza',1),(1950,128,'DWA','Dowa',1),(1951,128,'KRG','Karonga',1),(1952,128,'KSG','Kasungu',1),(1953,128,'LKM','Likoma',1),(1954,128,'LLG','Lilongwe',1),(1955,128,'MCG','Machinga',1),(1956,128,'MGC','Mangochi',1),(1957,128,'MCH','Mchinji',1),(1958,128,'MLJ','Mulanje',1),(1959,128,'MWZ','Mwanza',1),(1960,128,'MZM','Mzimba',1),(1961,128,'NTU','Ntcheu',1),(1962,128,'NKB','Nkhata Bay',1),(1963,128,'NKH','Nkhotakota',1),(1964,128,'NSJ','Nsanje',1),(1965,128,'NTI','Ntchisi',1),(1966,128,'PHL','Phalombe',1),(1967,128,'RMP','Rumphi',1),(1968,128,'SLM','Salima',1),(1969,128,'THY','Thyolo',1),(1970,128,'ZBA','Zomba',1),(1971,129,'JO','Johor',1),(1972,129,'KE','Kedah',1),(1973,129,'KL','Kelantan',1),(1974,129,'LA','Labuan',1),(1975,129,'ME','Melaka',1),(1976,129,'NS','Negeri Sembilan',1),(1977,129,'PA','Pahang',1),(1978,129,'PE','Perak',1),(1979,129,'PR','Perlis',1),(1980,129,'PP','Pulau Pinang',1),(1981,129,'SA','Sabah',1),(1982,129,'SR','Sarawak',1),(1983,129,'SE','Selangor',1),(1984,129,'TE','Terengganu',1),(1985,129,'WP','Wilayah Persekutuan',1),(1986,130,'THU','Thiladhunmathi Uthuru',1),(1987,130,'THD','Thiladhunmathi Dhekunu',1),(1988,130,'MLU','Miladhunmadulu Uthuru',1),(1989,130,'MLD','Miladhunmadulu Dhekunu',1),(1990,130,'MAU','Maalhosmadulu Uthuru',1),(1991,130,'MAD','Maalhosmadulu Dhekunu',1),(1992,130,'FAA','Faadhippolhu',1),(1993,130,'MAA','Male Atoll',1),(1994,130,'AAU','Ari Atoll Uthuru',1),(1995,130,'AAD','Ari Atoll Dheknu',1),(1996,130,'FEA','Felidhe Atoll',1),(1997,130,'MUA','Mulaku Atoll',1),(1998,130,'NAU','Nilandhe Atoll Uthuru',1),(1999,130,'NAD','Nilandhe Atoll Dhekunu',1),(2000,130,'KLH','Kolhumadulu',1),(2001,130,'HDH','Hadhdhunmathi',1),(2002,130,'HAU','Huvadhu Atoll Uthuru',1),(2003,130,'HAD','Huvadhu Atoll Dhekunu',1),(2004,130,'FMU','Fua Mulaku',1),(2005,130,'ADD','Addu',1),(2006,131,'GA','Gao',1),(2007,131,'KY','Kayes',1),(2008,131,'KD','Kidal',1),(2009,131,'KL','Koulikoro',1),(2010,131,'MP','Mopti',1),(2011,131,'SG','Segou',1),(2012,131,'SK','Sikasso',1),(2013,131,'TB','Tombouctou',1),(2014,131,'CD','Bamako Capital District',1),(2015,132,'ATT','Attard',1),(2016,132,'BAL','Balzan',1),(2017,132,'BGU','Birgu',1),(2018,132,'BKK','Birkirkara',1),(2019,132,'BRZ','Birzebbuga',1),(2020,132,'BOR','Bormla',1),(2021,132,'DIN','Dingli',1),(2022,132,'FGU','Fgura',1),(2023,132,'FLO','Floriana',1),(2024,132,'GDJ','Gudja',1),(2025,132,'GZR','Gzira',1),(2026,132,'GRG','Gargur',1),(2027,132,'GXQ','Gaxaq',1),(2028,132,'HMR','Hamrun',1),(2029,132,'IKL','Iklin',1),(2030,132,'ISL','Isla',1),(2031,132,'KLK','Kalkara',1),(2032,132,'KRK','Kirkop',1),(2033,132,'LIJ','Lija',1),(2034,132,'LUQ','Luqa',1),(2035,132,'MRS','Marsa',1),(2036,132,'MKL','Marsaskala',1),(2037,132,'MXL','Marsaxlokk',1),(2038,132,'MDN','Mdina',1),(2039,132,'MEL','Melliea',1),(2040,132,'MGR','Mgarr',1),(2041,132,'MST','Mosta',1),(2042,132,'MQA','Mqabba',1),(2043,132,'MSI','Msida',1),(2044,132,'MTF','Mtarfa',1),(2045,132,'NAX','Naxxar',1),(2046,132,'PAO','Paola',1),(2047,132,'PEM','Pembroke',1),(2048,132,'PIE','Pieta',1),(2049,132,'QOR','Qormi',1),(2050,132,'QRE','Qrendi',1),(2051,132,'RAB','Rabat',1),(2052,132,'SAF','Safi',1),(2053,132,'SGI','San Giljan',1),(2054,132,'SLU','Santa Lucija',1),(2055,132,'SPB','San Pawl il-Bahar',1),(2056,132,'SGW','San Gwann',1),(2057,132,'SVE','Santa Venera',1),(2058,132,'SIG','Siggiewi',1),(2059,132,'SLM','Sliema',1),(2060,132,'SWQ','Swieqi',1),(2061,132,'TXB','Ta Xbiex',1),(2062,132,'TRX','Tarxien',1),(2063,132,'VLT','Valletta',1),(2064,132,'XGJ','Xgajra',1),(2065,132,'ZBR','Zabbar',1),(2066,132,'ZBG','Zebbug',1),(2067,132,'ZJT','Zejtun',1),(2068,132,'ZRQ','Zurrieq',1),(2069,132,'FNT','Fontana',1),(2070,132,'GHJ','Ghajnsielem',1),(2071,132,'GHR','Gharb',1),(2072,132,'GHS','Ghasri',1),(2073,132,'KRC','Kercem',1),(2074,132,'MUN','Munxar',1),(2075,132,'NAD','Nadur',1),(2076,132,'QAL','Qala',1),(2077,132,'VIC','Victoria',1),(2078,132,'SLA','San Lawrenz',1),(2079,132,'SNT','Sannat',1),(2080,132,'ZAG','Xagra',1),(2081,132,'XEW','Xewkija',1),(2082,132,'ZEB','Zebbug',1),(2083,133,'ALG','Ailinginae',1),(2084,133,'ALL','Ailinglaplap',1),(2085,133,'ALK','Ailuk',1),(2086,133,'ARN','Arno',1),(2087,133,'AUR','Aur',1),(2088,133,'BKR','Bikar',1),(2089,133,'BKN','Bikini',1),(2090,133,'BKK','Bokak',1),(2091,133,'EBN','Ebon',1),(2092,133,'ENT','Enewetak',1),(2093,133,'EKB','Erikub',1),(2094,133,'JBT','Jabat',1),(2095,133,'JLT','Jaluit',1),(2096,133,'JEM','Jemo',1),(2097,133,'KIL','Kili',1),(2098,133,'KWJ','Kwajalein',1),(2099,133,'LAE','Lae',1),(2100,133,'LIB','Lib',1),(2101,133,'LKP','Likiep',1),(2102,133,'MJR','Majuro',1),(2103,133,'MLP','Maloelap',1),(2104,133,'MJT','Mejit',1),(2105,133,'MIL','Mili',1),(2106,133,'NMK','Namorik',1),(2107,133,'NAM','Namu',1),(2108,133,'RGL','Rongelap',1),(2109,133,'RGK','Rongrik',1),(2110,133,'TOK','Toke',1),(2111,133,'UJA','Ujae',1),(2112,133,'UJL','Ujelang',1),(2113,133,'UTK','Utirik',1),(2114,133,'WTH','Wotho',1),(2115,133,'WTJ','Wotje',1),(2116,135,'AD','Adrar',1),(2117,135,'AS','Assaba',1),(2118,135,'BR','Brakna',1),(2119,135,'DN','Dakhlet Nouadhibou',1),(2120,135,'GO','Gorgol',1),(2121,135,'GM','Guidimaka',1),(2122,135,'HC','Hodh Ech Chargui',1),(2123,135,'HG','Hodh El Gharbi',1),(2124,135,'IN','Inchiri',1),(2125,135,'TA','Tagant',1),(2126,135,'TZ','Tiris Zemmour',1),(2127,135,'TR','Trarza',1),(2128,135,'NO','Nouakchott',1),(2129,136,'BR','Beau Bassin-Rose Hill',1),(2130,136,'CU','Curepipe',1),(2131,136,'PU','Port Louis',1),(2132,136,'QB','Quatre Bornes',1),(2133,136,'VP','Vacoas-Phoenix',1),(2134,136,'AG','Agalega Islands',1),(2135,136,'CC','Cargados Carajos Shoals (Saint Brandon Islands)',1),(2136,136,'RO','Rodrigues',1),(2137,136,'BL','Black River',1),(2138,136,'FL','Flacq',1),(2139,136,'GP','Grand Port',1),(2140,136,'MO','Moka',1),(2141,136,'PA','Pamplemousses',1),(2142,136,'PW','Plaines Wilhems',1),(2143,136,'PL','Port Louis',1),(2144,136,'RR','Riviere du Rempart',1),(2145,136,'SA','Savanne',1),(2146,138,'BN','Baja California Norte',1),(2147,138,'BS','Baja California Sur',1),(2148,138,'CA','Campeche',1),(2149,138,'CI','Chiapas',1),(2150,138,'CH','Chihuahua',1),(2151,138,'CZ','Coahuila de Zaragoza',1),(2152,138,'CL','Colima',1),(2153,138,'DF','Distrito Federal',1),(2154,138,'DU','Durango',1),(2155,138,'GA','Guanajuato',1),(2156,138,'GE','Guerrero',1),(2157,138,'HI','Hidalgo',1),(2158,138,'JA','Jalisco',1),(2159,138,'ME','Mexico',1),(2160,138,'MI','Michoacan de Ocampo',1),(2161,138,'MO','Morelos',1),(2162,138,'NA','Nayarit',1),(2163,138,'NL','Nuevo Leon',1),(2164,138,'OA','Oaxaca',1),(2165,138,'PU','Puebla',1),(2166,138,'QA','Queretaro de Arteaga',1),(2167,138,'QR','Quintana Roo',1),(2168,138,'SA','San Luis Potosi',1),(2169,138,'SI','Sinaloa',1),(2170,138,'SO','Sonora',1),(2171,138,'TB','Tabasco',1),(2172,138,'TM','Tamaulipas',1),(2173,138,'TL','Tlaxcala',1),(2174,138,'VE','Veracruz-Llave',1),(2175,138,'YU','Yucatan',1),(2176,138,'ZA','Zacatecas',1),(2177,139,'C','Chuuk',1),(2178,139,'K','Kosrae',1),(2179,139,'P','Pohnpei',1),(2180,139,'Y','Yap',1),(2181,140,'GA','Gagauzia',1),(2182,140,'CU','Chisinau',1),(2183,140,'BA','Balti',1),(2184,140,'CA','Cahul',1),(2185,140,'ED','Edinet',1),(2186,140,'LA','Lapusna',1),(2187,140,'OR','Orhei',1),(2188,140,'SO','Soroca',1),(2189,140,'TI','Tighina',1),(2190,140,'UN','Ungheni',1),(2191,140,'SN','St‚nga Nistrului',1),(2192,141,'FV','Fontvieille',1),(2193,141,'LC','La Condamine',1),(2194,141,'MV','Monaco-Ville',1),(2195,141,'MC','Monte-Carlo',1),(2196,142,'1','Ulanbaatar',1),(2197,142,'035','Orhon',1),(2198,142,'037','Darhan uul',1),(2199,142,'039','Hentiy',1),(2200,142,'041','Hovsgol',1),(2201,142,'043','Hovd',1),(2202,142,'046','Uvs',1),(2203,142,'047','Tov',1),(2204,142,'049','Selenge',1),(2205,142,'051','Suhbaatar',1),(2206,142,'053','Omnogovi',1),(2207,142,'055','Ovorhangay',1),(2208,142,'057','Dzavhan',1),(2209,142,'059','DundgovL',1),(2210,142,'061','Dornod',1),(2211,142,'063','Dornogov',1),(2212,142,'064','Govi-Sumber',1),(2213,142,'065','Govi-Altay',1),(2214,142,'067','Bulgan',1),(2215,142,'069','Bayanhongor',1),(2216,142,'071','Bayan-Olgiy',1),(2217,142,'073','Arhangay',1),(2218,143,'A','Saint Anthony',1),(2219,143,'G','Saint Georges',1),(2220,143,'P','Saint Peter',1),(2221,144,'AGD','Agadir',1),(2222,144,'HOC','Al Hoceima',1),(2223,144,'AZI','Azilal',1),(2224,144,'BME','Beni Mellal',1),(2225,144,'BSL','Ben Slimane',1),(2226,144,'BLM','Boulemane',1),(2227,144,'CBL','Casablanca',1),(2228,144,'CHA','Chaouen',1),(2229,144,'EJA','El Jadida',1),(2230,144,'EKS','El Kelaa des Sraghna',1),(2231,144,'ERA','Er Rachidia',1),(2232,144,'ESS','Essaouira',1),(2233,144,'FES','Fes',1),(2234,144,'FIG','Figuig',1),(2235,144,'GLM','Guelmim',1),(2236,144,'IFR','Ifrane',1),(2237,144,'KEN','Kenitra',1),(2238,144,'KHM','Khemisset',1),(2239,144,'KHN','Khenifra',1),(2240,144,'KHO','Khouribga',1),(2241,144,'LYN','Laayoune',1),(2242,144,'LAR','Larache',1),(2243,144,'MRK','Marrakech',1),(2244,144,'MKN','Meknes',1),(2245,144,'NAD','Nador',1),(2246,144,'ORZ','Ouarzazate',1),(2247,144,'OUJ','Oujda',1),(2248,144,'RSA','Rabat-Sale',1),(2249,144,'SAF','Safi',1),(2250,144,'SET','Settat',1),(2251,144,'SKA','Sidi Kacem',1),(2252,144,'TGR','Tangier',1),(2253,144,'TAN','Tan-Tan',1),(2254,144,'TAO','Taounate',1),(2255,144,'TRD','Taroudannt',1),(2256,144,'TAT','Tata',1),(2257,144,'TAZ','Taza',1),(2258,144,'TET','Tetouan',1),(2259,144,'TIZ','Tiznit',1),(2260,144,'ADK','Ad Dakhla',1),(2261,144,'BJD','Boujdour',1),(2262,144,'ESM','Es Smara',1),(2263,145,'CD','Cabo Delgado',1),(2264,145,'GZ','Gaza',1),(2265,145,'IN','Inhambane',1),(2266,145,'MN','Manica',1),(2267,145,'MC','Maputo (city)',1),(2268,145,'MP','Maputo',1),(2269,145,'NA','Nampula',1),(2270,145,'NI','Niassa',1),(2271,145,'SO','Sofala',1),(2272,145,'TE','Tete',1),(2273,145,'ZA','Zambezia',1),(2274,146,'AY','Ayeyarwady',1),(2275,146,'BG','Bago',1),(2276,146,'MG','Magway',1),(2277,146,'MD','Mandalay',1),(2278,146,'SG','Sagaing',1),(2279,146,'TN','Tanintharyi',1),(2280,146,'YG','Yangon',1),(2281,146,'CH','Chin State',1),(2282,146,'KC','Kachin State',1),(2283,146,'KH','Kayah State',1),(2284,146,'KN','Kayin State',1),(2285,146,'MN','Mon State',1),(2286,146,'RK','Rakhine State',1),(2287,146,'SH','Shan State',1),(2288,147,'CA','Caprivi',1),(2289,147,'ER','Erongo',1),(2290,147,'HA','Hardap',1),(2291,147,'KR','Karas',1),(2292,147,'KV','Kavango',1),(2293,147,'KH','Khomas',1),(2294,147,'KU','Kunene',1),(2295,147,'OW','Ohangwena',1),(2296,147,'OK','Omaheke',1),(2297,147,'OT','Omusati',1),(2298,147,'ON','Oshana',1),(2299,147,'OO','Oshikoto',1),(2300,147,'OJ','Otjozondjupa',1),(2301,148,'AO','Aiwo',1),(2302,148,'AA','Anabar',1),(2303,148,'AT','Anetan',1),(2304,148,'AI','Anibare',1),(2305,148,'BA','Baiti',1),(2306,148,'BO','Boe',1),(2307,148,'BU','Buada',1),(2308,148,'DE','Denigomodu',1),(2309,148,'EW','Ewa',1),(2310,148,'IJ','Ijuw',1),(2311,148,'ME','Meneng',1),(2312,148,'NI','Nibok',1),(2313,148,'UA','Uaboe',1),(2314,148,'YA','Yaren',1),(2315,149,'BA','Bagmati',1),(2316,149,'BH','Bheri',1),(2317,149,'DH','Dhawalagiri',1),(2318,149,'GA','Gandaki',1),(2319,149,'JA','Janakpur',1),(2320,149,'KA','Karnali',1),(2321,149,'KO','Kosi',1),(2322,149,'LU','Lumbini',1),(2323,149,'MA','Mahakali',1),(2324,149,'ME','Mechi',1),(2325,149,'NA','Narayani',1),(2326,149,'RA','Rapti',1),(2327,149,'SA','Sagarmatha',1),(2328,149,'SE','Seti',1),(2329,150,'DR','Drenthe',1),(2330,150,'FL','Flevoland',1),(2331,150,'FR','Friesland',1),(2332,150,'GE','Gelderland',1),(2333,150,'GR','Groningen',1),(2334,150,'LI','Limburg',1),(2335,150,'NB','Noord Brabant',1),(2336,150,'NH','Noord Holland',1),(2337,150,'OV','Overijssel',1),(2338,150,'UT','Utrecht',1),(2339,150,'ZE','Zeeland',1),(2340,150,'ZH','Zuid Holland',1),(2341,152,'L','Iles Loyaute',1),(2342,152,'N','Nord',1),(2343,152,'S','Sud',1),(2344,153,'AUK','Auckland',1),(2345,153,'BOP','Bay of Plenty',1),(2346,153,'CAN','Canterbury',1),(2347,153,'COR','Coromandel',1),(2348,153,'GIS','Gisborne',1),(2349,153,'FIO','Fiordland',1),(2350,153,'HKB','Hawke\'s Bay',1),(2351,153,'MBH','Marlborough',1),(2352,153,'MWT','Manawatu-Wanganui',1),(2353,153,'MCM','Mt Cook-Mackenzie',1),(2354,153,'NSN','Nelson',1),(2355,153,'NTL','Northland',1),(2356,153,'OTA','Otago',1),(2357,153,'STL','Southland',1),(2358,153,'TKI','Taranaki',1),(2359,153,'WGN','Wellington',1),(2360,153,'WKO','Waikato',1),(2361,153,'WAI','Wairprarapa',1),(2362,153,'WTC','West Coast',1),(2363,154,'AN','Atlantico Norte',1),(2364,154,'AS','Atlantico Sur',1),(2365,154,'BO','Boaco',1),(2366,154,'CA','Carazo',1),(2367,154,'CI','Chinandega',1),(2368,154,'CO','Chontales',1),(2369,154,'ES','Esteli',1),(2370,154,'GR','Granada',1),(2371,154,'JI','Jinotega',1),(2372,154,'LE','Leon',1),(2373,154,'MD','Madriz',1),(2374,154,'MN','Managua',1),(2375,154,'MS','Masaya',1),(2376,154,'MT','Matagalpa',1),(2377,154,'NS','Nuevo Segovia',1),(2378,154,'RS','Rio San Juan',1),(2379,154,'RI','Rivas',1),(2380,155,'AG','Agadez',1),(2381,155,'DF','Diffa',1),(2382,155,'DS','Dosso',1),(2383,155,'MA','Maradi',1),(2384,155,'NM','Niamey',1),(2385,155,'TH','Tahoua',1),(2386,155,'TL','Tillaberi',1),(2387,155,'ZD','Zinder',1),(2388,156,'AB','Abia',1),(2389,156,'CT','Abuja Federal Capital Territory',1),(2390,156,'AD','Adamawa',1),(2391,156,'AK','Akwa Ibom',1),(2392,156,'AN','Anambra',1),(2393,156,'BC','Bauchi',1),(2394,156,'BY','Bayelsa',1),(2395,156,'BN','Benue',1),(2396,156,'BO','Borno',1),(2397,156,'CR','Cross River',1),(2398,156,'DE','Delta',1),(2399,156,'EB','Ebonyi',1),(2400,156,'ED','Edo',1),(2401,156,'EK','Ekiti',1),(2402,156,'EN','Enugu',1),(2403,156,'GO','Gombe',1),(2404,156,'IM','Imo',1),(2405,156,'JI','Jigawa',1),(2406,156,'KD','Kaduna',1),(2407,156,'KN','Kano',1),(2408,156,'KT','Katsina',1),(2409,156,'KE','Kebbi',1),(2410,156,'KO','Kogi',1),(2411,156,'KW','Kwara',1),(2412,156,'LA','Lagos',1),(2413,156,'NA','Nassarawa',1),(2414,156,'NI','Niger',1),(2415,156,'OG','Ogun',1),(2416,156,'ONG','Ondo',1),(2417,156,'OS','Osun',1),(2418,156,'OY','Oyo',1),(2419,156,'PL','Plateau',1),(2420,156,'RI','Rivers',1),(2421,156,'SO','Sokoto',1),(2422,156,'TA','Taraba',1),(2423,156,'YO','Yobe',1),(2424,156,'ZA','Zamfara',1),(2425,159,'N','Northern Islands',1),(2426,159,'R','Rota',1),(2427,159,'S','Saipan',1),(2428,159,'T','Tinian',1),(2429,160,'AK','Akershus',1),(2430,160,'AA','Aust-Agder',1),(2431,160,'BU','Buskerud',1),(2432,160,'FM','Finnmark',1),(2433,160,'HM','Hedmark',1),(2434,160,'HL','Hordaland',1),(2435,160,'MR','More og Romdal',1),(2436,160,'NT','Nord-Trondelag',1),(2437,160,'NL','Nordland',1),(2438,160,'OF','Ostfold',1),(2439,160,'OP','Oppland',1),(2440,160,'OL','Oslo',1),(2441,160,'RL','Rogaland',1),(2442,160,'ST','Sor-Trondelag',1),(2443,160,'SJ','Sogn og Fjordane',1),(2444,160,'SV','Svalbard',1),(2445,160,'TM','Telemark',1),(2446,160,'TR','Troms',1),(2447,160,'VA','Vest-Agder',1),(2448,160,'VF','Vestfold',1),(2449,161,'DA','Ad Dakhiliyah',1),(2450,161,'BA','Al Batinah',1),(2451,161,'WU','Al Wusta',1),(2452,161,'SH','Ash Sharqiyah',1),(2453,161,'ZA','Az Zahirah',1),(2454,161,'MA','Masqat',1),(2455,161,'MU','Musandam',1),(2456,161,'ZU','Zufar',1),(2457,162,'B','Balochistan',1),(2458,162,'T','Federally Administered Tribal Areas',1),(2459,162,'I','Islamabad Capital Territory',1),(2460,162,'N','North-West Frontier',1),(2461,162,'P','Punjab',1),(2462,162,'S','Sindh',1),(2463,163,'AM','Aimeliik',1),(2464,163,'AR','Airai',1),(2465,163,'AN','Angaur',1),(2466,163,'HA','Hatohobei',1),(2467,163,'KA','Kayangel',1),(2468,163,'KO','Koror',1),(2469,163,'ME','Melekeok',1),(2470,163,'NA','Ngaraard',1),(2471,163,'NG','Ngarchelong',1),(2472,163,'ND','Ngardmau',1),(2473,163,'NT','Ngatpang',1),(2474,163,'NC','Ngchesar',1),(2475,163,'NR','Ngeremlengui',1),(2476,163,'NW','Ngiwal',1),(2477,163,'PE','Peleliu',1),(2478,163,'SO','Sonsorol',1),(2479,164,'BT','Bocas del Toro',1),(2480,164,'CH','Chiriqui',1),(2481,164,'CC','Cocle',1),(2482,164,'CL','Colon',1),(2483,164,'DA','Darien',1),(2484,164,'HE','Herrera',1),(2485,164,'LS','Los Santos',1),(2486,164,'PA','Panama',1),(2487,164,'SB','San Blas',1),(2488,164,'VG','Veraguas',1),(2489,165,'BV','Bougainville',1),(2490,165,'CE','Central',1),(2491,165,'CH','Chimbu',1),(2492,165,'EH','Eastern Highlands',1),(2493,165,'EB','East New Britain',1),(2494,165,'ES','East Sepik',1),(2495,165,'EN','Enga',1),(2496,165,'GU','Gulf',1),(2497,165,'MD','Madang',1),(2498,165,'MN','Manus',1),(2499,165,'MB','Milne Bay',1),(2500,165,'MR','Morobe',1),(2501,165,'NC','National Capital',1),(2502,165,'NI','New Ireland',1),(2503,165,'NO','Northern',1),(2504,165,'SA','Sandaun',1),(2505,165,'SH','Southern Highlands',1),(2506,165,'WE','Western',1),(2507,165,'WH','Western Highlands',1),(2508,165,'WB','West New Britain',1),(2509,166,'AG','Alto Paraguay',1),(2510,166,'AN','Alto Parana',1),(2511,166,'AM','Amambay',1),(2512,166,'AS','Asuncion',1),(2513,166,'BO','Boqueron',1),(2514,166,'CG','Caaguazu',1),(2515,166,'CZ','Caazapa',1),(2516,166,'CN','Canindeyu',1),(2517,166,'CE','Central',1),(2518,166,'CC','Concepcion',1),(2519,166,'CD','Cordillera',1),(2520,166,'GU','Guaira',1),(2521,166,'IT','Itapua',1),(2522,166,'MI','Misiones',1),(2523,166,'NE','Neembucu',1),(2524,166,'PA','Paraguari',1),(2525,166,'PH','Presidente Hayes',1),(2526,166,'SP','San Pedro',1),(2527,167,'AM','Amazonas',1),(2528,167,'AN','Ancash',1),(2529,167,'AP','Apurimac',1),(2530,167,'AR','Arequipa',1),(2531,167,'AY','Ayacucho',1),(2532,167,'CJ','Cajamarca',1),(2533,167,'CL','Callao',1),(2534,167,'CU','Cusco',1),(2535,167,'HV','Huancavelica',1),(2536,167,'HO','Huanuco',1),(2537,167,'IC','Ica',1),(2538,167,'JU','Junin',1),(2539,167,'LD','La Libertad',1),(2540,167,'LY','Lambayeque',1),(2541,167,'LI','Lima',1),(2542,167,'LO','Loreto',1),(2543,167,'MD','Madre de Dios',1),(2544,167,'MO','Moquegua',1),(2545,167,'PA','Pasco',1),(2546,167,'PI','Piura',1),(2547,167,'PU','Puno',1),(2548,167,'SM','San Martin',1),(2549,167,'TA','Tacna',1),(2550,167,'TU','Tumbes',1),(2551,167,'UC','Ucayali',1),(2552,168,'ABR','Abra',1),(2553,168,'ANO','Agusan del Norte',1),(2554,168,'ASU','Agusan del Sur',1),(2555,168,'AKL','Aklan',1),(2556,168,'ALB','Albay',1),(2557,168,'ANT','Antique',1),(2558,168,'APY','Apayao',1),(2559,168,'AUR','Aurora',1),(2560,168,'BAS','Basilan',1),(2561,168,'BTA','Bataan',1),(2562,168,'BTE','Batanes',1),(2563,168,'BTG','Batangas',1),(2564,168,'BLR','Biliran',1),(2565,168,'BEN','Benguet',1),(2566,168,'BOL','Bohol',1),(2567,168,'BUK','Bukidnon',1),(2568,168,'BUL','Bulacan',1),(2569,168,'CAG','Cagayan',1),(2570,168,'CNO','Camarines Norte',1),(2571,168,'CSU','Camarines Sur',1),(2572,168,'CAM','Camiguin',1),(2573,168,'CAP','Capiz',1),(2574,168,'CAT','Catanduanes',1),(2575,168,'CAV','Cavite',1),(2576,168,'CEB','Cebu',1),(2577,168,'CMP','Compostela',1),(2578,168,'DNO','Davao del Norte',1),(2579,168,'DSU','Davao del Sur',1),(2580,168,'DOR','Davao Oriental',1),(2581,168,'ESA','Eastern Samar',1),(2582,168,'GUI','Guimaras',1),(2583,168,'IFU','Ifugao',1),(2584,168,'INO','Ilocos Norte',1),(2585,168,'ISU','Ilocos Sur',1),(2586,168,'ILO','Iloilo',1),(2587,168,'ISA','Isabela',1),(2588,168,'KAL','Kalinga',1),(2589,168,'LAG','Laguna',1),(2590,168,'LNO','Lanao del Norte',1),(2591,168,'LSU','Lanao del Sur',1),(2592,168,'UNI','La Union',1),(2593,168,'LEY','Leyte',1),(2594,168,'MAG','Maguindanao',1),(2595,168,'MRN','Marinduque',1),(2596,168,'MSB','Masbate',1),(2597,168,'MIC','Mindoro Occidental',1),(2598,168,'MIR','Mindoro Oriental',1),(2599,168,'MSC','Misamis Occidental',1),(2600,168,'MOR','Misamis Oriental',1),(2601,168,'MOP','Mountain',1),(2602,168,'NOC','Negros Occidental',1),(2603,168,'NOR','Negros Oriental',1),(2604,168,'NCT','North Cotabato',1),(2605,168,'NSM','Northern Samar',1),(2606,168,'NEC','Nueva Ecija',1),(2607,168,'NVZ','Nueva Vizcaya',1),(2608,168,'PLW','Palawan',1),(2609,168,'PMP','Pampanga',1),(2610,168,'PNG','Pangasinan',1),(2611,168,'QZN','Quezon',1),(2612,168,'QRN','Quirino',1),(2613,168,'RIZ','Rizal',1),(2614,168,'ROM','Romblon',1),(2615,168,'SMR','Samar',1),(2616,168,'SRG','Sarangani',1),(2617,168,'SQJ','Siquijor',1),(2618,168,'SRS','Sorsogon',1),(2619,168,'SCO','South Cotabato',1),(2620,168,'SLE','Southern Leyte',1),(2621,168,'SKU','Sultan Kudarat',1),(2622,168,'SLU','Sulu',1),(2623,168,'SNO','Surigao del Norte',1),(2624,168,'SSU','Surigao del Sur',1),(2625,168,'TAR','Tarlac',1),(2626,168,'TAW','Tawi-Tawi',1),(2627,168,'ZBL','Zambales',1),(2628,168,'ZNO','Zamboanga del Norte',1),(2629,168,'ZSU','Zamboanga del Sur',1),(2630,168,'ZSI','Zamboanga Sibugay',1),(2631,170,'DO','Dolnoslaskie',1),(2632,170,'KP','Kujawsko-Pomorskie',1),(2633,170,'LO','Lodzkie',1),(2634,170,'LL','Lubelskie',1),(2635,170,'LU','Lubuskie',1),(2636,170,'ML','Malopolskie',1),(2637,170,'MZ','Mazowieckie',1),(2638,170,'OP','Opolskie',1),(2639,170,'PP','Podkarpackie',1),(2640,170,'PL','Podlaskie',1),(2641,170,'PM','Pomorskie',1),(2642,170,'SL','Slaskie',1),(2643,170,'SW','Swietokrzyskie',1),(2644,170,'WM','Warminsko-Mazurskie',1),(2645,170,'WP','Wielkopolskie',1),(2646,170,'ZA','Zachodniopomorskie',1),(2647,198,'P','Saint Pierre',1),(2648,198,'M','Miquelon',1),(2649,171,'AC','A&ccedil;ores',1),(2650,171,'AV','Aveiro',1),(2651,171,'BE','Beja',1),(2652,171,'BR','Braga',1),(2653,171,'BA','Bragan&ccedil;a',1),(2654,171,'CB','Castelo Branco',1),(2655,171,'CO','Coimbra',1),(2656,171,'EV','&Eacute;vora',1),(2657,171,'FA','Faro',1),(2658,171,'GU','Guarda',1),(2659,171,'LE','Leiria',1),(2660,171,'LI','Lisboa',1),(2661,171,'ME','Madeira',1),(2662,171,'PO','Portalegre',1),(2663,171,'PR','Porto',1),(2664,171,'SA','Santar&eacute;m',1),(2665,171,'SE','Set&uacute;bal',1),(2666,171,'VC','Viana do Castelo',1),(2667,171,'VR','Vila Real',1),(2668,171,'VI','Viseu',1),(2669,173,'DW','Ad Dawhah',1),(2670,173,'GW','Al Ghuwayriyah',1),(2671,173,'JM','Al Jumayliyah',1),(2672,173,'KR','Al Khawr',1),(2673,173,'WK','Al Wakrah',1),(2674,173,'RN','Ar Rayyan',1),(2675,173,'JB','Jarayan al Batinah',1),(2676,173,'MS','Madinat ash Shamal',1),(2677,173,'UD','Umm Sa\'id',1),(2678,173,'UL','Umm Salal',1),(2679,175,'AB','Alba',1),(2680,175,'AR','Arad',1),(2681,175,'AG','Arges',1),(2682,175,'BC','Bacau',1),(2683,175,'BH','Bihor',1),(2684,175,'BN','Bistrita-Nasaud',1),(2685,175,'BT','Botosani',1),(2686,175,'BV','Brasov',1),(2687,175,'BR','Braila',1),(2688,175,'B','Bucuresti',1),(2689,175,'BZ','Buzau',1),(2690,175,'CS','Caras-Severin',1),(2691,175,'CL','Calarasi',1),(2692,175,'CJ','Cluj',1),(2693,175,'CT','Constanta',1),(2694,175,'CV','Covasna',1),(2695,175,'DB','Dimbovita',1),(2696,175,'DJ','Dolj',1),(2697,175,'GL','Galati',1),(2698,175,'GR','Giurgiu',1),(2699,175,'GJ','Gorj',1),(2700,175,'HR','Harghita',1),(2701,175,'HD','Hunedoara',1),(2702,175,'IL','Ialomita',1),(2703,175,'IS','Iasi',1),(2704,175,'IF','Ilfov',1),(2705,175,'MM','Maramures',1),(2706,175,'MH','Mehedinti',1),(2707,175,'MS','Mures',1),(2708,175,'NT','Neamt',1),(2709,175,'OT','Olt',1),(2710,175,'PH','Prahova',1),(2711,175,'SM','Satu-Mare',1),(2712,175,'SJ','Salaj',1),(2713,175,'SB','Sibiu',1),(2714,175,'SV','Suceava',1),(2715,175,'TR','Teleorman',1),(2716,175,'TM','Timis',1),(2717,175,'TL','Tulcea',1),(2718,175,'VS','Vaslui',1),(2719,175,'VL','Valcea',1),(2720,175,'VN','Vrancea',1),(2721,176,'KK','Республика Хакасия',1),(2722,176,'MOS','Московская область',1),(2723,176,'CHU','Чукотский АО',1),(2724,176,'ARK','Архангельская область',1),(2725,176,'AST','Астраханская область',1),(2726,176,'ALT','Алтайский край',1),(2727,176,'BEL','Белгородская область',1),(2728,176,'YEV','Еврейская АО',1),(2729,176,'AMU','Амурская область',1),(2730,176,'BRY','Брянская область',1),(2731,176,'CU','Чувашская Республика',1),(2732,176,'CHE','Челябинская область',1),(2733,176,'KC','Карачаево-Черкеcсия',1),(2734,176,'ZAB','Забайкальский край',1),(2735,176,'LEN','Ленинградская область',1),(2736,176,'KL','Республика Калмыкия',1),(2737,176,'SAK','Сахалинская область',1),(2738,176,'AL','Республика Алтай',1),(2739,176,'CE','Чеченская Республика',1),(2740,176,'IRK','Иркутская область',1),(2741,176,'IVA','Ивановская область',1),(2742,176,'UD','Удмуртская Республика',1),(2743,176,'KGD','Калининградская область',1),(2744,176,'KLU','Калужская область',1),(2746,176,'TA','Республика Татарстан',1),(2747,176,'KEM','Кемеровская область',1),(2748,176,'KHA','Хабаровский край',1),(2749,176,'KHM','Ханты-Мансийский АО - Югра',1),(2750,176,'KOS','Костромская область',1),(2751,176,'KDA','Краснодарский край',1),(2752,176,'KYA','Красноярский край',1),(2754,176,'KGN','Курганская область',1),(2755,176,'KRS','Курская область',1),(2756,176,'TY','Республика Тыва',1),(2757,176,'LIP','Липецкая область',1),(2758,176,'MAG','Магаданская область',1),(2759,176,'DA','Республика Дагестан',1),(2760,176,'AD','Республика Адыгея',1),(2761,176,'MOW','Москва',1),(2762,176,'MUR','Мурманская область',1),(2763,176,'KB','Республика Кабардино-Балкария',1),(2764,176,'NEN','Ненецкий АО',1),(2765,176,'IN','Республика Ингушетия',1),(2766,176,'NIZ','Нижегородская область',1),(2767,176,'NGR','Новгородская область',1),(2768,176,'NVS','Новосибирская область',1),(2769,176,'OMS','Омская область',1),(2770,176,'ORL','Орловская область',1),(2771,176,'ORE','Оренбургская область',1),(2773,176,'PNZ','Пензенская область',1),(2774,176,'PER','Пермский край',1),(2775,176,'KAM','Камчатский край',1),(2776,176,'KR','Республика Карелия',1),(2777,176,'PSK','Псковская область',1),(2778,176,'ROS','Ростовская область',1),(2779,176,'RYA','Рязанская область',1),(2780,176,'YAN','Ямало-Ненецкий АО',1),(2781,176,'SAM','Самарская область',1),(2782,176,'MO','Республика Мордовия',1),(2783,176,'SAR','Саратовская область',1),(2784,176,'SMO','Смоленская область',1),(2785,176,'SPE','Санкт-Петербург',1),(2786,176,'STA','Ставропольский край',1),(2787,176,'KO','Республика Коми',1),(2788,176,'TAM','Тамбовская область',1),(2789,176,'TOM','Томская область',1),(2790,176,'TUL','Тульская область',1),(2792,176,'TVE','Тверская область',1),(2793,176,'TYU','Тюменская область',1),(2794,176,'BA','Республика Башкортостан',1),(2795,176,'ULY','Ульяновская область',1),(2796,176,'BU','Республика Бурятия',1),(2798,176,'SE','Республика Северная Осетия',1),(2799,176,'VLA','Владимирская область',1),(2800,176,'PRI','Приморский край',1),(2801,176,'VGG','Волгоградская область',1),(2802,176,'VLG','Вологодская область',1),(2803,176,'VOR','Воронежская область',1),(2804,176,'KIR','Кировская область',1),(2805,176,'SA','Республика Саха',1),(2806,176,'YAR','Ярославская область',1),(2807,176,'SVE','Свердловская область',1),(2808,176,'ME','Республика Марий Эл',1),(2809,177,'BU','Butare',1),(2810,177,'BY','Byumba',1),(2811,177,'CY','Cyangugu',1),(2812,177,'GK','Gikongoro',1),(2813,177,'GS','Gisenyi',1),(2814,177,'GT','Gitarama',1),(2815,177,'KG','Kibungo',1),(2816,177,'KY','Kibuye',1),(2817,177,'KR','Kigali Rurale',1),(2818,177,'KV','Kigali-ville',1),(2819,177,'RU','Ruhengeri',1),(2820,177,'UM','Umutara',1),(2821,178,'CCN','Christ Church Nichola Town',1),(2822,178,'SAS','Saint Anne Sandy Point',1),(2823,178,'SGB','Saint George Basseterre',1),(2824,178,'SGG','Saint George Gingerland',1),(2825,178,'SJW','Saint James Windward',1),(2826,178,'SJC','Saint John Capesterre',1),(2827,178,'SJF','Saint John Figtree',1),(2828,178,'SMC','Saint Mary Cayon',1),(2829,178,'CAP','Saint Paul Capesterre',1),(2830,178,'CHA','Saint Paul Charlestown',1),(2831,178,'SPB','Saint Peter Basseterre',1),(2832,178,'STL','Saint Thomas Lowland',1),(2833,178,'STM','Saint Thomas Middle Island',1),(2834,178,'TPP','Trinity Palmetto Point',1),(2835,179,'AR','Anse-la-Raye',1),(2836,179,'CA','Castries',1),(2837,179,'CH','Choiseul',1),(2838,179,'DA','Dauphin',1),(2839,179,'DE','Dennery',1),(2840,179,'GI','Gros-Islet',1),(2841,179,'LA','Laborie',1),(2842,179,'MI','Micoud',1),(2843,179,'PR','Praslin',1),(2844,179,'SO','Soufriere',1),(2845,179,'VF','Vieux-Fort',1),(2846,180,'C','Charlotte',1),(2847,180,'R','Grenadines',1),(2848,180,'A','Saint Andrew',1),(2849,180,'D','Saint David',1),(2850,180,'G','Saint George',1),(2851,180,'P','Saint Patrick',1),(2852,181,'AN','A\'ana',1),(2853,181,'AI','Aiga-i-le-Tai',1),(2854,181,'AT','Atua',1),(2855,181,'FA','Fa\'asaleleaga',1),(2856,181,'GE','Gaga\'emauga',1),(2857,181,'GF','Gagaifomauga',1),(2858,181,'PA','Palauli',1),(2859,181,'SA','Satupa\'itea',1),(2860,181,'TU','Tuamasaga',1),(2861,181,'VF','Va\'a-o-Fonoti',1),(2862,181,'VS','Vaisigano',1),(2863,182,'AC','Acquaviva',1),(2864,182,'BM','Borgo Maggiore',1),(2865,182,'CH','Chiesanuova',1),(2866,182,'DO','Domagnano',1),(2867,182,'FA','Faetano',1),(2868,182,'FI','Fiorentino',1),(2869,182,'MO','Montegiardino',1),(2870,182,'SM','Citta di San Marino',1),(2871,182,'SE','Serravalle',1),(2872,183,'S','Sao Tome',1),(2873,183,'P','Principe',1),(2874,184,'BH','Al Bahah',1),(2875,184,'HS','Al Hudud ash Shamaliyah',1),(2876,184,'JF','Al Jawf',1),(2877,184,'MD','Al Madinah',1),(2878,184,'QS','Al Qasim',1),(2879,184,'RD','Ar Riyad',1),(2880,184,'AQ','Ash Sharqiyah (Eastern)',1),(2881,184,'AS','\'Asir',1),(2882,184,'HL','Ha\'il',1),(2883,184,'JZ','Jizan',1),(2884,184,'ML','Makkah',1),(2885,184,'NR','Najran',1),(2886,184,'TB','Tabuk',1),(2887,185,'DA','Dakar',1),(2888,185,'DI','Diourbel',1),(2889,185,'FA','Fatick',1),(2890,185,'KA','Kaolack',1),(2891,185,'KO','Kolda',1),(2892,185,'LO','Louga',1),(2893,185,'MA','Matam',1),(2894,185,'SL','Saint-Louis',1),(2895,185,'TA','Tambacounda',1),(2896,185,'TH','Thies',1),(2897,185,'ZI','Ziguinchor',1),(2898,186,'AP','Anse aux Pins',1),(2899,186,'AB','Anse Boileau',1),(2900,186,'AE','Anse Etoile',1),(2901,186,'AL','Anse Louis',1),(2902,186,'AR','Anse Royale',1),(2903,186,'BL','Baie Lazare',1),(2904,186,'BS','Baie Sainte Anne',1),(2905,186,'BV','Beau Vallon',1),(2906,186,'BA','Bel Air',1),(2907,186,'BO','Bel Ombre',1),(2908,186,'CA','Cascade',1),(2909,186,'GL','Glacis',1),(2910,186,'GM','Grand\' Anse (on Mahe)',1),(2911,186,'GP','Grand\' Anse (on Praslin)',1),(2912,186,'DG','La Digue',1),(2913,186,'RA','La Riviere Anglaise',1),(2914,186,'MB','Mont Buxton',1),(2915,186,'MF','Mont Fleuri',1),(2916,186,'PL','Plaisance',1),(2917,186,'PR','Pointe La Rue',1),(2918,186,'PG','Port Glaud',1),(2919,186,'SL','Saint Louis',1),(2920,186,'TA','Takamaka',1),(2921,187,'E','Eastern',1),(2922,187,'N','Northern',1),(2923,187,'S','Southern',1),(2924,187,'W','Western',1),(2925,189,'BA','BanskobystrickГЅ',1),(2926,189,'BR','BratislavskГЅ',1),(2927,189,'KO','KoЕЎickГЅ',1),(2928,189,'NI','Nitriansky',1),(2929,189,'PR','PreЕЎovskГЅ',1),(2930,189,'TC','TrenДЌiansky',1),(2931,189,'TV','TrnavskГЅ',1),(2932,189,'ZI','ЕЅilinskГЅ',1),(2933,191,'CE','Central',1),(2934,191,'CH','Choiseul',1),(2935,191,'GC','Guadalcanal',1),(2936,191,'HO','Honiara',1),(2937,191,'IS','Isabel',1),(2938,191,'MK','Makira',1),(2939,191,'ML','Malaita',1),(2940,191,'RB','Rennell and Bellona',1),(2941,191,'TM','Temotu',1),(2942,191,'WE','Western',1),(2943,192,'AW','Awdal',1),(2944,192,'BK','Bakool',1),(2945,192,'BN','Banaadir',1),(2946,192,'BR','Bari',1),(2947,192,'BY','Bay',1),(2948,192,'GA','Galguduud',1),(2949,192,'GE','Gedo',1),(2950,192,'HI','Hiiraan',1),(2951,192,'JD','Jubbada Dhexe',1),(2952,192,'JH','Jubbada Hoose',1),(2953,192,'MU','Mudug',1),(2954,192,'NU','Nugaal',1),(2955,192,'SA','Sanaag',1),(2956,192,'SD','Shabeellaha Dhexe',1),(2957,192,'SH','Shabeellaha Hoose',1),(2958,192,'SL','Sool',1),(2959,192,'TO','Togdheer',1),(2960,192,'WG','Woqooyi Galbeed',1),(2961,193,'EC','Eastern Cape',1),(2962,193,'FS','Free State',1),(2963,193,'GT','Gauteng',1),(2964,193,'KN','KwaZulu-Natal',1),(2965,193,'LP','Limpopo',1),(2966,193,'MP','Mpumalanga',1),(2967,193,'NW','North West',1),(2968,193,'NC','Northern Cape',1),(2969,193,'WC','Western Cape',1),(2970,195,'CA','La Coru&ntilde;a',1),(2971,195,'AL','&Aacute;lava',1),(2972,195,'AB','Albacete',1),(2973,195,'AC','Alicante',1),(2974,195,'AM','Almeria',1),(2975,195,'AS','Asturias',1),(2976,195,'AV','&Aacute;vila',1),(2977,195,'BJ','Badajoz',1),(2978,195,'IB','Baleares',1),(2979,195,'BA','Barcelona',1),(2980,195,'BU','Burgos',1),(2981,195,'CC','C&aacute;ceres',1),(2982,195,'CZ','C&aacute;diz',1),(2983,195,'CT','Cantabria',1),(2984,195,'CL','Castell&oacute;n',1),(2985,195,'CE','Ceuta',1),(2986,195,'CR','Ciudad Real',1),(2987,195,'CD','C&oacute;rdoba',1),(2988,195,'CU','Cuenca',1),(2989,195,'GI','Girona',1),(2990,195,'GD','Granada',1),(2991,195,'GJ','Guadalajara',1),(2992,195,'GP','Guip&uacute;zcoa',1),(2993,195,'HL','Huelva',1),(2994,195,'HS','Huesca',1),(2995,195,'JN','Ja&eacute;n',1),(2996,195,'RJ','La Rioja',1),(2997,195,'PM','Las Palmas',1),(2998,195,'LE','Leon',1),(2999,195,'LL','Lleida',1),(3000,195,'LG','Lugo',1),(3001,195,'MD','Madrid',1),(3002,195,'MA','Malaga',1),(3003,195,'ML','Melilla',1),(3004,195,'MU','Murcia',1),(3005,195,'NV','Navarra',1),(3006,195,'OU','Ourense',1),(3007,195,'PL','Palencia',1),(3008,195,'PO','Pontevedra',1),(3009,195,'SL','Salamanca',1),(3010,195,'SC','Santa Cruz de Tenerife',1),(3011,195,'SG','Segovia',1),(3012,195,'SV','Sevilla',1),(3013,195,'SO','Soria',1),(3014,195,'TA','Tarragona',1),(3015,195,'TE','Teruel',1),(3016,195,'TO','Toledo',1),(3017,195,'VC','Valencia',1),(3018,195,'VD','Valladolid',1),(3019,195,'VZ','Vizcaya',1),(3020,195,'ZM','Zamora',1),(3021,195,'ZR','Zaragoza',1),(3022,196,'CE','Central',1),(3023,196,'EA','Eastern',1),(3024,196,'NC','North Central',1),(3025,196,'NO','Northern',1),(3026,196,'NW','North Western',1),(3027,196,'SA','Sabaragamuwa',1),(3028,196,'SO','Southern',1),(3029,196,'UV','Uva',1),(3030,196,'WE','Western',1),(3031,197,'A','Ascension',1),(3032,197,'S','Saint Helena',1),(3033,197,'T','Tristan da Cunha',1),(3034,199,'ANL','A\'ali an Nil',1),(3035,199,'BAM','Al Bahr al Ahmar',1),(3036,199,'BRT','Al Buhayrat',1),(3037,199,'JZR','Al Jazirah',1),(3038,199,'KRT','Al Khartum',1),(3039,199,'QDR','Al Qadarif',1),(3040,199,'WDH','Al Wahdah',1),(3041,199,'ANB','An Nil al Abyad',1),(3042,199,'ANZ','An Nil al Azraq',1),(3043,199,'ASH','Ash Shamaliyah',1),(3044,199,'BJA','Bahr al Jabal',1),(3045,199,'GIS','Gharb al Istiwa\'iyah',1),(3046,199,'GBG','Gharb Bahr al Ghazal',1),(3047,199,'GDA','Gharb Darfur',1),(3048,199,'GKU','Gharb Kurdufan',1),(3049,199,'JDA','Janub Darfur',1),(3050,199,'JKU','Janub Kurdufan',1),(3051,199,'JQL','Junqali',1),(3052,199,'KSL','Kassala',1),(3053,199,'NNL','Nahr an Nil',1),(3054,199,'SBG','Shamal Bahr al Ghazal',1),(3055,199,'SDA','Shamal Darfur',1),(3056,199,'SKU','Shamal Kurdufan',1),(3057,199,'SIS','Sharq al Istiwa\'iyah',1),(3058,199,'SNR','Sinnar',1),(3059,199,'WRB','Warab',1),(3060,200,'BR','Brokopondo',1),(3061,200,'CM','Commewijne',1),(3062,200,'CR','Coronie',1),(3063,200,'MA','Marowijne',1),(3064,200,'NI','Nickerie',1),(3065,200,'PA','Para',1),(3066,200,'PM','Paramaribo',1),(3067,200,'SA','Saramacca',1),(3068,200,'SI','Sipaliwini',1),(3069,200,'WA','Wanica',1),(3070,202,'H','Hhohho',1),(3071,202,'L','Lubombo',1),(3072,202,'M','Manzini',1),(3073,202,'S','Shishelweni',1),(3074,203,'K','Blekinge',1),(3075,203,'W','Dalama',1),(3076,203,'X','G&auml;vleborg',1),(3077,203,'I','Gotland',1),(3078,203,'N','Halland',1),(3079,203,'Z','J&auml;mtland',1),(3080,203,'F','J&ouml;nk&ouml;ping',1),(3081,203,'H','Kalmar',1),(3082,203,'G','Kronoberg',1),(3083,203,'BD','Norrbotten',1),(3084,203,'T','&Ouml;rebro',1),(3085,203,'E','&Ouml;sterg&ouml;tland',1),(3086,203,'M','Sk&aring;ne',1),(3087,203,'D','S&ouml;dermanland',1),(3088,203,'AB','Stockholm',1),(3089,203,'C','Uppsala',1),(3090,203,'S','V&auml;rmland',1),(3091,203,'AC','V&auml;sterbotten',1),(3092,203,'Y','V&auml;sternorrland',1),(3093,203,'U','V&auml;stmanland',1),(3094,203,'O','V&auml;stra G&ouml;taland',1),(3095,204,'AG','Aargau',1),(3096,204,'AR','Appenzell Ausserrhoden',1),(3097,204,'AI','Appenzell Innerrhoden',1),(3098,204,'BS','Basel-Stadt',1),(3099,204,'BL','Basel-Landschaft',1),(3100,204,'BE','Bern',1),(3101,204,'FR','Fribourg',1),(3102,204,'GE','Gen&egrave;ve',1),(3103,204,'GL','Glarus',1),(3104,204,'GR','Graub&uuml;nden',1),(3105,204,'JU','Jura',1),(3106,204,'LU','Luzern',1),(3107,204,'NE','Neuch&acirc;tel',1),(3108,204,'NW','Nidwald',1),(3109,204,'OW','Obwald',1),(3110,204,'SG','St. Gallen',1),(3111,204,'SH','Schaffhausen',1),(3112,204,'SZ','Schwyz',1),(3113,204,'SO','Solothurn',1),(3114,204,'TG','Thurgau',1),(3115,204,'TI','Ticino',1),(3116,204,'UR','Uri',1),(3117,204,'VS','Valais',1),(3118,204,'VD','Vaud',1),(3119,204,'ZG','Zug',1),(3120,204,'ZH','Z&uuml;rich',1),(3121,205,'HA','Al Hasakah',1),(3122,205,'LA','Al Ladhiqiyah',1),(3123,205,'QU','Al Qunaytirah',1),(3124,205,'RQ','Ar Raqqah',1),(3125,205,'SU','As Suwayda',1),(3126,205,'DA','Dara',1),(3127,205,'DZ','Dayr az Zawr',1),(3128,205,'DI','Dimashq',1),(3129,205,'HL','Halab',1),(3130,205,'HM','Hamah',1),(3131,205,'HI','Hims',1),(3132,205,'ID','Idlib',1),(3133,205,'RD','Rif Dimashq',1),(3134,205,'TA','Tartus',1),(3135,206,'CH','Chang-hua',1),(3136,206,'CI','Chia-i',1),(3137,206,'HS','Hsin-chu',1),(3138,206,'HL','Hua-lien',1),(3139,206,'IL','I-lan',1),(3140,206,'KH','Kao-hsiung county',1),(3141,206,'KM','Kin-men',1),(3142,206,'LC','Lien-chiang',1),(3143,206,'ML','Miao-li',1),(3144,206,'NT','Nan-t\'ou',1),(3145,206,'PH','P\'eng-hu',1),(3146,206,'PT','P\'ing-tung',1),(3147,206,'TG','T\'ai-chung',1),(3148,206,'TA','T\'ai-nan',1),(3149,206,'TP','T\'ai-pei county',1),(3150,206,'TT','T\'ai-tung',1),(3151,206,'TY','T\'ao-yuan',1),(3152,206,'YL','Yun-lin',1),(3153,206,'CC','Chia-i city',1),(3154,206,'CL','Chi-lung',1),(3155,206,'HC','Hsin-chu',1),(3156,206,'TH','T\'ai-chung',1),(3157,206,'TN','T\'ai-nan',1),(3158,206,'KC','Kao-hsiung city',1),(3159,206,'TC','T\'ai-pei city',1),(3160,207,'GB','Gorno-Badakhstan',1),(3161,207,'KT','Khatlon',1),(3162,207,'SU','Sughd',1),(3163,208,'AR','Arusha',1),(3164,208,'DS','Dar es Salaam',1),(3165,208,'DO','Dodoma',1),(3166,208,'IR','Iringa',1),(3167,208,'KA','Kagera',1),(3168,208,'KI','Kigoma',1),(3169,208,'KJ','Kilimanjaro',1),(3170,208,'LN','Lindi',1),(3171,208,'MY','Manyara',1),(3172,208,'MR','Mara',1),(3173,208,'MB','Mbeya',1),(3174,208,'MO','Morogoro',1),(3175,208,'MT','Mtwara',1),(3176,208,'MW','Mwanza',1),(3177,208,'PN','Pemba North',1),(3178,208,'PS','Pemba South',1),(3179,208,'PW','Pwani',1),(3180,208,'RK','Rukwa',1),(3181,208,'RV','Ruvuma',1),(3182,208,'SH','Shinyanga',1),(3183,208,'SI','Singida',1),(3184,208,'TB','Tabora',1),(3185,208,'TN','Tanga',1),(3186,208,'ZC','Zanzibar Central/South',1),(3187,208,'ZN','Zanzibar North',1),(3188,208,'ZU','Zanzibar Urban/West',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'K','Kara',1),(3266,210,'P','Plateaux',1),(3267,210,'S','Savanes',1),(3268,210,'C','Centrale',1),(3269,210,'M','Maritime',1),(3270,211,'A','Atafu',1),(3271,211,'F','Fakaofo',1),(3272,211,'N','Nukunonu',1),(3273,212,'H','Ha\'apai',1),(3274,212,'T','Tongatapu',1),(3275,212,'V','Vava\'u',1),(3276,213,'CT','Couva/Tabaquite/Talparo',1),(3277,213,'DM','Diego Martin',1),(3278,213,'MR','Mayaro/Rio Claro',1),(3279,213,'PD','Penal/Debe',1),(3280,213,'PT','Princes Town',1),(3281,213,'SG','Sangre Grande',1),(3282,213,'SL','San Juan/Laventille',1),(3283,213,'SI','Siparia',1),(3284,213,'TP','Tunapuna/Piarco',1),(3285,213,'PS','Port of Spain',1),(3286,213,'SF','San Fernando',1),(3287,213,'AR','Arima',1),(3288,213,'PF','Point Fortin',1),(3289,213,'CH','Chaguanas',1),(3290,213,'TO','Tobago',1),(3291,214,'AR','Ariana',1),(3292,214,'BJ','Beja',1),(3293,214,'BA','Ben Arous',1),(3294,214,'BI','Bizerte',1),(3295,214,'GB','Gabes',1),(3296,214,'GF','Gafsa',1),(3297,214,'JE','Jendouba',1),(3298,214,'KR','Kairouan',1),(3299,214,'KS','Kasserine',1),(3300,214,'KB','Kebili',1),(3301,214,'KF','Kef',1),(3302,214,'MH','Mahdia',1),(3303,214,'MN','Manouba',1),(3304,214,'ME','Medenine',1),(3305,214,'MO','Monastir',1),(3306,214,'NA','Nabeul',1),(3307,214,'SF','Sfax',1),(3308,214,'SD','Sidi',1),(3309,214,'SL','Siliana',1),(3310,214,'SO','Sousse',1),(3311,214,'TA','Tataouine',1),(3312,214,'TO','Tozeur',1),(3313,214,'TU','Tunis',1),(3314,214,'ZA','Zaghouan',1),(3315,215,'ADA','Adana',1),(3316,215,'ADI','Adiyaman',1),(3317,215,'AFY','Afyonkarahisar',1),(3318,215,'AGR','Agri',1),(3319,215,'AKS','Aksaray',1),(3320,215,'AMA','Amasya',1),(3321,215,'ANK','Ankara',1),(3322,215,'ANT','Antalya',1),(3323,215,'ARD','Ardahan',1),(3324,215,'ART','Artvin',1),(3325,215,'AYI','Aydin',1),(3326,215,'BAL','Balikesir',1),(3327,215,'BAR','Bartin',1),(3328,215,'BAT','Batman',1),(3329,215,'BAY','Bayburt',1),(3330,215,'BIL','Bilecik',1),(3331,215,'BIN','Bingol',1),(3332,215,'BIT','Bitlis',1),(3333,215,'BOL','Bolu',1),(3334,215,'BRD','Burdur',1),(3335,215,'BRS','Bursa',1),(3336,215,'CKL','Canakkale',1),(3337,215,'CKR','Cankiri',1),(3338,215,'COR','Corum',1),(3339,215,'DEN','Denizli',1),(3340,215,'DIY','Diyarbakir',1),(3341,215,'DUZ','Duzce',1),(3342,215,'EDI','Edirne',1),(3343,215,'ELA','Elazig',1),(3344,215,'EZC','Erzincan',1),(3345,215,'EZR','Erzurum',1),(3346,215,'ESK','Eskisehir',1),(3347,215,'GAZ','Gaziantep',1),(3348,215,'GIR','Giresun',1),(3349,215,'GMS','Gumushane',1),(3350,215,'HKR','Hakkari',1),(3351,215,'HTY','Hatay',1),(3352,215,'IGD','Igdir',1),(3353,215,'ISP','Isparta',1),(3354,215,'IST','Istanbul',1),(3355,215,'IZM','Izmir',1),(3356,215,'KAH','Kahramanmaras',1),(3357,215,'KRB','Karabuk',1),(3358,215,'KRM','Karaman',1),(3359,215,'KRS','Kars',1),(3360,215,'KAS','Kastamonu',1),(3361,215,'KAY','Kayseri',1),(3362,215,'KLS','Kilis',1),(3363,215,'KRK','Kirikkale',1),(3364,215,'KLR','Kirklareli',1),(3365,215,'KRH','Kirsehir',1),(3366,215,'KOC','Kocaeli',1),(3367,215,'KON','Konya',1),(3368,215,'KUT','Kutahya',1),(3369,215,'MAL','Malatya',1),(3370,215,'MAN','Manisa',1),(3371,215,'MAR','Mardin',1),(3372,215,'MER','Mersin',1),(3373,215,'MUG','Mugla',1),(3374,215,'MUS','Mus',1),(3375,215,'NEV','Nevsehir',1),(3376,215,'NIG','Nigde',1),(3377,215,'ORD','Ordu',1),(3378,215,'OSM','Osmaniye',1),(3379,215,'RIZ','Rize',1),(3380,215,'SAK','Sakarya',1),(3381,215,'SAM','Samsun',1),(3382,215,'SAN','Sanliurfa',1),(3383,215,'SII','Siirt',1),(3384,215,'SIN','Sinop',1),(3385,215,'SIR','Sirnak',1),(3386,215,'SIV','Sivas',1),(3387,215,'TEL','Tekirdag',1),(3388,215,'TOK','Tokat',1),(3389,215,'TRA','Trabzon',1),(3390,215,'TUN','Tunceli',1),(3391,215,'USK','Usak',1),(3392,215,'VAN','Van',1),(3393,215,'YAL','Yalova',1),(3394,215,'YOZ','Yozgat',1),(3395,215,'ZON','Zonguldak',1),(3396,216,'A','Ahal Welayaty',1),(3397,216,'B','Balkan Welayaty',1),(3398,216,'D','Dashhowuz Welayaty',1),(3399,216,'L','Lebap Welayaty',1),(3400,216,'M','Mary Welayaty',1),(3401,217,'AC','Ambergris Cays',1),(3402,217,'DC','Dellis Cay',1),(3403,217,'FC','French Cay',1),(3404,217,'LW','Little Water Cay',1),(3405,217,'RC','Parrot Cay',1),(3406,217,'PN','Pine Cay',1),(3407,217,'SL','Salt Cay',1),(3408,217,'GT','Grand Turk',1),(3409,217,'SC','South Caicos',1),(3410,217,'EC','East Caicos',1),(3411,217,'MC','Middle Caicos',1),(3412,217,'NC','North Caicos',1),(3413,217,'PR','Providenciales',1),(3414,217,'WC','West Caicos',1),(3415,218,'NMG','Nanumanga',1),(3416,218,'NLK','Niulakita',1),(3417,218,'NTO','Niutao',1),(3418,218,'FUN','Funafuti',1),(3419,218,'NME','Nanumea',1),(3420,218,'NUI','Nui',1),(3421,218,'NFT','Nukufetau',1),(3422,218,'NLL','Nukulaelae',1),(3423,218,'VAI','Vaitupu',1),(3424,219,'KAL','Kalangala',1),(3425,219,'KMP','Kampala',1),(3426,219,'KAY','Kayunga',1),(3427,219,'KIB','Kiboga',1),(3428,219,'LUW','Luwero',1),(3429,219,'MAS','Masaka',1),(3430,219,'MPI','Mpigi',1),(3431,219,'MUB','Mubende',1),(3432,219,'MUK','Mukono',1),(3433,219,'NKS','Nakasongola',1),(3434,219,'RAK','Rakai',1),(3435,219,'SEM','Sembabule',1),(3436,219,'WAK','Wakiso',1),(3437,219,'BUG','Bugiri',1),(3438,219,'BUS','Busia',1),(3439,219,'IGA','Iganga',1),(3440,219,'JIN','Jinja',1),(3441,219,'KAB','Kaberamaido',1),(3442,219,'KML','Kamuli',1),(3443,219,'KPC','Kapchorwa',1),(3444,219,'KTK','Katakwi',1),(3445,219,'KUM','Kumi',1),(3446,219,'MAY','Mayuge',1),(3447,219,'MBA','Mbale',1),(3448,219,'PAL','Pallisa',1),(3449,219,'SIR','Sironko',1),(3450,219,'SOR','Soroti',1),(3451,219,'TOR','Tororo',1),(3452,219,'ADJ','Adjumani',1),(3453,219,'APC','Apac',1),(3454,219,'ARU','Arua',1),(3455,219,'GUL','Gulu',1),(3456,219,'KIT','Kitgum',1),(3457,219,'KOT','Kotido',1),(3458,219,'LIR','Lira',1),(3459,219,'MRT','Moroto',1),(3460,219,'MOY','Moyo',1),(3461,219,'NAK','Nakapiripirit',1),(3462,219,'NEB','Nebbi',1),(3463,219,'PAD','Pader',1),(3464,219,'YUM','Yumbe',1),(3465,219,'BUN','Bundibugyo',1),(3466,219,'BSH','Bushenyi',1),(3467,219,'HOI','Hoima',1),(3468,219,'KBL','Kabale',1),(3469,219,'KAR','Kabarole',1),(3470,219,'KAM','Kamwenge',1),(3471,219,'KAN','Kanungu',1),(3472,219,'KAS','Kasese',1),(3473,219,'KBA','Kibaale',1),(3474,219,'KIS','Kisoro',1),(3475,219,'KYE','Kyenjojo',1),(3476,219,'MSN','Masindi',1),(3477,219,'MBR','Mbarara',1),(3478,219,'NTU','Ntungamo',1),(3479,219,'RUK','Rukungiri',1),(3480,220,'CK','Черкассы',1),(3481,220,'CH','Чернигов',1),(3482,220,'CV','Черновцы',1),(3483,220,'CR','Крым',1),(3484,220,'DN','Днепропетровск',1),(3485,220,'DO','Донецк',1),(3486,220,'IV','Ивано-Франковск',1),(3487,220,'KL','Харьков Херсон',1),(3488,220,'KM','Хмельницкий',1),(3489,220,'KR','Кировоград',1),(3490,220,'KV','Киевская область',1),(3491,220,'KY','Киев',1),(3492,220,'LU','Луганск',1),(3493,220,'LV','Львов',1),(3494,220,'MY','Николаев',1),(3495,220,'OD','Одесса',1),(3496,220,'PO','Полтава',1),(3497,220,'RI','Ровно',1),(3498,220,'SE','Севастополь',1),(3499,220,'SU','Сумы',1),(3500,220,'TE','Тернополь',1),(3501,220,'VI','Винница',1),(3502,220,'VO','Луцк',1),(3503,220,'ZK','Ужгород',1),(3504,220,'ZA','Запорожье',1),(3505,220,'ZH','Житомир',1),(3506,221,'AZ','Abu Zaby',1),(3507,221,'AJ','\'Ajman',1),(3508,221,'FU','Al Fujayrah',1),(3509,221,'SH','Ash Shariqah',1),(3510,221,'DU','Dubayy',1),(3511,221,'RK','R\'as al Khaymah',1),(3512,221,'UQ','Umm al Qaywayn',1),(3513,222,'ABN','Aberdeen',1),(3514,222,'ABNS','Aberdeenshire',1),(3515,222,'ANG','Anglesey',1),(3516,222,'AGS','Angus',1),(3517,222,'ARY','Argyll and Bute',1),(3518,222,'BEDS','Bedfordshire',1),(3519,222,'BERKS','Berkshire',1),(3520,222,'BLA','Blaenau Gwent',1),(3521,222,'BRI','Bridgend',1),(3522,222,'BSTL','Bristol',1),(3523,222,'BUCKS','Buckinghamshire',1),(3524,222,'CAE','Caerphilly',1),(3525,222,'CAMBS','Cambridgeshire',1),(3526,222,'CDF','Cardiff',1),(3527,222,'CARM','Carmarthenshire',1),(3528,222,'CDGN','Ceredigion',1),(3529,222,'CHES','Cheshire',1),(3530,222,'CLACK','Clackmannanshire',1),(3531,222,'CON','Conwy',1),(3532,222,'CORN','Cornwall',1),(3533,222,'DNBG','Denbighshire',1),(3534,222,'DERBY','Derbyshire',1),(3535,222,'DVN','Devon',1),(3536,222,'DOR','Dorset',1),(3537,222,'DGL','Dumfries and Galloway',1),(3538,222,'DUND','Dundee',1),(3539,222,'DHM','Durham',1),(3540,222,'ARYE','East Ayrshire',1),(3541,222,'DUNBE','East Dunbartonshire',1),(3542,222,'LOTE','East Lothian',1),(3543,222,'RENE','East Renfrewshire',1),(3544,222,'ERYS','East Riding of Yorkshire',1),(3545,222,'SXE','East Sussex',1),(3546,222,'EDIN','Edinburgh',1),(3547,222,'ESX','Essex',1),(3548,222,'FALK','Falkirk',1),(3549,222,'FFE','Fife',1),(3550,222,'FLINT','Flintshire',1),(3551,222,'GLAS','Glasgow',1),(3552,222,'GLOS','Gloucestershire',1),(3553,222,'LDN','Greater London',1),(3554,222,'MCH','Greater Manchester',1),(3555,222,'GDD','Gwynedd',1),(3556,222,'HANTS','Hampshire',1),(3557,222,'HWR','Herefordshire',1),(3558,222,'HERTS','Hertfordshire',1),(3559,222,'HLD','Highlands',1),(3560,222,'IVER','Inverclyde',1),(3561,222,'IOW','Isle of Wight',1),(3562,222,'KNT','Kent',1),(3563,222,'LANCS','Lancashire',1),(3564,222,'LEICS','Leicestershire',1),(3565,222,'LINCS','Lincolnshire',1),(3566,222,'MSY','Merseyside',1),(3567,222,'MERT','Merthyr Tydfil',1),(3568,222,'MLOT','Midlothian',1),(3569,222,'MMOUTH','Monmouthshire',1),(3570,222,'MORAY','Moray',1),(3571,222,'NPRTAL','Neath Port Talbot',1),(3572,222,'NEWPT','Newport',1),(3573,222,'NOR','Norfolk',1),(3574,222,'ARYN','North Ayrshire',1),(3575,222,'LANN','North Lanarkshire',1),(3576,222,'YSN','North Yorkshire',1),(3577,222,'NHM','Northamptonshire',1),(3578,222,'NLD','Northumberland',1),(3579,222,'NOT','Nottinghamshire',1),(3580,222,'ORK','Orkney Islands',1),(3581,222,'OFE','Oxfordshire',1),(3582,222,'PEM','Pembrokeshire',1),(3583,222,'PERTH','Perth and Kinross',1),(3584,222,'PWS','Powys',1),(3585,222,'REN','Renfrewshire',1),(3586,222,'RHON','Rhondda Cynon Taff',1),(3587,222,'RUT','Rutland',1),(3588,222,'BOR','Scottish Borders',1),(3589,222,'SHET','Shetland Islands',1),(3590,222,'SPE','Shropshire',1),(3591,222,'SOM','Somerset',1),(3592,222,'ARYS','South Ayrshire',1),(3593,222,'LANS','South Lanarkshire',1),(3594,222,'YSS','South Yorkshire',1),(3595,222,'SFD','Staffordshire',1),(3596,222,'STIR','Stirling',1),(3597,222,'SFK','Suffolk',1),(3598,222,'SRY','Surrey',1),(3599,222,'SWAN','Swansea',1),(3600,222,'TORF','Torfaen',1),(3601,222,'TWR','Tyne and Wear',1),(3602,222,'VGLAM','Vale of Glamorgan',1),(3603,222,'WARKS','Warwickshire',1),(3604,222,'WDUN','West Dunbartonshire',1),(3605,222,'WLOT','West Lothian',1),(3606,222,'WMD','West Midlands',1),(3607,222,'SXW','West Sussex',1),(3608,222,'YSW','West Yorkshire',1),(3609,222,'WIL','Western Isles',1),(3610,222,'WLT','Wiltshire',1),(3611,222,'WORCS','Worcestershire',1),(3612,222,'WRX','Wrexham',1),(3613,223,'AL','Alabama',1),(3614,223,'AK','Alaska',1),(3615,223,'AS','American Samoa',1),(3616,223,'AZ','Arizona',1),(3617,223,'AR','Arkansas',1),(3618,223,'AF','Armed Forces Africa',1),(3619,223,'AA','Armed Forces Americas',1),(3620,223,'AC','Armed Forces Canada',1),(3621,223,'AE','Armed Forces Europe',1),(3622,223,'AM','Armed Forces Middle East',1),(3623,223,'AP','Armed Forces Pacific',1),(3624,223,'CA','California',1),(3625,223,'CO','Colorado',1),(3626,223,'CT','Connecticut',1),(3627,223,'DE','Delaware',1),(3628,223,'DC','District of Columbia',1),(3629,223,'FM','Federated States Of Micronesia',1),(3630,223,'FL','Florida',1),(3631,223,'GA','Georgia',1),(3632,223,'GU','Guam',1),(3633,223,'HI','Hawaii',1),(3634,223,'ID','Idaho',1),(3635,223,'IL','Illinois',1),(3636,223,'IN','Indiana',1),(3637,223,'IA','Iowa',1),(3638,223,'KS','Kansas',1),(3639,223,'KY','Kentucky',1),(3640,223,'LA','Louisiana',1),(3641,223,'ME','Maine',1),(3642,223,'MH','Marshall Islands',1),(3643,223,'MD','Maryland',1),(3644,223,'MA','Massachusetts',1),(3645,223,'MI','Michigan',1),(3646,223,'MN','Minnesota',1),(3647,223,'MS','Mississippi',1),(3648,223,'MO','Missouri',1),(3649,223,'MT','Montana',1),(3650,223,'NE','Nebraska',1),(3651,223,'NV','Nevada',1),(3652,223,'NH','New Hampshire',1),(3653,223,'NJ','New Jersey',1),(3654,223,'NM','New Mexico',1),(3655,223,'NY','New York',1),(3656,223,'NC','North Carolina',1),(3657,223,'ND','North Dakota',1),(3658,223,'MP','Northern Mariana Islands',1),(3659,223,'OH','Ohio',1),(3660,223,'OK','Oklahoma',1),(3661,223,'OR','Oregon',1),(3662,223,'PW','Palau',1),(3663,223,'PA','Pennsylvania',1),(3664,223,'PR','Puerto Rico',1),(3665,223,'RI','Rhode Island',1),(3666,223,'SC','South Carolina',1),(3667,223,'SD','South Dakota',1),(3668,223,'TN','Tennessee',1),(3669,223,'TX','Texas',1),(3670,223,'UT','Utah',1),(3671,223,'VT','Vermont',1),(3672,223,'VI','Virgin Islands',1),(3673,223,'VA','Virginia',1),(3674,223,'WA','Washington',1),(3675,223,'WV','West Virginia',1),(3676,223,'WI','Wisconsin',1),(3677,223,'WY','Wyoming',1),(3678,224,'BI','Baker Island',1),(3679,224,'HI','Howland Island',1),(3680,224,'JI','Jarvis Island',1),(3681,224,'JA','Johnston Atoll',1),(3682,224,'KR','Kingman Reef',1),(3683,224,'MA','Midway Atoll',1),(3684,224,'NI','Navassa Island',1),(3685,224,'PA','Palmyra Atoll',1),(3686,224,'WI','Wake Island',1),(3687,225,'AR','Artigas',1),(3688,225,'CA','Canelones',1),(3689,225,'CL','Cerro Largo',1),(3690,225,'CO','Colonia',1),(3691,225,'DU','Durazno',1),(3692,225,'FS','Flores',1),(3693,225,'FA','Florida',1),(3694,225,'LA','Lavalleja',1),(3695,225,'MA','Maldonado',1),(3696,225,'MO','Montevideo',1),(3697,225,'PA','Paysandu',1),(3698,225,'RN','Rio Negro',1),(3699,225,'RV','Rivera',1),(3700,225,'RO','Rocha',1),(3701,225,'SL','Salto',1),(3702,225,'SJ','San Jose',1),(3703,225,'SO','Soriano',1),(3704,225,'TA','Tacuarembo',1),(3705,225,'TT','Treinta y Tres',1),(3706,226,'AN','Andijon',1),(3707,226,'BU','Buxoro',1),(3708,226,'FA','Farg\'ona',1),(3709,226,'JI','Jizzax',1),(3710,226,'NG','Namangan',1),(3711,226,'NW','Navoiy',1),(3712,226,'QA','Qashqadaryo',1),(3713,226,'QR','Qoraqalpog\'iston Republikasi',1),(3714,226,'SA','Samarqand',1),(3715,226,'SI','Sirdaryo',1),(3716,226,'SU','Surxondaryo',1),(3717,226,'TK','Toshkent City',1),(3718,226,'TO','Toshkent Region',1),(3719,226,'XO','Xorazm',1),(3720,227,'MA','Malampa',1),(3721,227,'PE','Penama',1),(3722,227,'SA','Sanma',1),(3723,227,'SH','Shefa',1),(3724,227,'TA','Tafea',1),(3725,227,'TO','Torba',1),(3726,229,'AM','Amazonas',1),(3727,229,'AN','Anzoategui',1),(3728,229,'AP','Apure',1),(3729,229,'AR','Aragua',1),(3730,229,'BA','Barinas',1),(3731,229,'BO','Bolivar',1),(3732,229,'CA','Carabobo',1),(3733,229,'CO','Cojedes',1),(3734,229,'DA','Delta Amacuro',1),(3735,229,'DF','Dependencias Federales',1),(3736,229,'DI','Distrito Federal',1),(3737,229,'FA','Falcon',1),(3738,229,'GU','Guarico',1),(3739,229,'LA','Lara',1),(3740,229,'ME','Merida',1),(3741,229,'MI','Miranda',1),(3742,229,'MO','Monagas',1),(3743,229,'NE','Nueva Esparta',1),(3744,229,'PO','Portuguesa',1),(3745,229,'SU','Sucre',1),(3746,229,'TA','Tachira',1),(3747,229,'TR','Trujillo',1),(3748,229,'VA','Vargas',1),(3749,229,'YA','Yaracuy',1),(3750,229,'ZU','Zulia',1),(3751,230,'AG','An Giang',1),(3752,230,'BG','Bac Giang',1),(3753,230,'BK','Bac Kan',1),(3754,230,'BL','Bac Lieu',1),(3755,230,'BC','Bac Ninh',1),(3756,230,'BR','Ba Ria-Vung Tau',1),(3757,230,'BN','Ben Tre',1),(3758,230,'BH','Binh Dinh',1),(3759,230,'BU','Binh Duong',1),(3760,230,'BP','Binh Phuoc',1),(3761,230,'BT','Binh Thuan',1),(3762,230,'CM','Ca Mau',1),(3763,230,'CT','Can Tho',1),(3764,230,'CB','Cao Bang',1),(3765,230,'DL','Dak Lak',1),(3766,230,'DG','Dak Nong',1),(3767,230,'DN','Da Nang',1),(3768,230,'DB','Dien Bien',1),(3769,230,'DI','Dong Nai',1),(3770,230,'DT','Dong Thap',1),(3771,230,'GL','Gia Lai',1),(3772,230,'HG','Ha Giang',1),(3773,230,'HD','Hai Duong',1),(3774,230,'HP','Hai Phong',1),(3775,230,'HM','Ha Nam',1),(3776,230,'HI','Ha Noi',1),(3777,230,'HT','Ha Tay',1),(3778,230,'HH','Ha Tinh',1),(3779,230,'HB','Hoa Binh',1),(3780,230,'HC','Ho Chi Minh City',1),(3781,230,'HU','Hau Giang',1),(3782,230,'HY','Hung Yen',1),(3783,232,'C','Saint Croix',1),(3784,232,'J','Saint John',1),(3785,232,'T','Saint Thomas',1),(3786,233,'A','Alo',1),(3787,233,'S','Sigave',1),(3788,233,'W','Wallis',1),(3789,235,'AB','Abyan',1),(3790,235,'AD','Adan',1),(3791,235,'AM','Amran',1),(3792,235,'BA','Al Bayda',1),(3793,235,'DA','Ad Dali',1),(3794,235,'DH','Dhamar',1),(3795,235,'HD','Hadramawt',1),(3796,235,'HJ','Hajjah',1),(3797,235,'HU','Al Hudaydah',1),(3798,235,'IB','Ibb',1),(3799,235,'JA','Al Jawf',1),(3800,235,'LA','Lahij',1),(3801,235,'MA','Ma\'rib',1),(3802,235,'MR','Al Mahrah',1),(3803,235,'MW','Al Mahwit',1),(3804,235,'SD','Sa\'dah',1),(3805,235,'SN','San\'a',1),(3806,235,'SH','Shabwah',1),(3807,235,'TA','Ta\'izz',1),(3808,236,'KOS','Kosovo',1),(3809,236,'MON','Montenegro',1),(3810,236,'SER','Serbia',1),(3811,236,'VOJ','Vojvodina',1),(3812,237,'BC','Bas-Congo',1),(3813,237,'BN','Bandundu',1),(3814,237,'EQ','Equateur',1),(3815,237,'KA','Katanga',1),(3816,237,'KE','Kasai-Oriental',1),(3817,237,'KN','Kinshasa',1),(3818,237,'KW','Kasai-Occidental',1),(3819,237,'MA','Maniema',1),(3820,237,'NK','Nord-Kivu',1),(3821,237,'OR','Orientale',1),(3822,237,'SK','Sud-Kivu',1),(3823,238,'CE','Central',1),(3824,238,'CB','Copperbelt',1),(3825,238,'EA','Eastern',1),(3826,238,'LP','Luapula',1),(3827,238,'LK','Lusaka',1),(3828,238,'NO','Northern',1),(3829,238,'NW','North-Western',1),(3830,238,'SO','Southern',1),(3831,238,'WE','Western',1),(3832,239,'BU','Bulawayo',1),(3833,239,'HA','Harare',1),(3834,239,'ML','Manicaland',1),(3835,239,'MC','Mashonaland Central',1),(3836,239,'ME','Mashonaland East',1),(3837,239,'MW','Mashonaland West',1),(3838,239,'MV','Masvingo',1),(3839,239,'MN','Matabeleland North',1),(3840,239,'MS','Matabeleland South',1),(3841,239,'MD','Midlands',1),(3861,105,'CB','Campobasso',1),(3862,105,'CI','Carbonia-Iglesias',1),(3863,105,'CE','Caserta',1),(3864,105,'CT','Catania',1),(3865,105,'CZ','Catanzaro',1),(3866,105,'CH','Chieti',1),(3867,105,'CO','Como',1),(3868,105,'CS','Cosenza',1),(3869,105,'CR','Cremona',1),(3870,105,'KR','Crotone',1),(3871,105,'CN','Cuneo',1),(3872,105,'EN','Enna',1),(3873,105,'FE','Ferrara',1),(3874,105,'FI','Firenze',1),(3875,105,'FG','Foggia',1),(3876,105,'FC','Forli-Cesena',1),(3877,105,'FR','Frosinone',1),(3878,105,'GE','Genova',1),(3879,105,'GO','Gorizia',1),(3880,105,'GR','Grosseto',1),(3881,105,'IM','Imperia',1),(3882,105,'IS','Isernia',1),(3883,105,'AQ','L&#39;Aquila',1),(3884,105,'SP','La Spezia',1),(3885,105,'LT','Latina',1),(3886,105,'LE','Lecce',1),(3887,105,'LC','Lecco',1),(3888,105,'LI','Livorno',1),(3889,105,'LO','Lodi',1),(3890,105,'LU','Lucca',1),(3891,105,'MC','Macerata',1),(3892,105,'MN','Mantova',1),(3893,105,'MS','Massa-Carrara',1),(3894,105,'MT','Matera',1),(3895,105,'VS','Medio Campidano',1),(3896,105,'ME','Messina',1),(3897,105,'MI','Milano',1),(3898,105,'MO','Modena',1),(3899,105,'NA','Napoli',1),(3900,105,'NO','Novara',1),(3901,105,'NU','Nuoro',1),(3902,105,'OG','Ogliastra',1),(3903,105,'OT','Olbia-Tempio',1),(3904,105,'OR','Oristano',1),(3905,105,'PD','Padova',1),(3906,105,'PA','Palermo',1),(3907,105,'PR','Parma',1),(3908,105,'PV','Pavia',1),(3909,105,'PG','Perugia',1),(3910,105,'PU','Pesaro e Urbino',1),(3911,105,'PE','Pescara',1),(3912,105,'PC','Piacenza',1),(3913,105,'PI','Pisa',1),(3914,105,'PT','Pistoia',1),(3915,105,'PN','Pordenone',1),(3916,105,'PZ','Potenza',1),(3917,105,'PO','Prato',1),(3918,105,'RG','Ragusa',1),(3919,105,'RA','Ravenna',1),(3920,105,'RC','Reggio Calabria',1),(3921,105,'RE','Reggio Emilia',1),(3922,105,'RI','Rieti',1),(3923,105,'RN','Rimini',1),(3924,105,'RM','Roma',1),(3925,105,'RO','Rovigo',1),(3926,105,'SA','Salerno',1),(3927,105,'SS','Sassari',1),(3928,105,'SV','Savona',1),(3929,105,'SI','Siena',1),(3930,105,'SR','Siracusa',1),(3931,105,'SO','Sondrio',1),(3932,105,'TA','Taranto',1),(3933,105,'TE','Teramo',1),(3934,105,'TR','Terni',1),(3935,105,'TO','Torino',1),(3936,105,'TP','Trapani',1),(3937,105,'TN','Trento',1),(3938,105,'TV','Treviso',1),(3939,105,'TS','Trieste',1),(3940,105,'UD','Udine',1),(3941,105,'VA','Varese',1),(3942,105,'VE','Venezia',1),(3943,105,'VB','Verbano-Cusio-Ossola',1),(3944,105,'VC','Vercelli',1),(3945,105,'VR','Verona',1),(3946,105,'VV','Vibo Valentia',1),(3947,105,'VI','Vicenza',1),(3948,105,'VT','Viterbo',1),(3949,222,'ANT','County Antrim',1),(3950,222,'ARM','County Armagh',1),(3951,222,'DOW','County Down',1),(3952,222,'FER','County Fermanagh',1),(3953,222,'LDY','County Londonderry',1),(3954,222,'TYR','County Tyrone',1),(3955,222,'CMA','Cumbria',1);
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_to_geo_zone`
--

DROP TABLE IF EXISTS `zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_to_geo_zone`
--

LOCK TABLES `zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `zone_to_geo_zone` VALUES (57,176,0,3,'2010-02-26 22:33:24','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-02 23:30:47
