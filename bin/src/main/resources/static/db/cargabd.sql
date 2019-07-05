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
CREATE TABLE IF NOT EXISTS `cargabd`.`Docente` (
  `idDocente` INT NOT NULL,
  `NombreDocente` NVARCHAR(50) NOT NULL,
  `ApellidoDocente` NVARCHAR(50) NOT NULL,
  PRIMARY KEY (`idDocente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cargabd`.`Semestre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cargabd`.`Semestre` (
  `idSemestre` INT NOT NULL,
  `SemestreAcademico` NVARCHAR(50) NOT NULL,
  `CargaAcademica` INT NOT NULL,
  `Docente_idDocente` INT NOT NULL,
  PRIMARY KEY (`idSemestre`),
  INDEX `fk_Semestre_Docente_idx` (`Docente_idDocente` ASC) VISIBLE,
  CONSTRAINT `fk_Semestre_Docente`
    FOREIGN KEY (`Docente_idDocente`)
    REFERENCES `cargabd`.`Docente` (`idDocente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
