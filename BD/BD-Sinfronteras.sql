CREATE SCHEMA IF NOT EXISTS `sinfronteras` DEFAULT CHARACTER SET utf8 ;
USE `sinfronteras` ;

-- -----------------------------------------------------
-- Table `sinfronteras`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sinfronteras`.`Usuarios` (
  `idUser` INT NOT NULL AUTO_INCREMENT,
  `Name_User` VARCHAR(45) NOT NULL,
  `LastName_User` VARCHAR(45) NOT NULL,
  `Email_User` VARCHAR(45) NOT NULL,
  `Password_User` VARCHAR(50) NOT NULL,
  `Tel_User` VARCHAR(11) NOT NULL,
  `Status_User` INT(1) NOT NULL,
  PRIMARY KEY (`idUser`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sinfronteras`.`Roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sinfronteras`.`Roles` (
  `idRoles` INT(2) NOT NULL,
  `User_Roles` INT(1) NOT NULL,
  `Usuarios_idUser` INT NOT NULL,
  PRIMARY KEY (`idRoles`, `Usuarios_idUser`),
  INDEX `fk_Roles_Usuarios1_idx` (`Usuarios_idUser` ASC),
  CONSTRAINT `fk_Roles_Usuarios1`
    FOREIGN KEY (`Usuarios_idUser`)
    REFERENCES `sinfronteras`.`Usuarios` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sinfronteras`.`Fundaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sinfronteras`.`Fundaciones` (
  `idFundaciones` INT NOT NULL AUTO_INCREMENT,
  `Name_fund` VARCHAR(80) NOT NULL,
  `Tipo_fund` VARCHAR(45) NOT NULL,
  `Mision_fund` LONGTEXT NOT NULL,
  `Vision_fund` LONGTEXT NOT NULL,
  `Desc_fund` LONGTEXT NOT NULL,
  `Link_fund` LONGTEXT NOT NULL,
  `Tel_fund` VARCHAR(11) NOT NULL,
  `Roles_idRoles` INT(2) NOT NULL,
  `Roles_Usuarios_idUser` INT NOT NULL,
  PRIMARY KEY (`idFundaciones`, `Roles_idRoles`, `Roles_Usuarios_idUser`),
  INDEX `fk_Fundaciones_Roles1_idx` (`Roles_idRoles` ASC, `Roles_Usuarios_idUser` ASC),
  CONSTRAINT `fk_Fundaciones_Roles1`
    FOREIGN KEY (`Roles_idRoles` , `Roles_Usuarios_idUser`)
    REFERENCES `sinfronteras`.`Roles` (`idRoles` , `Usuarios_idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sinfronteras`.`Instituciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sinfronteras`.`Instituciones` (
  `idInstituciones` INT NOT NULL AUTO_INCREMENT,
  `Name_inst` VARCHAR(80) NOT NULL,
  `Tipo_inst` VARCHAR(45) NOT NULL,
  `Mision_inst` LONGTEXT NOT NULL,
  `Vision_inst` LONGTEXT NOT NULL,
  `Desc_inst` LONGTEXT NOT NULL,
  `Link_inst` LONGTEXT NOT NULL,
  `Tel_inst` VARCHAR(11) NOT NULL,
  `Roles_idRoles` INT(2) NOT NULL,
  `Roles_Usuarios_idUser` INT NOT NULL,
  PRIMARY KEY (`idInstituciones`, `Roles_idRoles`, `Roles_Usuarios_idUser`),
  INDEX `fk_Instituciones_Roles1_idx` (`Roles_idRoles` ASC, `Roles_Usuarios_idUser` ASC),
  CONSTRAINT `fk_Instituciones_Roles1`
    FOREIGN KEY (`Roles_idRoles` , `Roles_Usuarios_idUser`)
    REFERENCES `sinfronteras`.`Roles` (`idRoles` , `Usuarios_idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET GLOBAL time_zone = "-3:00";
