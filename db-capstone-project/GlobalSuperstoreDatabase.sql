-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema GlobalSuperstoreDb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema GlobalSuperstoreDb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `GlobalSuperstoreDb` DEFAULT CHARACTER SET utf8 ;
USE `GlobalSuperstoreDb` ;

-- -----------------------------------------------------
-- Table `GlobalSuperstoreDb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GlobalSuperstoreDb`.`Customers` (
  `CustomerID` INT NOT NULL,
  `FullName` VARCHAR(255) NULL,
  `ContactNumber` VARCHAR(45) NULL,
  `Email` VARCHAR(255) NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GlobalSuperstoreDb`.`DeliveryAddress`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GlobalSuperstoreDb`.`DeliveryAddress` (
  `AddressID` INT NOT NULL,
  `Street` VARCHAR(255) NULL,
  `PostCode` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  PRIMARY KEY (`AddressID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GlobalSuperstoreDb`.`Shipping`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GlobalSuperstoreDb`.`Shipping` (
  `ShipID` INT NOT NULL,
  `ShipDate` DATE NULL,
  `ShipMode` VARCHAR(45) NULL,
  `AddressID` INT NULL,
  `ShipCost` DECIMAL NULL,
  `DeliveryAddress_AddressID` INT NOT NULL,
  PRIMARY KEY (`ShipID`),
  INDEX `fk_Shipping_DeliveryAddress1_idx` (`DeliveryAddress_AddressID` ASC) VISIBLE,
  CONSTRAINT `fk_Shipping_DeliveryAddress1`
    FOREIGN KEY (`DeliveryAddress_AddressID`)
    REFERENCES `GlobalSuperstoreDb`.`DeliveryAddress` (`AddressID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GlobalSuperstoreDb`.`Products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GlobalSuperstoreDb`.`Products` (
  `ProductID` INT NOT NULL,
  `ProductName` VARCHAR(255) NULL,
  `AmountInStock` INT NULL,
  `Price` DECIMAL NULL,
  `Category` VARCHAR(45) NULL,
  `SubCategory` VARCHAR(45) NULL,
  PRIMARY KEY (`ProductID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GlobalSuperstoreDb`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GlobalSuperstoreDb`.`Orders` (
  `OrderID` INT NOT NULL,
  `CustomerID` INT NULL,
  `ProductID` INT NULL,
  `DeliveryID` INT NULL,
  `Quantity` INT NULL,
  `TotalCost` DECIMAL NULL,
  `OrderPriority` VARCHAR(45) NULL,
  `Discount` DECIMAL NULL,
  `ShipID` INT NULL,
  `Customers_CustomerID` INT NOT NULL,
  `Shipping_ShipID` INT NOT NULL,
  `Products_ProductID` INT NOT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `fk_Orders_Customers_idx` (`Customers_CustomerID` ASC) VISIBLE,
  INDEX `fk_Orders_Shipping1_idx` (`Shipping_ShipID` ASC) VISIBLE,
  INDEX `fk_Orders_Products1_idx` (`Products_ProductID` ASC) VISIBLE,
  CONSTRAINT `fk_Orders_Customers`
    FOREIGN KEY (`Customers_CustomerID`)
    REFERENCES `GlobalSuperstoreDb`.`Customers` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Orders_Shipping1`
    FOREIGN KEY (`Shipping_ShipID`)
    REFERENCES `GlobalSuperstoreDb`.`Shipping` (`ShipID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Orders_Products1`
    FOREIGN KEY (`Products_ProductID`)
    REFERENCES `GlobalSuperstoreDb`.`Products` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
