-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema inventory_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `inventory_db` ;

-- -----------------------------------------------------
-- Schema inventory_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `inventory_db` DEFAULT CHARACTER SET latin1 ;
USE `inventory_db` ;

-- -----------------------------------------------------
-- Table `inventory_db`.`supplier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`supplier` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`supplier` (
  `ID` VARCHAR(20) NOT NULL ,
  `SUPPLIER_NAME` VARCHAR(100) NULL DEFAULT NULL ,
  `ADDRESS` VARCHAR(200) NULL DEFAULT NULL ,
  `TELEPHONE` VARCHAR(12) NULL DEFAULT NULL ,
  `EMAIL` VARCHAR(128) NULL DEFAULT NULL ,
  `INSERT_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `UPDATE_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `UPDATE_DATE_TIME` DATETIME NULL ,
  `REMARK` VARCHAR(255) NULL DEFAULT NULL ,
  `STATUS` TINYINT(4) NULL ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`ID`)  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `inventory_db`.`batch`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`batch` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`batch` (
  `ID` VARCHAR(20) NOT NULL ,
  `SUPPLIER_ID` VARCHAR(20) NOT NULL ,
  `BATCH_NAME` VARCHAR(100) NULL DEFAULT NULL ,
  `NO_TYPE` BIGINT(20) NULL DEFAULT NULL ,
  `TOTAL_AMOUNT` DOUBLE NULL DEFAULT NULL ,
  `PAYMENT_STATUS` TINYINT(4) NULL DEFAULT NULL ,
  `DESCRIPTION` VARCHAR(255) NULL DEFAULT NULL ,
  `INSERT_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `UPDATE_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `UPDATE_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `REMARK` VARCHAR(255) NULL ,
  `STATUS` TINYINT(4) NULL DEFAULT NULL ,
  PRIMARY KEY (`ID`)  ,
  CONSTRAINT `fk_batch_supplier1`
    FOREIGN KEY (`SUPPLIER_ID`)
    REFERENCES `inventory_db`.`supplier` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_batch_supplier1_idx` ON `inventory_db`.`batch` (`SUPPLIER_ID` ASC)  ;


-- -----------------------------------------------------
-- Table `inventory_db`.`item_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`item_category` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`item_category` (
  `ID` VARCHAR(20) NOT NULL ,
  `ITEM_NAME` VARCHAR(100) NULL DEFAULT NULL ,
  `ITEM_TYPE` VARCHAR(45) NULL DEFAULT NULL ,
  `STATUS` TINYINT(4) NULL DEFAULT NULL ,
  `INSERT_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `UPDATE_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `UPDATE_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `REMARK` VARCHAR(255) NULL DEFAULT NULL ,
  `IS_PART` INT(11) NULL DEFAULT '0' ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`ID`)  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE UNIQUE INDEX `ID_UNIQUE` ON `inventory_db`.`item_category` (`ID` ASC)  ;


-- -----------------------------------------------------
-- Table `inventory_db`.`item_sub_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`item_sub_category` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`item_sub_category` (
  `ID` VARCHAR(20) NOT NULL ,
  `ITEM_CATEGORY_ID` VARCHAR(20) NOT NULL ,
  `ITEM_NAME` VARCHAR(100) NULL DEFAULT NULL ,
  `ITEM_TYPE` VARCHAR(45) NULL DEFAULT NULL ,
  `STATUS` TINYINT(4) NULL DEFAULT NULL ,
  `INSERT_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `UPDATE_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `UPDATE_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `REMARK` VARCHAR(255) NULL DEFAULT NULL ,
  `IS_PART` INT(11) NULL DEFAULT '0' ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`ID`)  ,
  CONSTRAINT `fk_item_sub_category_item_category1`
    FOREIGN KEY (`ITEM_CATEGORY_ID`)
    REFERENCES `inventory_db`.`item_category` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE UNIQUE INDEX `ID_UNIQUE` ON `inventory_db`.`item_sub_category` (`ID` ASC)  ;

CREATE INDEX `fk_item_sub_category_item_category1_idx` ON `inventory_db`.`item_sub_category` (`ITEM_CATEGORY_ID` ASC)  ;


-- -----------------------------------------------------
-- Table `inventory_db`.`batch_vs_items`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`batch_vs_items` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`batch_vs_items` (
  `ID` VARCHAR(20) NOT NULL ,
  `BATCH_ID` VARCHAR(20) NOT NULL ,
  `ITEM_CATEGORY_ID` VARCHAR(20) NOT NULL ,
  `ITEM_SUB_CATEGORY_ID` VARCHAR(20) NULL ,
  `MANUFACTURER` VARCHAR(45) NULL DEFAULT NULL ,
  `COUNTRY` VARCHAR(45) NULL DEFAULT NULL ,
  `MODEL` VARCHAR(45) NULL DEFAULT NULL ,
  `QTY` INT(11) NULL DEFAULT NULL ,
  `UNIT` VARCHAR(45) NULL DEFAULT NULL ,
  `UNIT_COST` DOUBLE NULL DEFAULT NULL ,
  `UNIT_PRICE` DOUBLE NULL DEFAULT NULL ,
  `TYPE` VARCHAR(45) NULL DEFAULT NULL ,
  `DEFECTS` VARCHAR(255) NULL DEFAULT NULL ,
  `DESCRIPTION` VARCHAR(255) NULL DEFAULT NULL ,
  `WARRANTY_PERIOD` VARCHAR(20) NULL DEFAULT NULL ,
  `INSERT_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `UPDATE_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `UPDATE_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `REMARK` VARCHAR(255) NULL DEFAULT NULL ,
  `STATUS` TINYINT(4) NULL DEFAULT NULL ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  `batch_vs_items_ID` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`ID`)  ,
  CONSTRAINT `fk_batch_vs_items_batch1`
    FOREIGN KEY (`BATCH_ID`)
    REFERENCES `inventory_db`.`batch` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_batch_vs_items_item_category1`
    FOREIGN KEY (`ITEM_CATEGORY_ID`)
    REFERENCES `inventory_db`.`item_category` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_batch_vs_items_batch_vs_items1`
    FOREIGN KEY (`batch_vs_items_ID`)
    REFERENCES `inventory_db`.`batch_vs_items` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_batch_vs_items_item_sub_category1`
    FOREIGN KEY (`ITEM_SUB_CATEGORY_ID`)
    REFERENCES `inventory_db`.`item_sub_category` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_batch_vs_items_batch1_idx` ON `inventory_db`.`batch_vs_items` (`BATCH_ID` ASC)  ;

CREATE INDEX `fk_batch_vs_items_item_category1_idx` ON `inventory_db`.`batch_vs_items` (`ITEM_CATEGORY_ID` ASC)  ;

CREATE INDEX `fk_batch_vs_items_batch_vs_items1_idx` ON `inventory_db`.`batch_vs_items` (`batch_vs_items_ID` ASC)  ;

CREATE INDEX `fk_batch_vs_items_item_sub_category1_idx` ON `inventory_db`.`batch_vs_items` (`ITEM_SUB_CATEGORY_ID` ASC)  ;


-- -----------------------------------------------------
-- Table `inventory_db`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`customer` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`customer` (
  `ID` VARCHAR(20) NOT NULL ,
  `FNAME` VARCHAR(100) NULL DEFAULT NULL ,
  `NNAME` VARCHAR(100) NULL DEFAULT NULL ,
  `LNAME` VARCHAR(100) NULL DEFAULT NULL ,
  `ADDRESS` VARCHAR(100) NULL DEFAULT NULL ,
  `EMAIL` VARCHAR(128) NULL DEFAULT NULL ,
  `TELEPHONE` VARCHAR(12) NULL DEFAULT NULL ,
  `INSERT_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `UPDATE_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `UPDATE_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `REMARK` VARCHAR(255) NULL DEFAULT NULL ,
  `STATUS` TINYINT(4) NULL DEFAULT NULL ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`ID`)  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `inventory_db`.`order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`order` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`order` (
  `ID` VARCHAR(20) NOT NULL ,
  `CUSTOMER_ID` VARCHAR(20) NOT NULL ,
  `ORDER_NO` VARCHAR(20) NULL DEFAULT NULL ,
  `ORDER_DATE` DATE NULL DEFAULT NULL ,
  `QTY` INT(11) NULL DEFAULT NULL ,
  `ORDER_STATUS` TINYINT(4) NULL DEFAULT NULL ,
  `INSERT_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `UPDATE_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `UPDATE_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `REMARK` VARCHAR(255) NULL DEFAULT NULL ,
  `STATUS` TINYINT(4) NULL DEFAULT NULL ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`ID`)  ,
  CONSTRAINT `fk_order_customer1`
    FOREIGN KEY (`CUSTOMER_ID`)
    REFERENCES `inventory_db`.`customer` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_order_customer1_idx` ON `inventory_db`.`order` (`CUSTOMER_ID` ASC)  ;


-- -----------------------------------------------------
-- Table `inventory_db`.`batch_vs_items_has_order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`batch_vs_items_has_order` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`batch_vs_items_has_order` (
  `batch_vs_items_ID` VARCHAR(20) NOT NULL ,
  `order_ID` VARCHAR(20) NOT NULL ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`batch_vs_items_ID`, `order_ID`)  ,
  CONSTRAINT `fk_batch_vs_items_has_order_batch_vs_items1`
    FOREIGN KEY (`batch_vs_items_ID`)
    REFERENCES `inventory_db`.`batch_vs_items` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_batch_vs_items_has_order_order1`
    FOREIGN KEY (`order_ID`)
    REFERENCES `inventory_db`.`order` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_batch_vs_items_has_order_order1_idx` ON `inventory_db`.`batch_vs_items_has_order` (`order_ID` ASC)  ;

CREATE INDEX `fk_batch_vs_items_has_order_batch_vs_items1_idx` ON `inventory_db`.`batch_vs_items_has_order` (`batch_vs_items_ID` ASC)  ;


-- -----------------------------------------------------
-- Table `inventory_db`.`i_staff`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`i_staff` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`i_staff` (
  `ID` VARCHAR(20) NOT NULL ,
  `EMPLOYEE_NO` VARCHAR(20) NULL DEFAULT NULL ,
  `STAFF_FNAME` VARCHAR(100) CHARACTER SET 'latin1' COLLATE 'latin1_bin' NULL DEFAULT NULL ,
  `STAFF_MNAME` VARCHAR(100) NULL DEFAULT NULL ,
  `STAFF_LNAME` VARCHAR(100) NULL DEFAULT NULL ,
  `PASSWORD` VARCHAR(45) NULL DEFAULT NULL ,
  `ROLE` VARCHAR(45) NULL DEFAULT NULL ,
  `TELEPHONE` VARCHAR(12) NULL DEFAULT NULL ,
  `TELEPHONE2` VARCHAR(12) NULL DEFAULT NULL ,
  `EMAIL` VARCHAR(128) NULL DEFAULT NULL ,
  `INSERT_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `UPDATE_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `UPDATE_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `REMARKS` VARCHAR(255) NULL DEFAULT NULL ,
  `STATUS` TINYINT(4) NULL DEFAULT NULL ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`ID`)  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `inventory_db`.`invoice`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`invoice` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`invoice` (
  `ID` VARCHAR(20) NOT NULL ,
  `STAFF_ID` VARCHAR(20) NULL DEFAULT NULL ,
  `CUSTOMER_ID` VARCHAR(20) NULL DEFAULT NULL ,
  `INVOICE_NO` VARCHAR(20) NULL DEFAULT NULL ,
  `INVOICE_DATE` DATE NULL DEFAULT NULL ,
  `QTY` INT(11) NULL DEFAULT NULL ,
  `SUB_TOTAL` DOUBLE NULL DEFAULT NULL ,
  `DISCOUNT` DOUBLE NULL DEFAULT NULL ,
  `NET_TOTAL` DOUBLE NULL DEFAULT NULL ,
  `TERMS` VARCHAR(255) NULL DEFAULT NULL ,
  `INSERT_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `UPDATE_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `UPDATE_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `REMARK` VARCHAR(255) NULL DEFAULT NULL ,
  `STATUS` TINYINT(4) NULL DEFAULT NULL ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`ID`)  ,
  CONSTRAINT `fk_invoice_customer1`
    FOREIGN KEY (`CUSTOMER_ID`)
    REFERENCES `inventory_db`.`customer` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_staff1`
    FOREIGN KEY (`STAFF_ID`)
    REFERENCES `inventory_db`.`i_staff` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_invoice_staff1_idx` ON `inventory_db`.`invoice` (`STAFF_ID` ASC)  ;

CREATE INDEX `fk_invoice_customer1_idx` ON `inventory_db`.`invoice` (`CUSTOMER_ID` ASC)  ;


-- -----------------------------------------------------
-- Table `inventory_db`.`selling_item`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`selling_item` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`selling_item` (
  `ID` VARCHAR(20) NOT NULL ,
  `BATCH_VS_ITEMS_ID` VARCHAR(20) NOT NULL ,
  `INVOICE_ID` VARCHAR(20) NOT NULL ,
  `QR_CODE` VARCHAR(45) NULL DEFAULT NULL ,
  `SERIAL_NO` VARCHAR(45) NULL DEFAULT NULL ,
  `PRICE` DOUBLE NULL DEFAULT NULL ,
  `DISCOUNT` DOUBLE NULL DEFAULT NULL ,
  `SOLD PRICE` DOUBLE NULL DEFAULT NULL ,
  `STATUS` TINYINT(4) NULL DEFAULT NULL ,
  `RETURN_STATUS` INT(11) NULL DEFAULT '0' ,
  `RETURN_COMMENT` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `UPDATE_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `UPDATE_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `REMARK` VARCHAR(255) NULL DEFAULT NULL ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`ID`)  ,
  CONSTRAINT `fk_item_batch_vs_items1`
    FOREIGN KEY (`BATCH_VS_ITEMS_ID`)
    REFERENCES `inventory_db`.`batch_vs_items` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_selling_item_invoice1`
    FOREIGN KEY (`INVOICE_ID`)
    REFERENCES `inventory_db`.`invoice` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_item_batch_vs_items1_idx` ON `inventory_db`.`selling_item` (`BATCH_VS_ITEMS_ID` ASC)  ;

CREATE INDEX `fk_selling_item_invoice1_idx` ON `inventory_db`.`selling_item` (`INVOICE_ID` ASC)  ;


-- -----------------------------------------------------
-- Table `inventory_db`.`returned_details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`returned_details` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`returned_details` (
  `ID` VARCHAR(45) NOT NULL ,
  `ITEM_ID` VARCHAR(20) NOT NULL ,
  `RETURN_NO` VARCHAR(20) NULL DEFAULT NULL ,
  `RETURNED_DATE` DATE NULL DEFAULT NULL ,
  `STATUS` TINYINT(4) NULL DEFAULT NULL ,
  `DESCRIPTION` VARCHAR(255) NULL DEFAULT NULL ,
  `INSERT_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `UPDATE_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `UPDATE_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `REMARK` VARCHAR(255) NULL DEFAULT NULL ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`ID`)  ,
  CONSTRAINT `fk_returned_details_item1`
    FOREIGN KEY (`ITEM_ID`)
    REFERENCES `inventory_db`.`selling_item` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_returned_details_item1_idx` ON `inventory_db`.`returned_details` (`ITEM_ID` ASC)  ;


-- -----------------------------------------------------
-- Table `inventory_db`.`item_image`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`item_image` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`item_image` (
  `ID` VARCHAR(20) NOT NULL ,
  `RETURNED_DETAILS_ID` VARCHAR(45) NULL DEFAULT NULL ,
  `BATCH_VS_ITEMS_ID` VARCHAR(20) NULL DEFAULT NULL ,
  `ITEMFILE_NAME` VARCHAR(255) NULL ,
  `FILE_TYPE` VARCHAR(45) NULL DEFAULT NULL ,
  `FILE_SIZE` INT(11) NULL DEFAULT NULL ,
  `FILE_CONTENT` MEDIUMBLOB NULL DEFAULT NULL ,
  `SAVE` TINYINT(1) NULL DEFAULT NULL ,
  `INSERT_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `UPDATE_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `UPDATE_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `REMARK` VARCHAR(255) NULL DEFAULT NULL ,
  `STATUS` TINYINT(4) NULL DEFAULT NULL ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`ID`)  ,
  CONSTRAINT `fk_item_image_batch_vs_items1`
    FOREIGN KEY (`BATCH_VS_ITEMS_ID`)
    REFERENCES `inventory_db`.`batch_vs_items` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_image_returned_details1`
    FOREIGN KEY (`RETURNED_DETAILS_ID`)
    REFERENCES `inventory_db`.`returned_details` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_item_image_returned_details1_idx` ON `inventory_db`.`item_image` (`RETURNED_DETAILS_ID` ASC)  ;

CREATE INDEX `fk_item_image_batch_vs_items1_idx` ON `inventory_db`.`item_image` (`BATCH_VS_ITEMS_ID` ASC)  ;


-- -----------------------------------------------------
-- Table `inventory_db`.`payments`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`payments` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`payments` (
  `ID` VARCHAR(20) NOT NULL ,
  `INVOICE_ID` VARCHAR(20) NOT NULL ,
  `PAYMENT_NO` VARCHAR(20) NULL DEFAULT NULL ,
  `AMOUNT` DOUBLE NULL DEFAULT NULL ,
  `PAYMENT_DATE` DATE NULL DEFAULT NULL ,
  `METHOD` VARCHAR(45) NULL DEFAULT NULL ,
  `PAYMENT_STATUS` TINYINT(4) NULL DEFAULT NULL ,
  `INSERT_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `UPDATE_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `UPDATE_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `REMARK` VARCHAR(255) NULL DEFAULT NULL ,
  `STATUS` TINYINT(4) NULL DEFAULT NULL ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`ID`)  ,
  CONSTRAINT `fk_payments_invoice1`
    FOREIGN KEY (`INVOICE_ID`)
    REFERENCES `inventory_db`.`invoice` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_payments_invoice1_idx` ON `inventory_db`.`payments` (`INVOICE_ID` ASC)  ;


-- -----------------------------------------------------
-- Table `inventory_db`.`supplier_has_item_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`supplier_has_item_category` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`supplier_has_item_category` (
  `supplier_ID` VARCHAR(20) NOT NULL ,
  `item_category_ID` VARCHAR(20) NOT NULL ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`supplier_ID`, `item_category_ID`)  ,
  CONSTRAINT `fk_supplier_has_item_category_item_category1`
    FOREIGN KEY (`item_category_ID`)
    REFERENCES `inventory_db`.`item_category` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_supplier_has_item_category_supplier1`
    FOREIGN KEY (`supplier_ID`)
    REFERENCES `inventory_db`.`supplier` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_supplier_has_item_category_item_category1_idx` ON `inventory_db`.`supplier_has_item_category` (`item_category_ID` ASC)  ;

CREATE INDEX `fk_supplier_has_item_category_supplier1_idx` ON `inventory_db`.`supplier_has_item_category` (`supplier_ID` ASC)  ;


-- -----------------------------------------------------
-- Table `inventory_db`.`supplier_payment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`supplier_payment` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`supplier_payment` (
  `ID` VARCHAR(20) NOT NULL ,
  `BATCH_ID` VARCHAR(20) NOT NULL ,
  `AMOUNT` DOUBLE NULL DEFAULT NULL ,
  `SUP_PAYMNT_DATE` DATE NULL DEFAULT NULL ,
  `METHOD` VARCHAR(45) NULL DEFAULT NULL ,
  `COMMENT` VARCHAR(225) NULL DEFAULT NULL ,
  `CHEQUE_DATE` DATE NULL DEFAULT NULL ,
  `INSERT_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `UPDATE_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `UPDATE_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `REMARK` VARCHAR(255) NULL DEFAULT NULL ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`ID`)  ,
  CONSTRAINT `fk_supplier_payment_batch1`
    FOREIGN KEY (`BATCH_ID`)
    REFERENCES `inventory_db`.`batch` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_supplier_payment_batch1_idx` ON `inventory_db`.`supplier_payment` (`BATCH_ID` ASC)  ;


-- -----------------------------------------------------
-- Table `inventory_db`.`warranty_details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_db`.`warranty_details` ;

CREATE TABLE IF NOT EXISTS `inventory_db`.`warranty_details` (
  `ID` VARCHAR(20) NOT NULL ,
  `SELLING_ITEM_ID` VARCHAR(20) NOT NULL ,
  `WARRANTY_NO` VARCHAR(20) NULL DEFAULT NULL ,
  `WARRANTY_PERIOD` VARCHAR(20) NULL DEFAULT NULL ,
  `EXPIRATION_DATE` DATE NULL DEFAULT NULL ,
  `INSERT_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `UPDATE_USER` VARCHAR(45) NULL DEFAULT NULL ,
  `INSERT_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `UPDATE_DATE_TIME` DATETIME NULL DEFAULT NULL ,
  `REMARK` VARCHAR(255) NULL DEFAULT NULL ,
  `STATUS` TINYINT(4) NULL ,
  `IS_DELETED` TINYINT(4) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`ID`)  ,
  CONSTRAINT `fk_warranty_details_item1`
    FOREIGN KEY (`SELLING_ITEM_ID`)
    REFERENCES `inventory_db`.`selling_item` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_warranty_details_item1_idx` ON `inventory_db`.`warranty_details` (`SELLING_ITEM_ID` ASC)  ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
