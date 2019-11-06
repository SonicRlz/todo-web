CREATE TABLE `tododb`.`tarea` ( `ID` INT NOT NULL AUTO_INCREMENT , `Descripción` VARCHAR(200) NOT NULL , `Fecha_Límite` DATE NOT NULL , `Realizada` BOOLEAN NOT NULL , `Fecha_Realizada` DATE NOT NULL , PRIMARY KEY (`ID`)) ENGINE = InnoDB;
CREATE TABLE `tododb`.`persona` ( `id` INT NOT NULL , `alias` VARCHAR(25) NOT NULL , `nombre` VARCHAR(25) NOT NULL , `apellido` VARCHAR(25) NULL , `email` VARCHAR(50) NOT NULL ) ENGINE = InnoDB;
ALTER TABLE `tarea` ADD `id_persona` INT NOT NULL AFTER `Fecha_Realizada`;
ALTER TABLE `tarea` ADD CONSTRAINT `persona_fk` FOREIGN KEY (`id_persona`) REFERENCES `persona`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
