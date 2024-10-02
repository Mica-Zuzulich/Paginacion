-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-10-2024 a las 21:23:28
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peliculas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id` int(7) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `imagen` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id`, `nombre`, `imagen`) VALUES
(1, 'Avergers infinity war', 'poster01.jpeg'),
(2, 'Jurassic Worl', 'poster02.jpeg'),
(3, 'Dead Pool', 'poster03.jpeg'),
(4, 'Solo', 'poster04.jpeg'),
(5, 'Los increíbles 2', 'poster05.jpeg'),
(6, 'Oceans', 'poster06.jpeg'),
(7, 'Black Panter', 'poster07.jpeg'),
(8, 'Tom Raider', 'poster08.jpeg'),
(9, 'Ready Player One', 'poster09.jpeg'),
(10, 'Misión Imposible', 'poster10.jpeg'),
(11, 'Pacific Rim', 'poster11.jpeg'),
(12, 'Venom', 'poster12.jpeg'),
(13, 'Isla de perros', 'poster13.jpeg'),
(14, 'Ralph', 'poster14.jpeg'),
(15, 'Mamma Mia!', 'poster15.jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
