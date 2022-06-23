/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.24-MariaDB : Database - tesis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tesis` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `tesis`;

/*Table structure for table `detalle_ticket` */

DROP TABLE IF EXISTS `detalle_ticket`;

CREATE TABLE `detalle_ticket` (
  `Nro_ticket` int(11) NOT NULL AUTO_INCREMENT,
  `Numero` int(11) NOT NULL,
  `Servicio` int(11) NOT NULL,
  `Cantidad` tinyint(200) NOT NULL,
  `TotalDls` decimal(15,2) NOT NULL,
  `TotalBs` decimal(15,2) NOT NULL,
  PRIMARY KEY (`Nro_ticket`),
  KEY `Numero` (`Numero`),
  KEY `Servicio` (`Servicio`),
  CONSTRAINT `detalle_ticket_ibfk_1` FOREIGN KEY (`Numero`) REFERENCES `ticket` (`Codigo`),
  CONSTRAINT `detalle_ticket_ibfk_2` FOREIGN KEY (`Servicio`) REFERENCES `servicio` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `detalle_ticket` */

/*Table structure for table `rol` */

DROP TABLE IF EXISTS `rol`;

CREATE TABLE `rol` (
  `Rol_id` int(11) NOT NULL,
  `Desc_rol` varchar(252) NOT NULL,
  PRIMARY KEY (`Rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `rol` */

/*Table structure for table `rol_usuario` */

DROP TABLE IF EXISTS `rol_usuario`;

CREATE TABLE `rol_usuario` (
  `Id_Rol` int(11) NOT NULL AUTO_INCREMENT,
  `Rol_id` int(11) DEFAULT NULL,
  `Usuario` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Id_Rol`),
  KEY `Rol_id` (`Rol_id`),
  KEY `Usuario` (`Usuario`),
  CONSTRAINT `Rol_id` FOREIGN KEY (`Rol_id`) REFERENCES `rol` (`Rol_id`),
  CONSTRAINT `Usuario` FOREIGN KEY (`Usuario`) REFERENCES `usuario` (`Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `rol_usuario` */

/*Table structure for table `servicio` */

DROP TABLE IF EXISTS `servicio`;

CREATE TABLE `servicio` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(300) NOT NULL,
  `Precio` decimal(15,2) NOT NULL,
  `Estatus` char(1) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `servicio` */

/*Table structure for table `ticket` */

DROP TABLE IF EXISTS `ticket`;

CREATE TABLE `ticket` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Cliente` varchar(15) NOT NULL,
  `Comentario` varchar(400) DEFAULT NULL,
  `Total` decimal(15,2) NOT NULL,
  `Divisa` decimal(15,2) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `Cliente` (`Cliente`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`Cliente`) REFERENCES `usuario` (`Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `ticket` */

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `Usuario` varchar(15) NOT NULL,
  `Contraseña` varchar(25) NOT NULL,
  `Nombres` varchar(25) NOT NULL,
  `Apellidos` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Telefono` varchar(25) NOT NULL,
  `Estatus` char(1) NOT NULL,
  PRIMARY KEY (`Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `usuario` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
