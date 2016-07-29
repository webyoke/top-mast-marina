-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: TOP_MAST_MARINA
-- ------------------------------------------------------
-- Server version 	5.5.47-0+deb8u1
-- Date: Fri, 29 Jul 2016 14:51:29 -0400

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
-- Table structure for table `enact_asset`
--

DROP TABLE IF EXISTS `enact_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `asset_group_id` int(11) NOT NULL,
  `title` varchar(400) NOT NULL,
  `file_name` varchar(800) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `file_size` varchar(10) NOT NULL,
  `file_size_int` int(11) NOT NULL,
  `extension` varchar(5) NOT NULL,
  `type` varchar(12) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`user_id`,`asset_group_id`),
  KEY `a_asset_group_id_idx` (`asset_group_id`),
  CONSTRAINT `a_asset_group_id` FOREIGN KEY (`asset_group_id`) REFERENCES `enact_asset_group` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_asset`
--

LOCK TABLES `enact_asset` WRITE;
/*!40000 ALTER TABLE `enact_asset` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_asset` VALUES (1,1,4,'logo','logo.png','/img/logo.png','33.65K',34458,'png','image','2015-12-06 13:47:23','2015-12-06 13:47:23',NULL,853,435),(2,1,4,'marina','marina.jpg','/img/marina.jpg','733.35K',750946,'jpg','image','2015-12-06 14:07:54','2015-12-06 14:07:54',NULL,3024,2016),(3,1,4,'slips','slips.jpg','/img/slips.jpg','1.11M',1163637,'jpg','image','2015-12-06 15:15:45','2015-12-06 15:15:45',NULL,4079,2709),(4,1,4,'storage','storage.jpg','/img/storage.jpg','777.96K',796635,'jpg','image','2015-12-06 15:44:25','2015-12-06 15:44:25',NULL,3024,2016),(5,1,4,'boats','boats.jpg','/img/boats.jpg','393.01K',402441,'jpg','image','2015-12-06 17:16:55','2015-12-06 17:16:55',NULL,2600,1733),(6,1,4,'sport-fishing-boats','sport-fishing-boats.jpg','/img/sport-fishing-boats.jpg','197.25K',201989,'jpg','image','2015-12-06 18:45:05','2015-12-06 18:45:05',NULL,2048,1536),(7,1,4,'alcohol-bar-party-cocktail','alcohol-bar-party-cocktail.jpg','/img/alcohol-bar-party-cocktail.jpg','320.52K',328216,'jpg','image','2015-12-06 19:43:00','2015-12-06 19:43:00',NULL,3000,1893),(8,1,4,'blue-berry','blue-berry.jpg','/img/blue-berry.jpg','555.61K',568944,'jpg','image','2015-12-07 10:46:52','2015-12-07 10:46:52',NULL,4722,2657),(9,1,4,'racing-boat','racing-boat.jpg','/img/racing-boat.jpg','257.12K',263286,'jpg','image','2015-12-07 11:43:49','2015-12-07 11:43:49',NULL,2606,1303),(10,1,4,'boat-show','boat-show.jpg','/img/boat-show.jpg','343.32K',351558,'jpg','image','2015-12-07 13:53:20','2015-12-07 13:53:20',NULL,3008,1804),(11,1,4,'dire-straights','dire-straights.jpg','/img/dire-straights.jpg','396.63K',406151,'jpg','image','2015-12-07 14:48:20','2015-12-07 14:48:20',NULL,3489,2202),(12,1,4,'kayak','kayak.jpg','/img/kayak.jpg','393.62K',403070,'jpg','image','2015-12-07 16:59:03','2015-12-07 16:59:03',NULL,1280,988),(13,1,4,'sail-boat-icon','sail-boat-icon.png','/img/sail-boat-icon.png','8.02K',8213,'png','image','2015-12-08 11:55:50','2015-12-08 11:55:50',NULL,512,512),(14,1,4,'bar-skyline','bar-skyline.jpg','/img/bar-skyline.jpg','192.16K',196771,'jpg','image','2015-12-16 14:01:07','2015-12-16 14:01:07',NULL,2800,2100),(16,1,12,'robert-givens','robert-givens.jpg','/img/user/robert-givens.jpg','276.52K',283158,'jpg','image','2015-12-16 20:34:20','2015-12-16 20:34:20',NULL,706,903),(17,1,4,'fish-cleaning-table','fish-cleaning-table.jpeg','/img/fish-cleaning-table.jpeg','67.52K',69139,'jpeg','image','2016-01-19 12:43:48','2016-01-19 12:43:48',NULL,336,419),(18,1,4,'top mast marina icon','top-mast-marina-icon.png','/img/top-mast-marina-icon.png','772.00B',772,'png','image','2016-03-05 14:29:39','2016-03-05 14:29:39',NULL,32,32);
/*!40000 ALTER TABLE `enact_asset` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_asset_group`
--

DROP TABLE IF EXISTS `enact_asset_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_asset_group` (
  `id` int(11) NOT NULL,
  `path` varchar(180) NOT NULL,
  `type` varchar(16) NOT NULL,
  `thumb` varchar(120) DEFAULT NULL,
  `compression` int(3) DEFAULT NULL,
  `thumb_width` int(4) DEFAULT NULL,
  `thumb_height` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `ag_section_id` FOREIGN KEY (`id`) REFERENCES `enact_section` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_asset_group`
--

LOCK TABLES `enact_asset_group` WRITE;
/*!40000 ALTER TABLE `enact_asset_group` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_asset_group` VALUES (4,'img','Local','',NULL,NULL,NULL),(12,'img/user','Local','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `enact_asset_group` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_config_setting`
--

DROP TABLE IF EXISTS `enact_config_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_config_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config` varchar(120) NOT NULL,
  `setting` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_config_setting`
--

LOCK TABLES `enact_config_setting` WRITE;
/*!40000 ALTER TABLE `enact_config_setting` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_config_setting` VALUES (1,'siteName','Top Mast Marina'),(2,'siteLogo','1'),(3,'email',NULL),(4,'siteIcon','18'),(5,'enactCurrentVersion','1.1.1');
/*!40000 ALTER TABLE `enact_config_setting` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_email_message`
--

DROP TABLE IF EXISTS `enact_email_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_email_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handle` varchar(60) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `subject` varchar(600) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_email_message`
--

LOCK TABLES `enact_email_message` WRITE;
/*!40000 ALTER TABLE `enact_email_message` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_email_message` VALUES (1,'passwordReset','Password Reset/Forgot','The message to send when a user resets or forgets their password','Password Reset Request','Hey {{ user.displayName }},\\nHeres the link to reset your {{ enact.siteName }} password.\\n{{ link }}'),(2,'accountActivation','Activate Account','The message to send when a user activates their account','Account Activation','Hey {{ user.displayName }},\\nHeres the link to active your {{ enact.siteName }} account.\\n{{ link }}');
/*!40000 ALTER TABLE `enact_email_message` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_entry`
--

DROP TABLE IF EXISTS `enact_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_type_id` int(11) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `slug` varchar(420) NOT NULL,
  `created_on` datetime NOT NULL,
  `last_edited_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_edited_by` int(11) NOT NULL,
  `url` varchar(400) NOT NULL,
  `parent_entry_id` int(11) DEFAULT NULL,
  `entry_order` tinyint(3) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `at_depth` tinyint(3) DEFAULT NULL,
  `draft_out_of_sync` tinyint(1) DEFAULT NULL,
  `entry_out_of_sync` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_UNIQUE` (`url`),
  KEY `e_section_type_id_idx` (`section_type_id`),
  KEY `e_parent_entry_id_idx` (`parent_entry_id`),
  CONSTRAINT `e_parent_entry_id` FOREIGN KEY (`parent_entry_id`) REFERENCES `enact_entry` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `e_section_type_id` FOREIGN KEY (`section_type_id`) REFERENCES `enact_section_type` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_entry`
--

LOCK TABLES `enact_entry` WRITE;
/*!40000 ALTER TABLE `enact_entry` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_entry` VALUES (1,3,'Top Mast Marina - Best on the water since 1968','/','2015-12-06 13:19:47','2015-12-16 09:31:03',1,1,'/',NULL,NULL,1,'2015-12-06 13:19:47',NULL,NULL,1,NULL),(2,1,'Global Fields','','2015-12-06 13:19:47','2015-12-14 18:14:52',1,1,'',NULL,NULL,0,NULL,NULL,NULL,1,NULL),(3,5,'Boat Slips','slips','2015-12-06 15:14:04','2015-12-06 17:09:01',1,1,'/boating/slips',5,0,1,'2015-12-06 15:14:04',NULL,1,1,1),(4,5,'Boat Storage','storage','2015-12-06 15:40:28','2015-12-06 16:40:38',1,1,'/boating/storage',5,0,1,'2015-12-06 15:40:28',NULL,1,1,NULL),(5,6,'Boating Services','boating','2015-12-06 16:39:49','2015-12-06 17:16:58',1,1,'/boating',NULL,0,1,'2015-12-06 16:39:49',NULL,0,1,NULL),(6,6,'Boat Launching','ramp','2015-12-06 18:45:10','2015-12-14 17:04:16',1,1,'/boating/ramp',5,0,1,'2015-12-06 18:45:10',NULL,1,1,NULL),(7,7,'The Bar at Top Mast Marina','bar','2015-12-06 18:53:22','2015-12-07 10:07:31',1,1,'/bar',NULL,NULL,1,'2015-12-06 00:00:00',NULL,NULL,NULL,1),(8,8,'Blueberry Live on 1/18/2016','blueberry-live-on-1-18-2016','2015-12-07 10:48:21','2015-12-07 11:39:31',1,1,'/events/blueberry-live-on-1-18-2016',NULL,NULL,1,'2015-12-07 10:48:21',NULL,NULL,1,NULL),(9,8,'21st Annual Speed Boat Races','21st-annual-speed-boat-races','2015-12-07 11:45:15','2015-12-07 11:45:15',1,1,'/events/21st-annual-speed-boat-races',NULL,NULL,1,'2015-12-07 11:45:15',NULL,NULL,NULL,NULL),(10,8,'30th Annual Boat Show','30th-annual-boat-show','2015-12-07 13:55:10','2015-12-07 16:22:24',1,1,'/events/30th-annual-boat-show',NULL,NULL,1,'2015-12-07 13:00:00',NULL,NULL,1,NULL),(11,8,'Dire Straights Tribute Band on 3/10/16','dire-straights-tribute-band-on-3-10-16','2015-12-07 14:49:00','2015-12-07 14:49:00',1,1,'/events/dire-straights-tribute-band-on-3-10-16',NULL,NULL,1,'2015-12-07 14:49:00',NULL,NULL,NULL,NULL),(14,8,'Kayak Tour on 3/15/16','kayak-tours-on-3-15-16','2015-12-07 18:42:50','2015-12-07 18:46:09',1,1,'/events/kayak-tours-on-3-15-16',NULL,NULL,1,'2015-12-07 18:42:50',NULL,NULL,1,NULL),(15,10,'About Top Mast Marina','about-us','2015-12-08 11:40:22','2015-12-08 11:58:50',1,1,'/about-us',NULL,NULL,1,'2015-12-08 00:00:00',NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `enact_entry` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_entry_field`
--

DROP TABLE IF EXISTS `enact_entry_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_entry_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `section_type_field_id` int(11) NOT NULL,
  `field_order` tinyint(3) NOT NULL,
  `value` text,
  `matrix_group_id` int(11) DEFAULT NULL,
  `block_number` tinyint(3) DEFAULT NULL,
  `matrix_field_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`entry_id`,`section_type_field_id`),
  KEY `ef_entry_id_idx` (`entry_id`),
  KEY `ef_section_type_field_id_idx` (`section_type_field_id`),
  CONSTRAINT `ef_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `enact_entry` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `ef_section_type_field_id` FOREIGN KEY (`section_type_field_id`) REFERENCES `enact_section_type_field` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_entry_field`
--

LOCK TABLES `enact_entry_field` WRITE;
/*!40000 ALTER TABLE `enact_entry_field` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_entry_field` VALUES (5,1,5,0,NULL,NULL,NULL,NULL),(6,3,7,0,'First class boating slips',NULL,NULL,NULL),(7,3,6,0,'<p>We have a variety of options if you are looking for boat slips. We have four different size slips all at excellent prices. Availability is subject to change.</p><p><strong>Amenities included with your slip:</strong></p><ul><li>24/7 on site security</li><li>Power hookup</li><li>Sewage hookup</li></ul>',NULL,NULL,NULL),(8,3,8,0,NULL,NULL,NULL,NULL),(9,3,8,0,'18',6,0,9),(10,3,8,0,'30',6,0,11),(11,3,8,0,'450',6,0,10),(12,3,8,0,'4',6,0,12),(13,3,8,0,'20',6,1,9),(14,3,8,0,'60',6,1,11),(15,3,8,0,'700',6,1,10),(16,3,8,0,'3',6,1,12),(17,3,8,0,'40',6,2,9),(18,3,8,0,'100',6,2,11),(19,3,8,0,'1200',6,2,10),(20,3,8,0,'2',6,2,12),(21,3,8,0,'50',6,3,9),(22,3,8,0,'200',6,3,11),(23,3,8,0,'3000',6,3,10),(24,3,8,0,'0',6,3,12),(25,3,11,0,NULL,NULL,NULL,NULL),(26,4,7,0,'Boat storage that provides true peace of mind',NULL,NULL,NULL),(27,4,6,0,'<p>We can take care of storing your boat out of the water in our state of the art storage facility. We have 24/7 security patrolling the property so there is no need to worry about criminals messing with your prized possession.</p>',NULL,NULL,NULL),(28,4,8,0,NULL,NULL,NULL,NULL),(29,4,11,0,NULL,NULL,NULL,NULL),(30,4,8,0,'18',6,0,9),(31,4,8,0,'30',6,0,11),(32,4,8,0,'400',6,0,10),(33,4,8,0,'10',6,0,12),(34,4,8,0,'50',6,1,9),(35,4,8,0,'100',6,1,11),(36,4,8,0,'550',6,1,10),(37,4,8,0,'3',6,1,12),(38,4,8,0,'60',6,2,9),(39,4,8,0,'200',6,2,11),(40,4,8,0,'850',6,2,10),(41,4,8,0,'1',6,2,12),(42,5,9,0,'Boating Services',NULL,NULL,NULL),(43,5,10,0,'<p>Below you will find our standard boating offerings, we can also fill special requests of all types.</p>',NULL,NULL,NULL),(44,5,12,0,NULL,NULL,NULL,NULL),(45,6,9,0,'Launch at Top Mast for a free world class expierence',NULL,NULL,NULL),(46,6,10,0,'<p>Come enjoy free launching and parking at the marina between the hours of 5am and 12pm. Our launch ramps are cleaned once a week and are as safe as they come.</p><p>Also enjoy the free use of our public fish cleaning table. You must bring your own cleaning knives though.</p>',NULL,NULL,NULL),(47,6,12,0,NULL,NULL,NULL,NULL),(48,7,13,0,'Drinks & Food at the Bar at Top Mast Marina',NULL,NULL,NULL),(49,7,14,0,'<p>Join us from 3-6 daily for happy hour.</p><p>Live music every Thursday &amp; Friday night.</p>',NULL,NULL,NULL),(50,7,15,0,NULL,NULL,NULL,NULL),(51,7,15,0,'Cocktails',8,0,14),(52,7,15,0,'Rum Punch',9,1,15),(53,7,15,0,'<p>Light + Dark Rums, Tropical Juices, a splash of Grenadine + Lime Juice.</p>',9,1,16),(54,7,15,0,'11',9,1,17),(55,7,15,0,'Lemonade',9,2,15),(56,7,15,0,'<p>Raspberry Vodka, Apple Cider, topped with lemonade.</p>',9,2,16),(57,7,15,0,'12',9,2,17),(58,7,15,0,'Whip It Good ',9,3,15),(59,7,15,0,'<p>Whip Cream Vodka, Orange Vodka, OJ + whipped cream all shaken, chilled, topped with a splash of grenadine.</p>',9,3,16),(60,7,15,0,'14',9,3,17),(61,7,15,0,'The Lazy Peach ',9,4,15),(62,7,15,0,'<p>Peach Vodka, Melon Liquor, splash of sour + pineapple.</p>',9,4,16),(63,7,15,0,'12',9,4,17),(64,7,15,0,'Green Monster',9,5,15),(65,7,15,0,'<p>Coconut Rum, Apple Liquor, Melon Liquor, Razz Liquor + pineapple.</p>',9,5,16),(66,7,15,0,'14',9,5,17),(67,7,15,0,'Lazy Berry Haze',9,6,15),(68,7,15,0,'<p>Blueberry Vodka, fresh mint, sour mix, soda + Sprite.</p>',9,6,16),(69,7,15,0,'12',9,6,17),(70,7,15,0,'Snacks',8,11,14),(71,7,15,0,'Smilin’ Bob’s Fish Dip',9,12,15),(72,7,15,0,'<p>Served with toasted Cuban bread.</p>',9,12,16),(73,7,15,0,'8',9,12,17),(74,7,15,0,'Tacos',9,13,15),(75,7,15,0,'<p>Choice of chicken or Beef. Served with spicy Ranch, salsa &amp; sour cream.</p>',9,13,16),(76,7,15,0,'7',9,13,17),(77,7,15,0,'Tatter Tot Nachos ',9,14,15),(78,7,15,0,'<p>Topped with melted cheese, bacon &amp; jalapeños.</p>',9,14,16),(79,7,15,0,'9',9,14,17),(80,7,16,0,NULL,NULL,NULL,NULL),(81,7,15,0,'Beer',8,7,14),(82,7,15,0,'On Tap',9,8,15),(83,7,15,0,'<p>Duke brown, Killer Whale, Session IPA</p>',9,8,16),(84,7,15,0,'6',9,8,17),(85,7,15,0,'Bottle',9,9,15),(86,7,15,0,'<p>Corona, Mich Ultra, Bud Light, Budweiser</p>',9,9,16),(87,7,15,0,'4',9,9,17),(88,8,17,0,NULL,NULL,NULL,NULL),(89,8,18,0,'{\"date\":\"Mon, Jan 18, 2016\",\"time\":\"7:00 PM\",\"datetime\":\"Mon, Jan 18, 2016 7:00 PM\"}',NULL,NULL,NULL),(90,8,19,0,'<p>Come see Blueberry live at Top Mast Marina. Awesome vibes you don\'t want to miss. Half off tap beers during performance!</p>',NULL,NULL,NULL),(91,8,20,0,NULL,NULL,NULL,NULL),(92,9,17,0,NULL,NULL,NULL,NULL),(93,9,18,0,'{\"date\":\"Sat, Jan 30, 2016\",\"time\":\"10:00 AM\",\"datetime\":\"Sat, Jan 30, 2016 10:00 AM\"}',NULL,NULL,NULL),(94,9,19,0,'<p>Join us for the 21st annual speed boat racing presented by Top Mast Marina. Theres something for everybody; music, food, babes, and fast boats!</p>',NULL,NULL,NULL),(95,9,20,0,NULL,NULL,NULL,NULL),(96,10,17,0,NULL,NULL,NULL,NULL),(97,10,18,0,'{\"date\":\"Sun, Feb 28, 2016\",\"time\":\"10:00 AM\",\"datetime\":\"Sun, Feb 28, 2016 10:00 AM\"}',NULL,NULL,NULL),(98,10,19,0,'<p>Join us for the 30th annual Top Mast Boat Show.&nbsp; Live music, food &amp; drink vendors, 20+ boat vendors, and a win a boat raffle!</p>',NULL,NULL,NULL),(99,10,20,0,NULL,NULL,NULL,NULL),(100,11,17,0,NULL,NULL,NULL,NULL),(101,11,18,0,'{\"date\":\"Thu, Mar 10, 2016\",\"time\":\"7:00 PM\",\"datetime\":\"Thu, Mar 10, 2016 7:00 PM\"}',NULL,NULL,NULL),(102,11,19,0,'<p>Pay tribute with the Dire Straights tribute band. Half off select cocktails during performance.</p>',NULL,NULL,NULL),(103,11,20,0,NULL,NULL,NULL,NULL),(113,14,17,0,NULL,NULL,NULL,NULL),(114,14,18,0,'{\"date\":\"Tue, Mar 15, 2016\",\"time\":\"10:30 AM\",\"datetime\":\"Tue, Mar 15, 2016 10:30 AM\"}',NULL,NULL,NULL),(115,14,19,0,'<p>Join captain Clark Gibells on a half day kayak tour. Refreshments and gear is provided, <strong>$60.</strong></p>',NULL,NULL,NULL),(116,14,20,0,NULL,NULL,NULL,NULL),(118,15,23,0,'<p><img style=\"float: right;\" title=\"sail-boat-icon\" height=\"176\" width=\"176\" src=\"/img/sail-boat-icon.png\" /></p><p>Top Mast Marina has been family owned and operated since 1969, since that time we have come a long way from the first 3 slip dock owned by Grandpa Steve. Today we offer over 120 boat slips and 100 boat storage units. Our bar was first build in 1994 due to internal popular demand and today it is one of the most happening spots in town. With live music twice a week, the friendliest staff and tastiest drinks imaginable, there really isn\'t a better spot to be. We are also proud to host quiet a few magnificent annual events year after year.</p>',NULL,NULL,NULL),(119,2,24,0,NULL,NULL,NULL,NULL),(120,2,24,0,'Boating',11,0,24),(121,2,24,0,'',11,0,25),(122,2,24,0,'',11,0,26),(123,2,24,0,'Bar',11,1,24),(124,2,24,0,'',11,1,25),(125,2,24,0,'',11,1,26),(126,2,24,0,'Events',11,2,24),(127,2,24,0,'',11,2,25),(128,2,24,0,'/events',11,2,26),(129,2,24,0,'About',11,3,24),(130,2,24,0,'',11,3,25),(131,2,24,0,'',11,3,26),(132,1,25,0,NULL,NULL,NULL,NULL),(133,1,25,0,'A marina expierence as grand as the seas you sail',14,0,36),(134,1,25,0,'center',14,0,37),(135,1,25,0,'https://www.youtube.com/watch?v=HftpDXh32mw',16,1,40),(136,1,25,0,'#FFF',12,2,28),(137,1,25,0,'<p>Top Mast Marina is the best place to transition from your land-to-sea adventure. Whether you have your boat in one of our slips, storage, or just want to launch, we are sure you will love your experience.</p>',12,2,29),(138,1,25,0,'#000000',12,2,33),(139,1,25,0,'',12,2,30),(140,1,25,0,'right',12,2,31),(141,1,25,0,'<p>We have been using Top Mast for 20 years, there is no one better!</p>',15,3,38);
/*!40000 ALTER TABLE `enact_entry_field` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_entry_field_value`
--

DROP TABLE IF EXISTS `enact_entry_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_entry_field_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `entry_field_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `field_order` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`,`entry_id`,`entry_field_id`),
  KEY `efv_entry_field_id_idx` (`entry_field_id`),
  KEY `efv_entry_id_idx` (`entry_id`),
  CONSTRAINT `efv_entry_field_id` FOREIGN KEY (`entry_field_id`) REFERENCES `enact_entry_field` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_entry_field_value`
--

LOCK TABLES `enact_entry_field_value` WRITE;
/*!40000 ALTER TABLE `enact_entry_field_value` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_entry_field_value` VALUES (2,1,5,2,0),(3,3,25,3,0),(4,4,29,4,0),(5,5,44,5,0),(6,6,47,6,0),(7,7,80,7,0),(8,8,88,8,0),(9,8,91,1,0),(10,9,92,9,0),(11,9,95,3,0),(12,10,96,10,0),(13,10,99,3,0),(14,11,100,11,0),(15,11,103,1,0),(21,14,113,12,0),(22,14,116,3,0),(23,2,121,5,0),(24,2,124,7,0),(25,2,130,15,0),(26,1,139,13,0);
/*!40000 ALTER TABLE `enact_entry_field_value` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_entry_field_value_version`
--

DROP TABLE IF EXISTS `enact_entry_field_value_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_entry_field_value_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `entry_field_id` int(11) NOT NULL,
  `version_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `field_order` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`,`entry_id`,`entry_field_id`,`version_id`),
  KEY `efvv_version_id_idx` (`version_id`),
  KEY `efvv_entry_field_id_idx` (`entry_field_id`),
  CONSTRAINT `efvv_entry_field_id` FOREIGN KEY (`entry_field_id`) REFERENCES `enact_entry_field_version` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_entry_field_value_version`
--

LOCK TABLES `enact_entry_field_value_version` WRITE;
/*!40000 ALTER TABLE `enact_entry_field_value_version` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_entry_field_value_version` VALUES (3,1,9,3,2,0),(4,3,32,5,3,0),(5,4,68,7,4,0),(6,4,87,9,4,0),(8,5,122,11,5,0),(9,6,125,12,6,0),(10,6,128,13,6,0),(11,7,164,15,7,0),(12,7,197,16,7,0),(13,8,234,17,8,0),(14,8,237,18,8,0),(15,8,240,18,1,0),(16,9,241,19,9,0),(18,10,245,20,10,0),(19,10,248,20,3,0),(20,11,249,21,11,0),(21,11,252,21,1,0),(22,1,256,22,2,0),(23,10,257,23,10,0),(24,10,260,23,3,0),(25,10,261,24,10,0),(26,10,264,24,3,0),(27,10,265,25,10,0),(28,10,268,25,3,0),(29,10,269,26,10,0),(30,10,272,26,3,0),(31,10,273,27,10,0),(32,10,276,27,3,0),(39,14,289,31,12,0),(40,14,292,31,3,0),(41,14,293,32,12,0),(42,14,296,32,3,0),(43,6,304,36,6,0),(44,7,337,39,7,0),(45,1,349,40,2,0),(46,1,356,40,13,0);
/*!40000 ALTER TABLE `enact_entry_field_value_version` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_entry_field_version`
--

DROP TABLE IF EXISTS `enact_entry_field_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_entry_field_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `section_type_field_id` int(11) NOT NULL,
  `version_id` int(11) NOT NULL,
  `field_order` tinyint(3) NOT NULL,
  `value` text,
  `matrix_group_id` int(11) DEFAULT NULL,
  `block_number` tinyint(3) DEFAULT NULL,
  `matrix_field_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`entry_id`,`section_type_field_id`,`version_id`),
  KEY `efv_version_id_idx` (`version_id`),
  KEY `efv_section_type_field_id_idx` (`section_type_field_id`),
  CONSTRAINT `efv_section_type_field_id` FOREIGN KEY (`section_type_field_id`) REFERENCES `enact_section_type_field` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `efv_version_id` FOREIGN KEY (`version_id`) REFERENCES `enact_entry_version` (`version_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_entry_field_version`
--

LOCK TABLES `enact_entry_field_version` WRITE;
/*!40000 ALTER TABLE `enact_entry_field_version` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_entry_field_version` VALUES (9,1,5,3,0,NULL,NULL,NULL,NULL),(10,3,7,4,0,'First class boating slips',NULL,NULL,NULL),(11,3,6,4,0,'<p>We have a variety of options if you are looking for boat slips. We have four different size slips all at excellent prices. Availability is subject to change.</p><p> </p><p><strong>Amenities included with your slip:</strong></p><ul><li>24/7 on site security</li><li>Power hookup</li><li>Sewage hookup</li></ul>',NULL,NULL,NULL),(12,3,8,4,0,NULL,NULL,NULL,NULL),(13,3,8,4,0,'18',6,0,9),(14,3,8,4,0,'30',6,0,11),(15,3,8,4,0,'450',6,0,10),(16,3,8,4,0,'4',6,0,12),(17,3,8,4,0,'20',6,1,9),(18,3,8,4,0,'60',6,1,11),(19,3,8,4,0,'700',6,1,10),(20,3,8,4,0,'3',6,1,12),(21,3,8,4,0,'40',6,2,9),(22,3,8,4,0,'100',6,2,11),(23,3,8,4,0,'1200',6,2,10),(24,3,8,4,0,'2',6,2,12),(25,3,8,4,0,'50',6,3,9),(26,3,8,4,0,'200',6,3,11),(27,3,8,4,0,'3000',6,3,10),(28,3,8,4,0,'0',6,3,12),(29,3,7,5,0,'First class boating slips',NULL,NULL,NULL),(30,3,6,5,0,'<p>We have a variety of options if you are looking for boat slips. We have four different size slips all at excellent prices. Availability is subject to change.</p><p><strong>Amenities included with your slip:</strong></p><ul><li>24/7 on site security</li><li>Power hookup</li><li>Sewage hookup</li></ul>',NULL,NULL,NULL),(31,3,8,5,0,NULL,NULL,NULL,NULL),(32,3,11,5,0,NULL,NULL,NULL,NULL),(33,3,8,5,0,'18',6,0,9),(34,3,8,5,0,'30',6,0,11),(35,3,8,5,0,'450',6,0,10),(36,3,8,5,0,'4',6,0,12),(37,3,8,5,0,'20',6,1,9),(38,3,8,5,0,'60',6,1,11),(39,3,8,5,0,'700',6,1,10),(40,3,8,5,0,'3',6,1,12),(41,3,8,5,0,'40',6,2,9),(42,3,8,5,0,'100',6,2,11),(43,3,8,5,0,'1200',6,2,10),(44,3,8,5,0,'2',6,2,12),(45,3,8,5,0,'50',6,3,9),(46,3,8,5,0,'200',6,3,11),(47,3,8,5,0,'3000',6,3,10),(48,3,8,5,0,'0',6,3,12),(49,4,7,6,0,'Boat storage that provides true peace of mind',NULL,NULL,NULL),(50,4,6,6,0,'<p>We can take care of storing your boat out of the water in our state of the art storage facility. We have 24/7 security patrolling the property so there is no need to worry about criminals messing with your prized possession.</p>',NULL,NULL,NULL),(51,4,8,6,0,NULL,NULL,NULL,NULL),(52,4,11,6,0,NULL,NULL,NULL,NULL),(53,4,8,6,0,'18',6,0,9),(54,4,8,6,0,'30',6,0,11),(55,4,8,6,0,'400',6,0,10),(56,4,8,6,0,'10',6,0,12),(57,4,8,6,0,'50',6,1,9),(58,4,8,6,0,'100',6,1,11),(59,4,8,6,0,'550',6,1,10),(60,4,8,6,0,'3',6,1,12),(61,4,8,6,0,'60',6,2,9),(62,4,8,6,0,'200',6,2,11),(63,4,8,6,0,'850',6,2,10),(64,4,8,6,0,'1',6,2,12),(65,4,7,7,0,'Boat storage that provides true peace of mind',NULL,NULL,NULL),(66,4,6,7,0,'<p>We can take care of storing your boat out of the water in our state of the art storage facility. We have 24/7 security patrolling the property so there is no need to worry about criminals messing with your prized possession.</p>',NULL,NULL,NULL),(67,4,8,7,0,NULL,NULL,NULL,NULL),(68,4,11,7,0,NULL,NULL,NULL,NULL),(69,4,8,7,0,'18',6,0,9),(70,4,8,7,0,'30',6,0,11),(71,4,8,7,0,'400',6,0,10),(72,4,8,7,0,'10',6,0,12),(73,4,8,7,0,'50',6,1,9),(74,4,8,7,0,'100',6,1,11),(75,4,8,7,0,'550',6,1,10),(76,4,8,7,0,'3',6,1,12),(77,4,8,7,0,'60',6,2,9),(78,4,8,7,0,'200',6,2,11),(79,4,8,7,0,'850',6,2,10),(80,4,8,7,0,'1',6,2,12),(81,5,9,8,0,'Boating Services',NULL,NULL,NULL),(82,5,10,8,0,'<p>Below you will find our standard boating offerings, we can also fill special requests of all types.</p>',NULL,NULL,NULL),(83,5,12,8,0,NULL,NULL,NULL,NULL),(84,4,7,9,0,'Boat storage that provides true peace of mind',NULL,NULL,NULL),(85,4,6,9,0,'<p>We can take care of storing your boat out of the water in our state of the art storage facility. We have 24/7 security patrolling the property so there is no need to worry about criminals messing with your prized possession.</p>',NULL,NULL,NULL),(86,4,8,9,0,NULL,NULL,NULL,NULL),(87,4,11,9,0,NULL,NULL,NULL,NULL),(88,4,8,9,0,'18',6,0,9),(89,4,8,9,0,'30',6,0,11),(90,4,8,9,0,'400',6,0,10),(91,4,8,9,0,'10',6,0,12),(92,4,8,9,0,'50',6,1,9),(93,4,8,9,0,'100',6,1,11),(94,4,8,9,0,'550',6,1,10),(95,4,8,9,0,'3',6,1,12),(96,4,8,9,0,'60',6,2,9),(97,4,8,9,0,'200',6,2,11),(98,4,8,9,0,'850',6,2,10),(99,4,8,9,0,'1',6,2,12),(100,3,7,10,0,'First class boating slips',NULL,NULL,NULL),(101,3,6,10,0,'<p>We have a variety of options if you are looking for boat slips. We have four different size slips all at excellent prices. Availability is subject to change.</p><p><strong>Amenities included with your slip:</strong></p><ul><li>24/7 on site security</li><li>Power hookup</li><li>Sewage hookup</li></ul>',NULL,NULL,NULL),(102,3,8,10,0,NULL,NULL,NULL,NULL),(103,3,11,10,0,NULL,NULL,NULL,NULL),(104,3,8,10,0,'18',6,0,9),(105,3,8,10,0,'30',6,0,11),(106,3,8,10,0,'450',6,0,10),(107,3,8,10,0,'4',6,0,12),(108,3,8,10,0,'20',6,1,9),(109,3,8,10,0,'60',6,1,11),(110,3,8,10,0,'700',6,1,10),(111,3,8,10,0,'3',6,1,12),(112,3,8,10,0,'40',6,2,9),(113,3,8,10,0,'100',6,2,11),(114,3,8,10,0,'1200',6,2,10),(115,3,8,10,0,'2',6,2,12),(116,3,8,10,0,'50',6,3,9),(117,3,8,10,0,'200',6,3,11),(118,3,8,10,0,'3000',6,3,10),(119,3,8,10,0,'0',6,3,12),(120,5,9,11,0,'Boating Services',NULL,NULL,NULL),(121,5,10,11,0,'<p>Below you will find our standard boating offerings, we can also fill special requests of all types.</p>',NULL,NULL,NULL),(122,5,12,11,0,NULL,NULL,NULL,NULL),(123,6,9,12,0,'Launch at Top Mast for a free world class expierence',NULL,NULL,NULL),(124,6,10,12,0,'<p>Come enjoy free launching and parking at the marina between the hours of 5am and 12pm. Our launch ramps are cleaned once a week and are as safe as they come.</p><p>Also enjoy the free use of our public fish cleaning table. You must bring your own cleaning knives though.</p>',NULL,NULL,NULL),(125,6,12,12,0,NULL,NULL,NULL,NULL),(126,6,9,13,0,'Launch at Top Mast for a free world class expierence',NULL,NULL,NULL),(127,6,10,13,0,'<p>Come enjoy free launching and parking at the marina between the hours of 5am and 12pm. Our launch ramps are cleaned once a week and are as safe as they come.</p><p>Also enjoy the free use of our public fish cleaning table. You must bring your own cleaning knives though.</p>',NULL,NULL,NULL),(128,6,12,13,0,NULL,NULL,NULL,NULL),(129,7,13,14,0,'Drinks & Food at the Bar at Top Mast Marina',NULL,NULL,NULL),(130,7,14,14,0,'<p>Join us from 3-6 daily for happy hour.</p><p>Live music every Thursday &amp; Friday night.</p>',NULL,NULL,NULL),(131,7,15,14,0,NULL,NULL,NULL,NULL),(132,7,15,14,0,'Cocktails',8,0,14),(133,7,15,14,0,'Rum Punch',9,1,15),(134,7,15,14,0,'<p>Light + Dark Rums, Tropical Juices, a splash of Grenadine + Lime Juice.</p>',9,1,16),(135,7,15,14,0,'11',9,1,17),(136,7,15,14,0,'Lemonade',9,2,15),(137,7,15,14,0,'<p>Raspberry Vodka, Apple Cider, topped with lemonade.</p>',9,2,16),(138,7,15,14,0,'12',9,2,17),(139,7,15,14,0,'Whip It Good ',9,3,15),(140,7,15,14,0,'<p>Whip Cream Vodka, Orange Vodka, OJ + whipped cream all shaken, chilled, topped with a splash of grenadine.</p>',9,3,16),(141,7,15,14,0,'14',9,3,17),(142,7,15,14,0,'The Lazy Peach ',9,4,15),(143,7,15,14,0,'<p>Peach Vodka, Melon Liquor, splash of sour + pineapple.</p>',9,4,16),(144,7,15,14,0,'12',9,4,17),(145,7,15,14,0,'Green Monster',9,5,15),(146,7,15,14,0,'<p>Coconut Rum, Apple Liquor, Melon Liquor, Razz Liquor + pineapple.</p>',9,5,16),(147,7,15,14,0,'14',9,5,17),(148,7,15,14,0,'Lazy Berry Haze',9,6,15),(149,7,15,14,0,'<p>Blueberry Vodka, fresh mint, sour mix, soda + Sprite.</p>',9,6,16),(150,7,15,14,0,'12',9,6,17),(151,7,15,14,0,'Snacks',8,7,14),(152,7,15,14,0,'Smilin’ Bob’s Fish Dip',9,8,15),(153,7,15,14,0,'<p>Served with toasted Cuban bread.</p>',9,8,16),(154,7,15,14,0,'8',9,8,17),(155,7,15,14,0,'Tacos',9,9,15),(156,7,15,14,0,'<p>Choice of chicken or Beef. Served with spicy Ranch, salsa &amp; sour cream.</p>',9,9,16),(157,7,15,14,0,'7',9,9,17),(158,7,15,14,0,'Tatter Tot Nachos ',9,10,15),(159,7,15,14,0,'<p>Topped with melted cheese, bacon &amp; jalapeños.</p>',9,10,16),(160,7,15,14,0,'9',9,10,17),(161,7,13,15,0,'Drinks & Food at the Bar at Top Mast Marina',NULL,NULL,NULL),(162,7,14,15,0,'<p>Join us from 3-6 daily for happy hour.</p><p>Live music every Thursday &amp; Friday night.</p>',NULL,NULL,NULL),(163,7,15,15,0,NULL,NULL,NULL,NULL),(164,7,16,15,0,NULL,NULL,NULL,NULL),(165,7,15,15,0,'Cocktails',8,0,14),(166,7,15,15,0,'Rum Punch',9,1,15),(167,7,15,15,0,'<p>Light + Dark Rums, Tropical Juices, a splash of Grenadine + Lime Juice.</p>',9,1,16),(168,7,15,15,0,'11',9,1,17),(169,7,15,15,0,'Lemonade',9,2,15),(170,7,15,15,0,'<p>Raspberry Vodka, Apple Cider, topped with lemonade.</p>',9,2,16),(171,7,15,15,0,'12',9,2,17),(172,7,15,15,0,'Whip It Good ',9,3,15),(173,7,15,15,0,'<p>Whip Cream Vodka, Orange Vodka, OJ + whipped cream all shaken, chilled, topped with a splash of grenadine.</p>',9,3,16),(174,7,15,15,0,'14',9,3,17),(175,7,15,15,0,'The Lazy Peach ',9,4,15),(176,7,15,15,0,'<p>Peach Vodka, Melon Liquor, splash of sour + pineapple.</p>',9,4,16),(177,7,15,15,0,'12',9,4,17),(178,7,15,15,0,'Green Monster',9,5,15),(179,7,15,15,0,'<p>Coconut Rum, Apple Liquor, Melon Liquor, Razz Liquor + pineapple.</p>',9,5,16),(180,7,15,15,0,'14',9,5,17),(181,7,15,15,0,'Lazy Berry Haze',9,6,15),(182,7,15,15,0,'<p>Blueberry Vodka, fresh mint, sour mix, soda + Sprite.</p>',9,6,16),(183,7,15,15,0,'12',9,6,17),(184,7,15,15,0,'Snacks',8,7,14),(185,7,15,15,0,'Smilin’ Bob’s Fish Dip',9,8,15),(186,7,15,15,0,'<p>Served with toasted Cuban bread.</p>',9,8,16),(187,7,15,15,0,'8',9,8,17),(188,7,15,15,0,'Tacos',9,9,15),(189,7,15,15,0,'<p>Choice of chicken or Beef. Served with spicy Ranch, salsa &amp; sour cream.</p>',9,9,16),(190,7,15,15,0,'7',9,9,17),(191,7,15,15,0,'Tatter Tot Nachos ',9,10,15),(192,7,15,15,0,'<p>Topped with melted cheese, bacon &amp; jalapeños.</p>',9,10,16),(193,7,15,15,0,'9',9,10,17),(194,7,13,16,0,'Drinks & Food at the Bar at Top Mast Marina',NULL,NULL,NULL),(195,7,14,16,0,'<p>Join us from 3-6 daily for happy hour.</p><p>Live music every Thursday &amp; Friday night.</p>',NULL,NULL,NULL),(196,7,15,16,0,NULL,NULL,NULL,NULL),(197,7,16,16,0,NULL,NULL,NULL,NULL),(198,7,15,16,0,'Cocktails',8,0,14),(199,7,15,16,0,'Rum Punch',9,1,15),(200,7,15,16,0,'<p>Light + Dark Rums, Tropical Juices, a splash of Grenadine + Lime Juice.</p>',9,1,16),(201,7,15,16,0,'11',9,1,17),(202,7,15,16,0,'Lemonade',9,2,15),(203,7,15,16,0,'<p>Raspberry Vodka, Apple Cider, topped with lemonade.</p>',9,2,16),(204,7,15,16,0,'12',9,2,17),(205,7,15,16,0,'Whip It Good ',9,3,15),(206,7,15,16,0,'<p>Whip Cream Vodka, Orange Vodka, OJ + whipped cream all shaken, chilled, topped with a splash of grenadine.</p>',9,3,16),(207,7,15,16,0,'14',9,3,17),(208,7,15,16,0,'The Lazy Peach ',9,4,15),(209,7,15,16,0,'<p>Peach Vodka, Melon Liquor, splash of sour + pineapple.</p>',9,4,16),(210,7,15,16,0,'12',9,4,17),(211,7,15,16,0,'Green Monster',9,5,15),(212,7,15,16,0,'<p>Coconut Rum, Apple Liquor, Melon Liquor, Razz Liquor + pineapple.</p>',9,5,16),(213,7,15,16,0,'14',9,5,17),(214,7,15,16,0,'Lazy Berry Haze',9,6,15),(215,7,15,16,0,'<p>Blueberry Vodka, fresh mint, sour mix, soda + Sprite.</p>',9,6,16),(216,7,15,16,0,'12',9,6,17),(217,7,15,16,0,'Snacks',8,11,14),(218,7,15,16,0,'Smilin’ Bob’s Fish Dip',9,12,15),(219,7,15,16,0,'<p>Served with toasted Cuban bread.</p>',9,12,16),(220,7,15,16,0,'8',9,12,17),(221,7,15,16,0,'Tacos',9,13,15),(222,7,15,16,0,'<p>Choice of chicken or Beef. Served with spicy Ranch, salsa &amp; sour cream.</p>',9,13,16),(223,7,15,16,0,'7',9,13,17),(224,7,15,16,0,'Tatter Tot Nachos ',9,14,15),(225,7,15,16,0,'<p>Topped with melted cheese, bacon &amp; jalapeños.</p>',9,14,16),(226,7,15,16,0,'9',9,14,17),(227,7,15,16,0,'Beer',8,7,14),(228,7,15,16,0,'On Tap',9,8,15),(229,7,15,16,0,'<p>Duke brown, Killer Whale, Session IPA</p>',9,8,16),(230,7,15,16,0,'6',9,8,17),(231,7,15,16,0,'Bottle',9,9,15),(232,7,15,16,0,'<p>Corona, Mich Ultra, Bud Light, Budweiser</p>',9,9,16),(233,7,15,16,0,'4',9,9,17),(234,8,17,17,0,NULL,NULL,NULL,NULL),(235,8,18,17,0,'{\"date\":\"Mon, Jan 18, 2016\",\"time\":\"7:00 PM\",\"datetime\":\"Mon, Jan 18, 2016 7:00 PM\"}',NULL,NULL,NULL),(236,8,19,17,0,'<p>Come see Blueberry live at Top Mast Marina. Awesome vibes you don\'t want to miss. Half off tap beers during performance!</p>',NULL,NULL,NULL),(237,8,17,18,0,NULL,NULL,NULL,NULL),(238,8,18,18,0,'{\"date\":\"Mon, Jan 18, 2016\",\"time\":\"7:00 PM\",\"datetime\":\"Mon, Jan 18, 2016 7:00 PM\"}',NULL,NULL,NULL),(239,8,19,18,0,'<p>Come see Blueberry live at Top Mast Marina. Awesome vibes you don\'t want to miss. Half off tap beers during performance!</p>',NULL,NULL,NULL),(240,8,20,18,0,NULL,NULL,NULL,NULL),(241,9,17,19,0,NULL,NULL,NULL,NULL),(242,9,18,19,0,'{\"date\":\"Sat, Jan 30, 2016\",\"time\":\"10:00 AM\",\"datetime\":\"Sat, Jan 30, 2016 10:00 AM\"}',NULL,NULL,NULL),(243,9,19,19,0,'<p>Join us for the 21st annual speed boat racing presented by Top Mast Marina. Theres something for everybody; music, food, babes, and fast boats!</p>',NULL,NULL,NULL),(244,9,20,19,0,NULL,NULL,NULL,NULL),(245,10,17,20,0,NULL,NULL,NULL,NULL),(246,10,18,20,0,'{\"date\":\"Sun, Feb 28, 2016\",\"time\":\"10:00 AM\",\"datetime\":\"Sun, Feb 28, 2016 10:00 AM\"}',NULL,NULL,NULL),(247,10,19,20,0,'<p>Join us for the 30th annual Top Mast Boat Show.&nbsp; Live music, food &amp; drink vendors, 20+ boat vendors, and a win a boat raffle!</p>',NULL,NULL,NULL),(248,10,20,20,0,NULL,NULL,NULL,NULL),(249,11,17,21,0,NULL,NULL,NULL,NULL),(250,11,18,21,0,'{\"date\":\"Thu, Mar 10, 2016\",\"time\":\"7:00 PM\",\"datetime\":\"Thu, Mar 10, 2016 7:00 PM\"}',NULL,NULL,NULL),(251,11,19,21,0,'<p>Pay tribute with the Dire Straights tribute band. Half off select cocktails during performance.</p>',NULL,NULL,NULL),(252,11,20,21,0,NULL,NULL,NULL,NULL),(256,1,5,22,0,NULL,NULL,NULL,NULL),(257,10,17,23,0,NULL,NULL,NULL,NULL),(258,10,18,23,0,'{\"date\":\"Sun, Feb 28, 2016\",\"time\":\"10:00 AM\",\"datetime\":\"Sun, Feb 28, 2016 10:00 AM\"}',NULL,NULL,NULL),(259,10,19,23,0,'<p>Join us for the 30th annual Top Mast Boat Show.&nbsp; Live music, food &amp; drink vendors, 20+ boat vendors, and a win a boat raffle!</p>',NULL,NULL,NULL),(260,10,20,23,0,NULL,NULL,NULL,NULL),(261,10,17,24,0,NULL,NULL,NULL,NULL),(262,10,18,24,0,'{\"date\":\"Sun, Feb 28, 2016\",\"time\":\"10:00 AM\",\"datetime\":\"Sun, Feb 28, 2016 10:00 AM\"}',NULL,NULL,NULL),(263,10,19,24,0,'<p>Join us for the 30th annual Top Mast Boat Show.&nbsp; Live music, food &amp; drink vendors, 20+ boat vendors, and a win a boat raffle!</p>',NULL,NULL,NULL),(264,10,20,24,0,NULL,NULL,NULL,NULL),(265,10,17,25,0,NULL,NULL,NULL,NULL),(266,10,18,25,0,'{\"date\":\"Sun, Feb 28, 2016\",\"time\":\"10:00 AM\",\"datetime\":\"Sun, Feb 28, 2016 10:00 AM\"}',NULL,NULL,NULL),(267,10,19,25,0,'<p>Join us for the 30th annual Top Mast Boat Show.&nbsp; Live music, food &amp; drink vendors, 20+ boat vendors, and a win a boat raffle!</p>',NULL,NULL,NULL),(268,10,20,25,0,NULL,NULL,NULL,NULL),(269,10,17,26,0,NULL,NULL,NULL,NULL),(270,10,18,26,0,'{\"date\":\"Sun, Feb 28, 2016\",\"time\":\"10:00 AM\",\"datetime\":\"Sun, Feb 28, 2016 10:00 AM\"}',NULL,NULL,NULL),(271,10,19,26,0,'<p>Join us for the 30th annual Top Mast Boat Show.&nbsp; Live music, food &amp; drink vendors, 20+ boat vendors, and a win a boat raffle!</p>',NULL,NULL,NULL),(272,10,20,26,0,NULL,NULL,NULL,NULL),(273,10,17,27,0,NULL,NULL,NULL,NULL),(274,10,18,27,0,'{\"date\":\"Sun, Feb 28, 2016\",\"time\":\"10:00 AM\",\"datetime\":\"Sun, Feb 28, 2016 10:00 AM\"}',NULL,NULL,NULL),(275,10,19,27,0,'<p>Join us for the 30th annual Top Mast Boat Show.&nbsp; Live music, food &amp; drink vendors, 20+ boat vendors, and a win a boat raffle!</p>',NULL,NULL,NULL),(276,10,20,27,0,NULL,NULL,NULL,NULL),(289,14,17,31,0,NULL,NULL,NULL,NULL),(290,14,18,31,0,'{\"date\":\"Sun, Dec 27, 2015\",\"time\":\"10:30 AM\",\"datetime\":\"Sun, Dec 27, 2015 10:30 AM\"}',NULL,NULL,NULL),(291,14,19,31,0,'<p>sdf</p>',NULL,NULL,NULL),(292,14,20,31,0,NULL,NULL,NULL,NULL),(293,14,17,32,0,NULL,NULL,NULL,NULL),(294,14,18,32,0,'{\"date\":\"Tue, Mar 15, 2016\",\"time\":\"10:30 AM\",\"datetime\":\"Tue, Mar 15, 2016 10:30 AM\"}',NULL,NULL,NULL),(295,14,19,32,0,'<p>Join captain Clark Gibells on a half day kayak tour. Refreshments and gear is provided, <strong>$60.</strong></p>',NULL,NULL,NULL),(296,14,20,32,0,NULL,NULL,NULL,NULL),(298,15,23,33,0,'<p><img style=\"float:right;\" src=\"/img/sail-boat-icon.png\" title=\"sail-boat-icon\" height=\"211\" width=\"211\" /></p><p>Top Mast Marina has been family owned and operated since 1969, since that time we have come a long way from the first 3 slip dock owned by Grandpa Steve. Today we offer over 120 boat slips and 100 boat storage units. Our bar was first build in 1994 due to internal popular demand and today it is one of the most happening spots in town. With live music twice a week, the friendliest staff and tastiest drinks imaginable, there really isn\'t a better spot to be. We are also proud to host quiet a few magnificent annual events year after year.</p>',NULL,NULL,NULL),(300,15,23,34,0,'<p><img style=\"float: right;\" src=\"/img/sail-boat-icon.png\" title=\"sail-boat-icon\" height=\"176\" width=\"176\" /></p><p>Top Mast Marina has been family owned and operated since 1969, since that time we have come a long way from the first 3 slip dock owned by Grandpa Steve. Today we offer over 120 boat slips and 100 boat storage units. Our bar was first build in 1994 due to internal popular demand and today it is one of the most happening spots in town. With live music twice a week, the friendliest staff and tastiest drinks imaginable, there really isn\'t a better spot to be. We are also proud to host quiet a few magnificent annual events year after year.</p>',NULL,NULL,NULL),(301,15,23,35,0,'<p><img style=\"float: right;\" title=\"sail-boat-icon\" height=\"176\" width=\"176\" src=\"/img/sail-boat-icon.png\" /></p><p>Top Mast Marina has been family owned and operated since 1969, since that time we have come a long way from the first 3 slip dock owned by Grandpa Steve. Today we offer over 120 boat slips and 100 boat storage units. Our bar was first build in 1994 due to internal popular demand and today it is one of the most happening spots in town. With live music twice a week, the friendliest staff and tastiest drinks imaginable, there really isn\'t a better spot to be. We are also proud to host quiet a few magnificent annual events year after year.</p>',NULL,NULL,NULL),(302,6,9,36,0,'Launch at Top Mast for a free world class expierence',NULL,NULL,NULL),(303,6,10,36,0,'<p>Come enjoy free launching and parking at the marina between the hours of 5am and 12pm. Our launch ramps are cleaned once a week and are as safe as they come.</p><p>Also enjoy the free use of our public fish cleaning table. You must bring your own cleaning knives though.</p>',NULL,NULL,NULL),(304,6,12,36,0,NULL,NULL,NULL,NULL),(305,7,13,39,0,'Drinks & Food at the Bar at Top Mast Marina',NULL,NULL,NULL),(306,7,14,39,0,'<p>Join us from 3-7&nbsp;daily for happy hour.</p><p>Live music every Thursday,Friday, and Saturday night.</p>',NULL,NULL,NULL),(307,7,15,39,0,NULL,NULL,NULL,NULL),(308,7,15,39,0,'Cocktails',8,0,14),(309,7,15,39,0,'Rum Punch',9,1,15),(310,7,15,39,0,'<p>Light + Dark Rums, Tropical Juices, a splash of Grenadine + Lime Juice.</p>',9,1,16),(311,7,15,39,0,'11',9,1,17),(312,7,15,39,0,'Lemonade',9,2,15),(313,7,15,39,0,'<p>Raspberry Vodka, Apple Cider, topped with lemonade.</p>',9,2,16),(314,7,15,39,0,'12',9,2,17),(315,7,15,39,0,'Whip It Good ',9,3,15),(316,7,15,39,0,'<p>Whip Cream Vodka, Orange Vodka, OJ + whipped cream all shaken, chilled, topped with a splash of grenadine.</p>',9,3,16),(317,7,15,39,0,'14',9,3,17),(318,7,15,39,0,'The Lazy Peach ',9,4,15),(319,7,15,39,0,'<p>Peach Vodka, Melon Liquor, splash of sour + pineapple.</p>',9,4,16),(320,7,15,39,0,'12',9,4,17),(321,7,15,39,0,'Green Monster',9,5,15),(322,7,15,39,0,'<p>Coconut Rum, Apple Liquor, Melon Liquor, Razz Liquor + pineapple.</p>',9,5,16),(323,7,15,39,0,'14',9,5,17),(324,7,15,39,0,'Lazy Berry Haze',9,6,15),(325,7,15,39,0,'<p>Blueberry Vodka, fresh mint, sour mix, soda + Sprite.</p>',9,6,16),(326,7,15,39,0,'12',9,6,17),(327,7,15,39,0,'Snacks',8,11,14),(328,7,15,39,0,'Smilin’ Bob’s Fish Dip',9,12,15),(329,7,15,39,0,'<p>Served with toasted Cuban bread.</p>',9,12,16),(330,7,15,39,0,'8',9,12,17),(331,7,15,39,0,'Tacos',9,13,15),(332,7,15,39,0,'<p>Choice of chicken or Beef. Served with spicy Ranch, salsa &amp; sour cream.</p>',9,13,16),(333,7,15,39,0,'7',9,13,17),(334,7,15,39,0,'Tatter Tot Nachos ',9,14,15),(335,7,15,39,0,'<p>Topped with melted cheese, bacon &amp; jalapeños.</p>',9,14,16),(336,7,15,39,0,'9',9,14,17),(337,7,16,39,0,NULL,NULL,NULL,NULL),(338,7,15,39,0,'Beer',8,7,14),(339,7,15,39,0,'On Tap',9,8,15),(340,7,15,39,0,'<p>Duke brown, Killer Whale, Session IPA</p>',9,8,16),(341,7,15,39,0,'6',9,8,17),(342,7,15,39,0,'Bottle',9,9,15),(343,7,15,39,0,'<p>Corona, Mich Ultra, Bud Light, Budweiser</p>',9,9,16),(344,7,15,39,0,'4',9,9,17),(348,1,25,40,0,NULL,NULL,NULL,NULL),(349,1,5,40,0,NULL,NULL,NULL,NULL),(350,1,25,40,0,'A marina expierence as grand as the seas you sail',14,0,36),(351,1,25,40,0,'center',14,0,37),(352,1,25,40,0,'https://www.youtube.com/watch?v=HftpDXh32mw',16,1,40),(353,1,25,40,0,'#FFF',12,2,28),(354,1,25,40,0,'<p>Top Mast Marina is the best place to transition from your land-to-sea adventure. Whether you have your boat in one of our slips, storage, or just want to launch, we are sure you will love your experience.</p>',12,2,29),(355,1,25,40,0,'#000000',12,2,33),(356,1,25,40,0,'',12,2,30),(357,1,25,40,0,'right',12,2,31),(358,1,25,40,0,'<p>We have been using Top Mast for 20 years, there is no one better!</p>',15,3,38),(359,1,25,40,0,'#e7bfff',15,3,39),(360,3,11,4,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `enact_entry_field_version` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_entry_version`
--

DROP TABLE IF EXISTS `enact_entry_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_entry_version` (
  `id` int(11) NOT NULL,
  `version_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_type_id` int(11) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `version_number` int(11) NOT NULL,
  `version_created_on` datetime NOT NULL,
  `version_created_by` int(11) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`version_id`,`id`),
  KEY `ev_entry_id_idx` (`id`),
  KEY `ev_section_type_id_idx` (`section_type_id`),
  CONSTRAINT `ev_entry_id` FOREIGN KEY (`id`) REFERENCES `enact_entry` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `ev_section_type_id` FOREIGN KEY (`section_type_id`) REFERENCES `enact_section_type` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_entry_version`
--

LOCK TABLES `enact_entry_version` WRITE;
/*!40000 ALTER TABLE `enact_entry_version` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_entry_version` VALUES (1,1,3,'Top Mast Marina - Best on the water since 1968',1,'2015-12-06 14:11:34',1,NULL),(1,2,3,'Top Mast Marina - Best on the water since 1968',2,'2015-12-06 14:34:12',1,NULL),(1,3,3,'Top Mast Marina - Best on the water since 1968',3,'2015-12-06 14:47:56',1,NULL),(3,4,5,'Boat Slips',0,'2016-01-05 10:43:12',1,NULL),(3,5,5,'Boat Slips',1,'2015-12-06 15:15:49',1,NULL),(4,6,5,'Boat Storage',0,'2015-12-06 15:40:28',1,NULL),(4,7,5,'Boat Storage',1,'2015-12-06 15:44:34',1,NULL),(5,8,6,'Boating Services',0,'2015-12-06 16:39:49',1,NULL),(4,9,5,'Boat Storage',2,'2015-12-06 16:40:38',1,NULL),(3,10,5,'Boat Slips',2,'2015-12-06 17:09:01',1,NULL),(5,11,6,'Boating Services',1,'2015-12-06 17:16:58',1,NULL),(6,12,6,'Boat Launching',0,'2015-12-06 18:45:10',1,NULL),(6,13,6,'Boat Launching',1,'2015-12-06 18:51:10',1,NULL),(7,14,7,'The Bar at Top Mast Marina',1,'2015-12-06 19:36:01',1,NULL),(7,15,7,'The Bar at Top Mast Marina',2,'2015-12-06 19:43:05',1,NULL),(7,16,7,'The Bar at Top Mast Marina',3,'2015-12-07 10:07:31',1,NULL),(8,17,8,'Blueberry Live on 1/18/2016',0,'2015-12-07 10:48:21',1,NULL),(8,18,8,'Blueberry Live on 1/18/2016',1,'2015-12-07 11:39:31',1,NULL),(9,19,8,'21st Annual Speed Boat Races',0,'2015-12-07 11:45:15',1,NULL),(10,20,8,'30th Annual Boat Show',0,'2015-12-07 13:55:10',1,NULL),(11,21,8,'Dire Straights Tribute Band on 3/10/16',0,'2015-12-07 14:49:00',1,NULL),(1,22,3,'Top Mast Marina - Best on the water since 1968',4,'2015-12-07 15:20:10',1,NULL),(10,23,8,'30th Annual Boat Show',1,'2015-12-07 16:02:55',1,NULL),(10,24,8,'30th Annual Boat Show',2,'2015-12-07 16:19:00',1,NULL),(10,25,8,'30th Annual Boat Show',3,'2015-12-07 16:19:25',1,NULL),(10,26,8,'30th Annual Boat Show',4,'2015-12-07 16:21:00',1,NULL),(10,27,8,'30th Annual Boat Show',5,'2015-12-07 16:22:24',1,NULL),(14,31,8,'Kayak Tours',0,'2015-12-07 18:42:50',1,NULL),(14,32,8,'Kayak Tour on 3/15/16',1,'2015-12-07 18:46:09',1,NULL),(15,33,10,'About Us',1,'2015-12-08 11:56:21',1,NULL),(15,34,10,'About Us',2,'2015-12-08 11:57:51',1,NULL),(15,35,10,'About Top Mast Marina',3,'2015-12-08 11:58:50',1,NULL),(6,36,6,'Boat Launching',2,'2015-12-14 17:04:16',1,NULL),(7,39,7,'The Bar at Top Mast Marina',0,'2015-12-15 16:09:47',1,NULL),(1,40,3,'Top Mast Marina - Best on the water since 1968',5,'2015-12-16 09:31:03',1,NULL);
/*!40000 ALTER TABLE `enact_entry_version` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_field`
--

DROP TABLE IF EXISTS `enact_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(180) NOT NULL,
  `handle` varchar(190) NOT NULL,
  `type` varchar(20) NOT NULL,
  `field_group_id` int(11) NOT NULL,
  `instructions` varchar(1200) DEFAULT NULL,
  `options` varchar(1200) DEFAULT NULL,
  `matrix_order` tinyint(3) DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `f_field_group_id_idx` (`field_group_id`),
  CONSTRAINT `f_field_group_id` FOREIGN KEY (`field_group_id`) REFERENCES `enact_field_group` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_field`
--

LOCK TABLES `enact_field` WRITE;
/*!40000 ALTER TABLE `enact_field` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_field` VALUES (3,'Welcome Message','welcomeMessage','Plain Text',3,'','{}',NULL,1),(4,'Content','content','Rich Text',3,'','{\"config\":\"Default\"}',NULL,1),(5,'Background Image','backgroundImage','Assets',4,'','{\"limit\":\"1\",\"allowed_types\":[],\"show_section_id\":null}',NULL,0),(6,'Content','content','Rich Text',5,'','{\"config\":\"Default\"}',NULL,1),(7,'Title','boatingTitle','Plain Text',5,'','{}',NULL,1),(8,'Information','information','Matrix',5,'',NULL,NULL,0),(9,'Width','width','Number',6,'','{\"min_value\":0,\"max_value\":200,\"decimal_points\":0}',0,1),(10,'Price','price','Number',6,'The price of the unit','{\"min_value\":400,\"decimal_points\":0}',2,1),(11,'Length','length','Number',6,NULL,'{\"min_value\":0,\"max_value\":200,\"decimal_points\":0}',1,1),(12,'Available','available','Number',6,'The number of units available','{\"decimal_points\":0,\"min_value\":0,\"max_value\":30}',3,1),(13,'Menu Items','menuItems','Matrix',7,'The Top Mast Menu',NULL,NULL,1),(14,'Menu Category','menuCategory','Plain Text',8,NULL,'{}',0,0),(15,'Item Name','itemName','Plain Text',9,NULL,'{}',0,0),(16,'Description','description','Rich Text',9,NULL,'{\"config\":\"Minimal\"}',1,0),(17,'Price','price','Number',9,NULL,'{}',2,0),(18,'Event Image','eventImage','Assets',10,'','{\"limit\":\"1\",\"custom_label\":\"Event Image\",\"allowed_types\":[],\"show_section_id\":null}',NULL,1),(19,'Event Date','eventDate','Date Or Time',10,'The date & Time','{\"type\":\"date_and_time\",\"date_format\":\"ddd, mmm dd, yyyy\",\"time_format\":\"h:i A\"}',NULL,1),(20,'Event Type','eventType','Tags',10,'The type of event going on. If the type doesn\'t exist, create it.','{\"custom_label\":\"Event Type\",\"limit\":\"3\",\"show_section_id\":\"8\"}',NULL,1),(21,'Video','video','Video',3,'','{}',NULL,0),(23,'Site Menu','siteMenu','Matrix',1,'The Top Mast Marina main menu.','{\"limit\":\"4\"}',NULL,0),(24,'Title','itemTitle','Plain Text',11,'The menu items title.','{}',0,1),(25,'Link','itemLink','Entries',11,'The entry the menu item links to.','{\"limit\":\"2\"}',1,0),(26,'Text Link','textLink','Plain Text',11,'Optionallydefine a direct link','{}',2,0),(27,'Content Blocks','contentBlocks','Matrix',3,'','{\"limit\":\"7\"}',NULL,1),(28,'Background Color','backgroundColor','Dropdown',12,'The background color of the block','{\"options\":[{\"default\":true,\"name\":\"White\",\"value\":\"#FFF\",\"order\":0},{\"default\":false,\"name\":\"Black\",\"value\":\"#222\",\"order\":1},{\"default\":false,\"name\":\"Yellow\",\"value\":\"#E8DC4D\",\"order\":2},{\"default\":false,\"name\":\"Light Blue\",\"value\":\"#6FDBFF\",\"order\":3},{\"default\":false,\"name\":\"Blue\",\"value\":\"#23C8FF\",\"order\":4}]}',0,1),(29,'Content','content','Rich Text',12,'The content for the block','{\"config\":\"Default\"}',1,1),(30,'Images','images','Assets',12,NULL,'{\"limit\":\"3\",\"allowed_types\":[],\"show_section_id\":null}',3,0),(31,'Image Position','imagePosition','Radio Buttons',12,NULL,'{\"options\":[{\"default\":true,\"name\":\"Right\",\"value\":\"right\",\"order\":0},{\"default\":false,\"name\":\"Left\",\"value\":\"left\",\"order\":1}]}',4,0),(33,'Font Color','fontColor','Color',12,'The font color for the content.','{\"default_color\":\"#ffffff\"}',2,1),(34,'Background Color','backgroundColor','Color',13,NULL,'{}',0,1),(35,'Font Color','fontColor','Color',13,NULL,'{}',1,1),(36,'The heading','theHeading','Plain Text',14,NULL,'{}',0,0),(37,'Position','position','Dropdown',14,'How to position the heading.','{\"options\":[{\"default\":true,\"name\":\"Left\",\"value\":\"left\",\"order\":0},{\"default\":false,\"name\":\"Center\",\"value\":\"center\",\"order\":1}]}',1,0),(38,'The quote','theQuote','Rich Text',15,NULL,'{\"config\":\"Minimal\",\"clean\":true}',0,0),(40,'A Video','aVideo','Video',16,NULL,'{}',0,1),(41,'Contributor','users','Users',1,'Users who contributed to this article','{}',NULL,0);
/*!40000 ALTER TABLE `enact_field` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_field_group`
--

DROP TABLE IF EXISTS `enact_field_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_field_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(180) NOT NULL,
  `handle` varchar(190) NOT NULL,
  `matrix_field_id` int(11) DEFAULT NULL,
  `matrix_order` tinyint(3) DEFAULT NULL,
  `matrix_limit` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fg_matrix_field_id_idx` (`matrix_field_id`),
  CONSTRAINT `fg_matrix_field_id` FOREIGN KEY (`matrix_field_id`) REFERENCES `enact_field` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_field_group`
--

LOCK TABLES `enact_field_group` WRITE;
/*!40000 ALTER TABLE `enact_field_group` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_field_group` VALUES (1,'Global','global',NULL,NULL,NULL),(3,'Homepage','homepage',NULL,NULL,NULL),(4,'Background Image','backgroundImage',NULL,NULL,NULL),(5,'Boating','boating',NULL,NULL,NULL),(6,'Unit','unit',8,0,NULL),(7,'Bar','bar',NULL,NULL,NULL),(8,'Menu Category','menuCategory',13,0,NULL),(9,'Menu Item','menuItem',13,1,NULL),(10,'Events','events',NULL,NULL,NULL),(11,'Item','item',23,0,NULL),(12,'Content + Image','contentImage',27,0,NULL),(13,'Call To Action','callToAction',27,1,NULL),(14,'Heading','heading',27,2,5),(15,'Quote','quote',27,3,1),(16,'Video','video',27,4,1);
/*!40000 ALTER TABLE `enact_field_group` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_plugin`
--

DROP TABLE IF EXISTS `enact_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `version` varchar(15) NOT NULL,
  `installed_on` datetime NOT NULL,
  `dir` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_plugin`
--

LOCK TABLES `enact_plugin` WRITE;
/*!40000 ALTER TABLE `enact_plugin` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `enact_plugin` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_record_test`
--

DROP TABLE IF EXISTS `enact_record_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_record_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(280) NOT NULL,
  `description` text,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_record_test`
--

LOCK TABLES `enact_record_test` WRITE;
/*!40000 ALTER TABLE `enact_record_test` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `enact_record_test` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_redirect`
--

DROP TABLE IF EXISTS `enact_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_redirect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `old_url` varchar(800) NOT NULL,
  `new_url` varchar(800) NOT NULL,
  `created_on` datetime NOT NULL,
  `expires_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `r_entry_id_idx` (`entry_id`),
  CONSTRAINT `r_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `enact_entry` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_redirect`
--

LOCK TABLES `enact_redirect` WRITE;
/*!40000 ALTER TABLE `enact_redirect` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_redirect` VALUES (1,5,'/services/boating','/boating','2015-12-14 16:53:01',NULL),(2,3,'/services/boating/slips','/boating/slips','2015-12-14 16:53:01',NULL),(3,4,'/services/boating/storage','/boating/storage','2015-12-14 16:53:01',NULL),(4,6,'/services/boating/launching','/boating/launching','2015-12-14 16:53:01',NULL);
/*!40000 ALTER TABLE `enact_redirect` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_route`
--

DROP TABLE IF EXISTS `enact_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(480) NOT NULL,
  `action` varchar(120) NOT NULL,
  `options` varchar(600) DEFAULT NULL,
  `type` varchar(6) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_route`
--

LOCK TABLES `enact_route` WRITE;
/*!40000 ALTER TABLE `enact_route` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `enact_route` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_section`
--

DROP TABLE IF EXISTS `enact_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `name` varchar(180) NOT NULL,
  `handle` varchar(190) NOT NULL,
  `slug` varchar(400) NOT NULL,
  `nested_slug` varchar(400) DEFAULT NULL,
  `template` varchar(400) NOT NULL,
  `homepage` tinyint(1) DEFAULT NULL,
  `has_entries` tinyint(1) DEFAULT NULL,
  `auto_versioned` tinyint(1) DEFAULT NULL,
  `max_depth` tinyint(3) DEFAULT NULL,
  `redirect_policy` tinyint(1) DEFAULT NULL,
  `options` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_section`
--

LOCK TABLES `enact_section` WRITE;
/*!40000 ALTER TABLE `enact_section` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_section` VALUES (1,'Global','Global','global','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(2,'User','User','user','/user/{slug}',NULL,'user.html',NULL,1,NULL,NULL,NULL,NULL),(3,'Single','Homepage','homepage','/',NULL,'index.html',1,NULL,1,NULL,NULL,NULL),(4,'Asset','Images','images','/images/{slug}',NULL,'',NULL,0,0,NULL,NULL,NULL),(5,'Structure','Boating','boating','/{slug}','{parent.slug}/{slug}','boating.html',NULL,1,1,NULL,2,NULL),(6,'Single','Bar','bar','/bar',NULL,'bar.html',NULL,1,1,NULL,2,NULL),(7,'Channel','Events','events','/events/{slug}',NULL,'events.html',NULL,1,1,NULL,2,NULL),(8,'Tag','Event Types','eventTypes','/event-types/{slug}',NULL,'',NULL,0,0,NULL,NULL,NULL),(9,'Single','About Us','aboutUs','/about-us',NULL,'about-us.html',NULL,1,1,NULL,2,NULL),(10,'User','Client','client','/client/{slug}',NULL,'',NULL,0,0,NULL,NULL,'{\"admin\":\"false\",\"perms\":{\"create_entry\":\"true\",\"publish_entry\":\"true\",\"edit_entry\":\"true\",\"delete_entry\":\"true\",\"edit_other_users_entry\":\"true\",\"delete_other_users_entry\":\"true\",\"order_structure_entries\":\"true\",\"upload_assets\":\"true\",\"edit_assets\":\"true\",\"delete_assets\":\"true\",\"create_tags\":\"true\",\"edit_tags\":\"true\",\"delete_tags\":\"true\"}}'),(12,'Asset','Users','users','/users/{slug}',NULL,'',NULL,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `enact_section` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_section_type`
--

DROP TABLE IF EXISTS `enact_section_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_section_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `name` varchar(180) DEFAULT NULL,
  `handle` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stf_section_id_idx` (`section_id`),
  CONSTRAINT `stf_section_id` FOREIGN KEY (`section_id`) REFERENCES `enact_section` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_section_type`
--

LOCK TABLES `enact_section_type` WRITE;
/*!40000 ALTER TABLE `enact_section_type` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_section_type` VALUES (1,1,'Global','global'),(2,2,'User','user'),(3,3,'Homepage','homepage'),(4,4,'Images','images'),(5,5,'Slip or Storage','slipOrStorage'),(6,5,'Boating','launching'),(7,6,'Bar','bar'),(8,7,'Events','events'),(9,8,'Event Types','eventTypes'),(10,9,'About Us','aboutUs'),(11,10,'Client','client'),(13,12,'Users','users');
/*!40000 ALTER TABLE `enact_section_type` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_section_type_field`
--

DROP TABLE IF EXISTS `enact_section_type_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_section_type_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_type_field_group_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_order` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`,`section_type_field_group_id`,`field_id`),
  KEY `stf_section_type_field_group_id_idx` (`section_type_field_group_id`),
  KEY `stf_field_id_idx` (`field_id`),
  CONSTRAINT `stf_field_id` FOREIGN KEY (`field_id`) REFERENCES `enact_field` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `stf_section_type_field_group_id` FOREIGN KEY (`section_type_field_group_id`) REFERENCES `enact_section_type_field_group` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_section_type_field`
--

LOCK TABLES `enact_section_type_field` WRITE;
/*!40000 ALTER TABLE `enact_section_type_field` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_section_type_field` VALUES (5,3,5,0),(6,4,6,1),(7,4,7,0),(8,4,8,2),(9,5,7,0),(10,5,6,1),(11,6,5,0),(12,7,5,0),(13,8,7,0),(14,8,6,1),(15,8,13,2),(16,9,5,0),(17,10,18,0),(18,10,19,1),(19,10,6,2),(20,10,20,3),(23,11,4,0),(24,12,23,1),(25,2,27,0),(26,12,41,0);
/*!40000 ALTER TABLE `enact_section_type_field` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_section_type_field_group`
--

DROP TABLE IF EXISTS `enact_section_type_field_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_section_type_field_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_type_id` int(11) NOT NULL,
  `group_order` tinyint(3) DEFAULT NULL,
  `name` varchar(180) NOT NULL,
  PRIMARY KEY (`id`,`section_type_id`),
  KEY `stfg_section_type_id_idx` (`section_type_id`),
  CONSTRAINT `stfg_section_type_id` FOREIGN KEY (`section_type_id`) REFERENCES `enact_section_type` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_section_type_field_group`
--

LOCK TABLES `enact_section_type_field_group` WRITE;
/*!40000 ALTER TABLE `enact_section_type_field_group` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_section_type_field_group` VALUES (2,3,0,'Homepage'),(3,3,1,'Background Image'),(4,5,0,'Boating'),(5,6,0,'Boating'),(6,5,1,'Background Image'),(7,6,1,'Background Image'),(8,7,0,'Bar'),(9,7,1,'Background Image'),(10,8,0,'Events'),(11,10,0,'About Us'),(12,1,0,'Global');
/*!40000 ALTER TABLE `enact_section_type_field_group` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_tag`
--

DROP TABLE IF EXISTS `enact_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(180) NOT NULL,
  `handle` varchar(190) NOT NULL,
  `used_times` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`,`section_id`),
  KEY `t_section_id_idx` (`section_id`),
  CONSTRAINT `t_section_id` FOREIGN KEY (`section_id`) REFERENCES `enact_section` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_tag`
--

LOCK TABLES `enact_tag` WRITE;
/*!40000 ALTER TABLE `enact_tag` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_tag` VALUES (1,8,NULL,1,'Music','music',2,'2015-12-07 11:22:14'),(3,8,NULL,1,'Boating','boating',2,'2015-12-07 11:45:03');
/*!40000 ALTER TABLE `enact_tag` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_user`
--

DROP TABLE IF EXISTS `enact_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) DEFAULT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `display_name` varchar(190) NOT NULL,
  `name` varchar(180) NOT NULL,
  `handle` varchar(190) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(180) DEFAULT NULL,
  `password_salt` char(128) DEFAULT NULL,
  `created` datetime NOT NULL,
  `last_access` datetime DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `image_asset_id` int(11) DEFAULT NULL,
  `permissions` varchar(2000) DEFAULT NULL,
  `banned` datetime DEFAULT NULL,
  `verified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `u_section_id_idx` (`section_id`),
  CONSTRAINT `u_section_id` FOREIGN KEY (`section_id`) REFERENCES `enact_section` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_user`
--

LOCK TABLES `enact_user` WRITE;
/*!40000 ALTER TABLE `enact_user` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_user` VALUES (1,NULL,NULL,'Admin','admin','admin','brad@bradleyhamilton.com','db30f094be7b47d8ed322a5b94aa3ed6c7c20291eb59b6276cf525e5ef57adc7a0b3f7ae91883ce9c9b07f3a5081e087a6690fd131b3cba959efa36240101897','a1dbdfad5faac273bba49b1d251c40f857138ad5a5df0f504b0bd7cc644af48bb6c651549550cab5651074ab610fed320ddab0ca23900bc7dbb6e8623c21d4fc','2015-12-06 13:19:47','2016-07-29 13:18:48',1,NULL,NULL,NULL,'2015-12-16 17:32:10');
/*!40000 ALTER TABLE `enact_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_user_login_token`
--

DROP TABLE IF EXISTS `enact_user_login_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_user_login_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` blob NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `created_on` datetime NOT NULL,
  `last_accessed_on` datetime NOT NULL,
  `user_agent` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`id`,`user_id`),
  KEY `ult_user_id_idx` (`user_id`),
  CONSTRAINT `ult_user_id` FOREIGN KEY (`user_id`) REFERENCES `enact_user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_user_login_token`
--

LOCK TABLES `enact_user_login_token` WRITE;
/*!40000 ALTER TABLE `enact_user_login_token` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_user_login_token` VALUES (7,1,0xC9896C9AFA8B1411FA9DF26E7310024FAAEE554FC498933E8BF0F40255B759435C5883E2A2E11B078894A23560D2CE2F89B85CBDC3915266766C9AD38DFEFE05492E857E8BE7C2138DC8E48A0E282EEFED407D3AA1691E0992F925F583D0CDA47BEA35CB2521D120636D5FE2CF03A50FBC6F34934577CD300AB7B3582FD1215A,'::1','2015-12-14 16:51:49','2015-12-17 10:17:39','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/47.0.2526.73 Chrome/47.0.2526.73 Safari/537.36');
/*!40000 ALTER TABLE `enact_user_login_token` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_user_token`
--

DROP TABLE IF EXISTS `enact_user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_user_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `token` varchar(256) NOT NULL,
  `created_on` datetime NOT NULL,
  `expires_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ut_user_id_idx` (`user_id`),
  CONSTRAINT `ut_user_id` FOREIGN KEY (`user_id`) REFERENCES `enact_user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_user_token`
--

LOCK TABLES `enact_user_token` WRITE;
/*!40000 ALTER TABLE `enact_user_token` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_user_token` VALUES (1,1,'password','cf65a7c1c8818967b4dbc45169b1607fcee1f4c11494d6fc63eba35ce1932da03ba6098c19c5db2f65017b9abc8219afeeca508d34e891aa083f85a719e7718d','2016-01-27 15:35:42','2016-01-29 15:35:42');
/*!40000 ALTER TABLE `enact_user_token` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `enact_widget`
--

DROP TABLE IF EXISTS `enact_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enact_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(420) NOT NULL,
  `position` tinyint(2) NOT NULL,
  `settings` text,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`,`user_id`),
  KEY `w_user_id_idx` (`user_id`),
  CONSTRAINT `w_user_id` FOREIGN KEY (`user_id`) REFERENCES `enact_user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enact_widget`
--

LOCK TABLES `enact_widget` WRITE;
/*!40000 ALTER TABLE `enact_widget` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `enact_widget` VALUES (1,1,'Updates',1,NULL,'2016-03-05 14:24:44','2016-03-05 14:24:44'),(2,1,'Talk To Us',2,NULL,'2016-03-05 14:24:51','2016-03-05 14:24:51'),(3,1,'Recent Entries',0,'{\"section\":\"all\",\"limit\":5}','2016-03-22 15:08:08','2016-03-22 15:08:11');
/*!40000 ALTER TABLE `enact_widget` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Fri, 29 Jul 2016 14:51:29 -0400
