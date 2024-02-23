-- -----------------------------------------------------
-- Table `mydb`.`marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `marca` (
    `id` INT NOT NULL, `marca` VARCHAR(45) NULL, PRIMARY KEY (`id`)
);

-- -----------------------------------------------------
-- Table `mydb`.`modelo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelo` (
    `id` INT NOT NULL, `modelo` VARCHAR(45) NULL, PRIMARY KEY (`id`)
);

-- -----------------------------------------------------
-- Table `mydb`.`version`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `version` (
    `id` INT NOT NULL, `version` VARCHAR(45) NULL, PRIMARY KEY (`id`)
);

-- -----------------------------------------------------
-- Table `mydb`.`tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tipo` (
    `id` INT NOT NULL, `tipo` VARCHAR(45) NULL, PRIMARY KEY (`id`)
);

-- -----------------------------------------------------
-- Table `mydb`.`plaza_de_parqueo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `plaza_de_parqueo` (
    `id` INT NOT NULL, `zona` VARCHAR(2) NOT NULL, PRIMARY KEY (`id`)
);

-- -----------------------------------------------------
-- Table `mydb`.`tipo_documento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tipo_documento` (
    `id` INT NOT NULL, `tipo` VARCHAR(45) NULL, PRIMARY KEY (`id`)
);

-- -----------------------------------------------------
-- Table `mydb`.`usuario_vehiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `usuario_vehiculo` (
    `id_usuario` INT NOT NULL, `nombre` VARCHAR(45) NULL, `apellido` VARCHAR(45) NULL, `correo` VARCHAR(150) NULL, `tarjeta_propiedad` VARCHAR(45) NULL, `usuario_vehiculocol` VARCHAR(45) NULL, `tipo_documento_id` INT NOT NULL, PRIMARY KEY (`id_usuario`), UNIQUE INDEX `correo_UNIQUE` (`correo` ASC), INDEX `fk_usuario_vehiculo_tipo_documento1_idx` (`tipo_documento_id` ASC), CONSTRAINT `fk_usuario_vehiculo_tipo_documento1` FOREIGN KEY (`tipo_documento_id`) REFERENCES `mydb`.`tipo_documento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- -----------------------------------------------------
-- Table `mydb`.`vehiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vehiculo` (
    `id` INT NOT NULL, `placa` VARCHAR(10) NULL, `create_at` TIMESTAMP NULL, `update_at` TIMESTAMP NULL, `marca_id` INT NOT NULL, `modelo_id` INT NOT NULL, `version_id` INT NOT NULL, `tipo_id` INT NOT NULL, `plaza_de_parqueo_id` INT NOT NULL, `usuario_vehiculo_id_usuario` INT NOT NULL, PRIMARY KEY (`id`), UNIQUE INDEX `placa_vehiculo_UNIQUE` (`placa` ASC), INDEX `fk_vehiculo_marca1_idx` (`marca_id` ASC), INDEX `fk_vehiculo_modelo1_idx` (`modelo_id` ASC), INDEX `fk_vehiculo_version1_idx` (`version_id` ASC), INDEX `fk_vehiculo_tipo1_idx` (`tipo_id` ASC), INDEX `fk_vehiculo_plaza_de_parqueo1_idx` (`plaza_de_parqueo_id` ASC), INDEX `fk_vehiculo_usuario_vehiculo1_idx` (
        `usuario_vehiculo_id_usuario` ASC
    ), CONSTRAINT `fk_vehiculo_marca1` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION, CONSTRAINT `fk_vehiculo_modelo1` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION, CONSTRAINT `fk_vehiculo_version1` FOREIGN KEY (`version_id`) REFERENCES `version` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION, CONSTRAINT `fk_vehiculo_tipo1` FOREIGN KEY (`tipo_id`) REFERENCES `tipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION, CONSTRAINT `fk_vehiculo_plaza_de_parqueo1` FOREIGN KEY (`plaza_de_parqueo_id`) REFERENCES `plaza_de_parqueo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION, CONSTRAINT `fk_vehiculo_usuario_vehiculo1` FOREIGN KEY (`usuario_vehiculo_id_usuario`) REFERENCES `usuario_vehiculo` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

USE `parqueadero`;

-- -----------------------------------------------------
-- Table `parqueadero`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parqueadero`.`usuarios` (
    `id` INT(11) NOT NULL AUTO_INCREMENT, `nombre` VARCHAR(45) NULL DEFAULT NULL, `apellido` VARCHAR(45) NULL DEFAULT NULL, `correo` VARCHAR(150) NULL DEFAULT NULL, `Tarjeta_propiedad` VARCHAR(45) NULL DEFAULT NULL, PRIMARY KEY (`id`), UNIQUE INDEX `correo` (`correo` ASC)
) AUTO_INCREMENT = 11 DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Table `parqueadero`.`vehiculos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parqueadero`.`vehiculos` (
    `id` INT(11) NOT NULL AUTO_INCREMENT, `placa` VARCHAR(45) NULL DEFAULT NULL, `marca` VARCHAR(45) NULL DEFAULT NULL, `modelo` VARCHAR(45) NULL DEFAULT NULL, `version` VARCHAR(45) NULL DEFAULT NULL, `tipo` VARCHAR(45) NULL DEFAULT NULL, `create_at` VARCHAR(45) NULL DEFAULT NULL, `update_at` VARCHAR(45) NULL DEFAULT NULL, PRIMARY KEY (`id`)
) AUTO_INCREMENT = 11 DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
--
-- -----------------------------------------------------