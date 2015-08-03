-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2015 at 12:10 PM
-- Server version: 5.5.38
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vehicledb`
--
CREATE DATABASE IF NOT EXISTS `vehicledb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `vehicledb`;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_drive`
--

CREATE TABLE IF NOT EXISTS `vrs_drive` (
  `ID` varchar(32) NOT NULL DEFAULT '',
  `START_DATE_TIME` date DEFAULT NULL,
  `START_ODOMETER` float(7,1) DEFAULT NULL,
  `END_DATE_TIME` date DEFAULT NULL,
  `END_ODOMETER` float(7,1) DEFAULT NULL,
  `FROM` varchar(15) DEFAULT NULL,
  `TO` varchar(15) DEFAULT NULL,
  `IS_SHEDULED` enum('YES','NO') DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `INSERT_USER` varchar(32) DEFAULT NULL,
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `UPDATE_USER` varchar(32) DEFAULT NULL,
  `UPDATE_DATE_TIME` datetime DEFAULT NULL,
  `vrs_vehicle_ID` varchar(32) NOT NULL,
  `vrs_driver_ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_vrs_drive_vrs_vehicle1_idx` (`vrs_vehicle_ID`),
  KEY `fk_vrs_drive_vrs_driver1_idx` (`vrs_driver_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_driver`
--

CREATE TABLE IF NOT EXISTS `vrs_driver` (
  `ID` varchar(32) NOT NULL DEFAULT '',
  `FULL_NAME` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(32) DEFAULT NULL,
  `LAST_NAME` varchar(32) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(15) DEFAULT NULL,
  `MOBILE1` varchar(15) DEFAULT NULL,
  `MOBILE2` varchar(15) DEFAULT NULL,
  `IMAGE` blob,
  `LICENSE_TYPE` varchar(15) DEFAULT NULL,
  `LICENSE_NUMBER` varchar(32) DEFAULT NULL,
  `LICENSE_IMAGE` blob,
  `LICENSE_ISSUED_DATE` date DEFAULT NULL,
  `LICENSE_EXPIRY_DATE` date DEFAULT NULL,
  `JOB_TYPE` set('Temporary','Permonent','Contract') DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `INSERT_USER` varchar(32) DEFAULT NULL,
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `UPDATE_USER` varchar(32) DEFAULT NULL,
  `UPDATE_DATE_TIME` datetime DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_expense`
--

