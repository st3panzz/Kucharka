-- MySQL Script generated by MySQL Workbench
-- Thu Dec 10 13:23:18 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema kucharka
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `kucharka` ;

-- -----------------------------------------------------
-- Schema kucharka
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `kucharka` DEFAULT CHARACTER SET utf8 ;
USE `kucharka` ;

-- -----------------------------------------------------
-- Table `kucharka`.`jidlo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `kucharka`.`jidlo` ;

CREATE TABLE IF NOT EXISTS `kucharka`.`jidlo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `jmeno` VARCHAR(50) NOT NULL,
  `recept` LONGTEXT NOT NULL,
  `obrázek` VARCHAR(45) NULL,
  `url` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `kucharka`.`ingredience`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `kucharka`.`ingredience` ;

CREATE TABLE IF NOT EXISTS `kucharka`.`ingredience` (
  `id` INT NOT NULL,
  `ingredience` VARCHAR(45) NOT NULL,
  `množství` VARCHAR(45) NOT NULL,
  `jidlo_id` INT NOT NULL,
  PRIMARY KEY (`id`, `jidlo_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
