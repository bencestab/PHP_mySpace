-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Sep 21, 2023 at 06:47 PM
-- Server version: 8.0.34
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myspace_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `cont_id` int NOT NULL,
  `cont_title` varchar(255) NOT NULL,
  `cont_url` varchar(255) NOT NULL,
  `cont_content` text NOT NULL,
  `cont_creator` int NOT NULL,
  `cont_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cont_state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`cont_id`, `cont_title`, `cont_url`, `cont_content`, `cont_creator`, `cont_create`, `cont_state`) VALUES
(1, 'Bemutatkozás', 'bemutatkozas', 'Képzelj el egy csoport szenvedélyes űrkutatót, akik együtt merülnek el az űrkutatás izgalmas világában!\n<br><br>\nMi vagyunk a MySpace - az űrutazás rajongói, akiknek szenvedélye az univerzum végtelen rejtelmeinek felfedezése.\n<br>\nEzen az oldalon űrhírekkel és érdekességekkel osztjuk meg ezt a szenvedélyünket, és reméljük, hogy inspirálunk téged is az űrutazás csodájának megismerésére.\n<br><br>\nCsatlakozz hozzánk és repülj velünk a csillagok közé!', 1, '2023-07-04 20:31:20', 1),
(2, 'Elérhetőségeink', 'elerhetosegeink', '<h3>Dr. Űrbéli Alexandra</h3>\nEmail: alexandra.urbeli@email.com<br>\nTelefon: +36 123 456 789<br>\nFoglalkozás: Asztronauta és Űrkutató\n<br><br>\n\n<h3>Prof. Csillagvadász Viktor</h3>\nEmail: viktor.csillagvadasz@email.com<br>\nTelefon: +36 987 654 321<br>\nFoglalkozás: Csillagász és Teleszkópfejlesztő\n<br><br>\n\n<h3>Dr. Holdfelszín Laura</h3>\nEmail: laura.holdfelszin@email.com<br>\nTelefon: +36 555 123 456<br>\nFoglalkozás: Geológus és Holdkutató\n<br><br>\n\n<h3>Capt. Csillagutazó Zoltán</h3>\nEmail: zoltan.csillagutazo@email.com<br>\nTelefon: +36 789 321 654<br>\nFoglalkozás: Űrhajókapitány és Űrutazási Kalandor\n<br><br>\n\n<h3>Prof. Napfizikus Éva</h3>\nEmail: eva.napfizikus@email.com<br>\nTelefon: +36 321 654 987<br>\nFoglalkozás: Napfizikus és Űrnapszelekció Szakértő', 1, '2023-07-04 20:31:20', 1),
(3, 'Rólunk írták', 'rolunk-irtak', '<i>\"Az Űrutazás Rajongói oldal egy kiváló forrás az űrkutatás iránt érdeklődők számára. Mindig izgalmas híreket és információkat találok itt!\"</i>\n<br>\n<b>Gábor, Csillagász és Űrhajórajongó</b>\n<br><br>\n\n<i>\"Képtelenség nem beleszeretni az oldaluk állandóan megújuló űrkalandjaiba! Köszönjük, hogy elhozzátok nekünk a csillagokat.\"</i>\n<br>\n<b>Éva és Péter, Űrkutatás Rajongó Pár</b>\n<br><br>\n\n<i>\"Az Űrutazás Rajongói csapata mindig elérhető és segítőkész. Az oldalukat böngészve mindig otthon érzem magam az univerzumban.\"</i>\n<br>\n<b>László, Űrutazás Iránti Lelkes Utazó</b>\n<br><br>\n\n<i>\"Az oldaluk egy fantasztikus utazás az űr rejtelmeibe. Az Űrutazás Rajongói mindig készek új kalandokra inspirálni!\"</i>\n<br>\n<b>Anna, Űrkutatás Fanatikus</b>\n<br><br>\n\n\"Köszönet az Űrutazás Rajongói csapatnak, hogy mindig izgalmas tartalmakat osztanak meg velünk. Rajtatok keresztül érzem, hogy az űr mindig elérhető közelségben van!\"</i>\n<br>\n<b>Tamás, Asztronauta Álmodozó</b>', 1, '2023-07-04 20:31:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `nav_id` int NOT NULL,
  `nav_title` varchar(255) NOT NULL,
  `nav_contentid` int NOT NULL,
  `nav_creator` int NOT NULL,
  `nav_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nav_state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`nav_id`, `nav_title`, `nav_contentid`, `nav_creator`, `nav_create`, `nav_state`) VALUES
