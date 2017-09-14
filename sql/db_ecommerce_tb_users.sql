-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_ecommerce
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_users` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `idperson` int(11) NOT NULL,
  `deslogin` varchar(64) NOT NULL,
  `despassword` varchar(256) NOT NULL,
  `inadmin` tinyint(4) NOT NULL DEFAULT '0',
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iduser`),
  KEY `FK_users_persons_idx` (`idperson`),
  CONSTRAINT `fk_users_persons` FOREIGN KEY (`idperson`) REFERENCES `tb_persons` (`idperson`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (1,1,'admin','$2y$12$YlooCyNvyTji8bPRcrfNfOKnVMmZA9ViM2A3IpFjmrpIbp5ovNmga',1,'2017-03-13 03:00:00'),(7,7,'helderpessetti','$2y$12$q/oeLTbPFzYgm97uFjdTLukFGQpvEVOYFBNi8STA1unAzYqSkg6ca',0,'2017-03-15 16:10:27'),(8,8,'hp7web','$2y$12$PuBkvXC5eXWBrXkF91hyh.zt.I7om8mEEqtAmemMvtPbfrDaHs.IO',0,'2017-09-04 23:08:38'),(9,9,'helder@hp7','$2y$12$ldBfNFdrEFdA8vKUiV.fMekY/anzecU4tWoaTBsLmtOTCaNvGWGFe',0,'2017-09-05 04:22:33'),(18,18,'rrrr@rrr.com','$2y$12$YlooCyNvyTji8bPRcrfNfOKnVMmZA9ViM2A3IpFjmrpIbp5ovNmga',1,'2017-09-12 07:05:22'),(19,19,'helder@hp7.com.br','$2y$12$KBqZOGCHFSOP/FZUIaVfZewd8p/6pua3ZolcOIC5QUcVnf1KDkj5e',1,'2017-09-13 03:08:46'),(20,20,'helder@hp7.com.br','$2y$12$wS6HzXEahi.IWORUG11Sne6j5ksbMn1kCzOiih083qUrTb/xg3NOi',1,'2017-09-13 03:08:56'),(21,21,'senha@senha.com','$2y$12$DIt/bO/ibcKJpzhuFB9ZJeMa8Vq.ZL2LHrxacyCSvR26d3Rk8xzNO',0,'2017-09-13 06:08:43'),(22,22,'asdf','$2y$12$euRIB9qbWnJQetFjNortEugrbyCEcoJruqknFBVDyBdiMfpsY15I6',0,'2017-09-13 06:15:59');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-13 21:57:05
