-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 06 apr 2022 om 12:41
-- Serverversie: 5.7.31
-- PHP-versie: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formula1`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `constructors`
--

DROP TABLE IF EXISTS `constructors`;
CREATE TABLE IF NOT EXISTS `constructors` (
  `Constructor_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Nationality` text NOT NULL,
  `URL` text NOT NULL,
  PRIMARY KEY (`Constructor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `constructors`
--

INSERT INTO `constructors` (`Constructor_ID`, `Name`, `Nationality`, `URL`) VALUES
(1, 'Red Bull', 'Austrian', 'http://en.wikipedia.org/wiki/Red_Bull_Racing'),
(2, 'Mercedes', 'German', 'http://en.wikipedia.org/wiki/Mercedes-Benz_in_Formula_One'),
(3, 'AlphaTauri', 'Italian', 'http://en.wikipedia.org/wiki/Scuderia_AlphaTauri'),
(4, 'Alpine\r\n', 'French', 'http://en.wikipedia.org/wiki/Alpine_F1_Team'),
(5, 'Aston Martin', 'British', 'http://en.wikipedia.org/wiki/Aston_Martin_in_Formula_One'),
(6, 'Ferrari', 'Italian', 'http://en.wikipedia.org/wiki/Scuderia_Ferrari'),
(7, 'Haas', 'American', 'http://en.wikipedia.org/wiki/Haas_F1_Team'),
(8, 'McLaren', 'British', 'http://en.wikipedia.org/wiki/McLaren'),
(9, 'Williams', 'British', 'http://en.wikipedia.org/wiki/Williams_Grand_Prix_Engineering'),
(10, 'Alfa Romeo', 'Italian', 'http://en.wikipedia.org/wiki/Scuderia_AlphaTauri');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `drivers`
--

DROP TABLE IF EXISTS `drivers`;
CREATE TABLE IF NOT EXISTS `drivers` (
  `Driver_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Team_ID` int(11) NOT NULL DEFAULT '0',
  `Name` text NOT NULL,
  `Code` text NOT NULL,
  `Number` int(11) NOT NULL,
  `Nationality` text NOT NULL,
  `Url` text NOT NULL,
  PRIMARY KEY (`Driver_ID`),
  KEY `TeamToDriver` (`Team_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `drivers`
--

INSERT INTO `drivers` (`Driver_ID`, `Team_ID`, `Name`, `Code`, `Number`, `Nationality`, `Url`) VALUES
(1, 1, 'Alexander Albon', 'ALB', 23, 'Thai', 'http://en.wikipedia.org/wiki/Alexander_Albon'),
(2, 4, 'Fernando Alonso', 'ALO', 14, 'Spanish', 'http://en.wikipedia.org/wiki/Fernando_Alonso'),
(3, 10, 'Valtteri Bottas', 'BOT', 77, 'Finnish', 'http://en.wikipedia.org/wiki/Valtteri_Bottas'),
(4, 3, 'Pierre Gasly', 'GAS', 10, 'French', 'http://en.wikipedia.org/wiki/Pierre_Gasly'),
(5, 2, 'Lewis Hamilton', 'HAM', 44, 'British', 'http://en.wikipedia.org/wiki/Lewis_Hamilton'),
(6, 5, 'Nico Hülkenberg', 'HUL', 27, 'German', 'http://en.wikipedia.org/wiki/Nico_H%C3%BClkenberg'),
(7, 9, 'Nicholas Latifi', 'LAT', 6, 'Canadian', 'http://en.wikipedia.org/wiki/Nicholas_Latifi'),
(8, 6, 'Charles Leclerc', 'LEC', 16, 'Monegasque', 'http://en.wikipedia.org/wiki/Charles_Leclerc'),
(9, 7, 'Kevin Magnussen', 'MAG', 20, 'Danish', 'http://en.wikipedia.org/wiki/Kevin_Magnussen'),
(10, 8, 'Lando Norris', 'NOR', 4, 'British', 'http://en.wikipedia.org/wiki/Lando_Norris'),
(11, 4, 'Esteban Ocon', 'OCO', 31, 'French', 'http://en.wikipedia.org/wiki/Esteban_Ocon'),
(12, 8, 'Daniel Ricciardo', 'RIC', 3, 'Australian', 'http://en.wikipedia.org/wiki/Daniel_Ricciardo'),
(13, 2, 'George Russell', 'RUS', 63, 'British', 'http://en.wikipedia.org/wiki/George_Russell_%28racing_driver%29'),
(14, 6, 'Carlos Sainz', 'SAI', 55, 'Spanish', 'http://en.wikipedia.org/wiki/Carlos_Sainz_Jr.'),
(15, 7, 'Mick Schumacher', 'MSC', 47, 'German', 'http://en.wikipedia.org/wiki/Mick_Schumacher'),
(16, 5, 'Lance Stroll', 'STR', 18, 'Canadian', 'http://en.wikipedia.org/wiki/Lance_Stroll'),
(17, 3, 'Yuki Tsunoda', 'TSU', 22, 'Japanese', 'http://en.wikipedia.org/wiki/Yuki_Tsunoda'),
(18, 1, 'Max Verstappen', 'VER', 33, 'Dutch', 'http://en.wikipedia.org/wiki/Max_Verstappen'),
(19, 10, 'Guanyu Zhou', 'ZHO', 24, 'Chinese', 'http://en.wikipedia.org/wiki/Guanyu_Zhou'),
(20, 1, 'Sergio Pérez', 'PER', 11, 'Mexican', 'http://en.wikipedia.org/wiki/Sergio_P%C3%A9rez');

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `TeamToDriver` FOREIGN KEY (`Team_ID`) REFERENCES `constructors` (`Constructor_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
