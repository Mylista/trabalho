-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema MyLista
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `MyLista` ;

-- -----------------------------------------------------
-- Schema MyLista
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `MyLista` DEFAULT CHARACTER SET utf8 ;
USE `MyLista` ;

-- -----------------------------------------------------
-- Table `Supermercado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Supermercado` (
  `idSupermercado` INT NOT NULL,
  `CorrSup` INT NOT NULL,
  `PratSup` INT NOT NULL,
  `SecSup` VARCHAR(45) NOT NULL,
  `OferDiaSup` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSupermercado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Preferencias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Preferencias` (
  `idPreferencias` INT NOT NULL,
  `MarPre` VARCHAR(45) NOT NULL,
  `QtdPre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPreferencias`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Usuario` (
  `idUsuario` INT NOT NULL,
  `NomUsu` VARCHAR(45) NOT NULL,
  `IdaUsu` INT NOT NULL,
  `EmaiUsu` VARCHAR(45) NOT NULL,
  `SexUsu` CHAR(1) NOT NULL,
  `EstCivUsu` VARCHAR(45) NOT NULL,
  `idPre` INT NOT NULL,
  PRIMARY KEY (`idUsuario`),
  INDEX `fk_Usuario_Preferencias1_idx` (`idPre` ASC),
  CONSTRAINT `fk_Usuario_Preferencias1`
    FOREIGN KEY (`idPre`)
    REFERENCES `Preferencias` (`idPreferencias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Produtos` (
  `idProdutos` INT NOT NULL,
  `codProd` VARCHAR(45) NOT NULL,
  `MarProd` VARCHAR(45) NOT NULL,
  `PreProd` DECIMAL(10,2) NOT NULL,
  `idSup` INT NOT NULL,
  `NomProd` VARCHAR(45) NOT NULL,
  `LocProd` VARCHAR(45) NOT NULL,
  `idUsu` INT NOT NULL,
  PRIMARY KEY (`idProdutos`),
  INDEX `fk_Produtos_Supermercado1_idx` (`idSup` ASC),
  INDEX `fk_Produtos_Usuario1_idx` (`idUsu` ASC),
  CONSTRAINT `fk_Produtos_Supermercado1`
    FOREIGN KEY (`idSup`)
    REFERENCES `Supermercado` (`idSupermercado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Produtos_Usuario1`
    FOREIGN KEY (`idUsu`)
    REFERENCES `Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Dependentes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Dependentes` (
  `idDependentes` INT NOT NULL,
  `SexDep` CHAR(1) NOT NULL,
  `IdaDep` INT NOT NULL,
  `idUsu` INT NOT NULL,
  PRIMARY KEY (`idDependentes`),
  INDEX `fk_Dependentes_Usuario1_idx` (`idUsu` ASC),
  CONSTRAINT `fk_Dependentes_Usuario1`
    FOREIGN KEY (`idUsu`)
    REFERENCES `Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Avaliacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Avaliacoes` (
  `idAvaliacoes` INT NOT NULL,
  `CusxBenAva` INT NOT NULL,
  `QualAva` INT NOT NULL,
  `ViçoAva` INT NOT NULL,
  `idProd` INT NOT NULL,
  PRIMARY KEY (`idAvaliacoes`),
  INDEX `fk_Avaliacoes_Produtos1_idx` (`idProd` ASC),
  CONSTRAINT `fk_Avaliacoes_Produtos1`
    FOREIGN KEY (`idProd`)
    REFERENCES `Produtos` (`idProdutos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Usuario_has_Avaliacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Usuario_has_Avaliacoes` (
  `idUsu` INT NOT NULL,
  `idAva` INT NOT NULL,
  INDEX `fk_Usuario_has_Avaliacoes_Avaliacoes1_idx` (`idAva` ASC),
  INDEX `fk_Usuario_has_Avaliacoes_Usuario1_idx` (`idUsu` ASC),
  CONSTRAINT `fk_Usuario_has_Avaliacoes_Usuario1`
    FOREIGN KEY (`idUsu`)
    REFERENCES `Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_has_Avaliacoes_Avaliacoes1`
    FOREIGN KEY (`idAva`)
    REFERENCES `Avaliacoes` (`idAvaliacoes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Data for table `Supermercado`
-- -----------------------------------------------------
START TRANSACTION;
USE `MyLista`;
INSERT INTO `Supermercado` (`idSupermercado`, `CorrSup`, `PratSup`, `SecSup`, `OferDiaSup`) VALUES (1, 1, 1, '1', '1');
INSERT INTO `Supermercado` (`idSupermercado`, `CorrSup`, `PratSup`, `SecSup`, `OferDiaSup`) VALUES (2, 1, 2, '2', '2');
INSERT INTO `Supermercado` (`idSupermercado`, `CorrSup`, `PratSup`, `SecSup`, `OferDiaSup`) VALUES (3, 2, 3, '3', '3');
INSERT INTO `Supermercado` (`idSupermercado`, `CorrSup`, `PratSup`, `SecSup`, `OferDiaSup`) VALUES (4, 3, 4, '4', '4');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Preferencias`
-- -----------------------------------------------------
START TRANSACTION;
USE `MyLista`;
INSERT INTO `Preferencias` (`idPreferencias`, `MarPre`, `QtdPre`) VALUES (1, 'azul', '1');
INSERT INTO `Preferencias` (`idPreferencias`, `MarPre`, `QtdPre`) VALUES (2, 'branco', '2');
INSERT INTO `Preferencias` (`idPreferencias`, `MarPre`, `QtdPre`) VALUES (3, 'amarelo', '3');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `MyLista`;
INSERT INTO `Usuario` (`idUsuario`, `NomUsu`, `IdaUsu`, `EmaiUsu`, `SexUsu`, `EstCivUsu`, `idPre`) VALUES (1, 'Miguel', 21, 'isaque@gmail.com', 'M', 'Solteiro', 1);
INSERT INTO `Usuario` (`idUsuario`, `NomUsu`, `IdaUsu`, `EmaiUsu`, `SexUsu`, `EstCivUsu`, `idPre`) VALUES (2, 'Anna', 25, 'ingridy@gmail.com', 'F', 'Casada', 1);
INSERT INTO `Usuario` (`idUsuario`, `NomUsu`, `IdaUsu`, `EmaiUsu`, `SexUsu`, `EstCivUsu`, `idPre`) VALUES (3, 'Pedro', 30, 'matheus@gmail.com', 'M', 'Solteiro', 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Produtos`
-- -----------------------------------------------------
START TRANSACTION;
USE `MyLista`;
INSERT INTO `Produtos` (`idProdutos`, `codProd`, `MarProd`, `PreProd`, `idSup`, `NomProd`, `LocProd`, `idUsu`) VALUES (1, '10', 'a', 5, 1, 'arroz', 'prateleira 1 corredor 1', 1);
INSERT INTO `Produtos` (`idProdutos`, `codProd`, `MarProd`, `PreProd`, `idSup`, `NomProd`, `LocProd`, `idUsu`) VALUES (2, '0', 'b', 4, 2, 'arroz', 'prateleira 1 corredor 1', 1);
INSERT INTO `Produtos` (`idProdutos`, `codProd`, `MarProd`, `PreProd`, `idSup`, `NomProd`, `LocProd`, `idUsu`) VALUES (3, '30', 'c', 6, 3, 'feijao', 'prateleira 1 corredor 2', 2);
INSERT INTO `Produtos` (`idProdutos`, `codProd`, `MarProd`, `PreProd`, `idSup`, `NomProd`, `LocProd`, `idUsu`) VALUES (4, '45', 'd', 2, 4, 'sabonete', 'prateleira 1 corredor 3', 2);
INSERT INTO `Produtos` (`idProdutos`, `codProd`, `MarProd`, `PreProd`, `idSup`, `NomProd`, `LocProd`, `idUsu`) VALUES (5, '47', 'e', 7, 5, 'biscoito', 'prateleira 2 corredor 1', 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Dependentes`
-- -----------------------------------------------------
START TRANSACTION;
USE `MyLista`;
INSERT INTO `Dependentes` (`idDependentes`, `SexDep`, `IdaDep`, `idUsu`) VALUES (1, 'F', 10, 1);
INSERT INTO `Dependentes` (`idDependentes`, `SexDep`, `IdaDep`, `idUsu`) VALUES (2, 'F', 5, 1);
INSERT INTO `Dependentes` (`idDependentes`, `SexDep`, `IdaDep`, `idUsu`) VALUES (3, 'M', 20, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Avaliacoes`
-- -----------------------------------------------------
START TRANSACTION;
USE `MyLista`;
INSERT INTO `Avaliacoes` (`idAvaliacoes`, `CusxBenAva`, `QualAva`, `ViçoAva`, `idProd`) VALUES (1, 10, 1, 4, 1);
INSERT INTO `Avaliacoes` (`idAvaliacoes`, `CusxBenAva`, `QualAva`, `ViçoAva`, `idProd`) VALUES (2, 9, 2, 5, 1);
INSERT INTO `Avaliacoes` (`idAvaliacoes`, `CusxBenAva`, `QualAva`, `ViçoAva`, `idProd`) VALUES (3, 8, 3, 6, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Usuario_has_Avaliacoes`
-- -----------------------------------------------------
START TRANSACTION;
USE `MyLista`;
INSERT INTO `Usuario_has_Avaliacoes` (`idUsu`, `idAva`) VALUES (1, 1);
INSERT INTO `Usuario_has_Avaliacoes` (`idUsu`, `idAva`) VALUES (1, 2);
INSERT INTO `Usuario_has_Avaliacoes` (`idUsu`, `idAva`) VALUES (2, 3);
INSERT INTO `Usuario_has_Avaliacoes` (`idUsu`, `idAva`) VALUES (3, 4);

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
