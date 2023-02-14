-- MySQL dump 10.13  Distrib 8.0.29, for macos12.4 (arm64)
--
-- Host: localhost    Database: where2park
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Current Database: `where2park`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `where2park` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `where2park`;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'where2park@gmail.com','$2a$10$CwTycUXWue0Thq9StjUM0u6qD0wQ2/DxLWifqwdVpqa2XpQ4lKuFm','2022-08-01 01:33:21','2022-08-01 01:33:21');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` float NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `picked_dates` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `car_space_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `car_space_id` (`car_space_id`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`car_space_id`) REFERENCES `car_spaces` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,40,'2022-08-24','2022-08-31','8/24/2022,8/25/2022,8/29/2022,8/30/2022,8/31/2022','paid','2022-08-01 01:33:21','2022-08-01 01:33:21',1,2,1),(2,85,'2022-09-01','2022-09-15','9/1/2022,9/5/2022,9/6/2022,9/7/2022,9/8/2022,9/12/2022,9/13/2022,9/14/2022,9/15/2022','cancelled','2022-08-01 01:33:21','2022-08-01 01:33:21',1,2,1),(3,955,'2022-09-19','2023-03-30','9/19/2022,9/20/2022,9/21/2022,9/22/2022,9/26/2022,9/27/2022,9/28/2022,9/29/2022,10/3/2022,10/4/2022,10/5/2022,10/6/2022,10/10/2022,10/11/2022,10/12/2022,10/13/2022,10/17/2022,10/18/2022,10/19/2022,10/20/2022,10/24/2022,10/25/2022,10/26/2022,10/27/2022,10/31/2022,11/1/2022,11/2/2022,11/3/2022,11/7/2022,11/8/2022,11/9/2022,11/10/2022,11/14/2022,11/15/2022,11/16/2022,11/17/2022,11/21/2022,11/22/2022,11/23/2022,11/24/2022,11/28/2022,11/29/2022,11/30/2022,12/1/2022,12/5/2022,12/6/2022,12/7/2022,12/8/2022,12/12/2022,12/13/2022,12/14/2022,12/15/2022,12/19/2022,12/20/2022,12/21/2022,12/22/2022,12/26/2022,12/27/2022,12/28/2022,12/29/2022,1/2/2023,1/3/2023,1/4/2023,1/5/2023,1/9/2023,1/10/2023,1/11/2023,1/12/2023,1/16/2023,1/17/2023,1/18/2023,1/19/2023,1/23/2023,1/24/2023,1/25/2023,1/26/2023,1/30/2023,1/31/2023,2/1/2023,2/2/2023,2/6/2023,2/7/2023,2/8/2023,2/9/2023,2/13/2023,2/14/2023,2/15/2023,2/16/2023,2/20/2023,2/21/2023,2/22/2023,2/23/2023,2/27/2023,2/28/2023,3/1/2023,3/2/2023,3/6/2023,3/7/2023,3/8/2023,3/9/2023,3/13/2023,3/14/2023,3/15/2023,3/16/2023,3/20/2023,3/21/2023,3/22/2023,3/23/2023,3/27/2023,3/28/2023,3/29/2023,3/30/2023','paid','2022-08-01 01:33:21','2022-08-01 01:33:21',1,2,1),(4,505,'2022-08-09','2022-09-27','8/9/2022,8/10/2022,8/12/2022,8/13/2022,8/14/2022,8/15/2022,8/16/2022,8/17/2022,8/19/2022,8/20/2022,8/21/2022,8/22/2022,8/23/2022,8/24/2022,8/26/2022,8/27/2022,8/28/2022,8/29/2022,8/30/2022,8/31/2022,9/1/2022,9/2/2022,9/3/2022,9/4/2022,9/5/2022,9/6/2022,9/7/2022,9/8/2022,9/9/2022,9/10/2022,9/11/2022,9/12/2022,9/13/2022,9/14/2022,9/15/2022,9/16/2022,9/17/2022,9/18/2022,9/19/2022,9/20/2022,9/21/2022,9/22/2022,9/23/2022,9/24/2022,9/25/2022,9/26/2022,9/27/2022','paid','2022-08-01 01:33:21','2022-08-01 01:33:21',1,2,2),(5,600,'2022-10-20','2022-12-13','10/20/2022,10/21/2022,10/22/2022,10/23/2022,10/24/2022,10/25/2022,10/26/2022,10/27/2022,10/28/2022,10/29/2022,10/30/2022,10/31/2022,11/1/2022,11/2/2022,11/3/2022,11/4/2022,11/5/2022,11/6/2022,11/7/2022,11/8/2022,11/9/2022,11/10/2022,11/11/2022,11/12/2022,11/13/2022,11/14/2022,11/15/2022,11/16/2022,11/17/2022,11/18/2022,11/19/2022,11/20/2022,11/21/2022,11/22/2022,11/23/2022,11/24/2022,11/25/2022,11/26/2022,11/27/2022,11/28/2022,11/29/2022,11/30/2022,12/1/2022,12/2/2022,12/3/2022,12/4/2022,12/5/2022,12/6/2022,12/7/2022,12/8/2022,12/9/2022,12/10/2022,12/11/2022,12/12/2022,12/13/2022','paid','2022-08-01 01:33:21','2022-08-01 01:33:21',1,3,2),(6,1890,'2022-09-22','2022-11-30','9/22/2022,9/23/2022,9/24/2022,9/25/2022,9/26/2022,9/27/2022,9/28/2022,9/29/2022,9/30/2022,10/1/2022,10/2/2022,10/3/2022,10/4/2022,10/5/2022,10/6/2022,10/7/2022,10/8/2022,10/9/2022,10/10/2022,10/11/2022,10/12/2022,10/13/2022,10/14/2022,10/15/2022,10/16/2022,10/17/2022,10/18/2022,10/19/2022,10/20/2022,10/21/2022,10/22/2022,10/23/2022,10/24/2022,10/25/2022,10/26/2022,10/27/2022,10/28/2022,10/29/2022,10/30/2022,10/31/2022,11/1/2022,11/2/2022,11/3/2022,11/4/2022,11/5/2022,11/6/2022,11/7/2022,11/8/2022,11/9/2022,11/10/2022,11/11/2022,11/12/2022,11/13/2022,11/14/2022,11/15/2022,11/16/2022,11/17/2022,11/18/2022,11/19/2022,11/20/2022,11/21/2022,11/22/2022,11/23/2022,11/24/2022,11/25/2022,11/26/2022,11/27/2022,11/28/2022,11/29/2022,11/30/2022','paid','2022-08-01 01:33:21','2022-08-01 01:33:21',1,2,3),(7,1485,'2023-03-29','2023-05-22','3/29/2023,3/30/2023,3/31/2023,4/1/2023,4/2/2023,4/3/2023,4/4/2023,4/5/2023,4/6/2023,4/7/2023,4/8/2023,4/9/2023,4/10/2023,4/11/2023,4/12/2023,4/13/2023,4/14/2023,4/15/2023,4/16/2023,4/17/2023,4/18/2023,4/19/2023,4/20/2023,4/21/2023,4/22/2023,4/23/2023,4/24/2023,4/25/2023,4/26/2023,4/27/2023,4/28/2023,4/29/2023,4/30/2023,5/1/2023,5/2/2023,5/3/2023,5/4/2023,5/5/2023,5/6/2023,5/7/2023,5/8/2023,5/9/2023,5/10/2023,5/11/2023,5/12/2023,5/13/2023,5/14/2023,5/15/2023,5/16/2023,5/17/2023,5/18/2023,5/19/2023,5/20/2023,5/21/2023,5/22/2023','paid','2022-08-01 01:33:21','2022-08-01 01:33:21',1,2,3),(8,697,'2022-08-17','2022-10-26','8/17/2022,8/18/2022,8/21/2022,8/22/2022,8/24/2022,8/25/2022,8/28/2022,8/29/2022,8/31/2022,9/1/2022,9/4/2022,9/5/2022,9/7/2022,9/8/2022,9/11/2022,9/12/2022,9/14/2022,9/15/2022,9/18/2022,9/19/2022,9/21/2022,9/22/2022,9/25/2022,9/26/2022,9/28/2022,9/29/2022,10/2/2022,10/3/2022,10/5/2022,10/6/2022,10/9/2022,10/10/2022,10/12/2022,10/13/2022,10/16/2022,10/17/2022,10/19/2022,10/20/2022,10/23/2022,10/24/2022,10/26/2022','paid','2022-08-01 01:33:21','2022-08-01 01:33:21',1,2,4),(9,102,'2022-08-01','2022-08-10','8/1/2022,8/3/2022,8/4/2022,8/7/2022,8/8/2022,8/10/2022','cancelled','2022-08-01 01:33:21','2022-08-01 01:33:21',1,2,4),(10,300,'2022-08-31','2022-09-29','9/1/2022,9/2/2022,9/3/2022,9/4/2022,9/5/2022,9/6/2022,9/7/2022,9/8/2022,9/9/2022,9/10/2022,9/11/2022,9/12/2022,9/13/2022,9/14/2022,9/15/2022,9/16/2022,9/17/2022,9/18/2022,9/19/2022,9/20/2022,9/21/2022,9/22/2022,9/23/2022,9/24/2022,9/25/2022,9/26/2022,9/27/2022,9/28/2022,9/29/2022,9/30/2022','paid','2022-08-01 01:33:21','2022-08-01 01:33:21',3,2,11),(11,140,'2022-08-31','2022-09-14','9/1/2022,9/2/2022,9/3/2022,9/4/2022,9/5/2022,9/6/2022,9/7/2022,9/8/2022,9/9/2022,9/10/2022,9/11/2022,9/12/2022,9/13/2022,9/14/2022,9/15/2022','cancelled','2022-08-01 01:33:21','2022-08-01 01:33:21',3,2,14),(12,250,'2022-08-31','2022-09-29','9/1/2022,9/2/2022,9/3/2022,9/4/2022,9/5/2022,9/6/2022,9/7/2022,9/8/2022,9/9/2022,9/10/2022,9/11/2022,9/12/2022,9/13/2022,9/14/2022,9/15/2022,9/16/2022,9/17/2022,9/18/2022,9/19/2022,9/20/2022,9/21/2022,9/22/2022,9/23/2022,9/24/2022,9/25/2022,9/26/2022,9/27/2022,9/28/2022,9/29/2022,9/30/2022','paid','2022-08-01 01:33:21','2022-08-01 01:33:21',3,2,14),(13,260,'2022-07-31','2022-08-14','8/1/2022,8/2/2022,8/3/2022,8/4/2022,8/5/2022,8/6/2022,8/7/2022,8/8/2022,8/9/2022,8/10/2022,8/11/2022,8/12/2022,8/13/2022,8/14/2022,8/15/2022','cancelled','2022-08-01 01:33:21','2022-08-01 01:33:21',3,2,12),(14,140,'2022-07-31','2022-08-07','8/1/2022,8/2/2022,8/3/2022,8/4/2022,8/5/2022,8/6/2022,8/7/2022,8/8/2022','paid','2022-08-01 01:33:21','2022-08-01 01:33:21',3,2,15),(15,140,'2022-07-29','2022-08-05','7/30/2022,7/31/2022,8/1/2022,8/2/2022,8/3/2022,8/4/2022,8/5/2022,8/6/2022','paid','2022-08-01 01:33:21','2022-08-01 01:33:21',5,1,18),(16,230,'2022-07-31','2022-08-30','8/1/2022,8/2/2022,8/3/2022,8/4/2022,8/5/2022,8/8/2022,8/9/2022,8/10/2022,8/11/2022,8/12/2022,8/15/2022,8/16/2022,8/17/2022,8/18/2022,8/19/2022,8/22/2022,8/23/2022,8/24/2022,8/25/2022,8/26/2022,8/29/2022,8/30/2022,8/31/2022','paid','2022-08-01 01:33:21','2022-08-01 01:33:21',5,1,17),(17,220,'2022-08-31','2022-09-29','9/1/2022,9/2/2022,9/5/2022,9/6/2022,9/7/2022,9/8/2022,9/9/2022,9/12/2022,9/13/2022,9/14/2022,9/15/2022,9/16/2022,9/19/2022,9/20/2022,9/21/2022,9/22/2022,9/23/2022,9/26/2022,9/27/2022,9/28/2022,9/29/2022,9/30/2022','paid','2022-08-01 01:33:21','2022-08-01 01:33:21',5,2,17),(18,340,'2022-07-29','2022-08-16','7/30/2022,7/31/2022,8/1/2022,8/2/2022,8/3/2022,8/4/2022,8/5/2022,8/6/2022,8/7/2022,8/8/2022,8/9/2022,8/10/2022,8/11/2022,8/12/2022,8/13/2022,8/14/2022,8/15/2022,8/16/2022,8/17/2022','cancelled','2022-08-01 01:33:21','2022-08-01 01:33:21',5,1,20);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_spaces`
--

DROP TABLE IF EXISTS `car_spaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_spaces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `bond` float NOT NULL,
  `status` varchar(7) NOT NULL,
  `image` text,
  `size_length` float NOT NULL,
  `size_width` float NOT NULL,
  `max_height` float DEFAULT NULL,
  `max_allowed_vehicle` varchar(20) NOT NULL,
  `car_space_type` varchar(20) NOT NULL,
  `amenities` text NOT NULL,
  `access_type` varchar(20) NOT NULL,
  `price_per_day` float NOT NULL,
  `price_per_week` float NOT NULL,
  `price_per_month` float NOT NULL,
  `address_id` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `unavailable_type` int NOT NULL,
  `unavailable_dates` text,
  `unavailable_from_date` date DEFAULT NULL,
  `unavailable_to_date` date DEFAULT NULL,
  `available_type` int NOT NULL,
  `available_from_time` timestamp NULL DEFAULT NULL,
  `available_to_time` timestamp NULL DEFAULT NULL,
  `available_from_date` date DEFAULT NULL,
  `available_to_date` date DEFAULT NULL,
  `available_week_days` varchar(20) DEFAULT NULL,
  `description` text,
  `instructions` text,
  `provider_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `provider_id` (`provider_id`),
  CONSTRAINT `car_spaces_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_spaces`
--

LOCK TABLES `car_spaces` WRITE;
/*!40000 ALTER TABLE `car_spaces` DISABLE KEYS */;
INSERT INTO `car_spaces` VALUES (1,'Car Space 1 Long Long Long Long Title No Height Custom Availabilities',1000,'online','https://d2syaugtnopsqd.cloudfront.net/wp-content/uploads/sites/10/2020/10/27135236/How-wide-is-a-parking-space-scaled.jpg',5.4,4.3,NULL,'Ute','Undercover','CCTV,24/7 Access,Sheltered Parking','Key',10,65,250,'1','UNSW High Street',-33.9177,151.231,0,NULL,'2022-07-27','2022-08-23',1,'2022-06-27 23:40:00','2022-06-28 11:40:00','2022-01-31','2023-06-30','1,2,3,4',NULL,NULL,1,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(2,'Car Space 2 Short Title Always Available',300,'online','https://d2syaugtnopsqd.cloudfront.net/wp-content/uploads/sites/10/2020/10/27135236/How-wide-is-a-parking-space-scaled.jpg',3,2.3,3.1,'Commercial','Undercover','CCTV,Electric Charging','Key',15,80,300,'2','UNSW 2 High Street',-33.9277,151.221,1,'6/28/2022,6/29/2022,6/30/2022,8/4/2022,8/11/2022,8/18/2022,8/25/2022',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Always available except some dates','There should be some instructions, but is not',1,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(3,'Car Space 3 Tiny Car Space Always Available Except August and September',270,'online',NULL,2,1.5,4,'Hatchback','Outside','Lighting,Security Patrols','None',27,189,810,'524532332b33616f2f7a365863736845414a57564f413d3d','NSW FIRE BRIGADE CITY OF SYDNEY 211-217 CASTLEREAGH STREET SYDNEY NSW 2000',-33.8751,151.209,0,NULL,'2022-06-30','2022-09-21',0,NULL,NULL,NULL,NULL,NULL,'This outside space is large (not really)','It is outside, just go',1,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(4,'Car Space 4 Custom Available and Provider Pick Dates Unavailable',17000,'online',NULL,4,3,4,'SUV','Carport','Electric Charging,Car Wash','Passcode',17,119,510,'47784442447672556b654d534e39544a375a4c6275673d3d','SYDNEY HOSPITAL/EYE HOSPITAL 8 MACQUARIE STREET SYDNEY NSW 2000',-33.8682,151.213,1,'8/11/2022,8/12/2022,8/13/2022,8/14/2022,8/15/2022,',NULL,NULL,1,'2022-06-27 18:00:00','2022-06-28 07:40:00','2022-06-30','2023-01-30','0,1,3,4','Complex availabilities','Ask me for passcode',1,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(5,'Car Space 5 West Street Park',500,'online','https://bucket-api.commercialrealestate.com.au/v1/bucket/image/2017312987_1_1_211011_120303-w1000-h662',5,4,4,'SUV/4WD','Undercover','Arranged Transfers,Lighting','Pay and display',10,50,200,'7058645176426a356465745150414e305679775836673d3d','137 WEST STREET CROWS NEST NSW 2065',-33.8281,151.207,1,'07/28/2022,07/29/2022,07/30/2022,07/31/2022',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Rent for cheap','Please contact in advance.',2,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(6,'Car Space 6 East Hill Park',1000,'online','https://image.shutterstock.com/image-photo/empty-space-parking-260nw-332087375.jpg',7.5,5.5,4.9,'SUV/4WD','Driveway','24/7 Access,WC,Car Wash','Swipe card',5,30,100,'74494b564e7a7a34685763647a6b635a51524f7339773d3d','3 BASS AVENUE EAST HILLS NSW 2213',-33.9579,150.984,0,NULL,'2022-07-22','2022-08-31',0,NULL,NULL,NULL,NULL,NULL,'Rent for cheap','Please contact in advance.',2,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(7,'Car Space 7 9th ave',1000,'online','https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/vacant-car-parking-space-royalty-free-image-1591721505.jpg',10,10,10,'Commercial','Other','Car Wash','Boom gate',20,100,400,'374a5976574f364d435979616c69353948486a5a2f513d3d','NINTH AVENUE WOODVILLE NORTH SA 5012',-34.8622,138.54,1,'07/28/2022,07/29/2022,07/30/2022,07/31/2022',NULL,NULL,1,'2022-07-21 21:00:00','2022-07-23 07:00:00','2022-07-22','2022-08-01','1,2,3,4,5','N/A','N/A',2,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(8,'Car Space 8 South centre',100,'online','https://www.parkhound.com.au/protected/data/upload/space/xCar-Park-sam-sing-street-waterloo-new-south-wales,,-118327,,-375773_1653668844.5172.jpeg.pagespeed.ic.YECeOIFMrJ.jpg',4,3,4,'Hatch','Indoor lot','Electric Charging','Key',3,15,50,'2b706f49504e32784d5854527a3074533673555278513d3d','SOUTH PENRITH YOUTH CENTRE 138 MAXWELL STREET SOUTH PENRITH NSW 2750',-33.7734,150.695,0,NULL,'2022-07-27','2022-07-27',1,'2022-07-21 21:00:00','2022-07-23 07:00:00','2022-07-22','2022-07-30','1,2,3,4,5','N/A','N/A',2,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(9,'Car Space 9 Near Melbourne Central',50,'online','https://s1.ax1x.com/2022/07/31/vFMk8I.jpg',5,4,2.5,'SUV/4WD','Indoor lot','24/7 Access,CCTV,Lighting,Electric Charging','Ticket',15,90,300,'7338544c3341516b4c663453634c74415749726935773d3d','MELBOURNE CENTRAL 300 LONSDALE STREET MELBOURNE VIC 3000',-37.8117,144.963,1,'8/27/2022',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'This space is easy to be found.','No pets inside.',3,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(10,'Car Space 10 Near QV',15,'online','https://s1.ax1x.com/2022/07/31/vFMA2t.jpg',5,4,3,'SUV/4WD','Outside','CCTV,24/7 Access,Lighting','None',20,120,400,'4d316a494d692b4d486174353673356258556d477a773d3d','13-15 QV SQUARE MELBOURNE VIC 3000',-37.8103,144.966,1,'6/14/2022',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Easy to find from square','Children friendly and pets friendly.',3,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(11,'Car Space 11 Near State Library',50,'online','https://s1.ax1x.com/2022/07/31/vFMExP.jpg',4,4,3,'SUV/4WD','Outside','24/7 Access,Sheltered Parking,WC','None',5,30,120,'496f7758742b70347757764b6b516f6331484d6c59673d3d','STATE LIBRARY OF VICTORIA 304-328 SWANSTON STREET MELBOURNE VIC 3000',-37.81,144.964,0,NULL,'2022-07-29','2022-08-04',0,NULL,NULL,NULL,NULL,NULL,'Behind the State Library','No instructions',3,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(12,'Car Space 12 Queen Victoria Market',10,'online','https://s1.ax1x.com/2022/07/31/vFMZKf.jpg',5,4.5,3,'Wagon','Undercover','24/7 Access,WC','None',10,65,250,'346541574b32484979384b6163334a51536b636934773d3d','QUEEN VICTORIA MARKET 65-159 VICTORIA STREET MELBOURNE VIC 3000',-37.8063,144.958,1,'8/17/2022',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Near qvm behind.','Sometimes crowded',3,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(13,'Car Space 13 Unilodge Car Park',20,'online','https://s1.ax1x.com/2022/07/31/vFMer8.jpg',5.5,4,2,'SUV/4WD','Indoor lot','CCTV,24/7 Access,WC,Security Gates,Lighting,Electric Charging,Underground,Sheltered Parking','Swipe card',20,120,400,'795a7855694c56487343617a4939536d71704a6951773d3d','UNILODGE ON LONSDALE 35-41 LONSDALE STREET MELBOURNE VIC 3000',-37.8099,144.971,1,'8/26/2022',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Car park inside unilodge.','Apply access from unilodge',3,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(14,'Car Space 14 UNSW Car Space',200,'online','https://s1.ax1x.com/2022/07/31/vFgYVO.jpg',6,3,3,'SUV/4WD','Undercover','CCTV,24/7 Access','Swipe card',10,70,260,'4e2f54627270362f55687641316f3876695a535430513d3d','7 HIGH STREET KENSINGTON NSW 2033',-33.9156,151.231,1,NULL,NULL,NULL,1,'2022-07-19 22:00:00','2022-07-25 10:00:00','2022-07-24','2022-12-30','2,3,4,5,1','Contact the provider to get access','Near by unsw main library',5,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(15,'Car Space 15 Zetland east village car space',450,'online','https://s1.ax1x.com/2022/07/31/vFgtaD.jpg',4,2.5,NULL,'Hatch','Outside','24/7 Access','None',20,120,450,'4b6c68496f4c33585371364962616a3045326d6e48513d3d','UNIT 4 3 DEFRIES AVENUE ZETLAND NSW 2017',-33.9069,151.212,1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Please tell me the license plate after booking while could be locked by security guard','Nearby the east village shopping centre',5,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(16,'Car Space 16 Zetland car space',350,'online','https://s1.ax1x.com/2022/07/31/vFgGqK.jpg',4,3,3,'Hatch','Indoor lot','Car Wash,Sheltered Parking','Remote',15,100,350,'6e576f6878745266364d516c61626a36747550424e513d3d','1 LEYLAND GROVE ZETLAND NSW 2017',-33.9063,151.209,1,NULL,NULL,NULL,1,'2022-07-26 22:00:00','2022-07-29 10:00:00','2022-07-28','2022-11-08','0,6',NULL,NULL,5,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(17,'Car Space 17 Mascot Car space',450,'online','https://s1.ax1x.com/2022/07/31/vFgaPH.png',6,3,3,'SUV/4WD','Driveway','24/7 Access','None',20,120,450,'45744870567a354c716a6c4250437a553478416869513d3d','MASCOT INN 952 BOTANY ROAD MASCOT NSW 2020',-33.9308,151.194,1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Near the airport',NULL,5,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(18,'Car Space 18 Royal Exhibition Building',15,'online','https://s1.ax1x.com/2022/07/31/vkEYgU.jpg',5,4,3,'SUV/4WD','Outside','24/7 Access,CCTV,Underground','Ticket',15,90,325,'3651685639336c4d55564754564c79684c2b4c3341773d3d','ROYAL EXHIBITION BUILDING 9 NICHOLSON STREET CARLTON VIC 3053',-37.8047,144.972,1,'7/30/2022',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Near exhibition building. Easy to find.','Crowded on holiday',4,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(19,'Car Space 19 inside Unimelb',20,'offline','https://s1.ax1x.com/2022/07/31/vkEx5q.jpg',5,4,3,'Sedan','Outside','CCTV,24/7 Access,Sheltered Parking,Security Patrols,Lighting','Passcode',10,50,200,'642b56667a72716751643037452f7a594a63417651773d3d','UNIVERSITY OF MELBOURNE 156-290 GRATTAN STREET PARKVILLE VIC 3052',-37.7961,144.962,1,'8/30/2022',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Inside university library','No instructions',4,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(20,'Car Space 20 Unimelb Law Building',40,'offline','https://s1.ax1x.com/2022/07/31/vkVsds.jpg',5,5,3,'SUV/4WD','Outside','Disabled Access,Sheltered Parking,WC,Security Gates','None',15,75,250,'6b4e4c4f706f4465454b6e6a39744e326b59694251673d3d','185 PELHAM STREET CARLTON VIC 3053',-37.8022,144.96,1,NULL,'2022-08-14','2022-08-21',0,NULL,NULL,NULL,NULL,NULL,'Behind the law building','One way out',4,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(21,'Car Space 21 Star Observation Wheel',15,'online','https://s1.ax1x.com/2022/07/31/vkZkSf.jpg',6,4,3,'Hatch','Carport','24/7 Access,Security Gates,Disabled Access','Ticket',15,75,300,'6963776c45334f6a656d72374b39692b327473396c673d3d','101 WATERFRONT WAY DOCKLANDS VIC 3008',-37.8117,144.938,0,NULL,'2022-07-30','2022-11-30',0,NULL,NULL,NULL,NULL,NULL,'Good place to travel','Ask for access',4,'2022-08-01 01:33:21','2022-08-01 01:33:21'),(22,'Car Space 22 FlagStaff Garden',25,'online','https://s1.ax1x.com/2022/07/31/vkZVOg.jpg',6,5,3,'Wagon','Carport','CCTV,Disabled Access,Lighting,Electric Charging','None',25,150,600,'3467743264396f326e4a4f6569747754574f746a38673d3d','ROOM 309 205 WILLIAM STREET MELBOURNE VIC 3000',37.8142,144.957,1,'12/30/2022',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'East gate of garden','No instructions',4,'2022-08-01 01:33:21','2022-08-01 01:33:21');
/*!40000 ALTER TABLE `car_spaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rating` float NOT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `car_space_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `car_space_id` (`car_space_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`car_space_id`) REFERENCES `car_spaces` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,4.5,'great','2022-08-01 01:33:21','2022-08-01 01:33:21',2,1),(2,1,'poor','2022-08-01 01:33:21','2022-08-01 01:33:21',2,1),(3,3,'soso','2022-08-01 01:33:21','2022-08-01 01:33:21',2,2),(4,5,'wonderful','2022-08-01 01:33:21','2022-08-01 01:33:21',2,2),(5,2,'could be improved','2022-08-01 01:33:21','2022-08-01 01:33:21',2,3),(6,5,'wonderful','2022-08-01 01:33:21','2022-08-01 01:33:21',2,3),(7,5,'great car space','2022-08-01 01:33:21','2022-08-01 01:33:21',2,4),(8,4,'friendly provider','2022-08-01 01:33:21','2022-08-01 01:33:21',2,4),(9,5,'Great car space.','2022-08-01 01:33:21','2022-08-01 01:33:21',4,11),(10,3,'A nice place despite environment','2022-08-01 01:33:21','2022-08-01 01:33:21',4,14),(11,5,'Near the university','2022-08-01 01:33:21','2022-08-01 01:33:21',2,15),(12,3,'Too many cars at night','2022-08-01 01:33:21','2022-08-01 01:33:21',2,15),(13,5,'Perfect','2022-08-01 01:33:21','2022-08-01 01:33:21',2,13),(14,5,'Near schools','2022-08-01 01:33:21','2022-08-01 01:33:21',4,10),(15,5,'Difficult to find','2022-08-01 01:33:21','2022-08-01 01:33:21',4,10),(16,5,'Good scenario','2022-08-01 01:33:21','2022-08-01 01:33:21',1,6),(17,2,'One way out without instruction','2022-08-01 01:33:21','2022-08-01 01:33:21',1,16),(18,4,'near the river','2022-08-01 01:33:21','2022-08-01 01:33:21',1,9);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `bank_account_name` varchar(64) DEFAULT NULL,
  `bank_account_number` varchar(32) DEFAULT NULL,
  `bank_account_bsb` varchar(32) DEFAULT NULL,
  `nearby_parking` tinyint(1) DEFAULT NULL,
  `rental_history` tinyint(1) DEFAULT NULL,
  `competitive` tinyint(1) DEFAULT NULL,
  `discount_rate` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `liked_car_spaces` text,
  `disliked_car_spaces` text,
  `first_timer` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'qinjian','zhengqinjian96@gmail.com','$2a$10$CwTycUXWue0Thq9StjUM0u6qD0wQ2/DxLWifqwdVpqa2XpQ4lKuFm',NULL,NULL,NULL,0,1,1,20,'2022-08-01 01:33:21','2022-08-01 01:33:21','1,2,3,4,5','6,7,8,9',0),(2,'zeyang','where2park2@gmail.com','$2a$10$CwTycUXWue0Thq9StjUM0u6qD0wQ2/DxLWifqwdVpqa2XpQ4lKuFm',NULL,NULL,NULL,0,1,1,NULL,'2022-08-01 01:33:21','2022-08-01 01:33:21','1,2,3,4',NULL,0),(3,'jie','where2park3@gmail.com','$2a$10$CwTycUXWue0Thq9StjUM0u6qD0wQ2/DxLWifqwdVpqa2XpQ4lKuFm',NULL,NULL,NULL,0,0,0,NULL,'2022-08-01 01:33:21','2022-08-01 01:33:21',NULL,NULL,1),(4,'fang','where2park4@gmail.com','$2a$10$CwTycUXWue0Thq9StjUM0u6qD0wQ2/DxLWifqwdVpqa2XpQ4lKuFm',NULL,NULL,NULL,0,0,0,NULL,'2022-08-01 01:33:21','2022-08-01 01:33:21',NULL,NULL,1),(5,'Huichuan Xu','freeelements20@gmail.com','$2a$10$CwTycUXWue0Thq9StjUM0u6qD0wQ2/DxLWifqwdVpqa2XpQ4lKuFm',NULL,NULL,NULL,0,0,0,NULL,'2022-08-01 01:33:21','2022-08-01 01:33:21',NULL,NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plate` varchar(20) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `customer_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `min_price` float NOT NULL,
  `max_price` float NOT NULL,
  `price_type` varchar(8) NOT NULL,
  `address_id` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `distance` int NOT NULL,
  `car_space_types` varchar(255) NOT NULL,
  `max_allowed_vehicle` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,10,100,'week','6750686c6e4477366d564e5441467a726a38756956413d3d','UNIT 3005 28 TIMOTHY LANE MELBOURNE VIC 3000',-37.8122,144.961,200,'Undercover,Indoor lot','Hatch','2022-08-01 01:33:21','2022-08-01 01:33:21',2),(2,100,1000,'month','6b7971695645685a4443417a656763685851457731513d3d','200A GEORGE STREET SYDNEY NSW 2000',-33.8626,151.208,100,'Undercover,Lock up garage','Bike','2022-08-01 01:33:21','2022-08-01 01:33:21',2);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-01 11:37:32
