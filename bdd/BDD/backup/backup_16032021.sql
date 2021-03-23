mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: deepicar
-- ------------------------------------------------------
-- Server version	8.0.23

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
mysqldump: Error: 'Access denied; you need (at least one of) the PROCESS privilege(s) for this operation' when trying to dump tablespaces

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cars`
--

LOCK TABLES `Cars` WRITE;
/*!40000 ALTER TABLE `Cars` DISABLE KEYS */;
INSERT INTO `Cars` VALUES (1,'SunFounder','2.0','N.A'),(2,'SunFounder','2.0','198.162.1.20'),(3,'SunFounder','X','198.162.1.21');
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
) ENGINE=InnoDB AUTO_INCREMENT=669 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lane_Navigation_Images`
--

LOCK TABLES `Lane_Navigation_Images` WRITE;
/*!40000 ALTER TABLE `Lane_Navigation_Images` DISABLE KEYS */;
INSERT INTO `Lane_Navigation_Images` VALUES (1,'video01_000_085.png',85,1),(2,'video01_001_080.png',80,1),(3,'video01_002_077.png',77,1),(4,'video01_003_075.png',75,1),(5,'video01_004_072.png',72,1),(6,'video01_005_073.png',73,1),(7,'video01_006_069.png',69,1),(8,'video01_007_067.png',67,1),(9,'video01_008_070.png',70,1),(10,'video01_009_065.png',65,1),(11,'video01_010_063.png',63,1),(12,'video01_011_062.png',62,1),(13,'video01_012_060.png',60,1),(14,'video01_013_057.png',57,1),(15,'video01_014_055.png',55,1),(16,'video01_015_056.png',56,1),(17,'video01_016_056.png',56,1),(18,'video01_017_061.png',61,1),(19,'video01_018_056.png',56,1),(20,'video01_019_051.png',51,1),(21,'video01_020_056.png',56,1),(22,'video01_021_051.png',51,1),(23,'video01_022_056.png',56,1),(24,'video01_023_055.png',55,1),(25,'video01_024_050.png',50,1),(26,'video01_025_049.png',49,1),(27,'video01_026_054.png',54,1),(28,'video01_027_059.png',59,1),(29,'video01_028_054.png',54,1),(30,'video01_029_049.png',49,1),(31,'video01_030_044.png',44,1),(32,'video01_031_049.png',49,1),(33,'video01_032_049.png',49,1),(34,'video01_033_052.png',52,1),(35,'video01_034_049.png',49,1),(36,'video01_035_048.png',48,1),(37,'video01_036_053.png',53,1),(38,'video01_037_057.png',57,1),(39,'video01_038_053.png',53,1),(40,'video01_039_052.png',52,1),(41,'video01_040_054.png',54,1),(42,'video01_041_056.png',56,1),(43,'video01_042_057.png',57,1),(44,'video01_043_060.png',60,1),(45,'video01_044_056.png',56,1),(46,'video01_045_057.png',57,1),(47,'video01_046_062.png',62,1),(48,'video01_047_061.png',61,1),(49,'video01_048_064.png',64,1),(50,'video01_049_065.png',65,1),(51,'video01_050_070.png',70,1),(52,'video01_051_071.png',71,1),(53,'video01_052_076.png',76,1),(54,'video01_053_077.png',77,1),(55,'video01_054_075.png',75,1),(56,'video01_055_078.png',78,1),(57,'video01_056_073.png',73,1),(58,'video01_057_077.png',77,1),(59,'video01_058_074.png',74,1),(60,'video01_059_076.png',76,1),(61,'video01_060_081.png',81,1),(62,'video01_061_082.png',82,1),(63,'video01_062_080.png',80,1),(64,'video01_063_080.png',80,1),(65,'video01_064_080.png',80,1),(66,'video01_065_081.png',81,1),(67,'video01_066_079.png',79,1),(68,'video01_067_084.png',84,1),(69,'video01_068_086.png',86,1),(70,'video01_069_081.png',81,1),(71,'video01_070_077.png',77,1),(72,'video01_071_082.png',82,1),(73,'video01_072_077.png',77,1),(74,'video01_073_079.png',79,1),(75,'video01_074_080.png',80,1),(76,'video01_075_080.png',80,1),(77,'video01_076_085.png',85,1),(78,'video01_077_080.png',80,1),(79,'video01_078_079.png',79,1),(80,'video01_079_080.png',80,1),(81,'video01_080_075.png',75,1),(82,'video01_081_070.png',70,1),(83,'video01_082_071.png',71,1),(84,'video01_083_076.png',76,1),(85,'video01_084_071.png',71,1),(86,'video01_085_072.png',72,1),(87,'video01_086_073.png',73,1),(88,'video01_087_070.png',70,1),(89,'video01_088_071.png',71,1),(90,'video01_089_072.png',72,1),(91,'video01_090_077.png',77,1),(92,'video01_091_073.png',73,1),(93,'video01_092_078.png',78,1),(94,'video01_093_077.png',77,1),(95,'video01_094_082.png',82,1),(96,'video01_095_077.png',77,1),(97,'video01_096_082.png',82,1),(98,'video01_097_086.png',86,1),(99,'video01_098_088.png',88,1),(100,'video01_099_089.png',89,1),(101,'video01_100_084.png',84,1),(102,'video01_101_081.png',81,1),(103,'video01_102_086.png',86,1),(104,'video01_103_081.png',81,1),(105,'video01_104_086.png',86,1),(106,'video01_105_090.png',90,1),(107,'video01_106_088.png',88,1),(108,'video01_107_084.png',84,1),(109,'video01_108_081.png',81,1),(110,'video01_109_086.png',86,1),(111,'video01_110_081.png',81,1),(112,'video01_111_086.png',86,1),(113,'video01_112_085.png',85,1),(114,'video01_113_089.png',89,1),(115,'video01_114_084.png',84,1),(116,'video01_115_079.png',79,1),(117,'video01_116_074.png',74,1),(118,'video01_117_073.png',73,1),(119,'video01_118_078.png',78,1),(120,'video01_119_073.png',73,1),(121,'video01_120_070.png',70,1),(122,'video01_121_072.png',72,1),(123,'video01_122_077.png',77,1),(124,'video01_123_079.png',79,1),(125,'video01_124_083.png',83,1),(126,'video01_125_078.png',78,1),(127,'video01_126_083.png',83,1),(128,'video01_127_079.png',79,1),(129,'video01_128_084.png',84,1),(130,'video01_129_080.png',80,1),(131,'video01_130_079.png',79,1),(132,'video01_131_084.png',84,1),(133,'video01_132_089.png',89,1),(134,'video01_133_094.png',94,1),(135,'video01_134_093.png',93,1),(136,'video01_135_098.png',98,1),(137,'video01_136_103.png',103,1),(138,'video01_137_102.png',102,1),(139,'video01_138_101.png',101,1),(140,'video01_139_100.png',100,1),(141,'video01_140_099.png',99,1),(142,'video01_141_098.png',98,1),(143,'video01_142_097.png',97,1),(144,'video01_143_092.png',92,1),(145,'video01_144_091.png',91,1),(146,'video01_145_086.png',86,1),(147,'video01_146_081.png',81,1),(148,'video01_147_076.png',76,1),(149,'video01_148_073.png',73,1),(150,'video01_149_068.png',68,1),(151,'video01_150_063.png',63,1),(152,'video01_151_068.png',68,1),(153,'video01_152_069.png',69,1),(154,'video01_153_068.png',68,1),(155,'video01_154_070.png',70,1),(156,'video01_155_065.png',65,1),(157,'video01_156_060.png',60,1),(158,'video01_157_063.png',63,1),(159,'video01_158_068.png',68,1),(160,'video01_159_064.png',64,1),(161,'video01_160_063.png',63,1),(162,'video01_161_063.png',63,1),(163,'video01_162_066.png',66,1),(164,'video01_163_065.png',65,1),(165,'video01_164_060.png',60,1),(166,'video01_165_065.png',65,1),(167,'video01_166_063.png',63,1),(168,'video01_167_062.png',62,1),(169,'video01_168_063.png',63,1),(170,'video01_169_062.png',62,1),(171,'video01_170_060.png',60,1),(172,'video01_171_063.png',63,1),(173,'video01_172_065.png',65,1),(174,'video01_173_065.png',65,1),(175,'video01_174_065.png',65,1),(176,'video01_175_065.png',65,1),(177,'video01_176_063.png',63,1),(178,'video01_177_068.png',68,1),(179,'video01_178_063.png',63,1),(180,'video01_179_064.png',64,1),(181,'video01_180_062.png',62,1),(182,'video01_181_065.png',65,1),(183,'video01_182_065.png',65,1),(184,'video01_183_065.png',65,1),(185,'video01_184_063.png',63,1),(186,'video01_185_068.png',68,1),(187,'video01_186_071.png',71,1),(188,'video01_187_075.png',75,1),(189,'video01_188_078.png',78,1),(190,'video01_189_073.png',73,1),(191,'video01_190_069.png',69,1),(192,'video01_191_073.png',73,1),(193,'video01_192_071.png',71,1),(194,'video01_193_072.png',72,1),(195,'video01_194_073.png',73,1),(196,'video01_195_071.png',71,1),(197,'video01_196_074.png',74,1),(198,'video01_197_075.png',75,1),(199,'video01_198_073.png',73,1),(200,'video01_199_074.png',74,1),(201,'video01_200_073.png',73,1),(202,'video01_201_074.png',74,1),(203,'video01_202_079.png',79,1),(204,'video01_203_078.png',78,1),(205,'video01_204_077.png',77,1),(206,'video01_205_076.png',76,1),(207,'video01_206_081.png',81,1),(208,'video01_207_080.png',80,1),(209,'video01_208_079.png',79,1),(210,'video01_209_081.png',81,1),(211,'video01_210_080.png',80,1),(212,'video01_211_077.png',77,1),(213,'video01_212_076.png',76,1),(214,'video01_213_072.png',72,1),(215,'video01_214_071.png',71,1),(216,'video01_215_074.png',74,1),(217,'video01_216_075.png',75,1),(218,'video01_217_070.png',70,1),(219,'video01_218_069.png',69,1),(220,'video02_000_085.png',85,2),(221,'video02_001_080.png',80,2),(222,'video02_002_085.png',85,2),(223,'video02_003_090.png',90,2),(224,'video02_004_085.png',85,2),(225,'video02_005_080.png',80,2),(226,'video02_006_075.png',75,2),(227,'video02_007_070.png',70,2),(228,'video02_008_075.png',75,2),(229,'video02_009_070.png',70,2),(230,'video02_010_068.png',68,2),(231,'video02_011_066.png',66,2),(232,'video02_012_065.png',65,2),(233,'video02_013_063.png',63,2),(234,'video02_014_064.png',64,2),(235,'video02_015_069.png',69,2),(236,'video02_016_064.png',64,2),(237,'video02_017_069.png',69,2),(238,'video02_018_065.png',65,2),(239,'video02_019_061.png',61,2),(240,'video02_020_064.png',64,2),(241,'video02_021_059.png',59,2),(242,'video02_022_062.png',62,2),(243,'video02_023_061.png',61,2),(244,'video02_024_059.png',59,2),(245,'video02_025_058.png',58,2),(246,'video02_026_061.png',61,2),(247,'video02_027_056.png',56,2),(248,'video02_028_058.png',58,2),(249,'video02_029_053.png',53,2),(250,'video02_030_052.png',52,2),(251,'video02_031_053.png',53,2),(252,'video02_032_053.png',53,2),(253,'video02_033_050.png',50,2),(254,'video02_034_049.png',49,2),(255,'video02_035_054.png',54,2),(256,'video02_036_053.png',53,2),(257,'video02_037_058.png',58,2),(258,'video02_038_063.png',63,2),(259,'video02_039_068.png',68,2),(260,'video02_040_073.png',73,2),(261,'video02_041_072.png',72,2),(262,'video02_042_071.png',71,2),(263,'video02_043_070.png',70,2),(264,'video02_044_069.png',69,2),(265,'video02_045_068.png',68,2),(266,'video02_046_063.png',63,2),(267,'video02_047_062.png',62,2),(268,'video02_048_061.png',61,2),(269,'video02_049_056.png',56,2),(270,'video02_050_052.png',52,2),(271,'video02_051_053.png',53,2),(272,'video02_052_053.png',53,2),(273,'video02_053_053.png',53,2),(274,'video02_054_058.png',58,2),(275,'video02_055_057.png',57,2),(276,'video02_056_056.png',56,2),(277,'video02_057_061.png',61,2),(278,'video02_058_060.png',60,2),(279,'video02_059_065.png',65,2),(280,'video02_060_064.png',64,2),(281,'video02_061_069.png',69,2),(282,'video02_062_068.png',68,2),(283,'video02_063_067.png',67,2),(284,'video02_064_072.png',72,2),(285,'video02_065_077.png',77,2),(286,'video02_066_082.png',82,2),(287,'video02_067_081.png',81,2),(288,'video02_068_080.png',80,2),(289,'video02_069_085.png',85,2),(290,'video02_070_084.png',84,2),(291,'video02_071_089.png',89,2),(292,'video02_072_094.png',94,2),(293,'video02_073_099.png',99,2),(294,'video02_074_098.png',98,2),(295,'video02_075_093.png',93,2),(296,'video02_076_092.png',92,2),(297,'video02_077_091.png',91,2),(298,'video02_078_096.png',96,2),(299,'video02_079_101.png',101,2),(300,'video02_080_106.png',106,2),(301,'video02_081_105.png',105,2),(302,'video02_082_110.png',110,2),(303,'video02_083_105.png',105,2),(304,'video02_084_100.png',100,2),(305,'video02_085_105.png',105,2),(306,'video02_086_110.png',110,2),(307,'video02_087_115.png',115,2),(308,'video02_088_110.png',110,2),(309,'video02_089_105.png',105,2),(310,'video02_090_100.png',100,2),(311,'video02_091_105.png',105,2),(312,'video02_092_110.png',110,2),(313,'video02_093_109.png',109,2),(314,'video02_094_114.png',114,2),(315,'video02_095_113.png',113,2),(316,'video02_096_112.png',112,2),(317,'video02_097_111.png',111,2),(318,'video02_098_110.png',110,2),(319,'video02_099_109.png',109,2),(320,'video02_100_108.png',108,2),(321,'video02_101_107.png',107,2),(322,'video02_102_106.png',106,2),(323,'video02_103_105.png',105,2),(324,'video02_104_104.png',104,2),(325,'video02_105_103.png',103,2),(326,'video02_106_102.png',102,2),(327,'video02_107_101.png',101,2),(328,'video02_108_100.png',100,2),(329,'video02_109_099.png',99,2),(330,'video02_110_098.png',98,2),(331,'video02_111_097.png',97,2),(332,'video02_112_102.png',102,2),(333,'video02_113_107.png',107,2),(334,'video02_114_112.png',112,2),(335,'video02_115_107.png',107,2),(336,'video02_116_102.png',102,2),(337,'video02_117_107.png',107,2),(338,'video02_118_102.png',102,2),(339,'video02_119_104.png',104,2),(340,'video02_120_099.png',99,2),(341,'video02_121_104.png',104,2),(342,'video02_122_109.png',109,2),(343,'video02_123_108.png',108,2),(344,'video02_124_107.png',107,2),(345,'video02_125_107.png',107,2),(346,'video02_126_107.png',107,2),(347,'video02_127_106.png',106,2),(348,'video02_128_106.png',106,2),(349,'video02_129_105.png',105,2),(350,'video02_130_104.png',104,2),(351,'video02_131_104.png',104,2),(352,'video02_132_103.png',103,2),(353,'video02_133_103.png',103,2),(354,'video02_134_103.png',103,2),(355,'video02_135_102.png',102,2),(356,'video02_136_102.png',102,2),(357,'video02_137_102.png',102,2),(358,'video02_138_102.png',102,2),(359,'video02_139_101.png',101,2),(360,'video02_140_101.png',101,2),(361,'video02_141_101.png',101,2),(362,'video02_142_100.png',100,2),(363,'video02_143_099.png',99,2),(364,'video02_144_098.png',98,2),(365,'video02_145_097.png',97,2),(366,'video02_146_096.png',96,2),(367,'video02_147_095.png',95,2),(368,'video02_148_090.png',90,2),(369,'video02_149_089.png',89,2),(370,'video02_150_088.png',88,2),(371,'video02_151_086.png',86,2),(372,'video02_152_081.png',81,2),(373,'video02_153_080.png',80,2),(374,'video02_154_085.png',85,2),(375,'video02_155_084.png',84,2),(376,'video02_156_083.png',83,2),(377,'video02_157_082.png',82,2),(378,'video02_158_081.png',81,2),(379,'video02_159_080.png',80,2),(380,'video02_160_079.png',79,2),(381,'video02_161_078.png',78,2),(382,'video02_162_078.png',78,2),(383,'video02_163_078.png',78,2),(384,'video02_164_077.png',77,2),(385,'video02_165_076.png',76,2),(386,'video02_166_075.png',75,2),(387,'video02_167_075.png',75,2),(388,'video02_168_074.png',74,2),(389,'video02_169_074.png',74,2),(390,'video02_170_073.png',73,2),(391,'video02_171_073.png',73,2),(392,'video02_172_072.png',72,2),(393,'video02_173_072.png',72,2),(394,'video02_174_071.png',71,2),(395,'video02_175_070.png',70,2),(396,'video02_176_071.png',71,2),(397,'video02_177_070.png',70,2),(398,'video02_178_071.png',71,2),(399,'video02_179_070.png',70,2),(400,'video02_180_075.png',75,2),(401,'video02_181_080.png',80,2),(402,'video02_182_079.png',79,2),(403,'video02_183_078.png',78,2),(404,'video02_184_078.png',78,2),(405,'video02_185_073.png',73,2),(406,'video02_186_072.png',72,2),(407,'video02_187_071.png',71,2),(408,'video02_188_070.png',70,2),(409,'video02_189_071.png',71,2),(410,'video02_190_072.png',72,2),(411,'video02_191_073.png',73,2),(412,'video02_192_074.png',74,2),(413,'video02_193_074.png',74,2),(414,'video02_194_074.png',74,2),(415,'video02_195_074.png',74,2),(416,'video02_196_069.png',69,2),(417,'video02_197_069.png',69,2),(418,'video02_198_070.png',70,2),(419,'video02_199_071.png',71,2),(420,'video02_200_076.png',76,2),(421,'video02_201_081.png',81,2),(422,'video02_202_076.png',76,2),(423,'video02_203_071.png',71,2),(424,'video02_204_076.png',76,2),(425,'video02_205_075.png',75,2),(426,'video02_206_074.png',74,2),(427,'video02_207_079.png',79,2),(428,'video02_208_081.png',81,2),(429,'video02_209_086.png',86,2),(430,'video02_210_091.png',91,2),(431,'video02_211_096.png',96,2),(432,'video02_212_101.png',101,2),(433,'video02_213_103.png',103,2),(434,'video02_214_098.png',98,2),(435,'video02_215_093.png',93,2),(436,'video02_216_088.png',88,2),(437,'video02_217_090.png',90,2),(438,'video02_218_095.png',95,2),(439,'video02_219_090.png',90,2),(440,'video02_220_091.png',91,2),(441,'video02_221_086.png',86,2),(442,'video03_000_086.png',86,3),(443,'video03_001_085.png',85,3),(444,'video03_002_085.png',85,3),(445,'video03_003_090.png',90,3),(446,'video03_004_095.png',95,3),(447,'video03_005_090.png',90,3),(448,'video03_006_089.png',89,3),(449,'video03_007_094.png',94,3),(450,'video03_008_093.png',93,3),(451,'video03_009_092.png',92,3),(452,'video03_010_091.png',91,3),(453,'video03_011_090.png',90,3),(454,'video03_012_089.png',89,3),(455,'video03_013_088.png',88,3),(456,'video03_014_089.png',89,3),(457,'video03_015_090.png',90,3),(458,'video03_016_091.png',91,3),(459,'video03_017_092.png',92,3),(460,'video03_018_092.png',92,3),(461,'video03_019_093.png',93,3),(462,'video03_020_094.png',94,3),(463,'video03_021_095.png',95,3),(464,'video03_022_096.png',96,3),(465,'video03_023_097.png',97,3),(466,'video03_024_098.png',98,3),(467,'video03_025_099.png',99,3),(468,'video03_026_100.png',100,3),(469,'video03_027_095.png',95,3),(470,'video03_028_096.png',96,3),(471,'video03_029_097.png',97,3),(472,'video03_030_098.png',98,3),(473,'video03_031_099.png',99,3),(474,'video03_032_100.png',100,3),(475,'video03_033_101.png',101,3),(476,'video03_034_102.png',102,3),(477,'video03_035_103.png',103,3),(478,'video03_036_104.png',104,3),(479,'video03_037_105.png',105,3),(480,'video03_038_106.png',106,3),(481,'video03_039_107.png',107,3),(482,'video03_040_108.png',108,3),(483,'video03_041_109.png',109,3),(484,'video03_042_110.png',110,3),(485,'video03_043_111.png',111,3),(486,'video03_044_112.png',112,3),(487,'video03_045_113.png',113,3),(488,'video03_046_114.png',114,3),(489,'video03_047_115.png',115,3),(490,'video03_048_116.png',116,3),(491,'video03_049_117.png',117,3),(492,'video03_050_118.png',118,3),(493,'video03_051_119.png',119,3),(494,'video03_052_120.png',120,3),(495,'video03_053_121.png',121,3),(496,'video03_054_122.png',122,3),(497,'video03_055_123.png',123,3),(498,'video03_056_124.png',124,3),(499,'video03_057_125.png',125,3),(500,'video03_058_126.png',126,3),(501,'video03_059_127.png',127,3),(502,'video03_060_128.png',128,3),(503,'video03_061_129.png',129,3),(504,'video03_062_130.png',130,3),(505,'video03_063_131.png',131,3),(506,'video03_064_132.png',132,3),(507,'video03_065_133.png',133,3),(508,'video03_066_134.png',134,3),(509,'video03_067_135.png',135,3),(510,'video03_068_136.png',136,3),(511,'video03_069_137.png',137,3),(512,'video03_070_138.png',138,3),(513,'video03_071_139.png',139,3),(514,'video03_072_140.png',140,3),(515,'video03_073_141.png',141,3),(516,'video03_074_142.png',142,3),(517,'video03_075_143.png',143,3),(518,'video03_076_144.png',144,3),(519,'video03_077_145.png',145,3),(520,'video03_078_146.png',146,3),(521,'video03_079_147.png',147,3),(522,'video03_080_148.png',148,3),(523,'video03_081_149.png',149,3),(524,'video03_082_150.png',150,3),(525,'video03_083_151.png',151,3),(526,'video03_084_152.png',152,3),(527,'video03_085_153.png',153,3),(528,'video03_086_152.png',152,3),(529,'video03_087_153.png',153,3),(530,'video03_088_152.png',152,3),(531,'video03_089_151.png',151,3),(532,'video03_090_150.png',150,3),(533,'video03_091_150.png',150,3),(534,'video03_092_149.png',149,3),(535,'video03_093_150.png',150,3),(536,'video03_094_149.png',149,3),(537,'video03_095_148.png',148,3),(538,'video03_096_149.png',149,3),(539,'video03_097_150.png',150,3),(540,'video03_098_145.png',145,3),(541,'video03_099_140.png',140,3),(542,'video03_100_135.png',135,3),(543,'video03_101_130.png',130,3),(544,'video03_102_125.png',125,3),(545,'video03_103_120.png',120,3),(546,'video03_104_119.png',119,3),(547,'video03_105_118.png',118,3),(548,'video03_106_117.png',117,3),(549,'video03_107_116.png',116,3),(550,'video03_108_115.png',115,3),(551,'video03_109_114.png',114,3),(552,'video03_110_113.png',113,3),(553,'video03_111_112.png',112,3),(554,'video03_112_111.png',111,3),(555,'video03_113_110.png',110,3),(556,'video03_114_105.png',105,3),(557,'video03_115_100.png',100,3),(558,'video03_116_095.png',95,3),(559,'video03_117_090.png',90,3),(560,'video03_118_093.png',93,3),(561,'video03_119_094.png',94,3),(562,'video03_120_095.png',95,3),(563,'video03_121_096.png',96,3),(564,'video03_122_091.png',91,3),(565,'video03_123_092.png',92,3),(566,'video03_124_093.png',93,3),(567,'video03_125_094.png',94,3),(568,'video03_126_095.png',95,3),(569,'video03_127_096.png',96,3),(570,'video03_128_097.png',97,3),(571,'video03_129_098.png',98,3),(572,'video03_130_099.png',99,3),(573,'video03_131_094.png',94,3),(574,'video03_132_095.png',95,3),(575,'video03_133_096.png',96,3),(576,'video03_134_097.png',97,3),(577,'video03_135_098.png',98,3),(578,'video03_136_099.png',99,3),(579,'video03_137_100.png',100,3),(580,'video03_138_101.png',101,3),(581,'video03_139_102.png',102,3),(582,'video03_140_103.png',103,3),(583,'video03_141_104.png',104,3),(584,'video03_142_105.png',105,3),(585,'video03_143_106.png',106,3),(586,'video03_144_107.png',107,3),(587,'video03_145_108.png',108,3),(588,'video03_146_109.png',109,3),(589,'video03_147_110.png',110,3),(590,'video03_148_111.png',111,3),(591,'video03_149_112.png',112,3),(592,'video03_150_113.png',113,3),(593,'video03_151_114.png',114,3),(594,'video03_152_115.png',115,3),(595,'video03_153_116.png',116,3),(596,'video03_154_117.png',117,3),(597,'video03_155_118.png',118,3),(598,'video03_156_119.png',119,3),(599,'video03_157_120.png',120,3),(600,'video03_158_121.png',121,3),(601,'video03_159_122.png',122,3),(602,'video03_160_123.png',123,3),(603,'video03_161_124.png',124,3),(604,'video03_162_125.png',125,3),(605,'video03_163_126.png',126,3),(606,'video03_164_127.png',127,3),(607,'video03_165_128.png',128,3),(608,'video03_166_129.png',129,3),(609,'video03_167_130.png',130,3),(610,'video03_168_131.png',131,3),(611,'video03_169_130.png',130,3),(612,'video03_170_129.png',129,3),(613,'video03_171_128.png',128,3),(614,'video03_172_128.png',128,3),(615,'video03_173_129.png',129,3),(616,'video03_174_130.png',130,3),(617,'video03_175_131.png',131,3),(618,'video03_176_130.png',130,3),(619,'video03_177_130.png',130,3),(620,'video03_178_131.png',131,3),(621,'video03_179_130.png',130,3),(622,'video03_180_131.png',131,3),(623,'video03_181_130.png',130,3),(624,'video03_182_131.png',131,3),(625,'video03_183_130.png',130,3),(626,'video03_184_130.png',130,3),(627,'video03_185_129.png',129,3),(628,'video03_186_130.png',130,3),(629,'video03_187_129.png',129,3),(630,'video03_188_130.png',130,3),(631,'video03_189_131.png',131,3),(632,'video03_190_130.png',130,3),(633,'video03_191_131.png',131,3),(634,'video03_192_132.png',132,3),(635,'video03_193_133.png',133,3),(636,'video03_194_132.png',132,3),(637,'video03_195_132.png',132,3),(638,'video03_196_131.png',131,3),(639,'video03_197_132.png',132,3),(640,'video03_198_133.png',133,3),(641,'video03_199_134.png',134,3),(642,'video03_200_135.png',135,3),(643,'video03_201_136.png',136,3),(644,'video03_202_137.png',137,3),(645,'video03_203_136.png',136,3),(646,'video03_204_135.png',135,3),(647,'video03_205_134.png',134,3),(648,'video03_206_133.png',133,3),(649,'video03_207_132.png',132,3),(650,'video03_208_131.png',131,3),(651,'video03_209_130.png',130,3),(652,'video03_210_130.png',130,3),(653,'video03_211_129.png',129,3),(654,'video03_212_129.png',129,3),(655,'video03_213_128.png',128,3),(656,'video03_214_127.png',127,3),(657,'video03_215_126.png',126,3),(658,'video03_216_125.png',125,3),(659,'video03_217_126.png',126,3),(660,'video03_218_121.png',121,3),(661,'video03_219_122.png',122,3),(662,'video03_220_123.png',123,3),(663,'video03_221_118.png',118,3),(664,'video03_222_115.png',115,3),(665,'video03_223_110.png',110,3),(666,'video03_224_111.png',111,3),(667,'video03_225_106.png',106,3),(668,'video03_226_101.png',101,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lane_Navigation_Models`
--

LOCK TABLES `Lane_Navigation_Models` WRITE;
/*!40000 ALTER TABLE `Lane_Navigation_Models` DISABLE KEYS */;
INSERT INTO `Lane_Navigation_Models` VALUES (1,'xgb_reg.pkl',95.3623,30.1147),(2,'xgb_best.pkl',97.2817,17.6514),(3,'lane_navigation_v1.h5',97.7049,15.6051);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rides`
--

LOCK TABLES `Rides` WRITE;
/*!40000 ALTER TABLE `Rides` DISABLE KEYS */;
INSERT INTO `Rides` VALUES (1,'laminate flooring',1),(2,'vinyl floor',2),(3,'vinyl floor',2);
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

-- Dump completed on 2021-03-16 17:35:38
