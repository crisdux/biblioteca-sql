-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-09-2023 a las 05:15:53
-- Versión del servidor: 10.2.23-MariaDB-log
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca2014`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarAutor` (IN `Cod_Auu` INT, IN `Nombree` VARCHAR(25), IN `PApellidoo` VARCHAR(40), IN `SApellidoo` VARCHAR(40), IN `Nacionalidadd` VARCHAR(50), `NacidoEnn` VARCHAR(50))  BEGIN 
UPDATE autor
SET Nombre=Nombree, PApellido=PApellidoo, SApellido=SApellidoo, Nacionalidad=Nacionalidadd, NacidoEn=NacidoEnn
WHERE Cod_Au=Cod_Auu;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarAutor` (IN `Nombree` VARCHAR(25), IN `PApellidoo` VARCHAR(40))  BEGIN 
INSERT INTO autor (Nombre, Papellido) 
VALUES('Nombree', 'PApellidoo');
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarAutorr` (IN `cod_auu` INT, IN `Nombree` VARCHAR(25), IN `PApellidoo` VARCHAR(40), IN `SApellidoo` VARCHAR(40), IN `Nacionalidadd` VARCHAR(50), `NacidoEnn` VARCHAR(50))  BEGIN 
INSERT INTO autor (Cod_Au, Nombre, PApellido, SApellido,Nacionalidad,NacidoEn) 
VALUES('cod_auu','Nombree', 'PApellidoo','SApellidoo','Nacionalidadd','NacidoEnn');
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `Cod_Au` int(11) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `PApellido` varchar(40) DEFAULT NULL,
  `SApellido` varchar(40) DEFAULT NULL,
  `Nacionalidad` varchar(50) DEFAULT NULL,
  `NacidoEn` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`Cod_Au`, `Nombre`, `PApellido`, `SApellido`, `Nacionalidad`, `NacidoEn`) VALUES
(1, 'RHONDA ', 'BYRNE', 'x', 'EEUU', 'EEUU'),
(2, 'JHON ', 'HANGELAND', NULL, 'EEUU', 'EEUU'),
(3, 'KEVIN ', ' ', NULL, 'EEUU', 'EEUU'),
(4, 'DAVID ', 'ROLSTON', NULL, 'FRANCIA', 'FRANCIA'),
(5, 'JHON RONALD', 'TOLKIEN', NULL, 'INGLES', 'SUDAFRICA'),
(6, 'CLIVE STARLES', 'LEWIS', NULL, 'INGLES', 'INGLATERRA'),
(7, 'JK', 'ROWLING', NULL, 'INGLATERRA', NULL),
(8, 'CARLOS', 'DE MESA', 'GISBERT', 'BOLIVIA', 'BOLIVIA'),
(9, 'FAUSTO', 'REINAGA', NULL, 'BOLIVIA', 'BOLIVIA'),
(10, 'JOSTIEN', 'GARDEN', NULL, 'NORUEGO', 'NORUEGA'),
(11, 'KATHERINE', 'NEVILLE', NULL, 'INGLATERRA', 'INGLESA'),
(12, 'VICTOR', 'CHUNGARA', NULL, 'BOLIVIA', 'BOLIVIANA'),
(13, 'PAULO', 'COHELO', NULL, 'BRASILERA', 'BRAZIL'),
(14, 'RAUL', 'SALMON', 'DE LA BARRA', 'BOLIVIANA', 'BOLIVIA'),
(15, 'JHON', 'DUNCAN', NULL, 'AMERICANO', 'EEUU'),
(16, 'MALBATAHAN', '', NULL, 'BRASILERO', 'BRAZIL'),
(17, 'JOAQUIN', 'AGUIRRE', NULL, 'BOLIVIANO', 'BOLIVIA'),
(18, 'MARIO', 'PUZZO', NULL, 'AMERICANO', 'ITALIA'),
(19, 'GIBRAN', 'KALIL', 'GIBRAN', 'LIBANES', 'LIBANO'),
(20, 'IAN', 'STEWART', NULL, 'AMERICANO', 'EEUU'),
(21, 'GABRIEL', 'GARCIA', 'MARQUEZ', 'COLOMBIANO', 'COLOMBIA'),
(22, 'DANTE', 'ALIGHERI', NULL, 'ITALIANO', 'ITALIA'),
(25, 'Cris', 'Villca', 'Gutierrez', 'Bolivia', 'Bolivia'),
(26, 'Nombree', 'PApellidoo', 'SApellidoo', 'Nacionalidadd', 'NacidoEnn');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

