SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `vacunas_covid` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `vacunas_covid` ;

-- -----------------------------------------------------
-- Table `vacunas_covid`.`CCAA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vacunas_covid`.`CCAA` (
  `codigo_ccaa` INT NOT NULL AUTO_INCREMENT,
  `nombre_ccaa` VARCHAR(45) NOT NULL,
  `dosis_entregadas_pfizer` INT NOT NULL,
  `dosis_entregadas_moderna` INT NOT NULL,
  `dosis_administradas` INT NOT NULL,
  `numero_personas_pauta_completa` INT NOT NULL,
  `fecha_registro_ultima_vacuna` DATE NOT NULL,
  PRIMARY KEY (`codigo_ccaa`),
  UNIQUE INDEX `nombre_ccaa_UNIQUE` (`nombre_ccaa` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
