-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2023. Jan 08. 15:52
-- Kiszolgáló verziója: 10.3.36-MariaDB-0+deb10u2
-- PHP verzió: 7.3.31-1~deb10u2

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
