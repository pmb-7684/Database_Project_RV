-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: rv_park
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `frst_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `address` varchar(35) DEFAULT NULL,
  `city` varchar(35) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `ZIP` char(5) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1001,'Paula','Bailey','12 Pine ST','Charlotte','NC','28227','7045553121','pbailey@email.com'),(1002,'Bill','Winter','7800 Spring View','Charlotte','NC','28227','7045178432','bwinter@email.com'),(1003,'Steve','Winter','453 Pine way','Charlotte','NC','28227','7047851049','swintery@email.com'),(1004,'Mary','Butler','1923 West Peach ct','Normal','NC','61701','3095543121','mbutler@email.com'),(1005,'Jerry','Carey','754 Lost Lane apt T','Raleigh','NC','27609','7049853121','jerry@email.com'),(1006,'Peter','Hummer','8000 Spring View','Charlotte','NC','28227','7044518723','hummmer@email.com'),(1007,'Krystal','Woods','100458 Pear Cove','Wilmington','NC','28401','7047851049','kwoods@email.com'),(1008,'Mary','Butler','1923 West Peach','Normal','IL','61701','3095543121','mbutler@email.com'),(1009,'Sister','Sarah','One way church lane','Nashville','TN','37011','6155543121','sister@email.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependents`
--

