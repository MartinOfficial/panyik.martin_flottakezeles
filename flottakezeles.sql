-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 09. 11:03
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `flottakezeles`
--
CREATE DATABASE IF NOT EXISTS `flottakezeles` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `flottakezeles`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gepjarmuvek`
--

CREATE TABLE `gepjarmuvek` (
  `rendszam` varchar(7) COLLATE utf8_hungarian_ci NOT NULL,
  `evjarat` int(4) NOT NULL,
  `berloID` int(100) NOT NULL,
  `tipus` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `karugy`
--

CREATE TABLE `karugy` (
  `karszam` int(100) NOT NULL,
  `rendszam` int(7) NOT NULL,
  `berloID` int(100) NOT NULL,
  `karstatus` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `becsultar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ugyfelek`
--

CREATE TABLE `ugyfelek` (
  `ID` int(100) NOT NULL,
  `cegnev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `szekhely` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `gepjarmuvek`
--
ALTER TABLE `gepjarmuvek`
  ADD PRIMARY KEY (`rendszam`),
  ADD KEY `berloID` (`berloID`);

--
-- A tábla indexei `karugy`
--
ALTER TABLE `karugy`
  ADD PRIMARY KEY (`karszam`),
  ADD KEY `berloID` (`berloID`);

--
-- A tábla indexei `ugyfelek`
--
ALTER TABLE `ugyfelek`
  ADD PRIMARY KEY (`ID`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `gepjarmuvek`
--
ALTER TABLE `gepjarmuvek`
  ADD CONSTRAINT `gepjarmuvek_ibfk_1` FOREIGN KEY (`berloID`) REFERENCES `ugyfelek` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `karugy`
--
ALTER TABLE `karugy`
  ADD CONSTRAINT `karugy_ibfk_1` FOREIGN KEY (`berloID`) REFERENCES `ugyfelek` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
