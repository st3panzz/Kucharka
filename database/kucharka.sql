-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Čtv 10. pro 2020, 18:37
-- Verze serveru: 10.4.14-MariaDB
-- Verze PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, 'cibule'),
(2, 'celer'),
(3, 'majonéza'),
(4, 'pórek'),
(5, 'kečup'),
(6, 'mrkev'),
(7, 'brokolice'),
(8, 'kyselá okurka'),
(9, 'salátová okurka'),
(10, 'brambory vařené ve slupce'),
(11, 'sůl'),
(12, 'mletý černý pepř'),
(13, 'ocet'),
(14, 'slanina'),
(15, 'hovězí svíčková'),
(16, 'cukr'),
(17, 'olej'),
(18, 'vývar'),
(19, 'smetana'),
(20, 'bobkový list'),
(21, 'nové koření'),
(22, 'pepř'),
(23, 'hladká mouka'),
(24, 'citronová šťáva'),
(25, 'kořenová zelenina'),
(27, 'brusinkový kompot'),
(28, 'tymián'),
(29, 'špek'),
(30, 'rajský protlak'),
(31, 'celý černý pepř'),
(32, 'hovězí přední maso'),
(33, 'hotová jíška'),
(34, 'voda'),
(35, 'petržel'),
(36, 'celý pepř'),
(37, 'hovězí maso s kostí'),
(38, 'petrželka');

-- --------------------------------------------------------

--
-- Struktura tabulky `jidlo`
--

