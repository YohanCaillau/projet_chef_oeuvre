-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: deepicar
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Current Database: `deepicar`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `deepicar` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `deepicar`;

--
-- Table structure for table `Cars`
--

DROP TABLE IF EXISTS `Cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `prototype` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cars`
--

LOCK TABLES `Cars` WRITE;
/*!40000 ALTER TABLE `Cars` DISABLE KEYS */;
INSERT INTO `Cars` VALUES (1,'SunFounder','2.0','198.162.1.21'),(2,'SunFounder','X','198.162.1.20');
/*!40000 ALTER TABLE `Cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lane_Navigation_Images`
--

DROP TABLE IF EXISTS `Lane_Navigation_Images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lane_Navigation_Images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) NOT NULL,
  `steering_angle` float NOT NULL,
  `ride_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `image_path` (`image_path`),
  KEY `Lane_Navigation_Images_fk0` (`ride_id`),
  CONSTRAINT `Lane_Navigation_Images_fk0` FOREIGN KEY (`ride_id`) REFERENCES `Rides` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lane_Navigation_Images`
--

LOCK TABLES `Lane_Navigation_Images` WRITE;
/*!40000 ALTER TABLE `Lane_Navigation_Images` DISABLE KEYS */;
INSERT INTO `Lane_Navigation_Images` VALUES (1,'video01_000_085.png',85,1),(2,'video01_001_080.png',80,1),(3,'video01_002_077.png',77,1),(4,'video01_003_075.png',75,1),(5,'video01_004_072.png',72,1),(6,'video01_005_073.png',73,1),(7,'video01_006_069.png',69,1),(8,'video01_007_067.png',67,1),(9,'video01_008_070.png',70,1),(10,'video01_009_065.png',65,1),(11,'video01_010_063.png',63,1),(12,'video01_011_062.png',62,1),(13,'video01_012_060.png',60,1),(14,'video01_013_057.png',57,1),(15,'video01_014_055.png',55,1),(16,'video01_015_056.png',56,1),(17,'video01_016_056.png',56,1),(18,'video01_017_061.png',61,1),(19,'video01_018_056.png',56,1),(20,'video01_019_051.png',51,1),(21,'video01_020_056.png',56,1),(22,'video01_021_051.png',51,1),(23,'video01_022_056.png',56,1),(24,'video01_023_055.png',55,1),(25,'video01_024_050.png',50,1),(26,'video01_025_049.png',49,1),(27,'video01_026_054.png',54,1),(28,'video01_027_059.png',59,1),(29,'video01_028_054.png',54,1),(30,'video01_029_049.png',49,1),(31,'video01_030_044.png',44,1),(32,'video01_031_049.png',49,1),(33,'video01_032_049.png',49,1),(34,'video01_033_052.png',52,1),(35,'video01_034_049.png',49,1),(36,'video01_035_048.png',48,1),(37,'video01_036_053.png',53,1),(38,'video01_037_057.png',57,1),(39,'video01_038_053.png',53,1),(40,'video01_039_052.png',52,1),(41,'video01_040_054.png',54,1),(42,'video01_041_056.png',56,1),(43,'video01_042_057.png',57,1),(44,'video01_043_060.png',60,1),(45,'video01_044_056.png',56,1),(46,'video01_045_057.png',57,1),(47,'video01_046_062.png',62,1),(48,'video01_047_061.png',61,1),(49,'video01_048_064.png',64,1),(50,'video01_049_065.png',65,1),(51,'video01_050_070.png',70,1),(52,'video01_051_071.png',71,1),(53,'video01_052_076.png',76,1),(54,'video01_053_077.png',77,1),(55,'video01_054_075.png',75,1),(56,'video01_055_078.png',78,1),(57,'video01_056_073.png',73,1),(58,'video01_057_077.png',77,1),(59,'video01_058_074.png',74,1),(60,'video01_059_076.png',76,1),(61,'video01_060_081.png',81,1),(62,'video01_061_082.png',82,1),(63,'video01_062_080.png',80,1),(64,'video01_063_080.png',80,1),(65,'video01_064_080.png',80,1),(66,'video01_065_081.png',81,1),(67,'video01_066_079.png',79,1),(68,'video01_067_084.png',84,1),(69,'video01_068_086.png',86,1),(70,'video01_069_081.png',81,1),(71,'video01_070_077.png',77,1),(72,'video01_071_082.png',82,1),(73,'video01_072_077.png',77,1),(74,'video01_073_079.png',79,1),(75,'video01_074_080.png',80,1),(76,'video01_075_080.png',80,1),(77,'video01_076_085.png',85,1),(78,'video01_077_080.png',80,1),(79,'video01_078_079.png',79,1),(80,'video01_079_080.png',80,1),(81,'video01_080_075.png',75,1),(82,'video01_081_070.png',70,1),(83,'video01_082_071.png',71,1),(84,'video01_083_076.png',76,1),(85,'video01_084_071.png',71,1),(86,'video01_085_072.png',72,1),(87,'video01_086_073.png',73,1),(88,'video01_087_070.png',70,1),(89,'video01_088_071.png',71,1),(90,'video01_089_072.png',72,1),(91,'video01_090_077.png',77,1),(92,'video01_091_073.png',73,1),(93,'video01_092_078.png',78,1),(94,'video01_093_077.png',77,1),(95,'video01_094_082.png',82,1),(96,'video01_095_077.png',77,1),(97,'video01_096_082.png',82,1),(98,'video01_097_086.png',86,1),(99,'video01_098_088.png',88,1),(100,'video01_099_089.png',89,1),(101,'video01_100_084.png',84,1),(102,'video01_101_081.png',81,1),(103,'video01_102_086.png',86,1),(104,'video01_103_081.png',81,1),(105,'video01_104_086.png',86,1),(106,'video01_105_090.png',90,1),(107,'video01_106_088.png',88,1),(108,'video01_107_084.png',84,1),(109,'video01_108_081.png',81,1),(110,'video01_109_086.png',86,1),(111,'video01_110_081.png',81,1),(112,'video01_111_086.png',86,1),(113,'video01_112_085.png',85,1),(114,'video01_113_089.png',89,1),(115,'video01_114_084.png',84,1),(116,'video01_115_079.png',79,1),(117,'video01_116_074.png',74,1),(118,'video01_117_073.png',73,1),(119,'video01_118_078.png',78,1),(120,'video01_119_073.png',73,1),(121,'video01_120_070.png',70,1),(122,'video01_121_072.png',72,1),(123,'video01_122_077.png',77,1),(124,'video01_123_079.png',79,1),(125,'video01_124_083.png',83,1),(126,'video01_125_078.png',78,1),(127,'video01_126_083.png',83,1),(128,'video01_127_079.png',79,1),(129,'video01_128_084.png',84,1),(130,'video01_129_080.png',80,1),(131,'video01_130_079.png',79,1),(132,'video01_131_084.png',84,1),(133,'video01_132_089.png',89,1),(134,'video01_133_094.png',94,1),(135,'video01_134_093.png',93,1),(136,'video01_135_098.png',98,1),(137,'video01_136_103.png',103,1),(138,'video01_137_102.png',102,1),(139,'video01_138_101.png',101,1),(140,'video01_139_100.png',100,1),(141,'video01_140_099.png',99,1),(142,'video01_141_098.png',98,1),(143,'video01_142_097.png',97,1),(144,'video01_143_092.png',92,1),(145,'video01_144_091.png',91,1),(146,'video01_145_086.png',86,1),(147,'video01_146_081.png',81,1),(148,'video01_147_076.png',76,1),(149,'video01_148_073.png',73,1),(150,'video01_149_068.png',68,1),(151,'video01_150_063.png',63,1),(152,'video01_151_068.png',68,1),(153,'video01_152_069.png',69,1),(154,'video01_153_068.png',68,1),(155,'video01_154_070.png',70,1),(156,'video01_155_065.png',65,1),(157,'video01_156_060.png',60,1),(158,'video01_157_063.png',63,1),(159,'video01_158_068.png',68,1),(160,'video01_159_064.png',64,1),(161,'video01_160_063.png',63,1),(162,'video01_161_063.png',63,1),(163,'video01_162_066.png',66,1),(164,'video01_163_065.png',65,1),(165,'video01_164_060.png',60,1),(166,'video01_165_065.png',65,1),(167,'video01_166_063.png',63,1),(168,'video01_167_062.png',62,1),(169,'video01_168_063.png',63,1),(170,'video01_169_062.png',62,1),(171,'video01_170_060.png',60,1),(172,'video01_171_063.png',63,1),(173,'video01_172_065.png',65,1),(174,'video01_173_065.png',65,1),(175,'video01_174_065.png',65,1),(176,'video01_175_065.png',65,1),(177,'video01_176_063.png',63,1),(178,'video01_177_068.png',68,1),(179,'video01_178_063.png',63,1),(180,'video01_179_064.png',64,1),(181,'video01_180_062.png',62,1),(182,'video01_181_065.png',65,1),(183,'video01_182_065.png',65,1),(184,'video01_183_065.png',65,1),(185,'video01_184_063.png',63,1),(186,'video01_185_068.png',68,1),(187,'video01_186_071.png',71,1),(188,'video01_187_075.png',75,1),(189,'video01_188_078.png',78,1),(190,'video01_189_073.png',73,1),(191,'video01_190_069.png',69,1),(192,'video01_191_073.png',73,1),(193,'video01_192_071.png',71,1),(194,'video01_193_072.png',72,1),(195,'video01_194_073.png',73,1),(196,'video01_195_071.png',71,1),(197,'video01_196_074.png',74,1),(198,'video01_197_075.png',75,1),(199,'video01_198_073.png',73,1),(200,'video01_199_074.png',74,1),(201,'video01_200_073.png',73,1),(202,'video01_201_074.png',74,1),(203,'video01_202_079.png',79,1),(204,'video01_203_078.png',78,1),(205,'video01_204_077.png',77,1),(206,'video01_205_076.png',76,1),(207,'video01_206_081.png',81,1),(208,'video01_207_080.png',80,1),(209,'video01_208_079.png',79,1),(210,'video01_209_081.png',81,1),(211,'video01_210_080.png',80,1),(212,'video01_211_077.png',77,1),(213,'video01_212_076.png',76,1),(214,'video01_213_072.png',72,1),(215,'video01_214_071.png',71,1),(216,'video01_215_074.png',74,1),(217,'video01_216_075.png',75,1),(218,'video01_217_070.png',70,1),(219,'video01_218_069.png',69,1);
/*!40000 ALTER TABLE `Lane_Navigation_Images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lane_Navigation_Models`
--

DROP TABLE IF EXISTS `Lane_Navigation_Models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lane_Navigation_Models` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(255) NOT NULL,
  `r²` float NOT NULL,
  `mse` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lane_Navigation_Models`
--

LOCK TABLES `Lane_Navigation_Models` WRITE;
/*!40000 ALTER TABLE `Lane_Navigation_Models` DISABLE KEYS */;
INSERT INTO `Lane_Navigation_Models` VALUES (1,'xgb_reg.pkl',87.8694,15.7319),(2,'xgb_best.pkl',90.994,11.6796),(4,'lane_navigation_v1.h5',90.221,8.69369);
/*!40000 ALTER TABLE `Lane_Navigation_Models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Object_Detection_Images`
--

DROP TABLE IF EXISTS `Object_Detection_Images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Object_Detection_Images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) NOT NULL,
  `pedestrian` int NOT NULL,
  `red_light` int NOT NULL,
  `green_light` int NOT NULL,
  `stop_sign` int NOT NULL,
  `speed_sign` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Object_Detection_Images`
--

LOCK TABLES `Object_Detection_Images` WRITE;
/*!40000 ALTER TABLE `Object_Detection_Images` DISABLE KEYS */;
/*!40000 ALTER TABLE `Object_Detection_Images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Object_Detection_Models`
--

DROP TABLE IF EXISTS `Object_Detection_Models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Object_Detection_Models` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(255) NOT NULL,
  `precision` float NOT NULL,
  `loss` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Object_Detection_Models`
--

LOCK TABLES `Object_Detection_Models` WRITE;
/*!40000 ALTER TABLE `Object_Detection_Models` DISABLE KEYS */;
/*!40000 ALTER TABLE `Object_Detection_Models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rides`
--

DROP TABLE IF EXISTS `Rides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rides` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Ground` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `car_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Ride_fk0` (`car_id`),
  CONSTRAINT `Ride_fk0` FOREIGN KEY (`car_id`) REFERENCES `Cars` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rides`
--

LOCK TABLES `Rides` WRITE;
/*!40000 ALTER TABLE `Rides` DISABLE KEYS */;
INSERT INTO `Rides` VALUES (1,'laminate flooring',1);
/*!40000 ALTER TABLE `Rides` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-26 17:04:40
