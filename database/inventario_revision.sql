
-- Base de datos de demostración INBEFIC
-- Para revisión del proyecto de inventario

CREATE DATABASE IF NOT EXISTS `inventario_demo`
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE `inventario_demo`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `movimientos`;
DROP TABLE IF EXISTS `productos`;
DROP TABLE IF EXISTS `usuarios`;

-- Tabla de productos
CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_unico` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `productos` (`id`, `nombre`, `categoria`, `cantidad`) VALUES
(1, 'Rinso', 'limpieza', 8),
(2, 'Legias', 'limpieza', 15),
(3, 'Escobas', 'limpieza', 15),
(4, 'Trapeador', 'limpieza', 13),
(5, 'Paginas Bond', 'didactico', 15);

-- Tabla de usuarios
CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_registro` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario_unico` (`usuario`),
  UNIQUE KEY `correo_unico` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Usuarios de demostración
-- Sin contraseñas: deberán registrarse desde la aplicación.

-- Tabla de movimientos
CREATE TABLE `movimientos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `tipo` enum('Entrada','Salida') NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL,
  `responsable` varchar(150) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_movimientos_productos` (`producto_id`),
  CONSTRAINT `fk_movimientos_productos`
    FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `movimientos`
(`id`, `producto_id`, `tipo`, `cantidad`, `responsable`, `fecha`) VALUES
(1, 1, 'Entrada', 20, 'Administrador de prueba', '2026-11-03 07:18:24'),
(2, 2, 'Entrada', 15, 'Administrador de prueba', '2026-11-03 07:19:30'),
(3, 1, 'Salida', 2, 'Administrador de prueba', '2026-11-03 07:20:13'),
(4, 3, 'Entrada', 15, 'Administrador de prueba', '2026-11-11 11:01:43'),
(5, 4, 'Entrada', 13, 'Administrador de prueba', '2026-11-11 11:02:21'),
(6, 1, 'Salida', 5, 'Administrador de prueba', '2026-11-11 11:02:52'),
(7, 1, 'Salida', 5, 'Administrador de prueba', '2026-11-11 11:03:12'),
(8, 5, 'Entrada', 15, 'Administrador de prueba', '2026-11-11 11:04:01');

ALTER TABLE `productos` AUTO_INCREMENT = 6;
ALTER TABLE `movimientos` AUTO_INCREMENT = 9;
ALTER TABLE `usuarios` AUTO_INCREMENT = 1;

SET FOREIGN_KEY_CHECKS = 1;

