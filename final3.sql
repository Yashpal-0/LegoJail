-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: final
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
-- Table structure for table `CELLS`
--

DROP TABLE IF EXISTS `CELLS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CELLS` (
  `Cell_number` int NOT NULL,
  `Floor` int DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `Potential_Weakness` varchar(255) DEFAULT NULL,
  `security_level` int DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  PRIMARY KEY (`Cell_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CELLS`
--

LOCK TABLES `CELLS` WRITE;
/*!40000 ALTER TABLE `CELLS` DISABLE KEYS */;
INSERT INTO `CELLS` VALUES (1,1,'15 m2','Not many guards present around it at night',1,2),(2,1,'15 m2','Not many guards present around it at night',1,2),(5,2,'20 m2','Thin walls',2,1);
/*!40000 ALTER TABLE `CELLS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRIME`
--

DROP TABLE IF EXISTS `CRIME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CRIME` (
  `inmate_number` int NOT NULL,
  `Crime` varchar(255) NOT NULL,
  PRIMARY KEY (`inmate_number`,`Crime`),
  CONSTRAINT `b8` FOREIGN KEY (`inmate_number`) REFERENCES `INMATES` (`Inmate_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRIME`
--

LOCK TABLES `CRIME` WRITE;
/*!40000 ALTER TABLE `CRIME` DISABLE KEYS */;
INSERT INTO `CRIME` VALUES (1,'Burgarly'),(1,'Grand theft auto'),(2,'1st degree murder'),(3,'3rd degree murder'),(4,'Mass murder'),(4,'rape'),(4,'Torture');
/*!40000 ALTER TABLE `CRIME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEPENDENTS`
--

DROP TABLE IF EXISTS `DEPENDENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DEPENDENTS` (
  `Name` varchar(255) NOT NULL,
  `Guard_ID` int NOT NULL,
  `Phone_number` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Relation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Name`,`Guard_ID`),
  KEY `a4` (`Guard_ID`),
  CONSTRAINT `a4` FOREIGN KEY (`Guard_ID`) REFERENCES `GUARDS` (`Guards_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPENDENTS`
--

LOCK TABLES `DEPENDENTS` WRITE;
/*!40000 ALTER TABLE `DEPENDENTS` DISABLE KEYS */;
INSERT INTO `DEPENDENTS` VALUES ('Bob',1,555326789,'A-123 downing street','M',6,'son'),('Sarah',1,453216789,'A-123 downing street','F',30,'sister'),('Thomas',2,765326789,'B-343 Bungie apartments','M',50,'father');
/*!40000 ALTER TABLE `DEPENDENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FACILITIES`
--

DROP TABLE IF EXISTS `FACILITIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FACILITIES` (
  `Name` varchar(255) NOT NULL,
  `floor` int DEFAULT NULL,
  `Maintainance_cost` int DEFAULT NULL,
  `Size` varchar(255) DEFAULT NULL,
  `Purpose` varchar(255) DEFAULT NULL,
  `Maximum_capacity` int DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FACILITIES`
--

LOCK TABLES `FACILITIES` WRITE;
/*!40000 ALTER TABLE `FACILITIES` DISABLE KEYS */;
INSERT INTO `FACILITIES` VALUES ('Canteen',2,200000,'90 m2','To provide a place for the Inamtes and staff to eat',55),('Courtyard',1,40000,'200 m2','To provide a place for the inmates to exercise',60),('Showers',1,40000,'45 m2','To provide a place for the inmates to clean themselves',20),('staff quarter 1',1,50000,'40 m2','To provide a place for staff to relax',10),('staff quarter 2',2,42000,'30 m2','To provide a place for staff to relax',7);
/*!40000 ALTER TABLE `FACILITIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GUARDS`
--

DROP TABLE IF EXISTS `GUARDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GUARDS` (
  `Guards_ID` int NOT NULL,
  `Date_of_joining` date DEFAULT NULL,
  `Phone_number` int DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `First_name` varchar(255) DEFAULT NULL,
  `Last_name` varchar(255) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Facility_assigned` varchar(255) DEFAULT NULL,
  `Supervisor_ID` int DEFAULT NULL,
  `Facility_monitored` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Guards_ID`),
  KEY `a` (`Facility_assigned`),
  KEY `a1` (`Facility_monitored`),
  KEY `a2` (`Supervisor_ID`),
  KEY `Date_of_joining` (`Date_of_joining`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GUARDS`
--

LOCK TABLES `GUARDS` WRITE;
/*!40000 ALTER TABLE `GUARDS` DISABLE KEYS */;
INSERT INTO `GUARDS` VALUES (1,'2005-01-07',1234567890,12000,'Tom','Ridley',36,'staff quarter 1',4,'Canteen'),(2,'2020-07-08',1234567899,32000,'John','Arcane',25,'staff quarter 1',4,'Showers'),(3,'2010-04-09',1234567526,20000,'Peter','Mayhew',37,'staff quarter 2',4,'courtyard'),(4,'2009-09-19',349345123,23000,'Jeremiah','Alexos',42,'staff quarter 2',1,NULL),(5,'1995-05-02',19234532,26000,'Barack','Agrawal',48,'staff quarter 1',4,'Canteen');
/*!40000 ALTER TABLE `GUARDS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GUARD_FACILITY_USE`
--

DROP TABLE IF EXISTS `GUARD_FACILITY_USE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GUARD_FACILITY_USE` (
  `Guard_ID` int NOT NULL,
  `Facility_name` varchar(255) NOT NULL,
  PRIMARY KEY (`Guard_ID`,`Facility_name`),
  KEY `a9` (`Facility_name`),
  CONSTRAINT `a9` FOREIGN KEY (`Facility_name`) REFERENCES `FACILITIES` (`Name`),
  CONSTRAINT `b1` FOREIGN KEY (`Guard_ID`) REFERENCES `GUARDS` (`Guards_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GUARD_FACILITY_USE`
--

LOCK TABLES `GUARD_FACILITY_USE` WRITE;
/*!40000 ALTER TABLE `GUARD_FACILITY_USE` DISABLE KEYS */;
INSERT INTO `GUARD_FACILITY_USE` VALUES (1,'canteen'),(2,'canteen'),(3,'canteen'),(1,'staff quarter 1'),(2,'staff quarter 1'),(3,'staff quarter 2');
/*!40000 ALTER TABLE `GUARD_FACILITY_USE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GUARD_INSURANCE`
--

DROP TABLE IF EXISTS `GUARD_INSURANCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GUARD_INSURANCE` (
  `Guard_ID` int DEFAULT NULL,
  `Sum_insured` int DEFAULT NULL,
  KEY `b7` (`Guard_ID`),
  CONSTRAINT `b7` FOREIGN KEY (`Guard_ID`) REFERENCES `GUARDS` (`Guards_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GUARD_INSURANCE`
--

LOCK TABLES `GUARD_INSURANCE` WRITE;
/*!40000 ALTER TABLE `GUARD_INSURANCE` DISABLE KEYS */;
INSERT INTO `GUARD_INSURANCE` VALUES (1,1000000),(2,1100000),(3,2100000),(4,4100000);
/*!40000 ALTER TABLE `GUARD_INSURANCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INMATES`
--

DROP TABLE IF EXISTS `INMATES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INMATES` (
  `Inmate_number` int NOT NULL,
  `Cell_number` int DEFAULT NULL,
  `security_level` int DEFAULT NULL,
  `First_name` varchar(255) DEFAULT NULL,
  `Last_name` varchar(255) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `date_of_release` date DEFAULT NULL,
  `date_of_incarceration` date DEFAULT NULL,
  PRIMARY KEY (`Inmate_number`),
  KEY `c1` (`date_of_incarceration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INMATES`
--

LOCK TABLES `INMATES` WRITE;
/*!40000 ALTER TABLE `INMATES` DISABLE KEYS */;
INSERT INTO `INMATES` VALUES (1,2,1,'John','Smith',30,'2025-12-12','1990-12-13'),(2,2,1,'Alex','Jones',28,'2032-12-12','1999-12-13'),(3,2,1,'Samuel','Connors',27,'2020-01-25','2000-03-30'),(4,5,2,'Heather','Smith',45,'2099-12-31','2000-05-24'),(10,1,1,'ab','cd',45,'2021-10-10','2021-10-10');
/*!40000 ALTER TABLE `INMATES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INMATE_CELL`
--

DROP TABLE IF EXISTS `INMATE_CELL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INMATE_CELL` (
  `Assigned_Employee_ID` int NOT NULL,
  `Assigned_guard_ID` int NOT NULL,
  `Inmate_ID` int NOT NULL,
  `Cell_number` int NOT NULL,
  PRIMARY KEY (`Assigned_Employee_ID`,`Assigned_guard_ID`,`Inmate_ID`,`Cell_number`),
  KEY `b4` (`Assigned_guard_ID`),
  KEY `b5` (`Inmate_ID`),
  KEY `b6` (`Cell_number`),
  CONSTRAINT `b3` FOREIGN KEY (`Assigned_Employee_ID`) REFERENCES `STAFF` (`Employee_ID`),
  CONSTRAINT `b4` FOREIGN KEY (`Assigned_guard_ID`) REFERENCES `GUARDS` (`Guards_ID`),
  CONSTRAINT `b5` FOREIGN KEY (`Inmate_ID`) REFERENCES `INMATES` (`Inmate_number`),
  CONSTRAINT `b6` FOREIGN KEY (`Cell_number`) REFERENCES `CELLS` (`Cell_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INMATE_CELL`
--

LOCK TABLES `INMATE_CELL` WRITE;
/*!40000 ALTER TABLE `INMATE_CELL` DISABLE KEYS */;
INSERT INTO `INMATE_CELL` VALUES (4,2,1,1),(4,2,2,1),(1,3,4,5),(4,3,3,2),(1,4,4,5);
/*!40000 ALTER TABLE `INMATE_CELL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INMATE_FACILITY_USE`
--

DROP TABLE IF EXISTS `INMATE_FACILITY_USE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INMATE_FACILITY_USE` (
  `Inmate_number` int NOT NULL,
  `Facility_name` varchar(255) NOT NULL,
  PRIMARY KEY (`Inmate_number`,`Facility_name`),
  KEY `a6` (`Facility_name`),
  CONSTRAINT `a5` FOREIGN KEY (`Inmate_number`) REFERENCES `INMATES` (`Inmate_number`),
  CONSTRAINT `a6` FOREIGN KEY (`Facility_name`) REFERENCES `FACILITIES` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INMATE_FACILITY_USE`
--

LOCK TABLES `INMATE_FACILITY_USE` WRITE;
/*!40000 ALTER TABLE `INMATE_FACILITY_USE` DISABLE KEYS */;
INSERT INTO `INMATE_FACILITY_USE` VALUES (1,'Canteen'),(2,'Canteen'),(3,'Canteen'),(1,'courtyard'),(2,'courtyard'),(1,'Showers'),(2,'Showers'),(3,'Showers'),(4,'Showers');
/*!40000 ALTER TABLE `INMATE_FACILITY_USE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STAFF`
--

DROP TABLE IF EXISTS `STAFF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STAFF` (
  `Employee_ID` int NOT NULL,
  `Phone_number` int DEFAULT NULL,
  `Working_since` date DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `Date_of_birth` date DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Job` varchar(255) DEFAULT NULL,
  `First_name` varchar(255) DEFAULT NULL,
  `Last_name` varchar(255) DEFAULT NULL,
  `Supervisor_ID` int DEFAULT NULL,
  `Facility_maintained` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`),
  KEY `a3` (`Supervisor_ID`),
  CONSTRAINT `a3` FOREIGN KEY (`Supervisor_ID`) REFERENCES `STAFF` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STAFF`
--

LOCK TABLES `STAFF` WRITE;
/*!40000 ALTER TABLE `STAFF` DISABLE KEYS */;
INSERT INTO `STAFF` VALUES (1,231456789,'1992-06-12',100000,'1972-01-05',50,'Warden','Domas','Princley',NULL,NULL),(2,321456789,'2012-09-10',23000,'1990-02-04',32,'Janitor','William','Shapley',1,'Showers'),(3,1321456789,'2008-10-11',24000,'1988-07-01',34,'Janitor','Benjamin','Araho',1,'Canteen'),(4,1521456789,'2000-01-24',59000,'1980-02-08',42,'Administrator','Harry','Cumins',1,NULL);
/*!40000 ALTER TABLE `STAFF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STAFF_FACILITY_USE`
--

DROP TABLE IF EXISTS `STAFF_FACILITY_USE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STAFF_FACILITY_USE` (
  `Employee_ID` int NOT NULL,
  `Facility_name` varchar(255) NOT NULL,
  PRIMARY KEY (`Employee_ID`,`Facility_name`),
  KEY `a8` (`Facility_name`),
  CONSTRAINT `a7` FOREIGN KEY (`Employee_ID`) REFERENCES `STAFF` (`Employee_ID`),
  CONSTRAINT `a8` FOREIGN KEY (`Facility_name`) REFERENCES `FACILITIES` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STAFF_FACILITY_USE`
--

LOCK TABLES `STAFF_FACILITY_USE` WRITE;
/*!40000 ALTER TABLE `STAFF_FACILITY_USE` DISABLE KEYS */;
INSERT INTO `STAFF_FACILITY_USE` VALUES (1,'Canteen'),(2,'Canteen'),(3,'Canteen'),(4,'Canteen'),(2,'Courtyard'),(2,'staff quarter 1');
/*!40000 ALTER TABLE `STAFF_FACILITY_USE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TIME_SERVED`
--

DROP TABLE IF EXISTS `TIME_SERVED`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TIME_SERVED` (
  `Date_of_incarceration` date NOT NULL,
  `Time_served_in_years` int DEFAULT NULL,
  PRIMARY KEY (`Date_of_incarceration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TIME_SERVED`
--

LOCK TABLES `TIME_SERVED` WRITE;
/*!40000 ALTER TABLE `TIME_SERVED` DISABLE KEYS */;
INSERT INTO `TIME_SERVED` VALUES ('1990-12-13',32),('1999-12-13',23),('2000-03-30',22),('2000-05-24',22);
/*!40000 ALTER TABLE `TIME_SERVED` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VISITORS`
--

DROP TABLE IF EXISTS `VISITORS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VISITORS` (
  `Name` varchar(255) NOT NULL,
  `Inmate_number` int NOT NULL,
  `Age` int DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Visiting_hours` varchar(255) DEFAULT NULL,
  `Last_visited` date DEFAULT NULL,
  PRIMARY KEY (`Name`,`Inmate_number`),
  KEY `b2` (`Inmate_number`),
  CONSTRAINT `b2` FOREIGN KEY (`Inmate_number`) REFERENCES `INMATES` (`Inmate_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VISITORS`
--

LOCK TABLES `VISITORS` WRITE;
/*!40000 ALTER TABLE `VISITORS` DISABLE KEYS */;
INSERT INTO `VISITORS` VALUES ('Gregor',1,46,'M','2PM-3PM','2022-05-07'),('Samantha',3,35,'F','1PM-3PM','2021-01-10');
/*!40000 ALTER TABLE `VISITORS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `YEARS_IN_SERVICE`
--

DROP TABLE IF EXISTS `YEARS_IN_SERVICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `YEARS_IN_SERVICE` (
  `working_since` date NOT NULL,
  `Years_in_Service` int DEFAULT NULL,
  PRIMARY KEY (`working_since`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `YEARS_IN_SERVICE`
--

LOCK TABLES `YEARS_IN_SERVICE` WRITE;
/*!40000 ALTER TABLE `YEARS_IN_SERVICE` DISABLE KEYS */;
INSERT INTO `YEARS_IN_SERVICE` VALUES ('1987-02-23',35),('1992-06-12',30),('2000-01-24',22),('2005-01-07',17),('2008-10-11',14),('2009-09-19',13),('2010-04-09',12),('2012-09-10',10),('2020-07-08',2);
/*!40000 ALTER TABLE `YEARS_IN_SERVICE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-29 16:28:41
