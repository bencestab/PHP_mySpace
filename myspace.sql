-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: mysql
-- Létrehozás ideje: 2023. Júl 28. 19:45
-- Kiszolgáló verziója: 8.0.34
-- PHP verzió: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `myspace_db`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `content`
--

CREATE TABLE `content` (
  `cont_id` int NOT NULL,
  `cont_title` varchar(255) NOT NULL,
  `cont_url` varchar(255) NOT NULL,
  `cont_img` varchar(255) NOT NULL,
  `cont_content` text NOT NULL,
  `cont_creator` int NOT NULL,
  `cont_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cont_type` tinyint(1) NOT NULL COMMENT '0: általános info, 1: hírek',
  `cont_state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- A tábla adatainak kiíratása `content`
--

INSERT INTO `content` (`cont_id`, `cont_title`, `cont_url`, `cont_img`, `cont_content`, `cont_creator`, `cont_create`, `cont_type`, `cont_state`) VALUES
(1, 'Energia az űrből', 'energia_az_urbol', 'https://www.urvilag.hu/show.php?fn=maple-2.jpg', 'Első alkalommal sikerült a világűrben termelt napenergiát a Földre továbbítani. A Kaliforniai Műszaki Egyetemen (Caltech) folyó, a világűrben történő napenergia-termelést célzó projekt (SSPD, Space Solar Power Demonstrator) keretében végrehajtott mikrohullámú energiatovábbítási kísérlet (MAPLE, Microwave Array for Power-transfer Low-orbit Experiment) során először sikerült kimutatható mennyiségű energiát továbbítani a Földre ezzel a vezetlék nélküli módszerrel.', 1, '2023-07-03 18:32:00', 1, 1),
(2, 'Kísérleti műhold Csiucsüanból', 'kiserleti_muhold_csiucsuanbol', 'https://www.urvilag.hu/show.php?fn=lm2c-jun.jpg', 'A start az ország északnyugati részéből, Csiucsüanból (Jiuquan) történt június 9-én magyar idő szerint pontban 13 órakor. A hírekben Huliangvang Csisu Sijen (Hulianwang Jishu Shiyan) néven említett műhold egy a „dolgok internete” (internet of things, IoT) szolgáltatás céljára szolgáló, később kiépítendő műholdrendszer előfutára, kísérleti példánya lehet.', 2, '2023-07-03 18:34:30', 1, 1),
(3, 'Starlink 6-5', 'starlink_6-5', 'https://www.urvilag.hu/show.php?fn=B1058-worm.jpg', 'Bő két nappal a kaliforniai Starlink indítás után most Floridából következett egy újabb műholdcsoport, 22 taggal. A SpaceX internetszolgáltató műholdrendszerének további bővítésére szánt 22 darabos adag ezúttal új típusú (V2 Mini) űreszközökből állt. Ezért is fért be kevesebb példány a minap Kaliforniából pályára állított első szériás (V1.5) holdaknál nagyobb tömegű és térfogatú, fejlettebb képességekkel rendelkező űreszközökből a Falcon-9 rakéta orrkúpja alá.', 1, '2023-07-03 18:34:30', 1, 1),
(4, 'A gamma-kitörések ötven éve', 'a_gamma-kotoresek_otven_eve', 'https://www.urvilag.hu/show.php?fn=grb50-6.jpg', 'Fél évszázada, 1973. június 1-jén rejtélyes jelenséget fedeztek fel a csillagászok, amelyet gamma-kitörésnek vagy gamma-viharnak neveztek el, vagy angol megnevezése (gamma-ray burst) rövidítésével egyszerűen csak GRB-nek. Ma már a műholdaknak, például a Swift és a Fermi gamma-távcsöveknek köszönhetően átlagosan naponta fedeznek fel egy-egy újabb GRB-t. ', 1, '2023-07-03 18:34:30', 1, 1),
(5, 'VA261: az Ariane-5 búcsúja', 'va261_az_ariane-5_bucsuja', 'https://www.urvilag.hu/show.php?fn=heinrich-hertz-art.jpg', 'Legutolsó felbocsátásakor két geostacionárius pályára szánt távközlési műholdat indítottak az európai nehézrakétával. Az Ariane-5 VA261 jelzésű repülése – ahogy minden korábbi is – a Francia Guyanában fekvő Kourou űrközpontból (ELA-3 starthely) indult. Az időpont – műszaki okokból június közepéről elhalasztva – július 6-án magyar idő szerint pontban 0 órakor (helyben az időzóna.különbség miatt természetesen még 5-én) volt.', 1, '2023-07-04 20:31:20', 1, 1),
(6, 'About Us', 'about_us', 'https://www.urvilag.hu/show.php?fn=viasat3-art1.jpg', 'Leírás a weboldalról', 1, '2023-07-04 20:31:20', 0, 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`cont_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `content`
--
ALTER TABLE `content`
  MODIFY `cont_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