CREATE TABLE `jidlo` (
  `id` int(11) NOT NULL,
  `jmeno` varchar(50) NOT NULL,
  `recept` longtext NOT NULL,
  `obrazek` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `jidlo`
--

INSERT INTO `jidlo` (`id`, `jmeno`, `recept`, `obrazek`, `url`) VALUES
(1, 'Těstoviny s kuřecím masem, slaninou a špenátem', 'Kuřecí prso si nakrájíme na nudličky, parmazán nastrouháme, rajčata si nakrájíme na kostičky a uvaříme těstoviny.\r\n\r\nNa suché pánvi osmažíme slaninu z každé strany až do zhnědnutí. Slaninu vyjmeme a nakrájíme na malé kousky a necháme bokem.\r\n\r\nNa výpek po slanině vložíme kousky masa, osolíme, opepříme, přidáme italské bylinky, papriku. Vše promícháme a maso osmahneme z každé strany. Po osmažení přidáme nadrcený česnek a opět promícháme. Následně vsypeme listy špenátu a rajčata. Vše na pánvi krátce dále smažíme a následně zalijeme smetanou a přidáme parmazán a chilli vločky. Vše zamícháme a necháme chvíli povařit.\r\n\r\nNa závěr přidáme předvařené těstoviny a promícháme. Na talíři zasypeme osmaženou slaninou a trochou parmazánu, popř. dozdobíme čerstvou bazalkou.', NULL, NULL),
(2, 'Fresh bramborový salát s brokolicí', 'Brambory začneme vařit v celku jako první v lehce osolené vodě. Jakmile z půlky změknou, přidáme na kostičky nakrájenou zeleninu. Zhruba po 7 minutách přidáme brokolicové růžičky a vaříme dalších asi 5 minut. Poté vše vyndáme na sítko a necháme okapat a zchladnout na pokojovou teplotu.\r\n\r\nMezitím si nadrobno nakrájíme pórek a cibuli. Vymažeme pánev a jakmile máme brokolici a spol. vychladlou, nakrájíme brambory na kostičky. Ty pak spolu s kořenovou zeleninou a brokolicí nandáme na rozehřátou pánev. Po asi 5 minutách restování přidáme cibuli a pórek a vše na dalších 10 minut přikryjeme poklicí. Teplotu stáhneme na polovinu.\r\n\r\nJakmile máme vše podušené, důkladně osolíme a opepříme a přendáme do skleněné nádoby, ve které vše necháme postupně zchladit na pokojovou teplotu a následně přikryté uložíme do chladu alespoň na půl hodiny. Na konci vše promícháme s majonézou a kečupem (není podmínkou).\r\n\r\nFresh bramborový salát s brokolicí můžeme ihned konzumovat, ale doporučuji nechat uležet nejlépe přes noc. Bude pak mnohem mňamóznější.', NULL, NULL),
(3, 'Výborná svíčková na smetaně s brusinkami', 'Maso osolíme, protkneme 2/3 slaniny a zprudka po všech stranách opečeme. Poté vyjmeme, přidáme zbytek na kostičky nakrájené slaniny, očištěnou a na plátky nakrájenou kořenovou zeleninu, cibuli a vše osmahneme. Pak znovu vložíme maso, přidáme koření, mírně podlijeme a dusíme v troubě. Maso poléváme šťávou a podle potřeby podléváme vývarem.\r\n\r\nMěkké maso vyndáme, šťávu vydusíme na tuk, zaprášíme moukou, tu osmahneme a postupně ředíme zbytkem vývaru. Nakonec zjemníme smetanou.Svíčkovou omáčku dochutíme cukrem, citronovou šťávou nebo octem a necháme ještě chvíli povařit.\r\n\r\nOmáčku poté prolisujeme přes cedník, přelijeme přes maso a ještě prohřejeme. Maso nakrájíme na plátky a můžeme servírovat.\r\n\r\nSvíčkovou na smetaně podáváme s knedlíky a brusinkami na citronovém terčíku, zdobeném šlehačkou.', NULL, NULL),
(4, 'Rajská omáčka s hovězím masem ala Dočík', 'Klidně den předem hovězí přední prošpikujeme špekem, další den osolíme, osmahneme prudce ze všech stran, podlijeme cca 1,5 l vody, přidáme celý pepř, nové koření, bobkový list a pomalu vaříme do změknutí asi 3 - 4 hodiny.\r\n\r\nHovězí maso vyndáme z vývaru a vývar uschováme. Jednu větší mrkev s cibulí nakrájíme nebo nastrouháme, osmahneme na oleji do sklovita, přidáme opět divoké koření a asi lžičku tymiánu. Dále zasypeme asi 4 lžícemi cukru a necháme zkaramelizovat. Přidáme rajský protlak, podlijeme cca 2 dl vývaru a necháme provařit. Dolijeme zbytkem vývaru a necháme dojít k varu.\r\n\r\nPoté vyndáme bobkový list a zbytek rozmixujeme tyčovým mixérem. Rajskou omáčku přecedíme přes cedník zpět do kastrolu, přivedeme k varu, zjemníme cca 200 g smetany, dochutíme (ocet, sůl, cukr) a lehce zahustíme hotovou světlou jíškou. Uvařené hovězí maso nakrájíme na plátky.\r\n\r\nRajskou omáčku s hovězím masem ala Dočík podáváme s těstovinami nebo houskovými knedlíky.\r\n', NULL, NULL),
(5, 'Poctivý hovězí vývar', 'Do hrnce nalijeme 2,5 l studené vody. Hovězí maso omyjeme, vložíme do hrnce a přivedeme k varu. Zeleninu očistíme a vložíme do hrnce s vařící vodou. Petržel použijeme menší, mrkev střední velikosti. Zeleninu nekrájíme, aby se příliš nerozvařila a dobře se s ní pracovalo. Koření nasypeme do sítka na koření a spolu s bobkovými listy přidáme k masu a zelenině.\r\n\r\nHovězí vývar necháme pomalu bublat (tzv. táhnout) asi 3 hodiny. Během této doby sbíráme pěnu, aby vývar zůstal čistý. Po 3 hodinách vyjmeme zeleninu, koření a maso. Část zeleniny nakrájíme a vložíme zpět do vývaru. Maso oddělíme od kosti a příliš tučného. Maso nakrájíme a přidáme do polévky. Hovězí vývar dochutíme solí.\r\n\r\nNa závěr hovězí vývar dozdobíme petrželkou. Poctivý hovězí vývar můžeme podávat s nudlemi, které jsme si uvařili zvlášť, nebo jej vylepšit knedlíčky.', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `propojeni`
--

CREATE TABLE `propojeni` (
  `jidlo_id` int(11) NOT NULL,
  `ingredience_id` int(11) NOT NULL,
  `mnozstvi` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `propojeni`
--

INSERT INTO `propojeni` (`jidlo_id`, `ingredience_id`, `mnozstvi`) VALUES
(1, 1, '2 ks'),
(1, 2, '10 dkg'),
(1, 3, '2 lžíce'),
(1, 4, '10 dkg'),
(1, 5, '1 lžíce'),
(1, 6, '15 dkg'),
(1, 7, '8-10 ks'),
(1, 8, '2 ks'),
(1, 9, '10 dkg'),
(1, 10, '4 ks'),
(1, 12, ''),
(2, 1, '2 ks'),
(2, 2, '10 dkg'),
(2, 3, '2 lžíce'),
(2, 4, '10 dkg'),
(2, 5, '1 lžíce'),
(2, 6, '15 dkg'),
(2, 7, '8-10 ks'),
(2, 8, '2 ks'),
(2, 9, '10 dkg'),
(2, 10, '4 ks'),
(2, 11, ''),
(2, 12, ''),
(2, 13, '1 lžička'),
(3, 1, '1 ks'),
(3, 11, '2 špetky'),
(3, 14, '50 g'),
(3, 15, '1 kg'),
(3, 16, '2 lžičky'),
(3, 17, '3 lžíce'),
(3, 18, '3 dl'),
(3, 19, '3 dl'),
(3, 20, '2 ks'),
(3, 21, '5 kuliček'),
(3, 22, '3 kuličky'),
(3, 23, ''),
(3, 24, '3 lžíce'),
(3, 25, '3 lžičky'),
(3, 27, '300 g'),
(4, 1, '1 ks'),
(4, 6, '1 ks'),
(4, 11, ''),
(4, 13, '1 lžíce'),
(4, 16, '4 lžíce'),
(4, 19, '1 kelímek'),
(4, 20, '2 ks'),
(4, 21, '5 kuliček'),
(4, 28, '1 lžička'),
(4, 29, '4 ks'),
(4, 30, '450 g'),
(4, 31, '5 kuliček'),
(4, 32, '1 kg'),
(4, 33, ''),
(5, 2, '0.3 ks'),
(5, 4, '0.3 ks'),
(5, 6, '2 ks'),
(5, 11, ''),
(5, 20, '4 ks'),
(5, 21, '10 kuliček'),
(5, 34, '2 l'),
(5, 35, '2 ks'),
(5, 36, '10 kuliček'),
(5, 37, '500 g'),
(5, 38, '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
