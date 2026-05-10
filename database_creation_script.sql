-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Tip_Eksperiment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Tip_Eksperiment` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Tip_Eksperiment` (
  `ID_Tip` INT UNSIGNED NOT NULL,
  `Naziv` VARCHAR(25) NOT NULL,
  `Opis` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_Tip`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Eksperiment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Eksperiment` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Eksperiment` (
  `ID_Eksperiment` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Naziv` VARCHAR(45) NOT NULL,
  `ID_Tip` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ID_Eksperiment`),
  INDEX `fk_Eksperiment_Tip_idx` (`ID_Tip` ASC),
  CONSTRAINT `fk_Eksperiment_Tip`
    FOREIGN KEY (`ID_Tip`)
    REFERENCES `mydb`.`Tip_Eksperiment` (`ID_Tip`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Laboratorija`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Laboratorija` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Laboratorija` (
  `ID_Laboratorija` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Naziv` VARCHAR(45) NOT NULL,
  `Opis` VARCHAR(100) NULL,
  PRIMARY KEY (`ID_Laboratorija`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Resurs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Resurs` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Resurs` (
  `ID_Resurs` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Naziv` VARCHAR(45) NOT NULL,
  `Cena` INT NOT NULL,
  PRIMARY KEY (`ID_Resurs`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Laboratorija_Resurs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Laboratorija_Resurs` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Laboratorija_Resurs` (
  `ID_Laboratorija` INT UNSIGNED NOT NULL,
  `ID_Resurs` INT UNSIGNED NOT NULL,
  `Kolicina` INT NOT NULL,
  `Status` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`ID_Laboratorija`, `ID_Resurs`),
  INDEX `fk_Laboratorija_has_Resurs_Resurs1_idx` (`ID_Resurs` ASC),
  INDEX `fk_Laboratorija_has_Resurs_Laboratorija1_idx` (`ID_Laboratorija` ASC),
  CONSTRAINT `fk_Laboratorija_has_Resurs_Laboratorija1`
    FOREIGN KEY (`ID_Laboratorija`)
    REFERENCES `mydb`.`Laboratorija` (`ID_Laboratorija`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Laboratorija_has_Resurs_Resurs1`
    FOREIGN KEY (`ID_Resurs`)
    REFERENCES `mydb`.`Resurs` (`ID_Resurs`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tip_Alat`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Tip_Alat` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Tip_Alat` (
  `ID_Tip` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Naziv` VARCHAR(45) NOT NULL,
  `Opis` VARCHAR(100) NULL,
  PRIMARY KEY (`ID_Tip`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Alat`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Alat` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Alat` (
  `ID_Alat` INT UNSIGNED NOT NULL,
  `Datum_Nabavke` DATE NOT NULL,
  `Datum_Proizvodnje` DATE NULL,
  `ID_Tip` INT UNSIGNED NOT NULL,
  `ID_Laboratorija` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ID_Alat`),
  INDEX `fk_Alat_Tip_Alat1_idx` (`ID_Tip` ASC),
  INDEX `fk_Alat_Laboratorija1_idx` (`ID_Laboratorija` ASC),
  CONSTRAINT `fk_Alat_Tip_Alat1`
    FOREIGN KEY (`ID_Tip`)
    REFERENCES `mydb`.`Tip_Alat` (`ID_Tip`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Alat_Laboratorija1`
    FOREIGN KEY (`ID_Laboratorija`)
    REFERENCES `mydb`.`Laboratorija` (`ID_Laboratorija`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Istrazivac`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Istrazivac` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Istrazivac` (
  `ID_Istrazivac` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Ime` VARCHAR(20) NOT NULL,
  `Prezime` VARCHAR(30) NOT NULL,
  `Kvalifikacije` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_Istrazivac`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Teorija`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Teorija` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Teorija` (
  `ID_Teorija` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Naziv` VARCHAR(45) NOT NULL,
  `Opis` VARCHAR(100) NULL,
  PRIMARY KEY (`ID_Teorija`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Eksperiment_Dizajner`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Eksperiment_Dizajner` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Eksperiment_Dizajner` (
  `ID_Istrazivac` INT UNSIGNED NOT NULL,
  `ID_Eksperiment` INT UNSIGNED NOT NULL,
  `ID_Teorija` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ID_Istrazivac`, `ID_Eksperiment`),
  INDEX `fk_Istrazivac_has_Eksperiment_Eksperiment1_idx` (`ID_Eksperiment` ASC),
  INDEX `fk_Istrazivac_has_Eksperiment_Istrazivac1_idx` (`ID_Istrazivac` ASC),
  INDEX `fk_Istrazivac_has_Eksperiment_Teorija1_idx` (`ID_Teorija` ASC),
  CONSTRAINT `fk_Istrazivac_has_Eksperiment_Istrazivac1`
    FOREIGN KEY (`ID_Istrazivac`)
    REFERENCES `mydb`.`Istrazivac` (`ID_Istrazivac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Istrazivac_has_Eksperiment_Eksperiment1`
    FOREIGN KEY (`ID_Eksperiment`)
    REFERENCES `mydb`.`Eksperiment` (`ID_Eksperiment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Istrazivac_has_Eksperiment_Teorija1`
    FOREIGN KEY (`ID_Teorija`)
    REFERENCES `mydb`.`Teorija` (`ID_Teorija`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Izvodjenje`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Izvodjenje` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Izvodjenje` (
  `ID_Izvodjenje` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Datum` DATE NOT NULL,
  `Status` VARCHAR(20) NOT NULL,
  `Cena` INT NOT NULL,
  `Kolicina` INT NULL,
  `ID_Eksperiment` INT UNSIGNED NOT NULL,
  `ID_Laboratorija` INT UNSIGNED NOT NULL,
  INDEX `fk_Izvodjenje_Eksperiment1_idx` (`ID_Eksperiment` ASC),
  INDEX `fk_Izvodjenje_Laboratorija1_idx` (`ID_Laboratorija` ASC),
  PRIMARY KEY (`ID_Izvodjenje`),
  CONSTRAINT `fk_Izvodjenje_Eksperiment1`
    FOREIGN KEY (`ID_Eksperiment`)
    REFERENCES `mydb`.`Eksperiment` (`ID_Eksperiment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Izvodjenje_Laboratorija1`
    FOREIGN KEY (`ID_Laboratorija`)
    REFERENCES `mydb`.`Laboratorija` (`ID_Laboratorija`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Izvodjenje_Izvodjac`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Izvodjenje_Izvodjac` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Izvodjenje_Izvodjac` (
  `ID_Istrazivac` INT UNSIGNED NOT NULL,
  `ID_Izvodjenje` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ID_Istrazivac`, `ID_Izvodjenje`),
  INDEX `fk_Izvodjenje_has_Istrazivac_Istrazivac1_idx` (`ID_Istrazivac` ASC),
  INDEX `fk_Izvodjenje_Izvodjac_Izvodjenje1_idx` (`ID_Izvodjenje` ASC),
  CONSTRAINT `fk_Izvodjenje_has_Istrazivac_Istrazivac1`
    FOREIGN KEY (`ID_Istrazivac`)
    REFERENCES `mydb`.`Istrazivac` (`ID_Istrazivac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Izvodjenje_Izvodjac_Izvodjenje1`
    FOREIGN KEY (`ID_Izvodjenje`)
    REFERENCES `mydb`.`Izvodjenje` (`ID_Izvodjenje`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sesija`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Sesija` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Sesija` (
  `ID_Sesija` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Datum` DATE NOT NULL,
  `Vreme_Pocetka` TIME NULL,
  `Vreme_Zavrsetka` TIME NULL,
  `Model_Simulacije` VARCHAR(45) NULL,
  `ID_Izvodjenje` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ID_Sesija`),
  INDEX `fk_Sesija_Izvodjenje1_idx` (`ID_Izvodjenje` ASC),
  CONSTRAINT `fk_Sesija_Izvodjenje1`
    FOREIGN KEY (`ID_Izvodjenje`)
    REFERENCES `mydb`.`Izvodjenje` (`ID_Izvodjenje`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sesija_Alat`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Sesija_Alat` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Sesija_Alat` (
  `Sesija_ID_Sesija` INT UNSIGNED NOT NULL,
  `Alat_ID_Alat` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Sesija_ID_Sesija`, `Alat_ID_Alat`),
  INDEX `fk_Sesija_has_Alat_Alat1_idx` (`Alat_ID_Alat` ASC),
  INDEX `fk_Sesija_has_Alat_Sesija1_idx` (`Sesija_ID_Sesija` ASC),
  CONSTRAINT `fk_Sesija_has_Alat_Sesija1`
    FOREIGN KEY (`Sesija_ID_Sesija`)
    REFERENCES `mydb`.`Sesija` (`ID_Sesija`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Sesija_has_Alat_Alat1`
    FOREIGN KEY (`Alat_ID_Alat`)
    REFERENCES `mydb`.`Alat` (`ID_Alat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sesija_Resurs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Sesija_Resurs` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Sesija_Resurs` (
  `ID_Sesija` INT UNSIGNED NOT NULL,
  `ID_Resurs` INT UNSIGNED NOT NULL,
  `Iskoriscena_Kolicina` INT NOT NULL,
  PRIMARY KEY (`ID_Sesija`, `ID_Resurs`),
  INDEX `fk_Sesija_has_Resurs_Resurs1_idx` (`ID_Resurs` ASC),
  INDEX `fk_Sesija_has_Resurs_Sesija1_idx` (`ID_Sesija` ASC),
  CONSTRAINT `fk_Sesija_has_Resurs_Sesija1`
    FOREIGN KEY (`ID_Sesija`)
    REFERENCES `mydb`.`Sesija` (`ID_Sesija`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Sesija_has_Resurs_Resurs1`
    FOREIGN KEY (`ID_Resurs`)
    REFERENCES `mydb`.`Resurs` (`ID_Resurs`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Eksperiment_zahteva_Resurs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Eksperiment_zahteva_Resurs` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Eksperiment_zahteva_Resurs` (
  `ID_Eksperiment` INT UNSIGNED NOT NULL,
  `ID_Resurs` INT UNSIGNED NOT NULL,
  `Kolicina` INT NOT NULL,
  PRIMARY KEY (`ID_Eksperiment`, `ID_Resurs`),
  INDEX `fk_Eksperiment_has_Resurs_Resurs1_idx` (`ID_Resurs` ASC),
  INDEX `fk_Eksperiment_has_Resurs_Eksperiment1_idx` (`ID_Eksperiment` ASC),
  CONSTRAINT `fk_Eksperiment_has_Resurs_Eksperiment1`
    FOREIGN KEY (`ID_Eksperiment`)
    REFERENCES `mydb`.`Eksperiment` (`ID_Eksperiment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Eksperiment_has_Resurs_Resurs1`
    FOREIGN KEY (`ID_Resurs`)
    REFERENCES `mydb`.`Resurs` (`ID_Resurs`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Eksperiment_has_Tip_Alat`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Eksperiment_has_Tip_Alat` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Eksperiment_has_Tip_Alat` (
  `ID_Eksperiment` INT UNSIGNED NOT NULL,
  `ID_Tip_Alat` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ID_Eksperiment`, `ID_Tip_Alat`),
  INDEX `fk_Eksperiment_has_Tip_Alat_Tip_Alat1_idx` (`ID_Tip_Alat` ASC),
  INDEX `fk_Eksperiment_has_Tip_Alat_Eksperiment1_idx` (`ID_Eksperiment` ASC),
  CONSTRAINT `fk_Eksperiment_has_Tip_Alat_Eksperiment1`
    FOREIGN KEY (`ID_Eksperiment`)
    REFERENCES `mydb`.`Eksperiment` (`ID_Eksperiment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Eksperiment_has_Tip_Alat_Tip_Alat1`
    FOREIGN KEY (`ID_Tip_Alat`)
    REFERENCES `mydb`.`Tip_Alat` (`ID_Tip`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
