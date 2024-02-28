-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Prueba503
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Prueba503
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Prueba503` DEFAULT CHARACTER SET utf8 ;
USE `Prueba503` ;

-- -----------------------------------------------------
-- Table `Prueba503`.`LIBRO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Prueba503`.`LIBRO` (
  `Titulo_Principal` VARCHAR(30) NOT NULL,
  `ISBN` INT NOT NULL,
  `Subtitulo` VARCHAR(45) NULL,
  `Idioma` VARCHAR(10) NULL,
  `Editorial` VARCHAR(10) NULL,
  PRIMARY KEY (`ISBN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Prueba503`.`EDICION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Prueba503`.`EDICION` (
  `Numero` INT NOT NULL,
  `Año` YEAR(9999) NOT NULL,
  `LIBRO_ISBN` INT NOT NULL,
  INDEX `fk_EDICION_LIBRO_idx` (`LIBRO_ISBN` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Prueba503`.`AUTOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Prueba503`.`AUTOR` (
  `Autor` VARCHAR(40) NOT NULL,
  `LIBRO_ISBN` INT NOT NULL,
  PRIMARY KEY (`Autor`),
  INDEX `fk_AUTOR_LIBRO1_idx` (`LIBRO_ISBN` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
