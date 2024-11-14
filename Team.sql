-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: mysql:3306
-- Létrehozás ideje: 2024. Nov 14. 08:49
-- Kiszolgáló verziója: 8.3.0
-- PHP verzió: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `Team`
--
CREATE DATABASE IF NOT EXISTS `Team` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `Team`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `Player`
--

CREATE TABLE `Player` (
  `Id` char(36) NOT NULL,
  `Name` varchar(37) DEFAULT NULL,
  `Height` int DEFAULT NULL,
  `Weight` int DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- A tábla adatainak kiíratása `Player`
--

INSERT INTO `Player` (`Id`, `Name`, `Height`, `Weight`, `CreatedTime`) VALUES
('31a1d8fc-8605-4d8e-ae28-72af344e119e', 'Nagy Sándor', 221, 99, '2024-11-14 09:31:46'),
('bc9c403d-3b18-4eb8-8e54-33f62736d928', 'Kis Sándor', 197, 82, '2024-11-14 09:31:18'),
('bd851758-00b8-4979-b154-d5b7e32e3cf8', 'Tóth Aladár', 172, 70, '2024-11-14 09:32:05');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `Player`
--
ALTER TABLE `Player`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
