-- MySQL Script generated by MySQL Workbench
-- 10/13/16 16:10:03
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema code_and_comedy
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `code_and_comedy` ;

-- -----------------------------------------------------
-- Schema code_and_comedy
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `code_and_comedy` DEFAULT CHARACTER SET utf8 ;
USE `code_and_comedy` ;

-- -----------------------------------------------------
-- Table `code_and_comedy`.`seasons`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `code_and_comedy`.`seasons` ;

CREATE TABLE IF NOT EXISTS `code_and_comedy`.`seasons` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) NOT NULL,
  `description` VARCHAR(128) NULL,
  `creation_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `code_and_comedy`.`events`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `code_and_comedy`.`events` ;

CREATE TABLE IF NOT EXISTS `code_and_comedy`.`events` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) NOT NULL,
  `season_id` INT UNSIGNED NULL,
  `description` VARCHAR(128) NULL,
  `max_tickets` INT(5) UNSIGNED NULL,
  `fee` FLOAT UNSIGNED NULL,
  `location` VARCHAR(128) NOT NULL,
  `end_sale_date` DATETIME NOT NULL,
  `event_date` DATETIME NOT NULL,
  `creation_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `Events in season_idx` (`season_id` ASC),
  CONSTRAINT `Events in season`
    FOREIGN KEY (`season_id`)
    REFERENCES `code_and_comedy`.`seasons` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `code_and_comedy`.`registrations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `code_and_comedy`.`registrations` ;

CREATE TABLE IF NOT EXISTS `code_and_comedy`.`registrations` (
  `name` VARCHAR(64) NOT NULL,
  `email` VARCHAR(64) NOT NULL,
  `registration_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event_id` INT UNSIGNED NOT NULL,
  INDEX `Registered for event_idx` (`event_id` ASC),
  PRIMARY KEY (`email`, `event_id`),
  CONSTRAINT `Registered for event`
    FOREIGN KEY (`event_id`)
    REFERENCES `code_and_comedy`.`events` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;