(1, 'Bemutatkozás', 1, 1, '2023-06-12 18:45:26', 1),
(2, 'Elérhetőségeink', 2, 1, '2023-06-12 18:45:26', 1),
(3, 'Rólunk írták', 3, 1, '2023-06-12 18:45:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_url` varchar(255) NOT NULL,
  `news_img` varchar(255) NOT NULL,
  `news_content` text NOT NULL,
  `news_creator` int NOT NULL,
  `news_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `news_state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_title`, `news_url`, `news_img`, `news_content`, `news_creator`, `news_create`, `news_state`) VALUES
(1, 'Energia az űrből', 'energia_az_urbol', 'https://www.urvilag.hu/show.php?fn=maple-2.jpg', 'Első alkalommal sikerült a világűrben termelt napenergiát a Földre továbbítani. A Kaliforniai Műszaki Egyetemen (Caltech) folyó, a világűrben történő napenergia-termelést célzó projekt (SSPD, Space Solar Power Demonstrator) keretében végrehajtott mikrohullámú energiatovábbítási kísérlet (MAPLE, Microwave Array for Power-transfer Low-orbit Experiment) során először sikerült kimutatható mennyiségű energiát továbbítani a Földre ezzel a vezetlék nélküli módszerrel.', 1, '2023-07-03 18:32:00', 1),
(2, 'Kísérleti műhold Csiucsüanból', 'kiserleti_muhold_csiucsuanbol', 'https://www.urvilag.hu/show.php?fn=lm2c-jun.jpg', 'A start az ország északnyugati részéből, Csiucsüanból (Jiuquan) történt június 9-én magyar idő szerint pontban 13 órakor. A hírekben Huliangvang Csisu Sijen (Hulianwang Jishu Shiyan) néven említett műhold egy a „dolgok internete” (internet of things, IoT) szolgáltatás céljára szolgáló, később kiépítendő műholdrendszer előfutára, kísérleti példánya lehet.', 2, '2023-07-03 18:34:30', 1),
(3, 'Starlink 6-5', 'starlink_6-5', 'https://www.urvilag.hu/show.php?fn=B1058-worm.jpg', 'Bő két nappal a kaliforniai Starlink indítás után most Floridából következett egy újabb műholdcsoport, 22 taggal. A SpaceX internetszolgáltató műholdrendszerének további bővítésére szánt 22 darabos adag ezúttal új típusú (V2 Mini) űreszközökből állt. Ezért is fért be kevesebb példány a minap Kaliforniából pályára állított első szériás (V1.5) holdaknál nagyobb tömegű és térfogatú, fejlettebb képességekkel rendelkező űreszközökből a Falcon-9 rakéta orrkúpja alá.', 1, '2023-07-03 18:34:30', 1),
(4, 'A gamma-kitörések ötven éve', 'a_gamma-kotoresek_otven_eve', 'https://www.urvilag.hu/show.php?fn=grb50-6.jpg', 'Fél évszázada, 1973. június 1-jén rejtélyes jelenséget fedeztek fel a csillagászok, amelyet gamma-kitörésnek vagy gamma-viharnak neveztek el, vagy angol megnevezése (gamma-ray burst) rövidítésével egyszerűen csak GRB-nek. Ma már a műholdaknak, például a Swift és a Fermi gamma-távcsöveknek köszönhetően átlagosan naponta fedeznek fel egy-egy újabb GRB-t. ', 1, '2023-07-03 18:34:30', 1),
(5, 'VA261: az Ariane-5 búcsúja', 'va261_az_ariane-5_bucsuja', 'https://www.urvilag.hu/show.php?fn=heinrich-hertz-art.jpg', 'Legutolsó felbocsátásakor két geostacionárius pályára szánt távközlési műholdat indítottak az európai nehézrakétával. Az Ariane-5 VA261 jelzésű repülése – ahogy minden korábbi is – a Francia Guyanában fekvő Kourou űrközpontból (ELA-3 starthely) indult. Az időpont – műszaki okokból június közepéről elhalasztva – július 6-án magyar idő szerint pontban 0 órakor (helyben az időzóna.különbség miatt természetesen még 5-én) volt.', 1, '2023-07-04 20:31:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `user_realname` varchar(255) NOT NULL,
  `user_nickname` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_adminstate` varchar(255) NOT NULL,
  `user_state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_realname`, `user_nickname`, `user_password`, `user_adminstate`, `user_state`) VALUES
(1, 'Balog Róbert', 'bobby', '123456', 'superadmin', 1),
(2, 'Stáb Bence', 'bence', '123456', 'superadmin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`cont_id`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`nav_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `cont_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `nav_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;