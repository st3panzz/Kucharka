-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Čtv 10. pro 2020, 10:29
-- Verze serveru: 10.1.37-MariaDB
-- Verze PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `kucharka`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `ingredience`
--

CREATE TABLE `ingredience` (
  `id` int(11) NOT NULL,
  `ingredience` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `ingredience`
--

INSERT INTO `ingredience` (`id`, `ingredience`) VALUES
(1, 'celer'),
(2, 'voda'),
(3, 'pórek'),
(4, 'mrkev'),
(5, 'petržel'),
(6, 'bobkový list'),
(7, 'nové koření'),
(8, 'celý pepř'),
(9, 'hovězí maso s kostí'),
(10, 'sůl'),
(11, 'petrželka'),
(12, 'cukr'),
(13, 'ocet'),
(14, 'cibule'),
(15, 'smetana'),
(16, 'tymián'),
(17, 'špek'),
(18, 'rajský protlak'),
(19, 'celý černý pepř'),
(20, 'hovězí přední maso'),
(21, 'hotová jíška'),
(22, 'slanina'),
(23, 'hovězí svíčková'),
(24, 'olej'),
(25, 'vývar'),
(26, 'pepř'),
(27, 'hladká mouka'),
(28, 'citronová šťáva'),
(29, 'kořenová zelenina'),
(30, 'brusinkový kompot'),
(31, 'celer'),
(32, 'majonéza'),
(33, 'kečup'),
(34, 'brokolice'),
(35, 'kyselá okurka'),
(36, 'salátová okurka'),
(37, 'mletý černý pepř'),
(38, 'brambory vařené ve slupce');

-- --------------------------------------------------------

--
-- Struktura tabulky `jidlo`
--

CREATE TABLE `jidlo` (
  `id` int(11) NOT NULL,
  `jmeno` varchar(50) NOT NULL,
  `recept` longtext NOT NULL,
  `obrázek` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `propojeni`
--

CREATE TABLE `propojeni` (
  `jidlo_id` int(11) NOT NULL,
  `ingredience_id` int(11) NOT NULL,
  `množství` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `ingredience`
--
ALTER TABLE `ingredience`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `jidlo`
--
ALTER TABLE `jidlo`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `propojeni`
--
ALTER TABLE `propojeni`
  ADD PRIMARY KEY (`jidlo_id`,`ingredience_id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `ingredience`
--
ALTER TABLE `ingredience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pro tabulku `jidlo`
--
ALTER TABLE `jidlo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
