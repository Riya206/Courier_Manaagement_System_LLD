-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: courier_db
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `branch_id` int NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'Main Street Branch','Los Angeles','California'),(2,'Downtown Branch','San Diego','California'),(3,'North Zone Branch','Dallas','Texas'),(4,'Airport Branch','New York','New York'),(5,'Central Branch','San Jose','California'),(6,'West End Branch','Houston','Texas'),(7,'Bay Area Branch','San Francisco','California'),(8,'Hill Top Branch','Austin','Texas'),(9,'River Side Branch','Sacramento','California'),(10,'Metro Branch','Chicago','Illinois'),(11,'City Center','Boston','Massachusetts'),(12,'East Branch','Miami','Florida'),(13,'South Branch','Orlando','Florida'),(14,'North Hub Branch','Seattle','Washington'),(15,'Lake View Branch','Denver','Colorado'),(16,'Market Branch','Phoenix','Arizona'),(17,'Tech Park Branch','San Jose','California'),(18,'Harbor Branch','San Diego','California'),(19,'Industrial Branch','Detroit','Michigan'),(20,'Capital Branch','Washington','DC');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consignment`
--

DROP TABLE IF EXISTS `consignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consignment` (
  `consignment_no` int NOT NULL,
  `sender_name` varchar(100) DEFAULT NULL,
  `destination_city` varchar(50) DEFAULT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `service_mode` varchar(20) DEFAULT NULL,
  `transport_mode` varchar(20) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `expected_delivery` date DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `origin_branch_id` int DEFAULT NULL,
  `manifest_id` int DEFAULT NULL,
  PRIMARY KEY (`consignment_no`),
  KEY `origin_branch_id` (`origin_branch_id`),
  KEY `manifest_id` (`manifest_id`),
  KEY `idx_booking_date` (`booking_date`),
  KEY `idx_destination_city` (`destination_city`),
  CONSTRAINT `consignment_ibfk_1` FOREIGN KEY (`origin_branch_id`) REFERENCES `branch` (`branch_id`),
  CONSTRAINT `consignment_ibfk_2` FOREIGN KEY (`manifest_id`) REFERENCES `manifest` (`manifest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consignment`
--

LOCK TABLES `consignment` WRITE;
/*!40000 ALTER TABLE `consignment` DISABLE KEYS */;
INSERT INTO `consignment` VALUES (1001,'Ramesh Kumar','Dallas',12.50,387.50,'Express','Air Cargo','2026-02-16','2026-02-17','2026-02-18','Delivered',1,101),(1002,'Ramesh Kumar','Dallas',8.20,465.00,'Express','Air Cargo','2026-02-16','2026-02-17','2026-02-19','Delivered',1,101),(1003,'Ramesh Kumar','Dallas',22.00,341.00,'Express','Air Cargo','2026-02-16','2026-02-17','2026-02-18','Delivered',1,102),(1004,'Sita Devi','San Diego',10.00,82.00,'Standard','Surface','2026-02-16','2026-02-17','2026-02-17','Delivered',2,101),(1005,'Sita Devi','San Diego',19.00,156.00,'Standard','Surface','2026-02-16','2026-02-17',NULL,'Delivered',5,102),(1006,'Sita Devi','San Diego',21.00,173.00,'Standard','Surface','2026-02-16','2026-02-17',NULL,'Booked',5,101),(1007,'Arjun Patel','New York',5.00,77.00,'Express','Air Cargo','2026-02-16','2026-02-17','2026-02-17','Delivered',2,102),(1008,'Anita Joseph','Los Angeles',8.00,66.00,'Standard','Surface','2026-02-16','2026-02-17','2026-02-17','In Transit',3,103),(1009,'Mohammed Ali','San Jose',12.00,99.00,'Standard','Air Cargo','2026-02-16','2026-02-17',NULL,'Booked',4,101),(1010,'John Paul','Chicago',18.00,148.00,'Standard','Surface','2026-02-16','2026-02-17',NULL,'Booked',10,104),(1011,'Rahul','Miami',24.00,350.00,'Express','Air Cargo','2026-02-16','2026-02-17','2026-02-19','Delivered',12,105),(1012,'Kiran','Seattle',7.00,80.00,'Standard','Surface','2026-02-16','2026-02-17','2026-02-17','Delivered',14,106),(1013,'Meena','Boston',28.00,420.00,'Express','Air Cargo','2026-02-16','2026-02-17','2026-02-18','Delivered',11,107),(1014,'Ravi','Austin',15.00,140.00,'Standard','Surface','2026-02-16','2026-02-17','2026-02-17','Delivered',8,108),(1015,'Akash','Denver',26.00,390.00,'Express','Air Cargo','2026-02-16','2026-02-17','2026-02-18','Delivered',15,109),(1016,'Divya','Phoenix',11.00,120.00,'Standard','Air Cargo','2026-02-16','2026-02-17','2026-02-17','Delivered',16,110),(1017,'Naveen','Detroit',9.00,95.00,'Standard','Surface','2026-02-16','2026-02-17','2026-02-17','Delivered',19,111),(1018,'Suresh','Atlanta',23.00,330.00,'Express','Air Cargo','2026-02-16','2026-02-17','2026-02-19','Delivered',20,112),(1019,'Priya','Orlando',14.00,150.00,'Standard','Surface','2026-02-16','2026-02-17','2026-02-17','Delivered',13,113),(1020,'Karthik','Vegas',20.00,200.00,'Standard','Air Cargo','2026-02-16','2026-02-17','2026-02-17','Delivered',12,114),(1021,'NewCustomer','Mumbai',10.00,NULL,'Express','Air','2026-02-18','2026-02-21',NULL,'Booked',1,103),(2001,'Riya','Chennai',2.50,300.00,'Express','Road','2026-02-18','2026-02-21',NULL,'Booked',1,101),(2002,'NewCustomer','Mumbai',10.00,NULL,'Express','Air','2026-02-18','2026-02-21',NULL,'Booked',1,103),(3001,'Riya','Chennai',2.50,300.00,'Express','Road','2026-02-18','2026-02-21',NULL,'Booked',1,101);
/*!40000 ALTER TABLE `consignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `consignment_tracking_view`
--

