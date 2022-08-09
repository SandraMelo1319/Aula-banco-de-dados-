-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Estoque
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Estoque
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Estoque` DEFAULT CHARACTER SET utf8 ;
USE `Estoque` ;

-- -----------------------------------------------------
-- Table `Estoque`.`marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Estoque`.`marcas` (
  `id` INT NOT NULL,
  `nome` VARCHAR(1000) NOT NULL,
  `ativo` TINYINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Estoque`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Estoque`.`produtos` (
  `id` INT NOT NULL,
  `nome` VARCHAR(1000) NOT NULL,
  `preco` DECIMAL NOT NULL,
  `marcas_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produtos_marcas_idx` (`marcas_id` ASC) VISIBLE,
  CONSTRAINT `fk_produtos_marcas`
    FOREIGN KEY (`marcas_id`)
    REFERENCES `Estoque`.`marcas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
