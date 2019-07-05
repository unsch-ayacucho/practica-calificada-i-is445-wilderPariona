-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cargabd
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cargabd
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cargabd` DEFAULT CHARACTER SET utf8 ;
USE `cargabd` ;

-- -----------------------------------------------------
-- Table `cargabd`.`Docente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cargabd`.`docente` (
  `id_docente` INT NOT NULL,
  `nombre_docente` NVARCHAR(50) NOT NULL,
  `apellido_docente` NVARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_docente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cargabd`.`Semestre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cargabd`.`semestre` (
  `id_semestre` INT NOT NULL,
  `semestre_academico` NVARCHAR(50) NOT NULL,
  `carga_academica` INT NOT NULL,
  `docente_id_docente` INT NOT NULL,
  PRIMARY KEY (`id_semestre`),
  INDEX `fk_semestre_docente_idx` (`docente_id_docente` ASC) VISIBLE,
  CONSTRAINT `fk_semestre_docente`
    FOREIGN KEY (`docente_id_docente`)
    REFERENCES `cargabd`.`docente` (`id_docente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