DROP TABLE IF EXISTS `consignment_tracking_view`;
/*!50001 DROP VIEW IF EXISTS `consignment_tracking_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consignment_tracking_view` AS SELECT 
 1 AS `consignment_no`,
 1 AS `booking_date`,
 1 AS `origin`,
 1 AS `destination`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `hub`
--

DROP TABLE IF EXISTS `hub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hub` (
  `hub_id` int NOT NULL,
  `hub_name` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `is_central` char(1) DEFAULT NULL,
  PRIMARY KEY (`hub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hub`
--

LOCK TABLES `hub` WRITE;
/*!40000 ALTER TABLE `hub` DISABLE KEYS */;
INSERT INTO `hub` VALUES (10,'LA Central Hub','California','Y'),(11,'San Diego Hub','California','N'),(12,'Texas Hub','Texas','N'),(13,'NY Hub','New York','N'),(14,'Florida Hub','Florida','N'),(15,'Chicago Hub','Illinois','N'),(16,'Seattle Hub','Washington','N'),(17,'Denver Hub','Colorado','N'),(18,'Phoenix Hub','Arizona','N'),(19,'Michigan Hub','Michigan','N'),(20,'DC Hub','DC','N'),(21,'Bay Hub','California','N'),(22,'Austin Hub','Texas','N'),(23,'Boston Hub','Massachusetts','N'),(24,'Miami Hub','Florida','N'),(25,'Orlando Hub','Florida','N'),(26,'Vegas Hub','Nevada','N'),(27,'Utah Hub','Utah','N'),(28,'NJ Hub','New Jersey','N'),(29,'Atlanta Hub','Georgia','N');
/*!40000 ALTER TABLE `hub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `manager_id` int NOT NULL,
  `manager_name` varchar(100) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (301,'John Mathew','Domestic Shipments'),(302,'Priya Shah','International Shipments'),(303,'David Lee','Hub Operations'),(304,'Ravi Kumar','Domestic Shipments'),(305,'Sneha Iyer','International Shipments'),(306,'Amit Verma','Hub Operations'),(307,'Karan Singh','Domestic Shipments'),(308,'Neha Kapoor','International Shipments'),(309,'Vijay Anand','Hub Operations'),(310,'Sara Khan','Domestic Shipments'),(311,'Rahul Mehta','International Shipments'),(312,'Anil Das','Hub Operations'),(313,'Pooja Jain','Domestic Shipments'),(314,'Arun Nair','International Shipments'),(315,'Deepak Roy','Hub Operations'),(316,'Meera Nair','Domestic Shipments'),(317,'Sanjay Gupta','International Shipments'),(318,'Kriti Sharma','Hub Operations'),(319,'Varun Patel','Domestic Shipments'),(320,'Nisha Thomas','International Shipments');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manifest`
--

DROP TABLE IF EXISTS `manifest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manifest` (
  `manifest_id` int NOT NULL,
  `vehicle_id` int DEFAULT NULL,
  `origin_hub_id` int DEFAULT NULL,
  `destination_hub_id` int DEFAULT NULL,
  `departure_time` datetime DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `total_weight` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`manifest_id`),
  KEY `vehicle_id` (`vehicle_id`),
  KEY `origin_hub_id` (`origin_hub_id`),
  KEY `destination_hub_id` (`destination_hub_id`),
  CONSTRAINT `manifest_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`),
  CONSTRAINT `manifest_ibfk_2` FOREIGN KEY (`origin_hub_id`) REFERENCES `hub` (`hub_id`),
  CONSTRAINT `manifest_ibfk_3` FOREIGN KEY (`destination_hub_id`) REFERENCES `hub` (`hub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manifest`
--

LOCK TABLES `manifest` WRITE;
/*!40000 ALTER TABLE `manifest` DISABLE KEYS */;
INSERT INTO `manifest` VALUES (101,202,10,11,'2026-02-16 19:30:00','2026-02-17 05:30:00',139.00),(102,203,11,12,'2026-02-16 21:00:00','2026-02-17 09:00:00',239.00),(103,201,12,13,'2026-02-16 10:00:00','2026-02-16 18:00:00',0.00),(104,207,13,14,'2026-02-16 22:00:00','2026-02-17 08:00:00',150.00),(105,211,14,15,'2026-02-16 18:30:00','2026-02-17 06:00:00',90.00),(106,218,15,16,'2026-02-16 23:00:00','2026-02-17 11:00:00',60.00),(107,204,16,17,'2026-02-16 09:00:00','2026-02-16 19:00:00',70.00),(108,205,17,18,'2026-02-16 12:00:00','2026-02-16 20:00:00',55.00),(109,206,18,19,'2026-02-16 13:00:00','2026-02-16 21:00:00',40.00),(110,208,19,20,'2026-02-16 15:00:00','2026-02-16 23:00:00',100.00),(111,209,20,21,'2026-02-16 16:00:00','2026-02-17 02:00:00',75.00),(112,210,21,22,'2026-02-16 17:00:00','2026-02-17 03:00:00',110.00),(113,212,22,23,'2026-02-16 18:00:00','2026-02-17 04:00:00',130.00),(114,213,23,24,'2026-02-16 19:00:00','2026-02-17 05:00:00',140.00),(115,214,24,25,'2026-02-16 20:00:00','2026-02-17 06:00:00',150.00),(116,215,25,26,'2026-02-16 21:30:00','2026-02-17 07:30:00',80.00),(117,216,26,27,'2026-02-16 22:30:00','2026-02-17 08:30:00',95.00),(118,217,27,28,'2026-02-16 23:30:00','2026-02-17 09:30:00',65.00),(119,219,28,29,'2026-02-16 08:00:00','2026-02-16 16:00:00',85.00),(120,220,29,10,'2026-02-16 07:00:00','2026-02-16 15:00:00',105.00),(500,NULL,NULL,NULL,'2026-02-18 22:19:31','2026-02-18 22:19:31',100.00);
/*!40000 ALTER TABLE `manifest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff`
--

DROP TABLE IF EXISTS `tariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tariff` (
  `service_mode` varchar(20) DEFAULT NULL,
  `transport_mode` varchar(20) DEFAULT NULL,
  `cost_per_kg` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff`
--

LOCK TABLES `tariff` WRITE;
/*!40000 ALTER TABLE `tariff` DISABLE KEYS */;
INSERT INTO `tariff` VALUES ('Express','Air Cargo',15.50),('Standard','Surface',8.25),('Express','Surface',10.00),('Standard','Air Cargo',12.00),('Express','Air Cargo',16.00),('Standard','Surface',7.75),('Express','Surface',11.00),('Standard','Air Cargo',13.00),('Express','Air Cargo',17.00),('Standard','Surface',9.00),('Express','Surface',12.50),('Standard','Air Cargo',14.25),('Express','Air Cargo',18.00),('Standard','Surface',8.50),('Express','Surface',13.00),('Standard','Air Cargo',15.00),('Express','Air Cargo',19.50),('Standard','Surface',7.50),('Express','Surface',12.00),('Standard','Air Cargo',16.50);
/*!40000 ALTER TABLE `tariff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int NOT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (101,'MH01AB1234','IN_USE'),(201,'TRK-101','Available'),(202,'TRK-102','In Transit'),(203,'AIR-501','In Transit'),(204,'TRK-103','Available'),(205,'TRK-104','Maintenance'),(206,'TRK-105','Available'),(207,'TRK-106','In Transit'),(208,'AIR-502','Available'),(209,'TRK-107','Available'),(210,'TRK-108','Available'),(211,'TRK-109','In Transit'),(212,'AIR-503','Available'),(213,'TRK-110','Available'),(214,'TRK-111','Available'),(215,'TRK-112','Maintenance'),(216,'AIR-504','Available'),(217,'TRK-113','Available'),(218,'TRK-114','In Transit'),(219,'TRK-115','Available'),(220,'AIR-505','Available');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `consignment_tracking_view`
--

/*!50001 DROP VIEW IF EXISTS `consignment_tracking_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consignment_tracking_view` AS select `c`.`consignment_no` AS `consignment_no`,`c`.`booking_date` AS `booking_date`,`b`.`branch_name` AS `origin`,`c`.`destination_city` AS `destination`,`c`.`status` AS `status` from (`consignment` `c` join `branch` `b` on((`c`.`origin_branch_id` = `b`.`branch_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-23 21:23:10
