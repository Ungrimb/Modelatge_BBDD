-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2019 a las 18:14:53
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `piso` int(11) DEFAULT NULL,
  `puerta` int(11) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `codigoPostal` int(11) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `telefono` varchar(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `Cliente_idCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nombre`, `calle`, `numero`, `piso`, `puerta`, `ciudad`, `codigoPostal`, `pais`, `telefono`, `email`, `fecha`, `Cliente_idCliente`) VALUES
(1, 'Gustavo', 'Provenca', 22, 2, 2, 'barcelona', 8020, NULL, '656789765', 'jhj@sdllk.com', '2019-04-29', 3),
(2, 'Silvia', 'Provenca', 22, 2, 1, 'barcelona', 8020, NULL, '878698789', 'jhkjh@ghm.com', '2019-04-29', 1),
(3, 'Sin Referencias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Pedro', 'Mallorca', 21, 1, 1, 'barcelona', 8020, NULL, '453213123', 'khkjh@glk.com', '2019-04-29', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cristales`
--

CREATE TABLE `cristales` (
  `idCristal` int(11) NOT NULL,
  `cristal` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cristales`
--

INSERT INTO `cristales` (`idCristal`, `cristal`) VALUES
(1, 'transparente'),
(2, 'oscuras'),
(3, 'tintadas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleados` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleados`, `nombre`) VALUES
(1, 'Ernesto'),
(2, 'Maria');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `factura`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `factura` (
`idVenta` int(11)
,`nombre` varchar(45)
,`Marca` varchar(45)
,`precio` decimal(10,0)
,`Vendido` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gafas`
--

CREATE TABLE `gafas` (
  `idGafa` int(11) NOT NULL,
  `Marcas_idMarca` int(11) NOT NULL,
  `graduacion1` decimal(10,0) DEFAULT NULL,
  `graduacion2` decimal(10,0) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `cristales` int(11) DEFAULT NULL,
  `Monturas_idMontura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `gafas`
--

INSERT INTO `gafas` (`idGafa`, `Marcas_idMarca`, `graduacion1`, `graduacion2`, `precio`, `cristales`, `Monturas_idMontura`) VALUES
(1, 1, '1', '1', '100', 1, 1),
(2, 2, '1', '1', '75', 2, 2);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `gafasview`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `gafasview` (
`idGafa` int(11)
,`Marca` varchar(45)
,`graduacion1` decimal(10,0)
,`graduacion2` decimal(10,0)
,`precio` decimal(10,0)
,`cristal` varchar(45)
,`montura` varchar(45)
,`Proveedor` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `idMarca` int(11) NOT NULL,
  `Marca` varchar(45) DEFAULT NULL,
  `Proveedores_idProveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`idMarca`, `Marca`, `Proveedores_idProveedor`) VALUES
(1, 'TOUS', 1),
(2, 'NIKE', 1),
(3, 'Afflelou', 2),
(4, 'RAYBAN', 2);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `marcas_proveedores`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `marcas_proveedores` (
`idMarca` int(11)
,`Marca` varchar(45)
,`Proveedor` varchar(45)
,`idProveedor` int(11)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monturas`
--

CREATE TABLE `monturas` (
  `idMontura` int(11) NOT NULL,
  `montura` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `monturas`
--

INSERT INTO `monturas` (`idMontura`, `montura`) VALUES
(1, 'pasta'),
(2, 'Al aire'),
(3, 'metalica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedor` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `piso` int(11) DEFAULT NULL,
  `puerta` int(11) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `codigoPostal` int(11) DEFAULT NULL,
  `pais` varchar(45) DEFAULT 'España',
  `telefono` varchar(11) DEFAULT NULL,
  `fax` varchar(11) DEFAULT NULL,
  `nif` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idProveedor`, `nombre`, `calle`, `numero`, `piso`, `puerta`, `ciudad`, `codigoPostal`, `pais`, `telefono`, `fax`, `nif`) VALUES
(1, 'Distribuidores Manolo', NULL, NULL, NULL, NULL, NULL, NULL, 'España', NULL, NULL, NULL),
(2, 'Gafas Unidas', NULL, NULL, NULL, NULL, NULL, NULL, 'España', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idVenta` int(11) NOT NULL,
  `Cliente_idCliente` int(11) NOT NULL,
  `Gafas_idGafa` int(11) NOT NULL,
  `Empleados_idEmpleados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idVenta`, `Cliente_idCliente`, `Gafas_idGafa`, `Empleados_idEmpleados`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura para la vista `factura`
--
DROP TABLE IF EXISTS `factura`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `factura`  AS  select `v`.`idVenta` AS `idVenta`,`c`.`nombre` AS `nombre`,`g`.`Marca` AS `Marca`,`g`.`precio` AS `precio`,`e`.`nombre` AS `Vendido` from (((`cliente` `c` join `ventas` `v` on((`v`.`Cliente_idCliente` = `c`.`idCliente`))) join `gafasview` `g` on((`g`.`idGafa` = `v`.`Gafas_idGafa`))) join `empleados` `e` on((`v`.`Empleados_idEmpleados` = `e`.`idEmpleados`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `gafasview`
--
DROP TABLE IF EXISTS `gafasview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gafasview`  AS  select `g`.`idGafa` AS `idGafa`,`ma`.`Marca` AS `Marca`,`g`.`graduacion1` AS `graduacion1`,`g`.`graduacion2` AS `graduacion2`,`g`.`precio` AS `precio`,`c`.`cristal` AS `cristal`,`mo`.`montura` AS `montura`,`mp`.`Proveedor` AS `Proveedor` from ((((`gafas` `g` join `cristales` `c` on((`g`.`cristales` = `c`.`idCristal`))) join `monturas` `mo` on((`g`.`Monturas_idMontura` = `mo`.`idMontura`))) join `marcas` `ma` on((`g`.`Marcas_idMarca` = `ma`.`idMarca`))) join `marcas_proveedores` `mp` on((`mp`.`idMarca` = `g`.`Marcas_idMarca`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `marcas_proveedores`
--
DROP TABLE IF EXISTS `marcas_proveedores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `marcas_proveedores`  AS  select `m`.`idMarca` AS `idMarca`,`m`.`Marca` AS `Marca`,`p`.`nombre` AS `Proveedor`,`p`.`idProveedor` AS `idProveedor` from (`marcas` `m` join `proveedores` `p` on((`m`.`Proveedores_idProveedor` = `p`.`idProveedor`))) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `fk_Cliente_Cliente1_idx` (`Cliente_idCliente`);

--
-- Indices de la tabla `cristales`
--
ALTER TABLE `cristales`
  ADD PRIMARY KEY (`idCristal`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleados`);

--
-- Indices de la tabla `gafas`
--
ALTER TABLE `gafas`
  ADD PRIMARY KEY (`idGafa`),
  ADD KEY `fk_Gafas_Marcas1_idx` (`Marcas_idMarca`),
  ADD KEY `fk_Gafas_Monturas1_idx` (`Monturas_idMontura`),
  ADD KEY `fk_Gafas_Cristales1_idx` (`cristales`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`idMarca`),
  ADD KEY `fk_Marcas_Proveedores_idx` (`Proveedores_idProveedor`);

--
-- Indices de la tabla `monturas`
--
ALTER TABLE `monturas`
  ADD PRIMARY KEY (`idMontura`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `fk_Ventas_Cliente1_idx` (`Cliente_idCliente`),
  ADD KEY `fk_Ventas_Gafas1_idx` (`Gafas_idGafa`),
  ADD KEY `fk_Ventas_Empleados1_idx` (`Empleados_idEmpleados`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cristales`
--
ALTER TABLE `cristales`
  MODIFY `idCristal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `gafas`
--
ALTER TABLE `gafas`
  MODIFY `idGafa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `idMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `monturas`
--
ALTER TABLE `monturas`
  MODIFY `idMontura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_Cliente_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `gafas`
--
ALTER TABLE `gafas`
  ADD CONSTRAINT `fk_Gafas_Cristales1` FOREIGN KEY (`cristales`) REFERENCES `cristales` (`idCristal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Gafas_Marcas1` FOREIGN KEY (`Marcas_idMarca`) REFERENCES `marcas` (`idMarca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Gafas_Monturas1` FOREIGN KEY (`Monturas_idMontura`) REFERENCES `monturas` (`idMontura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD CONSTRAINT `fk_Marcas_Proveedores` FOREIGN KEY (`Proveedores_idProveedor`) REFERENCES `proveedores` (`idProveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_Ventas_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Ventas_Empleados1` FOREIGN KEY (`Empleados_idEmpleados`) REFERENCES `empleados` (`idEmpleados`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Ventas_Gafas1` FOREIGN KEY (`Gafas_idGafa`) REFERENCES `gafas` (`idGafa`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
