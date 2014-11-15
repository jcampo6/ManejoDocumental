-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2014 a las 15:31:17
-- Versión del servidor: 5.5.36
-- Versión de PHP: 5.4.25

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `crmcuc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(100) DEFAULT NULL,
  `email` varchar(120) NOT NULL,
  `id_estado_cliente` int(11) DEFAULT NULL,
  `id_tipo_cliente` int(11) DEFAULT NULL,
  `nit` varchar(20) DEFAULT NULL,
  `razon_social` varchar(100) NOT NULL,
  `telefonos` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `direccion`, `email`, `id_estado_cliente`, `id_tipo_cliente`, `nit`, `razon_social`, `telefonos`) VALUES
(1, 'Cra 26C7 #76A-75', 'info@acme.com', NULL, NULL, '802012130', 'Acme', '3521146');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE IF NOT EXISTS `contactos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `clientes_id` bigint(20) NOT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `id_estado_contacto` int(11) DEFAULT NULL,
  `personas_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKE77EAA0432365244` (`personas_id`),
  KEY `FKE77EAA049D2DE7E0` (`clientes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE IF NOT EXISTS `opciones` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `estado_opcion` varchar(1) NOT NULL,
  `opcion` varchar(100) NOT NULL,
  `rol_id` bigint(20) NOT NULL,
  `id_padre` bigint(20) DEFAULT NULL,
  `tipo_opcion` varchar(1) NOT NULL,
  `clase_css` varchar(100) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `controlador` varchar(255) NOT NULL,
  `orden` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9qh8twcltvwh99tsre5iyru8w` (`rol_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id`, `estado_opcion`, `opcion`, `rol_id`, `id_padre`, `tipo_opcion`, `clase_css`, `url`, `controlador`, `orden`) VALUES
(1, 'A', 'Clientes', 1, NULL, 'M', NULL, '/crmcuc/cliente/index', 'cliente', NULL),
(2, 'A', 'Personas', 1, NULL, 'M', '', '/crmcuc/persona/index', 'persona', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operaciones`
--

CREATE TABLE IF NOT EXISTS `operaciones` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `estado_operacion` varchar(1) NOT NULL,
  `operacion` varchar(300) NOT NULL,
  `opcion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_41748bupvx56r4i7hhq5vjcl4` (`opcion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `operaciones`
--

INSERT INTO `operaciones` (`id`, `estado_operacion`, `operacion`, `opcion_id`) VALUES
(1, 'A', 'index,show', 1),
(2, 'A', 'create', 1),
(3, 'A', 'update', 1),
(4, 'A', 'delete', 1),
(5, 'A', 'index,show', 2),
(6, 'A', 'create', 2),
(7, 'A', 'update', 2),
(8, 'A', 'delete', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE IF NOT EXISTS `parametros` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `atributo` varchar(50) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `estado_parametro` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`id`, `atributo`, `descripcion`, `estado_parametro`) VALUES
(1, 'idTipocliente', 'Tipo de cliente', 'A'),
(2, 'idEstadoCliente', 'Estado del cliente', 'A'),
(3, 'idEstadoContacto', 'Estado del contacto', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE IF NOT EXISTS `personas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(100) NOT NULL,
  `cedula` varchar(20) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `id_estado_persona` int(11) DEFAULT NULL,
  `id_tipo_persona` int(11) DEFAULT NULL,
  `nombres` varchar(100) NOT NULL,
  `telefonos` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `apellidos`, `cedula`, `direccion`, `email`, `id_estado_persona`, `id_tipo_persona`, `nombres`, `telefonos`) VALUES
(1, 'Pajaro', NULL, NULL, NULL, NULL, NULL, 'Hernan', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `estado_rol` varchar(1) NOT NULL,
  `rol` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `estado_rol`, `rol`) VALUES
(1, 'A', 'Administrador'),
(2, 'A', 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `persona_id` bigint(20) NOT NULL,
  `estado_usuario` varchar(1) NOT NULL,
  `rol_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r8oo98o39ykr4hi57md9nibmw` (`login`),
  KEY `FK_l5dltx5is9uxuo22lofxowqhs` (`persona_id`),
  KEY `FK_ghgeehq52emllswr9plavf7bd` (`rol_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `login`, `password`, `persona_id`, `estado_usuario`, `rol_id`) VALUES
(1, 'hpajaro', '123', 1, 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valor_parametros`
--

CREATE TABLE IF NOT EXISTS `valor_parametros` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) DEFAULT NULL,
  `estado_valor_parametro` varchar(1) DEFAULT NULL,
  `orden` varchar(3) DEFAULT NULL,
  `parametros_id` bigint(20) NOT NULL,
  `valor` varchar(300) DEFAULT NULL,
  `to_string` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK831254B59072819E` (`parametros_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `valor_parametros`
--

INSERT INTO `valor_parametros` (`id`, `descripcion`, `estado_valor_parametro`, `orden`, `parametros_id`, `valor`, `to_string`) VALUES
(1, NULL, 'A', NULL, 1, 'PyMe', ''),
(2, NULL, 'A', NULL, 1, 'Grande', ''),
(3, NULL, NULL, NULL, 2, 'Activo', ''),
(4, NULL, NULL, NULL, 2, 'Inactivo', ''),
(5, NULL, NULL, NULL, 2, 'Bloqueado', ''),
(6, NULL, 'A', '01', 1, 'Extranjera', '');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD CONSTRAINT `FKE77EAA0432365244` FOREIGN KEY (`personas_id`) REFERENCES `personas` (`id`),
  ADD CONSTRAINT `FKE77EAA049D2DE7E0` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD CONSTRAINT `FK_9qh8twcltvwh99tsre5iyru8w` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `operaciones`
--
ALTER TABLE `operaciones`
  ADD CONSTRAINT `FK_41748bupvx56r4i7hhq5vjcl4` FOREIGN KEY (`opcion_id`) REFERENCES `opciones` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `FK_ghgeehq52emllswr9plavf7bd` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FK_gsgg65xr3c1efonv2jflvox80` FOREIGN KEY (`id`) REFERENCES `personas` (`id`),
  ADD CONSTRAINT `FK_l5dltx5is9uxuo22lofxowqhs` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`);

--
-- Filtros para la tabla `valor_parametros`
--
ALTER TABLE `valor_parametros`
  ADD CONSTRAINT `FK831254B59072819E` FOREIGN KEY (`parametros_id`) REFERENCES `parametros` (`id`);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