DROP TABLE IF EXISTS `dependents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependents` (
  `SSN2` int NOT NULL,
  `frst_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `relationship` varchar(20) DEFAULT NULL,
  `SSN1` int DEFAULT NULL,
  PRIMARY KEY (`SSN2`),
  KEY `SSN1` (`SSN1`),
  CONSTRAINT `dependents_ibfk_1` FOREIGN KEY (`SSN1`) REFERENCES `employee` (`SSN1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependents`
--

LOCK TABLES `dependents` WRITE;
/*!40000 ALTER TABLE `dependents` DISABLE KEYS */;
INSERT INTO `dependents` VALUES (790157881,'Betty','Winter','7045178432','cwinter@email.com','spouse',124568703);
/*!40000 ALTER TABLE `dependents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `SSN1` int NOT NULL,
  `frst_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `address` varchar(35) DEFAULT NULL,
  `city` varchar(35) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `ZIP` char(5) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `job_title` varchar(20) DEFAULT NULL,
  `salary` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`SSN1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (32418788,'Amanda','Butler','1923 West Turnip','Mountainville','NC','61701','3095543121','abutler@email.com','HR manager',75000),(48714832,'Carrie','Butler','1923 West Rose ct','Mountainville','NC','61701','3095543121','bbutler@email.com','pt wait staff',20000),(52147899,'Dawn','Carey','754 Honey Lane','Mountainville','NC','27609','7049853121','chip@email.com','cs clerk',40000),(90157881,'Billy','Winter','453 Pine way','Mountainville','NC','28227','7047851049','bwintery@email.com','mechanic intern',35000),(98714832,'Robert','Butler','1923 West Strawberry ct','Mountainville','NC','61701','3095543121','bbutler@email.com','pt wait staff',20000),(124568703,'Carl','Winter','7800 Fall View','Mountainville','NC','28227','7045178432','cwinter@email.com','manager',75000),(242567812,'Bob','Bailey','12 Pine ST','Mountainville','NC','28227','7045553121','bbailey@email.com','maechanic',50000),(247567812,'Charlie','Bailey','12 Oak ST','Mountainville','NC','28227','7045553121','bbailey@email.com','groundskeeper',50000),(352147899,'Chip','Carey','754 Maple Lane','Mountainville','NC','27609','7049853121','chip@email.com','pt kitchen',20000),(471598265,'Richard','Brown','One church lane','Mountainville','NC','37011','6155543121','rb@email.com','cs clerk',40000),(624568703,'Buck','Winter','7800 Summer View','Mountainville','NC','28227','7045178432','cwinter@email.com','groundskeeper',50000),(987777774,'Tom','Woods','2458 Beach Cove','Mountainville','NC','28401','7047851049','twoods@email.com','Head chef',55000),(999999999,'Peter','Gunn','8000 Spring View','Mountainville','NC','28227','7044518723','pgunn@email.com','sous chek',55000);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `government`
--

DROP TABLE IF EXISTS `government`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `government` (
  `govt_id` int NOT NULL,
  `govt_name` varchar(30) DEFAULT NULL,
  `contact` varchar(25) DEFAULT NULL,
  `address` varchar(35) DEFAULT NULL,
  `city` varchar(35) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `ZIP` char(5) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`govt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `government`
--

LOCK TABLES `government` WRITE;
/*!40000 ALTER TABLE `government` DISABLE KEYS */;
INSERT INTO `government` VALUES (200,'IRS','none','PO Box 1302','Charotte','NC','28201','8008291020','IRS.gov'),(201,'NC DOR','none','PO Box R','Raleigh','NC','27634','8007527504','ncdor.gov'),(202,'Dept of Revenue Moutainville','Ralph Potter','1559 Main St','Mountainville','NC','28227','7042158754','Mountainville.com');
/*!40000 ALTER TABLE `government` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `govt_record`
--

DROP TABLE IF EXISTS `govt_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `govt_record` (
  `payment_id` int NOT NULL,
  `payment_date` date DEFAULT NULL,
  `details` text,
  `cost` decimal(10,2) DEFAULT NULL,
  `govt_id` int DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `govt_id` (`govt_id`),
  CONSTRAINT `govt_record_ibfk_1` FOREIGN KEY (`govt_id`) REFERENCES `government` (`govt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `govt_record`
--

LOCK TABLES `govt_record` WRITE;
/*!40000 ALTER TABLE `govt_record` DISABLE KEYS */;
INSERT INTO `govt_record` VALUES (1,'2024-11-20','wk 11/17 IRS',1000.00,200),(2,'2024-11-13','wk 11/12 IRS',700.00,200),(3,'2024-11-17','wk 11/17 NC DOR',2000.00,201),(4,'2024-11-07','wk 11/12 NC DOR',1700.00,201),(5,'2024-11-20','payment towrdds DOR M\'ville',1700.00,202);
/*!40000 ALTER TABLE `govt_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoice_id` int NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicemaintenance`
--

DROP TABLE IF EXISTS `invoicemaintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoicemaintenance` (
  `invoice_id` int NOT NULL,
  `record_id` int NOT NULL,
  PRIMARY KEY (`invoice_id`,`record_id`),
  KEY `record_id` (`record_id`),
  CONSTRAINT `invoicemaintenance_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`),
  CONSTRAINT `invoicemaintenance_ibfk_2` FOREIGN KEY (`record_id`) REFERENCES `maintenance` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicemaintenance`
--

LOCK TABLES `invoicemaintenance` WRITE;
/*!40000 ALTER TABLE `invoicemaintenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoicemaintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance` (
  `record_id` int NOT NULL,
  `VIN` int DEFAULT NULL,
  `Maintenance_date` date DEFAULT NULL,
  `details` text,
  `cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `VIN` (`VIN`),
  CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`VIN`) REFERENCES `vehicle` (`VIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES (305,521442007,'2024-12-31','oil change',200.00),(309,231476129,'2024-12-21','transmission',4000.00);
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentaloptions`
--

DROP TABLE IF EXISTS `rentaloptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentaloptions` (
  `option_id` int NOT NULL,
  `option_type` text,
  `cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentaloptions`
--

LOCK TABLES `rentaloptions` WRITE;
/*!40000 ALTER TABLE `rentaloptions` DISABLE KEYS */;
INSERT INTO `rentaloptions` VALUES (1,'GRILL',75.00),(2,'DINNER',100.00),(3,'DINNER',100.00),(4,'DINNER',100.00),(5,'DINNER',100.00),(6,'DINNER',100.00),(7,'GRILL',75.00),(8,'DINNER',100.00),(9,'DINNER',100.00),(10,'LAKESIDE',500.00);
/*!40000 ALTER TABLE `rentaloptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservation_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `VIN` int DEFAULT NULL,
  `arrival_date` date DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `parking_cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `customer_id` (`customer_id`),
  KEY `VIN` (`VIN`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`VIN`) REFERENCES `vehicle` (`VIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (201,1001,131442382,'2024-12-02','2024-12-27',800.00),(202,1002,631447432,'2024-11-20','2024-12-15',1600.00),(203,1003,231442672,'2024-11-20','2024-12-15',1600.00),(204,1004,975642890,'2024-12-31','2025-01-01',200.00),(205,1005,521442007,'2024-12-31','2025-01-02',600.00),(206,1006,431444567,'2024-11-20','2024-12-15',1600.00),(207,1007,135446132,'2024-12-01','2024-12-03',300.00),(208,1008,55489120,'2024-11-26','2024-11-30',500.00),(209,1009,231476129,'2024-12-01','2025-01-31',6200.00);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_options`
--

DROP TABLE IF EXISTS `reservation_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_options` (
  `reservation_id` int NOT NULL,
  `option_id` int NOT NULL,
  PRIMARY KEY (`reservation_id`,`option_id`),
  KEY `option_id` (`option_id`),
  CONSTRAINT `reservation_options_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`reservation_id`),
  CONSTRAINT `reservation_options_ibfk_2` FOREIGN KEY (`option_id`) REFERENCES `rentaloptions` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_options`
--

LOCK TABLES `reservation_options` WRITE;
/*!40000 ALTER TABLE `reservation_options` DISABLE KEYS */;
INSERT INTO `reservation_options` VALUES (201,1),(202,2),(203,3),(204,4),(205,5),(206,6),(207,7),(207,8),(208,9),(208,10);
/*!40000 ALTER TABLE `reservation_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `company_id` int NOT NULL,
  `company_name` varchar(30) DEFAULT NULL,
  `contact` varchar(25) DEFAULT NULL,
  `address` varchar(35) DEFAULT NULL,
  `city` varchar(35) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `ZIP` char(5) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (100,'Duke Energy','Barnaby Jones','525 S Tryon','Charotte','NC','28203','8007779898','duke-energy.com'),(101,'Piedmont Natl Gas','Barnaby Jones','4339 S Tryon','Charotte','NC','28203','8007527504','piedmontng.com'),(102,'Duke Energy','Baraby Jones','525 S Tryon','Charotte','NC','28203','8007779898','duke-energy.com'),(103,'City of Mountainville','Aunt Mary Woods','1457 Main St','Mountainville','NC','28227','7045128898','waterMountainville.com'),(104,'Mountainville Insurance','Uncle Bobby Woods','1459 Main St','Mountainville','NC','28227','7044518887','cheap_Insurnace.com'),(105,'Mountainville Meats','Ray Ray Woods','257 Rural Route 28','Mountainville','NC','28227','8006779898','CleanFood_Mountainville.com'),(106,'Mountainville Farm','Georgia Woods','257 Rural Route 28','Mountainville','NC','28227','8006779898','CleanFood_Mountainville.com');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_record`
--

DROP TABLE IF EXISTS `supplier_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_record` (
  `payment_id` int NOT NULL,
  `payment_date` date DEFAULT NULL,
  `details` text,
  `cost` decimal(10,2) DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `supplier_record_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `supplier` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_record`
--

LOCK TABLES `supplier_record` WRITE;
/*!40000 ALTER TABLE `supplier_record` DISABLE KEYS */;
INSERT INTO `supplier_record` VALUES (1,'2024-10-20','September bill in full',2000.00,100),(2,'2024-11-20','october bill in full',1700.00,100),(3,'2024-10-15','sept bill in full',500.00,101),(4,'2024-11-16','october bill in full',700.00,101),(5,'2024-11-20','September/October bill in full',100.00,103),(6,'2024-11-20','September/October bill in full',1200.00,105),(7,'2024-11-20','September/October bill in full',800.00,106),(8,'2024-11-16','september premium in full',1500.00,104),(9,'2024-11-16','october premium in full',1500.00,104);
/*!40000 ALTER TABLE `supplier_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `VIN` int NOT NULL,
  `make` varchar(20) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `Year` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`VIN`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (55489120,'Dreamliner','dream',2005,1008),(131442382,'American Coach','dream',2025,1001),(135446132,'American Coach','dream',2025,1007),(231442672,'Winnebago','Solis NPF',2025,1003),(231476129,'VW','Bus',1966,1009),(431444567,'Winnebago','Revel Sport',2025,1006),(521442007,'Winnebago','Winnebago',1998,1005),(631447432,'Winnebago','Solis Pocket',2025,1002),(975642890,'Jayco','fifthWheel',2025,1004);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_charges_per_customer`
--

DROP TABLE IF EXISTS `view_charges_per_customer`;
/*!50001 DROP VIEW IF EXISTS `view_charges_per_customer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_charges_per_customer` AS SELECT 
 1 AS `customer_id`,
 1 AS `last_name`,
 1 AS `SUM(maintenance.cost)`,
 1 AS `SUM(reservation.parking_cost)`,
 1 AS `SUM(rentaloptions.cost)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_customers`
--

DROP TABLE IF EXISTS `view_customers`;
/*!50001 DROP VIEW IF EXISTS `view_customers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_customers` AS SELECT 
 1 AS `customer_id`,
 1 AS `frst_name`,
 1 AS `last_name`,
 1 AS `address`,
 1 AS `city`,
 1 AS `state`,
 1 AS `ZIP`,
 1 AS `phone`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_employee_info`
--

DROP TABLE IF EXISTS `view_employee_info`;
/*!50001 DROP VIEW IF EXISTS `view_employee_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_employee_info` AS SELECT 
 1 AS `frst_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `job_title`,
 1 AS `salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_rv_maintenance`
--

DROP TABLE IF EXISTS `view_rv_maintenance`;
/*!50001 DROP VIEW IF EXISTS `view_rv_maintenance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_rv_maintenance` AS SELECT 
 1 AS `customer_id`,
 1 AS `VIN`,
 1 AS `make`,
 1 AS `model`,
 1 AS `YEAR`,
 1 AS `Maintenance_date`,
 1 AS `cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_charges_per_customer`
--

/*!50001 DROP VIEW IF EXISTS `view_charges_per_customer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_charges_per_customer` AS select `c`.`customer_id` AS `customer_id`,`c`.`last_name` AS `last_name`,sum(`maintenance`.`cost`) AS `SUM(maintenance.cost)`,sum(`reservation`.`parking_cost`) AS `SUM(reservation.parking_cost)`,sum(`rentaloptions`.`cost`) AS `SUM(rentaloptions.cost)` from (((((`customer` `c` left join `vehicle` on((`c`.`customer_id` = `vehicle`.`customer_id`))) left join `maintenance` on((`vehicle`.`VIN` = `maintenance`.`VIN`))) left join `reservation` on((`c`.`customer_id` = `reservation`.`customer_id`))) left join `reservation_options` on((`reservation`.`reservation_id` = `reservation_options`.`reservation_id`))) left join `rentaloptions` on((`reservation_options`.`option_id` = `rentaloptions`.`option_id`))) group by `c`.`customer_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_customers`
--

/*!50001 DROP VIEW IF EXISTS `view_customers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_customers` AS select `customer`.`customer_id` AS `customer_id`,`customer`.`frst_name` AS `frst_name`,`customer`.`last_name` AS `last_name`,`customer`.`address` AS `address`,`customer`.`city` AS `city`,`customer`.`state` AS `state`,`customer`.`ZIP` AS `ZIP`,`customer`.`phone` AS `phone`,`customer`.`email` AS `email` from `customer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_employee_info`
--

/*!50001 DROP VIEW IF EXISTS `view_employee_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_employee_info` AS select `employee`.`frst_name` AS `frst_name`,`employee`.`last_name` AS `last_name`,`employee`.`email` AS `email`,`employee`.`job_title` AS `job_title`,`employee`.`salary` AS `salary` from `employee` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_rv_maintenance`
--

/*!50001 DROP VIEW IF EXISTS `view_rv_maintenance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_rv_maintenance` AS select `c`.`customer_id` AS `customer_id`,`vehicle`.`VIN` AS `VIN`,`vehicle`.`make` AS `make`,`vehicle`.`model` AS `model`,`vehicle`.`Year` AS `YEAR`,`maintenance`.`Maintenance_date` AS `Maintenance_date`,`maintenance`.`cost` AS `cost` from ((`customer` `c` left join `vehicle` on((`c`.`customer_id` = `vehicle`.`customer_id`))) left join `maintenance` on((`vehicle`.`VIN` = `maintenance`.`VIN`))) where (`maintenance`.`record_id` is not null) */;
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

-- Dump completed on 2024-11-22 19:56:37