CREATE TABLE IF NOT EXISTS `vrs_expense` (
  `ID` varchar(32) NOT NULL DEFAULT '',
  `AMOUNT` float(7,1) DEFAULT NULL,
  `DATE_TIME` date DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `INSERT_USER` varchar(32) DEFAULT NULL,
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `UPDATE_USER` varchar(32) DEFAULT NULL,
  `UPDATE_DATE_TIME` datetime DEFAULT NULL,
  `vrs_vehicle_ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_vrs_expense_vrs_vehicle1_idx` (`vrs_vehicle_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_fuel`
--

CREATE TABLE IF NOT EXISTS `vrs_fuel` (
  `ID` varchar(32) NOT NULL DEFAULT '',
  `AMOUNT` float(7,1) DEFAULT NULL,
  `VOLUME` float(5,1) DEFAULT NULL,
  `ODOMETER` float(7,1) DEFAULT NULL,
  `DATE_TIME` date DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `INSERT_USER` varchar(32) DEFAULT NULL,
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `UPDATE_USER` varchar(32) DEFAULT NULL,
  `UPDATE_DATE_TIME` datetime DEFAULT NULL,
  `vrs_vehicle_ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_vrs_fuel_vrs_vehicle1_idx` (`vrs_vehicle_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_insurance`
--

CREATE TABLE IF NOT EXISTS `vrs_insurance` (
  `ID` varchar(32) NOT NULL,
  `POLICY_NUMBER` varchar(32) DEFAULT NULL,
  `COMPANY` varchar(32) DEFAULT NULL,
  `OWNER_NAME` varchar(32) DEFAULT NULL,
  `OWNER_ADDRESS` varchar(32) DEFAULT NULL,
  `FROM_DATE` datetime DEFAULT NULL,
  `TO_DATE` datetime DEFAULT NULL,
  `ISSUE_DATE` datetime DEFAULT NULL,
  `IMAGE` blob,
  `STATUS` tinyint(4) DEFAULT NULL,
  `INSERT_USER` varchar(32) DEFAULT NULL,
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `UPDATE_USER` varchar(32) DEFAULT NULL,
  `UPDATE_DATE_TIME` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `vrs_vehicle_ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `POLICY_NUMBER_UNIQUE` (`POLICY_NUMBER`),
  KEY `fk_vrs_insurance_vrs_vehicle_idx` (`vrs_vehicle_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_license`
--

CREATE TABLE IF NOT EXISTS `vrs_license` (
  `ID` varchar(32) NOT NULL DEFAULT '',
  `LICENSE_NUMBER` varchar(64) DEFAULT NULL,
  `VALIDITY_PERIOD` varchar(64) DEFAULT NULL,
  `CLASS` varchar(64) DEFAULT NULL,
  `OWNER_NAME` varchar(64) DEFAULT NULL,
  `UNLADEN_WEIGHT` float(8,1) DEFAULT NULL,
  `SEATS` int(11) DEFAULT NULL,
  `ANNUAL_FEE` float(6,1) DEFAULT NULL,
  `ARREARS` float(6,1) DEFAULT NULL,
  `ENV_CONTROL_LEVY` float(6,1) DEFAULT NULL,
  `TOTAL` float(6,1) DEFAULT NULL,
  `VALID_FROM` date DEFAULT NULL,
  `VALID_TO` date DEFAULT NULL,
  `ISSUE_DATE` date DEFAULT NULL,
  `PROVINCE` varchar(64) DEFAULT NULL,
  `EMISSION_TEST_NUMBER` varchar(64) DEFAULT NULL,
  `EMISSION_TEST_IMAGE` blob,
  `LICENSE_IMAGE` blob,
  `STATUS` tinyint(4) DEFAULT NULL,
  `INSERT_USER` varchar(32) DEFAULT NULL,
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `UPDATE_USER` varchar(32) DEFAULT NULL,
  `UPDATE_DATE_TIME` datetime DEFAULT NULL,
  `vrs_vehicle_ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_vrs_license_vrs_vehicle1_idx` (`vrs_vehicle_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_place`
--

CREATE TABLE IF NOT EXISTS `vrs_place` (
  `ID` varchar(32) NOT NULL DEFAULT '',
  `ARRIVAL_DATE_TIME` date DEFAULT NULL,
  `ODOMETER` float(7,1) DEFAULT NULL,
  `DEPARTURE_DATE_TIME` date DEFAULT NULL,
  `JOB_DESCRIPTION` varchar(255) DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `INSERT_USER` varchar(32) DEFAULT NULL,
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `UPDATE_USER` varchar(32) DEFAULT NULL,
  `UPDATE_DATE_TIME` datetime DEFAULT NULL,
  `vrs_drive_ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_vrs_place_vrs_drive1_idx` (`vrs_drive_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_repair`
--

CREATE TABLE IF NOT EXISTS `vrs_repair` (
  `ID` varchar(32) NOT NULL DEFAULT '',
  `DATE_TIME` date DEFAULT NULL,
  `GARAGE_NAME` varchar(100) DEFAULT NULL,
  `REPAIR TYPE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `INVOICE_IMAGE` blob,
  `STATUS` tinyint(4) DEFAULT NULL,
  `INSERT_USER` varchar(32) DEFAULT NULL,
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `UPDATE_USER` varchar(32) DEFAULT NULL,
  `UPDATE_DATE_TIME` datetime DEFAULT NULL,
  `vrs_vehicle_ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_vrs_repair_vrs_vehicle1_idx` (`vrs_vehicle_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_repair_has_vrs_spare_part`
--

CREATE TABLE IF NOT EXISTS `vrs_repair_has_vrs_spare_part` (
  `vrs_repair_ID` varchar(32) NOT NULL,
  `vrs_spare_part_ID` varchar(32) NOT NULL,
  PRIMARY KEY (`vrs_repair_ID`,`vrs_spare_part_ID`),
  KEY `fk_vrs_repair_has_vrs_spare_part_vrs_spare_part1_idx` (`vrs_spare_part_ID`),
  KEY `fk_vrs_repair_has_vrs_spare_part_vrs_repair1_idx` (`vrs_repair_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_service`
--

CREATE TABLE IF NOT EXISTS `vrs_service` (
  `ID` varchar(32) NOT NULL,
  `METER_READING` varchar(8) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `NEXT_METER_READING` varchar(8) DEFAULT NULL,
  `NEXT_DATE` date DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `INVOICE_IMAGE` blob,
  `STATUS` tinyint(4) DEFAULT NULL,
  `INSERT_USER` varchar(32) DEFAULT NULL,
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `UPDATE_USER` varchar(32) DEFAULT NULL,
  `UPDATE_DATE_TIME` datetime DEFAULT NULL,
  `vrs_vehicle_ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_vrs_service_vrs_vehicle1_idx` (`vrs_vehicle_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_service_task`
--

CREATE TABLE IF NOT EXISTS `vrs_service_task` (
  `ID` varchar(32) NOT NULL DEFAULT '',
  `NAME` varchar(64) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `INSERT_USER` varchar(32) DEFAULT NULL,
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `UPDATE_USER` varchar(32) DEFAULT NULL,
  `UPDATE_DATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_service_task_has_vrs_service`
--

CREATE TABLE IF NOT EXISTS `vrs_service_task_has_vrs_service` (
  `vrs_service_task_ID` varchar(32) NOT NULL,
  `vrs_service_ID` varchar(32) NOT NULL,
  PRIMARY KEY (`vrs_service_task_ID`,`vrs_service_ID`),
  KEY `fk_vrs_service_task_has_vrs_service_vrs_service1_idx` (`vrs_service_ID`),
  KEY `fk_vrs_service_task_has_vrs_service_vrs_service_task1_idx` (`vrs_service_task_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_service_task_has_vrs_spare_part`
--

CREATE TABLE IF NOT EXISTS `vrs_service_task_has_vrs_spare_part` (
  `vrs_service_task_ID` varchar(32) NOT NULL,
  `vrs_spare_part_ID` varchar(32) NOT NULL,
  PRIMARY KEY (`vrs_service_task_ID`,`vrs_spare_part_ID`),
  KEY `fk_vrs_service_task_has_vrs_spare_part_vrs_spare_part1_idx` (`vrs_spare_part_ID`),
  KEY `fk_vrs_service_task_has_vrs_spare_part_vrs_service_task1_idx` (`vrs_service_task_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_spare_part`
--

CREATE TABLE IF NOT EXISTS `vrs_spare_part` (
  `ID` varchar(32) NOT NULL DEFAULT '',
  `PART_NUMBER` varchar(64) DEFAULT NULL,
  `SERIAL_NUMBER` varchar(64) DEFAULT NULL,
  `PART_NAME` varchar(64) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `INSERT_USER` varchar(32) DEFAULT NULL,
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `UPDATE_USER` varchar(32) DEFAULT NULL,
  `UPDATE_DATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_supplier`
--

CREATE TABLE IF NOT EXISTS `vrs_supplier` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `TELEPHONE1` varchar(15) DEFAULT NULL,
  `TELEPHONE2` varchar(15) DEFAULT NULL,
  `INSERT_DATETIME` date DEFAULT NULL,
  `INSERT_USER` char(32) DEFAULT NULL,
  `UPDATE_DATETIME` date DEFAULT NULL,
  `UPDATE_USER` char(32) DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_supplier_has_vrs_spare_part`
--

CREATE TABLE IF NOT EXISTS `vrs_supplier_has_vrs_spare_part` (
  `vrs_supplier_ID` char(32) NOT NULL,
  `vrs_spare_part_ID` varchar(32) NOT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `INVOICE` blob,
  PRIMARY KEY (`vrs_supplier_ID`,`vrs_spare_part_ID`),
  KEY `fk_vrs_supplier_has_vrs_spare_part_vrs_spare_part1_idx` (`vrs_spare_part_ID`),
  KEY `fk_vrs_supplier_has_vrs_spare_part_vrs_supplier1_idx` (`vrs_supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_supplier_has_vrs_tire`
--

CREATE TABLE IF NOT EXISTS `vrs_supplier_has_vrs_tire` (
  `vrs_supplier_ID` char(32) NOT NULL,
  `vrs_tire_ID` char(32) NOT NULL,
  `INVOICE` blob,
  `QUANTITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`vrs_supplier_ID`,`vrs_tire_ID`),
  KEY `fk_vrs_supplier_has_vrs_tire_vrs_tire1_idx` (`vrs_tire_ID`),
  KEY `fk_vrs_supplier_has_vrs_tire_vrs_supplier1_idx` (`vrs_supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_tire`
--

CREATE TABLE IF NOT EXISTS `vrs_tire` (
  `ID` char(32) NOT NULL,
  `BRAND` varchar(255) DEFAULT NULL,
  `RIM_SIZE` tinyint(4) DEFAULT NULL,
  `SIZE_CODE` varchar(32) DEFAULT NULL,
  `MANUFACTURE_DATE_CODE` char(4) DEFAULT NULL,
  `TYPE` enum('Tube-less','Tube') DEFAULT NULL,
  `CONDITION` set('Brand new','Used','Rebuilt') DEFAULT NULL,
  `INSERT_DATETIME` date DEFAULT NULL,
  `INSERT_USER` char(32) DEFAULT NULL,
  `UPDATE_DATETIME` date DEFAULT NULL,
  `UPDATE_USER` char(32) DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_tire_has_vrs_vehicle`
--

CREATE TABLE IF NOT EXISTS `vrs_tire_has_vrs_vehicle` (
  `vrs_tire_ID` char(32) NOT NULL,
  `vrs_vehicle_ID` varchar(32) NOT NULL,
  `DATE_TIME` datetime DEFAULT NULL,
  `REASON` varchar(255) DEFAULT NULL,
  `WHEEL` varchar(100) DEFAULT NULL,
  `MILAGE` int(11) DEFAULT NULL,
  PRIMARY KEY (`vrs_tire_ID`,`vrs_vehicle_ID`),
  KEY `fk_vrs_tire_has_vrs_vehicle_vrs_vehicle1_idx` (`vrs_vehicle_ID`),
  KEY `fk_vrs_tire_has_vrs_vehicle_vrs_tire1_idx` (`vrs_tire_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrs_vehicle`
--

CREATE TABLE IF NOT EXISTS `vrs_vehicle` (
  `ID` varchar(32) NOT NULL,
  `REGISTRATION_NUMBER` varchar(16) DEFAULT NULL,
  `CATEGORY` varchar(32) DEFAULT NULL,
  `TYPE` varchar(32) DEFAULT NULL,
  `MAKE` varchar(32) DEFAULT NULL,
  `MODEL` varchar(32) DEFAULT NULL,
  `FUEL_TYPE` set('PETROL','DIESEL','ELECTRIC','HYBRID','OTHER') DEFAULT NULL,
  `ENGINE_NUMBER` varchar(32) DEFAULT NULL,
  `CHASSIS_NUMBER` varchar(32) DEFAULT NULL,
  `YEAR_MANUFACTURE` varchar(8) DEFAULT NULL,
  `DATE_IMPORT` varchar(8) DEFAULT NULL,
  `DATE_REGISTER` varchar(8) DEFAULT NULL,
  `REGISTRATION_CERTIFICATE` blob,
  `NUM_WHEELS` tinyint(4) DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `INSERT_USER` varchar(32) DEFAULT NULL,
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `UPDATE_USER` varchar(32) DEFAULT NULL,
  `UPDATE_DATE_TIME` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `REGISTRATION_NUMBER_UNIQUE` (`REGISTRATION_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vrs_drive`
--
ALTER TABLE `vrs_drive`
  ADD CONSTRAINT `fk_vrs_drive_vrs_vehicle1` FOREIGN KEY (`vrs_vehicle_ID`) REFERENCES `vrs_vehicle` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vrs_drive_vrs_driver1` FOREIGN KEY (`vrs_driver_ID`) REFERENCES `vrs_driver` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vrs_expense`
--
ALTER TABLE `vrs_expense`
  ADD CONSTRAINT `fk_vrs_expense_vrs_vehicle1` FOREIGN KEY (`vrs_vehicle_ID`) REFERENCES `vrs_vehicle` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vrs_fuel`
--
ALTER TABLE `vrs_fuel`
  ADD CONSTRAINT `fk_vrs_fuel_vrs_vehicle1` FOREIGN KEY (`vrs_vehicle_ID`) REFERENCES `vrs_vehicle` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vrs_insurance`
--
ALTER TABLE `vrs_insurance`
  ADD CONSTRAINT `fk_vrs_insurance_vrs_vehicle` FOREIGN KEY (`vrs_vehicle_ID`) REFERENCES `vrs_vehicle` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vrs_license`
--
ALTER TABLE `vrs_license`
  ADD CONSTRAINT `fk_vrs_license_vrs_vehicle1` FOREIGN KEY (`vrs_vehicle_ID`) REFERENCES `vrs_vehicle` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vrs_place`
--
ALTER TABLE `vrs_place`
  ADD CONSTRAINT `fk_vrs_place_vrs_drive1` FOREIGN KEY (`vrs_drive_ID`) REFERENCES `vrs_drive` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vrs_repair`
--
ALTER TABLE `vrs_repair`
  ADD CONSTRAINT `fk_vrs_repair_vrs_vehicle1` FOREIGN KEY (`vrs_vehicle_ID`) REFERENCES `vrs_vehicle` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vrs_repair_has_vrs_spare_part`
--
ALTER TABLE `vrs_repair_has_vrs_spare_part`
  ADD CONSTRAINT `fk_vrs_repair_has_vrs_spare_part_vrs_repair1` FOREIGN KEY (`vrs_repair_ID`) REFERENCES `vrs_repair` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vrs_repair_has_vrs_spare_part_vrs_spare_part1` FOREIGN KEY (`vrs_spare_part_ID`) REFERENCES `vrs_spare_part` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vrs_service`
--
ALTER TABLE `vrs_service`
  ADD CONSTRAINT `fk_vrs_service_vrs_vehicle1` FOREIGN KEY (`vrs_vehicle_ID`) REFERENCES `vrs_vehicle` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vrs_service_task_has_vrs_service`
--
ALTER TABLE `vrs_service_task_has_vrs_service`
  ADD CONSTRAINT `fk_vrs_service_task_has_vrs_service_vrs_service_task1` FOREIGN KEY (`vrs_service_task_ID`) REFERENCES `vrs_service_task` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vrs_service_task_has_vrs_service_vrs_service1` FOREIGN KEY (`vrs_service_ID`) REFERENCES `vrs_service` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vrs_service_task_has_vrs_spare_part`
--
ALTER TABLE `vrs_service_task_has_vrs_spare_part`
  ADD CONSTRAINT `fk_vrs_service_task_has_vrs_spare_part_vrs_service_task1` FOREIGN KEY (`vrs_service_task_ID`) REFERENCES `vrs_service_task` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vrs_service_task_has_vrs_spare_part_vrs_spare_part1` FOREIGN KEY (`vrs_spare_part_ID`) REFERENCES `vrs_spare_part` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vrs_supplier_has_vrs_spare_part`
--
ALTER TABLE `vrs_supplier_has_vrs_spare_part`
  ADD CONSTRAINT `fk_vrs_supplier_has_vrs_spare_part_vrs_supplier1` FOREIGN KEY (`vrs_supplier_ID`) REFERENCES `vrs_supplier` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vrs_supplier_has_vrs_spare_part_vrs_spare_part1` FOREIGN KEY (`vrs_spare_part_ID`) REFERENCES `vrs_spare_part` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vrs_supplier_has_vrs_tire`
--
ALTER TABLE `vrs_supplier_has_vrs_tire`
  ADD CONSTRAINT `fk_vrs_supplier_has_vrs_tire_vrs_supplier1` FOREIGN KEY (`vrs_supplier_ID`) REFERENCES `vrs_supplier` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vrs_supplier_has_vrs_tire_vrs_tire1` FOREIGN KEY (`vrs_tire_ID`) REFERENCES `vrs_tire` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vrs_tire_has_vrs_vehicle`
--
ALTER TABLE `vrs_tire_has_vrs_vehicle`
  ADD CONSTRAINT `fk_vrs_tire_has_vrs_vehicle_vrs_tire1` FOREIGN KEY (`vrs_tire_ID`) REFERENCES `vrs_tire` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vrs_tire_has_vrs_vehicle_vrs_vehicle1` FOREIGN KEY (`vrs_vehicle_ID`) REFERENCES `vrs_vehicle` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
