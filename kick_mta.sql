-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 05 mrt 2019 om 22:24
-- Serverversie: 5.7.23
-- PHP-versie: 5.6.38-1+0~20181001133120.5+stretch~1.gbpcf4838

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kick_mta`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` text,
  `password` varchar(32) NOT NULL,
  `salt` varchar(30) NOT NULL DEFAULT '1234567890',
  `email` varchar(100) NOT NULL,
  `registerdate` text,
  `lastlogin` datetime DEFAULT NULL,
  `ip` text,
  `admin` float NOT NULL DEFAULT '0',
  `supporter` float NOT NULL DEFAULT '0',
  `vct` float NOT NULL DEFAULT '0',
  `mapper` float NOT NULL DEFAULT '0',
  `scripter` float NOT NULL DEFAULT '0',
  `warn_style` int(1) NOT NULL DEFAULT '1',
  `hiddenadmin` tinyint(3) UNSIGNED DEFAULT '0',
  `adminjail` tinyint(3) UNSIGNED DEFAULT '0',
  `adminjail_time` int(11) DEFAULT NULL,
  `adminjail_by` text,
  `adminjail_reason` text,
  `muted` tinyint(3) UNSIGNED DEFAULT '0',
  `globalooc` tinyint(3) UNSIGNED DEFAULT '1',
  `friendsmessage` varchar(255) NOT NULL DEFAULT 'Hi!',
  `adminjail_permanent` tinyint(3) UNSIGNED DEFAULT '0',
  `adminreports` int(11) DEFAULT '0',
  `warns` tinyint(3) UNSIGNED DEFAULT '0',
  `chatbubbles` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `adminnote` text,
  `appstate` tinyint(1) DEFAULT '3',
  `appdatetime` datetime DEFAULT NULL,
  `appreason` longtext,
  `help` int(1) NOT NULL DEFAULT '1',
  `adblocked` int(1) NOT NULL DEFAULT '0',
  `newsblocked` int(1) DEFAULT '0',
  `mtaserial` text,
  `d_addiction` text,
  `loginhash` varchar(64) DEFAULT NULL,
  `credits` int(11) NOT NULL DEFAULT '0',
  `transfers` int(11) DEFAULT '0',
  `monitored` varchar(255) NOT NULL DEFAULT '',
  `autopark` int(1) NOT NULL DEFAULT '1',
  `forceUpdate` smallint(1) NOT NULL DEFAULT '0',
  `anotes` text,
  `oldAdminRank` int(11) DEFAULT '0',
  `suspensionTime` bigint(20) DEFAULT NULL,
  `car_license` int(1) NOT NULL DEFAULT '0',
  `adminreports_saved` int(3) DEFAULT '0',
  `cpa_earned` double DEFAULT '0',
  `electionsvoted` int(11) NOT NULL DEFAULT '0',
  `referrer` int(11) DEFAULT '0',
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `serial_whitelist_cap` int(2) NOT NULL DEFAULT '2',
  `tc_backend` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `salt`, `email`, `registerdate`, `lastlogin`, `ip`, `admin`, `supporter`, `vct`, `mapper`, `scripter`, `warn_style`, `hiddenadmin`, `adminjail`, `adminjail_time`, `adminjail_by`, `adminjail_reason`, `muted`, `globalooc`, `friendsmessage`, `adminjail_permanent`, `adminreports`, `warns`, `chatbubbles`, `adminnote`, `appstate`, `appdatetime`, `appreason`, `help`, `adblocked`, `newsblocked`, `mtaserial`, `d_addiction`, `loginhash`, `credits`, `transfers`, `monitored`, `autopark`, `forceUpdate`, `anotes`, `oldAdminRank`, `suspensionTime`, `car_license`, `adminreports_saved`, `cpa_earned`, `electionsvoted`, `referrer`, `activated`, `serial_whitelist_cap`, `tc_backend`) VALUES
(1, 'Danex', 'daniels271095', '2771286139', 'daniels005@inbox.lvv', '2018-07-17 21:49:51', '2019-02-04 23:16:22', '84.27.170.238', 6, 0, 0, 0, 3, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 10, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, '74C8F0BAB0CB045E5752A2D358D56384', NULL, NULL, 49, 0, '', 1, 0, NULL, 0, NULL, 0, 10, 0, 0, 0, 1, 2, 0),
(657, 'GoblinX', 'lilfucker420', '0545196024', 'janis6516@inbox.lv', '2018-08-27 16:05:04', '2019-03-05 17:26:34', '213.226.141.174', 5, 0, 2, 0, 0, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, 'ADEB09BA24967F8B4F27991CD87E3052', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 1, 2, 0),
(661, 'daniels', 'vasara18', '1595027965', 'daniels@.lv', '2018-08-29 21:54:03', '2019-03-03 19:30:28', '213.226.141.237', 6, 0, 0, 0, 3, 1, 1, 0, NULL, NULL, NULL, 0, 1, 'Hi!as', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, 'FDDD6DCC76F790F417953CA7457D3EF4', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 1, 2, 0),
(662, 'Eska', '25343868', '7432274304', 'robikje@inbox.lv', '2018-09-09 15:33:28', '2019-02-28 20:57:04', '93.177.216.65', 2, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, '/chargeveh\n', 3, NULL, NULL, 1, 0, 0, '4EFF0F300EE8D146B9BDD3D0681464A1', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 1, 2, 0),
(663, 'BunnyHop', 'dudi4747', '4838445592', 'djakimjonok@gmail.com', '2018-09-18 19:13:27', '2019-02-18 19:25:18', '213.226.141.118', 3, 0, 2, 0, 0, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, '9C07CEA931B6CEC720EA43F1722B7A52', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 1, 2, 0),
(664, 'Kapracis', 'kapracis666', '3830754874', 'dimantstoms@gmail.com', '2018-11-06 21:40:31', '2019-01-29 22:56:52', '83.177.149.141', 1, 0, 2, 0, 0, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, '9903ACB3D9EC756B1AF1429E4E3B95F4', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 1, 2, 0),
(666, '9Boz', 'reliks2222', '3061531471', '9Boz@inbox.lv', '2018-12-28 17:29:15', '2019-01-09 21:45:23', '91.105.73.226', 3, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, '2814010485618D3FB04F924F6028EB42', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 1, 2, 0),
(667, 'Toms', 'tomelis111', '6408273654', 'tomarinslv@gmail.com', '2019-02-11 15:00:31', '2019-02-11 15:17:17', '80.89.79.115', 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, '213A8433A0BB7A4DD156DBA3C92532A1', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 1, 2, 0),
(668, 'ekils', 'sarmis123', '9641664076', 'ejnahuj@inbox.lv', '2019-02-16 16:30:37', '2019-02-16 16:35:57', '62.85.98.73', 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, 'B98972625B79BEC850E19012ECD30B44', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 1, 2, 0),
(669, 'biistamais', 'biistamais100', '1234567890', 'neko@neko.neko', NULL, NULL, '87.226.92.64', 6, 0, 0, 0, 3, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, 'F51A456B348DD59D8B9E0FFF2D31C442', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 1, 2, 0),
(670, 'Gozmits', 'nebustevzagt', '0253213664', 'osismartins@inbox.lv', '2019-03-05 21:55:19', NULL, '62.122.17.201', 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, 'DDCF892B3272096FD8FD8B5A97330FF3', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 1, 2, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `account_settings`
--

CREATE TABLE `account_settings` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `account_settings`
--

INSERT INTO `account_settings` (`id`, `name`, `value`) VALUES
(1, 'hide_hud', '1'),
(1, 'report_panel_mod', '0'),
(1, 'duty_supporter', '0'),
(1, 'duty_admin', '1'),
(0, 'hide_hud', '0'),
(1, 'graphic_motionblur', '0'),
(1, 'graphic_skyclouds', '0'),
(1, 'graphic_logs', '0'),
(1, 'dynamic_lighting_vehicles', '0'),
(1, 'dynamic_lighting', '0'),
(1, 'vehicle_rims', '1'),
(1, 'graphic_shaderwater', '0'),
(1, 'settings_hud_style', '1'),
(657, 'hide_hud', '1'),
(657, 'duty_admin', '1'),
(659, 'hide_hud', '1'),
(661, 'hide_hud', '1'),
(661, 'dynamic_lighting', '0'),
(662, 'duty_admin', '1'),
(662, 'dynamic_lighting', '0'),
(662, 'hide_hud', '1'),
(663, 'duty_admin', '1'),
(663, 'hide_hud', '1'),
(661, 'duty_admin', '1'),
(664, 'duty_admin', '1'),
(664, 'hide_hud', '1'),
(657, 'vehicle_rims', '1'),
(657, 'report_panel_mod', '0'),
(661, 'report_panel_mod', '0'),
(661, 'dynamic_lighting_vehicles', '1'),
(661, 'settings_hud_style', '1'),
(661, 'graphic_shaderwater', '1'),
(661, 'graphic_motionblur', '0'),
(661, 'vehicle_rims', '1'),
(661, 'streams', '1'),
(657, 'vehicle_hotkey', '1'),
(666, 'duty_admin', '1'),
(667, 'hide_hud', '1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin_type` enum('a','b','c') NOT NULL DEFAULT 'a',
  `autoemail` varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `adminhistory`
--

CREATE TABLE `adminhistory` (
  `id` int(10) NOT NULL,
  `user` int(10) NOT NULL,
  `user_char` int(11) NOT NULL DEFAULT '0',
  `admin` int(10) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action` tinyint(3) NOT NULL DEFAULT '6',
  `duration` int(10) NOT NULL DEFAULT '0',
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `adminhistory`
--

INSERT INTO `adminhistory` (`id`, `user`, `user_char`, `admin`, `date`, `action`, `duration`, `reason`) VALUES
(1, 658, 3, 1, '2018-08-27 18:41:39', 1, 0, 'sjebal');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `advertisement` text NOT NULL,
  `start` int(11) NOT NULL,
  `expiry` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `advertisements`
--

INSERT INTO `advertisements` (`id`, `phone`, `name`, `address`, `advertisement`, `start`, `expiry`, `created_by`, `section`) VALUES
(2, '7211430', 'Chief', 'Jefferson st 21', 'PÄrdod 1965 gada VAZ 1.5 bendzÄ«ns - cena runÄjama\n', 1549906191, 1549909791, 21, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `apb`
--

CREATE TABLE `apb` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `doneby` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `applicant` int(11) NOT NULL DEFAULT '0',
  `dateposted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datereviewed` datetime DEFAULT NULL,
  `reviewer` int(11) NOT NULL DEFAULT '0',
  `note` text,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `question1` text,
  `question2` text,
  `question3` text,
  `question4` text,
  `answer1` text,
  `answer2` text,
  `answer3` text,
  `answer4` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `applications`
--

INSERT INTO `applications` (`id`, `applicant`, `dateposted`, `datereviewed`, `reviewer`, `note`, `state`, `question1`, `question2`, `question3`, `question4`, `answer1`, `answer2`, `answer3`, `answer4`) VALUES
(1, 110, '2018-07-12 15:32:58', '2018-07-12 18:34:04', 15, 'troll\n', 2, 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'kadu rp? \njus gribat /me komandinas? jusu zinasanam rp ir ari IC cats, tapec noteikti pateiksu ej nahuj un /me iesezas masina. Tur nav nekadi muskuli jarpo.\n', 'wtf kapec gan? kaut 10 pirksu\n', 'nu principa ooc insultosu mentu, bet jus gribat dzirdet to, ka rakstisu ic sudzibu un taisisu ic problemas.\n', 'rullesu prom, bet jus sagaidat \"sedesu ar rokam uz stures, atversu logu un runasu, dosu tiesibas\"\n'),
(2, 110, '2018-07-12 15:36:38', '2018-07-12 18:45:38', 105, 'Nav pietiekamas pasÄ«vÄ RP zinÄÅ¡anas, nav redzama vÄ“lme to darÄ«t.l\n', 2, 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Atversu logu, sasveicinasos, iedosu visu ko prasa un ta talak, lidz atpisisies.\n', 'Ne, kads sakars?\n', '/me pec tazer nokrit uz zemes un nav spejigs pretoties. \n\nTe nevajag nekadu /do, jo /do ir situacija.\n', 'Tas ir atkarigs no situacijas. Ja iepis staba kaut kur LS nomale, kur neviena nav, nav jega rpot, jo kad ajega rpot pasam ar sevi? prieks kam? Bet ja iepis kaut kur populara vieta, tad velams tomer rpot, bet tapat neviens nerpo, jo visi /do traumite netika guta\n'),
(3, 110, '2018-07-12 16:05:55', '2018-07-12 19:07:21', 105, 'Nepietiekamas RP zinÄÅ¡anas.\n', 2, 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'PalikÅ¡u auto, gaidÄ«Å¡u lÄ«dz atnÄk virsnieks, uzsÄkÅ¡u dialogu. \n\n', 'Noteikti IC risinÄÅ¡u Å¡o problÄ“mu, mÄ“Ä£inÄÅ¡u rast kompromisus un visu iespÄ“jamo.\n', 'Nu cmon, nÄ“. Tur max buferi ielocÄ«s, paÅ¡am tÄ dzÄ«vÄ“ ir gadijies. Ienesa laternÄ un tik tÄda \"strauja bremzÄ“Å¡ana\", nekas vairÄk. Pieri neviens nepÄrsita pat.\n', '/me izkÄpj no auto ar paceltÄm rokÄm\ntÄlÄk sekoju virsnieku norÄdijumiem...\n/do nepretojas arestam\n/me iesÄ“Å¾as policijas auto aizmugurÄ“\nun tÄ lÄ«dz cietumam. Stulbs jautÄjums patiesÄ«bÄ.\n'),
(4, 304, '2018-07-13 14:07:51', '2018-07-13 17:11:11', 105, 'Nepietiekamas RP zinÄÅ¡anas\n', 2, 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'IzkÄpju no maÅ¡Ä«nas ,un pakÄ¼aujios policitam\n', 'JÄ\n', '/me /do\n', 'PagaidÄ«Å¡u kamÄ“r pienÄk PD un pajautÄÅ¡u iemeslu.\n'),
(5, 304, '2018-07-13 14:26:03', '2018-07-13 17:27:39', 8, 'PÄrrunas  GM loungÄ.\n', 1, 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', '/me atveru logu\n/do noguÄ¼os uz zemes un izrÄdu bailes\n\nP.S es Å¡o Ä«sti nezinu,kÄ tas jÄdara ,varbÅ«t kÄds admins var palÄ«dzÄ“t ka ielaidÄ«sier serverÄ« ;)\n\n', 'JÄ\n', 'NesapraÅ¡anÄ pakÄ¼aujos policistiem, cenÅ¡os noskaidrot kas notiek!\n', 'PagaidÄ«Å¡u kamÄ“r pienÄk LSPD un pajaautÄÅ¡u iemeslu manis apturÄ“Å¡anai\n'),
(6, 240, '2018-07-18 14:30:03', '2018-07-18 17:30:29', 209, 'nebus\n', 2, 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'adakljhaiuodhiajdojaodj\n', 'go;jsokjgosofgjsojs\n', 'fpksapkfpoakfpoa[kfp\n', 'qiufh89ahfiuajfiuoa\n'),
(7, 240, '2018-07-18 14:32:15', '2018-07-18 17:33:01', 209, 'uzraksti normalu\n', 2, 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'EW bomz Blag akcepto un bus ja , \n1. mani ielika pa nepareizu jailu \n2. nebija nekads nonrp\n3. nebija nonrp glue \n4.bija vnk cs\n', 'adadada\n', 'dadada\n', 'dadada\n'),
(8, 240, '2018-07-18 14:33:23', '2018-07-18 17:33:48', 209, 'izbanoÅ¡u. ja velreiz ta izdarisi\n', 1, 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'dadadsda\n', 'sdasdasdasd\n', 'sdasdasdasda\n', 'asdasdasda\n'),
(9, 341, '2018-07-19 11:53:46', '2018-07-19 18:43:18', 295, 'NormÄli aizpildi lÅ«dzu.\n', 2, 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'EJ DIRST NE\n', 'es parunasu ar viniem\n', '/me rokas aizliek aiz muguras\n/do rokas aiz muguras\n/do LSPD darbinieks saliek rokudzelzos\n/me paklaujas lspd\n', 'ja\n'),
(10, 10, '2018-07-20 15:34:39', '2018-07-20 18:37:57', 15, 'Tiksi strikti uzraudzÄ«ts.\n', 1, 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Ko? :D U mean... Ko Es darÄ«Å¡u, kad tikÅ¡u arestÄ“ts? RP nav atkarÄ«gs tikai no manis, bet arÄ« no LSPD darbinieka, kas mani arestÄ“t.. So I can guess that u mean \"Uzraksti, ko darÄ«si, kad tiksi arestÄ“ts\", \'n my answer is - KlausÄ«Å¡u LSPD darbinieka pavÄ“lÄ“m, turÄ“Å¡u pie likumiem, izmantoÅ¡u advokÄta pakalpojumus, un cÄ«nÄ«Å¡os pret netaisnÄ«bu!\n', '/do Jim nebÅ«tu spÄ“jÄ«gs veikt kustÄ«bas, jo pÄ“c taser Å¡aviena atrodas uz zemes\n/do PÄ“c 50 sekundÄ“m bÅ«tu redzams, ka Jim atkal ir spÄ“jÄ«gs nedaudz pakustÄ“ties\n/me Ar abu roku, un kÄju palÄ«dzÄ«bu cenÅ¡as piecelties, bet tas neidzodas, jo Å¡oks ir bijis pÄrÄk liels\n(( TÄlÄk skatos, ko LSPD darbinieks dara un blah blah blah))\n', 'ApstÄÅ¡os ceÄ¼a labajÄ pusÄ“, pÄ“c kÄ noslÄpÄ“Å¡u dzinÄ“ju.. Tad gaidÄ«Å¡u, kad LSPD darbinieks pienÄks klÄt, un pateiks apturÄ“Å¡anas iemeslu... TÄlÄk uzrÄdÄ«Å¡u AutovadÄ«tÄja licensi, kÄ arÄ« automaÅ¡Ä«nas Tehnisko Pasi... Ja bÅ«s vajadzÄ«gs - ApmaksÄÅ¡u sodiÅ†u :)\n', 'NÄ“... Kautvai 10... Tas nav pÄrkÄpums, jo Ä«stajÄ dzÄ«vÄ“ arÄ« cilvÄ“ki var iegÄdÄties vairÄk nekÄ 1 nazi.\n'),
(11, 137, '2018-07-20 16:44:15', '2018-07-20 19:45:43', 5, 'PieÅ†emsim\n', 1, 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Es IC Visu Rposu,un caur IC runasu.\n', 'Ne,jo cilveks var iegadaties 4 nazus ja tos grib.\n', 'Ir javeic RP no 40 hm/h,jo no tada atruma var dabut lielas traumas.\n', 'Es apstasos cela mala un aidisu kamer ments pienaks pie manis un prasis visus dukumentus un paeiks par ko apstadinaja.un pec tam vins vai nu palaidis vai arrestes mani.\n'),
(12, 141, '2018-07-20 18:04:56', '2018-07-20 21:06:50', 106, 'AtbildÄ“ja pareizi uz jautÄjumiem.\n', 1, 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'NÄ“, jo erpiski var turÄ“t 4 naÅ¾us.\n', 'JÄ.\n', '/me paceÄ¼ rokas gaisÄ. /me nepretojas policistam. \n', 'AtkarÄ«bÄ no tÄ“la. 1 piemÄ“rs - izdarbinu dzinÄ“ju un sekoju norÄdÄ«jumiem.\n'),
(13, 110, '2018-07-21 19:52:34', '2018-07-21 23:27:30', 16, 'ApstiprinÄts.\n', 1, 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', '/do pÄ“c tazer trÄpijuma guÄ¼ uz zemes, paralizets\n/do redzams kÄ pienÄk virsnieks un saslÄ“dz mani\n/me pieceÄ¼as kÄjas un seko virsniekam uz operetÄ«vo transportu\n/me paceÄ¼ kÄju, noliec galvu un iesÄ“Å¾as iekÅ¡ transport aizmugurÄ“.\n', 'ApstÄÅ¡os ceÄ¼a malÄ un sagaidÄ«Å¡u kad atnÄks policists. IedoÅ¡u apliecÄ«bu un gaidÄ«Å¡u maÅ¡Ä«nÄ, pÄ“c tam vajadzÄ«bas gadÄ«jumÄ apmasÄÅ¡u sodu.\n', '/me saÅ†em tazer trÄpijumu un nokrÄ«t uz zemes dÄ“Ä¼ muskuÄ¼u paralÄ«zes.\n/do ir nespÄ“jÄ«gs kustÄ“ties/pretoties pÄ“c elektroÅ¡oka tÅ—apojuma\n', 'BÅ«tu vÄ“lams.\n'),
(14, 308, '2018-07-21 20:56:11', '2018-07-22 00:12:41', 46, 'Paskaidroja vairÄk man discordÄ.\n', 1, 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'ApstÄÅ¡os un pajautÄÅ¡u iemeslu\n', 'Tas viss ir atkarÄ«gs no otras personas ja mani pÄrbaudÄ«tu es ar /do uzrakstÄ«tu ko atrastu \n', 'NepiemÄ“rots background nevaru izlasÄ«t jautÄjumu\n', '/do saÅ†emtu teizer Å¡Ävienu krÅ«ts rajona pÄ“c kÄ nokristu uz zemes un vissus muskuÄ¼us sarautu krampÄ« un sÄktu trÄ«cÄ“t\n'),
(15, 190, '2018-07-22 12:07:15', '2018-07-22 15:08:01', 46, 'PagaidÄm pieÅ†emÅ¡u, bet bÅ«si uz jautÄjuma zÄ«mes. \n', 1, 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Es sasveicinÄÅ¡os un pajautÄÅ¡u apturÄ“Å¡anas iemeslu, ja bÅ«s pÄrkÄpti noteikumi, man protams izrakstÄ«s sodu.\n', 'Es iekÄptu maÅ¡Ä«nÄ, braucam uz Los Santos Policijas Departamentu un mani tur ieliks cietumÄ, pajautÄÅ¡u cik ilgi jÄsÄ“Å¾ bÅ«s cietumÄ\n', '/me nokristu zemÄ“ un sÄktu kratÄ«ties /do kratÄs, dÄ“Ä¼ teizera elektroÅ¡oka\n', 'Es domÄju mana reakcija bÅ«tu tÄda, ka vienkÄrÅ¡i es bÅ«tu mierÄ«gs, es nepretotos pret LSPD un jautÄÅ¡u arestÄ“Å¡anas iemeslu, ja ir arestÄ“ts ne par ko, tad sÅ«dzos adminam caur /report\n'),
(16, 336, '2018-07-25 20:31:05', '2018-07-26 17:14:03', 295, 'Labi, ceru ka neatkÄrtosies Å¡is.\n', 1, 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', '/me PÄ“c Å¡Äviena sajustu lielas sÄpes Ä·ermeÅ†a aukÅ¡daÄ¼Ä.\n/do JÅ«tams bÅ«tu ka Ä·ermenis sÄk trÄ«cÄ“t.\n', 'ApstÄÅ¡os ceÄ¼a malÄ un sÄkÅ¡u RP situÄciju.\n', 'JÄ protams!\n', 'ErpoÅ¡u pilnu RP situÄciju un detelizÄ“ti katru lietu.\n'),
(17, 151, '2018-07-29 10:20:07', '2018-07-29 13:20:51', 12, 'labais\n', 1, 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'JÄ \n', '/do Sekotu policistam \n', 'MeiÄ£inÄÅ¡u apstrÄ«dÄ“t bÅ«Å¡u Å¡okÄ \n', '/do PÄ“c tazer nokristu zemÄ“ pÄ“c kÄ nedaudz sÄktu raustÄ«t krampji \n'),
(18, 407, '2018-07-29 10:20:17', '2018-07-29 13:20:39', 5, 'labi\n', 1, 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'IC NoskaidroÅ¡u par ko esmu ApcietinÄts\n', 'nepÄrkÄpju jo NaÅ¾us pÄ“rkot RP nevajag RP vajag ja taisies pielietot nazi uzbrukumÄ jeb paÅ¡aizsardÄ«bÄ ja kÄds tev uzbrÅ«k.\n', '/me aptlaiÅ¾ot labo roku no stÅ«res pÄ“ckÄ pavirzot to uz paneÄ¼a pusi kas atrodas blakus rokas bremzei peckÄ ar labÄs rokas rÄdÄ«tÄjpirkstu nospieÅ¾ pogu [down]./do poga [down] nospiesta trose ar Äki tika nolaista zemÄ“.\n', 'protams ka ir jÄRPo jo Å¡ajÄ situÄcijÄ tev ir jÄapraksta avÄrijas sekas.\n'),
(19, 259, '2018-07-29 10:21:59', '2018-07-29 13:22:09', 5, 's\n', 1, 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'ja to izdari ar laika atstarpi nevis saspamo\n', 'gaidÄ«Å¡u kad policists pienÄk pÄ“c kÄ pajautÄÅ¡u par ko tieku apturÄ“ts\n', '/me pakÄ¼Äutos policista darbÄ«bÄm lai sods bÅ«tu mazÄks\n', 'neko jo ja sÄkÅ¡u kautko rakstÄ«t ooc mani ajail ieliks\n'),
(20, 263, '2018-07-29 10:23:02', '2018-07-29 13:23:11', 5, 's\n', 1, 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'asss\n', 'sdad\n', 'asdas\n', 'sdasd\n'),
(21, 291, '2018-07-29 10:23:18', '2018-07-29 13:24:49', 5, 's\n', 1, 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'do Tom sÄ“dÄ“tu mierÄ«gs un pÄrdomÄtu ko bÅ«tu izdarijis \n', '/me bÅ«tu nokritis uz zemes un kratÄ«tos /do Tom bÅ«tu zaudÄ“js samaÅ†u uz 5 min \n', 'nÄ“\n', 'atsÄ“dÄ“tu cietumu jo nebÅ«tu kam paprasÄ«t \n'),
(22, 434, '2018-07-29 10:24:45', '2018-07-29 13:27:13', 5, 's\n', 1, 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'TieÅ¡i ta /do traumas netika gutas, nostradaja droÅ¡ibas jotsa/Ä·ivere\n', '/me aizliek rokas aiz muguras\n/do rokas atrastos aiz muguras \n/me salieku rokas kopa\nt/do rokas ir saliktas kopa pec ka policists liek rokas dzelÅ¾us\n', 'Es teikÅ¡u kads ir iemesls mani arestet ja neko neesmu izdarijis un ari taisishu f1 va i/report\n', 'Es apsÄÅ¡os labaja ceÄ¼Ä mala atverÅ¡u logu, noslapÄ“Å¡u dzineju un teikÅ¡u kads ir iemesls\n'),
(24, 123, '2018-07-29 10:26:09', '2018-07-29 13:27:21', 5, 's\n', 1, 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', '/me nokristu uz zemes pÄ“c kÄ nevarÄ“tu pakustÄ“ties /do tiktu paralizÄ“ts\n', 'Protams\n', 'NostÄÅ¡os ceÄ¼a labajÄ malÄ un gaidÄ«Å¡u kad PD man pienÄks klÄt un pajautaÅ¡u apstÄdinÄÅ¡anas iemeslu\n', '/me Ä¼autos lai veÅ¡anai uz PD maÅ¡Ä«nu\n'),
(25, 374, '2018-07-29 10:27:28', '2018-07-29 13:27:36', 5, 's\n', 1, 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'DoÅ¡os pie priekÅ¡nieka un sÅ«dzÄ“Å¡os viÅ†am, kÄ arÄ« ja kautkÄdÄ publiskÄ vietÄ tas ir noticis, piemÄ“ram pie IGS lai pÄrbaudÄ«tu droÅ¡Ä«bas kameras\n', 'Es gaidÄ«tu kad pienÄktu policists un paskaidrotu kÄpÄ“c esmu apturÄ“ts.\n', '/do redzams kad persona nokristu, un raustÄ«tos, persona bÅ«tu paralizÄ“ta uz laiku.\n', '/do bÅ«tu stipri atsitis rokas pret durvÄ«m un paneÄ¼a, bet galvu izglÄba no sitiena gaisa spilvens.\n'),
(26, 408, '2018-07-29 10:29:39', '2018-07-29 13:29:51', 5, 's\n', 1, 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', '/me sÄ“Å¾ot istabÄ uz mÄ«kstÄ krÄ“sla nedaudz pieliecas uz prieksu pieceÄ¼as kÄjÄs un dodas uz virtuvi./do piecÄ“lies kÄjÄs./me pienÄkot pie ledusskapja labo roku pavirza to uz roktura pusi peckÄ satver to ar pirkstu palÄ«dzÄ«bu peckÄ nedaudz pielietojpt fizisku spÄ“ku atver ledusskapi.\n/do ledusskapis ir vaÄ¼Ä\n', 'parunÄÅ¡u ar policistu kÄdsbÅ«tu iemesls apcietinÄÅ¡anai tÄlÄk atkarÄ«gs kÄ virzÄ«sis apstÄkÄ¼i\n', 'parunÄÅ¡u ar policistu kÄdsbÅ«tu iemesls apcietinÄÅ¡anai tÄlÄk atkarÄ«gs kÄ virzÄ«sis apstÄkÄ¼i\n', 'parunÄÅ¡u ar policistu kÄdsbÅ«tu iemesls apcietinÄÅ¡anai tÄlÄk atkarÄ«gs kÄ virzÄ«sis apstÄkÄ¼i\n'),
(27, 380, '2018-07-29 10:31:16', '2018-07-29 13:32:40', 12, 'labs\n', 1, 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'JÄ\n', 'SÅ«dzÄ“Å¡os un bÅ«Å¡u Å¡okÄ\n', 'UzgaidÄ«Å¡u , kad pienÄk LSPD persona, un jautÄÅ¡u - par ko esmu apturets\n', '/do BÅ«tu traumÄ“ts, ar elektroÅ¡oku\n/me nokristu zemÄ“,pÄ“c kÄ sÄktu kratÄ«ties , no elektro trieciena.\n'),
(28, 480, '2018-07-29 10:37:01', '2018-07-29 13:39:16', 5, '1\n', 1, 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'BÅ«Å¡u dusmÄ«gs, pÄ“ctam lspd sÅ«dzÄ“tos pie priekÅ¡nieka par darbinieku\n', '/do bÅ«ttu teizots, sÄpÄ“tu, gulÄ“tu zemÄ“\n/me atÄ¼autu policistam, arestÄ“t mani\n', 'JÄ rp ir jÄveic, jo varu tikt traumÄ“ts\n', '1.aptureÅ¡u auto, ceÄ¼a malÄ 2.atvÄ“rÅ¡u logu, kad policists atnaks 3.klausÄ«Å¡u policista vÄ“lmÄ“m , doÅ¡u tiesÄ«bas maÅ¡Ä«nas tehnisko\n4. pajautÄÅ¡u iemeslu kÄdÄ“Ä¼ tiku apturÄ“ts\n'),
(29, 321, '2018-07-29 10:37:15', '2018-07-29 13:39:20', 5, '1\n', 1, 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', '/me izcies lielas mokas \n/do redzams ka vel ir krampji\n', 'Jautasu policistam kas noticis /me *apjucis* pajauta kas par lietu.\n', 'Ne, varbut esmu pavars.\n', 'Apstasos ar auto mala , atversu logu un jautasu kas par problemu iedosu dokomentus\n'),
(30, 488, '2018-07-29 10:37:59', '2018-07-29 13:39:12', 5, '1\n', 1, 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'prasisu kad mani laidis ara un skaitisu cik dienas palika kad mani atlaidis tad iesu RP talak stradat maju pirkt utt\n', 'iesu prasisu adminiem kpc vai ari iesu un report uz ta cilveka jo es neko nedariju \n', 'ja jo  nevar iegadaties tik daudz nazus var tikai vienu nazi\n', 'es prasisu kapec mani apstadinaja un kads ir iemesls \n'),
(31, 489, '2018-07-29 10:57:10', '2018-07-29 13:57:23', 5, '1\n', 1, 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'ItkÄ jÄ parkÄpju.\n', 'VienmÄ“r ir jÄveic rp. Jo ja dzÄ«ve ietrieksies tev bÅ«s kaut kÄdas sekas !   \n', '(Es veel nezinu iisti tos do me bet i will try) /do nokritÄ«Å¡u ar abÄm kajÄm uz zemes /me gÅ«stu mazus ceÄ¼u nobrÄzumus\n', 'KÄ jau teicu nezinu /me /do .. Mhm nezinu ko darÄ«Å¡u jo nekad neesmu bijis arrestÄ“ts \n'),
(32, 325, '2018-07-29 11:07:46', '2018-07-29 14:07:56', 5, '1\n', 1, 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'SÅ«dzeos adminam ooc bet ic sudzesos valdibai \n', 'Ja man pateiks  ka bus sods un pateiks ka iedodat tiesibas un tehnisko to es erposu ka iedosu tiesibas un tehnisko un pectam kad izrakstis sodu tad es erposu kad panemu tiesibas kopa ar tehnisko un soda kviti .\n', 'NÄ“\n', 'Es Klausisos visas komandas piem Policists teiks vai pretojos es teiksu ne ka nepretojos un vins teiks ka ataisu durvis kurizer un teiks ievelku personu kruizera un es ieksapsu\n'),
(33, 437, '2018-07-29 11:28:17', '2018-07-29 14:28:28', 5, '1\n', 1, 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'IC JautÄtu iemeslu par arrestÄ“Å¡anu un pierÄditu ka neÄ“su pie vainas\n', 'Ä¼autos lai PD viÅ†u arestÄ“\n', 'JÄ\n', 'NÄ“\n'),
(34, 255, '2018-07-29 13:19:11', '2018-07-29 16:31:15', 35, 'accept\n', 1, 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'labdien ko esu izdarijis parniedzis atrumu /me ar labo rokas palidzibu iedodu teisibas \n', 'ne\n', '/me ar labas rokas palidzibu ataisu durivs /me  butu atrast naziz /me ar kreiso rokas palidzibu iedodu polocistam nazi\n', 'ir jaeropo\n'),
(35, 192, '2018-07-30 09:33:28', '2018-07-30 13:05:19', 209, 'BÅ«s vajadzÄ«gas papildu apmÄcÄ«bas, bet dodu iespÄ“ju.\n', 1, 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'jÄveic jo 40km/h ari ir atrums un ista dzive ja ienasas var dabut man liekas ka smadzeÅ† satracinajumu\n', 'pateikÅ¡u Sveiki paprasÄ«Å¡u pa ko pÄrkÄpu pateikÅ¡u savu vardu paradiÅ¡u tiesibas un tehnisko ar RP un ja liks samaksat samaksÄÅ¡u un tad  ganjau ja bus kartiba vareÅ¡u doties\n', 'Num rakstÄ«Å¡u report un sazinaÅ¡os ar adminstratoriem un tad pteiks vainu kp esmu\n', '/me : piejietu pie policista ka Ä¼auto vai apleik rokudzelÅ¾us un butu mierigs: /me daritu to ko liek policists: /me iekaptu leni auto un gaiditu kamer aizved uz cietumu ; /me butu mazliet nobiejies /me gaiditu kad atbrauktu /do un tad ietu iekÅ¡a un klausitos ko policista kungs teiktu kas jadar\n'),
(36, 198, '2018-07-30 10:12:35', '2018-07-30 13:25:35', 209, 'es tak jau acceptoju, tf\n', 1, 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'ne jo nezin kam domati varbut gaÄ¼u ies griezt ar RP\n', '/me piejietu pie policista kunga vai kundzes un Ä¼autu lai apliek rokudzelzus /me nepretotos policistam un gaiditu sacito kas butu jadar /me iekaptu auto ka gaiditu ka poiicista kungs aizvestu uz cietumu /me iejietu cietuma ka paprasitu lai noÅ†em rokudzelÅ¾us /me  butu mazliet sabijies /do kad nenotiek kautkas slikts\n', 'pateikÅ¡u sveiki un paprasiÅ¡u kape apturjea tad iedoÅ¡u tiesibas un tehmisko ka gaidiÅ¡u kamer apskat bet to dariÅ¡u ar RP protams ja bus jamaksas samaksaÅ¡u un gaidiÅ¡u ka pateiks ka varu doties talak\n', ' ja jo 40km/h ir atrums izta dzive man leikas var but smadzenu satracinjajums\n'),
(37, 480, '2018-08-03 07:22:43', '2018-08-03 10:52:19', 149, 'JÄizlabo otrais ( Pilns RP, kad tiksi arestÄ“ts)  un treÅ¡ais ( /me un /do kad esi teizots.)\n', 2, 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'ja RP ir javeic jo varu tikt traumets\n', '/me atlautu policistam arestet mani\n/dobutu teizots, sapetu, guletu zeme\n', 'busu dusmigs ,pectam LSPD sudzetos pie prieksnieka par darbinieku\n', '1.apturesu auto,cela mala\n2.atversu logu, kad policists atnaks\n3klausisu policista velmem, iedosu tiesibas, masinas tehnisko\n4pajautasu iemeslu kadel tiku apturets\n'),
(38, 480, '2018-08-03 07:58:14', '2018-08-03 11:00:09', 149, 'KÄ¼Å«das sapratis.\n', 1, 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', '/do butu teizots, sapetu, guletu uz zemes\n/me atlautu policistam arestet mani\n', '1. apturesu auto cela mala\n2. atversu logu kad policists atnaks \n3. klausisu policista velmem, iedosu tiesibas masinas tehnisko\n4 pajautasu iemeslu kadel tiku apturets\n', 'butu dusmigs, pectam LSPD sudzetos prieksniekam par darbinieku\n', 'ja RP ir javeic jo varu tikt traumets\n'),
(39, 320, '2018-08-03 20:23:19', '2018-08-03 23:23:48', 15, 'ok\n', 1, 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Ir jÄRPo tÄ sekas, ar komandu /do .\n', 'NepÄrkÄpju, jo es pÄ“rku naÅ¾us mÄjas.\n', './do redzams kad Elliot bÅ«tu saslÄ“gts ar rokudzleÅ¾iem un sÄ“dÄ“tu policijas autmaÅ¡Ä«na.\n', 'BÅ«Å¡u apjucis un iesnieÄ£su sÅ«dzibu par pÄrskatÄ«Å¡anu .\n'),
(40, 480, '2018-08-05 09:24:20', '2018-08-05 12:25:45', 149, 'IzskatÄs, ka kÄ¼Å«du ir sapratis.\n', 1, 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', '1.apturesu masinu cela mala\n2.atversu logu kad policists atnaks\n3.klausisu policista velmem, iedosu tiesibas, masinas tehnisko\n4. pajautasu kadel tiku apturets\n', '/me paceltu abas rokas gaisa \n/do rokas butu paceltas\n/do atlautu policistam arestet mani\n', 'ja rp ir javeic jo varu tikt traumets\n', 'busu dusmigs, pectam LSPD sudzesos prieksniekam par darbinieku  /\n'),
(41, 259, '2018-08-05 10:02:52', '2018-08-05 17:19:29', 5, '.\n', 1, 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'JÄ , rp ir jÄveic visa veida avÄrijÄs.\n', 'Ic advokÄtu  vai kautko tÄdu dabÅ«t.\n', '/do pÄ“c tazer nokristu zemÄ“ un sÄktu raustÄ«ties.\n', 'bÅ«t pieklÄjÄ«gam un darÄ« ko tev policists liek\n'),
(42, 564, '2018-08-07 12:33:37', '2018-08-07 15:34:13', 35, 'acce\n', 1, 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', '/me NokrÄ«t uz zemes.\n/do Sekas pa visu Ä·ermeni pÄriet elektrÄ«ba.\n', 'padoÅ¡os policijasi ( aterpoÅ¡u Me, DO ) un iekÄpÅ¡u auto un gaidÄ«Å¡u kamÄ“r mani aizved lÄ«dz tuvÄkajam iecirknim un apcietinÄs un pÄ“ctam nogaidÄ«Å¡u jail laiku.\n', 'Piebrauktu pie labÄs malas, un gaidÄ«tu policistu kad tas pienÄks un aterpos tad es aterpoÅ¡u un iedoÅ¡u viÅ†am dokumentus piemÄ“ram /me izvelk no kabadas maÅ¡Ä«nas dokumentus un maÅ¡Ä«nas vadÄ«tÄja apliecÄ«bu.\n', 'jÄ iebkÅ«rÄ negadijumÄ, vai arÄ« kad tu runÄ ar cilvÄ“ku spÄ“lÄ“\n'),
(43, 574, '2018-08-09 15:18:29', '2018-08-09 19:47:54', 16, 'accept\n', 1, 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'ApstÄÅ¡os pagaidiÅ¡u kad atnaks pie logas un jautÄs.\n', '/me piemÄ“ram ko redzu ko gribÄ“su un dariÅ¡u /do ko tu dari un esi darijis\n', 'NÄ“.\n', 'JÄ protams /do PÄ“c trieciena, netika draumeta gÅ«tas jo nostrÄdaja droÅ¡iba josta pÄ“c trieciena sasitas autoamÅ¡ina\n'),
(44, 543, '2018-08-10 18:03:35', '2018-08-10 21:15:14', 421, '/de\n', 2, 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'l\n', 'll\n', 'l\n', 'l\n'),
(45, 543, '2018-08-10 18:42:49', '2018-08-10 22:05:00', 142, 'Persona neuztver nopietni forceapp. NoraidÄ«ts.\n', 2, 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'mfgdfgdgdg\n', 'hddfgd\n', 'hdgdfgdfg\n', 'Paprsisu adminam\n'),
(46, 543, '2018-08-11 06:38:59', '2018-08-11 10:33:33', 421, 'IemÄcies aizpildÄ«t pareizi, nevis visur saraksti \'\'hui zin\'\' un ceri kad acceptosu.\n', 2, 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'hui zin\n', 'hui zin\n', 'hui zin\n', 'hui zin\n'),
(47, 255, '2018-08-11 14:47:29', '2018-08-11 17:49:40', 421, 'Pietiekami lai acceptotu\n', 1, 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'ne\n', 'ir jaeropo\n', '/me ar labam rokas palidzibam paceltu rokas un nepretotos\n', '/me ar labas rokas palidzibi iekap masina\n'),
(48, 17, '2018-08-13 14:43:55', '2018-08-13 17:45:18', 301, 'VarÄ“tu uzrakstÄ«t mazliet pilnvÄ“rtÄ«gÄku Roleplay, divas komandas ir par maz, nevajag garÄkas. TieÅ¡i pie aresta piestrÄdÄ\n', 2, 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', '/me paceltu rokas gaisÄ\n/do rokas bÅ«tu paceltas\n\nTad rpoÅ¡u visu, ka vins man kabatas parbaudÄ«s, un rokudzelzus vai es pretoÅ¡os\n', '/me nokristu zemÄ“, jo ieÅ¡Äva ar teizeri\n/do nevarÄ“tu pakusteties, jo kermenis ir paralizÄ“ts\n', 'SasveicinÄÅ¡os.\nIedosu tiesibas\nPajautasu iemeslu\n\n', 'NÄ“, kÄdeÄ¼ gan\n'),
(49, 17, '2018-08-13 14:48:34', '2018-08-13 17:49:16', 301, 'Ä»oti vÄja aplikÄcija, bet apstiprinÄÅ¡u un vÄ“roÅ¡u Tevi.\n', 1, 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'NÄ“\n', '/me paceltu rokas gaisÄ\n/do rokas butu gaisÄ\n/me atÄ¼autu policistam pÄrmeklÄ“t mani\n', 'JÄ ir, ja tev ir droÅ¡Ä«bas josta, tad jaerpo, ka airbag uzspraga, ja nebija, tad jaerpo ka izlidoji, cauri stiklam\n', 'BÅ«Å¡Å« Å¡okÄ“ts, pateikÅ¡u ka tas nÄ“esmu es, vai ieÅ¡u uz LSPD sÅ«dzÄ“ties priekÅ¡niecÄ«bai\n'),
(50, 543, '2018-08-16 14:28:43', '2018-08-16 17:30:03', 142, 'Ja tevi arestÄ“ par to ko neesi darijis, nav jÄsÅ«dzas administrÄcijai, bet gan personai, kas tevi arestÄ“.\n', 1, 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', 'ZiÅ†oÅ¡u adminstrÄcijai par notikuÅ¡o\n', '/do redzams pÄ“c teizera nokristu uz zemes\n/me raustÄ«tos pÄ“c sÄpem\n', 'JÄ kaut vai arÄ« kaut ar 10km/h\n', 'NÄ“ nekada gadijuma\n'),
(51, 290, '2018-08-24 09:47:36', '2018-08-24 13:06:33', 421, 'NEbus, uzraksti normÄlu Apelaciju.\n', 2, 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', 'ja\n', ',.\n', '.\n', ',.\n');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `applications_questions`
--

CREATE TABLE `applications_questions` (
  `id` int(4) NOT NULL,
  `question` text,
  `answer1` text,
  `answer2` text,
  `answer3` text,
  `key` tinyint(1) NOT NULL DEFAULT '1',
  `createdBy` int(8) NOT NULL DEFAULT '0',
  `updatedBy` int(8) NOT NULL DEFAULT '0',
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `part` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `applications_questions`
--

INSERT INTO `applications_questions` (`id`, `question`, `answer1`, `answer2`, `answer3`, `key`, `createdBy`, `updatedBy`, `createDate`, `updateDate`, `part`) VALUES
(3, 'Ko nozÄ«mÄ“ RP?', 'Roleplay', 'Rolyplay', 'neko', 1, 105, 105, '2018-07-08 09:44:45', '2018-07-08 09:44:45', 1),
(4, 'KÄ tu rÄ«kosies, kad tevi apturÄ“s LSPD?', 'PajautÄÅ¡u viÅ†iem iemeslu OOC', 'GaidÄ«Å¡u, lai PD pienÄk klÄt, un pajautÄÅ¡u apturÄ“Å¡anas iemeslu', 'IgnorÄ“Å¡u', 2, 105, 105, '2018-07-08 09:47:26', '2018-07-08 09:47:26', 1),
(5, 'Cik bieÅ¾i ir nepiecieÅ¡ams RPot?', 'Vismaz divreiz dienÄ', 'Visu laiku', 'Tad, kad to liek administrators.', 2, 105, 105, '2018-07-08 09:47:57', '2018-07-08 09:47:57', 1),
(6, 'Ko darÄ«si, ja tevi LSPD saÅ¡aus ar teizeri?', 'RakstÄ«Å¡u /report, jo LSPD nedrÄ«kst teizot bez iemesla', '/pm\'oÅ¡u jebkuram adminam, lai nÄk skatÄ«ties.', 'RPoÅ¡u teizera sekas, un pÄ“c tam pajautÄÅ¡u iemeslu.', 3, 105, 105, '2018-07-08 09:49:07', '2018-07-08 09:49:07', 1),
(7, 'Ko nozÄ«mÄ“ PG?', 'Powergaming', 'PulG', 'PubG', 1, 105, 105, '2018-07-08 09:50:37', '2018-07-08 09:50:40', 1),
(8, 'Ko nozÄ«mÄ“ DM?', 'Deathmatch', 'DeadMatch', 'Dead', 1, 105, 105, '2018-07-08 09:51:36', '2018-07-08 09:51:36', 1),
(9, 'Uzraksti pilnu RP ar /me un /do, kuru veiksi, kad tiksi teizots.', NULL, NULL, NULL, 1, 105, 105, '2018-07-08 10:22:38', '2018-07-08 10:22:38', 2),
(10, 'Apraksti savu rÄ«cÄ«bu, kad tevi apturÄ“s LSPD.', NULL, NULL, NULL, 1, 105, 105, '2018-07-08 10:22:49', '2018-07-08 10:22:49', 2),
(11, 'KÄda bÅ«s tava reakcija, ja tiksi arestÄ“ts par to, ko neesi izdarÄ«jis?', NULL, NULL, NULL, 1, 105, 105, '2018-07-08 10:23:01', '2018-07-08 10:23:01', 2),
(12, 'Vai tu pÄrkÄp RP, ja veikalÄ iegÄdÄjies 4 naÅ¾us?', NULL, NULL, NULL, 1, 105, 105, '2018-07-08 10:23:19', '2018-07-08 10:23:19', 2),
(13, 'Uzraksti pilnu RP, ko veiksi, kad tiksi arestÄ“ts.', NULL, NULL, NULL, 1, 105, 105, '2018-07-08 10:23:51', '2018-07-08 10:23:51', 2),
(14, 'Vai tev ir jÄveic RP, ja ietriecies stabÄ ar 40km/h?', NULL, NULL, NULL, 1, 105, 105, '2018-07-08 10:24:16', '2018-07-08 10:24:16', 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atms`
--

CREATE TABLE `atms` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `rotation` decimal(10,6) DEFAULT '0.000000',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `deposit` tinyint(3) UNSIGNED DEFAULT '0',
  `limit` int(10) UNSIGNED DEFAULT '5000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `atms`
--

INSERT INTO `atms` (`id`, `x`, `y`, `z`, `rotation`, `dimension`, `interior`, `deposit`, `limit`) VALUES
(2, '521.717773', '-1293.947266', '16.872188', '358.937042', 0, 0, 0, 5000);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atm_cards`
--

CREATE TABLE `atm_cards` (
  `card_id` int(11) NOT NULL,
  `card_owner` int(11) DEFAULT NULL,
  `card_number` text,
  `card_pin` varchar(4) NOT NULL DEFAULT '0000',
  `card_locked` tinyint(1) NOT NULL DEFAULT '0',
  `card_type` tinyint(1) NOT NULL DEFAULT '1',
  `limit_type` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atm_wiretransfers`
--

CREATE TABLE `atm_wiretransfers` (
  `id` int(11) NOT NULL,
  `from` text,
  `to` text,
  `type` text,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='-MAXIME';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bannedIPs`
--

CREATE TABLE `bannedIPs` (
  `ID` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bannedips`
--

CREATE TABLE `bannedips` (
  `ID` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bannedSerials`
--

CREATE TABLE `bannedSerials` (
  `id` int(11) NOT NULL,
  `serial` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bannedserials`
--

CREATE TABLE `bannedserials` (
  `id` int(11) NOT NULL,
  `serial` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `serial` varchar(32) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `account` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `reason` text NOT NULL,
  `date` text,
  `threadid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Handle serial bans instead of using MTA built-in / Maxime';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` text,
  `author` text,
  `book` longtext,
  `readOnly` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This is used for the book system. // Chaos';

--
-- Gegevens worden geëxporteerd voor tabel `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `book`, `readOnly`) VALUES
(1, 'New Book', 'Unknown', 'The begining of something great...', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `burialfm`
--

CREATE TABLE `burialfm` (
  `tune1` text NOT NULL,
  `tune2` text NOT NULL,
  `tune3` text NOT NULL,
  `tune4` text NOT NULL,
  `tune5` text NOT NULL,
  `tune6` text NOT NULL,
  `tune7` text NOT NULL,
  `tune8` text NOT NULL,
  `tune9` text NOT NULL,
  `tune10` text NOT NULL,
  `tuneoftheweek` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `businesses`
--

CREATE TABLE `businesses` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `bank_card` varchar(100) NOT NULL DEFAULT '0000 0000 0000 0000',
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `business_accounts`
--

CREATE TABLE `business_accounts` (
  `id` int(11) NOT NULL,
  `recipient` varchar(250) NOT NULL,
  `recipient_type` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `business` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `business_members`
--

CREATE TABLE `business_members` (
  `id` int(11) NOT NULL,
  `character` int(11) NOT NULL,
  `business` int(11) NOT NULL,
  `rank` varchar(200) NOT NULL,
  `wage` int(11) NOT NULL,
  `leader` int(11) NOT NULL,
  `phone` varchar(30) NOT NULL DEFAULT '0',
  `address` varchar(200) NOT NULL DEFAULT 'None',
  `date_hired` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `business_rentals`
--

CREATE TABLE `business_rentals` (
  `id` int(11) NOT NULL,
  `business` int(11) NOT NULL,
  `rental_id` int(11) NOT NULL,
  `rental_type` int(11) NOT NULL,
  `rental_price` int(11) NOT NULL,
  `rented_to` int(11) NOT NULL,
  `rented_time` int(11) NOT NULL,
  `rented_phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `camerahistory`
--

CREATE TABLE `camerahistory` (
  `id` int(11) NOT NULL,
  `ch` int(11) NOT NULL,
  `when` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `charged` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cctvcameras`
--

CREATE TABLE `cctvcameras` (
  `name` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `terminal` int(11) DEFAULT NULL,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `angle` int(11) DEFAULT '0',
  `height` decimal(10,6) DEFAULT '0.000000',
  `fov` int(11) DEFAULT '0',
  `r` int(11) DEFAULT '0',
  `g` int(11) DEFAULT '0',
  `b` int(11) DEFAULT '0',
  `scanlines` int(11) DEFAULT '0',
  `scansize` int(11) DEFAULT '0',
  `flicker` int(11) DEFAULT '0',
  `ir` int(11) DEFAULT '0',
  `nv` int(11) DEFAULT '0',
  `zoom` int(11) DEFAULT '0',
  `motor` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cctvterminals`
--

CREATE TABLE `cctvterminals` (
  `Name` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `access` int(11) DEFAULT '0',
  `rz` int(11) DEFAULT '0',
  `mr` int(11) DEFAULT '0',
  `mg` int(11) DEFAULT '0',
  `mb` int(11) DEFAULT '0',
  `ma` int(11) DEFAULT '0',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `restricted` int(11) DEFAULT '0',
  `acces` int(11) DEFAULT '0',
  `onlymarker` int(11) DEFAULT '0',
  `markersize` int(11) DEFAULT '0',
  `camcount` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `charactername` text,
  `account` int(11) DEFAULT '0',
  `x` float DEFAULT '1969.24',
  `y` float DEFAULT '-1759.57',
  `z` float DEFAULT '13.5468',
  `rotation` float DEFAULT '45.492',
  `interior_id` int(5) DEFAULT '0',
  `dimension_id` int(5) DEFAULT '0',
  `health` float DEFAULT '100',
  `armor` float DEFAULT '0',
  `skin` int(3) DEFAULT '264',
  `money` bigint(20) DEFAULT '1000',
  `gender` int(1) DEFAULT '0',
  `cuffed` int(11) DEFAULT '0',
  `duty` int(3) DEFAULT '0',
  `fightstyle` int(2) DEFAULT '4',
  `pdjail` int(1) DEFAULT '0',
  `pdjail_time` int(11) DEFAULT '0',
  `cked` int(1) DEFAULT '0',
  `lastarea` text,
  `age` int(3) DEFAULT '18',
  `faction_id` int(11) DEFAULT '-1',
  `faction_rank` int(2) DEFAULT '1',
  `faction_perks` text,
  `faction_phone` int(3) UNSIGNED DEFAULT NULL,
  `skincolor` int(1) DEFAULT '0',
  `weight` int(3) DEFAULT '180',
  `height` int(3) DEFAULT '180',
  `description` text,
  `deaths` int(11) DEFAULT '0',
  `faction_leader` int(1) DEFAULT '0',
  `fingerprint` text,
  `casualskin` int(3) DEFAULT '0',
  `bankmoney` bigint(20) DEFAULT '3500',
  `car_license` int(1) DEFAULT '0',
  `bike_license` int(1) DEFAULT '0',
  `pilot_license` int(1) DEFAULT '0',
  `fish_license` int(1) DEFAULT '0',
  `boat_license` int(1) DEFAULT '0',
  `gun_license` int(1) DEFAULT '0',
  `gun2_license` int(1) DEFAULT '0',
  `tag` int(3) DEFAULT '1',
  `hoursplayed` int(11) DEFAULT '0',
  `pdjail_station` int(1) DEFAULT '0',
  `timeinserver` int(2) DEFAULT '0',
  `restrainedobj` int(11) DEFAULT '0',
  `restrainedby` int(11) DEFAULT '0',
  `dutyskin` int(3) DEFAULT '-1',
  `fish` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `blindfold` tinyint(4) NOT NULL DEFAULT '0',
  `lang1` tinyint(2) DEFAULT '1',
  `lang1skill` tinyint(3) DEFAULT '100',
  `lang2` tinyint(2) DEFAULT '0',
  `lang2skill` tinyint(3) DEFAULT '0',
  `lang3` tinyint(2) DEFAULT '0',
  `lang3skill` tinyint(3) DEFAULT '0',
  `currlang` tinyint(1) DEFAULT '1',
  `lastlogin` datetime DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `election_candidate` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `election_canvote` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `election_votedfor` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `marriedto` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `photos` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxvehicles` int(4) UNSIGNED NOT NULL DEFAULT '5',
  `ck_info` text,
  `alcohollevel` float NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `recovery` int(1) DEFAULT '0',
  `recoverytime` bigint(20) DEFAULT NULL,
  `walkingstyle` int(3) NOT NULL DEFAULT '0',
  `job` int(3) NOT NULL DEFAULT '0',
  `day` tinyint(2) NOT NULL DEFAULT '1',
  `month` tinyint(2) NOT NULL DEFAULT '1',
  `maxinteriors` int(4) NOT NULL DEFAULT '10',
  `clothingid` int(10) UNSIGNED DEFAULT NULL,
  `death_date` datetime DEFAULT NULL,
  `temperature` float NOT NULL DEFAULT '36.6',
  `bladder` int(3) NOT NULL DEFAULT '0',
  `bowel` int(3) NOT NULL DEFAULT '0',
  `wash` int(3) NOT NULL DEFAULT '0',
  `hunger` int(3) NOT NULL DEFAULT '0',
  `thirst` int(3) NOT NULL DEFAULT '0',
  `lumber` int(11) NOT NULL DEFAULT '0',
  `rocks` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `characters`
--

INSERT INTO `characters` (`id`, `charactername`, `account`, `x`, `y`, `z`, `rotation`, `interior_id`, `dimension_id`, `health`, `armor`, `skin`, `money`, `gender`, `cuffed`, `duty`, `fightstyle`, `pdjail`, `pdjail_time`, `cked`, `lastarea`, `age`, `faction_id`, `faction_rank`, `faction_perks`, `faction_phone`, `skincolor`, `weight`, `height`, `description`, `deaths`, `faction_leader`, `fingerprint`, `casualskin`, `bankmoney`, `car_license`, `bike_license`, `pilot_license`, `fish_license`, `boat_license`, `gun_license`, `gun2_license`, `tag`, `hoursplayed`, `pdjail_station`, `timeinserver`, `restrainedobj`, `restrainedby`, `dutyskin`, `fish`, `blindfold`, `lang1`, `lang1skill`, `lang2`, `lang2skill`, `lang3`, `lang3skill`, `currlang`, `lastlogin`, `creationdate`, `election_candidate`, `election_canvote`, `election_votedfor`, `marriedto`, `photos`, `maxvehicles`, `ck_info`, `alcohollevel`, `active`, `recovery`, `recoverytime`, `walkingstyle`, `job`, `day`, `month`, `maxinteriors`, `clothingid`, `death_date`, `temperature`, `bladder`, `bowel`, `wash`, `hunger`, `thirst`, `lumber`, `rocks`) VALUES
(14, 'Edward_Felipe', 1, 1458.07, -1724.32, 13.5469, 196.573, 0, 0, 100, 100, 126, 796043, 0, 0, 0, 4, 0, 0, 0, 'Commerce, Los Santos', 24, -1, 1, '{}', NULL, 1, 64, 164, '', 14, 0, '5B786E85B92B4BB31030611A12FC2A00', 0, 6902, 3, 0, 0, 0, 0, 0, 0, 1, 59, 0, 112, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2019-03-05 22:11:41', '2018-09-10 10:32:14', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 122, 5, 7, 7, 10, 58, NULL, 36.6, 0, 0, 0, 0, 0, 0, 0),
(15, 'Thomas_Lawrance', 662, 1667.13, -1715.08, 20.4844, 189.399, 0, 0, 98, 0, 153, 4500, 0, 0, 0, 4, 0, 0, 0, 'Commerce, Los Santos', 28, 3, 1, '{}', NULL, 1, 65, 188, '', 0, 1, '50C52BB60744BC292A85F4E2F79C2DD3', 0, 34293, 1, 0, 0, 0, 0, 0, 0, 1, 18, 0, 181, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2019-02-28 20:57:04', '2018-09-10 16:33:12', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 0, 30, 11, 10, NULL, NULL, 36.6, 0, 0, 0, 0, 0, 0, 0),
(19, 'Matthew_Hudson', 661, 1315.98, -1443.67, 14.3313, 115.872, 0, 0, 58, 0, 80, 63513, 0, 0, 0, 4, 0, 0, 0, 'Market, Los Santos', 16, 3, 1, '[ [ \"262\", \"277\", \"264\", \"257\", \"266\", \"302\", \"273\", \"276\" ] ]', NULL, 0, 50, 150, '', 3, 1, 'DAACCA91FED2504EA0BA28E27495F17A', 0, 61700, 3, 0, 0, 0, 0, 0, 0, 9, 58, 0, 103, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2019-03-03 20:27:14', '2018-09-13 19:13:26', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 2, 1, 1, 10, NULL, NULL, 36.6, 0, 0, 0, 0, 0, 0, 0),
(20, 'Tomy_Melty', 657, 311.729, -1788.69, 4.33597, 178.945, 0, 0, 77, 0, 80, 456823, 0, 0, 0, 4, 0, 0, 0, 'Santa Maria Beach, Los Santos', 21, 1, 20, '{}', NULL, 0, 50, 150, '', 4, 1, '3B99F8C2CC6EC02683702C95A4EB243F', 0, 1660, 1, 0, 0, 0, 0, 0, 0, 9, 73, 0, 72, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2019-03-05 21:51:33', '2018-09-15 16:28:28', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 122, 5, 1, 1, 10, NULL, NULL, 36.6, 0, 0, 0, 0, 0, 0, 0),
(21, 'Chief_Keef', 663, 1357.21, -1749.45, 13.3805, 348.681, 0, 0, 100, 0, 144, 1112, 0, 0, 0, 4, 0, 0, 0, 'Commerce, Los Santos', 24, 1, 1, NULL, NULL, 0, 76, 167, '', 1, 0, '85BC5A25D046B0DCB24D3636C1E5DDB3', 0, 13675, 1, 0, 0, 0, 0, 0, 0, 1, 11, 0, 45, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2019-03-05 22:13:04', '2018-09-18 16:17:09', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 1, 1, 1, 10, NULL, NULL, 36.6, 0, 0, 0, 0, 0, 0, 0),
(22, 'Tom_Blackwood', 664, 2132.03, -2144.71, 13.5469, 67.7784, 0, 0, 78, 0, 46, 978, 0, 0, 0, 4, 0, 0, 0, 'Willowfield, Los Santos', 20, -1, 1, NULL, NULL, 1, 68, 181, '', 2, 0, 'E19A8DCE9DCE555DD84A4B947A88C737', 0, 14899, 0, 0, 0, 0, 0, 0, 0, 1, 11, 0, 92, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2019-01-29 22:56:52', '2018-11-06 19:41:39', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 0, 16, 9, 10, NULL, NULL, 36.6, 0, 0, 0, 0, 0, 0, 0),
(23, 'Vards_Uzvards', 665, 1220.39, -1829.2, 13.4071, 245.095, 0, 0, 32, 0, 36, 1000, 0, 0, 0, 4, 0, 0, 0, 'Conference Center, Los Santos', 16, -1, 1, NULL, NULL, 1, 50, 150, '', 0, 0, '2C14C23B7445C991187C6C264CE49DB4', 0, 3500, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 58, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2018-11-10 22:48:23', '2018-11-10 19:49:30', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 0, 1, 1, 10, NULL, NULL, 36.6, 0, 0, 0, 0, 0, 0, 0),
(24, 'Steve_Ellis', 666, 1607.78, -1021.04, 23.6003, 304.747, 0, 0, 100, 100, 282, 1000, 0, 0, 264, 4, 0, 0, 0, 'Mulholland Intersection, Los Santos', 44, 1, 1, '[ [ \"262\", \"277\", \"264\", \"257\", \"266\", \"302\", \"273\", \"276\" ] ]', NULL, 1, 73, 185, '', 0, 1, '6F77BA8B6506F8A6A00FECF21F19AF60', 0, 3500, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 20, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2019-01-09 21:45:23', '2019-01-09 19:25:06', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 0, 1, 1, 10, 0, NULL, 36.6, 0, 0, 0, 0, 0, 0, 0),
(25, 'Khalil_Coleman', 667, 2112.64, -1601.13, 24.9264, 0.0439758, 0, 0, 86, 0, 21, 1000, 0, 0, 0, 4, 0, 0, 0, 'Idlewood, Los Santos', 19, -1, 1, NULL, NULL, 0, 62, 178, '', 0, 0, '3750825BA21E3AC4C4FD901CE0DF2F41', 0, 3500, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 5, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2019-02-11 15:17:17', '2019-02-11 13:05:29', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 0, 14, 7, 10, NULL, NULL, 36.6, 0, 0, 0, 0, 0, 0, 0),
(26, 'Steven_Sigal', 668, 520.488, -1287.03, 17.2422, 116.372, 0, 0, 100, 0, 7, 1000, 0, 0, 0, 4, 0, 0, 0, 'Rodeo, Los Santos', 16, -1, 1, NULL, NULL, 0, 50, 150, '', 0, 0, 'CE2EB593827B188B515D93D62EC85CF9', 0, 3500, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 4, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2019-02-16 16:35:57', '2019-02-16 14:31:55', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 0, 1, 1, 10, NULL, NULL, 36.6, 0, 0, 0, 0, 0, 0, 0),
(27, 'Biistamais', 669, 520.488, -1287.03, 17.2422, 116.372, 0, 0, 100, 0, 7, 1000, 0, 0, 0, 4, 0, 0, 0, 'Rodeo, Los Santos', 16, -1, 1, NULL, NULL, 0, 50, 150, '', 0, 0, 'CE2EB593827B188B515D93D62EC85CF9', 0, 3500, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 4, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2019-03-05 21:59:05', '2019-02-16 14:31:55', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 0, 1, 1, 10, NULL, NULL, 36.6, 0, 0, 0, 0, 0, 0, 0),
(28, 'Joseph_Chan', 670, 838.852, -1377.41, -0.501462, 45, 0, 0, 100, 0, 14, 1000, 0, 0, 0, 4, 0, 0, 0, 'Metro', 16, 2, 1, NULL, NULL, 0, 50, 150, '', 0, 1, 'BEAC344886647CFCE9933C99C1906186', 0, 3500, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2019-03-05 22:00:47', '2019-03-05 20:00:47', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 0, 1, 1, 10, NULL, NULL, 36.6, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `character_settings`
--

CREATE TABLE `character_settings` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `character_settings`
--

INSERT INTO `character_settings` (`id`, `name`, `value`) VALUES
(33, 'phone_anim', '1'),
(177, 'phone_anim', '0'),
(178, 'phone_anim', '1'),
(191, 'phone_anim', '0'),
(259, 'phone_anim', '0'),
(608, 'phone_anim', '0'),
(405, 'phone_anim', '0'),
(187, 'phone_anim', '0'),
(655, 'phone_anim', '0'),
(667, 'phone_anim', '0'),
(633, 'phone_anim', '0'),
(837, 'phone_anim', '0'),
(386, 'phone_anim', '1'),
(801, 'phone_anim', '0'),
(14, 'head_turning', '2'),
(19, 'head_turning', '2');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `chickens`
--

CREATE TABLE `chickens` (
  `id` int(10) UNSIGNED NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rotation` float NOT NULL,
  `interior` int(10) UNSIGNED NOT NULL,
  `dimension` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `clothes`
--

CREATE TABLE `clothes` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `modelid` smallint(5) UNSIGNED NOT NULL,
  `owner` smallint(5) UNSIGNED NOT NULL,
  `bone` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `x` float(11,6) NOT NULL DEFAULT '0.000000',
  `y` float(11,6) NOT NULL DEFAULT '0.000000',
  `z` float(11,6) NOT NULL DEFAULT '0.000000',
  `rx` float(11,6) NOT NULL DEFAULT '0.000000',
  `ry` float(11,6) NOT NULL DEFAULT '0.000000',
  `rz` float(11,6) NOT NULL DEFAULT '0.000000',
  `sx` float(10,5) NOT NULL DEFAULT '1.00000',
  `sy` float(10,5) NOT NULL DEFAULT '1.00000',
  `sz` float(10,5) NOT NULL DEFAULT '1.00000',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `clothes`
--

INSERT INTO `clothes` (`id`, `modelid`, `owner`, `bone`, `x`, `y`, `z`, `rx`, `ry`, `rz`, `sx`, `sy`, `sz`, `active`) VALUES
(1, 1906, 11, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(2, 1875, 2, 1, 0.000914, 0.047292, 0.099947, 0.500000, 354.000000, 86.750000, 0.97220, 1.01850, 1.00000, 0),
(3, 1901, 13, 3, -0.000566, -0.069739, 0.126151, 0.625000, 358.875000, 0.003000, 0.98970, 1.05850, 0.95310, 0),
(4, 1874, 13, 1, -0.002371, 0.052160, 0.095617, 359.500000, 10.750000, 90.750000, 1.00000, 1.07540, 1.00000, 0),
(5, 1860, 90, 1, 0.008417, 0.026287, 0.150517, 0.000000, 268.000000, 0.000000, 1.19990, 1.08660, 1.17840, 1),
(6, 1904, 90, 1, 0.004206, 0.039966, 0.068390, 86.875000, 179.750000, 359.875000, 1.00000, 1.10150, 1.05670, 0),
(7, 1904, 90, 13, 0.007322, 0.136793, 0.094686, 265.625000, 333.125000, 0.000000, 0.96130, 1.31490, 0.21000, 1),
(8, 1909, 82, 11, 0.012605, 0.034688, 0.102036, 184.000000, 40.375000, 87.375000, 1.00000, 1.00000, 1.00000, 0),
(9, 1860, 5, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(10, 1861, 123, 1, 0.000000, 0.012605, 0.131521, 1.250000, 266.125000, 2.125000, 1.00000, 1.00000, 1.00000, 0),
(11, 1920, 213, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(12, 1920, 79, 1, -0.005446, 0.022987, 0.121955, 350.875000, 343.000000, 97.375000, 1.35880, 1.22610, 1.13020, 1),
(13, 1871, 123, 1, -0.398988, 0.000000, 0.432581, 354.625000, 269.625000, 91.625000, 30.62441, 24.16270, 48.07191, 0),
(14, 1880, 92, 1, 0.012433, 0.018688, 0.145101, 8.000000, 13.750000, 0.000000, 0.86460, 1.55450, 1.29910, 1),
(15, 1858, 10, 1, 0.005254, 0.038916, -0.053714, 356.375000, 0.000000, 2.000000, 1.11760, 1.55070, 1.39860, 0),
(16, 1927, 139, 11, -0.004223, -0.015793, -0.003199, 155.875000, 356.750000, 0.000000, 1.49520, 0.78100, 1.33460, 1),
(17, 1909, 138, 12, -0.003176, 0.022089, 0.063126, 357.125000, 8.375000, 86.750000, 0.90110, 5.30500, 0.90930, 1),
(18, 1861, 139, 1, 0.000000, 0.039982, 0.106229, 13.125000, 267.750000, 0.000000, 1.08710, 0.95880, 1.00000, 0),
(19, 1880, 215, 1, 0.003150, 0.000000, 0.151259, 359.125000, 344.997009, 95.035004, 1.00000, 1.05500, 1.00000, 1),
(20, 1923, 12, 11, -0.007694, -0.011825, -0.017896, 162.750000, 357.875000, 356.250000, 0.83110, 0.66230, 0.80370, 1),
(21, 1906, 43, 1, 0.003114, 0.030504, -0.076865, 261.250000, 1.500000, 0.000000, 1.07660, 1.03290, 1.12580, 1),
(22, 1923, 13, 11, 0.008270, -0.010567, 0.027190, 338.127991, 1.625000, 187.250000, 1.21250, 1.09860, 1.16730, 0),
(23, 1866, 178, 1, -0.007371, 0.123017, 0.024201, 270.375000, 355.500000, 87.625000, 1.00000, 1.00000, 1.00000, 0),
(24, 1864, 178, 12, 0.000000, 0.000000, -1.126410, 181.000000, 9.250000, 3.625000, 5.82880, 7.21550, 6.39000, 0),
(25, 1925, 82, 11, 0.003112, -0.002193, 0.026221, 333.750000, 355.250000, 195.000000, 1.29340, 1.21870, 1.31340, 1),
(26, 1906, 326, 1, 0.006259, 0.047235, 0.072493, 98.500000, 0.000000, 182.500000, 1.00000, 1.00000, 1.00000, 1),
(27, 1870, 118, 3, 0.031559, 0.005113, 0.064162, 13.750000, 355.750000, 2.125000, 1.25230, 1.17310, 1.05580, 0),
(28, 1877, 12, 1, 0.005140, -0.031819, 0.037670, 10.875000, 285.125000, 90.253998, 0.82480, 0.96270, 0.87590, 1),
(29, 1859, 244, 1, -0.007409, -0.006339, -0.587526, 2.750000, 267.500000, 139.000000, 24.80280, 5.41690, 6.04280, 0),
(30, 1871, 244, 1, 0.002035, -0.199064, 0.179869, 96.375000, 271.125000, 0.000000, 1.00000, 16.39750, 1.00000, 0),
(31, 1877, 244, 1, 0.000990, 0.036784, 0.086289, 0.000000, 360.000000, 90.000000, 4.11590, 11.39230, 3.03960, 0),
(32, 1855, 108, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(33, 1904, 344, 1, -0.002215, 0.026256, 0.087273, 85.750000, 171.250000, 0.875000, 1.00000, 1.00000, 1.00000, 1),
(34, 1853, 326, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(35, 1866, 139, 1, 0.000000, 0.117778, 0.008409, 264.250000, 357.125000, 92.375000, 1.00000, 1.00000, 1.00000, 0),
(36, 1867, 139, 1, 0.002101, 0.095696, -0.047441, 247.000000, 274.000000, 0.000000, 2.31580, 1.37090, 1.26340, 0),
(37, 1877, 139, 1, 0.000000, 0.054687, 0.097874, 0.500000, 4.000000, 86.750000, 1.00000, 1.05050, 1.37390, 0),
(38, 1904, 367, 1, 0.008407, 0.037809, 0.077878, 89.250000, 357.375000, 185.875000, 1.06640, 1.06070, 0.99010, 1),
(39, 1860, 367, 1, 0.010467, 0.048375, 0.136715, 347.500000, 267.750000, 358.125000, 1.11630, 1.08160, 1.15230, 1),
(40, 1875, 35, 1, 0.000000, 0.051551, 0.098911, 0.000000, 356.625000, 86.250000, 0.89370, 1.01770, 0.95980, 1),
(41, 1882, 291, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(42, 1920, 86, 1, -0.009498, 0.003115, 0.125093, 0.000000, 1.375000, 90.000000, 1.03920, 1.09050, 1.00000, 0),
(43, 1923, 86, 11, -0.000027, -0.023188, 0.003110, 355.125000, 358.000000, 173.625000, 1.00000, 1.00000, 1.00000, 1),
(44, 1867, 187, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(45, 1920, 187, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(46, 1904, 187, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(47, 1853, 279, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(48, 1877, 188, 1, 0.010495, 0.034592, 0.092593, 2.750000, 0.000000, 94.500000, 0.92720, 1.00000, 1.00000, 0),
(49, 1907, 331, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(50, 1860, 362, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(51, 1882, 608, 1, 0.011566, 0.058892, -0.103214, 25.875000, 0.000000, 180.000000, 1.00000, 1.00000, 1.00000, 1),
(52, 1926, 608, 11, 0.005260, -0.005282, -0.036860, 327.500000, 0.125000, 199.375000, 1.05500, 1.05170, 1.05380, 1),
(53, 1906, 636, 1, 0.001983, 0.040896, 0.051504, 82.000000, 69.000000, 114.250000, 1.00000, 1.00000, 1.00000, 1),
(54, 1853, 636, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(55, 1874, 487, 1, 0.002002, 0.046247, 0.090469, 356.500000, 5.500000, 92.000000, 1.00000, 1.00000, 1.00000, 1),
(56, 1875, 628, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(57, 1876, 675, 1, 0.003156, 0.026151, 0.094674, 0.000000, 0.000000, 90.375000, 1.00000, 1.11890, 1.00000, 1),
(58, 1920, 225, 1, 0.006150, 0.028164, 0.123908, 0.875000, 2.500000, 88.000000, 1.05890, 1.23400, 1.00800, 1),
(59, 1853, 700, 1, 0.000000, -0.001053, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(60, 1856, 696, 1, 0.000000, -0.011588, 0.000000, 0.000000, 0.000000, 0.000000, 0.99880, 1.00000, 1.00000, 1),
(61, 1899, 730, 1, -0.001055, 0.014730, 0.057876, 98.375000, 0.000000, 5.000000, 1.06160, 0.92290, 1.00000, 0),
(62, 1881, 730, 1, 0.000000, 0.032603, 0.089423, 0.000000, 0.500000, 90.375000, 0.90760, 0.94410, 0.96840, 0),
(63, 1853, 355, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(64, 1853, 639, 1, -0.002230, 0.028333, 0.113575, 95.000000, 259.875000, 271.875000, 1.06310, 1.04930, 0.98390, 1),
(65, 1863, 730, 1, 0.004205, -0.006325, 0.096793, 0.000000, 27.125000, 282.000000, 1.00000, 1.04920, 1.04960, 1),
(66, 1853, 355, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(67, 1853, 164, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(68, 1860, 684, 1, 0.023153, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(69, 1860, 684, 1, 0.602996, 0.219918, 0.044162, 182.375000, 356.500000, 355.000000, 1.08460, 0.94240, 1.00760, 0),
(70, 1879, 86, 1, -0.013745, 0.007355, 0.165135, 360.000000, 261.125000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(71, 1877, 667, 1, 0.005236, 0.055722, 0.071561, 5.125000, 351.375000, 92.875000, 1.00000, 1.00000, 1.00000, 1),
(72, 1863, 632, 1, 0.026308, 0.008407, 0.144043, 11.375000, 8.750000, 288.500000, 1.06490, 1.11780, 1.15120, 0),
(73, 1856, 632, 1, -0.013746, 0.025134, 0.137801, 52.000000, 139.500000, 46.500000, 1.31440, 1.15810, 1.00110, 1),
(74, 1872, 178, 1, -0.004212, 0.028355, -0.023256, 24.625000, 357.500000, 79.500000, 1.00000, 1.00000, 1.00000, 0),
(75, 1863, 667, 1, 0.002071, -0.001185, 0.112562, 356.750000, 16.125000, 256.500000, 1.07570, 1.07620, 0.97780, 1),
(76, 1873, 178, 1, 0.000000, 0.045184, 0.078918, 358.375000, 357.500000, 87.625000, 1.00000, 1.00000, 1.00000, 1),
(77, 1861, 178, 1, -0.001076, 0.042051, 0.091499, 0.000000, 269.625000, 0.875000, 1.37660, 0.93470, 1.08140, 1),
(78, 1856, 780, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(79, 1856, 780, 1, 0.005182, 0.025023, -0.007455, 85.250000, 1.375000, 10.500000, 0.89600, 1.01660, 1.11890, 0),
(80, 1856, 780, 1, -0.000096, 0.058698, -0.023386, 90.625000, 1.000000, 5.250000, 1.00000, 0.97070, 1.00000, 0),
(81, 1920, 394, 1, 0.082042, 0.017839, -0.642264, 13.250000, 27.500000, 89.750000, 41.15619, 41.24832, 41.43237, 0),
(82, 1879, 177, 1, 0.000000, -0.017925, 0.132572, 0.000000, 270.750000, 10.250000, 1.00000, 1.00000, 1.12870, 0),
(83, 1926, 177, 11, 0.000000, 0.000000, 0.000000, 331.250000, 11.625000, 232.375000, 0.89430, 1.02050, 1.00000, 0),
(84, 1864, 177, 12, -0.018969, 0.034656, 0.088389, 1.250000, 172.125000, 10.250000, 1.00000, 1.00000, 1.00000, 0),
(85, 1881, 795, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(86, 1920, 795, 1, 0.007323, 0.049401, 0.106132, 2.250000, 359.250000, 79.125000, 1.13140, 1.27810, 1.00000, 1),
(87, 1926, 176, 11, 0.000000, -0.014818, -0.017989, 334.000000, 3.000000, 166.750000, 1.16450, 0.90580, 0.90620, 1),
(88, 1913, 177, 1, 0.000000, 0.000000, 0.036831, 353.250000, 354.500000, 101.375000, 1.00000, 1.00000, 1.00000, 0),
(89, 1871, 177, 1, 0.000996, -0.019033, 0.128317, 7.250000, 271.000000, 3.125000, 1.00000, 1.10990, 1.09610, 0),
(90, 1877, 176, 1, 0.003084, 0.072547, 0.069412, 0.625000, 3.750000, 88.375000, 1.00000, 1.09790, 1.00000, 1),
(91, 1875, 86, 1, -0.006397, 0.038911, 0.091497, 0.000000, 0.000000, 90.000000, 1.00000, 1.00000, 1.00000, 1),
(92, 1864, 68, 12, -0.015792, 0.027322, 0.139934, 357.250000, 168.000000, 16.500000, 1.00000, 1.00000, 1.00000, 0),
(93, 1906, 682, 1, -0.006462, 0.045080, 0.115702, 99.750000, 5.000000, 173.500000, 1.00690, 1.12430, 0.91630, 1),
(94, 1923, 68, 11, 0.010461, -0.010590, -0.021106, 0.000000, 0.000000, 195.875000, 1.00000, 1.00000, 1.00000, 1),
(95, 1867, 86, 1, -0.004230, 0.110436, 0.021008, 90.000000, 360.000000, 90.000000, 1.00000, 1.00000, 1.00000, 0),
(96, 1861, 13, 1, 0.000000, 0.041986, 0.035772, 252.125000, 270.625000, 348.750000, 1.32400, 1.32370, 1.16990, 0),
(97, 1861, 13, 1, 0.004522, 0.024115, 0.042665, 275.875000, 0.000000, 260.875000, 1.57590, 1.33100, 1.21750, 0),
(98, 1854, 725, 1, -0.001085, 0.017649, 0.114562, 97.125000, 319.250000, 225.500000, 1.33630, 1.23450, 1.20720, 1),
(99, 1908, 725, 1, -0.004311, 0.168225, -0.044304, 310.747986, 0.000000, 352.625000, 0.54830, 0.54170, 0.63630, 1),
(100, 1877, 725, 1, 0.000000, 0.066301, 0.089410, 355.875000, 3.250000, 86.625000, 1.00000, 1.00000, 1.00000, 1),
(101, 1906, 782, 1, 0.002082, 0.042012, 0.091553, 94.250000, 164.125000, 13.375000, 0.96120, 1.00000, 0.86580, 0),
(102, 1920, 782, 1, 0.004201, 0.014725, 0.112590, 359.000000, 18.625000, 83.500000, 0.87340, 1.00000, 1.00370, 0),
(103, 1901, 764, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(104, 1857, 764, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(105, 1853, 639, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(106, 1881, 639, 1, -0.001101, 0.035723, 0.114693, 356.625000, 351.375000, 86.625000, 0.93870, 1.00000, 1.00000, 1),
(107, 1855, 837, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(108, 1856, 828, 1, -0.003282, 0.107252, -0.045367, 0.000000, 0.000000, 0.000000, 0.85780, 0.64570, 1.44770, 0),
(109, 1907, 836, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(110, 1907, 836, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(111, 1907, 836, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(112, 1856, 860, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(113, 1870, 837, 3, 0.009471, -0.027374, 0.051551, 7.625000, 350.125000, 351.500000, 1.00000, 1.00000, 1.00000, 1),
(114, 1870, 837, 3, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(115, 1904, 12, 1, 0.004070, -0.040164, 0.021972, 166.007004, 167.824997, 0.000000, 0.87530, 1.00000, 0.92620, 0),
(116, 1864, 862, 12, -0.012698, 0.010470, 0.092509, 180.000000, 0.000000, 180.625000, 1.00000, 1.00000, 1.00000, 0),
(117, 1901, 862, 1, 0.017889, -0.055843, -0.285349, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(118, 1931, 77, 11, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(119, 1930, 342, 11, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(120, 1864, 342, 12, 0.000000, 0.000000, 0.000000, 3.000000, 169.875000, 357.625000, 1.00000, 1.00000, 1.00000, 0),
(121, 1920, 342, 1, 0.000000, 0.000000, 0.090505, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(122, 1931, 441, 11, -0.007389, 0.013625, -0.009496, 343.625000, 2.000000, 194.000000, 1.41350, 1.69950, 1.09920, 1),
(123, 1923, 926, 11, 0.000000, 0.000000, 0.000000, 339.625000, 0.000000, 181.125000, 0.85590, 0.74060, 1.00000, 1),
(124, 1860, 80, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 0),
(125, 1920, 644, 1, 0.063132, -0.052758, 0.178896, 358.750000, 342.625000, 345.375000, 1.00000, 1.00000, 1.00000, 1),
(126, 1927, 886, 12, 0.010461, -0.001080, -0.001121, 341.750000, 9.500000, 215.625000, 1.00000, 1.00000, 1.00000, 1),
(127, 1865, 12, 1, -0.017966, -0.001218, 0.094586, 174.875000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(128, 1927, 441, 11, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(129, 1875, 95, 1, -0.003179, 0.050487, 0.078880, 0.000000, 353.000000, 87.375000, 0.72850, 1.00000, 1.15870, 1),
(130, 1871, 95, 1, 0.005206, -0.002196, 0.133533, 344.000000, 270.875000, 194.875000, 1.20870, 1.07660, 1.20490, 1),
(131, 1868, 884, 2, 0.005158, 0.054557, 0.028352, 7.750000, 272.875000, 24.500000, 1.00000, 1.00000, 1.00000, 1),
(132, 1855, 884, 1, 0.000000, 0.016832, 0.093594, 85.375000, 0.000000, 179.876999, 1.11740, 1.06250, 0.98930, 1),
(133, 1927, 197, 11, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(134, 1930, 884, 11, 0.000000, -0.005279, -0.003172, 142.500000, 5.875000, 19.125000, 0.72300, 0.66850, 0.99760, 1),
(135, 1867, 197, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(136, 1855, 754, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(137, 1930, 352, 11, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(138, 1867, 352, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1),
(139, 1856, 971, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00000, 1.00000, 1.00000, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `clothing`
--

CREATE TABLE `clothing` (
  `id` int(11) UNSIGNED NOT NULL,
  `skin` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `clothing`
--

INSERT INTO `clothing` (`id`, `skin`, `url`, `description`, `price`) VALUES
(1, 22, 'https://i.imgur.com/ZEejtL7.jpg', 'Gucci dÅ¾emperis, uguÅ†ainas bikses, baltas botes', 50),
(2, 23, 'https://i.imgur.com/KpYQ5L7.jpg', 'Balts T-krekls ar Ärminieku Å¡ortiem un baltÄm kedÄm', 50),
(3, 36, 'https://i.imgur.com/tzovwAf.jpg', 'Sarkans puÄ·ains krekls, dÅ¾insu Å¡orti un baltas kedas', 50),
(4, 59, 'https://i.imgur.com/Erqsa4T.jpg', 'RÅ«tains pelÄ“ks krekls, Gucci josta, pelÄ“kas bikses', 50),
(5, 101, 'https://i.imgur.com/yuOGlk8.jpg', 'Gucci sporta kostÄ«ms, melnas Nike kedas', 50),
(6, 104, 'https://i.imgur.com/3GhXPrG.jpg', 'Chicago bulls jaka melna, Ärminieku bikses, baltas botes', 50),
(7, 112, 'https://i.imgur.com/vj9eVIL.png', 'Louis Vuitton jaka, Adidas dÅ¾emperis, Puma botes, bÄ“Å¡as dÅ¾insas', 50),
(9, 116, 'https://i.imgur.com/jtpVnUI.jpg', 'Zila bandana, balta maika, Ä·Ä“de, dÅ¾insa Å¡orti, baltas botes', 50),
(10, 143, 'https://i.imgur.com/abk6xOm.jpg', 'Ä€rminieku bandana/bikses, melna The North Face jaka', 50),
(12, 271, 'https://i.imgur.com/2S84rf3.jpg', 'PelÄ“ks kepons/jaka/cimdi, zilas dÅ¾insas, melnas botes', 50),
(13, 106, 'https://i.imgur.com/FTUA0iC.jpg', 'Balta jaka, melna uguÅ†aina maika, dÅ¾insas', 50),
(14, 294, 'https://i.imgur.com/K9dlJc0.jpg', 'BÄrda, tetuvÄ“jimi uz kakla, nepilns uzvalks, melnas brilles', 50),
(15, 271, 'https://i.imgur.com/C0jPHm5.jpg', 'NY cepure, bÄ“Å¡Ä«ga jaka, dÅ¾inasas, Adidas kedas', 50),
(16, 271, 'https://i.imgur.com/nhfTebg.jpg', 'Globe cepure, jauna oranÅ¾a jaka, balta maika, Nike botes', 50),
(18, 271, 'https://i.imgur.com/TxapnJ6.jpg', 'Globe cepure, Supreme maika balta, Adidas kedas, dÅ¾insas', 50),
(20, 271, 'https://i.imgur.com/O4AoG0a.jpg', 'Globe cepure, dÅ¾insa jaka The North Face, gaiÅ¡as dÅ¾insas, Nike botes', 50),
(22, 106, 'https://i.imgur.com/R4vxcCL.jpg', 'PelÄ“ka jaka, melnas dÅ¾insas, Nike kedas', 50),
(23, 106, 'https://i.imgur.com/F6PKI9g.jpg', 'Sarkana jaka, gaiÅ¡as dÅ¾insas, Nike kedas', 50),
(24, 106, 'https://i.imgur.com/2lVelv8.jpg', 'OrandÅ¾a atvÄ“rta jaka, Ärminieku bikses, baltas kedas', 50),
(25, 106, 'https://i.imgur.com/4Htp9q3.jpg', 'Violeta \"Rimmers\" jaka, tumÅ¡as dÅ¾insas, Nike kedas', 50),
(27, 107, 'https://i.imgur.com/RrtNMvz.png', 'Pierce 34 maika bez rokÄm, zÄÄ¼ganas dÅ¾insas, zaÄ¼as kedas', 50),
(28, 22, 'https://i.imgur.com/vrRVitl.jpg', 'Gucci kostÄ«ms krÄsains', 100),
(31, 270, 'https://i.imgur.com/3VOnHu6.jpg', 'Melna maika, zilas dÅ¾insas, Gucci kedas, maika ar zÄ«mÄ“jumu', 100),
(32, 121, 'https://i.imgur.com/t8s4K9m.jpg', 'Gucci balta maika, dÅ¾insas tumÅ¡as, pelÄ“ki apavi', 100),
(33, 105, 'https://i.imgur.com/1rV9C7N.png', 'PelÄ“ks adidas sporta tÄ“rps, melna bandana', 100),
(34, 271, 'https://i.imgur.com/MtgmGAD.png', 'Zila Brooklyn jaka, melnas bikses, melni cimdi un apavi', 100),
(35, 107, 'https://i.imgur.com/umnhNxb.jpg', 'Balta NY maika, jauni tetuvÄ“jumi, zilas dÅ¾insas', 100),
(38, 29, 'https://i.imgur.com/nhCOIJ8.jpg', 'Melns Adidas sporta kostÄ«ms ar Nike botÄ“m, zelta pulkstenis', 100),
(39, 19, 'https://i.imgur.com/h4N3CSL.png', 'Melnas drÄ“bes, tetuvÄ“ts vÄ“ders', 100),
(40, 21, 'https://i.imgur.com/98lgbAt.jpg', 'Jauna frizÅ«ra, balta maika, zili Å¡orti, baltas botes', 100),
(41, 206, 'https://i.imgur.com/Ohz80OB.jpg', 'Balta maika, Ärminieku bikses, zaÄ¼as kedas', 100),
(43, 271, 'https://i.imgur.com/BDY8W7j.jpg', 'Globe cepure, melnbalta jaka ar melnu maiku, melnas dÅ¾insas', 100),
(45, 29, 'https://i.imgur.com/L8a3Z4A.jpg', 'BÄrda, THRASHER dÅ¾emperis, zilas dÅ¾insas, baltas botes', 100),
(46, 29, 'https://i.imgur.com/I5JqWB6.jpg', 'Supreme melns dÅ¾emperis, dÅ¾insas, melnas Nike kedas', 100),
(47, 121, 'https://i.imgur.com/ht7jIrU.jpg', 'Los Santos Police Department #1', 0),
(49, 291, 'https://i.imgur.com/GuaqyBp.jpg', 'Los Santos Police Department #2', 0),
(50, 282, 'https://i.imgur.com/xPOChFG.jpg', 'Los Santos Police Department #3', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `commands`
--

CREATE TABLE `commands` (
  `id` int(11) NOT NULL,
  `command` text,
  `hotkey` text,
  `explanation` text,
  `permission` int(3) NOT NULL DEFAULT '0',
  `category` int(2) NOT NULL DEFAULT '1',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves all info about all kinds of supported commands and con';

--
-- Gegevens worden geëxporteerd voor tabel `commands`
--

INSERT INTO `commands` (`id`, `command`, `hotkey`, `explanation`, `permission`, `category`, `last_update`) VALUES
(2, '/getkey', '', 'IegÅ«t atslÄ“gu no transportlÄ«dzekÄ¼a/interjera kurÄ atrodies.', 2, 3, '2017-01-25 19:12:24'),
(3, 'cr', 'N/A', 'AizvÄ“rt ciet report, kuru pats esi paÅ†Ä“mis', 21, 7, '2017-01-25 20:32:07'),
(4, '/createemitter [Emitter Type]', 'N/A', 'Spawns Synced Fire/Water Emitters', 0, 1, '2018-05-16 18:57:06'),
(5, '/nearbyemitters', 'N/A', 'ParÄda visus netÄlu esoÅ¡os Å«dens/uguns elementus', 0, 1, '2018-05-16 18:56:46'),
(6, 'delemitters', 'N/A', 'IzdzÄ“Å¡ tuvumÄ esoÅ¡Äs uzliktÄs uguns/Å«dens objektus', 1, 7, '2017-01-29 10:51:45'),
(7, 'delemitter [Emitter ID]', 'N/A', 'IzdzÄ“Å¡ uguns liesmas', 1, 7, '2017-01-29 10:39:52'),
(8, '/delnearbyshops', 'N/A', 'IzdzÄ“s apkÄrtÄ“jos veikalus.', 0, 1, '2018-05-16 18:50:25'),
(9, '/reloadshop', '', 'Atjaunot NPC kurÅ¡ ir nobugojies.', 1, 4, '2016-12-19 20:53:05'),
(10, '/restoreshop', 'N/A', 'Atjauno izdzÄ“stu NPC no SQL.', 0, 1, '2018-05-16 18:55:27'),
(11, '/delshop', '', 'DzÄ“st NPC.', 2, 4, '2016-12-19 20:51:02'),
(12, '/showallcustomshops', '', 'RÄdit visus izveidotos veikalu parametrus un iestatÄ«jumus.', 1, 6, '2016-12-19 20:14:15'),
(13, 'fixnearbye', 'N/A', 'Salabo pats savu neredzamo elevatoru', 0, 7, '2017-01-25 17:19:55'),
(17, '/respawnint', 'N/A', 'Respawnot visus transportus, kuri atrodas interjerÄ/citÄ dimensijÄ', 0, 1, '2018-05-16 18:51:28'),
(18, '/restock', 'N/A', 'Restocks businesses, you must be inside an interior to restock. Or use SYNTAX: /restock [Interior ID] [Amount 1~300]', 0, 1, '2018-05-16 18:56:11'),
(19, 'ojail [Exact Username] [Minutes(>=1) 999=Perm] [Reason]', 'N/A', 'Iesloga administratÄ«vajÄ cietumÄ spÄ“lÄ“tÄju, kurÅ¡ nav tieÅ¡saistÄ“.', 1, 7, '2017-01-29 10:39:09'),
(20, 'sojail', 'N/A', 'Silently jail an offline player, only informs other administrators', 1, 7, '2014-06-17 18:25:36'),
(21, 'oban [Exact Username] [Time in Hours, 0 = Infinite] [Reason]', 'N/A', 'Nobanot spÄ“lÄ“tÄju, kurÅ¡ ir izgÄjis no servera.', 0, 7, '2017-01-25 16:56:23'),
(22, 'delefromint [Interior ID, 0 = world map]', 'N/A', 'IzdzÄ“Å¡ visus elevatorus, kuri savienojas ar noteiktu interjeru.', 3, 7, '2017-01-26 16:15:37'),
(23, 'delnearbye', 'N/A', 'IzdzÄ“st apkÄrtÄ“jos elevatorus', 11, 7, '2017-01-25 17:19:12'),
(24, '/srd', '', 'IzslÄ“gt visus radio kur atrodas tuvumÄ tev.', 1, 3, '2016-12-19 20:34:03'),
(27, '/dele', 'N/A', 'IzdzÄ“Å¡ elevatoru.', 0, 1, '2018-05-16 18:51:18'),
(28, '/nearbye', '', 'ParÄdÄ«t tuvumÄ esoÅ¡os interjerus.', 11, 4, '2016-12-19 21:06:21'),
(29, 'togglee', 'N/A', 'enables/disables an elevator', 1, 7, '2014-06-17 18:14:38'),
(31, 'changewarnstyle', 'N/A', 'MainÄs brÄ«dinajuma ziÅ†as stils', 1, 7, '2017-01-29 11:22:01'),
(34, 'adminlounge', 'N/A', '\"PaÄillo\" adminu istabÄ.', 1, 7, '2017-01-25 17:14:22'),
(35, 'check', 'N/A', 'AplÅ«kot spÄ“lÄ“tÄja statistiku', 11, 7, '2017-01-25 17:20:38'),
(36, 'stats', 'N/A', 'shows players vehicle id\'s, languages etc', 1, 7, '2014-06-15 00:21:44'),
(37, 'history', 'N/A', 'Vari pÄrbaudÄ«t savus administratÄ«vos sodus.', 0, 7, '2017-01-25 16:58:05'),
(38, '/auncuff', '', 'NoÅ†emt rokudzelÅ¾us spÄ“lÄ“tÄjam.', 1, 5, '2016-12-19 21:18:07'),
(39, 'revive', 'N/A', 'Atgriezt speletÄju kurÅ¡ ir ieguvis PK', 0, 7, '2017-01-29 11:23:08'),
(40, '/pmute', '', 'Aizliegt spÄ“lÄ“tÄjam rakstÄ«t iekÅ¡ Ärpus tÄ“la Äata.', 1, 1, '2016-12-19 19:37:17'),
(41, '/togooc', '', 'IeslÄ“gt vai IzslÄ“gt globÄlo ooc Äatu..', 1, 1, '2016-12-19 19:43:12'),
(43, '/disarm', '', 'AtÅ†emt visus ieroÄus spÄ“lÄ“tajam.', 1, 5, '2016-12-19 21:29:26'),
(44, 'freconnect', 'N/A', 'reconnecto noteikto spÄ“lÄ“tÄju.', 1, 7, '2017-01-26 16:21:59'),
(46, 'sethp', 'N/A', 'sets the health of the player', 1, 7, '2014-06-26 08:52:51'),
(47, '/setarmor', '', 'Iedod bruÅ†as spÄ“lÄ“tÄjam.', 1, 5, '2016-12-19 21:36:03'),
(48, 'setskin', 'N/A', 'Uzlikt speletÄja skinu ', 0, 7, '2017-01-29 11:23:22'),
(49, 'changename', 'N/A', 'NomainÄ«t spÄ“lÄ“tÄja vÄrdu, ja viÅ†am ir mazÄk par 5 stundÄm', 11, 7, '2017-01-25 17:20:17'),
(50, 'slap', 'N/A', 'drops the player from a height of 15', 1, 7, '2014-06-17 18:26:58'),
(51, 'recon', 'N/A', 'NovÄ“rot speletÄju', 11, 7, '2017-04-24 17:23:05'),
(52, 'fuckrecon', 'N/A', 'ApstÄdinÄt recon ', 1, 7, '2017-01-29 10:53:58'),
(53, 'pkick', 'N/A', 'Izkicko/Izmet speletÄju no spÄ“les', 0, 7, '2017-01-29 11:24:27'),
(54, 'pban', 'N/A', 'Nobano spÄ“lÄ“tÄju uz visu mÅ«Å¾u, uzreiz ', 1, 7, '2017-01-29 10:45:36'),
(55, 'unban', 'N/A', 'Unbano spÄ“lÄ“tÄju ar viÅ†a VÄrdu_UzvÄrdu', 1, 7, '2017-01-29 10:40:42'),
(58, 'gotoplace', 'N/A', 'TeleportÄ“ties uz konkrÄ“tu vietu', 11, 7, '2017-01-29 10:54:33'),
(59, 'jail', 'N/A', 'Iesloga spÄ“lÄ“tÄju administratÄ«vajÄ cietumÄ', 1, 7, '2017-01-29 10:44:49'),
(60, '/unjail', 'N/A', 'AtbrÄ«vo speletÄju no cietumsoda', 1, 1, '2018-03-14 16:56:35'),
(61, 'jailed', 'N/A', 'ParÄda visus spÄ“lÄ“tÄjus, kuri atrdoas administratÄ«vajÄ cietumÄ, kÄ arÄ« parÄda laiku cik ilgi viÅ†i tur sÄ“Å¾', 1, 7, '2017-01-29 12:11:28'),
(62, 'goto', 'N/A', 'TeleportÄ“ties pie kÄda spÄ“lÄ“tÄja', 11, 7, '2017-01-29 10:54:17'),
(64, 'sendto', 'N/A', 'teleports a player to another one', 11, 7, '2014-06-26 08:50:35'),
(69, '/adminduty', '', 'Ieiet iekÅ¡ admin duty.', 2, 1, '2016-12-19 19:30:26'),
(73, 'warn', 'N/A', 'iedod spÄ“lÄ“tÄjam brÄ«dinÄjumu, kad ir 3 brÄ«dinÄjumi, spÄ“lÄ“tÄjs tiek banots.', 1, 7, '2017-01-25 17:28:47'),
(74, '/showinv', '', 'PaskatÄ«ties spÄ“lÄ“taja inventoriju.', 1, 5, '2016-12-19 21:34:01'),
(75, 'togmytag', 'N/A', 'toggles your nametag on and off', 41, 7, '2014-06-17 18:12:38'),
(76, 'freecam', 'N/A', 'Nomet tevi paÅ¡reizÄ“jÄ \"FreeCam\" pozÄ«cijÄ', 1, 7, '2017-01-29 10:52:17'),
(77, 'disappear', 'N/A', 'KÄ¼Å«sti neredzams', 1, 7, '2017-01-25 17:41:07'),
(79, 'findalts', 'N/A', 'ParÄda visus personÄÅ¾us, kuri spÄ“lÄ“tÄjam ir.', 1, 7, '2017-01-26 16:16:43'),
(80, 'findip', 'N/A', 'ParÄda visus accountus, kuri ir uz Å¡o IP.', 1, 7, '2017-01-26 16:20:46'),
(81, 'findserial', 'N/A', 'ParÄda visus profilus kuri spÄ“lÄ“tÄjam ir', 1, 7, '2017-01-29 10:38:18'),
(82, '/setlang', '', 'Uzlikt personÄÅ¾am citu valodu.', 1, 1, '2016-12-19 19:36:40'),
(83, 'dellanguage', 'N/A', 'IzdzÄ“Å¡ valodu, no spelÄ“tÄja zinÄÅ¡anÄm.', 1, 7, '2017-01-26 16:16:00'),
(84, '/aunblindfold', 'N/A', 'NoÅ†emt acu apsÄ“ju spÄ“lÄ“tÄjam.', 0, 1, '2018-05-16 18:56:37'),
(85, '/agivelicense', '', 'Izsniegt licenzi kÄdam spÄ“lÄ“tajam.', 2, 1, '2017-11-27 20:26:32'),
(88, '/freezead', '', 'IesaldÄ“t reklÄmu.', 2, 1, '2016-12-19 19:31:16'),
(89, 'unfreeze', 'N/A', 'AtsaldÄ“ kÄdu spÄ“lÄ“tÄju', 11, 7, '2017-01-25 20:27:43'),
(94, 'delii', 'N/A', 'IzdzÄ“Å¡ informÄcijas ikonu', 2, 7, '2017-01-29 10:52:00'),
(95, 'nearbyii', 'N/A', 'Shows all nearby information markers', 2, 7, '2014-06-26 08:42:18'),
(96, '/makeshop ', '', 'Izveidot NPC.', 2, 4, '2016-12-21 00:03:46'),
(97, '/nearbyshops ', '', 'ParÄdÄ«t visus tuvumÄ esoÅ¡os NPC.', 1, 4, '2016-12-19 20:52:51'),
(99, 'setage ', 'N/A', 'NomainÄ«t spÄ“lÄ“tÄja vecumu.', 0, 7, '2017-01-25 16:56:41'),
(100, 'setrace ', 'N/A', 'NomainÄ«t spÄ“lÄ“tÄja rasi.', 0, 7, '2017-01-25 16:57:18'),
(101, 'setheight  ', 'N/A', 'NomainÄ«t spÄ“lÄ“tÄja svaru.', 0, 7, '2017-01-25 16:57:08'),
(102, 'setgender  ', 'N/A', 'NomainÄ«t spÄ“lÄ“tÄja dzimumu.', 0, 7, '2017-01-25 16:56:53'),
(109, 'skick', 'N/A', 'KlusÄm izmet spÄ“lÄ“tÄju no servera, to redz tikai administratori', 0, 7, '2017-03-27 13:02:15'),
(110, 'sjail  ', 'N/A', 'KlusÄm iesedina cietumÄ spelÄ“tÄju , to redz tikai admini', 1, 7, '2017-01-29 11:20:14'),
(113, '/setjob  ', '', 'Uzlikt spÄ“lÄ“tÄjam darbu.', 11, 6, '2016-12-19 20:10:12'),
(114, '/deljob  ', '', 'DzÄ“st spÄ“lÄ“tÄja darbu.', 1, 6, '2016-12-19 20:09:16'),
(116, '/issuepc  ', '', 'Izsniegt spÄ“lÄ“tÄjam pilota licenzi.', 1, 3, '2016-12-19 20:26:38'),
(118, '/settrainrailed ', 'N/A', 'Uzlikt vilcienu uz sliedÄ“m. ieslÄ“gt/izslÄ“gt.', 0, 1, '2018-05-16 18:53:45'),
(119, '/settraindirection', 'N/A', 'Uzlikt vilciena virzienu (pret)pulksteÅ†a virzienÄ.', 0, 1, '2018-05-16 18:53:32'),
(121, '/unflip', '', 'ApgÄzt transportlÄ«dzekli uz riepÄm.', 11, 3, '2016-12-19 20:39:04'),
(122, '/unlockcivcars', '', 'AtslÄ“gt visus cilivilos transportlÄ«dzekÄ¼us.', 1, 3, '2016-12-19 20:48:52'),
(123, '/oldcar', 'N/A', 'PaskatÄ«ties auto VIN((ID)) ar kuru esi pÄ“djo reiz braucis!', 0, 1, '2018-05-16 18:51:01'),
(124, '/thiscar', '', 'PÄrbaudÄ«t transportlÄ«dzekÄ¼a ID kurÄ atrodies.', 0, 3, '2016-12-19 20:37:58'),
(125, '/gotocar', '', 'TeleportÄ“ties pie transportlÄ«dzekÄ¼a.', 11, 3, '2016-12-19 20:25:28'),
(126, '/getveh', '', 'TeleportÄ“t transportlÄ«dzekli pie sevis.', 11, 1, '2018-03-14 16:51:17'),
(128, '/respawnveh', '', 'Respawnot transportlÄ«dzekli.', 11, 3, '2016-12-19 20:44:03'),
(129, '/respawnall', '', 'Atjaunot visus transportlÄ«dzekÄ¼us.', 1, 3, '2016-12-19 20:37:04'),
(130, '/respawndistrict', 'N/A', 'respawns all vehicles in the district you are in', 0, 1, '2018-05-16 18:53:19'),
(131, '/respawnciv', '', 'Respawnot visus cilivilos transportlÄ«dzekÄ¼us.', 1, 3, '2016-12-19 20:42:13'),
(134, '/fixvehs', '', 'Salabot visus transportlÄ«dzekÄ¼us.', 1, 3, '2016-12-19 20:06:20'),
(136, '/blowveh', '', 'UzspridzinÄt transportlÄ«dzekli.', 1, 3, '2016-12-19 19:52:24'),
(137, '/setcarhp', '', 'Uzlikt transportlÄ«dzeklim dzÄ«vibu, 1000 ir maksimÄlais.', 1, 3, '2016-12-19 20:41:48'),
(139, '/fuelvehs', '', 'UzpildÄ«t visus transportlÄ«dzekÄ¼us.', 1, 3, '2016-12-19 20:16:03'),
(140, '/setcolor', '', 'MainÄ«t transportlÄ«dzekÄ¼a krÄsu.', 1, 3, '2016-12-19 20:36:24'),
(142, '/entercar', '', 'IesÄ“dinÄt personÄÅ¾u iekÅ¡ transportlÄ«dzekÄ¼a.', 11, 3, '2016-12-19 20:04:46'),
(143, 'getpos', 'N/A', 'IegÅ«sti savu pozÄ«cijas, dimensijas ID', 1, 7, '2017-01-25 20:26:06'),
(144, 'x', 'N/A', 'increases your x-coordinate by the given value', 0, 7, '2016-11-08 15:06:13'),
(145, 'y', 'N/A', 'increases your y-coordinate by the given value', 1, 7, '2014-06-15 12:43:53'),
(146, 'z', 'N/A', 'increases your z-coordinate by the given value', 1, 7, '2014-06-15 12:43:22'),
(147, 'set*', 'N/A', 'sets your coordinates - available combinations: x, y, z, xyz, xy, xz, yz', 1, 7, '2014-06-26 08:50:46'),
(148, '/reloadint', 'N/A', 'Atjauno visus interjerus', 0, 1, '2018-05-16 18:56:03'),
(149, '/nearbyints', '', 'UzrÄdÄ«t tuvumÄ esoÅ¡os interjerus.', 1, 4, '2016-12-19 21:08:22'),
(150, '/setintname', '', 'ManÄ«t interjera nosaukumu.', 2, 4, '2016-12-19 21:00:18'),
(151, '/setfee', '', 'Uzlikt maksu, lai ieietu iekÅ¡ interjera.', 0, 1, '2018-05-16 18:50:51'),
(152, '/getintid', '', 'IegÅ«t interjera ID, kurÄ atrodies.', 2, 4, '2016-12-19 20:51:49'),
(153, 'setdim or /setdimension', 'N/A', 'Uzliek spÄ“lÄ“tÄja dimensijas ID', 1, 7, '2017-01-29 12:18:49'),
(154, '/setint', '', 'TeleportÄ“t spÄ“lÄ“tÄju uz interjeru.', 1, 4, '2016-12-19 21:10:35'),
(158, '/showfactions', '', 'Redzams viss, frakciju saraksts', 11, 2, '2016-12-19 19:29:16'),
(159, '/respawnfaction', '', 'Respawnot frakcijas transportlÄ«dzekÄ¼us', 2, 2, '2016-12-19 19:48:49'),
(160, '/resetbackup', '', 'Atjauno LSPD backup', 0, 2, '2016-12-19 19:29:28'),
(162, '/resettowbackup', '', 'Atjauno konfiscÄ“tÄja backup signÄlu', 0, 2, '2016-12-19 19:29:25'),
(163, '/aremovespikes', '', 'IzdzÄ“Å¡ visas LSPD tapas, kuras pÄrdur riepas', 0, 2, '2016-12-19 19:44:08'),
(164, '/clearnearbytag', '', 'DzÄ“st tuvumÄ esoÅ¡os grafiti.', 1, 5, '2016-12-19 21:33:39'),
(165, '/nearbytags', '', 'UzrÄdit tuvumÄ esoÅ¡os grafiti un tos veidotÄjus', 1, 6, '2016-12-19 20:15:04'),
(166, '/changelock', '', 'MainÄ«t atslÄ“gas interjeram/transportlÄ«dzeklim.', 1, 3, '2016-12-19 19:53:36'),
(167, 'restartgatekeepers', 'N/A', 'restarts the gatekeepers resource', 1, 7, '2014-06-26 08:49:08'),
(168, 'bury', 'N/A', 'Aprok spÄ“lÄ“tÄju;NovÄc CK\'oto lÄ«Ä·i.', 1, 7, '2017-01-25 17:15:08'),
(173, 'resetpos', 'N/A', 'Reset player\'s position, works when player\'s offline.', 1, 7, '2014-06-26 08:47:50'),
(175, '/setbiznote', '', 'MainÄ«t biznesa ziÅ†ojumu.', 0, 4, '2016-12-19 20:57:16'),
(177, '/interiors', '', 'AtvÄ“rt interjeru menedÅ¾eri.', 2, 4, '2016-12-19 21:04:59'),
(178, '/delint', '', 'DzÄ“st interjeru.', 2, 4, '2016-12-19 20:50:51'),
(179, '/delthisint', '', 'DzÄ“st interjeru, kurÄ atrodies.', 2, 4, '2016-12-19 20:51:15'),
(180, '/restoreint ', '', 'Atjaunot dzÄ“sto interjeru.', 2, 4, '2016-12-19 21:12:04'),
(181, '/gotoint', '', 'TeleportÄ“ties uz interjeru.', 1, 4, '2016-12-19 21:04:13'),
(184, '/veh', '', 'Izveidot cilvilo pagaidu transportlÄ«dzekli.', 1, 3, '2016-12-19 20:35:50'),
(185, '/resetshopwage', 'N/A', 'Atjauno veikalu nodokÄ¼us uz 0.', 0, 1, '2018-05-16 18:56:26'),
(186, '/forceupdateshopwage', 'N/A', 'Forces update all shop wages.', 0, 1, '2018-05-16 18:54:55'),
(187, '/delnearbyvehs', '', 'DzÄ“st visus tuvumÄ esoÅ¡os (cilivilos) transportlÄ«dzekÄ¼us.', 2, 1, '2018-03-14 16:53:26'),
(188, '/delveh', '', 'DzÄ“st transportlÄ«dzekli.', 2, 3, '2016-12-19 20:01:05'),
(189, '/delthisveh', '', 'DzÄ“st transportlÄ«dzekli, kurÄ atrodies iekÅ¡a', 2, 3, '2016-12-19 20:00:39'),
(190, '/restoreveh', '', 'Atjaunot dzÄ“sto transportlÄ«dzekli.', 1, 3, '2016-12-19 20:44:22'),
(191, '/makeveh', '', 'Izveidot transportlÄ«dzekli.', 2, 3, '2016-12-19 20:30:00'),
(192, '/makecivveh', '', 'Izveidot cilivilos darba transportlÄ«dzekÄ¼us.', 2, 3, '2016-12-19 20:28:52'),
(194, '/setpaintjob', '', 'MainÄ«t transportlÄ«dzeklim paintjob.', 1, 3, '2016-12-19 20:46:51'),
(195, '/setvariant', 'N/A', 'UzstÄdÄ«t citu automaÅ¡Ä«nas variantu', 0, 1, '2018-05-16 18:54:16'),
(198, '/aunimpound', '', 'AtkonfiscÄ“t transportlÄ«dzekli.', 2, 3, '2016-12-19 19:52:01'),
(199, '/setvehtint', '', 'Uzlikt vai noÅ†emt transportlÄ«dzekÄ¼a logu tonÄ“jumus.', 0, 1, '2018-07-15 14:42:36'),
(200, '/atakelicense', '', 'DzÄ“st licenzi spÄ“lÄ“tÄjam.', 3, 5, '2016-12-19 21:15:04'),
(201, '/setvehplate', '', 'MainÄ«t numurzÄ«mi transportlÄ«dzeklim.', 1, 3, '2016-12-19 20:45:19'),
(202, '/setvehfaction', '', 'Uzlikt transportlÄ«dzekli uz frakciju, un ar -1 ID noÅ†em no frakcijas.', 1, 3, '2016-12-19 20:40:23'),
(203, 'gates', 'N/A', 'Atver vÄrtu menedÅ¾eri', 2, 7, '2017-01-29 10:45:56'),
(204, '/gotogate', '', 'TeleportÄ“ties uz gate.', 2, 4, '2016-12-19 21:04:29'),
(205, 'delgate', 'N/A', 'IzdzÄ“Å¡ vÄrtus.', 2, 7, '2017-01-25 19:15:17'),
(206, 'loginto [Exact Character Name] ', 'N/A', 'Ielogojies kÄda cita personÄÅ¾Ä', 3, 7, '2017-01-25 20:26:22'),
(207, 'forcepayday [Player ID/Name] ', 'N/A', 'Iedod noteiktam spÄ“lÄ“tÄjam algas Äeku.', 2, 7, '2017-01-26 16:29:24'),
(208, 'forcepaydayall ', 'N/A', 'Iedod visiem spÄ“lÄ“tÄjiem algas Äeku.', 2, 7, '2017-01-26 16:29:44'),
(209, '/warn [ ID] [Iemesls]', '', 'SÅ«tit brÄ«dinÄjumu spÄ“lÄ“tÄjam kurÅ¡ pÄrkÄp noteikumus.', 11, 1, '2016-12-19 19:36:57'),
(210, 'soban', 'N/A', 'Silently ban an offline player, only notifies other administrators', 1, 7, '2014-06-17 18:26:19'),
(211, 'givesuperman', 'N/A', 'AtÄ¼auj spÄ“lÄ“tÄjam lidot, izmantot superman', 2, 7, '2017-01-29 10:38:42'),
(212, '/sw ', '', 'MainÄ«t laika apstakÄ¼us.', 1, 1, '2016-12-19 19:40:30'),
(213, '/addatm', '', 'Izveidot ATM.', 1, 7, '2016-12-19 21:53:17'),
(214, 'delatm [id]', 'N/A', 'IzdzÄ“s ATM ar id.', 1, 7, '2017-01-25 17:15:48'),
(215, '/nearbyatms', '', 'UzrÄdÄ«t tuvumÄ esoÅ¡os ATM.', 2, 5, '2016-12-19 21:38:53'),
(216, '/bigears', '', 'VÄ“rot citu sarakstes caur PM.', 2, 1, '2016-12-19 19:30:57'),
(217, '/bigearsf', '', 'VÄ“rot spÄ“lÄ“taju saraksti iekÅ¡ frakcijas Äata.', 2, 1, '2016-12-19 19:31:01'),
(220, '/makepaynspray', '', 'Izveidot pay n spray.', 2, 3, '2016-12-19 20:29:12'),
(221, '/nearbypaynsprays', '', 'ParÄdit tuvumÄ esoÅ¡os pay n spray.', 1, 3, '2016-12-19 20:30:27'),
(222, '/delpaynspray', '', 'DzÄ“st tuvumÄ esoÅ¡o pay n spray', 3, 1, '2018-03-14 16:53:51'),
(224, 'nearbyphones', 'N/A', 'ParÄda tuvÄko publisko telefonu ', 0, 7, '2017-01-29 11:23:57'),
(225, 'delphone', 'N/A', 'IzdzÄ“Å¡ publisko telefonu.', 1, 7, '2017-01-25 17:35:50'),
(226, 'enableallelevators', 'N/A', 'aktivizÄ“t visus elevatorus', 1, 7, '2017-01-25 17:18:21'),
(227, '/addint', '', 'Izveidot interjeru.', 2, 4, '2016-12-19 20:50:43'),
(228, '/sellproperty', '', 'PÄrdot interjeru un iegÅ«t 35% no orÄ£inÄlÄs cenas.', 0, 4, '2016-12-19 20:57:02'),
(231, '/setintid', '', 'MainÄ«t interjera ID.', 2, 4, '2016-12-19 20:58:02'),
(232, '/getintprice', '', 'ParÄdÄ«t interjera cenu.', 1, 4, '2016-12-19 20:51:59'),
(233, '/setintprice', '', 'MainÄ«t interjera cenu.', 2, 4, '2016-12-19 21:00:27'),
(234, '/getinttype', '', 'RÄdit interjera tipu, kurÄ atrodies.', 2, 4, '2016-12-19 20:52:09'),
(235, '/setinttype', '', 'MainÄ«t interjera tipu.', 2, 4, '2016-12-19 21:01:31'),
(236, '/togint', '', 'IzslÄ“gt vai ieslÄ“gt interjeru.', 2, 4, '2016-12-19 21:01:41'),
(237, '/enableallinteriors', '', 'IeslÄ“kt visus interjerus.', 2, 4, '2016-12-19 21:02:14'),
(238, '/setintexit', '', 'PÄrvietot interjera izejas bÅ«ltiÅ†u.', 3, 4, '2016-12-19 20:57:50'),
(240, '/forcesell', '', 'DÄrdot interjeru kurÅ¡ ir neaktÄ«vs vai netiek izmantots.', 2, 4, '2016-12-19 20:51:27'),
(241, '/setfactionleader', '', 'Ielikt spÄ“lÄ“tÄju par frakcijas lÄ«deri', 2, 2, '2016-12-19 19:46:44'),
(242, '/setfactionrank', '', 'UzstÄda spÄ“lÄ“tÄjam frakcijas ranku', 2, 2, '2016-12-19 19:46:25'),
(243, '/makefaction', '', 'Izveido jaunu frakciju', 2, 2, '2016-12-19 19:49:20'),
(244, '/renamefaction', '', 'PÄrdÄ“vÄ“ frakcijas nosaukumu', 2, 2, '2016-12-19 19:49:29'),
(245, '/setfaction', '', 'Pievienot spÄ“lÄ“tÄju frakcijÄ', 1, 2, '2016-12-19 19:47:04'),
(246, '/delfaction', '', 'IzdzÄ“st frakciju', 2, 2, '2016-12-19 19:50:02'),
(247, 'makefuel [skin, default = 50, -1 = random] [Firstname Lastname, -1 = random]', 'N/A', 'Izveido jaunu degvielas NPC.', 2, 7, '2017-08-06 18:10:47'),
(250, 'ck', 'N/A', 'Lai veiktu Character Kill kÄdam no spÄ“lÄ“tÄjiem', 2, 7, '2017-01-25 17:18:48'),
(251, 'unck', 'N/A', 'AtgrieÅ¾ nomiruÅ¡u charackteru', 1, 7, '2017-01-29 11:19:33'),
(255, '/givemoney', '', 'Uzspawnot naudu spÄ“lÄ“tÄjam.', 3, 5, '2016-12-19 21:30:36'),
(256, 'resetcharacter', 'N/A', 'fully resets the character', 2, 7, '2014-06-26 08:47:33'),
(257, '/setvehlimit', '', 'Uzlikt spÄ“lÄ“tÄjam maksimÄlo transportlÄ«dzekÄ¼u skaitu.', 3, 3, '2016-12-19 20:44:57'),
(258, 'adminstats', 'N/A', 'ParÄda admina status.', 3, 7, '2017-01-25 17:10:29'),
(259, '/removeshop', '', 'DzÄ“st NPC no datubÄzes.', 3, 4, '2016-12-19 21:09:45'),
(260, '/forcesellinactiveints', '', 'DzÄ“st visus neaktÄ«vos interjerus.', 2, 4, '2016-12-19 20:51:42'),
(261, '/removeinactiveints', 'N/A', 'IzÅ†em no datubÄzes visus neaktÄ«vos interjerus', 0, 1, '2018-05-16 18:55:48'),
(262, '/removedeletedints', 'N/A', 'IzÅ†em no datubÄzes visus izdzÄ“stos interjerus', 0, 1, '2018-05-16 18:55:55'),
(263, '/removeforsaleints', 'N/A', 'IzÅ†em no datubÄzes paÅ¡laik pÄrdoÅ¡anÄ esoÅ¡os interjerus', 0, 1, '2018-05-16 18:55:20'),
(264, '/delallitems [Item ID] [Item Value]', 'N/A', 'Deletes all the item instances from everywhere in game.', 0, 1, '2018-05-16 18:57:14'),
(265, '/removeint [ID]', '', 'DzÄ“st interjeru no spÄ“les, un no datubÄzes.', 3, 4, '2016-12-19 20:53:14'),
(266, '/removeveh [ID]', '', 'DzÄ“st transportlÄ«dzekli no spÄ“les un datubÄzes.', 3, 3, '2016-12-19 20:33:31'),
(269, 'hideadmin', 'N/A', 'IespÄ“ja ieslÄ“gt un izslÄ“gt redzamu administratoru iekÅ¡ \"TAB\"', 3, 7, '2017-01-29 10:47:50'),
(270, '/ho', '', 'SÅ«tit globÄlo ooc ziÅ†u spÄ“lÄ“tajiem anonÄ«mi..', 3, 1, '2016-12-19 19:34:43'),
(274, '/toga', '', 'IzslÄ“gt vai IeslÄ“gt adminu Äatu.', 3, 1, '2016-12-19 19:41:08'),
(276, 'startres', 'N/A', 'starts a resource', 41, 7, '2014-06-17 18:25:04'),
(277, 'stopres', 'N/A', 'stops the resource', 41, 7, '2014-06-17 18:21:19'),
(278, 'restartres', 'N/A', 'RestartÄ“ resursus', 1, 7, '2017-01-29 11:22:47'),
(279, 'rescheck', 'N/A', 'checks for certain down resources and starts them', 1, 7, '2014-06-26 08:46:57'),
(280, 'rcs', 'N/A', 'check if the resource \"Resource-Keeper\" is running', 41, 7, '2014-06-26 08:44:47'),
(281, 'generatecode', 'N/A', 'Ä¢enerÄ“ ziedojuma kodu', 3, 7, '2017-01-29 11:20:40'),
(282, '/setdamageproof', '', 'PadarÄ«t maÅ¡inu nesadauzÄmu.', 2, 3, '2016-12-19 20:43:39'),
(283, '/delitemsfromint', 'N/A', 'Deletes all the items within a specified interior that older than an interval of item\'s day old.', 0, 1, '2018-05-16 18:56:59'),
(285, '/aordersupplies', 'N/A', 'PasÅ«ta pasÅ«tijumu no RS Haul, Å¡obrÄ«dÄ“jam interjeram, neatskaitot no jums naudu.', 41, 1, '2018-07-07 20:27:14'),
(286, '/setjoblevel', '', 'Uzlikt spÄ“lÄ“tÄjam citu darba lÄ«meni un progressu.', 1, 6, '2016-12-19 20:11:55'),
(288, 'checkactiveroutes', 'N/A', 'Shows all Delivery Job\'s routes that players are on', 41, 6, '2015-01-24 19:28:17'),
(289, 'fetchactualorders', 'N/A', 'Fetches player\'s Supplies Orders from SQL to game manually (Normally it\'s auto-fetched every 10 minutes)', 41, 6, '2015-01-24 19:28:26'),
(290, 'addactualorder', 'N/A', 'Creates a marker for Delivery Job, it looks exactly the same as actual order from other player.', 41, 6, '2015-01-24 19:28:04'),
(291, 'addtruckerjobmarker', 'N/A', 'Creates a generic drop-off marker for Delivery Driver job.', 41, 6, '2015-01-24 19:28:10'),
(292, 'showactualorders', 'N/A', 'Shows Delivery Job\'s actual supply orders from players.', 41, 6, '2015-01-24 19:28:40'),
(293, 'showalltruckmarkers', 'N/A', 'Shows all Delivery Job drop-off markers (both generic markers and actual order markers)', 41, 6, '2015-01-24 19:28:46'),
(294, '/skiproute', '', 'Izlaist paÅ¡sreizÄ“jo preÄu piegÄdes vietu.', 1, 6, '2016-12-19 20:13:01'),
(295, 'resetaccount', 'N/A', 'Atjauno visus characters un arÄ« profilu', 2, 7, '2017-01-29 12:13:46'),
(296, 'deltruckmarker', 'N/A', 'Deletes a Delivery Job\'s marker', 41, 6, '2015-01-24 19:28:21'),
(297, 'aheal', 'N/A', 'Iedod Tev pilnas dzÄ«vÄ«bas, vai /aheal [ID] lai iedotu pilnas dzÄ«vÄ«bas kÄdam citam!', 11, 7, '2017-01-25 17:11:18'),
(298, '/reports', '', 'ParbaudÄ«t visus neatbildÄ“tos reportus.', 11, 1, '2016-12-19 19:37:28'),
(304, 'gmlounge', 'N/A', 'TeleportÄ“ties uz administrÄcijas istabu', 11, 7, '2017-01-29 10:53:35'),
(305, '/g [teksts]', '', 'RakstÄ«t iekÅ¡ GameMaster Äata.', 11, 1, '2016-12-19 19:31:24'),
(306, 'ar', 'N/A', 'PieÅ†emt reportu.', 1, 7, '2017-01-25 16:54:45'),
(308, 'dr', 'N/A', 'Atlaid reportu, padarot to neatbildÄ“tu.', 0, 7, '2017-01-25 17:00:26'),
(309, 'fr', 'N/A', 'Noraida reportu kÄ nepatiesu-', 11, 7, '2017-01-29 10:46:18'),
(311, 'sduty, gduty', 'N/A', 'Toggles Supporter duty (On/off)', 11, 7, '2014-06-26 08:50:23'),
(314, 'mark', 'N/A', 'Izveido sev \"mark\", pie kura vari getoties ar komandu /gotomark', 11, 7, '2017-01-29 12:12:10'),
(316, 'gotomark', 'N/A', 'TeleportÄ“ uz tavu izvÄ“lÄ“to /mark', 11, 7, '2017-01-29 12:17:10'),
(335, 'forceapp', 'N/A', 'SpÄ“lÄ“tajam tiek uzlikts liegums uz 24 stundÄm no servera, pÄ“c kÄ seko roleplay tests, kuru GameMaster izskata', 11, 7, '2017-01-29 12:10:30'),
(342, '/renameshop', '', 'Vai /renameped vai /renamenpc, tas ir manÄ«t NPC vÄrdu uzvÄrdu.', 2, 4, '2016-12-19 20:55:37'),
(345, 'togoverlay', 'N/A', 'Toggles overlay menus on top or buttom of screen. If it\'s disabled, the content will be all printed to chatbox.', 0, 7, '2014-06-17 18:11:09'),
(351, '/settrackingloc', 'N/A', 'Use this command to define where the tracking device in the vehicle is installed.', 0, 1, '2018-05-16 18:53:57'),
(358, 'hashtransactionid', 'N/A', 'Hashes a transaction ID from PayPal into the proper format for donation key.', 3, 7, '2014-06-26 08:37:28'),
(360, '/togreg', '', 'IzslÄ“gt/IeslÄ“gt transportlÄ«dzekÄ¼a reÄ£istrÄciju.', 1, 3, '2016-12-19 20:45:59'),
(361, '/togplate', '', 'IzslÄ“gt/IeslÄ“gt transportlÄ«dzekÄ¼a numurzÄ«mi.', 1, 3, '2016-12-19 20:47:28'),
(362, '/togvin', '', 'IzslÄ“gt/IeslÄ“kt transportlÄ«dzekÄ¼a VIN.', 1, 3, '2016-12-19 20:49:39'),
(363, '/addramp', '', 'Izveidot rampu transportlÄ«dzekÄ¼iem.', 1, 3, '2016-12-19 19:51:07'),
(364, '/delramp', '', 'DzÄ“st transportlÄ«dzekÄ¼a rampu.', 1, 3, '2016-12-19 19:59:37'),
(365, '/nearbyramps', '', 'UzrÄdÄ«t tuvumÄ esoÅ¡Äs rampas.', 1, 5, '2016-12-19 21:39:19'),
(368, '/vehlib', '', 'AtvÄ“rt transportlÄ«dzekÄ¼a sarakstu.', 21, 1, '2018-08-10 11:39:24'),
(369, '/editveh', '', 'Uzlabot transportlÄ«dzekÄ¼a informÄciju / jaudu.', 21, 3, '2016-12-19 20:04:17'),
(370, 'setdob', 'N/A', 'Nomaina spÄ“lÄ“tÄja dzimÅ¡anas datus', 1, 7, '2017-01-29 12:19:21'),
(372, 'setintlimit', 'N/A', 'Set character\'s max interior slots', 3, 7, '2014-06-26 08:53:34'),
(376, '/delad [ID]', '', 'DzÄ“st reklÄmu, ja tÄ ir nonRP.', 2, 1, '2016-12-19 19:31:11'),
(377, 'gethere', 'N/A', 'TeleportÄ“t spÄ“lÄ“tÄju pie sevis', 11, 7, '2017-01-29 10:53:17'),
(379, 'freeze', 'N/A', 'SasaldÄ“ kÄdu spÄ“lÄ“tÄju.', 1, 7, '2017-01-26 16:32:23'),
(381, 'stats', 'N/A', 'ParÄda tabulu , ar Characktera statiem', 0, 7, '2017-01-29 11:21:08'),
(389, 'nudge', 'N/A', 'Nudges a player, getting their attention.', 11, 7, '2014-06-26 08:43:30'),
(390, 'places', 'N/A', 'ParÄda visas vietas, uz kurÄm ir iespÄ“jams teleportÄ“ties -/gotoplace', 0, 1, '2018-07-06 03:49:38'),
(391, 'marks', 'N/A', 'AplÅ«ko visus /marks', 11, 7, '2017-01-25 17:15:35'),
(392, 'delmark', 'N/A', 'IzdzÄ“Å¡ tavu /mark - /delmark [IemarÄ·Ä“juma vÄrds]', 11, 7, '2017-01-25 20:27:13'),
(393, '/ann', '', 'Izveidot ziÅ†ojumu spÄ“lÄ“tÄjiem ar svarÄ«gu informÄciju.', 11, 1, '2016-12-19 19:30:35'),
(394, '/togpm', '', 'IzslÄ“gt vai IeslÄ“gt privÄtÄs ziÅ†as.', 1, 1, '2018-03-14 16:51:47'),
(395, 'monitor', 'N/A', 'IeslÄ“dz monitoru', 11, 7, '2017-01-29 12:12:46'),
(397, 'omonitor', 'N/A', 'Pievieno spÄ“lÄ“tÄjam offline monitoru', 1, 7, '2017-01-29 10:48:17'),
(400, '\'F7\'', 'F7', 'AtvÄ“rt aplikÄciju paneli.', 11, 7, '2016-12-19 21:52:35'),
(404, '/checkveh', '', 'PÄrbaudÄ«t transportlÄ«dzekÄ¼a informÄciju', 11, 3, '2016-12-19 19:53:30'),
(405, '/makegeneric', '', 'Izveidot priekÅ¡metus, durvis, Å¾ogus utt..', 11, 5, '2016-12-19 21:32:25'),
(406, '/unlock', 'K', 'AtslÄ“gt transportlÄ«dzekÄ¼a durvis.', 0, 3, '2016-12-19 20:39:26'),
(410, '/fuelveh', '', 'UzpildÄ«t transportlÄ«dzeklim degvielu.', 1, 3, '2016-12-19 20:07:13'),
(412, '/flip', '', 'Apgazt maÅ¡Ä«nu uz jumta.', 11, 3, '2016-12-19 20:06:45'),
(413, '/park', '', 'Noparkot transportlÄ«dzekÄ¼i tai vietÄ kurÄ paÅ¡laik atrodies.', 0, 3, '2016-12-19 20:32:03'),
(415, '/ed', '', 'Labot transportlÄ«dzekÄ¼a aprakstu.', 0, 3, '2016-12-19 20:01:24'),
(416, '/changename', 'N/a', 'NomainÄ«t spÄ“lÄ“tÄja vÄrdu un uzvÄrdu.', 0, 1, '2018-05-16 18:50:07'),
(418, '/vehlib', '', 'AtvÄ“rt transportlÄ«dzekÄ¼u sarakstu.', 21, 1, '2016-12-19 19:35:37'),
(419, '/moveitem', 'N', 'AtvÄ“rt paneli, caur kuru var pÄrvietot itemu.', 1, 5, '2016-12-19 21:32:48'),
(421, 'cks', 'N/A', 'ParÄda Character Kill pieprasÄ«jumus', 1, 7, '2017-01-25 17:17:26'),
(422, '/advertisements', 'N/A', 'ParÄda tev visus ievietotos sludinÄjumus', 0, 1, '2018-05-16 18:50:39'),
(423, 'showcol', 'N/A', 'show the collide objects in the world. Speed zone (yellow), Speedcam (blue), Restricted parking (Pink), Police Cars (Large Red), Normal (red)', 1, 7, '2014-06-21 21:23:51'),
(424, '/rf', '', 'Veidot frekvences nosÅ«tot uz datubÄzi.', 4, 2, '2016-12-19 19:48:35'),
(425, '/quitjob', '', 'Pamest darbu, kurÄ paÅ¡laik strÄdÄ', 0, 6, '2016-12-19 20:09:25'),
(426, '/f [ziÅ†a]', '', 'OOC frakcijas Äats', 0, 2, '2016-12-19 19:29:35'),
(427, 'F3', 'F3', 'AtvÄ“rt frakciju paneli', 0, 2, '2016-12-19 19:30:09'),
(429, '/sendtovct', 'N/A', 'AizsÅ«tÄ«t reportu VCT komandai.(PieprasÄ«jumu, jautÄjumu utt.)', 0, 1, '2018-05-16 18:52:50'),
(430, 'mt [message]', 'N/A', 'MapotÄju komandas Äats', 31, 7, '2017-01-29 12:22:10'),
(431, '/vct [ziÅ†a]', '', 'VCT Ärpus tÄ“la Äats.', 21, 1, '2016-12-19 19:37:35'),
(432, '/sell [ID]', '', 'PÄrdot interjeru citai personai.', 0, 4, '2016-12-19 20:56:54'),
(433, 'showadminreports', 'N/A', 'Reveals reports sent out to the admin team, to supporters.', 11, 7, '2014-07-15 08:34:58'),
(434, 'supervise', 'N/A', 'Turns you half invisible, in order to supervise a roleplay.', 11, 7, '2014-07-15 08:35:16'),
(436, 'sendveh', 'N/A', 'AizsÅ«ta transportlÄ«dzekli pie spÄ“lÄ“tÄja.', 11, 7, '2017-01-25 17:38:26'),
(438, '/texlist', 'N/A', 'Labot interjera tekstÅ«ras, labot aprakstu u.c', 0, 1, '2018-05-16 18:54:25'),
(441, 'findalts2', 'N/A', 'VairÄk informÄcijas nekÄ /findalts', 1, 7, '2017-01-25 17:37:48'),
(442, 'ri', 'N/A', 'IzslasÄ«t sudzÄ«bu/reportu', 0, 7, '2017-01-29 11:24:48'),
(444, '/sms [kontakts/numurs [ziÅ†a]', '', 'SÅ«tit SMS kÄdam no saviem kontaktiem, vai uz numuru.', 0, 1, '2016-12-19 19:38:50'),
(447, '/fixveh', '', 'Salabot transportlÄ«dzekli, ja tajÄ atrodas personÄÅ¾s.', 1, 3, '2016-12-19 20:56:30'),
(448, 'gate [password]', 'N/A', 'Atver vÄrtus Tev tuvumÄ, ar vai bez paroles.', 0, 7, '2017-01-25 17:42:36'),
(451, '/call [numurs/kontakts]', '', 'ZvanÄ«t uz telefona numuru vai kontaktu.', 0, 1, '2016-12-19 19:30:52'),
(452, 'anims', 'N/A', 'Atver sarakstu ar animÄcijÄm chatboxÄ.', 0, 7, '2017-01-25 17:11:41'),
(453, 'animselect', 'N/A', 'Atver pilno sarakstu ar animÄcijÄm.', 0, 7, '2017-01-25 17:14:40'),
(455, '/writenote [teksts]', '', 'RakstÄ«t kaut ko uz lapiÅ†as, un tÄ uzspawnosies inventorijÄ.', 0, 5, '2016-12-19 21:35:47'),
(456, '/fish', '', 'SÄkt makÅ¡Ä·erÄ“t', 0, 6, '2016-12-19 20:08:10'),
(458, '/sellfish', '', 'PÄrdod noÄ·ertÄs zivis', 0, 6, '2016-12-19 20:09:43'),
(460, '/tempsell', '', 'Iedot spÄ“lÄ“tÄju veco iespÄ“ju /sell ar kuru var pÄrakstÄ«t transportu.', 11, 3, '2016-12-19 20:42:52'),
(462, '/arrest', '', 'ApcietinÄt cilvÄ“ku, ja tas ir veicis pÄrkÄpumus.', 0, 2, '2016-12-19 19:44:53'),
(463, '/items', '', 'AtvÄ“rt itemu paneli.', 1, 5, '2016-12-19 21:31:48'),
(465, '/setvol [0-100]', '', 'RegulÄ“t rÄdio skaÄ¼umu.', 0, 3, '2016-12-19 20:34:48'),
(468, 'nearbyshops', 'N/A', 'ParÄda netÄlu esoÅ¡os \"NPC\"', 0, 7, '2017-01-29 10:47:02'),
(469, 'moveshop', 'N/A', 'PÄrvietu shop NPC uz jÅ«su atraÅ¡anÄs vietu', 11, 7, '2017-01-29 12:14:17'),
(471, 'unforceapp [Partial Username]', 'N/A', 'IzÅ†em spÄ“lÄ“tÄju no forceapp', 11, 7, '2017-01-26 16:18:58'),
(473, 'nearbyfuels', 'N/A', 'Atrod visus tuvÄkos benzÄ«ntankus', 3, 7, '2018-06-25 17:38:06'),
(474, 'delfuel [id]', 'N/A', 'IzdzÄ“Å¡ degvielas NPC.', 1, 7, '2017-01-25 17:39:00'),
(477, '/nearbyitems', '', 'UzrÄdÄ«t tuvumÄ esoÅ¡os itemus.', 11, 5, '2016-12-19 21:36:29'),
(480, 'sw', '', 'LaikapstÄkÄ¼u maiÅ†a', 3, 7, '2017-01-29 12:10:58'),
(482, '/delitem', '', 'DzÄ“st itemu.', 1, 5, '2016-12-19 21:29:08'),
(486, '/processcustominterior [interior ID]', '', 'Manually process a custom interior upload', 0, 1, '2018-05-16 18:55:39'),
(487, 'processcustominterior [interior ID]', '', 'Manually process a custom interior upload', 41, 4, '2014-10-19 08:24:41'),
(488, 'showkills', '', 'Show the latest kills', 1, 7, '2014-10-19 18:36:23'),
(489, 'setserverpassword [Password, leave empty to remove]', '', '', 1, 7, '2014-10-25 18:29:19'),
(490, '/setintfaction [frakcijas ID]', '', 'UzstÄdÄ«t interjeru uz frakciju', 2, 2, '2016-12-19 19:46:12'),
(491, '/setinttomyfaction ', '', 'Uzlikt savu Ä«paÅ¡umu uz savu frakciju.', 3, 1, '2018-03-14 16:52:36'),
(494, '/delemitters', '', 'Deletes all emitters', 0, 1, '2018-05-16 18:56:54'),
(502, '/adddancer', '', 'Uzlikt dejojuÅ¡u NPC.', 2, 7, '2016-12-19 22:01:29'),
(503, '/fixinventory', '', 'Salabot jÅ«su inventoriju, ja tas ir nobugojies un nestrÄdÄ.', 0, 5, '2016-12-19 21:29:55'),
(504, '/setinttomyfaction', '', 'Uzlikt interjeru uz savu frakciju, kurÄ esi lÄ«deris.', 2, 1, '2018-03-14 16:55:27'),
(506, 'groundsnow', 'N/A', 'IeslÄ“gt/izslÄ“gt sniega tekstÅ«ras.', 0, 7, '2017-01-25 17:43:09'),
(507, 'whitelists', 'N/A', 'List all staff serial whitelist', 0, 7, '2015-02-04 09:13:14'),
(508, '/addserialwl [LietotÄjvards] [Serial]', '', 'Ielikt itemu serialu gaidÄ«Å¡anas sarakstÄ.', 3, 7, '2016-12-19 22:02:37'),
(509, 'delserialwl [Whitelist ID]', '', 'NoÅ†em warn no serial numura', 3, 7, '2017-01-29 10:46:41'),
(510, 'banserial [Serial Number] [Reason]', '', 'Nobano sÄ“rijas nummuru.', 1, 7, '2017-01-25 17:12:01'),
(511, 'banip [IP Address] [Reason]', '', 'Banot IP adresi.', 2, 7, '2017-03-24 19:02:53'),
(512, 'showban', '', 'Show details of a ban.', 1, 7, '2014-12-29 22:47:02'),
(513, 'staffs', '', 'Opens staff manager', 3, 7, '2015-01-08 02:30:50'),
(514, '/adde', '', 'Uzlikt elevatoru.', 11, 7, '2016-12-19 22:01:44'),
(516, '/dutyadmin', '', 'ReÄ£idÄ“t frakcijas duty uzstÄdÄ«jumus', 3, 2, '2016-12-19 19:49:56'),
(517, 'watch [ID]', '', 'SkatÄs citu spÄ“lÄ“tÄju.', 1, 7, '2017-01-26 16:18:25'),
(518, 'autowatch [Time Interval]', '', 'LÄ«dzÄ«gs kÄ recon, taÄu pÄrslÄ“dzas uz citu spÄ“lÄ“tÄju automÄtiski', 1, 7, '2017-01-26 16:11:19'),
(519, 'injure', 'N/A', 'Base command for the \"Health\" System. It allows you to add an injury to yourself or another.', 0, 7, '2015-02-04 09:13:02'),
(520, 'irespond', 'N/A', 'Allows you to respond with either (y)es or (n)o to a request from /injure', 11, 7, '2015-02-04 09:12:52'),
(521, 'diagnose', 'N/A', 'Lieto, lai pÄrbaudÄ«tu spÄ“lÄ“tÄja ievainojumus roleplay laikÄ', 0, 7, '2017-01-29 10:38:01'),
(522, 'treat', 'N/A', 'Allows you to treat a person of an injury. This has an associated money cost. RP it accordingly.', 0, 7, '2015-02-04 09:12:57'),
(524, '/startbus', '', 'SÄkt darbu ar busu.', 0, 6, '2016-12-19 20:12:07'),
(526, '/handbrake', 'G', 'UzstÄdit rokasbremzi transportlÄ«dzeklim.', 0, 3, '2016-12-19 20:25:53'),
(527, '/movesafe', '', 'PÄrvietot seifu iekÅ¡ interjera, ja tev ir interjera atslÄ“ga.', 0, 5, '2016-12-19 21:33:13'),
(528, 'ri [ID]', 'N/A', 'Shows report information.', 11, 7, '2015-01-29 06:42:06'),
(530, 'fp', 'N/A', 'IeslÄ“dz pirmÄs personas skatu, raksti atkÄrtoti, lai to izslÄ“gtu.', 0, 7, '2017-01-25 17:39:38'),
(531, '/togg', '', 'IzslÄ“gt vai IeslÄ“gt GameMaster Äatu.', 11, 1, '2016-12-19 19:42:42'),
(533, '[ un ]', '[ un ]', 'SlÄ“gt pagriezienus.', 0, 1, '2018-05-16 18:53:08'),
(535, '/radio [ziÅ†a]', 'Y', 'RunÄt rÄcijÄ uz noregulÄ“to frekvenci.', 0, 1, '2016-12-19 19:29:12'),
(537, '/say [teksts]', 'T', 'RakstÄ«t iekÅ¡ spÄ“lÄ“s Äata.', 0, 1, '2016-12-19 19:30:01'),
(538, 'I', 'I', 'AtvÄ“rt savu inventoriju.', 0, 5, '2016-12-19 21:31:02'),
(539, '/p [teksts]', '', 'RunÄt pa telefonu .', 0, 1, '2016-12-19 19:37:10'),
(540, '/b [teksts]', 'B', 'RakstÄ«t iekÅ¡ Ärpus tÄ“la Äata (( OOC ))', 0, 1, '2016-12-19 19:02:51'),
(541, '/ooc [teksts]', '', 'RakstÄ«t iekÅ¡ ooc Äata, ja administrÄcija ir to ieslÄ“gusi.', 0, 1, '2016-12-19 19:35:01'),
(542, '/seatbelt', 'Z', 'PiesprÄdzÄ“t droÅ¡ibas jostu.', 0, 3, '2016-12-19 20:37:29'),
(543, '/togwindow', 'X', 'AtvÄ“rt/AizvÄ“rt transportlÄ«dzekÄ¼a logus.', 0, 3, '2016-12-19 20:38:41'),
(544, 'pay [Player name/ID]', 'N/A', 'Iedod naudu kÄdam citam spÄ“lÄ“tÄjam (Ja tev ir sasniegtas 10 stundas)', 0, 7, '2017-01-25 20:28:44'),
(546, 'jailtime', 'N/A', 'ParÄda spÄ“lÄ“tÄjus kuri patreiz atrodas administratÄ«vajÄ cietumÄ', 0, 7, '2017-01-25 20:34:51'),
(547, 'seefar [250 - 20000]', 'N/A', 'Izmaina tavu spÄ“les redzamÄ«bu', 0, 7, '2017-01-29 12:17:58'),
(548, 'clearchat', 'N/A', 'IztÄ«ri chatbox.', 0, 7, '2017-01-25 17:00:10'),
(549, 'togglehud', 'N/A', 'IzslÄ“dz ÄrÄ spÄ“les \"HUD\"', 0, 7, '2017-01-25 20:29:47'),
(550, 'showfeedbacks', 'N/A', 'ParÄda tavas atsauksmes', 11, 7, '2017-01-29 12:06:54'),
(551, 'staffs', 'N/A', 'AÅ¡a komanda, ar ko atvÄ“rt staffu menedÅ¾eris.', 11, 7, '2017-01-25 16:54:37'),
(552, 'findalts [Name/ID]', 'N/A', 'ParÄda spÄ“lÄ“tÄja citus tÄ“lus un arÄ« to nospÄ“lÄ“to laiku.', 11, 7, '2017-01-29 10:39:38'),
(553, 'staff', 'N/A', 'Opens up a menu showing online staff members.', 0, 7, '2015-02-07 19:40:48'),
(556, '/giveitem', '', 'Iedod itemus', 2, 7, '2017-04-03 23:17:11'),
(557, '', '', '', 0, 7, '2017-06-18 11:00:50'),
(560, '/setintentrance [id]', '', 'PÄrlikt mÄjiÅ†as atraÅ¡anÄs vietu', 2, 4, '2017-10-08 14:20:38'),
(561, '/setfee', '', 'UzstÄda interjeram ieejas maksu', 2, 4, '2018-02-15 21:52:50'),
(562, '/setfee', '', 'UzstÄda interjeram ieejas maksu', 2, 4, '2018-02-15 21:52:50'),
(563, 'back', '', 'TeleportÄ“ties uz to vietu kur biji iepriekÅ¡', 2, 7, '2018-03-07 12:53:49'),
(564, 'back', '', 'TeleportÄ“ties uz to vietu kur biji iepriekÅ¡', 2, 7, '2018-03-07 12:53:50'),
(566, '/plantweed', '', 'IestÄda podiÅ†Ä marihuÄnas sÄ“klu!', 0, 1, '2018-05-16 18:51:11'),
(567, '/district', '', 'TuvumÄ IC:', 0, 1, '2018-03-15 16:15:55'),
(568, '/setjobta', '', 'Uzlikt civilajiem transportlÄ«dzekÄ¼iem TA', 0, 1, '2018-07-09 13:57:16'),
(570, '/setjobmagi', '', 'Civilajos autiÅ†os ieliek magnetolas', 1, 3, '2018-07-09 14:00:19'),
(572, '/jail', '', 'mhm', 11, 1, '2018-08-06 21:37:41'),
(573, '/jail', '', 'mhm', 11, 1, '2018-08-06 21:37:41');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `commands_library`
--

CREATE TABLE `commands_library` (
  `cmID` int(11) NOT NULL,
  `cmType` int(3) NOT NULL DEFAULT '1',
  `cmLevel` int(3) NOT NULL DEFAULT '0',
  `cmSubType` int(3) NOT NULL DEFAULT '0',
  `cmName` text,
  `cmExplanation` text,
  `cmCreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves all info about all kinds of commands in /cmds, /gh and';

--
-- Gegevens worden geëxporteerd voor tabel `commands_library`
--

INSERT INTO `commands_library` (`cmID`, `cmType`, `cmLevel`, `cmSubType`, `cmName`, `cmExplanation`, `cmCreationDate`) VALUES
(-2, 2, 0, 0, NULL, '8/6/13: Released Bank System v1.6 + ATM Card System -Maxime\n5/6/13: Released gate manager v2.0 (Fixed grid list bug, /nearbygates is made,  re-worked the system partially, it should work much faster now) -Maxime\n5/6/13: New external Report panel for Admins and GMs. New overlay menu for /stats and /admins -Maxime\n4/6/13: All interactions with NPCs, Shops, Sittable Chairs, Computer Items have been moved from left mouse to right mouse. -Maxime\n4/6/13: Added Ability to Drag & Drop Items to shelves - Maxime\n3/6/13: Released shop system v2.2 (All kinds of shops/NPC will work and profitable even when owner is offline) - Maxime\n2/6/13: Created new cmds /nearbynpcs and /renamenpc for Admins and GMs. - Maxime\n2/6/13: Added names to all kinds of NPC in format of \'Firstname Lastname\'. -Maxime\n1/6/13: Monitors will be now showing for all admins and GMs on duty. It doesn\'t show \"New Player\" monitor one, but still it existed in /monitor - Maxime\n1/6/13: GMs granted full access to add/modifiy/remove any monitors. -Maxime\n1/6/13: Modified /warn cmd - Maxime\n1/6/13: Re-worked 16 static shops, made the GUI look all consistent. -Maxime\n31/5/13: Created GM warning, moved adverts management to GMs.-Maxime\n31/5/13: Created 7 more new adm cmds to manage job system (check /ah for details) - Maxime\n31/5/13: Restricted GMs + Super Admin and below from viewing/editing their own admin note - Maxime\n31/5/13: Restricted GMs from seeing player\'s admin note and other abusable info via /check - Maxime\n31/5/13: Created new dynamic /ah and /gh, auto update itself every 10 minutes. -Maxime\n31/5/13: New Death Screen + Respawn button - Maxime\n31/5/13: Created new Trial+ GM, Trial+ Admin cmd \'forceapp\' - Maxime\n31/5/13: Created new Trial+ Admin cmd \'/aheal\' - Maxime\n28/5/13: Added 30+ more new interiors to official interiors list, /listints for details - Maxime\n24/5/13: Re-scripted new trucker job system, allowed people to order supplies from RS haul, removed supplies NPC - Maxime\n', '2013-06-07 23:31:19'),
(-1, 1, 0, 0, NULL, 'SDSDS\n', '2014-03-11 01:36:13'),
(1, 1, 0, 0, 'trace', 'traces a phone number and tells you who owns it. Player must be online.', '2013-06-29 14:10:19'),
(2, 1, 0, 0, 'getkey', 'Spawns yourself a key of interior or vehicle that you\'re currently in.', '2013-06-29 14:10:19'),
(3, 1, 0, 0, 'cr', 'without specified ID will closes all your own accepted reports.', '2013-06-29 14:10:19'),
(4, 1, 0, 0, 'createemitter [Emitter Type]', 'Spawns Synced Fire/Water Emitters', '2013-06-29 14:10:19'),
(5, 1, 0, 0, 'nearbyemitters', 'Shows all nearby Fire/Water emitters.', '2013-06-29 14:10:19'),
(6, 1, 0, 0, 'delemitters', 'Deletes all nearby Fire/Water emitters.', '2013-06-29 14:10:19'),
(7, 1, 0, 0, 'delemitter [Emitter ID]', 'Deletes a Fire/Water emitters.', '2013-06-29 14:10:19'),
(8, 1, 0, 0, 'delnearbyshops', 'Deletes nearby shops.', '2013-06-29 14:10:19'),
(9, 1, 0, 0, 'reloadshop [ID]', 'Reloads a bugged shop.', '2013-06-29 14:10:19'),
(10, 1, 0, 0, 'restoreshop [ID]', 'Restores a deleted NPC from SQL.', '2013-06-29 14:10:19'),
(11, 1, 0, 0, 'delshop [ID]', 'Deletes a NPC from game, still exist in SQL.', '2013-06-29 14:10:19'),
(12, 1, 0, 0, 'showallcustomshops', 'Shows all custom shops parameters and settings.', '2013-06-29 14:10:19'),
(13, 1, 0, 0, 'fixnearbyeleators', 'Fixes near by elevators. Players can use too.', '2013-06-29 14:10:19'),
(14, 1, 0, 0, 'fixvehvis [Driver\'s partial Name/ID]', 'Fixes player\'s car\'s visual, leave the engine\'s health.', '2013-06-29 14:10:19'),
(15, 1, 0, 0, 'findvehid [Veh Name]', 'Gets car\'s Model ID from Name.', '2013-06-29 14:10:19'),
(16, 1, 0, 0, 'getcolor [Veh ID]', 'Gets car\'s color.', '2013-06-29 14:10:19'),
(17, 1, 0, 0, 'respawnint', 'Respawns all vehicle within current interior/dimension.', '2013-06-29 14:10:19'),
(18, 1, 0, 0, 'restock', 'Restocks businesses, you must be inside an interior to restock. Or use SYNTAX: /restock [Interior ID] [Amount 1~300]', '2013-06-29 14:10:19'),
(19, 1, 0, 0, 'ojail [Exact Username] [Minutes(>=1) 999=Perm] [Reason]', 'Jails an offline player.', '2013-06-29 14:10:19'),
(20, 1, 0, 0, 'sojail [Exact Username] [Minutes(>=1) 999=Perm] [Reason]', 'Silently jails an offline player.', '2013-06-29 14:10:19'),
(21, 1, 0, 0, 'oban [Exact Username] [Time in Hours, 0 = Infinite] [Reason]', 'Bans an offline player.', '2013-06-29 14:10:19'),
(22, 1, 0, 0, 'delefromint [Interior ID, 0 = world map]', 'Deletes all elevators that connect to a specified interior.', '2013-06-29 14:10:19'),
(23, 1, 0, 0, 'delnearbye', 'Deletes all nearby elevators.', '2013-06-29 14:10:19'),
(24, 1, 0, 0, 'stopradiodistrict', 'Stops all car radios within current district.', '2013-06-29 14:10:19'),
(25, 1, 0, 0, 'adde', 'creates an elevator', '2013-06-29 14:10:19'),
(26, 1, 0, 0, 'adde2', 'Create an elevator between you and another player', '2013-06-29 14:10:19'),
(27, 1, 0, 0, 'dele', 'deletes an elevator', '2013-06-29 14:10:19'),
(28, 1, 0, 0, 'nearbye', 'shows nearby elevators', '2013-06-29 14:10:19'),
(29, 1, 0, 0, 'togglee', 'enables/disables an elevator', '2013-06-29 14:10:19'),
(30, 1, 0, 0, 'togautocheck', 'Toogles auto opening player /check on /ar reports.', '2013-06-29 14:10:19'),
(31, 1, 0, 0, 'changewarnstyle', 'changes admin warning message displaying style.', '2013-06-29 14:10:19'),
(32, 1, 0, 0, 'ur', 'view unanswered reports.', '2013-06-29 14:10:19'),
(34, 1, 0, 0, 'adminlounge', 'Chill out in the lounge', '2013-06-29 14:10:19'),
(35, 1, 0, 0, 'check', 'retrieves specified player\'s information', '2013-06-29 14:10:19'),
(36, 1, 0, 0, 'stats', 'shows players vehicle id\'s, languages etc', '2013-06-29 14:10:19'),
(37, 1, 0, 0, 'history', 'checks the admin history of the player, works also when offline.', '2013-06-29 14:10:19'),
(38, 1, 0, 0, 'auncuff', 'uncuffs the player', '2013-06-29 14:10:19'),
(39, 1, 0, 0, 'revive', 'revives a player that has been PKd.', '2013-06-29 14:10:19'),
(40, 1, 0, 0, 'pmute', 'mutes the player', '2013-06-29 14:10:19'),
(41, 1, 0, 0, 'togooc', 'Toggles OOC on/off', '2013-06-29 14:10:19'),
(42, 1, 0, 0, 'stogooc', 'Siently Toggles OOC on/off', '2013-06-29 14:10:19'),
(43, 1, 0, 0, 'disarm', 'takes all weapon from the player', '2013-06-29 14:10:19'),
(44, 1, 0, 0, 'freconnect', 'reconnects the player', '2013-06-29 14:10:19'),
(45, 1, 0, 0, 'giveitem', 'gives the player the specified item, see /itemlist for ids', '2013-06-29 14:10:19'),
(46, 1, 0, 0, 'sethp', 'sets the health of the player', '2013-06-29 14:10:19'),
(47, 1, 0, 0, 'setarmor', 'sets the armor of the player', '2013-06-29 14:10:19'),
(48, 1, 0, 0, 'setskin', 'sets the skin of a player', '2013-06-29 14:10:19'),
(49, 1, 0, 0, 'changename', 'changes the character name', '2013-06-29 14:10:19'),
(50, 1, 0, 0, 'slap', 'drops the player from a height of 15', '2013-06-29 14:10:19'),
(51, 1, 0, 0, 'recon', 'spectate a player', '2013-06-29 14:10:19'),
(52, 1, 0, 0, 'fuckrecon', 'forces recon to stop', '2013-06-29 14:10:19'),
(53, 1, 0, 0, 'pkick', 'kicks the player from the server', '2013-06-29 14:10:19'),
(54, 1, 0, 0, 'pban', 'bans the player for the given time, specify 0 as hours for permanent ban', '2013-06-29 14:10:19'),
(55, 1, 0, 0, 'unban', 'unbans the player with the given character name', '2013-06-29 14:10:19'),
(56, 1, 0, 0, 'unbanip', 'unbans the specified ip', '2013-06-29 14:10:19'),
(57, 1, 0, 0, 'unbanserial', 'unbans the specified serial', '2013-06-29 14:10:19'),
(58, 1, 0, 0, 'gotoplace', 'teleports you to one of those 4 places', '2013-06-29 14:10:19'),
(59, 1, 0, 0, 'jail', 'jails the player, if minutes >= 999 it\'s permanent', '2013-06-29 14:10:19'),
(60, 1, 0, 0, 'unjail', 'unjails the player', '2013-06-29 14:10:19'),
(61, 1, 0, 0, 'jailed', 'shows a list of players that are in adminjail, including time left and reason', '2013-06-29 14:10:19'),
(62, 1, 0, 0, 'goto', 'teleport to another player', '2013-06-29 14:10:19'),
(63, 1, 0, 0, 'gethere', 'teleports the player to you', '2013-06-29 14:10:19'),
(64, 1, 0, 0, 'sendto', 'teleports a player to another one', '2013-06-29 14:10:19'),
(65, 1, 0, 0, 'freeze', 'freezes the player', '2013-06-29 14:10:19'),
(66, 1, 0, 0, 'unfreeze', 'unfreezes the player', '2013-06-29 14:10:19'),
(67, 1, 0, 0, 'mark', 'saves your current position', '2013-06-29 14:10:19'),
(68, 1, 0, 0, 'gotomark', 'teleports to the position where you did /mark [label]', '2013-06-29 14:10:19'),
(69, 1, 0, 0, 'adminduty', '(un)marks you as admin on duty', '2013-06-29 14:10:19'),
(70, 1, 0, 0, 'setmotd', 'updates the message of the day', '2013-06-29 14:10:19'),
(71, 1, 0, 0, 'setamotd', 'updates the admin message of the day', '2013-06-29 14:10:19'),
(72, 1, 0, 0, 'amotd', 'shows the current admin message of the day', '2013-06-29 14:10:19'),
(73, 1, 0, 0, 'warn', 'issues a warning, player is banned when having 3 warnings', '2013-06-29 14:10:19'),
(74, 1, 0, 0, 'showinv', 'views the inventory of the player', '2013-06-29 14:10:19'),
(75, 1, 0, 0, 'togmytag', 'toggles your nametag on and off', '2013-06-29 14:10:19'),
(76, 1, 0, 0, 'dropme', 'drops you off at the current freecam position', '2013-06-29 14:10:19'),
(77, 1, 0, 0, 'disappear', 'disappear', '2013-06-29 14:10:19'),
(78, 1, 0, 0, 'listcarprices', 'shows list with carprices in dealerships', '2013-06-29 14:10:19'),
(79, 1, 0, 0, 'findalts', 'shows all characters the player has', '2013-06-29 14:10:19'),
(80, 1, 0, 0, 'findip', 'shows all accounts the player has', '2013-06-29 14:10:19'),
(81, 1, 0, 0, 'findserial', 'shows all accounts the player has', '2013-06-29 14:10:19'),
(82, 1, 0, 0, 'setlanguage or /setlang', 'adjusts the skill of a player\'s language, or learns it to him', '2013-06-29 14:10:19'),
(83, 1, 0, 0, 'dellanguage', 'deletes a language from the player\'s knowledge', '2013-06-29 14:10:19'),
(84, 1, 0, 0, 'aunblindfold', 'unblindfold the player', '2013-06-29 14:10:19'),
(85, 1, 0, 0, 'agivelicense', 'gives the player a license', '2013-06-29 14:10:19'),
(86, 1, 0, 0, 'resetcontract', 'resets the job time limit for a person.', '2013-06-29 14:10:19'),
(87, 1, 0, 0, 'ads', 'Shows all pending adverts.', '2013-06-29 14:10:19'),
(88, 1, 0, 0, 'freezead', 'Freeze an advert.', '2013-06-29 14:10:19'),
(89, 1, 0, 0, 'unfreezead', 'Unfreeze an advert', '2013-06-29 14:10:19'),
(90, 1, 0, 0, 'deletead', 'Delete an advert', '2013-06-29 14:10:19'),
(91, 1, 0, 0, '\'P\'', 'Locks a world item. Make it unpickable.', '2013-06-29 14:10:19'),
(92, 1, 0, 0, 'itemprotect', 'Sets locked world item pickable by faction members.', '2013-06-29 14:10:19'),
(93, 1, 0, 0, 'addii', 'Adds an information marker', '2013-06-29 14:10:19'),
(94, 1, 0, 0, 'delii', 'Deletes an information marker', '2013-06-29 14:10:19'),
(95, 1, 0, 0, 'nearbyii', 'Shows all nearby information markers', '2013-06-29 14:10:19'),
(96, 1, 0, 0, 'makeshop ', 'Creates a NPC.', '2013-06-29 14:10:19'),
(97, 1, 0, 0, 'nearbyshops ', 'Shows all near by NPCs.', '2013-06-29 14:10:19'),
(98, 1, 0, 0, 'gunlist or /gunchart', 'Showing a details weapon\'s properties table with IDs.', '2013-06-29 14:10:19'),
(99, 1, 0, 0, 'setage ', 'Change player\'s age', '2013-06-29 14:10:19'),
(100, 1, 0, 0, 'setrace ', 'Change player\'s race', '2013-06-29 14:10:19'),
(101, 1, 0, 0, 'setheight  ', 'Change player\'s height', '2013-06-29 14:10:19'),
(102, 1, 0, 0, 'setgender  ', 'Change player\'s gender', '2013-06-29 14:10:19'),
(103, 1, 0, 0, 'sll  ', 'Change suspension\'s height', '2013-06-29 14:10:19'),
(104, 1, 0, 0, 'getsll  ', 'Gets suspension\'s height', '2013-06-29 14:10:19'),
(105, 1, 0, 0, 'resetsll', 'Resets suspension\'s height for the current vehicle.', '2013-06-29 14:10:19'),
(106, 1, 0, 0, 'sdt  ', 'Change drivetrain type', '2013-06-29 14:10:19'),
(107, 1, 0, 0, 'getsdt  ', 'Gets drivetrain type', '2013-06-29 14:10:19'),
(108, 1, 0, 0, 'resetsdt', 'Resets drive type for the current vehicle.', '2013-06-29 14:10:19'),
(109, 1, 0, 0, 'skick', 'Silently kick a player', '2013-06-29 14:10:19'),
(110, 1, 0, 0, 'sjail  ', 'Silently jail a player', '2013-06-29 14:10:19'),
(111, 1, 0, 0, 'sjail  ', 'Silently jail a player', '2013-06-29 14:10:19'),
(112, 1, 0, 0, 'stogooc  ', 'Silently toggle global OOC chat', '2013-06-29 14:10:19'),
(113, 1, 0, 0, 'setjob  ', 'Sets player job.', '2013-06-29 14:10:19'),
(114, 1, 0, 0, 'deljob  ', 'Deletes player job.', '2013-06-29 14:10:19'),
(115, 1, 0, 0, 'issuepilotcertificate  ', 'Issues player a pilot license', '2013-06-29 14:10:19'),
(116, 1, 0, 0, 'issuepc  ', 'Issues player a pilot license', '2013-06-29 14:10:19'),
(117, 1, 0, 0, 'items or /itemlist ', 'Opens Item Creator.', '2013-06-29 14:10:19'),
(118, 1, 0, 0, 'settrainrailed ', 'Sets a train off/on the rail.', '2013-06-29 14:10:19'),
(119, 1, 0, 0, 'settraindirection', 'Sets a train direction to (counter)clockwise.', '2013-06-29 14:10:19'),
(120, 1, 0, 0, 'listcarprices', 'Shows an list of vehicles in car dealerships', '2013-06-29 14:10:19'),
(121, 1, 0, 0, 'unflip', 'unflips the car', '2013-06-29 14:10:19'),
(122, 1, 0, 0, 'unlockcivcars', 'unlocks all civilian vehicles', '2013-06-29 14:10:19'),
(123, 1, 0, 0, 'oldcar', 'retrieves the id of the last car you drove', '2013-06-29 14:10:19'),
(124, 1, 0, 0, 'thiscar', 'retrieves the id of your current car', '2013-06-29 14:10:19'),
(125, 1, 0, 0, 'gotocar', 'teleports you to the car with that id', '2013-06-29 14:10:19'),
(126, 1, 0, 0, 'getcar', 'teleports the car to you', '2013-06-29 14:10:19'),
(127, 1, 0, 0, 'nearbyvehicles', 'shows all vehicles within a radius of 20', '2013-06-29 14:10:19'),
(128, 1, 0, 0, 'respawnveh', 'respawns the vehicle with that id', '2013-06-29 14:10:19'),
(129, 1, 0, 0, 'respawnall', 'respawns all vehicles', '2013-06-29 14:10:19'),
(130, 1, 0, 0, 'respawndistrict', 'respawns all vehicles in the district you are in', '2013-06-29 14:10:19'),
(131, 1, 0, 0, 'respawnciv', 'respawns all civilian (job) vehicles', '2013-06-29 14:10:19'),
(132, 1, 0, 0, 'findveh', 'retrieves the model for that vehicle name', '2013-06-29 14:10:19'),
(133, 1, 0, 0, 'fixveh', 'repairs a player\'s vehicle', '2013-06-29 14:10:19'),
(134, 1, 0, 0, 'fixvehs', 'repairs all vehicles', '2013-06-29 14:10:19'),
(135, 1, 0, 0, 'fixvehis', 'fixes the vehicles look, engine may remain broken', '2013-06-29 14:10:19'),
(136, 1, 0, 0, 'blowveh', 'blows up a players car', '2013-06-29 14:10:19'),
(137, 1, 0, 0, 'setcarhp', 'sets the health of a car, full health is 1000.', '2013-06-29 14:10:19'),
(138, 1, 0, 0, 'fuelveh', 'refills a players vehicle', '2013-06-29 14:10:19'),
(139, 1, 0, 0, 'fuelvehs', 'refills all vehicles', '2013-06-29 14:10:19'),
(140, 1, 0, 0, 'setcolor', 'changes the players vehicle colors', '2013-06-29 14:10:19'),
(141, 1, 0, 0, 'getcolor', 'returns the colors of a vehicle', '2013-06-29 14:10:19'),
(142, 1, 0, 0, 'entercar', 'puts the player into the given vehicle at either the specified seat, or if none then the first free seat', '2013-06-29 14:10:19'),
(143, 1, 0, 0, 'getpos', 'outputs your current position, interior and dimension', '2013-06-29 14:10:19'),
(144, 1, 0, 0, 'x', 'increases your x-coordinate by the given value', '2013-06-29 14:10:19'),
(145, 1, 0, 0, 'y', 'increases your y-coordinate by the given value', '2013-06-29 14:10:19'),
(146, 1, 0, 0, 'z', 'increases your z-coordinate by the given value', '2013-06-29 14:10:19'),
(147, 1, 0, 0, 'set*', 'sets your coordinates - available combinations: x, y, z, xyz, xy, xz, yz', '2013-06-29 14:10:19'),
(148, 1, 0, 0, 'reloadint', 'reloads an interior from the database', '2013-06-29 14:10:19'),
(149, 1, 0, 0, 'nearbyints', 'shows nearby interiors', '2013-06-29 14:10:19'),
(150, 1, 0, 0, 'setintname', 'changes an interior name', '2013-06-29 14:10:19'),
(151, 1, 0, 0, 'setfee', 'sets an fee on entering the interior', '2013-06-29 14:10:19'),
(152, 1, 0, 0, 'getintid', 'Gets the interior id', '2013-06-29 14:10:19'),
(153, 1, 0, 0, 'setdim or /setdimension', 'Sets the players dimension id', '2013-06-29 14:10:19'),
(154, 1, 0, 0, 'setint or /setinterior', 'Setst he players interior id', '2013-06-29 14:10:19'),
(155, 1, 0, 0, 'addcandidate', 'add\'s player to election vote list', '2013-06-29 14:10:19'),
(156, 1, 0, 0, 'delcandidate', 'deletes a player to election vote list', '2013-06-29 14:10:19'),
(157, 1, 0, 0, 'showresults', 'shows the results of the election', '2013-06-29 14:10:19'),
(158, 1, 0, 0, 'showfactions', 'shows a list with factions', '2013-06-29 14:10:19'),
(159, 1, 0, 0, ' /respawnfaction', 'respawns faction vehicles', '2013-06-29 14:10:19'),
(160, 1, 0, 0, 'resetbackup', 'Resets PD\'s backup unit', '2013-06-29 14:10:19'),
(161, 1, 0, 0, 'resetassist', 'Resets ES\'s assist system', '2013-06-29 14:10:19'),
(162, 1, 0, 0, 'resettowbackup', 'Resets towing backup system', '2013-06-29 14:10:19'),
(163, 1, 0, 0, 'aremovespikes', 'Removes all the PD spikes', '2013-06-29 14:10:19'),
(164, 1, 0, 0, 'clearnearbytag', 'Clears nearby tag', '2013-06-29 14:10:19'),
(165, 1, 0, 0, 'nearbytags', 'Shows nearby tag and its creators', '2013-06-29 14:10:19'),
(166, 1, 0, 0, 'changelock', 'changes the lock from the vehicle/interior', '2013-06-29 14:10:19'),
(167, 1, 0, 0, 'restartgatekeepers', 'restarts the gatekeepers resource', '2013-06-29 14:10:19'),
(168, 1, 0, 0, 'bury', 'buries the player; removes the ck corpse', '2013-06-29 14:10:19'),
(169, 1, 0, 0, 'listadverts', 'gives a list with recently ran and pending adverts', '2013-06-29 14:10:19'),
(170, 1, 0, 0, 'freeze', 'prevents an ad from being aired, max is 10 minutes.', '2013-06-29 14:10:19'),
(171, 1, 0, 0, 'unfreeze', 'Unfreezes an advert', '2013-06-29 14:10:19'),
(172, 1, 0, 0, 'deletead', 'Marks an ad as aired', '2013-06-29 14:10:19'),
(173, 1, 0, 0, 'resetpos', 'Reset player\'s position, works when player\'s offline.', '2013-06-29 14:10:19'),
(174, 1, 0, 0, 'delsupercar', 'deletes the supercar you\'re in, given that it meets the criteria for deletion.', '2013-06-29 14:07:57'),
(175, 1, 0, 0, 'setbiznote', 'Sets business greeting/notification message.', '2013-06-29 14:07:57'),
(176, 1, 0, 0, 'delitemsfromint [Int ID] [Day old of Items]', 'Deletes all the items within a specified interior that older than an interval of item\'s day old.', '2013-06-29 14:07:57'),
(177, 1, 0, 0, 'ints or /interiors', 'Opens Interior Manager.', '2013-06-29 14:07:57'),
(178, 1, 0, 0, 'delint', 'Deletes the interior from game and disables it from loading in next server/resource restarts.', '2013-06-29 14:07:57'),
(179, 1, 0, 0, 'delthisint or /delthisinterior', 'Deletes the interior you\'re currently in it from game and disables it from loading in next server/resource restarts.', '2013-06-29 14:07:57'),
(180, 1, 0, 0, 'restoreint ', 'Restores a deleted interior included safe, items and NPCs inside it.', '2013-06-29 14:07:57'),
(181, 1, 0, 0, 'gotohouse', 'teleports to the house', '2013-06-29 14:07:57'),
(182, 1, 0, 0, 'gotoint', 'teleports to the interior', '2013-06-29 14:07:57'),
(183, 1, 0, 0, 'gotointi', 'teleports inside of an interior', '2013-06-29 14:07:57'),
(184, 1, 0, 0, 'veh', 'spawns a temporary vehicle', '2013-06-29 14:07:57'),
(185, 1, 0, 0, 'resetshopwage', 'Resets all shops wages to $0.', '2013-06-29 14:07:57'),
(186, 1, 0, 0, 'forceupdateshopwage', 'Forces update all shop wages.', '2013-06-29 14:07:57'),
(187, 1, 0, 0, 'delnearbyvehs', 'Deletes all the nearby (temporary) vehicles.', '2013-06-29 14:07:57'),
(188, 1, 0, 0, 'delveh', 'Deletes the (temporary) vehicle with that id', '2013-06-29 14:07:57'),
(189, 1, 0, 0, 'delthisveh', 'Deletes the (temporary) vehicle', '2013-06-29 14:07:57'),
(190, 1, 0, 0, 'restoreveh', 'Restores a deleted vehicle.', '2013-06-29 14:07:57'),
(191, 1, 0, 0, 'makeveh', 'creates a new permanent vehicle', '2013-06-29 14:07:57'),
(192, 1, 0, 0, 'makecivveh', 'creates a new permanent civilian vehicle', '2013-06-29 14:07:57'),
(193, 1, 0, 0, 'addupgrade', 'upgrades a players car', '2013-06-29 14:07:57'),
(194, 1, 0, 0, 'setpaintjob', 'set another paintjob on a vehicle', '2013-06-29 14:07:57'),
(195, 1, 0, 0, 'setvariant', 'set another variant on a vehicle', '2013-06-29 14:07:57'),
(196, 1, 0, 0, 'delupgrade', 'removes a specific upgrade from the player\'s car', '2013-06-29 14:07:57'),
(197, 1, 0, 0, 'resetupgrades', 'removes all upgrades on the player\'s car', '2013-06-29 14:07:57'),
(198, 1, 0, 0, 'aunimpound', 'unimpounds the vehicle from the BTR lot', '2013-06-29 14:07:57'),
(199, 1, 0, 0, 'setvehtint', 'adds or removes vehicle tint', '2013-06-29 14:07:57'),
(200, 1, 0, 0, 'atakelicense', 'revokes the player a license (use full name for offline players', '2013-06-29 14:07:57'),
(201, 1, 0, 0, 'setvehplate', 'changes the plate of a vehicle', '2013-06-29 14:07:57'),
(202, 1, 0, 0, 'setvehfaction', 'changes the owner of a vehicle to a faction, use factionid -1 to set it to yourself', '2013-06-29 14:07:57'),
(203, 1, 0, 0, 'gates', 'Opens Gate Manager', '2013-06-29 14:07:57'),
(204, 1, 0, 0, 'gotogate', 'Teleports to a gate.', '2013-06-29 14:07:57'),
(205, 1, 0, 0, 'delgate', 'Deletes to a gate.', '2013-06-29 14:07:57'),
(206, 1, 0, 0, 'loginto [Exact Character Name] ', 'Logs into an other account\'s character.', '2013-06-29 14:07:57'),
(207, 1, 0, 0, 'forcepayday [Player ID/Name] ', 'Forces a player to get payday.', '2013-06-29 14:04:41'),
(208, 1, 0, 0, 'forcepaydayall ', 'Forces all players to get paydays.', '2013-06-29 14:04:38'),
(209, 1, 0, 0, 'rwarn [warn #]', 'sends a predefined admin warnings or custom admin warning.', '2013-06-29 14:07:57'),
(210, 1, 0, 0, 'soban [Player Username] [Time in Hours, 0 = Infinite] [Reason]', 'Silently bans an offline player.', '2013-06-29 14:07:57'),
(211, 1, 0, 0, 'givesuperman [Player Partial Nick / ID]', 'Gives player temporary ability to fly. Execute the cmd again to revoke the ability. Ability will be automatically gone after player relogs.', '2013-06-29 14:06:01'),
(212, 1, 0, 0, 'sw', 'change the weather', '2013-06-29 14:07:57'),
(213, 1, 0, 0, 'addatm', 'adds an ATM at this spot', '2013-06-29 14:07:57'),
(214, 1, 0, 0, 'delatm', 'deletes an ATM with the id', '2013-06-29 14:07:57'),
(215, 1, 0, 0, 'nearbyatms', 'shows the nearby ATMs', '2013-06-29 14:07:57'),
(216, 1, 0, 0, 'bigears', 'hook yourself between someone\'s chats', '2013-06-29 14:07:57'),
(217, 1, 0, 0, 'bigearsf', 'hook yourself between faction chats', '2013-06-29 14:07:57'),
(218, 1, 0, 0, 'nearbyatms', 'shows the nearby ATMs', '2013-06-29 14:07:57'),
(219, 1, 0, 0, 'gunmaker', 'Opens Weapon Creator', '2013-06-29 14:04:50'),
(220, 1, 0, 0, 'makepaynspray', 'creates an pay n spray', '2013-06-29 14:07:57'),
(221, 1, 0, 0, 'nearbypaynsprays', 'shows nearby pay n sprays', '2013-06-29 14:07:57'),
(222, 1, 0, 0, 'delpaynspray', 'deletes an pay n spray', '2013-06-29 14:07:57'),
(223, 1, 0, 0, 'addphone', 'creates a public phone', '2013-06-29 14:07:57'),
(224, 1, 0, 0, 'nearbyphones', 'shows nearby public phone', '2013-06-29 14:07:57'),
(225, 1, 0, 0, 'delphone', 'deletes a public phone', '2013-06-29 14:07:57'),
(226, 1, 0, 0, 'enableallelevators', 'enables all elevators', '2013-06-29 14:07:57'),
(227, 1, 0, 0, 'addint', 'adds an interior', '2013-06-29 14:07:57'),
(228, 1, 0, 0, 'sellproperty', 'sells an interior', '2013-06-29 14:07:57'),
(229, 1, 0, 0, 'delint', 'deletes an interior', '2013-06-29 14:07:57'),
(230, 1, 0, 0, 'getintid', 'shows the current interior', '2013-06-29 14:07:57'),
(231, 1, 0, 0, 'setintid', 'changes the interior', '2013-06-29 14:07:57'),
(232, 1, 0, 0, 'getintprice', 'shows the interiors price', '2013-06-29 14:07:57'),
(233, 1, 0, 0, 'setintprice', 'changes the interiors price', '2013-06-29 14:07:57'),
(234, 1, 0, 0, 'getinttype', 'shows the interiors type', '2013-06-29 14:07:57'),
(235, 1, 0, 0, 'setinttype', 'changes the interiors type', '2013-06-29 14:07:57'),
(236, 1, 0, 0, 'togint', 'sets the interior enabled or disabled', '2013-06-29 14:07:57'),
(237, 1, 0, 0, 'enableallinteriors', 'enables all the interiors', '2013-06-29 14:07:57'),
(238, 1, 0, 0, 'setintexit', 'changes an interior exit marker', '2013-06-29 14:07:57'),
(239, 1, 0, 0, 'setintentrance', 'changes an interior entrance marker', '2013-06-29 14:07:57'),
(240, 1, 0, 0, 'fsell', 'force-sells an interior', '2013-06-29 14:07:57'),
(241, 1, 0, 0, 'setfactionleader', 'puts a player into a faction and makes the player leader', '2013-06-29 14:07:57'),
(242, 1, 0, 0, 'setfactionrank', 'sets a player to a specific faction rank', '2013-06-29 14:07:57'),
(243, 1, 0, 0, 'makefaction', 'creates a faction', '2013-06-29 14:07:57'),
(244, 1, 0, 0, 'renamefaction', 'renames a faction', '2013-06-29 14:07:57'),
(245, 1, 0, 0, 'setfaction', 'puts an player into a faction', '2013-06-29 14:07:57'),
(246, 1, 0, 0, 'delfaction', 'deletes a faction', '2013-06-29 14:07:57'),
(247, 1, 0, 0, 'addfuelpoint', 'creates a new fuelpoint', '2013-06-29 14:07:57'),
(248, 1, 0, 0, 'nearbyfuelpoints', 'shows nearby fuelpoints', '2013-06-29 14:07:57'),
(249, 1, 0, 0, 'delfuelpoint', 'deletes a fuelpoint', '2013-06-29 14:07:57'),
(250, 1, 0, 0, 'ck', 'permanently kills the character; spawns a corpse at the location the player is at', '2013-06-29 14:07:57'),
(251, 1, 0, 0, 'unck', 'reverts a character kill', '2013-06-29 14:07:57'),
(252, 1, 0, 0, 'makegun', 'gives the player the specified weapon item', '2013-06-29 14:07:57'),
(253, 1, 0, 0, 'makeammo', 'gives the player the specified ammo item', '2013-06-29 14:07:57'),
(254, 1, 0, 0, 'setmoney', 'sets the players money to that value', '2013-06-29 14:07:57'),
(255, 1, 0, 0, 'givemoney', 'gives the player money in addition to his current cash', '2013-06-29 14:07:57'),
(256, 1, 0, 0, 'resetcharacter', 'fully resets the character', '2013-06-29 14:07:57'),
(257, 1, 0, 0, 'setvehlimit', 'Set the players vehicle limit.', '2013-06-29 14:07:57'),
(258, 1, 0, 0, 'adminstats', 'shows admin stats', '2013-06-29 14:07:57'),
(259, 1, 0, 0, 'removeshop', 'Deletes a NPC from SQL.', '2013-06-29 14:07:57'),
(260, 1, 0, 0, 'forcesellinactiveints', 'Force-sells All inactive interiors.', '2013-06-29 14:07:57'),
(261, 1, 0, 0, 'removeinactiveints', 'Removes All inactive interiors completedly and permanently from SQL.', '2013-06-29 14:07:57'),
(262, 1, 0, 0, 'removedeletedints', 'Removes All deleted interiors completedly and permanently from SQL.', '2013-06-29 14:07:57'),
(263, 1, 0, 0, 'removeforsaleints', 'Removes All for-sale interiors completedly and permanently from SQL.', '2013-06-29 14:07:57'),
(264, 1, 0, 0, 'delallitems [Item ID] [Item Value]', 'Deletes all the item instances from everywhere in game.', '2013-06-29 14:07:57'),
(265, 1, 0, 0, 'removeint [ID]', 'Deletes the interior from game and erases all the data from database completely and permanently include NPCs, items, safe and items inside the safe. If the deleted interior is a custom interior, the custom map will be gone forever.', '2013-06-29 14:07:57'),
(266, 1, 0, 0, 'removeveh [ID]', 'Removes the vehicle from game and erases all the data from database completely and permanently include items inside. ', '2013-06-29 14:07:57'),
(267, 1, 0, 0, 'givedonPoints', 'awards a player donPoints', '2013-06-29 14:07:57'),
(268, 1, 0, 0, 'givestattransfer', 'awards a player stat transfers', '2013-06-29 14:07:57'),
(269, 1, 0, 0, 'hideadmin', 'toggles hidden/visible the admin status', '2013-06-29 14:07:57'),
(270, 1, 0, 0, 'ho', 'send global ooc as hidden admin', '2013-06-29 14:07:57'),
(271, 1, 0, 0, 'hw', 'send a pm as hidden admin', '2013-06-29 14:07:57'),
(272, 1, 0, 0, 'makeadmin', 'gives the player an admin rank', '2013-06-29 14:07:57'),
(273, 1, 0, 0, 'setaccountpassword', 'sets player\'s account password', '2013-06-29 14:07:57'),
(274, 1, 0, 0, 'toga', 'Toggles admin chat.', '2013-06-29 14:07:57'),
(275, 1, 0, 0, 'togg', 'Toggles gamemaster chat.', '2013-06-29 14:07:57'),
(276, 1, 0, 0, 'startres', 'starts the resource', '2013-06-29 14:07:57'),
(277, 1, 0, 0, 'stopres', 'stops the resource', '2013-06-29 14:07:57'),
(278, 1, 0, 0, 'restartres', 'restarts the resource', '2013-06-29 14:07:57'),
(279, 1, 0, 0, 'rescheck', 'checks for ceatain down resources and startes them', '2013-06-29 14:07:57'),
(280, 1, 0, 0, 'rcs', 'check if the resource \"Resource-Keeper\" is running', '2013-06-29 14:07:57'),
(281, 1, 0, 0, 'generatecode', 'generates a donation code', '2013-06-29 14:03:22'),
(282, 1, 0, 0, 'setdamageproof', 'makes a vehicle damageproof', '2013-06-29 14:07:57'),
(283, 0, 0, 0, 'delitemsfromint', 'Deletes all the items within a specified interior that older than an interval of item\'s day old.', '2013-06-29 14:07:57'),
(285, 1, 0, 0, 'aordersupplies', 'Orders supplies from RS Haul for the current interior without yourself being charged.', '2013-06-29 14:10:19'),
(286, 1, 0, 0, 'setjoblevel', 'Sets player\'s city hall job\'s level and progress', '2013-06-29 14:07:57'),
(287, 1, 0, 0, 'respawntrucks', 'Respawns all unoccupied Delivery Trucks', '2013-06-29 14:10:19'),
(288, 1, 0, 0, 'checkactiveroutes', 'Shows all Delivery Job\'s routes that has player working on', '2013-06-29 14:07:57'),
(289, 1, 0, 0, 'fetchactualorders', 'Fetches player\'s Supplies Orders from SQL to game manually (Normally it\'s auto-fetched every 10 minutes)', '2013-06-29 14:07:57'),
(290, 1, 0, 0, 'addactualorder', 'Creates a marker for Delivery Job, it looks exactly the same as actual order from other player.', '2013-06-29 14:07:57'),
(291, 1, 0, 0, 'addtruckerjobmarker', 'Creates a generic drop-off marker for Delivery Driver job.', '2013-06-29 14:07:57'),
(292, 1, 0, 0, 'showactualorders', 'Shows Delivery Job\'s actual supply orders from players.', '2013-06-29 14:07:57'),
(293, 1, 0, 0, 'showalltruckmarkers', 'Shows all Delivery Job drop-off markers (both generic markers and actual order markers)', '2013-06-29 14:07:57'),
(294, 1, 0, 0, 'skiproute', 'Skips Delivery Job\'s current route, jump instantly to next spot (Useful when creating job markers)', '2013-06-29 14:07:57'),
(295, 1, 0, 0, 'resetaccount', 'Reset one character or all characters within an account.', '2013-06-29 14:07:57'),
(296, 1, 0, 0, 'deltruckmarker', 'Deletes a Delivery Job\'s marker', '2013-06-29 14:07:57'),
(297, 1, 0, 0, 'aheal', 'Gives yourself full HP, or /aheal [ID] to give it someone else', '2013-06-29 14:10:19'),
(298, 2, 0, 0, 'showadminreports', 'Subscribes to admin reports.', '2013-06-29 14:10:19'),
(300, 2, 0, 0, 'ads', 'Shows all pending adverts.', '2013-06-29 14:10:19'),
(301, 2, 0, 0, 'freezead', 'Freeze an advert.', '2013-06-29 14:10:19'),
(302, 2, 0, 0, 'unfreezead', 'Unfreeze an advert', '2013-06-29 14:10:19'),
(303, 2, 0, 0, 'deletead', 'Delete an advert', '2013-06-29 14:10:19'),
(304, 2, 0, 0, 'gmlounge', 'Teleports you to the GM lounge.', '2013-06-29 14:10:19'),
(305, 2, 0, 0, 'g [Text]', 'Talk in GM chat for communication with admins.', '2013-06-29 14:10:19'),
(306, 2, 0, 0, 'ar', 'Accept a report.', '2013-06-29 14:10:19'),
(307, 2, 0, 0, 'cr', 'Close a report.', '2013-06-29 14:10:19'),
(308, 2, 0, 0, 'dr', 'Drop a report, leaving it unanswered.', '2013-06-29 14:10:19'),
(309, 2, 0, 0, 'fr', 'Mark a report false', '2013-06-29 14:10:19'),
(310, 2, 0, 0, 'ur', 'Shows all unanswered reports.', '2013-06-29 14:10:19'),
(311, 2, 0, 0, 'gmduty', 'Toggles GM duty (On/off)', '2013-06-29 14:10:19'),
(312, 2, 0, 0, 'goto', 'Teleport to a player\'s location.', '2013-06-29 14:10:19'),
(313, 2, 0, 0, 'gotoplace', 'Teleport to a pre-determined place.', '2013-06-29 14:10:19'),
(314, 2, 0, 0, 'mark', 'Create a mark for you to teleport to (doing /mark without a name will create a temporary one)', '2013-06-29 14:10:19'),
(315, 2, 0, 0, 'togautocheck', 'Toogles auto opening player /check on /ar reports.', '2013-06-29 14:10:19'),
(316, 2, 0, 0, 'gotomark', 'Teleport to a pre-made mark (/gotomark without a mark name teleports to a temporary one)', '2013-06-29 14:10:19'),
(317, 2, 0, 0, 'setjob', 'Sets player job.', '2013-06-29 14:10:19'),
(318, 2, 0, 0, 'deljob', 'Deletes player job', '2013-06-29 14:10:19'),
(319, 2, 0, 0, 'freeze', 'Freeze a player.', '2013-06-29 14:07:57'),
(320, 2, 0, 0, 'unfreeze', 'Unfreeze a frozen player.', '2013-06-29 14:07:57'),
(321, 2, 0, 0, 'gethere', 'Teleports a player to your location.', '2013-06-29 14:07:57'),
(322, 2, 0, 0, 'togpm', 'Disables your pm\'s.', '2013-06-29 14:07:57'),
(332, 2, 0, 0, 'makeadmin', 'gives the player an gm rank', '2013-06-29 14:07:57'),
(335, 1, 0, 0, 'forceapp', 'Force player that doesn\'t meet server standards -and- not willing to improve out of game.', '2013-06-29 14:10:19'),
(336, 2, 0, 0, 'forceapp', 'Force player that doesn\'t meet server standards -and- not willing to improve out of game.', '2013-06-29 14:07:57'),
(337, 2, 0, 0, 'check', 'Display details information of a player', '2013-06-29 14:10:19'),
(338, 1, 0, 0, 'checkinteriors', 'To check for custom int requests', '2013-06-29 14:07:57'),
(339, 1, 0, 0, 'testinterior', 'Test the custom interior', '2013-06-29 14:07:57'),
(340, 1, 0, 0, 'Savetestinterior', 'Save the tested interior', '2013-06-29 14:07:57'),
(341, 1, 0, 0, 'deltestinterior', 'Deletes the tested interior', '2013-06-29 14:07:57'),
(342, 1, 0, 0, 'renameshop', 'or /renameped or /renamenpc, it renames NPCs in format of \'First Lastname\'', '2013-06-29 14:10:19'),
(343, 2, 0, 0, 'renameshop', 'or /renameped or /renamenpc, it renames NPCs in format of \'First Lastname\'', '2013-06-29 14:10:19'),
(344, 2, 0, 0, 'nearbyshops', 'Gets near by NPC\'s info', '2013-06-29 14:10:19'),
(345, 1, 0, 0, 'togoverlay', 'Toggles overlay menus on top or buttom of screen. If it\'s disabled, the content will be all printed to chatbox.', '2013-06-29 14:10:19'),
(346, 2, 0, 0, 'togoverlay', 'Toggles overlay menus on top or buttom of screen. If it\'s disabled, the content will be all printed to chatbox.', '2013-06-29 14:10:19'),
(347, 1, 0, 0, 'iastats', 'Returns reports done and hours played for specified user. Makes inputting to IA website easier.', '2013-06-29 14:07:57'),
(348, 1, 0, 0, '\'F5\'', 'Toggles Report Panel', '2013-06-29 14:10:19'),
(349, 2, 0, 0, '\'F5\'', 'Toggles Report Panel', '2013-06-29 14:10:19'),
(350, 1, 0, 0, 'settrackingloc', 'Use this command to define where the tracking device in the vehicle is installed.', '2013-06-29 14:10:19'),
(351, 3, 0, 0, 'settrackingloc', 'Use this command to define where the tracking device in the vehicle is installed.', '2013-06-29 14:10:19'),
(352, 1, 0, 0, 'gettrackingloc', 'Use this command to check where a tracking device has been installed.', '2013-06-29 14:10:19'),
(353, 1, 0, 0, 'infract', 'Gives an infraction to an administrator.', '2013-06-29 14:07:57'),
(354, 1, 0, 0, 'iahistory', 'View an administrators IA history.', '2013-06-29 14:07:57'),
(355, 1, 0, 0, 'Double right click an IA history entry', 'Removes an IA history entry.', '2013-06-29 14:10:19'),
(356, 1, 0, 0, 'awarn', 'Gives an warning to an administrator.', '2013-06-29 14:07:57'),
(357, 1, 0, 0, 'suspend [player] [hours]', 'Use this command to suspend an administrator.', '2013-06-29 14:07:57'),
(358, 1, 0, 0, 'hashtransactionid', 'Hashes a transaction ID from PayPal into the proper format for donation key.', '2013-06-29 14:07:57'),
(359, 1, 0, 0, 'unsuspend', 'Unsuspends an administrator.', '2013-06-29 14:07:57'),
(360, 2, 0, 0, 'respawnveh', '/respawnveh [Vehicle ID] - To respawn a vehicle', '2013-06-29 14:07:57'),
(361, 1, 1, 0, '/check', 'Checks a players information', '2013-07-04 22:49:57'),
(362, 1, 1, 0, '/gethere', 'Teleports a player to you.', '2013-07-04 22:50:33'),
(363, 1, 1, 0, '/goto', 'Teleports you to a player', '2013-07-04 22:50:43'),
(364, 1, 1, 0, '/adminduty', 'Places you on/off Admin duty', '2013-07-04 22:52:24'),
(365, 1, 1, 0, '/warn', 'Warns a player (3 warns = perm ban)', '2013-07-04 22:52:39'),
(366, 1, 1, 0, '/jail', 'Jails a naughty player', '2013-07-04 22:52:58'),
(367, 1, 1, 0, '/sjail', 'Silently jails a player', '2013-07-04 22:53:53'),
(368, 1, 1, 0, '/ojail', 'Offline jails a player', '2013-07-04 22:54:11'),
(369, 1, 1, 0, '/sojail', 'Silently Offline jails a player', '2013-07-04 22:54:36'),
(370, 1, 1, 0, '/unjail', 'Unjails a player from admin jail.', '2013-07-04 22:54:53'),
(371, 1, 1, 0, '/sban [Player Partial Nick / ID] [Time in Hours, 0 = Infinite] [Reason]', 'Silently bans a player', '2013-07-04 22:59:25'),
(372, 1, 1, 0, '/soban', 'Silently offline bans a player', '2013-07-04 22:57:26'),
(373, 1, 1, 0, '/Trace', 'traces a phone number and tells you who owns it. Player must be online.', '2013-07-04 22:57:26'),
(374, 1, 1, 0, '/oban [Player Partial Nick / ID] [Time in Hours (0 = Perma)] [Reason]', 'Offline Bans a player', '2013-07-04 23:00:24'),
(375, 1, 1, 0, '/getkey', 'Spawns yourself a key of interior or vehicle that you\'re currently in.', '2013-07-04 22:57:47'),
(376, 1, 1, 0, '/cr [Report ID]', 'without specified ID will closes all your own accepted reports.', '2013-07-04 23:00:03'),
(377, 1, 1, 0, '/createemitter [Emitter Type]', 'Spawns Synced Fire/Water Emitters', '2013-07-04 22:58:32'),
(378, 1, 1, 0, '/history [Partial Player Nick / ID]', 'Checks a players admin history', '2013-07-04 22:59:53'),
(379, 1, 3, 0, '/makeveh', 'Makes a permanent vehicle.', '2013-07-04 22:59:32'),
(380, 1, 3, 0, '/makecivveh', 'Makes a civillian vehicle.', '2013-07-04 23:13:24'),
(381, 1, 1, 0, '/respawnall', 'Respawns all vehicles in the server (/respawnall', '2013-07-04 23:01:48'),
(382, 1, 1, 0, '/respawnciv', 'Respawns all civilian vehicles in the server (/respawnciv)', '2013-07-04 23:01:39'),
(383, 1, 1, 0, '/superman', 'Makes you superman! ', '2013-07-05 19:30:51'),
(384, 1, 5, 0, '/iahistory', 'Checks a administrators IA history', '2013-07-04 23:03:01'),
(385, 1, 5, 0, '/makeadmin ', 'Sets a players admin level ', '2013-07-04 23:03:27'),
(386, 1, 2, 0, '/delsupercar', 'deletes the supercar you\'re in, given that it meets the criteria for deletion.', '2013-07-04 23:03:41'),
(387, 1, 5, 0, '/generatecode', 'Generates a donation code', '2013-07-04 23:03:53'),
(388, 1, 2, 0, '/setbiznote [Message]', 'Sets business greeting/notification message.', '2013-07-04 23:03:58'),
(389, 1, 2, 0, '/delitemsfromint [Int ID] [Day old of Items]', 'Deletes all the items within a specified interior that older than an interval of item\'s day old.', '2013-07-04 23:04:14'),
(390, 1, 2, 0, '/ints or /interiors', 'Opens Interior Manager.', '2013-07-04 23:04:30'),
(391, 1, 2, 0, '/delint', 'Deletes the interior from game and disables it from loading in next server/resource restarts.', '2013-07-04 23:04:40'),
(392, 1, 2, 0, '/delthisint or /delthisinterior', 'Deletes the interior you\'re currently in it from game and disables it from loading in next server/resource restarts.', '2013-07-04 23:04:56'),
(393, 1, 2, 0, '/restoreint', 'Restores a deleted interior included safe, items and NPCs inside it.', '2013-07-04 23:05:12'),
(394, 1, 2, 0, '/gotohouse', 'teleports to the house', '2013-07-04 23:05:26'),
(395, 1, 2, 0, '/gotoint', 'teleports to the interior', '2013-07-04 23:05:38'),
(396, 1, 2, 0, '/gotointi', 'teleports inside of an interior', '2013-07-04 23:05:52'),
(397, 1, 2, 0, '/veh', 'spawns a temporary vehicle', '2013-07-04 23:06:03'),
(398, 1, 1, 0, '/nearbyvehicles', 'Gets nearbyvehicles ID - MODEL - OWNER', '2013-07-04 23:06:29'),
(399, 1, 1, 0, '/nearbyitems', 'Gets nearby items', '2013-07-04 23:07:14'),
(400, 1, 1, 0, '/entercar', 'Enters you into a vehicles seat. 0 - Driver', '2013-07-04 23:07:50'),
(401, 1, 1, 0, '/ann', 'Makes an admin announcement to the server', '2013-07-04 23:12:46'),
(402, 1, 1, 0, '/fuelveh ', 'Fuels a players vehicle', '2013-07-04 23:17:38'),
(403, 1, 1, 0, '/fuelvehs', 'Fuels all the vehicles in the server', '2013-07-04 23:18:00'),
(404, 1, 1, 0, '/fixveh', 'Fixes a players vehicle', '2013-07-04 23:18:20'),
(405, 1, 1, 0, '/fixvehs', 'Fixes all the vehicles in the server.', '2013-07-04 23:18:29'),
(407, 1, 1, 0, '/checkveh', 'Checks a vehicles note', '2013-07-04 23:29:34'),
(408, 1, 1, 0, '/checkint', 'Checks the interiors note.', '2013-07-04 23:29:42'),
(409, 1, 5, 0, '/loginto', 'Logs into a players character', '2013-07-04 23:30:19'),
(410, 1, 4, 0, '/bigears', 'Listens to a players PM\'s', '2013-07-04 23:42:16'),
(411, 1, 4, 0, '/bigearsf', 'Listens to a faction\'s OOC /f chat', '2013-07-04 23:42:32'),
(412, 1, 4, 0, '/resetaccount', 'Resets the entire account of a player', '2013-07-04 23:42:53'),
(413, 1, 4, 0, '/resetcharacter', 'Resets a players character', '2013-07-04 23:44:09'),
(414, 1, 4, 0, '/adminstats', 'Checks the admin statistics', '2013-07-04 23:45:43'),
(415, 1, 2, 0, '/addinterior', 'Creates an interior', '2013-07-04 23:57:02'),
(416, 1, 2, 0, '/setinteriorid', 'Sets the interiors ID', '2013-07-04 23:57:22'),
(417, 1, 2, 0, '/setinteriorprice', 'Sets the interiors price.', '2013-07-04 23:57:33'),
(418, 1, 5, 0, '/hideadmin', 'Appears hidden on /admin list.', '2013-07-05 00:10:02'),
(419, 1, 5, 0, '/ho', 'Sends a hidden announcement.', '2013-07-05 00:10:13'),
(420, 1, 1, 0, '/sdt', 'Sets a vehicle\'s drive terrain', '2013-07-05 11:31:47'),
(421, 1, 1, 0, '/sll', 'Sets a vehicle\'s height', '2013-07-05 11:32:09'),
(422, 1, 1, 0, '/adminlounge', 'Teleports you to the administration lounge', '2013-07-05 11:32:29'),
(423, 1, 1, 0, '/stopradiodistrict', 'Turns the radio off for all cars in a district.', '2013-07-05 11:33:13'),
(424, 1, 1, 0, '/findserial', 'Finds a players MTA Serial', '2013-07-05 11:33:27'),
(425, 1, 1, 0, '/findip ', 'Finds a players IP', '2013-07-05 11:33:36'),
(426, 1, 1, 0, '/findalts', 'Finds all charracters of a players account', '2013-07-05 11:33:54'),
(427, 1, 1, 0, '/restartcarshops', 'Resets the vehicles at the carshops', '2013-08-18 19:08:15'),
(428, 1, 1, 0, '/listcarprices', 'Lists all the vehicles spawned at the dealerships', '2013-07-05 11:37:32'),
(429, 1, 1, 0, '/makeshop', 'Creates an NPC', '2013-07-05 11:38:06'),
(430, 1, 1, 0, '/restartparachute', 'Restarts the parachute resource.', '2013-07-05 11:44:06'),
(431, 1, 3, 0, '/setpaintjob', 'Sets a vehicles paintjob', '2013-07-05 11:47:12'),
(432, 1, 3, 0, '/setvehtint', 'Sets a vehicles tint', '2013-07-05 11:47:21'),
(433, 1, 5, 0, '/hw', 'Sends a hidden admin PM', '2013-07-05 17:45:43'),
(434, 1, 1, 0, '/slap', 'Slaps a player', '2013-07-05 11:53:08'),
(435, 1, 1, 0, '/sethp', 'Sets a players HP', '2013-07-05 11:53:17'),
(436, 1, 1, 0, '/setcarhp', 'Sets a vehicle HP', '2013-07-05 11:53:30'),
(437, 1, 1, 0, '/aheal', 'Heals a player', '2013-07-05 11:53:39'),
(438, 1, 1, 0, '/togooc', 'Toggles the global OOC Chat', '2013-07-05 11:54:38'),
(439, 1, 1, 0, '/stogooc', 'Silently toggles the global OOC Chat', '2013-07-05 11:54:48'),
(440, 1, 1, 0, '/freconnect', 'Force reconnects a player', '2013-07-05 11:56:40'),
(441, 1, 1, 0, '/pkick', 'Kicks a player from the server', '2013-07-05 11:56:52'),
(442, 1, 1, 0, '/skick', 'Kicks a player from the server silently', '2013-07-05 11:57:00'),
(443, 1, 1, 0, '/delshop', 'Removes a NPC Shop', '2013-07-05 12:07:08'),
(444, 1, 4, 0, '/makepaynspray', 'Creates a pay n spray', '2013-07-05 12:07:54'),
(445, 1, 4, 0, '/delpaynspray', 'Deletes a pay n spray', '2013-07-05 12:08:08'),
(446, 1, 4, 0, '/addspeedcam', 'Creates a speedcam', '2013-07-05 12:08:26'),
(447, 1, 1, 0, '/togoverlay', 'Moves the GUI of /admins to your chatbox', '2013-07-05 12:10:59'),
(448, 1, 1, 0, '/changewarnstyle', 'Moves the warning style to your chatbox or right side of the screen', '2013-07-05 12:11:27'),
(449, 1, 1, 0, '/getpos', 'Gets your position', '2013-07-05 12:14:35'),
(452, 1, 1, 0, '/itemprotect', 'Sets locked world item pickable by..', '2013-07-05 12:15:33'),
(453, 1, 1, 0, '/ads', 'Shows all pending adverts.', '2013-07-05 12:15:57'),
(454, 1, 1, 0, '/delad', 'Deletes an advert', '2013-07-05 12:16:17'),
(455, 1, 1, 0, '/freezead', 'Freezes an advert', '2013-07-05 12:16:31'),
(456, 1, 1, 0, '/unfreezead', 'Unfreezes an advert', '2013-07-05 12:16:42'),
(457, 1, 1, 0, '/agivelicense', 'Gives a player a license', '2013-07-05 12:16:58'),
(458, 1, 1, 0, '/mark', 'Marks a position ', '2013-07-05 12:17:36'),
(459, 1, 1, 0, '/gotomark', 'TP\'s you to that mark', '2013-07-05 12:17:52'),
(460, 1, 1, 0, '/amotd', 'Displays the admin message of the day', '2013-07-05 12:18:10'),
(461, 1, 1, 0, '/setamotd', 'Sets the admin message of the day', '2013-07-05 12:18:20'),
(462, 1, 1, 0, '/setmotd', 'Sets the message of the day', '2013-07-05 12:18:37'),
(463, 1, 1, 0, '/disappear', 'Turns you invisible', '2013-07-05 12:19:28'),
(464, 1, 1, 0, '/jailed', 'Shows all players in admin & PD Jail', '2013-07-05 12:19:47'),
(465, 1, 1, 0, '/unjail', 'Releases a player from admin jail.', '2013-07-05 12:19:56'),
(466, 1, 1, 0, '/changename', 'Changes the name of a character.', '2013-07-05 12:20:18'),
(467, 1, 1, 0, '/bury', 'Removes a CK\'ed body', '2013-07-05 12:20:35'),
(468, 1, 1, 0, '/gotoplace', 'Teleports you to several marked places.', '2013-07-05 12:20:54'),
(469, 1, 1, 0, '/freeze', 'Freezes a player', '2013-07-05 12:21:09'),
(470, 1, 1, 0, '/unfreeze', 'unfreezes a player', '2013-07-05 12:21:23'),
(471, 1, 1, 0, '/stats', 'Checks a players stats.', '2013-07-05 12:22:01'),
(472, 1, 1, 0, '/auncuff', 'Uncuffs a player', '2013-07-05 12:22:28'),
(473, 1, 1, 0, '/spinout', 'Spins a players vehicle out.', '2013-07-05 12:42:06'),
(474, 1, 1, 0, '/recon', 'Recons a player', '2013-07-05 13:12:04'),
(475, 1, 1, 0, '/fuckrecon', 'Stops reconning a player', '2013-07-05 13:12:20'),
(476, 1, 2, 0, '/forcesell', 'Force sells an inactive interior', '2013-07-05 13:28:11'),
(477, 1, 3, 0, '/setvarient', 'Sets different varibles for a vehicle', '2013-07-05 13:46:14'),
(479, 1, 1, 0, '/setcolor', 'Sets the vehicles color', '2013-07-05 13:46:40'),
(480, 1, 1, 0, '/getcolor', 'Gets the vehicles color', '2013-07-05 13:46:49'),
(481, 1, 5, 0, '/restartres', 'Restarts a resource', '2013-07-05 13:58:01'),
(482, 1, 5, 0, '/rescheck', 'Runs the resource checker', '2013-07-05 13:58:17'),
(483, 1, 1, 0, '/itemlist', 'Displays all items.', '2013-07-05 14:01:44'),
(484, 1, 1, 0, '/delnearbyitems', 'Deletes all the items near you.', '2013-07-05 14:02:17'),
(485, 1, 1, 0, '/delitem', '/delitem <ID> ', '2013-07-05 14:02:34'),
(486, 1, 1, 0, '/showfactions', 'Displays a list of all factions.', '2013-07-05 14:03:26'),
(487, 1, 1, 0, '/respawnfaction', 'Respawns all vehicles for that faction.', '2013-07-05 14:03:45'),
(488, 1, 1, 0, '/blowveh', 'Blows the players vehicle up.', '2013-07-05 14:04:19'),
(489, 1, 1, 0, '/setheight', 'Sets a players character height', '2013-07-05 14:04:36'),
(490, 1, 1, 0, '/setrace', 'Sets a players character race', '2013-07-05 14:04:48'),
(491, 1, 1, 0, '/setage', 'Sets a players character age', '2013-07-05 14:04:55'),
(492, 1, 4, 0, '/gunmaker or \"F4\"', 'Displays the weapon creator', '2013-07-05 14:05:39'),
(493, 1, 1, 0, '/freecam', 'Sets you to freecam mode.', '2013-07-05 14:05:56'),
(494, 1, 1, 0, '/dropme', 'Drops you where you freecam', '2013-07-05 14:06:06'),
(495, 1, 1, 0, 'Hold P and click', 'Locks a world item. Make it unpickable', '2013-07-05 14:06:38'),
(496, 1, 1, 0, '/unban', 'Unbans a player', '2013-07-05 14:07:13'),
(497, 1, 1, 0, '/unbanserial', 'Unbans a players serial', '2013-07-05 14:07:21'),
(498, 1, 1, 0, '/unbanip', 'Unbans a players IP', '2013-07-05 14:07:28'),
(499, 1, 1, 0, '/ar', 'Accepts a report', '2013-07-05 14:07:57'),
(500, 1, 1, 0, '/cr', 'Closes a report', '2013-07-05 14:08:04'),
(501, 1, 1, 0, '/fr', 'Falses a report', '2013-07-05 14:08:12'),
(502, 1, 4, 0, '/hashtransactionid', 'Hashes a transaction IDI', '2013-07-05 14:09:18'),
(503, 1, 1, 0, '/giveitem', 'Gives a player an item.', '2013-07-05 14:09:42'),
(504, 1, 1, 0, '/takeitem', 'Takes a item from a players inventory', '2013-07-05 14:09:53'),
(505, 1, 1, 0, '/setskin ', 'Sets a players skin.', '2013-07-05 14:10:06'),
(506, 1, 1, 0, '/setarmor', 'Sets a players armor.', '2013-07-05 14:10:25'),
(507, 1, 1, 0, '/disarm', 'Disarms a player.', '2013-07-05 14:10:36'),
(508, 1, 1, 0, '/sendto', 'Sends a player to another player', '2013-07-05 14:12:51'),
(509, 1, 1, 0, '/showinv', 'Shows the inventory of a player.', '2013-07-05 14:13:24'),
(510, 1, 2, 0, '/restoreveh', 'Restores a deleted vehicle.', '2013-07-05 14:15:36'),
(511, 1, 1, 0, '/addelevator', 'Adds a elevator from A to B', '2013-07-05 14:21:18'),
(512, 1, 1, 0, '/restartgatekeepers', 'Restarts the gatekeepers resource', '2013-07-05 14:17:30'),
(513, 1, 1, 0, '/changelock', 'Deletes all old keys and gives you a new one', '2013-07-05 14:17:53'),
(514, 1, 2, 0, '/createemitter', 'Creates a fire/water emitter', '2013-07-05 14:25:41'),
(515, 1, 4, 0, '/delspeedcam', 'Deletes a speedcam', '2013-07-05 14:30:08'),
(516, 1, 1, 0, '/delallrbs', 'Deletes all roadblocks in the server', '2013-07-05 14:30:52'),
(517, 1, 1, 0, '/aremovespikes', 'Deletes all roadspikes in the server.', '2013-07-05 14:31:03'),
(518, 1, 1, 0, '/reloadint', 'Reloads a bugged interior.', '2013-07-05 14:31:34'),
(519, 1, 1, 0, '/respawndistrict', 'Respawns the vehicles in a district', '2013-07-05 14:33:02'),
(520, 1, 1, 0, '/unflip', 'Unflips a players vehicle', '2013-07-05 14:33:24'),
(521, 1, 1, 0, '/issuepc', 'Issues a pilot certificate to a player.', '2013-07-05 14:34:11'),
(522, 1, 1, 0, '/setjob', 'Sets a players job', '2013-07-05 14:34:38'),
(523, 1, 1, 0, '/deljob', 'Deletes a players job', '2013-07-05 14:34:53'),
(524, 1, 1, 0, '/setlanguage', 'Sets a players language', '2013-07-05 14:35:16'),
(525, 1, 1, 0, '/aunblindfold', 'Unblindfolds a player', '2013-07-05 14:35:51'),
(526, 1, 1, 0, '/pmute', 'Mutes a player from OOC Chat.', '2013-07-05 14:36:42'),
(527, 1, 4, 0, '/l ', 'Lead Admin Chat', '2013-07-05 14:37:16'),
(528, 1, 5, 0, '/h', 'Head Admin Chat', '2013-07-05 14:37:24'),
(529, 1, 1, 0, '/ur', 'Displays unawnsered reports.', '2013-07-05 14:37:58'),
(530, 1, 2, 0, '/togint', 'Toggles the interior to disabled', '2013-07-08 16:06:04'),
(532, 1, 1, 0, '/togautocheck', 'Toggles the /check to appear upon accepting a report.', '2013-07-05 15:06:15'),
(533, 1, 2, 0, '/restoreint', 'Restores a deleted interior', '2013-07-05 15:14:52'),
(534, 1, 1, 0, '/aordersupplies', 'Orders supplies to a shop', '2013-07-05 15:19:47'),
(535, 1, 1, 0, '/cleannearbytag', 'Cleans a nearby spray tag', '2013-07-05 16:21:19'),
(536, 1, 1, 0, '/nearbytags', 'Shows all nearby tags.', '2013-07-05 16:25:34'),
(537, 1, 1, 0, '/findveh', 'retrieves the model for that vehicle name', '2013-07-05 16:29:05'),
(538, 1, 1, 0, '/unlockcivcars', 'unlocks all civilian vehicles', '2013-07-05 16:33:50'),
(541, 1, 1, 0, '/restoreshop', '\"Restores a deleted NPC from SQL.', '2013-07-05 16:38:54'),
(542, 1, 1, 0, '/fixvehvis [Driver\'s partial Name/ID]', '\"Fixes player\'s car\'s visual, leave the engine\'s health.', '2013-07-05 16:41:18'),
(543, 1, 5, 0, '/givestattransfer', 'Gives a player a stat transfer.', '2013-07-05 16:47:23'),
(544, 1, 5, 0, '/givedontpoints', 'Gives a player donator points ', '2013-07-05 16:49:03');
INSERT INTO `commands_library` (`cmID`, `cmType`, `cmLevel`, `cmSubType`, `cmName`, `cmExplanation`, `cmCreationDate`) VALUES
(546, 1, 1, 0, '/restock', 'Restocks businesses, you must be inside an interior to restock. Or use SYNTAX: /restock [Interior ID] [Amount 1~300]', '2013-07-05 16:58:05'),
(548, 1, 2, 0, '/nearbyemitters', 'Shows all nearby Fire/Water emitters.', '2013-07-05 17:08:38'),
(549, 1, 2, 0, '/delemitters', 'Deletes all nearby Fire/Water emitters.', '2013-07-05 17:09:10'),
(550, 1, 1, 0, '/delnearbyshops', 'Deletes nearby shops.', '2013-07-05 17:09:53'),
(551, 1, 4, 0, '/forcepayday', 'Forces a player to get payday.', '2013-07-05 17:15:57'),
(552, 1, 4, 0, '/forcepaydayall', 'Forces all players to get paydays.', '2013-07-05 17:18:05'),
(553, 1, 4, 0, '/givesuperman', 'Gives player temporary ability to fly. Execute the cmd again to revoke the ability. Ability will be automatically gone after player relogs.', '2013-07-05 17:18:55'),
(554, 1, 4, 0, '/addatm', 'adds an ATM at this spot', '2013-07-05 17:19:17'),
(555, 1, 4, 0, '/delatm', 'Deletes an ATM with that id.', '2013-07-05 17:19:29'),
(556, 1, 1, 0, '/nearbyatms', 'shows the nearby ATMs', '2013-07-05 17:19:56'),
(557, 1, 4, 0, '/setfactionleader', 'puts a player into a faction and makes the player leader', '2013-07-05 17:22:07'),
(558, 1, 4, 0, '/setfactionrank', 'Sets the players faction rank.', '2013-07-05 17:22:25'),
(559, 1, 4, 0, '/makefaction', 'Creates a faction.', '2013-07-05 17:22:53'),
(560, 1, 4, 0, '/renamefaction', 'Renames a faction.', '2013-07-05 17:23:12'),
(561, 1, 4, 0, '/delfaction', 'Deletes a faction.', '2013-07-05 17:23:33'),
(562, 1, 4, 0, '/ck', 'permanently kills the character; spawns a corpse at the location the player is a', '2013-07-05 17:24:47'),
(563, 1, 4, 0, '/unck', 'reverts a character kill', '2013-07-05 17:25:17'),
(564, 1, 4, 0, '/givemoney', 'gives the player money in addition to his current cash', '2013-07-05 17:25:46'),
(566, 1, 5, 0, '/forcesellinactiveints', 'Force-sells All inactive interiors.', '2013-07-05 17:40:22'),
(567, 1, 5, 0, '/delallitems [Item ID] [Item Value]', 'Deletes all the item instances from everywhere in game.', '2013-07-05 17:40:47'),
(568, 1, 5, 0, '/setdamageproof', 'makes a vehicle damageproof', '2013-07-05 17:41:30'),
(569, 1, 5, 0, '/rcs', 'check if the resource \"Resource-Keeper\" is running', '2013-07-05 17:41:49'),
(570, 1, 5, 0, '/stopres', 'Stops the resource', '2013-07-05 17:42:34'),
(571, 1, 5, 0, '/togg', 'Toggles gamemaster chat.', '2013-07-05 17:44:02'),
(572, 1, 5, 0, '/toga', 'Toggles administrator chat.', '2013-07-05 17:44:19'),
(574, 1, 5, 0, '/setaccountpassword', 'sets player\'s account password', '2013-07-05 17:44:36'),
(575, 1, 5, 0, '/removeveh [ID]', 'Removes the vehicle from game and erases all the data from database completely and permanently include items inside.', '2013-07-05 17:46:52'),
(576, 1, 4, 0, '/setmoney', 'Sets a players on hand money', '2013-07-05 18:26:14'),
(577, 1, 5, 0, '/removeint [ID]', 'Deletes the interior from game and erases all the data from database completely and permanently include NPCs, items, safe and items inside the safe. If the deleted interior is a custom interior, the custom map will be gone forever.', '2013-07-05 19:25:00'),
(578, 1, 1, 0, '/srd', 'Turns off all vehicle radios in a district', '2013-07-05 19:48:52'),
(580, 1, 1, 0, '/ah', 'Displays the index of admin commands', '2013-07-05 21:02:50'),
(581, 1, 4, 0, '/setfactiontype', 'Sets the type of a faction', '2013-07-05 21:09:01'),
(582, 1, 1, 0, '/setfaction', 'Sets you to a faction', '2013-07-06 14:36:04'),
(583, 1, 3, 0, '/setvehiclefaction', 'Sets a specific vehicle to a faction ', '2013-07-06 14:37:06'),
(584, 1, 3, 0, '/setvehicleplate', 'Sets a vehicle\'s plate', '2013-07-06 14:55:06'),
(585, 1, 4, 0, '/renamefaction', 'Changes the name of a faction', '2013-07-06 14:55:36'),
(586, 1, 4, 0, '/nearbyatms', 'Shows all nearby ATM\'s', '2013-07-06 15:53:38'),
(587, 1, 4, 0, '/nearbypaynsprays', 'Shows all nearby pay n sprays', '2013-07-06 15:54:09'),
(588, 1, 5, 0, '/delitemsfromint', 'Deletes all the items within a specified interior or world map that older than an interval of item\'s day old.', '2013-07-06 16:19:25'),
(589, 1, 4, 0, '/sw', 'Sets the weather.', '2013-07-06 20:43:46'),
(590, 1, 1, 0, '/srl', 'Sets the rain level.', '2013-07-06 20:44:13'),
(591, 1, 4, 0, '/etanow ', 'Sets the weather', '2013-07-06 22:45:15'),
(592, 1, 3, 0, '/aunimpound', 'Unimpounds a vehicle admin wise', '2013-07-07 05:34:41'),
(593, 1, 5, 0, '/delallitems', 'Deletes all the item instances from everywhere in game.', '2013-07-07 06:00:27'),
(594, 1, 5, 0, '/removeshop', 'Removes a shop from the datebase', '2013-07-07 16:18:37'),
(595, 1, 1, 0, '/vehpost', 'Creates an automatic forum post for vehicle thefts', '2013-07-08 15:55:01'),
(596, 1, 1, 0, '/intpost', 'Creates an automatic forum post for interior thefts.', '2013-07-08 15:59:14'),
(597, 1, 1, 0, '/forceapp', 'Sends a player back to the application stage.', '2013-07-09 18:42:10'),
(598, 1, 4, 0, '/setfactionmoney', 'Sets the faction bank money', '2013-07-11 07:35:34'),
(602, 2, 1, 0, '/gethere ', 'Teleports a player to you.', '2013-07-15 23:52:36'),
(603, 2, 1, 0, '/goto', 'Teleports you to a player.', '2013-07-15 23:52:52'),
(604, 2, 1, 0, '/forceapp', 'Sends a player to the application stage.', '2013-07-15 23:53:45'),
(605, 2, 5, 0, '/makeadmin', 'Set\'s a players Gamemaster rank.', '2013-07-15 23:54:05'),
(606, 2, 1, 0, '/gotoplace', 'Teleports you to a premade mark.', '2013-07-16 16:24:18'),
(607, 2, 1, 0, '/check', 'Shows you a players /check.', '2013-07-16 16:24:29'),
(608, 1, 4, 0, '/marry', 'Marrys two players', '2013-07-16 16:25:38'),
(609, 1, 4, 0, '/divorce', 'Divorces a married couple.', '2013-07-16 16:25:49'),
(611, 2, 1, 0, '/gh', 'Gamemaster Help', '2013-07-17 16:09:37'),
(612, 2, 1, 0, '/mark', 'Marks a specific point.', '2013-07-17 16:09:46'),
(613, 2, 1, 0, '/gotomark', 'Teleports you to that mark', '2013-07-17 16:10:04'),
(614, 2, 1, 0, '/delmark', 'Deletes a mark.', '2013-07-17 16:10:14'),
(615, 2, 1, 0, '/resetcontract', 'Resets a players contract so they can /quitjob', '2013-07-22 17:23:45'),
(616, 2, 1, 0, '/setjob', 'Sets a players job manually', '2013-07-23 17:12:05'),
(617, 2, 1, 0, '/ar ', 'Accept\'s a report', '2013-07-24 17:41:28'),
(618, 2, 1, 0, '/cr', 'Closes a report', '2013-07-24 17:41:39'),
(619, 2, 1, 0, '/fr', 'False\'s a report', '2013-07-24 17:41:47'),
(620, 2, 1, 0, '/ann', 'Makes a GM Announcement', '2013-07-25 00:12:33'),
(621, 1, 5, 0, '/infract', 'Infracts an administrator', '2013-07-26 14:35:02'),
(622, 1, 5, 0, '/suspend', 'Suspends an Administrator', '2013-07-31 05:57:36'),
(623, 1, 5, 0, '/acheck', 'Brings up an admins Internal Affairs check', '2013-07-31 06:18:58'),
(624, 1, 5, 0, '/tr', 'Transfers a report to an admin', '2013-08-02 16:39:48'),
(625, 1, 1, 0, '/addii', 'Add\'s a information Icon', '2013-08-05 23:11:51'),
(626, 1, 1, 0, '/delii', 'delete\'s a information Icon', '2013-08-05 23:12:00'),
(627, 1, 1, 0, '/nearbyii', 'Show\'s nearby Information Icons.', '2013-08-05 23:12:13'),
(628, 1, 3, 0, '/licensemonitor', 'Check who owns what firearms licenses', '2013-08-26 02:16:02'),
(629, 1, 1, 0, '/vginfo', 'or /serverinfo - Displays all Server Information', '2014-05-01 19:04:15');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `computers`
--

CREATE TABLE `computers` (
  `id` int(11) NOT NULL,
  `posX` float(10,5) NOT NULL,
  `posY` float(10,5) NOT NULL,
  `posZ` float(10,5) NOT NULL,
  `rotX` float(10,5) NOT NULL,
  `rotY` float(10,5) NOT NULL,
  `rotZ` float(10,5) NOT NULL,
  `interior` int(8) NOT NULL,
  `dimension` int(8) NOT NULL,
  `model` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cows`
--

CREATE TABLE `cows` (
  `id` int(10) UNSIGNED NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rotation` float NOT NULL,
  `interior` int(10) UNSIGNED NOT NULL,
  `dimension` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cpa_postbacks`
--

CREATE TABLE `cpa_postbacks` (
  `id` int(11) NOT NULL,
  `tracking_id` int(11) NOT NULL,
  `payout` double DEFAULT '0',
  `message` text,
  `offer_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dancers`
--

CREATE TABLE `dancers` (
  `id` int(10) UNSIGNED NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rotation` float NOT NULL,
  `skin` smallint(5) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `interior` int(10) UNSIGNED NOT NULL,
  `dimension` int(10) UNSIGNED NOT NULL,
  `offset` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `donates`
--

CREATE TABLE `donates` (
  `order_id` int(11) NOT NULL,
  `txn_id` varchar(19) NOT NULL,
  `payer_email` varchar(75) NOT NULL,
  `mc_gross` float(9,2) NOT NULL,
  `donor` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `donated_for` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `donators`
--

CREATE TABLE `donators` (
  `id` int(11) NOT NULL,
  `accountID` int(11) NOT NULL,
  `charID` int(11) NOT NULL DEFAULT '-1',
  `perkID` int(4) NOT NULL,
  `perkValue` varchar(10) NOT NULL DEFAULT '1',
  `expirationDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `don_purchases`
--

CREATE TABLE `don_purchases` (
  `id` int(11) NOT NULL,
  `name` text,
  `cost` int(11) DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `account` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `don_purchases`
--

INSERT INTO `don_purchases` (`id`, `name`, `cost`, `date`, `account`) VALUES
(1, 'BEZMAKSAS GameGoins! (ÄªPAÅ¡NIEKS DANEX)', 50, '2018-12-02 22:52:04', 1),
(2, 'BEZMAKSAS GameGoins! (ÄªPAÅ¡NIEKS DANIELS)', 1, '2019-02-02 16:09:14', 661);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `don_transactions`
--

CREATE TABLE `don_transactions` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(64) NOT NULL,
  `donator_email` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `original_request` text,
  `dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `handled` smallint(1) DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `realamount` double NOT NULL DEFAULT '0',
  `item_number` int(11) NOT NULL DEFAULT '0',
  `validated` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `don_transaction_failed`
--

CREATE TABLE `don_transaction_failed` (
  `id` int(11) NOT NULL,
  `output` text NOT NULL,
  `ip` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `duty_allowed`
--

CREATE TABLE `duty_allowed` (
  `id` int(11) NOT NULL,
  `faction` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `itemValue` varchar(45) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Used for an admin allow list.';

--
-- Gegevens worden geëxporteerd voor tabel `duty_allowed`
--

INSERT INTO `duty_allowed` (`id`, `faction`, `itemID`, `itemValue`) VALUES
(136, 1, 26, '1'),
(128, 6, 34, '5'),
(151, 1, 126, 'PD'),
(8, 4, 46, ''),
(9, 4, 57, '500'),
(11, 4, 126, 'Rapid'),
(12, 4, 183, ''),
(138, 1, 137, 'PD (D)'),
(142, 1, -24, '35'),
(16, 11, -43, '250'),
(135, 1, 45, '1'),
(20, 1, -34, '10'),
(137, 1, 126, '1'),
(122, 6, 1, '5'),
(148, 1, 120, 'PD'),
(24, 1, -27, '35'),
(25, 1, -43, '50'),
(26, 1, -44, '1'),
(27, 1, -45, '1'),
(28, 1, -46, '1'),
(145, 1, -29, '150'),
(30, 1, -3, '1'),
(31, 1, 126, '1'),
(33, 1, 137, '1'),
(34, 1, 13, ''),
(187, 1, -25, '21'),
(36, 1, 29, ''),
(37, 1, 56, ''),
(38, 1, -4, '1'),
(39, 11, 26, '1'),
(40, 11, 27, '1'),
(41, 11, 45, '1'),
(43, 11, 137, '1'),
(46, 11, 177, '1'),
(47, 11, 113, '5'),
(48, 11, 126, '1'),
(50, 11, -3, '1'),
(51, 11, -25, '20'),
(52, 11, -27, '30'),
(53, 11, -29, '90'),
(55, 11, -23, '68'),
(56, 11, -24, '50'),
(57, 11, -31, '250'),
(59, 11, -34, '20'),
(60, 11, -33, '40'),
(61, 11, -17, '2'),
(62, 11, -42, '2000'),
(63, 11, -44, '1'),
(64, 11, -46, '1'),
(65, 11, -45, '1'),
(66, 11, 80, 'Recording Device'),
(67, 11, 0, '100'),
(68, 1, 27, '4'),
(69, 1, -100, '100'),
(73, 11, -100, '200'),
(74, 1, 120, ''),
(75, 4, 96, ''),
(76, 7, 126, 'FAA'),
(77, 7, 163, 'FAA'),
(78, 7, 174, 'FAA'),
(79, 7, -41, '500'),
(80, 7, -100, '200'),
(82, 7, -24, '50'),
(83, 7, -31, '100'),
(84, 7, -43, '100'),
(85, 7, 45, 'FAA'),
(86, 8, -31, '250'),
(87, 8, -24, '50'),
(88, 8, -29, '200'),
(89, 8, -27, '150'),
(90, 8, -23, '50'),
(91, 8, -43, '50'),
(92, 8, -34, '20'),
(93, 8, -17, '5'),
(94, 8, -100, '100'),
(95, 8, 66, ''),
(96, 8, 45, ''),
(97, 8, 137, ''),
(98, 8, 29, ''),
(99, 8, 27, ''),
(100, 8, 26, ''),
(101, 8, 56, ''),
(102, 8, 76, ''),
(103, 8, 120, ''),
(104, 8, 163, ''),
(105, 12, -42, '500'),
(106, 12, -43, '1'),
(107, 12, -9, '1'),
(110, 12, 141, '1'),
(112, 2, -42, '1000'),
(113, 2, -9, '0'),
(114, 2, 26, 'Gas Mask'),
(115, 2, 70, 'BLS Kit'),
(116, 2, 113, 'Glowsticks'),
(117, 2, 120, 'Scuba Gear'),
(118, 2, 145, 'Flashlight'),
(119, 2, 164, ''),
(120, 3, -100, '100'),
(121, 3, -24, '100'),
(123, 6, 45, '5'),
(124, 6, 26, '5'),
(125, 6, 31, '5'),
(126, 6, 56, '5'),
(127, 6, 31, '5'),
(129, 6, -31, '100'),
(130, 6, -24, '100'),
(131, 6, -25, '100'),
(132, 6, -100, '100'),
(133, 6, -44, '100'),
(134, 6, -45, '100'),
(139, 1, 56, '1'),
(140, 1, 27, '1'),
(141, 1, 120, '1'),
(143, 1, -29, '120'),
(144, 1, -100, '49'),
(146, 1, -31, '200'),
(147, 1, 29, 'PD'),
(149, 1, 56, 'PD'),
(150, 1, 137, 'PD'),
(152, 3, -24, '3'),
(153, 3, -24, '7'),
(154, 5, -43, '1'),
(155, 5, 13, '1'),
(156, 5, -14, '1'),
(157, 5, -3, '1'),
(158, 34, 61, '1'),
(159, 5, 71, '150'),
(160, 5, 43, '1'),
(161, 5, -43, '500'),
(162, 13, -24, '30'),
(163, 13, -29, '30'),
(164, 13, -27, '30'),
(165, 13, -29, '120'),
(166, 2, 6, '1'),
(167, 2, 88, '1'),
(168, 1, 6, ''),
(169, 5, 13, '500'),
(170, 5, -13, '1'),
(171, 5, -12, '1'),
(172, 5, -25, '1'),
(173, 5, -50, '1'),
(174, 5, -43, '500'),
(175, 5, -3, '500'),
(176, 7, 227, '1'),
(177, 7, 157, '1'),
(178, 7, 57, '100'),
(179, 7, 134, '500'),
(180, 7, 147, ''),
(181, 5, 13, ''),
(182, 5, -43, '500'),
(183, 5, -3, '99999999'),
(184, 5, 1, ''),
(185, 5, -24, '7'),
(186, 5, -24, '32'),
(188, 13, -29, '500'),
(189, 13, -31, '500'),
(190, 13, -27, '50'),
(191, 13, -21, '500'),
(192, 13, -24, '18'),
(193, 13, 3, '1'),
(194, 13, 98, '1'),
(195, 13, 54, '1'),
(196, 5, 367, '1'),
(197, 5, 367, ''),
(198, 5, 367, ''),
(199, 5, 115, '1'),
(200, 5, 115, '1'),
(201, 5, 115, '43'),
(202, 5, 115, '136'),
(203, 5, 6, 'RÄcija'),
(204, 5, 43, 'Kamera'),
(205, 5, -43, '500'),
(206, 5, 70, '999'),
(207, 5, 1, '999'),
(208, 5, 13, '999'),
(209, 5, 15, '999'),
(210, 5, 6, '999'),
(211, 5, 96, '9999'),
(212, 5, -43, '999'),
(213, 5, -3, '999');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `duty_custom`
--

CREATE TABLE `duty_custom` (
  `id` int(11) NOT NULL,
  `factionid` int(11) NOT NULL,
  `name` text NOT NULL,
  `skins` text NOT NULL,
  `locations` text NOT NULL,
  `items` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Used for custom duties.';

--
-- Gegevens worden geëxporteerd voor tabel `duty_custom`
--

INSERT INTO `duty_custom` (`id`, `factionid`, `name`, `skins`, `locations`, `items`) VALUES
(1, 4, 'KonfiscÄ“tÄjs', '[ [ [ 16, \"N\\/A\" ], [ 27, \"N\\/A\" ], [ 260, \"N\\/A\" ], [ 191, \"N\\/A\" ], [ 13, \"N\\/A\" ] ] ]', '[ { \"466\": \"LSAK DUTY\", \"385\": \"GarÄÅ¾as duty\", \"349\": \"LSAK\" } ]', '[ { \"9\": [ \"9\", 57, \"500\" ], \"8\": [ \"8\", 46, \"\" ], \"11\": [ \"11\", 126, \"Rapid\" ], \"210\": [ 210, 70, \"5\" ] } ]'),
(141, 182, 'deagle', '[ [ ] ]', '[ [ ] ]', '[ { \"121\": [ \"121\", -24, 20, \"100\" ] } ]'),
(8, 50, 'Undercover gear', '[ [ [ 286, \"N\\/A\" ], [ \"266\", \"2097\" ], [ \"280\", \"2098\" ], [ \"280\", \"2099\" ], [ \"186\", \"2100\" ], [ \"186\", \"2101\" ], [ \"186\", \"2102\" ], [ \"186\", \"2103\" ], [ \"186\", \"2104\" ] ] ]', '[ { \"87\": \"VEHICLE\", \"95\": \"VEHICLE\", \"96\": \"VEHICLE\", \"97\": \"VEHICLE\", \"93\": \"VEHICLE\", \"92\": \"VEHICLE\", \"91\": \"VEHICLE\", \"90\": \"VEHICLE\", \"88\": \"VEHICLE\", \"98\": \"VEHICLE\", \"102\": \"VEHICLE\", \"101\": \"VEHICLE\", \"89\": \"VEHICLE\", \"109\": \"VEHICLE\", \"99\": \"VEHICLE\", \"100\": \"VEHICLE\", \"104\": \"VEHICLE\", \"20\": \"VEHICLE\", \"21\": \"DLE HQ - Lockers\", \"94\": \"VEHICLE\", \"103\": \"VEHICLE\" } ]', ''),
(44, 47, 'Instructor Student', '[ [ [ 61, \"N\\/A\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"127\": [ 127, -24, 5, \"50\" ], \"123\": [ 123, 45, \"FAA\" ], \"133\": [ 133, -100, 75, \"200\" ], \"121\": [ 121, 163, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"126\": [ 126, -3, 1, \"1\" ], \"122\": [ 122, 45, \"FAA\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(45, 47, 'Instructor I', '[ [ [ \"211\", \"808\" ], [ \"61\", \"107\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"132\": [ 132, -46, 1, \"1\" ] } ]'),
(46, 47, 'Instructor II', '[ [ [ \"211\", \"808\" ], [ \"61\", \"109\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"132\": [ 132, -46, 1, \"1\" ], \"125\": [ 125, 174, \"FAA\" ] } ]'),
(47, 47, 'Instructor III', '[ [ [ \"211\", \"808\" ], [ \"61\", \"110\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"132\": [ 132, -46, 1, \"1\" ], \"125\": [ 125, 174, \"FAA\" ] } ]'),
(48, 47, 'Head Instructor', '[ [ [ \"211\", \"808\" ], [ \"61\", \"111\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"127\": [ 127, -24, 20, \"50\" ], \"132\": [ 132, -46, 1, \"1\" ], \"123\": [ 123, 45, \"FAA\" ], \"122\": [ 122, 45, \"FAA\" ], \"133\": [ 133, -100, 100, \"200\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(49, 47, 'Security Guard', '[ [ [ \"280\", \"809\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"127\": [ 127, -24, 5, \"50\" ], \"126\": [ 126, -3, 1, \"1\" ], \"133\": [ 133, -100, 100, \"200\" ], \"122\": [ 122, 45, \"FAA\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(50, 47, 'Agent', '[ [ [ \"286\", \"377\" ], [ \"211\", \"808\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"127\": [ 127, -24, 50, \"50\" ], \"123\": [ 123, 45, \"FAA\" ], \"133\": [ 133, -100, 100, \"200\" ], \"131\": [ 131, -43, 30, \"30\" ], \"126\": [ 126, -3, 1, \"1\" ], \"132\": [ 132, -46, 1, \"1\" ], \"122\": [ 122, 45, \"FAA\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(51, 47, 'Special Agent', '[ [ [ \"286\", \"377\" ], [ \"211\", \"808\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"127\": [ 127, -24, 50, \"50\" ], \"126\": [ 126, -3, 1, \"1\" ], \"123\": [ 123, 45, \"FAA\" ], \"122\": [ 122, 45, \"FAA\" ], \"133\": [ 133, -100, 100, \"200\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(52, 47, 'Air National Guard', '[ [ [ 287, \"N\\/A\" ], [ 285, \"N\\/A\" ], [ 179, \"N\\/A\" ], [ 121, \"N\\/A\" ], [ 73, \"N\\/A\" ] ] ]', '[ { \"60\": \"VEHICLE\", \"61\": \"VEHICLE\", \"62\": \"VEHICLE\", \"68\": \"Area69\", \"59\": \"VEHICLE\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"127\": [ 127, -24, 50, \"50\" ], \"129\": [ 129, -29, 50, \"50\" ], \"123\": [ 123, 45, \"FAA\" ], \"133\": [ 133, -100, 200, \"200\" ], \"121\": [ 121, 163, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"124\": [ 124, 145, \"FAA\" ], \"126\": [ 126, -3, 1, \"1\" ], \"132\": [ 132, -46, 1, \"1\" ], \"122\": [ 122, 45, \"FAA\" ], \"130\": [ 130, -31, 100, \"100\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(53, 47, 'Air Traffic Control', '[ [ [ \"211\", \"808\" ], [ \"71\", \"106\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"132\": [ 132, -46, 1, \"1\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(58, 47, 'D. Quint', '[ [ [ 61, \"N\\/A\" ], [ 287, \"N\\/A\" ], [ \"46\", \"36\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 20, \"30\" ], \"127\": [ 127, -24, 20, \"50\" ], \"132\": [ 132, -46, 1, \"1\" ], \"123\": [ 123, 45, \"FAA\" ], \"122\": [ 122, 45, \"FAA\" ], \"133\": [ 133, -100, 100, \"200\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(60, 4, 'MehÄniÄ·is', '[ [ [ 50, \"N\\/A\" ], [ 166, \"N\\/A\" ], [ 221, \"N\\/A\" ], [ 24, \"N\\/A\" ], [ 296, \"N\\/A\" ], [ 191, \"N\\/A\" ] ] ]', '[ { \"466\": \"LSAK DUTY\", \"385\": \"GarÄÅ¾as duty\", \"349\": \"LSAK\" } ]', '[ { \"9\": [ \"9\", 57, \"500\" ], \"11\": [ \"11\", 126, \"Rapid\" ] } ]'),
(142, 182, 'okje', '[ [ [ 551, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ { \"121\": [ \"121\", -24, 20, \"100\" ] } ]'),
(61, 50, 'Special Operations Team', '[ [ [ \"280\", \"2098\" ], [ \"285\", \"2107\" ], [ \"285\", \"2106\" ] ] ]', '[ { \"94\": \"VEHICLE\", \"95\": \"VEHICLE\", \"96\": \"VEHICLE\", \"97\": \"VEHICLE\", \"93\": \"VEHICLE\", \"92\": \"VEHICLE\", \"91\": \"VEHICLE\", \"90\": \"VEHICLE\", \"99\": \"VEHICLE\", \"98\": \"VEHICLE\", \"102\": \"VEHICLE\", \"101\": \"VEHICLE\", \"88\": \"VEHICLE\", \"109\": \"VEHICLE\", \"87\": \"VEHICLE\", \"21\": \"DLE HQ - Lockers\", \"104\": \"VEHICLE\", \"20\": \"VEHICLE\", \"100\": \"VEHICLE\", \"103\": \"VEHICLE\", \"89\": \"VEHICLE\" } ]', ''),
(68, 2, 'MediÄ·is', '[ [ [ 275, \"N\\/A\" ], [ 274, \"N\\/A\" ], [ 276, \"N\\/A\" ], [ 211, \"N\\/A\" ], [ 71, \"N\\/A\" ] ] ]', '[ { \"339\": \"VEHICLE\", \"338\": \"VEHICLE\", \"359\": \"DUTY\", \"214\": \"VEHICLE\", \"342\": \"VEHICLE\", \"422\": \"duty\", \"340\": \"VEHICLE\", \"341\": \"VEHICLE\" } ]', '[ { \"118\": [ \"118\", 145, \"Flashlight\" ], \"119\": [ \"119\", 164, \"\" ], \"116\": [ \"116\", 113, \"Glowsticks\" ], \"167\": [ 167, 88, \"1\" ], \"166\": [ 166, 6, \"1\" ], \"115\": [ \"115\", 70, \"BLS Kit\" ] } ]'),
(273, 1, 'Moto.V', '[ [ [ 284, \"N\\/A\" ] ] ]', '[ { \"366\": \"VEHICLE\", \"376\": \"VEHICLE\", \"362\": \"VEHICLE\", \"372\": \"VEHICLE\", \"367\": \"VEHICLE\", \"353\": \"Test\", \"377\": \"VEHICLE\", \"373\": \"VEHICLE\", \"363\": \"VEHICLE\", \"369\": \"VEHICLE\", \"360\": \"VEHICLE\", \"370\": \"VEHICLE\", \"374\": \"VEHICLE\", \"384\": \"Duty \", \"381\": \"VEHICLE\", \"364\": \"VEHICLE\", \"378\": \"VEHICLE\", \"365\": \"VEHICLE\", \"371\": \"VEHICLE\", \"361\": \"VEHICLE\", \"368\": \"VEHICLE\", \"375\": \"VEHICLE\" } ]', '[ { \"151\": [ \"151\", 126, \"PD\" ], \"135\": [ \"135\", 45, \"1\" ], \"142\": [ \"142\", -24, 35, \"35\" ], \"145\": [ \"145\", -29, 150, \"150\" ], \"168\": [ \"168\", 6, \"\" ], \"30\": [ \"30\", -3, 1, \"1\" ], \"34\": [ \"34\", 13, \"\" ], \"69\": [ \"69\", -100, 100, \"100\" ] } ]'),
(80, 64, 'M&ER Team', '[ [ [ 309, \"N\\/A\" ] ] ]', '[ { \"117\": \"Duty Room\" } ]', ''),
(81, 64, 'Bus Team', '[ [ [ \"255\", \"2073\" ] ] ]', '[ { \"117\": \"Duty Room\" } ]', ''),
(82, 64, 'Taxi Team', '[ [ [ \"255\", \"2073\" ] ] ]', '[ { \"117\": \"Duty Room\" } ]', ''),
(83, 47, 'Security Student', '[ [ [ \"280\", \"809\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"126\": [ 126, -3, 1, \"1\" ], \"123\": [ 123, 45, \"FAA\" ], \"122\": [ 122, 45, \"FAA\" ], \"133\": [ 133, -100, 100, \"200\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(88, 47, 'T. Williams', '[ [ [ \"286\", \"377\" ], [ \"185\", \"1711\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 20, \"30\" ], \"127\": [ 127, -24, 20, \"50\" ], \"126\": [ 126, -3, 1, \"1\" ], \"133\": [ 133, -100, 100, \"200\" ], \"122\": [ 122, 45, \"FAA\" ], \"121\": [ 121, 163, \"FAA\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(90, 47, 'D.Bryant', '[ [ [ \"188\", \"1401\" ], [ \"286\", \"1403\" ] ] ]', '[ { \"126\": \"VEHICLE\", \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"127\": [ 127, -24, 50, \"50\" ], \"133\": [ 133, -100, 100, \"200\" ], \"131\": [ 131, -43, 30, \"30\" ], \"124\": [ 124, 145, \"FAA\" ], \"126\": [ 126, -3, 1, \"1\" ], \"132\": [ 132, -46, 1, \"1\" ], \"122\": [ 122, 45, \"FAA\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(101, 2, 'UgunsdzÄ“sÄ“js', '[ [ [ 277, \"N\\/A\" ], [ 278, \"N\\/A\" ], [ 279, \"N\\/A\" ] ] ]', '[ { \"339\": \"VEHICLE\", \"338\": \"VEHICLE\", \"359\": \"DUTY\", \"214\": \"VEHICLE\", \"342\": \"VEHICLE\", \"422\": \"duty\", \"340\": \"VEHICLE\", \"341\": \"VEHICLE\" } ]', '[ { \"114\": [ \"114\", 26, \"Gas Mask\" ], \"115\": [ \"115\", 70, \"BLS Kit\" ], \"116\": [ \"116\", 113, \"Glowsticks\" ], \"117\": [ \"117\", 120, \"Scuba Gear\" ], \"118\": [ \"118\", 145, \"Flashlight\" ], \"112\": [ \"112\", -42, 1000, 1000 ], \"113\": [ \"113\", -9, 0, \"0\" ] } ]'),
(1, 4, 'KonfiscÄ“tÄjs', '[ [ [ 16, \"N\\/A\" ], [ 27, \"N\\/A\" ], [ 260, \"N\\/A\" ], [ 191, \"N\\/A\" ], [ 13, \"N\\/A\" ] ] ]', '[ { \"466\": \"LSAK DUTY\", \"385\": \"GarÄÅ¾as duty\", \"349\": \"LSAK\" } ]', '[ { \"9\": [ \"9\", 57, \"500\" ], \"8\": [ \"8\", 46, \"\" ], \"11\": [ \"11\", 126, \"Rapid\" ], \"210\": [ 210, 70, \"5\" ] } ]'),
(140, 182, 'deagle', '[ [ [ 121, \"N\\/A\" ], [ 551, \"N\\/A\" ], [ 130, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ { \"121\": [ \"121\", -24, 100, \"100\" ], \"120\": [ \"120\", -100, 50, \"100\" ] } ]'),
(8, 50, 'Undercover gear', '[ [ [ 286, \"N\\/A\" ], [ \"266\", \"2097\" ], [ \"280\", \"2098\" ], [ \"280\", \"2099\" ], [ \"186\", \"2100\" ], [ \"186\", \"2101\" ], [ \"186\", \"2102\" ], [ \"186\", \"2103\" ], [ \"186\", \"2104\" ] ] ]', '[ { \"87\": \"VEHICLE\", \"95\": \"VEHICLE\", \"96\": \"VEHICLE\", \"97\": \"VEHICLE\", \"93\": \"VEHICLE\", \"92\": \"VEHICLE\", \"91\": \"VEHICLE\", \"90\": \"VEHICLE\", \"88\": \"VEHICLE\", \"98\": \"VEHICLE\", \"102\": \"VEHICLE\", \"101\": \"VEHICLE\", \"89\": \"VEHICLE\", \"109\": \"VEHICLE\", \"99\": \"VEHICLE\", \"100\": \"VEHICLE\", \"104\": \"VEHICLE\", \"20\": \"VEHICLE\", \"21\": \"DLE HQ - Lockers\", \"94\": \"VEHICLE\", \"103\": \"VEHICLE\" } ]', ''),
(137, 59, 'MehÄniÄ·is', '[ [ [ 50, \"N\\/A\" ] ] ]', '[ { \"116\": \"SADC\" } ]', '[ { \"140\": [ 140, 57, \"100\" ], \"136\": [ 136, 83, \"1\" ], \"135\": [ 135, 1, \"1\" ], \"143\": [ 143, 118, \"1\" ], \"144\": [ 144, 183, \"1\" ], \"147\": [ 147, 46, \"1\" ] } ]'),
(143, 183, 'Prieksnieciba', '[ [ [ 59, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ [ ] ]'),
(144, 183, 'Prieksnieciba', '[ [ [ 59, \"N\\/A\" ] ] ]', '[ { \"197\": \"hz\" } ]', '[ { \"121\": [ \"121\", -24, 1, \"100\" ], \"120\": [ \"120\", -100, 11, \"100\" ] } ]'),
(145, 183, 'MehÄniÄ·is', '[ [ [ 50, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ [ ] ]'),
(44, 47, 'Instructor Student', '[ [ [ 61, \"N\\/A\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"127\": [ 127, -24, 5, \"50\" ], \"123\": [ 123, 45, \"FAA\" ], \"133\": [ 133, -100, 75, \"200\" ], \"121\": [ 121, 163, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"126\": [ 126, -3, 1, \"1\" ], \"122\": [ 122, 45, \"FAA\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(45, 47, 'Instructor I', '[ [ [ \"211\", \"808\" ], [ \"61\", \"107\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"132\": [ 132, -46, 1, \"1\" ] } ]'),
(46, 47, 'Instructor II', '[ [ [ \"211\", \"808\" ], [ \"61\", \"109\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"132\": [ 132, -46, 1, \"1\" ], \"125\": [ 125, 174, \"FAA\" ] } ]'),
(47, 47, 'Instructor III', '[ [ [ \"211\", \"808\" ], [ \"61\", \"110\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"132\": [ 132, -46, 1, \"1\" ], \"125\": [ 125, 174, \"FAA\" ] } ]'),
(48, 47, 'Head Instructor', '[ [ [ \"211\", \"808\" ], [ \"61\", \"111\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"127\": [ 127, -24, 20, \"50\" ], \"132\": [ 132, -46, 1, \"1\" ], \"123\": [ 123, 45, \"FAA\" ], \"122\": [ 122, 45, \"FAA\" ], \"133\": [ 133, -100, 100, \"200\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(49, 47, 'Security Guard', '[ [ [ \"280\", \"809\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"127\": [ 127, -24, 5, \"50\" ], \"126\": [ 126, -3, 1, \"1\" ], \"133\": [ 133, -100, 100, \"200\" ], \"122\": [ 122, 45, \"FAA\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(50, 47, 'Agent', '[ [ [ \"286\", \"377\" ], [ \"211\", \"808\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"127\": [ 127, -24, 50, \"50\" ], \"123\": [ 123, 45, \"FAA\" ], \"133\": [ 133, -100, 100, \"200\" ], \"131\": [ 131, -43, 30, \"30\" ], \"126\": [ 126, -3, 1, \"1\" ], \"132\": [ 132, -46, 1, \"1\" ], \"122\": [ 122, 45, \"FAA\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(51, 47, 'Special Agent', '[ [ [ \"286\", \"377\" ], [ \"211\", \"808\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"127\": [ 127, -24, 50, \"50\" ], \"126\": [ 126, -3, 1, \"1\" ], \"123\": [ 123, 45, \"FAA\" ], \"122\": [ 122, 45, \"FAA\" ], \"133\": [ 133, -100, 100, \"200\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(52, 47, 'Air National Guard', '[ [ [ 287, \"N\\/A\" ], [ 285, \"N\\/A\" ], [ 179, \"N\\/A\" ], [ 121, \"N\\/A\" ], [ 73, \"N\\/A\" ] ] ]', '[ { \"60\": \"VEHICLE\", \"61\": \"VEHICLE\", \"62\": \"VEHICLE\", \"68\": \"Area69\", \"59\": \"VEHICLE\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"127\": [ 127, -24, 50, \"50\" ], \"129\": [ 129, -29, 50, \"50\" ], \"123\": [ 123, 45, \"FAA\" ], \"133\": [ 133, -100, 200, \"200\" ], \"121\": [ 121, 163, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"124\": [ 124, 145, \"FAA\" ], \"126\": [ 126, -3, 1, \"1\" ], \"132\": [ 132, -46, 1, \"1\" ], \"122\": [ 122, 45, \"FAA\" ], \"130\": [ 130, -31, 100, \"100\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(53, 47, 'Air Traffic Control', '[ [ [ \"211\", \"808\" ], [ \"71\", \"106\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"132\": [ 132, -46, 1, \"1\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(58, 47, 'D. Quint', '[ [ [ 61, \"N\\/A\" ], [ 287, \"N\\/A\" ], [ \"46\", \"36\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 20, \"30\" ], \"127\": [ 127, -24, 20, \"50\" ], \"132\": [ 132, -46, 1, \"1\" ], \"123\": [ 123, 45, \"FAA\" ], \"122\": [ 122, 45, \"FAA\" ], \"133\": [ 133, -100, 100, \"200\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(60, 4, 'MehÄniÄ·is', '[ [ [ 50, \"N\\/A\" ], [ 166, \"N\\/A\" ], [ 221, \"N\\/A\" ], [ 24, \"N\\/A\" ], [ 296, \"N\\/A\" ], [ 191, \"N\\/A\" ] ] ]', '[ { \"466\": \"LSAK DUTY\", \"385\": \"GarÄÅ¾as duty\", \"349\": \"LSAK\" } ]', '[ { \"9\": [ \"9\", 57, \"500\" ], \"11\": [ \"11\", 126, \"Rapid\" ] } ]'),
(147, 174, 'Apsargs', '[ [ ] ]', '[ { \"199\": \"RKD Corporation Dutijs\" } ]', '[ [ ] ]'),
(61, 50, 'Special Operations Team', '[ [ [ \"280\", \"2098\" ], [ \"285\", \"2107\" ], [ \"285\", \"2106\" ] ] ]', '[ { \"94\": \"VEHICLE\", \"95\": \"VEHICLE\", \"96\": \"VEHICLE\", \"97\": \"VEHICLE\", \"93\": \"VEHICLE\", \"92\": \"VEHICLE\", \"91\": \"VEHICLE\", \"90\": \"VEHICLE\", \"99\": \"VEHICLE\", \"98\": \"VEHICLE\", \"102\": \"VEHICLE\", \"101\": \"VEHICLE\", \"88\": \"VEHICLE\", \"109\": \"VEHICLE\", \"87\": \"VEHICLE\", \"21\": \"DLE HQ - Lockers\", \"104\": \"VEHICLE\", \"20\": \"VEHICLE\", \"100\": \"VEHICLE\", \"103\": \"VEHICLE\", \"89\": \"VEHICLE\" } ]', ''),
(68, 2, 'MediÄ·is', '[ [ [ 275, \"N\\/A\" ], [ 274, \"N\\/A\" ], [ 276, \"N\\/A\" ], [ 211, \"N\\/A\" ], [ 71, \"N\\/A\" ] ] ]', '[ { \"339\": \"VEHICLE\", \"338\": \"VEHICLE\", \"359\": \"DUTY\", \"214\": \"VEHICLE\", \"342\": \"VEHICLE\", \"422\": \"duty\", \"340\": \"VEHICLE\", \"341\": \"VEHICLE\" } ]', '[ { \"118\": [ \"118\", 145, \"Flashlight\" ], \"119\": [ \"119\", 164, \"\" ], \"116\": [ \"116\", 113, \"Glowsticks\" ], \"167\": [ 167, 88, \"1\" ], \"166\": [ 166, 6, \"1\" ], \"115\": [ \"115\", 70, \"BLS Kit\" ] } ]'),
(80, 64, 'M&ER Team', '[ [ [ 309, \"N\\/A\" ] ] ]', '[ { \"117\": \"Duty Room\" } ]', ''),
(81, 64, 'Bus Team', '[ [ [ \"255\", \"2073\" ] ] ]', '[ { \"117\": \"Duty Room\" } ]', ''),
(82, 64, 'Taxi Team', '[ [ [ \"255\", \"2073\" ] ] ]', '[ { \"117\": \"Duty Room\" } ]', ''),
(83, 47, 'Security Student', '[ [ [ \"280\", \"809\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"126\": [ 126, -3, 1, \"1\" ], \"123\": [ 123, 45, \"FAA\" ], \"122\": [ 122, 45, \"FAA\" ], \"133\": [ 133, -100, 100, \"200\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(304, 56, 'Apsargs', '[ [ [ 93, \"N\\/A\" ], [ 164, \"N\\/A\" ], [ 165, \"N\\/A\" ], [ 166, \"N\\/A\" ], [ 211, \"N\\/A\" ], [ 294, \"N\\/A\" ], [ 163, \"N\\/A\" ] ] ]', '[ { \"476\": \"asdsadad\" } ]', '[ [ ] ]'),
(88, 47, 'T. Williams', '[ [ [ \"286\", \"377\" ], [ \"185\", \"1711\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 20, \"30\" ], \"127\": [ 127, -24, 20, \"50\" ], \"126\": [ 126, -3, 1, \"1\" ], \"133\": [ 133, -100, 100, \"200\" ], \"122\": [ 122, 45, \"FAA\" ], \"121\": [ 121, 163, \"FAA\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(90, 47, 'D.Bryant', '[ [ [ \"188\", \"1401\" ], [ \"286\", \"1403\" ] ] ]', '[ { \"126\": \"VEHICLE\", \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"127\": [ 127, -24, 50, \"50\" ], \"133\": [ 133, -100, 100, \"200\" ], \"131\": [ 131, -43, 30, \"30\" ], \"124\": [ 124, 145, \"FAA\" ], \"126\": [ 126, -3, 1, \"1\" ], \"132\": [ 132, -46, 1, \"1\" ], \"122\": [ 122, 45, \"FAA\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(132, 138, 'MehÄniÄ·is', '[ [ [ 50, \"N\\/A\" ] ] ]', '[ { \"174\": \"mehduty\" } ]', '[ { \"120\": [ 120, -41, 500, \"999999999\" ] } ]'),
(101, 2, 'UgunsdzÄ“sÄ“js', '[ [ [ 277, \"N\\/A\" ], [ 278, \"N\\/A\" ], [ 279, \"N\\/A\" ] ] ]', '[ { \"339\": \"VEHICLE\", \"338\": \"VEHICLE\", \"359\": \"DUTY\", \"214\": \"VEHICLE\", \"342\": \"VEHICLE\", \"422\": \"duty\", \"340\": \"VEHICLE\", \"341\": \"VEHICLE\" } ]', '[ { \"114\": [ \"114\", 26, \"Gas Mask\" ], \"115\": [ \"115\", 70, \"BLS Kit\" ], \"116\": [ \"116\", 113, \"Glowsticks\" ], \"117\": [ \"117\", 120, \"Scuba Gear\" ], \"118\": [ \"118\", 145, \"Flashlight\" ], \"112\": [ \"112\", -42, 1000, 1000 ], \"113\": [ \"113\", -9, 0, \"0\" ] } ]'),
(111, 92, 'Test', '[ [ [ 121, \"N\\/A\" ] ] ]', '[ { \"151\": \"drop\" } ]', '[ [ ] ]'),
(193, 98, 'PriekÅ¡niekam', '[ [ [ 240, \"N\\/A\" ], [ 63, \"N\\/A\" ] ] ]', '[ { \"232\": \"wolftuning\" } ]', '[ [ ] ]'),
(170, 110, 'garaÅ¾a', '[ [ [ 130, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ [ ] ]'),
(174, 3, 'MÄ“rs', '[ [ [ 17, \"N\\/A\" ], [ 91, \"N\\/A\" ], [ 228, \"N\\/A\" ], [ 216, \"N\\/A\" ], [ 120, \"N\\/A\" ], [ 294, \"N\\/A\" ], [ 0, \"N\\/A\" ] ] ]', '[ { \"380\": \"Duty 1\", \"382\": \"DUTY\", \"472\": \"1\", \"462\": \"VEHICLE\", \"470\": \"DeffenderLOH\", \"388\": \"Duty\", \"465\": \"DutyPos\", \"440\": \"VEHICLE\", \"386\": \"Duty\" } ]', '[ { \"121\": [ \"121\", -24, 100, \"100\" ], \"120\": [ \"120\", -100, 100, 1 ] } ]'),
(166, 100, 'MehÄniÄ·is', '[ [ ] ]', '[ [ ] ]', '[ [ ] ]'),
(167, 88, 'MehaniÄ·is', '[ [ [ 23, \"N\\/A\" ] ] ]', '[ { \"218\": \"S&D Tuning\" } ]', '[ [ ] ]'),
(299, 43, 'Darbinieks.', '[ [ [ 184, \"N\\/A\" ], [ 202, \"N\\/A\" ], [ 161, \"N\\/A\" ], [ 206, \"N\\/A\" ] ] ]', '[ { \"458\": \"Duty\" } ]', '[ [ ] ]'),
(257, 1, 'Virsnieks', '[ [ [ 280, \"N\\/A\" ], [ 93, \"N\\/A\" ], [ 211, \"N\\/A\" ], [ 265, \"N\\/A\" ] ] ]', '[ { \"366\": \"VEHICLE\", \"376\": \"VEHICLE\", \"362\": \"VEHICLE\", \"372\": \"VEHICLE\", \"367\": \"VEHICLE\", \"353\": \"Test\", \"377\": \"VEHICLE\", \"373\": \"VEHICLE\", \"363\": \"VEHICLE\", \"434\": \"akademija\", \"369\": \"VEHICLE\", \"350\": \"LSPD\", \"360\": \"VEHICLE\", \"370\": \"VEHICLE\", \"374\": \"VEHICLE\", \"384\": \"Duty \", \"381\": \"VEHICLE\", \"368\": \"VEHICLE\", \"378\": \"VEHICLE\", \"365\": \"VEHICLE\", \"371\": \"VEHICLE\", \"361\": \"VEHICLE\", \"364\": \"VEHICLE\", \"375\": \"VEHICLE\" } ]', '[ { \"151\": [ \"151\", 126, \"PD\" ], \"187\": [ \"187\", -25, 21, \"21\" ], \"142\": [ \"142\", -24, 14, 35 ], \"135\": [ \"135\", 45, \"1\" ], \"25\": [ \"25\", -43, 50, \"50\" ], \"30\": [ \"30\", -3, 1, \"1\" ], \"34\": [ \"34\", 13, \"\" ], \"69\": [ \"69\", -100, 100, 1 ] } ]'),
(128, 2, 'PriekÅ¡nieks/ce', '[ [ [ 120, \"N\\/A\" ], [ 91, \"N\\/A\" ] ] ]', '[ { \"339\": \"VEHICLE\", \"338\": \"VEHICLE\", \"359\": \"DUTY\", \"214\": \"VEHICLE\", \"342\": \"VEHICLE\", \"422\": \"duty\", \"340\": \"VEHICLE\", \"341\": \"VEHICLE\" } ]', '[ { \"118\": [ \"118\", 145, \"Flashlight\" ], \"115\": [ \"115\", 70, \"BLS Kit\" ], \"116\": [ \"116\", 113, \"Glowsticks\" ], \"117\": [ \"117\", 120, \"Scuba Gear\" ], \"114\": [ \"114\", 26, \"Gas Mask\" ], \"119\": [ \"119\", 164, \"\" ], \"166\": [ \"166\", 6, \"1\" ] } ]'),
(288, 68, 'VadÄ«tÄjs', '[ [ [ 189, \"N\\/A\" ] ] ]', '[ { \"424\": \"duty\", \"425\": \"DUTY VIETA\", \"423\": \"VEHICLE\" } ]', '[ [ ] ]'),
(121, 95, 'Celtnieks', '[ [ [ 27, \"N\\/A\" ], [ 260, \"N\\/A\" ], [ 16, \"N\\/A\" ], [ 153, \"N\\/A\" ] ] ]', '[ { \"158\": \"Celtnieka duty\" } ]', '[ [ ] ]'),
(169, 110, 'garderobe', '[ [ [ 59, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ [ ] ]'),
(131, 129, 'MehÄniÄ·i', '[ [ [ 50, \"N\\/A\" ], [ 268, \"N\\/A\" ], [ 305, \"N\\/A\" ], [ 309, \"N\\/A\" ] ] ]', '[ { \"172\": \"DrÄ“bju skapis\" } ]', '[ [ ] ]'),
(134, 4, 'VadÄ«ba', '[ [ [ 50, \"N\\/A\" ], [ 268, \"N\\/A\" ], [ 17, \"N\\/A\" ], [ 22, \"N\\/A\" ] ] ]', '[ { \"466\": \"LSAK DUTY\", \"385\": \"GarÄÅ¾as duty\", \"349\": \"LSAK\" } ]', '[ { \"9\": [ \"9\", 57, \"500\" ], \"8\": [ \"8\", 46, \"\" ], \"11\": [ \"11\", 126, \"Rapid\" ], \"75\": [ \"75\", 96, \"\" ] } ]'),
(216, 157, 'CeÄ¼a strÄdnieks', '[ [ [ 27, \"N\\/A\" ], [ 50, \"N\\/A\" ] ] ]', '[ { \"257\": \"LSB \\/ DARBINIEKI\" } ]', '[ [ ] ]'),
(139, 182, '20', '[ [ ] ]', '[ [ ] ]', '[ { \"121\": [ \"121\", -24, 20, \"100\" ], \"120\": [ \"120\", -100, 20, \"100\" ] } ]'),
(179, 3, 'ApkopÄ“js', '[ [ [ 170, \"N\\/A\" ], [ 180, \"N\\/A\" ], [ 190, \"N\\/A\" ] ] ]', '[ { \"380\": \"Duty 1\", \"386\": \"Duty\", \"382\": \"DUTY\" } ]', '[ [ ] ]'),
(150, 207, 'PRIEKÅ NIEKS', '[ [ ] ]', '[ [ ] ]', '[ { \"17\": [ \"17\", -31, 200, \"250\" ] } ]'),
(146, 190, 'MehÄniÄ·is', '[ [ [ \"305\", \"509\" ], [ \"50\", \"1081\" ] ] ]', '[ { \"198\": \"GasMonkey\" } ]', '[ [ ] ]'),
(148, 193, 'VadÄ«tÄjs', '[ [ [ 268, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ [ ] ]'),
(177, 3, 'Ministrs', '[ [ [ 118, \"N\\/A\" ] ] ]', '[ { \"388\": \"Duty\", \"380\": \"Duty 1\", \"386\": \"Duty\", \"382\": \"DUTY\" } ]', '[ { \"120\": [ \"120\", -100, 50, 100 ], \"121\": [ \"121\", -24, 100, \"100\" ], \"153\": [ \"153\", -24, 7, \"7\" ], \"152\": [ \"152\", -24, 3, \"3\" ] } ]'),
(178, 3, 'Valsts Darba Inspekcija', '[ [ [ 93, \"N\\/A\" ] ] ]', '[ { \"380\": \"Duty 1\", \"386\": \"Duty\", \"382\": \"DUTY\" } ]', '[ { \"120\": [ \"120\", -100, 50, 100 ] } ]'),
(168, 110, 'Garderobe', '[ [ [ 59, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ [ ] ]'),
(153, 249, 'APSARGS', '[ [ ] ]', '[ [ ] ]', '[ { \"36\": [ \"36\", 29, \"\" ], \"1\": [ \"1\", 45, \"1\" ], \"2\": [ \"2\", 1, \"1\" ] } ]'),
(154, 249, 'Apsargs', '[ [ [ 33, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ { \"1\": [ \"1\", 45, \"1\" ], \"36\": [ \"36\", 29, \"\" ] } ]'),
(155, 249, 'Apsargs', '[ [ [ 130, \"N\\/A\" ], [ 30, \"N\\/A\" ], [ 5, \"N\\/A\" ], [ 6, \"N\\/A\" ], [ 7, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ { \"36\": [ \"36\", 29, \"\" ], \"3\": [ \"3\", 26, \"1\" ], \"68\": [ \"68\", 27, \"4\" ], \"2\": [ \"2\", 1, \"1\" ] } ]'),
(157, 253, 'ss', '[ [ ] ]', '[ [ ] ]', '[ { \"36\": [ \"36\", 29, \"\" ], \"34\": [ \"34\", 13, \"\" ], \"3\": [ \"3\", 26, \"1\" ], \"2\": [ \"2\", 1, \"1\" ], \"31\": [ \"31\", 126, \"1\" ], \"18\": [ \"18\", -24, 20, \"35\" ], \"33\": [ \"33\", 137, \"1\" ], \"69\": [ \"69\", -100, 100, \"100\" ] } ]'),
(198, 20, 'Å½urnÄlists', '[ [ [ 40, \"N\\/A\" ], [ 170, \"N\\/A\" ], [ 60, \"N\\/A\" ] ] ]', '[ { \"357\": \"Duty\", \"475\": \"Duty\", \"461\": \"DUTY POZÄªCIJA\", \"409\": \"LSZD DUTY\" } ]', '[ { \"211\": [ 211, 96, \"9999\" ], \"210\": [ 210, 6, \"999\" ], \"208\": [ 208, 13, \"999\" ] } ]'),
(185, 3, 'Vietnieks', '[ [ [ 1, \"N\\/A\" ], [ \"186\", \"58\" ] ] ]', '[ { \"380\": \"Duty 1\", \"386\": \"Duty\", \"382\": \"DUTY\" } ]', '[ { \"120\": [ \"120\", -100, 100, \"100\" ] } ]'),
(253, 214, 'Kluba Apsargs', '[ [ [ 165, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ [ ] ]'),
(197, 20, 'ZiÅ†u vadÄ«tÄjs', '[ [ [ 98, \"N\\/A\" ], [ 113, \"N\\/A\" ], [ 40, \"N\\/A\" ] ] ]', '[ { \"475\": \"Duty\" } ]', '[ { \"208\": [ 208, 13, \"999\" ], \"210\": [ 210, 6, \"999\" ], \"206\": [ 206, 70, \"999\" ], \"209\": [ 209, 15, \"999\" ] } ]'),
(195, 20, 'PriekÅ¡nieks', '[ [ [ 187, \"N\\/A\" ] ] ]', '[ { \"357\": \"Duty\", \"475\": \"Duty\", \"461\": \"DUTY POZÄªCIJA\", \"409\": \"LSZD DUTY\" } ]', '[ { \"208\": [ 208, 13, \"999\" ], \"209\": [ 209, 15, \"999\" ], \"206\": [ 206, 70, \"999\" ], \"211\": [ 211, 96, \"9999\" ], \"210\": [ 210, 6, \"999\" ], \"212\": [ 212, -43, 999, \"999\" ] } ]'),
(189, 119, 'apÄ£Ä“rbs', '[ [ [ 130, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ [ ] ]'),
(192, 98, 'MehaniÄ·is', '[ [ [ 50, \"N\\/A\" ] ] ]', '[ { \"232\": \"wolftuning\" } ]', '[ [ ] ]'),
(194, 122, 'Mamma', '[ [ ] ]', '[ { \"233\": \"Duty\" } ]', '[ [ ] ]'),
(201, 20, 'FotogrÄfs', '[ [ [ 250, \"N\\/A\" ], [ 59, \"N\\/A\" ], [ 216, \"N\\/A\" ] ] ]', '[ { \"357\": \"Duty\", \"475\": \"Duty\", \"461\": \"DUTY POZÄªCIJA\", \"409\": \"LSZD DUTY\" } ]', '[ { \"208\": [ 208, 13, \"999\" ], \"209\": [ 209, 15, \"999\" ], \"210\": [ 210, 6, \"999\" ], \"212\": [ 212, -43, 999, \"999\" ] } ]'),
(202, 102, 'Droperis', '[ [ [ \"73\", \"156\" ] ] ]', '[ { \"240\": \"Drop\" } ]', '[ { \"160\": [ 160, -22, 17, \"17\" ] } ]'),
(205, 139, 'RenegÄts', '[ [ [ 287, \"N\\/A\" ] ] ]', '[ { \"242\": \"duty\" } ]', '[ [ ] ]'),
(212, 137, 'Ib', '[ [ [ 81, \"N\\/A\" ], [ 50, \"N\\/A\" ] ] ]', '[ { \"248\": \"Fun Kart\" } ]', '[ [ ] ]'),
(208, 2, 'SekretÄrs', '[ [ [ 17, \"N\\/A\" ], [ 147, \"N\\/A\" ], [ 186, \"N\\/A\" ], [ 166, \"N\\/A\" ], [ 185, \"N\\/A\" ], [ 219, \"N\\/A\" ] ] ]', '[ { \"339\": \"VEHICLE\", \"338\": \"VEHICLE\", \"359\": \"DUTY\", \"214\": \"VEHICLE\", \"342\": \"VEHICLE\", \"422\": \"duty\", \"340\": \"VEHICLE\", \"341\": \"VEHICLE\" } ]', '[ { \"118\": [ \"118\", 145, \"Flashlight\" ], \"119\": [ \"119\", 164, \"\" ], \"116\": [ \"116\", 113, \"Glowsticks\" ], \"117\": [ \"117\", 120, \"Scuba Gear\" ], \"114\": [ \"114\", 26, \"Gas Mask\" ], \"115\": [ \"115\", 70, \"BLS Kit\" ] } ]'),
(214, 148, 'gg', '[ [ [ 50, \"N\\/A\" ], [ 165, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ [ ] ]'),
(215, 137, 'Zagts,negetot!', '[ [ [ 4, \"N\\/A\" ], [ 7, \"N\\/A\" ], [ 8, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ [ ] ]'),
(217, 3, 'Apsardzes priekÅ¡nieks', '[ [ [ \"111\", \"19\" ] ] ]', '[ { \"380\": \"Duty 1\", \"382\": \"DUTY\", \"243\": \"Duty 1\", \"386\": \"Duty\", \"388\": \"Duty\", \"230\": \"Duty\" } ]', '[ { \"121\": [ \"121\", -24, 100, \"100\" ], \"120\": [ \"120\", -100, 100, \"100\" ] } ]'),
(227, 3, 'Apsargs', '[ [ [ 165, \"N\\/A\" ], [ 98, \"N\\/A\" ], [ 191, \"N\\/A\" ], [ 295, \"N\\/A\" ] ] ]', '[ { \"380\": \"Duty 1\", \"318\": \"Duty 2\", \"382\": \"DUTY\", \"386\": \"Duty\", \"470\": \"DeffenderLOH\", \"388\": \"Duty\", \"465\": \"DutyPos\", \"243\": \"Duty 1\", \"230\": \"Duty\" } ]', '[ { \"121\": [ \"121\", -24, 20, \"100\" ], \"120\": [ \"120\", -100, 100, 50 ] } ]'),
(223, 175, 'SekretÄre', '[ [ [ 141, \"N\\/A\" ], [ 91, \"N\\/A\" ], [ 40, \"N\\/A\" ] ] ]', '[ { \"268\": \"Lidosta\" } ]', '[ [ ] ]'),
(221, 175, 'PriekÅ¡nieks', '[ [ [ 150, \"N\\/A\" ], [ 217, \"N\\/A\" ], [ 223, \"N\\/A\" ], [ 295, \"N\\/A\" ], [ \"147\", \"161\" ] ] ]', '[ { \"268\": \"Lidosta\" } ]', '[ [ ] ]'),
(224, 175, 'Pilots', '[ [ [ 255, \"N\\/A\" ], [ 228, \"N\\/A\" ] ] ]', '[ { \"268\": \"Lidosta\" } ]', '[ [ ] ]'),
(225, 175, 'Lidostas administrators', '[ [ [ 164, \"N\\/A\" ], [ 172, \"N\\/A\" ], [ 171, \"N\\/A\" ] ] ]', '[ { \"268\": \"Lidosta\" } ]', '[ [ ] ]'),
(226, 175, 'RemontstrÄdnieks', '[ [ [ 16, \"N\\/A\" ] ] ]', '[ { \"268\": \"Lidosta\" } ]', '[ [ ] ]'),
(228, 175, 'Apsargs', '[ [ [ 164, \"N\\/A\" ] ] ]', '[ { \"268\": \"Lidosta\" } ]', '[ { \"163\": [ 163, -24, 50, \"50\" ] } ]'),
(264, 1, 'PriekÅ¡nieks', '[ [ [ 283, \"N\\/A\" ], [ 288, \"N\\/A\" ], [ 282, \"N\\/A\" ] ] ]', '[ { \"436\": \"VEHICLE\", \"336\": \"Duty\", \"376\": \"VEHICLE\", \"417\": \"VEHICLE\", \"372\": \"VEHICLE\", \"432\": \"VEHICLE\", \"353\": \"Test\", \"377\": \"VEHICLE\", \"373\": \"VEHICLE\", \"431\": \"VEHICLE\", \"370\": \"VEHICLE\", \"374\": \"VEHICLE\", \"350\": \"LSPD\", \"435\": \"VEHICLE\", \"378\": \"VEHICLE\", \"371\": \"VEHICLE\", \"451\": \"VEHICLE\", \"375\": \"VEHICLE\", \"366\": \"VEHICLE\", \"362\": \"VEHICLE\", \"442\": \"VEHICLE\", \"367\": \"VEHICLE\", \"443\": \"VEHICLE\", \"363\": \"VEHICLE\", \"369\": \"VEHICLE\", \"360\": \"VEHICLE\", \"434\": \"akademija\", \"384\": \"Duty \", \"381\": \"VEHICLE\", \"433\": \"VEHICLE\", \"368\": \"VEHICLE\", \"365\": \"VEHICLE\", \"441\": \"VEHICLE\", \"361\": \"VEHICLE\", \"364\": \"VEHICLE\", \"439\": \"VEHICLE\" } ]', '[ { \"146\": [ \"146\", -31, 200, \"200\" ], \"136\": [ \"136\", 26, \"1\" ], \"139\": [ \"139\", 56, \"1\" ], \"142\": [ \"142\", -24, 35, \"35\" ], \"147\": [ \"147\", 29, \"PD\" ], \"34\": [ \"34\", 13, \"\" ], \"135\": [ \"135\", 45, \"1\" ], \"151\": [ \"151\", 126, \"PD\" ], \"24\": [ \"24\", -27, 35, \"35\" ], \"187\": [ \"187\", -25, 21, \"21\" ], \"141\": [ \"141\", 120, \"1\" ], \"20\": [ \"20\", -34, 10, \"10\" ], \"30\": [ \"30\", -3, 1, \"1\" ], \"33\": [ \"33\", 137, \"1\" ], \"69\": [ \"69\", -100, 100, \"100\" ] } ]'),
(231, 3, 'MÄ“ra kundze', '[ [ [ 91, \"N\\/A\" ], [ 92, \"N\\/A\" ], [ 150, \"N\\/A\" ] ] ]', '[ { \"243\": \"Duty 1\", \"386\": \"Duty\", \"382\": \"DUTY\", \"230\": \"Duty\" } ]', '[ { \"121\": [ \"121\", -24, 100, \"100\" ], \"120\": [ \"120\", -100, 100, \"100\" ] } ]'),
(232, 3, 'Å oferis', '[ [ [ 111, \"N\\/A\" ], [ 61, \"N\\/A\" ] ] ]', '[ { \"380\": \"Duty 1\", \"382\": \"DUTY\", \"243\": \"Duty 1\", \"386\": \"Duty\", \"230\": \"Duty\" } ]', '[ { \"120\": [ \"120\", -100, 100, \"100\" ] } ]'),
(244, 3, 'Ministrs izbraukumos', '[ [ [ 120, \"N\\/A\" ], [ 59, \"N\\/A\" ], [ 98, \"N\\/A\" ], [ 113, \"N\\/A\" ] ] ]', '[ { \"380\": \"Duty 1\", \"318\": \"Duty 2\", \"382\": \"DUTY\", \"243\": \"Duty 1\", \"386\": \"Duty\", \"230\": \"Duty\" } ]', '[ { \"121\": [ \"121\", -24, 100, \"100\" ], \"120\": [ \"120\", -100, 100, \"100\" ] } ]'),
(233, 185, 'Colt-45', '[ [ [ 111, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ [ ] ]'),
(234, 185, 'AdvokÄtu EkipÄ“jums', '[ [ ] ]', '[ [ ] ]', '[ [ ] ]'),
(235, 185, 'Apsargs', '[ [ ] ]', '[ [ ] ]', '[ { \"162\": [ 162, -22, 1, \"5\" ] } ]'),
(236, 185, 'Apsargu EkipÄ“jums', '[ [ ] ]', '[ [ ] ]', '[ [ ] ]'),
(237, 185, 'Apsargs', '[ [ ] ]', '[ [ ] ]', '[ { \"162\": [ 162, -22, 1, \"5\" ] } ]'),
(238, 185, 'Apsargu EkipÄ“jums', '[ [ ] ]', '[ [ ] ]', '[ { \"162\": [ 162, -22, 5, \"5\" ] } ]'),
(239, 185, 'AdvokÄtu ekipejums', '[ [ ] ]', '[ [ ] ]', '[ { \"162\": [ 162, -22, 5, \"5\" ] } ]'),
(240, 185, '\"Juristi un advokÄti\"', '[ [ [ 111, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ { \"162\": [ 162, -22, 5, \"5\" ] } ]'),
(241, 185, 'Apsargs', '[ [ ] ]', '[ [ ] ]', '[ { \"162\": [ 162, -22, 5, \"5\" ] } ]'),
(242, 185, 'Apsargs', '[ [ ] ]', '[ [ ] ]', '[ { \"162\": [ 162, -22, 1, \"5\" ] } ]'),
(243, 185, 'Apsargs', '[ [ ] ]', '[ [ ] ]', '[ { \"162\": [ 162, -22, 5, \"5\" ] } ]'),
(250, 203, 'VadÄ«tÄjs', '[ [ [ 265, \"N\\/A\" ], [ 280, \"N\\/A\" ], [ 281, \"N\\/A\" ], [ 282, \"N\\/A\" ], [ 283, \"N\\/A\" ], [ 286, \"N\\/A\" ] ] ]', '[ { \"330\": \"Ä¢Ä“rbtuves\" } ]', '[ { \"168\": [ 168, -29, 120, \"120\" ], \"166\": [ 166, -24, 40, \"40\" ], \"167\": [ 167, -27, 40, \"40\" ] } ]'),
(279, 20, 'SekretÄrs/e', '[ [ [ 91, \"N\\/A\" ], [ 186, \"N\\/A\" ] ] ]', '[ { \"475\": \"Duty\", \"461\": \"DUTY POZÄªCIJA\", \"409\": \"LSZD DUTY\" } ]', '[ [ ] ]'),
(262, 1, 'Kadets', '[ [ [ 71, \"N\\/A\" ], [ 211, \"N\\/A\" ] ] ]', '[ { \"366\": \"VEHICLE\", \"376\": \"VEHICLE\", \"362\": \"VEHICLE\", \"372\": \"VEHICLE\", \"367\": \"VEHICLE\", \"377\": \"VEHICLE\", \"373\": \"VEHICLE\", \"363\": \"VEHICLE\", \"434\": \"akademija\", \"364\": \"VEHICLE\", \"360\": \"VEHICLE\", \"370\": \"VEHICLE\", \"374\": \"VEHICLE\", \"384\": \"Duty \", \"381\": \"VEHICLE\", \"369\": \"VEHICLE\", \"378\": \"VEHICLE\", \"365\": \"VEHICLE\", \"371\": \"VEHICLE\", \"361\": \"VEHICLE\", \"368\": \"VEHICLE\", \"375\": \"VEHICLE\" } ]', '[ { \"137\": [ \"137\", 126, \"1\" ], \"30\": [ \"30\", -3, 1, \"1\" ], \"135\": [ \"135\", 45, \"1\" ] } ]'),
(298, 43, 'VadÄ«tÄjs/Vietnieks', '[ [ [ 217, \"N\\/A\" ], [ 294, \"N\\/A\" ], [ 305, \"N\\/A\" ] ] ]', '[ { \"458\": \"Duty\" } ]', '[ [ ] ]'),
(266, 1, 'SWAT', '[ [ [ 285, \"N\\/A\" ] ] ]', '[ { \"366\": \"VEHICLE\", \"336\": \"Duty\", \"376\": \"VEHICLE\", \"362\": \"VEHICLE\", \"372\": \"VEHICLE\", \"367\": \"VEHICLE\", \"353\": \"Test\", \"377\": \"VEHICLE\", \"373\": \"VEHICLE\", \"363\": \"VEHICLE\", \"477\": \"kademija2\", \"364\": \"VEHICLE\", \"369\": \"VEHICLE\", \"360\": \"VEHICLE\", \"370\": \"VEHICLE\", \"374\": \"VEHICLE\", \"384\": \"Duty \", \"381\": \"VEHICLE\", \"368\": \"VEHICLE\", \"378\": \"VEHICLE\", \"365\": \"VEHICLE\", \"371\": \"VEHICLE\", \"361\": \"VEHICLE\", \"350\": \"LSPD\", \"375\": \"VEHICLE\" } ]', '[ { \"146\": [ \"146\", -31, 200, \"200\" ], \"136\": [ \"136\", 26, \"1\" ], \"142\": [ \"142\", -24, 14, \"35\" ], \"36\": [ \"36\", 29, \"\" ], \"37\": [ \"37\", 56, \"\" ], \"68\": [ \"68\", 27, \"4\" ], \"69\": [ \"69\", -100, 100, \"100\" ], \"144\": [ \"144\", -100, 49, \"49\" ], \"26\": [ \"26\", -44, 1, \"1\" ], \"30\": [ \"30\", -3, 1, \"1\" ], \"25\": [ \"25\", -43, 35, \"50\" ], \"24\": [ \"24\", -27, 35, \"35\" ], \"135\": [ \"135\", 45, \"1\" ], \"145\": [ \"145\", -29, 50, \"150\" ], \"20\": [ \"20\", -34, 10, \"10\" ], \"168\": [ \"168\", 6, \"\" ], \"33\": [ \"33\", 137, \"1\" ], \"151\": [ \"151\", 126, \"PD\" ] } ]'),
(280, 20, 'Apsargs', '[ [ [ 294, \"N\\/A\" ] ] ]', '[ { \"357\": \"Duty\", \"475\": \"Duty\", \"461\": \"DUTY POZÄªCIJA\", \"409\": \"LSZD DUTY\" } ]', '[ { \"208\": [ 208, 13, \"999\" ], \"209\": [ 209, 15, \"999\" ], \"206\": [ 206, 70, \"999\" ], \"210\": [ 210, 6, \"999\" ], \"213\": [ 213, -3, 999, \"999\" ] } ]'),
(275, 39, 'Apsargs ', '[ [ [ 111, \"N\\/A\" ], [ 120, \"N\\/A\" ], [ 186, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ [ ] ]'),
(276, 1, 'HSU ', '[ [ [ 286, \"N\\/A\" ] ] ]', '[ { \"366\": \"VEHICLE\", \"376\": \"VEHICLE\", \"362\": \"VEHICLE\", \"372\": \"VEHICLE\", \"367\": \"VEHICLE\", \"353\": \"Test\", \"377\": \"VEHICLE\", \"373\": \"VEHICLE\", \"363\": \"VEHICLE\", \"369\": \"VEHICLE\", \"360\": \"VEHICLE\", \"370\": \"VEHICLE\", \"374\": \"VEHICLE\", \"384\": \"Duty \", \"381\": \"VEHICLE\", \"364\": \"VEHICLE\", \"378\": \"VEHICLE\", \"365\": \"VEHICLE\", \"371\": \"VEHICLE\", \"361\": \"VEHICLE\", \"368\": \"VEHICLE\", \"375\": \"VEHICLE\" } ]', '[ { \"151\": [ \"151\", 126, \"PD\" ], \"142\": [ \"142\", -24, 35, \"35\" ], \"135\": [ \"135\", 45, \"1\" ], \"168\": [ \"168\", 6, \"\" ], \"30\": [ \"30\", -3, 1, \"1\" ], \"34\": [ \"34\", 13, \"\" ], \"69\": [ \"69\", -100, 100, 1 ] } ]'),
(297, 43, 'PÄÄ·is', '[ [ [ 162, \"N\\/A\" ], [ 200, \"N\\/A\" ], [ 198, \"N\\/A\" ], [ 261, \"N\\/A\" ], [ 157, \"N\\/A\" ], [ 158, \"N\\/A\" ], [ 159, \"N\\/A\" ], [ 160, \"N\\/A\" ] ] ]', '[ { \"458\": \"Duty\" } ]', '[ [ ] ]'),
(277, 1, 'DETEKTIVS', '[ [ [ 7, \"N\\/A\" ], [ 11, \"N\\/A\" ], [ 12, \"N\\/A\" ], [ 46, \"N\\/A\" ], [ 98, \"N\\/A\" ], [ 286, \"N\\/A\" ] ] ]', '[ { \"366\": \"VEHICLE\", \"376\": \"VEHICLE\", \"362\": \"VEHICLE\", \"372\": \"VEHICLE\", \"367\": \"VEHICLE\", \"353\": \"Test\", \"377\": \"VEHICLE\", \"373\": \"VEHICLE\", \"363\": \"VEHICLE\", \"364\": \"VEHICLE\", \"360\": \"VEHICLE\", \"370\": \"VEHICLE\", \"374\": \"VEHICLE\", \"384\": \"Duty \", \"381\": \"VEHICLE\", \"369\": \"VEHICLE\", \"378\": \"VEHICLE\", \"365\": \"VEHICLE\", \"371\": \"VEHICLE\", \"361\": \"VEHICLE\", \"368\": \"VEHICLE\", \"375\": \"VEHICLE\" } ]', '[ { \"142\": [ \"142\", -24, 35, \"35\" ], \"36\": [ \"36\", 29, \"\" ], \"37\": [ \"37\", 56, \"\" ], \"34\": [ \"34\", 13, \"\" ], \"151\": [ \"151\", 126, \"PD\" ], \"143\": [ \"143\", -29, 120, \"120\" ], \"135\": [ \"135\", 45, \"1\" ], \"26\": [ \"26\", -44, 1, \"1\" ], \"138\": [ \"138\", 137, \"PD (D)\" ], \"168\": [ \"168\", 6, \"\" ], \"25\": [ \"25\", -43, 50, \"50\" ], \"69\": [ \"69\", -100, 100, \"100\" ] } ]'),
(281, 53, 'PriekÅ¡nieks', '[ [ [ 249, \"N\\/A\" ], [ 50, \"N\\/A\" ], [ 120, \"N\\/A\" ] ] ]', '[ { \"387\": \"Duty\" } ]', '[ [ ] ]'),
(282, 53, 'Darbinieks', '[ [ ] ]', '[ { \"387\": \"Duty\" } ]', '[ [ ] ]'),
(285, 61, 'PriekÅ¡niecÄ«ba', '[ [ [ 118, \"N\\/A\" ], [ 124, \"N\\/A\" ], [ 165, \"N\\/A\" ] ] ]', '[ { \"410\": \"Duty\" } ]', '[ [ ] ]'),
(286, 61, 'Celtnieks', '[ [ [ 260, \"N\\/A\" ], [ 16, \"N\\/A\" ], [ 27, \"N\\/A\" ] ] ]', '[ { \"410\": \"Duty\" } ]', '[ { \"178\": [ 178, 57, \"100\" ], \"176\": [ 176, 227, \"1\" ], \"177\": [ 177, 157, \"1\" ] } ]'),
(289, 68, 'MehÄniÄ·is', '[ [ [ 50, \"N\\/A\" ] ] ]', '[ { \"425\": \"DUTY VIETA\", \"423\": \"VEHICLE\" } ]', '[ [ ] ]'),
(291, 35, ';;;;;;;t;;;;;;;t;t;t;t;t;t;;;;;;;;', '[ [ ] ]', '[ [ ] ]', '[ { \"191\": [ 191, -21, 500, \"500\" ] } ]'),
(292, 35, 'ttttttttttttttt', '[ [ ] ]', '[ [ ] ]', '[ { \"191\": [ 191, -21, 55, \"500\" ] } ]'),
(293, 35, 'Test', '[ [ ] ]', '[ [ ] ]', '[ [ ] ]'),
(294, 37, 'Zimby', '[ [ ] ]', '[ { \"452\": \"VEHICLE\" } ]', '[ [ ] ]'),
(295, 40, 'RÄcija', '[ [ [ 50, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ [ ] ]'),
(296, 40, 'duty', '[ [ ] ]', '[ [ ] ]', '[ [ ] ]'),
(301, 52, 'Los Santos Buvdarbi', '[ [ [ 50, \"N\\/A\" ], [ 124, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ [ ] ]'),
(302, 1, 'Cietuma apsargs', '[ [ [ 285, \"N\\/A\" ] ] ]', '[ { \"384\": \"Duty \" } ]', '[ { \"30\": [ \"30\", -3, 1, \"1\" ], \"149\": [ \"149\", 56, \"PD\" ], \"69\": [ \"69\", -100, 100, \"100\" ] } ]'),
(303, 56, 'MehÄniÄ·is', '[ [ [ 50, \"N\\/A\" ], [ 305, \"N\\/A\" ], [ 309, \"N\\/A\" ], [ 93, \"N\\/A\" ], [ 211, \"N\\/A\" ] ] ]', '[ { \"476\": \"asdsadad\" } ]', '[ [ ] ]');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `duty_locations`
--

CREATE TABLE `duty_locations` (
  `id` int(11) NOT NULL,
  `factionid` int(11) NOT NULL,
  `name` text NOT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `z` int(11) DEFAULT NULL,
  `radius` int(11) DEFAULT NULL,
  `dimension` int(11) DEFAULT '0',
  `interior` int(11) DEFAULT '0',
  `vehicleid` int(11) DEFAULT NULL,
  `model` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Used for custom duty locations.';

--
-- Gegevens worden geëxporteerd voor tabel `duty_locations`
--

INSERT INTO `duty_locations` (`id`, `factionid`, `name`, `x`, `y`, `z`, `radius`, `dimension`, `interior`, `vehicleid`, `model`) VALUES
(194, 183, 'Garaza', 1250, 7, 1008, 10, 347, 18, NULL, NULL),
(21, 50, 'DLE HQ - Lockers', 1570, -1684, 64, 5, 2249, 7, NULL, NULL),
(184, 172, 'Test', 140, 1386, 1085, 10, 237, 5, NULL, NULL),
(183, 172, 'FBI', 140, 1386, 1085, 10, 237, 5, NULL, NULL),
(182, 172, 'FBI', 140, 1386, 1085, 10, 237, 5, NULL, NULL),
(476, 56, 'asdsadad', 1309, -854, 40, 10, 0, 0, NULL, NULL),
(55, 69, 'Ship', -1588, 50, 17, 10, 0, 0, NULL, NULL),
(56, 69, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 13223, 443),
(57, 69, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 12755, 443),
(58, 47, 'Gate Cabin', 1954, -2184, 14, 5, 0, 0, NULL, NULL),
(59, 47, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 12523, 433),
(60, 47, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 12525, 470),
(61, 47, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 12524, 470),
(62, 47, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 12995, 470),
(68, 47, 'Area69', 214, 1868, 13, 10, 0, 0, NULL, NULL),
(192, 183, 'test', 1805, -1715, 14, 1, 0, 0, NULL, NULL),
(193, 183, 'GaraÅ¾a', 1250, 7, 1008, 10, 347, 18, NULL, NULL),
(191, 183, 'asd', 1264, -17, 1001, 10, 347, 18, NULL, NULL),
(214, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 65, 416),
(87, 50, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 13893, 427),
(88, 50, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 13844, 582),
(89, 50, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 12219, 609),
(90, 50, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 11904, 470),
(105, 69, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 13191, 578),
(116, 59, 'SADC', 1317, -867, 40, 10, 0, 0, NULL, NULL),
(117, 64, 'Duty Room', 1488, 1370, 17, 3, 1883, 24, NULL, NULL),
(118, 64, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 8007, 579),
(122, 50, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 13883, 405),
(125, 64, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 8836, 578),
(126, 47, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 10024, 560),
(135, 71, 'T', 1102, -340, 75, 10, 0, 0, NULL, NULL),
(136, 71, 'TÃ¶Ã¶', 1102, -340, 75, 10, 0, 0, NULL, NULL),
(151, 92, 'drop', 446, 1413, 1084, 10, 85, 2, NULL, NULL),
(158, 95, 'Celtnieka duty', 1770, -1803, 14, 10, 0, 0, NULL, NULL),
(218, 88, 'S&D Tuning', 617, -7, 1001, 5, 430, 1, NULL, NULL),
(164, 118, 'Bankas duty', 1817, -1373, 15, 10, 0, 0, NULL, NULL),
(172, 129, 'DrÄ“bju skapis', 1913, -1877, 14, 1, 0, 0, NULL, NULL),
(174, 138, 'mehduty', 612, -22, 1005, 10, 233, 1, NULL, NULL),
(201, 197, 'Apsardze', 2142, -1432, 294, 10, 585, 2, NULL, NULL),
(333, 220, 'Darbinieks', 2169, -2273, 13, 10, 0, 0, NULL, NULL),
(197, 183, 'hz', 1788, -1696, 13, 10, 0, 3, NULL, NULL),
(198, 190, 'GasMonkey', 258, -41, 1002, 10, 536, 14, NULL, NULL),
(199, 174, 'RKD Corporation Dutijs', 415, 2538, 19, 5, 0, 0, NULL, NULL),
(202, 197, 'Apsardze', 2142, -1432, 294, 10, 585, 2, NULL, NULL),
(203, 199, 'apsardze', 2141, -1432, 294, 10, 585, 2, NULL, NULL),
(204, 199, 'duty', 2139, -1432, 294, 5, 585, 2, NULL, NULL),
(206, 203, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 653, 589),
(207, 203, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 745, 426),
(362, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 246, 596),
(233, 122, 'Duty', 1905, -1869, 13, 10, 0, 0, NULL, NULL),
(365, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 250, 596),
(234, 98, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 1826, 477),
(361, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 249, 596),
(240, 102, 'Drop', 313, -140, 1000, 10, 643, 7, NULL, NULL),
(242, 139, 'duty', 1386, 1477, 11, 5, 613, 45, NULL, NULL),
(387, 53, 'Duty', 621, -74, 998, 10, 184, 2, NULL, NULL),
(349, 4, 'LSAK', 1795, -1361, 34, 10, 7, 3, NULL, NULL),
(248, 137, 'Fun Kart', 973, -215, 979, 5, 630, 3, NULL, NULL),
(249, 148, 'Apsargs', 1, -3, 40, 5, 731, 24, NULL, NULL),
(250, 148, 'apsargs', 1, -3, 40, 5, 731, 24, NULL, NULL),
(251, 148, ' apsargs ggggggg', 0, -3, 40, 10, 731, 24, NULL, NULL),
(252, 148, 'random1', 0, -3, 40, 5, 731, 24, NULL, NULL),
(253, 149, 'Apsargi', -2, -3, 40, 5, 731, 24, NULL, NULL),
(254, 148, 'apsargs', 0, -4, 40, 5, 740, 24, NULL, NULL),
(255, 148, 'duty', 0, -4, 40, 5, 740, 24, NULL, NULL),
(422, 2, 'duty', 1581, 1790, 2082, 10, 3, 3, NULL, NULL),
(257, 157, 'LSB / DARBINIEKI', 2449, -2620, 14, 6, 0, 0, NULL, NULL),
(388, 3, 'Duty', 258, -38, 1002, 10, 281, 14, NULL, NULL),
(268, 175, 'Lidosta', 2148, -1629, 390, 10, 863, 56, NULL, NULL),
(281, 185, 'duty', -1, -5, 40, 5, 314, 24, NULL, NULL),
(282, 185, '/duty', -1, -5, 40, 5, 314, 24, NULL, NULL),
(283, 185, 'Juristi un advokÄti', -1, -5, 40, 10, 314, 24, NULL, NULL),
(284, 185, 'AdvokÄts', 0, -5, 40, 5, 314, 24, NULL, NULL),
(285, 185, 'PriekÅ¡nieks', -1, -5, 40, 10, 314, 24, NULL, NULL),
(286, 185, '1', -1, -5, 40, 10, 314, 24, NULL, NULL),
(287, 185, 'TEST', -1, -5, 40, 10, 314, 24, NULL, NULL),
(288, 185, 'duty', -1, -5, 40, 10, 314, 24, NULL, NULL),
(289, 185, 'duty', -1, -5, 40, 10, 314, 24, NULL, NULL),
(290, 185, 'PriekÅ¡nieka Vietnieks', 0, -5, 40, 5, 314, 24, NULL, NULL),
(291, 185, '\"Juristi un advokÄti\"', 0, -5, 40, 5, 314, 24, NULL, NULL),
(292, 185, 'DUTY', -1, -3, 40, 10, 314, 24, NULL, NULL),
(293, 185, 'Duty.', -1, -3, 40, 10, 314, 24, NULL, NULL),
(294, 185, 'dssd', 261, 1249, 1084, 10, 314, 9, NULL, NULL),
(295, 185, 'test', 262, 1241, 1084, 10, 314, 9, NULL, NULL),
(296, 185, '3', 261, 1242, 1084, 10, 314, 9, NULL, NULL),
(298, 185, 'TEST', -1, -3, 40, 5, 314, 24, NULL, NULL),
(299, 185, 'John Ocean', -3, -1, 40, 10, 314, 24, NULL, NULL),
(300, 185, 'Duty', -3, -1, 40, 5, 314, 122, NULL, NULL),
(301, 185, 'Duty', -3, -1, 40, 5, 314, 122, NULL, NULL),
(302, 185, 'DUTY', -1, -1, 40, 10, 314, 24, NULL, NULL),
(303, 185, 'sdsd', 1656, -1657, 23, 10, 0, 0, NULL, NULL),
(305, 185, '/duty', -1, -5, 40, 5, 314, 24, NULL, NULL),
(363, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 245, 596),
(332, 214, 'Kraska Product Naktskluba apsargs', -189, -113, 1001, 5, 1053, 14, NULL, NULL),
(330, 203, 'Ä¢Ä“rbtuves', 204, 157, 1003, 5, 1006, 3, NULL, NULL),
(335, 9, 'Paul_Anderson', 2568, -2228, 13, 10, 0, 0, NULL, NULL),
(364, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 247, 596),
(338, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 34, 416),
(339, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 35, 416),
(340, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 37, 416),
(341, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 67, 438),
(342, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 68, 407),
(360, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 251, 596),
(344, 25, 'duty', 1740, -1591, 14, 10, 0, 0, NULL, NULL),
(366, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 253, 426),
(384, 1, 'Duty ', 290, 224, 1040, 10, 1, 3, NULL, NULL),
(367, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 268, 560),
(368, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 269, 560),
(369, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 270, 494),
(370, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 258, 523),
(371, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 256, 523),
(372, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 257, 523),
(373, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 254, 490),
(374, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 7, 525),
(375, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 117, 528),
(376, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 116, 427),
(377, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 249, 596),
(378, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 82, 497),
(379, 46, 'hj', 2412, -2481, 8, 10, 0, 0, NULL, NULL),
(381, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 252, 426),
(385, 4, 'GarÄÅ¾as duty', 1522, 1588, 11, 10, 99, 25, NULL, NULL),
(417, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 474, 597),
(425, 68, 'DUTY VIETA', -2137, 644, 1206, 10, 428, 42, NULL, NULL),
(477, 1, 'kademija2', 1204, -1345, 13, 10, 0, 0, NULL, NULL),
(426, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 33, 407),
(427, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 27, 416),
(428, 23, '1', 2528, -1717, 936, 10, 667, 1, NULL, NULL),
(429, 23, 'adadada', 2528, -1717, 936, 10, 667, 1, NULL, NULL),
(430, 23, '121', 2528, -1717, 936, 10, 667, 1, NULL, NULL),
(431, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 3, 596),
(432, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 17, 596),
(433, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 20, 597),
(434, 1, 'akademija', 1506, -1596, 13, 5, 0, 0, NULL, NULL),
(435, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 19, 597),
(436, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 5, 596),
(437, 29, 'duty', 2006, -1757, 13, 10, 0, 0, NULL, NULL),
(443, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 466, 426),
(439, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 386, 598),
(440, 3, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 46, 579),
(441, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 386, 598),
(442, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 385, 598),
(444, 35, 'tttttt', 2320, -2240, 13, 5, 0, 0, NULL, NULL),
(445, 35, '555555555555555555555555555555', 1963, -1966, 13, 6, 0, 0, NULL, NULL),
(446, 35, '213', 1881, -1750, 13, 5, 0, 0, NULL, NULL),
(447, 35, 'tttttttttt', 2771, -2515, 14, 5, 0, 0, NULL, NULL),
(448, 35, '5', 2768, -2509, 14, 5, 0, 0, NULL, NULL),
(450, 32, 'Car', 2123, -1344, 24, 6, 0, 0, NULL, NULL),
(451, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 19, 597),
(452, 37, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 671, 579),
(453, 40, 'MehÄniÄ·u Duty', 1700, -1469, 14, 5, 0, 0, NULL, NULL),
(454, 40, 'Duty', 1700, -1470, 14, 6, 0, 0, NULL, NULL),
(455, 40, 'Meha', 1700, -1470, 14, 4, 0, 0, NULL, NULL),
(464, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 467, 405),
(458, 43, 'Duty', -2026, -114, 1039, 10, 542, 21, NULL, NULL),
(462, 3, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 45, 409),
(463, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 1118, 506),
(475, 20, 'Duty', 1530, 1352, 15, 10, 136, 11, NULL, NULL),
(465, 3, 'DutyPos', 258, -37, 1002, 10, 281, 14, NULL, NULL),
(466, 4, 'LSAK DUTY', 1795, -1361, 34, 10, 7, 3, NULL, NULL),
(467, 52, 'Los Santos Buvdari', 2503, -2411, 14, 1, 0, 0, NULL, NULL),
(468, 52, 'LSB', 2503, -2411, 14, 1, 0, 0, NULL, NULL),
(469, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 385, 598),
(470, 3, 'DeffenderLOH', 258, -42, 1002, 10, 281, 14, NULL, NULL),
(471, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 113, 523),
(472, 3, '1', 141, -274, 2, 10, 0, 0, NULL, NULL),
(473, 52, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 1251, 579),
(474, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 384, 598);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `elections`
--

CREATE TABLE `elections` (
  `idelections` varchar(45) NOT NULL,
  `Votes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `elevators`
--

CREATE TABLE `elevators` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `tpx` decimal(10,6) DEFAULT '0.000000',
  `tpy` decimal(10,6) DEFAULT '0.000000',
  `tpz` decimal(10,6) DEFAULT '0.000000',
  `dimensionwithin` int(5) DEFAULT '0',
  `interiorwithin` int(5) DEFAULT '0',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `car` tinyint(3) UNSIGNED DEFAULT '0',
  `disabled` tinyint(3) UNSIGNED DEFAULT '0',
  `rot` decimal(10,6) DEFAULT '0.000000',
  `tprot` decimal(10,6) DEFAULT '0.000000',
  `oneway` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `elevators`
--

INSERT INTO `elevators` (`id`, `x`, `y`, `z`, `tpx`, `tpy`, `tpz`, `dimensionwithin`, `interiorwithin`, `dimension`, `interior`, `car`, `disabled`, `rot`, `tprot`, `oneway`) VALUES
(3, '1789.690674', '-1370.509155', '33.795311', '1789.762939', '-1369.685303', '33.789299', 7, 3, 7, 3, 0, 0, '0.288391', '182.433517', 0),
(4, '290.907227', '212.241211', '1040.025024', '291.008789', '209.888672', '1040.025024', 1, 3, 1, 3, 0, 0, '180.532852', '0.854218', 0),
(5, '732.689453', '-1344.909180', '13.517524', '1532.886719', '1350.732422', '10.961098', 0, 0, 136, 11, 0, 0, '90.339203', '272.896301', 0),
(6, '1537.384766', '1615.730469', '11.048006', '2669.709961', '-2598.908203', '13.507591', 99, 25, 0, 0, 2, 0, '243.567871', '137.098907', 0),
(7, '1575.231201', '1804.083130', '2083.376953', '1147.926758', '-1344.115234', '13.647207', 3, 3, 0, 0, 0, 0, '339.287720', '9.050110', 0),
(8, '290.067383', '250.319336', '1040.025024', '284.789063', '210.608398', '1040.025024', 1, 3, 1, 3, 0, 0, '165.223145', '86.417023', 0),
(9, '1569.868896', '1804.083130', '2083.376953', '1161.959961', '-1330.153320', '31.491268', 3, 3, 0, 0, 0, 0, '2.194580', '182.675217', 0),
(10, '285.143555', '223.392380', '1040.047974', '301.411133', '224.708786', '1040.047974', 1, 3, 1, 3, 0, 0, '10.033417', '2.623016', 0),
(11, '1105.840820', '-1313.582031', '79.394394', '281.716797', '223.453903', '1040.047974', 287, 1, 1, 3, 0, 0, '179.236450', '356.827637', 0),
(12, '1072.889648', '-1288.298828', '79.140625', '1587.999023', '-1632.728516', '13.382813', 287, 1, 0, 0, 2, 0, '358.354767', '171.556885', 0),
(13, '1565.036133', '-1666.988281', '28.395607', '296.351563', '224.708786', '1040.047974', 0, 0, 1, 3, 0, 0, '186.416107', '359.645691', 0),
(14, '1413.209961', '-1780.175781', '15.435560', '1489.334351', '-1928.612305', '291.130005', 0, 0, 2, 3, 0, 0, '89.328430', '358.415192', 0),
(15, '-65.105469', '-72.993164', '1008.145752', '982.722656', '-1755.019531', '13.601718', 19, 3, 0, 0, 2, 0, '88.932922', '358.041656', 0),
(16, '1933.818359', '-2324.344727', '13.734614', '1922.782227', '-1860.103516', '13.561939', 553, 25, 0, 0, 2, 0, '172.600586', '156.598755', 0),
(17, '530.523071', '-1302.815186', '17.234680', '548.584961', '-1297.436523', '27.240566', 0, 0, 0, 0, 0, 0, '178.456421', '90.696259', 0),
(18, '2125.786133', '-1446.391602', '291.425903', '2125.436523', '-1444.462891', '291.425903', 363, 2, 363, 2, 0, 0, '263.277649', '290.101166', 0),
(19, '1554.937500', '-1675.655273', '16.195313', '246.631836', '63.226563', '1003.714600', 5, 0, 65406, 6, 0, 0, '187.349960', '325.582062', 0),
(20, '544.990234', '-1306.149414', '27.240566', '525.427734', '-1299.615234', '17.234680', 0, 0, 0, 0, 2, 0, '358.937042', '177.539001', 0),
(21, '1512.053711', '1355.334961', '14.455365', '1513.006836', '1355.312500', '14.455365', 136, 11, 136, 11, 0, 0, '272.676575', '98.485687', 0),
(23, '1528.709473', '1578.558228', '11.800000', '1789.357422', '-1360.978516', '29.236000', 99, 25, 7, 3, 0, 0, '177.033630', '87.707947', 0),
(25, '-61.533203', '-1117.080078', '1.078125', '1535.251953', '1577.741211', '10.820313', 0, 0, 66, 0, 0, 0, '275.214478', '159.466248', 0),
(33, '-810.129883', '487.407227', '1359.801758', '2295.414063', '1678.502930', '1108.098389', 550, 1, 551, 1, 0, 0, '177.440186', '89.416351', 0),
(36, '-2047.343750', '-121.369141', '35.255840', '-2047.140625', '-90.412109', '34.792763', 0, 0, 0, 0, 1, 0, '3.655762', '240.483521', 0),
(57, '2154.793945', '-1422.951172', '293.737488', '2154.093750', '-1422.980469', '293.737488', 519, 2, 519, 2, 0, 0, '85.763336', '269.375153', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `emailaccounts`
--

CREATE TABLE `emailaccounts` (
  `id` int(11) NOT NULL,
  `username` text,
  `password` text,
  `creator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `emailaccounts`
--

INSERT INTO `emailaccounts` (`id`, `username`, `password`, `creator`) VALUES
(1, 'Danex@lspd.gov', '1684099a24b2f9b332ae5d6e1f921cd2', 14);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `sender` text,
  `receiver` text,
  `subject` text,
  `message` text,
  `inbox` int(1) NOT NULL DEFAULT '0',
  `outbox` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `factions`
--

CREATE TABLE `factions` (
  `id` int(11) NOT NULL,
  `name` text,
  `bankbalance` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `rank_1` text,
  `rank_2` text,
  `rank_3` text,
  `rank_4` text,
  `rank_5` text,
  `rank_6` text,
  `rank_7` text,
  `rank_8` text,
  `rank_9` text,
  `rank_10` text,
  `rank_11` text,
  `rank_12` text,
  `rank_13` text,
  `rank_14` text,
  `rank_15` text,
  `rank_16` text,
  `rank_17` text,
  `rank_18` text,
  `rank_19` text,
  `rank_20` text,
  `wage_1` int(11) DEFAULT '100',
  `wage_2` int(11) DEFAULT '100',
  `wage_3` int(11) DEFAULT '100',
  `wage_4` int(11) DEFAULT '100',
  `wage_5` int(11) DEFAULT '100',
  `wage_6` int(11) DEFAULT '100',
  `wage_7` int(11) DEFAULT '100',
  `wage_8` int(11) DEFAULT '100',
  `wage_9` int(11) DEFAULT '100',
  `wage_10` int(11) DEFAULT '100',
  `wage_11` int(11) DEFAULT '100',
  `wage_12` int(11) DEFAULT '100',
  `wage_13` int(11) DEFAULT '100',
  `wage_14` int(11) DEFAULT '100',
  `wage_15` int(11) DEFAULT '100',
  `wage_16` int(11) DEFAULT '100',
  `wage_17` int(11) DEFAULT '100',
  `wage_18` int(11) DEFAULT '100',
  `wage_19` int(11) DEFAULT '100',
  `wage_20` int(11) DEFAULT '100',
  `motd` text,
  `note` text,
  `fnote` text,
  `phone` varchar(20) DEFAULT NULL,
  `max_interiors` int(11) DEFAULT '20'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `factions`
--

INSERT INTO `factions` (`id`, `name`, `bankbalance`, `type`, `rank_1`, `rank_2`, `rank_3`, `rank_4`, `rank_5`, `rank_6`, `rank_7`, `rank_8`, `rank_9`, `rank_10`, `rank_11`, `rank_12`, `rank_13`, `rank_14`, `rank_15`, `rank_16`, `rank_17`, `rank_18`, `rank_19`, `rank_20`, `wage_1`, `wage_2`, `wage_3`, `wage_4`, `wage_5`, `wage_6`, `wage_7`, `wage_8`, `wage_9`, `wage_10`, `wage_11`, `wage_12`, `wage_13`, `wage_14`, `wage_15`, `wage_16`, `wage_17`, `wage_18`, `wage_19`, `wage_20`, `motd`, `note`, `fnote`, `phone`, `max_interiors`) VALUES
(1, 'Los Santos Police Department', 220288, 2, 'Intervija', 'AKADÄ’MIJA 01. DECEMBRÄª', '-', '-', '-', '-', '-', '-', '-', 'Kadets', 'Virsnieks I', 'Virsnieks II', 'Virsnieks III', 'SerÅ¾ants I', 'SerÅ¾ants II', 'Leitnants', 'Kapteinis', 'Komandieris', 'PriekÅ¡nieka vietnieks', 'PriekÅ¡nieks', 0, 100, 0, 0, 0, 0, 0, 0, 0, 400, 500, 550, 600, 640, 680, 700, 750, 800, 825, 850, 'Los Santos Policijas DepartamentÄ! | RÄcijas Frekvence 321.911 | IgnorÄ“ noteikumus - KICK 3 dienas nav on -KICK | JAUNA FREKVENCsE, NOMAINIET!', 'SvarÄ«gi update:\n\n2018.08.02 - A. Pogba Virsnieks I -> Virsnieks II, iecelts C1 divÄ«zijÄ (darbinieku trÅ«kums, viÅ†Å¡ labi strÄdÄ)\n2018.08.02 - C. Kendrick Virsnieks I -> Virsnieks II, paliek virsnieku divÄ«zijÄ, 1. patruÄ¼a (darbinieku trÅ«kums, labi pÄrzina kÄrtÄ«bu, RPoja pie bÄ«stamÄ)\n2018.08.02 - J. Jamal AtvaÄ¼inÄts -> Virsnieks III, undercover divÄ«zija (bija augstos rankos agrÄk, aizgÄja prom, kad aizgÄja bÄ«stamais)\n2018.08.02 - E. Reedl AtvaÄ¼inÄts -> Virsnieks III, undercover divÄ«zija (bija augstos rankos agrÄk, aizgÄja prom, kad aizgÄja bÄ«stamais)\n2018.08.03 - K. Scott -> Komandieris ((bÄ«Å¡tamais))\n2018.08.03 - J. Rittenhouse Komandiere -> SerÅ¾ants II (neaktivitÄte, bÄ«stamais komandieris)\n2018.08.05 - C. Kendrick Virsnieks II -> AtstÄdinÄts. (nonRP pameta F3)\n2018.08.05 - O. Grace PriekÅ¡nieka vietniece -> PriekÅ¡niece (C. Huckleberry nevÄ“las turpinÄt vadÄ«t)\n2018.08.05 - L. Johnderso, S. Walke, L. Speedster -> Virsnieks I (jauni darbinieki)\n2018.08.05 - Izmesti daudzi neaktÄ«vie un tie, kas neieradÄs uz akadÄ“miju.\n2018.08.06 - L. Johnderson un T. Brooks DISHONORABLE DISCHARGE\n2018.08.06 - D. Fujimura Virsnieks I -> SerÅ¾ants I (Biistamais paaugstina)\n2018.08.06 - A. A. Gagoze pieÅ†emta kÄ Virsnieks I (akadÄ“mija)\n\n\nPAÅ REIZÄ’JO DARBINIEKU UZSKAITE:\n\nRanks - VÄrds - Å½etona nr. - DivÄ«zija\n\nPriekÅ¡niece - O. Grace - #1871 - STAFF I divÄ«zija\nKomandieris - K.Scott  - #1002 - STAFF II\nLeitnants - D. Nash - #1003 -SpeciÄlo operÄciju divÄ«zija\nSerÅ¾ants II - J. Rittenhouse - #1041 -C1 Satiksmes kontroles divÄ«zija - ATVAÄ»INÄ€JUMÄ€\nSerÅ¾ants I - D. Fujimura - #007 - virsnieku divÄ«zija\nSerÅ¾ants I - J. Jackson - #1211 - Undercover divÄ«zija\nSerÅ¾ants I - E. Reed - #1212 - Undercover divÄ«zija\nVirsnieks II - A. Pogba - #1152 - C1 satiksmes kontroles divÄ«zija\nVirsnieks I - L. Speedster - #1131 - virsnieku divÄ«zija, PatruÄ¼a II\nVirsnieks I - S. Walke - #1132 - virsnieku divÄ«zija, PatruÄ¼a II\nVirsnieks I - A. A. Gagoze - #1133 - virsnieku dÄ«vizija, PatruÄ¼a V\nVirsnieks I - R. Jackson - #1134 - virsnieku divÄ«zija. PatruÄ¼a III\nVirsnieks I - O. Basterenko - #1135 - virsnieku divÄ«zija, PatruÄ¼a IV\n\n\n\nR. Jackson 1. brÄ«dinÄjums - neizmanto rÄciju atbilstoÅ¡i saziÅ†ai.\n\n\n\n', '\n------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\nDIVÄªZIJU UN TO BIEDRU SARAKSTSa\n\n- STAFF divÄ«zija -\n\nSTAFF - 1: (Name)\nSTAFF - 2:  (Name)\n\n\n- Undercover divÄ«zija -\n\n...\n\n\n- Satiksmes kontroles divÄ«zija -\n\nVadÄ«tÄjs: (name)\n\nC1: ...\n\n\n- SpeciÄlo operÄciju divÄ«zija -\n\nVadÄ«tÄjs: Name. . .\n\n\n- Virsnieku divÄ«zija - \n                                                                  \nPatruÄ¼a 1: T.Lawrance #044 / M.Melder\nPatruÄ¼a 2: \nPatruÄ¼a 3: \nPatruÄ¼a 4: \nPatruÄ¼a 5: \n\n------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\nJebkuram PD darbiniekam jÄizmanto TeamSpeak3 patruÄ¼as laikÄ!!\nserveris: ts3.kick.lv\n------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n\nTYPE OF UNIT\n\nA - Duo patruÄ¼a\nD - Special Weapons And Tactics\nL - Solo patruÄ¼a\nW - Undercover vienÄ«ba\n\n------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n\nTavu CALLSIGN izveido Å¡Ädi: \n\n01 - TYPE OF UNIT - BADGE\n\n------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n\n     ~~~~~~~~~~ Los Santos Policijas Departaments ~~~~~~~~~~                  \n                                                                                        ~~~~~~~~~~ Darbinieku rokasgrÄmata ~~~~~~~~~~                                                                                      \nNeaktÄ«vs 2 vai vairÄk dienas - uzreiz kick no F3\nLos Santos Policijas Departaments ~ RÄcijas saziÅ†a\n                                                                        RÄcijas FREKVENCE: 113.911\nts3.kick.lv\n\n\nKomandas:\n/ticket  -izrakstÄ«t sodu uz personas\n/ticketveh  -izrakstÄ«t sodu uz maÅ¡Ä«nas\n/arrest  -atrodoties kameru tuvumÄ, atvÄ“rt kameru pÄrvaldÄ«Å¡anas logu\n/rbs  -atver ceÄ¼a objektu pÄrvaldnieku\n-/nearbyrbs  -parÄda\n-/delrb  -izdzÄ“Å¡ ceÄ¼a objektu\n/throwspikes  -izmet dzelzs nagliÅ†as\n-/nearbyspikes  -parÄda blakus esoÅ¡Äs dzelzs nagliÅ†as\n-/removespikes  -izdzÄ“Å¡ dzelzs nagliÅ†as\n-/togglespeed 60 - Uzliek tavam auto radaru,kas uzrÄda ar kÄdu Ätrumu brauc cilvÄ“ks tev pretÄ«.\n          \nRÄcijas saziÅ†as desmit-kodi:                                                                  \n    10-1 - VisÄm vienÄ«bÄm tikties noteiktajÄ 10-20 \n    10-3 - Noraidu / NÄ“ \n    10-4 - Sapratu / Labi \n    10-5 - AtkÄrtojiet pÄ“dÄ“jo ziÅ†u \n    10-6 - IgnorÄ“t / NeievÄ“rot pÄ“dÄ“jo ziÅ†u \n    10-7 - Neesmu pieejams zvaniem\n   10-8 - Pieejams zvaniem\n    10-10 - Pieprasa Statusa PrecizÄ“jumu (Atbildiet ar VÄrdu, PakÄpi (Rangu), 10-20, un Statusu.) \n    10-12-E - Pieprasa nekavÄ“joties palÄ«dzÄ«bu (KautiÅ†Å¡ / ApÅ¡aude) \n    10-14 - Pieprasa biedru, kurÅ¡ spÄ“tu atbraukt pakaÄ¼ uz noteikto 10-20 \n    10-15 - AizdomÄs turamÄ persona aizturÄ“ta - AizdomÄs turamo skaits - AizdomÄs TL apraksts \n    10-20 - AtraÅ¡anÄs vieta / atraÅ¡anÄs vietas precizÄ“Å¡ana katru brÄ«di pakaÄ¼dzÄ«Å¡anÄs brÄ«dÄ« \n    10-22 - Personas SÅ«dzÄ«ba (Atbrauciet Å¡eit, aizbrauciet tur...) \n    10-33 â€“ Atrodos lielÄ riska situÄcijÄ, nespÄ“ju atbildÄ“t ar pilno aprakstu \n    10-41 - IespÄ“jama NelegÄla AktivitÄte\n    10-42 - Uzbrukums policijas darbiniekam \n    10-55 - Auto pÄrbaude/ Auto apturÄ“Å¡ana (IekÄ¼aujiet 10-60, 10-61, un 10-20.) \n    10-56 - MDC pÄrbaude (DatubÄzes) \n    10-57-F - UzsÄku pakaÄ¼dzÄ«Å¡anos ar kÄjÄm \n    10-57-V - UzsÄku pakaÄ¼dzÄ«Å¡anos ar auto \n    10-58 - Felony Stop\n    10-60 - Auto Apraksts \n    10-61 - AizdomÄs turamÄs personas apraksts \n    10-70 - Pieprasu palÄ«dzÄ«bu \n    10-98 - TuvÄkÄ palÄ«dzÄ«ba nav vajadzÄ«ga \n    10-99 - SituÄcija pabeigta (aizdomÄs turamÄ persona arestÄ“ta utt) \n\nSituÄciju un Statusu kodi:\n\nCode 0 - Trauksme, visas vienÄ«bas dodas nekavÄ“joties\nCode 1 - Ä»oti zems risks, atbildam bez bÄkugunÄ«m/sirÄ“nÄm\nCode 2 - VidÄ“js risks, atbildat ar bÄkugunÄ«m bez skaÅ†as\nCode 3 - Augsts risks, braucam ar sirÄ“nÄm\nCode 4 - SituÄcija beigusies, turpinu patruÄ¼u/S1\nCode 6 - Ä€rpus auto                                       \n\n\nIdentifikÄcijas kodi:\n    IC-1: BaltÄdainais\n    IC-2: AfroamerikÄnietis\n    IC-3: LatÄ«Å†amerikÄnietis vai MeksikÄnietis\n    IC-4: AziÄts\n    IC-5: NezinÄma izcelsme\n\nLos Santos Policijas Departaments ~ CSDD noteikumi\n\n1. Ä€truma pÄrsniegÅ¡ana - transportlÄ«dzekÄ¼a vadÄ«tÄjiem ir jÄpÄrvietojas tikai un vienÄ«gi ar konkrÄ“tajÄ vietÄ atÄ¼auto Ätrumu. To ir aizliegts pÄrsniegt. Ä€truma pÄrsniegÅ¡anas gadÄ«jumÄ var tikt piemÄ“rots naudas sods:\n\nÄ€truma ierobeÅ¾ojums pÄrkÄpts par  10 - 15km/h - 200$ naudas sods.\n\nÄ€truma ierbeÅ¾ojums pÄrkÄpts par 15 - 25/km/h â€“ 400$ naudas sods.\n\nÄ€truma ierbeÅ¾ojums pÄrkÄpts par  25 - 35km/h - 600$ naudas sods.\n\nÄ€truma ierbeÅ¾ojums pÄrkÄpts par  35 km/h vai vairÄk - 800$ naudas sods.\n\n \n\n2. Satiksmes kavÄ“Å¡ana - Ir aizliegts pÄrvietojoties ar pÄrlieku lÄ“nu Ätrumu, tÄdÄ“jÄdi, kavÄ“jot transportlÄ«dzekÄ¼a satiksmi. Par noteikuma pÄrkÄpumu var tikt piemÄ“rots naudas sods:\n\n300$ naudas sods.\n\n \n\n3. BraukÅ¡ana bez transportlÄ«dzekÄ¼a  atbilstoÅ¡Äs vadÄ«tÄja apliecÄ«bas â€“ braukÅ¡ana bez tiesÄ«bÄm ir sodÄma ar naudas un cietumsodu:\n\n1000$ naudas sods un ((2h)) cietumsods.\n\n \n\n4. BraukÅ¡ana bez tehniskÄs apskates â€“ visiem transportlÄ«dzekÄ¼iem CSDD jÄbÅ«t veiktai tehniskajai apskatei. Ja tehniskÄ apskate nav veikta vai arÄ« termiÅ†Å¡ ir beidzies, var tikt piemÄ“rots naudas sods:\n\n500$ naudas sods, transportlÄ«dzekÄ¼a konfiskÄcija uz ((24h)).\n\n \n\n5. BraukÅ¡ana bez droÅ¡Ä«bas jostas(automaÅ¡Ä«nÄ)/bez Ä·iveres(uz motocikla) - PÄrvietojoties ar transportlÄ«dzekli, ir nepiecieÅ¡ams piesprÄdzÄ“ties - TransportlÄ«dzekÄ¼a vadÄ«tÄjs atbild par aizmugurÄ“ sÄ“doÅ¡iem pasaÅ¾ieriem, to droÅ¡Ä«bas jostÄm. Ja nav piesprÄdzÄ“jies jebkurÅ¡ no automaÅ¡Ä«nas vadÄ«tÄjiem, par to auto vadÄ«tajam var tikt piemÄ“rots sods. AttiecÄ«bÄ uz motociklu/mopÄ“du/kvadraciklu vadÄ«tÄjiem â€“ jebkuram motocikla/mopÄ“da/kvadracikla braukÅ¡anas laikÄ jÄbÅ«t uzvilktai Ä·iverei. Ja Ä·ivere nav uzvilkta, var tikt piemÄ“rots naudas sods:\n\n300$ naudas sods.\n\n \n\n6. AgresÄ«va braukÅ¡ana â€“ jebkura transportlÄ«dzekÄ¼a vadÄ«tÄjam jÄrÅ«pÄ“jas gan par savu, gan pÄrÄ“jo satiksmes dalÄ«bnieku droÅ¡Ä«bu un jÄizvairÄs no bÄ«stamu manevru veikÅ¡anas, kÄ piemÄ“ram:\n\n1) rokasbremzes izmantoÅ¡ana apzinÄtai sÄnslÄ«dei;\n\n2) krustojuma Å¡Ä·Ä“rsoÅ¡ana bez apstÄÅ¡anÄs;\n\n3) braukÅ¡ana pÄri trotuÄram;\n\n4) iebraukÅ¡ana pretÄ“jÄ joslÄ;\n\n5) apzinÄta riteÅ†u saÄ·eres zuÅ¡anas izraisÄ«Å¡ana (spolÄ“Å¡ana);\n\nVar tikt piemÄ“rots naudas sods 500 â€“ 1000$ dolÄru apmÄ“rÄ, atkarÄ«bÄ no izdarÄ«to pÄrkÄpumu nopietnÄ«bas un radÄ«tÄ apdraudÄ“juma kÄ arÄ« cietumsods ((1h-2h)), smagu pÄrkÄpumu gadÄ«jumÄ var tikt konfiscÄ“ts transportlÄ«dzeklis uz ((24h)), atÅ†emtas tiesÄ«bas uz ((6h)).\n\n \n\n7. Distances ieturÄ“Å¡ana â€“ transportlÄ«dzekÄ¼a vadÄ«tÄjiem ir nepiecieÅ¡ams ieturÄ“t distanci starp priekÅ¡Ä braucoÅ¡o transportlÄ«dzekli - apdzÄ«votÄ vietÄ 2 - 4 metri; Ärpus apdzÄ«votas vietas 5 - 15 metri, lai izvairÄ«tos no avÄrijas situÄcijÄm straujas bremzÄ“Å¡anas gadÄ«jumos.\n\n300$ naudas sods.\n\n \n\n8. BÄ“gÅ¡ana no policijas â€“ ja Los Santos Policijas Departamenta operatÄ«vais transportlÄ«dzeklis ar gaismas/skaÅ†as signÄliem signalizÄ“, transportlÄ«dzekÄ¼a vadÄ«tÄjam ir jÄaptur transportlÄ«dzeklis brauktuves labajÄ pusÄ“ un jÄgaida tÄlÄki policijas darbinieku norÄdÄ«jumi. TÄ«Å¡as neapstÄÅ¡anÄs, bÄ“gÅ¡anas gadÄ«jumÄ var tikt piespriests sods:\n\n1200$ naudas sods, ((2h)) cietumsods un auto konfiskÄcija uz ((48h)), tiesÄ«bu atÅ†emÅ¡ana uz ((6h)).\n\n \n\n9. Alkoholisko dzÄ“rienu lietoÅ¡ana - Ir aizliegts vadÄ«t transportlÄ«dzekli alkoholisko dzÄ“rienu / narkotisko vielu ietekmÄ“. Var tikt piemÄ“rots:\n\n900$ naudas sods  un ((1h)) cietumsods, transportlÄ«dzekÄ¼a konfiskÄcija uz ((48h)).\n\n \n\n10. CeÄ¼a doÅ¡ana operatÄ«vajam transportam - transportlÄ«dzekÄ¼a vadÄ«tÄjam, dzirdot operatÄ«vÄ transportlÄ«dzekÄ¼a skaÅ†as signal, redzot gaismas signÄlu, ir nepiecieÅ¡ams pÄrkÄrtoties uz ceÄ¼a labo pusi un apstÄties brauktuves labajÄ malÄ, lai dotu ceÄ¼u operatÄ«vajam transportam. Noteikuma neievÄ“roÅ¡anas gadÄ«jumÄ var tikt piemÄ“rots naudas sods:\n\n400$ naudas sods.\n\n \n\n11. AvÄrijas vietas atstÄÅ¡ana - Ja persona ir iekÄ¼uvusi ceÄ¼u satiksmes negadÄ«jumÄ, notikuma vietu ir aizliegts atstÄt, pirms ir notikusi savstarpÄ“ja vienoÅ¡anÄs/ieraduÅ¡ies LSPD darbinieki. Noteikuma pÄrkÄpuma gadÄ«jumÄ var tikt piemÄ“rots sods:\n\n400$ naudas sods, ((1h)) cietumsods, auto konfiskÄcija uz ((24h)), tiesÄ«bu atÅ†emÅ¡ana uz ((6h))\n\n \n\n \n\n12. TransportlÄ«dzekÄ¼a novietoÅ¡ana neatÄ¼autÄ vietÄ - transportlÄ«dzekÄ¼us ir aizliegts novietot uz dzeltenÄs lÄ«nijas, pretÄ« izbrauktuvÄ“m/garÄÅ¾as vÄrtiem. AtstÄjot transportlÄ«dzekli, daÄ¼ai no tÄ (aptuveni 30% no kopÄ“jÄ platuma) ir jÄatrodas uz braucamÄs daÄ¼as, bet otrai daÄ¼ai (aptuveni 70% no kopÄ“jÄ platuma) uz trotuÄra. TransportlÄ«dzekÄ¼us ir aizliegts atstÄt pretÄ«:\n\n1) Los Santos Bankas Ä“kai;\n\n2) Los Santos Domes Ä“kai;\n\n3) Los Santos GlÄbÅ¡anas Dienesta Ä“kai;\n\n4) Los Santos Policijas Departamenta Ä“kai.\n\n300$ naudas sods.\n\n \n\n13. TransportlÄ«dzekÄ¼a apgaismojums - vadot transportlÄ«dzekli nakts tumÅ¡ajÄ laikÄ, transportlÄ«dzekÄ¼iem ir nepiecieÅ¡ams aktivizÄ“t apgaismojumu - apgaismojuma krÄsai  jÄsatur tikai oriÄ£inÄlo apgaismojumu vai gaiÅ¡i dzelteno/gaiÅ¡i zilo. Ir aizliegts pÄrvietoties ar citas krÄsas apgaismojuma veidiem. Noteikuma neievÄ“roÅ¡anas gadÄ«jumÄ var tikt piemÄ“rots naudas sods:\n\n500$ naudas sods.\n\n \n\n14. NeatÄ¼autas transportlÄ«dzekÄ¼u modifikÄcijas - Ir aizliegts pÄrvietoties pa koplietojamiem ceÄ¼iem, ja auto aprÄ«kots ar neatÄ¼autÄm modifikÄcijÄm â€“ NOS; hidraulikas. Var tikt piemÄ“rots sods:\n\n500$ naudas sods un auto konfiskÄcija uz ((24h)).\n\n \n\n15. NelegÄlu sacÄ«kÅ¡u rÄ«koÅ¡ana - ir aizliegts rÄ«kot sacÄ«kstes uz koplietojamiem ceÄ¼iem, iepriekÅ¡ tÄs nesaskaÅ†ojot ar domi un LSPD.\n\n600$ naudas sods visiem iesaistÄ«tajiem, auto konfiskÄcija uz ((24h)).\n\n\n\nJA IZDARÄªTS VAIRÄ€K NEKÄ€ 1 PÄ€RKÄ€PUMS, SODI SUMMÄ’JAS.\n                                                                                       (( JebkÄda frakcijas Ä«paÅ¡uma piesavinÄÅ¡anÄs novedÄ«s pie OOC soda. ))\n                                                                                       (( JebkÄda veida korupcija beigsies ar banu. ))\n                                                               ~~~~~~~~~~ AugstÄk minÄ“tÄ neievÄ“roÅ¡ana neatbrÄ«vo jÅ«s no soda! ~~~~~~~~~~ \n                                                                                             \n\n', NULL, 20),
(2, 'Los Santos Emergency Services', 396455, 4, 'Intervija', '-', '-', 'AtvaÄ¼inÄjums', 'Studente uz MediÄ·i', 'Pilots', 'JaunÄkais Ä¶irurgs', 'Ä¶irurgs', 'VecÄkais Ä¶irurgs', 'JaunÄkais MediÄ·is', 'MediÄ·is', 'VecÄkais MediÄ·is', 'JaunÄkais UgunsdzÄ“sÄ“js', 'UgunsdzÄ“sÄ“js', 'VecÄkais UgunsdzÄ“sÄ“js', 'MediÄ·u NodaÄ¼as vadÄ«tÄjs', 'UgunsdzÄ“sÄ“ju NodaÄ¼as Vaditajs', 'SekretÄre/s', 'Prieksnieka Vietnieks', 'PriekÅ¡nieks/ce', 0, 0, 0, 300, 400, 650, 850, 650, 700, 500, 650, 700, 500, 650, 700, 700, 700, 700, 825, 850, 'Frekvence: 911.767 || SveicinÄti Los Santos GlÄbÅ¡anas DienestÄ || 3 Dienas OFF - F3 Kick , vienÄ«gi ja ir attaisnojums', 'LÅ«dzu sagaidÄ«t mani rÄ«t on tie kas tiek pÄrvietoti uz amata izvÄ“rtÄ“Å¡anu,jo tika samazinÄti Å¡tati,kÄ rezultÄtÄ samazinÄs darbinieki un amati.                                                                                               \n     ~~~Los Santos GlÄbÅ¡anas dienests~~\n\nTrÄ«s dienas nav bÅ«ts on ir kick no F3, izÅ†Ä“mums ja pasaki vadÄ«tÄjam vai priekÅ¡nieka vietniekam, ka nebÅ«si cik ilgi!\n\n\nPriekÅ¡nieks 1/1 - \nVietnieks 1/1 -\nMediÄ·i 1/4 -\nUgunsdzÄ“sÄ“jii 1/2 -\nÄ¶irurgs 0/1 -\n\n\n------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n\n\nKomandas!!\n\n/issuebadge ID [Teksts] - Izsniegt Å¾etonu.\n/duty - Ä¼auj tev paÅ†emt inventÄru, un uzsÄkt maiÅ†u.\n/fpark- Ä¼auj tev noparkot f auto, un pÄ“c respawn viÅ†s tur atradÄ«sies.\n\n', '- - - - - - - - - - - - - - - - - - LÅ«dzu sagaidÄ«t mani rÄ«t on tie kas tiek pÄrvietoti uz amata izvÄ“rtÄ“Å¡anu,jo tika samazinÄti Å¡tati,kÄ rezultÄtÄ samazinÄs darbinieki un amati.    \nLos Santos GlÄbÅ¡anas Dienests\n- - - - - - - - - - - - - - - - - - \nPriekÅ¡nieks 1/1 - \nMediÄ·i 1/4\nUgunsdzÄ“sÄ“jii 1/2\nÄ¶irurgs 0/1\n- - - - - - - - - - - - - - - - - - -\nNOTEIKUMI!\nNedrÄ«kst bÅ«t dzÄ“rumÄ darbÄ!\nNedrÄ«kst pÄ«pÄ“t darba vietÄ ,tikai pÄrtraukumos un pÄ«pÄ“t 10metrus no ieejas!\n((NedrÄ«kst bÅ«t bieÅ¾i jail!))\n((Uz izsaukumiem ir jÄÅ†em viss kas ir piedÄvÄts duty!))\n((Bez Duty ar darba auto nebraukÄt!))\nBez priekÅ¡nieka atÄ¼aujas nebraukt ar priekÅ¡nieka auto\n((Lai strÄdÄtu jÄbÅ«t obligÄti Duty))\nAr lielajÄm maÅ¡Ä«nÄm patruÄ¼Ä nebraukÄt!\nAr helihopteru kategoriski AIZLIEGTS lidot bez priekÅ¡nieka atÄ¼aujas\nLai lidotu ar helikopteru vajag pilota licenci.\n\n\nKODI!\n10-1 NepiecieÅ¡ami papildspÄ“ki\n10-2 NÄ“/Noraidu\n10-4 JÄ/Sapratu\n10-20 TagadÄ“jÄ atraÅ¡anÄs vieta\n\n\n((OOC))\nJa ir kÄdi jautÄjumi saistÄ«bÄ ar F3, utt. jautÄ - RulemkaZ\n', NULL, 20),
(3, 'Government of Los Santos', 1376487, 3, 'AADMIN (#OOC)', '-', '-', '-', 'ApmaksÄts AtvaÄ¼inÄjums', 'ApkopÄ“js', 'Apsargs', 'VecÄkais apsargs', 'MÄ“ra privÄtais sargs', 'DeputÄts / Students', 'DeputÄts', 'VeselÄ«bas ministrs', 'IekÅ¡lietu ministrs', 'Ä€rlietu ministrs', 'FinanÅ¡u ministrs', 'LabklÄjÄ«bas ministrs', 'KultÅ«ras ministrs', '- - - - - - - - - - - - -', 'MÄ“ra SekretÄrs/-e', 'MÄ“rs', 0, 0, 0, 0, 300, 400, 600, 650, 700, 600, 700, 800, 800, 800, 800, 800, 800, 0, 825, 850, 'Los Santos ValdÄ«ba | Frekvence: 6952.32 | TrÄ«s dienu aktivitÄte, bez ziÅ†ojuma - PakÄpe atlaists | Nedari neko, bet fermo naudu - Izmests, iespÄ“jams Ajail | ', '\n', '| - InformÄcija, kuru ieteicams ir iegaumÄ“t - | \n1. Government of Los Santos, jebÅ¡u Los Santos ValdÄ«ba ir diezgan nopietna frakcija, kura nodarbojas ar politiku Icly, tÄdÄ“Ä¼ lÅ«dzu, ja esi atnÄcis Å¡eit laist trolli, tad pamet frakciju.\n2. PieÅ†emsim, tava pakÄpe ir \'\' ApkopÄ“js \'\' , neizmanto darba automaÅ¡Ä«nu, jo tev reÄli netiktu izsniegta atslÄ“ga.\n3. DomÄ ar galvu, neizmanto duty savÄm vajadzÄ«bÄm, netraucÄ“ citiem atveidot Lomu spÄ“li, un neiejaucies Policijas DarbÄ.\n-------------------------------------------------------------\n_______________\nReÄ£istrÄ“tie uzÅ†Ä“mumi\n_______________\n\n- ...\n- ...\n- ...\n- ...\n', '51', 20),
(4, 'Rapid Towing', 2737799, 7, 'ADMIN #OOC', 'AtvaÄ¼inÄjumÄ', '-', '-', '-', '-', '-', '-', 'AtvaÄ¼inÄjumÄ', 'PÄrbaudes Laiks', 'MÄceklis', 'JaunÄkais MehÄniÄ·is', 'Jaunais KonfiscÄ“tÄjs', 'KonfiscÄ“tÄjs |', 'KonfiscÄ“tÄjs ||', 'VecÄkais MehÄniÄ·is', 'VecÄkais KonfiscÄ“tÄjs', '- - - - - - - - - - - - - -', 'PriekÅ¡nieka SekretÄre', 'PriekÅ¡nieks', 0, 0, 0, 0, 0, 0, 0, 400, 300, 300, 300, 400, 400, 500, 550, 600, 600, 0, 700, 800, 'RÄcijas frekvence: 111.111 | 3 dienu neaktivitÄte, nepabrÄ«dinot- izmests. | OBLIGÄ€TA RÄ€CIJA UN STRÄ€DÄ€T DARBA DRÄ’BÄ’S, DUTY!!!!', '\nÅ¾etonu veido /issuebadge {id} LSAK | Amats | V. UzvÄrds\n\n/impoundbike\n\nLukturu maiÅ†a- 500\nTonÄ“t logus- 3000\nDisku maiÅ†a- 2000\nPÄrkrÄsot- 350\nRitenis, mocis krÄsot- 200\n\n\nDarbs katrai detaÄ¼ai 150-1000$\n\n', '\n                                       \n                                                                                                                ------------------------------------------------------\r\n                                                                                                                                   SastÄvs:\n                                                                                                                         PriekÅ¡nieks:\n                                                                                                                         Prieksnieka veitnieks:\n                                                                                                                         SekretÄre: \n                                                                                                                         KonfiscÄ“tÄju nodaÄ¼as vadÄ«tÄjs: \n                                                                                                                         MehÄniÄ·u nodaÄ¼as vadÄ«tÄjs: \n                                                                                                                         VecÄkais konfiscÄ“tÄjs: \n                                                                                                                         VecÄkais mehÄniÄ·is: \n                                                                                                                         KonfiscÄ“tÄjs III: \n                                                                                                                         KonfiscÄ“tÄjs II: \n                                                                                                                         KonfiscÄ“tÄjs I: Edy Mccurry\n                                                                                                                         MehaniÄ·is: \n                                                                                                                         JaunÄkie konfiscÄ“tÄji: \n                                                                                                                         JaunÄkais MehÄniÄ·is: \n                                                                                                        -----------------------------------------------------------------------\r\n                                                             Darba automaÅ¡Ä«nu saraksts (Izlaidums, marka, numurzÄ«me un darbinieks kurÅ¡ ar viÅ†u strÄdÄs un atbildÄ“s ):\r\n                                                                                                                1999 Dodge Ram 2500 TowTruck\n                                                                                                                1999 Dodge Ram 2500 TowTruck\n                                                                                                                1999 Dodge Ram 2500 TowTruck\n                                                                                                                1999 Dodge Ram 2500 TowTruck\n                                                                                                                1999 Dodge Ram 2500 TowTruck\n                                                                                                                2001 Mercedes Benz Atego  818 4.24 DÄ«zelis\n                                                                                                                2001 Mercedes Benz Atego  818 4.24 DÄ«zelis\n                                                                                        -------------------------------------------------------------------------------------------------\n                                                                                                                                 Darba algas:\r\n                                                                                                                       JaunÄkais konfiscÄ“tÄjs:\n                                                                                                                       JaunÄkais MehÄniÄ·is:\n                                                                                                                       MehÄniÄ·is:\n                                                                                                                       KonfiscÄ“tÄjs: \n                                                                                                                       KonfiscÄ“tÄjs II:\n                                                                                                                       KonfiscÄ“tÄjs III: \n                                                                                                                       VecÄkais konfiscÄ“tÄjs: \n                                                                                                                       VecÄkais mehÄniÄ·is:\n                                                                                                                       SekretÄre:\n                                                                                                                       KonfiscÄ“tÄju nodaÄ¼as vadÄ«tÄjs:\n                                                                                                                       MehÄniÄ·u nodaÄ¼as vadÄ«tÄjs:\n                                                                                                                       PriekÅ¡nieka vietnieks:\n                                                                                                                       PriekÅ¡nieks: \n                                                                                                        ---------------------------------------------------------------------\r\n                                                                                                                          ZiÅ†ojums priekÅ¡ darbiniekiem:\r\n                                                        Ja jÅ«s konfiscÄ“jat transportlÄ«dzekli un tÄ Ä«paÅ¡nieks apstrÄ«d, ka ir novietojis pareizi savu transportlÄ«dzekli un darbinieks nevar pierÄdÄ«t, kÄdÄ“Ä¼ ir konfiscÄ“jisautomaÅ¡Ä«nu, tad no konfiscÄ“tÄjam bÅ«s jÄmaksÄ gan par transportlÄ«dzekÄ¼a izpirkÅ¡anas cenu, gan                                                                                                                                                                                             konpensÄcija. KopÄ 2 tÅ«kstoÅ¡i.\n\n                                                                 ((Atceraties konfiscÄ“tÄji pirms konfiscÄ“jiet F12 un viss bÅ«s labi un protams, ja transportlÄ«dzeklis ir nepareizi novietots konfiscÄ“t))\r\n                                                                                       Lai nebÅ«tu lieki jautÄjumi par paaugstinÄjumu tad Å†emÅ¡u vÄ“rÄ Å¡Ädas lietas:\r\n\n1) Vai neviens nav par jums sÅ«dzÄ“jies.\r\n2) Nevajag prasÄ«t paaugstinÄjumu, ja vÄ“lÄ“Å¡os paaugstinÄt paaugstinÄÅ¡u.\r\n3) Lai paaugstinÄtu:\r\nno JaunÄkais konfiscÄ“tÄjs uz KonfiscÄ“tÄjs I: jÄbÅ«t kopÄ konfiscÄ“tÄm 10 transportlÄ«dzekÄ¼iem.\r\nno KonfiscÄ“tÄja I uz KonfiscÄ“tÄjs II: jÄbÅ«t kopÄ konfiscÄ“tÄm 30 transportlÄ«dzekÄ¼iem.\r\nno KonfiscÄ“tÄjs II uz KonfiscÄ“tÄjs III: jÄbÅ«t kopÄ konfiscÄ“tiem 50 transportlÄ«dzekÄ¼iem.\r\nno KonfiscÄ“tÄjs III uz VecÄkais konfiscÄ“tÄjs: jÄbÅ«t kopÄ konfiscÄ“tiem 100 transportlÄ«dzekÄ¼iem.\r\n\n                                               \n\n((OOC))\nJa ir kÄdi jautÄjumi saistÄ«bÄ ar F3, utt. jautÄ - \ndiscord: LaKush\nhttps://discord.gg/kAWvREm\n            \n', '90', 20),
(20, 'Los Santos News', 790984, 6, 'Intervija', 'AtvaÄ¼inÄjumÄ ', '-', '-', '-', '-', '-', '-', 'Students', 'Apsargs', 'Å oferis', 'Pilots', 'PasÄkumu vadÄ«tÄjs', 'FotogrÄfs', 'Reportieris', 'ZiÅ†u vadÄ«tÄjs', 'VecÄkais fotogrÄfs', 'VecÄkais Reportieris', 'SekretÄrs/-e', 'PriekÅ¡nieks', 0, 0, 0, 0, 0, 0, 500, 500, 300, 450, 450, 500, 500, 500, 500, 600, 600, 600, 700, 800, '** SveicinÄts iekÅ¡ Los Santos News ** RÄcijas frekvence 2017.223 Ja kÄds nebÅ«s aktÄ«vs 3 dienas kick no f3 tas attiecÄs uz visiem :)', '/issuebadge [ID] LSZD|AMATS|VÄrda pirmais burts .UzvÄrds.\nJa kÄds fermo ar autobusu naudu bez liekas runÄÅ¡anas tiek kikots no F3.\n', '                                                                                   ** PAMÄ€CÄªBAS **\n\nTÄtad sveicinÄti ZiÅ†u DienestÄ ,Å¡eit jums bÅ«s daudz un daÅ¾ÄdÄkÄs RolePlay iespÄ“jas,ko garantÄ“ ZiÅ†u Dienests,tÄdejÄi ielikÅ¡u daÅ¾as pamÄcÄ«bas.\n\nKÄ iesÄkt ziÅ†as? : ** NoskanÄ“tu Los Santos ZiÅ†u Dienesta SÄkuma MeldiÅ†Å¡ **\nKÄ nobeigt ziÅ†as?:  ** NoskanÄ“tu Los Santos ZiÅ†u Dienesta Beigu MeldiÅ†Å¡ **\n\nJa vÄ“lies pÄrslÄ“gties piemÄ“ram no KriminÄl ziÅ†Äm uz Sporta ziÅ†Äm raksti..\n\n** Sporta ZiÅ†as **\nun tÄ ar katrÄm ziÅ†Äm kuras iesÄc. \n\nZiÅ†u Veidi,kas pastÄv.\n\nKriminÄlziÅ†as,Sporta ZiÅ†as,Ekonomikas ZiÅ†as,Politikas ZiÅ†as,Laika ZiÅ†as,ReportÄÅ¾a.\n\nparaugs kÄ ievietot reklÄmu .\n\n\n** ReklÄma ** [INFO] PieÅ†emu darbÄ labu mehÄniÄ·i,kas spÄ“s palÄ«dzÄ“t man servisÄ. TÄlr.nr:\n** ReklÄma ** [PÄrdod] ......\n** ReklÄma ** [PÄ“rk] ...\n\nVÄ“lies sÄkt intervÄ“t sevi ? [/interview]\nVÄ“lies beigt interviju ? [/endinterview]\nVÄ“lies sÄkt tieÅ¡raidi ? [/starttv]\nVÄ“lies beigt tieÅ¡raidi ? [/endtv]\nVÄ“lies pÄrvietot kameru ? [/movetv]\n\n\n((OOC))\nJa ir kÄdi jautÄjumi saistÄ«bÄ ar F3, utt. jautÄ - linceens\nskype: night.wolf744\n', NULL, 20);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `faction_cv`
--

CREATE TABLE `faction_cv` (
  `full_name` text CHARACTER SET utf8 COLLATE utf8_bin,
  `age` decimal(10,0) NOT NULL DEFAULT '0',
  `location` text CHARACTER SET utf8 COLLATE utf8_bin,
  `phone` decimal(10,0) NOT NULL DEFAULT '0',
  `exp` text,
  `motivational` text,
  `charid` decimal(10,0) NOT NULL DEFAULT '0',
  `status` decimal(10,0) DEFAULT '0',
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `faction_cv`
--

INSERT INTO `faction_cv` (`full_name`, `age`, `location`, `phone`, `exp`, `motivational`, `charid`, `status`, `comment`) VALUES
('Matthew', '15', 'Riga', '112', NULL, NULL, '0', '0', ''),
('Danex', '13', 'Stacijas laukums', '0', NULL, NULL, '0', '0', ''),
('Matthew Hudson', '22', 'Los Santos', '1234567', NULL, NULL, '0', '0', ''),
('Andris paberzs', '22', 'Mezha', '123456', 'Beidzaas man pieredze', 'Negribu motivet sevi uz dsarbu', '0', '0', ''),
('Andrejs Bderzs', '25', 'LA', '12375', 'Man nav motivacija', 'Nav pieredze', '32', '1', 'Atteikts');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `faction_drop`
--

CREATE TABLE `faction_drop` (
  `pItemID` int(11) DEFAULT NULL,
  `pItemValue` text,
  `pDesc` text,
  `pPrice` text,
  `pDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pID` int(11) NOT NULL,
  `pQuantity` int(11) NOT NULL DEFAULT '1',
  `pSetQuantity` int(11) NOT NULL DEFAULT '1',
  `pRestockInterval` int(11) DEFAULT '0',
  `pRestockedDate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Saves on-sale products from players, business system by Maxi';

--
-- Gegevens worden geëxporteerd voor tabel `faction_drop`
--

INSERT INTO `faction_drop` (`pItemID`, `pItemValue`, `pDesc`, `pPrice`, `pDate`, `pID`, `pQuantity`, `pSetQuantity`, `pRestockInterval`, `pRestockedDate`) VALUES
(116, '22:15:Ammo for Colt 45', NULL, '15', '2017-03-28 20:51:42', 11, 98, 100, 0, '2017-03-28 20:08:21'),
(115, '22:Frakcijas Dropa Ierocis:Colt 45:.45:Ierocis no frakcijas dropa, izveidoja ÄªpaÅ¡nieks Oxigent', NULL, '300', '2017-03-28 20:51:44', 10, 96, 100, 0, '2017-03-28 20:07:30');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '3',
  `comment` varchar(500) DEFAULT NULL,
  `date` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `force_apps`
--

CREATE TABLE `force_apps` (
  `id` int(11) NOT NULL,
  `account` int(11) DEFAULT NULL,
  `forceapp_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Save forceapped players information to keep them from resubm' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `friends`
--

CREATE TABLE `friends` (
  `id` int(10) UNSIGNED NOT NULL,
  `friend` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `friends`
--

INSERT INTO `friends` (`id`, `friend`) VALUES
(657, 661),
(661, 657),
(661, 662),
(661, 664),
(662, 661),
(664, 661);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `fueldiesel`
--

CREATE TABLE `fueldiesel` (
  `id` int(11) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `rotZ` float NOT NULL,
  `interior` int(11) NOT NULL DEFAULT '0',
  `dimension` int(11) NOT NULL DEFAULT '0',
  `skin` int(3) DEFAULT '50',
  `name` varchar(50) NOT NULL,
  `deletedBy` int(11) DEFAULT '0',
  `tvertne` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `fueldiesel`
--

INSERT INTO `fueldiesel` (`id`, `posX`, `posY`, `posZ`, `rotZ`, `interior`, `dimension`, `skin`, `name`, `deletedBy`, `tvertne`) VALUES
(50, 1913.36, -1626.14, 13.7859, 179.703, 0, 0, 50, '[DÄ«zelis]__Daniel_W._Davis', 1, 1),
(51, 1941.59, -1769.28, 13.6406, 269.518, 0, 0, 50, '[DÄ«zelis]__Daniel_P._Garcia', 9, 1),
(49, 1941.78, -1768.97, 13.6406, 89.9712, 0, 0, 50, '[DÄ«zelis]__Christopher_S._Grenier', 1, 2),
(52, 1941.72, -1775.91, 13.57, 90, 0, 0, 50, '[DÄ«zelis]__John_L._Ames', 0, 1),
(53, 1381.81, 460.3, 20.3452, 335.096, 0, 0, 50, '[DÄ«zelis]__Dennis_N._Grenier', 13, 0),
(54, 1381.67, 460.229, 20.3452, 336.909, 0, 0, 50, '[DÄ«zelis]__Ashley_C._Martin', 0, 0),
(55, 1941.88, -1768.96, 13.57, 90, 0, 0, 50, '[DÄ«zelis]__Brian_L._Jarmes', 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `fuelpeds`
--

CREATE TABLE `fuelpeds` (
  `id` int(11) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `rotZ` float NOT NULL,
  `interior` int(11) NOT NULL DEFAULT '0',
  `dimension` int(11) NOT NULL DEFAULT '0',
  `skin` int(3) DEFAULT '50',
  `name` varchar(50) NOT NULL,
  `deletedBy` int(11) DEFAULT '0',
  `tvertne` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `fuelpeds`
--

INSERT INTO `fuelpeds` (`id`, `posX`, `posY`, `posZ`, `rotZ`, `interior`, `dimension`, `skin`, `name`, `deletedBy`, `tvertne`) VALUES
(151, 1941.66, -1776.14, 13.6406, 271.078, 0, 0, 268, '[BenzÄ«ns]__Bobby_P._Moore', 1, 1),
(152, 1920.89, -1635.38, 13.7859, 357.992, 0, 0, 50, '[BenzÄ«ns]__Matthew_R._Anderson', 1, 2),
(153, 1913.35, -1635.09, 13.7859, 179.725, 0, 0, 50, '[BenzÄ«ns]__Michael_H._Thomas', 1, 2),
(154, 1920.75, -1626, 13.7859, 183.488, 0, 0, 50, '[BenzÄ«ns]__Dennis_X._Duncan', 1, 1),
(155, 1941.75, -1776.48, 13.6406, 89.3724, 0, 0, 50, '[BenzÄ«ns]__Dennis_P._Thompson', 9, 2),
(156, 1941.84, -1769.96, 13.57, 270, 0, 0, 50, '[BenzÄ«ns]__John_R._Heath', 0, 2),
(157, 1382.69, 459.747, 20.3452, 338.118, 0, 0, 50, '[BenzÄ«ns]__Anthony_J._Robinson', 0, 0),
(158, 1941.56, -1776.98, 13.57, 270, 0, 0, 50, '[BenzÄ«ns]__Johny_R._Heath', 0, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `fuelstations`
--

CREATE TABLE `fuelstations` (
  `id` int(11) NOT NULL,
  `fuel_type` int(11) NOT NULL DEFAULT '0',
  `fuel_remain` int(11) NOT NULL DEFAULT '0',
  `fuel_max` int(11) NOT NULL DEFAULT '5000',
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rot` float NOT NULL,
  `dim` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `fuelstation_logs`
--

CREATE TABLE `fuelstation_logs` (
  `id` int(11) NOT NULL,
  `tank_id` int(11) NOT NULL,
  `refilled_by` varchar(255) NOT NULL,
  `ammount` varchar(255) NOT NULL,
  `date_when` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `fuelstation_vehs`
--

CREATE TABLE `fuelstation_vehs` (
  `id` int(11) NOT NULL,
  `veh_id` int(11) NOT NULL DEFAULT '0',
  `fuel_type` int(11) NOT NULL DEFAULT '0',
  `fuel_ammount` int(11) NOT NULL DEFAULT '0',
  `fuel_max` int(11) NOT NULL DEFAULT '5000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `fuelstation_vehs`
--

INSERT INTO `fuelstation_vehs` (`id`, `veh_id`, `fuel_type`, `fuel_ammount`, `fuel_max`) VALUES
(1, 320, 0, 5000, 5000),
(2, 319, 1, 5000, 5000);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `furniture`
--

CREATE TABLE `furniture` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `y` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `z` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `rot` decimal(10,6) DEFAULT '0.000000',
  `dimension` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `object` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gates`
--

CREATE TABLE `gates` (
  `id` int(11) NOT NULL,
  `objectID` int(11) NOT NULL,
  `startX` float NOT NULL,
  `startY` float NOT NULL,
  `startZ` float NOT NULL,
  `startRX` float NOT NULL,
  `startRY` float NOT NULL,
  `startRZ` float NOT NULL,
  `endX` float NOT NULL,
  `endY` float NOT NULL,
  `endZ` float NOT NULL,
  `endRX` float NOT NULL,
  `endRY` float NOT NULL,
  `endRZ` float NOT NULL,
  `gateType` tinyint(3) UNSIGNED NOT NULL,
  `autocloseTime` int(4) NOT NULL,
  `movementTime` int(4) NOT NULL,
  `objectDimension` int(11) NOT NULL,
  `objectInterior` int(11) NOT NULL,
  `gateSecurityParameters` text,
  `creator` varchar(50) NOT NULL DEFAULT '',
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `adminNote` varchar(300) NOT NULL DEFAULT '',
  `triggerDistance` float DEFAULT NULL,
  `triggerDistanceVehicle` float DEFAULT NULL,
  `sound` varchar(50) DEFAULT 'metalgate'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `gates`
--

INSERT INTO `gates` (`id`, `objectID`, `startX`, `startY`, `startZ`, `startRX`, `startRY`, `startRZ`, `endX`, `endY`, `endZ`, `endRX`, `endRY`, `endRZ`, `gateType`, `autocloseTime`, `movementTime`, `objectDimension`, `objectInterior`, `gateSecurityParameters`, `creator`, `createdDate`, `adminNote`, `triggerDistance`, `triggerDistanceVehicle`, `sound`) VALUES
(2, 1535, 245.45, 72.5, 1002.64, 0, 0, 0, 244.15, 72.5, 1002.64, 0, 0, 0, 7, 15, 20, 1, 6, '1', 'GoblinX', '2016-09-25 13:36:23', 'LSPD IecirkÅ†a gate', 3, 0, NULL),
(6, 3055, 1563.93, -1610.06, 13.09, 0, 0, 90, 1563.93, -1610.06, 9.5, 0, 0, 90, 7, 30, 30, 0, 0, '1', 'GoblinX', '2017-02-19 12:47:48', 'LSPD KonfiscÄ“tava', 10, 15, NULL),
(16, 3089, 1512.29, 1352.96, 11.28, 0, 0, 90, 1512.3, 1352.92, 11.31, 0, 0, 360, 7, 0, 35, 136, 11, '20', 'Andersons', '2018-06-30 13:03:31', 'LSZD birojs #1', 2, 1, NULL),
(5, 968, 1544.69, -1630.73, 13.2, 0, -90, -90, 1544.7, -1630.81, 13.2, 0, 180, -90, 7, 25, 40, 0, 0, '1', 'linceens', '2017-01-26 16:32:00', 'LSPD EX Gate', 5, 10, 'metalgate'),
(10, 3089, 1594.18, 1788.83, 2083.66, 0, 0, 270, 1594.18, 1788.83, 2083.66, 0, 0, 180, 7, 25, 25, 3, 3, '2', 'linceens', '2018-06-30 12:21:59', 'LSGD int #1', 5, 0, NULL),
(8, 1535, 248.1, 76.79, 1002.64, 0, 0, 270, 248.1, 78.11, 1002.64, 0, 0, 270, 7, 15, 20, 1, 6, '1', 'GoblinX', '2017-01-28 10:09:45', 'LSPD IecirkÅ†a gate', 3, 1, NULL),
(14, 986, 777.963, -1330.2, 11.1, 0, 0, 180, 777.963, -1330.2, 6, 0, 0, 180, 7, 15, 15, 0, 0, '20', 'GoblinX', '2017-04-01 09:02:32', 'LSZD VÄrti', 10, 10, NULL),
(3, 986, 778.13, -1384.89, 12.08, 0, 0, 179.3, 778.13, -1384.89, 7.21, 0, 0, 179.3, 7, 20, 20, 0, 0, '20', 'GoblinX', '2017-04-23 16:05:19', 'LSZD VÄrti Nr.2', 35, 35, NULL),
(7, 3089, 1513.81, 1348.51, 11.2, 0, 0, 0, 1513.81, 1348.51, 11.2, 0, 0, -90, 7, 0, 30, 136, 11, '20', 'Andersons', '2017-10-07 16:34:50', 'LSZD TelpÄ, durvis', 4, 0, NULL),
(20, 3089, 1264.56, -806.79, 1084.32, 0, 0, 270, 1264.58, -806.79, 1084.32, 0, 0, 180, 7, 0, 30, 615, 5, '20', 'Andersons', '2018-06-30 18:47:20', 'LSZD Studija #1', 3, 0, NULL),
(13, 980, 1141.56, -1291.85, 14.9, 0, 0, 0, 1155, -1291.85, 14.9, 0, 0, 0, 7, 35, 35, 0, 0, '2', 'linceens', '2017-10-28 08:45:00', 'LSGD VÄrti', 5, 15, 'metalgate'),
(4, 980, 2678.21, -2565.17, 15.5, 0, 0, 0, 2666.8, -2565.17, 15.5, 0, 0, 0, 7, 30, 30, 0, 0, '4', 'RuleMkaZ', '2018-07-01 10:33:58', 'LSAK ExT ', 7, 15, NULL),
(39, 968, 2702.61, -2534.12, 13.38, 0, 90, 180, 2702.61, -2534.12, 13.38, 0, 180, 180, 7, 10, 10, 0, 0, '4', 'linceens', '2018-07-05 14:17:48', 'LSAK uz stajanku', 15, 15, NULL),
(9, 1566, 1806.81, -1374.16, 29.44, 0, 0, 0, 1806.81, -1374.16, 29.44, 0, 0, 90, 7, 20, 20, 7, 3, '4', 'linceens', '2018-06-22 17:07:58', 'LSAK Uz Kabinetu', 15, 15, NULL),
(12, 980, 1961.86, -2189.9, 13.35, 0, 0, 180, 1961.86, -2189.9, 8, 0, 0, 180, 2, 15, 15, 0, 0, 'KICKROLEPLAY', 'GoblinX', '2018-06-13 14:17:12', 'LS Lidosta', 15, 15, NULL),
(17, 3089, 294.57, 193.19, 1040.15, 0, 0, 0, 294.57, 193.19, 1040.15, 0, 0, -90, 7, 18, 20, 1, 3, '1', 'linceens', '2018-06-20 18:29:48', 'LSPD Gates.', NULL, NULL, NULL),
(18, 3089, 297.57, 193.19, 1040.15, 0, 0, 180, 297.57, 193.19, 1040.15, 0, 0, -90, 7, 18, 20, 1, 3, '1', 'linceens', '2018-06-20 18:29:56', 'PD durvis', NULL, NULL, NULL),
(15, 3089, 1578.62, 1794.1, 2083.56, 0, 0, 0, 1578.63, 1794.05, 2083.49, 0, 0, -90, 7, 0, 30, 3, 3, '2', 'Andersons', '2018-06-30 12:32:40', 'LSGD gate', 3, 3, NULL),
(11, 3089, 1589.16, 1812.68, 2083.53, 0, 0, 0, 1589.16, 1812.68, 2083.53, 0, 0, 90, 7, 15, 15, 3, 3, '2', 'linceens', '2018-06-30 12:25:00', 'LSGD int #2', 5, 0, 'metÄla skaÅ†a'),
(24, 966, 1371.5, -849.2, 42.4, 0, 0, 30, 1371.5, -849.2, 42.4, 0, 0, 30, 0, 1, 1, 0, 0, '', 'Tomsss', '2018-06-20 18:30:38', '', NULL, NULL, 'metÄla skaÅ†a'),
(19, 2930, 287.98, 202.9, 1041.54, 0, 0, 270, 291, 202.9, 1041.54, 0, 0, 270, 2, 45, 45, 1, 3, 'filipovsnelga', '9Boz', '2018-07-06 22:32:41', 'LSPD noliktava', 5, 0, 'metalgate'),
(21, 3089, 1260.52, -805.79, 1084.3, 0, 0, 90, 1260.51, -805.78, 1084.3, 0, 0, 0, 7, 0, 30, 615, 5, '20', 'Andersons', '2018-06-30 19:45:36', 'LSZD Studija #3', 3, 0, NULL),
(22, 3089, 1522.1, 1353.22, 11.27, 0, 0, 0, 1522.11, 1353.22, 11.27, 0, 0, 270, 7, 0, 30, 136, 11, '20', 'Andersons', '2018-07-01 09:03:35', 'LSZD Birojs #2', 3, 0, NULL),
(23, 3089, 1528.02, 1348.49, 11.29, 0, 0, 180, 1528.02, 1348.49, 11.29, 0, 0, 90, 7, 0, 30, 136, 11, '20', 'Andersons', '2018-07-01 09:16:38', 'LSZD Birojs #3', 3, 0, NULL),
(25, 3089, 1512.28, 1361.01, 11.29, 0, 0, 90, 1512.3, 1361.02, 11.29, 0, 0, 0, 7, 0, 30, 136, 11, '20', 'Andersons', '2018-07-01 09:19:57', 'LSZD Birojs #4', 3, 0, NULL),
(26, 3089, 1260.52, -802.82, 1084.3, 0, 0, 270, 1260.52, -802.82, 1084.3, 0, 0, 0, 7, 0, 30, 615, 5, '20', 'Andersons', '2018-07-01 09:33:59', 'LSZD Studija #4', 3, 0, NULL),
(27, 3089, 1264.56, -809.77, 1084.31, 0, 0, 90, 1264.56, -809.77, 1084.31, 0, 0, 180, 7, 0, 30, 615, 5, '20', 'linceens', '2018-07-01 11:13:49', 'LSZD ', 3, 0, NULL),
(28, 3089, 1240.32, -810.79, 1084.17, 0, 0, 270, 1240.32, -810.79, 1084.17, 0, 0, 0, 7, 0, 30, 615, 5, '20', 'linceens', '2018-07-01 11:18:43', 'lszd', 3, 0, NULL),
(29, 3089, 1240.31, -813.77, 1084.16, 0, 0, 90, 1240.31, -813.77, 1084.16, 0, 0, 0, 7, 0, 30, 615, 5, '20', 'linceens', '2018-07-01 11:20:29', 'lszd', 3, 0, NULL),
(30, 3089, 1250.89, -801.69, 1084.22, 0, 0, 90, 1250.89, -801.69, 1084.22, 0, 0, 180, 7, 0, 30, 615, 5, '20', 'Andersons', '2018-07-01 14:07:58', 'LSZD Studija #5', 3, 0, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `goats`
--

CREATE TABLE `goats` (
  `id` int(10) UNSIGNED NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rotation` float NOT NULL,
  `interior` int(10) UNSIGNED NOT NULL,
  `dimension` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `health_diagnose`
--

CREATE TABLE `health_diagnose` (
  `uniqueID` int(11) DEFAULT NULL,
  `int_diagnose` varchar(255) DEFAULT NULL,
  `ext_diagnose` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `health_diagnose`
--

INSERT INTO `health_diagnose` (`uniqueID`, `int_diagnose`, `ext_diagnose`) VALUES
(1, '[ { \"r_hand\": \"0\", \"head\": \"0\", \"r_leg\": \"0\", \"r_arm\": \"0\", \"l_hand\": \"0\", \"torso\": \"0\", \"l_foot\": \"0\", \"r_foot\": \"0\", \"abdomen\": \"0\", \"groin\": \"0\", \"l_leg\": \"0\", \"l_arm\": \"0\" } ]', '[ { \"r_hand\": \"0\", \"head\": \"0\", \"r_leg\": \"0\", \"r_arm\": \"0\", \"l_hand\": \"0\", \"torso\": \"0\", \"l_foot\": \"0\", \"r_foot\": \"0\", \"abdomen\": \"0\", \"groin\": \"0\", \"l_leg\": \"0\", \"l_arm\": \"0\" } ]');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `informationicons`
--

CREATE TABLE `informationicons` (
  `id` int(10) DEFAULT NULL,
  `createdby` text,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `rx` float DEFAULT NULL,
  `ry` float DEFAULT NULL,
  `rz` float DEFAULT NULL,
  `interior` float DEFAULT NULL,
  `dimension` float DEFAULT NULL,
  `information` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `informationicons`
--

INSERT INTO `informationicons` (`id`, `createdby`, `x`, `y`, `z`, `rx`, `ry`, `rz`, `interior`, `dimension`, `information`) VALUES
(1, 'Kendrick Collins', 254.438, 76.3027, 1003.64, 0, 0, 169.48, 6, 1, 'Duty Spot');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `insurance_data`
--

CREATE TABLE `insurance_data` (
  `policyid` int(11) NOT NULL,
  `customername` varchar(45) NOT NULL,
  `vehicleid` int(11) NOT NULL,
  `protection` varchar(45) NOT NULL,
  `deductible` int(11) NOT NULL,
  `date` date NOT NULL,
  `claims` float NOT NULL,
  `cashout` float NOT NULL,
  `premium` int(11) NOT NULL,
  `insurancefaction` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `insurance_factions`
--

CREATE TABLE `insurance_factions` (
  `factionID` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `gen_maxi` float NOT NULL DEFAULT '0.005',
  `news` text,
  `subscription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `interiors`
--

CREATE TABLE `interiors` (
  `id` int(11) NOT NULL,
  `x` float DEFAULT '0',
  `y` float DEFAULT '0',
  `z` float DEFAULT '0',
  `type` int(1) DEFAULT '0',
  `owner` int(11) DEFAULT '-1',
  `locked` int(1) DEFAULT '0',
  `cost` int(11) DEFAULT '0',
  `name` text,
  `interior` int(5) DEFAULT '0',
  `interiorx` float DEFAULT '0',
  `interiory` float DEFAULT '0',
  `interiorz` float DEFAULT '0',
  `dimensionwithin` int(5) DEFAULT '0',
  `interiorwithin` int(5) DEFAULT '0',
  `angle` float DEFAULT '0',
  `angleexit` float DEFAULT '0',
  `supplies` int(11) DEFAULT '100',
  `safepositionX` float DEFAULT NULL,
  `safepositionY` float DEFAULT NULL,
  `safepositionZ` float DEFAULT NULL,
  `safepositionRZ` float DEFAULT NULL,
  `disabled` tinyint(3) UNSIGNED DEFAULT '0',
  `lastused` datetime DEFAULT NULL,
  `deleted` varchar(45) NOT NULL DEFAULT '0',
  `createdDate` datetime DEFAULT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `isLightOn` tinyint(4) NOT NULL DEFAULT '0',
  `keypad_lock` int(11) DEFAULT NULL,
  `keypad_lock_pw` varchar(32) DEFAULT NULL,
  `keypad_lock_auto` tinyint(1) DEFAULT NULL,
  `uploaded_interior` datetime DEFAULT NULL,
  `faction` int(11) DEFAULT '0',
  `protected_until` datetime DEFAULT NULL,
  `token` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `interiors`
--

INSERT INTO `interiors` (`id`, `x`, `y`, `z`, `type`, `owner`, `locked`, `cost`, `name`, `interior`, `interiorx`, `interiory`, `interiorz`, `dimensionwithin`, `interiorwithin`, `angle`, `angleexit`, `supplies`, `safepositionX`, `safepositionY`, `safepositionZ`, `safepositionRZ`, `disabled`, `lastused`, `deleted`, `createdDate`, `creator`, `isLightOn`, `keypad_lock`, `keypad_lock_pw`, `keypad_lock_auto`, `uploaded_interior`, `faction`, `protected_until`, `token`) VALUES
(1, 1555.51, -1675.58, 16.1953, 2, -1, 0, 0, 'Los Santos Policijas Departments', 3, 302.357, 191.022, 1040.03, 0, 0, 269.809, 271.968, 100, NULL, NULL, NULL, NULL, 0, '2019-01-30 23:04:43', '0', '2017-07-10 18:51:22', 'Shockins', 0, NULL, NULL, NULL, NULL, 1, NULL, 0),
(2, 1482.63, -1772.31, 18.7958, 2, -1, 0, 0, 'Los Santos Dome', 3, 1473.63, -1910.43, 289.1, 0, 0, 181.11, 180.555, -38, NULL, NULL, NULL, NULL, 0, '2019-02-18 18:09:46', '0', '2017-07-10 18:53:36', 'Shockins', 0, NULL, NULL, NULL, NULL, 3, NULL, 0),
(3, 1172.08, -1321.53, 15.399, 2, -1, 0, 0, 'Los Santos GlÄbÅ¡anas Dienests', 3, 1564.15, 1799.39, 2083.41, 0, 0, 91.1687, 1.74411, 79, NULL, NULL, NULL, NULL, 0, '2019-01-09 20:42:18', '0', '2017-07-10 18:56:39', 'Shockins', 0, NULL, NULL, NULL, NULL, 2, NULL, 0),
(5, 1219.22, -1811.7, 16.5938, 2, 0, 0, 0, 'CeÄ¼u Satiksmes DroÅ¡Ä«bas Direkcija', 11, -27.5527, 73.9521, 1002.12, 0, 0, 3.35364, 270.611, -20, NULL, NULL, NULL, NULL, 0, '2019-02-04 19:31:59', '0', '2017-07-10 19:05:10', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(7, 2668, -2564.59, 13.6328, 2, -1, 0, 0, 'Los Santos Auto KonfiscÄ“tuve', 3, 1794.77, -1393.64, 29.236, 0, 0, 171.623, 182.554, -3336, NULL, NULL, NULL, NULL, 0, '2019-01-09 20:45:47', '0', '2017-07-10 19:12:08', 'Danex', 0, NULL, NULL, NULL, NULL, 4, NULL, 0),
(8, 1940.38, -1562.01, 13.6166, 0, -1, 1, 12000, 'Little Mexico GarÄÅ¾a #1', 38, 1422.08, -2451.74, 13.5547, 0, 0, 321.501, 179.335, 100, NULL, NULL, NULL, NULL, 0, '2018-08-09 13:52:39', '0', '2018-01-23 17:46:50', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(9, 598.294, -1259.88, 68.9971, 2, 0, 0, 0, 'DrÄ“bju veikals', 3, 2458.82, -1677.46, 861.653, 135, 3, 269.469, 90.2458, -1236, NULL, NULL, NULL, NULL, 0, '2019-01-09 20:15:06', '0', '2017-07-11 17:23:58', 'Danex', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(10, 2468.36, -1399.12, 28.8281, 3, -1, 1, 50, 'East Los Santos DzÄ«voklis #01', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 359.239, 100, NULL, NULL, NULL, NULL, 0, '2018-08-10 01:57:02', '0', '2018-02-04 17:12:06', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(11, 2015.35, -1732.65, 14.2344, 0, -1, 1, 12000, 'Idlewood MÄja #1', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 267.744, 100, NULL, NULL, NULL, NULL, 0, '2018-08-13 23:16:07', '0', '2017-07-14 13:17:47', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(12, 2016.2, -1717.07, 14.125, 0, -1, 1, 9000, 'Idlewood MÄja #2', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 269.051, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-14 13:18:12', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(13, 2018.24, -1703.29, 14.2344, 0, -1, 1, 15000, 'Idlewood MÄja #3', 5, 22.98, 1403.6, 1084.42, 0, 0, 0, 269.403, 100, NULL, NULL, NULL, NULL, 0, '2018-07-25 23:27:39', '0', '2017-07-14 13:18:27', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(14, 2013.58, -1656.45, 14.1363, 0, -1, 1, 8000, 'Idlewood MÄja #4', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 269.551, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 16:14:27', '0', '2017-07-14 13:18:47', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(15, 1657, -1862.57, 13.5339, 0, -1, 1, 15000, 'Idlewood MÄja #5', 10, 2270.41, -1210.46, 1047.56, 0, 0, 329.23, 269.403, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 19:07:30', '0', '2017-07-14 13:18:57', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(16, 2018.05, -1629.94, 14.0426, 0, -1, 1, 7000, 'Idlewood MÄja #6', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 270.205, 100, NULL, NULL, NULL, NULL, 0, '2018-07-15 22:31:06', '0', '2017-07-14 13:19:06', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(17, 2067.7, -1628.81, 14.2066, 0, -1, 1, 10000, 'Idlewood MÄja #7', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 89.2076, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-14 13:19:23', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(18, 2067.56, -1643.64, 14.1363, 0, -1, 1, 10000, 'Idlewood MÄja #8', 8, -42.65, 1405.46, 1084.42, 0, 0, 0, 91.317, 100, NULL, NULL, NULL, NULL, 0, '2018-07-22 21:42:03', '0', '2017-07-14 13:19:33', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(19, 989.985, -1750.57, 13.4987, 0, 14, 0, 65000, 'Danex GarÄÅ¾a', 3, -71.0328, -84.6094, 1008.15, 0, 0, 316.392, 89.9547, 10, NULL, NULL, NULL, NULL, 0, '2019-01-30 20:20:31', '0', '2018-11-24 16:29:19', 'Danex', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(20, 2065.1, -1703.43, 14.1484, 0, -1, 1, 10000, 'Idlewood MÄja #10', 5, 22.98, 1403.6, 1084.42, 0, 0, 0, 91.2181, 70, NULL, NULL, NULL, NULL, 0, '2018-08-20 09:46:17', '0', '2017-07-14 13:20:13', 'Shockins', 0, 1192, 'D0FB963FF976F9C37FC81FE03C21EA7B', NULL, NULL, 0, NULL, 0),
(21, 2063.46, -1716.96, 14.2334, 0, -1, 1, 7500, 'Idlewood MÄja #11', 6, 2308.8, -1212.94, 1049.02, 0, 0, 80.4184, 90.9655, 100, NULL, NULL, NULL, NULL, 0, '2018-07-13 22:13:41', '0', '2017-07-14 13:20:23', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(23, 2244.42, -1637.6, 16.2379, 0, -1, 1, 28500, 'Ganton, Grove St. MÄja, #1', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 340.04, 100, NULL, NULL, NULL, NULL, 0, '2018-02-18 13:20:47', '0', '2017-07-14 13:21:34', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(24, 2257.15, -1643.95, 15.8082, 0, -1, 1, 22560, 'Ganton, Grove St. MÄja, #2', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 350.999, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-14 13:21:45', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(25, 2282.3, -1641.21, 15.8898, 0, -1, 1, 23500, 'Ganton, Grove St. MÄja, #3', 5, 318.55, 1114.47, 1083.88, 0, 0, 0, 0.118103, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-14 13:29:42', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(26, 2306.94, -1679.2, 14.3316, 0, -1, 1, 23500, 'Ganton, Grove St. MÄja, #4', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 179.758, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-14 13:30:37', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(27, 2368.24, -1675.34, 14.1682, 0, -1, 1, 23500, 'Ganton, Grove St. MÄja, #5', 4, 261.14, 1284.56, 1080.25, 0, 0, 186.658, 179, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-14 13:31:06', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(28, 2362.88, -1643.14, 14.3516, 0, -1, 1, 23500, 'Ganton, Grove St. MÄja, #6', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 359.36, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 19:08:43', '0', '2017-07-14 13:31:15', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(29, 2473.18, -1399.1, 28.834, 3, -1, 1, 50, 'East Los Santos DzÄ«voklis #02', 10, 422.26, 2536.37, 10, 0, 0, 90, 358.651, 100, NULL, NULL, NULL, NULL, 0, '2018-07-17 00:37:05', '0', '2018-02-04 17:13:05', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(30, 2384.63, -1675.83, 15.2457, 0, -1, 1, 23500, 'Ganton, Grove St. MÄja, #8', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 179.923, 100, NULL, NULL, NULL, NULL, 0, '2018-08-09 00:49:47', '0', '2017-07-14 13:31:38', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(31, 2393.24, -1646.03, 13.9051, 0, -1, 1, 23500, 'Ganton, Grove St. MÄja, #9', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 359.311, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-14 13:31:47', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(32, 2409.03, -1674.93, 14.375, 0, -1, 1, 24000, 'Ganton, Grove St. MÄja, #10', 10, 2270.41, -1210.46, 1047.56, 0, 0, 0, 179.824, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 19:10:13', '0', '2017-07-14 13:31:57', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(33, 2413.91, -1646.79, 14.0119, 0, -1, 1, 23500, 'Ganton, Grove St. MÄja, #11', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 0.568542, 100, NULL, NULL, NULL, NULL, 0, '2018-07-24 23:09:28', '0', '2017-07-14 13:32:06', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(34, 2476.45, -1399.1, 28.8348, 3, -1, 1, 70, 'East Los Santos DzÄ«voklis #03', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 2.94162, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-02-04 17:13:54', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(35, 2451.92, -1641.41, 14.0662, 0, -1, 1, 18000, 'Ganton, Grove St. MÄja, #13', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 359.508, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 15:45:14', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(36, 2469.5, -1646.35, 13.7801, 0, -1, 1, 28900, 'Ganton, Grove St. MÄja, #14', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 358.503, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 15:45:25', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(37, 2486.49, -1644.53, 14.0703, 0, -1, 1, 23000, 'Ganton, Grove St. MÄja, #15', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 359.311, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 15:46:34', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(38, 2498.5, -1642.25, 14.1131, 0, -1, 1, 20000, 'Ganton, Grove St. MÄja, #16', 8, -42.65, 1405.46, 1084.42, 0, 0, 0, 359.311, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 15:46:55', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(39, 2513.78, -1650.31, 14.3557, 0, -1, 1, 22550, 'Ganton, Grove St. MÄja, #17', 2, 226.48, 1239.87, 1082.14, 0, 0, 90, 314.964, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 16:48:49', '0', '2017-07-15 15:47:04', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(40, 2524.71, -1658.59, 15.824, 0, -1, 1, 20500, 'Ganton, Grove St. MÄja, #18', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 270.166, 100, NULL, NULL, NULL, NULL, 0, '2018-02-08 18:44:18', '0', '2017-07-15 15:47:14', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(41, 2523.27, -1679.43, 15.497, 0, -1, 1, 0, 'Ganton, Grove St. MÄja, #19', 2, 2468.77, -1698.25, 1013.5, 0, 0, 90, 268.71, 100, NULL, NULL, NULL, NULL, 0, '2018-07-18 17:39:10', '0', '2017-07-15 15:47:24', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(42, 2514.3, -1691.65, 14.046, 0, -1, 1, 19500, 'Ganton, Grove St. MÄja, #20', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 229.945, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 15:47:48', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(43, 2459.51, -1691.66, 13.5449, 0, -1, 1, 26000, 'Ganton, Grove St. MÄja, #21', 5, 318.55, 1114.47, 1083.88, 0, 0, 0, 178.511, 100, NULL, NULL, NULL, NULL, 0, '2018-08-06 21:09:50', '0', '2017-07-15 15:48:02', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(44, 2468.33, -1410.01, 28.8338, 3, -1, 1, 80, 'East Los Santos DzÄ«voklis #04', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 179.802, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-02-04 17:15:12', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(45, 2402.64, -1714.92, 14.1328, 0, -1, 1, 23500, 'Ganton, Liverpool Rd. MÄja, #1', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 358.877, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 16:49:07', '0', '2017-07-15 15:49:37', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(46, 2385.4, -1711.66, 14.2422, 0, -1, 1, 21000, 'Ganton, Liverpool Rd. MÄja, #2', 26, 1974.03, -2488.14, 13.62, 0, 0, 0, 0.733368, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 15:49:55', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(47, 2473.19, -1410.01, 28.8338, 3, -1, 1, 60, 'East Los Santos DzÄ«voklis #05', 2, 266.56, 305.02, 999.14, 0, 0, 270, 178.039, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-02-04 17:17:03', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(48, 2326.82, -1716.7, 14.2379, 0, -1, 1, 16000, 'Ganton, Liverpool Rd. MÄja, #4', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 0.0466919, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 15:50:45', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(49, 2308.99, -1714.33, 14.9801, 0, -1, 1, 16500, 'Gaston, Liverpool Rd. MÄja, #3', 10, 422.26, 2536.37, 10, 0, 0, 90, 4.60059, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-25 12:02:59', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(50, 2151.04, -1789.08, 13.5093, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #1', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 89.8997, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 01:38:34', '0', '2017-07-15 15:52:42', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(51, 2151.05, -1807.93, 13.5463, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #2', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 91.4104, 100, NULL, NULL, NULL, NULL, 0, '2018-07-17 14:24:44', '0', '2017-07-15 15:52:55', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(52, 2151.04, -1815.16, 13.5499, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #3', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 88.043, 100, NULL, NULL, NULL, NULL, 0, '2018-07-06 13:16:20', '0', '2017-07-15 15:53:04', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(53, 2155.8, -1815.22, 13.5469, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #4', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 180.302, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 15:53:09', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(54, 2162.73, -1815.23, 13.5469, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #5', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 180.302, 100, NULL, NULL, NULL, NULL, 0, '2018-08-03 14:18:44', '0', '2017-07-15 15:53:15', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(55, 2168.97, -1815.23, 13.5469, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #6', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 180.302, 100, NULL, NULL, NULL, NULL, 0, '2018-03-17 17:11:54', '0', '2017-07-15 15:53:19', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(56, 2176.37, -1815.23, 13.5469, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #7', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 180.302, 100, NULL, NULL, NULL, NULL, 0, '2018-07-22 19:02:32', '0', '2017-07-15 15:53:25', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(57, 2185.69, -1815.23, 13.5469, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #8', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 183.62, 100, NULL, NULL, NULL, NULL, 0, '2017-09-17 01:33:38', '0', '2017-07-15 15:53:32', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(58, 2192.36, -1815.23, 13.5469, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #9', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 179.797, 100, NULL, NULL, NULL, NULL, 0, '2018-07-14 00:12:57', '0', '2017-07-15 15:53:39', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(59, 2176.49, -1821.71, 16.146, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #10', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 270.045, 100, NULL, NULL, NULL, NULL, 0, '2018-03-09 22:21:11', '0', '2017-07-15 15:53:50', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(60, 2172.27, -1819.7, 16.1406, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #11', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 181.593, 100, NULL, NULL, NULL, NULL, 0, '2018-08-22 10:52:34', '0', '2017-07-15 15:53:55', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(61, 2164.8, -1819.7, 16.1406, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #12', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 181.593, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 15:53:59', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(62, 2158.34, -1819.7, 16.1406, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #13', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 181.593, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 15:54:04', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(63, 2151.93, -1819.7, 16.1406, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #14', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 181.593, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 15:54:08', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(64, 2146.47, -1815.03, 16.1406, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #15', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 92.8002, 100, NULL, NULL, NULL, NULL, 0, '2018-02-28 21:08:38', '0', '2017-07-15 15:54:13', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(65, 2146.52, -1808.41, 16.1406, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #16', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 89.0812, 100, NULL, NULL, NULL, NULL, 0, '2018-04-28 09:21:14', '0', '2017-07-15 15:54:18', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(66, 2140.93, -1801.88, 16.1475, 3, -1, 0, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #17', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 92.097, 100, NULL, NULL, NULL, NULL, 0, '2018-08-22 18:23:38', '0', '2017-07-15 15:54:29', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(67, 2145.04, -1801.77, 16.1406, 3, -1, 1, 100, 'Idlewood, San Andreas Blvd., ÄªrÄ“jamais dzÄ«voklis #18', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 2.5571, 100, NULL, NULL, NULL, NULL, 0, '2018-08-10 18:16:50', '0', '2017-07-15 15:54:38', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(68, 2148.93, -1484.8, 26.6242, 0, -1, 1, 18000, 'Jefferson, Guatanamo Ave, MÄja #1', 10, 24, 1340.33, 1084.37, 0, 0, 0, 269.337, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 16:53:55', '0', '2017-07-15 15:57:11', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(69, 2146.8, -1470.43, 26.0426, 0, -1, 1, 9000, 'Jefferson, Guatanamo Ave, MÄja #2', 5, 22.98, 1403.6, 1084.42, 0, 0, 0, 269.837, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 15:57:28', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(70, 2152.21, -1446.39, 26.1051, 0, -1, 1, 10000, 'Jefferson, Guatanamo Ave, MÄja #3', 15, 387.22, 1471.76, 1080.18, 0, 0, 90, 271.649, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 15:58:39', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(71, 2149.86, -1433.73, 26.0703, 0, -1, 1, 11000, 'Jefferson, Guatanamo Ave, MÄja #4', 26, 1974.03, -2488.14, 13.62, 0, 0, 0, 270.606, 100, NULL, NULL, NULL, NULL, 0, '2018-08-23 20:02:54', '0', '2017-07-15 15:59:24', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(72, 2150.92, -1419.08, 25.9219, 0, -1, 1, 9000, 'Jefferson, Guatanamo Ave, MÄja #5', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 270.155, 100, NULL, NULL, NULL, NULL, 0, '2018-08-05 16:01:10', '0', '2017-07-15 15:59:40', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(73, 2151.18, -1400.74, 26.1285, 0, -1, 1, 6000, 'Jefferson, Guatanamo Ave, MÄja #6', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 268.996, 100, NULL, NULL, NULL, NULL, 0, '2018-08-18 23:39:59', '0', '2017-07-15 15:59:49', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(75, 2147.69, -1366.12, 25.9723, 0, -1, 1, 7000, 'Jefferson, Carson St., MÄja #2', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 1.31015, 100, NULL, NULL, NULL, NULL, 0, '2018-07-13 19:58:50', '0', '2017-07-15 16:00:51', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(76, 2185.17, -1363.71, 26.1598, 0, -1, 1, 7000, 'Jefferson, Carson St., MÄja #3', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 1.5079, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 16:01:05', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(77, 2202.77, -1363.67, 26.191, 0, -1, 1, 7500, 'Jefferson, Carson St., MÄja #4', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 0.804779, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 16:01:12', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(78, 2230.44, -1397.24, 24.5738, 0, -1, 1, 7500, 'Jefferson, Carson Quadrant, MÄja #1', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 182.439, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 16:02:27', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(79, 2243.54, -1397.24, 24.5738, 0, -1, 1, 7500, 'Jefferson, Carson Quadrant, MÄja #2', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 180.626, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 16:02:34', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(80, 2256.46, -1397.24, 24.5738, 0, -1, 1, 7500, 'Jefferson, Carson Quadrant, MÄja #3', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 180.527, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 16:02:39', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(81, 2263.93, -1469.34, 24.3707, 0, -1, 1, 8000, 'Jefferson, Carson Quadrant, MÄja #4', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 0.535583, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 16:02:59', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(82, 2247.79, -1469.34, 24.4801, 0, -1, 1, 8000, 'Jefferson, Carson Quadrant, MÄja #5', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 1.28818, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 16:03:06', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(83, 2232.56, -1469.33, 24.5816, 0, -1, 1, 8000, 'Jefferson, Carson Quadrant, MÄja #6', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 359.981, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 16:03:12', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(84, 2100.82, -1321.89, 25.9531, 0, -1, 1, 22000, 'Glen Park, Belview Rd., MÄja #1', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 181.011, 100, NULL, NULL, NULL, NULL, 0, '2018-08-05 00:34:43', '0', '2017-07-15 16:04:18', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(85, 2126.63, -1320.86, 26.624, 0, -1, 1, 23000, 'Glen Park, Belview Rd., MÄja #2', 3, 235.44, 1186.83, 1080.25, 0, 0, 0, 180.055, 100, NULL, NULL, NULL, NULL, 0, '2018-08-16 22:15:38', '0', '2017-07-15 16:04:32', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(86, 2146.7, -1327.79, 26.0156, 0, -1, 1, 18000, 'Glen Park, Belview Rd., MÄja #3', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 181.615, 100, NULL, NULL, NULL, NULL, 0, '2018-07-25 18:25:51', '0', '2017-07-15 16:04:59', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(87, 2150.17, -1285.04, 24.5269, 0, -1, 1, 20000, 'Glen Park, Belview Rd., MÄja #4', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 0.821259, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 16:05:10', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(88, 2132.31, -1280.05, 25.8906, 0, -1, 1, 22000, 'Glen Park, Belview Rd., MÄja #5', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 1.12338, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 16:05:25', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(89, 2111.25, -1278.98, 25.8359, 0, -1, 1, 23500, 'Glen Park, Belview Rd., MÄja #6', 8, -42.65, 1405.46, 1084.42, 0, 0, 0, 359.915, 100, NULL, NULL, NULL, NULL, 0, '2018-07-19 21:34:01', '0', '2017-07-15 16:05:31', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(90, 2090.97, -1277.84, 26.1797, 0, -1, 1, 19000, 'Glen Park, Belview Rd., MÄja #7', 1, 223.22, 1287.17, 1082.14, 0, 0, 0, 2.27695, 100, NULL, NULL, NULL, NULL, 0, '2018-08-16 21:23:05', '0', '2017-07-15 16:05:39', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(91, 2090.74, -1235.18, 26.0191, 0, -1, 1, 22500, 'Glen Park, George St., MÄja #1', 26, 1974.03, -2488.14, 13.62, 0, 0, 0, 181.329, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 16:06:14', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(92, 2110.88, -1244.4, 25.8516, 0, -1, 1, 19500, 'Glen Park, George St., MÄja #2', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 180.423, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 16:06:33', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(93, 2153.71, -1243.8, 25.3672, 0, -1, 1, 25000, 'Glen Park, George St., MÄja #3', 5, 22.98, 1403.6, 1084.42, 0, 0, 0, 180.478, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 16:06:45', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(94, 2133.53, -1233, 24.4219, 0, -1, 1, 22500, 'Glen Park, George St., MÄja #4', 10, 2270.41, -1210.46, 1047.56, 0, 0, 0, 180.829, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-07-15 16:07:02', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(95, 2191.76, -1239.24, 24.4879, 0, -1, 1, 23500, 'Glen Park, George St., MÄja #5', 6, 2333, -1077, 1049, 0, 0, 0, 181.077, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 19:05:07', '0', '2017-07-15 16:07:18', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(96, 2209.8, -1240.25, 24.4801, 0, -1, 1, 17500, 'Glen Park, George St., MÄja #6', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 181.884, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 19:04:28', '0', '2017-07-15 16:07:27', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(97, 2229.72, -1241.61, 25.6562, 0, -1, 1, 25000, 'Glen Park, George St., MÄja #7', 10, 2270.41, -1210.46, 1047.56, 0, 0, 0, 179.522, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 19:01:43', '0', '2017-07-15 16:07:43', 'Shockins', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(98, 2029.65, -1648.35, 13.5547, 0, -1, 1, 12000, 'Idlewood GarÄÅ¾a #1', 3, 620.01, -119.85, 998.84, 0, 0, 180, 267.755, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-10-12 16:15:47', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(99, 2665.21, -2593.52, 13.6953, 2, -1, 0, 0, 'LSAK garÄÅ¾a', 25, 1532.41, 1609.19, 11.048, 0, 0, 87.6475, 282.158, -1005, 1556.3, 1625.31, 14.6554, 270.993, 0, '2019-01-09 20:46:10', '0', '2017-08-01 21:24:41', 'ViensDivi3', 0, NULL, NULL, NULL, NULL, 4, NULL, 0),
(100, 2476.3, -1410.02, 28.8338, 0, -1, 1, 50, 'East Los Santos DzÄ«voklis #06', 10, 422.26, 2536.37, 10, 0, 0, 90, 182.51, 100, NULL, NULL, NULL, NULL, 0, '2018-07-23 13:23:35', '0', '2018-02-04 17:17:38', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(101, 142.144, -1791.15, 3.7, 2, 0, 0, 0, 'Zivju BodÄ«te', 45, 1384.83, 1464.5, 10.8644, 0, 0, 0, 15.8672, 100, NULL, NULL, NULL, NULL, 0, '2019-01-11 18:36:27', '0', '2019-01-10 17:21:30', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(102, 1659.45, -1820.62, 13.5515, 0, -1, 1, 23500, 'Metropolitian Ave GarÄÅ¾a #12', 38, 1422.08, -2451.74, 13.5547, 0, 0, 0, 267.205, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-10-15 00:14:23', 'Kapracis', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(103, 1653.9, -1842.24, 13.5453, 0, -1, 1, 22500, 'Metropolitian Ave GarÄÅ¾a #13', 38, 1422.08, -2451.74, 13.5547, 0, 0, 0, 176.968, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-10-15 00:14:53', 'Kapracis', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(104, 1940, -2115.97, 13.6953, 1, -1, 1, 30000, 'El Corona Sex shop', 3, -100.4, -24.96, 1000.71, 0, 0, 0, 90.8776, 1115, NULL, NULL, NULL, NULL, 0, '2018-07-18 23:24:23', '0', '2017-08-02 14:03:37', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(106, 2105.47, -1806.54, 13.5547, 1, -1, 1, 40000, 'The Well Stacked Pizza', 5, 372.18, -133.28, 1001.49, 0, 0, 0, 269.188, 8731, NULL, NULL, NULL, NULL, 0, '2018-08-21 22:13:47', '0', '2017-08-02 14:11:47', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(107, 2728.92, -1827.92, 11.8438, 2, 0, 1, 0, 'Stadions', 15, -1424.42, 928.36, 1036.39, 0, 0, 350, 358.223, 100, NULL, NULL, NULL, NULL, 0, '2018-06-19 23:53:11', '0', '2017-08-02 14:39:24', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(108, 2397.78, -1899.18, 13.5469, 2, 0, 0, 0, 'Donut Stack', 17, 377.16, -192.91, 1000.64, 0, 0, 0, 179.379, 50, NULL, NULL, NULL, NULL, 0, '2018-08-22 10:48:57', '0', '2017-08-02 16:12:53', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(111, 1679.91, -1832.78, 13.5469, 1, -1, 1, 20000, 'ElektropreÄu veikals', 6, -2240.69, 128.43, 1035.41, 0, 0, 270, 92.2234, 11816, NULL, NULL, NULL, NULL, 0, '2018-08-21 12:10:52', '0', '2017-08-02 16:27:32', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(112, 2487.38, -1399.1, 28.8375, 3, -1, 1, 70, 'East Los Santos DzÄ«voklis #06', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 357.602, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-02-04 17:18:53', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(114, 2414.67, -1426.25, 23.9857, 0, -1, 1, 35000, 'Carson St. GarÄÅ¾a #1', 24, 529.506, 63.9219, 1044.46, 0, 0, 0, 272.605, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-10-19 19:51:22', 'Kapracis', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(117, 2351.05, -1039.82, 54.3358, 3, -1, 1, 70, 'Las Colinas Treileris #01', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 14.0984, 100, NULL, NULL, NULL, NULL, 0, '2018-07-12 17:20:12', '0', '2017-11-05 17:17:26', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(118, 2370.19, -1034.57, 54.4106, 3, -1, 1, 80, 'Las Colinas Treileris #02', 10, 422.26, 2536.37, 10, 0, 0, 90, 359.821, 100, NULL, NULL, NULL, NULL, 0, '2018-08-21 08:10:35', '0', '2017-11-05 17:19:06', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(119, 2362.74, -1046.4, 54.2733, 3, -1, 1, 70, 'Las Colinas Treileris #03', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 25.4914, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-11-05 17:20:35', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(120, 2355.79, -1058.8, 54.078, 0, -1, 1, 4000, 'Las Colinas Treileris #04', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 25.4914, 100, NULL, NULL, NULL, NULL, 0, '2017-11-12 13:05:51', '0', '2017-11-05 17:21:56', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(121, 2492.23, -1399.09, 28.8386, 3, -1, 1, 50, 'East Los Santos DzÄ«voklis #07', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 359.547, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-02-04 17:20:05', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(122, 2495.44, -1399.09, 28.8394, 3, -1, 1, 60, 'East Los Santos DzÄ«voklis #08', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 358.371, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-02-04 17:21:53', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(123, 2487.25, -1410.02, 28.8374, 3, -1, 1, 50, 'East Los Santos DzÄ«voklis #09', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 178.934, 100, NULL, NULL, NULL, NULL, 0, '2018-07-26 15:57:46', '0', '2018-02-04 17:22:53', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(124, 2492.19, -1410.03, 28.8386, 3, -1, 1, 70, 'East Los Santos DzÄ«voklis #10', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 181.285, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-02-04 17:23:18', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(125, 2495.28, -1410.03, 28.8394, 3, -1, 1, 50, 'East Los Santos DzÄ«voklis #11', 10, 422.26, 2536.37, 10, 0, 0, 90, 179.522, 100, NULL, NULL, NULL, NULL, 0, '2018-08-02 23:23:36', '0', '2018-02-04 17:23:47', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(127, 1803.89, -1806.2, 13.5428, 0, -1, 1, 10000, 'Washington St. DzÄ«voklis #1', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 5.0181, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 18:13:47', '0', '2017-08-03 16:58:50', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(128, 2037.28, -1761.96, 13.5469, 2, 0, 0, 70, 'Idlewood dzÄ«vokÄ¼i', 1, 2300.72, 1685.69, 1101.91, 0, 0, 180, 181.599, 100, NULL, NULL, NULL, NULL, 0, '2019-01-09 20:12:24', '0', '2018-07-07 22:17:12', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(129, 1948.23, -1984.16, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #06', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 173.106, 100, NULL, NULL, NULL, NULL, 0, '2018-08-19 22:52:16', '0', '2018-06-20 22:19:11', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(130, 1848.33, -1871.65, 13.5781, 0, 0, 0, 15000, 'Unity Stacijas BÄrs', 30, -199.28, 1119.81, 225.94, 0, 0, 0, 282.037, 570, NULL, NULL, NULL, NULL, 0, '2019-01-09 20:09:28', '0', '2018-03-07 15:37:27', 'ViensDivi3', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(131, -348.049, -1045.66, 59.8125, 0, -1, 1, 10000, 'Beacon Hill MÄja #1', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 357.003, 100, NULL, NULL, NULL, NULL, 0, '2018-08-15 08:46:11', '0', '2017-08-21 16:16:55', 'ViensDivi3', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(132, 1770.17, -1867.08, 13.5706, 1, -1, 1, 35000, 'Lietotas Auto DetaÄ¼as', 27, 1877.89, -2466.96, 13.58, 0, 0, 0, 174.891, 156, NULL, NULL, NULL, NULL, 0, '2018-08-24 10:45:01', '0', '2017-08-03 17:10:47', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(133, 2335.1, -1046.01, 52.5529, 0, -1, 1, 4000, 'Las Colinas Treileris #05', 10, 422.26, 2536.37, 10, 0, 0, 90, 179.434, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-11-05 17:22:59', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(134, 1757.49, -1867.97, 13.5695, 1, -1, 1, 25000, 'PÄrtikas veikals', 4, -27.3, -31.41, 1003.55, 0, 0, 0, 181.472, 96, NULL, NULL, NULL, NULL, 0, '2018-08-08 10:49:27', '0', '2017-08-03 17:15:43', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(135, 2250.96, -1667.24, 15.4766, 2, 0, 0, 0, 'AksesuÄru un drÄ“bju veikals \"Mabako\"', 3, 581.241, -1255.16, 68.9844, 0, 0, 171.057, 180.758, 100, NULL, NULL, NULL, NULL, 0, '2019-01-11 18:08:19', '0', '2017-10-07 18:13:14', 'Danex', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(136, 649.325, -1353.98, 13.547, 2, -1, 0, 0, 'Los Santos ZiÅ†u Dienests', 11, 1509.09, 1333.71, 10.9611, 0, 0, 183.829, 179.132, 100, NULL, NULL, NULL, NULL, 0, '2019-01-09 20:44:31', '0', '2017-10-07 18:40:06', 'Danex', 0, NULL, NULL, NULL, NULL, 20, NULL, 0),
(137, 1599.91, -1832.94, 13.4879, 0, -1, 1, 13000, 'Idlewood GarÄÅ¾a #3', 38, 1422.08, -2451.74, 13.5547, 0, 0, 88.6857, 1.42001, 100, NULL, NULL, NULL, NULL, 0, '2018-08-18 20:18:07', '0', '2017-08-03 17:49:08', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(138, 1611, -1842.94, 13.5207, 0, -1, 1, 18000, 'Idlewood GarÄÅ¾a #2', 24, 529.506, 63.9219, 1044.46, 0, 0, 179.736, 3.54041, 100, NULL, NULL, NULL, NULL, 0, '2018-08-23 14:14:57', '0', '2017-08-03 17:53:22', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(140, 2325.42, -1060.98, 52.4686, 0, -1, 1, 5000, 'Las Colinas Treileris #06', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 176.501, 100, NULL, NULL, NULL, NULL, 0, '2018-06-28 15:50:42', '0', '2017-11-05 17:24:29', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(141, 2300.64, 1677.32, 1103.9, 3, -1, 1, 70, 'DzÄ«voklis #1', 5, 2233.57, -1115.08, 1050.88, 128, 1, 0, 178.478, 100, NULL, NULL, NULL, NULL, 0, '2018-07-28 10:10:09', '0', '2018-07-07 22:20:29', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(144, 1836.83, -1417.41, 13.6016, 1, -1, 1, 23000, 'Lombards', 27, 1877.89, -2466.96, 13.58, 0, 0, 95.6292, 273.989, 100, NULL, NULL, NULL, NULL, 0, '2018-01-16 20:06:19', '0', '2017-08-03 18:15:02', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(145, 2284.16, -1046.08, 49.8871, 0, -1, 1, 4000, 'Las Colinas Treileris #07', 10, 422.26, 2536.37, 10, 0, 0, 90, 323.797, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-11-05 17:27:05', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(146, 2297.71, -1053.08, 49.934, 3, -1, 1, 70, 'Las Colinas Treileris #08', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 337.316, 100, NULL, NULL, NULL, NULL, 0, '2018-08-06 00:43:29', '0', '2017-11-05 17:29:07', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(147, 2075.64, -2020.04, 13.5469, 0, -1, 1, 15000, 'Gates St. Noliktava #8', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 92.0366, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-11-20 17:28:35', 'MentuM', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(148, 2000.87, -1761.96, 13.5391, 1, -1, 1, 18000, 'Idlewood PÄrtikas Veikals \"Sven Art\"', 4, -27.3, -31.41, 1003.55, 0, 0, 0, 182.543, 491, NULL, NULL, NULL, NULL, 0, '2018-09-23 15:57:28', '0', '2017-08-03 18:25:40', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(149, 1980.38, -1718.86, 17.0302, 0, -1, 1, 20000, 'Idlewood MÄja #01', 8, 2807.66, -1174.54, 1025.57, 0, 0, 0, 90.7897, 100, NULL, NULL, NULL, NULL, 0, '2018-01-16 19:55:32', '0', '2017-08-03 18:29:36', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(150, 1973.35, -1705.15, 15.9688, 0, -1, 1, 18000, 'Idlewood MÄja #02', 33, 2322.57, -1393.4, 395.09, 0, 0, 0, 4.9137, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 18:14:20', '0', '2017-08-03 18:32:47', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(151, 1981, -1683.03, 17.054, 0, -1, 1, 20000, 'Idlewood MÄja #04', 8, 2807.66, -1174.54, 1025.57, 0, 0, 0, 90.4765, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-08-03 18:33:56', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(152, 1969.96, -1671.2, 18.5456, 3, -1, 1, 50, 'Idlewood dzÄ«voklis #1', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 1.49142, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-08-03 18:37:21', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(153, 1974.75, -1671.19, 18.5456, 3, -1, 1, 50, 'Idlewood dzÄ«voklis #2', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 1.08493, 100, NULL, NULL, NULL, NULL, 0, '2017-09-18 18:32:37', '0', '2017-08-03 18:42:21', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(155, 1974.78, -1671.19, 15.9688, 3, -1, 1, 50, 'Idlewood dzÄ«voklis #4', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 357.3, 100, NULL, NULL, NULL, NULL, 0, '2017-09-25 17:12:56', '0', '2017-08-03 18:43:17', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(156, 1973.41, -1654.67, 15.9688, 0, -1, 1, 15000, 'Idlewood MÄja #6', 2, 226.48, 1239.87, 1082.14, 0, 0, 90, 0.431213, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-08-03 18:44:21', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(157, 1940.7, -1971.75, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #08', 2, 266.56, 305.02, 999.14, 0, 0, 270, 176.627, 100, NULL, NULL, NULL, NULL, 0, '2018-07-12 23:41:43', '0', '2018-06-20 22:20:35', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(159, 2232.96, -1333.1, 23.9815, 2, 0, 0, 1, 'Los Santos centrÄlÄ baznÄ«ca', 20, 1412.26, 1525.49, 1542.8, 0, 0, 262.179, 182.318, 100, NULL, NULL, NULL, NULL, 0, '2018-08-05 22:38:59', '0', '2018-07-06 19:52:29', 'Unicorn', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(160, 1679.92, -1839.3, 13.538, 1, -1, 1, 15000, 'Lombards', 27, 1877.89, -2466.96, 13.58, 0, 0, 0, 94.6184, 467, NULL, NULL, NULL, NULL, 0, '2018-08-20 13:41:10', '0', '2017-08-03 18:56:32', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(161, 1654.09, -1654.76, 22.5156, 0, -1, 1, 60000, 'Luksus dzÄ«voklis', 5, 140.39, 1366.36, 1083.85, 0, 0, 0, 3.79309, 100, NULL, NULL, NULL, NULL, 0, '2018-07-02 19:01:55', '0', '2017-08-03 18:59:55', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(162, 1567.91, -1898.01, 13.5609, 1, -1, 1, 24750, 'RestorÄns Si-Si', 1, -794.98, 489.78, 1376.2, 0, 0, 179.099, 271.073, 99, NULL, NULL, NULL, NULL, 0, '2017-12-29 11:12:17', '0', '2017-08-03 19:02:36', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(163, 1579, -1829.92, 13.4005, 1, -1, 1, 25000, 'Lombards', 27, 1877.89, -2466.96, 13.58, 0, 0, 0, 270.759, 100, NULL, NULL, NULL, NULL, 0, '2018-01-16 20:06:09', '0', '2017-08-03 19:03:45', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(164, 1627.89, -1862.64, 13.5391, 0, -1, 1, 18000, 'Metropolitean Ave GarÄÅ¾a #3', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 0.00274658, 4, NULL, NULL, NULL, NULL, 0, '2018-08-29 22:07:34', '0', '2017-08-03 19:05:19', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(165, 1642.31, -1862.64, 13.5469, 0, -1, 1, 18000, 'Metropolitean Ave GarÄÅ¾a #4', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 2.25497, 41, NULL, NULL, NULL, NULL, 0, '2018-08-29 22:58:14', '0', '2017-08-03 19:06:17', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(166, 1651.05, -1862.64, 13.5354, 0, -1, 1, 18000, 'Metropolitean Ave GarÄÅ¾a #5', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0.519104, 358.179, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-08-03 19:07:28', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(167, 1567.7, 1787.34, 2089.19, 2, -1, 0, 0, 'PriekÅ¡nieka kabinets', 42, -2145.62, 646.929, 1206.49, 3, 3, 270, 82.3466, 100, NULL, NULL, NULL, NULL, 0, '2018-08-14 16:24:00', '0', '2018-02-06 15:46:48', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 2, NULL, 0),
(168, 1419.17, -1623.86, 13.5469, 1, -1, 1, 85000, 'Commerce Casino', 12, 1133.25, -15.26, 1000.67, 0, 0, 76.1501, 90.5589, 284, NULL, NULL, NULL, NULL, 0, '2018-03-20 16:59:33', '0', '2017-08-03 19:11:22', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(169, 1498.4, -1580.52, 13.5498, 1, -1, 1, 120000, 'Pershing Square Kazino', 10, 2019.02, 1017.93, 996.87, 0, 0, 90, 0.606995, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 18:58:41', '0', '2017-08-03 19:12:41', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(170, 1444.41, -1462.82, 13.5469, 0, -1, 1, 40000, 'Pasadena Blvd GarÄÅ¾a #6', 25, 1920.57, -2327.92, 13.75, 0, 0, 0, 85.3843, 82, NULL, NULL, NULL, NULL, 0, '2018-08-22 13:24:55', '0', '2017-08-03 19:14:33', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(171, 725.365, -1276.28, 13.6484, 0, -1, 1, 410000, 'Rodeo, Luxury MÄja #1', 5, 140.39, 1366.36, 1083.85, 0, 0, 89.4109, 96.0192, 100, NULL, NULL, NULL, NULL, 0, '2018-07-26 02:58:58', '0', '2017-08-03 19:18:36', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(172, 1247.99, -1560.59, 13.5634, 1, -1, 1, 45000, 'Market Klubs', 17, 493.34, -24.48, 1000.67, 0, 0, 0, 1.12338, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 18:59:49', '0', '2017-08-03 19:21:07', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(173, 2164.48, -1735.02, 17.3677, 3, -1, 1, 70, 'Idlewood dzÄ«voklis #1', 8, -42.65, 1405.46, 1084.42, 0, 0, 0, 269.046, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 01:35:39', '0', '2017-11-20 17:29:00', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(176, 1660.15, -1806.74, 13.5525, 0, -1, 1, 18000, 'Metropolitean Ave GarÄÅ¾a #7', 24, 529.506, 63.9219, 1044.46, 0, 0, 267.26, 275.572, 100, NULL, NULL, NULL, NULL, 0, '2018-08-19 15:40:18', '0', '2017-08-03 19:28:59', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(177, 1658.95, -1837.63, 13.5476, 0, -1, 1, 17500, 'Metropolitean Ave GarÄÅ¾a #6', 38, 1422.08, -2451.74, 13.5547, 0, 0, 267.848, 268.677, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-08-03 19:29:19', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(181, 2300.48, 1685.23, 1106.1, 3, -1, 1, 70, 'DzÄ«voklis #4', 20, 2535.96, -1339.61, 1030.93, 128, 1, 0, 357.02, 100, NULL, NULL, NULL, NULL, 0, '2018-08-03 12:21:10', '0', '2018-07-07 22:24:06', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(182, 1358.77, -1661.65, 13.5554, 0, -1, 1, 10000, 'Commerce GarÄÅ¾a #1', 3, 620.01, -119.85, 998.84, 0, 0, 180, 88.9933, 100, NULL, NULL, NULL, NULL, 0, '2017-09-30 18:55:37', '0', '2017-08-03 19:37:03', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(183, 1358.77, -1654.13, 13.5555, 0, -1, 1, 10000, 'Commerce GarÄÅ¾a #2', 3, 620.01, -119.85, 998.84, 0, 0, 180, 85.8622, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-08-03 19:37:25', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(184, 1358.77, -1646.25, 13.5556, 0, -1, 1, 12000, 'Commerce GarÄÅ¾a #3', 2, 620.18, -70.89, 997.99, 0, 0, 86.6807, 85.8402, 100, NULL, NULL, NULL, NULL, 0, '2018-03-05 16:46:05', '0', '2017-08-03 19:38:00', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(185, 1358.78, -1638.49, 13.5539, 0, -1, 1, 10000, 'Commerce GarÄÅ¾a #4', 3, 620.01, -119.85, 998.84, 0, 0, 90.2074, 83.9561, 100, NULL, NULL, NULL, NULL, 0, '2018-08-22 01:22:19', '0', '2017-08-03 19:38:45', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(186, 1599.92, -1821.01, 13.4322, 0, -1, 1, 13000, 'Idlewood GarÄÅ¾a #10', 38, 1422.08, -2451.74, 13.5547, 0, 0, 91.9102, 182.346, 30, NULL, NULL, NULL, NULL, 0, '2018-08-19 15:39:45', '0', '2017-08-03 19:41:01', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(187, 1596, -1810.62, 13.3967, 0, -1, 1, 11000, 'Idlewood GarÄÅ¾a #11', 6, 2438.35, -2537.32, 1095.43, 0, 0, 88.6857, 181.071, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 12:25:57', '0', '2017-08-03 19:42:19', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(188, 1595.61, -1798.88, 13.349, 0, -1, 1, 11000, 'Idlewood GarÄÅ¾a #12', 6, 2438.35, -2537.32, 1095.43, 0, 0, 91.9102, 181.357, 100, NULL, NULL, NULL, NULL, 0, '2018-08-14 23:59:44', '0', '2017-08-03 19:43:53', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(189, -1443.93, 929.728, 1036.48, 2, 0, 1, 0, 'Battlefield', 10, -1128.64, 1066.33, 1345.74, 107, 15, 270, 169.788, 42, NULL, NULL, NULL, NULL, 0, '2017-10-12 19:06:29', '0', '2017-08-03 21:13:16', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(190, 2075.64, -2006.7, 13.5469, 0, -1, 1, 12500, 'Gates St. Noliktava #9', 3, 794.967, 64.1738, 965.289, 0, 0, 180, 87.3344, 100, NULL, NULL, NULL, NULL, 0, '2018-03-12 16:21:34', '0', '2017-11-20 17:30:59', 'MentuM', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(191, 2068.66, -1773.54, 13.5605, 0, -1, 1, 30000, 'East Beach Market', 6, -2240.69, 128.43, 1035.41, 0, 0, 270, 93.1902, 1502, NULL, NULL, NULL, NULL, 0, '2018-08-24 15:48:33', '0', '2017-08-03 22:20:21', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(192, 2068.59, -1779.72, 13.5596, 0, -1, 1, 10000, 'FrizÄ“tava', 3, 418.75, -84.31, 1001.8, 0, 0, 0, 88.521, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 15:48:49', '0', '2017-08-03 22:22:23', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(193, 2156.93, -1734.98, 17.3677, 3, -1, 1, 70, 'Idlewood dzÄ«voklis #2', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 89.5537, 100, NULL, NULL, NULL, NULL, 0, '2018-07-24 14:16:59', '0', '2017-11-20 17:31:44', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(194, 2048.36, -1802.66, 14.8501, 0, -1, 1, 22000, 'Idlewood GarÄÅ¾a #1', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 1.48593, 100, NULL, NULL, NULL, NULL, 0, '2018-01-16 19:49:48', '0', '2017-08-03 22:25:05', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(195, 2075.63, -2046.69, 13.5469, 0, -1, 1, 14000, 'Gates St. Noliktava #6', 38, 1422.08, -2451.74, 13.5547, 0, 0, 0, 84.8075, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-11-20 17:32:18', 'MentuM', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(197, 2164.47, -1734.92, 13.5456, 3, -1, 1, 70, 'Idlewood dzÄ«voklis #3', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 270.935, 100, NULL, NULL, NULL, NULL, 0, '2018-08-14 13:27:06', '0', '2017-11-20 17:32:47', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(198, 2156.92, -1734.88, 13.5456, 3, -1, 1, 70, 'Idlewood dzÄ«voklis #4', 10, 422.26, 2536.37, 10, 0, 0, 90, 89.3779, 100, NULL, NULL, NULL, NULL, 0, '2018-08-08 23:53:48', '0', '2017-11-20 17:33:14', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(199, 2135.78, -1734.74, 13.5531, 3, -1, 1, 35, 'Idlewood dzÄ«voklis #5', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 273.385, 100, NULL, NULL, NULL, NULL, 0, '2018-08-03 00:27:27', '0', '2017-11-20 17:38:03', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(200, 1496.89, -687.899, 95.5633, 0, -1, 1, 170000, 'Rich St. Luxury MÄja #2', 3, 221.972, 147.752, 1020.98, 0, 0, 173.359, 358.454, 100, NULL, NULL, NULL, NULL, 0, '2017-12-02 14:48:36', '0', '2017-08-03 22:44:08', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(201, 1520.19, -691.703, 94.75, 0, -1, 1, 15000, 'Rich St. GarÄÅ¾a #7', 2, 620.18, -70.89, 997.99, 0, 0, 0, 271.951, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 18:40:15', '0', '2017-08-03 22:45:14', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(203, -382.447, -1042.62, 58.929, 0, -1, 1, 8000, 'Beacon Hill GarÄÅ¾a #1', 21, -2031.88, -118.21, 1039.3, 0, 0, 280.389, 282.779, 100, NULL, NULL, NULL, NULL, 0, '2018-08-11 17:05:13', '0', '2017-08-21 22:39:36', 'ViensDivi3', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(206, 1034.78, -813.197, 101.852, 0, -1, 1, 85000, 'Rich St. MÄja #8', 33, 2322.57, -1393.4, 395.09, 0, 0, 0, 201.495, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 18:41:41', '0', '2017-08-03 22:52:14', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(207, 1030.7, -814.672, 101.852, 0, -1, 1, 12000, 'Rich St. GarÄÅ¾a #6', 3, 620.01, -119.85, 998.84, 0, 0, 180, 198.386, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 18:43:07', '0', '2017-08-03 22:52:29', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(208, 980.858, -833.503, 95.4686, 0, -1, 1, 12000, 'Rich St. GarÄÅ¾a #5', 3, 620.01, -119.85, 998.84, 0, 0, 180, 210.268, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 18:43:30', '0', '2017-08-03 22:54:07', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(209, 989.907, -828.599, 95.4686, 0, -1, 1, 75000, 'Rich St. MÄja #6', 2, 226.48, 1239.87, 1082.14, 0, 0, 90, 208.076, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 18:46:11', '0', '2017-08-03 22:54:47', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(210, 938.004, -848.651, 93.5773, 0, -1, 1, 50000, 'Rich St. MÄja #5', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 203.643, 100, NULL, NULL, NULL, NULL, 0, '2017-08-10 23:44:33', '0', '2017-08-03 22:55:51', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(211, 946.25, -844.804, 93.5761, 0, -1, 1, 12000, 'Rich St. GarÄÅ¾a #4', 3, 620.01, -119.85, 998.84, 0, 0, 180, 208.032, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 18:48:11', '0', '2017-08-03 22:56:03', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(212, 910.383, -817.553, 103.126, 0, -1, 1, 120000, 'Rich St. MÄja #7', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 204.917, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 18:49:07', '0', '2017-08-03 22:57:18', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(213, 911.016, -829.904, 92.0372, 0, -1, 1, 12000, 'Rich St. GarÄÅ¾a #3', 3, 620.01, -119.85, 998.84, 0, 0, 180, 26.9691, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 18:50:18', '0', '2017-08-03 22:57:35', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(214, 858.62, -845.115, 77.3808, 0, -1, 1, 12000, 'Rich St. GarÄÅ¾a #1', 3, 620.01, -119.85, 998.84, 0, 0, 180, 28.1996, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 18:52:18', '0', '2017-08-03 22:59:02', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(215, 858.993, -828.516, 89.5017, 0, -1, 1, 100000, 'Rich St. MÄja #1', 6, 2196.85, -1204.4, 1049, 0, 0, 0, 208.054, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 18:53:54', '0', '2017-08-03 22:59:31', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(216, 874.797, -877.224, 77.8116, 0, -1, 1, 65000, 'Rich St. MÄja #2', 10, 2270.41, -1210.46, 1047.56, 0, 0, 0, 204.901, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 18:54:25', '0', '2017-08-03 23:00:53', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(217, 827.729, -858.031, 70.3308, 0, -1, 1, 75000, 'Rich St. MÄja #3', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 30.0563, 100, NULL, NULL, NULL, NULL, 0, '2018-07-06 15:16:45', '0', '2017-08-03 23:02:32', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0);
INSERT INTO `interiors` (`id`, `x`, `y`, `z`, `type`, `owner`, `locked`, `cost`, `name`, `interior`, `interiorx`, `interiory`, `interiorz`, `dimensionwithin`, `interiorwithin`, `angle`, `angleexit`, `supplies`, `safepositionX`, `safepositionY`, `safepositionZ`, `safepositionRZ`, `disabled`, `lastused`, `deleted`, `createdDate`, `creator`, `isLightOn`, `keypad_lock`, `keypad_lock_pw`, `keypad_lock_auto`, `uploaded_interior`, `faction`, `protected_until`, `token`) VALUES
(219, 839.869, -897.592, 68.7734, 0, -1, 1, 12000, 'Rich St. GarÄÅ¾a #2', 3, 620.01, -119.85, 998.84, 0, 0, 180, 145.052, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 18:57:57', '0', '2017-08-03 23:04:26', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(220, 1948.21, -2003.03, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #12', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 357.421, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:22:59', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(221, 795.741, -837.933, 60.6418, 0, -1, 1, 12000, 'Mccain St. GarÄÅ¾a #2', 3, 620.01, -119.85, 998.84, 0, 0, 180, 9.62143, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 18:59:45', '0', '2017-08-03 23:06:32', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(222, 785.914, -828.589, 70.2896, 0, -1, 1, 75000, 'Mccain St. MÄja #2', 5, 22.98, 1403.6, 1084.42, 0, 0, 0, 190.393, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 19:00:25', '0', '2017-08-03 23:07:04', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(223, 844.921, -758.588, 85.2763, 0, -1, 1, 12000, 'Mccain St. GarÄÅ¾a #1', 2, 620.18, -70.89, 997.99, 0, 0, 0, 305.235, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 19:00:53', '0', '2017-08-03 23:12:20', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(224, 848.026, -745.545, 94.9693, 0, -1, 1, 60000, 'Mccain St. MÄja #1', 2, 2237.52, -1081.64, 1049.02, 0, 0, 0, 130.704, 100, NULL, NULL, NULL, NULL, 0, '2018-08-03 21:58:00', '0', '2017-08-03 23:12:59', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(225, 1095.14, -647.915, 113.648, 0, -1, 1, 145000, 'Palin St. MÄja #1', 33, 2322.57, -1393.4, 395.09, 0, 0, 0, 179.313, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-08-03 23:15:12', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(226, 1085.28, -638.05, 113.369, 0, -1, 1, 12000, 'Palin St. GarÄÅ¾a #1', 2, 620.18, -70.89, 997.99, 0, 0, 0, 86.5654, 100, NULL, NULL, NULL, NULL, 0, '2017-10-11 19:36:38', '0', '2017-08-03 23:15:22', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(227, 1761.46, -1746.91, 13.5559, 0, -1, 1, 18000, 'San Andreas Blvd GarÄÅ¾a #1', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 180.797, 100, NULL, NULL, NULL, NULL, 0, '2017-10-11 19:36:08', '0', '2017-08-04 13:37:13', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(229, 1975.98, -1922.67, 13.5469, 0, -1, 1, 16000, 'Gates St. GarÄÅ¾a #2', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 358.223, 100, NULL, NULL, NULL, NULL, 0, '2018-08-21 19:29:45', '0', '2017-08-04 17:07:46', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(230, 1803.91, -1435.85, 13.4297, 0, -1, 1, 16000, 'Glen Park GarÄÅ¾a #1', 38, 1422.08, -2451.74, 13.5547, 0, 0, 182.131, 181.362, 82, NULL, NULL, NULL, NULL, 0, '2018-08-16 17:28:13', '0', '2017-08-04 20:33:37', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(231, 1906.78, -2041.46, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #13', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 17.3998, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:24:42', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(232, 1597.99, -1560.84, 14.1698, 0, -1, 1, 16000, 'Pasadena Blvd GarÄÅ¾a #4', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 177.66, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-08-05 20:59:31', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(233, 1608.24, -1560.86, 14.1797, 0, -1, 1, 16000, 'Pasadena Blvd GarÄÅ¾a #3', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 175.781, 98, NULL, NULL, NULL, NULL, 0, '2018-08-22 21:29:41', '0', '2017-08-05 21:00:02', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(234, 2020.46, -1707.79, 13.5469, 0, -1, 1, 8000, 'Idlewood GarÄÅ¾a #3', 3, 620.01, -119.85, 998.84, 0, 0, 180, 271.38, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 15:43:01', '0', '2017-08-22 02:53:29', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(235, 1618.47, -1560.83, 14.1694, 0, -1, 1, 16000, 'Pasadena Blvd GarÄÅ¾a #2', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 172.645, 100, NULL, NULL, NULL, NULL, 0, '2018-08-19 13:51:36', 'GoblinX', '2017-08-05 21:01:25', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(236, 1616.43, -1498.35, 14.2306, 0, -1, 1, 22000, 'Pasadena Blvd GarÄÅ¾a #1', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 270.386, 100, NULL, NULL, NULL, NULL, 0, '2018-08-20 13:55:39', '0', '2017-08-05 21:02:30', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(238, 1577.75, -1474.84, 14.2202, 0, -1, 1, 22000, 'Pasadena Blvd GarÄÅ¾a #5', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 269.732, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 10:06:23', '0', '2017-08-05 21:06:17', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(239, 1895.28, -2020.3, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #14', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 287.503, 100, NULL, NULL, NULL, NULL, 0, '2018-07-11 23:45:15', '0', '2018-06-20 22:25:05', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(240, 2012.65, -2142.58, 13.5537, 0, -1, 1, 13000, 'Willowfield GarÄÅ¾a #01', 38, 1422.08, -2451.74, 13.5547, 0, 0, 179.072, 174.056, 50, NULL, NULL, NULL, NULL, 0, '2018-04-11 21:03:54', '0', '2018-02-06 18:35:53', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(242, -389.77, -1438.74, 25.9542, 0, -1, 1, 12000, 'GarÄÅ¾a', 24, 529.506, 63.9219, 1044.46, 0, 0, 180.516, 87.9606, 88, NULL, NULL, NULL, NULL, 0, '2018-08-19 21:15:10', '0', '2018-02-06 22:02:16', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(243, 1610.88, -1893.83, 13.5469, 0, -1, 1, 15000, 'Enjuku Racing', 1, 613.52, 3.31, 1000.92, 0, 0, 88.6528, 181.599, 56, NULL, NULL, NULL, NULL, 0, '2018-08-18 21:02:23', 'GoblinX', '2018-02-07 16:13:08', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(247, 2055.34, -1821.76, 13.5469, 1, -1, 1, 25500, 'Lombards', 27, 1877.89, -2466.96, 13.58, 0, 0, 0, 180.434, 100, NULL, NULL, NULL, NULL, 0, '2018-03-14 20:29:07', '0', '2017-08-05 22:00:04', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(248, 2310.02, -1643.48, 14.827, 1, -1, 1, 20000, 'Ten Green Bottles BÄrs', 11, 501.84, -67.84, 998.75, 0, 0, 180, 314.634, 100, NULL, NULL, NULL, NULL, 0, '2018-08-05 21:42:09', '0', '2017-08-05 22:08:10', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(249, 2244.4, -1665.57, 15.4766, 2, 0, 0, 0, 'DrÄ“bju veikals \"Binco\"', 15, 207.58, -111, 1005.13, 0, 0, 0, 165.69, -3331, NULL, NULL, NULL, NULL, 0, '2019-01-09 20:14:30', '0', '2017-08-05 22:10:49', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(250, 2229.95, -1721.31, 13.5618, 2, 0, 0, 0, 'GYM', 47, 1573.45, -2413.11, 13.6078, 0, 0, 270, 312.689, -271, NULL, NULL, NULL, NULL, 0, '2018-08-15 10:15:04', '0', '2017-08-05 22:16:07', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(251, 2421.49, -1219.24, 25.5617, 1, -1, 0, 40000, 'StriptÄ«zklubs', 2, 1204.81, -13.6, 1000.92, 0, 0, 0, 359.684, 907, NULL, NULL, NULL, NULL, 0, '2018-08-20 12:28:30', '0', '2017-08-06 15:45:13', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 60, NULL, 0),
(252, 2388.42, -1279.65, 25.1291, 0, -1, 1, 15000, 'East LS. MÄja #01', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 262.531, 100, NULL, NULL, NULL, NULL, 0, '2018-08-06 11:45:25', '0', '2017-08-06 15:47:22', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(253, 2387.86, -1328.4, 25.1242, 0, -1, 1, 11000, 'East LS. MÄja #02', 6, -68.83, 1351.46, 1080.21, 0, 0, 0, 273.204, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-08-06 15:49:18', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(255, 2348.54, -1373.62, 24.3984, 2, 0, 0, 33000, 'East Los Santos atpÅ«tas centrs', 29, 2532.83, -1667.51, 246.67, 0, 0, 0.398254, 358.388, 100, NULL, NULL, NULL, NULL, 0, '2018-07-16 15:01:32', '0', '2017-08-06 15:51:19', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(256, 2383.54, -1366.31, 24.4914, 0, -1, 1, 8000, 'East LS. MÄja #04', 20, 2535.96, -1339.61, 1030.93, 0, 0, 0, 270.386, 100, NULL, NULL, NULL, NULL, 0, '2017-10-11 19:20:41', '0', '2017-08-06 15:52:27', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(257, 2361.41, -1339.57, 24.0078, 2, 0, 0, 0, 'Alkohola veikaliÅ†Å¡', 6, -27.15, -57.87, 1003.54, 0, 0, 0, 90.2403, 31, NULL, NULL, NULL, NULL, 0, '2018-08-03 12:02:00', '0', '2017-08-06 15:54:15', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(258, 2334.8, -1266.12, 27.9766, 2, 0, 0, 0, 'East LS. DzÄ«vokÄ¼i', 46, 1471.89, 1752.92, 14.7609, 0, 0, 0, 180.17, 100, NULL, NULL, NULL, NULL, 0, '2018-08-20 14:10:48', '0', '2017-08-06 15:56:02', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(267, 1836.52, -1444.79, 13.5962, 1, -1, 1, 25000, 'Lombards', 27, 1877.89, -2466.96, 13.58, 0, 0, 98.4747, 95.5963, 1879, NULL, NULL, NULL, NULL, 0, '2017-09-23 11:29:15', '0', '2017-08-06 16:25:02', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(269, 1938.54, -1911.28, 15.2568, 0, -1, 1, 24500, 'Washington St. MÄja #1', 6, -68.83, 1351.46, 1080.21, 0, 0, 0, 267.76, 100, NULL, NULL, NULL, NULL, 0, '2018-07-04 10:45:07', '0', '2017-11-20 17:44:57', 'MentuM', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(270, 1928.62, -1915.91, 15.2568, 0, -1, 1, 25000, 'Washington St. MÄja #2', 5, 22.98, 1403.6, 1084.42, 0, 0, 0, 0.238953, 100, NULL, NULL, NULL, NULL, 0, '2018-07-01 22:06:09', '0', '2017-11-20 17:45:39', 'MentuM', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(272, 1913.49, -1911.91, 15.2568, 0, -1, 1, 25500, 'Washington St. MÄja #3', 5, 318.55, 1114.47, 1083.88, 0, 0, 0, 2.63953, 100, NULL, NULL, NULL, NULL, 0, '2018-07-07 21:35:26', '0', '2017-11-20 17:50:52', 'MentuM', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(273, 1891.91, -1914.4, 15.2568, 0, -1, 1, 24000, 'Washington St. MÄja #4', 15, 327.96, 1477.72, 1084.43, 0, 0, 0, 358.344, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-11-20 17:51:56', 'MentuM', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(274, 2389.72, -1346.09, 25.077, 0, -1, 1, 6000, 'East LS. MÄja #06', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 270.891, 100, NULL, NULL, NULL, NULL, 0, '2017-08-28 17:25:34', '0', '2017-08-07 01:24:28', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(275, 2726.73, -1827.27, 11.8438, 2, 0, 0, 1, 'Trase', 7, -1409.35, -255.91, 1043.66, 0, 0, 250, 356.394, 100, NULL, NULL, NULL, NULL, 0, '2018-08-14 19:59:58', '0', '2017-08-07 21:18:44', 'ViensDivi3', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(276, -382.758, -1438.24, 25.9542, 0, -1, 1, 20000, 'Flint County MÄja #1', 12, 2324.42, -1149.2, 1050.71, 0, 0, 95.0085, 90.6578, 100, NULL, NULL, NULL, NULL, 0, '2018-08-19 21:13:26', '0', '2017-08-08 00:28:18', 'ViensDivi3', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(277, 1909.9, -1597.41, 14.3062, 2, 0, 0, 0, 'Panotikon AvÄ“nijas DzÄ«vokÄ¼u Ä“ka', 15, 2214.62, -1150.38, 1025.79, 0, 0, 270, 0.0357056, 100, NULL, NULL, NULL, NULL, 0, '2018-08-17 19:32:36', '0', '2017-08-08 20:38:43', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(278, 1872.25, -1911.79, 15.2568, 0, -1, 1, 23500, 'Washington St. MÄja #5', 26, 1974.03, -2488.14, 13.62, 0, 0, 0, 359.113, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-11-20 17:53:46', 'MentuM', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(279, 2242.52, -1170.87, 1029.8, 0, -1, 1, 5000, 'Panotikon AvÄ“nijas DzÄ«voklis #1', 20, 2535.96, -1339.61, 1030.93, 277, 15, 0, 272.232, 100, NULL, NULL, NULL, NULL, 0, '2017-10-10 21:35:18', '0', '2017-08-08 20:49:21', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(280, 1853.99, -1914.26, 15.2568, 0, -1, 1, 20000, 'Washington St. MÄja #6', 6, 2196.85, -1204.4, 1049, 0, 0, 0, 358.525, 100, NULL, NULL, NULL, NULL, 0, '2018-02-05 15:46:01', '0', '2017-11-20 17:54:37', 'MentuM', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(281, 1489.42, -1930.6, 291.13, 2, -1, 1, 1, 'Domes Ä£Ä“rbtuve', 14, 254.46, -41.6, 1002.02, 2, 3, 177.687, 347.214, 100, NULL, NULL, NULL, NULL, 0, '2018-10-04 19:15:48', '0', '2017-12-02 13:15:27', 'viensdivi3', 0, NULL, NULL, NULL, NULL, 3, NULL, 0),
(282, 1888.48, -2000.9, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #15', 2, 266.56, 305.02, 999.14, 0, 0, 270, 18.0865, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:25:24', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(284, 1743.02, -1864.46, 13.5738, 2, 0, 0, 0, 'Unity - Visa veida preces!', 17, -25.91, -188.05, 1003.54, 0, 0, 0, 181.829, -2999, NULL, NULL, NULL, NULL, 0, '2019-01-23 17:13:20', '0', '2017-08-12 18:26:21', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(285, 768.079, -1655.85, 5.60938, 0, -1, 1, 25000, 'Marina St. MÄja #1', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 268.392, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-12-02 15:25:07', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(286, 265.508, 1238.02, 1084.27, 0, -1, 1, 6500, 'Marina St. GarÄÅ¾a#1', 3, 620.01, -119.85, 998.84, 285, 9, 180, 272.737, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-12-02 15:27:07', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(287, 1583.35, -1637.49, 13.3905, 2, 0, 0, 0, 'Los Santos Policijas Departmenta garÄÅ¾a', 1, 1064.47, -1289.1, 79.0625, 0, 0, 359.387, 179.242, 98, NULL, NULL, NULL, NULL, 0, '2019-02-11 19:36:31', '0', '2017-12-04 16:56:48', 'Wright', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(288, 947.564, -1728.05, 13.5546, 2, 0, 0, 0, 'Los Santos banka', 30, 1398.14, -1692.56, 1426.95, 0, 0, 2.20554, 67.3719, 100, NULL, NULL, NULL, NULL, 0, '2019-02-11 19:38:29', '0', '2017-12-26 14:27:19', 'Wright', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(289, 795.221, -506.397, 18.0129, 0, -1, 1, 20000, 'Dillimore MÄja #01', 8, -42.65, 1405.46, 1084.42, 0, 0, 0, 359.536, 100, NULL, NULL, NULL, NULL, 0, '2018-02-17 22:42:21', '0', '2018-02-07 21:45:46', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(291, 1944.95, -2020.6, 13.5547, 3, -1, 1, 70, 'El Corona DzÄ«voklis #17', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 281.806, 100, NULL, NULL, NULL, NULL, 0, '2018-08-03 20:59:52', '0', '2018-06-20 22:26:11', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(295, 1143.72, 6.38574, 1000.68, 2, 0, 0, 0, 'WC', 8, 2480.6, -1687.23, 2031.49, 168, 12, 0, 270.88, 100, NULL, NULL, NULL, NULL, 0, '2018-08-14 22:46:26', '0', '2017-08-14 14:22:35', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(296, 1788.21, -1298.61, 13.375, 0, -1, 1, 35000, 'Park Ave MÄja #1', 12, 2324.42, -1149.2, 1050.71, 0, 0, 0, 180.077, 100, NULL, NULL, NULL, NULL, 0, '2017-10-10 21:34:16', '0', '2017-08-15 01:00:33', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(297, 2009.35, -1113.85, 26.5006, 3, -1, 1, 50, 'Glen Park DzÄ«voklis #01', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 358.36, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 01:22:42', '0', '2018-02-11 14:45:57', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(298, 1949.21, -2038.92, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #19', 2, 266.56, 305.02, 999.14, 0, 0, 270, 77.919, 100, NULL, NULL, NULL, NULL, 0, '2018-08-14 20:08:09', '0', '2018-06-20 22:26:59', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(299, 2014.24, -1113.85, 26.5006, 3, -1, 1, 50, 'Glen Park DzÄ«voklis #02', 10, 422.26, 2536.37, 10, 0, 0, 90, 0.53009, 100, NULL, NULL, NULL, NULL, 0, '2018-08-14 20:30:23', '0', '2018-02-11 14:48:03', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(300, 2017.56, -1113.85, 26.5006, 3, -1, 1, 50, 'Glen Park DzÄ«voklis #03', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 1.11789, 100, NULL, NULL, NULL, NULL, 0, '2018-08-15 00:05:36', '0', '2018-02-11 14:51:59', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(303, 2180.17, -1504.88, 23.9478, 0, -1, 1, 4000, 'Idlewood garÄÅ¾a #1', 2, 620.18, -70.89, 997.99, 0, 0, 91.5312, 92.1355, 100, NULL, NULL, NULL, NULL, 0, '2018-08-15 16:04:59', '0', '2017-08-15 20:57:45', 'Danex', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(304, 1773.75, -1709.88, 13.5442, 0, -1, 1, 8000, 'Telpa', 27, 1877.89, -2466.96, 13.58, 0, 0, 0, 352.862, 0, NULL, NULL, NULL, NULL, 0, '2017-10-12 19:20:10', '0', '2017-08-15 23:54:59', 'ViensDivi3', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(305, 1786.63, -1711.81, 13.5442, 0, -1, 1, 18000, 'San Andreas Blvd. GarÄÅ¾a #2', 24, 529.506, 63.9219, 1044.46, 0, 0, 0, 359.085, 100, NULL, NULL, NULL, NULL, 0, '2017-10-15 00:20:10', '0', '2017-08-15 23:57:28', 'ViensDivi3', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(306, -591.556, 1975.48, 7, 1, -1, 1, 100000, 'HES', 2, 2541.72, -1303.89, 1025.07, 0, 0, 265, 243.464, 99, NULL, NULL, NULL, NULL, 0, '2017-10-12 19:17:28', '0', '2017-08-16 00:41:51', 'ViensDivi3', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(307, 2020.08, -1118.32, 26.2031, 3, -1, 1, 50, 'Glen Park DzÄ«voklis #04', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 275.335, 100, NULL, NULL, NULL, NULL, 0, '2018-07-28 22:56:05', '0', '2018-02-11 14:52:25', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(308, 2075.64, -2033.48, 13.5469, 0, -1, 1, 15000, 'Gates St. Noliktava #7', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 87.7134, 100, NULL, NULL, NULL, NULL, 0, '2017-10-12 19:18:43', '0', '2017-08-16 17:47:06', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(309, 2397.37, -1548.68, 24.1641, 1, -1, 1, 25000, 'BÄrs \'\'Atlantic\'\'', 30, -199.28, 1119.81, 225.94, 0, 0, 0, 180.533, 1, NULL, NULL, NULL, NULL, 0, '2017-10-07 11:54:20', '0', '2017-08-16 17:59:03', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(310, 2020.08, -1121.53, 26.2031, 3, -1, 1, 50, 'Glen Park DzÄ«voklis #05', 10, 422.26, 2536.37, 10, 0, 0, 90, 270.633, 100, NULL, NULL, NULL, NULL, 0, '2018-07-06 13:06:32', '0', '2018-02-11 14:53:36', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(311, -396.273, -425.093, 16.2594, 0, -1, 1, 8000, 'Red County MÄja #3', 11, 2282.98, -1140.15, 1050.9, 0, 0, 0, 353.521, 100, NULL, NULL, NULL, NULL, 0, '2017-10-10 21:32:37', '0', '2017-08-17 17:07:46', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(312, -427.595, -392.732, 16.5802, 0, -1, 1, 6000, 'Red County MÄja #2', 2, 1.9, -3.2, 999.4, 0, 0, 0, 142.404, 100, NULL, NULL, NULL, NULL, 0, '2017-10-10 21:31:12', '0', '2017-08-17 17:09:34', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(313, 2039.24, -1111.18, 25.9006, 3, -1, 1, 50, 'Glen Park DzÄ«voklis #06', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 93.366, 100, NULL, NULL, NULL, NULL, 0, '2018-08-23 19:56:28', '0', '2018-02-11 14:54:34', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(314, 2039.25, -1114.32, 25.9006, 3, -1, 1, 50, 'Glen Park DzÄ«voklis #07', 10, 422.26, 2536.37, 10, 0, 0, 90, 86.9059, 100, NULL, NULL, NULL, NULL, 0, '2018-08-14 20:32:32', '0', '2018-02-11 14:54:57', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(315, 2039.25, -1119.21, 25.9006, 3, -1, 1, 50, 'Glen Park DzÄ«voklis #08', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 88.0815, 100, NULL, NULL, NULL, NULL, 0, '2018-03-20 23:20:19', '0', '2018-02-11 14:55:34', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(316, 2423.32, -1886.94, 13.5469, 0, -1, 1, 12000, 'PagrÄ«des Kazino', 2, 226.48, 1239.87, 1082.14, 0, 0, 90, 266.854, 100, NULL, NULL, NULL, NULL, 0, '2017-10-10 21:30:02', '0', '2017-08-18 00:14:16', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(317, 2027.19, -1121.36, 26.2031, 3, -1, 1, 50, 'Glen Park DzÄ«voklis #09', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 94.5416, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-02-11 14:56:03', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(318, 1106.55, -299.807, 74.5391, 0, -1, 1, 14000, 'Red County MÄja #1', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 269.65, 100, NULL, NULL, NULL, NULL, 0, '2017-10-10 21:28:45', '0', '2017-08-20 19:24:52', 'ViensDivi3', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(319, 870.448, -24.9414, 63.982, 0, -1, 1, 7500, 'Fern Ridge MÄja #1', 10, 422.26, 2536.37, 10, 0, 0, 90, 334.135, 100, NULL, NULL, NULL, NULL, 0, '2017-10-10 21:28:04', '0', '2017-08-20 19:39:25', 'Tomss', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(321, 1341.32, -1675.22, 17.7157, 0, -1, 1, 2000, 'St.Lawrence Blvd apartamenti #1', 10, 422.26, 2536.37, 10, 0, 0, 90, 89.2515, 100, NULL, NULL, NULL, NULL, 0, '2018-07-06 19:25:50', '0', '2017-08-21 15:00:19', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(322, -418.959, -1759.24, 6.21875, 0, -1, 1, 7500, 'Flint County, MÄja #1', 2, 1.9, -3.2, 999.4, 0, 0, 0, 39.6201, 100, NULL, NULL, NULL, NULL, 0, '2017-10-10 21:25:41', '0', '2017-08-22 19:39:21', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(323, 2027.19, -1118.18, 26.2031, 3, -1, 1, 50, 'Glen Park DzÄ«voklis #10', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 86.9059, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-02-11 14:56:53', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(324, 2809.71, 2931.17, 37, 2, 0, 1, 0, 'Telpa', 27, 1877.89, -2466.96, 13.58, 0, 0, 0, 180.978, -37, NULL, NULL, NULL, NULL, 0, '2017-09-03 17:58:14', '0', '2017-08-23 20:11:47', 'Danex', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(325, 2027.19, -1113.39, 26.2031, 3, -1, 1, 50, 'Glen Park DzÄ«voklis #11', 10, 422.26, 2536.37, 10, 0, 0, 90, 92.7837, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-02-11 14:59:37', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(326, 1341.33, -1669.55, 17.7171, 0, -1, 1, 2500, 'St.Lawrence Blvd apartamenti #2', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 91.5203, 100, NULL, NULL, NULL, NULL, 0, '2018-08-02 00:42:39', '0', '2017-08-24 19:10:35', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(327, 2009.49, -1106.72, 26.5006, 3, -1, 1, 50, 'Glen Park DzÄ«voklis #12', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 179.154, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-02-11 15:00:22', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(328, 2014.29, -1106.74, 26.5006, 3, -1, 1, 50, 'Glen Park DzÄ«voklis #13', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 177.391, 100, NULL, NULL, NULL, NULL, 0, '2018-07-09 17:28:35', '0', '2018-02-11 15:01:35', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(330, 2017.34, -1106.74, 26.5006, 3, -1, 1, 50, 'Glen Park DzÄ«voklis #14', 10, 422.26, 2536.37, 10, 0, 0, 90, 184.032, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-02-11 15:02:08', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(331, 1857.97, -2041.37, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #22', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 8.58319, 100, NULL, NULL, NULL, NULL, 0, '2018-08-05 13:40:37', '0', '2018-06-20 22:29:13', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(332, 2526.09, -1060.77, 69.9708, 3, -1, 1, 100, 'San Pedro AvÄ“nijas mÄja #01', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 91.8499, 100, NULL, NULL, NULL, NULL, 0, '2018-07-31 20:36:11', '0', '2017-08-27 17:40:07', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(333, 1868.84, -2037.84, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #23', 2, 266.56, 305.02, 999.14, 0, 0, 270, 115.52, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:29:40', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(334, 1643.55, 2340.56, 9.80326, 0, -1, 1, 14000, 'Redsands West GarÄÅ¾a #1', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 272.962, 1, NULL, NULL, NULL, NULL, 0, '2017-10-10 21:23:59', '0', '2017-08-27 18:47:27', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(335, 1870.84, -2020.71, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #24', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 177.907, 100, NULL, NULL, NULL, NULL, 0, '2018-07-15 21:56:46', '0', '2018-06-20 22:29:59', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(336, -1363.94, 2055.54, 52.9188, 1, -1, 1, 20000, 'Tierra Robada BÄrs', 1, 681.542, -451.207, -25.6172, 0, 0, 180, 259.031, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 18:51:13', '0', '2017-08-28 23:30:21', 'ViensDivi3', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(337, 1898.59, -1999.72, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #25', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 188.201, 100, NULL, NULL, NULL, NULL, 0, '2018-08-14 20:07:36', '0', '2018-06-20 22:31:57', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(345, 2358.83, -1804.56, 13.5469, 2, 0, 0, 0, 'Ganton #4', 46, 1471.89, 1752.92, 14.7609, 0, 0, 176.501, 270.358, 100, NULL, NULL, NULL, NULL, 0, '2017-10-19 22:29:54', '0', '2017-08-31 16:48:07', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(346, 1478.32, 1763.07, 14.7609, 3, -1, 1, 65, 'Ganton apartamenti #1', 5, 2233.57, -1115.08, 1050.88, 345, 46, 0, 272.869, 100, NULL, NULL, NULL, NULL, 0, '2017-09-23 22:17:29', '0', '2017-08-31 16:50:17', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(347, 1478.32, 1760.27, 14.7609, 3, -1, 1, 70, 'Ganton apartamenti #2', 10, 422.26, 2536.37, 10, 345, 46, 90, 274.412, 100, NULL, NULL, NULL, NULL, 0, '2017-09-22 22:42:53', '0', '2017-08-31 16:50:40', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(348, 1478.32, 1757.32, 14.7609, 3, -1, 1, 65, 'Ganton apartamenti #3', 5, 2233.57, -1115.08, 1050.88, 345, 46, 0, 273.154, 100, NULL, NULL, NULL, NULL, 0, '2017-10-08 18:40:53', '0', '2017-08-31 16:50:57', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(349, 1478.32, 1754.68, 14.7609, 3, -1, 1, 70, 'Ganton apartamenti #4', 10, 422.26, 2536.37, 10, 345, 46, 90, 271.567, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-08-31 16:51:48', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(350, 1471.94, 1767.92, 14.7609, 3, -1, 1, 65, 'Ganton apartamenti #5', 2, 446.97, 1397.22, 1084.3, 345, 46, 0, 4.00183, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-08-31 16:52:37', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(351, 1467.97, 1767.92, 14.7609, 3, -1, 1, 70, 'Ganton apartamenti #6', 10, 422.26, 2536.37, 10, 345, 46, 90, 3.66125, 100, NULL, NULL, NULL, NULL, 0, '2017-10-08 18:31:37', '0', '2017-08-31 16:52:57', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(352, 1898.78, -1985.59, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #26', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 16.2243, 100, NULL, NULL, NULL, NULL, 0, '2018-08-14 20:07:18', '0', '2018-06-20 22:32:14', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(353, 1913.13, -1991.65, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #27', 2, 266.56, 305.02, 999.14, 0, 0, 270, 269.875, 100, NULL, NULL, NULL, NULL, 0, '2018-08-07 22:23:01', '0', '2018-06-20 22:32:45', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(355, 2808.12, -1175.92, 25.3786, 0, -1, 1, 26500, 'East Broadway MÄja #1', 15, 328.042, 1477.72, 1084.44, 0, 0, 0, 354.702, 100, NULL, NULL, NULL, NULL, 0, '2017-10-10 21:19:11', '0', '2017-09-04 18:38:31', 'Strokis', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(356, 1031.86, -1447.8, 13.5546, 0, -1, 1, 15000, 'Market, garÄÅ¾a #1', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 271.122, 100, NULL, NULL, NULL, NULL, 0, '2018-08-21 22:28:16', '0', '2017-09-11 20:01:30', 'Danex', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(357, 1899.1, -1979.27, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #28', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 183.093, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:33:06', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(358, 2650.7, -2021.76, 14.1766, 0, -1, 1, 25000, 'Willowfield MÄja #1', 8, -42.65, 1405.46, 1084.42, 0, 0, 0, 265.733, 100, NULL, NULL, NULL, NULL, 0, '2017-10-10 20:09:05', '0', '2017-09-24 16:17:23', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(359, 2582.87, -952.938, 81.388, 3, -1, 1, 100, 'Las Colinas #1', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 12.9558, 100, NULL, NULL, NULL, NULL, 0, '2018-07-31 19:39:58', '0', '2018-02-13 20:34:16', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(360, 2644.78, -2038.41, 13.55, 0, -1, 1, 12000, 'Willowfield GarÄÅ¾a #1', 3, 620.01, -119.85, 998.84, 0, 0, 180, 181.027, 100, NULL, NULL, NULL, NULL, 0, '2018-08-15 12:06:24', '0', '2017-09-24 17:53:47', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(361, 1888.32, -1982.6, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #29', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 263.003, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:33:28', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(362, 1878.05, -1982.54, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #30', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 91.4324, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:33:43', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(363, 1491.22, -1929.57, 291.13, 2, 0, 1, 1, 'MÄ“ra kabinets', 2, 2111.56, -1442.17, 291.426, 2, 3, 270, 272.962, 100, NULL, NULL, NULL, NULL, 0, '2018-08-16 21:26:38', '0', '2018-02-15 19:37:31', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(364, 2126.37, -1442.46, 291.426, 2, 0, 0, 0, 'MÄ“ra darba telpa', 42, -2145.62, 646.929, 1206.49, 363, 2, 270, 268.667, 100, NULL, NULL, NULL, NULL, 0, '2018-08-15 17:36:54', '0', '2018-02-15 19:43:24', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(365, 1877.83, -2001.01, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #31', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 91.4324, 100, NULL, NULL, NULL, NULL, 0, '2018-07-23 02:43:14', '0', '2018-06-20 22:34:11', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(366, 1866.88, -2004.38, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #32', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 4.47424, 100, NULL, NULL, NULL, NULL, 0, '2018-08-06 10:15:30', '0', '2018-06-20 22:34:39', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(367, 979.387, -1254.27, 16.9449, 0, -1, 1, 20000, 'Liberty Ave GarÄÅ¾a #1', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 3.03503, 100, NULL, NULL, NULL, NULL, 0, '2018-08-23 02:47:08', '0', '2017-09-24 18:51:13', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(368, 1867.92, -2009.48, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #33', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 189.558, 100, NULL, NULL, NULL, NULL, 0, '2018-08-06 10:16:04', '0', '2018-06-20 22:34:56', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(369, 1867.93, -2028.79, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #34', 2, 266.56, 305.02, 999.14, 0, 0, 270, 50.8922, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:35:17', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(370, 1858.61, -2034.66, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #35', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 184.268, 100, NULL, NULL, NULL, NULL, 0, '2018-07-14 15:01:09', '0', '2018-06-20 22:35:38', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(371, 1849.63, -2037.88, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #36', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 273.577, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:35:57', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(372, 1801.98, -2098.94, 14.021, 0, -1, 1, 20000, 'Glendale St. MÄja #1', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 2.14514, 100, NULL, NULL, NULL, NULL, 0, '2018-08-01 12:20:17', '0', '2017-09-24 19:31:33', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(373, 2267.82, -1671.32, 15.3594, 2, 0, 0, 25000, 'Ganton PulksteÅ†u veikals', 3, 2037.02, -1799.6, 4.45156, 0, 0, 182.944, 46.5305, 68, NULL, NULL, NULL, NULL, 0, '2019-01-09 20:41:43', '0', '2017-09-24 19:33:01', 'Danex', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(374, 1310.07, -1367.23, 13.5246, 2, 0, 0, 0, 'Los Santos Casino', 3, -4.10839, -79.9229, 1008.67, 0, 0, 358.855, 267.348, -410, NULL, NULL, NULL, NULL, 0, '2018-09-07 14:22:28', '0', '2017-09-24 19:45:51', 'Danex', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(375, 1781.45, -2101.27, 14.0566, 0, -1, 1, 18000, 'Glendale St. MÄja #2', 2, 2468.77, -1698.25, 1013.5, 0, 0, 90, 0.969574, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-09-24 19:55:54', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(376, 1762.45, -2101.99, 13.857, 0, -1, 1, 23000, 'Glendale St. MÄja #3', 6, -68.83, 1351.46, 1080.21, 0, 0, 0, 0.370789, 100, NULL, NULL, NULL, NULL, 0, '2018-07-23 02:36:17', '0', '2017-09-24 19:59:07', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(377, 1734.09, -2097.98, 14.0366, 0, -1, 1, 22500, 'Glendale St. MÄja #4', 8, -42.65, 1405.46, 1084.42, 0, 0, 0, 358.827, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-09-24 20:03:23', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(378, 1711.61, -2101.24, 14.021, 0, -1, 1, 21000, 'Glendale St. MÄja #5', 2, 226.48, 1239.87, 1082.14, 0, 0, 90, 356.943, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-09-24 20:06:51', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(379, 1684.92, -2098.16, 13.8343, 0, -1, 1, 19500, 'Glendale St. MÄja #6', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 359.876, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 18:46:59', '0', '2017-09-24 20:11:03', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(380, 1122.71, -2036.91, 69.8942, 2, 0, 1, 0, 'MÄ“ra villa', 5, 140.39, 1366.36, 1083.85, 0, 0, 0, 83.5935, 100, NULL, NULL, NULL, NULL, 0, '2018-08-11 21:20:28', '0', '2017-09-24 21:43:00', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(382, 1667.46, -2106.94, 14.0723, 0, -1, 1, 23500, 'Glendale St. MÄja #7', 6, -68.83, 1351.46, 1080.21, 0, 0, 0, 0.288391, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-09-24 22:41:14', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(383, 1673.67, -2122.45, 14.146, 0, -1, 1, 17000, 'Glendale St. MÄja #8', 1, 223.22, 1287.17, 1082.14, 0, 0, 0, 131.242, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-09-24 22:43:14', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(384, 1695.53, -2125.84, 13.8101, 0, -1, 1, 25500, 'Glendale St. mÄja #9', 10, 2270.41, -1210.46, 1047.56, 0, 0, 0, 174.029, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-09-24 22:44:33', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(385, 1715.19, -2125.45, 14.0566, 0, -1, 1, 15000, 'Glendale St. MÄja #10', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 176.699, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-09-24 22:44:54', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(386, 1734.67, -2130.36, 14.021, 0, -1, 1, 25000, 'Glendale St. MÄja #11', 5, 318.55, 1114.47, 1083.88, 0, 0, 0, 181.401, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2017-09-24 22:45:58', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(387, 1761.17, -2125.45, 14.0566, 0, -1, 1, 16500, 'Glendale St. MÄja #12', 20, 2535.96, -1339.61, 1030.93, 0, 0, 0, 184.246, 100, NULL, NULL, NULL, NULL, 0, '2018-08-18 23:32:07', '0', '2017-09-24 22:46:46', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(388, 1782.08, -2126.51, 14.0679, 0, -1, 1, 23500, 'Glendale St. MÄja #13', 26, 1974.03, -2488.14, 13.62, 0, 0, 0, 183.571, 100, NULL, NULL, NULL, NULL, 0, '2018-07-22 16:08:07', '0', '2017-09-24 22:47:48', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(389, 1758.38, -2142.13, 13.5469, 0, -1, 1, 12000, 'Glendale St. GarÄÅ¾a #12', 3, 620.01, -119.85, 998.84, 0, 0, 180, 274.143, 100, NULL, NULL, NULL, NULL, 0, '2018-07-21 03:22:49', '0', '2017-09-24 22:48:31', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(390, 2495.34, -1691.14, 14.7656, 0, -1, 1, 25000, 'Ganton, Grove St. MÄja #22', 3, 2496.03, -1692.17, 1014.74, 0, 0, 180, 178.94, 100, NULL, NULL, NULL, NULL, 0, '2018-07-24 14:32:16', '0', '2017-09-25 19:40:39', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(391, 2502.31, -1690.49, 13.5578, 0, -1, 1, 12000, 'Ganton, Grove St. GarÄÅ¾a #23', 3, 620.01, -119.85, 998.84, 0, 0, 176.199, 179.231, 100, NULL, NULL, NULL, NULL, 0, '2018-08-12 16:50:36', '0', '2017-09-25 19:41:57', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(392, 1685.68, -2335.5, 13.5469, 2, 0, 0, 0, 'Los Santos Lidosta', 3, 1725.37, -2243.45, 39.3803, 0, 0, 177.951, 182.988, 100, NULL, NULL, NULL, NULL, 0, '2018-08-14 17:23:24', '0', '2017-09-26 19:46:12', 'Danex', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(393, 1397.2, -1893.2, 13.4851, 0, -1, 1, 20000, 'Kaartezz\'s Garage', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 275.165, 100, NULL, NULL, NULL, NULL, 0, '2018-08-04 14:06:40', '0', '2018-02-16 14:17:53', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(394, 2448.7, -2620.6, 13.6572, 0, -1, 1, 1, 'Street Elite trase', 7, -1409.35, -255.91, 1043.66, 0, 0, 250, 90.9655, 100, NULL, NULL, NULL, NULL, 0, '2018-08-14 20:18:14', '0', '2018-02-16 16:09:25', 'daniels', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(395, 1898.79, -2037.95, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #37', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 279.455, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:36:30', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(396, 865.443, -1633.85, 14.9297, 2, 0, 0, 1, 'Verrona Beach Hotelis \'\'ZigmÄriÅ†i\'\'', 1, 2266.32, 1647.59, 1084.23, 0, 0, 270, 9.23141, 100, NULL, NULL, NULL, NULL, 0, '2018-08-01 14:57:20', '0', '2018-07-06 20:32:24', 'Unicorn', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(397, 2266.29, 1652.5, 1084.23, 0, -1, 1, 12000, 'Istaba #1 (ZigmÄriÅ†i)', 8, 2365.14, -1135.35, 1050.87, 396, 1, 0, 93.2231, 100, NULL, NULL, NULL, NULL, 0, '2018-07-14 21:13:12', '0', '2018-07-06 20:34:24', 'Unicorn', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(398, 2295.54, 1678.61, 1108.1, 3, -1, 1, 70, 'DzÄ«voklis #5', 6, 2308.8, -1212.94, 1049.02, 128, 1, 94.0252, 177.479, 100, NULL, NULL, NULL, NULL, 0, '2018-08-13 10:20:40', '0', '2018-07-07 22:24:47', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(399, 2357.81, -1991.18, 13.5469, 0, -1, 1, 1, 'Willowfield Ä“ka', 3, 975.26, -8.64, 1001.14, 0, 0, 90, 267.601, 2, NULL, NULL, NULL, NULL, 0, '2018-07-30 18:05:07', '0', '2018-07-08 16:04:09', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(401, 2266.38, 1662.76, 1084.23, 0, -1, 1, 12000, 'Istaba #2 (ZigmÄriÅ†i)', 8, 2365.14, -1135.35, 1050.87, 396, 1, 0, 92.097, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-06 20:36:18', 'Unicorn', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(402, 1894.28, -1792.53, 13.5471, 1, -1, 1, 15000, 'Idelwood Lombards', 6, -27.15, -57.87, 1003.54, 0, 0, 93.3165, 180.494, 4865, NULL, NULL, NULL, NULL, 0, '2018-08-24 10:42:20', '0', '2018-07-08 19:21:44', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(403, 1898.33, -2028.48, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #38', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 311.184, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:37:00', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(404, 921.712, -1286.18, 14.9166, 0, -1, 1, 0, 'Å rots', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 0.244446, 100, NULL, NULL, NULL, NULL, 0, '2018-02-18 22:12:28', '0', '2018-02-18 21:53:10', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(406, 1899.24, -2004.6, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #39', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 354.663, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:37:22', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(407, 845.119, -1293.09, 13.65, 1, -1, 1, 10000, 'Noliktava', 2, 2530.08, -1293.76, 1031.42, 0, 0, 87.252, 93.5308, 100, NULL, NULL, NULL, NULL, 0, '2018-08-23 02:56:08', '0', '2018-02-19 19:55:15', 'viensdivi3', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(408, 1898.39, -2009.94, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #40', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 188.383, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:37:42', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(409, 2129.69, -1361.69, 26.1363, 0, -1, 1, 15000, 'GarÄÅ¾a', 38, 1422.08, -2451.74, 13.5547, 0, 0, 340.694, 227.841, 100, NULL, NULL, NULL, NULL, 0, '2018-08-20 14:14:21', '0', '2018-07-09 18:22:42', 'Danex', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(410, 2271.07, 1662.46, 1084.23, 0, -1, 1, 12000, 'Istaba #3 (ZigmÄriÅ†i)', 8, 2365.14, -1135.35, 1050.87, 396, 1, 0, 271.633, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-06 20:36:38', 'Unicorn', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(411, 2271.1, 1652.73, 1084.23, 0, -1, 1, 12000, 'Istaba #4 (ZigmÄriÅ†i)', 8, 2365.14, -1135.35, 1050.87, 396, 1, 0, 265.997, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-06 20:36:44', 'Unicorn', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(412, 1298.58, -797.986, 84.1406, 0, -1, 1, 25000, 'Richmond mÄja #5', 3, 229.829, 130.776, 1020.97, 0, 0, 175.479, 254.917, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 00:42:55', '0', '2018-07-10 02:58:46', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(413, 2270.96, 1642.1, 1084.23, 0, -1, 1, 12000, 'Istaba #5 (ZigmÄriÅ†i)', 8, 2365.14, -1135.35, 1050.87, 396, 1, 0, 266.184, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-06 20:36:50', 'Unicorn', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(414, 2509, -1246.93, 35.0625, 0, -1, 1, 1, 'MÄjas garÄÅ¾a', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 359.327, 100, NULL, NULL, NULL, NULL, 0, '2018-08-07 11:47:22', '0', '2018-07-10 13:26:07', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(415, 2271.13, 1633.43, 1084.23, 0, -1, 1, 12000, 'Istaba #6 (ZigmÄriÅ†i)', 8, 2365.14, -1135.35, 1050.87, 396, 1, 0, 272.105, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-06 20:36:57', 'Unicorn', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(416, 2514.55, -1240.46, 39.3406, 0, -1, 1, 1, 'East Los Santos #25', 3, 235.44, 1186.83, 1080.25, 0, 0, 0, 1.88144, 100, NULL, NULL, NULL, NULL, 0, '2018-07-13 14:38:42', '0', '2018-07-10 13:27:30', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(417, 1916.9, -2009.65, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #41', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 163.702, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:38:04', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(418, 1948.36, -2010.76, 13.5547, 3, -1, 1, 70, 'El Corona DzÄ«voklis #42', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 84.2802, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:39:36', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(419, 398.145, -1271.38, 50.0198, 0, -1, 1, 75000, 'J. Torreto House', 6, 234.2, 1063.85, 1084.21, 0, 0, 0, 190.855, 100, NULL, NULL, NULL, NULL, 0, '2018-04-27 22:43:16', '0', '2018-03-06 00:14:01', 'ViensDivi3', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(420, 2525.09, -2220.54, 13.5469, 0, -1, 1, 45000, 'Pacific Ave #1', 25, 1920.57, -2327.92, 13.75, 0, 0, 0, 354.531, 100, NULL, NULL, NULL, NULL, 0, '2018-03-10 22:02:35', '0', '2018-03-02 15:05:46', 'daniels', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(421, 1379.92, -1634.91, 13.5469, 0, -1, 1, 1500, 'Comerce dzÄ«voklis #01', 10, 563.12, 2641.36, 9.29688, 0, 0, 90, 273.138, 100, NULL, NULL, NULL, NULL, 0, '2018-08-17 18:02:15', '0', '2018-03-04 17:08:12', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(424, 298.786, -1338.53, 53.4415, 0, -1, 1, 85000, 'Richman MÄja #01', 6, 234.2, 1063.85, 1084.21, 0, 0, 0, 222.694, 100, NULL, NULL, NULL, NULL, 0, '2018-08-20 14:19:09', '0', '2018-03-06 13:03:57', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(425, 1762.42, -1722.56, 13.5469, 1, -1, 1, 25000, 'S&D Tuning MÄ“beÄ¼u veikals', 27, 1877.89, -2466.96, 13.58, 0, 0, 0, 183.384, 1031, NULL, NULL, NULL, NULL, 0, '2018-08-24 15:30:00', '0', '2018-03-06 17:14:49', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(426, 1929.15, -1776.29, 13.5469, 1, 0, 1, 40000, 'Idlewood Uzpildes Stacija', 10, 6.05, -31.27, 1003.54, 0, 0, 91.7784, 147.733, 4967, NULL, NULL, NULL, NULL, 0, '2018-08-24 15:40:01', '0', '2018-03-06 17:43:14', 'ViensDivi3', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(427, 223.671, 1069.79, 1084.21, 0, -1, 1, 20000, 'GarÄÅ¾a', 40, 315.457, -112.941, 1011.01, 419, 6, 84.0934, 90.5919, 100, NULL, NULL, NULL, NULL, 0, '2018-04-27 22:42:53', '0', '2018-03-06 18:30:43', 'ViensDivi3', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(428, 931.701, -1369.29, 13.5688, 0, -1, 1, 5000, 'Offiss', 42, -2145.62, 646.929, 1206.49, 0, 0, 270, 359.58, 100, NULL, NULL, NULL, NULL, 0, '2018-04-18 21:38:57', '0', '2018-03-11 19:56:34', 'Danex', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(430, 2521.4, -1281.7, 34.8516, 2, 0, 0, 0, 'East Los Santos daudzdzÄ«vokÄ¼u Ä“ka #1', 15, 2214.62, -1150.38, 1025.79, 0, 0, 270, 274.22, 100, NULL, NULL, NULL, NULL, 0, '2018-08-19 23:22:19', '0', '2018-07-10 13:33:39', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(431, 1000.52, -1431.71, 13.5469, 0, -1, 1, 40000, 'Market GarÄÅ¾a #2', 25, 1920.57, -2327.92, 13.75, 0, 0, 0, 3.21082, 100, NULL, NULL, NULL, NULL, 0, '2018-04-25 12:56:30', '0', '2018-03-13 22:22:15', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(432, 300.257, -1154.47, 81.3886, 0, -1, 1, 150000, 'Richman MÄja#1', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 318.287, 100, NULL, NULL, NULL, NULL, 0, '2018-08-16 21:26:43', '0', '2018-03-13 22:32:47', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(433, 287.654, -1151.69, 80.9099, 0, -1, 1, 30000, 'Richman GarÄÅ¾a #1', 3, 794.967, 64.1738, 965.289, 0, 0, 180, 49.0684, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 12:27:09', '0', '2018-03-14 21:27:34', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(434, 2450.4, -1981.53, 13.5539, 0, -1, 1, 9500, 'Willowfield GarÄÅ¾a #10', 34, 2027.22, -2037.17, 35.0297, 0, 0, 0, 178.264, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 01:31:34', '0', '2018-03-14 22:00:30', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(435, 2261.55, -1906.76, 14.9375, 3, -1, 1, 0, 'DzÄ«voklis #01', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 179.022, 99, NULL, NULL, NULL, NULL, 0, '2018-07-17 01:03:39', '0', '2018-03-14 22:17:40', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(436, 2266.26, 1633.56, 1084.23, 0, -1, 1, 12000, 'Istaba #7 (ZigmÄriÅ†i)', 8, 2365.14, -1135.35, 1050.87, 396, 1, 0, 87.8672, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-06 20:37:01', 'Unicorn', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(437, 2266.42, 1642.14, 1084.23, 0, -1, 1, 12000, 'Istaba #8 (ZigmÄriÅ†i)', 8, 2365.14, -1135.35, 1050.87, 396, 1, 0, 92.6574, 100, NULL, NULL, NULL, NULL, 0, '2018-07-17 19:19:41', '0', '2018-07-06 20:37:09', 'Unicorn', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(438, 1685.35, -1464.43, 13.6719, 0, -1, 1, 10000, 'Commerce GarÄÅ¾a #1', 40, 315.457, -112.941, 1011.01, 0, 0, 0, 182.192, 100, NULL, NULL, NULL, NULL, 0, '2018-08-16 11:51:59', '0', '2018-03-15 11:19:44', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(439, 1993.51, -1761.96, 13.5391, 2, 0, 0, 0, 'Idlewood Tabakas veikals \" Trends \"', 43, 522.45, 2379.21, 435.4, 0, 0, 0, 181.406, -712, NULL, NULL, NULL, NULL, 0, '2019-01-09 20:10:27', '0', '2018-03-15 12:19:00', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(440, 2753.09, -2003.8, 13.5547, 0, -1, 1, 4000, 'Playa del Seville GarÄÅ¾a #1', 40, 315.457, -112.941, 1011.01, 0, 0, 0, 189.959, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 01:33:24', '0', '2018-03-16 00:44:39', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(441, 224.574, 80.4619, 1005.04, 2, -1, 0, 0, 'Los Santos Police Departament Noliktava', 5, 322.24, 302.45, 999.14, 1, 6, 0, 1.14536, 100, NULL, NULL, NULL, NULL, 0, '2018-06-18 00:19:38', '0', '2018-03-16 13:30:32', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 1, NULL, 0),
(442, 1298.1, -981.739, 32.6953, 0, -1, 1, 20000, 'Temple GarÄÅ¾a #1', 22, 1433.62, 1363.21, 10.8305, 0, 0, 0, 272.94, 100, NULL, NULL, NULL, NULL, 0, '2018-08-13 13:22:24', '0', '2018-03-18 16:15:46', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(443, 1916.79, -2000.62, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #45', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 356.245, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:41:00', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(445, 1852.34, -1991.7, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #46', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 100.244, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:41:22', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(446, 2242.53, -1170.88, 1029.8, 3, -1, 1, 70, 'DzÄ«voklis #1', 1, 223.22, 1287.17, 1082.14, 430, 15, 0, 272.83, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-10 13:51:46', 'linceens', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(447, 2190.38, -1487.63, 26.1051, 0, -1, 1, 9000, 'Jefferson, Guatanom Ave MÄja #1', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 90.1414, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-03-27 14:18:51', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(448, 2190.66, -1470.33, 25.9141, 0, -1, 1, 10000, 'Jefferson, Guatanom Ave MÄja #2', 2, 2468.77, -1698.25, 1013.5, 0, 0, 90, 90.4765, 100, NULL, NULL, NULL, NULL, 0, '2018-08-12 14:18:46', '0', '2018-03-27 14:34:06', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(449, 891.272, -783.114, 101.314, 0, -1, 1, 130000, 'Palin St MÄja #1', 9, 2317.81, -1026.55, 1050.21, 0, 0, 0, 207.203, 100, NULL, NULL, NULL, NULL, 0, '2018-06-20 20:41:59', '0', '2018-03-28 16:05:20', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(450, 896.466, -780.647, 101.329, 0, -1, 1, 10000, 'Palin St. GarÄÅ¾a #1', 38, 1422.08, -2451.74, 13.5547, 0, 0, 0, 205.005, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:15:28', '0', '2018-03-28 16:06:50', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(451, 878.278, -726.339, 106.021, 0, -1, 1, 100000, 'Palin St. MÄja #2', 3, 235.44, 1186.83, 1080.25, 0, 0, 0, 332.196, 100, NULL, NULL, NULL, NULL, 0, '2018-07-28 20:40:12', '0', '2018-03-28 16:11:46', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(452, 1858.94, -2001.07, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #47', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 259.476, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:41:42', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(453, 897.812, -677.276, 116.89, 0, -1, 1, 105000, 'Palin St MÄja #3', 12, 2324.42, -1149.2, 1050.71, 0, 0, 0, 57.6214, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-03-28 16:17:50', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(454, 907.846, -662.404, 116.89, 0, -1, 1, 10000, 'Palin St. GarÄÅ¾a #2', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 61.7908, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:18:02', '0', '2018-03-28 16:19:20', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(455, 142.758, -1470.48, 25.2109, 0, -1, 1, 60000, 'Province St. MÄja #1', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 139.421, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:26:13', '0', '2018-03-28 16:23:47', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0);
INSERT INTO `interiors` (`id`, `x`, `y`, `z`, `type`, `owner`, `locked`, `cost`, `name`, `interior`, `interiorx`, `interiory`, `interiorz`, `dimensionwithin`, `interiorwithin`, `angle`, `angleexit`, `supplies`, `safepositionX`, `safepositionY`, `safepositionZ`, `safepositionRZ`, `disabled`, `lastused`, `deleted`, `createdDate`, `creator`, `isLightOn`, `keypad_lock`, `keypad_lock_pw`, `keypad_lock_auto`, `uploaded_interior`, `faction`, `protected_until`, `token`) VALUES
(456, 228.016, -1405.47, 51.6094, 0, -1, 1, 90000, 'Province St. MÄja #3', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 150.216, 100, NULL, NULL, NULL, NULL, 0, '2018-08-13 18:06:52', '0', '2018-03-28 16:30:06', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(459, 355.182, -1281.13, 53.7036, 0, -1, 1, 68000, 'Province St. MÄja #5', 9, 2317.81, -1026.55, 1050.21, 0, 0, 0, 203.44, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:21:05', '0', '2018-03-28 16:35:54', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(460, 251.331, -1220.28, 76.1024, 0, -1, 1, 160000, 'Belmont Drive St #1', 5, 140.39, 1366.36, 1083.85, 0, 0, 0, 34.363, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-03-28 16:51:24', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(461, 276.239, -1254.61, 73.9228, 0, -1, 1, 10000, 'Belmont Drive St. GarÄÅ¾a #1', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 121.156, 100, NULL, NULL, NULL, NULL, 0, '2018-08-21 11:56:50', '0', '2018-03-28 16:52:31', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(462, 253.246, -1269.97, 74.4304, 0, -1, 1, 175000, 'Belmont Drive St #2', 7, 225.71, 1021.44, 1084.01, 0, 0, 0, 215.157, 100, NULL, NULL, NULL, NULL, 0, '2018-07-17 19:19:48', '0', '2018-03-28 16:53:19', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(463, 352.427, -1197.88, 76.5156, 0, -1, 1, 75000, 'Belmont Drive St #3', 9, 83, 1322.48, 1083.86, 0, 0, 0, 218.92, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-03-28 16:55:30', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(464, 348.786, -1200.97, 76.5156, 0, -1, 1, 12000, 'Belmont Drive St. GarÄÅ¾a #2', 3, 620.01, -119.85, 998.84, 0, 0, 180, 224.534, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:24:50', '0', '2018-03-28 16:56:14', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(465, 432.067, -1253.95, 51.5809, 0, -1, 1, 90000, 'Province St. MÄja #6', 3, 235.44, 1186.83, 1080.25, 0, 0, 0, 201.034, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-03-28 16:57:38', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(466, 189.638, -1308.25, 70.2493, 0, -1, 1, 230000, 'Province St. MÄja #7', 9, 2317.81, -1026.55, 1050.21, 0, 0, 0, 90.7842, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:26:57', '0', '2018-03-28 16:58:39', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(467, 169.206, -1337.65, 69.9314, 0, -1, 1, 15000, 'Province St. GarÄÅ¾a #4', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 358.662, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:28:01', '0', '2018-03-28 16:58:59', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(468, 219.29, -1249.77, 78.3362, 0, -1, 1, 180000, 'Province St. MÄja #8', 7, 225.71, 1021.44, 1084.01, 0, 0, 0, 36.2911, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:29:23', '0', '2018-03-28 17:00:07', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(469, 416.735, -1154.1, 76.6876, 0, -1, 1, 80000, 'Richman MÄja #1', 15, 377.15, 1417.42, 1081.3, 0, 0, 90, 328.274, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:30:00', '0', '2018-03-28 17:02:08', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(470, 408.633, -1148.66, 76.6876, 0, -1, 1, 10000, 'Richman GarÄÅ¾a #1', 40, 315.457, -112.941, 1011.01, 0, 0, 0, 329.213, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-03-28 17:02:53', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(471, 470.64, -1163.6, 67.2176, 0, -1, 1, 85000, 'Richman MÄja #2', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 14.3566, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:34:05', '0', '2018-03-28 17:04:12', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(472, 560.807, -1116.21, 62.8064, 0, -1, 1, 96000, 'Richman MÄja #3', 6, 234.2, 1063.85, 1084.21, 0, 0, 0, 208.603, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:35:00', '0', '2018-03-28 17:05:47', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(473, 567.566, -1129.51, 50.6855, 0, -1, 1, 32000, 'Richman GarÄÅ¾a #2', 38, 1422.08, -2451.74, 13.5547, 0, 0, 0, 28.7709, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:35:40', '0', '2018-03-28 17:06:20', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(474, 617.916, -1100.13, 46.7656, 0, -1, 1, 32000, 'Richman GarÄÅ¾a #3', 38, 1422.08, -2451.74, 13.5547, 0, 0, 0, 35.6375, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:35:57', '0', '2018-03-28 17:10:13', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(475, 612.237, -1085.87, 58.8267, 0, -1, 1, 95000, 'Richman MÄja #4', 10, 24, 1340.33, 1084.37, 0, 0, 0, 214.965, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:36:21', '0', '2018-03-28 17:12:50', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(476, 646.124, -1117.28, 44.207, 0, -1, 1, 76000, 'Richman MÄja #5', 15, 387.22, 1471.76, 1080.18, 0, 0, 90, 222.798, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:36:47', '0', '2018-03-28 17:13:56', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(477, 638.858, -1124.81, 44.207, 0, -1, 1, 8000, 'Richman GarÄÅ¾a #4', 40, 315.457, -112.941, 1011.01, 0, 0, 0, 224.99, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:37:03', '0', '2018-03-28 17:14:40', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(478, 691.522, -1075.29, 49.4217, 0, -1, 1, 10000, 'Richman GarÄÅ¾a #5', 3, 794.967, 64.1738, 965.289, 0, 0, 180, 237.816, 100, NULL, NULL, NULL, NULL, 0, '2018-05-18 19:37:24', '0', '2018-03-28 17:14:59', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(479, 700.255, -1060.33, 49.4217, 0, -1, 1, 90000, 'Richman MÄja #6', 6, 234.2, 1063.85, 1084.21, 0, 0, 0, 239.069, 100, NULL, NULL, NULL, NULL, 0, '2018-08-06 18:15:19', '0', '2018-03-28 17:17:41', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(480, 854.693, -604.657, 18.4219, 0, -1, 1, 15000, 'Dillimore GarÄÅ¾a#01', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 183.45, 100, NULL, NULL, NULL, NULL, 0, '2018-04-05 21:15:09', '0', '2018-04-04 22:29:48', 'SkyForger', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(481, 1326.78, -888.405, 39.5781, 0, -1, 1, 15000, 'West Broadway GarÄÅ¾a #1', 22, 1433.62, 1363.21, 10.8305, 0, 0, 0, 91.4379, 1070, NULL, NULL, NULL, NULL, 0, '2018-08-24 12:18:27', '0', '2018-04-27 20:33:06', 'MentuM', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(482, 1864.78, -2019.71, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #48', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 274.165, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:42:09', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(483, 1852.8, -2021.16, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #49', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 167.75, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:45:07', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(484, 1849.32, -2028.42, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #50', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 329.982, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:45:26', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(485, 1845.96, -2020.38, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #51', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 265.354, 100, NULL, NULL, NULL, NULL, 0, '2018-08-06 17:15:04', '0', '2018-06-20 22:45:47', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(486, 1835.92, -2005.49, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #52', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 12.2911, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:46:08', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(487, 1849.62, -2001.47, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #53', 2, 266.56, 305.02, 999.14, 0, 0, 270, 314.705, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:46:42', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(488, 1849.3, -2010.01, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #54', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 276.027, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:47:32', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(489, 1839.06, -1995.44, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #55', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 64.9933, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:47:53', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(490, 1846.5, -1990.93, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #56', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 285.152, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:48:09', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(491, 1849.43, -1982.23, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #57', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 185.263, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:48:41', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(492, 1858.87, -1982.46, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #58', 10, 422.26, 2536.37, 10, 0, 0, 90, 164.597, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:49:04', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(493, 1866.88, -1979.48, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #59', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 81.7478, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:49:21', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(494, 1835.4, -1977.61, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #60', 2, 266.56, 305.02, 999.14, 0, 0, 270, 105.352, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:49:50', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(495, 1835.74, -1986.94, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #61', 10, 422.26, 2536.37, 10, 0, 0, 90, 176.451, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:50:13', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(496, 1826.93, -1981.24, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #62', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 14.2797, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:50:33', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(497, 1832.5, -1994.59, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #63', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 251.072, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:52:14', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(498, 1820.43, -1995.65, 13.5544, 3, -1, 1, 70, 'El Corona DzÄ«voklis #64', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 95.9533, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:52:29', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(499, 1817.5, -1986.88, 13.5544, 3, -1, 1, 70, 'El Corona DzÄ«voklis #65', 5, 2233.57, -1115.08, 1050.88, 0, 0, 0, 147.661, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:52:47', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(500, 1816.87, -1977.52, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #66', 10, 422.26, 2536.37, 10, 0, 0, 90, 277.329, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:53:05', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(501, 1827.54, -1974.69, 13.5469, 3, -1, 1, 70, 'El Corona DzÄ«voklis #67', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 149.139, 100, NULL, NULL, NULL, NULL, 0, '2018-07-17 02:24:12', '0', '2018-06-20 22:53:22', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(502, 1814.15, -1995.02, 13.5544, 3, -1, 1, 70, 'El Corona DzÄ«voklis #68', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 270.282, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-20 22:53:46', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(503, 1817.38, -2006.11, 13.5544, 3, -1, 1, 70, 'El Corona DzÄ«voklis #69', 10, 422.26, 2536.37, 10, 0, 0, 90, 356.652, 100, NULL, NULL, NULL, NULL, 0, '2018-08-06 01:32:20', '0', '2018-06-20 22:54:18', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(506, 2225.54, -1189.96, 1029.8, 3, -1, 1, 70, 'DzÄ«voklis #2', 10, 2259.68, -1136.09, 1050.63, 430, 15, 270, 174.781, 100, NULL, NULL, NULL, NULL, 0, '2018-07-13 17:52:36', '0', '2018-07-10 13:53:15', 'linceens', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(507, 2209.57, -1187.37, 1029.8, 3, -1, 1, 70, 'DzÄ«voklis #3', 1, 243.718, 304.933, 999.148, 430, 15, 270, 355.553, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-10 13:54:20', 'linceens', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(508, -923.691, -496.986, 26.7656, 1, -1, 1, 5500, 'PTA MÄ“beÄ¼u veikals', 27, 1877.89, -2466.96, 13.58, 0, 0, 0, 347.698, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-11 13:04:24', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(509, 914.352, -1003.83, 37.9955, 2, 0, 0, 1, 'F.B.I.', 24, 25.08, -6.73, 40.43, 0, 0, 0, 176.666, 100, NULL, NULL, NULL, NULL, 0, '2018-08-19 15:33:57', '0', '2018-07-11 19:50:06', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(510, 2110.52, -1331.11, 25.5391, 0, -1, 1, 10000, 'GarÄÅ¾Ä#01', 3, 620.01, -119.85, 998.84, 0, 0, 180, 153.907, 100, NULL, NULL, NULL, NULL, 0, '2018-08-02 12:24:53', '0', '2018-07-12 00:17:52', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(511, 1183.47, -1076.17, 31.6789, 0, -1, 1, 20000, 'Temple MÄja #2', 7, 225.71, 1021.44, 1084.01, 0, 0, 0, 265.678, 64, NULL, NULL, NULL, NULL, 0, '2018-07-17 16:35:38', '0', '2018-07-12 12:25:45', 'Unicorn', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(512, 1183.15, -1068.57, 29.2745, 0, -1, 1, 6500, 'Temple GarÄÅ¾a #2', 2, 620.18, -70.89, 997.99, 0, 0, 0, 271.798, 100, NULL, NULL, NULL, NULL, 0, '2018-08-10 19:54:31', '0', '2018-07-12 12:41:20', 'Unicorn', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(513, 2460.55, -1318.42, 24, 0, -1, 1, 15000, 'Ð§ÐµÑ€Ð½Ñ‹Ð¹ Ð¿ÑŒÑŽÑ‰Ð¸Ð¹', 30, -199.28, 1119.81, 225.94, 0, 0, 0, 262.844, 100, NULL, NULL, NULL, NULL, 0, '2018-08-07 12:23:42', '0', '2018-07-12 17:25:53', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(514, 2093.8, -1275.62, 25.5003, 0, -1, 1, 10000, 'Glen Park GarÄÅ¾a #01', 3, 620.01, -119.85, 998.84, 0, 0, 180, 16.2188, 100, NULL, NULL, NULL, NULL, 0, '2018-08-23 20:01:06', '0', '2018-07-12 21:19:03', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(515, -187.581, 1121.38, 225.948, 0, -1, 1, 0, 'Pagrabs', 6, 2438.35, -2537.32, 1095.43, 513, 30, 0, 266.315, 100, NULL, NULL, NULL, NULL, 0, '2018-08-07 12:23:17', '0', '2018-07-12 23:29:39', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(518, 1073.12, -1384.77, 13.8679, 1, -1, 1, 5000, 'Cash Money Records', 77, 1150.19, -808.095, 2099.07, 0, 0, 180, 315.337, 100, NULL, NULL, NULL, NULL, 0, '2018-07-15 19:37:09', '0', '2018-07-15 16:35:19', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(519, 1521.36, -1453.92, 14.2101, 2, 0, 0, 0, 'Internal Affairs of Los Santos', 2, 2153.19, -1417.49, 293.73, 0, 0, 90, 177.836, 100, NULL, NULL, NULL, NULL, 0, '2018-12-24 16:46:28', '0', '2018-07-15 17:33:40', 'linceens', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(520, 1332.13, -633.492, 109.135, 0, -1, 1, 70000, 'Richmand House #313', 12, 2324.42, -1149.2, 1050.71, 0, 0, 0, 197.084, 100, NULL, NULL, NULL, NULL, 0, '2018-08-20 14:26:22', '0', '2018-07-15 18:43:20', 'linceens', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(521, 1350.77, -627.107, 109.132, 0, -1, 1, 8000, 'Garage', 21, -2031.88, -118.21, 1039.3, 0, 0, 0, 198.364, 100, NULL, NULL, NULL, NULL, 0, '2018-07-19 21:01:24', '0', '2018-07-15 18:44:35', 'linceens', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(522, 413.116, 2536.83, 10, 0, -1, 1, 50, 'Noliktava', 2, 1.9, -3.2, 999.4, 100, 10, 0, 86.3346, 100, NULL, NULL, NULL, NULL, 0, '2018-07-23 13:23:29', '0', '2018-07-16 00:28:37', 'linceens', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(523, 1804.22, -2124.9, 13.9424, 0, -1, 1, 20000, 'Glendale St. MÄja #14', 2, 226.48, 1239.87, 1082.14, 0, 0, 90, 180.648, 100, NULL, NULL, NULL, NULL, 0, '2018-08-01 12:21:11', '0', '2018-07-18 00:25:03', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(524, 1798.26, -2146.63, 13.5469, 0, -1, 1, 10000, 'Glendale St. GarÄÅ¾a #1', 2, 620.18, -70.89, 997.99, 0, 0, 0, 273.539, 100, NULL, NULL, NULL, NULL, 0, '2018-07-26 16:54:14', '0', '2018-07-18 00:26:56', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(526, 2045.04, -1913.04, 13.5469, 1, -1, 1, 20000, 'Idlewood GarÄÅ¾a #10', 24, 529.506, 63.9219, 1044.46, 0, 0, 0, 97.4694, 100, NULL, NULL, NULL, NULL, 0, '2018-08-09 00:07:00', '0', '2018-07-18 00:53:16', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(531, 2197.27, -60.7256, 28.1535, 0, -1, 1, 15000, 'MÄja', 10, 2270.41, -1210.46, 1047.56, 0, 0, 0, 89.9052, 100, NULL, NULL, NULL, NULL, 0, '2018-07-25 10:32:22', '0', '2018-07-18 16:41:40', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(532, 2197.27, -65.9658, 27.4838, 0, -1, 1, 5000, 'GarÄÅ¾a', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 89.8833, 100, NULL, NULL, NULL, NULL, 0, '2018-08-01 02:18:02', '0', '2018-07-18 16:42:20', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(533, 2520.01, -1673.55, 14.7081, 0, -1, 1, 0, 'GarÄÅ¾a', 2, 620.18, -70.89, 997.99, 0, 0, 0, 274.429, 100, NULL, NULL, NULL, NULL, 0, '2018-07-27 12:05:37', '0', '2018-07-18 17:32:16', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(534, 2766, -1606.51, 10.9219, 0, -1, 1, 20000, 'GarÄÅ¾a', 24, 529.506, 63.9219, 1044.46, 0, 0, 0, 90.0096, 100, NULL, NULL, NULL, NULL, 0, '2018-08-23 23:48:13', '0', '2018-07-18 19:55:21', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(537, 2245.49, -122.279, 28.1535, 0, -1, 1, 25000, 'Palomino Creek MÄja #01', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 183.373, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-18 22:47:05', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(541, -1038.77, -1689.77, 77.8269, 0, -1, 1, 15000, 'Ofiss', 1, -2158.81, 643.14, 1052.37, 0, 0, 180, 143.195, 100, NULL, NULL, NULL, NULL, 0, '2018-08-16 13:13:50', '0', '2018-07-23 23:06:29', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(542, -1048.59, -1690.57, 77.2993, 0, -1, 1, 10000, 'GarÄÅ¾a', 21, -2031.88, -118.21, 1039.3, 0, 0, 0, 228.049, 100, NULL, NULL, NULL, NULL, 0, '2018-08-16 13:14:52', '0', '2018-07-23 23:08:04', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(543, 2865.45, -1465.88, 10.9527, 1, -1, 1, 10000, 'East Beach Gambling', 10, 322.755, -96.3672, 997.931, 0, 0, 0, 87.7025, 0, NULL, NULL, NULL, NULL, 0, '2018-08-13 18:52:25', '0', '2018-07-24 00:03:16', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(544, 309.999, -105.275, 997.931, 0, -1, 1, 0, 'Kazino Noliktava', 3, 808.208, 63.9092, 965.289, 543, 10, 182.285, 179.637, 100, NULL, NULL, NULL, NULL, 0, '2018-08-09 13:36:04', '0', '2018-07-24 00:14:31', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(545, -1007.97, -1721.23, 78.8594, 0, -1, 1, 22500, 'Flint County MÄja #1', 2, 226.48, 1239.87, 1082.14, 0, 0, 90, 146.777, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-24 00:15:13', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(546, -998.654, -1723.83, 77.8254, 0, -1, 1, 12500, 'Flint County GarÄÅ¾a #1', 21, -2031.88, -118.21, 1039.3, 0, 0, 0, 147.189, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-24 00:19:33', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(548, 2017.56, -1737.22, 13.5469, 0, -1, 1, 10000, 'Idlewood garÄÅ¾a #1', 3, 620.01, -119.85, 998.84, 0, 0, 180, 271.891, 100, NULL, NULL, NULL, NULL, 0, '2018-08-13 23:18:21', '0', '2018-07-25 18:08:43', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(549, 1985.88, -1802.67, 13.5469, 0, -1, 1, 20000, 'Bennett Lombards', 6, -2240.69, 128.43, 1035.41, 0, 0, 270, 1.94186, 100, NULL, NULL, NULL, NULL, 0, '2018-07-26 01:46:44', '0', '2018-07-25 18:13:59', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(550, 1555.48, -1199.99, 20.0241, 1, -1, 0, 25000, 'Downtown RestorÄns', 1, -794.98, 489.78, 1376.2, 0, 0, 0, 1.93088, 100, NULL, NULL, NULL, NULL, 0, '2018-08-07 20:01:22', '0', '2018-07-28 13:00:31', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(551, -795.446, 473.662, 1361.39, 2, 0, 0, 0, 'Liberty City daudzstÄvu mÄja #23', 1, 2300.72, 1685.69, 1101.91, 550, 1, 180, 359.42, 100, NULL, NULL, NULL, NULL, 0, '2018-08-07 20:12:28', '0', '2018-07-28 13:17:33', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(552, -777.906, 505.005, 1376.59, 2, 0, 0, 0, 'Saint Marks Bistro', 1, -794.98, 489.78, 1376.2, 550, 1, 0, 93.1078, 100, NULL, NULL, NULL, NULL, 0, '2018-08-07 19:34:04', '0', '2018-07-28 13:44:12', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(553, 1933.45, -1864.77, 13.5619, 0, 19, 0, 12000, 'Steel Horse autoserviss', 25, 1920.57, -2327.92, 13.75, 0, 0, 0, 229.906, 829, NULL, NULL, NULL, NULL, 0, '2019-03-05 22:24:22', '0', '2018-07-29 16:43:04', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(554, 2225.56, -1189.96, 1029.8, 0, -1, 1, 5000, 'Panopticon Avenue - DzÄ«voklis 2', 20, 2535.96, -1339.61, 1030.93, 277, 15, 0, 176.754, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-29 21:07:50', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(555, 2209.67, -1187.37, 1029.8, 0, -1, 1, 5000, 'Panopticon Avenue - DzÄ«voklis 3', 20, 2535.96, -1339.61, 1030.93, 277, 15, 0, 4.12268, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-29 21:07:56', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(556, 2191.89, -1173, 1029.8, 0, -1, 1, 5000, 'Panopticon Avenue - DzÄ«voklis 4', 20, 2535.96, -1339.61, 1030.93, 277, 15, 0, 84.2472, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-29 21:08:04', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(557, 2191.1, -1455.87, 26, 0, -1, 1, 10000, 'Jefferson, Guatanom Ave mÄja #3', 1, 223.22, 1287.17, 1082.14, 0, 0, 0, 90.3776, 100, NULL, NULL, NULL, NULL, 0, '2018-08-16 22:02:23', '0', '2018-07-29 21:08:17', 'sinner', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(558, 2194.35, -1442.95, 26.0738, 0, -1, 1, 10000, 'Jefferson, Guatanom Ave mÄja #4', 1, 223.22, 1287.17, 1082.14, 0, 0, 0, 85.7963, 100, NULL, NULL, NULL, NULL, 0, '2018-08-14 13:34:17', '0', '2018-07-29 21:08:27', 'sinner', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(561, 2188.55, -1419.22, 26.1562, 0, -1, 1, 10000, 'Jefferson, Guatanom Ave mÄja #5', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 90.7787, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-29 21:10:05', 'sinner', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(562, 2196.26, -1404.16, 25.9488, 0, -1, 1, 15000, 'Jefferson, Guatanom Ave mÄja #6', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 85.7963, 100, NULL, NULL, NULL, NULL, 0, '2018-07-29 21:10:39', '0', '2018-07-29 21:10:24', 'sinner', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(563, 2062.46, -1655.78, 13.9029, 0, -1, 1, 9500, 'Idlewood mÄja #9', 1, 223.22, 1287.17, 1082.14, 0, 0, 0, 89.345, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-29 21:11:52', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(564, 2069.18, -1628.82, 14.0123, 0, -1, 1, 8000, 'Idlewood mÄja #7', 2, 2468.77, -1698.25, 1013.5, 0, 0, 90, 92.0641, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-29 21:12:53', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(565, 2066.29, -1732.2, 13.7632, 0, -1, 1, 8000, 'Idlewood mÄja #12', 2, 2468.77, -1698.25, 1013.5, 0, 0, 90, 89.68, 2420, NULL, NULL, NULL, NULL, 0, '2018-08-24 01:00:53', '0', '2018-07-29 21:13:22', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(566, 2016.5, -1641.23, 13.9991, 0, -1, 1, 9000, 'Idlewood mÄja #5', 1, 223.22, 1287.17, 1082.14, 0, 0, 0, 270.1, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-29 21:13:57', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(568, 2327.16, -1682.01, 14.9297, 0, -1, 1, 14000, 'Ganton, Liverpool Rd. MÄja #2', 1, 223.22, 1287.17, 1082.14, 0, 0, 0, 91.2621, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-29 21:16:15', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(570, 1466.78, 1766.05, 14.7609, 0, 0, 1, 3500, 'PagrabstÄvs', 18, -18.2, -139.9, 1043.9, 258, 46, 180, 88.3067, 100, NULL, NULL, NULL, NULL, 0, '2018-07-29 21:27:19', '0', '2018-07-29 21:26:10', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(571, 1471.76, 1767.78, 14.7609, 0, -1, 1, 5500, 'East LS - DzÄ«voklis #2', 7, 403.233, -304.44, 1007.26, 258, 46, 0, 358.954, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-29 21:29:29', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(572, 1467.72, 1767.71, 14.7609, 0, -1, 1, 5500, 'East LS - DzÄ«voklis #1', 7, 403.233, -304.44, 1007.26, 258, 46, 0, 0.0576782, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-29 21:29:39', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(573, 1478.07, 1763.19, 14.7609, 0, -1, 1, 4000, 'East LS - DzÄ«voklis #3', 20, 2535.96, -1339.61, 1030.93, 258, 46, 269.968, 271.578, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-29 21:30:36', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(574, 1478.05, 1760.33, 14.7609, 0, -1, 1, 4000, 'East LS - DzÄ«voklis #4', 11, 2282.98, -1140.15, 1050.9, 258, 46, 0, 271.781, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-29 21:30:52', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(575, 1478.05, 1757.53, 14.7609, 0, -1, 1, 4000, 'East LS - DzÄ«voklis #5', 20, 2535.96, -1339.61, 1030.93, 258, 46, 267.046, 271.177, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-29 21:31:00', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(576, 1478.24, 1754.61, 14.7609, 0, -1, 1, 4000, 'East LS - DzÄ«voklis #6', 11, 2282.98, -1140.15, 1050.9, 258, 46, 0, 271.177, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-07-29 21:31:07', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(577, 2536.81, -1492.43, 24.0391, 0, -1, 1, 8000, 'Malkeyev Stance Works', 38, 1422.08, -2451.74, 13.5547, 0, 0, 0, 0.524597, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 13:25:03', 'GoblinX', '2018-07-30 11:49:00', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(581, 532.145, 91.4873, 1044.47, 0, -1, 1, 10000, 'GarÄÅ¾as noliktava', 21, -2031.88, -118.21, 1039.3, 553, 24, 0, 358.41, 100, NULL, NULL, NULL, NULL, 0, '2018-08-06 23:43:37', '0', '2018-08-03 13:03:22', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(582, 254.438, -1367.21, 53.1094, 0, -1, 1, 80000, 'Richman mÄja #58', 33, 2322.57, -1393.4, 395.09, 0, 0, 0, 127.715, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 00:54:52', '0', '2018-08-03 21:42:01', 'RuleMkaZ', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(586, 1212.56, -975.622, 43.4766, 0, -1, 1, 15000, 'GarÄÅ¾Ä #01', 25, 1920.57, -2327.92, 13.75, 0, 0, 0, 11.4452, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 00:25:41', '0', '2018-08-04 14:35:46', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(587, 2273.68, -1103.6, 37.9766, 0, -1, 1, 12500, 'GarÄÅ¾a #02', 3, 794.967, 64.1738, 965.289, 0, 0, 180, 332.652, 100, NULL, NULL, NULL, NULL, 0, '2018-08-21 08:11:55', '0', '2018-08-04 14:43:13', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(588, 247.069, -1359.38, 53.1094, 0, -1, 1, 10000, 'GarÄÅ¾a', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 123.81, 100, NULL, NULL, NULL, NULL, 0, '2018-08-07 18:52:44', '0', '2018-08-04 16:45:05', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(589, 1295.72, -1253.99, 13.5469, 0, -1, 1, 14000, 'GarÄÅ¾a #03', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 175.446, 100, NULL, NULL, NULL, NULL, 0, '2018-08-19 20:49:05', '0', '2018-08-04 21:32:52', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(591, 1257.58, -800.892, 84.1406, 0, -1, 1, 30000, 'MÄjas garÄÅ¾a', 22, 1433.62, 1363.21, 10.8305, 0, 0, 0, 0.249939, 100, NULL, NULL, NULL, NULL, 0, '2018-08-19 22:51:15', '0', '2018-08-04 23:15:51', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(593, 875.692, -1502.23, 12.575, 0, -1, 1, 5500, 'GarÄÅ¾a blakus mÄjai', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 277.533, 100, NULL, NULL, NULL, NULL, 0, '2018-08-16 15:04:10', '0', '2018-08-05 23:38:19', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(594, 875.855, -1512.69, 14.3465, 0, -1, 1, 28000, 'MÄja', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 271.594, 100, NULL, NULL, NULL, NULL, 0, '2018-08-16 17:42:11', '0', '2018-08-05 23:39:19', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(595, 1837.04, -1682.4, 13.323, 1, -1, 1, 150000, 'ALHAMBRA Nakts Klubs', 3, -2636.77, 1402.6, 906.46, 0, 0, 0, 268.914, 2915, NULL, NULL, NULL, NULL, 0, '2018-08-14 22:40:12', '0', '2018-08-06 00:01:15', 'sinner', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(596, 1112.64, -742.029, 100.133, 0, -1, 1, 70000, 'Richmond house #1337', 3, 965.16, -53.2129, 1001.12, 0, 0, 90, 259.169, 100, NULL, NULL, NULL, NULL, 0, '2018-08-20 13:31:30', '0', '2018-08-06 01:44:47', 'sinner', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(597, 1112.44, -729.383, 100.133, 0, -1, 1, 15000, 'Richmond garÄÅ¾a', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 277.703, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 00:32:34', '0', '2018-08-06 01:45:26', 'sinner', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(599, 2286.46, -2012.85, 13.5447, 0, -1, 1, 22000, 'Audi Sport Custom', 25, 1920.57, -2327.92, 13.75, 0, 0, 0, 0.409241, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 12:43:15', '0', '2018-08-06 14:50:19', 'BunnyHop', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(601, 280.018, 197.659, 1040.03, 2, 0, 1, 0, 'LSPD KonfiscÄ“tava', 45, 1384.83, 1464.5, 10.8644, 1, 3, 0, 98.0133, 100, 1386.54, 1474.84, 10.3644, 270.032, 0, '2018-08-16 23:42:36', '0', '2018-08-07 23:17:30', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(602, 1383.21, 465.576, 20.1919, 1, -1, 1, 35000, 'Montgomery BenzÄ«ntanks', 43, 522.45, 2379.21, 435.4, 0, 0, 0, 334.377, 57, NULL, NULL, NULL, NULL, 0, '2018-08-17 21:49:24', '0', '2018-08-08 16:22:13', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(603, 1413.1, 363.033, 19.1993, 3, 0, 0, 80, 'Montgomery Treileris #3', 2, 1.9, -3.2, 999.4, 0, 0, 0, 66.9929, 100, -1.26953, 4.75195, 998.928, 352.804, 0, '2018-12-22 20:18:40', '0', '2018-08-09 12:51:41', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(604, 2512.78, -1027.16, 70.0859, 2, 0, 1, 0, 'Las Collinas MÄja', 1, 243.718, 304.933, 999.148, 0, 0, 270, 355.207, 100, 249.366, 302.718, 998.648, 273.465, 0, '2018-08-12 13:47:27', '0', '2018-08-09 13:17:39', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(605, 2747.52, -1638.31, 13.0663, 2, 0, 0, 0, 'East Beach DaudzdzÄ«vokÄ¼u Ä’ka', 46, 1471.89, 1752.92, 14.7609, 0, 0, 0, 268.276, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 13:18:52', '0', '2018-08-10 12:15:54', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(607, 1471.86, 1767.92, 14.7609, 0, -1, 1, 5000, 'DzÄ«voklis #2', 5, 22.98, 1403.6, 1084.42, 605, 46, 0, 2.59009, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-08-10 12:18:12', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(608, 1478.32, 1763.03, 14.7609, 0, -1, 1, 5000, 'DzÄ«voklis #3', 11, 2282.98, -1140.15, 1050.9, 605, 46, 0, 273.314, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-08-10 12:18:54', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(609, 1478.32, 1760.3, 14.7609, 0, -1, 1, 5000, 'DzÄ«voklis #4', 11, 2282.98, -1140.15, 1050.9, 605, 46, 0, 267.359, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-08-10 12:20:25', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(610, 1478.32, 1757.35, 14.7609, 0, -1, 1, 5000, 'DzÄ«voklis #5', 46, 1471.89, 1752.92, 14.7609, 605, 46, 0, 273.627, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-08-10 12:21:35', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(611, 1478.32, 1754.64, 14.7609, 0, -1, 1, 5000, 'DzÄ«voklis #6', 46, 1471.89, 1752.92, 14.7609, 605, 46, 0, 272.369, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-08-10 12:21:50', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(612, -50.5869, -233.362, 6.76462, 1, -1, 1, 40000, 'Blueberry PÄrstÄdes RÅ«pnica', 1, 948.544, 2177.95, 1011.02, 0, 0, 359.294, 181.39, 100, NULL, NULL, NULL, NULL, 0, '2018-08-17 15:01:34', '0', '2018-08-11 02:14:17', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(613, 1833.69, -1842.74, 13.5781, 1, -1, 1, 15000, '24/7 Veikals', 4, -27.3, -31.41, 1003.55, 0, 0, 0, 165.514, 3287, NULL, NULL, NULL, NULL, 0, '2018-08-24 07:39:21', '0', '2018-06-28 22:55:01', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(614, 303.393, -242.57, 1.57812, 1, -1, 1, 60000, 'AngÄrs', 18, 1306.86, 6.83, 1001.02, 0, 0, 90, 90.9435, 100, NULL, NULL, NULL, NULL, 0, '2018-08-20 12:19:36', '0', '2018-08-11 13:14:57', 'Octavianus', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(615, 1513.75, 1365.69, 10.9611, 1, -1, 1, 1, 'Studija', 5, 1262.84, -813.929, 1084.01, 136, 11, 177.687, 356.218, 100, NULL, NULL, NULL, NULL, 0, '2018-08-14 21:49:21', '0', '2018-06-30 16:39:50', 'Andersons', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(616, 1845.52, -1897.59, 15.0283, 0, -1, 1, 8000, 'Garage', 21, -2031.88, -118.21, 1039.3, 0, 0, 0, 358.47, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-30 23:32:44', 'linceens', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(617, 1867.12, -1897.81, 15.0303, 0, -1, 1, 8000, 'Garage', 21, -2031.88, -118.21, 1039.3, 0, 0, 0, 357.553, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-30 23:33:26', 'linceens', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(618, 1896.46, -1897.82, 15.0326, 0, -1, 1, 8000, 'Garage', 21, -2031.88, -118.21, 1039.3, 0, 0, 0, 0.0576782, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-30 23:33:32', 'linceens', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(619, 1909.57, -1897.47, 15.032, 0, -1, 1, 8000, 'Garage', 21, -2031.88, -118.21, 1039.3, 0, 0, 0, 357.24, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-30 23:33:39', 'linceens', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(620, 1934.31, -1896.38, 15.0349, 0, -1, 1, 8000, 'Garage', 21, -2031.88, -118.21, 1039.3, 0, 0, 0, 0.0576782, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-06-30 23:33:46', 'linceens', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(621, 1419.03, 1359.02, 10.8305, 1, -1, 1, 15000, 'Office', 42, -2145.62, 646.929, 1206.49, 481, 22, 270, 84.4669, 100, NULL, NULL, NULL, NULL, 0, '2018-08-16 23:24:03', '0', '2018-08-11 19:13:31', 'ViensDivi3', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(622, 725.643, -1440.45, 13.5318, 0, -1, 1, 50000, 'Marina mÄja #1', 9, 2317.81, -1026.55, 1050.21, 0, 0, 0, 174.721, 100, NULL, NULL, NULL, NULL, 0, '2018-08-20 01:13:59', '0', '2018-08-11 20:06:42', '9Boz', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(623, 1418.11, 222.28, 19.5547, 0, -1, 1, 16000, 'Montgomery House #23', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 65.0593, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-08-12 15:34:05', 'Deffender', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(624, 1423.09, 234.06, 19.5547, 0, -1, 1, 9000, 'Montgomery GarÄÅ¾a #23', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 65.8668, 100, NULL, NULL, NULL, NULL, 0, '2018-08-23 14:59:16', '0', '2018-08-12 15:35:43', 'Deffender', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(625, 753.575, -1429.54, 13.5234, 0, -1, 1, 5045, 'GarÄÅ¾a', 38, 1422.08, -2451.74, 13.5547, 0, 0, 0.085144, 198.369, 100, NULL, NULL, NULL, NULL, 0, '2018-08-21 22:40:17', '0', '2018-08-13 15:59:02', 'adn384', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(626, 1579.02, -1838.11, 13.442, 1, -1, 1, 15000, 'Lombards #32 .', 6, -2240.69, 128.43, 1035.41, 0, 0, 270, 266.013, 100, NULL, NULL, NULL, NULL, 0, '2018-08-14 15:30:20', '0', '2018-08-14 14:52:09', 'Deffender', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(627, 1891.06, -1784.59, 13.5471, 2, 0, 0, 1, 'Los Santos boulinga centrs', 3, 221.186, 137.159, 1022.61, 0, 0, 183.049, 290.607, 77, NULL, NULL, NULL, NULL, 0, '2019-01-30 23:07:39', '0', '2018-08-14 23:02:16', 'Deffender', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(628, 1894.28, -1787.1, 13.5471, 1, -1, 1, 30000, 'IGS BÄrs .', 11, 501.84, -67.84, 998.75, 0, 0, 92.4706, 133.016, 723, NULL, NULL, NULL, NULL, 0, '2018-08-20 12:07:40', '0', '2018-08-15 09:17:37', 'Deffender', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(630, 1126.47, -1668.32, 13.5738, 0, -1, 1, 15000, 'Verona Beatch GarÄÅ¾a #01', 3, 226.76, 201.327, 1013.83, 0, 0, 2.66696, 21.4814, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2018-08-15 10:47:46', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(631, 2363.99, 166.062, 28.4416, 0, -1, 1, 25000, 'Palomino Creek MÄja #01', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 266.524, 100, NULL, NULL, NULL, NULL, 0, '2018-08-15 20:38:07', '0', '2018-08-15 12:37:39', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(632, 2361.92, 168.59, 27.7691, 0, -1, 1, 14000, 'Palomino Creek GarÄÅ¾a #01', 2, 620.18, -70.89, 997.99, 0, 0, 0, 270.869, 100, NULL, NULL, NULL, NULL, 0, '2018-08-16 13:08:23', '0', '2018-08-15 12:41:47', 'GoblinX', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(633, 502.16, -78.3008, 998.758, 1, -1, 1, 10000, 'Noliktava', 21, -2031.88, -118.21, 1039.3, 628, 11, 0, 268.359, 100, NULL, NULL, NULL, NULL, 0, '2018-08-16 14:45:31', '0', '2018-08-15 15:19:16', 'Deffender', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(634, 1305.99, -876.612, 39.5781, 1, -1, 1, 15000, 'Garaza WineWood/', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 181.923, 100, NULL, NULL, NULL, NULL, 0, '2018-08-24 14:35:52', '0', '2018-08-15 22:29:15', 'Deffender', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(635, 1875.71, -1785.86, 13.3631, 1, -1, 1, 15000, 'Lombards', 27, 1877.89, -2466.96, 13.58, 0, 0, 0, 270.792, 95, NULL, NULL, NULL, NULL, 0, '2018-08-24 15:55:51', '0', '2018-08-16 14:43:04', 'adn384', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(657, 2264.95, -1671.32, 15.3594, 2, 0, 0, 0, 'Auto detaÄ¼u & AksesuÄru veikals', 27, 1877.89, -2466.96, 13.58, 0, 0, 0, 181.978, -6680, NULL, NULL, NULL, NULL, 0, '2019-02-18 18:26:29', '0', '2018-07-01 14:54:44', 'Danex', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(667, 1770.18, -1705.08, 13.5127, 0, -1, 1, 20000, 'Freckleton\'s garÄÅ¾Ä', 1, 2494.61, -1725.57, 935.799, 0, 0, 175.743, 181.802, 4366, NULL, NULL, NULL, NULL, 0, '2018-08-24 15:32:35', '0', '2018-07-02 17:10:39', 'linceens', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(670, 2098.9, -1575.77, 13.3797, 0, -1, 1, 500, 'Treileris', 2, 1.9, -3.2, 999.4, 0, 0, 359.717, 258.773, 100, NULL, NULL, NULL, NULL, 0, '2018-08-10 20:07:21', '0', '2018-07-04 19:50:56', 'linceens', 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(671, 1727.1, -1637.04, 20.2174, 0, -1, 1, 60000, 'Naktsklubs', 3, 1212.18, -25.93, 1000.95, 0, 0, 180, 232.461, 100, NULL, NULL, NULL, NULL, 0, '2018-07-14 21:02:55', '0', '2018-07-04 21:42:48', 'linceens', 0, NULL, NULL, NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `interior_business`
--

CREATE TABLE `interior_business` (
  `intID` int(11) NOT NULL,
  `businessNote` varchar(101) NOT NULL DEFAULT 'Welcome to our business!'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves info about businesses - Maxime';

--
-- Gegevens worden geëxporteerd voor tabel `interior_business`
--

INSERT INTO `interior_business` (`intID`, `businessNote`) VALUES
(127, 'Welcome to our business!'),
(144, 'Welcome to our business!'),
(156, 'Welcome to our business!'),
(163, 'Welcome to our business!'),
(164, 'Welcome to our business!'),
(165, 'Welcome to our business!'),
(166, 'Welcome to our business!'),
(169, 'Welcome to our business!'),
(172, 'Welcome to our business!'),
(191, 'Welcome to our business!'),
(192, 'Welcome to our business!'),
(247, 'Welcome to our business!'),
(255, 'Welcome to our business!'),
(336, 'Welcome to our business!'),
(508, 'Welcome to our business!'),
(550, 'Welcome to our business!');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `interior_logs`
--

CREATE TABLE `interior_logs` (
  `log_id` int(11) NOT NULL,
  `date` text,
  `intID` int(11) DEFAULT NULL,
  `action` text,
  `actor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all admin actions on interiors - Monitored by Interio';

--
-- Gegevens worden geëxporteerd voor tabel `interior_logs`
--

INSERT INTO `interior_logs` (`log_id`, `date`, `intID`, `action`, `actor`) VALUES
(0, NULL, 657, 'Entered', 657),
(0, NULL, 657, 'Exited', 657),
(0, NULL, 426, 'setintentrance', 657),
(0, NULL, 242, 'fsell', 657),
(0, NULL, 276, 'fsell', 657),
(0, NULL, 374, 'Entered', 657),
(0, NULL, 589, 'fsell', 657),
(0, NULL, 635, 'fsell', 1),
(0, NULL, 634, 'fsell', 1),
(0, NULL, 633, 'fsell', 1),
(0, NULL, 632, 'fsell', 1),
(0, NULL, 164, 'Bought/rented, $18,000, Aaron_Miller', 1),
(0, NULL, 164, 'Entered', 1),
(0, NULL, 164, 'sellproperty', 1),
(0, NULL, 165, 'Bought/rented, $18,000, Aaron_Miller', 1),
(0, NULL, 165, 'Entered', 1),
(0, NULL, 165, 'Entered', 1),
(0, NULL, 165, 'sellproperty', 1),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 374, 'Entered', 1),
(0, NULL, 374, 'Exited', 1),
(0, NULL, 2, 'Entered', 1),
(0, NULL, 1, 'Entered', 661),
(0, NULL, 1, 'gotoint', 661),
(0, NULL, 2, 'gotoint', 661),
(0, NULL, 2, 'Entered', 661),
(0, NULL, 2, 'gotoint', 661),
(0, NULL, 3, 'gotoint', 661),
(0, NULL, 3, 'Entered', 661),
(0, NULL, 3, 'gotoint', 661),
(0, NULL, 627, 'Entered', 1),
(0, NULL, 627, 'Exited', 1),
(0, NULL, 614, 'fsell', 1),
(0, NULL, 613, 'fsell', 1),
(0, NULL, 434, 'fsell', 1),
(0, NULL, 433, 'fsell', 1),
(0, NULL, 432, 'fsell', 1),
(0, NULL, 393, 'fsell', 1),
(0, NULL, 203, 'fsell', 1),
(0, NULL, 131, 'fsell', 1),
(0, NULL, 111, 'fsell', 1),
(0, NULL, 148, 'forcesell', 1),
(0, NULL, 553, 'fsell', 662),
(0, NULL, 425, 'forcesell', 1),
(0, NULL, 631, 'fsell', 1),
(0, NULL, 628, 'fsell', 1),
(0, NULL, 625, 'fsell', 1),
(0, NULL, 624, 'fsell', 1),
(0, NULL, 622, 'fsell', 1),
(0, NULL, 621, 'fsell', 1),
(0, NULL, 612, 'fsell', 1),
(0, NULL, 602, 'fsell', 1),
(0, NULL, 599, 'fsell', 1),
(0, NULL, 597, 'fsell', 1),
(0, NULL, 596, 'fsell', 1),
(0, NULL, 594, 'fsell', 1),
(0, NULL, 593, 'fsell', 662),
(0, NULL, 591, 'fsell', 662),
(0, NULL, 588, 'fsell', 662),
(0, NULL, 587, 'fsell', 662),
(0, NULL, 586, 'fsell', 662),
(0, NULL, 582, 'fsell', 662),
(0, NULL, 581, 'fsell', 662),
(0, NULL, 577, 'fsell', 662),
(0, NULL, 565, 'fsell', 662),
(0, NULL, 544, 'fsell', 662),
(0, NULL, 543, 'fsell', 662),
(0, NULL, 534, 'fsell', 662),
(0, NULL, 533, 'fsell', 662),
(0, NULL, 531, 'fsell', 662),
(0, NULL, 526, 'fsell', 662),
(0, NULL, 522, 'fsell', 662),
(0, NULL, 521, 'fsell', 662),
(0, NULL, 520, 'fsell', 662),
(0, NULL, 518, 'fsell', 662),
(0, NULL, 515, 'fsell', 662),
(0, NULL, 514, 'fsell', 662),
(0, NULL, 513, 'fsell', 662),
(0, NULL, 512, 'fsell', 662),
(0, NULL, 511, 'fsell', 662),
(0, NULL, 510, 'fsell', 662),
(0, NULL, 506, 'fsell', 662),
(0, NULL, 416, 'fsell', 662),
(0, NULL, 414, 'fsell', 662),
(0, NULL, 412, 'fsell', 662),
(0, NULL, 409, 'fsell', 662),
(0, NULL, 402, 'fsell', 662),
(0, NULL, 399, 'fsell', 662),
(0, NULL, 398, 'fsell', 662),
(0, NULL, 181, 'fsell', 662),
(0, NULL, 670, 'fsell', 662),
(0, NULL, 667, 'fsell', 662),
(0, NULL, 615, 'fsell', 662),
(0, NULL, 503, 'fsell', 662),
(0, NULL, 501, 'fsell', 662),
(0, NULL, 353, 'fsell', 662),
(0, NULL, 352, 'fsell', 662),
(0, NULL, 337, 'fsell', 662),
(0, NULL, 335, 'fsell', 662),
(0, NULL, 331, 'fsell', 662),
(0, NULL, 298, 'fsell', 662),
(0, NULL, 157, 'fsell', 662),
(0, NULL, 481, 'fsell', 662),
(0, NULL, 461, 'fsell', 662),
(0, NULL, 448, 'fsell', 662),
(0, NULL, 442, 'fsell', 662),
(0, NULL, 440, 'fsell', 662),
(0, NULL, 438, 'fsell', 662),
(0, NULL, 435, 'fsell', 662),
(0, NULL, 428, 'fsell', 662),
(0, NULL, 426, 'fsell', 662),
(0, NULL, 424, 'fsell', 662),
(0, NULL, 421, 'fsell', 662),
(0, NULL, 407, 'fsell', 662),
(0, NULL, 404, 'fsell', 662),
(0, NULL, 394, 'fsell', 662),
(0, NULL, 314, 'fsell', 662),
(0, NULL, 313, 'fsell', 662),
(0, NULL, 310, 'fsell', 662),
(0, NULL, 307, 'fsell', 662),
(0, NULL, 300, 'fsell', 662),
(0, NULL, 297, 'fsell', 662),
(0, NULL, 243, 'fsell', 662),
(0, NULL, 125, 'fsell', 662),
(0, NULL, 123, 'fsell', 662),
(0, NULL, 100, 'fsell', 662),
(0, NULL, 29, 'fsell', 662),
(0, NULL, 10, 'fsell', 662),
(0, NULL, 8, 'fsell', 662),
(0, NULL, 199, 'fsell', 662),
(0, NULL, 198, 'fsell', 662),
(0, NULL, 197, 'fsell', 662),
(0, NULL, 193, 'fsell', 662),
(0, NULL, 173, 'fsell', 662),
(0, NULL, 146, 'fsell', 662),
(0, NULL, 118, 'fsell', 662),
(0, NULL, 391, 'fsell', 662),
(0, NULL, 387, 'fsell', 662),
(0, NULL, 367, 'fsell', 662),
(0, NULL, 360, 'fsell', 662),
(0, NULL, 356, 'fsell', 662),
(0, NULL, 332, 'fsell', 662),
(0, NULL, 234, 'fsell', 662),
(0, NULL, 321, 'fsell', 662),
(0, NULL, 303, 'fsell', 662),
(0, NULL, 238, 'fsell', 662),
(0, NULL, 236, 'fsell', 662),
(0, NULL, 235, 'fsell', 662),
(0, NULL, 233, 'fsell', 662),
(0, NULL, 230, 'fsell', 662),
(0, NULL, 229, 'fsell', 662),
(0, NULL, 192, 'fsell', 662),
(0, NULL, 191, 'fsell', 662),
(0, NULL, 187, 'fsell', 662),
(0, NULL, 186, 'fsell', 662),
(0, NULL, 185, 'fsell', 662),
(0, NULL, 176, 'fsell', 662),
(0, NULL, 170, 'fsell', 662),
(0, NULL, 160, 'fsell', 662),
(0, NULL, 138, 'fsell', 662),
(0, NULL, 137, 'fsell', 662),
(0, NULL, 134, 'fsell', 662),
(0, NULL, 132, 'fsell', 662),
(0, NULL, 106, 'fsell', 662),
(0, NULL, 90, 'fsell', 662),
(0, NULL, 86, 'fsell', 662),
(0, NULL, 85, 'fsell', 662),
(0, NULL, 84, 'fsell', 662),
(0, NULL, 71, 'fsell', 662),
(0, NULL, 50, 'fsell', 662),
(0, NULL, 43, 'fsell', 662),
(0, NULL, 41, 'fsell', 662),
(0, NULL, 30, 'fsell', 662),
(0, NULL, 20, 'fsell', 662),
(0, NULL, 16, 'fsell', 662),
(0, NULL, 135, 'Entered', 1),
(0, NULL, 9, 'Entered', 1),
(0, NULL, 9, 'Exited', 1),
(0, NULL, 135, 'Exited', 1),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'Entered', 1),
(0, NULL, 287, 'ENTERED/EXITED', 1),
(0, NULL, 287, 'ENTERED/EXITED', 1),
(0, NULL, 1, 'Entered', 1),
(0, NULL, 1, 'Exited', 1),
(0, NULL, 1, 'Entered', 1),
(0, NULL, 1, 'Exited', 1),
(0, NULL, 5, 'Entered', 1),
(0, NULL, 5, 'Exited', 1),
(0, NULL, 5, 'Entered', 1),
(0, NULL, 5, 'Exited', 1),
(0, NULL, 5, 'Entered', 1),
(0, NULL, 5, 'Exited', 1),
(0, NULL, 135, 'Entered', 1),
(0, NULL, 9, 'Entered', 1),
(0, NULL, 288, 'Entered', 1),
(0, NULL, 288, 'setintname Los Santos banka', 1),
(0, NULL, 287, 'Entered', 1),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'Entered', 662),
(0, NULL, 287, 'Exited', 662),
(0, NULL, 1, 'Entered', 662),
(0, NULL, 1, 'Entered', 662),
(0, NULL, 1, 'Entered', 662),
(0, NULL, 2, 'Entered', 1),
(0, NULL, 2, 'Exited', 1),
(0, NULL, 287, 'Entered', 662),
(0, NULL, 287, 'lock without key', 662),
(0, NULL, 2, 'Entered', 662),
(0, NULL, 2, 'Exited', 662),
(0, NULL, 2, 'Entered', 662),
(0, NULL, 363, 'lock without key', 662),
(0, NULL, 281, 'lock without key', 662),
(0, NULL, 2, 'Exited', 662),
(0, NULL, 3, 'Entered', 662),
(0, NULL, 3, 'Entered', 662),
(0, NULL, 3, 'Entered', 662),
(0, NULL, 3, 'Entered', 662),
(0, NULL, 136, 'Entered', 662),
(0, NULL, 2, 'Entered', 1),
(0, NULL, 2, 'Exited', 1),
(0, NULL, 2, 'Entered', 1),
(0, NULL, 2, 'Exited', 1),
(0, NULL, 2, 'Entered', 1),
(0, NULL, 2, 'Entered', 662),
(0, NULL, 2, 'Entered', 1),
(0, NULL, 2, 'Exited', 1),
(0, NULL, 2, 'Entered', 1),
(0, NULL, 2, 'Exited', 662),
(0, NULL, 288, 'Entered', 662),
(0, NULL, 2, 'Exited', 1),
(0, NULL, 2, 'Entered', 657),
(0, NULL, 2, 'Exited', 657),
(0, NULL, 148, 'Bought/rented, $18,000, Rakheem_Amir', 1),
(0, NULL, 148, 'Entered', 1),
(0, NULL, 148, 'Exited', 1),
(0, NULL, 148, 'Entered', 1),
(0, NULL, 148, 'sellproperty', 1),
(0, NULL, 128, 'Entered', 1),
(0, NULL, 128, 'Exited', 1),
(0, NULL, 128, 'Entered', 1),
(0, NULL, 128, 'setintname Idlewood dzÄ«vokÄ¼i', 1),
(0, NULL, 1, 'Entered', 662),
(0, NULL, 3, 'Entered', 662),
(0, NULL, 3, 'Exited', 662),
(0, NULL, 2, 'Entered', 662),
(0, NULL, 281, 'unlock without key', 662),
(0, NULL, 281, 'Entered', 662),
(0, NULL, 281, 'Exited', 662),
(0, NULL, 281, 'lock without key', 662),
(0, NULL, 7, 'Entered', 662),
(0, NULL, 99, 'Entered', 662),
(0, NULL, 136, 'Entered', 662),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 288, 'Entered', 662),
(0, NULL, 288, 'Exited', 662),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 288, 'setintentrance', 1),
(0, NULL, 288, 'Entered', 1),
(0, NULL, 288, 'setintexit', 1),
(0, NULL, 288, 'Exited', 1),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 288, 'Entered', 1),
(0, NULL, 288, 'Exited', 1),
(0, NULL, 670, 'setintentrance', 657),
(0, NULL, 671, 'setintname Naktsklubs', 657),
(0, NULL, 168, 'setintentrance', 657),
(0, NULL, 168, 'setintprice 85000', 662),
(0, NULL, 5, 'Entered', 657),
(0, NULL, 5, 'Exited', 657),
(0, NULL, 135, 'Entered', 1),
(0, NULL, 9, 'Entered', 1),
(0, NULL, 657, 'Entered', 657),
(0, NULL, 657, 'Exited', 657),
(0, NULL, 135, 'Entered', 657),
(0, NULL, 135, 'Entered', 664),
(0, NULL, 9, 'Entered', 657),
(0, NULL, 135, 'Exited', 664),
(0, NULL, 249, 'Entered', 664),
(0, NULL, 9, 'Exited', 664),
(0, NULL, 135, 'Exited', 664),
(0, NULL, 9, 'Exited', 657),
(0, NULL, 135, 'Exited', 657),
(0, NULL, 135, 'Exited', 664),
(0, NULL, 288, 'Entered', 657),
(0, NULL, 288, 'Entered', 665),
(0, NULL, 288, 'Exited', 665),
(0, NULL, 288, 'Exited', 657),
(0, NULL, 2, 'Entered', 661),
(0, NULL, 2, 'Exited', 661),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 662),
(0, NULL, 287, 'ENTERED/EXITED', 662),
(0, NULL, 287, 'ENTERED/EXITED', 662),
(0, NULL, 287, 'ENTERED/EXITED', 662),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 664),
(0, NULL, 287, 'ENTERED/EXITED', 664),
(0, NULL, 135, 'Entered', 1),
(0, NULL, 9, 'Entered', 1),
(0, NULL, 19, 'addint - id 1 - price $0 - name test', 1),
(0, NULL, 19, 'Bought/rented, $0, Rakheem_Amir', 1),
(0, NULL, 19, 'Entered', 1),
(0, NULL, 19, 'setintexit', 1),
(0, NULL, 19, 'setintprice 65000', 1),
(0, NULL, 19, 'setintname Danex GarÄÅ¾a', 1),
(0, NULL, 19, 'Exited', 1),
(0, NULL, 19, 'Entered', 1),
(0, NULL, 426, 'setinttype 3', 661),
(0, NULL, 426, 'setinttype 2', 661),
(0, NULL, 426, 'setinttype 1', 661),
(0, NULL, 1, 'Entered', 1),
(0, NULL, 1, 'Exited', 1),
(0, NULL, 1, 'Entered', 661),
(0, NULL, 1, 'Exited', 661),
(0, NULL, 1, 'Entered', 661),
(0, NULL, 19, 'Entered', 1),
(0, NULL, 1, 'Entered', 1),
(0, NULL, 1, 'Exited', 1),
(0, NULL, 288, 'Entered', 1),
(0, NULL, 288, 'Exited', 1),
(0, NULL, 19, 'setintentrance', 1),
(0, NULL, 19, 'Entered', 1),
(0, NULL, 19, 'Exited', 1),
(0, NULL, 19, 'ENTERED/EXITED', 1),
(0, NULL, 19, 'ENTERED/EXITED', 1),
(0, NULL, 19, 'Exited', 1),
(0, NULL, 19, 'Entered', 1),
(0, NULL, 19, 'gotoint', 1),
(0, NULL, 19, 'Entered', 1),
(0, NULL, 19, 'gotoint', 1),
(0, NULL, 19, 'ENTERED/EXITED', 1),
(0, NULL, 19, 'ENTERED/EXITED', 1),
(0, NULL, 1, 'Exited', 1),
(0, NULL, 1, 'Entered', 1),
(0, NULL, 1, 'Exited', 661),
(0, NULL, 288, 'Entered', 1),
(0, NULL, 288, 'Exited', 1),
(0, NULL, 19, 'Entered', 1),
(0, NULL, 19, 'Exited', 1),
(0, NULL, 288, 'Entered', 1),
(0, NULL, 288, 'Exited', 1),
(0, NULL, 2, 'Entered', 661),
(0, NULL, 5, 'Entered', 657),
(0, NULL, 657, 'Entered', 657),
(0, NULL, 657, 'Exited', 657),
(0, NULL, 603, 'Entered', 657),
(0, NULL, 603, 'Entered', 662),
(0, NULL, 603, 'setinttype 1', 657),
(0, NULL, 603, 'setinttype 2', 657),
(0, NULL, 603, 'Exited', 662),
(0, NULL, 603, 'setinttype 3', 657),
(0, NULL, 603, 'setintprice 80', 657),
(0, NULL, 603, 'Exited', 657),
(0, NULL, 249, 'Entered', 662),
(0, NULL, 249, 'Exited', 662),
(0, NULL, 135, 'Entered', 662),
(0, NULL, 135, 'Exited', 662),
(0, NULL, 627, 'Entered', 662),
(0, NULL, 627, 'Exited', 662),
(0, NULL, 2, 'Entered', 661),
(0, NULL, 627, 'Entered', 662),
(0, NULL, 627, 'Exited', 662),
(0, NULL, 628, 'setintprice 40000', 662),
(0, NULL, 628, 'setintprice 30000', 662),
(0, NULL, 439, 'Entered', 662),
(0, NULL, 439, 'Exited', 662),
(0, NULL, 128, 'Entered', 662),
(0, NULL, 128, 'lock without key', 662),
(0, NULL, 2, 'Entered', 662),
(0, NULL, 363, 'unlock without key', 662),
(0, NULL, 363, 'lock without key', 662),
(0, NULL, 2, 'Exited', 662),
(0, NULL, 519, 'Entered', 662),
(0, NULL, 519, 'Exited', 662),
(0, NULL, 2, 'Exited', 661),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 7, 'Entered', 657),
(0, NULL, 7, 'Exited', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 1, 'Entered', 661),
(0, NULL, 1, 'gotoint', 661),
(0, NULL, 288, 'Entered', 657),
(0, NULL, 288, 'Exited', 657),
(0, NULL, 99, 'ENTERED/EXITED', 657),
(0, NULL, 99, 'ENTERED/EXITED', 657),
(0, NULL, 99, 'ENTERED/EXITED', 657),
(0, NULL, 99, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 2, 'Entered', 657),
(0, NULL, 2, 'Entered', 657),
(0, NULL, 553, 'Bought/rented, $12,000, Matthew_Hudson', 661),
(0, NULL, 553, 'Entered', 661),
(0, NULL, 553, 'setintid 13', 661),
(0, NULL, 553, 'setintid 15', 661),
(0, NULL, 553, 'setintid 17', 661),
(0, NULL, 553, 'setintid 97', 661),
(0, NULL, 553, 'setintid 95', 661),
(0, NULL, 553, 'setintid 94', 661),
(0, NULL, 553, 'setintid 93', 661),
(0, NULL, 553, 'setintid 121', 661),
(0, NULL, 553, 'setintid 122', 661),
(0, NULL, 553, 'setintid 123', 661),
(0, NULL, 553, 'Exited', 661),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'Exited', 664),
(0, NULL, 553, 'ENTERED/EXITED', 664),
(0, NULL, 553, 'ENTERED/EXITED', 664),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 288, 'Entered', 661),
(0, NULL, 288, 'Entered', 657),
(0, NULL, 288, 'Exited', 661),
(0, NULL, 288, 'Exited', 657),
(0, NULL, 130, 'Entered', 657),
(0, NULL, 130, 'setintname Unity Stacijas BÄrs', 657),
(0, NULL, 130, 'setinttype 2', 657),
(0, NULL, 130, 'setinttype 0', 657),
(0, NULL, 130, 'setintprice 15000', 657),
(0, NULL, 130, 'Exited', 657),
(0, NULL, 439, 'Entered', 657),
(0, NULL, 439, 'Exited', 657),
(0, NULL, 128, 'Entered', 657),
(0, NULL, 398, 'delint', 657),
(0, NULL, 398, 'restoreint', 657),
(0, NULL, 398, 'setintentrance', 657),
(0, NULL, 128, 'Exited', 657),
(0, NULL, 249, 'Entered', 657),
(0, NULL, 249, 'Exited', 657),
(0, NULL, 135, 'Entered', 657),
(0, NULL, 9, 'Entered', 657),
(0, NULL, 9, 'Exited', 657),
(0, NULL, 135, 'Exited', 657),
(0, NULL, 657, 'Entered', 657),
(0, NULL, 657, 'Exited', 657),
(0, NULL, 373, 'Entered', 657),
(0, NULL, 1, 'Entered', 662),
(0, NULL, 373, 'Exited', 657),
(0, NULL, 3, 'Entered', 662),
(0, NULL, 136, 'Entered', 662),
(0, NULL, 7, 'Entered', 662),
(0, NULL, 99, 'Entered', 662),
(0, NULL, 288, 'Entered', 661),
(0, NULL, 287, 'Entered', 666),
(0, NULL, 1, 'Entered', 666),
(0, NULL, 287, 'Entered', 666),
(0, NULL, 1, 'Entered', 666),
(0, NULL, 1, 'Entered', 666),
(0, NULL, 1, 'Entered', 666),
(0, NULL, 287, 'Entered', 666),
(0, NULL, 287, 'ENTERED/EXITED', 666),
(0, NULL, 287, 'ENTERED/EXITED', 666),
(0, NULL, 287, 'ENTERED/EXITED', 666),
(0, NULL, 287, 'ENTERED/EXITED', 666),
(0, NULL, 287, 'ENTERED/EXITED', 666),
(0, NULL, 287, 'ENTERED/EXITED', 666),
(0, NULL, 288, 'Exited', 661),
(0, NULL, 1, 'Entered', 661),
(0, NULL, 101, 'addint - id 1 - price $0 - name Zivju BodÄ«te', 657),
(0, NULL, 101, 'Entered', 657),
(0, NULL, 5, 'Entered', 657),
(0, NULL, 287, 'ENTERED/EXITED', 661),
(0, NULL, 287, 'ENTERED/EXITED', 661),
(0, NULL, 135, 'Entered', 657),
(0, NULL, 2, 'Entered', 657),
(0, NULL, 2, 'Entered', 657),
(0, NULL, 5, 'Entered', 657),
(0, NULL, 5, 'Exited', 657),
(0, NULL, 101, 'Entered', 657),
(0, NULL, 101, 'Exited', 664),
(0, NULL, 101, 'Entered', 664),
(0, NULL, 101, 'Exited', 664),
(0, NULL, 101, 'setintid 82', 657),
(0, NULL, 101, 'setintid 168', 657),
(0, NULL, 101, 'Exited', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'Entered', 661),
(0, NULL, 553, 'Exited', 661),
(0, NULL, 2, 'Entered', 657),
(0, NULL, 2, 'Exited', 657),
(0, NULL, 284, 'Entered', 657),
(0, NULL, 284, 'Exited', 657),
(0, NULL, 627, 'setintentrance', 1),
(0, NULL, 628, 'setintentrance', 1),
(0, NULL, 402, 'setintentrance', 1),
(0, NULL, 627, 'Entered', 1),
(0, NULL, 627, 'Exited', 1),
(0, NULL, 5, 'Entered', 657),
(0, NULL, 5, 'Exited', 1),
(0, NULL, 5, 'Exited', 657),
(0, NULL, 5, 'Entered', 657),
(0, NULL, 5, 'Entered', 1),
(0, NULL, 5, 'Exited', 1),
(0, NULL, 5, 'Exited', 657),
(0, NULL, 5, 'Entered', 661),
(0, NULL, 288, 'Entered', 1),
(0, NULL, 288, 'Exited', 1),
(0, NULL, 2, 'Entered', 1),
(0, NULL, 2, 'Exited', 1),
(0, NULL, 5, 'Exited', 661),
(0, NULL, 5, 'Entered', 657),
(0, NULL, 5, 'Entered', 661),
(0, NULL, 5, 'Exited', 657),
(0, NULL, 5, 'Entered', 662),
(0, NULL, 5, 'Entered', 657),
(0, NULL, 5, 'Exited', 657),
(0, NULL, 5, 'Entered', 657),
(0, NULL, 5, 'Exited', 657),
(0, NULL, 5, 'Entered', 657),
(0, NULL, 5, 'Exited', 662),
(0, NULL, 5, 'Entered', 657),
(0, NULL, 5, 'Exited', 657),
(0, NULL, 288, 'Entered', 662),
(0, NULL, 5, 'Entered', 657),
(0, NULL, 5, 'Exited', 657),
(0, NULL, 5, 'Entered', 657),
(0, NULL, 5, 'Exited', 657),
(0, NULL, 5, 'Entered', 1),
(0, NULL, 5, 'Exited', 1),
(0, NULL, 5, 'Entered', 657),
(0, NULL, 5, 'Exited', 657),
(0, NULL, 5, 'Entered', 1),
(0, NULL, 5, 'Exited', 1),
(0, NULL, 288, 'Entered', 1),
(0, NULL, 288, 'Exited', 1),
(0, NULL, 288, 'Entered', 1),
(0, NULL, 288, 'Exited', 1),
(0, NULL, 19, 'Entered', 1),
(0, NULL, 19, 'gotoint', 1),
(0, NULL, 19, 'Entered', 1),
(0, NULL, 19, 'Exited', 1),
(0, NULL, 19, 'Entered', 1),
(0, NULL, 19, 'gotoint', 1),
(0, NULL, 2, 'Entered', 1),
(0, NULL, 2, 'Exited', 1),
(0, NULL, 1, 'Entered', 1),
(0, NULL, 5, 'Entered', 1),
(0, NULL, 5, 'Exited', 1),
(0, NULL, 2, 'Entered', 1),
(0, NULL, 2, 'Exited', 1),
(0, NULL, 1, 'Entered', 1),
(0, NULL, 1, 'Exited', 1),
(0, NULL, 5, 'Entered', 1),
(0, NULL, 5, 'Exited', 1),
(0, NULL, 627, 'Entered', 1),
(0, NULL, 627, 'Exited', 1),
(0, NULL, 5, 'Entered', 661),
(0, NULL, 5, 'Exited', 661),
(0, NULL, 2, 'Entered', 661),
(0, NULL, 2, 'Exited', 661),
(0, NULL, 2, 'Entered', 1),
(0, NULL, 2, 'Exited', 1),
(0, NULL, 5, 'Entered', 1),
(0, NULL, 5, 'Exited', 1),
(0, NULL, 426, 'setintentrance', 657),
(0, NULL, 526, 'setintname Idlewood GarÄÅ¾a #10', 657),
(0, NULL, 526, 'setintprice 20000', 657),
(0, NULL, 589, 'delint', 657),
(0, NULL, 589, 'restoreint', 657),
(0, NULL, 409, 'setintentrance', 657),
(0, NULL, 2, 'Entered', 663),
(0, NULL, 2, 'Entered', 657),
(0, NULL, 2, 'Exited', 657),
(0, NULL, 2, 'Exited', 663),
(0, NULL, 657, 'Entered', 657),
(0, NULL, 657, 'Entered', 663),
(0, NULL, 657, 'Exited', 657),
(0, NULL, 657, 'Exited', 663),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 287, 'ENTERED/EXITED', 657),
(0, NULL, 288, 'Entered', 657),
(0, NULL, 288, 'Entered', 663),
(0, NULL, 288, 'Exited', 657),
(0, NULL, 288, 'Exited', 663),
(0, NULL, 243, 'delint', 657),
(0, NULL, 235, 'delint', 657),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'ENTERED/EXITED', 661),
(0, NULL, 553, 'Entered', 661),
(0, NULL, 657, 'Entered', 657),
(0, NULL, 553, 'Exited', 661),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 2, 'Entered', 657),
(0, NULL, 2, 'Exited', 657),
(0, NULL, 2, 'Entered', 657),
(0, NULL, 2, 'Entered', 663),
(0, NULL, 2, 'Exited', 663),
(0, NULL, 2, 'Exited', 657),
(0, NULL, 2, 'Entered', 663),
(0, NULL, 2, 'Entered', 657),
(0, NULL, 2, 'Exited', 663),
(0, NULL, 2, 'Exited', 657),
(0, NULL, 657, 'Entered', 657),
(0, NULL, 657, 'Exited', 657),
(0, NULL, 553, 'ENTERED/EXITED', 663),
(0, NULL, 553, 'ENTERED/EXITED', 663),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 577, 'delint', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 657),
(0, NULL, 553, 'ENTERED/EXITED', 663),
(0, NULL, 553, 'ENTERED/EXITED', 663),
(0, NULL, 553, 'ENTERED/EXITED', 663),
(0, NULL, 553, 'ENTERED/EXITED', 663);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `interior_notes`
--

CREATE TABLE `interior_notes` (
  `id` int(11) NOT NULL,
  `intid` int(11) NOT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `date` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `interior_textures`
--

CREATE TABLE `interior_textures` (
  `id` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `texture` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `interior_textures`
--

INSERT INTO `interior_textures` (`id`, `interior`, `texture`, `url`) VALUES
(8, 7, 'ahoodfence2', 'https://cz.kronospan-express.com/public/thumbs/300x300/decors/kronodesign/9/9763_300x300_crop_478b24840a.jpg'),
(9, 7, 'ws_rollerdoor_silver', 'https://cz.kronospan-express.com/public/thumbs/300x300/decors/kronodesign/9/9763_300x300_crop_478b24840a.jpg'),
(10, 7, 'roughmotwall1', 'https://cz.kronospan-express.com/public/thumbs/300x300/decors/kronodesign/9/9763_300x300_crop_478b24840a.jpg'),
(11, 7, 'badhousewall07_128', 'https://cz.kronospan-express.com/public/thumbs/300x300/decors/kronodesign/9/9763_300x300_crop_478b24840a.jpg'),
(13, 7, 'greyground256', 'https://4.bp.blogspot.com/-Ha6N0VJEH-Q/UkmS-Fvqt5I/AAAAAAAAFUw/w-0FgSQKvZ0/s800/dark-stone-wall-background-tile.jpg'),
(15, 7, 'cj_airp_s_1', 'https://cz.kronospan-express.com/public/thumbs/300x300/decors/kronodesign/9/9763_300x300_crop_478b24840a.jpg'),
(18, 200, 'badhousewallc02_128', 'https://res.cloudinary.com/mmlafleur/image/upload/ar_1:1,c_scale,dpr_1.0,f_auto,fl_lossy,q_auto,w_600/v1/d20sb1n2rcfp9j.cloudfront.net/shop/media/catalog/product/c/h/charcoal_1.jpg'),
(19, 200, 'ws_garagedoor3_white', 'http://bildites.lv/images/ppc3sw35/125418/original.jpg'),
(20, 200, 'loadingdoorclean', 'http://bildites.lv/images/dq2herm4/125419/original.jpg'),
(21, 200, 'greyground256128', 'http://bildites.lv/images/s78gmt5e/125614/original.png'),
(22, 200, 'mp_gun_stairs', 'http://bildites.lv/images/dq6t5b2f/125617/original.png'),
(24, 99, 'garage_docks', 'https://www.krauerkuster.ch/wp-content/uploads/2013/06/1.jpg'),
(25, 99, 'concretebigb256128', 'https://www.porcelanosa-usa.com/products/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/0/100152893.jpg'),
(26, 99, 'steel256128', 'http://www.porcelanosa.com/finder/resources/img/high/100145125.jpg'),
(29, 99, 'lasdockbar', 'https://i.imgur.com/zdAx16x.jpg'),
(30, 99, 'vgnlowbuild3_256', 'https://shop.jilishta.com/360-home_default/highland-blend-earth-dekorativen-oblicovchen-kamk.jpg'),
(31, 99, 'des_ghotwood1', 'http://gridasstils.lv/wp-content/uploads/Lamin%C4%81ts-Classen-Impression-4v-Ozols-Santana-37424-500x650.jpg'),
(32, 99, 'sam_camo', 'http://gridasstils.lv/wp-content/uploads/Lamin%C4%81ts-Classen-Impression-4v-Ozols-Santana-37424-500x650.jpg'),
(33, 99, 'kb_sofa5_256', 'http://vilori.lv/image/cache/data/CLAIREFONTAINE/93507C_1-500x500.jpg'),
(34, 136, 'cj_black_metal', 'http://www.designyourfloors.com/cdn/data/attractive-fake-wood-flooring-types-the-different-options-on-fake-wood-flooring-wood-floors-plus.jpg'),
(36, 136, 'plywood_gym', 'http://workfuly.co/wp-content/uploads/2018/06/red-wall-paints-colors-seamless-wallpapers-and-textures-interior-paint.jpg'),
(37, 136, 'cj_back_board', 'http://workfuly.co/wp-content/uploads/2018/06/red-wall-paints-colors-seamless-wallpapers-and-textures-interior-paint.jpg'),
(41, 136, 'concretenewb256', 'https://images.homedepot-static.com/productImages/5dc477db-df0f-4fc9-9c59-d67715820817/svn/home-decorators-collection-bamboo-flooring-hl615s-64_1000.jpg'),
(42, 136, 'ab_rollmat02', 'https://www.colourbox.com/preview/5428563-hand-drawn-seamless-floral-pattern-vector-illustration-eps8.jpg'),
(47, 615, 'cd_tex1', 'https://www.youtube.com/yts/img/new_promo_page/dark_screenshot_r_600-vflA5l7O4.png'),
(52, 615, 'cj_painting15', 'https://i.imgur.com/9brGPgo.png'),
(54, 136, 'garage_docks', 'https://www.homewallmurals.co.uk/ekmps/shops/allwallpapers/images/large-stones-stone-wall-wall-mural-421-p.jpg'),
(55, 136, 'bonyrd_skin2', 'http://rroom.me/wp-content/uploads/2017/08/how-to-remove-texture-from-wall-paint-over-a-texture-coated-exterior-remove-texture-wall.jpg'),
(56, 136, 'sam_camo', 'https://i0.wp.com/www.wallpapersales.uk.com/wp-content/uploads/2017/11/709005-Kylie-Minogue-Diamond-Texture-Gold-Wallpaper.jpg?fit=1000%2C1000&ssl=1'),
(57, 136, 'banding9_64hv', 'https://orig00.deviantart.net/a440/f/2015/144/5/1/sci_fi_texture_15_by_llexandro-d8um2jw.png'),
(59, 615, 'concpanel_la', 'http://wdc3d.com/wp-content/uploads/2010/05/red-brick-seamless-1000-x-1000.jpg'),
(60, 615, 'mp_gs_border1', 'http://wdc3d.com/wp-content/uploads/2010/05/red-brick-seamless-1000-x-1000.jpg'),
(61, 615, 'ws_stationfloor', 'https://ftextures.com/textures/Light-brown-flooring-parquet.jpg'),
(62, 615, 'ab_tile2', 'https://ftextures.com/textures/Light-brown-flooring-parquet.jpg'),
(63, 615, 'mp_gs_libwall', 'https://www.iwantwallpaper.co.uk/images/arthouse-wave-white-blown-vinyl-texture-stripe-paintable-wallpaper-823105-p1695-2898_image.jpg'),
(64, 615, 'washapartwall1_256', 'https://cdn8.bigcommerce.com/s-ygockt/images/stencil/1000x1000/products/274/2173/M167_WHITE_CUP_2000X2000__50344.1458131558.jpg?c=2'),
(65, 615, 'ws_rollerdoor_silver2', 'https://i.pinimg.com/736x/6d/8c/f3/6d8cf38b24c65bd110e07edc8ff33f43--red-gold-gold-.jpg'),
(66, 615, 'cd_tex2', 'https://www.asianpaints.com/content/dam/nilaya/2017/W020D17EY75_grid_10_by_10.jpg'),
(67, 615, 'kb_vend2', 'https://www.mwmaterialsworld.com/media/catalog/product/p/l/plancha-de-metacrilato-decorativo-prismatic-textura.jpg'),
(68, 615, 'woodcabinet01_128', 'http://castlecreations.biz/wp-content/uploads/parser/Patio-Stones-Texture-5.jpg'),
(69, 615, 'la_flair2', 'http://castlecreations.biz/wp-content/uploads/parser/Patio-Stones-Texture-5.jpg'),
(70, 615, 'la_carp3', 'http://madlonsbigbear.com/wp-content/uploads/imgp/Wallpaper-Interior-Texture-6-8319.jpg'),
(71, 615, 'gb_truckdepot29', 'https://static1.squarespace.com/static/5698feaf5827c3b1bc3876ae/57a13c5ef7e0abf4e61f90b2/57a13d2af7e0abf4e61f98cc/1470184765899/Voltaic-BM-090.jpg'),
(72, 615, 'mp_motel_carpet1', 'http://www.teamr4v.org/upload/2018/05/30/wood-tile-floors-free-seamless-flooring-textureswood-texture-floor-seamless-flooring-l-53d4f7d176038433.jpg'),
(73, 615, 'mp_gs_woodpanel', 'https://robertgriffin.net/wp-content/uploads/2016/02/cherry-wood-grain-texture-bcitt3f2t.jpg'),
(74, 615, 'mp_gs_border', 'https://robertgriffin.net/wp-content/uploads/2016/02/cherry-wood-grain-texture-bcitt3f2t.jpg'),
(75, 615, 'mp_gs_woodpanel1', 'https://robertgriffin.net/wp-content/uploads/2016/02/cherry-wood-grain-texture-bcitt3f2t.jpg'),
(76, 615, 'mp_gs_carpet', 'http://www.virm.net/img/Texture-Seamless-Green-Marble-Floor-Tile-Texture-Seamless.jpg'),
(77, 615, 'concretenewb256', 'https://images.homedepot-static.com/productImages/f0702ff4-3a4b-416e-9711-d5c486b12eac/svn/bruce-solid-hardwood-ahs4033-64_1000.jpg'),
(78, 615, 'mp_stonefloor', 'https://images.homedepot-static.com/productImages/f0702ff4-3a4b-416e-9711-d5c486b12eac/svn/bruce-solid-hardwood-ahs4033-64_1000.jpg'),
(79, 615, 'ah_corn1', 'http://cdna.tid.al/2df42d52f35a4e6061e3757296f45f08aedd812c_1000.jpg'),
(80, 136, 'cj_airp_s_2', 'https://spi2.itvnet.lv/upload/articles/30/306046/images/Briva-vieta-1.jpg'),
(81, 5, 'cj_white_wall2', 'https://www.sketchuptextureclub.com/public/texture_m/0037-texture-wall-cladding-stone-interior-seamless.jpg'),
(82, 5, 'ws_stationfloor', 'https://www.textures.com/system/gallery/photos/Marble/Tiles/114536/MarbleTiles0167_5_350.jpg'),
(83, 5, 'garage_docks', 'https://lvportals.lv/wwwraksti//PR/2016/JUNIJS/BILDES_LIELAS/DUSMIIGS_DZIIVS_PAKLAJS.JPG'),
(84, 5, 'gangwin3_lae', 'https://www.textures.com/system/gallery/photos/Buildings/High%20Rise/Glass/37889/HighRiseGlass0016_1_270.jpg'),
(85, 5, 'cof_wood1', 'https://www.porcelanosa-usa.com/products/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/0/100152893.jpg'),
(86, 5, 'gun_ceiling1128', 'https://donpedrobrooklyn.com/wp-content/uploads/2017/06/spray-sand-texture.jpg'),
(87, 5, 'carshowwin2', 'https://www.sketchuptextureclub.com/public/texture_m/0037-texture-wall-cladding-stone-interior-seamless.jpg'),
(88, 615, 'carshowwin2', 'https://spi2.itvnet.lv/upload/articles/30/306046/images/Briva-vieta-1.jpg'),
(89, 136, 'ws_rollerdoor_silver', 'https://spi2.itvnet.lv/upload/articles/30/306046/images/Briva-vieta-1.jpg'),
(100, 425, 'gun_ceiling1', 'https://static1.squarespace.com/static/51f2d950e4b0a2242d26e034/5788f909f5e2316ad3ba49b4/5788f9b51b631bb850efad01/1468594615589/RUSTBELT+-+CLADDING+-+OAK+-+WIDE+PLANK+-+BRUSHED_tileable_4k_color.jpg'),
(101, 425, 'cj_crates', 'https://static1.squarespace.com/static/51f2d950e4b0a2242d26e034/5788f909f5e2316ad3ba49b4/5788f9b51b631bb850efad01/1468594615589/RUSTBELT+-+CLADDING+-+OAK+-+WIDE+PLANK+-+BRUSHED_tileable_4k_color.jpg'),
(102, 425, 'gun_ceiling3', 'https://static1.squarespace.com/static/51f2d950e4b0a2242d26e034/5788f909f5e2316ad3ba49b4/5788f9b51b631bb850efad01/1468594615589/RUSTBELT+-+CLADDING+-+OAK+-+WIDE+PLANK+-+BRUSHED_tileable_4k_color.jpg'),
(103, 425, 'upt_fence_mesh', 'http://1.bp.blogspot.com/-OchnjsgWm-g/T2bDGLQXB7I/AAAAAAAABUI/VGSmhOLAvzM/s1600/Carpet.jpg'),
(105, 425, 'cj_back_board', 'http://www.domnatapeta.bg/uploads/productgalleryfile/images/originals/419375-kan-b1492330992.jpg'),
(106, 425, 'sjmlawarplt2', 'http://sadwaters.us/wp-content/uploads/2018/01/usg-ceilings-tivoli-1-ft-x-1-ft-surface-mount-ceiling-tile-32-in-proportions-1000-x-1000.jpg'),
(108, 425, 'sw_door09', 'http://torexdoors.ru/upload/iblock/ae7/professor-3-504c4e620ca7f13fd61290357f61cf49.png'),
(109, 425, 'breezewall', 'http://www.modafinilsale.com/data/out/810/233245862-stone-texture-wallpaper.jpg'),
(110, 425, 'cj_lightwood', 'http://torexdoors.ru/upload/iblock/ae7/professor-3-504c4e620ca7f13fd61290357f61cf49.png'),
(111, 425, 'gun_floor2', 'https://static1.squarespace.com/static/5456b3d3e4b0c39b25945f81/t/58cf0965be6594524c73cb3c/1489963812989/WoodTexture_COLOR.jpg'),
(112, 425, 'cj_speaker_c', 'https://orig00.deviantart.net/9b16/f/2010/298/3/e/abstract_texture_by_sparxs89-d31illq.jpg'),
(113, 425, 'cj_fab1', 'https://orig00.deviantart.net/9b16/f/2010/298/3/e/abstract_texture_by_sparxs89-d31illq.jpg'),
(114, 425, 'box_texturepage', 'http://www.theventurecorner.com/vision/Black-And-White-Marble-Tile-Texture-Seamless-14144.jpg'),
(115, 425, 'plywood_gym', 'http://www.theventurecorner.com/vision/Black-And-White-Marble-Tile-Texture-Seamless-14144.jpg'),
(116, 425, 'sjmlawarplt3', 'http://www.theventurecorner.com/vision/Black-And-White-Marble-Tile-Texture-Seamless-14144.jpg'),
(117, 425, 'blue_fabric', 'https://spi2.itvnet.lv/upload/articles/30/306046/images/Briva-vieta-1.jpg'),
(118, 425, 'cj_tv_screen', 'https://spi2.itvnet.lv/upload/articles/30/306046/images/Briva-vieta-1.jpg'),
(133, 1, 'loadingdoorclean', 'https://www.beautycolorcode.com/43464b.png'),
(134, 1, 'concretebigb256128', 'https://4.imimg.com/data4/SS/OG/MY-3280800/wenge-laminate-sheet-250x250.jpg'),
(135, 1, 'greyground256128', 'https://cdn.fixr.com/vs_guide_pictures/popcorn-smooth-ceiling-59d61049163b5.png'),
(136, 1, 'ws_garagedoor3_white', 'https://www.equipmag-provence.fr/public/img/big/5244b6e426014.jpg'),
(137, 1, 'ws_rollerdoor_silver', 'http://www.austinwindows.co/wp-content/uploads/2018/02/incredible-4ch-dvr-4-channel-h264-standalone-dvr-tvi-ahd-cameras-cctv-ip-camera-viewer-windows.jpg'),
(138, 412, 'greyground256128', 'http://www.ialaminates.com/images/laminates/3009-NAT.jpg'),
(139, 412, 'badhousewallc02_128', 'https://www.onlinefabricstore.net/images/product-images/lg/TWLCHA_1.jpg'),
(140, 412, 'ws_hangardoor', 'http://hobbylobbys.info/wp-content/uploads/2018/02/stylish-floor-wood-25-best-wood-floor-texture-trending-ideas-on-with-inspirations-wood-flooring-texture.jpg'),
(141, 412, 'ws_garagedoor3_white', 'https://services.tegrazone.com/sites/default/files/article-screenshots/youtube-trending.jpg'),
(142, 412, 'mp_gun_stairs', 'http://hobbylobbys.info/wp-content/uploads/2018/02/stylish-floor-wood-25-best-wood-floor-texture-trending-ideas-on-with-inspirations-wood-flooring-texture.jpg'),
(143, 412, 'garage_docks', 'https://sunshinebenches.com.au/wp-content/uploads/2017/08/anthracite-metallic-1.jpg'),
(144, 412, 'loadingdoorclean', 'http://www.discovertextures.com/wp-content/uploads/2015/10/leather-texture0003-e1445935482706-336x250.jpg'),
(151, 20, 'ah_grnplstr', 'https://www.wardgroupinteriors.co.uk/wp-content/uploads/2016/09/ART820906-Cream-Linear.jpg'),
(152, 20, 'diner_wall1', 'https://www.wardgroupinteriors.co.uk/wp-content/uploads/2016/09/ART820906-Cream-Linear.jpg'),
(153, 20, 'ah_blu_paper2', 'https://orig00.deviantart.net/51d4/f/2016/152/f/5/spaceship_texture_by_svenniemannie-d1ir0l8.jpg'),
(154, 20, 'ah_blu_paper', 'https://orig00.deviantart.net/51d4/f/2016/152/f/5/spaceship_texture_by_svenniemannie-d1ir0l8.jpg'),
(155, 20, 'ah_posmarskirt', 'http://cdn.shopify.com/s/files/1/0444/5025/products/Data-Distortion-Abstract-Texture_00223.jpg?v=1514054980'),
(156, 20, 'ah_yelplnks', 'http://angels4peace.com/wp-content/uploads/2018/01/wood-laminate-texture-home-decoration-brazilian-cherry-trafficmaster-samples-hl-239477-64-1000.jpg'),
(157, 20, 'ah_grepaper2', 'http://angels4peace.com/wp-content/uploads/2018/01/wood-laminate-texture-home-decoration-brazilian-cherry-trafficmaster-samples-hl-239477-64-1000.jpg'),
(158, 20, 'carpet-tile', 'http://angels4peace.com/wp-content/uploads/2018/01/wood-laminate-texture-home-decoration-brazilian-cherry-trafficmaster-samples-hl-239477-64-1000.jpg'),
(159, 20, 'ah_blackmar', 'http://angels4peace.com/wp-content/uploads/2018/01/wood-laminate-texture-home-decoration-brazilian-cherry-trafficmaster-samples-hl-239477-64-1000.jpg'),
(160, 20, 'carpet4kb', 'http://angels4peace.com/wp-content/uploads/2018/01/wood-laminate-texture-home-decoration-brazilian-cherry-trafficmaster-samples-hl-239477-64-1000.jpg'),
(161, 20, 'ah_bartilegreen', 'https://www.asianpaints.com/content/dam/nilaya/2017/W064D0UCY75_10_by_10.jpg'),
(162, 20, 'ah_strntiles', 'https://www.asianpaints.com/content/dam/nilaya/2017/W064D0UCY75_10_by_10.jpg'),
(163, 20, 'carpet3kb', 'http://angels4peace.com/wp-content/uploads/2018/01/wood-laminate-texture-home-decoration-brazilian-cherry-trafficmaster-samples-hl-239477-64-1000.jpg'),
(164, 20, 'ah_pnwainscot', 'http://angels4peace.com/wp-content/uploads/2018/01/wood-laminate-texture-home-decoration-brazilian-cherry-trafficmaster-samples-hl-239477-64-1000.jpg'),
(165, 20, 'ah_pluskirt', 'http://angels4peace.com/wp-content/uploads/2018/01/wood-laminate-texture-home-decoration-brazilian-cherry-trafficmaster-samples-hl-239477-64-1000.jpg'),
(166, 511, 'burglry_wall6', 'https://www.spaceanswers.com/wp-content/uploads/2013/12/Messier-103-online.jpg'),
(167, 511, 'cj_wooddoor5', 'https://cdn.profloortips.com/wp-content/uploads/2016/05/finish-on-dark-floor-wood.jpg'),
(168, 511, 'cj_duvet1', 'https://secure.img1-fg.wfcdn.com/im/59384008/resize-h260-w260%5Ecompr-r85%5Etransparent/1079/10796228/default_name.png'),
(169, 511, 'cj_tv_screen', 'https://pic.rutube.ru/video/e1/01/e1010bf2cabf25811399abdeb9004925.jpg'),
(170, 511, 'cj_painting9', 'https://image.prntscr.com/image/wZq8oGX6TECd4soxhWhbxQ.png'),
(171, 511, 'hs_art8', 'https://i.pinimg.com/originals/73/61/98/736198596b99b1b519098fed4000c3f5.jpg'),
(183, 393, 'newindow4', 'https://goolfm.net/wp-content/uploads/2018/05/Nike-logo.jpg'),
(184, 393, 'newall3_16c128', 'https://img.freepik.com/free-photo/red-wallpaper-texture_1194-7209.jpg?size=338&ext=jpg'),
(185, 393, 'metpat_64', 'https://us.123rf.com/450wm/molaruso/molaruso1709/molaruso170900012/86922158-metal-abstract-pink-colorful-gradient-technology-background-with-polished-brushed-texture-chrome-sil.jpg?ver=6'),
(186, 393, 'concretebigc256', 'https://4.imimg.com/data4/TH/BP/MY-3237367/texture-laminate-500x500.jpg'),
(202, 388, 'ah_yelplnks', 'https://i.pinimg.com/736x/05/e8/fd/05e8fdb843987b57770eefc2611a77bd--textures-patterns-warehouse.jpg'),
(203, 388, 'ab_tilehex2', 'http://www.tematy.info/library/t/tiles-floor-texture/tiles-floor-texture-01.jpg'),
(204, 388, 'ab_tile4', 'http://www.tematy.info/library/t/tiles-floor-texture/tiles-floor-texture-01.jpg'),
(205, 388, 'ab_ceiling1', 'https://www.cgstudio.com/imgd/l/23/58c5ee36a702489f448b4567/9855-chevron-natural-parquet-seamless-floor-texture-for-cg.jpg'),
(206, 388, 'ab_tile1', 'https://img00.deviantart.net/4576/i/2005/120/5/f/blue_floor_tiles_texture_by_deity37.png'),
(207, 388, 'ah_pnwainscotbroon', 'https://i.pinimg.com/736x/c1/eb/36/c1eb363b4d151a6dd47cff11b961f995.jpg'),
(208, 388, 'cj_painting8', 'https://i.pinimg.com/736x/df/62/20/df6220a6e7f29bfb75677dedb54c99fc--danielle-bregoli-womens-fashion.jpg'),
(209, 388, 'ah_whtcorn', 'https://i.pinimg.com/736x/df/62/20/df6220a6e7f29bfb75677dedb54c99fc--danielle-bregoli-womens-fashion.jpg'),
(210, 388, 'shitydoor1_256', 'http://www.centralazdining.com/content/uploads/awesome-office-door-texture-with-office-door-texture-x-on-design.jpg'),
(211, 388, 'mcstraps_door1', 'http://www.centralazdining.com/content/uploads/awesome-office-door-texture-with-office-door-texture-x-on-design.jpg'),
(212, 388, 'ah_walltile6', 'https://thumbs.dreamstime.com/t/modern-wood-texture-wall-16019689.jpg'),
(213, 388, 'ab_rug', 'https://a.wattpad.com/cover/86617158-352-k855426.jpg'),
(214, 388, 'ah_wpaper13', 'http://creativecrunk.com/wp-content/uploads/2014/07/Rainbow-Smoke-Texture.jpg'),
(215, 388, 'cj_painting19', 'https://scontent-sea1-1.cdninstagram.com/vp/4273abb6f502104b741c73d1eb5adfdb/5B73C936/t51.2885-15/s480x480/e35/12627994_966674046758695_1801120716_n.jpg?ig_cache_key=MTE3NzcxNTUzMDQ3MjU2NDMxMQ%3D%3D.2'),
(216, 388, 'ah_wpaper12', 'https://image.freepik.com/free-photo/white-wall-texture_1154-725.jpg'),
(217, 388, 'cj_tv_screen', 'https://www.sexy-youtubers.com/wp-content/uploads/2017/09/mollyeskamleakednudes-6.jpg'),
(218, 388, 'cj_painting18', 'https://scontent-bru2-1.cdninstagram.com/vp/7fd2968ff411a385e8e62eef3fdc4541/5BE06213/t51.2885-15/sh0.08/e35/c0.72.1080.1080/s640x640/35616709_263922537495800_7421948828904849408_n.jpg'),
(219, 388, 'ah_picture2', 'https://i.pinimg.com/originals/87/7f/30/877f3069c4bd5b8a711b611ded6a84c5.jpg'),
(220, 388, 'cj_painting14', 'https://www.porn.com/blog/wp-content/uploads/2016/02/elsa-jean-porn-star-2016-free-webcam-show.jpg'),
(221, 388, 'cj_flag1', 'https://i.ytimg.com/vi/9wNzcKnFJTs/mqdefault.jpg'),
(222, 523, 'burglry_wall4', 'https://secure.img2-fg.wfcdn.com/im/30754995/resize-h310-w310%5Ecompr-r85/4173/41730696/loft-brick-peel-and-stick-18-x-205-wallpaper-roll.jpg'),
(223, 523, 'carpet1kb', 'http://www.tematy.info/library/w/white-wood-flooring/white-wood-flooring-01.jpg'),
(224, 523, 'mp_diner_wood', 'http://www.tematy.info/library/w/white-wood-flooring/white-wood-flooring-01.jpg'),
(225, 523, 'shitydoor1_256', 'http://www.simpsondoor.com/doormagination-design-tools/wood-options/images/fir.jpg'),
(226, 523, 'wall1', 'https://images.freecreatives.com/wp-content/uploads/2016/03/Desktop-Weed-Wallpaper.jpg'),
(227, 523, 'wall3', 'https://images.freecreatives.com/wp-content/uploads/2016/03/Desktop-Weed-Wallpaper.jpg'),
(228, 523, 'wall6', 'https://us.123rf.com/450wm/pyzata/pyzata1307/pyzata130700116/20855024-dark-green-brick-abstract-texture-background.jpg?ver=6'),
(229, 523, 'barbersflr1', 'http://www.thecuttingroom.info/x/2018/04/bathroom-tile-texture-textured-ceramic-forings-wall-pattern.jpg'),
(230, 523, 'wall7', 'https://www.moorishtiles.com/357-tm_home_default/green-2x2-and-4-x-4-moroccan-tile-2x2-zellige-tile.jpg'),
(231, 523, 'cj_tv_screen', 'https://naibuzz.com/wp-content/uploads/2016/11/Azzyland-1.jpg'),
(232, 523, 'curtain_sinkb', 'https://scontent-ort2-1.cdninstagram.com/vp/aed807c3d5cfabe201423f996b406f9b/5BC934A8/t51.2885-15/e35/p320x320/26265892_390246194750646_1879749165022445568_n.jpg?efg=eyJ1cmxnZW4iOiJ1cmxnZW5fZnJvbV9pZyJ9&ig_cache_key=MTY5ODg2NzgwNjYyMzA1OTg0NQ%3D%3D.2'),
(233, 523, 'cj_black_metal', 'https://allstarbio.com/wp-content/uploads/2018/04/Azzy-Land-Bio-Net-worth-Height-Boyfriend-Body-Affair-Married-Ethnicity.jpg'),
(234, 523, 'gb_rug01', 'https://pbs.twimg.com/media/DV9UP3-X4AA-32F.jpg'),
(235, 523, 'hs_plug', 'https://scontent-lga3-1.cdninstagram.com/vp/d743215cfa51e685cef515ee2f4d963a/5BDAAFE7/t51.2885-15/e35/s320x320/28151798_1712240655505724_3160832175914352640_n.jpg?ig_cache_key=MTcxNDQxMjE1ODg0MzkyOTYzMw%3D%3D.2'),
(236, 523, 'gb_foodwrap04', 'https://i.pinimg.com/564x/7c/98/62/7c98624aa510edac8d08f693a8969367.jpg'),
(237, 523, 'cj_wooddoor5', 'https://www.simpsondoor.com/find-a-door/images/fullsize/66_fir.jpg'),
(238, 523, 'kit_door1', 'https://www.simpsondoor.com/find-a-door/images/fullsize/66_fir.jpg'),
(239, 524, 'garagewall1', 'https://images-na.ssl-images-amazon.com/images/I/61JK-dx8yiL._SL500_AC_SS350_.jpg'),
(240, 524, 'bow_abattoir_conc2', 'http://besttile.ie/image/cache/data/Products/Victorian/full_d61a8866cc2460530f607fe9fc37da87-750x750.jpg'),
(241, 524, 'metal2_256128', 'https://images-na.ssl-images-amazon.com/images/I/61JK-dx8yiL._SL500_AC_SS350_.jpg'),
(242, 524, 'porta_256128', 'https://cdn.pixabay.com/photo/2012/03/03/23/06/backdrop-21534_960_720.jpg'),
(243, 526, 'ws_altz_wall7_big', 'https://i.imgur.com/4uOcyDz.jpg'),
(244, 526, 'ws_sub_pen_conc2', 'https://i.imgur.com/PllwBgN.jpg'),
(245, 526, 'ws_corr_metal1', 'https://i.imgur.com/poKWw6Z.jpg'),
(246, 526, 'ws_corr_plastic', 'https://i.imgur.com/poKWw6Z.jpg'),
(247, 526, 'alumplat64', 'https://www.sketchuptextureclub.com/public/texture_m/0064-aluminium-metal-plate-texture-seamless.jpg'),
(248, 526, 'ws_altz_wall5_big', 'http://sitez.co/wp-content/uploads/2016/07/white-wall-texture-free-high-resolution-walls-bricks-textures-wild-textures.jpg'),
(249, 526, 'man_cellarfloor128', 'https://i.imgur.com/PllwBgN.jpg'),
(250, 526, 'ws_peeling_ceiling1_big', 'http://sitez.co/wp-content/uploads/2016/07/white-wall-texture-free-high-resolution-walls-bricks-textures-wild-textures.jpg'),
(259, 313, 'andydark', 'https://i.imgur.com/J5vkLtp.jpg'),
(260, 313, 'andydark2', 'https://i.imgur.com/J5vkLtp.jpg'),
(261, 313, 'ah_utilbor4', 'https://i.pinimg.com/736x/2c/3e/4b/2c3e4b5d02556650294e3aba3aec5023--concrete-texture-seamless-concrete-wall-texture.jpg'),
(262, 313, 'formica1', 'https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/louis-vuitton-texture-taylan-soyturk.jpg'),
(263, 313, 'ah_curtains1', 'https://cdn.discordapp.com/attachments/409770128918446081/469613381347966977/5069-blank-watercolor-paper-with-textured-surface.png'),
(264, 313, 'ah_pnwainscot12', 'https://www.patternpictures.com/wp-content/uploads/2018/01/Seamless-Brick-Wall-Texture-Pattern-171229.jpg'),
(265, 313, 'ah_badceil', 'https://i.pinimg.com/originals/86/d3/52/86d3526ef6682abf9b6265a136d80086.png'),
(268, 481, 'loadingdoorclean', 'https://s3-eu-west-1.amazonaws.com/images.linnlive.com/088a95d76368918abeed07e2548bca7d/c236fdbe-f8eb-45dd-9e60-0d11e2888dd8.jpg'),
(269, 481, 'drvin_back', 'https://s3-eu-west-1.amazonaws.com/images.linnlive.com/088a95d76368918abeed07e2548bca7d/c236fdbe-f8eb-45dd-9e60-0d11e2888dd8.jpg'),
(274, 238, 'concretebigc256', 'http://akmensflizes.lv/images/catalog/5611FLIZE_SPLIT_SLANEKLIS_2.jpg'),
(275, 238, 'newall3_16c128', 'http://cdn.buildmantra.com/productimages/1539/405-430/1.jpg'),
(276, 238, 'newindow4', 'https://img.prof.lv/good_171846/orig/56562.jpg'),
(277, 238, 'yellowvertical_64hv', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Red_flag.svg/250px-Red_flag.svg.png'),
(278, 238, 'metpat_64', 'http://gridasstils.lv/wp-content/uploads/Laminats-Classen-Sensa-Natural-Prestige-Oxford-26382-500x650.jpg'),
(279, 238, 'safridge_256', 'http://vilori.lv/image/cache/data/CLAIREFONTAINE/93507C_1-500x500.jpg'),
(280, 238, 'cardboxes_128', 'http://vilori.lv/image/cache/data/CLAIREFONTAINE/93507C_1-500x500.jpg'),
(281, 238, 'ab_steelframe', 'http://vilori.lv/image/cache/data/CLAIREFONTAINE/93507C_1-500x500.jpg'),
(286, 667, 'ap_tarmac', 'http://bildites.lv/images/h28exrys/129344/original.jpg'),
(294, 390, '', 'https://pubg.network/_images/teams/723.png'),
(295, 544, 'ws_altz_wall10', 'http://www.bildites.lv/images/wb4cmnnp/129474/.png'),
(296, 544, 'ws_garagedoor2_blue', 'http://www.bildites.lv/images/wb4cmnnp/129474/.png'),
(334, 85, 'wh_carpet1', 'http://bildites.lv/images/fnwk7hat/129911/original.jpg'),
(335, 85, 'dinerfloor', 'http://bildites.lv/images/dbkrz2yp/129912/original.jpg'),
(336, 85, 'wh_carpet4', 'http://bildites.lv/images/dbkrz2yp/129912/original.jpg'),
(337, 85, 'hs1_wall3', 'http://bildites.lv/images/dbkrz2yp/129912/original.jpg'),
(338, 85, 'btdeck256', 'http://bildites.lv/images/dbkrz2yp/129912/original.jpg'),
(339, 85, 'hs3_wall1', 'http://bildites.lv/images/363pgebf/129913/original.jpg'),
(340, 85, 'hs3_wall8', 'http://bildites.lv/images/fyz4pb5n/129914/original.jpg'),
(341, 85, 'hs3_wall9', 'http://bildites.lv/images/fyz4pb5n/129914/original.jpg'),
(342, 85, 'hs3_wall7', 'http://bildites.lv/images/fyz4pb5n/129914/original.jpg'),
(343, 85, 'cj_wooddoor5', 'http://bildites.lv/images/5usnnfwx/129917/original.jpg'),
(344, 85, 'hs3_wall2', 'http://bildites.lv/images/qsb8b3uu/129920/original.jpg'),
(346, 85, 'zebra_skin', 'http://bildites.lv/images/gxzm986q/129922/original.jpg'),
(347, 85, 'hs1_carpet1', 'http://bildites.lv/images/qumx2agk/129924/original.jpg'),
(348, 85, 'hs2_artex2', 'http://bildites.lv/images/d7ap2y76/129925/original.jpg'),
(349, 85, 'hs3_wall5', 'http://bildites.lv/images/zf3dp8yj/129926/original.jpg'),
(350, 85, 'hs3_wall6', 'http://bildites.lv/images/6bny68ae/129927/original.jpg'),
(351, 551, 'vaultwall', 'http://www.bildites.lv/images/bbgsjqh8/129957/original.jpg'),
(352, 551, 'vaultfloor', 'http://www.bildites.lv/images/ujmxgdkf/129958/original.jpg'),
(353, 541, 'ab_tilediamond', 'http://carpetcomfortcenter.com/wp-content/uploads/2015/11/Vermont-Maple-Laminate250.jpg'),
(354, 242, 'ws_sub_pen_conc2', 'http://akmensflizes.lv/images/akmensParaugi/GREY_WOOD.jpg'),
(355, 242, 'gb_truckdepot29', 'http://akmensflizes.lv/images/akmensParaugi/GREY_WOOD.jpg'),
(356, 242, 'ws_altz_wall7_big', 'https://arcpalace.com.ua/images/5/trend-azul-180765751_small6.jpg'),
(357, 242, 'ws_altz_wall5_big', 'https://arcpalace.com.ua/images/5/trend-azul-180765751_small6.jpg'),
(358, 242, 'sf_spray_floor1', 'http://akmensflizes.lv/images/akmensParaugi/GREY_WOOD.jpg'),
(359, 242, 'sf_spray_floor2', 'http://akmensflizes.lv/images/akmensParaugi/GREY_WOOD.jpg'),
(360, 30, 'cj_tv_screen', 'http://www.bildites.lv/images/6cmrkrv6/130313/original.jpg'),
(361, 30, 'hs2_floor2', 'http://www.bildites.lv/images/rzq49ky2/130314/original.jpg'),
(362, 30, 'hs1_carpet1', 'http://www.bildites.lv/images/dnrnjkgw/130314/original.jpg'),
(363, 30, 'hs3_wall5', 'http://www.bildites.lv/images/askn3c96/130315/original.jpg'),
(364, 243, 'industdoor1128', 'https://www.signifyd.com/wp-content/uploads/2017/05/Enjuku_Racing_810_340.jpg'),
(365, 243, 'concretebigc256', 'https://images.homedepot-static.com/productImages/177f10fb-dc4e-470c-a377-e9df186af10a/svn/diamond-deck-garage-flooring-accessories-82540-64_1000.jpg'),
(366, 424, 'hs2_3wall6', 'http://www.bildites.lv/images/xckn96n4/130403/thumbnail.png'),
(367, 424, 'studiowall', 'http://www.bildites.lv/images/3fvajkfj/130410/thumbnail.png'),
(368, 131, 'ah_utilbor4', 'http://texturelib.com/Textures/brick/stone%20wall/brick_stone_wall_0109_01_preview.jpg'),
(369, 131, 'ah_badceil', 'http://www.rkmarblesindia.com/public/product_images/product_subtype_images/Bianco_Carrara.jpg'),
(370, 131, 'ah_flroortiledirt1', 'http://www.marshalls.co.uk/tile-and-stone/assets/images/product/main/andorra-mosaic-305-x-305-x-10-25x25-brushed_1.jpg'),
(371, 131, 'unnamed', 'http://www.vrsmash.com/cdn/thumbnail/9f6cc71834de9f3bc13e043604841431/vrcosplayx-videogame-compilation-1516949067.jpg'),
(372, 131, 'ah_filthrug1', 'http://cdn.shopify.com/s/files/1/1444/2564/products/Harmony_-Sheer-_Tiers-_Swag-and-_Valance-White_1200x1200.jpg?v=1531766847'),
(373, 131, 'ah_curtains1', 'https://www.candh.co.uk/images/closs-hamblin-velvet-grey-eyelet-ready-made-curtains-p20443-21544_image.jpg'),
(374, 131, 'ah_pnwainscot12', 'https://2.bp.blogspot.com/-YhI-iZvs9Fo/VLq7Wfci97I/AAAAAAAASDk/-gRHxzbVIT8/s1600/parquet%2Bwood%2Bfloor%2B%2324%2B%2B(1).jpg'),
(375, 131, 'cj_wood1', 'http://cdn8.bigcommerce.com/s-pp6vink62e/images/stencil/1200x1800/products/865/1422/Perfection_Floor_Wood_Grain_Barnwood__05451.1501610071.jpg?c=2'),
(376, 131, 'formica1', 'https://images.homedepot-static.com/productImages/7211b96f-77e8-476e-b535-5a8ece47181c/svn/silver-spoon-home-decorators-collection-texture-hdd8989500-64_1000.jpg'),
(377, 131, 'cj_tartan', 'https://i2.wp.com/211178.no/wp-content/uploads/2016/06/hero-ltp.jpg?fit=1000%2C1000'),
(378, 131, 'cj_fab4', 'https://www.amara.com/static/uploads/images-0/products/x/huge/89619/antoinette-fusilli-dark-blue-sofa-s.jpg'),
(379, 131, 'cj_lightwood', 'https://www.iwantwallpaper.co.uk/images/muriva-bluff-wood-panel-wallpaper-j02418-p874-1310_image.jpg'),
(380, 131, 'cj_door6', 'https://images.hydra-lister.com/Martha_Stewart_Living_14_5x14_5_in_Cabinet_Door_Sample_in_Ga_0_res.jpg'),
(381, 131, 'cj_red_leather', 'https://www.ilovewallpaper.co.uk/images/henderson-interiors-prosecco-sparkle-marble-wallpaper-grey-silver-h980538-p4766-12929_image.jpg'),
(382, 73, 'ah_pnwainscot12', 'http://www.bildites.lv/images/nw2kddd2/130724/original.jpg'),
(383, 73, 'ah_badceil', 'http://www.bildites.lv/images/w355vjt6/130725/original.jpg'),
(384, 73, 'ah_flroortiledirt1', 'http://www.bildites.lv/images/ajmrvbju/130726/original.png'),
(385, 73, 'cj_tartan', 'http://www.bildites.lv/images/3gx7qn9t/130733/original.jpg'),
(386, 73, 'cj_fab4', 'http://www.bildites.lv/images/3gx7qn9t/130733/original.jpg'),
(387, 73, 'cj_lightwood', 'http://www.bildites.lv/images/gsah9evc/130734/original.png'),
(388, 73, 'ah_utilbor4', 'http://www.bildites.lv/images/dykvvqym/130735/original.png'),
(393, 73, 'cj_tv_screen', 'http://www.bildites.lv/images/3yxxv9aw/130909/original.jpg'),
(394, 73, 'ah_filthrug1', 'http://www.bildites.lv/images/u88y9fuz/130910/original.jpg'),
(395, 73, 'cj_wood1', 'http://www.bildites.lv/images/8wnwha5v/130911/original.jpg'),
(396, 586, 'sjmlawarwall2', 'http://www.bildites.lv/images/7t5wb7ex/130921/thumbnail.jpg'),
(397, 586, 'sjmlawarwall5', 'http://www.bildites.lv/images/h3pgrydv/130922/thumbnail.jpg'),
(398, 586, 'sjmlawarwall4', 'http://www.bildites.lv/images/r6dxpub8/130923/thumbnail.jpg'),
(399, 170, 'sjmlawarwall5', 'http://cdn.libowbeds.com/f/uploads/osis-paint.png'),
(400, 586, 'sf_spray1', 'http://www.bildites.lv/images/fws3tfcv/130924/thumbnail.jpg'),
(401, 170, 'sjmlawarwall4', 'http://www.bmvide.lv/userfiles/Image/APDARES_FLIZES/STEGU/MARSEILLE%204%20-%20volcanic.jpg'),
(402, 170, 'metal1_128', 'http://www.bmvide.lv/userfiles/Image/APDARES_FLIZES/STEGU/MARSEILLE%204%20-%20volcanic.jpg'),
(403, 170, 'metpat64', 'https://tiendatelas.com/22848-thickbox_default/tela-elastica-espejo-verde-fluor.jpg'),
(404, 586, 'sf_spray3', 'http://www.bildites.lv/images/4sqdjpra/130925/thumbnail.jpg'),
(405, 586, 'sf_spray2', 'http://www.bildites.lv/images/4sqdjpra/130925/thumbnail.jpg'),
(406, 586, 'metal1_128', 'http://www.bildites.lv/images/g4xrmjas/130928/thumbnail.jpg'),
(407, 586, 'sjmlawardra1', 'http://www.bildites.lv/images/hfmk9fj3/130929/thumbnail.jpg'),
(408, 586, 'alleydoor8', 'http://www.bildites.lv/images/874r6nkk/130930/thumbnail.jpg'),
(409, 586, 'metpat64', 'http://www.bildites.lv/images/2s56prnu/130931/thumbnail.jpg'),
(410, 586, 'lightwallba256', 'http://www.bildites.lv/images/mq6wfgd9/130933/thumbnail.jpg'),
(411, 412, 'grey_carpet_256', 'http://www.bildites.lv/images/392ts9tc/130938/original.jpg'),
(412, 229, 'ws_altz_wall5_big', 'http://blogs.prof.lv/wp-content/uploads/2018/02/gridas-segums.jpg'),
(413, 229, 'sanpedock96', 'http://zidaapmetums.lv/uploads/product/194/small.jpg'),
(414, 229, 'sanpedock1', 'http://zidaapmetums.lv/uploads/product/194/small.jpg'),
(415, 229, 'ws_carparknew2a', 'http://lv.flexi-stone.com/uploads/201714636/small/best-wood-flooring-design-breathable-modified49230036399.jpg'),
(416, 229, 'sanpedock5', 'https://ksd-images.lt/display/products/0001/6046/50887209.jpg?h=270&op=fit&w=374'),
(417, 229, 'ws_peeling_ceiling1_big', 'https://buvniecibas-abc.lv/wp-content/uploads/products/342519_pFAmEwCIZpcDJ0iUp8rx-300x300.jpg'),
(418, 229, 'ab_ceiling1', 'http://lv.kasaro-artedecor.com/uploads/201816142/small/decorative-wood-wall-panels25439865283.jpg'),
(419, 229, 'alumplat64', 'http://lv.kasaro-artedecor.com/uploads/201816142/small/decorative-wood-wall-panels25439865283.jpg'),
(420, 586, 'sjmlawarplt3', 'http://www.bildites.lv/images/r5fy35se/130982/thumbnail.jpg'),
(421, 586, 'ws_carparkwall2', 'http://www.bildites.lv/images/894rsnax/130984/thumbnail.jpg'),
(422, 586, 'lastat97', 'http://www.bildites.lv/images/d7xbkjq6/130985/thumbnail.jpg'),
(423, 586, 'crencouwall1', 'http://www.bildites.lv/images/s77tyncg/130986/thumbnail.jpg'),
(424, 586, 'kb_sofa_256', 'http://www.bildites.lv/images/c6kn5ust/130987/thumbnail.jpg'),
(425, 586, 'cj_wooddoor5', 'http://www.bildites.lv/images/3cbwzw5x/130988/thumbnail.png'),
(426, 586, 'cj_tv_screen', 'http://www.bildites.lv/images/3cbwzw5x/130988/thumbnail.png'),
(427, 586, 'cleargraf02_la', 'http://www.bildites.lv/images/3cbwzw5x/130988/thumbnail.png'),
(434, 514, 'bow_abattoir_conc2', 'https://www.buvdarbiem.lv/image/cache/catalog/product/482-02-bonus-500x500.jpg'),
(435, 514, 'comptwall3', 'https://www.buvdarbiem.lv/image/cache/catalog/product/rieksts-f1-500x500.jpg'),
(436, 514, 'ab_wall_flake', 'https://www.buvdarbiem.lv/image/cache/catalog/product/rieksts-f1-500x500.jpg'),
(437, 514, 'compressor', 'http://www.nagarealm.com/wp-content/uploads/2018/02/Garage-Doors-Bedfordshire-F29-In-Creative-Home-Decoration-Ideas-with-Garage-Doors-Bedfordshire.jpg'),
(438, 514, 'gragedoorkb2', 'http://taylordoorco.3dcartstores.com/assets/images/garagedoorcolors/white.jpg'),
(439, 514, 'cj_tv_screen', 'https://www.redline360.com/image/cache/data/brands/invidia/headers/honda/invidia-headers-honda-s2000-HS00HS1HDP-dyno-500x500.jpg'),
(440, 514, 'safridge_256', 'http://www.motipspray.hu/files/ral1011.jpg'),
(441, 90, 'gym_floor5', 'https://c1.staticflickr.com/5/4037/4459642745_fa2f1c819d_z.jpg?zz=1'),
(442, 90, 'burglry_wall7', 'http://www.freevectors.net/files/large/BlackAncientDamask.jpg'),
(443, 90, 'cj_linen1', 'https://i.pinimg.com/originals/7c/1d/9f/7c1d9f779d6dace2ef290789b0729903.jpg'),
(444, 90, 'cj_tv_screen', 'https://78.media.tumblr.com/dd918e509b4f46b38064ab541347ff28/tumblr_oqpu99kyXs1vd0vp3o1_500.jpg'),
(446, 426, 'bwtilebroth', 'http://www.hdbilder.eu/pictures/2012/0210/1/trees-wood-patterns-textures-backgrounds-1024x807-wallpaper-493355.jpg'),
(447, 426, '711_walltemp', 'https://cdn.stocksnap.io/img-thumbs/280h/GW65KRP81M.jpg'),
(448, 426, 'cabinet_hi1b', 'https://ak7.picdn.net/shutterstock/videos/14834857/thumb/1.jpg'),
(449, 426, 'stormdrain3_nt', 'https://www.iwantwallpaper.co.uk/images/p-s-international-slate-brick-pattern-faux-stone-effect-textured-wallpaper-42106-40-p3405-7833_image.jpg'),
(450, 426, 'gun_ceiling1128', 'http://hd.wallpaperswide.com/thumbs/summer_rain_2-t2.jpg'),
(460, 534, '', 'https://images.all-free-download.com/images/graphicthumb/wood_background_hd_picture_4_169843.jpg'),
(461, 534, 'ws_altz_wall5_big', 'https://images.all-free-download.com/images/graphicthumb/wood_background_hd_picture_4_169843.jpg'),
(462, 534, 'ws_altz_wall7_big', 'http://riselikelions.info/wp-content/uploads/2018/03/light-brick-wall-brick-brick-brick-brick-wall-background-lighting-luminous-efficiency-poster-banner-brick-light-light-blue-brick-wallpaper.jpg'),
(463, 534, 'ws_sub_pen_conc2', 'http://textures101.com/textures/Metal/Floor/2011/11/23/tn1_44278408670ef651bbacb_xitzt.jpg'),
(464, 534, 'cj_door6', 'http://www.techthisoutnews.com/wp-content/uploads/2015/12/pornhub-logo.jpg'),
(465, 409, 'tire(3)', 'http://bildites.lv/images/qm4sav6z/131501/original.jpg'),
(472, 481, 'stageside1', 'https://t3.ftcdn.net/jpg/01/37/56/48/240_F_137564837_KyiJkXDXYoFrUBHL1OV6bYByFaqeYNGi.jpg'),
(473, 481, 'des_dam_conc', 'http://textures101.com/textures/Metal/Floor/2011/11/23/tn1_44278408670ef651bbacb_xitzt.jpg'),
(474, 553, 'ahoodfence2', 'https://cdn.shopify.com/s/files/1/0468/0609/products/PHM-33_Black_Brick_SIM_HR_large.jpg?v=1443776703'),
(475, 534, 'sf_spray2', 'http://www.bildites.lv/images/ss3k4quz/131555/original.jpg'),
(476, 534, 'sf_spray_floor1', 'http://www.bildites.lv/images/pg7axj5f/131556/original.jpg'),
(477, 534, 'sf_spray_floor2', 'http://www.bildites.lv/images/pg7axj5f/131556/original.jpg'),
(478, 534, 'garargeb2', 'http://www.bildites.lv/images/7zbv2cdu/131559/original.jpg'),
(479, 534, 'man_cellarfloor128', 'http://www.bildites.lv/images/a3ee7cf9/131562/original.jpg'),
(480, 534, 'ws_peeling_ceiling1_big', 'http://www.bildites.lv/images/8379xf3u/131563/original.jpg'),
(481, 534, 'ab_ceiling1', 'http://www.bildites.lv/images/tn55um5t/131565/original.jpg'),
(482, 534, 'tool_store', 'http://www.bildites.lv/images/m5tugp3y/131568/original.jpg'),
(483, 534, 'toolwall1', 'http://www.bildites.lv/images/fdtu8q53/131571/original.jpg'),
(484, 534, 'ws_fuckedwin2', 'http://www.bildites.lv/images/yr7d6x8z/131590/original.jpg'),
(486, 356, 'sanpedock96', 'https://vignette.wikia.nocookie.net/uncyclopedia/images/f/f8/Brick_Wall.jpg/revision/latest?cb=20070618190405'),
(490, 356, 'ws_altz_wall5_big', 'https://www.franadesivos.com.br/fotos/extragrande/2871fe1/papel-de-parede-textura-de-madeira-mod-11.jpg'),
(491, 356, 'sanpedock5', 'http://thumbs2.modthesims.info/img/2/2/6/2/4/MTS_Dutchboy-6701-metal-floor.jpg'),
(492, 356, 'sanpedock1', 'https://vignette.wikia.nocookie.net/uncyclopedia/images/f/f8/Brick_Wall.jpg/revision/latest?cb=20070618190405'),
(493, 356, 'ws_carparknew2a', 'https://thumbs.dreamstime.com/t/wooden-texture-black-wood-panel-as-background-boards-table-floor-blank-105348549.jpg'),
(502, 233, 'concretebigc256', 'https://www.ironcompany.com/wp/wp-content/uploads/2017/12/RB-Natural-Fleck.jpg'),
(505, 233, 'porta_256128', 'https://scontent.frix5-1.fna.fbcdn.net/v/t1.0-9/13939491_1039598196076346_2451002085525769437_n.jpg?_nc_cat=0&oh=61bfba13fcb60bb816c237c30b346839&oe=5BFEhttps://scontent.frix5-1.fna.fbcdn.net/v/t1.0-9/13939491_1039598196076346_2451002085525769437_n.jpg?_n'),
(506, 233, 'newall3_16c128', 'https://images-na.ssl-images-amazon.com/images/I/81qphyJr6SL._SX425_.jpg'),
(507, 233, 'industdoor1128', 'https://www.rap-up.com/app/uploads/2017/11/lil-peep-cross.jpg'),
(508, 627, 'drvin_front', 'https://fbrub3uw9622bx97c3d0vkqp-wpengine.netdna-ssl.com/wp-content/uploads/2017/06/Wood-Background-new.jpg'),
(509, 627, 'bow_loadingbay_door', 'http://poppin.imgix.net/products/swatch/swatch_dark_gray.jpg?w=600&h=600'),
(510, 627, 'basketball2', 'https://kawaii.kawaii.at/img/solid-yellow-fabric-Robert-Kaufman-USA-Citrus-179483-1.JPG'),
(511, 627, 'bball_fake_light', 'https://upload.wikimedia.org/wikipedia/commons/e/e8/Blue_%28film%29.jpg'),
(512, 627, 'loadingdoorclean', 'https://cdn.shopify.com/s/files/1/0361/3293/products/PHM-33_Black_Brick_SIM_HR_large.jpg?v=1443822317'),
(513, 627, 'greyground256128', 'https://4.imimg.com/data4/ME/DF/MY-13409881/laminate-texture-250x250.jpg'),
(514, 627, 'ah_corn1', 'https://4.imimg.com/data4/ME/DF/MY-13409881/laminate-texture-250x250.jpg'),
(516, 628, 'gb_nastybar08', 'http://sfwallpaper.com/images/dark-themed-wallpapers-17.jpg'),
(520, 628, 'cj_red_fabric', 'https://novoboi.ru/wallpapers/large/12118.jpg'),
(521, 628, 'cj_wood5', 'https://s2.favim.com/orig/35/bright-city-dark-photography-place-Favim.com-280848.jpg'),
(522, 628, 'cj_nastybar_d4', 'https://www.whoa.in/20130627-Whoa/dark-musical-art-wallpaper.jpg'),
(523, 553, 'carshowroom1', 'http://www.bildites.lv/images/qqvckd36/129089/thumbnail.png'),
(524, 635, 'cj_back_board', 'http://www.bildites.lv/images/q6dnsdd4/132408/original.png'),
(525, 635, 'plywood_gym', 'http://www.bildites.lv/images/q6dnsdd4/132408/original.png'),
(526, 635, 'cj_flag1', 'http://www.bildites.lv/images/ms9fmbxh/132411/original.jpg'),
(527, 635, 'sjmlawarplt3', 'http://www.bildites.lv/images/7cf4uyfb/132413/original.jpg'),
(528, 635, 'gun_ceiling1', 'http://www.bildites.lv/images/uqkm363n/132414/original.png'),
(529, 635, 'sjmlawarplt2', 'http://www.bildites.lv/images/wc6q925y/132415/original.jpg'),
(530, 635, 'gun_floor2', 'http://www.bildites.lv/images/22p64van/132416/original.jpg'),
(531, 635, 'sjmlawepcrat1', 'http://www.bildites.lv/images/3he29tvz/132418/original.jpg'),
(532, 624, 'ws_altz_wall7_big', 'https://www.google.lv/imgres?imgurl=https%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F950687718610296832%2FpBU1wf0B.jpg&imgrefurl=https%3A%2F%2Ftwitter.com%2Fhektorslatvia&docid=wbJd9rbKGwMwjM&tbnid=kPf_w1if0j7klM%3A&vet=10ahUKEwj6k6OczfLcAhVJAZoKHSItDpIQMwg'),
(533, 624, 'ws_greymetal_small', 'https://www.google.lv/imgres?imgurl=https%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F950687718610296832%2FpBU1wf0B.jpg&imgrefurl=https%3A%2F%2Ftwitter.com%2Fhektorslatvia&docid=wbJd9rbKGwMwjM&tbnid=kPf_w1if0j7klM%3A&vet=10ahUKEwj6k6OczfLcAhVJAZoKHSItDpIQMwg'),
(534, 634, '', 'http://lonebaltika.lv/uploads/images/Nelissen2/apdares_kiegeli_Carma_w250_h250.jpg'),
(535, 634, 'newall3_16c128', 'http://lonebaltika.lv/uploads/images/Nelissen2/apdares_kiegeli_Carma_w250_h250.jpg'),
(536, 634, 'concretebigc256', 'https://portall.lv/image/cache/data/linoleum%20BIG/132043-800x800_0.jpg'),
(537, 634, 'ab_metaledge', 'http://www.bildites.lv/images/xckn96n4/130403/thumbnail.png'),
(540, 19, 'metaldoor01_256', 'https://i.imgur.com/SmLlmZV.png'),
(541, 19, 'sf_spray_floor2', 'https://i.imgur.com/ceimHT2.jpg'),
(542, 19, 'sf_spray_floor1', 'https://i.imgur.com/ceimHT2.jpg'),
(545, 19, 'newall1-1', 'https://i.imgur.com/7nhrGK8.jpg'),
(546, 19, 'ws_hangardoor', 'https://i.imgur.com/AivD43r.jpg'),
(547, 19, 'ahoodgardr', 'https://i.imgur.com/CpUhQgU.jpg'),
(548, 19, 'garage_docks', 'https://i.imgur.com/ytyBCDn.jpg'),
(549, 19, 'cj_don_post_3', 'https://i.imgur.com/051WTGv.jpg'),
(550, 19, 'cj_airp_s_1', 'https://i.imgur.com/sX1V6h7.jpg'),
(551, 19, 'cj_don_post_1', 'https://i.imgur.com/poiUEZE.jpg'),
(552, 19, 'cj_cb_post1', 'https://i.imgur.com/pSqOL0s.png'),
(553, 19, 'badhousewallc02_128', 'https://i.imgur.com/v142xlH.jpg'),
(554, 19, 'sf_spray2', 'https://i.imgur.com/PdlnNAt.jpg'),
(555, 19, 'sf_spray3', 'https://i.imgur.com/PdlnNAt.jpg'),
(556, 19, 'sf_spray1', 'https://i.imgur.com/PdlnNAt.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `items`
--

CREATE TABLE `items` (
  `index` int(10) NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `owner` int(10) UNSIGNED NOT NULL,
  `itemID` int(10) NOT NULL,
  `itemValue` text NOT NULL,
  `protected` int(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `items`
--

INSERT INTO `items` (`index`, `type`, `owner`, `itemID`, `itemValue`, `protected`) VALUES
(35, 1, 2, 16, '7', 0),
(38, 1, 2, 152, 'Brian_Sorbey;VÄ«rietis;JanvÄris 1, 2002;C9C54CB1C1CB30C6D88B16861A1E49B0', 0),
(40, 1, 2, 2, '407735', 0),
(136, 1, 3, 16, '116', 0),
(137, 1, 3, 17, '1', 0),
(138, 1, 3, 18, '1', 0),
(139, 1, 3, 152, 'Rafael_Kenedy;VÄ«rietis;JanvÄris 1, 1986;58306FF2975F7AFEC124925855467036', 0),
(140, 1, 3, 160, '1', 0),
(141, 1, 3, 2, '778154', 0),
(142, 1, 3, 134, '1000', 0),
(151, 1, 4, 16, '22', 0),
(152, 1, 4, 17, '1', 0),
(153, 1, 4, 18, '1', 0),
(154, 1, 4, 152, 'Tyler_Tryone;VÄ«rietis;JanvÄris 1, 2002;673FDA19D1BEB1EEB576EE1F3EB022B1', 0),
(155, 1, 4, 160, '1', 0),
(156, 1, 4, 2, '765967', 0),
(164, 1, 2, 315, '2005 Porsche Cayenne, Brian Sorbey ((1))', 0),
(182, 1, 5, 16, '7', 0),
(183, 1, 5, 17, '1', 0),
(184, 1, 5, 18, '1', 0),
(185, 1, 5, 152, 'Yust_Beer;VÄ«rietis;JanvÄris 1, 2002;39E8EB77023DEE8DB6D090D13D66F739', 0),
(186, 1, 5, 160, '1', 0),
(187, 1, 5, 2, '748850', 0),
(241, 1, 5, 134, '943', 0),
(274, 1, 2, 315, '1979 Volvo 242, Brian Sorbey ((3))', 0),
(277, 1, 2, 315, '1991 Citroen XM, Brian Sorbey ((4))', 0),
(280, 1, 2, 315, '1966 Ford Fairlane, Brian Sorbey ((5))', 0),
(295, 1, 2, 315, '1977 Pontiac Ventura, Brian Sorbey ((6))', 0),
(307, 1, 6, 16, '7', 0),
(308, 1, 6, 17, '1', 0),
(309, 1, 6, 18, '1', 0),
(310, 1, 6, 152, 'Matthew_Hudson;VÄ«rietis;JanvÄris 1, 2002;DAACCA91FED2504EA0BA28E27495F17A', 0),
(311, 1, 6, 160, '1', 0),
(312, 1, 6, 2, '884807', 0),
(314, 1, 4, 134, '925', 0),
(493, 1, 2, 49, '1', 0),
(520, 1, 7, 16, '7', 0),
(521, 1, 7, 17, '1', 0),
(522, 1, 7, 18, '1', 0),
(523, 1, 7, 152, 'Matthew_Bralis;VÄ«rietis;JanvÄris 1, 2002;7D12FE78E999229BD235443879CC100E', 0),
(524, 1, 7, 160, '1', 0),
(525, 1, 7, 2, '320761', 0),
(526, 1, 7, 134, '1000', 0),
(527, 1, 8, 16, '7', 0),
(528, 1, 8, 17, '1', 0),
(529, 1, 8, 18, '1', 0),
(530, 1, 8, 152, 'Aaron_Miller;VÄ«rietis;JanvÄris 1, 2002;04D23E7E4FEDD31CD4829426743D1140', 0),
(531, 1, 8, 160, '1', 0),
(532, 1, 8, 2, '522923', 0),
(534, 1, 8, 134, '1000', 0),
(535, 1, 9, 16, '7', 0),
(536, 1, 9, 17, '1', 0),
(537, 1, 9, 18, '1', 0),
(538, 1, 9, 152, 'Mazais_Suns;VÄ«rietis;JanvÄris 1, 2002;0C583EE5E4E644864B0CF16738D8DA79', 0),
(539, 1, 9, 160, '1', 0),
(541, 1, 10, 16, '7', 0),
(542, 1, 10, 17, '1', 0),
(543, 1, 10, 18, '1', 0),
(544, 1, 10, 152, 'Draugs_Bralis;VÄ«rietis;JanvÄris 1, 2002;3963E8791D5CFE3D849C4BE3477EC65B', 0),
(545, 1, 10, 160, '1', 0),
(547, 1, 11, 16, '7', 0),
(548, 1, 11, 17, '1', 0),
(549, 1, 11, 18, '1', 0),
(550, 1, 11, 152, 'Matthew_Andersen;VÄ«rietis;JanvÄris 1, 2002;1EE4195A11DE625BE25111FEF04A65B9', 0),
(551, 1, 11, 160, '1', 0),
(552, 1, 11, 2, '419689', 0),
(553, 1, 11, 134, '1000', 0),
(559, 1, 12, 16, '7', 0),
(560, 1, 12, 17, '1', 0),
(561, 1, 12, 18, '1', 0),
(562, 1, 12, 152, 'Lohs_Debiilais;VÄ«rietis;JanvÄris 1, 2002;ACFE9E4542D7B5AEC589231B64FBCE91', 0),
(563, 1, 12, 160, '1', 0),
(564, 1, 12, 2, '842162', 0),
(565, 1, 12, 134, '1000', 0),
(578, 1, 6, 73, '14', 0),
(694, 1, 6, 134, '12338209', 0),
(715, 1, 13, 16, '153', 0),
(716, 1, 13, 17, '1', 0),
(717, 1, 13, 18, '1', 0),
(718, 1, 13, 152, 'Thomas_Harper;VÄ«rietis;Novembris 30, 1993;C3D6FF0B932D36DD50507F43EC7F85DD', 0),
(719, 1, 13, 160, '1', 0),
(720, 1, 13, 2, '782460', 0),
(721, 1, 13, 134, '1000', 0),
(723, 1, 2, 134, '260', 0),
(732, 1, 15, 16, '153', 0),
(733, 1, 15, 17, '1', 0),
(736, 1, 15, 160, '1', 0),
(737, 1, 15, 2, '707420', 0),
(740, 1, 16, 16, '26', 0),
(741, 1, 16, 17, '1', 0),
(742, 1, 16, 18, '1', 0),
(743, 1, 16, 152, 'Tom_Miller;VÄ«rietis;Marts 6, 1983;2BC49C587D9D83C8781E5F77B9122353', 0),
(744, 1, 16, 160, '1', 0),
(745, 1, 16, 2, '867879', 0),
(746, 1, 16, 134, '1000', 0),
(747, 1, 17, 16, '7', 0),
(748, 1, 17, 17, '1', 0),
(749, 1, 17, 18, '1', 0),
(750, 1, 17, 152, 'Asd_Dsa;VÄ«rietis;Marts 1, 2002;EBA98B9991BDFBE79949A1465B752C4C', 0),
(751, 1, 17, 160, '1', 0),
(752, 1, 17, 2, '318330', 0),
(761, 1, 17, 134, '1000', 0),
(766, 1, 18, 16, '59', 0),
(767, 1, 18, 18, '1', 0),
(768, 1, 18, 17, '1', 0),
(769, 1, 18, 152, 'Daniels_Rasainis;VÄ«rietis;Marts 14, 1992;227FDE815BE884722B5CCF338F0287A0', 0),
(770, 1, 18, 160, '1', 0),
(771, 1, 18, 2, '319577', 0),
(772, 1, 18, 134, '1000', 0),
(799, 2, 80, 16, '7', 0),
(800, 2, 80, 18, '1', 0),
(801, 2, 80, 17, '1', 0),
(802, 2, 80, 152, 'Matthew_Hudson;VÄ«rietis;JanvÄris 1, 2002;DAACCA91FED2504EA0BA28E27495F17A', 0),
(803, 2, 80, 160, '1', 0),
(804, 2, 80, 2, '322446', 0),
(822, 2, 10, 85, '1', 0),
(823, 2, 9, 85, '1', 0),
(824, 2, 5, 85, '1', 0),
(825, 2, 7, 85, '1', 0),
(826, 2, 6, 85, '1', 0),
(827, 2, 2, 85, '1', 0),
(828, 2, 4, 85, '1', 0),
(829, 2, 3, 85, '1', 0),
(830, 2, 12, 61, '1', 0),
(831, 2, 6, 61, '1', 0),
(832, 2, 2, 61, '1', 0),
(833, 2, 9, 61, '1', 0),
(834, 2, 7, 61, '1', 0),
(835, 2, 5, 61, '1', 0),
(836, 2, 3, 61, '1', 0),
(837, 2, 4, 61, '1', 0),
(912, 2, 16, 85, '1', 0),
(913, 2, 17, 85, '1', 0),
(914, 2, 13, 85, '1', 0),
(915, 2, 12, 85, '1', 0),
(916, 2, 14, 85, '1', 0),
(917, 2, 18, 85, '1', 0),
(918, 2, 15, 85, '1', 0),
(919, 2, 10, 61, '1', 0),
(920, 2, 14, 61, '1', 0),
(921, 2, 16, 61, '1', 0),
(922, 2, 17, 61, '1', 0),
(923, 2, 13, 61, '1', 0),
(924, 2, 15, 61, '1', 0),
(925, 2, 18, 61, '1', 0),
(934, 1, 21, 16, '144', 0),
(935, 1, 21, 18, '1', 0),
(936, 1, 21, 17, '1', 0),
(937, 1, 21, 152, 'Chief_Keef;VÄ«rietis;JanvÄris 1, 1994;85BC5A25D046B0DCB24D3636C1E5DDB3', 0),
(938, 1, 21, 160, '1', 0),
(939, 1, 21, 2, '721430', 0),
(944, 1, 15, 85, '1', 0),
(945, 1, 15, 85, '1', 0),
(946, 1, 15, 85, '1', 0),
(948, 1, 15, 85, '1', 0),
(949, 1, 15, 85, '1', 0),
(950, 1, 15, 85, '1', 0),
(951, 1, 15, 85, '1', 0),
(952, 2, 32, 85, '1', 0),
(953, 1, 15, 85, '1', 0),
(975, 2, 80, 111, '1', 0),
(981, 2, 32, 378, '1', 0),
(1000, 2, 86, 152, 'Raheem_Amin;VÄ«rietis;JÅ«lijs 7, 1994;5B786E85B92B4BB31030611A12FC2A00', 0),
(1017, 1, 15, 378, '1', 0),
(1022, 2, 43, 378, '1', 0),
(1023, 2, 44, 378, '1', 0),
(1024, 2, 41, 378, '1', 0),
(1025, 2, 42, 378, '1', 0),
(1026, 2, 36, 378, '1', 0),
(1027, 2, 37, 378, '1', 0),
(1028, 2, 38, 378, '1', 0),
(1029, 2, 39, 378, '1', 0),
(1030, 2, 40, 378, '1', 0),
(1031, 2, 54, 378, '1', 0),
(1032, 2, 45, 378, '1', 0),
(1033, 2, 46, 378, '1', 0),
(1035, 2, 47, 378, '1', 0),
(1036, 2, 48, 378, '1', 0),
(1037, 2, 49, 378, '1', 0),
(1038, 2, 51, 378, '1', 0),
(1039, 2, 50, 378, '1', 0),
(1040, 2, 52, 378, '1', 0),
(1041, 2, 53, 378, '1', 0),
(1042, 2, 56, 378, '1', 0),
(1043, 2, 55, 378, '1', 0),
(1044, 2, 57, 378, '1', 0),
(1045, 2, 59, 378, '1', 0),
(1046, 2, 58, 378, '1', 0),
(1047, 2, 69, 378, '1', 0),
(1048, 2, 67, 378, '1', 0),
(1049, 2, 68, 378, '1', 0),
(1050, 2, 66, 378, '1', 0),
(1051, 2, 65, 378, '1', 0),
(1052, 2, 60, 378, '1', 0),
(1053, 2, 61, 378, '1', 0),
(1054, 2, 62, 378, '1', 0),
(1055, 2, 63, 378, '1', 0),
(1056, 2, 64, 378, '1', 0),
(1059, 2, 29, 378, '1', 0),
(1060, 2, 30, 378, '1', 0),
(1061, 2, 28, 378, '1', 0),
(1062, 2, 31, 378, '1', 0),
(1063, 2, 17, 378, '1', 0),
(1064, 2, 13, 378, '1', 0),
(1065, 2, 18, 378, '1', 0),
(1066, 2, 14, 378, '1', 0),
(1067, 2, 15, 378, '1', 0),
(1068, 2, 16, 378, '1', 0),
(1069, 2, 25, 378, '1', 0),
(1070, 2, 26, 378, '1', 0),
(1071, 2, 24, 378, '1', 0),
(1072, 2, 22, 378, '1', 0),
(1073, 2, 23, 378, '1', 0),
(1074, 2, 27, 378, '1', 0),
(1075, 2, 9, 378, '1', 0),
(1076, 2, 1, 378, '1', 0),
(1077, 2, 2, 378, '1', 0),
(1078, 2, 3, 378, '1', 0),
(1079, 2, 4, 378, '1', 0),
(1080, 2, 79, 61, '1', 0),
(1081, 2, 79, 85, '1', 0),
(1083, 2, 20, 378, '1', 0),
(1084, 2, 21, 378, '1', 0),
(1085, 2, 19, 378, '1', 0),
(1117, 2, 80, 222, '1', 0),
(1118, 2, 80, 12, '1', 0),
(1119, 2, 80, 28, '1', 0),
(1121, 2, 86, 225, '1', 0),
(1162, 1, 22, 16, '46', 0),
(1163, 1, 22, 18, '1', 0),
(1164, 1, 22, 17, '1', 0),
(1165, 1, 22, 152, 'Vards_Uzvards;VÄ«rietis;Septembris 16, 1998;E19A8DCE9DCE555DD84A4B947A88C737', 0),
(1166, 1, 22, 160, '1', 0),
(1167, 1, 22, 2, '697359', 0),
(1205, 1, 23, 16, '36', 0),
(1206, 1, 23, 18, '1', 0),
(1207, 1, 23, 17, '1', 0),
(1208, 1, 23, 152, 'Vards_Uzvards;VÄ«rietis;JanvÄris 1, 2002;2C14C23B7445C991187C6C264CE49DB4', 0),
(1209, 1, 23, 160, '1', 0),
(1210, 1, 23, 2, '841338', 0),
(1211, 1, 23, 134, '1000', 0),
(1320, 2, 86, 4, '19', 0),
(1359, 2, 86, 2, '588260', 0),
(1486, 2, 86, 134, '137', 0),
(1519, 2, 86, 273, '1', 0),
(1520, 2, 86, 258, '1', 0),
(1521, 2, 86, 264, '1', 0),
(1522, 2, 86, 261, '1', 0),
(1523, 2, 86, 270, '1', 0),
(1524, 2, 86, 267, '1', 0),
(1539, 2, 86, 378, '1', 0),
(1604, 1, 15, 330, '1', 0),
(1605, 2, 86, 378, '1', 0),
(1608, 1, 15, 64, 'FBI | Agent #044 | T.Lawrance', 0),
(1613, 2, 88, 378, '1', 0),
(1621, 1, 19, 152, 'Matthew_Hudson;VÄ«rietis;JanvÄris 1, 2002;DAACCA91FED2504EA0BA28E27495F17A', 0),
(1628, 2, 97, 2, '832638', 0),
(1634, 1, 19, 115, '41:1:Spraycan', 0),
(1674, 1, 19, 115, '41:1:Spraycan', 0),
(1678, 1, 19, 315, '1985 Audi 5000 Quattro, Matthew Hudson ((94))', 0),
(1681, 1, 19, 315, '1985 Audi Coupe GT, Matthew Hudson ((95))', 0),
(1684, 1, 19, 315, '1965 Ford Mustang Fastback, Matthew Hudson ((96))', 0),
(1708, 1, 19, 4, '553', 0),
(1709, 1, 19, 73, '16', 0),
(1735, 1, 19, 330, '1', 0),
(1755, 1, 19, 157, '1', 0),
(1820, 1, 24, 16, '179', 0),
(1821, 1, 24, 18, '1', 0),
(1822, 1, 24, 17, '1', 0),
(1823, 1, 24, 152, 'Steve_Ellis;VÄ«rietis;JanvÄris 1, 1975;6F77BA8B6506F8A6A00FECF21F19AF60', 0),
(1824, 1, 24, 160, '1', 0),
(1825, 1, 24, 2, '374424', 0),
(1826, 1, 24, 134, '1000', 0),
(1827, 1, 24, 115, '31:mp9B0p9tN8bR0v1t0Hg80Q:M4 (D)', 0),
(1829, 1, 24, 116, '31:0:Ammopack for M4 (D)', 0),
(1830, 1, 24, 116, '31:0:Ammopack for M4 (D)', 0),
(1831, 1, 24, 116, '31:0:Ammopack for M4 (D)', 0),
(1832, 1, 24, 115, '24:mt9B0p9tN8bR0v1t0Hg80Q:Deagle (D)', 0),
(1833, 1, 24, 116, '24:7:Ammopack for Deagle (D)', 0),
(1834, 1, 24, 116, '24:7:Ammopack for Deagle (D)', 0),
(1835, 1, 24, 116, '24:7:Ammopack for Deagle (D)', 0),
(1836, 1, 24, 116, '24:7:Ammopack for Deagle (D)', 0),
(1837, 1, 24, 116, '24:7:Ammopack for Deagle (D)', 0),
(1838, 1, 24, 115, '3:OF9B0p9tN8bR0v1t0Hg80Q:Nightstick (D)', 0),
(1840, 1, 24, 116, '31:41:Ammopack for M4 (D)', 0),
(1852, 2, 1, 85, '1', 0),
(1862, 2, 1, 61, '1', 0),
(1874, 2, 41, 378, '1', 0),
(1875, 2, 42, 378, '1', 0),
(1876, 2, 43, 378, '1', 0),
(1877, 2, 44, 378, '1', 0),
(1878, 2, 45, 378, '1', 0),
(1879, 2, 46, 378, '1', 0),
(1880, 2, 47, 378, '1', 0),
(1881, 2, 48, 378, '1', 0),
(1882, 2, 49, 378, '1', 0),
(1883, 2, 50, 378, '1', 0),
(1884, 2, 51, 378, '1', 0),
(1885, 2, 52, 378, '1', 0),
(1886, 2, 53, 378, '1', 0),
(1887, 2, 54, 378, '1', 0),
(1888, 2, 55, 378, '1', 0),
(1889, 2, 56, 378, '1', 0),
(1890, 2, 57, 378, '1', 0),
(1891, 2, 58, 378, '1', 0),
(1892, 2, 59, 378, '1', 0),
(1893, 2, 60, 378, '1', 0),
(1894, 2, 61, 378, '1', 0),
(1895, 2, 62, 378, '1', 0),
(1896, 2, 63, 378, '1', 0),
(1897, 2, 64, 378, '1', 0),
(1898, 2, 65, 378, '1', 0),
(1899, 2, 66, 378, '1', 0),
(1900, 2, 67, 378, '1', 0),
(1901, 2, 68, 378, '1', 0),
(1902, 2, 69, 378, '1', 0),
(1903, 2, 37, 378, '1', 0),
(1904, 2, 38, 378, '1', 0),
(1905, 2, 36, 378, '1', 0),
(1906, 2, 39, 378, '1', 0),
(1907, 2, 40, 378, '1', 0),
(1908, 2, 102, 378, '1', 0),
(1909, 2, 103, 378, '1', 0),
(1910, 2, 104, 378, '1', 0),
(1911, 2, 105, 378, '1', 0),
(1912, 2, 106, 378, '1', 0),
(1913, 2, 107, 378, '1', 0),
(1914, 2, 108, 378, '1', 0),
(1915, 2, 109, 378, '1', 0),
(1916, 2, 110, 378, '1', 0),
(1917, 2, 111, 378, '1', 0),
(1918, 2, 112, 378, '1', 0),
(1919, 2, 113, 378, '1', 0),
(1920, 2, 114, 378, '1', 0),
(1921, 2, 115, 378, '1', 0),
(1922, 2, 116, 378, '1', 0),
(1936, 2, 116, 121, '1177', 0),
(2139, 1, 19, 133, 'Matthew Hudson', 0),
(2141, 1, 19, 133, 'Matthew Hudson', 0),
(2160, 1, 19, 315, '1955 Chevrolet Bel-Air, Matthew Hudson ((119))', 0),
(2163, 1, 19, 315, '1991 Volkswagen Corrado, Matthew Hudson ((120))', 0),
(2166, 1, 19, 315, '1966 Ford Fairlane, Matthew Hudson ((121))', 0),
(2177, 1, 15, 133, 'Thomas Lawrance', 0),
(2183, 1, 19, 315, '1981 Lincoln Town Car, Matthew Hudson ((122))', 0),
(2186, 1, 19, 315, '1996 Land Rover Defender 110, Matthew Hudson ((123))', 0),
(2190, 1, 19, 315, '1992 Jeep Cherokee, Matthew Hudson ((124))', 0),
(2201, 2, 118, 378, '1', 0),
(2231, 1, 22, 134, '978', 0),
(2296, 1, 14, 16, '126:58', 0),
(2518, 1, 15, 19, '1', 0),
(2524, 1, 19, 116, '30:25:Ammo for AK-47', 0),
(2525, 1, 19, 115, '30:mt9R0o9ZN8QZmvQY0Hh80Q:AK-47::', 0),
(2526, 1, 19, 116, '30:30:Ammo for AK-47', 0),
(2527, 1, 19, 116, '30:30:Ammo for AK-47', 0),
(2529, 1, 19, 133, 'Matthew Hudson', 0),
(2531, 1, 19, 47, '1', 0),
(2656, 1, 19, 45, '1', 0),
(2660, 1, 19, 3, '97', 0),
(2672, 1, 14, 2, '123123', 0),
(2688, 1, 20, 72, 'robeÅ¾as, caurumi,', 0),
(2689, 1, 20, 72, 'LSAK mappings', 0),
(2690, 1, 20, 72, 'db jÄparÄ«ra, no sÅ«diem, piezÄ«mÄ“m utt', 0),
(2691, 1, 20, 72, 'tool, pie rshaul', 0),
(2695, 2, 97, 378, '1', 0),
(2699, 1, 25, 16, '21', 0),
(2700, 1, 25, 18, '1', 0),
(2701, 1, 25, 17, '1', 0),
(2702, 1, 25, 152, 'Khalil_Coleman;VÄ«rietis;JÅ«lijs 14, 2000;3750825BA21E3AC4C4FD901CE0DF2F41', 0),
(2703, 1, 25, 160, '1', 0),
(2704, 1, 25, 2, '321157', 0),
(2707, 1, 25, 134, '1000', 0),
(2713, 1, 20, 152, 'Tomy_Melty;VÄ«rietis;JanvÄris 1, 1998;3B99F8C2CC6EC02683702C95A4EB243F', 0),
(2716, 1, 20, 72, 'RADIO MAÅ ÄªNÄ€S', 0),
(2717, 1, 20, 72, 'chechpoints random, zils', 0),
(2726, 1, 21, 401, 'x1 ÄŒaulÄ«te no 9mm Kalibra', 0),
(2728, 1, 21, 401, 'x2 ÄŒaulÄ«tes no 9mm Kalibra', 0),
(2729, 1, 21, 401, 'x5 ÄŒaulÄ«tes no 9mm Kalibra', 0),
(2749, 1, 26, 16, '7', 0),
(2750, 1, 26, 18, '1', 0),
(2751, 1, 26, 17, '1', 0),
(2752, 1, 26, 152, 'Steven_Sigal;VÄ«rietis;JanvÄris 1, 2003;CE2EB593827B188B515D93D62EC85CF9', 0),
(2753, 1, 26, 160, '1', 0),
(2754, 1, 26, 2, '421154', 0),
(2755, 1, 26, 134, '1000', 0),
(2765, 1, 19, 114, '1073', 0),
(2766, 2, 36, 378, '1', 0),
(2767, 2, 37, 378, '1', 0),
(2768, 2, 38, 378, '1', 0),
(2769, 2, 39, 378, '1', 0),
(2770, 2, 40, 378, '1', 0),
(2771, 2, 41, 378, '1', 0),
(2772, 2, 42, 378, '1', 0),
(2773, 2, 43, 378, '1', 0),
(2774, 2, 44, 378, '1', 0),
(2775, 2, 45, 378, '1', 0),
(2776, 2, 46, 378, '1', 0),
(2777, 2, 47, 378, '1', 0),
(2778, 2, 48, 378, '1', 0),
(2779, 2, 49, 378, '1', 0),
(2780, 2, 50, 378, '1', 0),
(2781, 2, 51, 378, '1', 0),
(2782, 2, 52, 378, '1', 0),
(2783, 2, 53, 378, '1', 0),
(2784, 2, 54, 378, '1', 0),
(2785, 2, 55, 378, '1', 0),
(2786, 2, 56, 378, '1', 0),
(2787, 2, 57, 378, '1', 0),
(2788, 2, 58, 378, '1', 0),
(2789, 2, 59, 378, '1', 0),
(2790, 2, 60, 378, '1', 0),
(2791, 2, 61, 378, '1', 0),
(2792, 2, 62, 378, '1', 0),
(2793, 2, 63, 378, '1', 0),
(2794, 2, 64, 378, '1', 0),
(2795, 2, 65, 378, '1', 0),
(2796, 2, 66, 378, '1', 0),
(2797, 2, 67, 378, '1', 0),
(2798, 2, 68, 378, '1', 0),
(2799, 2, 69, 378, '1', 0),
(2800, 2, 102, 378, '1', 0),
(2801, 2, 103, 378, '1', 0),
(2802, 2, 104, 378, '1', 0),
(2803, 2, 105, 378, '1', 0),
(2804, 2, 106, 378, '1', 0),
(2805, 2, 107, 378, '1', 0),
(2806, 2, 108, 378, '1', 0),
(2807, 2, 109, 378, '1', 0),
(2808, 2, 110, 378, '1', 0),
(2809, 2, 111, 378, '1', 0),
(2810, 2, 112, 378, '1', 0),
(2811, 2, 113, 378, '1', 0),
(2812, 2, 114, 378, '1', 0),
(2813, 2, 115, 378, '1', 0),
(2814, 2, 116, 378, '1', 0),
(2817, 1, 20, 115, '22:mp9V0p9ZN8hw08gq0v580Q:Colt 45::', 0),
(2818, 1, 19, 265, '1', 0),
(2821, 1, 19, 259, '1', 0),
(2824, 1, 19, 116, '30:24:Ammo for AK-47', 0),
(2887, 1, 20, 315, '1979 Volvo 242, Tomy Melty ((118))', 0),
(2888, 1, 20, 3, '125', 0),
(2914, 1, 20, 157, '1', 0),
(2922, 1, 20, 3, '126', 0),
(2930, 1, 20, 3, '127', 0),
(2958, 1, 20, 3, '128', 0),
(2968, 1, 20, 116, '22:0:Ammo for Colt 45', 0),
(2971, 2, 125, 378, '1', 0),
(2974, 1, 20, 72, 'kioski dirsÄ', 0),
(2978, 1, 21, 181, '15', 0),
(2981, 1, 21, 10, '1', 0),
(2988, 2, 102, 121, '20', 0),
(2989, 2, 102, 121, '20', 0),
(2990, 2, 102, 121, '20', 0),
(2991, 2, 102, 121, '20', 0),
(2992, 2, 102, 121, '20', 0),
(2993, 2, 102, 121, '20', 0),
(2994, 2, 102, 121, '20', 0),
(2995, 2, 102, 121, '20', 0),
(3000, 1, 15, 134, '4500', 0),
(3007, 1, 19, 134, '63513', 0),
(3011, 1, 20, 134, '456823', 0),
(3012, 1, 27, 134, '1000', 0),
(3013, 1, 28, 16, '14', 0),
(3014, 1, 28, 18, '1', 0),
(3015, 1, 28, 17, '1', 0),
(3016, 1, 28, 152, 'Joseph_Chan;VÄ«rietis;JanvÄris 1, 2003;BEAC344886647CFCE9933C99C1906186', 0),
(3017, 1, 28, 160, '1', 0),
(3018, 1, 28, 2, '549264', 0),
(3019, 1, 28, 134, '1000', 0),
(3020, 1, 14, 134, '796043', 0),
(3021, 1, 21, 134, '1112', 0),
(3022, 2, 126, 378, '1', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `jailed`
--

CREATE TABLE `jailed` (
  `id` int(11) NOT NULL,
  `charid` int(11) NOT NULL,
  `charactername` text NOT NULL,
  `jail_time` bigint(12) NOT NULL,
  `convictionDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` text NOT NULL,
  `charges` text NOT NULL,
  `cell` text NOT NULL,
  `fine` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `jobs`
--

CREATE TABLE `jobs` (
  `jobID` int(11) NOT NULL DEFAULT '0',
  `jobCharID` int(11) NOT NULL DEFAULT '-1',
  `jobLevel` int(11) NOT NULL DEFAULT '1',
  `jobProgress` int(11) NOT NULL DEFAULT '0',
  `jobTruckingRuns` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves job info, skill level and progress - Maxime' ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `jobs`
--

INSERT INTO `jobs` (`jobID`, `jobCharID`, `jobLevel`, `jobProgress`, `jobTruckingRuns`) VALUES
(5, 1, 1, 0, 0),
(5, 6, 1, 0, 0),
(5, 14, 1, 0, 0),
(20, 14, 1, 0, 0),
(1, 20, 5, 0, 0),
(20, 20, 1, 0, 0),
(5, 20, 1, 0, 0),
(4, 20, 1, 0, 0),
(5, 19, 1, 0, 0),
(3, 19, 1, 0, 0),
(2, 19, 1, 0, 0),
(4, 19, 1, 0, 0),
(6, 19, 1, 0, 0),
(3, 20, 1, 0, 0),
(1, 19, 5, 0, 0),
(2, 20, 1, 0, 0),
(8, 19, 1, 0, 0),
(9, 19, 1, 0, 0),
(20, 21, 1, 0, 0),
(3, 21, 1, 0, 0),
(1, 21, 1, 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `jobs_trucker_orders`
--

CREATE TABLE `jobs_trucker_orders` (
  `orderID` int(11) NOT NULL,
  `orderX` float NOT NULL DEFAULT '0',
  `orderY` float NOT NULL DEFAULT '0',
  `orderZ` float NOT NULL DEFAULT '0',
  `orderWeight` int(11) NOT NULL DEFAULT '0',
  `orderName` text NOT NULL,
  `orderInterior` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves info about customer orders to create markers for truck';

--
-- Gegevens worden geëxporteerd voor tabel `jobs_trucker_orders`
--

INSERT INTO `jobs_trucker_orders` (`orderID`, `orderX`, `orderY`, `orderZ`, `orderWeight`, `orderName`, `orderInterior`) VALUES
(25, 1372.03, -1772.67, 13.2439, 0, 'Commerce drÄ“bju veikals', 0),
(26, 1733.34, -1860.23, 13.2016, 0, 'Unity stacija', 0),
(27, 2126.98, -1804.28, 13.2631, 0, 'Idlewood picÄ“rija', 0),
(28, 2222.67, -1154.71, 25.4736, 0, 'Jefferson motelis', 0),
(29, 2333.07, -1370.24, 23.716, 0, 'East Los Santos atpÅ«tas centrs', 0),
(30, 2246.98, -1661.75, 15.082, 0, 'Binco drÄ“bju veikals', 0),
(31, 2755.54, -2444.7, 13.2654, 0, 'Ocean Docks', 0),
(32, 1062.35, -1706.66, 13.1705, 0, 'Verona Beach Papercuts Market', 0),
(33, 1083.93, -926.076, 42.9897, 0, 'Mulholland Sex Shop', 0),
(34, 1196.26, -887.933, 42.7466, 0, 'Mulholland Burger shot', 0),
(35, 667.076, -582.027, 16.045, 0, 'Dillimore benzÄ«ntanka', 0),
(36, 209.104, -167.108, 1.28723, 0, 'Blueberry picÄ“rija', 0),
(37, 148.605, -1764.88, 4.4203, 0, 'Santa Maria Beach laivu veikals', 0),
(38, -54.9072, -224.107, 5.13874, 0, 'Red County noliktavas', 0),
(39, 1367.76, 478.502, 19.8216, 0, 'Montgomery benzÄ«ntanks', 0),
(40, 2280.96, -49.5098, 26.7288, 0, 'Palomino Creek baznÄ«ca', 0),
(41, 2815.06, -1087.52, 30.4574, 0, 'Las Colinas biroju centrs', 0),
(42, 2370.51, -1908.32, 13.0919, 0, 'Willowfield Cluckin bell', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `leo_impound_lot`
--

CREATE TABLE `leo_impound_lot` (
  `lane` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `ry` float NOT NULL,
  `rz` float NOT NULL,
  `int` float NOT NULL,
  `dim` float NOT NULL,
  `faction` int(11) NOT NULL,
  `veh` int(11) NOT NULL DEFAULT '0',
  `fine` int(11) NOT NULL DEFAULT '0',
  `release_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lifts`
--

CREATE TABLE `lifts` (
  `id` int(11) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lift_floors`
--

CREATE TABLE `lift_floors` (
  `id` int(11) NOT NULL,
  `lift` int(11) NOT NULL,
  `x` float(10,6) DEFAULT '0.000000',
  `y` float(10,6) DEFAULT '0.000000',
  `z` float(10,6) DEFAULT '0.000000',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `floor` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `loan`
--

CREATE TABLE `loan` (
  `id` int(11) NOT NULL,
  `ammount` int(11) NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL DEFAULT '0',
  `daily` int(11) NOT NULL DEFAULT '0',
  `charid` int(11) NOT NULL DEFAULT '0',
  `payback` int(11) NOT NULL DEFAULT '0',
  `dayspayback` int(11) NOT NULL DEFAULT '0',
  `warn` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `loan`
--

INSERT INTO `loan` (`id`, `ammount`, `days`, `daily`, `charid`, `payback`, `dayspayback`, `warn`) VALUES
(125, 30000, 10, 3750, 123, 0, 0, 0),
(129, 5000, 50, 125, 94, 2625, 21, 0),
(138, 5000, 50, 125, 93, 2375, 19, 1),
(139, 30000, 50, 750, 279, 3000, 4, 3),
(181, 30000, 1, 37500, 166, 0, 0, 3),
(208, 30000, 30, 1250, 236, 0, 0, 0),
(315, 30000, 21, 1786, 79, 0, 0, 0),
(362, 20000, 50, 500, 213, 4000, 8, 0),
(478, 20000, 50, 500, 448, 500, 1, 3),
(590, 20000, 50, 500, 254, 1000, 2, 3),
(592, 30000, 50, 750, 139, 6000, 8, 0),
(593, 30000, 50, 750, 233, 0, 0, 0),
(594, 30000, 50, 750, 388, 4500, 6, 0),
(619, 30000, 30, 1250, 397, 0, 0, 0),
(625, 30000, 50, 750, 339, 1500, 2, 0),
(627, 30000, 50, 750, 238, 0, 0, 0),
(643, 30000, 50, 750, 250, 0, 0, 0),
(644, 30000, 50, 750, 672, 0, 0, 0),
(645, 30000, 50, 750, 628, 1500, 2, 3),
(646, 30000, 50, 750, 642, 18750, 25, 0),
(648, 30000, 50, 750, 11, 0, 0, 0),
(649, 18000, 50, 450, 446, 0, 0, 3),
(650, 30000, 50, 750, 134, 14250, 19, 0),
(655, 30000, 50, 750, 699, 3000, 4, 0),
(663, 30000, 1, 37500, 709, 0, 0, 2),
(664, 30000, 50, 750, 352, 0, 0, 3),
(667, 30000, 50, 750, 424, 750, 1, 0),
(694, 30000, 50, 750, 347, 0, 0, 0),
(695, 30000, 50, 750, 681, 0, 0, 0),
(696, 30000, 50, 750, 291, 0, 0, 1),
(726, 30000, 20, 1875, 42, 0, 0, 0),
(728, 30000, 50, 750, 119, 0, 0, 3),
(729, 30000, 50, 750, 120, 750, 1, 2),
(731, 30000, 1, 37500, 765, 0, 0, 0),
(733, 30000, 50, 750, 632, 0, 0, 0),
(768, 30000, 1, 37500, 342, 0, 0, 3),
(781, 14000, 20, 875, 641, 0, 0, 3),
(785, 30000, 50, 750, 188, 1500, 2, 3),
(847, 8000, 50, 200, 292, 2400, 12, 3),
(850, 20000, 50, 500, 764, 6500, 13, 3),
(852, 30000, 50, 750, 783, 0, 0, 3),
(857, 30000, 30, 1250, 1, 20000, 16, 3),
(903, 30000, 50, 750, 690, 0, 0, 3),
(904, 30000, 50, 750, 782, 1500, 2, 1),
(923, 30000, 50, 750, 720, 9000, 12, 3),
(924, 30000, 50, 750, 334, 17250, 23, 3),
(930, 30000, 50, 750, 679, 5250, 7, 0),
(932, 20000, 50, 500, 836, 0, 0, 3),
(934, 30000, 50, 750, 835, 0, 0, 1),
(935, 30000, 50, 750, 273, 750, 1, 1),
(942, 30000, 1, 37500, 729, 0, 0, 0),
(943, 30000, 50, 750, 332, 0, 0, 0),
(944, 30000, 50, 750, 406, 0, 0, 1),
(948, 30000, 1, 37500, 648, 0, 0, 3),
(950, 30000, 50, 750, 849, 6000, 8, 3),
(957, 30000, 50, 750, 335, 0, 0, 1),
(1000, 30000, 50, 750, 815, 11250, 15, 0),
(1008, 30000, 5, 7500, 718, 0, 0, 0),
(1032, 30000, 50, 750, 61, 3750, 5, 2),
(1035, 30000, 30, 1250, 472, 2500, 2, 2),
(1045, 30000, 50, 750, 882, 0, 0, 0),
(1046, 30000, 50, 750, 756, 0, 0, 1),
(1047, 30000, 50, 750, 340, 0, 0, 1),
(1067, 20000, 50, 500, 80, 9500, 19, 0),
(1069, 30000, 50, 750, 852, 0, 0, 3),
(1070, 30000, 20, 1875, 202, 0, 0, 0),
(1095, 5000, 50, 125, 739, 500, 4, 0),
(1096, 30000, 50, 750, 328, 3750, 5, 0),
(1100, 25000, 50, 625, 959, 1250, 2, 0),
(1103, 30000, 50, 750, 819, 0, 0, 3),
(1104, 30000, 50, 750, 901, 0, 0, 0),
(1106, 30000, 30, 1250, 935, 1250, 1, 0),
(1107, 30000, 50, 750, 689, 3000, 4, 2),
(1108, 30000, 50, 750, 828, 1500, 2, 0),
(1109, 30000, 50, 750, 668, 14250, 19, 0),
(1112, 30000, 50, 750, 77, 0, 0, 3),
(1113, 30000, 50, 750, 886, 0, 0, 0),
(1114, 30000, 50, 750, 441, 4500, 6, 0),
(1115, 30000, 50, 750, 240, 0, 0, 3),
(1116, 30000, 50, 750, 682, 14250, 19, 0),
(1117, 30000, 50, 750, 643, 750, 1, 1),
(1118, 30000, 50, 750, 278, 0, 0, 0),
(1119, 500, 50, 13, 706, 247, 19, 0),
(1120, 30000, 50, 750, 860, 0, 0, 3),
(1124, 15000, 50, 375, 1023, 2625, 7, 0),
(1125, 30000, 50, 750, 78, 9000, 12, 0),
(1126, 20000, 45, 556, 700, 2224, 4, 0),
(1127, 30000, 15, 2500, 915, 10000, 4, 0),
(1129, 30000, 50, 750, 732, 0, 0, 3),
(1130, 30000, 50, 750, 991, 0, 0, 0),
(1131, 30000, 1, 37500, 197, 0, 0, 0),
(1134, 30000, 50, 750, 1009, 750, 1, 0),
(1135, 30000, 15, 2500, 982, 12500, 5, 0),
(1139, 30000, 50, 750, 754, 3000, 4, 3),
(1144, 30000, 50, 750, 913, 0, 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lottery`
--

CREATE TABLE `lottery` (
  `characterid` int(255) NOT NULL,
  `ticketnumber` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `mdc_apb`
--

CREATE TABLE `mdc_apb` (
  `id` int(11) NOT NULL,
  `person_involved` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `doneby` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `organization` varchar(10) NOT NULL DEFAULT 'LSPD'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `mdc_apb`
--

INSERT INTO `mdc_apb` (`id`, `person_involved`, `description`, `doneby`, `time`, `organization`) VALUES
(1, 'Isaac Bennett', 'BÄ“gÅ¡ana no policijas, nepareizas gaismas, agresÄ«va braukÅ¡ana. Persona nav vÄ“l sodÄ«ta.\n', 54, 1533743849, 'LSPD'),
(2, 'Clifton Hayden', 'AKTÄªVS ARESTA ORDERIS - TIESAS KAVÄ’Å ANA, - (M) Valsts amatpersonas darba traucÄ“Å¡ana\r\n\r\n- (M) LÄ«dzdalÄ«ba noziegumÄ (bÄ“gÅ¡ana no policijas)\r\n\r\n- (TRAFFIC) TÄlruÅ†a lietoÅ¡ana pie automaÅ¡Ä«nas stÅ«res\n', 57, 1533807140, 'LSPD'),
(3, 'Brian Whiteman', 'AKTÄªVS ARESTA ORDERIS - SLEPKAVÄªBA IEKÅ  LSGD; ATBRÄªVOÅ ANÄ€S NO PIERÄ€DÄªJUMIEM\n', 57, 1533910502, 'LSPD'),
(4, 'Bruce Martinez iespÄ“jams.', 'BÄ“gÅ¡ana no policijas, 2016 gada balts Subaru WRX, nummurzÄ«me: GROWSMIL\n', 60, 1534452586, 'LSPD');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `mdc_calls`
--

CREATE TABLE `mdc_calls` (
  `id` int(11) NOT NULL,
  `caller` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `mdc_calls`
--

INSERT INTO `mdc_calls` (`id`, `caller`, `number`, `description`, `timestamp`) VALUES
(1, '2', '402037', 'nil - Ja', '2018-07-01 20:33:05'),
(2, '11', '331919', 'nil - Ne, personas nav cietusas', '2018-07-02 20:12:23'),
(3, '14', '642053', 'nil - No', '2018-07-02 23:17:26'),
(4, '10', '832376', 'nil - NO', '2018-07-03 08:39:07'),
(5, '10', '832376', 'nil - No', '2018-07-03 09:42:09'),
(6, '10', '832376', 'nil - Noi', '2018-07-03 14:10:21'),
(7, '78', '562790', 'nil - No', '2018-07-03 14:45:36'),
(8, '78', '562790', 'nil - No', '2018-07-03 14:49:38'),
(9, '10', '832376', 'nil - No', '2018-07-03 16:41:40'),
(10, '10', '832376', 'nil - Zaebal jau viÅ†s', '2018-07-03 16:45:51'),
(11, '10', '832376', 'nil - No', '2018-07-03 17:08:15'),
(12, '10', '832376', 'nil - DabÅ«jiet mani arÄ', '2018-07-03 17:23:36'),
(13, '93', '786789', 'nil - No', '2018-07-04 14:04:42'),
(14, '10', '355014', 'nil - No', '2018-07-04 15:08:41'),
(15, '10', '355014', 'nil - No', '2018-07-04 15:34:43'),
(16, '10', '355014', 'nil - No', '2018-07-04 20:13:50'),
(17, '10', '355014', 'nil - No', '2018-07-04 20:16:50'),
(18, '164', '591589', 'nil - Nhe', '2018-07-04 20:40:21'),
(19, '10', '355014', 'nil - No', '2018-07-05 12:12:07'),
(20, '49', '784226', 'nil - Esmu pie Å¾oga.', '2018-07-05 14:43:55'),
(21, '10', '355014', 'nil - No', '2018-07-05 15:06:12'),
(22, '5', '680050', 'nil - JÄ, nelaimes gadÄ«jums noticis tieÅ¡i priekÅ¡Ä domei!', '2018-07-05 16:49:19'),
(23, '10', '355014', 'nil - No', '2018-07-06 09:20:32'),
(24, '10', '355014', 'nil - No', '2018-07-06 16:44:56'),
(25, '10', '355014', 'nil - No', '2018-07-06 19:32:25'),
(26, '10', '355014', 'nil - No', '2018-07-06 19:33:53'),
(27, '5', '680050', 'nil - No', '2018-07-06 22:23:58'),
(28, '10', '355014', 'nil - Mani notrieca gandriz', '2018-07-07 09:15:12'),
(29, '10', '355014', 'nil - No', '2018-07-07 10:23:43'),
(30, '167', '661019', 'nil - No', '2018-07-07 10:59:44'),
(31, '10', '355014', 'nil - PALIGA', '2018-07-07 11:35:03'),
(32, '10', '355014', 'nil - No', '2018-07-07 12:13:07'),
(33, '10', '355014', 'nil - No', '2018-07-07 18:19:34'),
(34, '10', '355014', 'nil - Vajag atros steidzami', '2018-07-07 18:45:46'),
(35, '45', '560947', 'nil - No', '2018-07-07 19:06:54'),
(36, '81', '359764', 'nil - No', '2018-07-07 20:27:21'),
(37, '81', '359764', 'nil - No', '2018-07-07 20:30:05'),
(38, '15', '695531', 'nil - Lspd', '2018-07-08 08:51:48'),
(39, '3', '436925', 'nil - No', '2018-07-08 14:04:26'),
(40, 'Unknown Person', 'Hidden Num', 'gribu seksu - gmlounge', '2018-07-08 14:09:07'),
(41, '45', '560947', 'nil - No', '2018-07-08 14:49:58'),
(42, '5', '680050', 'nil - No', '2018-07-08 14:53:51'),
(43, '5', '680050', 'nil - No', '2018-07-08 14:55:07'),
(44, '5', '680050', 'nil - Atrodamies pret alahabra klubam serviss Little Italy garage', '2018-07-08 14:56:20'),
(45, '5', '680050', 'nil - No', '2018-07-08 14:58:32'),
(46, '5', '680050', 'nil - Atrodamies tieÅ¡i pretÄ« alahambra klubam', '2018-07-08 15:00:46'),
(47, '5', '680050', 'nil - Atrodamies pret alahambra klubu bÄ¼Ä“ pisaties Å¡urp pidari jau 5h gaidu jÅ«s lohus', '2018-07-08 15:02:56'),
(48, '12', '800800', 'nil - Sausmas te nomirusi daudzi dvai atrak ja', '2018-07-08 15:07:31'),
(49, '5', '680050', 'nil - Atrodamies pie alahambra kluba', '2018-07-08 15:08:54'),
(50, '5', '680050', 'nil - Pie IGS', '2018-07-08 15:43:28'),
(51, '5', '680050', 'nil - Pie IGS', '2018-07-08 15:44:23'),
(52, '164', '591589', 'nil - Atri brauciet', '2018-07-08 18:01:22'),
(53, '316', '832682', 'nil - Ne', '2018-07-08 18:08:02'),
(54, '167', '661019', 'nil - No', '2018-07-08 18:15:01'),
(55, '142', '354922', 'nil - No', '2018-07-09 14:47:24'),
(56, '142', '354922', 'nil - No', '2018-07-09 14:52:03'),
(57, '246', '557188', 'nil - No', '2018-07-09 17:13:45'),
(58, '316', '832682', 'nil - Atri gibil', '2018-07-09 21:48:43'),
(59, '5', '680050', 'nil - Tak bÄ¼e jebal tevi janka', '2018-07-09 21:50:28'),
(60, '5', '680050', 'nil - JÄ janka runÄju ar tevi!', '2018-07-09 21:51:46'),
(61, '355', '526744', 'nil - Es redzeju jipu ka vinam brauca pakal stavu tagad pie jipa', '2018-07-09 22:04:23'),
(62, '355', '526744', 'nil - No', '2018-07-09 22:09:54'),
(63, '10', '355014', 'nil - Help', '2018-07-10 11:13:23'),
(64, '10', '355014', 'nil - No', '2018-07-10 11:28:07'),
(65, '164', '591589', 'nil - Ne', '2018-07-10 13:05:28'),
(66, '5', '680050', 'nil - ViÅ†iem ir gÄzmaskas', '2018-07-10 19:56:25'),
(67, '49', '784226', 'nil - No', '2018-07-10 21:19:17'),
(68, '202', '381737', 'nil - No.', '2018-07-11 11:54:33'),
(69, '164', '591589', 'nil - Atri', '2018-07-11 14:15:09'),
(70, '383', '339787', 'nil - No', '2018-07-11 17:52:46'),
(71, '142', '354922', 'nil - No', '2018-07-11 18:05:16'),
(72, '142', '354922', 'nil - No', '2018-07-11 18:07:27'),
(73, '166', '665336', 'nil - NÄ“', '2018-07-11 18:15:51'),
(74, '326', '863620', 'nil - No', '2018-07-12 13:22:34'),
(75, '412', '333549', 'nil - PalÄ«gÄ', '2018-07-12 14:30:00'),
(76, '43', '339110', 'nil - ((no))', '2018-07-12 15:48:37'),
(77, '394', '534207', 'nil - No', '2018-07-12 16:31:11'),
(78, '394', '534207', 'nil - No', '2018-07-12 16:38:23'),
(79, '139', '406404', 'nil - No', '2018-07-12 21:36:58'),
(80, 'Unknown Person', 'Hidden Num', 'gggggggggggggg - ggggggggggggggggggg', '2018-07-13 08:03:45'),
(81, 'Unknown Person', 'Hidden Num', 'IzraisÄ«jusies avÄrija ,divu auto sadursme ,viens cietuÅ¡ais - Aiz LSPD', '2018-07-13 08:04:48'),
(82, '166', '665336', 'nil - Ätri', '2018-07-13 09:32:44'),
(83, '401', '426714', 'nil - No', '2018-07-13 13:55:33'),
(84, '401', '426714', 'nil - No', '2018-07-13 13:56:14'),
(85, 'Unknown Person', 'Hidden Num', 'Pie IGS ÄaÄ¼i ar naÅ¾iem - IGS', '2018-07-13 15:02:48'),
(86, 'Unknown Person', 'Hidden Num', 'LaupÄ«Å¡ana pie IGS - IGS;', '2018-07-13 15:23:49'),
(87, '208', '376843', 'nil - Ko', '2018-07-13 15:42:11'),
(88, '208', '376843', 'nil - No', '2018-07-13 15:43:35'),
(89, '412', '333549', 'nil - Ätri', '2018-07-13 15:45:06'),
(90, '412', '333549', 'nil - ÄÄÄtri', '2018-07-13 16:27:33'),
(91, 'Unknown Person', 'Hidden Num', 'DemoÄ“ - CSDD', '2018-07-13 16:32:48'),
(92, 'Unknown Person', 'Hidden Num', 'No bankas tiko iznÄcis meklÄ“tais Gregory Lane - Banka', '2018-07-14 09:38:21'),
(93, 'Unknown Person', 'Hidden Num', 'Gregory Lane ir iztukÅ¡ojis savu bankas kontu CSDD bankomÄtÄ. - CSDD', '2018-07-14 09:39:32'),
(94, '2', '402037', 'nil - No', '2018-07-14 09:42:14'),
(95, 'Unknown Person', 'Hidden Num', '** No Idlewood MÄjas #10 bÅ«tu dzirdama skaÄ¼a signalizÄcijas gaudoÅ¡ana ** - Pie picÄ“rijas.', '2018-07-14 14:21:10'),
(96, '465', '666923', 'nil - No', '2018-07-14 15:06:10'),
(97, '465', '666923', 'nil - Brauciet viÅ†u apcietinÄt tagat', '2018-07-14 17:26:46'),
(98, '13', '475511', 'nil - No', '2018-07-14 17:35:18'),
(99, 'Unknown Person', 'Hidden Num', 'Zils BMW pie picÄ“rijas bloÄ·Ä“ ceÄ¼u LSAK. - PicÄ“rija.', '2018-07-14 17:38:21'),
(100, 'Unknown Person', 'Hidden Num', 'Dokos tagad iebrauca meklÄ“tais Gregory Lane, viÅ†Å¡ ir pie konteinera - LS doki', '2018-07-14 18:05:51'),
(101, 'Unknown Person', 'Hidden Num', 'JoprojÄm atrodas dokos, viÅ†Å¡ tur noslÄ“pÄs. Tas ir Gregory Lane, Ä«stais! - Pie konteinera dokos.', '2018-07-14 18:07:04'),
(102, 'Unknown Person', 'Hidden Num', 'ViÅ†i stÄv lidostas stÄvvietÄ, ar ieroÄiem - Lidosta', '2018-07-14 18:10:19'),
(103, 'Unknown Person', 'Hidden Num', 'Å eit runÄ Gregory Lane. Sazinieties ar mani rÄcijÄ 111.1, tas ir svarÄ«gi. - #111.1', '2018-07-14 18:16:51'),
(104, '482', '421321', 'nil - TAVS TETIS LEZBIETE', '2018-07-14 18:51:47'),
(105, 'Unknown Person', 'Hidden Num', 'idLEWood mÄja #10 ,KÄda persona ar ieroci piedraudÄ“ja. - Blakus picÄ“rjai.', '2018-07-14 21:09:11'),
(106, '186', '328234', 'nil - No', '2018-07-15 10:24:09'),
(107, '7', '758983', 'nil - No.', '2018-07-15 17:57:33'),
(108, '93', '786789', 'nil - Viens no cietuÅ¡ajiem mirst', '2018-07-15 18:09:42'),
(109, '615', '758997', 'nil - No', '2018-07-15 19:39:26'),
(110, '615', '758997', 'nil - No', '2018-07-15 19:42:11'),
(111, '233', '822257', 'nil - No', '2018-07-15 19:46:11'),
(112, '619', '350679', 'nil - Braucat Ätri,viÅ†Å¡ gandriz mani notrieca', '2018-07-15 20:25:33'),
(113, '620', '373975', 'nil - No', '2018-07-15 20:45:17'),
(114, '397', '431005', 'nil - No.', '2018-07-16 12:58:57'),
(115, '615', '758997', 'nil - No', '2018-07-16 13:06:23'),
(116, '299', '540214', 'nil - No', '2018-07-16 13:30:42'),
(117, '615', '758997', 'nil - Esmu meÅ¾Ä sassiets ar striÄ·i', '2018-07-16 17:19:56'),
(118, '488', '792203', 'nil - No', '2018-07-16 19:18:49'),
(119, '340', '771409', 'nil - No', '2018-07-17 09:23:28'),
(120, '49', '784226', 'nil - AizdomÄ«gas personas.', '2018-07-17 13:26:42'),
(121, '645', '755963', 'nil - Ja', '2018-07-17 18:43:20'),
(122, '645', '755963', 'nil - Ne', '2018-07-17 18:44:12'),
(123, '636', '568586', 'nil - No', '2018-07-17 19:24:47'),
(124, '49', '784226', 'nil - Pie IGS', '2018-07-17 20:15:20'),
(125, '178', '757505', 'nil - No', '2018-07-17 20:18:45'),
(126, '642', '588274', 'nil - Netalu no dokiem', '2018-07-17 20:37:52'),
(127, '167', '661019', 'nil - Atrodamiesb blakuslÄ“to auto shopam pretÄ« El Carona XXX shopam', '2018-07-17 20:40:11'),
(128, '642', '588274', 'nil - Near to Liras butikken', '2018-07-17 20:46:58'),
(129, '70', '323320', 'nil - Laba jÄÅ†u zÄle, Liiigo, Liiigo', '2018-07-18 07:18:34'),
(130, '643', '554196', 'nil - No', '2018-07-18 13:55:33'),
(131, '672', '344689', 'nil - No', '2018-07-18 17:26:09'),
(132, '139', '406404', 'nil - NÄ“', '2018-07-18 18:04:31'),
(133, '636', '568586', 'nil - NelaiÅ¾ mani iekÅ¡a,durvis aizslÄ“gtas,brauciet Ätri', '2018-07-18 20:10:14'),
(134, '636', '568586', 'nil - LÅ«dzu brauciet ar ieroÄiem,man liekas ka viÅ†u aplaupa', '2018-07-18 20:12:28'),
(135, '636', '568586', 'nil - No', '2018-07-18 21:22:24'),
(136, '9', '636163', 'nil - AutomaÅ¡Ä«na tika nozagta Å¡odien, no garÄÅ¾as ar attaisÄmiem vÄrtiem', '2018-07-18 21:28:46'),
(137, '164', '591589', 'nil - Atri', '2018-07-18 22:47:41'),
(138, '643', '554196', 'nil - No', '2018-07-19 07:42:47'),
(139, '4', '695531', 'nil - PisÄs Å¡urp', '2018-07-19 08:35:11'),
(140, '171', '345605', 'nil - Esmu pie pizza stack', '2018-07-19 10:43:08'),
(141, '639', '378065', 'nil - No', '2018-07-19 12:22:39'),
(142, '394', '534207', 'nil - No', '2018-07-19 12:45:30'),
(143, '164', '591589', 'nil - Atri ble', '2018-07-19 13:38:53'),
(144, '11', '331919', 'nil - Atrasanas vieta pie picerijas netalu no pay n spray', '2018-07-19 14:03:20'),
(145, '639', '378065', 'nil - No', '2018-07-19 16:50:17'),
(146, '339', '545247', 'nil - No', '2018-07-19 17:07:50'),
(147, '639', '378065', 'nil - Aizvedisu sedesu sarkana moci', '2018-07-19 18:00:31'),
(148, '639', '378065', 'nil - No', '2018-07-20 13:33:45'),
(149, '632', '714229', 'nil - Ne', '2018-07-20 13:51:42'),
(150, '642', '588274', 'nil - Aizdomas par gangsteru uzbrukumu', '2018-07-20 17:40:18'),
(151, '639', '378065', 'nil - Pie policijas', '2018-07-20 17:45:34'),
(152, '632', '714229', 'nil - Neparedzams likums , un saule sopza auto bojats', '2018-07-21 10:32:00'),
(153, '718', '331952', 'nil - Ja atbruciet atri', '2018-07-21 20:12:05'),
(154, '340', '771409', 'nil - VainÄ«gas brauc melnÄ bobcatÄ', '2018-07-22 08:49:59'),
(155, '639', '378065', 'nil - No', '2018-07-22 12:49:24'),
(156, '709', '584966', 'nil - No', '2018-07-22 14:40:05'),
(157, '709', '584966', 'nil - Mani cenÅ¡as nosist ar nuju, pec lodes uzzinÄsim kam ierocis pieder', '2018-07-22 14:43:05'),
(158, '355', '526744', 'nil - No', '2018-07-22 14:50:09'),
(159, '636', '568586', 'nil - No', '2018-07-22 15:14:55'),
(160, '639', '378065', 'nil - No', '2018-07-22 15:17:06'),
(161, '347', '723340', 'nil - Netalu no IGS', '2018-07-22 15:17:55'),
(162, '164', '591589', 'nil - Atri', '2018-07-22 15:38:02'),
(163, '628', '411184', 'nil - Igs', '2018-07-22 17:59:51'),
(164, '639', '378065', 'nil - No', '2018-07-22 18:27:35'),
(165, '667', '465515', 'nil - No', '2018-07-22 19:33:42'),
(166, '697', '327512', 'nil - No', '2018-07-22 19:40:09'),
(167, '615', '758997', 'nil - No', '2018-07-22 19:52:22'),
(168, '762', '453710', 'nil - No', '2018-07-23 16:27:48'),
(169, '273', '329115', 'nil - NÄ“.', '2018-07-23 19:41:14'),
(170, '764', '412003', 'nil - No', '2018-07-23 19:53:02'),
(171, '765', '352744', 'nil - No', '2018-07-23 22:08:23'),
(172, '386', '865153', 'nil - No', '2018-07-23 22:46:02'),
(173, '764', '412003', 'nil - No', '2018-07-24 09:06:25'),
(174, '405', '707111', 'nil - No', '2018-07-24 12:46:56'),
(175, '765', '352744', 'nil - No', '2018-07-24 13:37:34'),
(176, '639', '378065', 'nil - NetÄlu no picerijas', '2018-07-25 11:09:21'),
(177, '639', '378065', 'nil - No', '2018-07-27 14:18:59'),
(178, '706', '415252', 'nil - JÄatrodamies lszd', '2018-07-27 14:19:20'),
(179, '615', '758997', 'nil - Esam netÄlu no stadiona pa kreisi tur ir daudz masinas tur mes esam', '2018-07-27 21:28:41'),
(180, '756', '794319', 'nil - No', '2018-07-28 09:52:49'),
(181, '829', '787663', 'nil - No', '2018-07-28 19:26:58'),
(182, '829', '787663', 'nil - Un sauj', '2018-07-28 19:38:55'),
(183, '639', '378065', 'nil - No', '2018-07-29 11:16:55'),
(184, '718', '331952', 'nil - No', '2018-07-29 19:57:06'),
(185, '718', '331952', 'nil - No', '2018-07-29 19:59:41'),
(186, '441', '528262', 'nil - NetÄlu no alahabra kluba', '2018-07-30 09:47:16'),
(187, '441', '528262', 'nil - No', '2018-07-30 11:39:17'),
(188, '386', '865153', 'nil - Nain', '2018-07-30 18:01:10'),
(189, '406', '733759', 'nil - AvÄrija notika pie laivam kur var nopirt', '2018-07-30 18:59:15'),
(190, '826', '400586', 'nil - No', '2018-07-31 11:29:36'),
(191, '386', '865153', 'nil - ..grasÄs apzagt IGS', '2018-07-31 13:44:06'),
(192, '679', '352794', 'nil - No', '2018-07-31 13:53:38'),
(193, '386', '865153', 'nil - No', '2018-08-01 11:05:08'),
(194, '764', '412003', 'nil - No', '2018-08-01 16:36:57'),
(195, '764', '412003', 'nil - No', '2018-08-01 18:55:33'),
(196, '725', '794675', 'nil - No', '2018-08-02 09:10:15'),
(197, '406', '752510', 'nil - No', '2018-08-02 12:09:04'),
(198, '61', '555528', 'nil - Brauciet steidzami', '2018-08-02 14:18:30'),
(199, '615', '758997', 'nil - No', '2018-08-02 14:42:45'),
(200, '405', '707111', 'nil - No', '2018-08-02 16:33:45'),
(201, '178', '757505', 'nil - No', '2018-08-02 18:34:29'),
(202, '764', '412003', 'nil - No', '2018-08-02 18:55:20'),
(203, '405', '707111', 'nil - No', '2018-08-02 20:16:53'),
(204, '1', '527248', 'nil - No', '2018-08-02 20:17:04'),
(205, '764', '412003', 'nil - No', '2018-08-02 20:21:45'),
(206, '764', '412003', 'nil - No', '2018-08-02 20:42:37'),
(207, '764', '412003', 'nil - No', '2018-08-02 20:53:17'),
(208, '644', '507509', 'nil - JÄ atrodamies pie pizza stack labotavas.', '2018-08-02 21:05:55'),
(209, '725', '794675', 'nil - Pie IGS Atri atros un policiju', '2018-08-03 11:58:32'),
(210, '644', '507509', 'nil - JÄ melns audi CilvÄ“ka vÄrds JevgÄ“Å†ijs un tiko bija pie igs', '2018-08-03 12:08:29'),
(211, '764', '412003', 'nil - No', '2018-08-03 13:32:26'),
(212, '644', '507509', 'nil - Steidzami braucat.', '2018-08-03 14:46:53'),
(213, '764', '412003', 'nil - No', '2018-08-03 15:51:44'),
(214, '927', '571435', 'nil - No', '2018-08-03 19:22:38'),
(215, '764', '412003', 'nil - No', '2018-08-03 19:48:21'),
(216, '405', '707111', 'nil - No', '2018-08-04 16:39:23'),
(217, '405', '707111', 'nil - No', '2018-08-04 16:58:39'),
(218, '706', '415252', 'nil - No', '2018-08-05 11:03:20'),
(219, '405', '707111', 'nil - No', '2018-08-05 12:15:04'),
(220, '725', '794675', 'nil - Pie idlewood picerijas', '2018-08-07 09:34:23'),
(221, '415', '436023', 'nil - No', '2018-08-07 13:36:41'),
(222, '913', '373036', 'nil - No', '2018-08-08 14:14:24'),
(223, '187', '812241', 'nil - Atrodos Igs.', '2018-08-08 16:33:12'),
(224, '287', '551112', 'nil - No', '2018-08-09 10:32:46'),
(225, '405', '707111', 'nil - No', '2018-08-09 12:35:00'),
(226, '959', '635207', 'nil - No', '2018-08-09 12:36:09'),
(227, '732', '480959', 'nil - VajadzÄ«ga policija un LSGD', '2018-08-10 11:34:12'),
(228, '287', '551112', 'nil - Auto bija Ford', '2018-08-10 13:17:52'),
(229, '991', '701721', 'nil - Tad aizvilka uz mashinu , iemeta bagazhniekaa un aizbrauca', '2018-08-10 14:12:36'),
(230, '177', '710247', 'nil - No', '2018-08-10 19:31:52'),
(231, '725', '794675', 'nil - Polcija vÄ“l gaidam.', '2018-08-11 08:31:34'),
(232, '706', '415252', 'nil - Vienam iespejams lauzsts galvas kauss', '2018-08-11 08:31:57'),
(233, '441', '528262', 'nil - NOPPEE', '2018-08-11 11:19:01'),
(234, '441', '528262', 'nil - No', '2018-08-11 11:21:16'),
(235, '441', '528262', 'nil - No', '2018-08-11 11:36:03'),
(236, '287', '551112', 'nil - No', '2018-08-12 14:02:40'),
(237, '725', '794675', 'nil - Ätri braucat!', '2018-08-12 20:11:14'),
(238, '865', '610829', 'nil - PretÄ« csdd', '2018-08-12 20:48:50'),
(239, '706', '415252', 'nil - Ja ierodaties atri, savadak elektribas stabs vel aizdegsies', '2018-08-13 19:52:03'),
(240, '287', '551112', 'nil - Ja viÅ†s kuri zali', '2018-08-13 20:27:27'),
(241, '826', '400586', 'nil - No', '2018-08-14 08:46:31'),
(242, '441', '528262', 'nil - Labdien', '2018-08-14 12:16:22'),
(243, '14', '642053', 'nil - No', '2018-08-14 12:41:26'),
(244, '615', '865153', 'nil - No', '2018-08-15 08:46:55'),
(245, '639', '378065', 'nil - Pie igs un maÅ¡Ä«na venom', '2018-08-15 18:02:37'),
(246, '725', '794675', 'nil - No', '2018-08-15 19:25:57'),
(247, '957', '360217', 'nil - No', '2018-08-15 20:45:12'),
(248, '639', '378065', 'nil - Pie igs', '2018-08-16 10:26:00'),
(249, '865', '610829', 'nil - No', '2018-08-16 14:20:13'),
(250, '725', '794675', 'nil - No', '2018-08-16 16:15:55'),
(251, '639', '378065', 'nil - Ne', '2018-08-16 18:48:57'),
(252, '639', '378065', 'nil - No', '2018-08-16 20:09:49'),
(253, '639', '378065', 'nil - Ni', '2018-08-16 21:03:44'),
(254, '732', '480959', 'nil - No', '2018-08-17 11:10:24'),
(255, '732', '480959', 'nil - No', '2018-08-17 11:12:59'),
(256, '732', '480959', 'nil - VajdzÄ«gs evukuvÄtors un Policija', '2018-08-17 11:17:05'),
(257, '732', '480959', 'nil - No', '2018-08-17 15:40:59'),
(258, '725', '494956', 'nil - No', '2018-08-18 19:07:58'),
(259, '639', '378065', 'nil - Pie igs', '2018-08-19 10:23:22'),
(260, '725', '494956', 'nil - No', '2018-08-20 20:20:13');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `mdc_crimes`
--

CREATE TABLE `mdc_crimes` (
  `id` int(11) NOT NULL,
  `crime` varchar(255) NOT NULL,
  `punishment` varchar(255) NOT NULL,
  `character` int(11) NOT NULL,
  `officer` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `mdc_criminals`
--

CREATE TABLE `mdc_criminals` (
  `character` int(11) NOT NULL,
  `dob` varchar(10) NOT NULL DEFAULT 'mm/dd/yyyy',
  `ethnicity` varchar(50) NOT NULL DEFAULT 'Unknown',
  `phone` varchar(10) NOT NULL DEFAULT 'Unknown',
  `occupation` varchar(50) NOT NULL DEFAULT 'Unknown',
  `address` varchar(50) NOT NULL DEFAULT 'Unknown',
  `photo` int(11) NOT NULL DEFAULT '-1',
  `details` varchar(255) NOT NULL DEFAULT 'None',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `wanted` int(11) NOT NULL DEFAULT '0',
  `wanted_by` int(11) NOT NULL DEFAULT '0',
  `wanted_details` varchar(255) DEFAULT NULL,
  `pilot_details` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `mdc_faa_events`
--

CREATE TABLE `mdc_faa_events` (
  `id` int(11) NOT NULL,
  `crime` varchar(255) NOT NULL,
  `punishment` varchar(255) NOT NULL,
  `character` int(11) NOT NULL,
  `officer` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `mdc_faa_licenses`
--

CREATE TABLE `mdc_faa_licenses` (
  `id` int(11) NOT NULL,
  `character` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `license` int(2) NOT NULL,
  `value` int(4) DEFAULT NULL,
  `officer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `mdc_impounds`
--

CREATE TABLE `mdc_impounds` (
  `id` int(11) NOT NULL,
  `veh` int(11) NOT NULL,
  `content` text,
  `reporter` text,
  `date` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `mdc_users`
--

CREATE TABLE `mdc_users` (
  `id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `level` int(11) NOT NULL,
  `organization` varchar(30) NOT NULL DEFAULT 'LSPD'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `mdc_users`
--

INSERT INTO `mdc_users` (`id`, `user`, `pass`, `level`, `organization`) VALUES
(59, 'LSPD', 'lspd1337', 1, 'LSPD'),
(63, 'LSPD[Vad?ba]', 'lspd1337', 2, 'LSPD');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `motds`
--

CREATE TABLE `motds` (
  `id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `content` text NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `dismissable` tinyint(1) NOT NULL DEFAULT '1',
  `audiences` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `motd_read`
--

CREATE TABLE `motd_read` (
  `id` int(11) NOT NULL,
  `motdid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Note down everyone that read and dismissed the motd.';

--
-- Gegevens worden geëxporteerd voor tabel `motd_read`
--

INSERT INTO `motd_read` (`id`, `motdid`, `userid`) VALUES
(1, 1, 1),
(2, 2, 105),
(3, 2, 157),
(4, 2, 152),
(5, 2, 78),
(6, 2, 189),
(7, 2, 37),
(8, 2, 192),
(9, 2, 193),
(10, 2, 116),
(11, 2, 110),
(12, 2, 190),
(13, 2, 194),
(14, 2, 195),
(15, 2, 199),
(16, 2, 186),
(17, 2, 200),
(18, 2, 67),
(19, 2, 126),
(20, 2, 205),
(21, 2, 202),
(22, 3, 8),
(23, 3, 6),
(24, 3, 11),
(25, 3, 10),
(26, 3, 12),
(27, 3, 14),
(28, 3, 13),
(29, 3, 9),
(30, 3, 15),
(31, 3, 19),
(32, 3, 1),
(33, 3, 20),
(34, 3, 4),
(35, 3, 22),
(36, 3, 23),
(37, 3, 111),
(38, 3, 75),
(39, 3, 86),
(40, 3, 122),
(41, 3, 52),
(42, 3, 77),
(43, 3, 85),
(44, 3, 129),
(45, 3, 90),
(46, 3, 118),
(47, 3, 125),
(48, 3, 65),
(49, 3, 131),
(50, 3, 76),
(51, 3, 60),
(52, 3, 61),
(53, 3, 121),
(54, 3, 135),
(55, 3, 47),
(56, 3, 36),
(57, 3, 106),
(58, 3, 110),
(59, 3, 138),
(60, 3, 141),
(61, 3, 142),
(62, 3, 144),
(63, 3, 30),
(64, 3, 66),
(65, 3, 143),
(66, 3, 133),
(67, 3, 148),
(68, 3, 137),
(69, 3, 153),
(70, 3, 145),
(71, 3, 29),
(72, 3, 73),
(73, 3, 156),
(74, 3, 150),
(75, 3, 99),
(76, 3, 59),
(77, 3, 160),
(78, 3, 162),
(79, 3, 18),
(80, 3, 42),
(81, 3, 164),
(82, 3, 169),
(83, 3, 173),
(84, 3, 168),
(85, 3, 174),
(86, 3, 175),
(87, 3, 177),
(88, 3, 179),
(89, 3, 170),
(90, 3, 78),
(91, 3, 181),
(92, 3, 182),
(93, 3, 183),
(94, 3, 161),
(95, 3, 45),
(96, 3, 185),
(97, 3, 31),
(98, 3, 187),
(99, 3, 40),
(100, 3, 48),
(101, 3, 72),
(102, 3, 194),
(103, 3, 37),
(104, 3, 197),
(105, 3, 198),
(106, 3, 199),
(107, 3, 201),
(108, 3, 44),
(109, 3, 202),
(110, 3, 203),
(111, 3, 204),
(112, 3, 87),
(113, 3, 206),
(114, 3, 209),
(115, 3, 212),
(116, 3, 210),
(117, 3, 80),
(118, 3, 195),
(119, 3, 89),
(120, 3, 215),
(121, 3, 216),
(122, 3, 217),
(123, 3, 224),
(124, 3, 225),
(125, 3, 226),
(126, 3, 227),
(127, 3, 228),
(128, 3, 231),
(129, 3, 232),
(130, 3, 233),
(131, 3, 140),
(132, 3, 234),
(133, 3, 236),
(134, 3, 237),
(135, 3, 238),
(136, 3, 56),
(137, 3, 39),
(138, 3, 79),
(139, 3, 167),
(140, 3, 229),
(141, 3, 107),
(142, 3, 63),
(143, 3, 260),
(144, 3, 264),
(145, 3, 268),
(146, 3, 270),
(147, 3, 275),
(148, 3, 277),
(149, 3, 271),
(150, 3, 96),
(151, 3, 259),
(152, 3, 154),
(153, 3, 279),
(154, 3, 281),
(155, 3, 127),
(156, 3, 100),
(157, 3, 283),
(158, 3, 284),
(159, 3, 189),
(160, 3, 285),
(161, 3, 17),
(162, 3, 288),
(163, 3, 287),
(164, 3, 263),
(165, 3, 291),
(166, 3, 295),
(167, 3, 294),
(168, 3, 151),
(169, 3, 267),
(170, 3, 149),
(171, 3, 83),
(172, 3, 33),
(173, 3, 126),
(174, 3, 300),
(175, 3, 2),
(176, 3, 262),
(177, 3, 302),
(178, 3, 306),
(179, 3, 307),
(180, 3, 296),
(181, 3, 313),
(182, 3, 46),
(183, 3, 35),
(184, 3, 319),
(185, 3, 312),
(186, 3, 320),
(187, 3, 321),
(188, 3, 322),
(189, 3, 326),
(190, 3, 332),
(191, 3, 290),
(192, 3, 324),
(193, 3, 301),
(194, 3, 339),
(195, 3, 269),
(196, 3, 341),
(197, 3, 213),
(198, 3, 344),
(199, 3, 343),
(200, 3, 345),
(201, 3, 347),
(202, 3, 349),
(203, 3, 350),
(204, 3, 348),
(205, 3, 351),
(206, 3, 352),
(207, 3, 353),
(208, 3, 354),
(209, 3, 355),
(210, 3, 356),
(211, 3, 357),
(212, 3, 358),
(213, 3, 359),
(214, 3, 360),
(215, 3, 361),
(216, 3, 362),
(217, 3, 363),
(218, 3, 364),
(219, 3, 365),
(220, 3, 366),
(221, 3, 367),
(222, 3, 371),
(223, 3, 374),
(224, 3, 152),
(225, 3, 379),
(226, 3, 380),
(227, 3, 384),
(228, 3, 386),
(229, 3, 387);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `title` text,
  `details` text,
  `date` timestamp NULL DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `offline_pm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `notifications`
--

INSERT INTO `notifications` (`id`, `userid`, `title`, `details`, `date`, `read`, `offline_pm`) VALUES
(1, 657, 'ÄªpaÅ¡nieks Danex has promoted you from SpÄ“lÄ“tÄjs to Galvenais administrÄtors.', 'Congratulations!', NULL, 0, NULL),
(2, 657, 'Brian Sorbey ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) Galvenais administrÄtors GoblinX', NULL, 0, NULL),
(3, 657, 'Brian Sorbey tika paaugstinÄts no \'AKADÄ’MIJA 8. AUGUSTÄ€ 19:00))\' uz \'PriekÅ¡nieks\' paaugstinÄja Brian Sorbey iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(4, 661, 'ÄªpaÅ¡nieks Danex has promoted you from SpÄ“lÄ“tÄjs to ÄªpaÅ¡nieks.', 'Congratulations!', NULL, 0, NULL),
(5, 661, 'ÄªpaÅ¡nieks Danex has promoted you from SpÄ“lÄ“tÄjs to Skripteris.', 'Congratulations!', NULL, 0, NULL),
(6, 662, 'ÄªpaÅ¡nieks Danex has promoted you from SpÄ“lÄ“tÄjs to AdministrÄtors.', 'Congratulations!', NULL, 0, NULL),
(7, 1, 'ÄªpaÅ¡nieks Danex has demoted you from Gamemasters to SpÄ“lÄ“tÄjs.', 'Sorry!', NULL, 0, NULL),
(8, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(9, 657, 'Galvenais administrÄtors GoblinX has promoted you from SpÄ“lÄ“tÄjs to VCT lÄ«deris.', 'Congratulations!', NULL, 0, NULL),
(10, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(11, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Emergency Services\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(12, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(13, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Rapid Towing\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(14, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Rapid Towing\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(15, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Los Santos News\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(16, 1, 'Rakheem Amir ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(17, 1, 'Rakheem Amir ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(18, 1, 'Rakheem Amir ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(19, 1, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(20, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(21, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Emergency Services\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(22, 1, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) Galvenais administrÄtors GoblinX', NULL, 0, NULL),
(23, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) Galvenais administrÄtors GoblinX', NULL, 0, NULL),
(24, 657, 'Galvenais administrÄtors GoblinX has demoted you from Galvenais administrÄtors to SpÄ“lÄ“tÄjs.', 'Sorry!', NULL, 0, NULL),
(25, 657, 'GoblinX has demoted you from VCT lÄ«deris to SpÄ“lÄ“tÄjs.', 'Sorry!', NULL, 0, NULL),
(26, 663, 'ÄªpaÅ¡nieks Danex has promoted you from SpÄ“lÄ“tÄjs to VecÄkais administrÄtors.', 'Congratulations!', NULL, 0, NULL),
(27, 663, 'ÄªpaÅ¡nieks Danex has promoted you from SpÄ“lÄ“tÄjs to VCT lÄ«deris.', 'Congratulations!', NULL, 0, NULL),
(28, 1, 'Edward Harper ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(29, 657, 'Edward Harper ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(30, 662, 'Edward Harper ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(31, 657, 'Rakheem Amir pameta frakciju \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(32, 662, 'Rakheem Amir pameta frakciju \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(33, 657, 'Edward Harper tika paaugstinÄts no \'AKADÄ’MIJA 8. AUGUSTÄ€ 19:00))\' uz \'PriekÅ¡nieks\' paaugstinÄja Edward Harper iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(34, 662, 'Edward Harper tika paaugstinÄts no \'AKADÄ’MIJA 8. AUGUSTÄ€ 19:00))\' uz \'PriekÅ¡nieks\' paaugstinÄja Edward Harper iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(35, 662, 'Edward Harper ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: (4) AdministrÄtors Eska', NULL, 0, NULL),
(36, 662, 'Edward Harper tika paaugstinÄts no \'ApmaksÄtÄ atvaÄ¼inÄjumÄ\' uz \'MÄ“rs\' paaugstinÄja Edward Harper iekÅ¡ \'Government of Los Santos\'', NULL, NULL, 0, NULL),
(37, 662, 'Edward Harper tika pazeminÄts no \'MÄ“rs\' uz \'MÄ“ra privÄtais sargs\' pazeminÄja Edward Harper iekÅ¡ \'Government of Los Santos\'', NULL, NULL, 0, NULL),
(38, 662, 'Edward Harper tika paaugstinÄts no \'MÄ“ra privÄtais sargs\' uz \'\' paaugstinÄja Edward Harper iekÅ¡ \'Government of Los Santos\'', NULL, NULL, 0, NULL),
(39, 662, 'Edward Harper tika paaugstinÄts no \'\' uz \'MÄ“rs\' paaugstinÄja Edward Harper iekÅ¡ \'Government of Los Santos\'', NULL, NULL, 0, NULL),
(40, 657, 'Edward Harper ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(41, 662, 'Edward Harper ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(42, 657, 'Edward Harper tika paaugstinÄts no \'AKADÄ’MIJA 8. AUGUSTÄ€ 19:00))\' uz \'PriekÅ¡nieka vietnieks\' paaugstinÄja Edward Harper iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(43, 662, 'Edward Harper tika paaugstinÄts no \'AKADÄ’MIJA 8. AUGUSTÄ€ 19:00))\' uz \'PriekÅ¡nieka vietnieks\' paaugstinÄja Edward Harper iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(44, 662, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Emergency Services\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(45, 662, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(46, 662, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Rapid Towing\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(47, 662, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Los Santos News\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(48, 662, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(49, 662, 'Servera Admins tika paaugstinÄts no \'ApmaksÄtÄ atvaÄ¼inÄjumÄ\' uz \'MÄ“ra privÄtais sargs\' paaugstinÄja Servera Admins iekÅ¡ \'Government of Los Santos\'', NULL, NULL, 0, NULL),
(50, 657, 'Vards Uzvards tika paaugstinÄts no \'AKADÄ’MIJA 8. AUGUSTÄ€ 19:00))\' uz \'PriekÅ¡nieks\' paaugstinÄja Vards Uzvards iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(51, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Emergency Services\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(52, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(53, 662, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(54, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Rapid Towing\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(55, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Los Santos News\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(56, 657, 'Galvenais administrÄtors GoblinX has promoted you from SpÄ“lÄ“tÄjs to VCT lÄ«deris.', 'Congratulations!', NULL, 0, NULL),
(57, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Emergency Services\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(58, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Rapid Towing\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(59, 657, 'Vards Uzvards ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(60, 657, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(61, 662, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(62, 662, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Emergency Services\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(63, 662, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(64, 662, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Rapid Towing\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(65, 662, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Los Santos News\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(66, 662, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Emergency Services\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(67, 657, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(68, 662, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(69, 662, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Emergency Services\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(70, 662, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(71, 662, 'Servera Admins ir frakcijas lÄ«deris iekÅ¡ \'Rapid Towing\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(72, 657, 'Matthew Hudson ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(73, 661, 'Matthew Hudson ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(74, 663, 'ÄªpaÅ¡nieks Danex has demoted you from VecÄkais administrÄtors to SpÄ“lÄ“tÄjs.', 'Sorry!', NULL, 0, NULL),
(75, 663, 'ÄªpaÅ¡nieks Danex has demoted you from VCT lÄ«deris to SpÄ“lÄ“tÄjs.', 'Sorry!', NULL, 0, NULL),
(76, 657, 'ÄªpaÅ¡nieks Danex has demoted you from Galvenais administrÄtors to SpÄ“lÄ“tÄjs.', 'Sorry!', NULL, 0, NULL),
(77, 657, 'ÄªpaÅ¡nieks Danex has demoted you from VCT lÄ«deris to SpÄ“lÄ“tÄjs.', 'Sorry!', NULL, 0, NULL),
(78, 657, 'Thomas Forester ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (4) AdministrÄtors Eska', NULL, 0, NULL),
(79, 661, 'Thomas Forester ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (4) AdministrÄtors Eska', NULL, 0, NULL),
(80, 662, 'Thomas Forester ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (4) AdministrÄtors Eska', NULL, 0, NULL),
(81, 657, 'GoblinX ir frakcijas lÄ«deris iekÅ¡ \'Rapid Towing\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(82, 664, 'Galvenais administrÄtors GoblinX has promoted you from SpÄ“lÄ“tÄjs to Jaunais administrÄtors.', 'Congratulations!', NULL, 0, NULL),
(83, 664, 'Galvenais administrÄtors GoblinX has promoted you from SpÄ“lÄ“tÄjs to VCT lÄ«deris.', 'Congratulations!', NULL, 0, NULL),
(84, 657, 'GoblinX ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(85, 661, 'GoblinX ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(86, 662, 'GoblinX ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(87, 657, 'Thomas Forester ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(88, 661, 'Thomas Forester ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(89, 662, 'Thomas Forester ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(90, 662, 'Thomas Forester ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Emergency Services\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(91, 662, 'Thomas Forester ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(92, 657, 'Thomas Forester ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(93, 661, 'Thomas Forester ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(94, 662, 'Thomas Forester ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(95, 1, 'Rakheem Amir ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(96, 657, 'Rakheem Amir ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(97, 661, 'Rakheem Amir ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(98, 662, 'Rakheem Amir ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(99, 1, 'Matthew Hudson pazeminÄja GoblinX uz parastu organizÄcijas statusu \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(100, 657, 'Matthew Hudson pazeminÄja GoblinX uz parastu organizÄcijas statusu \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(101, 661, 'Matthew Hudson pazeminÄja GoblinX uz parastu organizÄcijas statusu \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(102, 662, 'Matthew Hudson pazeminÄja GoblinX uz parastu organizÄcijas statusu \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(103, 1, 'Matthew Hudson paaugstinÄja GoblinX uz organizÄcijas lÄ«deri \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(104, 657, 'Matthew Hudson paaugstinÄja GoblinX uz organizÄcijas lÄ«deri \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(105, 661, 'Matthew Hudson paaugstinÄja GoblinX uz organizÄcijas lÄ«deri \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(106, 662, 'Matthew Hudson paaugstinÄja GoblinX uz organizÄcijas lÄ«deri \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(107, 1, 'Rakheem Amir tika paaugstinÄts no \'Intervija\' uz \'-\' paaugstinÄja Matthew Hudson iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(108, 657, 'Rakheem Amir tika paaugstinÄts no \'Intervija\' uz \'-\' paaugstinÄja Matthew Hudson iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(109, 661, 'Rakheem Amir tika paaugstinÄts no \'Intervija\' uz \'-\' paaugstinÄja Matthew Hudson iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(110, 662, 'Rakheem Amir tika paaugstinÄts no \'Intervija\' uz \'-\' paaugstinÄja Matthew Hudson iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(111, 1, 'Rakheem Amir tika paaugstinÄts no \'-\' uz \'SerÅ¾ants II\' paaugstinÄja Matthew Hudson iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(112, 657, 'Rakheem Amir tika paaugstinÄts no \'-\' uz \'SerÅ¾ants II\' paaugstinÄja Matthew Hudson iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(113, 661, 'Rakheem Amir tika paaugstinÄts no \'-\' uz \'SerÅ¾ants II\' paaugstinÄja Matthew Hudson iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(114, 662, 'Rakheem Amir tika paaugstinÄts no \'-\' uz \'SerÅ¾ants II\' paaugstinÄja Matthew Hudson iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(115, 657, 'Rakheem Amir pameta frakciju \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(116, 661, 'Rakheem Amir pameta frakciju \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(117, 662, 'Rakheem Amir pameta frakciju \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(118, 1, 'Rakheem Amir ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(119, 657, 'Rakheem Amir ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(120, 661, 'Rakheem Amir ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(121, 662, 'Rakheem Amir ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(122, 661, 'Rakheem Amir pameta frakciju \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(123, 657, 'ÄªpaÅ¡nieks daniels has demoted you from Galvenais administrÄtors to SpÄ“lÄ“tÄjs.', 'Sorry!', NULL, 0, NULL),
(124, 657, 'ÄªpaÅ¡nieks daniels has promoted you from SpÄ“lÄ“tÄjs to Galvenais administrÄtors.', 'Congratulations!', NULL, 0, NULL),
(125, 657, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(126, 661, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(127, 661, 'Tomy Melty pameta frakciju \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(128, 662, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Rapid Towing\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(129, 661, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(130, 662, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(131, 662, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Emergency Services\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(132, 661, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(133, 662, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(134, 662, 'Matthew Hudson pameta frakciju \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(135, 657, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(136, 662, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(137, 657, 'Galvenais administrÄtors GoblinX has promoted you from SpÄ“lÄ“tÄjs to VCT lÄ«deris.', 'Congratulations!', NULL, 0, NULL),
(138, 657, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Rapid Towing\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(139, 657, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(140, 661, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(141, 662, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(142, 657, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Emergency Services\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(143, 657, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Rapid Towing\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(144, 662, 'Matthew Hudson pameta frakciju \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(145, 657, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(146, 662, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(147, 662, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Emergency Services\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(148, 662, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(149, 662, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Los Santos News\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(150, 662, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Rapid Towing\'!', 'Autors: (2) AdministrÄtors Eska', NULL, 0, NULL),
(151, 661, 'Matthew Hudson ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Emergency Services\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(152, 657, 'Matthew Hudson ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(153, 661, 'Matthew Hudson ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(154, 657, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Rapid Towing\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(155, 662, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Rapid Towing\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(156, 666, 'ÄªpaÅ¡nieks daniels has promoted you from SpÄ“lÄ“tÄjs to AdministrÄtors.', 'Congratulations!', NULL, 0, NULL),
(157, 666, 'ÄªpaÅ¡nieks daniels has promoted you from AdministrÄtors to VecÄkais administrÄtors.', 'Congratulations!', NULL, 0, NULL),
(158, 661, 'Steve Ellis ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) VecÄkais administrÄtors 9Boz', NULL, 0, NULL),
(159, 666, 'Steve Ellis ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) VecÄkais administrÄtors 9Boz', NULL, 0, NULL),
(160, 662, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: (3) AdministrÄtors Eska', NULL, 0, NULL),
(161, 657, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(162, 661, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(163, 666, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(164, 657, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Emergency Services\'!', 'Autors: (2) Galvenais administrÄtors GoblinX', NULL, 0, NULL),
(165, 657, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: (2) Galvenais administrÄtors GoblinX', NULL, 0, NULL),
(166, 662, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: (2) Galvenais administrÄtors GoblinX', NULL, 0, NULL),
(167, 657, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Rapid Towing\'!', 'Autors: (2) Galvenais administrÄtors GoblinX', NULL, 0, NULL),
(168, 657, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos News\'!', 'Autors: (2) Galvenais administrÄtors GoblinX', NULL, 0, NULL),
(169, 661, 'Matthew Hudson ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(170, 662, 'Matthew Hudson ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(171, 1, 'Andreas Rodenhuis ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(172, 666, 'Andreas Rodenhuis ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(173, 666, 'Andreas Rodenhuis pameta frakciju \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(174, 1, 'Andreas Rodenhuis ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(175, 666, 'Andreas Rodenhuis ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: Neredzamais Admins', NULL, 0, NULL),
(176, 1, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) Galvenais administrÄtors GoblinX', NULL, 0, NULL),
(177, 657, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) Galvenais administrÄtors GoblinX', NULL, 0, NULL),
(178, 666, 'Tomy Melty ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (2) Galvenais administrÄtors GoblinX', NULL, 0, NULL),
(179, 657, 'Andreas Rodenhuis pameta frakciju \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(180, 666, 'Andreas Rodenhuis pameta frakciju \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(181, 657, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(182, 662, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(183, 666, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Police Department\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(184, 657, 'Thomas Lawrance pameta frakciju \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(185, 666, 'Thomas Lawrance pameta frakciju \'Los Santos Police Department\'.', NULL, NULL, 0, NULL),
(186, 661, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(187, 662, 'Thomas Lawrance ir frakcijas lÄ«deris iekÅ¡ \'Government of Los Santos\'!', 'Autors: (1) AdministrÄtors Eska', NULL, 0, NULL),
(188, 1, 'ÄªpaÅ¡nieks Danex has promoted you from SpÄ“lÄ“tÄjs to Gamemasters.', 'Congratulations!', NULL, 0, NULL),
(189, 1, 'ÄªpaÅ¡nieks Danex has demoted you from Gamemasters to SpÄ“lÄ“tÄjs.', 'Sorry!', NULL, 0, NULL),
(190, 657, 'Tomy Melty tika paaugstinÄts no \'Intervija\' uz \'PriekÅ¡nieks\' paaugstinÄja Tomy Melty iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(191, 663, 'Tomy Melty tika paaugstinÄts no \'Intervija\' uz \'PriekÅ¡nieks\' paaugstinÄja Tomy Melty iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(192, 666, 'Tomy Melty tika paaugstinÄts no \'Intervija\' uz \'PriekÅ¡nieks\' paaugstinÄja Tomy Melty iekÅ¡ \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(193, 670, 'Joseph Chan ir frakcijas lÄ«deris iekÅ¡ \'Los Santos Emergency Services\'!', 'Autors: (2) Galvenais administrÄtors GoblinX', NULL, 0, NULL),
(194, 663, 'Galvenais administrÄtors GoblinX has promoted you from SpÄ“lÄ“tÄjs to VecÄkais administrÄtors.', 'Congratulations!', NULL, 0, NULL),
(195, 663, 'Galvenais administrÄtors GoblinX has promoted you from SpÄ“lÄ“tÄjs to VCT lÄ«deris.', 'Congratulations!', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `objects`
--

CREATE TABLE `objects` (
  `id` int(11) NOT NULL,
  `model` int(6) NOT NULL DEFAULT '0',
  `posX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `interior` int(5) NOT NULL,
  `dimension` int(5) NOT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `solid` int(1) NOT NULL DEFAULT '1',
  `doublesided` int(1) NOT NULL DEFAULT '0',
  `scale` float(12,7) DEFAULT NULL,
  `breakable` int(1) NOT NULL DEFAULT '0',
  `alpha` int(11) NOT NULL DEFAULT '255'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `payments`
--

CREATE TABLE `payments` (
  `id` int(6) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `payment_amount` decimal(7,2) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `itemid` varchar(25) NOT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `paynspray`
--

CREATE TABLE `paynspray` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `paynspray`
--

INSERT INTO `paynspray` (`id`, `x`, `y`, `z`, `dimension`, `interior`) VALUES
(5, '2066.271484', '-1831.049805', '13.546875', 0, 0),
(6, '487.487305', '-1741.097656', '11.134825', 0, 0),
(8, '1024.626953', '-1024.238281', '31.944908', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pd_tickets`
--

CREATE TABLE `pd_tickets` (
  `id` int(11) NOT NULL,
  `vehid` int(11) NOT NULL,
  `reason` text NOT NULL,
  `amount` int(11) NOT NULL,
  `issuer` int(11) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `peds`
--

CREATE TABLE `peds` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `behaviour` int(3) DEFAULT '1',
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rotation` float NOT NULL,
  `interior` int(5) NOT NULL,
  `dimension` int(5) NOT NULL,
  `skin` int(1) DEFAULT NULL,
  `money` bigint(20) NOT NULL DEFAULT '0',
  `gender` int(1) DEFAULT NULL,
  `stats` text,
  `description` text,
  `owner_type` int(1) NOT NULL DEFAULT '0',
  `owner` int(11) DEFAULT NULL,
  `animation` varchar(255) DEFAULT NULL,
  `synced` tinyint(1) NOT NULL DEFAULT '0',
  `nametag` tinyint(1) NOT NULL DEFAULT '1',
  `frozen` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ped_inventory`
--

CREATE TABLE `ped_inventory` (
  `index` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `owner` int(10) UNSIGNED NOT NULL,
  `itemID` int(10) NOT NULL,
  `itemValue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ped_mission`
--

CREATE TABLE `ped_mission` (
  `char_id` int(11) NOT NULL,
  `mission` varchar(255) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `phones`
--

CREATE TABLE `phones` (
  `phonenumber` int(1) NOT NULL,
  `turnedon` smallint(1) NOT NULL DEFAULT '1',
  `secretnumber` smallint(1) NOT NULL DEFAULT '0',
  `phonebook` varchar(40) NOT NULL DEFAULT '0',
  `ringtone` smallint(1) NOT NULL DEFAULT '4',
  `contact_limit` int(5) NOT NULL DEFAULT '50',
  `boughtby` int(11) NOT NULL DEFAULT '-1',
  `bought_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sms_tone` smallint(1) NOT NULL DEFAULT '8',
  `keypress_tone` smallint(1) NOT NULL DEFAULT '1',
  `tone_volume` smallint(2) NOT NULL DEFAULT '10',
  `phone_theme` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `phones`
--

INSERT INTO `phones` (`phonenumber`, `turnedon`, `secretnumber`, `phonebook`, `ringtone`, `contact_limit`, `boughtby`, `bought_date`, `sms_tone`, `keypress_tone`, `tone_volume`, `phone_theme`) VALUES
(765967, 1, 0, '0', 4, 50, -1, '2018-08-27 20:27:43', 8, 1, 10, 1),
(748850, 1, 0, '0', 4, 50, -1, '2018-08-28 08:46:29', 8, 1, 10, 1),
(522923, 1, 0, '0', 4, 50, -1, '2018-09-06 12:11:18', 8, 1, 10, 1),
(884807, 1, 0, '0', 4, 50, -1, '2018-09-07 17:08:29', 8, 1, 10, 1),
(407735, 1, 0, '0', 4, 50, -1, '2018-09-07 17:38:59', 8, 1, 10, 1),
(721430, 1, 0, '0', 4, 50, -1, '2018-09-18 18:01:04', 8, 1, 10, 1),
(120120, 1, 0, '0', 4, 50, -1, '2018-11-04 21:29:01', 8, 1, 10, 1),
(588260, 1, 0, '0', 4, 50, 19, '2018-11-25 14:30:41', 8, 1, 10, 1),
(832638, 1, 0, '0', 4, 50, 19, '2018-12-24 19:51:46', 8, 1, 10, 1),
(111111, 1, 0, '0', 4, 50, -1, '2019-01-30 18:17:17', 8, 1, 10, 1),
(123123, 1, 0, '0', 4, 50, -1, '2019-02-04 18:36:46', 8, 1, 10, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `phone_contacts`
--

CREATE TABLE `phone_contacts` (
  `id` int(11) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `entryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `entryNumber` bigint(20) NOT NULL,
  `entryEmail` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `entryAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `entryFavorited` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `phone_history`
--

CREATE TABLE `phone_history` (
  `id` int(11) NOT NULL,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `state` tinyint(1) DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `phone_history`
--

INSERT INTO `phone_history` (`id`, `from`, `to`, `state`, `date`) VALUES
(6, 123123, 7331, 1, '2019-02-04 19:49:46'),
(5, 123123, 7331, 1, '2019-02-04 19:47:47'),
(4, 123123, 7331, 1, '2019-02-04 19:45:55'),
(7, 123123, 7331, 1, '2019-02-04 19:51:08'),
(8, 123123, 7331, 1, '2019-02-04 19:52:09'),
(9, 123123, 7331, 1, '2019-02-04 19:53:41'),
(10, 721430, 7331, 1, '2019-02-11 17:05:48');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `phone_sms`
--

CREATE TABLE `phone_sms` (
  `id` int(11) NOT NULL,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `content` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `viewed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pilot_notams`
--

CREATE TABLE `pilot_notams` (
  `id` int(11) NOT NULL,
  `information` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `publicphones`
--

CREATE TABLE `publicphones` (
  `id` int(10) UNSIGNED NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `dimension` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `radio_stations`
--

CREATE TABLE `radio_stations` (
  `id` int(11) NOT NULL,
  `station_name` text,
  `source` text,
  `owner` int(11) NOT NULL DEFAULT '0',
  `register_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Dynamic radio stations.';

--
-- Gegevens worden geëxporteerd voor tabel `radio_stations`
--

INSERT INTO `radio_stations` (`id`, `station_name`, `source`, `owner`, `register_date`, `expire_date`, `enabled`, `order`) VALUES
(1, 'Eiropas Hitu Radio', 'http://stream.europeanhitradio.com/', 0, NULL, NULL, 1, 1),
(2, 'Capital FM', 'http://radio2.capitalfm.lv:8000/listen.pls', 0, NULL, NULL, 1, 2),
(3, 'Top Radio', 'http://195.13.200.164:8000/listen.pls', 0, NULL, NULL, 1, 3),
(4, 'Krievijas Hitu Radio', 'http://stream.hitirossii.com:8000/khr.mp3.m3u', 0, NULL, NULL, 1, 3),
(5, 'Pieci FM', 'http://live.pieci.lv/live19-hq.mp3', 0, NULL, NULL, 1, 5),
(6, 'Spin FM', 'http://80.232.162.149:8000/spin96mp3.m3u', 0, NULL, NULL, 1, 6),
(7, 'Mix FM', 'http://radio.mixfm.lv/MixFM.m3u', 0, NULL, NULL, 1, 7),
(8, 'Power FM', 'http://radio.powerfm.lv:8000/listen.pls', 0, NULL, NULL, 1, 8),
(9, 'Latvijas Radio 2', 'http://lr2mp1.latvijasradio.lv:8002/listen.pls', 0, NULL, NULL, 1, 9),
(10, 'Lietus FM', 'http://radio.lietus.fm/LIETUS.m3u', 0, NULL, NULL, 1, 10),
(11, 'Russian Radio record', 'http://air2.radiorecord.ru:805/rus_320', 0, NULL, NULL, 1, 11),
(12, 'Infinite Trap', 'https://www.internet-radio.com/servers/tools/playlistgenerator/?u=http://158.69.227.214:8041/listen.pls?sid=1&t=.pls', 0, NULL, NULL, 1, 12),
(13, 'Doroznoje Radio', 'http://dorognoe48.streamr.ru', 0, NULL, NULL, 1, 13),
(14, 'LR4 Russian', 'mms://lr4w.latvijasradio.lv/pplr4', 1169, NULL, '2016-12-10 18:03:51', 1, 14),
(15, 'YO.FM', 'http://air.radiorecord.ru:8102/yo_320', 0, NULL, NULL, 1, 15),
(16, 'Gangsta & Hip-Hop.101', 'http://ic3.101.ru:8000/c14_11', 0, NULL, NULL, 1, 16),
(17, '100Hitz Rap', 'http://206.217.213.236:8170/listen.pls', 0, NULL, NULL, 1, 17),
(18, 'La Rocca', 'http://info.larocca.lv:8000/larocca.m3u', 0, NULL, NULL, 1, 18),
(19, 'NRJ RAP US', 'http://listen.radionomy.com/nrj-rap-us.m3u', 0, NULL, NULL, 1, 19),
(20, 'Radio Record Club', 'http://air.radiorecord.ru:8102/club_320', 0, NULL, NULL, 1, 20),
(21, 'Classic Rock Florida', 'http://us1.internet-radio.com:8105/listen.pls', 0, NULL, NULL, 1, 21),
(22, 'SWH Rock', 'http://80.232.162.149:8000/rock96mp3.m3u', 0, NULL, NULL, 1, 22),
(23, 'Radio Skonto', 'http://www.radioskonto.lv/online_radio/stereo.m3u', 0, NULL, NULL, 1, 23),
(24, 'Hot 108 Jamz', 'http://www.hot108.com/hot108_128k.asx', 0, NULL, NULL, 1, 24),
(25, 'Russian FM', 'http://91.194.251.92:8000/rep128.mp3', 0, NULL, NULL, 1, 25),
(26, 'Oldschool Rap & Hip-hop', 'http://listen.radionomy.com/a-better-old-school-classic-rap-station', 0, NULL, NULL, 1, 26),
(27, 'Dubplate.fm Drum \'n Bass', 'http://sc2.dubplate.fm:5000/DnB/192', 0, NULL, NULL, 1, 27),
(28, 'Minimal Techno', 'http://stream.uzic.ch:9010/listen.pls', 0, NULL, NULL, 1, 28),
(29, 'I <3 Radio', 'http://www.iloveradio.de/iloveradio.m3u', 0, NULL, NULL, 1, 29),
(30, 'Rock Radio', 'http://yp.shoutcast.com/sbin/tunein-station.pls?id=558051', 0, NULL, NULL, 1, 30),
(31, 'Rap Station', 'http://feed.rapstation.com:8067/stream', 0, NULL, NULL, 1, 31),
(32, 'POP  FM', 'http://www.distortionradio.com/listen/a-1-hits-128.pls', 0, NULL, NULL, 1, 32),
(33, 'Shanson FM', 'http://chanson.hostingradio.ru:8041/chanson64.mp3', 0, NULL, NULL, 1, 33),
(34, 'Black Beats FM', 'http://stream3.blackbeats.fm/ ', 0, NULL, NULL, 1, 34),
(35, 'Star FM', 'http://stream.power.ee/StarFM.m3u', 0, NULL, NULL, 1, 35),
(36, 'Power Hit Radio', 'http://stream.power.ee/PHR.m3u', 0, NULL, NULL, 1, 36),
(37, 'Deutschrap Extreme', 'http://stream2.laut.fm/deutschrapxtreme', 0, NULL, NULL, 1, 37),
(38, 'SWH', 'http://80.232.162.149:8000/swh96mp3.m3u', 0, NULL, NULL, 1, 38),
(39, 'Energy FM', 'http://uk1.internet-radio.com:15614/', 0, NULL, NULL, 1, 39),
(40, 'HardBase FM', 'http://listen.hardbase.fm/dsl.pls', 0, NULL, NULL, 1, 40),
(41, 'Dubplate.fm Dubstep', 'http://sc2.dubplate.fm:5000/dubstep/192', 0, NULL, NULL, 1, 41),
(42, 'D-FM', 'http://striiming.trio.ee/dfm.mp3', 0, NULL, NULL, 1, 42),
(43, 'Europa +', 'http://ep128.hostingradio.ru:8030/ep128', 0, NULL, NULL, 1, 43),
(44, 'TechnoBase FM', 'http://listen.technobase.fm/aacplus.pls', 0, NULL, NULL, 1, 44),
(45, 'Germany Top 100', 'http://www.top100station.de/switch/top100station_lq.asx', 0, NULL, NULL, 1, 45),
(46, 'Los Santos Radio', 'http://195.3.145.11:9038/listen.pls', 0, NULL, NULL, 1, 46);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ramps`
--

CREATE TABLE `ramps` (
  `id` int(2) NOT NULL,
  `position` text,
  `interior` int(2) DEFAULT NULL,
  `dimension` int(2) DEFAULT NULL,
  `rotation` int(5) DEFAULT NULL,
  `creator` text,
  `state` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `ramps`
--

INSERT INTO `ramps` (`id`, `position`, `interior`, `dimension`, `rotation`, `creator`, `state`) VALUES
(1, '[ [ -69.30527936286484, -65.33106588653455, 1006.995751953125 ] ]', 3, 19, 360, 'Rakheem Amir', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `restricted_freqs`
--

CREATE TABLE `restricted_freqs` (
  `id` int(11) NOT NULL,
  `frequency` text,
  `limitedto` int(5) DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sapt_destinations`
--

CREATE TABLE `sapt_destinations` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `destinationID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sapt_locations`
--

CREATE TABLE `sapt_locations` (
  `id` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `stopID` int(11) NOT NULL,
  `name` text NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sapt_routes`
--

CREATE TABLE `sapt_routes` (
  `id` int(11) NOT NULL,
  `line` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `destination` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `serial_whitelist`
--

CREATE TABLE `serial_whitelist` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `serial` varchar(32) NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `last_login_ip` varchar(15) DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` text,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'tax', '15'),
(2, 'incometax', '10'),
(3, 'lottery', '0'),
(4, 'lotteryNumber', '4');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sfia_pilots`
--

CREATE TABLE `sfia_pilots` (
  `id` int(11) NOT NULL,
  `charactername` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `x` float DEFAULT '0',
  `y` float DEFAULT '0',
  `z` float DEFAULT '0',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `shoptype` tinyint(4) DEFAULT '0',
  `rotationz` float NOT NULL DEFAULT '0',
  `skin` int(11) DEFAULT '-1',
  `sPendingWage` int(11) NOT NULL DEFAULT '0',
  `sIncome` bigint(20) NOT NULL DEFAULT '0',
  `sCapacity` int(11) NOT NULL DEFAULT '10',
  `sSales` varchar(5000) NOT NULL DEFAULT '',
  `pedName` text,
  `deletedBy` int(11) NOT NULL DEFAULT '0',
  `faction_belong` int(11) NOT NULL DEFAULT '0',
  `faction_access` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `shops`
--

INSERT INTO `shops` (`id`, `x`, `y`, `z`, `dimension`, `interior`, `shoptype`, `rotationz`, `skin`, `sPendingWage`, `sIncome`, `sCapacity`, `sSales`, `pedName`, `deletedBy`, `faction_belong`, `faction_access`) VALUES
(1, 1692.63, -1076.2, 23.9062, 0, 0, 24, 270.018, 176, 0, 0, 10, '', 'Christopher_E._Christie', 657, 0, 0),
(6, 1626.09, -1733.45, 13.3828, 0, 0, 14, 67.4434, 163, 0, 0, 10, '', 'Willie_W._Layfield', 661, 0, 0),
(7, 1625.44, -1733.54, 13.3828, 0, 0, 20, 17.6196, 232, 0, 0, 10, '', 'Joseph_V._Harris', 1, 0, 0),
(8, 1565.22, -1733.29, 13.3828, 0, 0, 1, 88.9659, 226, 0, 0, 10, '', 'Brandon_V._Moore', 1, 0, 0),
(9, 1580.42, -1634.13, 13.5624, 0, 0, 15, 0.870697, 281, 0, 0, 10, '', 'Kevin_Washington', 0, 0, 0),
(10, 1401.85, -1794.73, 13.5469, 0, 0, 14, 232.883, 0, 0, 0, 10, '', '0_2_0_0_1_2_0', 662, 0, 0),
(11, 1479.58, -1934.96, 290.7, 2, 3, 15, 358.223, 163, 0, 0, 10, '', 'Kendrick_Miller', 0, 0, 0),
(12, 1564.43, 1796.11, 2083.41, 3, 3, 15, 269.545, 164, 0, 0, 10, '', 'Samuel_Bolder', 0, 0, 0),
(13, 1690.85, -1850.49, 13.3828, 0, 0, 9, 158.296, 182, 0, 0, 10, '', 'James_X._Trotter', 662, 0, 0),
(14, 1691.4, -1851.93, 13.3828, 0, 0, 8, 325.489, 191, 0, 0, 10, '', 'Richard_E._Smith', 662, 0, 0),
(15, 727.586, -1398.56, 13.3672, 0, 0, 8, 294.913, 211, 0, 0, 10, '', 'Robert_M._Duncan', 662, 0, 0),
(16, 1077.21, -1295.47, 79.1406, 287, 1, 15, 87.4717, 282, 0, 0, 10, '', 'Dave_Carter', 0, 0, 0),
(17, 2264.55, -1667.37, 15.4054, 0, 0, 13, 32.9842, 146, 0, 0, 10, '', 'Robert_C._Davis', 657, 0, 0),
(18, 2183.9, -1720.02, 13.3699, 0, 0, 15, 273.946, 184, 0, 0, 10, '', 'Anthony_O._Layfield', 657, 0, 0),
(19, 1694.6, -1699.91, 13.1757, 0, 0, 15, 0.483521, 191, 0, 0, 10, '', 'Matthew_I._Taylor', 1, 0, 0),
(20, 1690.84, -1699.89, 13.3828, 0, 0, 18, 232.021, 254, 0, 0, 10, '', 'Christopher_S._Robinson', 657, 0, 0),
(21, 1925.1, -1774.09, 13.5469, 0, 0, 15, 304.378, 123, 0, 0, 10, '', 'Andrew_E._Davis', 657, 0, 0),
(22, 1892.57, -1745.84, 13.5469, 0, 0, 14, 61.8567, 174, 0, 0, 10, '', 'Joshua_R._Grenier', 657, 0, 0),
(23, 1909.96, -1765.97, 13.3828, 0, 0, 8, 349.11, 217, 0, 0, 10, '', 'Danny__X._Wilson', 661, 0, 0),
(24, -70.4414, -83.6602, 1001.87, 19, 3, 14, 226.852, 271, 0, 55250, 10, '- 25/11/2018 22:19 : Klients nopirka Wheels par $4,250.\n- 25/11/2018 22:19 : Klients nopirka Wheels par $4,250.\n- 25/11/2018 22:19 : Klients nopirka Wheels par $4,250.\n- 25/11/2018 22:19 : Klients nopirka Wheels par $4,250.\n- 25/11/2018 22:19 : Klients nopirka Wheels par $4,250.\n- 25/11/2018 22:19 : Klients nopirka Wheels par $4,250.\n- 25/11/2018 22:19 : Klients nopirka Wheels par $4,250.\n- 25/11/2018 22:19 : Klients nopirka Wheels par $4,250.\n- 25/11/2018 21:44 : Klients nopirka Wheels par $4,250.\n- 25/11/2018 21:44 : Klients nopirka Wheels par $4,250.\n- 25/11/2018 21:44 : Klients nopirka Wheels par $4,250.\n- 25/11/2018 21:44 : Klients nopirka Wheels par $4,250.\n- 25/11/2018 21:44 : Klients nopirka Wheels par $4,250.\n', 'James_B._Layfield', 0, 0, 0),
(25, 1816.86, 835.42, 10.6719, 0, 0, 14, 119.948, 59, 0, 0, 10, '', 'Michael_L._Martinez', 661, 0, 0),
(26, 1816.99, 834.554, 10.6719, 0, 0, 20, 202.874, 44, 0, 0, 10, '', 'Richard_A._Winslow', 661, 0, 0),
(27, 1960.31, -1460.86, 13.3856, 0, 0, 14, 191.717, 58, 0, 0, 10, '', 'Anthony_S._Winslow', 657, 0, 0),
(28, 1960.33, -1461.26, 13.3856, 0, 0, 13, 192.893, 56, 0, 0, 10, '', 'Justin_Z._Hummer', 657, 0, 0),
(30, 217.254, 164.182, 1022.61, 627, 3, 9, 181.884, 152, 0, 0, 10, '', 'Tyler_X._Davis', 662, 0, 0),
(31, 217.165, 164.183, 1022.61, 627, 3, 9, 181.884, 263, 0, 0, 10, '', 'Mia_Carter', 0, 0, 0),
(32, 218.247, 164.182, 1022.61, 627, 3, 3, 181.066, 47, 0, 0, 10, '', 'Jody_A._Miller', 662, 0, 0),
(33, 218.28, 164.181, 1022.61, 627, 3, 3, 178.951, 240, 0, 0, 10, '', 'David_N._Miller', 0, 0, 0),
(34, 214.724, 143.748, 1022.61, 627, 3, 15, 271.474, 163, 0, 0, 10, '', 'Dave_Miller', 0, 0, 0),
(39, 522.186, 2383.83, 435.4, 439, 43, 21, 91.1247, 269, 0, 15, 10, '- 09/01/2019 20:10 : Klients nopirka Marlboro cigaretes par $15.\n', 'Joseph_Q._Robinson', 0, 0, 0),
(40, 1909.15, -1765.35, 13.3828, 0, 0, 1, 330.559, 161, 0, 0, 10, '', 'Bobby_V._Davis', 661, 0, 0),
(41, 1908.74, -1764.87, 13.5469, 0, 0, 8, 66.2019, 21, 0, 0, 10, '', 'Tommy_B._Thompson', 661, 0, 0),
(42, 1693.25, -1746.37, 13.3887, 0, 0, 1, 86.1863, 234, 0, 0, 10, '', 'Matthew_Z._Jackson', 661, 0, 0),
(43, 1550.26, 1582.68, 11.048, 99, 25, 14, 87.8892, 213, 0, 4250, 10, '- 30/12/2018 10:07 : Klients nopirka Wheels par $4,250.\n', 'Matthew_S._Jackson', 657, 0, 0),
(44, 1873.78, -1712.42, 13.5688, 0, 0, 14, 356.861, 77, 0, 0, 10, '', 'James_Z._Wilson', 0, 0, 0),
(45, 1930.51, -2333.54, 13.7425, 553, 25, 13, 200.199, 120, 0, 0, 10, '', 'Richard_O._Johnson', 657, 0, 0),
(46, 1930.92, -2333.13, 13.7429, 553, 25, 20, 163.691, 159, 0, 40000, 10, '- 06/01/2019 17:33 : Klients nopirka Sporta ECU par $40,000.\n', 'Justin_J._Duff', 661, 0, 0),
(47, 1943.35, -2327.1, 13.7483, 553, 25, 14, 216.964, 66, 0, 21750, 10, '- 18/02/2019 18:29 : Klients nopirka Elegy - Rear Bumper par $4,500.\n- 18/02/2019 18:29 : Klients nopirka Elegy - Front Bumper par $4,500.\n- 06/01/2019 18:09 : Klients nopirka Wheels par $4,250.\n- 06/01/2019 18:07 : Klients nopirka Wheels par $4,250.\n- 06/01/2019 18:07 : Klients nopirka Wheels par $4,250.\n', 'Danny__M._Thomas', 0, 0, 0),
(48, 2144.21, -2125.9, 13.5391, 0, 0, 14, 220.787, 118, 0, 0, 10, '', 'Danny__R._Anderson', 1, 0, 0),
(49, 206.138, -98.7031, 1005.26, 249, 15, 5, 182.022, 285, 0, 0, 10, '', 'Richard_X._Keeler', 657, 0, 0),
(50, 206.364, -98.7051, 1005.26, 249, 15, 5, 175.561, 123, 0, 0, 10, '', 'David_M._Alston', 0, 0, 0),
(51, 208.792, -98.7051, 1005.26, 249, 15, 5, 175.561, 40, 0, 0, 10, '', 'Willie_I._Davis', 0, 0, 0),
(52, 2464.91, -1683.79, 861.653, 9, 3, 5, 90.3612, 132, 0, 0, 10, '', 'Justin_A._Davis', 0, 0, 0),
(53, 1878.37, -2457.97, 13.5791, 657, 27, 20, 146.184, 287, 0, 0, 10, '', 'David_Y._Alston', 0, 0, 0),
(54, 1878.38, -2457.1, 13.5791, 657, 27, 13, 102.699, 36, 0, 0, 10, '', 'Seth_N._Jones', 0, 0, 0),
(55, 1878.38, -2456.25, 13.5791, 657, 27, 14, 99.7656, 33, 0, 20750, 10, '- 18/02/2019 18:26 : Klients nopirka Wheels par $4,250.\n- 18/02/2019 18:26 : Klients nopirka Elegy - Roof par $3,250.\n- 18/02/2019 18:26 : Klients nopirka Elegy - Exhaust par $2,250.\n- 18/02/2019 18:26 : Klients nopirka Elegy - Sideskirt par $4,500.\n- 18/02/2019 18:26 : Klients nopirka Spoiler par $6,500.\n', 'Danny__Q._Dunbar', 0, 0, 0),
(56, 2045.62, -1791.74, 4.67031, 373, 3, 22, 95.0634, 193, 0, 360, 10, '- 09/01/2019 20:41 : Klients nopirka VÄ«rieÅ¡u pulkstenis Tissot Couturier par $360.\n', 'Danny__F._Grenier', 0, 0, 0),
(58, 1383.25, 1478.03, 10.8644, 101, 45, 25, 190.712, 220, 0, 0, 10, '', 'Tyler_O._Clark', 0, 0, 0),
(59, 2584.74, -1274.14, 81.1481, 0, 0, 1, 6.28152, 125, 0, 0, 10, '', 'Tyler_Y._Jones', 657, 0, 0),
(60, 2584.66, -1273.33, 81.1481, 0, 0, 2, 121.447, 97, 0, 0, 10, '', 'Jody_T._Jones', 657, 0, 0),
(61, 2585.96, -1274.03, 81.1481, 0, 0, 3, 177.083, 66, 0, 0, 10, '', 'Dean_N._Keeler', 657, 0, 0),
(62, -29.8389, -186.804, 1003.55, 284, 17, 1, 357.459, 158, 0, 0, 10, '', 'Nicholas_Y._Wilson', 0, 0, 0),
(63, -29.0908, -186.817, 1003.55, 284, 17, 3, 359.81, 72, 0, 0, 10, '', 'Seymour_L._Trotter', 0, 0, 0),
(64, -27.8984, -186.838, 1003.55, 284, 17, 6, 359.81, 190, 0, 0, 10, '', 'Daniel_Z._Martin', 657, 0, 0),
(65, 1906.1, -1750.86, 13.3828, 0, 0, 20, 89.0757, 199, 0, 0, 10, '', 'David_T._Keeler', 1, 0, 0),
(66, 1930.62, -2335.1, 13.7426, 553, 25, 14, 167.453, 139, 0, 0, 10, '', 'Lloyd_B._Layfield', 661, 0, 0),
(67, 1928.98, -2335.09, 13.7423, 553, 25, 20, 114.499, 235, 0, 104000, 10, '- 17/02/2019 16:46 : Klients nopirka Racing ieplÅ«de par $44,000.\n- 17/02/2019 16:44 : Klients nopirka Racing motora uzlabojumi par $60,000.\n', 'Andrew_T._Nagle', 661, 0, 0),
(68, 1932.23, -2334.99, 13.7442, 553, 25, 14, 249.138, 144, 0, 0, 10, '', 'Seymour_Q._Williams', 661, 0, 0),
(69, 1932.93, -2330.82, 13.7449, 553, 25, 1, 346.248, 57, 0, 0, 10, '', 'Anthony_Y._Williams', 661, 0, 0),
(70, 1931.42, -2329.82, 13.7434, 553, 25, 2, 57.0666, 127, 0, 0, 10, '', 'Christopher_S._Moore', 661, 0, 0),
(71, 1942.3, -2328.48, 13.7478, 553, 25, 14, 158.56, 197, 0, 57750, 10, '- 18/02/2019 18:40 : Klients nopirka Savanna - Exhaust par $2,250.\n- 18/02/2019 18:40 : Klients nopirka Savanna - Front Bumper par $4,500.\n- 18/02/2019 18:37 : Klients nopirka Jester - Front Bumper par $4,500.\n- 18/02/2019 18:37 : Klients nopirka Jester - Rear Bumper par $4,500.\n- 18/02/2019 18:36 : Klients nopirka Jester - Sideskirt par $4,500.\n- 18/02/2019 18:36 : Klients nopirka Jester - Spoiler par $6,500.\n- 18/02/2019 18:36 : Klients nopirka Flash - Spoiler par $6,500.\n- 18/02/2019 18:36 : Klients nopirka Flash - Exhaust par $2,250.\n- 18/02/2019 18:36 : Klients nopirka Flash - Front Bumper par $4,500.\n- 18/02/2019 18:36 : Klients nopirka Flash - Sideskirt par $4,500.\n- 18/02/2019 18:33 : Klients nopirka Sultan - Rear Bumper par $4,500.\n- 18/02/2019 18:33 : Klients nopirka Sultan - Front Bumper par $4,500.\n- 18/02/2019 18:31 : Klients nopirka Wheels par $4,250.\n', 'Ashley_U._Touchet', 0, 0, 0),
(72, 1942.2, -2326.52, 13.7478, 553, 25, 13, 53.9794, 288, 0, 50, 10, '- 18/02/2019 18:31 : Klients nopirka KrÄsu flakoniÅ†Å¡ par $50.\n', 'Matthew_M._Wilson', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `shop_contacts_info`
--

CREATE TABLE `shop_contacts_info` (
  `npcID` int(11) NOT NULL,
  `sOwner` text,
  `sPhone` text,
  `sEmail` text,
  `sForum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves data about business''s owners in shop system - MAXIME';

--
-- Gegevens worden geëxporteerd voor tabel `shop_contacts_info`
--

INSERT INTO `shop_contacts_info` (`npcID`, `sOwner`, `sPhone`, `sEmail`, `sForum`) VALUES
(47, 'Matthew Hudson', '23456', 'asd', 'asdasd'),
(67, '', '', '', ''),
(90, 'Kennedy Cameron', '', '', 'Tomss'),
(117, 'Tom Anderson', '', '', ''),
(135, 'Toby Fox', '', '', ''),
(137, 'Toby Fox', '', '', ''),
(167, 'SIA \"PortÄls', '', '', ''),
(183, 'Toby Fox', '', '', ''),
(396, 'Paul Micheal', '', '', 'Maxime'),
(397, 'Paul Micheal', '', '', 'Maxime'),
(415, 'Logan Berry', '714299', 'elephantyow@inbox.lv', 'Iphone82'),
(451, 'Mitchal Thomas Ford', '', '', 'Deffender'),
(501, '', '', '', ''),
(528, 'Mathew Stark', '794675', '', 'Bubulis'),
(529, 'Mathew Stark', '794675', '', 'Bubulis'),
(530, 'Mathew Stark', '794675', '', 'Bubulis'),
(531, 'Mathew Stark', '794675', '', 'Bubulis'),
(532, 'Mathew Stark', '794675', '', 'Bubulis'),
(533, 'Mathew Stark', '794675', '', 'Bubulis'),
(534, '', '', '', ''),
(535, 'Mathew Stark', '794675', '', 'Bubulis'),
(544, 'Mathew Stark', '794675', '', 'Bubulis'),
(553, 'Mathew Start', '794675', '', 'Bubulis'),
(554, 'Mathew Stark', '794675', '', 'Bubulis'),
(556, 'Mathew Stark', '794675', '', 'Bubulis'),
(559, 'Ryan Steinhauer', '415252', '', 'IceKing');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `shop_products`
--

CREATE TABLE `shop_products` (
  `npcID` int(11) DEFAULT NULL,
  `pItemID` int(11) DEFAULT NULL,
  `pItemValue` text,
  `pDesc` text,
  `pPrice` text,
  `pDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pID` int(11) NOT NULL,
  `pQuantity` int(11) NOT NULL DEFAULT '1',
  `pSetQuantity` int(11) NOT NULL DEFAULT '1',
  `pRestockInterval` int(11) DEFAULT '0',
  `pRestockedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves on-sale products from players, business system by Maxi';

--
-- Gegevens worden geëxporteerd voor tabel `shop_products`
--

INSERT INTO `shop_products` (`npcID`, `pItemID`, `pItemValue`, `pDesc`, `pPrice`, `pDate`, `pID`, `pQuantity`, `pSetQuantity`, `pRestockInterval`, `pRestockedDate`) VALUES
(166, 17, '1', 'Konkursa pulkstenis! ', '1', '2018-03-06 19:59:33', 25, 1, 1, 0, NULL),
(191, 147, '2', 'Loterijas BiÄ¼ete ', '150', '2018-03-07 15:18:22', 26, 1, 1, 0, NULL),
(191, 147, '5', 'Loterijas BiÄ¼ete ', '150', '2018-03-07 15:18:44', 27, 1, 1, 0, NULL),
(191, 147, '8', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:19:10', 29, 1, 1, 0, NULL),
(191, 147, '10', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:19:18', 30, 1, 1, 0, NULL),
(191, 147, '45', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:21:09', 31, 1, 1, 0, NULL),
(191, 147, '9', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:21:16', 32, 1, 1, 0, NULL),
(191, 147, '11', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:21:23', 33, 1, 1, 0, NULL),
(191, 147, '12', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:21:30', 34, 1, 1, 0, NULL),
(191, 147, '13', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:21:36', 35, 1, 1, 0, NULL),
(191, 147, '14', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:22:19', 37, 1, 1, 0, NULL),
(191, 147, '28', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:22:41', 39, 1, 1, 0, NULL),
(191, 147, '22', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:22:48', 40, 1, 1, 0, NULL),
(191, 147, '17', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:22:54', 41, 1, 1, 0, NULL),
(191, 147, '18', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:23:01', 42, 1, 1, 0, NULL),
(191, 147, '19', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:23:10', 43, 1, 1, 0, NULL),
(191, 147, '21', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:23:25', 45, 1, 1, 0, NULL),
(191, 147, '23', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:23:33', 46, 1, 1, 0, NULL),
(191, 147, '24', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:23:42', 47, 1, 1, 0, NULL),
(191, 147, '25', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:23:49', 48, 1, 1, 0, NULL),
(191, 147, '26', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:23:56', 49, 1, 1, 0, NULL),
(191, 147, '27', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:24:03', 50, 1, 1, 0, NULL),
(191, 147, '29', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:24:09', 51, 1, 1, 0, NULL),
(191, 147, '30', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:24:15', 52, 1, 1, 0, NULL),
(191, 147, '38', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:24:22', 53, 1, 1, 0, NULL),
(191, 147, '32', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:24:27', 54, 1, 1, 0, NULL),
(191, 147, '33', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:24:34', 55, 1, 1, 0, NULL),
(191, 147, '31', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:24:43', 56, 1, 1, 0, NULL),
(191, 147, '35', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:24:51', 57, 1, 1, 0, NULL),
(191, 147, '36', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:24:59', 58, 1, 1, 0, NULL),
(191, 147, '37', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:25:08', 59, 1, 1, 0, NULL),
(191, 147, '4', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:25:19', 60, 1, 1, 0, NULL),
(191, 147, '40', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:25:28', 61, 1, 1, 0, NULL),
(191, 147, '41', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:25:36', 62, 1, 1, 0, NULL),
(191, 147, '42', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:25:44', 63, 1, 1, 0, NULL),
(191, 147, '44', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:25:52', 64, 1, 1, 0, NULL),
(191, 147, '6', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:26:01', 65, 1, 1, 0, NULL),
(191, 147, '46', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:26:11', 66, 1, 1, 0, NULL),
(191, 147, '7', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:26:19', 67, 1, 1, 0, NULL),
(191, 147, '34', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:26:36', 69, 1, 1, 0, NULL),
(191, 147, '49', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:27:08', 70, 1, 1, 0, NULL),
(191, 147, '48', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:27:25', 72, 1, 1, 0, NULL),
(191, 147, '39', 'Loterijas biÄ¼ete ', '150', '2018-03-07 15:27:33', 73, 1, 1, 0, NULL),
(195, 147, 'B9', 'Loterijas BiÄ¼ete ', '500', '2018-03-07 21:40:56', 86, 1, 1, 0, NULL),
(195, 147, 'B18', 'Loterijas BiÄ¼ete ', '500', '2018-03-07 21:41:28', 87, 1, 1, 0, NULL),
(195, 147, 'B4', 'Loterijas BiÄ¼ete ', '500', '2018-03-07 21:41:36', 88, 1, 1, 0, NULL),
(195, 147, 'B7', 'Loterijas BiÄ¼ete ', '500', '2018-03-07 21:42:01', 91, 1, 1, 0, NULL),
(195, 147, 'B8', 'Loterijas BiÄ¼ete ', '500', '2018-03-07 21:42:09', 92, 1, 1, 0, NULL),
(195, 147, 'B10', 'Loterijas BiÄ¼ete ', '500', '2018-03-07 21:42:31', 94, 1, 1, 0, NULL),
(195, 147, 'B11', 'Loterijas BiÄ¼ete ', '500', '2018-03-07 21:42:40', 95, 1, 1, 0, NULL),
(195, 147, 'B12', 'Loterijas BiÄ¼ete ', '500', '2018-03-07 21:42:48', 96, 1, 1, 0, NULL),
(195, 147, 'B13', 'Loterijas BiÄ¼ete ', '500', '2018-03-07 21:43:04', 98, 1, 1, 0, NULL),
(195, 147, 'B14', 'Loterijas BiÄ¼ete ', '500', '2018-03-07 21:43:15', 99, 1, 1, 0, NULL),
(195, 147, 'B15', 'Loterijas BiÄ¼ete ', '500', '2018-03-07 21:43:22', 100, 1, 1, 0, NULL),
(195, 147, 'B16', 'Loterijas BiÄ¼ete ', '500', '2018-03-07 21:43:28', 101, 1, 1, 0, NULL),
(195, 147, 'B17', 'Loterijas BiÄ¼ete ', '500', '2018-03-07 21:43:36', 102, 1, 1, 0, NULL),
(195, 147, 'B20', 'Loterijas BiÄ¼ete ', '500', '2018-03-07 21:43:42', 103, 1, 1, 0, NULL),
(373, 2, '444078', 'Apple tÄlruÅ†a izgudrojums. ', '333', '2018-07-08 20:21:09', 105, 1, 1, 0, NULL),
(373, 2, '348883', 'Apple tÄlruÅ†a izgudrojums. ', '333', '2018-07-08 20:21:13', 106, 1, 1, 0, NULL),
(373, 2, '585550', 'Apple tÄlruÅ†a izgudrojums. ', '333', '2018-07-08 20:21:22', 108, 1, 1, 0, NULL),
(373, 2, '455244', 'Apple tÄlruÅ†a izgudrojums. ', '333', '2018-07-08 20:21:30', 110, 1, 1, 0, NULL),
(373, 2, '686848', 'Apple tÄlruÅ†a izgudrojums. ', '333', '2018-07-08 20:21:35', 111, 1, 1, 0, NULL),
(373, 2, '444881', 'Apple tÄlruÅ†a izgudrojums. ', '333', '2018-07-08 20:21:38', 112, 1, 1, 0, NULL),
(373, 2, '333568', 'Apple tÄlruÅ†a izgudrojums. ', '333', '2018-07-08 20:22:30', 114, 1, 1, 0, NULL),
(373, 2, '666456', 'Apple tÄlruÅ†a izgudrojums. ', '333', '2018-07-08 20:22:33', 115, 1, 1, 0, NULL),
(373, 2, '441222', 'Apple tÄlruÅ†a izgudrojums. ', '333', '2018-07-08 20:22:41', 117, 1, 1, 0, NULL),
(373, 2, '333129', 'Apple tÄlruÅ†a izgudrojums. ', '333', '2018-07-08 20:22:44', 118, 1, 1, 0, NULL),
(373, 2, '457773', 'Apple tÄlruÅ†a izgudrojums. ', '333', '2018-07-08 20:23:04', 121, 1, 1, 0, NULL),
(373, 2, '383444', 'Apple tÄlruÅ†a izgudrojums. ', '333', '2018-07-08 20:31:52', 122, 1, 1, 0, NULL),
(373, 2, '711126', 'Apple tÄlruÅ†a izgudrojums. ', '333', '2018-07-08 20:31:57', 123, 1, 1, 0, NULL),
(373, 2, '777471', 'Apple tÄlruÅ†a izgudrojums. ', '333', '2018-07-08 20:32:01', 124, 1, 1, 0, NULL),
(373, 57, '500', 'Sarkana kanna. ', '1000', '2018-07-24 16:30:40', 413, 1, 1, 0, NULL),
(373, 90, '1', 'IdeÄla priekÅ¡ moto braukÅ¡anas. ', '300', '2018-07-24 16:30:54', 414, 1, 1, 0, NULL),
(373, 96, '', 'Laptots,ar kuru vari sÄ“rfot internetÄ. ', '300', '2018-07-24 16:31:03', 415, 1, 1, 0, NULL),
(373, 96, '', 'Laptots,ar kuru vari sÄ“rfot internetÄ. ', '300', '2018-07-24 18:39:38', 417, 1, 1, 0, NULL),
(373, 57, '500', 'Sarkana kanna.  ', '1000', '2018-07-25 06:48:30', 420, 1, 1, 0, NULL),
(373, 96, '', 'Laptots,ar kuru vari sÄ“rfot internetÄ. ', '100', '2018-07-25 10:50:25', 439, 1, 1, 0, NULL),
(373, 57, '500', 'Sarkana kanna. ', '1000', '2018-07-25 15:48:23', 440, 1, 1, 0, NULL),
(373, 96, '', 'Laptots,ar kuru vari sÄ“rfot internetÄ. ', '300', '2018-07-25 15:49:49', 443, 1, 1, 0, NULL),
(451, 80, 'KrÄ“sls:1727', 'KrÄ“sls:1727 ', '60', '2018-07-25 16:51:14', 445, 1, 1, 0, NULL),
(451, 80, 'KrÄ“sls:1727', 'KrÄ“sls:1727 ', '60', '2018-07-25 16:51:23', 447, 1, 1, 0, NULL),
(451, 80, 'KrÄ“sls:1727', 'KrÄ“sls:1727 ', '60', '2018-07-25 16:51:30', 448, 1, 1, 0, NULL),
(451, 80, 'KrÄ“sls:1727', 'KrÄ“sls:1727 ', '60', '2018-07-25 16:51:56', 449, 1, 1, 0, NULL),
(451, 80, 'Galds:2205', 'Galds:2205 ', '110', '2018-07-26 09:03:27', 471, 1, 1, 0, NULL),
(451, 80, 'Galds:2205', 'Galds:2205 ', '110', '2018-07-26 09:03:34', 472, 1, 1, 0, NULL),
(451, 80, 'Galds:2205', 'Galds:2205 ', '110', '2018-07-26 09:03:39', 473, 1, 1, 0, NULL),
(451, 80, 'Galds:2205', 'Galds:2205 ', '110', '2018-07-26 09:03:47', 475, 1, 1, 0, NULL),
(451, 80, 'Galds:2205', 'Galds:2205 ', '110', '2018-07-26 09:03:53', 476, 1, 1, 0, NULL),
(451, 80, 'Galds:2205', 'Galds:2205 ', '110', '2018-07-26 09:03:57', 477, 1, 1, 0, NULL),
(451, 80, 'Galds:2205', 'Galds:2205 ', '110', '2018-07-26 09:04:00', 478, 1, 1, 0, NULL),
(373, 44, '1', 'A small chemistry set. ', '500', '2018-07-27 11:23:36', 489, 1, 1, 0, NULL),
(373, 44, '1', 'A small chemistry set. ', '500', '2018-07-27 11:23:43', 490, 1, 1, 0, NULL),
(373, 44, '1', 'A small chemistry set. ', '500', '2018-07-27 11:23:46', 491, 1, 1, 0, NULL),
(373, 44, '1', 'A small chemistry set. ', '500', '2018-07-27 11:23:50', 492, 1, 1, 0, NULL),
(373, 44, '1', 'A small chemistry set. ', '500', '2018-07-27 11:23:53', 493, 1, 1, 0, NULL),
(386, 114, '1050', 'X-Flow Spoiler (Flash) ', '2000', '2018-07-28 17:32:10', 498, 1, 1, 0, NULL),
(386, 114, '1001', 'Win Spoiler ', '3500', '2018-07-28 17:32:39', 499, 1, 1, 0, NULL),
(373, 120, '1', 'Allows you to stay under-water for quite some time ', '1000', '2018-07-31 06:56:29', 501, 1, 1, 0, NULL),
(373, 120, '1', 'Allows you to stay under-water for quite some time ', '1000', '2018-07-31 06:56:33', 502, 1, 1, 0, NULL),
(373, 120, '1', 'Allows you to stay under-water for quite some time ', '1000', '2018-07-31 06:56:44', 503, 1, 1, 0, NULL),
(520, 111, '1', 'Neizproti pilsÄ“tu? Nospied,lai izslÄ“gtu. ', '500', '2018-08-05 07:59:17', 566, 1, 1, 0, NULL),
(520, 218, '1', 'Klauna Maska ', '80', '2018-08-05 07:59:44', 567, 1, 1, 0, NULL),
(520, 16, '299', '(( ID #299 )) ', '100', '2018-08-05 08:00:49', 568, 1, 1, 0, NULL),
(520, 183, '', 'Reta karte,bet ar lielÄm atlaidÄ“m. ', '1000', '2018-08-05 08:01:55', 569, 1, 1, 0, NULL),
(520, 183, '', 'Reta karte,bet ar lielÄm atlaidÄ“m. ', '1000', '2018-08-05 08:02:02', 570, 1, 1, 0, NULL),
(520, 183, '', 'Reta karte,bet ar lielÄm atlaidÄ“m. ', '1000', '2018-08-05 08:02:08', 571, 1, 1, 0, NULL),
(520, 126, 'Rapid', 'DroÅ¡Ä«bas josta. ', '500', '2018-08-05 08:02:21', 572, 1, 1, 0, NULL),
(520, 176, '1', 'Melna tumba,kura atskaÅ†o rÄdio un var regulÄ“t skaÄ¼umu. ', '1000', '2018-08-05 08:04:24', 573, 1, 1, 0, NULL),
(520, 176, '1', 'Melna tumba,kura atskaÅ†o rÄdio un var regulÄ“t skaÄ¼umu. ', '1000', '2018-08-05 08:05:08', 574, 1, 1, 0, NULL),
(520, 57, '500', 'Sarkana kanna. ', '300', '2018-08-05 08:55:24', 575, 1, 1, 0, NULL),
(520, 57, '500', 'Sarkana kanna. ', '300', '2018-08-05 08:55:28', 576, 1, 1, 0, NULL),
(520, 57, '500', 'Sarkana kanna. ', '300', '2018-08-05 08:55:35', 577, 1, 1, 0, NULL),
(520, 57, '500', 'Sarkana kanna. ', '300', '2018-08-05 08:55:41', 578, 1, 1, 0, NULL),
(520, 57, '500', 'Sarkana kanna. ', '300', '2018-08-05 08:55:52', 580, 1, 1, 0, NULL),
(520, 57, '500', 'Sarkana kanna. ', '300', '2018-08-05 08:55:58', 581, 1, 1, 0, NULL),
(520, 80, 'Å½ogs:970', 'Å½ogs:970 ', '100', '2018-08-05 08:56:06', 582, 1, 1, 0, NULL),
(520, 80, 'Å½ogs:970', 'Å½ogs:970 ', '100', '2018-08-05 08:56:11', 583, 1, 1, 0, NULL),
(520, 80, 'Å½ogs:970', 'Å½ogs:970 ', '100', '2018-08-05 08:56:16', 584, 1, 1, 0, NULL),
(520, 114, '1144', 'Left Square Vents ', '2500', '2018-08-05 08:56:27', 585, 1, 1, 0, NULL),
(520, 182, '1', 'SatÄ«ts marihuÄnas dÅ¾oints. ', '300', '2018-08-05 08:56:35', 586, 1, 1, 0, NULL),
(520, 215, '1', 'SmÄ“Ä·Ä“joÅ¡a PÄ“rtiÄ·a Maska ', '100', '2018-08-05 08:56:54', 587, 1, 1, 0, NULL),
(520, 19, '1', 'IespÄ“ja klausÄ«ties radio. ', '200', '2018-08-05 08:57:01', 588, 1, 1, 0, NULL),
(520, 46, '', 'Gara,stingra virve. ', '100', '2018-08-05 08:57:06', 589, 1, 1, 0, NULL),
(520, 46, '', 'Gara,stingra virve. ', '100', '2018-08-05 08:57:14', 590, 1, 1, 0, NULL),
(520, 114, '1037', 'X-Flow Exhaust (Elegy) ', '3000', '2018-08-05 08:57:25', 591, 1, 1, 0, NULL),
(386, 114, '1001', 'Win Spoiler ', '4500', '2018-08-07 08:03:31', 596, 1, 1, 0, NULL),
(545, 114, '1077', 'Classic Wheels ', '2000', '2018-08-13 23:38:05', 762, 1, 1, 0, NULL),
(545, 114, '1076', 'Wires Wheels ', '2000', '2018-08-14 01:14:17', 774, 1, 1, 0, NULL),
(582, 80, 'Fanta:955', 'Fantas automÄts ', '1250', '2018-08-16 11:48:54', 828, 1, 1, 0, NULL),
(582, 147, '1', 'IzdaiÄ¼o savu interjeru pats. ', '250', '2018-08-16 12:24:47', 856, 1, 1, 0, NULL),
(582, 147, '1', 'IzdaiÄ¼o savu interjeru pats. ', '250', '2018-08-16 12:24:53', 857, 1, 1, 0, NULL),
(582, 147, '1', 'IzdaiÄ¼o savu interjeru pats. ', '250', '2018-08-16 12:24:59', 858, 1, 1, 0, NULL),
(582, 147, '1', 'IzdaiÄ¼o savu interjeru pats. ', '250', '2018-08-16 12:25:05', 859, 1, 1, 0, NULL),
(582, 147, '1', 'IzdaiÄ¼o savu interjeru pats. ', '250', '2018-08-16 12:25:11', 860, 1, 1, 0, NULL),
(582, 147, '1', 'IzdaiÄ¼o savu interjeru pats. ', '250', '2018-08-16 12:25:16', 861, 1, 1, 0, NULL),
(582, 147, '1', 'IzdaiÄ¼o savu interjeru pats. ', '250', '2018-08-16 12:25:23', 862, 1, 1, 0, NULL),
(545, 54, '1', 'ParocÄ«gs rÄdio. ', '200', '2018-08-21 21:58:48', 915, 1, 1, 0, NULL),
(545, 114, '1098', 'Access Wheels ', '2000', '2018-08-21 22:24:17', 916, 1, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `slotmachines`
--

CREATE TABLE `slotmachines` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `rotation` decimal(10,6) DEFAULT '0.000000',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `speedcams`
--

CREATE TABLE `speedcams` (
  `id` int(11) NOT NULL,
  `x` float(11,7) NOT NULL DEFAULT '0.0000000',
  `y` float(11,7) NOT NULL DEFAULT '0.0000000',
  `z` float(11,7) NOT NULL DEFAULT '0.0000000',
  `interior` int(3) NOT NULL DEFAULT '0' COMMENT 'Stores the location of the pernament speedcams',
  `dimension` int(5) NOT NULL DEFAULT '0',
  `maxspeed` int(4) NOT NULL DEFAULT '120',
  `radius` int(4) NOT NULL DEFAULT '2',
  `enabled` smallint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `speedcams`
--

INSERT INTO `speedcams` (`id`, `x`, `y`, `z`, `interior`, `dimension`, `maxspeed`, `radius`, `enabled`) VALUES
(1, 1608.4658203, -1734.5908203, 13.3828125, 0, 0, 70, 30, 1),
(2, 374.4619141, -1705.2373047, 6.8449607, 0, 0, 100, 30, 1),
(3, 1349.9941406, -1416.8144531, 13.5468750, 0, 0, 60, 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `speedingviolations`
--

CREATE TABLE `speedingviolations` (
  `id` int(11) NOT NULL,
  `carID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `speed` int(5) NOT NULL,
  `area` varchar(50) NOT NULL,
  `personVisible` int(11) NOT NULL,
  `summa` int(11) NOT NULL DEFAULT '500'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `speedingviolations`
--

INSERT INTO `speedingviolations` (`id`, `carID`, `time`, `speed`, `area`, `personVisible`, `summa`) VALUES
(1, 1, '2018-08-28 10:56:47', 90, 'Commerce Rietumiem', 2, 90),
(2, 6, '2018-08-28 18:56:38', 133, 'Santa Maria Beach Rietumiem', 2, 133),
(3, 1, '2018-09-06 16:26:43', 74, 'Commerce Rietumiem', 6, 74),
(4, 32, '2018-09-16 21:19:24', 128, 'Commerce Rietumu', 14, 500),
(5, 32, '2018-09-16 21:19:24', 129, 'Commerce Rietumu', 14, 500),
(6, 32, '2018-09-16 21:19:24', 130, 'Commerce Rietumu', 14, 500),
(7, 32, '2018-09-16 21:19:24', 130, 'Commerce Rietumu', 14, 500),
(8, 32, '2018-09-16 21:19:25', 131, 'Commerce Rietumu', 14, 500),
(9, 32, '2018-09-16 21:19:25', 132, 'Commerce Rietumu', 14, 500),
(11, 32, '2018-09-16 21:19:25', 133, 'Commerce Rietumu', 14, 500),
(12, 32, '2018-09-16 21:19:25', 134, 'Commerce Rietumu', 14, 500),
(13, 32, '2018-09-16 21:19:25', 134, 'Commerce Rietumu', 14, 500),
(14, 32, '2018-09-16 21:19:25', 134, 'Commerce Rietumu', 14, 500),
(15, 32, '2018-09-16 21:19:25', 136, 'Commerce Rietumu', 14, 500),
(17, 32, '2018-09-16 21:19:26', 137, 'Commerce Rietumu', 14, 500),
(18, 32, '2018-09-16 21:19:26', 137, 'Commerce Rietumu', 14, 500),
(19, 32, '2018-09-16 21:19:26', 138, 'Commerce Rietumu', 14, 500),
(20, 32, '2018-09-16 21:19:26', 139, 'Commerce Rietumu', 14, 500),
(21, 32, '2018-09-16 21:19:26', 139, 'Commerce Rietumu', 14, 500),
(22, 32, '2018-09-16 21:19:26', 140, 'Commerce Rietumu', 14, 500),
(23, 32, '2018-09-16 21:19:26', 140, 'Commerce Rietumu', 14, 500),
(24, 32, '2018-09-16 21:19:26', 139, 'Commerce Rietumu', 14, 500),
(25, 32, '2018-09-16 21:19:26', 137, 'Commerce Rietumu', 14, 500),
(26, 32, '2018-09-16 21:19:27', 134, 'Commerce Rietumu', 14, 500),
(27, 32, '2018-09-16 21:19:27', 132, 'Commerce Rietumu', 14, 500),
(28, 32, '2018-09-16 21:19:27', 127, 'Commerce Rietumu', 14, 500),
(29, 32, '2018-09-16 21:19:27', 127, 'Commerce Rietumu', 14, 500),
(30, 32, '2018-09-16 21:19:27', 122, 'Commerce Rietumu', 14, 500),
(31, 32, '2018-09-16 21:19:27', 112, 'Commerce Rietumu', 14, 500),
(32, 32, '2018-09-16 21:19:27', 101, 'Commerce Rietumu', 14, 500),
(33, 32, '2018-09-16 21:19:27', 92, 'Commerce Rietumu', 14, 500),
(34, 32, '2018-09-16 21:19:48', 100, 'Commerce Austrumiem', 14, 100),
(35, 32, '2018-09-16 21:19:48', 100, 'Commerce Austrumu', 14, 500),
(36, 32, '2018-09-16 21:19:48', 101, 'Commerce Austrumiem', 14, 101),
(37, 32, '2018-09-16 21:19:48', 101, 'Commerce Austrumu', 14, 500),
(38, 32, '2018-09-16 21:19:48', 103, 'Commerce Austrumiem', 14, 103),
(39, 32, '2018-09-16 21:19:48', 103, 'Commerce Austrumu', 14, 500),
(40, 32, '2018-09-16 21:19:48', 104, 'Commerce Austrumiem', 14, 104),
(41, 32, '2018-09-16 21:19:48', 104, 'Commerce Austrumu', 14, 500),
(42, 32, '2018-09-16 21:19:48', 105, 'Commerce Austrumiem', 14, 105),
(43, 32, '2018-09-16 21:19:48', 105, 'Commerce Austrumu', 14, 500),
(44, 32, '2018-09-16 21:19:48', 106, 'Commerce Austrumiem', 14, 106),
(45, 32, '2018-09-16 21:19:48', 106, 'Commerce Austrumu', 14, 500),
(46, 32, '2018-09-16 21:19:49', 108, 'Commerce Austrumiem', 14, 108),
(47, 32, '2018-09-16 21:19:49', 108, 'Commerce Austrumu', 14, 500),
(48, 32, '2018-09-16 21:19:49', 109, 'Commerce Austrumiem', 14, 109),
(49, 32, '2018-09-16 21:19:49', 109, 'Commerce Austrumu', 14, 500),
(50, 32, '2018-09-16 21:19:49', 110, 'Commerce Austrumiem', 14, 110),
(51, 32, '2018-09-16 21:19:49', 110, 'Commerce Austrumu', 14, 500),
(52, 32, '2018-09-16 21:19:49', 111, 'Commerce Austrumiem', 14, 111),
(53, 32, '2018-09-16 21:19:49', 111, 'Commerce Austrumu', 14, 500),
(54, 32, '2018-09-16 21:19:49', 112, 'Commerce Austrumiem', 14, 112),
(55, 32, '2018-09-16 21:19:49', 112, 'Commerce Austrumu', 14, 500),
(56, 32, '2018-09-16 21:19:49', 113, 'Commerce Austrumiem', 14, 113),
(57, 32, '2018-09-16 21:19:49', 113, 'Commerce Austrumu', 14, 500),
(58, 32, '2018-09-16 21:19:49', 113, 'Commerce Austrumiem', 14, 113),
(59, 32, '2018-09-16 21:19:49', 113, 'Commerce Austrumu', 14, 500),
(60, 32, '2018-09-16 21:19:49', 114, 'Commerce Austrumiem', 14, 114),
(61, 32, '2018-09-16 21:19:49', 114, 'Commerce Austrumu', 14, 500),
(62, 32, '2018-09-16 21:19:49', 114, 'Commerce Austrumiem', 14, 114),
(63, 32, '2018-09-16 21:19:49', 114, 'Commerce Austrumu', 14, 500),
(64, 32, '2018-09-16 21:19:49', 112, 'Commerce Austrumiem', 14, 112),
(65, 32, '2018-09-16 21:19:49', 112, 'Commerce Austrumu', 14, 500),
(66, 32, '2018-09-16 21:19:50', 109, 'Commerce Austrumiem', 14, 109),
(67, 32, '2018-09-16 21:19:50', 109, 'Commerce Austrumu', 14, 500),
(68, 32, '2018-09-16 21:19:50', 107, 'Commerce Austrumiem', 14, 107),
(69, 32, '2018-09-16 21:19:50', 107, 'Commerce Austrumu', 14, 500),
(70, 32, '2018-09-16 21:19:50', 105, 'Commerce Austrumiem', 14, 105),
(71, 32, '2018-09-16 21:19:50', 105, 'Commerce Austrumu', 14, 500),
(72, 32, '2018-09-16 21:19:50', 103, 'Commerce Austrumiem', 14, 103),
(73, 32, '2018-09-16 21:19:50', 103, 'Commerce Austrumu', 14, 500),
(74, 32, '2018-09-16 21:19:50', 100, 'Commerce Austrumiem', 14, 100),
(75, 32, '2018-09-16 21:19:50', 100, 'Commerce Austrumu', 14, 500),
(76, 32, '2018-09-16 21:19:50', 98, 'Commerce Austrumiem', 14, 98),
(77, 32, '2018-09-16 21:19:50', 98, 'Commerce Austrumu', 14, 500),
(78, 32, '2018-09-16 21:19:50', 95, 'Commerce Austrumiem', 14, 95),
(79, 32, '2018-09-16 21:19:50', 95, 'Commerce Austrumu', 14, 500),
(80, 32, '2018-09-16 21:19:50', 86, 'Commerce Austrumiem', 14, 86),
(81, 32, '2018-09-16 21:19:50', 86, 'Commerce Austrumu', 14, 500),
(82, 32, '2018-09-16 21:19:51', 76, 'Commerce Austrumiem', 14, 76),
(83, 32, '2018-09-16 21:19:51', 76, 'Commerce Austrumu', 14, 500),
(84, 32, '2018-09-16 21:19:58', 81, 'Commerce Rietumiem', 14, 81),
(85, 32, '2018-09-16 21:19:58', 81, 'Commerce Rietumu', 14, 500),
(86, 32, '2018-09-16 21:19:58', 81, 'Commerce Rietumiem', 14, 81),
(87, 32, '2018-09-16 21:19:58', 81, 'Commerce Rietumu', 14, 500),
(88, 32, '2018-09-16 21:19:58', 83, 'Commerce Rietumiem', 14, 83),
(89, 32, '2018-09-16 21:19:58', 83, 'Commerce Rietumu', 14, 500),
(90, 32, '2018-09-16 21:19:58', 85, 'Commerce Rietumiem', 14, 85),
(91, 32, '2018-09-16 21:19:58', 85, 'Commerce Rietumu', 14, 500),
(92, 32, '2018-09-16 21:19:58', 86, 'Commerce Rietumiem', 14, 86),
(93, 32, '2018-09-16 21:19:58', 86, 'Commerce Rietumu', 14, 500),
(94, 32, '2018-09-16 21:19:58', 89, 'Commerce Rietumiem', 14, 89),
(96, 32, '2018-09-16 21:19:58', 90, 'Commerce Rietumiem', 14, 90),
(97, 32, '2018-09-16 21:19:58', 90, 'Commerce Rietumu', 14, 500),
(98, 32, '2018-09-16 21:19:59', 91, 'Commerce Rietumiem', 14, 91),
(99, 32, '2018-09-16 21:19:59', 91, 'Commerce Rietumu', 14, 500),
(100, 32, '2018-09-16 21:19:59', 92, 'Commerce Rietumiem', 14, 92),
(101, 32, '2018-09-16 21:19:59', 92, 'Commerce Rietumu', 14, 500),
(102, 32, '2018-09-16 21:19:59', 94, 'Commerce Rietumiem', 14, 94),
(103, 32, '2018-09-16 21:19:59', 94, 'Commerce Rietumu', 14, 500),
(104, 32, '2018-09-16 21:19:59', 95, 'Commerce Rietumiem', 14, 95),
(105, 32, '2018-09-16 21:19:59', 95, 'Commerce Rietumu', 14, 500),
(106, 32, '2018-09-16 21:19:59', 96, 'Commerce Rietumiem', 14, 96),
(107, 32, '2018-09-16 21:19:59', 96, 'Commerce Rietumu', 14, 500),
(108, 32, '2018-09-16 21:19:59', 97, 'Commerce Rietumiem', 14, 97),
(109, 32, '2018-09-16 21:19:59', 97, 'Commerce Rietumu', 14, 500),
(110, 32, '2018-09-16 21:19:59', 98, 'Commerce Rietumiem', 14, 98),
(111, 32, '2018-09-16 21:19:59', 98, 'Commerce Rietumu', 14, 500),
(112, 32, '2018-09-16 21:19:59', 99, 'Commerce Rietumiem', 14, 99),
(113, 32, '2018-09-16 21:19:59', 99, 'Commerce Rietumu', 14, 500),
(114, 32, '2018-09-16 21:19:59', 101, 'Commerce Rietumiem', 14, 101),
(115, 32, '2018-09-16 21:19:59', 101, 'Commerce Rietumu', 14, 500),
(116, 32, '2018-09-16 21:20:00', 102, 'Commerce Rietumiem', 14, 102),
(117, 32, '2018-09-16 21:20:00', 102, 'Commerce Rietumu', 14, 500),
(118, 32, '2018-09-16 21:20:00', 103, 'Commerce Rietumiem', 14, 103),
(119, 32, '2018-09-16 21:20:00', 103, 'Commerce Rietumu', 14, 500),
(120, 32, '2018-09-16 21:20:00', 104, 'Commerce Rietumiem', 14, 104),
(121, 32, '2018-09-16 21:20:00', 104, 'Commerce Rietumu', 14, 500),
(122, 32, '2018-09-16 21:20:00', 105, 'Commerce Rietumiem', 14, 105),
(123, 32, '2018-09-16 21:20:00', 105, 'Commerce Rietumu', 14, 500),
(124, 32, '2018-09-16 21:20:00', 104, 'Commerce Rietumiem', 14, 104),
(125, 32, '2018-09-16 21:20:00', 104, 'Commerce Rietumu', 14, 500),
(126, 32, '2018-09-16 21:20:00', 101, 'Commerce Rietumiem', 14, 101),
(127, 32, '2018-09-16 21:20:00', 101, 'Commerce Rietumu', 14, 500),
(128, 32, '2018-09-16 21:20:00', 99, 'Commerce Rietumiem', 14, 99),
(129, 32, '2018-09-16 21:20:00', 99, 'Commerce Rietumu', 14, 500),
(130, 32, '2018-09-16 21:20:00', 88, 'Commerce Rietumiem', 14, 88),
(131, 32, '2018-09-16 21:20:00', 88, 'Commerce Rietumu', 14, 500),
(132, 32, '2018-09-16 21:20:00', 79, 'Commerce Rietumiem', 14, 79),
(133, 32, '2018-09-16 21:20:00', 79, 'Commerce Rietumu', 14, 500),
(134, 32, '2018-09-16 21:23:20', 90, 'Commerce Austrumiem', 14, 90),
(135, 32, '2018-09-16 21:23:28', 85, 'Commerce Rietumiem', 14, 85),
(136, 32, '2018-09-19 22:22:18', 71, 'Commerce Austrumiem', 15, 71),
(137, 32, '2018-09-19 22:36:51', 141, 'Commerce Rietumiem', 15, 141),
(138, 32, '2018-09-19 22:48:17', 100, 'Commerce Austrumiem', 15, 100),
(139, 32, '2018-09-19 22:55:40', 153, 'Commerce Austrumiem', 15, 153),
(140, 32, '2018-09-19 23:05:27', 150, 'Commerce Rietumiem', 15, 150),
(141, 32, '2018-09-19 23:05:48', 142, 'Commerce Austrumiem', 15, 142),
(142, 20, '2018-10-04 19:22:11', 191, 'Santa Maria Beach Rietumiem', 15, 191),
(143, 44, '2018-10-04 21:59:14', 108, 'Santa Maria Beach Austrumiem', 20, 108),
(144, 44, '2018-10-04 22:00:04', 72, 'Commerce Rietumiem', 20, 72),
(145, 29, '2018-10-05 17:37:51', 148, 'Commerce Rietumiem', 20, 148),
(146, 29, '2018-10-05 17:46:24', 73, 'Commerce Rietumiem', 20, 73),
(147, 20, '2018-10-05 17:52:45', 177, 'Commerce Rietumiem', 15, 177),
(148, 20, '2018-10-05 17:57:17', 198, 'Commerce Austrumiem', 15, 198),
(149, 20, '2018-10-12 17:40:32', 152, 'Commerce Austrumiem', 15, 152),
(150, 20, '2018-11-06 21:11:01', 179, 'Commerce Austrumiem', 15, 179),
(151, 84, '2018-11-11 00:21:34', 228, 'Santa Maria Beach Rietumiem', 22, 228),
(152, 20, '2018-11-11 00:43:50', 174, 'Commerce Austrumiem', 22, 174),
(153, 19, '2018-11-11 17:23:41', 145, 'Commerce Austrumiem', 15, 145),
(154, 19, '2018-11-11 17:24:10', 181, 'Commerce Rietumiem', 15, 181),
(155, 19, '2018-11-11 17:38:50', 200, 'Commerce Austrumiem', 15, 200),
(156, 19, '2018-11-11 17:46:50', 186, 'Commerce Rietumiem', 15, 186),
(157, 87, '2018-12-20 19:23:54', 122, 'Commerce Rietumiem', 20, 122),
(158, 87, '2018-12-20 19:24:18', 114, 'Commerce Austrumiem', 20, 114),
(159, 87, '2018-12-20 19:37:48', 135, 'Santa Maria Beach Rietumiem', 20, 135),
(160, 86, '2018-12-21 17:23:25', 72, 'Commerce Austrumiem', 20, 72),
(161, 86, '2018-12-21 17:25:54', 111, 'Commerce Rietumiem', 20, 111),
(162, 86, '2018-12-22 15:22:00', 124, 'Commerce Austrumiem', 20, 124),
(163, 86, '2018-12-22 16:56:38', 177, 'Commerce Rietumiem', 20, 177),
(164, 86, '2018-12-22 20:09:07', 112, 'Commerce Austrumiem', 20, 112),
(165, 32, '2018-12-24 13:46:48', 157, 'Commerce Austrumiem', 15, 157),
(166, 91, '2018-12-24 21:50:52', 72, 'Commerce Austrumiem', 19, 72),
(167, 91, '2018-12-24 21:52:27', 118, 'Commerce Rietumiem', 19, 118),
(168, 91, '2018-12-26 17:19:45', 142, 'Commerce Rietumiem', 19, 142),
(169, 91, '2018-12-26 17:20:03', 158, 'Commerce Austrumiem', 19, 158),
(170, 21, '2018-12-26 17:38:50', 158, 'Commerce Austrumiem', 20, 158),
(171, 21, '2018-12-26 17:44:08', 156, 'Commerce Rietumiem', 20, 156),
(172, 91, '2018-12-26 18:56:21', 149, 'Commerce Austrumiem', 19, 149),
(173, 91, '2018-12-26 18:58:45', 179, 'Commerce Austrumiem', 19, 179),
(174, 91, '2018-12-26 19:38:26', 103, 'Commerce Rietumiem', 19, 103),
(175, 20, '2018-12-27 13:05:06', 183, 'Commerce Austrumiem', 20, 183),
(176, 20, '2018-12-27 13:21:05', 200, 'Santa Maria Beach Austrumiem', 20, 200),
(177, 20, '2018-12-27 13:29:52', 181, 'Commerce Rietumiem', 20, 181),
(178, 20, '2018-12-27 19:20:03', 160, 'Commerce Austrumiem', 20, 160),
(179, 20, '2018-12-28 10:43:11', 171, 'Commerce Rietumiem', 20, 171),
(180, 91, '2018-12-28 17:51:12', 87, 'Commerce Rietumiem', 19, 87),
(181, 91, '2018-12-28 17:52:33', 164, 'Commerce Austrumiem', 19, 164),
(182, 91, '2018-12-28 17:56:54', 117, 'Commerce Rietumiem', 19, 117),
(183, 91, '2018-12-28 18:00:07', 77, 'Commerce Rietumiem', 19, 77),
(184, 91, '2018-12-28 18:07:29', 111, 'Commerce Rietumiem', 19, 111),
(185, 93, '2018-12-30 10:28:12', 149, 'Commerce Austrumiem', 20, 149),
(186, 93, '2018-12-30 12:45:17', 177, 'Commerce Rietumiem', 20, 177),
(187, 93, '2018-12-30 12:46:19', 126, 'Santa Maria Beach Rietumiem', 20, 126),
(188, 93, '2018-12-30 12:46:51', 232, 'Santa Maria Beach Austrumiem', 20, 232),
(189, 93, '2018-12-30 12:54:59', 200, 'Commerce Austrumiem', 20, 200),
(190, 93, '2018-12-30 16:03:08', 208, 'Commerce Austrumiem', 20, 208),
(191, 93, '2018-12-30 16:18:47', 147, 'Commerce Austrumiem', 20, 147),
(192, 93, '2018-12-31 16:05:30', 201, 'Santa Maria Beach Rietumiem', 20, 201),
(193, 93, '2018-12-31 16:05:52', 172, 'Santa Maria Beach Austrumiem', 20, 172),
(194, 93, '2019-01-05 19:53:51', 182, 'Commerce Rietumiem', 20, 182),
(195, 93, '2019-01-05 20:38:57', 201, 'Commerce Rietumiem', 20, 201),
(196, 93, '2019-01-05 21:57:59', 79, 'Commerce Austrumiem', 20, 79),
(197, 97, '2019-01-06 20:40:59', 221, 'Commerce Austrumiem', 19, 221),
(198, 97, '2019-01-06 20:58:34', 194, 'Commerce Austrumiem', 19, 194),
(199, 97, '2019-01-07 21:54:35', 209, 'Commerce Rietumiem', 14, 209),
(200, 44, '2019-01-09 19:56:53', 122, 'Commerce Rietumiem', 19, 122),
(201, 44, '2019-01-09 20:38:36', 127, 'Commerce Austrumiem', 19, 127),
(202, 93, '2019-01-10 17:00:38', 230, 'Santa Maria Beach Rietumiem', 20, 230),
(203, 93, '2019-01-11 18:11:03', 118, 'Commerce Rietumiem', 20, 118),
(204, 93, '2019-01-11 18:29:36', 158, 'Commerce Rietumiem', 20, 158),
(205, 93, '2019-01-11 18:30:30', 101, 'Santa Maria Beach Rietumiem', 20, 101),
(206, 93, '2019-01-11 18:38:12', 114, 'Commerce Rietumiem', 20, 114),
(207, 93, '2019-01-11 18:38:26', 180, 'Commerce Austrumiem', 20, 180),
(208, 93, '2019-01-11 21:45:56', 120, 'Commerce Rietumiem', 20, 120),
(209, 32, '2019-01-23 17:15:17', 146, 'Commerce Austrumiem', 15, 146),
(210, 32, '2019-01-23 17:16:02', 160, 'Commerce Rietumiem', 15, 160),
(211, 19, '2019-01-23 20:50:04', 124, 'Commerce Austrumiem', 15, 124),
(212, 118, '2019-01-27 15:57:18', 159, 'Commerce Rietumiem', 14, 159),
(213, 118, '2019-01-27 15:57:24', 117, 'Commerce Austrumiem', 14, 117),
(214, 118, '2019-01-27 21:04:24', 170, 'Commerce Rietumiem', 14, 170),
(215, 118, '2019-01-27 21:15:36', 71, 'Commerce Rietumiem', 14, 71),
(216, 21, '2019-01-29 22:32:48', 124, 'Commerce Austrumiem', 15, 124),
(217, 21, '2019-01-29 22:34:45', 185, 'Commerce Rietumiem', 15, 185),
(218, 97, '2019-01-29 22:39:12', 93, 'Commerce Austrumiem', 15, 93),
(219, 118, '2019-01-30 20:29:33', 91, 'Commerce Austrumiem', 14, 91),
(220, 118, '2019-01-30 20:29:40', 72, 'Commerce Rietumiem', 14, 72),
(221, 97, '2019-02-02 21:12:59', 161, 'Commerce Rietumiem', 19, 161),
(222, 97, '2019-02-02 21:13:15', 129, 'Commerce Austrumiem', 19, 129),
(223, 118, '2019-02-03 18:54:02', 95, 'Commerce Austrumiem', 14, 95),
(224, 97, '2019-02-11 19:22:32', 197, 'Commerce Austrumiem', 21, 197),
(225, 97, '2019-02-11 19:22:44', 205, 'Commerce Rietumiem', 21, 205),
(226, 44, '2019-02-17 15:08:42', 98, 'Commerce Rietumiem', 19, 98),
(227, 44, '2019-02-17 15:09:53', 84, 'Commerce Austrumiem', 19, 84),
(228, 97, '2019-02-17 15:35:03', 191, 'Commerce Austrumiem', 19, 191),
(229, 97, '2019-02-17 15:35:46', 211, 'Commerce Rietumiem', 19, 211),
(230, 97, '2019-02-17 15:40:18', 152, 'Commerce Austrumiem', 19, 152);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `staff_changelogs`
--

CREATE TABLE `staff_changelogs` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `team` int(11) NOT NULL,
  `from_rank` int(11) NOT NULL,
  `to_rank` int(11) DEFAULT NULL,
  `by` int(11) DEFAULT NULL,
  `details` text,
  `date` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `staff_changelogs`
--

INSERT INTO `staff_changelogs` (`id`, `userid`, `team`, `from_rank`, `to_rank`, `by`, `details`, `date`) VALUES
(0, 657, 1, 0, 5, 1, NULL, NULL),
(0, 661, 1, 0, 6, 1, NULL, NULL),
(0, 661, 4, 0, 3, 1, NULL, NULL),
(0, 662, 1, 0, 2, 1, NULL, NULL),
(0, 1, 2, 1, 0, 1, NULL, NULL),
(0, 657, 3, 0, 2, 657, NULL, NULL),
(0, 657, 1, 5, 0, 657, NULL, NULL),
(0, 657, 3, 2, 0, 657, NULL, NULL),
(0, 663, 1, 0, 3, 1, NULL, NULL),
(0, 663, 3, 0, 2, 1, NULL, NULL),
(0, 657, 3, 0, 2, 657, NULL, NULL),
(0, 663, 1, 3, 0, 1, NULL, NULL),
(0, 663, 3, 2, 0, 1, NULL, NULL),
(0, 657, 1, 5, 0, 1, NULL, NULL),
(0, 657, 3, 2, 0, 1, NULL, NULL),
(0, 664, 1, 0, 1, 657, NULL, NULL),
(0, 664, 3, 0, 2, 657, NULL, NULL),
(0, 657, 1, 5, 0, 661, NULL, NULL),
(0, 657, 1, 0, 5, 661, NULL, NULL),
(0, 657, 3, 0, 2, 657, NULL, NULL),
(0, 666, 1, 0, 2, 661, NULL, NULL),
(0, 666, 1, 2, 3, 661, NULL, NULL),
(0, 1, 2, 0, 1, 1, NULL, NULL),
(0, 1, 2, 1, 0, 1, NULL, NULL),
(0, 663, 1, 0, 3, 657, NULL, NULL),
(0, 663, 3, 0, 2, 657, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `stats`
--

CREATE TABLE `stats` (
  `district` varchar(45) NOT NULL,
  `deaths` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `suspectcrime`
--

CREATE TABLE `suspectcrime` (
  `id` int(11) NOT NULL,
  `suspect_name` text,
  `time` text,
  `date` text,
  `officers` text,
  `ticket` int(11) DEFAULT NULL,
  `arrest` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `ticket_price` text,
  `arrest_price` text,
  `fine_price` text,
  `illegal_items` text,
  `details` text,
  `done_by` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `suspectdetails`
--

CREATE TABLE `suspectdetails` (
  `suspect_name` text,
  `birth` text,
  `gender` text,
  `ethnicy` text,
  `cell` int(5) DEFAULT '0',
  `occupation` text,
  `address` text,
  `other` text,
  `is_wanted` int(1) DEFAULT '0',
  `wanted_reason` text,
  `wanted_punishment` text,
  `wanted_by` text,
  `photo` text,
  `done_by` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT NULL,
  `y` decimal(10,6) DEFAULT NULL,
  `z` decimal(10,6) DEFAULT NULL,
  `interior` int(5) DEFAULT NULL,
  `dimension` int(5) DEFAULT NULL,
  `rx` decimal(10,6) DEFAULT NULL,
  `ry` decimal(10,6) DEFAULT NULL,
  `rz` decimal(10,6) DEFAULT NULL,
  `modelid` int(5) DEFAULT NULL,
  `creationdate` datetime DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tc_comments`
--

CREATE TABLE `tc_comments` (
  `id` int(11) NOT NULL,
  `poster` varchar(200) NOT NULL,
  `comment` text NOT NULL,
  `date` text,
  `internal` tinyint(1) NOT NULL DEFAULT '0',
  `tcid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tc_tickets`
--

CREATE TABLE `tc_tickets` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `assign_to` int(11) NOT NULL DEFAULT '0',
  `subcribers` varchar(500) NOT NULL DEFAULT ',',
  `date` text,
  `creator` varchar(200) NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `content` text NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tempinteriors`
--

CREATE TABLE `tempinteriors` (
  `id` int(11) NOT NULL,
  `posX` float NOT NULL,
  `posY` float DEFAULT NULL,
  `posZ` float DEFAULT NULL,
  `interior` int(5) DEFAULT NULL,
  `uploaded_by` int(11) DEFAULT '0',
  `uploaded_at` datetime DEFAULT NULL,
  `amount_paid` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tempobjects`
--

CREATE TABLE `tempobjects` (
  `id` int(11) NOT NULL,
  `model` int(6) NOT NULL DEFAULT '0',
  `posX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `interior` int(5) NOT NULL,
  `dimension` int(5) NOT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `solid` int(1) DEFAULT '1',
  `doublesided` int(1) DEFAULT '0',
  `scale` float(12,7) DEFAULT '1.0000000',
  `breakable` int(1) DEFAULT '0',
  `alpha` int(11) NOT NULL DEFAULT '255'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `textures_animated`
--

CREATE TABLE `textures_animated` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `frames` text NOT NULL,
  `speed` int(4) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ticketreplies`
--

CREATE TABLE `ticketreplies` (
  `rid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `text` text NOT NULL,
  `by` text NOT NULL,
  `rank` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tickets`
--

CREATE TABLE `tickets` (
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` text NOT NULL,
  `subject` text NOT NULL,
  `assigned` text NOT NULL,
  `priority` text NOT NULL,
  `username` text NOT NULL,
  `gamename` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `action` varchar(32) DEFAULT NULL,
  `token` varchar(32) NOT NULL,
  `data` varchar(500) DEFAULT NULL,
  `date` varchar(500) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COMMENT='Random token, used for security and validations - MAXIME';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `towstats`
--

CREATE TABLE `towstats` (
  `id` int(11) NOT NULL,
  `character` int(11) NOT NULL,
  `vehicle` int(11) DEFAULT NULL,
  `vehicle_plate` varchar(8) DEFAULT NULL COMMENT 'vehicle plate at the time of towing, if any',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'date of towing'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detailed information for TTR leaders who towed what and when';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `up_weed`
--

CREATE TABLE `up_weed` (
  `id` int(11) NOT NULL,
  `posX` decimal(10,6) NOT NULL,
  `posY` decimal(10,6) NOT NULL,
  `posZ` decimal(10,6) NOT NULL,
  `rotX` decimal(10,6) NOT NULL,
  `rotY` decimal(10,6) NOT NULL,
  `rotZ` decimal(10,6) NOT NULL,
  `interior` int(11) NOT NULL DEFAULT '0',
  `dimension` int(11) NOT NULL DEFAULT '0',
  `planted_by` int(11) NOT NULL,
  `weed_level` int(11) NOT NULL DEFAULT '0',
  `weed_height` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `model` int(3) DEFAULT '0',
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `rotx` decimal(10,6) DEFAULT '0.000000',
  `roty` decimal(10,6) DEFAULT '0.000000',
  `rotz` decimal(10,6) DEFAULT '0.000000',
  `currx` decimal(10,6) DEFAULT '0.000000',
  `curry` decimal(10,6) DEFAULT '0.000000',
  `currz` decimal(10,6) DEFAULT '0.000000',
  `currrx` decimal(10,6) DEFAULT '0.000000',
  `currry` decimal(10,6) DEFAULT '0.000000',
  `currrz` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `fuel` int(3) DEFAULT '100',
  `engine` int(1) DEFAULT '0',
  `locked` int(1) DEFAULT '0',
  `lights` int(1) DEFAULT '0',
  `sirens` int(1) DEFAULT '0',
  `paintjob` int(11) DEFAULT '0',
  `hp` float DEFAULT '1000',
  `color1` varchar(50) DEFAULT '0',
  `color2` varchar(50) DEFAULT '0',
  `color3` varchar(50) DEFAULT NULL,
  `color4` varchar(50) DEFAULT NULL,
  `plate` text,
  `faction` int(11) DEFAULT '-1',
  `owner` int(11) DEFAULT '-1',
  `job` int(11) DEFAULT '-1',
  `tintedwindows` int(1) DEFAULT '0',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `currdimension` int(5) DEFAULT '0',
  `currinterior` int(5) DEFAULT '0',
  `enginebroke` int(1) DEFAULT '0',
  `items` text,
  `itemvalues` text,
  `Impounded` int(3) DEFAULT '0',
  `handbrake` int(1) DEFAULT '0',
  `safepositionX` float DEFAULT NULL,
  `safepositionY` float DEFAULT NULL,
  `safepositionZ` float DEFAULT NULL,
  `safepositionRZ` float DEFAULT NULL,
  `upgrades` varchar(150) DEFAULT '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]',
  `wheelStates` varchar(30) DEFAULT '[ [ 0, 0, 0, 0 ] ]',
  `panelStates` varchar(40) DEFAULT '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]',
  `doorStates` varchar(30) DEFAULT '[ [ 0, 0, 0, 0, 0, 0 ] ]',
  `odometer` int(15) DEFAULT '0',
  `headlights` varchar(30) DEFAULT '[ [ 255, 255, 255 ] ]',
  `variant1` int(3) DEFAULT NULL,
  `variant2` int(3) DEFAULT NULL,
  `description1` varchar(300) NOT NULL DEFAULT '',
  `description2` varchar(300) NOT NULL DEFAULT '',
  `description3` varchar(300) NOT NULL DEFAULT '',
  `description4` varchar(300) NOT NULL DEFAULT '',
  `description5` varchar(300) NOT NULL DEFAULT '',
  `suspensionLowerLimit` float DEFAULT NULL,
  `driveType` char(5) DEFAULT NULL,
  `note` text,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `chopped` tinyint(4) NOT NULL DEFAULT '0',
  `stolen` tinyint(4) NOT NULL DEFAULT '0',
  `lastUsed` datetime DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `trackingdevice` text,
  `registered` int(2) NOT NULL DEFAULT '1',
  `show_plate` int(2) NOT NULL DEFAULT '1',
  `show_vin` int(2) NOT NULL DEFAULT '1',
  `paintjob_url` varchar(255) DEFAULT NULL,
  `vehiclename` varchar(50) NOT NULL DEFAULT 'Vehicle',
  `vehicle_shop_id` int(11) NOT NULL DEFAULT '0',
  `bulletproof` tinyint(4) NOT NULL DEFAULT '0',
  `textures` varchar(300) NOT NULL DEFAULT '[ [ ] ]',
  `business` int(11) NOT NULL DEFAULT '-1',
  `insurancefee` int(10) NOT NULL DEFAULT '0',
  `insurancefaction` int(10) NOT NULL DEFAULT '0',
  `protected_until` datetime DEFAULT NULL,
  `tafrom` datetime DEFAULT NULL,
  `tatill` datetime DEFAULT NULL,
  `enginetype` int(1) DEFAULT '1',
  `battery` int(3) DEFAULT '100',
  `enginecapacity` text NOT NULL,
  `gearbox` int(1) DEFAULT '1',
  `siksna` int(1) NOT NULL DEFAULT '1',
  `karba` int(1) NOT NULL DEFAULT '1',
  `dzinejs` int(1) NOT NULL DEFAULT '1',
  `turbina` int(1) NOT NULL DEFAULT '1',
  `oil` int(3) NOT NULL DEFAULT '100',
  `forSale` int(11) NOT NULL DEFAULT '0',
  `salePrice` int(11) NOT NULL DEFAULT '0',
  `plate_removed` int(11) NOT NULL,
  `plate_stolen` text NOT NULL,
  `keyless` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `vehicles`
--

INSERT INTO `vehicles` (`id`, `model`, `x`, `y`, `z`, `rotx`, `roty`, `rotz`, `currx`, `curry`, `currz`, `currrx`, `currry`, `currrz`, `fuel`, `engine`, `locked`, `lights`, `sirens`, `paintjob`, `hp`, `color1`, `color2`, `color3`, `color4`, `plate`, `faction`, `owner`, `job`, `tintedwindows`, `dimension`, `interior`, `currdimension`, `currinterior`, `enginebroke`, `items`, `itemvalues`, `Impounded`, `handbrake`, `safepositionX`, `safepositionY`, `safepositionZ`, `safepositionRZ`, `upgrades`, `wheelStates`, `panelStates`, `doorStates`, `odometer`, `headlights`, `variant1`, `variant2`, `description1`, `description2`, `description3`, `description4`, `description5`, `suspensionLowerLimit`, `driveType`, `note`, `deleted`, `chopped`, `stolen`, `lastUsed`, `creationDate`, `createdBy`, `trackingdevice`, `registered`, `show_plate`, `show_vin`, `paintjob_url`, `vehiclename`, `vehicle_shop_id`, `bulletproof`, `textures`, `business`, `insurancefee`, `insurancefaction`, `protected_until`, `tafrom`, `tatill`, `enginetype`, `battery`, `enginecapacity`, `gearbox`, `siksna`, `karba`, `dzinejs`, `turbina`, `oil`, `forSale`, `salePrice`, `plate_removed`, `plate_stolen`, `keyless`) VALUES
(27, 578, '2687.764648', '-2664.649414', '14.313609', '0.252686', '0.005493', '180.005493', '2687.766602', '-2664.646484', '14.316360', '0.247192', '0.131836', '180.164795', 100, 0, 0, 1, 0, 3, 982.5, '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', 'TV4 2770', 4, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 21:35:39', '2018-09-15 21:06:23', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 67, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(28, 400, '745.833008', '-1355.240234', '13.466014', '0.071411', '359.983521', '319.273682', '745.833008', '-1355.240234', '13.466014', '0.071411', '359.983521', '319.273682', 100, 0, 0, 2, 0, 3, 990.5, '[ [ 42, 119, 161 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 42, 119, 161 ] ]', 'PV6 5321', 20, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 1 ] ]', '[ [ 0, 2, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 21:39:35', '2018-09-15 21:38:53', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 15, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(29, 400, '751.265625', '-1356.315430', '13.465223', '0.071411', '359.983521', '322.185059', '1099.936523', '-1291.903320', '79.010635', '0.093384', '359.945068', '359.730835', 99, 0, 0, 2, 0, 3, 991.5, '[ [ 42, 119, 161 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 42, 119, 161 ] ]', 'XE4 6210', 20, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 10278, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:47:40', '2018-09-15 21:39:38', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 15, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 1, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(30, 582, '759.401367', '-1362.812500', '13.572786', '359.609985', '0.032959', '237.145386', '759.401367', '-1362.812500', '13.572786', '359.609985', '0.038452', '237.145386', 100, 0, 0, 1, 0, 3, 1000, '[ [ 42, 119, 161 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 42, 119, 161 ] ]', 'HA3 5490', 20, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 21:48:43', '2018-09-15 21:48:14', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 68, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(31, 582, '758.893555', '-1369.106445', '13.570835', '359.566040', '359.879150', '235.607300', '758.893555', '-1369.106445', '13.570835', '359.566040', '359.879150', '235.607300', 100, 0, 0, 1, 0, 3, 1000, '[ [ 42, 119, 161 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 42, 119, 161 ] ]', 'GX5 1159', 20, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 21:49:06', '2018-09-15 21:48:46', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 68, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(33, 415, '1350.781892', '-1272.924855', '13.058551', '0.000000', '0.000000', '178.153809', '1350.781892', '-1272.924855', '13.058551', '0.000000', '0.000000', '178.153809', 100, 0, 0, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'YM7 3480', -1, -2, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 657, 0, 0, NULL, '2018-09-17 21:27:56', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(32, 490, '1407.378906', '-1771.237305', '13.606380', '0.620728', '359.994507', '90.192261', '549.408203', '-1278.918945', '17.310863', '0.609741', '359.912109', '150.210571', 75, 0, 0, 1, 0, 0, 997.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'MS2 6601', 3, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 2, 0, 2, 0 ] ]', 33482, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-27 19:41:28', '2018-09-18 19:34:36', 662, NULL, 1, 1, 1, NULL, 'Vehicle', 14, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 2, 99, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(34, 529, '1434.201172', '-2593.325932', '13.546875', '0.000000', '0.000000', '0.002747', '1434.201172', '-2593.325928', '13.546875', '0.000000', '0.000000', '0.002747', 100, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'HW9 1505', -1, 21, -1, 0, 3, 0, 3, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 663, 0, 0, '2018-09-19 18:02:40', '2018-09-19 18:02:40', 663, NULL, 1, 1, 1, NULL, 'Vehicle', 36, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(35, 490, '2096.034180', '-1799.231445', '13.445466', '0.565796', '359.890137', '91.340332', '2096.036133', '-1799.231445', '13.446413', '0.697632', '359.730835', '91.395264', 75, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'YG3 7886', -1, 19, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 3093, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 657, 0, 0, '2018-10-04 20:27:42', '2018-09-19 22:28:54', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 14, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 1, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 1),
(36, 437, '1779.693359', '-1887.096680', '13.522580', '0.038452', '359.994507', '270.450439', '1082.975586', '-1392.527344', '13.721587', '0.263672', '358.637695', '90.785522', 900, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'GJ9 7583', -1, -2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 250, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-12-28 23:16:05', '2018-09-19 22:41:49', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(37, 437, '1779.818359', '-1901.034180', '13.522492', '0.038452', '359.994507', '270.296631', '1779.908203', '-1904.016602', '13.522502', '359.956055', '0.000000', '91.669922', 861, 0, 0, 1, 0, 0, 945.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'OK8 3465', -1, -2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 2, 0, 1, 0, 0, 0 ] ]', 16793, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-02-18 18:06:30', '2018-09-19 22:41:58', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 98, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(38, 437, '1779.782227', '-1894.250977', '13.522447', '0.043945', '359.994507', '270.181274', '1869.899414', '-1932.049805', '13.516841', '359.978027', '0.719604', '268.434448', 884, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'FH9 8214', -1, -2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1851, '[ [ 255, 255, 255 ] ]', 1, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-29 22:52:04', '2018-09-19 22:44:29', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(39, 437, '1779.921875', '-1907.926758', '13.522573', '0.038452', '359.989014', '269.791260', '1780.498047', '-1907.739258', '13.525993', '359.939575', '0.230713', '92.279663', 814, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'MX7 9227', -1, -2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 8980, '[ [ 255, 255, 255 ] ]', 1, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-02-18 18:07:49', '2018-09-19 22:45:54', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(40, 437, '1779.852539', '-1915.183594', '13.522510', '0.038452', '0.000000', '268.121338', '1779.852539', '-1915.183594', '13.522510', '0.032959', '0.000000', '268.121338', 900, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'PS4 5156', -1, -2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1184, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-12-28 13:45:14', '2018-09-19 22:46:29', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(41, 420, '1759.701172', '-1860.291992', '13.271210', '359.730835', '354.655151', '270.587769', '1759.701172', '-1860.291992', '13.271210', '359.730835', '354.655151', '270.587769', 55, 0, 0, 1, 0, 3, 1000, '[ [ 215, 142, 16 ] ]', '[ [ 215, 142, 16 ] ]', '[ [ 215, 142, 16 ] ]', '[ [ 215, 142, 16 ] ]', 'NK4 3719', -1, -2, 2, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:05:05', '2018-09-19 22:47:58', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(42, 420, '1766.678711', '-1860.121094', '13.271658', '359.730835', '354.649658', '271.005249', '1848.815430', '-1776.041992', '13.330699', '359.741821', '0.010986', '313.286133', 54, 1, 0, 1, 0, 3, 1000, '[ [ 215, 142, 16 ] ]', '[ [ 215, 142, 16 ] ]', '[ [ 215, 142, 16 ] ]', '[ [ 215, 142, 16 ] ]', 'PG1 4651', -1, -2, 2, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 5786, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-02-17 15:49:31', '2018-09-19 22:48:34', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 97, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(43, 420, '1774.000977', '-1860.087891', '13.271274', '359.730835', '354.655151', '269.813232', '1826.264648', '-1908.010742', '13.222289', '359.675903', '354.671631', '359.214478', 55, 0, 0, 1, 0, 3, 936, '[ [ 215, 142, 16 ] ]', '[ [ 215, 142, 16 ] ]', '[ [ 215, 142, 16 ] ]', '[ [ 215, 142, 16 ] ]', 'HO4 6242', -1, -2, 2, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 2, 0, 0, 0, 2, 0 ] ]', '[ [ 0, 0, 0, 2, 0, 0 ] ]', 2271, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-27 22:02:40', '2018-09-19 22:49:24', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(44, 420, '1780.234375', '-1860.052734', '13.272173', '359.730835', '354.649658', '269.752808', '1780.706055', '-1860.148438', '13.272408', '359.736328', '354.638672', '271.829224', 54, 1, 0, 1, 0, 3, 999.5, '[ [ 215, 142, 16 ] ]', '[ [ 215, 142, 16 ] ]', '[ [ 215, 142, 16 ] ]', '[ [ 215, 142, 16 ] ]', 'WJ8 6776', -1, -2, 2, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 48838, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-02-18 17:52:20', '2018-09-19 22:50:12', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 97, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(45, 440, '-71.356445', '-1106.518555', '1.198024', '359.274902', '359.983521', '204.494019', '-74.656250', '-1124.498047', '1.200470', '359.296875', '0.065918', '171.710815', 100, 0, 0, 1, 0, 0, 998, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'TO7 7271', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-07 17:12:01', '2018-09-19 23:33:35', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(46, 440, '-74.987305', '-1108.788086', '1.192608', '359.236450', '0.000000', '205.812378', '-74.108398', '-1109.041016', '1.193829', '359.241943', '0.000000', '206.531982', 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'BT3 5308', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 54, '[ [ 255, 255, 255 ] ]', 5, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:15:37', '2018-09-19 23:34:10', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(47, 440, '-78.124023', '-1111.565430', '1.203691', '359.258423', '359.879150', '208.558960', '-78.124023', '-1111.565430', '1.203691', '359.258423', '359.879150', '208.558960', 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'QT0 3342', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 1, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:14:03', '2018-09-19 23:34:31', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(48, 440, '-79.731445', '-1116.154297', '1.197503', '359.181519', '359.873657', '208.723755', '-79.731445', '-1116.154297', '1.197503', '359.181519', '359.873657', '208.723755', 100, 0, 0, 1, 0, 3, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'VX2 7654', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 3, '[ [ 255, 255, 255 ] ]', 3, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-07 17:06:59', '2018-09-19 23:34:47', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(49, 499, '-87.509766', '-1134.148438', '1.071244', '359.329834', '0.000000', '329.974365', '-87.509766', '-1134.148438', '1.071244', '359.329834', '0.000000', '329.974365', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'XI3 4771', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 4, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:35:06', '2018-09-19 23:35:30', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(50, 499, '-80.198242', '-1137.689453', '1.069633', '359.318848', '0.000000', '333.984375', '-80.198242', '-1137.689453', '1.069633', '359.318848', '0.000000', '333.984375', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'ML3 8128', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 45, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:34:25', '2018-09-19 23:36:13', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(51, 499, '-83.825195', '-1136.055664', '1.067531', '359.307861', '359.994507', '332.962646', '-83.825195', '-1136.055664', '1.067531', '359.307861', '359.994507', '332.962646', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'DH2 5541', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 12, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:34:47', '2018-09-19 23:36:42', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(52, 499, '-76.314453', '-1139.571289', '1.068649', '359.313354', '0.000000', '333.792114', '-76.314453', '-1139.571289', '1.068649', '359.313354', '0.000000', '333.792114', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'JZ2 4481', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 21, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:33:52', '2018-09-19 23:37:57', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(53, 499, '-72.150391', '-1141.370117', '1.070266', '359.324341', '359.994507', '334.660034', '-72.150391', '-1141.370117', '1.070266', '359.324341', '359.994507', '334.660034', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'MB3 4484', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1, '[ [ 255, 255, 255 ] ]', 2, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:33:26', '2018-09-19 23:38:27', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(54, 440, '-66.627930', '-1108.345703', '1.194105', '359.247437', '0.000000', '172.474365', '-66.627930', '-1108.345703', '1.194105', '359.247437', '0.000000', '172.474365', 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'UM4 8395', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 3, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:18:19', '2018-09-19 23:38:53', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(55, 414, '-67.077148', '-1143.781250', '1.409190', '0.032959', '352.683105', '335.764160', '-67.077148', '-1143.781250', '1.409190', '0.032959', '352.683105', '335.764160', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'UN8 7561', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 107, '[ [ 255, 255, 255 ] ]', 1, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:32:05', '2018-09-19 23:39:47', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(56, 414, '-62.710938', '-1145.745117', '1.997941', '0.027466', '352.677612', '335.775146', '-62.710938', '-1145.745117', '1.997941', '0.027466', '352.677612', '335.775146', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'QC0 2749', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:31:42', '2018-09-19 23:40:26', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(57, 414, '-58.277344', '-1147.739258', '2.580428', '0.032959', '352.672119', '335.769653', '-58.277344', '-1147.739258', '2.580428', '0.032959', '352.672119', '335.769653', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'NP7 6685', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:31:23', '2018-09-19 23:40:43', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(58, 414, '-54.159180', '-1149.594727', '3.143152', '0.021973', '352.677612', '335.819092', '-54.159180', '-1149.594727', '3.143152', '0.021973', '352.677612', '335.819092', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'XT1 8583', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:31:04', '2018-09-19 23:41:05', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(59, 414, '-50.175781', '-1151.459961', '3.692669', '359.868164', '352.677612', '337.098999', '-50.175781', '-1151.459961', '3.692669', '359.868164', '352.677612', '337.098999', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'GR6 4823', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1, '[ [ 255, 255, 255 ] ]', 1, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:30:34', '2018-09-19 23:41:21', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(60, 498, '-42.366211', '-1138.892578', '3.915091', '359.588013', '7.640991', '157.472534', '-42.366211', '-1138.892578', '3.915091', '359.588013', '7.640991', '157.472534', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'VU6 9976', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:27:06', '2018-09-19 23:42:02', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(61, 498, '-47.075195', '-1136.955078', '3.307866', '359.692383', '7.640991', '157.637329', '-47.075195', '-1136.955078', '3.307866', '359.692383', '7.640991', '157.631836', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'GG9 3952', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:27:32', '2018-09-19 23:43:01', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(62, 498, '-51.785156', '-1135.048828', '2.660240', '359.714355', '7.635498', '158.626099', '-51.785156', '-1135.048828', '2.660240', '359.714355', '7.635498', '158.620605', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'XM6 1850', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:27:58', '2018-09-19 23:43:11', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(63, 498, '-56.537109', '-1133.201172', '2.075282', '359.917603', '7.635498', '158.801880', '-56.537109', '-1133.201172', '2.075282', '359.917603', '7.635498', '158.801880', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'ED3 2499', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:28:23', '2018-09-19 23:43:21', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(64, 498, '-61.265625', '-1131.382813', '1.406850', '359.780273', '7.624512', '159.323730', '-61.265625', '-1131.382813', '1.406850', '359.780273', '7.624512', '159.323730', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'IU2 4327', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:28:49', '2018-09-19 23:43:34', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(65, 456, '-27.551758', '-1150.666992', '4.854820', '359.934082', '359.994507', '110.231323', '-27.551758', '-1150.666992', '4.854820', '359.934082', '359.994507', '110.231323', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'FG4 9705', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:24:36', '2018-09-19 23:51:32', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(66, 456, '-26.835938', '-1155.519531', '4.855544', '359.934082', '0.000000', '85.039673', '-26.835938', '-1155.519531', '4.855544', '359.934082', '0.000000', '85.039673', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'WD7 7029', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 7, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:25:04', '2018-09-19 23:52:10', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(67, 456, '-26.940430', '-1160.725586', '4.854966', '359.934082', '0.000000', '82.688599', '-26.940430', '-1160.725586', '4.854966', '359.934082', '0.000000', '82.688599', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'LA1 7694', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:25:27', '2018-09-19 23:52:36', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(68, 456, '-27.570313', '-1165.672852', '4.852457', '359.928589', '359.994507', '80.502319', '-27.570313', '-1165.672852', '4.852457', '359.928589', '359.994507', '80.502319', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'KI8 4358', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 8, '[ [ 255, 255, 255 ] ]', 2, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:25:48', '2018-09-19 23:53:01', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(69, 456, '-32.338867', '-1169.333984', '4.854865', '359.934082', '0.000000', '78.178711', '-32.338867', '-1169.333984', '4.854865', '359.934082', '0.000000', '78.178711', 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'LT0 3153', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 1, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:26:09', '2018-09-19 23:54:42', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(70, 529, '2902.987231', '-1240.471768', '10.875000', '0.000000', '0.000000', '9.214935', '1020.841797', '476.320313', '19.598860', '0.219727', '0.000000', '157.335205', 55, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'QO3 4128', -1, 21, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 21913, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 663, 0, 0, '2018-09-27 21:23:46', '2018-09-25 19:15:56', 663, NULL, 1, 1, 1, NULL, 'Vehicle', 36, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 1, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(71, 550, '125.462553', '86.222690', '2.078125', '0.000000', '0.000000', '69.349487', '125.462555', '86.222687', '2.078125', '0.000000', '0.000000', '69.349487', 100, 0, 1, 1, 0, 3, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', 'QT6 8819', -1, 21, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 663, 0, 0, '2018-09-27 21:24:57', '2018-09-27 21:24:57', 663, NULL, 1, 1, 1, NULL, 'Vehicle', 49, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(72, 546, '2879.164897', '-1637.918961', '11.046875', '0.000000', '0.000000', '272.528259', '2877.574219', '-705.222656', '10.568082', '359.780273', '0.126343', '146.447754', 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'QH0 7881', -1, 21, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 663, 0, 0, '2018-10-04 19:59:43', '2018-10-04 19:58:57', 663, NULL, 1, 1, 1, NULL, 'Vehicle', 10, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(73, 565, '1226.254883', '-1834.887695', '13.014373', '359.686890', '0.005493', '359.884644', '1237.651367', '-1826.818359', '13.031102', '359.544067', '359.895630', '105.325928', 65, 1, 0, 1, 0, 3, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', 'GE3 8955', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 9428, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-27 20:54:35', '2018-10-04 22:02:26', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ [ \"#emapflash92body256\", \"http:\\/\\/www.bildites.lv\\/images\\/dadrbgjc\\/137970\\/thumbnail.jpg\" ] ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(74, 565, '1231.144531', '-1834.919922', '13.016160', '359.730835', '359.994507', '359.928589', '1276.612305', '-1818.414063', '13.010471', '359.401245', '0.153809', '271.433716', 65, 1, 0, 1, 0, 3, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', 'LX8 6244', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2956, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-27 20:56:46', '2018-10-04 22:02:54', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ [ \"#emapflash92body256\", \"http:\\/\\/www.bildites.lv\\/images\\/hhbw4g7e\\/137894\\/thumbnail.jpg\" ] ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(75, 565, '1235.300781', '-1834.987305', '13.016829', '359.736328', '0.000000', '359.170532', '1235.300781', '-1834.987305', '13.016829', '359.736328', '0.000000', '359.170532', 65, 0, 0, 1, 0, 3, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', 'YL7 5250', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 72, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:01:00', '2018-10-04 22:02:56', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ [ \"#emapflash92body256\", \"http:\\/\\/www.bildites.lv\\/images\\/dadrbgjc\\/137970\\/thumbnail.jpg\" ] ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(76, 565, '1239.906250', '-1835.026367', '13.013597', '359.719849', '359.994507', '0.109863', '1239.906250', '-1835.026367', '13.013597', '359.719849', '359.994507', '0.109863', 65, 0, 0, 1, 0, 3, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', 'SK6 8013', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:02:13', '2018-10-04 22:02:59', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ [ \"#emapflash92body256\", \"http:\\/\\/www.bildites.lv\\/images\\/dadrbgjc\\/137970\\/thumbnail.jpg\" ] ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(77, 565, '1244.178711', '-1835.088867', '13.014590', '359.725342', '359.994507', '0.016479', '1244.178711', '-1835.088867', '13.014590', '359.725342', '359.994507', '0.016479', 65, 0, 0, 1, 0, 3, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', 'CK9 5322', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 122, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:02:34', '2018-10-04 22:03:01', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ [ \"#emapflash92body256\", \"http:\\/\\/www.bildites.lv\\/images\\/dadrbgjc\\/137970\\/thumbnail.jpg\" ] ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(78, 565, '1248.739258', '-1835.097656', '13.013541', '359.719849', '0.005493', '357.165527', '1248.739258', '-1835.097656', '13.013541', '359.719849', '0.005493', '357.165527', 65, 0, 0, 1, 0, 3, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', 'VL3 7665', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 4, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 17:02:55', '2018-10-04 22:03:07', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ [ \"#emapflash92body256\", \"http:\\/\\/www.bildites.lv\\/images\\/dadrbgjc\\/137970\\/thumbnail.jpg\" ] ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(79, 426, '1099.833984', '-1292.097656', '78.814232', '0.302124', '0.000000', '179.285889', '1099.833984', '-1292.097656', '78.814232', '0.302124', '0.000000', '179.285889', 55, 0, 0, 1, 0, 3, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'KZ9 1633', 1, -1, -1, -1, 287, 1, 287, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 14309, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-02-11 19:36:15', '2018-10-05 18:01:43', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 51, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, -1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', -1),
(90, 576, '2161.500000', '-1192.402344', '23.820328', '0.000000', '0.000000', '90.000000', '1804.605469', '-1922.028320', '13.181520', '0.373535', '359.983521', '357.956543', 99, 0, 0, 1, 0, 0, 885, '[ [ 67, 1, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'ZLK 7618', -1, 19, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 2, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 0 ] ]', 9351239, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 661, 0, 0, '2018-12-24 21:45:15', '2018-12-24 16:18:45', -1, NULL, 1, 1, 1, NULL, 'Vehicle', 40, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '3.8', 3, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(22, 525, '2704.945313', '-2661.185547', '13.574308', '358.132324', '0.043945', '178.049927', '2704.946289', '-2661.183594', '13.575786', '358.159790', '0.120850', '178.148804', 100, 0, 0, 1, 0, 3, 1000, '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', 'NX3 9920', 4, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 28, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 21:03:08', '2018-09-15 21:02:12', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 66, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(23, 525, '2712.185547', '-2661.425781', '13.585102', '358.286133', '0.000000', '179.357300', '2712.187500', '-2661.423828', '13.586621', '358.363037', '359.868164', '179.467163', 100, 0, 0, 1, 0, 3, 1000, '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', 'OQ1 8777', 4, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 21:03:39', '2018-09-15 21:03:16', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 66, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(24, 525, '2720.164063', '-2668.801758', '13.579441', '358.192749', '0.000000', '89.620972', '2720.166016', '-2668.799805', '13.581347', '358.165283', '359.851685', '89.719849', 100, 0, 0, 1, 0, 3, 1000, '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', 'FG0 5985', 4, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 21:04:06', '2018-09-15 21:03:42', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 66, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(25, 525, '2719.908203', '-2676.198242', '13.571501', '358.060913', '0.005493', '90.780029', '2719.910156', '-2676.195313', '13.573025', '358.110352', '0.115356', '90.878906', 100, 0, 0, 1, 0, 3, 988, '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', 'VV3 5252', 4, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 21:04:36', '2018-09-15 21:04:10', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 66, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(26, 525, '2719.660156', '-2683.176758', '13.572878', '358.082886', '0.000000', '90.516357', '2719.662109', '-2683.174805', '13.574374', '358.110352', '359.961548', '90.604248', 100, 1, 0, 1, 0, 3, 996, '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', '[ [ 51, 95, 63 ] ]', 'CQ4 2442', 4, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 21:05:10', '2018-09-15 21:04:42', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 66, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(19, 421, '1407.129883', '-1776.208984', '13.303441', '359.917603', '0.000000', '90.038452', '1937.300781', '-1776.250977', '13.139099', '359.917603', '0.000000', '358.165283', 55, 1, 0, 1, 0, 0, 993, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'EK4 7666', 3, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 2, 0 ] ]', 57330, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-02-10 12:18:05', '2018-09-15 20:50:30', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 43, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 0, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0);
INSERT INTO `vehicles` (`id`, `model`, `x`, `y`, `z`, `rotx`, `roty`, `rotz`, `currx`, `curry`, `currz`, `currrx`, `currry`, `currrz`, `fuel`, `engine`, `locked`, `lights`, `sirens`, `paintjob`, `hp`, `color1`, `color2`, `color3`, `color4`, `plate`, `faction`, `owner`, `job`, `tintedwindows`, `dimension`, `interior`, `currdimension`, `currinterior`, `enginebroke`, `items`, `itemvalues`, `Impounded`, `handbrake`, `safepositionX`, `safepositionY`, `safepositionZ`, `safepositionRZ`, `upgrades`, `wheelStates`, `panelStates`, `doorStates`, `odometer`, `headlights`, `variant1`, `variant2`, `description1`, `description2`, `description3`, `description4`, `description5`, `suspensionLowerLimit`, `driveType`, `note`, `deleted`, `chopped`, `stolen`, `lastUsed`, `creationDate`, `createdBy`, `trackingdevice`, `registered`, `show_plate`, `show_vin`, `paintjob_url`, `vehiclename`, `vehicle_shop_id`, `bulletproof`, `textures`, `business`, `insurancefee`, `insurancefaction`, `protected_until`, `tafrom`, `tatill`, `enginetype`, `battery`, `enginecapacity`, `gearbox`, `siksna`, `karba`, `dzinejs`, `turbina`, `oil`, `forSale`, `salePrice`, `plate_removed`, `plate_stolen`, `keyless`) VALUES
(21, 421, '1407.205078', '-1786.265625', '13.303119', '359.917603', '0.000000', '89.428711', '1443.422852', '-1504.777344', '13.912703', '359.956055', '0.010986', '164.580688', 51, 0, 0, 1, 0, 3, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'XI1 7902', 3, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 156974, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-29 22:38:39', '2018-09-15 20:52:01', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 43, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 1, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(20, 421, '1407.191406', '-1781.257813', '13.303355', '359.917603', '359.994507', '89.527588', '2111.560547', '-2116.018555', '13.200595', '359.934082', '9.310913', '87.599487', 53, 0, 0, 2, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'GO5 7621', 3, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 105191, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-12-30 09:51:58', '2018-09-15 20:50:59', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 43, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 88, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(18, 407, '1147.589844', '-1313.837891', '13.906211', '0.455933', '359.093628', '0.186768', '1147.589844', '-1313.837891', '13.906211', '0.455933', '359.093628', '0.186768', 100, 0, 0, 1, 0, 3, 1000, '[ [ 132, 4, 16 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 132, 4, 16 ] ]', '[ [ 245, 245, 245 ] ]', 'GK7 5451', 2, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 29, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 20:39:01', '2018-09-15 20:38:28', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 64, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(17, 407, '1176.517578', '-1308.477539', '14.124681', '357.280884', '1.153564', '268.802490', '1040.391602', '-1807.235352', '13.873698', '0.439453', '359.609985', '172.111816', -1, 0, 0, 1, 0, 3, 1000, '[ [ 132, 4, 16 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 132, 4, 16 ] ]', '[ [ 245, 245, 245 ] ]', 'KX8 2424', 2, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 7, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-05 19:52:29', '2018-09-15 20:37:44', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 64, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(16, 416, '1097.245117', '-1329.759766', '13.332729', '5.015259', '359.549561', '1.724854', '1097.245117', '-1329.759766', '13.332729', '5.015259', '359.549561', '1.724854', 100, 0, 0, 1, 0, 3, 989.5, '[ [ 245, 245, 245 ] ]', '[ [ 132, 4, 16 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 132, 4, 16 ] ]', 'MR9 8591', 2, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 5, '[ [ 255, 255, 255 ] ]', 1, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 20:35:05', '2018-09-15 20:34:04', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 63, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(15, 416, '1123.623047', '-1329.381836', '13.365537', '5.020752', '359.588013', '1.274414', '1123.623047', '-1329.381836', '13.365537', '5.020752', '359.588013', '1.274414', 100, 0, 0, 1, 0, 3, 985.5, '[ [ 245, 245, 245 ] ]', '[ [ 132, 4, 16 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 132, 4, 16 ] ]', 'DP4 9835', 2, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 82, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 20:33:55', '2018-09-15 20:33:16', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 63, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(13, 416, '1177.919922', '-1339.113281', '14.047976', '357.599487', '359.346313', '271.631470', '1177.921875', '-1339.112305', '14.049621', '357.599487', '359.544067', '271.724854', 100, 0, 0, 1, 0, 3, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 132, 4, 16 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 132, 4, 16 ] ]', 'NE0 7657', 2, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 20:32:33', '2018-09-15 20:31:49', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 63, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(14, 416, '1110.730469', '-1330.334961', '13.285245', '5.020752', '359.555054', '1.653442', '1110.732422', '-1330.333008', '13.286954', '5.015259', '359.835205', '1.752319', 100, 0, 0, 1, 0, 3, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 132, 4, 16 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 132, 4, 16 ] ]', 'JN9 5997', 2, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 3, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 20:35:43', '2018-09-15 20:31:54', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 63, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(12, 487, '1160.373047', '-1303.850586', '31.708742', '0.153809', '359.648438', '186.448975', '1160.375000', '-1303.848633', '31.710392', '0.148315', '359.664917', '186.542358', 100, 0, 0, 1, 0, 3, 949.5, '[ [ 245, 245, 245 ] ]', '[ [ 132, 4, 16 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 132, 4, 16 ] ]', 'PX5 5142', 2, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 198, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 20:26:23', '2018-09-15 20:24:46', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 62, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(8, 490, '1094.187802', '-1300.966838', '79.062500', '0.000000', '0.000000', '182.059982', '1094.187744', '-1300.966797', '79.062500', '0.000000', '0.000000', '182.059982', 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'ZD3 4145', 1, -1, -1, 1, 287, 1, 287, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 657, 0, 0, '2018-09-15 20:03:53', '2018-09-15 20:03:53', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 59, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(9, 490, '1095.620117', '-1292.461914', '79.122414', '0.620728', '359.994507', '178.698120', '-237.103516', '-107.914063', '3.177560', '0.615234', '0.021973', '16.737671', 75, 1, 0, 2, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'JP7 7110', 1, -1, -1, 1, 287, 1, 287, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 4076, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-11-11 00:31:24', '2018-09-15 20:05:25', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 14, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 1, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(10, 497, '1566.947266', '-1656.717773', '28.572901', '0.263672', '359.653931', '183.136597', '1566.949219', '-1656.715820', '28.574303', '0.269165', '359.637451', '183.213501', 100, 0, 0, 1, 0, 3, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 0, 0, 0 ] ]', 'VK3 6681', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-15 20:16:40', '2018-09-15 20:15:45', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 60, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(11, 417, '1196.397131', '-1321.214431', '13.398438', '0.000000', '0.000000', '17.251526', '1222.454102', '-1330.244141', '13.685057', '356.500854', '0.159302', '92.076416', 100, 0, 0, 1, 0, 3, 300, '[ [ 0, 0, 0 ] ]', '[ [ 215, 142, 16 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 215, 142, 16 ] ]', 'ZA7 3253', 2, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 657, 0, 0, '2018-09-15 20:22:28', '2018-09-15 20:21:17', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 61, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(7, 523, '1091.472656', '-1295.735352', '78.630005', '359.329834', '0.065918', '227.015991', '1091.472656', '-1295.735352', '78.630005', '359.324341', '0.065918', '227.015991', 10, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'SD1 6799', 1, -1, -1, 0, 287, 1, 287, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 18:08:47', '2018-09-15 19:59:16', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 58, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(5, 523, '1085.833008', '-1290.078125', '78.622353', '359.214478', '359.967041', '223.758545', '1085.833008', '-1290.078125', '78.622353', '359.208984', '359.967041', '223.758545', 10, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'QH3 5017', 1, -1, -1, 0, 287, 1, 287, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-10-05 18:08:56', '2018-09-15 19:58:56', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 58, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(6, 523, '1088.489258', '-1292.803711', '78.625252', '358.066406', '0.065918', '224.741821', '1537.339844', '-1678.339844', '12.939370', '359.115601', '359.994507', '180.593262', 9, 1, 0, 1, 0, 0, 959.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'LJ3 5571', 1, -1, -1, 0, 287, 1, 287, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 252, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-12-21 16:54:33', '2018-09-15 19:59:14', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 58, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(1, 596, '1099.957031', '-1309.398438', '78.782707', '359.686890', '0.000000', '359.516602', '1077.727539', '-1757.024414', '13.119112', '0.016479', '359.818726', '136.697388', 55, 0, 0, 1, 0, 3, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 245, 245, 245 ] ]', 'UA0 9409', 1, -1, -1, 0, 287, 1, 287, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1550, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-30 19:46:27', '2018-09-15 19:44:29', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 57, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 99, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(2, 596, '1095.602539', '-1309.379883', '78.783707', '359.692383', '0.000000', '359.862671', '1531.809570', '-2540.440430', '13.268558', '0.049438', '359.978027', '36.304321', 55, 1, 0, 2, 0, 3, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 245, 245, 245 ] ]', 'TX7 9001', 1, -1, -1, 0, 287, 1, 287, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1188, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-11-11 00:46:22', '2018-09-15 19:44:48', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 57, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 99, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(3, 596, '1091.574219', '-1309.296875', '78.783791', '359.692383', '0.000000', '359.313354', '1091.574219', '-1309.296875', '78.783791', '359.692383', '0.000000', '359.313354', 55, 0, 0, 2, 0, 3, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 245, 245, 245 ] ]', 'NQ1 2003', 1, -1, -1, 0, 287, 1, 287, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 21, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-09-17 21:10:33', '2018-09-15 19:49:14', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 57, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 99, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(4, 596, '1087.362305', '-1309.436523', '78.782822', '359.686890', '359.994507', '359.467163', '1684.357422', '-1702.026367', '13.188087', '0.049438', '354.539795', '163.212891', 53, 1, 0, 2, 0, 3, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 245, 245, 245 ] ]', 'TC7 6985', 1, -1, -1, 0, 287, 1, 287, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 7784, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2018-11-06 20:45:22', '2018-09-15 19:49:44', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 57, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 58, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(81, 529, '1830.591409', '-2456.129659', '13.554688', '0.000000', '0.000000', '287.546814', '2909.711914', '-1257.113281', '10.787400', '0.384521', '359.390259', '1.329346', 100, 1, 0, 2, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'QF8 1450', -1, 22, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 579, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 664, 0, 0, '2018-11-09 10:29:04', '2018-11-09 10:27:31', 664, NULL, 1, 1, 1, NULL, 'Vehicle', 36, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 2, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(82, 506, '1002.838305', '-1802.961444', '14.046875', '0.000000', '0.000000', '116.838654', '1002.838318', '-1802.961426', '14.046875', '0.000000', '0.000000', '116.838654', 100, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'WJ2 1172', -1, 22, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 664, 0, 0, '2018-11-09 22:05:29', '2018-11-09 22:05:29', 664, NULL, 1, 1, 1, NULL, 'Vehicle', 47, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(83, 415, '634.586218', '-1723.097375', '13.932987', '0.000000', '0.000000', '65.806366', '1962.719727', '-2025.590820', '13.149163', '0.538330', '0.010986', '178.703613', 96, 1, 0, 2, 0, 0, 997.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'YC1 7077', -1, 22, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 4896, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 664, 0, 0, '2018-11-09 22:27:52', '2018-11-09 22:07:52', 664, NULL, 1, 1, 1, NULL, 'Vehicle', 55, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(84, 451, '260.622609', '-1859.751419', '2.850832', '0.000000', '0.000000', '55.165955', '749.483459', '-1880.512939', '3.579613', '358.802490', '359.868164', '81.320801', 99, 1, 0, 2, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'ZE5 4905', -1, 22, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 4227, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 664, 0, 0, '2018-11-11 00:22:53', '2018-11-11 00:20:34', 664, NULL, 1, 1, 1, NULL, 'Vehicle', 45, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(89, 507, '1926.994734', '-1935.298056', '13.382813', '0.000000', '0.000000', '272.951233', '1821.296875', '-1621.446289', '13.325312', '0.340576', '359.972534', '349.568481', 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'VK8 2497', -1, 19, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 262, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 661, 0, 0, '2018-12-24 16:18:02', '2018-12-24 16:14:27', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 13, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 1),
(85, 562, '1921.779297', '-1751.252690', '13.382813', '0.000000', '0.000000', '0.002747', '1959.206055', '-1916.953125', '13.078985', '359.560547', '0.010986', '176.506348', 100, 1, 0, 1, 0, 3, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', 'NL0 3228', -1, 20, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 204, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 657, 0, 0, '2018-11-15 13:23:50', '2018-11-15 13:21:49', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 56, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 0, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(87, 561, '2138.000977', '-2141.408203', '13.482420', '0.000000', '0.000000', '0.000000', '524.100586', '-1284.476563', '32.079319', '270.087891', '358.555298', '303.958740', 95, 0, 0, 1, 0, 0, 1000, '[ [ 43, 21, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'ZLK 1739', -1, 20, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 9175286, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 657, 0, 0, '2018-12-20 19:43:24', '2018-12-20 16:26:46', -1, NULL, 1, 1, 1, NULL, 'Vehicle', 23, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 2, 97, '2.4', 2, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(88, 470, '1909.359220', '-1750.979491', '13.382813', '0.000000', '0.000000', '35.566040', '1845.217773', '-1752.991211', '13.321591', '359.923096', '359.989014', '93.784790', 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'KJ5 4695', -1, 19, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 661, 0, 0, '2018-12-24 15:57:04', '2018-12-24 15:55:55', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 33, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 1),
(80, 595, '135.281250', '-1813.932617', '0.260357', '0.769043', '0.005493', '88.599243', '57.956055', '-1832.507813', '0.173512', '2.609253', '0.197754', '267.896118', 100, 1, 0, 1, 0, 0, 977, '[ [ 112, 20, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'ZLK 4293', -1, 20, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 5452358, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 657, 0, 0, '2018-12-05 18:53:32', '2018-12-04 18:27:56', -1, NULL, 1, 1, 1, NULL, 'Vehicle', 82, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '4.0', 0, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(86, 562, '1846.759988', '-1743.075416', '13.382813', '0.000000', '0.000000', '86.559875', '1497.903320', '-1725.390625', '12.970203', '359.785767', '0.000000', '54.640503', 13, 0, 0, 1, 0, 3, 843, '[ [ 255, 0, 23 ] ]', '[ [ 125, 0, 11 ] ]', '[ [ 132, 4, 16 ] ]', '[ [ 132, 4, 16 ] ]', 'KF5 3276', -1, 19, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 1023, 0, 0, 0, 0, 0, 0, 1087, 0, 0, 1075, 1037, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 2, 1 ] ]', '[ [ 0, 2, 2, 0, 0, 0 ] ]', 117752, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 661, 0, 0, '2018-12-23 16:16:53', '2018-12-19 23:16:07', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 56, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 97, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 1),
(91, 466, '2148.000977', '-2143.408203', '13.482420', '0.000000', '0.000000', '0.000000', '1532.690430', '-1687.926758', '13.351844', '1.175537', '0.027466', '5.784302', 89, 1, 0, 1, 0, 3, 878.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'ZLK 5851', -1, 19, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 1, 0, 0, 0, 2, 0 ] ]', '[ [ 1, 1, 0, 0, 0, 2 ] ]', 7279170, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 661, 0, 0, '2018-12-28 18:00:51', '2018-12-24 21:48:46', -1, NULL, 1, 1, 1, NULL, 'Vehicle', 37, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 2, 97, '2.4', 0, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(99, 580, '1626.297288', '-1137.512779', '23.906250', '0.000000', '0.000000', '6.852814', '993.932617', '-1035.135742', '30.621042', '356.341553', '347.266846', '72.350464', 100, 1, 0, 1, 0, 0, 961, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'ZB9 2031', -1, 22, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 0 ] ]', 1082, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 664, 0, 0, '2019-01-11 18:46:32', '2019-01-11 18:42:15', 664, NULL, 1, 1, 1, NULL, 'Vehicle', 53, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(98, 405, '1846.214050', '-1306.336296', '13.382813', '0.000000', '0.000000', '265.667206', '1846.213989', '-1306.336304', '13.382813', '0.000000', '0.000000', '265.667206', 100, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'IR7 8311', -1, 22, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 664, 0, 0, '2019-01-06 20:54:31', '2019-01-06 20:54:31', 664, NULL, 1, 1, 1, NULL, 'Vehicle', 30, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(92, 561, '1993.000005', '-1655.246716', '13.382813', '0.000000', '0.000000', '179.917603', '1993.057617', '-1655.262695', '13.389093', '359.884644', '359.983521', '178.176270', 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', 'TG3 2264', -1, 19, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 661, 0, 0, '2018-12-28 18:10:06', '2018-12-28 18:09:38', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 23, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 1),
(93, 561, '2123.000977', '-2138.408203', '13.482420', '0.000000', '0.000000', '0.000000', '2462.840820', '-1736.929688', '13.308897', '3.471680', '359.478149', '135.153809', 68, 0, 0, 1, 0, 3, 836, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'ZLK 7645', -1, 20, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 2, 0, 0, 0, 2, 2 ] ]', '[ [ 0, 2, 3, 2, 0, 0 ] ]', 9659371, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 1, 0, 0, '2019-01-13 20:49:44', '2018-12-30 09:52:11', -1, NULL, 1, 1, 1, NULL, 'Vehicle', 23, 1, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 2, 61, '2.4', 2, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(100, 459, '2218.585048', '-2228.509357', '13.546875', '0.000000', '0.000000', '163.333496', '2218.585048', '-2228.509357', '13.546875', '0.000000', '0.000000', '163.333496', 100, 0, 0, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'XE4 8012', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 661, 0, 0, NULL, '2019-01-13 21:21:36', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(94, 546, '2117.000977', '-2147.408203', '13.482420', '0.000000', '0.000000', '0.000000', '2059.244141', '-2109.954102', '13.030686', '359.412231', '359.467163', '91.801758', 100, 1, 0, 1, 0, 0, 1000, '[ [ 2, 62, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'ZLK 8638', -1, 19, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 8686001, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 661, 0, 0, '2019-01-02 21:25:42', '2019-01-02 21:25:01', -1, NULL, 1, 1, 1, NULL, 'Vehicle', 10, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '3.6', 0, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(95, 496, '2161.500000', '-1197.286133', '23.894775', '0.000000', '0.000000', '90.000000', '1869.536133', '-1085.315430', '23.410561', '359.604492', '359.994507', '180.780029', 100, 1, 0, 1, 0, 0, 1000, '[ [ 37, 19, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'ZLK 4794', -1, 19, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 8605001, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 661, 0, 0, '2019-01-02 21:28:59', '2019-01-02 21:27:55', -1, NULL, 1, 1, 1, NULL, 'Vehicle', 46, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.2', 3, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(96, 475, '2161.500000', '-1182.608398', '23.658604', '359.972534', '0.021973', '90.000000', '2156.296875', '-1198.840820', '23.710169', '0.368042', '359.906616', '201.648560', 55, 1, 0, 1, 0, 0, 1000, '[ [ 2, 39, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'ZLK 9977', -1, 19, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 14941524, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 657, 0, 0, '2019-01-05 22:17:51', '2019-01-02 21:40:58', -1, NULL, 1, 1, 1, NULL, 'Vehicle', 5, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 87, '4.0', 3, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(118, 549, '2128.000977', '-2149.408203', '12.653704', '0.214233', '359.994507', '0.000000', '2128.000977', '-2149.408203', '12.653704', '0.000000', '0.000000', '0.000000', 100, 0, 1, 0, 0, 3, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'ETG 2420', -1, 20, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 11811000, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 657, 0, 0, NULL, '2019-02-18 18:21:42', -1, NULL, 1, 1, 1, NULL, 'Vehicle', 16, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 3, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(101, 459, '2183.195495', '-2224.429842', '13.543605', '0.000000', '0.000000', '222.913254', '2183.195495', '-2224.429842', '13.543605', '0.000000', '0.000000', '222.913254', 100, 0, 0, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'MF9 8886', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 661, 0, 0, NULL, '2019-01-13 21:22:10', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(102, 459, '2184.915039', '-2221.238281', '13.582399', '359.296875', '0.472412', '225.527344', '2187.195313', '-2295.823242', '13.602107', '359.417725', '0.054932', '210.536499', 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'MZ9 1577', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1304, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-02-20 23:22:16', '2019-01-13 21:22:22', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(103, 459, '2187.400391', '-2218.669922', '13.598726', '359.390259', '359.994507', '226.664429', '2187.402344', '-2218.668945', '13.599533', '359.395752', '359.994507', '226.713867', 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'QN5 6793', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 15, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-13 21:23:10', '2019-01-13 21:22:51', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(104, 459, '2189.811523', '-2216.218750', '13.601497', '359.412231', '359.994507', '226.362305', '2195.232422', '-2226.711914', '13.602463', '359.258423', '0.285645', '194.254761', 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'CH7 1384', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1834, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-02-20 23:20:13', '2019-01-13 21:23:13', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(105, 459, '2192.203125', '-2213.850586', '13.598622', '359.390259', '359.994507', '225.867920', '2192.204102', '-2213.848633', '13.599543', '359.395752', '359.994507', '225.917358', 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'NR2 2981', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-13 21:24:00', '2019-01-13 21:23:39', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(106, 482, '2194.329102', '-2211.721680', '13.667241', '359.126587', '359.994507', '225.576782', '2194.329102', '-2211.721680', '13.667241', '359.126587', '359.994507', '225.576782', 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'FQ4 1421', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-13 21:24:40', '2019-01-13 21:24:08', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(107, 482, '2196.614258', '-2209.306641', '13.671268', '359.258423', '0.000000', '226.005249', '2196.614258', '-2209.306641', '13.671268', '359.258423', '0.000000', '226.005249', 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'GS4 2933', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 38, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-13 21:25:08', '2019-01-13 21:24:43', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(108, 482, '2198.841797', '-2206.927734', '13.676383', '359.137573', '0.000000', '225.357056', '2198.841797', '-2206.927734', '13.676383', '359.137573', '0.000000', '225.357056', 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'MN4 3944', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-13 21:25:26', '2019-01-13 21:25:11', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(109, 482, '2201.365234', '-2204.711914', '13.672062', '359.110107', '359.994507', '223.236694', '2201.367188', '-2204.709961', '13.673650', '359.110107', '359.994507', '223.330078', 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'UE4 1612', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-13 21:25:49', '2019-01-13 21:25:28', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(110, 498, '2204.308594', '-2202.230469', '13.622497', '359.395752', '0.000000', '225.670166', '2204.419922', '-2202.307617', '13.623684', '359.401245', '0.000000', '226.246948', 100, 0, 0, 1, 0, 0, 996, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'HC5 7820', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 2, 2 ] ]', 23, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-13 21:26:22', '2019-01-13 21:25:59', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(111, 498, '2207.429688', '-2199.394531', '13.625199', '359.406738', '359.994507', '224.159546', '2207.429688', '-2199.394531', '13.625199', '359.406738', '359.994507', '224.159546', 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'KY8 9837', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-13 21:26:42', '2019-01-13 21:26:24', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(112, 498, '2210.776367', '-2196.179688', '13.623320', '359.401245', '359.994507', '223.461914', '2210.776367', '-2196.179688', '13.623320', '359.401245', '359.994507', '223.461914', 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'BV4 3877', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-13 21:27:04', '2019-01-13 21:26:47', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(113, 578, '2235.814453', '-2244.738281', '14.171185', '0.302124', '359.994507', '44.956055', '2235.816406', '-2244.737305', '14.172562', '0.302124', '0.000000', '45.038452', 100, 0, 0, 1, 0, 0, 994, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'VD0 1183', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-13 21:27:41', '2019-01-13 21:27:15', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(114, 578, '2228.661133', '-2252.708008', '14.180982', '0.236206', '359.994507', '46.235962', '2228.662109', '-2252.708008', '14.181803', '0.236206', '0.000000', '46.279907', 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'EB8 2053', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-13 21:28:01', '2019-01-13 21:27:43', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(115, 455, '2221.068359', '-2261.297852', '13.991210', '0.000000', '0.000000', '45.000000', '2221.069336', '-2261.295898', '13.992489', '0.000000', '0.000000', '45.071411', 100, 0, 0, 1, 0, 0, 984.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'DN9 8220', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 2 ] ]', '[ [ 0, 2, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 2, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-13 21:28:30', '2019-01-13 21:28:09', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(116, 455, '2214.068359', '-2268.879883', '13.992436', '0.000000', '359.989014', '48.306885', '1753.588867', '-1853.799805', '13.856423', '0.000000', '0.065918', '350.507813', 100, 1, 0, 1, 0, 0, 983, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'TC1 7901', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 1 ] ]', '[ [ 0, 2, 0, 0, 0, 0 ] ]', 207, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-01-13 21:34:05', '2019-01-13 21:28:32', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, '2019-02-17 15:30:56', '2019-03-17 15:30:56', 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(119, 419, '2123.000977', '-2138.408203', '13.482420', '0.000000', '0.000000', '0.000000', '2123.000977', '-2138.408203', '13.482420', '0.000000', '0.000000', '0.000000', 100, 0, 1, 0, 0, 0, 1000, '[ [ 54, 75, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'ZLK 7648', -1, 19, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 17457000, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 661, 0, 0, NULL, '2019-01-27 20:30:27', -1, NULL, 1, 1, 1, NULL, 'Vehicle', 12, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '4.6', 0, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(117, 551, '553.819336', '-1297.405273', '27.010004', '0.000000', '0.000000', '180.000000', '520.309570', '-1286.446289', '17.011700', '359.824219', '0.000000', '306.908569', 100, 0, 0, 1, 0, 0, 1000, '[ [ 72, 1, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'ZLK 1883', -1, 20, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2069661, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 657, 0, 0, '2019-01-27 18:27:18', '2019-01-27 18:07:48', -1, NULL, 1, 1, 1, NULL, 'Vehicle', 29, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '6.0', 0, 1, 1, 1, 1, 100, 0, 0, 0, '', 1),
(97, 415, '1537.573955', '-1737.420888', '13.382813', '0.000000', '0.000000', '271.138489', '2683.570313', '-2540.795898', '13.389376', '359.972534', '359.082642', '356.390991', 42, 0, 0, 1, 0, 3, 976, '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', 'EA6 1592', -1, 19, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 2, 0, 0, 0 ] ]', 170363, '[ [ 255, 255, 255 ] ]', 0, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-03-05 22:20:12', '2019-02-02 20:51:30', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 55, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 99, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 1),
(120, 526, '2128.000977', '-2139.408203', '13.482420', '0.000000', '0.000000', '0.000000', '2128.000977', '-2139.408203', '13.482420', '0.000000', '0.000000', '0.000000', 100, 0, 1, 0, 0, 0, 1000, '[ [ 9, 39, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'ZLK 4823', -1, 19, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 7091000, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 661, 0, 0, NULL, '2019-01-27 20:30:33', -1, NULL, 1, 1, 1, NULL, 'Vehicle', 50, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '1.9', 3, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(124, 420, '1789.333780', '-1858.765160', '13.192864', '0.000000', '0.000000', '245.758240', '1789.333780', '-1858.765160', '13.192864', '0.000000', '0.000000', '245.758240', 100, 0, 0, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'KN1 1231', -1, -2, 2, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 661, 0, 0, NULL, '2019-01-27 21:46:48', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(122, 492, '2133.000977', '-2140.408203', '13.482420', '0.000000', '0.000000', '0.000000', '2133.000977', '-2140.408203', '13.482420', '0.000000', '0.000000', '0.000000', 100, 0, 1, 0, 0, 0, 1000, '[ [ 24, 55, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'JWT ', -1, 19, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 9653000, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 661, 0, 0, NULL, '2019-01-27 20:55:31', -1, NULL, 1, 1, 1, NULL, 'Vehicle', 22, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '5.0', 0, 1, 1, 1, 1, 100, 0, 0, 0, '', 0);
INSERT INTO `vehicles` (`id`, `model`, `x`, `y`, `z`, `rotx`, `roty`, `rotz`, `currx`, `curry`, `currz`, `currrx`, `currry`, `currrz`, `fuel`, `engine`, `locked`, `lights`, `sirens`, `paintjob`, `hp`, `color1`, `color2`, `color3`, `color4`, `plate`, `faction`, `owner`, `job`, `tintedwindows`, `dimension`, `interior`, `currdimension`, `currinterior`, `enginebroke`, `items`, `itemvalues`, `Impounded`, `handbrake`, `safepositionX`, `safepositionY`, `safepositionZ`, `safepositionRZ`, `upgrades`, `wheelStates`, `panelStates`, `doorStates`, `odometer`, `headlights`, `variant1`, `variant2`, `description1`, `description2`, `description3`, `description4`, `description5`, `suspensionLowerLimit`, `driveType`, `note`, `deleted`, `chopped`, `stolen`, `lastUsed`, `creationDate`, `createdBy`, `trackingdevice`, `registered`, `show_plate`, `show_vin`, `paintjob_url`, `vehiclename`, `vehicle_shop_id`, `bulletproof`, `textures`, `business`, `insurancefee`, `insurancefaction`, `protected_until`, `tafrom`, `tatill`, `enginetype`, `battery`, `enginecapacity`, `gearbox`, `siksna`, `karba`, `dzinejs`, `turbina`, `oil`, `forSale`, `salePrice`, `plate_removed`, `plate_stolen`, `keyless`) VALUES
(121, 549, '2143.000977', '-2142.408203', '13.482420', '0.000000', '0.000000', '0.000000', '2143.011719', '-2142.404297', '13.217929', '0.340576', '359.928589', '0.120850', 100, 0, 0, 1, 0, 0, 1000, '[ [ 75, 39, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'GZN 7584', -1, 20, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 11919000, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 657, 0, 0, '2019-01-27 21:14:21', '2019-01-27 21:13:50', -1, NULL, 1, 1, 1, NULL, 'Vehicle', 16, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 3, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(123, 438, '1790.798562', '-1859.082782', '13.193377', '0.000000', '0.000000', '252.527466', '1790.798562', '-1859.082782', '13.193377', '0.000000', '0.000000', '252.527466', 100, 0, 0, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'HB2 7569', -1, -2, 2, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 661, 0, 0, NULL, '2019-01-27 21:46:37', 661, NULL, 1, 1, 1, NULL, 'Vehicle', 0, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '1.5', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 0),
(125, 562, '2125.357548', '-2119.890790', '13.632813', '0.000000', '0.000000', '67.575195', '1939.194336', '-2340.706055', '13.445308', '359.560547', '359.978027', '17.874756', 97, 1, 0, 1, 0, 3, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', 'RZ9 6409', -1, 20, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 1000, 1041, 0, 0, 0, 1035, 0, 0, 0, 0, 1079, 1037, 1171, 1148, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 42166, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-02-22 19:31:35', '2019-02-18 18:24:41', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 56, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 1, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 1),
(126, 560, '1931.577090', '-2332.884609', '13.748350', '0.000000', '0.000000', '193.035492', '1931.577148', '-2332.883789', '13.464672', '0.159302', '0.010986', '193.024292', 55, 1, 0, 1, 0, 3, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'BG2 7266', -1, 20, -1, 1, 553, 25, 553, 25, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1078, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 1586, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-03-05 22:24:05', '2019-02-18 18:32:38', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 128, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 1),
(127, 559, '1931.560422', '-2326.111317', '13.744020', '0.000000', '0.000000', '95.189758', '1930.522461', '-2333.436523', '13.606762', '0.010986', '0.065918', '188.305664', 100, 0, 0, 1, 0, 3, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', 'EP3 2566', -1, 20, -1, 1, 553, 25, 553, 25, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 1162, 1069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1160, 1159, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 3, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-02-18 18:37:46', '2019-02-18 18:35:15', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 121, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 1),
(128, 567, '1929.753861', '-2327.045677', '13.740057', '0.000000', '0.000000', '167.063416', '1926.139648', '-2332.260742', '13.576185', '359.522095', '0.071411', '347.069092', 100, 0, 0, 1, 0, 3, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', 'FY8 4049', -1, 20, -1, 1, 553, 25, 553, 25, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1129, 1189, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, NULL, 0, 0, 0, '2019-02-18 18:40:46', '2019-02-18 18:39:31', 657, NULL, 1, 1, 1, NULL, 'Vehicle', 104, 0, '[ [ ] ]', -1, 0, 0, NULL, NULL, NULL, 1, 100, '2.0', 1, 1, 1, 1, 1, 100, 0, 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vehicles_custom`
--

CREATE TABLE `vehicles_custom` (
  `id` int(11) NOT NULL,
  `brand` text,
  `model` text,
  `year` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `handling` varchar(1000) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) NOT NULL DEFAULT '0',
  `updatedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedby` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `doortype` tinyint(4) DEFAULT NULL,
  `enginecapacity` text NOT NULL,
  `petroltype` tinyint(4) DEFAULT NULL,
  `enginetype` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `vehicles_custom`
--

INSERT INTO `vehicles_custom` (`id`, `brand`, `model`, `year`, `duration`, `handling`, `price`, `tax`, `createdate`, `createdby`, `updatedate`, `updatedby`, `notes`, `doortype`, `enginecapacity`, `petroltype`, `enginetype`) VALUES
(1, 'Ford', 'Crown Victoria', 2009, NULL, NULL, 0, 0, '2018-09-15 16:46:30', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '4.6', NULL, 1),
(2, 'Ford', 'Crown Victoria', 2009, NULL, NULL, 0, 0, '2018-09-15 16:47:04', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '4.6', NULL, 1),
(3, 'Ford', 'Crown Victoria', 2009, NULL, NULL, 0, 0, '2018-09-15 16:49:40', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '4.6', NULL, 1),
(4, 'Ford', 'Crown Victoria', 2009, NULL, NULL, 0, 0, '2018-09-15 16:50:03', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '4.6', NULL, 1),
(12, 'Maverick', 'P66 Turbine', 2010, NULL, NULL, 0, 0, '2018-09-15 17:26:23', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '4.0', NULL, 1),
(70, 'BMW', 'E39', 2003, NULL, '', 0, 0, '2018-09-26 18:12:31', 663, '2018-09-27 18:20:04', 663, '\n', NULL, '3.0', NULL, 2),
(72, 'Audi', '5000 Quattro', 1985, NULL, NULL, 0, 0, '2018-10-04 16:59:43', 663, '0000-00-00 00:00:00', 0, '\n', NULL, '3.6', NULL, 1),
(75, 'Audi', 'A3', 2006, NULL, NULL, 0, 0, '2018-10-05 14:00:36', 657, '2018-10-05 14:01:00', 657, '\n', NULL, '2.0', NULL, 2),
(73, 'Audi', 'A3', 2006, NULL, NULL, 0, 0, '2018-10-05 14:01:20', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.0', NULL, 2),
(74, 'Audi', 'A3', 2006, NULL, NULL, 0, 0, '2018-10-05 14:01:51', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.0', NULL, 2),
(76, 'Audi', 'A3', 2006, NULL, NULL, 0, 0, '2018-10-05 14:02:13', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.0', NULL, 2),
(77, 'Audi', 'A3', 2006, NULL, NULL, 0, 0, '2018-10-05 14:02:34', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.0', NULL, 2),
(78, 'Audi', 'A3', 2006, NULL, NULL, 0, 0, '2018-10-05 14:02:55', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.0', NULL, 2),
(44, 'Audi', 'A4', 1997, NULL, NULL, 0, 0, '2018-10-05 14:04:02', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '1.8', NULL, 1),
(43, 'Audi', 'A4', 1997, NULL, NULL, 0, 0, '2018-10-05 14:04:32', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '1.8', NULL, 1),
(42, 'Audi', 'A4', 1997, NULL, NULL, 0, 0, '2018-10-05 14:04:51', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '1.8', NULL, 1),
(41, 'Audi', 'A4', 1997, NULL, NULL, 0, 0, '2018-10-05 14:05:05', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '1.8', NULL, 1),
(39, 'Setra', 'S 315 HD', 1994, NULL, '[ [ 9500, 57325, 1.799999952316284, [ 0, 0, 0 ], 90, 0.6499999761581421, 0.8500000238418579, 0.3499999940395355, 5, 90, 7.199999809265137, 10, \"rwd\", \"diesel\", 5.699999809265137, 0.300000011920929, false, 30, 1.5, 0.03999999910593033, 0, 0.449999988079071, -0.25, 0.5, 0, 0.449999988079071, 0.4799999892711639, 20000, 2, 2097152, \"long\", \"small\", 15 ] ]', 0, 0, '2018-10-05 14:07:36', 657, '2018-12-28 11:44:49', 661, '\n', NULL, '4.0', NULL, 1),
(40, 'Setra', 'S 315 HD', 1994, NULL, '[ [ 9500, 57325, 1.799999952316284, [ 0, 0, 0 ], 90, 0.6499999761581421, 0.8500000238418579, 0.3499999940395355, 5, 90, 7.199999809265137, 10, \"rwd\", \"diesel\", 5.699999809265137, 0.300000011920929, false, 30, 1.5, 0.03999999910593033, 0, 0.449999988079071, -0.25, 0.5, 0, 0.449999988079071, 0.4799999892711639, 20000, 2, 2097152, \"long\", \"small\", 15 ] ]', 0, 0, '2018-10-05 14:08:11', 657, '2018-12-28 11:45:14', 661, '\n', NULL, '4.0', NULL, 1),
(37, 'Setra', 'S 315 HD', 1994, NULL, '[ [ 9500, 90325, 1.799999952316284, [ 0, 0, 0 ], 90, 0.6499999761581421, 0.8500000238418579, 0.3499999940395355, 5, 90, 7.199999809265137, 10, \"rwd\", \"diesel\", 5.699999809265137, 0.5, false, 40, 1.5, 0.03999999910593033, 0, 0.449999988079071, -0.25, 0.5, 0, 0.449999988079071, 0.4799999892711639, 20000, 2, 2097152, \"long\", \"small\", 15 ] ]', 0, 0, '2018-10-05 14:08:39', 657, '2018-12-28 11:42:30', 661, '\n', NULL, '4.0', NULL, 1),
(38, 'Setra', 'S 315 HD', 1994, NULL, '[ [ 9500, 90325, 1.799999952316284, [ 0, 0, 0 ], 90, 0.6499999761581421, 0.8500000238418579, 0.3499999940395355, 5, 90, 7.199999809265137, 10, \"rwd\", \"diesel\", 5.699999809265137, 0.300000011920929, false, 30, 1.5, 0.03999999910593033, 0, 0.449999988079071, -0.25, 0.5, 0, 0.449999988079071, 0.4799999892711639, 20000, 2, 2097152, \"long\", \"small\", 15 ] ]', 0, 0, '2018-10-05 14:09:00', 657, '2018-12-28 11:43:37', 661, '\n', NULL, '4.0', NULL, 1),
(36, 'Setra', 'S 315 HD', 1994, NULL, '[ [ 9500, 90000, 1.799999952316284, [ 0, 0, 0 ], 90, 0.6499999761581421, 0.8500000238418579, 0.3499999940395355, 5, 90, 7.199999809265137, 10, \"rwd\", \"diesel\", 5.699999809265137, 0.5, false, 30, 1.5, 0.03999999910593033, 0, 0.449999988079071, -0.25, 0.5, 0, 0.449999988079071, 0.4799999892711639, 20000, 2, 2097152, \"long\", \"small\", 15 ] ]', 0, 0, '2018-10-05 14:09:25', 657, '2018-12-28 11:44:16', 661, '\n', NULL, '4.0', NULL, 0),
(48, 'Mercedes-Benz', 'Sprinter 313', 2002, NULL, NULL, 0, 0, '2018-10-05 14:13:30', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.2', NULL, 2),
(47, 'Mercedes-Benz', 'Sprinter 313', 2002, NULL, NULL, 0, 0, '2018-10-05 14:14:03', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.2', NULL, 2),
(46, 'Mercedes-Benz', 'Sprinter 313', 2002, NULL, NULL, 0, 0, '2018-10-05 14:15:37', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.2', NULL, 2),
(45, 'Mercedes-Benz', 'Sprinter 313', 2002, NULL, NULL, 0, 0, '2018-10-05 14:17:46', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.2', NULL, 2),
(54, 'Mercedes-Benz', 'Sprinter 313', 2002, NULL, NULL, 0, 0, '2018-10-05 14:18:19', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.2', NULL, 2),
(65, 'Mercedes-Benz', 'Atego 916', 2000, NULL, NULL, 0, 0, '2018-10-05 14:24:36', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '4.0', NULL, 1),
(66, 'Mercedes-Benz', 'Atego 916', 2000, NULL, NULL, 0, 0, '2018-10-05 14:25:04', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '4.0', NULL, 1),
(67, 'Mercedes-Benz', 'Atego 916', 2000, NULL, NULL, 0, 0, '2018-10-05 14:25:27', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '4.0', NULL, 1),
(68, 'Mercedes-Benz', 'Atego 916', 2000, NULL, NULL, 0, 0, '2018-10-05 14:25:48', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '4.0', NULL, 1),
(69, 'Mercedes-benz', 'Atego 916', 2000, NULL, NULL, 0, 0, '2018-10-05 14:26:09', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '4.0', NULL, 1),
(60, 'Mercedes-Benz', 'L 406D', 1981, NULL, NULL, 0, 0, '2018-10-05 14:27:06', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.1', NULL, 1),
(61, 'Mercedes-Benz', 'L 406D', 1981, NULL, NULL, 0, 0, '2018-10-05 14:27:32', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.1', NULL, 1),
(62, 'Mercedes-Benz', 'L 406D', 1981, NULL, NULL, 0, 0, '2018-10-05 14:27:58', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.1', NULL, 1),
(63, 'Mercedes-Benz', 'L 406D', 1981, NULL, NULL, 0, 0, '2018-10-05 14:28:23', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.1', NULL, 1),
(64, 'Mercedes-Benz', 'L 406D', 1981, NULL, NULL, 0, 0, '2018-10-05 14:28:49', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.1', NULL, 1),
(59, 'Volvo', 'FL6 220', 1999, NULL, NULL, 0, 0, '2018-10-05 14:30:34', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.2', NULL, 2),
(58, 'Volvo', 'FL6 220', 1999, NULL, NULL, 0, 0, '2018-10-05 14:31:04', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.2', NULL, 2),
(57, 'Volvo', 'FL6 220', 1999, NULL, NULL, 0, 0, '2018-10-05 14:31:23', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.2', NULL, 2),
(56, 'Volvo', 'FL6 220', 1999, NULL, NULL, 0, 0, '2018-10-05 14:31:42', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.2', NULL, 2),
(55, 'Volvo', 'FL6 220', 1999, NULL, NULL, 0, 0, '2018-10-05 14:32:05', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.2', NULL, 2),
(53, 'Mitsubishi', 'Fuso Canter', 1990, NULL, NULL, 0, 0, '2018-10-05 14:33:26', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.0', NULL, 1),
(52, 'Mitsubishi', 'Fuso Canter', 1990, NULL, NULL, 0, 0, '2018-10-05 14:33:52', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.0', NULL, 1),
(50, 'Mitsubishi', 'Fuso Canter', 1990, NULL, NULL, 0, 0, '2018-10-05 14:34:25', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.0', NULL, 1),
(51, 'Mitsubishi', 'Fuso Canter', 1990, NULL, NULL, 0, 0, '2018-10-05 14:34:47', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.0', NULL, 1),
(49, 'Mitsubishi', 'Fuso Canter', 1990, NULL, NULL, 0, 0, '2018-10-05 14:35:06', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.0', NULL, 1),
(86, 'Nissan', 'Silvia S13', 1990, NULL, '[ [ 1500, 3500, 1.600000023841858, [ 0, 0.300000011920929, -0.1500000059604645 ], 75, 0.6499999761581421, 0.8500000238418579, 0.5199999809265137, 5, 236, 16, 9, \"rwd\", \"petrol\", 8, 0.5, false, 45, 1, 0.2000000029802322, 0, 0.2800000011920929, -0.05000000447034836, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 1073752068, 67108865, \"small\", \"small\", 1 ] ]', 0, 0, '2018-12-21 12:44:55', 661, '2018-12-23 12:31:20', 661, '\n', NULL, '2.4', NULL, 1),
(91, 'BMW', 'E34', 1992, NULL, '[ [ 1800, 4000, 2, [ 0, 0, 0.05000000074505806 ], 75, 0.6000000238418579, 0.8399999737739563, 0.5199999809265137, 5, 163, 25, 16, \"rwd\", \"petrol\", 6.199999809265137, 0.6000000238418579, false, 45, 1.299999952316284, 0.119999997317791, 0, 0.3499999940395355, -0.2199999988079071, 0.6000000238418579, 0.5, 0.2300000041723251, 0.4000000059604645, 20000, 0, 276824066, \"small\", \"small\", 0 ] ]', 0, 0, '2018-12-26 13:14:22', 661, '2018-12-28 16:00:28', 661, '\n', NULL, '2.4', NULL, 2),
(92, 'BMW', 'E30', 1987, NULL, '[ [ 1800, 4500, 2.599999904632568, [ 0, 0.1000000014901161, -0.1000000014901161 ], 75, 0.6000000238418579, 0.9300000071525574, 0.5, 5, 156, 25, 10, \"rwd\", \"petrol\", 7, 0.5, false, 45, 1, 0.1500000059604645, 0, 0.2800000011920929, -0.1599999964237213, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 10240, 67108864, \"small\", \"small\", 0 ] ]', 0, 0, '2018-12-28 16:09:49', 661, '2018-12-28 16:10:06', 661, '\n', NULL, '2.4', NULL, 2),
(93, 'BMW', 'E30', 1987, NULL, '', 0, 0, '2018-12-30 07:54:14', 657, '2019-01-06 15:33:25', 657, '\n', NULL, '2.4', NULL, 2),
(94, 'Audi', '5000 Quattro', 1985, NULL, '[ { \"1\": 1800, \"2\": 4350, \"3\": 2, \"4\": [ 0, 0, 0 ], \"5\": 70, \"6\": 0.699999988079071, \"7\": 0.800000011920929, \"8\": 0.4900000095367432, \"9\": 5, \"10\": 195, \"11\": 25, \"12\": 16, \"13\": \"awd\", \"14\": \"petrol\", \"15\": 5.400000095367432, \"16\": 0.6000000238418579, \"17\": false, \"18\": 33, \"19\": 1, \"20\": 0.09000000357627869, \"21\": 0, \"22\": 0.3199999928474426, \"23\": -0.1500000059604645, \"24\": 0.5, \"25\": 0, \"26\": 0.2599999904632568, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 0, \"30\": 2, \"31\": \"long\", \"33\": 0 } ]', 0, 0, '2019-01-02 19:25:22', 661, '2019-01-02 19:25:42', 661, '\n', NULL, '3.6', NULL, 1),
(95, 'Audi', 'Coupe GT', 1985, NULL, '[ [ 5000, 7500, 1.799999952316284, [ 0, 0, -0.1000000014901161 ], 50, 0.8500000238418579, 0.8500000238418579, 0.5, 5, 228, 25, 5, \"awd\", \"petrol\", 11, 0.4000000059604645, false, 30, 1.399999976158142, 0.1000000014901161, 0, 0.2800000011920929, -0.119999997317791, 0.5, 0, 0.25, 0.5, 35000, 3221225472, 12582912, \"small\", \"small\", 0 ] ]', 0, 0, '2019-01-02 19:28:27', 661, '2019-01-02 19:28:59', 661, '\n', NULL, '2.2', NULL, 1),
(125, 'Nissan', 'Silvia S13', 1990, NULL, NULL, 0, 0, '2019-02-18 16:49:31', 657, '0000-00-00 00:00:00', 0, '\n', NULL, '2.4', NULL, 1),
(99, 'BMW', 'E46', 2003, NULL, '[ [ 2000, 6000, 1.600000023841858, [ 0, 0, 0 ], 75, 0.6499999761581421, 0.9200000166893005, 0.5199999809265137, 5, 275, 33, 15, \"rwd\", \"petrol\", 5, 0.6000000238418579, false, 44, 1.5, 0.1800000071525574, 0, 0.2700000107288361, -0.119999997317791, 0.5, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 0, 4194304, \"long\", \"small\", 0 ] ]', 0, 0, '2019-01-11 16:43:00', 657, '2019-01-11 16:45:49', 664, '\n', NULL, '2.5', NULL, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vehicles_shop`
--

CREATE TABLE `vehicles_shop` (
  `id` int(11) NOT NULL,
  `vehmtamodel` int(11) DEFAULT '0',
  `vehbrand` text,
  `vehmodel` text,
  `vehyear` int(11) DEFAULT '2014',
  `vehprice` int(11) DEFAULT '0',
  `vehtax` int(11) DEFAULT '0',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) NOT NULL DEFAULT '0',
  `updatedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedby` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `handling` varchar(1000) DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT '1000',
  `enabled` int(1) NOT NULL DEFAULT '0',
  `spawnto` tinyint(2) NOT NULL DEFAULT '0',
  `doortype` tinyint(4) DEFAULT NULL,
  `stretilegal` int(1) NOT NULL DEFAULT '0',
  `enginecapacity` text NOT NULL,
  `quatro` int(1) NOT NULL DEFAULT '0',
  `imobil` int(1) NOT NULL DEFAULT '0',
  `windowselectr` int(1) NOT NULL DEFAULT '0',
  `enginetype` int(1) NOT NULL DEFAULT '1',
  `stock` varchar(1000) NOT NULL DEFAULT '25',
  `gearbox` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `vehicles_shop`
--

INSERT INTO `vehicles_shop` (`id`, `vehmtamodel`, `vehbrand`, `vehmodel`, `vehyear`, `vehprice`, `vehtax`, `createdate`, `createdby`, `updatedate`, `updatedby`, `notes`, `handling`, `duration`, `enabled`, `spawnto`, `doortype`, `stretilegal`, `enginecapacity`, `quatro`, `imobil`, `windowselectr`, `enginetype`, `stock`, `gearbox`) VALUES
(1, 547, 'Volvo', 'S40', 2005, 28123, 29, '2018-08-25 13:15:56', 1, '2018-11-07 15:39:42', 664, '\n', '[ { \"1\": 1600, \"2\": 3300, \"3\": 2.200000047683716, \"4\": [ 0, 0, 0 ], \"5\": 70, \"6\": 0.699999988079071, \"7\": 0.800000011920929, \"8\": 0.5400000214576721, \"9\": 4, \"10\": 160, \"11\": 7.199999809265137, \"12\": 7, \"13\": \"rwd\", \"14\": \"petrol\", \"15\": 5.400000095367432, \"16\": 0.6000000238418579, \"17\": false, \"18\": 30, \"19\": 1.100000023841858, \"20\": 0.1400000005960464, \"21\": 0, \"22\": 0.3199999928474426, \"23\": -0.1400000005960464, \"24\": 0.5, \"25\": 0, \"26\": 0.2599999904632568, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 0, \"30\": 0, \"31\": \"long\", \"33\": 0 } ]', 1000, 1, 2, NULL, 1, '2.0', 0, 1, 0, 2, '500', 0),
(2, 602, 'BMW', 'E46 Cabrio', 2000, 15999, 20, '2018-08-27 11:57:40', 1, '2018-11-07 14:45:00', 664, '\n', '[ [ 1500, 3550, 1.5, [ 0, 0.1000000014901161, -0.2000000029802322 ], 85, 0.699999988079071, 0.800000011920929, 0.5199999809265137, 5, 210, 9.199999809265137, 13, \"rwd\", \"petrol\", 7, 0.6000000238418579, false, 33, 1.200000047683716, 0.119999997317791, 0, 0.300000011920929, -0.1500000059604645, 0.5, 0.4000000059604645, 0.25, 0.5, 35000, 1073752064, 2097152, \"small\", \"small\", 0 ] ]', 1000, 1, 2, NULL, 1, '2.3', 0, 1, 1, 1, '500', 3),
(3, 401, 'Citroen', 'XM', 1991, 7850, 10, '2018-08-27 12:15:43', 1, '2018-11-07 22:02:26', 664, '\n', '[ [ 1500, 2350, 1.5, [ 0, 0.300000011920929, 0 ], 70, 0.6499999761581421, 0.800000011920929, 0.5199999809265137, 5, 172, 6, 10, \"fwd\", \"petrol\", 8, 0.800000011920929, false, 30, 1.299999952316284, 0.07999999821186066, 0, 0.3100000023841858, -0.1299999952316284, 0.5, 0, 0.2599999904632568, 0.5, 9000, 1, 1, \"long\", \"long\", 0 ] ]', 1000, 1, 4, NULL, 1, '2.1', 0, 0, 0, 2, '500', 1),
(4, 480, 'Porsche', 'Boxster', 2003, 75210, 75, '2018-08-27 12:21:03', 1, '2018-11-07 22:19:47', 664, '\n', '[ [ 1550, 2350, 1.5, [ 0, 0.1000000014901161, -0.2000000029802322 ], 75, 0.699999988079071, 0.9700000286102295, 0.5, 5, 245, 13, 10, \"rwd\", \"petrol\", 11, 0.4000000059604645, false, 35, 1.399999976158142, 0.1400000005960464, 3, 0.2800000011920929, -0.07999999821186066, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 1073743872, 0, \"small\", \"small\", 19 ] ]', 1000, 1, 1, NULL, 1, '3.2', 0, 1, 0, 1, '500', 6),
(5, 475, 'Ford', 'Mustang Fastback', 1965, 9722, 13, '2018-08-27 12:35:59', 1, '2018-11-07 23:03:06', 664, '\n', '[ [ 1850, 4000, 2, [ 0, 0.1000000014901161, 0 ], 70, 0.699999988079071, 0.8399999737739563, 0.5199999809265137, 4, 185, 10.60000038146973, 10, \"rwd\", \"petrol\", 8, 0.5, false, 33, 1.299999952316284, 0.07999999821186066, 5, 0.300000011920929, -0.2000000029802322, 0.5, 0.25, 0.25, 0.5199999809265137, 19000, 0, 268435462, \"small\", \"small\", 0 ] ]', 1000, 1, 2, NULL, 1, '4.0', 0, 0, 0, 1, '499', 3),
(6, 495, 'Mercedes-Benz', 'G400', 2001, 55000, 80, '2018-08-27 12:46:52', 1, '2018-11-07 14:39:52', 664, '\n', '[ [ 3500, 5500, 1.600000023841858, [ 0, 0, -0.6000000238418579 ], 80, 0.75, 0.8899999856948853, 0.4900000095367432, 5, 225, 13, 11, \"awd\", \"petrol\", 8, 0.5, false, 36, 0.699999988079071, 0.07999999821186066, 0, 0.3499999940395355, -0.2000000029802322, 0.5, 0, 0.3799999952316284, 0.3499999940395355, 40000, 0, 3246080, \"long\", \"small\", 22 ] ]', 1000, 1, 1, NULL, 1, '4.0', 0, 1, 0, 2, '499', 4),
(7, 491, 'Cadillac', 'Deville', 1967, 11670, 12, '2018-08-27 12:57:35', 1, '2018-11-07 22:03:11', 664, '\n', '[ [ 1950, 4000, 2, [ 0, 0, -0.1000000014901161 ], 70, 0.699999988079071, 0.8600000143051147, 0.5, 4, 166, 7.199999809265137, 15, \"rwd\", \"petrol\", 7, 0.5, false, 32, 0.800000011920929, 0.1000000014901161, 0, 0.3100000023841858, -0.2000000029802322, 0.5, 0.5, 0.2599999904632568, 0.8500000238418579, 9000, 1073741824, 268435456, \"long\", \"long\", 0 ] ]', 1000, 1, 4, NULL, 1, '6.4', 0, 0, 0, 1, '499', 3),
(8, 516, 'Audi', 'A6', 1994, 9580, 10, '2018-08-27 13:08:16', 1, '2018-11-07 22:24:49', 664, '\n', '[ [ 1550, 4000, 1.5, [ 0, 0.300000011920929, -0.1000000014901161 ], 75, 0.6499999761581421, 0.9200000166893005, 0.5, 5, 199, 10.5, 10, \"fwd\", \"petrol\", 8, 0.6000000238418579, false, 35, 1.399999976158142, 0.1000000014901161, 0, 0.2700000107288361, -0.05999999865889549, 0.6000000238418579, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 0, 4194304, \"long\", \"small\", 0 ] ]', 1000, 1, 4, NULL, 1, '2.5', 0, 1, 0, 2, '500', 0),
(9, 458, 'Ford', 'Escort', 1995, 2499, 8, '2018-08-27 13:22:09', 1, '2018-11-07 22:11:52', 664, '\n', '[ [ 2150, 5500, 2, [ 0, 0, 0 ], 75, 0.75, 0.949999988079071, 0.5199999809265137, 4, 140, 5.599999904632568, 10, \"fwd\", \"petrol\", 5, 0.6000000238418579, false, 32, 1.200000047683716, 0.1000000014901161, 0, 0.2700000107288361, -0.1700000017881393, 0.4000000059604645, 0.2000000029802322, 0.239999994635582, 0.4799999892711639, 18000, 32, 0, \"small\", \"small\", 0 ] ]', 1000, 1, 4, NULL, 1, '1.6', 0, 0, 0, 1, '500', 2),
(10, 546, 'Audi', '5000 Quattro', 1985, 16430, 16, '2018-08-27 13:33:05', 1, '2018-11-07 22:24:26', 664, '\n', '[ { \"1\": 1800, \"2\": 4350, \"3\": 2, \"4\": [ 0, 0, 0 ], \"5\": 70, \"6\": 0.699999988079071, \"7\": 0.800000011920929, \"8\": 0.4900000095367432, \"9\": 5, \"10\": 195, \"11\": 8.300000190734863, \"12\": 16, \"13\": \"awd\", \"14\": \"petrol\", \"15\": 5.400000095367432, \"16\": 0.6000000238418579, \"17\": false, \"18\": 33, \"19\": 1, \"20\": 0.09000000357627869, \"21\": 0, \"22\": 0.3199999928474426, \"23\": -0.1500000059604645, \"24\": 0.5, \"25\": 0, \"26\": 0.2599999904632568, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 0, \"30\": 2, \"31\": \"long\", \"33\": 0 } ]', 1000, 1, 4, NULL, 1, '3.6', 0, 0, 0, 1, '499', 0),
(11, 527, 'Acura', 'CL type S', 2001, 23600, 25, '2018-08-27 13:44:01', 1, '2018-11-07 22:39:32', 664, '\n', '[ [ 1200, 2000, 1.600000023841858, [ 0, 0.1500000059604645, -0.1000000014901161 ], 70, 0.699999988079071, 1.029999971389771, 0.5, 4, 225, 11, 5, \"fwd\", \"petrol\", 8, 0.6000000238418579, false, 32, 1.399999976158142, 0.119999997317791, 0, 0.300000011920929, -0.07999999821186066, 0.5, 0, 0.2599999904632568, 0.5, 9000, 1073741824, 2, \"long\", \"long\", 0 ] ]', 1000, 1, 2, NULL, 1, '3.2', 0, 1, 1, 1, '500', 3),
(12, 419, 'Chevrolet', 'Bel-Air', 1955, 4999, 10, '2018-08-27 13:50:34', 1, '2018-11-07 23:00:10', 664, '\n', '[ { \"1\": 1800, \"2\": 4350, \"3\": 2, \"4\": [ 0, 0, 0 ], \"5\": 70, \"6\": 0.550000011920929, \"7\": 0.8799999952316284, \"8\": 0.5199999809265137, \"9\": 5, \"10\": 160, \"11\": 6.199999809265137, \"12\": 5, \"13\": \"rwd\", \"14\": \"petrol\", \"15\": 4, \"16\": 0.6000000238418579, \"17\": false, \"18\": 28, \"19\": 1, \"20\": 0.05000000074505806, \"21\": 1, \"22\": 0.3499999940395355, \"23\": -0.1800000071525574, \"24\": 0.5, \"25\": 0, \"26\": 0.3600000143051147, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 1073741824, \"30\": 268435456, \"31\": \"long\", \"33\": 0 } ]', 1000, 1, 4, NULL, 1, '4.6', 0, 0, 0, 1, '499', 0),
(13, 507, 'BMW', 'E38', 1997, 14599, 18, '2018-08-27 14:02:32', 1, '2019-01-11 16:37:00', 664, '\n', '[ [ 2200, 5000, 1.600000023841858, [ 0, 0.1000000014901161, -0.1000000014901161 ], 75, 0.699999988079071, 0.8500000238418579, 0.5099999904632568, 5, 234, 10.5, 10, \"rwd\", \"petrol\", 6, 0.6000000238418579, false, 35, 1, 0.1000000014901161, 0, 0.3499999940395355, -0.119999997317791, 0.5, 0.300000011920929, 0.2000000029802322, 0.300000011920929, 35000, 1073741824, 272629760, \"long\", \"small\", 0 ] ]', 1000, 1, 2, NULL, 1, '3.0', 0, 1, 0, 2, '500', 0),
(14, 490, 'Chevrolet', 'Tahoe', 2010, 43000, 60, '2018-08-27 14:15:02', 1, '2018-11-07 23:01:39', 664, '\n', '[ [ 3500, 11156, 1.700000047683716, [ 0, 0, -0.2000000029802322 ], 80, 0.800000011920929, 0.8899999856948853, 0.5099999904632568, 5, 229, 9.600000381469727, 5, \"awd\", \"petrol\", 8.5, 0.5, false, 33, 0.699999988079071, 0.1500000059604645, 0, 0.3400000035762787, -0.2000000029802322, 0.5, 0.5, 0.4399999976158142, 0.300000011920929, 40000, 16416, 5242880, \"long\", \"small\", 0 ] ]', 1000, 1, 1, NULL, 1, '5.3', 0, 1, 1, 1, '500', 4),
(15, 400, 'Mercedes-Benz ', 'ML320 4MATIC', 2009, 66050, 80, '2018-08-27 14:49:03', 1, '2018-11-07 22:15:40', 664, '\n', '[ [ 1700, 5008, 1.799999952316284, [ 0, 0, -0.300000011920929 ], 85, 0.75, 0.9800000190734863, 0.4900000095367432, 5, 234, 14, 25, \"awd\", \"diesel\", 6.199999809265137, 0.6000000238418579, false, 35, 1.700000047683716, 0.07999999821186066, 0, 0.2800000011920929, -0.1400000005960464, 0.5, 0.25, 0.2700000107288361, 0.2300000041723251, 25000, 32, 5242882, \"long\", \"small\", 0 ] ]', 1000, 1, 1, NULL, 1, '3.0', 0, 1, 0, 2, '500', 4),
(16, 549, 'Volvo', '242', 1979, 3299, 7, '2018-08-27 15:00:35', 1, '2018-11-07 22:41:18', 664, '\n', '[ [ 2000, 4200, 2.5, [ 0, 0.1500000059604645, 0 ], 70, 0.6000000238418579, 0.9100000262260437, 0.5199999809265137, 4, 141, 6.400000095367432, 10, \"rwd\", \"petrol\", 8.170000076293945, 0.5, false, 30, 1.100000023841858, 0.119999997317791, 3, 0.300000011920929, -0.2300000041723251, 0.5, 0.5, 0.300000011920929, 0.5199999809265137, 19000, 1073741828, 4, \"small\", \"small\", 1 ] ]', 1000, 1, 4, NULL, 1, '2.0', 0, 0, 0, 1, '497', 3),
(17, 542, 'Ford', 'Fairlane', 1966, 3120, 9, '2018-08-27 15:11:38', 1, '2018-11-07 22:38:19', 664, '\n', '[ [ 1600, 3000, 2.200000047683716, [ 0, 0, 0 ], 70, 0.6499999761581421, 0.8899999856948853, 0.5199999809265137, 4, 152, 6, 10, \"rwd\", \"petrol\", 8, 0.5, false, 35, 1, 0.1000000014901161, 0, 0.300000011920929, -0.1000000014901161, 0.5, 0.25, 0.25, 0.5199999809265137, 19000, 1076363264, 268468228, \"small\", \"small\", 0 ] ]', 1000, 1, 4, NULL, 1, '4.7', 0, 0, 0, 1, '499', 3),
(18, 566, 'Vaz', '2107', 1987, 4212, 8, '2018-08-27 15:19:52', 1, '2018-11-07 22:40:10', 664, '\n', '[ [ 2000, 4000, 2, [ 0, -0.300000011920929, 0 ], 75, 0.75, 0.8500000238418579, 0.5199999809265137, 5, 148, 5.400000095367432, 7, \"rwd\", \"petrol\", 7, 0.5, false, 30, 2, 0.1500000059604645, 0, 0.2800000011920929, -0.1000000014901161, 0.4000000059604645, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 0, 302055424, \"small\", \"small\", 0 ] ]', 1000, 1, 4, NULL, 1, '1.5', 0, 0, 0, 1, '500', 0),
(19, 555, 'Honda', 'S2000', 2001, 22460, 22, '2018-08-27 15:32:04', 1, '2018-11-07 22:44:51', 664, '\n', '[ [ 1450, 3500, 2.299999952316284, [ 0, 0.05000000074505806, -0.2000000029802322 ], 75, 0.550000011920929, 0.9200000166893005, 0.4900000095367432, 5, 218, 12, 8, \"rwd\", \"petrol\", 8, 0.4000000059604645, false, 34, 0.6499999761581421, 0.07000000029802322, 0, 0.1500000059604645, -0.05000000074505806, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 1076373508, 0, \"small\", \"small\", 1 ] ]', 1000, 1, 2, NULL, 1, '2.0', 0, 0, 0, 1, '500', 6),
(20, 402, 'Dodge', 'Challenger SRT8', 2012, 100000, 100, '2018-08-27 15:44:15', 1, '2018-11-07 15:36:30', 664, '\n', '[ [ 1750, 4000, 1.899999976158142, [ 0, 0, -0.1000000014901161 ], 85, 0.699999988079071, 0.9700000286102295, 0.4799999892711639, 5, 263, 17, 8, \"rwd\", \"petrol\", 11, 0.4000000059604645, false, 35, 1.5, 0.1599999964237213, 0, 0.2800000011920929, -0.1000000014901161, 0.5, 0.4000000059604645, 0.25, 0.5, 35000, 10240, 270532608, \"small\", \"small\", 0 ] ]', 1000, 1, 1, NULL, 1, '6.4', 0, 1, 1, 1, '500', 3),
(21, 489, 'Niva', '2121', 1982, 3512, 11, '2018-08-27 15:57:21', 1, '2018-11-07 22:59:45', 664, '\n', '[ [ 2500, 7604, 1.799999952316284, [ 0, 0, -0.3499999940395355 ], 80, 0.699999988079071, 0.8500000238418579, 0.5400000214576721, 5, 145, 5.599999904632568, 5, \"awd\", \"petrol\", 7, 0.4000000059604645, false, 35, 0.800000011920929, 0.07999999821186066, 0, 0.449999988079071, -0.2000000029802322, 0.4000000059604645, 0.300000011920929, 0.4399999976158142, 0.3499999940395355, 40000, 16416, 1048580, \"long\", \"small\", 0 ] ]', 1000, 1, 4, NULL, 1, '1.7', 0, 0, 0, 1, '500', 4),
(22, 492, 'Lincoln', 'Town Car', 1981, 7123, 8, '2018-08-27 16:11:44', 1, '2018-11-07 22:01:04', 664, '\n', '[ { \"1\": 1600, \"2\": 4000, \"3\": 2.5, \"4\": [ 0, 0, 0 ], \"5\": 70, \"6\": 0.699999988079071, \"7\": 0.800000011920929, \"8\": 0.5199999809265137, \"9\": 4, \"10\": 160, \"11\": 8, \"12\": 20, \"13\": \"rwd\", \"14\": \"petrol\", \"15\": 5.400000095367432, \"16\": 0.6000000238418579, \"17\": false, \"18\": 30, \"19\": 1.100000023841858, \"20\": 0.119999997317791, \"21\": 5, \"22\": 0.3199999928474426, \"23\": -0.2000000029802322, \"24\": 0.5, \"25\": 0, \"26\": 0.2199999988079071, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 0, \"30\": 268435457, \"31\": \"long\", \"33\": 0 } ]', 1000, 1, 4, NULL, 1, '5.0', 0, 0, 0, 1, '499', 0),
(23, 561, 'BMW', 'E30', 1987, 4980, 10, '2018-08-27 16:26:03', 1, '2018-11-07 23:04:08', 664, '\n', '[ [ 1800, 4500, 2.599999904632568, [ 0, 0.1000000014901161, -0.1000000014901161 ], 75, 0.6000000238418579, 0.9300000071525574, 0.5, 5, 156, 7.699999809265137, 10, \"rwd\", \"petrol\", 7, 0.5, false, 35, 1, 0.1500000059604645, 0, 0.2800000011920929, -0.1599999964237213, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 10240, 67108864, \"small\", \"small\", 0 ] ]', 1000, 1, 4, NULL, 1, '2.4', 0, 0, 0, 2, '498', 2),
(25, 579, 'Porsche', 'Cayenne', 2005, 80000, 100, '2018-08-27 16:38:53', 1, '2019-01-06 18:26:33', 664, '\n', '[ [ 2500, 6000, 1.600000023841858, [ 0, 0, -0.2000000029802322 ], 80, 0.6200000047683716, 0.9700000286102295, 0.5, 5, 245, 14, 23, \"awd\", \"petrol\", 7, 0.4000000059604645, false, 35, 1.5, 0.119999997317791, 0, 0.449999988079071, -0.2099999934434891, 0.4000000059604645, 0.300000011920929, 0.4399999976158142, 0.3499999940395355, 40000, 32, 17412, \"long\", \"small\", 0 ] ]', 1000, 1, 1, NULL, 1, '4.5', 0, 1, 1, 1, '500', 4),
(26, 445, 'Mercedes-Benz', 'S600', 1994, 10122, 12, '2018-08-27 16:49:20', 1, '2018-11-09 08:06:16', 664, '\n', '[ [ 1650, 3851, 2, [ 0, 0, -0.05000000074505806 ], 75, 0.6499999761581421, 0.8999999761581421, 0.5099999904632568, 5, 178, 8.399999618530273, 8, \"rwd\", \"petrol\", 8.5, 0.5, false, 33, 1, 0.1500000059604645, 0, 0.2700000107288361, -0.1899999976158142, 0.5, 0.550000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 0, 4194304, \"long\", \"small\", 0 ] ]', 1000, 1, 4, NULL, 1, '6.0', 0, 0, 0, 1, '500', 0),
(27, 587, 'Ford', 'Mustang', 2007, 48765, 60, '2018-08-27 16:56:18', 1, '2018-11-07 22:18:39', 664, '\n', '[ [ 1400, 2998, 1.799999952316284, [ 0, 0.1000000014901161, -0.1000000014901161 ], 75, 0.699999988079071, 0.8899999856948853, 0.5, 5, 242, 15, 10, \"rwd\", \"petrol\", 8, 0.6000000238418579, false, 35, 1.200000047683716, 0.1500000059604645, 0, 0.300000011920929, -0.1000000014901161, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 1073752068, 0, \"small\", \"small\", 0 ] ]', 1000, 1, 2, NULL, 1, '4.6', 0, 1, 0, 1, '500', 3),
(28, 477, 'Mitsubishi', 'GSX', 1996, 25000, 25, '2018-08-27 17:05:26', 1, '2018-11-07 22:42:18', 664, '\n', '[ [ 1400, 2980, 1.799999952316284, [ 0, 0.2000000029802322, -0.1000000014901161 ], 70, 0.800000011920929, 0.8899999856948853, 0.5099999904632568, 5, 220, 12.80000019073486, 10, \"awd\", \"petrol\", 11.10000038146973, 0.5, false, 30, 2, 0.1700000017881393, 0, 0.3100000023841858, -0.1000000014901161, 0.5, 0.300000011920929, 0.239999994635582, 0.6000000238418579, 45000, 0, 12582912, \"small\", \"small\", 0 ] ]', 1000, 1, 2, NULL, 1, '2.0', 0, 1, 0, 1, '500', 3),
(29, 551, 'Mercedes-Benz ', 'S600 4MATIC ', 2012, 45999, 50, '2018-08-27 17:13:16', 1, '2019-01-06 18:47:09', 664, '\n', '[ [ 1950, 3500, 1.299999952316284, [ 0, 0.2000000029802322, -0.1000000014901161 ], 75, 0.6499999761581421, 0.9900000095367432, 0.5099999904632568, 5, 255, 13, 16, \"awd\", \"petrol\", 9, 0.6000000238418579, false, 40, 1.100000023841858, 0.1500000059604645, 0, 0.2700000107288361, -0.0820000022649765, 0.5, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 1073741824, 4194305, \"long\", \"small\", 0 ] ]', 1000, 1, 1, NULL, 1, '6.0', 0, 1, 0, 1, '498', 0),
(30, 405, 'BMW', 'F01', 2014, 95000, 98, '2018-08-27 17:26:05', 1, '2018-11-09 08:14:18', 664, '\n', '[ [ 1600, 4000, 1.799999952316284, [ 0, 0, -0.2000000029802322 ], 75, 0.6499999761581421, 0.9100000262260437, 0.5400000214576721, 5, 250, 16, 13, \"rwd\", \"petrol\", 10, 0.5, false, 33, 1, 0.07999999821186066, 0, 0.300000011920929, -0.2000000029802322, 0.5, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 0, 4194304, \"long\", \"small\", 0 ] ]', 1000, 1, 1, NULL, 1, '3.0', 0, 1, 0, 2, '500', 0),
(31, 439, 'Pontiac', 'Ventura', 1977, 7995, 10, '2018-08-27 17:37:16', 1, '2018-11-07 23:05:00', 664, '\n', '[ [ 1600, 3921, 2, [ 0, 0, -0.1500000059604645 ], 70, 0.800000011920929, 0.75, 0.550000011920929, 4, 159, 8.5, 5, \"rwd\", \"petrol\", 8.170000076293945, 0.5, false, 35, 1.200000047683716, 0.1000000014901161, 0, 0.300000011920929, -0.1500000059604645, 0.5, 0, 0.300000011920929, 0.6399999856948853, 19000, 10240, 4, \"small\", \"small\", 0 ] ]', 1000, 1, 4, NULL, 1, '5.7', 0, 0, 0, 1, '500', 3),
(32, 540, 'Gaz', '24', 1983, 3499, 9, '2018-08-27 17:47:38', 1, '2018-11-07 23:05:53', 664, '\n', '[ { \"1\": 1800, \"2\": 3000, \"3\": 2, \"4\": [ 0, 0.300000011920929, 0 ], \"5\": 70, \"6\": 0.699999988079071, \"7\": 0.800000011920929, \"8\": 0.5, \"9\": 4, \"10\": 143, \"11\": 5.199999809265137, \"12\": 20, \"13\": \"fwd\", \"14\": \"petrol\", \"15\": 5.400000095367432, \"16\": 0.6000000238418579, \"17\": false, \"18\": 30, \"19\": 1, \"20\": 0.09000000357627869, \"21\": 0, \"22\": 0.3199999928474426, \"23\": -0.1599999964237213, \"24\": 0.6000000238418579, \"25\": 0, \"26\": 0.2599999904632568, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 0, \"30\": 2, \"31\": \"long\", \"33\": 0 } ]', 1000, 1, 4, NULL, 1, '2.4', 0, 0, 0, 1, '498', 0),
(33, 470, 'Toyota', 'Land Cruiser 200', 2016, 68000, 90, '2018-08-27 18:05:44', 1, '2018-12-28 23:20:33', 664, '\n', '[ [ 2500, 7969, 1.200000047683716, [ 0, 0, 0 ], 80, 0.699999988079071, 0.9200000166893005, 0.5, 5, 230, 15, 11, \"awd\", \"petrol\", 8, 0.5, false, 30, 1.600000023841858, 0.1299999952316284, 4, 0.3499999940395355, -0.125, 0.5, 0, 0.2800000011920929, 0.25, 40000, 8, 3145728, \"long\", \"small\", 0 ] ]', 1000, 1, 1, NULL, 1, '4.5', 0, 1, 1, 2, '498', 4),
(34, 505, 'Land Rover', 'Defender 110', 1996, 7999, 20, '2018-08-27 18:40:08', 1, '2018-11-07 23:06:28', 664, '\n', '[ [ 2500, 7604, 2, [ 0, 0, -0.3499999940395355 ], 80, 0.699999988079071, 0.8500000238418579, 0.5400000214576721, 5, 154, 6.800000190734863, 5, \"awd\", \"petrol\", 7, 0.4000000059604645, false, 35, 0.800000011920929, 0.1000000014901161, 0, 0.449999988079071, -0.25, 0.4000000059604645, 0.300000011920929, 0.4399999976158142, 0.3499999940395355, 40000, 16416, 1048580, \"long\", \"small\", 0 ] ]', 1000, 1, 4, NULL, 1, '2.5', 0, 0, 0, 2, '499', 4),
(133, 494, 'Maserati', 'GranTurismo Convertible', 2009, 1, 1, '2019-01-30 17:25:06', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 1, NULL, 1, '4.5', 0, 0, 0, 1, '500', 3),
(134, 502, 'Audi', 'R8', 2006, 1, 1, '2019-01-30 17:35:06', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 1, NULL, 1, '4.2', 0, 0, 0, 1, '500', 3),
(135, 503, 'Lykan', 'Hypersport', 2009, 1, 1, '2019-01-30 17:38:33', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 1, NULL, 1, '6.8', 0, 0, 0, 1, '500', 3),
(36, 529, 'BMW', 'E39', 2003, 26999, 34, '2018-08-28 18:12:15', 1, '2018-11-10 22:17:47', 664, '\n', '[ { \"1\": 1800, \"2\": 4350, \"3\": 1.600000023841858, \"4\": [ 0, 0, 0 ], \"5\": 70, \"6\": 0.699999988079071, \"7\": 0.800000011920929, \"8\": 0.5199999809265137, \"9\": 4, \"10\": 225, \"11\": 11.5, \"12\": 9, \"13\": \"rwd\", \"14\": \"petrol\", \"15\": 5.400000095367432, \"16\": 0.6000000238418579, \"17\": false, \"18\": 34, \"19\": 1.100000023841858, \"20\": 0.1500000059604645, \"21\": 0, \"22\": 0.3199999928474426, \"23\": -0.1400000005960464, \"24\": 0.5, \"25\": 0, \"26\": 0.2599999904632568, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 1073741824, \"30\": 0, \"31\": \"long\", \"33\": 0 } ]', 1000, 1, 2, NULL, 1, '3.0', 0, 1, 1, 2, '998', 0),
(37, 466, 'BMW', 'E34', 1992, 4599, 10, '2018-08-28 18:18:45', 1, '2018-11-07 14:29:32', 664, '\n', '[ [ 1800, 4000, 2, [ 0, 0, 0.05000000074505806 ], 75, 0.6000000238418579, 0.8399999737739563, 0.5199999809265137, 5, 163, 6.5, 13.5, \"rwd\", \"petrol\", 6.199999809265137, 0.6000000238418579, false, 30, 0.800000011920929, 0.119999997317791, 0, 0.3499999940395355, -0.2199999988079071, 0.5, 0.5, 0.2300000041723251, 0.4000000059604645, 20000, 0, 276824066, \"small\", \"small\", 0 ] ]', 1000, 1, 4, NULL, 1, '2.4', 0, 0, 0, 2, '498', 0),
(38, 467, 'Vaz', '2101', 1977, 2455, 7, '2018-08-28 18:47:22', 1, '2018-11-07 13:50:23', 664, '\n', '[ [ 1900, 4530, 1.700000047683716, [ 0, 0, 0 ], 75, 0.6700000166893005, 0.9200000166893005, 0.5, 5, 153, 6.199999809265137, 13, \"rwd\", \"petrol\", 5, 0.6000000238418579, false, 30, 1, 0.1800000071525574, 0, 0.3499999940395355, -0.25, 0.4000000059604645, 0.5, 0.2300000041723251, 0.449999988079071, 20000, 0, 276824064, \"big\", \"small\", 0 ] ]', 1000, 1, 4, NULL, 1, '1.3', 0, 0, 0, 1, '497', 0),
(39, 404, 'Vaz', '2106', 1985, 3890, 8, '2018-08-28 19:01:12', 1, '2018-12-28 23:09:09', 664, '\n', '[ [ 1400, 3000, 2, [ 0, 0.1000000014901161, 0 ], 70, 0.699999988079071, 0.9300000071525574, 0.4799999892711639, 5, 140, 6.5, 5, \"rwd\", \"petrol\", 4, 0.800000011920929, false, 31, 1.700000047683716, 0.1800000071525574, 0, 0.3700000047683716, -0.1000000014901161, 0.5, 0, 0.2000000029802322, 0.6000000238418579, 10000, 32, 0, \"small\", \"small\", 0 ] ]', 1000, 1, 4, NULL, 1, '1.5', 0, 0, 0, 1, '499', 0),
(40, 576, 'Mercedes-Benz', '380SEL', 1985, 10012, 15, '2018-08-28 19:11:35', 1, '2018-11-07 23:08:26', 664, '\n', '[ [ 1700, 4166, 1.799999952316284, [ 0, -0.1000000014901161, 0.1000000014901161 ], 70, 0.75, 0.949999988079071, 0.5199999809265137, 4, 194, 10.39999961853027, 10, \"rwd\", \"petrol\", 6, 0.6000000238418579, false, 35, 1.799999952316284, 0.1500000059604645, 0, 0.300000011920929, -0.1500000059604645, 0.5, 0.25, 0.300000011920929, 0.5199999809265137, 19000, 2228224, 33619968, \"small\", \"small\", 0 ] ]', 1000, 1, 2, NULL, 1, '3.8', 0, 0, 0, 1, '499', 3),
(41, 479, 'Jeep', 'Cherokee', 1992, 20000, 25, '2018-08-28 19:26:23', 1, '2018-11-07 22:00:02', 664, '\n', '[ [ 1500, 3800, 1.799999952316284, [ 0, 0.2000000029802322, 0 ], 75, 0.6499999761581421, 0.8500000238418579, 0.5199999809265137, 4, 165, 7.5, 25, \"awd\", \"petrol\", 5, 0.6000000238418579, false, 30, 1, 0.1000000014901161, 0, 0.2700000107288361, -0.1700000017881393, 0.5, 0.2000000029802322, 0.239999994635582, 0.4799999892711639, 18000, 32, 1, \"small\", \"small\", 0 ] ]', 1000, 1, 4, NULL, 1, '4.0', 0, 0, 0, 1, '498', 4),
(42, 585, 'Audi', 'A7 Quattro', 2010, 63000, 65, '2018-08-28 19:32:59', 1, '2019-01-10 20:25:09', 664, '\n', '[ [ 1800, 4000, 0.699999988079071, [ 0, 0.2000000029802322, 0.1500000059604645 ], 75, 0.6499999761581421, 0.800000011920929, 0.5199999809265137, 5, 255, 13.5, 15, \"awd\", \"petrol\", 8, 0.4000000059604645, false, 35, 1, 0.1299999952316284, 3, 0.300000011920929, -0.2000000029802322, 0.5, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 1073741824, 4194304, \"long\", \"small\", 0 ] ]', 1000, 1, 1, NULL, 1, '3.0', 0, 0, 0, 2, '500', 0),
(43, 421, 'Tesla', 'Model-S', 2018, 89000, 130, '2018-08-29 17:37:13', 1, '2018-11-07 21:53:01', 664, '\n', '[ [ 1850, 5000, 1.899999976158142, [ 0, 0, -0.1000000014901161 ], 75, 0.75, 0.9300000071525574, 0.5, 5, 235, 16, 10, \"awd\", \"petrol\", 7.5, 0.6000000238418579, false, 30, 1, 0.2000000029802322, 0, 0.2700000107288361, -0.2000000029802322, 0.5, 0.3499999940395355, 0.239999994635582, 0.6000000238418579, 18000, 0, 272629760, \"small\", \"small\", 0 ] ]', 1000, 1, 1, NULL, 1, '3.0', 0, 1, 0, 1, '500', -1),
(44, 474, 'Volkswagen', 'Kafer', 1983, 4532, 8, '2018-08-29 17:43:22', 1, '2018-11-07 21:53:57', 664, '\n', '[ { \"1\": 1950, \"2\": 4713, \"3\": 2, \"4\": [ 0, 0.300000011920929, 0 ], \"5\": 70, \"6\": 0.699999988079071, \"7\": 0.75, \"8\": 0.5099999904632568, \"9\": 5, \"10\": 145, \"11\": 7.199999809265137, \"12\": 13, \"13\": \"fwd\", \"14\": \"petrol\", \"15\": 3.5, \"16\": 0.6000000238418579, \"17\": false, \"18\": 28, \"19\": 1, \"20\": 0.05000000074505806, \"21\": 0, \"22\": 0.3499999940395355, \"23\": -0.2000000029802322, \"24\": 0.6000000238418579, \"25\": 0, \"26\": 0.25, \"27\": 0.4199999868869781, \"28\": 19000, \"29\": 1073750016, \"30\": 1, \"31\": \"small\", \"33\": 0 } ]', 1000, 1, 4, NULL, 1, '1.3', 0, 0, 0, 1, '500', 3),
(45, 451, 'Ferrari', '458 Italia', 2014, 340000, 360, '2018-08-29 17:49:33', 1, '2018-11-10 22:20:06', 664, '\n', '[ [ 1400, 3000, 1.100000023841858, [ 0, -0.1000000014901161, 0 ], 70, 0.75, 1, 0.4099999964237213, 5, 320, 20, 10, \"rwd\", \"petrol\", 11, 0.5, false, 40, 3, 0.2000000029802322, 0, 0.1500000059604645, -0.1700000017881393, 0.300000011920929, 0.4000000059604645, 0.1700000017881393, 0.7200000286102295, 95000, 1073750020, 12616705, \"small\", \"small\", 1 ] ]', 1000, 1, 1, NULL, 1, '4.5', 0, 1, 0, 1, '500', 3),
(46, 496, 'Audi', 'Coupe GT', 1985, 28850, 32, '2018-08-29 17:54:39', 1, '2018-11-07 22:07:57', 664, '\n', '[ [ 1000, 2142, 1.799999952316284, [ 0, 0, -0.1000000014901161 ], 50, 0.8500000238418579, 0.8500000238418579, 0.5, 5, 228, 11.5, 5, \"awd\", \"petrol\", 11, 0.4000000059604645, false, 30, 1.399999976158142, 0.1000000014901161, 0, 0.2800000011920929, -0.119999997317791, 0.5, 0, 0.25, 0.5, 35000, 3221225472, 12582912, \"small\", \"small\", 0 ] ]', 1000, 1, 2, NULL, 1, '2.2', 0, 0, 0, 1, '498', 3),
(47, 506, 'Honda', 'NSX', 1996, 110000, 130, '2018-08-29 17:58:57', 1, '2018-11-10 22:38:35', 664, '\n', '[ [ 1400, 2800, 1.600000023841858, [ 0, -0.2000000029802322, -0.239999994635582 ], 70, 0.75, 1.049999952316284, 0.4300000071525574, 5, 264, 16, 10, \"awd\", \"petrol\", 8, 0.5, false, 34, 1, 0.2000000029802322, 0, 0.25, -0.1000000014901161, 0.5, 0.300000011920929, 0.4000000059604645, 0.5400000214576721, 105000, 1073750020, 2129920, \"long\", \"long\", 1 ] ]', 1000, 1, 1, NULL, 1, '3.0', 0, 1, 0, 1, '500', 3),
(48, 411, 'Lamborghini', 'Diablo', 1992, 210000, 250, '2018-08-29 18:04:31', 1, '2018-11-07 15:31:00', 664, '\n', '[ [ 1400, 2725, 1.600000023841858, [ 0, 0, -0.25 ], 70, 0.699999988079071, 1.120000004768372, 0.4099999964237213, 5, 270, 17.39999961853027, 10, \"rwd\", \"petrol\", 11, 0.5, false, 33, 1.200000047683716, 0.1899999976158142, 0, 0.25, -0.1000000014901161, 0.5, 0.4000000059604645, 0.3700000047683716, 0.7200000286102295, 95000, 1073750020, 12599296, \"small\", \"small\", 1 ] ]', 1000, 1, 1, NULL, 1, '5.7', 0, 1, 0, 0, '500', 3),
(49, 550, 'Toyota', 'Crown Athlete', 2008, 29000, 35, '2018-08-29 18:12:22', 1, '2018-12-28 23:23:19', 664, '\n', '[ { \"1\": 1600, \"2\": 3550, \"3\": 1.399999976158142, \"4\": [ 0, 0.300000011920929, 0 ], \"5\": 70, \"6\": 0.699999988079071, \"7\": 0.800000011920929, \"8\": 0.5199999809265137, \"9\": 5, \"10\": 194, \"11\": 7.800000190734863, \"12\": 8, \"13\": \"fwd\", \"14\": \"petrol\", \"15\": 5.400000095367432, \"16\": 0.6000000238418579, \"17\": false, \"18\": 32, \"19\": 1, \"20\": 0.09000000357627869, \"21\": 0, \"22\": 0.300000011920929, \"23\": -0.119999997317791, \"24\": 0.6000000238418579, \"25\": 0, \"26\": 0.2599999904632568, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 1073741824, \"30\": 1, \"31\": \"long\", \"33\": 0 } ]', 1000, 1, 2, NULL, 1, '2.5', 0, 1, 1, 1, '500', 0),
(50, 526, 'Volkswagen', 'Corrado', 1991, 9912, 10, '2018-08-29 18:20:11', 1, '2018-11-07 13:58:02', 664, '\n', '[ [ 2200, 4166, 2, [ 0, 0, -0.2000000029802322 ], 70, 0.699999988079071, 0.8899999856948853, 0.5299999713897705, 4, 167, 7.800000190734863, 15, \"awd\", \"petrol\", 8.170000076293945, 0.5, false, 32, 1.200000047683716, 0.1500000059604645, 0, 0.300000011920929, -0.1000000014901161, 0.5, 0.25, 0.300000011920929, 0.5199999809265137, 19000, 1073741824, 4, \"small\", \"small\", 0 ] ]', 1000, 1, 4, NULL, 1, '1.9', 0, 0, 0, 1, '499', 3),
(51, 426, 'Ford', 'Crown Victoria', 2005, 20870, 21, '2018-08-29 18:24:49', 1, '2018-11-07 23:02:23', 664, '\n', '[ [ 1600, 3921, 1.799999952316284, [ 0, -0.4000000059604645, 0 ], 75, 0.75, 0.9200000166893005, 0.5, 5, 215, 11.5, 10, \"rwd\", \"petrol\", 10, 0.5, false, 35, 1.299999952316284, 0.119999997317791, 0, 0.2800000011920929, -0.119999997317791, 0.4000000059604645, 0, 0.2000000029802322, 0.239999994635582, 25000, 1073741824, 270532616, \"long\", \"small\", 0 ] ]', 1000, 1, 2, NULL, 1, '4.6', 0, 1, 1, 1, '500', 0),
(53, 580, 'BMW', 'E46', 2003, 17999, 20, '2018-08-29 18:33:34', 1, '2018-11-07 14:27:10', 664, '\n', '[ [ 2000, 6000, 1.600000023841858, [ 0, 0, 0 ], 75, 0.6499999761581421, 0.9200000166893005, 0.5199999809265137, 5, 204, 10, 15, \"rwd\", \"petrol\", 5, 0.6000000238418579, false, 30, 1.5, 0.1800000071525574, 0, 0.2700000107288361, -0.119999997317791, 0.5, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 0, 4194304, \"long\", \"small\", 0 ] ]', 1000, 1, 2, NULL, 1, '2.5', 0, 1, 0, 1, '500', 0),
(54, 429, 'Lamborghini', 'Huracan', 2015, 280000, 290, '2018-08-29 18:37:42', 1, '2019-01-07 19:58:09', 664, '\n', '[ [ 1550, 3000, 1.299999952316284, [ 0, 0, -0.2000000029802322 ], 70, 0.800000011920929, 0.8899999856948853, 0.5, 5, 340, 20, 2, \"awd\", \"petrol\", 8, 0.5, false, 40, 1.600000023841858, 0.1000000014901161, 5, 0.300000011920929, -0.2000000029802322, 0.5, 0.300000011920929, 0.1500000059604645, 0.4900000095367432, 45000, 8196, 2097152, \"small\", \"small\", 1 ] ]', 1000, 1, 1, NULL, 1, '5.2', 0, 1, 0, 1, '500', 3),
(55, 415, 'Lexus', 'LFA', 2012, 300000, 310, '2018-08-29 18:43:04', 1, '2018-11-07 15:11:58', 664, '\n', '[ [ 1200, 3000, 1.5, [ 0, -0.2000000029802322, -0.2000000029802322 ], 70, 0.800000011920929, 0.8999999761581421, 0.5099999904632568, 5, 300, 20, 10, \"awd\", \"petrol\", 11.10000038146973, 0.5, false, 40, 0.800000011920929, 0.2000000029802322, 0, 0.1000000014901161, -0.1500000059604645, 0.5, 0.6000000238418579, 0.4000000059604645, 0.5400000214576721, 105000, 3221233668, 2129920, \"long\", \"long\", 1 ] ]', 1000, 1, 1, NULL, 1, '4.8', 0, 1, 0, 1, '500', 3),
(56, 562, 'Nissan', 'Silvia S13', 1990, 21050, 21, '2018-08-29 19:03:00', 1, '2018-11-10 22:15:56', 664, '\n', '[ [ 1500, 3500, 1.600000023841858, [ 0, 0.300000011920929, -0.1500000059604645 ], 75, 0.6499999761581421, 0.8500000238418579, 0.5199999809265137, 5, 224, 10, 9, \"rwd\", \"petrol\", 8, 0.5, false, 35, 1, 0.2000000029802322, 0, 0.2800000011920929, -0.1500000059604645, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 1073752068, 67108865, \"small\", \"small\", 1 ] ]', 1000, 1, 2, NULL, 1, '2.4', 0, 0, 0, 1, '499', 3),
(57, 596, 'Ford', 'Crown Victoria', 2009, 1, 0, '2018-09-15 16:40:30', 657, '2018-12-20 18:02:02', 664, '\n', '[ [ 1600, 4500, 1, [ 0, 0.300000011920929, -0.1000000014901161 ], 75, 0.75, 0.9200000166893005, 0.5, 5, 235, 13, 13, \"rwd\", \"petrol\", 10, 0.5, false, 35, 1, 0.119999997317791, 0, 0.2800000011920929, -0.119999997317791, 0.6000000238418579, 0, 0.2000000029802322, 0.239999994635582, 25000, 1073741824, 270532616, \"long\", \"small\", 0 ] ]', 1000, 1, 7, NULL, 1, '4.6', 0, 1, 0, 0, '0', 0),
(58, 523, 'BMW', 'K100 LT', 1991, 1, 0, '2018-09-15 16:56:21', 657, '2018-11-07 14:36:18', 664, '\n', '[ [ 500, 240, 4.5, [ 0, 0.05000000074505806, -0.09000000357627869 ], 103, 1.5, 0.8999999761581421, 0.4600000083446503, 5, 190, 40, 5, \"rwd\", \"petrol\", 15, 0.5, false, 35, 0.8500000238418579, 0.1500000059604645, 0, 0.1500000059604645, -0.1599999964237213, 0.5, 0, 0, 0.1500000059604645, 10000, 16785408, 0, \"small\", \"small\", 4 ] ]', 1000, 1, 7, NULL, 1, '987 cc', 0, 0, 0, 0, '0', 0),
(60, 497, 'Police Helicopter', 'R66 Turbine', 2010, 1, 0, '2018-09-15 17:15:33', 657, '2018-11-07 21:52:26', 664, '\n', '[ [ 4500, 26344, 0.2000000029802322, [ 0, 0, -0.1000000014901161 ], 75, 0.6499999761581421, 0.8999999761581421, 0.5, 1, 200, 14, 5, \"awd\", \"petrol\", 5, 0.4000000059604645, false, 30, 2, 0.1000000014901161, 0, 0.5, -0.2000000029802322, 0.5, 0, 0.300000011920929, 0.6499999761581421, 52000, 33570816, 4194304, \"long\", \"small\", 0 ] ]', 1000, 1, 7, NULL, 1, '4.0', 0, 0, 0, 0, '0', 0),
(62, 487, 'Maveric', 'R66 Turbine', 2010, 1, 0, '2018-09-15 17:24:23', 657, '2018-11-07 22:05:08', 664, '\n', '[ [ 5000, 29271, 0.2000000029802322, [ 0, 0, -0.1000000014901161 ], 75, 0.6499999761581421, 0.8999999761581421, 0.5, 1, 200, 6.400000095367432, 5, \"awd\", \"petrol\", 5, 0.4000000059604645, false, 30, 2, 0.1500000059604645, 0, 0.5, -0.2000000029802322, 0.5, 0, 0.300000011920929, 0.75, 45000, 33570816, 4194304, \"long\", \"small\", 0 ] ]', 1000, 0, 7, NULL, 1, '4.0', 0, 0, 0, 0, '0', 0),
(63, 416, 'Ambulance', 'Chevrolet Silverado', 1990, 1, 0, '2018-09-15 17:31:40', 657, '2019-01-29 20:33:47', 664, '\n', '[ [ 2600, 10203, 2.5, [ 0, 0, -0.1000000014901161 ], 90, 0.75, 0.800000011920929, 0.4699999988079071, 5, 155, 9.600000381469727, 10, \"awd\", \"diesel\", 7, 0.6000000238418579, false, 35, 2, 0.2000000029802322, 0, 0.4000000059604645, -0.2000000029802322, 0.5, 0, 0.5799999833106995, 0.3300000131130219, 10000, 16385, 4, \"long\", \"small\", 13 ] ]', 1000, 1, 7, NULL, 1, '4.0', 0, 0, 0, 0, '0', 0),
(64, 407, 'E-One', 'Typhoon', 1998, 1, 0, '2018-09-15 17:37:36', 657, '2018-11-07 21:58:23', 664, '\n', '[ [ 6500, 36671, 2.5, [ 0, 0, 0 ], 90, 0.550000011920929, 0.800000011920929, 0.5, 5, 170, 10.80000019073486, 10, \"rwd\", \"diesel\", 10, 0.4000000059604645, false, 27, 1.200000047683716, 0.07999999821186066, 0, 0.4699999988079071, -0.1700000017881393, 0.5, 0, 0.2000000029802322, 0.2599999904632568, 15000, 16536, 0, \"long\", \"small\", 2 ] ]', 1000, 1, 7, NULL, 1, '6.0', 0, 0, 0, 0, '0', 0),
(66, 525, 'REKA', '250HD', 1992, 1, 0, '2018-09-15 18:02:03', 657, '2018-11-07 21:59:11', 664, '\n', '[ { \"1\": 3500, \"2\": 12000, \"3\": 2.5, \"4\": [ 0, 0.300000011920929, -0.25 ], \"5\": 80, \"6\": 0.8500000238418579, \"7\": 0.699999988079071, \"8\": 0.4600000083446503, \"9\": 5, \"10\": 155, \"11\": 9.199999809265137, \"12\": 30, \"13\": \"rwd\", \"14\": \"diesel\", \"15\": 6, \"16\": 0.800000011920929, \"17\": false, \"18\": 45, \"19\": 1.600000023841858, \"20\": 0.07000000029802322, \"21\": 0, \"22\": 0.3499999940395355, \"23\": -0.1500000059604645, \"24\": 0.300000011920929, \"25\": 0, \"26\": 0.2000000029802322, \"27\": 0.5, \"28\": 20000, \"29\": 2359297, \"30\": 18121216, \"31\": \"long\", \"33\": 13 } ]', 1000, 1, 7, NULL, 1, '3.0', 0, 0, 0, 0, '0', -1),
(67, 578, 'Ford', 'DFT-30', 2000, 1, 0, '2018-09-15 18:06:16', 657, '2018-11-07 22:08:48', 664, '\n', '[ [ 5500, 33188, 2, [ 0, 0, -0.2000000029802322 ], 90, 0.6499999761581421, 0.9900000095367432, 0.4000000059604645, 5, 129, 8, 20, \"rwd\", \"diesel\", 3.5, 0.4000000059604645, false, 30, 1.399999976158142, 0.05999999865889549, 0, 0.449999988079071, -0.25, 0.6000000238418579, 0, 0.449999988079071, 0.2000000029802322, 5000, 16392, 512, \"long\", \"small\", 2 ] ]', 1000, 1, 7, NULL, 1, '2.5', 0, 0, 0, 0, '0', 0),
(68, 582, 'News', 'Van', 1997, 1, 0, '2018-09-15 18:48:00', 657, '2018-11-07 22:05:32', 664, '\n', '[ { \"1\": 1900, \"2\": 6333, \"3\": 2, \"4\": [ 0, 0, -0.1500000059604645 ], \"5\": 80, \"6\": 0.8500000238418579, \"7\": 0.699999988079071, \"8\": 0.4600000083446503, \"9\": 5, \"10\": 160, \"11\": 6, \"12\": 15, \"13\": \"rwd\", \"14\": \"diesel\", \"15\": 6, \"16\": 0.800000011920929, \"17\": false, \"18\": 30, \"19\": 1.299999952316284, \"20\": 0.07000000029802322, \"21\": 0, \"22\": 0.3499999940395355, \"23\": -0.1500000059604645, \"24\": 0.4000000059604645, \"25\": 0, \"26\": 0.2000000029802322, \"27\": 0.4300000071525574, \"28\": 20000, \"29\": 16385, \"30\": 2, \"31\": \"long\", \"33\": 13 } ]', 1000, 1, 7, NULL, 1, '2.0', 0, 0, 0, 0, '0', 0),
(70, 522, 'Kawasaki', 'Ninja ZX -6R', 2018, 35000, 28, '2018-11-07 23:19:40', 664, '2018-11-08 17:36:53', 664, '\n', '[ [ 400, 200, 4, [ 0, 0.07999999821186066, -0.09000000357627869 ], 103, 1.799999952316284, 0.8999999761581421, 0.4799999892711639, 5, 235, 38, 5, \"rwd\", \"petrol\", 15, 0.5, false, 35, 0.8500000238418579, 0.1500000059604645, 0, 0.1500000059604645, -0.1599999964237213, 0.5, 0, 0, 0.1500000059604645, 10000, 16785408, 2, \"small\", \"small\", 4 ] ]', 1000, 0, 3, NULL, 1, '650', 0, 0, 0, 0, '1000', 0),
(71, 468, 'Yamaha', 'YZ 250cc', 2014, 10000, 13, '2018-11-07 23:23:09', 664, '2018-11-08 17:37:02', 664, '\n', '[ [ 500, 195, 5, [ 0, 0.05000000074505806, -0.09000000357627869 ], 103, 1.600000023841858, 0.8999999761581421, 0.4799999892711639, 5, 200, 23, 5, \"rwd\", \"petrol\", 14, 0.5, false, 35, 0.8500000238418579, 0.1500000059604645, 0, 0.1500000059604645, -0.1599999964237213, 0.5, 0, 0, 0.1500000059604645, 10000, 16777216, 0, \"small\", \"small\", 7 ] ]', 1000, 0, 3, NULL, 1, '250', 0, 0, 0, 1, '1000', 0),
(72, 468, 'Honda', 'XR 125cc', 2013, 5000, 7, '2018-11-07 23:24:12', 664, '2018-11-07 23:28:16', 664, '\n', '[ [ 500, 195, 6, [ 0, 0.05000000074505806, -0.09000000357627869 ], 103, 1.600000023841858, 0.8999999761581421, 0.4799999892711639, 5, 135, 18, 5, \"rwd\", \"petrol\", 14, 0.5, false, 35, 0.8500000238418579, 0.1500000059604645, 0, 0.1500000059604645, -0.1599999964237213, 0.5, 0, 0, 0.1500000059604645, 10000, 16777216, 0, \"small\", \"small\", 7 ] ]', 1000, 0, 3, NULL, 1, '125', 0, 0, 0, 0, '0', -1),
(73, 521, 'Honda ', 'CBR 600RR', 2015, 23000, 24, '2018-11-07 23:32:09', 664, '2018-11-08 17:36:42', 664, '\n', '[ [ 500, 200, 3.5, [ 0, 0.05000000074505806, -0.09000000357627869 ], 103, 1.5, 0.8999999761581421, 0.4799999892711639, 5, 215, 31, 5, \"rwd\", \"petrol\", 15, 0.5, false, 35, 0.8500000238418579, 0.1500000059604645, 0, 0.1500000059604645, -0.1599999964237213, 0.5, 0, 0, 0.1099999994039536, 10000, 16777216, 0, \"small\", \"small\", 4 ] ]', 1000, 1, 3, NULL, 1, '600', 0, 0, 0, 0, '1000', 0),
(74, 522, 'Yamaha', 'R1 1000CC', 2015, 75000, 58, '2018-11-07 23:34:45', 664, '2019-01-07 18:03:38', 664, '\n', '[ [ 400, 200, 3.5, [ 0, 0.07999999821186066, -0.09000000357627869 ], 103, 1.600000023841858, 0.8999999761581421, 0.4799999892711639, 5, 300, 46, 9, \"rwd\", \"petrol\", 15, 0.5, false, 39, 0.8500000238418579, 0.1500000059604645, 0, 0.1500000059604645, -0.1599999964237213, 0.5, 0, 0, 0.1500000059604645, 10000, 16785408, 2, \"small\", \"small\", 4 ] ]', 1000, 1, 3, NULL, 1, '1000', 0, 0, 0, 0, '1000', 0),
(75, 462, 'Piaggio', 'ZIP 50cc ', 1999, 1200, 5, '2018-11-07 23:37:04', 664, '2018-11-07 23:38:36', 664, '\n', '[ [ 350, 120, 7, [ 0, 0.05000000074505806, -0.1000000014901161 ], 103, 1.799999952316284, 0.8999999761581421, 0.4799999892711639, 3, 82, 9, 5, \"rwd\", \"petrol\", 14, 0.5, false, 35, 1, 0.1500000059604645, 0, 0.119999997317791, -0.1700000017881393, 0.5, 0, 0, 0.1099999994039536, 10000, 16777216, 0, \"small\", \"small\", 5 ] ]', 1000, 1, 3, NULL, 1, '50', 0, 0, 0, 0, '0', 0),
(76, 468, 'Kawasaki', 'KX 85CC', 2000, 3800, 10, '2018-11-07 23:39:46', 664, '2018-11-08 17:43:02', 664, '\n', '[ [ 500, 195, 5, [ 0, 0.05000000074505806, -0.09000000357627869 ], 103, 1.600000023841858, 0.8999999761581421, 0.4799999892711639, 5, 110, 13, 5, \"rwd\", \"petrol\", 14, 0.5, false, 35, 0.8500000238418579, 0.1500000059604645, 0, 0.1500000059604645, -0.1599999964237213, 0.5, 0, 0, 0.1500000059604645, 10000, 16777216, 0, \"small\", \"small\", 7 ] ]', 1000, 1, 3, NULL, 1, '85', 0, 0, 0, 0, '1000', 0),
(77, 481, 'Diamond Back', 'Fly', 2005, 500, 1, '2018-11-07 23:41:37', 664, '2018-11-08 17:35:31', 664, '\n', '[ [ 100, 39, 7, [ 0, 0.05000000074505806, -0.09000000357627869 ], 103, 1.600000023841858, 0.8999999761581421, 0.4799999892711639, 5, 120, 7.199999809265137, 5, \"rwd\", \"petrol\", 19, 0.5, false, 35, 0.800000011920929, 0.1500000059604645, 0, 0.2000000029802322, -0.1000000014901161, 0.5, 0, 0, 0.1500000059604645, 10000, 1090519040, 0, \"small\", \"small\", 9 ] ]', 1000, 1, 3, NULL, 1, '', 0, 0, 0, 0, '1000', 0),
(78, 510, 'Cannondale', 'Alu sport', 2013, 700, 4, '2018-11-07 23:42:50', 664, '2018-11-08 17:35:19', 664, '\n', '[ [ 100, 60, 5, [ 0, 0.05000000074505806, -0.09000000357627869 ], 103, 1.600000023841858, 0.8999999761581421, 0.4799999892711639, 4, 140, 10, 15, \"rwd\", \"petrol\", 19, 0.5, false, 35, 0.8500000238418579, 0.1500000059604645, 0, 0.2000000029802322, -0.1000000014901161, 0.5, 0, 0, 0.1500000059604645, 10000, 1090519040, 2, \"small\", \"small\", 10 ] ]', 1000, 1, 3, NULL, 1, '', 0, 0, 0, 0, '1000', 0),
(83, 473, 'Dulkan', '400', 2018, 2000, 6, '2018-12-05 16:55:24', 657, '2018-12-05 17:27:28', 657, '\n', NULL, 1000, 1, 6, NULL, 1, '2.0', 0, 0, 0, 1, '500', 0),
(84, 493, 'Veneet', 'Evinrude', 1972, 13300, 17, '2018-12-05 17:00:09', 657, '2018-12-05 18:36:43', 657, '\n', NULL, 1000, 1, 6, NULL, 1, '3.0', 0, 0, 0, 0, '500', 0),
(85, 472, 'Triotroil', 'HB-F686', 1996, 25150, 18, '2018-12-05 17:01:44', 657, '2018-12-05 18:37:09', 657, '\n', NULL, 1000, 1, 6, NULL, 1, '4.0', 0, 0, 0, 1, '500', 0),
(86, 484, 'Jeanneau', '49ds', 2006, 90301, 70, '2018-12-05 17:02:59', 657, '2018-12-08 16:01:59', 664, '\n', '[ [ 5000, 155521, 1, [ 0, 0, 0 ], 10, -3.5, 25, 0.4000000059604645, 5, 190, 0.2000000029802322, 5, \"rwd\", \"petrol\", 0.03999999910593033, 0, false, 38, 1, 3, 0, 0.1000000014901161, 0, 1, 0, 0.2000000029802322, 0.3799999952316284, 99000, 134217728, 0, \"long\", \"small\", 0 ] ]', 1000, 1, 6, NULL, 1, '3.5', 0, 0, 0, 0, '500', 0),
(80, 516, 'Audi', 'A6 Quattro 3.0TDI ', 1997, 16000, 19, '2018-11-07 23:51:21', 664, '2019-01-28 15:07:53', 664, '\n', '[ [ 1400, 4000, 1.399999976158142, [ 0, 0.300000011920929, -0.1000000014901161 ], 75, 0.6499999761581421, 0.800000011920929, 0.5, 5, 211, 10, 10, \"awd\", \"petrol\", 8, 0.6000000238418579, false, 35, 1.399999976158142, 0.1000000014901161, 0, 0.2700000107288361, -0.1000000014901161, 0.6000000238418579, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 0, 4194304, \"long\", \"small\", 0 ] ]', 1000, 1, 2, NULL, 1, '3.0', 0, 0, 0, 0, '1000', 0),
(102, 436, 'Mazda', 'RX-8', 2006, 28000, 36, '2019-01-27 16:29:02', 1, '2019-01-29 20:44:15', 664, '\n', '[ [ 1400, 3000, 1.5, [ 0, 0.300000011920929, -0.1000000014901161 ], 70, 0.699999988079071, 0.800000011920929, 0.449999988079071, 4, 255, 13, 14, \"rwd\", \"petrol\", 8, 0.6000000238418579, false, 34, 1.100000023841858, 0.07999999821186066, 2, 0.3100000023841858, -0.1800000071525574, 0.6000000238418579, 0.300000011920929, 0.2099999934434891, 0.5, 9000, 0, 0, \"long\", \"long\", 0 ] ]', 1000, 1, 2, NULL, 1, '2.0', 0, 1, 0, 1, '1000', 3),
(103, 600, 'GMC', 'Nezinu', 2000, 1, 100, '2019-01-27 16:37:38', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 1, 1, 1, '2.0', 0, 0, 0, 1, '500', 3),
(104, 567, 'Savanna', '2017', 2016, 1, 15, '2019-01-27 16:46:56', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 2, NULL, 1, '5.0', 0, 0, 1, 1, '500', 0),
(107, 438, 'Cabbie', 'Taxi', 2012, 1, 10, '2019-01-27 17:14:55', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 4, NULL, 1, '2.0', 0, 0, 0, 1, '500', 0),
(87, 430, 'Police', 'Boat', 1994, 1, 1, '2018-12-05 17:04:36', 657, '2018-12-05 18:04:32', 657, '\n', NULL, 1000, 1, 7, NULL, 1, '3.8', 0, 0, 0, 0, '500', 0),
(88, 453, 'Mariah', '21.5', 1991, 24800, 22, '2018-12-05 17:06:56', 657, '2018-12-05 18:37:01', 657, '\n', NULL, 1000, 1, 6, NULL, 1, '3.3', 0, 0, 0, 0, '500', 0),
(89, 452, 'Baja', 'Outlaw 33', 1998, 59900, 24, '2018-12-05 17:07:49', 657, '2018-12-05 18:36:16', 657, '\n', NULL, 1000, 1, 6, NULL, 1, '3.0', 0, 0, 0, 0, '500', 0),
(90, 446, 'Olympic', 'Sx 490', 2007, 35600, 27, '2018-12-05 17:08:33', 657, '2018-12-05 17:29:10', 657, '\n', NULL, 1000, 1, 6, NULL, 1, '4.0', 0, 0, 0, 0, '500', -1),
(91, 454, 'Yamaha', '232 Limited', 2017, 80380, 56, '2018-12-05 17:09:20', 657, '2019-01-29 20:32:02', 664, '\n', '[ [ 2200, 29333, 1, [ 0, 0, 0 ], 10, 2.200000047683716, 12, 0.449999988079071, 5, 190, 0.6000000238418579, 5, \"rwd\", \"petrol\", 0.05000000074505806, 0, false, 24, 1.799999952316284, 3, 0, 0.1000000014901161, 0.1000000014901161, 0, 0, 0.2000000029802322, 0.3300000131130219, 73000, 134218752, 0, \"long\", \"small\", 0 ] ]', 1000, 1, 6, NULL, 1, '4.0', 0, 0, 0, 0, '500', 0),
(92, 403, 'MAN', 'TGS', 2010, 27000, 55, '2018-12-20 17:11:57', 664, '2018-12-20 17:28:03', 664, '\n', NULL, 1000, 1, 5, NULL, 1, '6.0', 0, 0, 0, 2, '10000', 4),
(93, 515, 'DAF', 'CF', 2012, 25000, 45, '2018-12-20 17:14:22', 664, '2018-12-20 17:28:12', 664, '\n', NULL, 1000, 1, 5, NULL, 1, '6.5', 0, 0, 0, 2, '1000', 4),
(94, 456, 'Volkswagen ', 'LT 40', 2008, 23000, 42, '2018-12-20 17:16:42', 664, '2018-12-20 17:28:20', 664, '\n', NULL, 1000, 1, 5, NULL, 1, '4.5', 0, 0, 0, 2, '1000', 4),
(95, 578, 'Alpha', '3000 Flatbed', 2014, 26000, 44, '2018-12-20 17:20:09', 664, '2018-12-20 17:57:41', 664, '\n', '[ [ 5500, 33188, 2, [ 0, 0, -0.2000000029802322 ], 90, 0.6499999761581421, 0.800000011920929, 0.4000000059604645, 5, 110, 8, 20, \"rwd\", \"diesel\", 3.5, 0.4000000059604645, false, 30, 1.399999976158142, 0.05999999865889549, 0, 0.449999988079071, -0.25, 0.6000000238418579, 0, 0.449999988079071, 0.2000000029802322, 5000, 16392, 512, \"long\", \"small\", 2 ] ]', 1000, 1, 5, NULL, 1, '4.7', 0, 0, 0, 2, '1000', 5),
(96, 524, 'Ford', '9000', 2005, 20000, 37, '2018-12-20 17:22:23', 664, '2018-12-20 17:28:33', 664, '\n', NULL, 1000, 1, 5, NULL, 1, '4.5', 0, 0, 0, 2, '1000', 5),
(97, 403, 'Volkswagen ', 'LT  65', 2012, 28500, 51, '2018-12-20 17:34:39', 664, '2018-12-20 17:57:54', 664, '\n', '[ [ 3800, 19953, 5, [ 0, 0, -0.2000000029802322 ], 90, 0.949999988079071, 0.6499999761581421, 0.4000000059604645, 5, 120, 10, 30, \"rwd\", \"diesel\", 8, 0.300000011920929, false, 25, 1.600000023841858, 0.05999999865889549, 0, 0.4000000059604645, -0.2000000029802322, 0.5, 0, 0.6499999761581421, 0.25, 35000, 24576, 512, \"long\", \"small\", 2 ] ]', 1000, 1, 5, NULL, 1, '5.5', 0, 0, 0, 2, '1000', 8),
(98, 428, 'Iveco', 'Armor', 2014, 30000, 58, '2018-12-20 17:37:18', 664, '2018-12-20 17:58:08', 664, '\n', '[ [ 7000, 30917, 1.5, [ 0, 0, 0 ], 90, 0.5, 0.699999988079071, 0.4600000083446503, 5, 170, 6, 30, \"rwd\", \"diesel\", 8.399999618530273, 0.4000000059604645, false, 27, 1, 0.05999999865889549, 0, 0.3499999940395355, -0.1500000059604645, 0.5, 0, 0.2700000107288361, 0.3499999940395355, 40000, 16385, 4, \"small\", \"small\", 13 ] ]', 1000, 1, 5, NULL, 1, '6.0', 0, 0, 0, 2, '1000', 2),
(99, 455, 'Mercedes-Benz', 'Truck', 2008, 28000, 45, '2018-12-20 17:40:33', 664, '2018-12-20 17:58:34', 664, '\n', '[ [ 8500, 48804, 2.5, [ 0, 0, 0.300000011920929 ], 90, 0.699999988079071, 0.699999988079071, 0.4600000083446503, 5, 140, 10, 80, \"rwd\", \"diesel\", 10, 0.4000000059604645, false, 27, 1.200000047683716, 0.05000000074505806, 0, 0.4699999988079071, -0.1700000017881393, 0.5, 0, 0.6200000047683716, 0.4300000071525574, 10000, 2049, 0, \"long\", \"small\", 2 ] ]', 1000, 1, 5, NULL, 1, '4.2', 0, 0, 0, 2, '1000', 4),
(100, 440, 'Volkswagen', 'T2', 2000, 12000, 25, '2018-12-20 17:41:59', 664, '2018-12-20 17:58:49', 664, '\n', '[ [ 2000, 4902, 2.400000095367432, [ 0, 0.4000000059604645, -0.1000000014901161 ], 85, 0.6000000238418579, 0.75, 0.5199999809265137, 5, 160, 7.199999809265137, 15, \"fwd\", \"petrol\", 5.5, 0.4000000059604645, false, 30, 1.399999976158142, 0.05000000074505806, 0, 0.4300000071525574, -0.1099999994039536, 0.5, 0, 0.2000000029802322, 0.6000000238418579, 26000, 1, 0, \"long\", \"small\", 13 ] ]', 1000, 1, 5, NULL, 1, '2.5', 0, 0, 0, 2, '1000', 2),
(101, 413, 'Chevrolet', 'GMC', 1992, 13500, 25, '2018-12-28 23:16:16', 664, '2018-12-28 23:17:43', 664, '\n', '[ { \"1\": 2500, \"2\": 8667, \"3\": 2.700000047683716, \"4\": [ 0, 0, -0.25 ], \"5\": 80, \"6\": 0.550000011920929, \"7\": 0.8999999761581421, \"8\": 0.5, \"9\": 5, \"10\": 165, \"11\": 7, \"12\": 22, \"13\": \"rwd\", \"14\": \"diesel\", \"15\": 6, \"16\": 0.800000011920929, \"17\": false, \"18\": 30, \"19\": 2.599999904632568, \"20\": 0.07000000029802322, \"21\": 0, \"22\": 0.3499999940395355, \"23\": -0.1500000059604645, \"24\": 0.300000011920929, \"25\": 0, \"26\": 0.2000000029802322, \"27\": 0.5, \"28\": 20000, \"29\": 16385, \"30\": 1, \"31\": \"long\", \"33\": 13 } ]', 1000, 1, 5, NULL, 1, '5.5', 0, 0, 0, 1, '1000', 0),
(124, 518, 'Chevrolet', 'Camaro Z28', 1970, 1, 1, '2019-01-30 15:59:11', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 2, NULL, 1, '5.2', 0, 0, 0, 1, '0', 3),
(109, 541, 'Nissan', 'Skyline', 1970, 1, 10, '2019-01-27 17:26:32', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 1, NULL, 1, '2.0', 0, 0, 0, 1, '500', 3),
(116, 534, 'Chevrolet', 'El Camino', 1980, 1, 10, '2019-01-30 14:06:25', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 4, NULL, 1, '4.5', 0, 0, 0, 1, '500', 5),
(127, 410, 'Toyota', 'Corolla', 2006, 1, 1, '2019-01-30 16:27:25', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 4, NULL, 1, '1.6', 0, 0, 0, 2, '500', 1),
(112, 533, 'Mercedes-Benz', 'CLS320', 2002, 1, 10, '2019-01-30 13:29:42', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 2, NULL, 1, '3.2', 0, 0, 0, 2, '500', 6),
(113, 603, 'Lamborghini', 'Countach', 1990, 500000, 500, '2019-01-30 13:35:45', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 1, 1, 1, '5.4', 0, 1, 1, 1, '100', 3),
(114, 554, 'Ford', 'Raptor', 2012, 1, 10, '2019-01-30 13:44:14', 1, '2019-01-30 17:20:59', 1, '\n', NULL, 1000, 1, 5, NULL, 1, '6.2', 0, 0, 0, 1, '500', 4),
(117, 422, 'Chevrolet', 'S-10', 1988, 1, 1, '2019-01-30 14:11:44', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 4, NULL, 1, '6.2', 0, 0, 0, 1, '500', 5),
(118, 412, 'BMW', 'E9', 2001, 1, 1, '2019-01-30 14:15:27', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 2, NULL, 1, '3.0', 0, 0, 0, 1, '500', 3),
(119, 589, 'VAZ', '2108', 1998, 1, 1, '2019-01-30 14:21:46', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 4, NULL, 1, '1.5', 0, 0, 0, 1, '500', 1),
(120, 500, 'Chevrolet', 'Blazer K', 1952, 1, 1, '2019-01-30 14:40:05', 1, '2019-01-30 17:12:38', 1, '\n', NULL, 1000, 1, 2, NULL, 1, '5.2', 0, 0, 0, 1, '500', 4);
INSERT INTO `vehicles_shop` (`id`, `vehmtamodel`, `vehbrand`, `vehmodel`, `vehyear`, `vehprice`, `vehtax`, `createdate`, `createdby`, `updatedate`, `updatedby`, `notes`, `handling`, `duration`, `enabled`, `spawnto`, `doortype`, `stretilegal`, `enginecapacity`, `quatro`, `imobil`, `windowselectr`, `enginetype`, `stock`, `gearbox`) VALUES
(121, 559, 'Nissan', '240XS', 2001, 1, 1, '2019-01-30 15:15:35', 1, '2019-01-30 15:17:39', 1, '\n', NULL, 1000, 1, 2, NULL, 1, '2.0', 0, 0, 1, 1, '499', 3),
(122, 517, 'Toyota', 'Trueno', 1988, 1, 1, '2019-01-30 15:32:09', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 2, NULL, 1, '2.0', 0, 0, 0, 1, '500', 3),
(123, 536, 'Chevrolet', 'Corvette', 2003, 1, 1, '2019-01-30 15:37:24', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 1, NULL, 1, '3.6', 0, 0, 0, 1, '500', 3),
(125, 545, 'Aston', 'Martini DBS', 2000, 1, 1, '2019-01-30 16:03:26', 1, '2019-01-30 16:17:29', 1, '\n', NULL, 1000, 1, 1, 2, 1, '4.2', 0, 0, 0, 1, '500', 3),
(126, 434, 'Mercedes-Benz', 'GT-R', 2006, 1, 1, '2019-01-30 16:14:19', 1, '2019-01-30 16:17:07', 1, '\n', NULL, 1000, 1, 1, NULL, 1, '3.5', 0, 0, 0, 1, '500', 3),
(128, 560, 'Subaru', 'Impreza WRX', 2005, 1, 1, '2019-01-30 16:34:59', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 2, NULL, 1, '2.5', 0, 0, 0, 1, '500', -1),
(129, 575, 'Opel', 'Mantis B', 1981, 1, 1, '2019-01-30 16:43:03', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 4, NULL, 1, '2.0', 0, 0, 0, 0, '500', 3),
(130, 418, 'Chrysler', 'Voyager', 1998, 1, 1, '2019-01-30 16:46:16', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 4, NULL, 1, '3.6', 0, 0, 0, 1, '500', 7),
(131, 482, 'Ford', 'E250', 1993, 1, 1, '2019-01-30 16:51:44', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 4, NULL, 1, '6.2', 0, 0, 0, 1, '500', 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vehicle_engine`
--

CREATE TABLE `vehicle_engine` (
  `ID` int(11) NOT NULL,
  `CarModel` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Brand` char(30) COLLATE utf8_bin NOT NULL,
  `Model` char(30) COLLATE utf8_bin NOT NULL,
  `odometer` int(15) DEFAULT '0',
  `maxVelocity` float NOT NULL,
  `engineInertia` float NOT NULL,
  `engineAcceleration` float NOT NULL,
  `driveType` char(30) COLLATE utf8_bin NOT NULL,
  `Price` int(11) NOT NULL,
  `EngineCapacity` char(3) COLLATE utf8_bin NOT NULL,
  `EngineType` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vehicle_logs`
--

CREATE TABLE `vehicle_logs` (
  `log_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vehID` int(11) DEFAULT NULL,
  `action` text,
  `actor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all admin actions on vehicles - Monitored by Vehicle ';

--
-- Gegevens worden geëxporteerd voor tabel `vehicle_logs`
--

INSERT INTO `vehicle_logs` (`log_id`, `date`, `vehID`, `action`, `actor`) VALUES
(2292, '2019-01-06 15:28:00', 93, 'fixveh', 657),
(2293, '2019-01-06 15:33:29', 93, 'getveh', 657),
(2294, '2019-01-06 15:54:18', 79, 'getveh', 657),
(2295, '2019-01-06 16:07:52', 73, 'respawnveh', 657),
(2296, '2019-01-06 16:07:58', 7, 'respawnveh', 657),
(2297, '2019-01-06 16:08:03', 79, 'respawnveh', 657),
(2298, '2019-01-06 17:36:46', 93, 'respawnveh', 664),
(2299, '2019-01-06 18:27:13', -15, 'setcolor0', 664),
(2300, '2019-01-06 18:33:54', -15, 'fixveh', 664),
(2301, '2019-01-06 18:35:49', -16, 'fixveh', 657),
(2302, '2019-01-06 18:36:13', -16, 'fixveh', 657),
(2303, '2019-01-06 18:37:52', -16, 'fixveh', 657),
(2304, '2019-01-06 18:47:52', 93, 'getveh', 657),
(2305, '2019-01-06 18:48:18', 93, 'fixveh', 657),
(2306, '2019-01-06 18:48:48', 93, 'enterveh Kapracis', 657),
(2307, '2019-01-06 18:50:08', 93, 'fixveh', 657),
(2308, '2019-01-06 18:51:06', 93, 'fixveh', 657),
(2309, '2019-01-06 18:52:09', 32, 'fixveh', 662),
(2310, '2019-01-06 18:52:35', 32, 'fixveh', 662),
(2311, '2019-01-06 18:53:09', 93, 'fixveh', 657),
(2312, '2019-01-06 18:53:10', 32, 'respawnveh', 662),
(2313, '2019-01-06 18:54:31', 98, 'makeveh 2014 BMW F01 ($1 - priekÅ¡ Kapracis)', 0),
(2314, '2019-01-06 18:55:37', 93, 'fixveh', 657),
(2315, '2019-01-06 18:56:02', 93, 'fixveh', 657),
(2316, '2019-01-06 18:56:04', 21, 'fixveh', 662),
(2317, '2019-01-06 18:56:59', 21, 'fixveh', 662),
(2318, '2019-01-06 18:57:00', 98, 'fixveh', 662),
(2319, '2019-01-06 18:57:22', 98, 'delveh', 664),
(2320, '2019-01-06 18:58:33', 21, 'fixveh', 662),
(2321, '2019-01-06 19:07:11', 21, 'fixveh', 662),
(2322, '2019-01-06 19:07:23', -3, 'fixveh', 664),
(2323, '2019-01-06 19:08:28', 21, 'respawnveh', 662),
(2324, '2019-01-06 19:12:46', -5, 'fixveh', 662),
(2325, '2019-01-06 19:15:39', -5, 'fixveh', 662),
(2326, '2019-01-06 20:07:57', 93, 'fixveh', 657),
(2327, '2019-01-06 20:10:05', 93, 'fixveh', 657),
(2328, '2019-01-06 20:10:40', 93, 'fixveh', 657),
(2329, '2019-01-06 20:10:52', 93, 'fixveh', 657),
(2330, '2019-01-06 20:12:55', 93, 'fixveh', 657),
(2332, '2019-01-07 16:17:01', 93, 'fixveh', 657),
(2333, '2019-01-07 16:17:44', 93, 'fixveh', 657),
(2334, '2019-01-07 16:18:27', 93, 'fixveh', 657),
(2335, '2019-01-07 16:18:36', 93, 'fixveh', 657),
(2336, '2019-01-07 16:18:44', 93, 'fixveh', 657),
(2337, '2019-01-07 16:18:46', 93, 'fixveh', 657),
(2338, '2019-01-07 16:18:51', 93, 'fixveh', 657),
(2339, '2019-01-07 16:19:15', 93, 'fixveh', 657),
(2340, '2019-01-07 16:19:17', 93, 'fixveh', 657),
(2341, '2019-01-07 16:19:32', 93, 'fixveh', 657),
(2342, '2019-01-07 16:19:34', 93, 'fixveh', 657),
(2343, '2019-01-07 16:19:35', 93, 'fixveh', 657),
(2344, '2019-01-07 16:20:02', 93, 'fixveh', 657),
(2345, '2019-01-07 16:20:11', 93, 'fixveh', 657),
(2346, '2019-01-07 16:20:13', 93, 'fixveh', 657),
(2347, '2019-01-07 16:20:25', 93, 'fixveh', 657),
(2348, '2019-01-07 16:21:00', 93, 'fixveh', 657),
(2349, '2019-01-07 17:43:46', 93, 'fixveh', 657),
(2350, '2019-01-07 17:48:10', 93, 'fixveh', 657),
(2351, '2019-01-07 17:48:43', 93, 'fixveh', 657),
(2352, '2019-01-07 17:49:24', 93, 'fixveh', 657),
(2353, '2019-01-07 17:51:10', 93, 'fixveh', 657),
(2354, '2019-01-07 17:57:30', -7, 'blowveh', 657),
(2355, '2019-01-07 17:58:17', 93, 'gotoveh', 664),
(2356, '2019-01-07 17:59:28', 93, 'gotoveh', 657),
(2358, '2019-01-07 18:02:29', 93, 'fixveh', 657),
(2359, '2019-01-07 18:04:51', 93, 'unflip', 657),
(2360, '2019-01-07 18:04:52', 93, 'fixveh', 657),
(2361, '2019-01-07 18:05:02', 93, 'fixveh', 657),
(2362, '2019-01-07 18:06:31', 93, 'fixveh', 657),
(2363, '2019-01-07 18:07:27', 93, 'fixveh', 657),
(2364, '2019-01-07 18:09:46', 93, 'fixveh', 657),
(2365, '2019-01-07 18:10:14', 93, 'fixveh', 657),
(2366, '2019-01-07 18:10:40', 93, 'fixveh', 657),
(2367, '2019-01-07 18:11:46', 93, 'fixveh', 657),
(2368, '2019-01-07 18:14:32', 93, 'unflip', 657),
(2369, '2019-01-07 18:14:35', 93, 'fixveh', 657),
(2370, '2019-01-07 18:14:51', 93, 'fixveh', 657),
(2371, '2019-01-07 18:14:56', 93, 'fixveh', 657),
(2372, '2019-01-08 18:32:02', 93, 'fixveh', 657),
(2373, '2019-01-08 18:32:26', 93, 'fixveh', 657),
(2374, '2019-01-08 18:33:23', 93, 'fixveh', 657),
(2375, '2019-01-08 18:33:58', 93, 'fixveh', 657),
(2376, '2019-01-08 18:34:09', 93, 'fixveh', 657),
(2377, '2019-01-08 18:34:19', 93, 'fixveh', 657),
(2378, '2019-01-08 18:34:23', 93, 'unflip', 657),
(2379, '2019-01-08 18:34:24', 93, 'fixveh', 657),
(2380, '2019-01-08 18:35:55', 93, 'unflip', 657),
(2381, '2019-01-08 18:35:55', 93, 'fixveh', 657),
(2382, '2019-01-08 18:36:16', 93, 'fixveh', 657),
(2383, '2019-01-08 18:36:51', 93, 'fixveh', 657),
(2384, '2019-01-08 18:38:25', 93, 'fixveh', 657),
(2385, '2019-01-08 18:38:50', 93, 'fixveh', 657),
(2386, '2019-01-08 18:39:54', 93, 'fixveh', 657),
(2387, '2019-01-08 18:40:15', 93, 'fixveh', 657),
(2388, '2019-01-08 18:40:19', 93, 'fixveh', 657),
(2389, '2019-01-08 18:40:38', 93, 'fixveh', 657),
(2390, '2019-01-08 18:40:52', 93, 'fixveh', 657),
(2391, '2019-01-08 18:41:12', 93, 'fixveh', 657),
(2392, '2019-01-08 18:41:55', 93, 'fixveh', 657),
(2393, '2019-01-08 18:42:07', 93, 'fixveh', 657),
(2394, '2019-01-08 18:43:14', 93, 'fixveh', 657),
(2395, '2019-01-08 18:43:46', 93, 'fixveh', 657),
(2396, '2019-01-08 18:43:56', 93, 'fixveh', 657),
(2397, '2019-01-08 18:44:27', 93, 'fixveh', 657),
(2398, '2019-01-08 18:44:46', 93, 'fixveh', 657),
(2399, '2019-01-08 18:44:50', 93, 'fixveh', 657),
(2400, '2019-01-08 18:45:10', 93, 'fixveh', 657),
(2401, '2019-01-08 18:45:56', 93, 'fixveh', 657),
(2402, '2019-01-08 18:46:03', 93, 'fixveh', 657),
(2403, '2019-01-08 18:46:17', 93, 'fixveh', 657),
(2404, '2019-01-08 18:46:34', 93, 'fixveh', 657),
(2405, '2019-01-08 18:46:37', 93, 'fixveh', 657),
(2406, '2019-01-08 18:46:55', 93, 'fixveh', 657),
(2407, '2019-01-08 18:47:16', 93, 'fixveh', 657),
(2408, '2019-01-08 18:51:42', 93, 'fixveh', 657),
(2409, '2019-01-08 18:52:30', 93, 'fixveh', 657),
(2410, '2019-01-08 18:52:50', 93, 'fixveh', 657),
(2411, '2019-01-08 18:53:00', 93, 'unflip', 657),
(2412, '2019-01-08 18:53:00', 93, 'fixveh', 657),
(2413, '2019-01-08 18:53:51', 93, 'fixveh', 657),
(2414, '2019-01-08 18:54:16', 93, 'fixveh', 657),
(2415, '2019-01-08 18:54:43', 93, 'fixveh', 657),
(2416, '2019-01-08 18:54:54', 93, 'fixveh', 657),
(2417, '2019-01-08 18:55:04', 93, 'fixveh', 657),
(2418, '2019-01-08 18:55:56', 93, 'fixveh', 657),
(2419, '2019-01-08 18:56:07', 93, 'fixveh', 657),
(2420, '2019-01-08 18:56:27', 93, 'fixveh', 657),
(2421, '2019-01-08 18:56:31', 93, 'fixveh', 657),
(2422, '2019-01-08 18:56:50', 93, 'fixveh', 657),
(2423, '2019-01-08 18:58:30', 93, 'fixveh', 657),
(2424, '2019-01-08 18:58:44', 93, 'fixveh', 657),
(2425, '2019-01-08 18:58:58', 93, 'fixveh', 657),
(2426, '2019-01-08 18:59:02', 93, 'fixveh', 657),
(2427, '2019-01-08 19:00:33', 93, 'fixveh', 657),
(2428, '2019-01-08 19:00:54', 93, 'fixveh', 657),
(2429, '2019-01-08 19:01:34', 93, 'fixveh', 657),
(2430, '2019-01-08 19:01:51', 93, 'fixveh', 657),
(2431, '2019-01-08 19:02:07', 93, 'fixveh', 657),
(2432, '2019-01-08 19:02:17', 93, 'fixveh', 657),
(2433, '2019-01-09 16:44:36', 93, 'fixveh', 657),
(2434, '2019-01-09 16:45:03', 93, 'fixveh', 657),
(2435, '2019-01-09 16:45:24', 93, 'fixveh', 657),
(2436, '2019-01-09 16:45:58', 93, 'fixveh', 657),
(2437, '2019-01-09 18:09:53', 93, 'fixveh', 657),
(2438, '2019-01-09 18:42:03', 93, 'fixveh', 657),
(2439, '2019-01-09 18:43:33', 93, 'fixveh', 657),
(2440, '2019-01-09 18:44:28', 93, 'fixveh', 657),
(2441, '2019-01-09 18:46:35', 93, 'fixveh', 657),
(2442, '2019-01-09 19:09:18', 93, 'fixveh', 661),
(2443, '2019-01-09 19:34:22', 93, 'fixveh', 662),
(2444, '2019-01-09 19:34:57', 78, 'respawnveh', 666),
(2445, '2019-01-09 19:35:00', 79, 'respawnveh', 666),
(2446, '2019-01-09 19:38:22', -14, 'fixveh', 666),
(2447, '2019-01-09 19:44:43', 21, 'respawnveh', 666),
(2448, '2019-01-09 19:54:20', 79, 'gotoveh', 661),
(2449, '2019-01-09 20:05:35', 79, 'unflip', 661),
(2450, '2019-01-10 14:44:12', 93, 'getveh', 657),
(2451, '2019-01-10 14:44:38', 93, 'fixveh', 657),
(2452, '2019-01-10 14:45:52', 93, 'fixveh', 657),
(2453, '2019-01-10 14:55:43', 93, 'gotoveh', 657),
(2454, '2019-01-10 14:58:40', 93, 'gotoveh', 657),
(2455, '2019-01-10 14:59:00', 93, 'gotoveh', 657),
(2456, '2019-01-10 14:59:18', 93, 'fixveh', 657),
(2457, '2019-01-10 14:59:29', 93, 'fixveh', 657),
(2458, '2019-01-10 15:02:40', 93, 'gotoveh', 657),
(2459, '2019-01-10 15:04:52', 93, 'gotoveh', 657),
(2460, '2019-01-10 15:20:55', 93, 'gotoveh', 657),
(2461, '2019-01-10 15:22:53', 93, 'gotoveh', 657),
(2462, '2019-01-10 15:23:21', 93, 'fixveh', 657),
(2463, '2019-01-10 15:23:45', 93, 'fixveh', 657),
(2464, '2019-01-10 15:24:45', 93, 'gotoveh', 657),
(2465, '2019-01-10 20:17:51', 79, 'respawnveh', 664),
(2466, '2019-01-10 20:41:12', 93, 'fixveh', 657),
(2467, '2019-01-10 20:44:12', 93, 'fixveh', 657),
(2468, '2019-01-10 20:54:29', 93, 'fixveh', 657),
(2469, '2019-01-10 20:59:51', 93, 'enterveh Matthew Hudson', 657),
(2470, '2019-01-10 21:04:50', 93, 'fixveh', 657),
(2471, '2019-01-10 21:05:02', 93, 'fixveh', 657),
(2472, '2019-01-10 21:05:21', 93, 'fixveh', 657),
(2473, '2019-01-10 21:16:15', 93, 'fixveh', 657),
(2474, '2019-01-10 21:16:16', 93, 'fixveh', 657),
(2475, '2019-01-10 21:17:33', 93, 'fixveh', 657),
(2476, '2019-01-10 21:19:28', 93, 'fixveh', 657),
(2477, '2019-01-10 21:19:59', 93, 'fixveh', 657),
(2478, '2019-01-10 21:20:17', 93, 'fixveh', 657),
(2479, '2019-01-10 21:33:35', 93, 'fixveh', 657),
(2480, '2019-01-10 21:37:02', 93, 'fixveh', 657),
(2481, '2019-01-10 21:42:46', 93, 'fixveh', 657),
(2482, '2019-01-11 06:47:09', 93, 'fixveh', 657),
(2483, '2019-01-11 16:07:58', 93, 'fixveh', 657),
(2484, '2019-01-11 16:08:03', 93, 'fixveh', 657),
(2485, '2019-01-11 16:08:41', 93, 'gotoveh', 657),
(2486, '2019-01-11 16:14:56', 93, 'gotoveh', 657),
(2487, '2019-01-11 16:21:25', 93, 'gotoveh', 657),
(2488, '2019-01-11 16:25:06', 93, 'fixveh', 657),
(2489, '2019-01-11 16:28:15', 93, 'fixveh', 657),
(2490, '2019-01-11 16:28:40', 93, 'fixveh', 657),
(2491, '2019-01-11 16:28:41', 93, 'fixveh', 657),
(2492, '2019-01-11 16:29:18', 93, 'fixveh', 657),
(2493, '2019-01-11 16:29:29', 93, 'fixveh', 657),
(2494, '2019-01-11 16:37:18', 93, 'fixveh', 657),
(2495, '2019-01-11 16:38:31', 93, 'fixveh', 657),
(2496, '2019-01-11 16:38:35', 93, 'fixveh', 657),
(2497, '2019-01-11 16:38:49', 93, 'fixveh', 657),
(2498, '2019-01-11 16:38:53', 93, 'fixveh', 657),
(2499, '2019-01-11 16:38:58', 93, 'fixveh', 657),
(2500, '2019-01-11 16:39:00', 93, 'fixveh', 657),
(2501, '2019-01-11 16:39:02', 93, 'fixveh', 657),
(2502, '2019-01-11 16:39:05', 93, 'fixveh', 657),
(2503, '2019-01-11 16:39:30', 93, 'fixveh', 657),
(2504, '2019-01-11 16:40:02', 93, 'fixveh', 657),
(2505, '2019-01-11 16:40:48', 93, 'fixveh', 657),
(2506, '2019-01-11 16:40:53', 93, 'fixveh', 657),
(2507, '2019-01-11 16:42:15', 99, 'makeveh 2003 BMW E46 ($1 - priekÅ¡ Kapracis)', 0),
(2508, '2019-01-11 16:45:11', 93, 'fixveh', 657),
(2509, '2019-01-11 16:45:25', 93, 'fixveh', 657),
(2510, '2019-01-11 16:45:32', 93, 'fixveh', 657),
(2511, '2019-01-11 16:45:55', 93, 'fixveh', 657),
(2512, '2019-01-11 16:46:38', 99, 'delveh', 664),
(2513, '2019-01-11 16:47:10', 93, 'fixveh', 657),
(2514, '2019-01-11 16:47:19', 93, 'fixveh', 657),
(2515, '2019-01-11 16:48:00', 93, 'enterveh Tom Blackwood', 657),
(2516, '2019-01-11 16:48:06', 93, 'fixveh', 657),
(2517, '2019-01-11 16:48:49', 19, 'delveh', 664),
(2518, '2019-01-11 16:49:24', 19, 'restoreveh', 657),
(2519, '2019-01-11 16:49:37', 93, 'fixveh', 657),
(2520, '2019-01-11 19:20:01', 93, 'unflip', 657),
(2521, '2019-01-11 19:20:03', 93, 'fixveh', 657),
(2522, '2019-01-11 19:20:09', 93, 'fixveh', 657),
(2523, '2019-01-11 19:29:08', 93, 'fixveh', 657),
(2524, '2019-01-11 19:29:50', 93, 'fixveh', 657),
(2525, '2019-01-11 19:51:27', 32, 'fixveh', 657),
(2526, '2019-01-11 19:57:36', 93, 'fixveh', 657),
(2527, '2019-01-13 19:22:05', 100, 'delveh', 661),
(2528, '2019-01-13 19:22:15', 101, 'delveh', 661),
(2529, '2019-01-13 19:22:45', 102, 'park', 661),
(2530, '2019-01-13 19:23:07', 103, 'park', 661),
(2531, '2019-01-13 19:23:34', 104, 'park', 661),
(2532, '2019-01-13 19:23:57', 105, 'park', 661),
(2533, '2019-01-13 19:24:08', 106, 'makecivveh Burrito (job 1)', 661),
(2534, '2019-01-13 19:24:38', 106, 'park', 661),
(2535, '2019-01-13 19:24:43', 107, 'makecivveh Burrito (job 1)', 661),
(2536, '2019-01-13 19:25:06', 107, 'park', 661),
(2537, '2019-01-13 19:25:11', 108, 'makecivveh Burrito (job 1)', 661),
(2538, '2019-01-13 19:25:24', 108, 'park', 661),
(2539, '2019-01-13 19:25:28', 109, 'makecivveh Burrito (job 1)', 661),
(2540, '2019-01-13 19:25:46', 109, 'park', 661),
(2541, '2019-01-13 19:25:59', 110, 'makecivveh Boxville (job 1)', 661),
(2542, '2019-01-13 19:26:19', 110, 'park', 661),
(2543, '2019-01-13 19:26:24', 111, 'makecivveh Boxville (job 1)', 661),
(2544, '2019-01-13 19:26:40', 111, 'park', 661),
(2545, '2019-01-13 19:26:47', 112, 'makecivveh Boxville (job 1)', 661),
(2546, '2019-01-13 19:27:02', 112, 'park', 661),
(2547, '2019-01-13 19:27:15', 113, 'makecivveh DFT-30 (job 1)', 661),
(2548, '2019-01-13 19:27:39', 113, 'park', 661),
(2549, '2019-01-13 19:27:43', 114, 'makecivveh DFT-30 (job 1)', 661),
(2550, '2019-01-13 19:27:58', 114, 'park', 661),
(2551, '2019-01-13 19:28:09', 115, 'makecivveh Flatbed (job 1)', 661),
(2552, '2019-01-13 19:28:28', 115, 'park', 661),
(2553, '2019-01-13 19:28:32', 116, 'makecivveh Flatbed (job 1)', 661),
(2554, '2019-01-13 19:28:45', 116, 'park', 661),
(2555, '2019-01-23 15:04:31', 21, 'fixveh', 657),
(2556, '2019-01-23 15:04:51', 21, 'fixveh', 657),
(2557, '2019-01-23 15:05:05', 21, 'fixveh', 657),
(2558, '2019-01-23 15:05:09', 21, 'fixveh', 657),
(2559, '2019-01-23 15:05:23', 44, 'fixveh', 657),
(2560, '2019-01-23 15:06:00', 44, 'fixveh', 657),
(2561, '2019-01-23 15:07:20', 44, 'fixveh', 657),
(2562, '2019-01-23 15:07:39', 44, 'fixveh', 657),
(2563, '2019-01-23 15:07:51', 44, 'fixveh', 657),
(2564, '2019-01-23 15:08:04', 44, 'fixveh', 657),
(2565, '2019-01-23 15:11:01', 44, 'fixveh', 657),
(2567, '2019-01-23 15:13:55', 21, 'fixveh', 657),
(2568, '2019-01-23 15:14:52', 32, 'getcar', 662),
(2569, '2019-01-23 15:15:02', 21, 'fixveh', 657),
(2570, '2019-01-23 15:15:34', 21, 'fixveh', 657),
(2571, '2019-01-23 15:15:59', 32, 'fixveh', 662),
(2572, '2019-01-23 15:18:06', 21, 'fixveh', 657),
(2573, '2019-01-23 15:18:20', 21, 'fixveh', 657),
(2574, '2019-01-23 15:18:44', 21, 'fixveh', 657),
(2575, '2019-01-23 15:59:15', 19, 'respawnveh', 662),
(2578, '2019-01-27 09:49:30', 21, 'fixveh', 657),
(2579, '2019-01-27 09:49:33', 21, 'unflip', 657),
(2580, '2019-01-27 09:49:51', 21, 'fixveh', 657),
(2581, '2019-01-27 09:50:35', 21, 'fixveh', 657),
(2582, '2019-01-27 09:50:43', 21, 'fixveh', 657),
(2598, '2019-01-27 16:07:48', 117, 'nopirkts autoveikalÄ.', 657),
(2599, '2019-01-27 16:08:03', 117, 'fixveh', 657),
(2600, '2019-01-27 16:08:29', 117, 'fixveh', 657),
(2601, '2019-01-27 16:10:16', 117, 'fixveh', 657),
(2602, '2019-01-27 16:10:31', 117, 'fixveh', 657),
(2603, '2019-01-27 16:10:45', 117, 'fixveh', 657),
(2604, '2019-01-27 16:11:00', 117, 'fixveh', 657),
(2605, '2019-01-27 16:29:32', -2, 'setvehtint on', 1),
(2606, '2019-01-27 16:29:40', -2, 'setvehtint off', 1),
(2607, '2019-01-27 16:31:21', -2, 'fixveh', 1),
(2608, '2019-01-27 16:31:24', -2, 'setcolor4', 1),
(2609, '2019-01-27 16:31:27', -2, 'setcolor5', 1),
(2610, '2019-01-27 16:31:31', -2, 'setcolor3', 1),
(2611, '2019-01-27 16:31:34', -2, 'setcolor2', 1),
(2612, '2019-01-27 16:32:01', 117, 'delveh', 657),
(2613, '2019-01-27 16:38:58', -3, 'setvehtint on', 1),
(2614, '2019-01-27 16:39:04', -3, 'setvehtint off', 1),
(2615, '2019-01-27 16:39:11', -3, 'setcolor0', 1),
(2616, '2019-01-27 16:39:16', -3, 'setcolor1', 1),
(2617, '2019-01-27 16:47:46', -4, 'setvehtint on', 1),
(2618, '2019-01-27 16:48:11', -4, 'setvehtint off', 1),
(2619, '2019-01-27 16:54:59', -7, 'setvehtint on', 1),
(2620, '2019-01-27 17:09:34', -2, 'setcolor6', 657),
(2621, '2019-01-27 17:15:04', -1, 'setcolor0', 1),
(2622, '2019-01-27 17:15:14', -1, 'setvehtint on', 1),
(2623, '2019-01-27 17:15:21', -1, 'setcolor0', 1),
(2624, '2019-01-27 17:15:26', -1, 'setcolor1', 1),
(2625, '2019-01-27 17:27:14', -1, 'setcolor0', 1),
(2626, '2019-01-27 17:27:19', -1, 'setvehtint on', 1),
(2627, '2019-01-27 17:27:24', -1, 'setcolor4', 1),
(2628, '2019-01-27 17:40:33', 32, 'getcar', 662),
(2629, '2019-01-27 17:41:29', 32, 'respawnveh', 662),
(2630, '2019-01-27 17:41:29', 32, 'respawnveh', 1),
(2631, '2019-01-27 17:52:52', 73, 'enterveh Tomy Melty', 657),
(2632, '2019-01-27 17:57:28', 73, 'enterveh Tomy Melty', 657),
(2633, '2019-01-27 17:58:09', 73, 'enterveh Tomy Melty', 657),
(2636, '2019-01-27 18:23:31', 73, 'enterveh Tomy Melty', 657),
(2638, '2019-01-27 18:30:27', 119, 'nopirkts autoveikalÄ.', 661),
(2639, '2019-01-27 18:30:33', 120, 'nopirkts autoveikalÄ.', 661),
(2642, '2019-01-27 18:39:00', 73, 'fixveh', 657),
(2643, '2019-01-27 18:40:32', 73, 'fixveh', 657),
(2644, '2019-01-27 18:44:47', 73, 'gotoveh', 657),
(2652, '2019-01-27 18:49:26', 73, 'fixveh', 657),
(2653, '2019-01-27 18:53:05', 73, 'fixveh', 657),
(2654, '2019-01-27 18:55:31', 122, 'nopirkts autoveikalÄ.', 661),
(2655, '2019-01-27 18:55:35', 74, 'fixveh', 657),
(2656, '2019-01-27 18:55:57', 122, 'delveh', 661),
(2657, '2019-01-27 18:56:00', 119, 'delveh', 661),
(2658, '2019-01-27 18:56:04', 120, 'delveh', 661),
(2660, '2019-01-27 18:56:11', 74, 'fixveh', 657),
(2671, '2019-01-27 19:12:22', 21, 'fixveh', 657),
(2672, '2019-01-27 19:13:50', 121, 'nopirkts autoveikalÄ.', 657),
(2673, '2019-01-27 19:15:13', 121, 'delveh', 657),
(2674, '2019-01-27 19:46:37', 123, 'makecivveh Cabbie (job 2)', 661),
(2675, '2019-01-27 19:46:43', 123, 'delveh', 661),
(2676, '2019-01-27 19:46:48', 124, 'makecivveh Taxi (job 2)', 661),
(2677, '2019-01-27 19:46:51', 124, 'delveh', 661),
(2678, '2019-01-29 20:15:23', 21, 'respawnveh', 662),
(2679, '2019-01-29 20:16:31', -3, 'fixveh', 657),
(2680, '2019-01-29 20:21:52', -3, 'fixveh', 657),
(2681, '2019-01-29 20:28:01', -3, 'setcolor1', 657),
(2682, '2019-01-29 20:33:29', 21, 'fixveh', 662),
(2683, '2019-01-29 20:38:22', 21, 'fixveh', 662),
(2684, '2019-01-29 20:38:44', 21, 'respawnveh', 662),
(2685, '2019-01-30 13:30:35', -4, 'setcolor1', 1),
(2686, '2019-01-30 13:31:10', -4, 'setcolor4', 1),
(2687, '2019-01-30 13:31:15', -4, 'setcolor7', 1),
(2688, '2019-01-30 13:37:29', -7, 'setcolor3', 1),
(2689, '2019-01-30 14:08:26', -1, 'setcolor0', 1),
(2693, '2019-01-30 15:38:22', -1, 'setvehtint on', 1),
(2694, '2019-01-30 15:38:33', -1, 'setcolor0', 1),
(2695, '2019-01-30 15:45:36', -12, 'setcolor0 1', 1),
(2696, '2019-01-30 15:45:41', -12, 'setcolor1 0', 1),
(2697, '2019-01-30 16:35:39', -22, 'setvehtint on', 1),
(2698, '2019-01-30 16:35:46', -22, 'setvehtint off', 1),
(2699, '2019-01-30 16:35:51', -22, 'setcolor1', 1),
(2702, '2019-01-30 17:33:52', -2, 'fixveh', 657),
(2703, '2019-01-30 17:44:40', 79, 'getveh', 657),
(2704, '2019-01-30 17:45:08', 1, 'getveh', 657),
(2705, '2019-01-30 17:47:39', 1, 'respawnveh', 1),
(2709, '2019-02-01 14:57:14', -2, 'fixveh', 657),
(2710, '2019-02-01 14:57:43', -2, 'fixveh', 657),
(2711, '2019-02-01 14:58:02', -2, 'fixveh', 657),
(2712, '2019-02-01 14:58:29', -2, 'fixveh', 657),
(2715, '2019-02-02 15:41:39', 79, 'getveh', 1),
(2716, '2019-02-02 15:41:47', 79, 'respawnveh', 1),
(2717, '2019-02-02 18:31:31', -9, 'fixveh', 1),
(2718, '2019-02-02 18:51:30', 97, 'makeveh 2012 Lexus LFA ($0 - priekÅ¡ Matthew_Hudson)', 0),
(2719, '2019-02-02 18:52:09', 97, 'fuelveh', 661),
(2726, '2019-02-04 20:04:37', 118, 'restoreveh', 1),
(2727, '2019-02-04 20:05:29', 20, 'gotoveh', 1),
(2728, '2019-02-04 20:08:33', 31, 'gotoveh', 1),
(2729, '2019-02-04 20:09:06', 106, 'gotoveh', 1),
(2730, '2019-02-04 21:04:29', 19, 'fixveh', 662),
(2731, '2019-02-04 21:05:41', 19, 'fixveh', 662),
(2732, '2019-02-04 21:16:28', 19, 'fixveh', 662),
(2733, '2019-02-09 16:26:52', 19, 'fixveh', 657),
(2734, '2019-02-09 16:27:20', 19, 'fixveh', 657),
(2735, '2019-02-09 16:27:42', 19, 'fixveh', 657),
(2736, '2019-02-09 16:28:08', 19, 'fixveh', 657),
(2737, '2019-02-09 16:29:54', 19, 'fixveh', 657),
(2738, '2019-02-09 16:31:56', 19, 'fixveh', 657),
(2739, '2019-02-09 16:32:09', 19, 'fixveh', 657),
(2740, '2019-02-09 16:34:23', 19, 'fixveh', 657),
(2741, '2019-02-10 10:12:16', 19, 'fixveh', 657),
(2742, '2019-02-10 10:12:23', 19, 'fixveh', 657),
(2743, '2019-02-10 10:18:15', 19, 'fixveh', 657),
(2744, '2019-02-10 10:45:45', -1, 'fixveh', 657),
(2745, '2019-02-10 10:45:46', -1, 'fixveh', 657),
(2746, '2019-02-10 10:45:48', -1, 'fixveh', 657),
(2747, '2019-02-10 10:47:02', -1, 'fixveh', 657),
(2748, '2019-02-10 10:47:08', -1, 'setcolor0', 657),
(2749, '2019-02-10 10:47:15', -1, 'setvehtint on', 657),
(2750, '2019-02-10 10:47:26', -1, 'setvehtint off', 657),
(2751, '2019-02-10 10:47:39', -1, 'setvehtint on', 657),
(2752, '2019-02-10 10:47:44', -1, 'setvehtint off', 657),
(2753, '2019-02-10 10:48:28', -1, 'fixveh', 657),
(2754, '2019-02-10 10:53:04', -1, 'fixveh', 657),
(2755, '2019-02-10 10:53:45', -1, 'unflip', 657),
(2756, '2019-02-10 10:53:45', -1, 'fixveh', 657),
(2757, '2019-02-10 10:55:24', -1, 'unflip', 657),
(2758, '2019-02-10 10:55:25', -1, 'fixveh', 657),
(2759, '2019-02-10 10:55:29', -1, 'fixveh', 657),
(2760, '2019-02-10 10:56:48', -1, 'fixveh', 657),
(2761, '2019-02-10 10:57:07', -1, 'fixveh', 657),
(2762, '2019-02-10 10:58:25', -1, 'fixveh', 657),
(2763, '2019-02-10 10:58:42', -1, 'fixveh', 657),
(2764, '2019-02-10 11:00:17', -1, 'fixveh', 657),
(2765, '2019-02-10 11:01:25', -1, 'fixveh', 657),
(2766, '2019-02-10 11:01:33', -1, 'fixveh', 657),
(2767, '2019-02-10 11:03:49', -1, 'fixveh', 657),
(2768, '2019-02-10 11:03:55', -1, 'fixveh', 657),
(2769, '2019-02-10 11:04:31', -1, 'fixveh', 657),
(2770, '2019-02-10 11:05:34', -1, 'fixveh', 657),
(2771, '2019-02-10 11:05:37', -1, 'fixveh', 657),
(2772, '2019-02-10 11:05:53', -1, 'fixveh', 657),
(2773, '2019-02-10 11:09:18', -1, 'fixveh', 657),
(2774, '2019-02-10 11:09:23', -1, 'fixveh', 657),
(2775, '2019-02-10 11:11:11', -1, 'fixveh', 657),
(2776, '2019-02-10 11:11:24', -1, 'fixveh', 657),
(2777, '2019-02-10 11:12:14', -1, 'fixveh', 657),
(2778, '2019-02-10 11:12:22', -1, 'fixveh', 657),
(2779, '2019-02-10 11:12:57', -1, 'fixveh', 657),
(2780, '2019-02-10 11:13:57', -1, 'fixveh', 657),
(2781, '2019-02-10 11:14:30', -1, 'fixveh', 657),
(2782, '2019-02-10 11:14:38', -1, 'fixveh', 657),
(2783, '2019-02-10 11:14:44', -1, 'fixveh', 657),
(2784, '2019-02-10 11:18:45', -1, 'fixveh', 657),
(2785, '2019-02-10 11:19:10', -1, 'fixveh', 657),
(2786, '2019-02-10 11:19:29', -1, 'unflip', 657),
(2787, '2019-02-10 11:19:30', -1, 'fixveh', 657),
(2788, '2019-02-10 11:19:32', -1, 'fixveh', 657),
(2789, '2019-02-10 11:26:18', -1, 'fixveh', 657),
(2790, '2019-02-10 11:26:36', -1, 'fixveh', 657),
(2791, '2019-02-10 11:27:20', -1, 'fixveh', 657),
(2792, '2019-02-10 21:07:17', -1, 'fixveh', 657),
(2793, '2019-02-10 21:09:35', -1, 'fixveh', 657),
(2794, '2019-02-10 21:11:30', -1, 'fixveh', 657),
(2795, '2019-02-10 21:11:54', -1, 'fixveh', 657),
(2796, '2019-02-10 21:23:10', -1, 'fixveh', 657),
(2797, '2019-02-10 21:25:53', -1, 'fixveh', 657),
(2798, '2019-02-10 21:25:57', -1, 'fixveh', 657),
(2799, '2019-02-10 21:26:50', -1, 'fixveh', 657),
(2800, '2019-02-10 21:26:56', -1, 'fixveh', 657),
(2801, '2019-02-10 21:58:40', 97, 'fixveh', 657),
(2802, '2019-02-11 12:48:02', 97, 'fixveh', 657),
(2803, '2019-02-11 12:48:04', 97, 'fixveh', 657),
(2804, '2019-02-11 12:48:37', 97, 'fixveh', 657),
(2805, '2019-02-11 12:50:53', 97, 'fixveh', 657),
(2806, '2019-02-11 12:51:13', 97, 'fixveh', 657),
(2807, '2019-02-11 12:52:29', 97, 'fixveh', 657),
(2808, '2019-02-11 12:53:09', 97, 'fixveh', 657),
(2809, '2019-02-11 12:53:19', 97, 'fixveh', 657),
(2810, '2019-02-11 12:54:27', 97, 'fixveh', 657),
(2811, '2019-02-11 12:55:53', 97, 'fixveh', 657),
(2812, '2019-02-11 13:07:17', 97, 'fixveh', 657),
(2813, '2019-02-11 13:07:21', 97, 'fixveh', 657),
(2814, '2019-02-11 13:07:22', 97, 'fixveh', 657),
(2815, '2019-02-11 13:13:29', 97, 'fixveh', 657),
(2816, '2019-02-11 13:15:08', 97, 'fixveh', 657),
(2817, '2019-02-11 13:15:28', 97, 'fixveh', 657),
(2818, '2019-02-11 16:49:19', 97, 'fixveh', 657),
(2819, '2019-02-11 17:05:01', 97, 'fixveh', 657),
(2820, '2019-02-11 17:05:35', 97, 'fixveh', 657),
(2821, '2019-02-11 17:07:19', 97, 'fixveh', 657),
(2822, '2019-02-11 17:10:58', 97, 'fixveh', 657),
(2823, '2019-02-11 17:12:04', 97, 'fixveh', 657),
(2824, '2019-02-11 17:12:57', 97, 'fixveh', 657),
(2825, '2019-02-11 17:14:33', 97, 'fixveh', 657),
(2826, '2019-02-11 17:14:35', 97, 'fixveh', 657),
(2827, '2019-02-11 17:19:37', 97, 'fixveh', 657),
(2828, '2019-02-11 17:29:12', 97, 'fixveh', 657),
(2829, '2019-02-11 17:29:14', 97, 'fixveh', 657),
(2830, '2019-02-11 17:29:38', 97, 'fixveh', 657),
(2831, '2019-02-11 17:29:48', 97, 'setcolor1', 657),
(2832, '2019-02-11 17:30:47', 97, 'fixveh', 657),
(2833, '2019-02-11 17:34:49', 97, 'fixveh', 657),
(2834, '2019-02-11 17:34:57', 97, 'fixveh', 657),
(2835, '2019-02-11 17:36:52', 97, 'fixveh', 657),
(2836, '2019-02-11 17:37:03', 97, 'fixveh', 657),
(2837, '2019-02-11 17:43:45', 97, 'fixveh', 657),
(2838, '2019-02-11 17:46:36', -4, 'setvehtint on', 657),
(2839, '2019-02-11 17:46:43', -4, 'setcolor1', 657),
(2840, '2019-02-11 17:49:48', -4, 'setcolor0', 657),
(2841, '2019-02-11 17:50:25', -4, 'fixveh', 657),
(2842, '2019-02-11 17:55:38', -4, 'fixveh', 657),
(2843, '2019-02-11 17:56:36', -4, 'fixveh', 657),
(2844, '2019-02-11 17:56:38', -4, 'unflip', 657),
(2845, '2019-02-11 18:04:46', -4, 'fixveh', 657),
(2846, '2019-02-15 08:58:25', 97, 'getveh', 657),
(2847, '2019-02-15 08:59:46', 97, 'fixveh', 657),
(2848, '2019-02-15 09:03:22', 97, 'fixveh', 657),
(2849, '2019-02-15 09:03:35', 97, 'fixveh', 657),
(2850, '2019-02-16 08:25:06', 97, 'fixveh', 657),
(2851, '2019-02-16 08:25:10', 97, 'fixveh', 657),
(2852, '2019-02-16 08:25:33', 97, 'fixveh', 657),
(2853, '2019-02-16 08:25:49', 97, 'fixveh', 657),
(2854, '2019-02-16 08:27:08', 97, 'fixveh', 657),
(2855, '2019-02-16 08:28:02', 97, 'fixveh', 657),
(2856, '2019-02-16 08:35:00', 97, 'fixveh', 657),
(2857, '2019-02-16 08:35:13', 97, 'fixveh', 657),
(2858, '2019-02-16 08:35:29', 97, 'fixveh', 657),
(2859, '2019-02-16 08:35:44', 97, 'fixveh', 657),
(2860, '2019-02-16 08:36:52', 97, 'fixveh', 657),
(2861, '2019-02-16 08:37:18', 97, 'fixveh', 657),
(2862, '2019-02-16 08:37:25', 97, 'fixveh', 657),
(2863, '2019-02-16 13:07:54', 97, 'fixveh', 657),
(2864, '2019-02-16 13:08:05', 97, 'fixveh', 657),
(2865, '2019-02-16 13:08:29', 97, 'fixveh', 657),
(2866, '2019-02-16 13:08:38', 97, 'fixveh', 657),
(2867, '2019-02-16 13:09:24', 97, 'fixveh', 657),
(2868, '2019-02-16 13:09:36', 97, 'fixveh', 657),
(2869, '2019-02-17 10:29:55', 97, 'fixveh', 657),
(2870, '2019-02-17 10:32:21', 97, 'fixveh', 657),
(2871, '2019-02-17 10:33:33', 97, 'fixveh', 657),
(2872, '2019-02-17 11:26:59', 97, 'getveh', 657),
(2873, '2019-02-17 11:31:03', 97, 'fixveh', 657),
(2874, '2019-02-17 11:31:38', 97, 'fixveh', 657),
(2875, '2019-02-17 11:32:03', 97, 'fixveh', 657),
(2876, '2019-02-17 12:21:32', 97, 'fixveh', 657),
(2877, '2019-02-17 12:21:48', 97, 'fixveh', 657),
(2878, '2019-02-17 12:22:16', 97, 'fixveh', 657),
(2879, '2019-02-17 12:24:28', 97, 'fixveh', 657),
(2880, '2019-02-17 12:24:38', 97, 'fixveh', 657),
(2881, '2019-02-17 12:24:47', 97, 'fixveh', 657),
(2882, '2019-02-17 12:25:09', 97, 'fixveh', 657),
(2883, '2019-02-17 12:25:51', 97, 'fixveh', 657),
(2884, '2019-02-17 12:26:01', 97, 'fixveh', 657),
(2885, '2019-02-17 12:26:25', 97, 'fixveh', 657),
(2886, '2019-02-17 12:26:28', 97, 'unflip', 657),
(2887, '2019-02-17 12:26:28', 97, 'fixveh', 657),
(2888, '2019-02-17 12:26:30', 97, 'fixveh', 657),
(2889, '2019-02-17 12:31:49', 97, 'fixveh', 657),
(2890, '2019-02-17 12:47:19', 42, 'fixveh', 657),
(2891, '2019-02-17 13:01:54', 42, 'fixveh', 657),
(2892, '2019-02-17 13:02:28', 42, 'fixveh', 657),
(2893, '2019-02-17 13:02:45', 42, 'fixveh', 657),
(2894, '2019-02-17 13:11:08', 42, 'fixveh', 657),
(2895, '2019-02-17 13:11:15', 42, 'fixveh', 657),
(2896, '2019-02-17 13:16:46', 42, 'fixveh', 657),
(2897, '2019-02-17 13:36:17', 42, 'fixveh', 657),
(2898, '2019-02-17 13:40:50', 97, 'fuelveh', 661),
(2899, '2019-02-17 13:40:52', 97, 'fuelveh', 661),
(2900, '2019-02-17 13:49:37', 97, 'getveh', 657),
(2901, '2019-02-17 13:51:13', 97, 'fixveh', 657),
(2902, '2019-02-17 14:06:49', 97, 'fixveh', 657),
(2903, '2019-02-17 14:11:18', 97, 'fixveh', 657),
(2904, '2019-02-17 14:11:24', 97, 'fixveh', 657),
(2905, '2019-02-18 15:30:46', 97, 'getveh', 657),
(2906, '2019-02-18 15:30:47', 97, 'fixveh', 657),
(2907, '2019-02-18 15:31:49', 97, 'fixveh', 657),
(2908, '2019-02-18 15:32:21', 97, 'fixveh', 657),
(2909, '2019-02-18 15:35:23', 44, 'fixveh', 657),
(2910, '2019-02-18 15:50:38', 44, 'fixveh', 657),
(2911, '2019-02-18 15:50:57', 44, 'fixveh', 657),
(2912, '2019-02-18 15:53:40', 97, 'fixveh', 657),
(2913, '2019-02-18 16:00:51', 39, 'fixveh', 657),
(2914, '2019-02-18 16:10:10', 97, 'fixveh', 657),
(2915, '2019-02-18 16:11:26', 97, 'fixveh', 657),
(2916, '2019-02-18 16:15:08', 97, 'fixveh', 657),
(2917, '2019-02-18 16:16:24', 97, 'fixveh', 657),
(2918, '2019-02-18 16:20:03', 102, 'fixveh', 657),
(2919, '2019-02-18 16:20:50', 97, 'fixveh', 657),
(2920, '2019-02-18 16:21:07', 97, 'fixveh', 657),
(2921, '2019-02-18 16:21:42', 118, 'nopirkts autoveikalÄ.', 657),
(2922, '2019-02-18 16:22:05', 118, 'fixveh', 657),
(2923, '2019-02-18 16:22:49', 118, 'setcolor0', 657),
(2924, '2019-02-18 16:22:53', 118, 'setvehtint on', 657),
(2925, '2019-02-18 16:23:21', 118, 'delveh', 657),
(2926, '2019-02-18 16:23:26', 97, 'fixveh', 657),
(2927, '2019-02-18 16:24:41', 125, 'makeveh 1990 Nissan Silvia S13 ($0 - priekÅ¡ Tomy_Melty)', 0),
(2928, '2019-02-18 16:25:13', 125, 'setcolor0', 657),
(2929, '2019-02-18 16:25:24', 125, 'fixveh', 657),
(2930, '2019-02-18 16:28:29', 125, 'setcolor1', 657),
(2931, '2019-02-18 16:29:49', 125, 'fixveh', 657),
(2932, '2019-02-18 16:32:38', 126, 'makeveh 2005 Subaru Impreza WRX ($0 - priekÅ¡ Tomy_Melty)', 0),
(2933, '2019-02-18 16:32:51', 126, 'setcolor1', 657),
(2934, '2019-02-18 16:35:15', 127, 'makeveh 2001 Nissan 240XS ($0 - priekÅ¡ Tomy_Melty)', 0),
(2935, '2019-02-18 16:36:23', 127, 'setcolor1', 657),
(2936, '2019-02-18 16:39:31', 128, 'makeveh 2016 Savanna 2017 ($0 - priekÅ¡ Tomy_Melty)', 0),
(2937, '2019-02-18 16:39:43', 128, 'setcolor1', 657),
(2938, '2019-02-18 16:48:08', 125, 'fixveh', 657),
(2939, '2019-02-18 16:49:58', 125, 'fixveh', 657),
(2940, '2019-02-18 16:51:03', 125, 'fixveh', 657),
(2941, '2019-02-18 16:56:38', 125, 'fixveh', 657),
(2942, '2019-02-18 16:56:44', 125, 'fixveh', 657),
(2943, '2019-02-18 16:59:58', 125, 'fixveh', 657),
(2944, '2019-02-18 17:00:04', 125, 'setcolor3', 657),
(2945, '2019-02-18 17:00:15', 125, 'setcolor3 2', 657),
(2946, '2019-02-18 17:01:25', 125, 'fixveh', 657),
(2947, '2019-02-18 17:01:31', 125, 'setcolor0 3', 657),
(2948, '2019-02-18 17:13:00', 125, 'fixveh', 657),
(2949, '2019-02-18 17:13:39', 125, 'fixveh', 657),
(2950, '2019-02-18 17:16:38', 125, 'fixveh', 657),
(2951, '2019-02-18 17:18:21', 125, 'fixveh', 657),
(2952, '2019-02-18 17:20:17', 125, 'unflip', 657),
(2953, '2019-02-18 17:20:18', 125, 'fixveh', 657),
(2954, '2019-02-18 17:24:51', 125, 'fixveh', 657),
(2955, '2019-02-22 17:17:58', 125, 'fixveh', 657),
(2956, '2019-02-22 17:18:10', 125, 'fixveh', 657),
(2957, '2019-02-22 17:18:35', 125, 'fixveh', 657),
(2958, '2019-02-22 17:21:07', 125, 'fixveh', 657),
(2959, '2019-02-22 17:21:19', 125, 'fixveh', 657),
(2960, '2019-02-22 17:21:50', 125, 'fixveh', 657),
(2961, '2019-02-22 17:21:54', 125, 'fixveh', 657),
(2962, '2019-02-22 17:23:30', 125, 'fixveh', 657),
(2963, '2019-02-22 17:23:43', 125, 'fixveh', 657),
(2964, '2019-02-22 17:24:23', 125, 'fixveh', 657),
(2965, '2019-02-22 17:24:34', 125, 'fixveh', 657),
(2966, '2019-02-22 17:25:46', 125, 'fixveh', 657),
(2967, '2019-02-22 17:26:06', 125, 'fixveh', 657),
(2968, '2019-02-22 17:27:11', 125, 'fixveh', 657),
(2969, '2019-02-22 17:27:26', 125, 'fixveh', 657),
(2970, '2019-02-22 17:29:08', 125, 'fixveh', 657),
(2971, '2019-02-22 17:31:32', 125, 'setcolor1', 657),
(2972, '2019-02-28 19:27:02', 126, 'fixveh', 657),
(2973, '2019-02-28 19:27:34', 126, 'fixveh', 657),
(2974, '2019-03-05 14:57:25', 97, 'fixveh', 657),
(2975, '2019-03-05 14:59:15', 97, 'fixveh', 657),
(2976, '2019-03-05 15:01:44', 97, 'fixveh', 657),
(2977, '2019-03-05 15:24:42', 97, 'fixveh', 657),
(2978, '2019-03-05 15:25:59', 97, 'fixveh', 657),
(2979, '2019-03-05 19:55:41', 97, 'fixveh', 657),
(2980, '2019-03-05 19:56:17', 97, 'fixveh', 657),
(2981, '2019-03-05 19:57:36', 97, 'fixveh', 657),
(2982, '2019-03-05 20:01:28', 97, 'fixveh', 657),
(2983, '2019-03-05 20:04:21', 97, 'fixveh', 657),
(2984, '2019-03-05 20:04:43', -1, 'fixveh', 669),
(2985, '2019-03-05 20:06:14', 97, 'fixveh', 657),
(2986, '2019-03-05 20:07:42', 97, 'fixveh', 657),
(2987, '2019-03-05 20:10:47', 97, 'fixveh', 657),
(2988, '2019-03-05 20:10:59', 97, 'fixveh', 657),
(2989, '2019-03-05 20:11:04', 127, 'getveh', 657),
(2990, '2019-03-05 20:11:11', 97, 'fixveh', 657),
(2991, '2019-03-05 20:20:02', -5, 'fixveh', 663),
(2992, '2019-03-05 20:20:15', -5, 'setcolor0', 663),
(2993, '2019-03-05 20:20:32', -5, 'setcolor3', 657),
(2994, '2019-03-05 20:20:35', -5, 'fixveh', 657),
(2995, '2019-03-05 20:20:55', -5, 'fixveh', 663),
(2996, '2019-03-05 20:24:15', 126, 'fixveh', 663),
(2997, '2019-03-05 20:25:01', 126, 'setcolor0', 663);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vehicle_notes`
--

CREATE TABLE `vehicle_notes` (
  `id` int(11) NOT NULL,
  `vehid` int(11) NOT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `date` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vendingmachines`
--

CREATE TABLE `vendingmachines` (
  `id` int(11) NOT NULL,
  `posX` int(11) NOT NULL,
  `posY` int(11) NOT NULL,
  `posZ` int(11) NOT NULL,
  `rotx` float NOT NULL,
  `roty` float NOT NULL,
  `rotz` float NOT NULL,
  `type` varchar(255) NOT NULL,
  `interior` int(11) NOT NULL,
  `dimension` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wiretransfers`
--

CREATE TABLE `wiretransfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` int(11) DEFAULT '0',
  `to` int(11) DEFAULT '0',
  `amount` int(11) NOT NULL,
  `reason` text,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) NOT NULL,
  `from_card` varchar(45) DEFAULT NULL,
  `to_card` varchar(45) DEFAULT NULL,
  `details` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `wiretransfers`
--

INSERT INTO `wiretransfers` (`id`, `from`, `to`, `amount`, `reason`, `time`, `type`, `from_card`, `to_card`, `details`) VALUES
(483, -57, 20, 1229, 'BANKAS PROCENTI', '2019-02-10 11:00:12', 6, NULL, NULL, NULL),
(484, -57, 20, 1247, 'BANKAS PROCENTI', '2019-02-10 22:00:13', 6, NULL, NULL, NULL),
(485, -57, 20, 1265, 'BANKAS PROCENTI', '2019-02-11 13:00:13', 6, NULL, NULL, NULL),
(486, -57, 20, 1282, 'BANKAS PROCENTI', '2019-02-11 17:00:13', 6, NULL, NULL, NULL),
(487, -57, 21, 640, 'BANKAS PROCENTI', '2019-02-11 17:00:13', 6, NULL, NULL, NULL),
(488, -4, 21, 300, 'STATEBENEFITS', '2019-02-11 17:00:13', 6, NULL, NULL, NULL),
(489, 20, 0, 40, '', '2019-02-11 17:37:52', 0, NULL, NULL, NULL),
(490, 20, 0, 46965, '', '2019-02-11 17:38:06', 0, NULL, NULL, NULL),
(491, -57, 21, 666, 'BANKAS PROCENTI', '2019-02-11 18:00:13', 6, NULL, NULL, NULL),
(492, -57, 19, 1434, 'BANKAS PROCENTI', '2019-02-17 13:00:36', 6, NULL, NULL, NULL),
(493, 19, -4, 310, 'TRANSPORTLÄªDZEKÄ»U NODOKLIS', '2019-02-17 13:00:36', 6, NULL, NULL, NULL),
(494, 19, -4, 6, 'ÄªPAÅ UMA NODOKLIS', '2019-02-17 13:00:36', 6, NULL, NULL, NULL),
(495, -57, 19, 1448, 'BANKAS PROCENTI', '2019-02-17 14:00:36', 6, NULL, NULL, NULL),
(496, 19, -4, 310, 'TRANSPORTLÄªDZEKÄ»U NODOKLIS', '2019-02-17 14:00:36', 6, NULL, NULL, NULL),
(497, 19, -4, 6, 'ÄªPAÅ UMA NODOKLIS', '2019-02-17 14:00:36', 6, NULL, NULL, NULL),
(498, -57, 19, 1462, 'BANKAS PROCENTI', '2019-02-17 15:00:36', 6, NULL, NULL, NULL),
(499, 19, -4, 310, 'TRANSPORTLÄªDZEKÄ»U NODOKLIS', '2019-02-17 15:00:36', 6, NULL, NULL, NULL),
(500, 19, -4, 6, 'ÄªPAÅ UMA NODOKLIS', '2019-02-17 15:00:36', 6, NULL, NULL, NULL),
(501, 20, -4, 0, 'TRANSPORTLÄªDZEKÄ»U NODOKLIS', '2019-02-18 17:00:36', 6, NULL, NULL, NULL),
(502, -57, 21, 683, 'BANKAS PROCENTI', '2019-02-18 17:00:36', 6, NULL, NULL, NULL),
(503, -1, 20, 850, 'ALGA', '2019-02-18 17:01:07', 6, NULL, NULL, NULL),
(504, 20, -4, 85, 'IENÄ€KUMU NODOKLIS', '2019-02-18 17:01:07', 6, NULL, NULL, NULL),
(505, 20, -4, 17, 'TRANSPORTLÄªDZEKÄ»U NODOKLIS', '2019-02-18 17:01:07', 6, NULL, NULL, NULL),
(506, -57, 19, 1476, 'BANKAS PROCENTI', '2019-03-03 17:00:42', 6, NULL, NULL, NULL),
(507, 19, -4, 310, 'TRANSPORTLÄªDZEKÄ»U NODOKLIS', '2019-03-03 17:00:42', 6, NULL, NULL, NULL),
(508, 19, -4, 6, 'ÄªPAÅ UMA NODOKLIS', '2019-03-03 17:00:42', 6, NULL, NULL, NULL),
(509, -57, 20, 164, 'BANKAS PROCENTI', '2019-03-05 20:00:10', 6, NULL, NULL, NULL),
(510, -1, 20, 850, 'ALGA', '2019-03-05 20:00:10', 6, NULL, NULL, NULL),
(511, 20, -4, 85, 'IENÄ€KUMU NODOKLIS', '2019-03-05 20:00:10', 6, NULL, NULL, NULL),
(512, 20, -4, 17, 'TRANSPORTLÄªDZEKÄ»U NODOKLIS', '2019-03-05 20:00:10', 6, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `worlditems`
--

CREATE TABLE `worlditems` (
  `id` int(11) NOT NULL,
  `itemid` int(11) DEFAULT '0',
  `itemvalue` text,
  `x` float DEFAULT '0',
  `y` float DEFAULT '0',
  `z` float DEFAULT '0',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `creationdate` datetime DEFAULT NULL,
  `rx` float DEFAULT '0',
  `ry` float DEFAULT '0',
  `rz` float DEFAULT '0',
  `creator` int(10) UNSIGNED DEFAULT '0',
  `protected` int(100) NOT NULL DEFAULT '0',
  `perm_use` int(2) NOT NULL DEFAULT '1',
  `perm_move` int(2) NOT NULL DEFAULT '1',
  `perm_pickup` int(2) NOT NULL DEFAULT '1',
  `perm_use_data` text,
  `perm_move_data` text,
  `perm_pickup_data` text,
  `textures` varchar(300) NOT NULL DEFAULT '[ [ ] ]'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `worlditems`
--

INSERT INTO `worlditems` (`id`, `itemid`, `itemvalue`, `x`, `y`, `z`, `dimension`, `interior`, `creationdate`, `rx`, `ry`, `rz`, `creator`, `protected`, `perm_use`, `perm_move`, `perm_pickup`, `perm_use_data`, `perm_move_data`, `perm_pickup_data`, `textures`) VALUES
(1, 80, '.:980', 2669.71, -2565.26, 13.45, 0, 0, '2018-08-28 18:41:38', 0, 90, 181.9, 2, -100, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(2, 80, '.:991', 1140.76, -1369.54, 13.9238, 0, 0, '2018-09-15 21:55:16', 0, 0, 1.91711, 20, -100, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(3, 80, '.:991', 1147.37, -1369.32, 13.9238, 0, 0, '2018-09-15 21:55:50', 0, 0, 2, 20, -100, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(4, 80, '.:991', 1134.63, -1291.84, 14.3767, 0, 0, '2018-09-15 21:56:48', 0, 90, 180, 20, -100, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(5, 80, '.:991', 1132.22, -1291.89, 14.3767, 0, 0, '2018-09-15 21:57:36', 0, 90, 182.7, 20, -100, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(6, 80, '.:991', 1148.48, -1291.83, 14.3767, 0, 0, '2018-09-15 21:58:10', 0, 90, 181, 20, -100, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(7, 80, '.:991', 1150.85, -1291.95, 14.3767, 0, 0, '2018-09-15 21:58:42', 0, 90, 174, 20, -100, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(8, 80, '.:991', 1140.77, -1369.51, 16.3167, 0, 0, '2018-09-15 21:59:23', 0, 0, 2.53424, 20, -100, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(9, 80, '.:991', 1147.28, -1369.29, 16.3195, 0, 0, '2018-09-15 22:02:52', 0, 0, 1.56006, 20, -100, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(10, 80, '.:16773', 1587.6, -1638.33, 13.0096, 0, 0, '2018-09-15 22:04:09', 0, 0, 180, 20, -100, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(11, 80, '.:1499', 1584.1, -1638.21, 12.2971, 0, 0, '2018-09-15 22:06:28', 0, 0, 180.707, 20, -100, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(13, 401, 'x6 ÄŒaulÄ«tes no 7.62mm Kalibra', 1724.27, -1739.06, 12.5469, 0, 0, '2019-02-17 17:03:35', 0, 0, 0, 19, 0, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(14, 401, 'x5 ÄŒaulÄ«tes no 7.62mm Kalibra', 1659.57, -1739.52, 12.5435, 0, 0, '2019-02-17 17:03:53', 0, 0, 0, 19, 0, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(15, 401, 'x1 ÄŒaulÄ«te no 9mm Kalibra', 1939.48, -2331.37, 12.7464, 553, 25, '2019-02-18 18:29:32', 0, 0, 0, 20, 0, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(16, 80, '.:17036', 1278.77, -1818.39, 12.3819, 0, 0, '2019-01-27 20:22:42', 0, 0, 90, 20, -100, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(18, 401, 'x1 ÄŒaulÄ«te no 9mm Kalibra', 275.45, -1710.68, 6.76099, 0, 0, '2019-02-11 19:54:11', 0, 0, 0, 20, 0, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(19, 401, 'x1 ÄŒaulÄ«te no 9mm Kalibra', 275.375, -1703.6, 6.68209, 0, 0, '2019-02-11 19:54:15', 0, 0, 0, 20, 0, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]'),
(20, 401, 'x1 ÄŒaulÄ«te no 9mm Kalibra', 1243.81, -1706.76, 12.5469, 0, 0, '2019-02-17 12:32:45', 0, 0, 0, 20, 0, 1, 1, 1, NULL, NULL, NULL, '[ [ ] ]');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `worlditems_data`
--

CREATE TABLE `worlditems_data` (
  `id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `adminhistory`
--
ALTER TABLE `adminhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `apb`
--
ALTER TABLE `apb`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `applications_questions`
--
ALTER TABLE `applications_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `atm_cards`
--
ALTER TABLE `atm_cards`
  ADD PRIMARY KEY (`card_id`),
  ADD UNIQUE KEY `card_id_UNIQUE` (`card_id`);

--
-- Indexen voor tabel `atm_wiretransfers`
--
ALTER TABLE `atm_wiretransfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `bannedIPs`
--
ALTER TABLE `bannedIPs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `bannedips`
--
ALTER TABLE `bannedips`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `bannedSerials`
--
ALTER TABLE `bannedSerials`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `bannedserials`
--
ALTER TABLE `bannedserials`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexen voor tabel `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `business_accounts`
--
ALTER TABLE `business_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `business_members`
--
ALTER TABLE `business_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `business_rentals`
--
ALTER TABLE `business_rentals`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `chickens`
--
ALTER TABLE `chickens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD UNIQUE KEY `id_3` (`id`),
  ADD UNIQUE KEY `id_4` (`id`),
  ADD UNIQUE KEY `id_5` (`id`),
  ADD UNIQUE KEY `id_6` (`id`),
  ADD UNIQUE KEY `id_7` (`id`),
  ADD UNIQUE KEY `id_8` (`id`),
  ADD UNIQUE KEY `id_9` (`id`),
  ADD UNIQUE KEY `id_10` (`id`);

--
-- Indexen voor tabel `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_3` (`id`,`modelid`,`owner`,`bone`,`x`,`y`,`z`,`rx`,`ry`,`rz`,`sx`,`sy`,`sz`,`active`),
  ADD KEY `id` (`id`,`modelid`,`owner`,`bone`,`x`,`y`,`z`,`rx`,`ry`,`rz`,`sx`,`sy`,`sz`,`active`),
  ADD KEY `id_2` (`id`,`modelid`,`owner`,`bone`,`x`,`y`,`z`,`rx`,`ry`,`rz`,`sx`,`sy`,`sz`,`active`);

--
-- Indexen voor tabel `clothing`
--
ALTER TABLE `clothing`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `commands`
--
ALTER TABLE `commands`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `commands_library`
--
ALTER TABLE `commands_library`
  ADD PRIMARY KEY (`cmID`);

--
-- Indexen voor tabel `computers`
--
ALTER TABLE `computers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cows`
--
ALTER TABLE `cows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD UNIQUE KEY `id_3` (`id`),
  ADD UNIQUE KEY `id_4` (`id`),
  ADD UNIQUE KEY `id_5` (`id`),
  ADD UNIQUE KEY `id_6` (`id`),
  ADD UNIQUE KEY `id_7` (`id`),
  ADD UNIQUE KEY `id_8` (`id`),
  ADD UNIQUE KEY `id_9` (`id`),
  ADD UNIQUE KEY `id_10` (`id`);

--
-- Indexen voor tabel `cpa_postbacks`
--
ALTER TABLE `cpa_postbacks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexen voor tabel `dancers`
--
ALTER TABLE `dancers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `donates`
--
ALTER TABLE `donates`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `txn_id` (`txn_id`);

--
-- Indexen voor tabel `donators`
--
ALTER TABLE `donators`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `don_purchases`
--
ALTER TABLE `don_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `don_transactions`
--
ALTER TABLE `don_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `don_transaction_failed`
--
ALTER TABLE `don_transaction_failed`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `duty_locations`
--
ALTER TABLE `duty_locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexen voor tabel `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`idelections`);

--
-- Indexen voor tabel `elevators`
--
ALTER TABLE `elevators`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `emailaccounts`
--
ALTER TABLE `emailaccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `faction_drop`
--
ALTER TABLE `faction_drop`
  ADD PRIMARY KEY (`pID`),
  ADD UNIQUE KEY `pID_UNIQUE` (`pID`);

--
-- Indexen voor tabel `force_apps`
--
ALTER TABLE `force_apps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexen voor tabel `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`,`friend`);

--
-- Indexen voor tabel `fueldiesel`
--
ALTER TABLE `fueldiesel`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `fuelpeds`
--
ALTER TABLE `fuelpeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `fuelstations`
--
ALTER TABLE `fuelstations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `fuelstation_logs`
--
ALTER TABLE `fuelstation_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `fuelstation_vehs`
--
ALTER TABLE `fuelstation_vehs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `goats`
--
ALTER TABLE `goats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD UNIQUE KEY `id_3` (`id`),
  ADD UNIQUE KEY `id_4` (`id`),
  ADD UNIQUE KEY `id_5` (`id`),
  ADD UNIQUE KEY `id_6` (`id`),
  ADD UNIQUE KEY `id_7` (`id`),
  ADD UNIQUE KEY `id_8` (`id`),
  ADD UNIQUE KEY `id_9` (`id`),
  ADD UNIQUE KEY `id_10` (`id`);

--
-- Indexen voor tabel `insurance_data`
--
ALTER TABLE `insurance_data`
  ADD PRIMARY KEY (`policyid`);

--
-- Indexen voor tabel `insurance_factions`
--
ALTER TABLE `insurance_factions`
  ADD PRIMARY KEY (`factionID`);

--
-- Indexen voor tabel `interiors`
--
ALTER TABLE `interiors`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `interior_business`
--
ALTER TABLE `interior_business`
  ADD PRIMARY KEY (`intID`),
  ADD UNIQUE KEY `intID_UNIQUE` (`intID`);

--
-- Indexen voor tabel `interior_notes`
--
ALTER TABLE `interior_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `interior_textures`
--
ALTER TABLE `interior_textures`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`index`),
  ADD UNIQUE KEY `index` (`index`);

--
-- Indexen voor tabel `jailed`
--
ALTER TABLE `jailed`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `jobs_trucker_orders`
--
ALTER TABLE `jobs_trucker_orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexen voor tabel `leo_impound_lot`
--
ALTER TABLE `leo_impound_lot`
  ADD PRIMARY KEY (`lane`);

--
-- Indexen voor tabel `lifts`
--
ALTER TABLE `lifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lift_floors`
--
ALTER TABLE `lift_floors`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `mdc_apb`
--
ALTER TABLE `mdc_apb`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `mdc_calls`
--
ALTER TABLE `mdc_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `mdc_crimes`
--
ALTER TABLE `mdc_crimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `mdc_criminals`
--
ALTER TABLE `mdc_criminals`
  ADD UNIQUE KEY `name` (`character`),
  ADD KEY `phone` (`phone`);

--
-- Indexen voor tabel `mdc_faa_events`
--
ALTER TABLE `mdc_faa_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `mdc_faa_licenses`
--
ALTER TABLE `mdc_faa_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `mdc_impounds`
--
ALTER TABLE `mdc_impounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `mdc_users`
--
ALTER TABLE `mdc_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `motds`
--
ALTER TABLE `motds`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `motd_read`
--
ALTER TABLE `motd_read`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `paynspray`
--
ALTER TABLE `paynspray`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `pd_tickets`
--
ALTER TABLE `pd_tickets`
  ADD PRIMARY KEY (`id`,`time`);

--
-- Indexen voor tabel `peds`
--
ALTER TABLE `peds`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `ped_inventory`
--
ALTER TABLE `ped_inventory`
  ADD PRIMARY KEY (`index`);

--
-- Indexen voor tabel `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`phonenumber`),
  ADD UNIQUE KEY `phonenumber_UNIQUE` (`phonenumber`);

--
-- Indexen voor tabel `phone_contacts`
--
ALTER TABLE `phone_contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexen voor tabel `phone_history`
--
ALTER TABLE `phone_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_UNIQUE` (`id`);

--
-- Indexen voor tabel `phone_sms`
--
ALTER TABLE `phone_sms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_UNIQUE` (`id`);

--
-- Indexen voor tabel `pilot_notams`
--
ALTER TABLE `pilot_notams`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `publicphones`
--
ALTER TABLE `publicphones`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `radio_stations`
--
ALTER TABLE `radio_stations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexen voor tabel `ramps`
--
ALTER TABLE `ramps`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `restricted_freqs`
--
ALTER TABLE `restricted_freqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `sapt_destinations`
--
ALTER TABLE `sapt_destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `sapt_locations`
--
ALTER TABLE `sapt_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `sapt_routes`
--
ALTER TABLE `sapt_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `serial_whitelist`
--
ALTER TABLE `serial_whitelist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexen voor tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `sfia_pilots`
--
ALTER TABLE `sfia_pilots`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `shop_contacts_info`
--
ALTER TABLE `shop_contacts_info`
  ADD PRIMARY KEY (`npcID`);

--
-- Indexen voor tabel `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`pID`),
  ADD UNIQUE KEY `pID_UNIQUE` (`pID`);

--
-- Indexen voor tabel `slotmachines`
--
ALTER TABLE `slotmachines`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexen voor tabel `speedcams`
--
ALTER TABLE `speedcams`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `speedingviolations`
--
ALTER TABLE `speedingviolations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`district`);

--
-- Indexen voor tabel `suspectcrime`
--
ALTER TABLE `suspectcrime`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `tc_comments`
--
ALTER TABLE `tc_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `tc_tickets`
--
ALTER TABLE `tc_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `tempobjects`
--
ALTER TABLE `tempobjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `textures_animated`
--
ALTER TABLE `textures_animated`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `ticketreplies`
--
ALTER TABLE `ticketreplies`
  ADD PRIMARY KEY (`rid`);

--
-- Indexen voor tabel `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`tid`);

--
-- Indexen voor tabel `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_UNIQUE` (`token`);

--
-- Indexen voor tabel `towstats`
--
ALTER TABLE `towstats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_idx` (`character`),
  ADD KEY `vehicle_idx` (`vehicle`);

--
-- Indexen voor tabel `up_weed`
--
ALTER TABLE `up_weed`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `vehicles_custom`
--
ALTER TABLE `vehicles_custom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexen voor tabel `vehicles_shop`
--
ALTER TABLE `vehicles_shop`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexen voor tabel `vehicle_engine`
--
ALTER TABLE `vehicle_engine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `vehicle_logs`
--
ALTER TABLE `vehicle_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexen voor tabel `vehicle_notes`
--
ALTER TABLE `vehicle_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `vendingmachines`
--
ALTER TABLE `vendingmachines`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `wiretransfers`
--
ALTER TABLE `wiretransfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `worlditems`
--
ALTER TABLE `worlditems`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `worlditems_data`
--
ALTER TABLE `worlditems_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=671;
--
-- AUTO_INCREMENT voor een tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `adminhistory`
--
ALTER TABLE `adminhistory`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `apb`
--
ALTER TABLE `apb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT voor een tabel `applications_questions`
--
ALTER TABLE `applications_questions`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT voor een tabel `atms`
--
ALTER TABLE `atms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `atm_cards`
--
ALTER TABLE `atm_cards`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `atm_wiretransfers`
--
ALTER TABLE `atm_wiretransfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `bannedIPs`
--
ALTER TABLE `bannedIPs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `bannedips`
--
ALTER TABLE `bannedips`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `bannedSerials`
--
ALTER TABLE `bannedSerials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `bannedserials`
--
ALTER TABLE `bannedserials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `business_accounts`
--
ALTER TABLE `business_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `business_members`
--
ALTER TABLE `business_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `business_rentals`
--
ALTER TABLE `business_rentals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT voor een tabel `chickens`
--
ALTER TABLE `chickens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `clothing`
--
ALTER TABLE `clothing`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT voor een tabel `commands`
--
ALTER TABLE `commands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;
--
-- AUTO_INCREMENT voor een tabel `commands_library`
--
ALTER TABLE `commands_library`
  MODIFY `cmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=630;
--
-- AUTO_INCREMENT voor een tabel `computers`
--
ALTER TABLE `computers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `cows`
--
ALTER TABLE `cows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `cpa_postbacks`
--
ALTER TABLE `cpa_postbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `dancers`
--
ALTER TABLE `dancers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `donates`
--
ALTER TABLE `donates`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `donators`
--
ALTER TABLE `donators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `don_purchases`
--
ALTER TABLE `don_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `don_transactions`
--
ALTER TABLE `don_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `don_transaction_failed`
--
ALTER TABLE `don_transaction_failed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `duty_locations`
--
ALTER TABLE `duty_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;
--
-- AUTO_INCREMENT voor een tabel `elevators`
--
ALTER TABLE `elevators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT voor een tabel `emailaccounts`
--
ALTER TABLE `emailaccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `factions`
--
ALTER TABLE `factions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT voor een tabel `faction_drop`
--
ALTER TABLE `faction_drop`
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT voor een tabel `force_apps`
--
ALTER TABLE `force_apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `fueldiesel`
--
ALTER TABLE `fueldiesel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT voor een tabel `fuelpeds`
--
ALTER TABLE `fuelpeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT voor een tabel `fuelstations`
--
ALTER TABLE `fuelstations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `fuelstation_logs`
--
ALTER TABLE `fuelstation_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `fuelstation_vehs`
--
ALTER TABLE `fuelstation_vehs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `gates`
--
ALTER TABLE `gates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT voor een tabel `goats`
--
ALTER TABLE `goats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `insurance_data`
--
ALTER TABLE `insurance_data`
  MODIFY `policyid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `interiors`
--
ALTER TABLE `interiors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=672;
--
-- AUTO_INCREMENT voor een tabel `interior_notes`
--
ALTER TABLE `interior_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `interior_textures`
--
ALTER TABLE `interior_textures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=557;
--
-- AUTO_INCREMENT voor een tabel `items`
--
ALTER TABLE `items`
  MODIFY `index` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3023;
--
-- AUTO_INCREMENT voor een tabel `jailed`
--
ALTER TABLE `jailed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `jobs_trucker_orders`
--
ALTER TABLE `jobs_trucker_orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT voor een tabel `leo_impound_lot`
--
ALTER TABLE `leo_impound_lot`
  MODIFY `lane` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `lifts`
--
ALTER TABLE `lifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `lift_floors`
--
ALTER TABLE `lift_floors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1145;
--
-- AUTO_INCREMENT voor een tabel `mdc_apb`
--
ALTER TABLE `mdc_apb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `mdc_calls`
--
ALTER TABLE `mdc_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;
--
-- AUTO_INCREMENT voor een tabel `mdc_crimes`
--
ALTER TABLE `mdc_crimes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `mdc_faa_events`
--
ALTER TABLE `mdc_faa_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `mdc_faa_licenses`
--
ALTER TABLE `mdc_faa_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `mdc_impounds`
--
ALTER TABLE `mdc_impounds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `mdc_users`
--
ALTER TABLE `mdc_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT voor een tabel `motds`
--
ALTER TABLE `motds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `motd_read`
--
ALTER TABLE `motd_read`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT voor een tabel `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT voor een tabel `objects`
--
ALTER TABLE `objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `paynspray`
--
ALTER TABLE `paynspray`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT voor een tabel `pd_tickets`
--
ALTER TABLE `pd_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT voor een tabel `peds`
--
ALTER TABLE `peds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `ped_inventory`
--
ALTER TABLE `ped_inventory`
  MODIFY `index` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `phone_contacts`
--
ALTER TABLE `phone_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `phone_history`
--
ALTER TABLE `phone_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT voor een tabel `phone_sms`
--
ALTER TABLE `phone_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `publicphones`
--
ALTER TABLE `publicphones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `radio_stations`
--
ALTER TABLE `radio_stations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT voor een tabel `ramps`
--
ALTER TABLE `ramps`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `restricted_freqs`
--
ALTER TABLE `restricted_freqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `sapt_destinations`
--
ALTER TABLE `sapt_destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `sapt_locations`
--
ALTER TABLE `sapt_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `sapt_routes`
--
ALTER TABLE `sapt_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `serial_whitelist`
--
ALTER TABLE `serial_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `sfia_pilots`
--
ALTER TABLE `sfia_pilots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT voor een tabel `shop_products`
--
ALTER TABLE `shop_products`
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=917;
--
-- AUTO_INCREMENT voor een tabel `slotmachines`
--
ALTER TABLE `slotmachines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `speedcams`
--
ALTER TABLE `speedcams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `speedingviolations`
--
ALTER TABLE `speedingviolations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT voor een tabel `suspectcrime`
--
ALTER TABLE `suspectcrime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `tc_comments`
--
ALTER TABLE `tc_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `tc_tickets`
--
ALTER TABLE `tc_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `tempobjects`
--
ALTER TABLE `tempobjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `textures_animated`
--
ALTER TABLE `textures_animated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `ticketreplies`
--
ALTER TABLE `ticketreplies`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `tickets`
--
ALTER TABLE `tickets`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `towstats`
--
ALTER TABLE `towstats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `up_weed`
--
ALTER TABLE `up_weed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1525;
--
-- AUTO_INCREMENT voor een tabel `vehicles_custom`
--
ALTER TABLE `vehicles_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT voor een tabel `vehicles_shop`
--
ALTER TABLE `vehicles_shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT voor een tabel `vehicle_logs`
--
ALTER TABLE `vehicle_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2998;
--
-- AUTO_INCREMENT voor een tabel `vehicle_notes`
--
ALTER TABLE `vehicle_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `vendingmachines`
--
ALTER TABLE `vendingmachines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `wiretransfers`
--
ALTER TABLE `wiretransfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;
--
-- AUTO_INCREMENT voor een tabel `worlditems`
--
ALTER TABLE `worlditems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT voor een tabel `worlditems_data`
--
ALTER TABLE `worlditems_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