CREATE TABLE `devolucion` (
  `Cod_De` int(11) NOT NULL,
  `Cod_Pr` int(11) NOT NULL,
  `Fecha_De` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `devolucion`
--

INSERT INTO `devolucion` (`Cod_De`, `Cod_Pr`, `Fecha_De`) VALUES
(1, 1, '2000-01-11'),
(2, 2, '2000-08-10'),
(3, 6, '2000-06-22'),
(4, 9, '2003-01-03'),
(5, 10, '2003-01-03'),
(6, 11, '2005-01-02'),
(7, 12, '2005-06-09'),
(8, 13, '2006-01-06'),
(9, 14, '2006-12-16'),
(10, 16, '2010-11-11'),
(11, 17, '2010-11-11'),
(12, 18, '2010-11-11'),
(13, 19, '2011-02-01'),
(14, 20, '2011-12-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `Cod_Ed` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Pais` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`Cod_Ed`, `Nombre`, `Pais`) VALUES
(1, 'URANO', 'ARGENTINA'),
(2, 'OVEJA NEGRA', 'ARGENTINA'),
(3, 'SANTILLANA', 'BOLIVIA'),
(4, 'PLANETA', 'INGLATERRA'),
(5, 'LUCIERNAGA', 'BOLIVIA'),
(6, 'CONTINENTAL', 'MEXICANO'),
(7, 'BRUÑO', 'BOLIVIA'),
(8, 'SALAMANCA', 'INGLATERRA'),
(9, 'ANAGMA', 'PERU'),
(10, 'OCEANO', 'COLOMBIA'),
(11, 'LIMUSA', 'MEXICO'),
(12, 'AGUILAR', 'ESPAÑOL'),
(13, 'EMECE', 'INGLATERRA'),
(14, 'DON BOSCO', 'BOLIVIA'),
(15, 'SANTILLANA', 'COLOMBIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lector`
--

CREATE TABLE `lector` (
  `Cod_Le` int(11) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `PApellido` varchar(25) DEFAULT NULL,
  `SApellido` varchar(25) DEFAULT NULL,
  `FN` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lector`
--

INSERT INTO `lector` (`Cod_Le`, `Nombre`, `PApellido`, `SApellido`, `FN`) VALUES
(1, 'MARIA', 'VALDIVIA', 'ARANA', '1948-05-05'),
(2, 'SARA', 'RAMIREZ', 'MAMANI', '1968-08-05'),
(3, 'SONIA', 'QUISPE', 'MAMANI', '1975-06-09'),
(4, 'MARITZA', 'SALINAS', 'SOLORZANO', '1975-04-09'),
(5, 'PATRICIA', 'CARDOZO', 'BOLIVAR', '1976-12-24'),
(6, 'RENAN', 'TRIJILLO', 'ALVAREZ', '1966-08-08'),
(7, 'PILAR', 'CARDOZO', 'TRUJILLO', '1967-08-09'),
(8, 'ROXANA', 'QUISPE', 'ALVAREZ', '1988-01-01'),
(9, 'ISABEL', 'REBOLLO', 'HEREDIA', '2000-02-02'),
(10, 'LILIANA', 'ALVAREZ', 'TOLEDO', '1987-08-09'),
(11, 'ISAC', 'TERAN', 'MAMANI', '1988-09-09'),
(12, 'LIDIA', 'SALINAS', 'BOLIVAR', '1966-08-08'),
(13, 'CARLA', 'LIMACHI', 'SALCEDO', '1988-07-02'),
(14, 'ANDREA', 'ALVAREZ', 'ALVAREZ', '1969-01-09'),
(15, 'YOLANDA', 'VELEN', 'CASTRO', '1969-12-12'),
(16, 'CRISTOBAL', 'CUANTAS', 'CARDENAS', '1997-05-05'),
(17, 'RENAN', 'MARIACA', 'SANCHEZ', '1978-08-02'),
(18, 'IVON', 'LARREA', 'BUENO', '1999-05-09'),
(19, 'GABRIELA', 'ARTEAGA', 'GUTIERREZ', '1998-09-02'),
(20, 'javie', 'heredia', 'poma', '0000-00-00'),
(21, 'javie', 'heredia', 'poma', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `Cod_Li` int(11) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Tematica` varchar(50) DEFAULT NULL,
  `Cod_Au` int(11) NOT NULL,
  `Cod_Ed` int(11) NOT NULL,
  `Fecha_Pu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`Cod_Li`, `Descripcion`, `Tematica`, `Cod_Au`, `Cod_Ed`, `Fecha_Pu`) VALUES
(1, 'EL SECRETO', 'SUPERACION PERSONAL', 1, 1, '2007-04-01'),
(2, 'INTELIGENCIA ARTIFICIAL', 'SISTEMAS EXPERTOS', 2, 0, '2012-04-26'),
(3, 'INTELIGENCIA ARTIFICIAL', 'SISTEMAS EXPERTOS', 3, 0, '2007-06-27'),
(4, 'PRINCIPIOS DE LOS SISTEMAS EXPERTOS', 'SISTEMAS EXPERTOS', 4, 3, '2000-02-01'),
(5, 'EL SEÑOR DE LOS ANILLOS LAS DOS TORRES', 'FANTASIA', 5, 4, '1990-05-23'),
(6, 'EL SEÑOR DE LOS ANILLOS EL RETORN DEL REY', 'FANTASIA', 5, 4, '1990-04-27'),
(7, 'NARNIA EL PRINCIPE CASPIAN', 'NOVELA', 6, 8, '1988-08-08'),
(8, 'NARNIA EL ROPERO Y LA BRUJA ', 'NOVELA', 6, 4, '1990-04-27'),
(9, 'HARRY POTTER PIEDRA FILOSOFAL', 'FANTASIA', 7, 4, '2000-04-19'),
(10, 'HISTORIA DE BOLIVIA', 'EDUCACION', 8, 3, '2000-09-27'),
(11, 'REVOLUVION INDIA', 'EDUCATIVO', 9, 5, '1995-12-25'),
(12, 'EL MUNDO DE SOFIA', 'FILOSOFIA', 10, 0, '1994-08-10'),
(13, 'EL OCHO', 'NOVELA', 11, 0, '1994-02-09'),
(14, 'EL CIRCULO MAGICo', 'NOVELA', 11, 0, '0000-00-00'),
(15, 'CALCULO I', 'MATEMATICAS', 12, 0, '0000-00-00'),
(16, 'CALCULO II', 'MATEMATICAS', 12, 0, '1994-05-03'),
(17, 'EL LIBRO DE LAS CIFRAS', 'MATEMATICAS', 20, 0, '1994-03-14'),
(18, 'CIEN AÑOS DE SOLEDAD', 'NOVELA', 21, 0, '1996-09-10'),
(19, 'ONCE MINUTOS', 'NOVELA', 13, 0, '0000-00-00'),
(20, 'EL ALQUIMISTA', 'NOVELA', 13, 0, '1989-07-11'),
(21, 'FRIDA', 'NOVELA', 13, 0, '1995-02-20'),
(22, 'CALCULO I SOLUCIONARIO', 'MATEMATICAS', 12, 0, '1994-03-10'),
(23, 'LA NIÑA DE SUS OJOS', 'NOVELA', 14, 0, '1970-05-15'),
(24, 'EL HOMBRE QUE CALCULABA', 'MATEMATICAS', 16, 0, '1988-05-05'),
(25, 'MS DOS', 'COMPUTACION', 15, 0, '1989-05-24'),
(26, 'GUANO MALDITO', 'NOVELA', 17, 0, '1995-02-24'),
(27, 'ME AVERGUENZA TUS POLLERAS', 'NOVELA', 15, 0, '1978-06-01'),
(28, 'EL PADRINO', 'NOVELA', 18, 0, '1989-07-19'),
(29, 'EL PROFETA', 'CUENTOS', 19, 0, '1970-05-06'),
(30, 'EL LOCO', 'CUENTOS', 19, 0, '1981-05-03'),
(31, 'METAMORFOSIS', 'NOVELA', 0, 0, '1978-02-08'),
(32, 'DIVINA COMEDIA', 'NOVELA', 22, 5, '1930-05-06'),
(36, 'x', 'x', 1, 1, '0201-10-10'),
(37, 'yy', 'yy', 22, 22, '2014-10-10'),
(38, 'x', 'x', 1, 1, '2014-01-01'),
(39, 'q', 'q', 1, 1, '2014-01-01'),
(40, 'dsadasdad', 'asdas', 0, 0, '0000-00-00'),
(41, 'CRONICAS DE UNA MUERTE ANUNCIADA', 'NOVELA', 21, 2, '2000-01-01'),
(42, 'asdasd', '88', 8, 0, '2014-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `Cod_Pr` int(11) NOT NULL,
  `Cod_Le` int(11) NOT NULL,
  `Cod_Li` int(11) NOT NULL,
  `Fecha_Pr` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`Cod_Pr`, `Cod_Le`, `Cod_Li`, `Fecha_Pr`) VALUES
(1, 1, 2, '2000-01-10'),
(2, 1, 3, '2000-08-05'),
(5, 3, 10, '2001-06-06'),
(6, 3, 11, '2000-06-20'),
(7, 10, 13, '2002-01-02'),
(8, 10, 14, '2002-02-02'),
(9, 10, 15, '2003-01-01'),
(10, 10, 16, '2003-01-02'),
(11, 11, 15, '2005-01-01'),
(12, 12, 16, '2005-06-08'),
(13, 13, 17, '2006-01-01'),
(14, 11, 18, '2006-12-12'),
(15, 13, 19, '2006-12-12'),
(16, 5, 10, '2010-01-02'),
(17, 6, 11, '2010-02-02'),
(18, 7, 13, '2010-03-03'),
(19, 1, 5, '2011-01-05'),
(20, 1, 6, '2011-11-12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`Cod_Au`);

--
-- Indices de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD PRIMARY KEY (`Cod_De`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`Cod_Ed`);

--
-- Indices de la tabla `lector`
--
ALTER TABLE `lector`
  ADD PRIMARY KEY (`Cod_Le`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`Cod_Li`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`Cod_Pr`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `Cod_Au` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  MODIFY `Cod_De` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
  MODIFY `Cod_Ed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `lector`
--
ALTER TABLE `lector`
  MODIFY `Cod_Le` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `Cod_Li` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  MODIFY `Cod_Pr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
