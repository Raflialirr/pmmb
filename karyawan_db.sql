-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: karyawan_db
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `m_jabatan`
--

DROP TABLE IF EXISTS `m_jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_jabatan` (
  `KD_JABATAN` varchar(255) NOT NULL,
  `DESC` varchar(255) DEFAULT NULL,
  `RANK` int(11) DEFAULT NULL,
  PRIMARY KEY (`KD_JABATAN`) USING BTREE,
  KEY `PK1` (`KD_JABATAN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_jabatan`
--

LOCK TABLES `m_jabatan` WRITE;
/*!40000 ALTER TABLE `m_jabatan` DISABLE KEYS */;
INSERT INTO `m_jabatan` VALUES ('50002161','General Manager',1),('50002162','Staf Utama I',2),('50002163','Staf Utama II',3),('50002164','Manager',4),('50002165','Staf Madya I',5),('50002166','Staf Madya II',6),('50002167','Superintendent',7),('50002168','Staf Muda I',9),('50002169','Staf Muda II',10),('50002170','Supervisor',11),('50002171','Staf Pratama I',12),('50002173','Staf Pratama II',13),('50002175','Staf Pratama III',14),('50002176','Pelaksana Utama',15),('50002177','Pelaksana Madya',16),('50002178','Pelaksana Muda',17),('50002179','Pelaksana Pratama',18),('50004426','Ass. Superintendent',8);
/*!40000 ALTER TABLE `m_jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_karyawan`
--

DROP TABLE IF EXISTS `m_karyawan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_karyawan` (
  `NO_BADGE` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA` varchar(255) DEFAULT NULL,
  `SALUTATION` varchar(255) DEFAULT NULL,
  `TEMPAT_LAHIR` varchar(255) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `JK` varchar(255) DEFAULT 'Male',
  `STATUS_KAWIN` varchar(255) DEFAULT 'Nikah',
  `UNIT_KERJA` varchar(255) DEFAULT NULL,
  `KD_JABATAN` varchar(255) DEFAULT NULL,
  `STATUS` varchar(30) DEFAULT 'aktif',
  PRIMARY KEY (`NO_BADGE`),
  KEY `no_badge` (`NO_BADGE`)
) ENGINE=InnoDB AUTO_INCREMENT=3022122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_karyawan`
--

LOCK TABLES `m_karyawan` WRITE;
/*!40000 ALTER TABLE `m_karyawan` DISABLE KEYS */;
INSERT INTO `m_karyawan` VALUES (3022111,'Ronny Sarkasih','Bapak','Bandung','1980-01-08','Male','Nikah','Bagian Rendal Produksi NPK 2','50002167','aktif'),(3022112,'Aditya Gunawan','Bapak','Karawang','1992-01-10','Male','Nikah','Bagian Produksi K1 A','50002161','aktif'),(3022113,'Aditya Firman','Bapak','Bekasi','1972-02-20','Male','Nikah','Bagian Teknologi Informasi','50002166','aktif'),(3022114,'Dendi Nugraha','Bapak','Purwakarta','1989-03-01','Male','Nikah','Bagian Akuntansi','50002163','aktif'),(3022115,'Reksi Firmansyah','Bapak','Purwokerto','1980-08-17','Male','Nikah','Bagian Keuangan','50002164','aktif'),(3022116,'Dinda Ainun','Ibu','Karawang','1984-09-01','Female','Nikah','Bagian Keuangan','50002163','aktif'),(3022117,'Putri Nurul ','ibu','Karawang','1993-01-02','Female','Nikah','Bagian Keuangan','50002171','aktif'),(3022118,'Ferdiansyah','Bapak','Purwakarta','1992-02-01','Male','Nikah','Bagian Akuntansi','50002170','aktif'),(3022119,'Siti Syarifah','Ibu','Karawang','1990-10-02','Female','Nikah','Bagian K3','50002164','aktif'),(3022120,'Saipul Jamil','Bapak','Bekasi','1993-11-01','Male','Nikah','Bagian Teknologi Informasi','50002164','aktif'),(3022121,'Aliando Rizki','Bapak','Karawang','1997-09-07','Male','Nikah','Bagian Teknologi Informasi','50002171','aktif');
/*!40000 ALTER TABLE `m_karyawan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_keluarga`
--

DROP TABLE IF EXISTS `m_keluarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_keluarga` (
  `FAMILY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NO_BADGE` varchar(255) DEFAULT NULL,
  `RELATIVE_ID` varchar(255) DEFAULT NULL,
  `RELATIVE` varchar(255) DEFAULT NULL,
  `NAMA` varchar(255) DEFAULT NULL,
  `GENDER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FAMILY_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_keluarga`
--

LOCK TABLES `m_keluarga` WRITE;
/*!40000 ALTER TABLE `m_keluarga` DISABLE KEYS */;
INSERT INTO `m_keluarga` VALUES (2,'3022111','2','Anak','Dendi Roni','Male'),(3,'3022111','2','Anak','Rian','Male'),(4,'3022112','1','Pasangan','Fitri Nur','Female'),(5,'3022113','1','Pasangan','Nurul Suci','Female'),(6,'3022113','2','Anak','Roni Firmansyah','Male'),(7,'3022113','2','Anak','Jihan Nurul','Female'),(8,'3022113','2','Anak','Ferdian','Male'),(9,'3022114','1','Pasangan','Ayu Azhari','Female'),(10,'3022114','2','Anak','Jihan Azhari','Female'),(11,'3022115','1','Pasangan','Nita Harlita','Female'),(12,'3022116','1','Pasangan','M. Rizki Putra','Male'),(13,'3022116','2','Anak','Asep Nur Rizki','Male'),(14,'3022117','1','Pasangan','Maman Abdul','Male'),(15,'3022117','2','Anak','Rizki Nur Maman','Male'),(16,'3022118','1','Pasangan','Fitria Nur Apipah','Female'),(17,'3022119','1','Pasangan','Dendi Surendi','Male'),(18,'3022119','2','Anak','Priska Surendi','Female'),(19,'3022120','1','Pasangan','Ayu Ting Ting','Female'),(20,'3022120','2','Anak','Nazar','Male'),(21,'3022121','1','Pasangan','Prily Nur Apriani','Female');
/*!40000 ALTER TABLE `m_keluarga` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-30 12:13:36
