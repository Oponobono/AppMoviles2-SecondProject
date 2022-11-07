-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2022 a las 13:54:06
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usr` varchar(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `clave` varchar(15) NOT NULL,
  `estado` varchar(2) NOT NULL DEFAULT 'si',
  `registro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usr`, `nombre`, `correo`, `clave`, `estado`, `registro`) VALUES
('agathac', 'Agatha Christie', 'agathac@correo.com', '1234', 'si', 1),
('capitan78', 'Elmer Rogers Rufian', 'capi78@correo.com', '1234', 'si', 7),
('edilpugo', 'Edilma Puerta', 'edilpugo@correo.com', '3456', 'si', 6),
('estibns', 'Cristian Marin', 'estibns@correo.com', '4786', 'si', 2),
('jcarlos17', 'Juan Carlos Madrid', 'jcarlos17@correo.con', 'jcarlos17', 'si', 5),
('jlguerra', 'Juan Luis Guerra', 'jlguerra@correo.com.co', '1234', 'si', 3),
('tibens1', 'Estibens', 'tibens@correo.com.co', '5678', 'si', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_moto`
--

CREATE TABLE `ventas_moto` (
  `codfactura` varchar(8) NOT NULL,
  `fechafactura` varchar(10) NOT NULL,
  `codusr` varchar(10) NOT NULL,
  `nameusrfactura` varchar(60) NOT NULL,
  `comprador` varchar(60) NOT NULL,
  `moto` varchar(10) NOT NULL,
  `refmoto` varchar(20) NOT NULL,
  `descmoto` varchar(20) NOT NULL,
  `valormoto` int(10) NOT NULL,
  `estado` varchar(2) NOT NULL DEFAULT 'si'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas_moto`
--

INSERT INTO `ventas_moto` (`codfactura`, `fechafactura`, `codusr`, `nameusrfactura`, `comprador`, `moto`, `refmoto`, `descmoto`, `valormoto`, `estado`) VALUES
('TST2', '02/11/2022', 'jlguerra', 'Juan Luis Guerra Asesor 6', 'David Bisbal Gutierrez', 'CB 150R', 'HCB150R CEM_15', '16.1 HP @ 9500 rpm', 11400000, 'si'),
('TST3', '02/11/2022', 'jlguerra', 'Juan Luis Guerra', 'Enrique Iglesias', 'CB 650R', 'HCB650R CEM_65', '95 HP @ 12000 rpm', 42600000, 'si'),
('TST4', '01/11/2022', 'jlguerra', 'Juan Luis Guerra Asesor #3', 'Ángel Sánchez', 'CB 300R', 'HCB300R CEM_30', '30.7 HP @ 9000 rpm', 26700000, 'si'),
('TST6', '06/11/2022', 'capitan78', 'Elmer Rogers Rufian Asesor #7', 'Kakaroto Goku Fernandez Gutierrez', 'CB 1000R', 'HCB1000R CEM_100', '140 HP @ 8500 rpm', 74800000, 'si'),
('TSTFACT1', '02/11/2022', 'tibens1', 'Estibens Marin', 'San Juan Manrique Robledo', 'CB 1000R', 'HCB1000R CEM_100', '140 HP @ 8500 rpm', 74800000, 'si'),
('TSTFACT2', '06/11/2022', 'agathac', 'Agatha Christie Asesor #1', 'Anne Marie Cuartas', 'CB 300R', 'HCB300R CEM_30', '30.7 HP @ 9000 rpm', 26700000, 'si'),
('TSTFACT3', '15/08/2015', 'agathac', 'Agatha Christie Asesor #1', 'Ana Milena', 'CB 650R', 'HCB650R CEM_65', '95 HP @ 12000 rpm', 42600000, 'si'),
('TSTFACT4', '06/11/2022', 'edilpugo', 'Edilma Puerta Asesor #6', 'Guillermo Marin', 'CB 150R', 'HCB150R CEM_15', '16.1 HP @ 9500 rpm', 11400000, 'si'),
('TSTFACT5', '10/11/2022', 'tibens1', 'Estibens Asesor #4', 'Carlos Andrés', 'CB 650R', 'HCB650R CEM_65', '95 HP @ 12000 rpm', 42600000, 'si');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usr`),
  ADD UNIQUE KEY `registro_pk` (`registro`);

--
-- Indices de la tabla `ventas_moto`
--
ALTER TABLE `ventas_moto`
  ADD PRIMARY KEY (`codfactura`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
