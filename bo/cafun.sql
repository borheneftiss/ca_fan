-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 28 Mars 2019 à 13:33
-- Version du serveur :  5.7.25-0ubuntu0.16.04.2
-- Version de PHP :  7.0.33-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cafun`
--

-- --------------------------------------------------------

--
-- Structure de la table `card`
--

CREATE TABLE `card` (
  `ID` int(11) NOT NULL,
  `Numero` varchar(255) NOT NULL,
  `Nbpoint` int(11) NOT NULL DEFAULT '0',
  `Tel` varchar(8) NOT NULL,
  `typeCard` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `card`
--

INSERT INTO `card` (`ID`, `Numero`, `Nbpoint`, `Tel`, `typeCard`) VALUES
(4, '4807655797429', 0, '24478320', 1),
(6, '8885841922400', 0, '14785236', 1),
(67, '3959161298610', 0, '14785236', 1),
(68, '5499544036847', 0, '14785236', 1),
(69, '3099957006857', 0, '14785236', 1),
(70, '4083759900215', 0, '14785236', 1),
(71, '1617199534525', 0, '14785236', 1),
(72, '1507171273492', 0, '14785236', 1),
(73, '2989926341417', 0, '95582551', 1),
(74, '2166846494715', 0, '95582551', 1),
(75, '2837667015873', 0, '14785236', 1),
(76, '3103142223295', 0, '14785236', 1),
(77, '0789736774485', 0, '14785236', 1),
(78, '7903451213737', 0, '14785236', 1),
(79, '7933969311588', 0, '14785236', 1),
(80, '4972137484818', 0, '14785236', 1),
(81, '0366684902834', 0, '14785236', 1),
(82, '5411373292625', 0, '14785236', 1),
(83, '9320436501754', 0, '14785236', 1),
(84, '3670193489071', 0, '14785236', 1),
(85, '7525785406870', 0, '14785236', 1),
(86, '6274976771497', 0, '14785236', 1),
(87, '0512247946439', 0, '14785236', 1),
(88, '0834116768639', 0, '14785236', 1),
(89, '9389420903511', 0, '14785236', 1),
(90, '8147230929510', 0, '14785236', 1),
(91, '3530292763518', 0, '14785236', 1),
(92, '6814494604643', 0, '14785236', 1),
(93, '2919507191483', 0, '14785236', 1),
(94, '3129617846658', 0, '14785236', 1),
(95, '1002837392146', 0, '14785236', 1),
(96, '1247934714299', 0, '14785236', 1),
(97, '9027756014486', 0, '14785236', 1),
(98, '9393795825900', 0, '14785236', 1),
(99, '4724845111745', 0, '14785236', 1),
(100, '3040368597580', 0, '14785236', 1),
(104, '3406658836500', 0, '14785236', 1),
(105, '4689635815780', 0, '14785236', 1),
(106, '9448536138199', 0, '14785236', 1),
(107, '1986960940640', 0, '14785236', 1),
(108, '7643182533731', 0, '14785236', 1),
(109, '9969289250159', 0, '14785236', 1),
(110, '7597378739890', 0, '14785236', 1),
(111, '1112396054592', 0, '14785236', 1),
(112, '3708508051176', 0, '14785236', 1),
(113, '6001366666222', 0, '14785236', 1),
(114, '1079843659082', 0, '95582551', 1),
(115, '5520016347007', 0, '95582551', 1),
(118, '8417996835520', 0, '95582551', 1),
(119, '8072658113827', 0, '95582551', 1),
(120, '9767483783513', 0, '14785236', 1),
(121, '5081942968165', 0, '14785236', 1),
(122, '6002972802596', 0, '95582551', 1),
(123, '3285061498639', 0, '14785236', 1),
(124, '6061477038946', 0, '14785236', 1),
(125, '3899709521421', 0, '14785236', 1),
(128, '0451387605309', 0, '95582551', 1),
(129, '5358335771761', 0, '95582551', 1),
(132, '2505449460211', 0, '95582551', 1),
(133, '6394501239310', 0, '95582551', 1),
(134, '4388688193672', 0, '95582551', 1),
(135, '5975943760531', 0, '95582551', 1),
(136, '8704374722062', 0, '95582551', 1),
(137, '6878645348496', 0, '95582551', 1),
(138, '7992600601783', 0, '95582551', 1),
(139, '5894415022733', 0, '95582551', 1),
(140, '3116931522692', 0, '95582551', 1),
(141, '7618678155411', 0, '95582551', 1),
(142, '8585290955361', 0, '95582551', 1),
(143, '3432200783860', 0, '95582551', 1),
(144, '1973364420781', 0, '95582551', 1),
(145, '7211503205407', 0, '95582551', 1),
(214, '3296555847260', 0, '96071021', 1),
(215, '4151928709115', 0, '96071021', 1),
(250, '1724666855435', 0, '14785236', 1),
(251, '6205634125951', 0, '14785236', 1),
(252, '0843794394364', 0, '14785236', 1),
(264, '7208062015721', 0, '52532080', 1),
(266, '4388429293675', 0, '29593848', 1),
(267, '6360313997228', 0, '96071015', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ca_modes`
--

CREATE TABLE `ca_modes` (
  `ID` int(11) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `image` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ca_modes`
--

INSERT INTO `ca_modes` (`ID`, `titre`, `image`, `status`, `type`) VALUES
(1, 'Livraison à domicile', 40, 1, 'recovery'),
(2, 'Boutique', 37, 1, 'recovery'),
(3, 'Par carte bancaire / E-dinar', 38, 1, 'paiement'),
(4, 'Par recharge téléphonique', 36, 1, 'paiement'),
(5, 'A la livraison', 37, 1, 'paiement');

-- --------------------------------------------------------

--
-- Structure de la table `clientimages`
--

CREATE TABLE `clientimages` (
  `ID` int(11) NOT NULL,
  `idclient` int(11) NOT NULL,
  `idimage` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clientimages`
--

INSERT INTO `clientimages` (`ID`, `idclient`, `idimage`, `date`) VALUES
(3, 8, 98, '2019-03-18 14:50:43'),
(4, 8, 99, '2019-03-18 15:14:07'),
(5, 8, 100, '2019-03-18 15:16:07'),
(6, 8, 102, '2019-03-18 17:18:34'),
(7, 8, 103, '2019-03-18 17:18:57'),
(8, 8, 104, '2019-03-18 17:27:55'),
(9, 8, 105, '2019-03-18 17:34:04'),
(10, 8, 106, '2019-03-18 17:34:35'),
(11, 8, 107, '2019-03-18 17:37:20'),
(12, 8, 108, '2019-03-18 17:40:54'),
(13, 8, 109, '2019-03-18 17:43:05'),
(14, 8, 110, '2019-03-18 17:43:35'),
(15, 8, 111, '2019-03-18 17:47:03'),
(16, 8, 112, '2019-03-18 17:50:26'),
(17, 8, 113, '2019-03-18 17:54:00'),
(18, 8, 114, '2019-03-18 20:47:18'),
(19, 8, 115, '2019-03-18 20:49:20'),
(20, 8, 116, '2019-03-18 20:50:19'),
(21, 8, 117, '2019-03-18 20:52:45'),
(22, 93, 118, '2019-03-18 21:13:47'),
(23, 93, 119, '2019-03-18 21:13:54'),
(24, 93, 120, '2019-03-18 21:14:38'),
(25, 8, 121, '2019-03-19 07:47:59'),
(26, 5, 122, '2019-03-19 08:04:46'),
(27, 101, 123, '2019-03-19 08:16:23'),
(28, 101, 124, '2019-03-19 08:16:50'),
(29, 5, 130, '2019-03-21 14:33:14'),
(30, 5, 131, '2019-03-21 14:34:18'),
(31, 5, 132, '2019-03-21 14:34:34'),
(32, 5, 133, '2019-03-21 14:34:43'),
(33, 5, 134, '2019-03-21 14:34:43'),
(34, 5, 136, '2019-03-21 14:34:48'),
(35, 5, 135, '2019-03-21 14:34:48'),
(36, 5, 137, '2019-03-21 14:34:48'),
(37, 5, 138, '2019-03-21 14:35:04'),
(38, 5, 139, '2019-03-21 14:35:30'),
(39, 5, 140, '2019-03-21 14:35:31'),
(40, 5, 141, '2019-03-21 14:38:19'),
(41, 5, 142, '2019-03-21 14:38:38'),
(42, 5, 143, '2019-03-21 14:38:43'),
(43, 5, 144, '2019-03-21 14:39:02'),
(44, 5, 145, '2019-03-21 14:39:03'),
(45, 5, 146, '2019-03-21 14:39:03'),
(46, 5, 147, '2019-03-21 14:39:03'),
(47, 5, 149, '2019-03-21 14:39:04'),
(48, 5, 148, '2019-03-21 14:39:08'),
(49, 5, 150, '2019-03-21 14:39:08'),
(50, 5, 151, '2019-03-21 14:39:10'),
(51, 5, 152, '2019-03-21 14:39:29'),
(52, 5, 153, '2019-03-21 14:40:16'),
(53, 5, 154, '2019-03-21 14:41:25'),
(54, 5, 155, '2019-03-21 14:41:40'),
(55, 5, 156, '2019-03-21 14:42:14'),
(56, 5, 157, '2019-03-21 14:42:41'),
(57, 5, 158, '2019-03-21 14:42:42'),
(58, 5, 159, '2019-03-21 14:43:16'),
(59, 5, 160, '2019-03-21 14:53:41'),
(60, 5, 161, '2019-03-21 14:54:01'),
(61, 5, 162, '2019-03-25 08:36:31');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `ID` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `city` varchar(255) NOT NULL,
  `cin` varchar(8) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `imageid` int(11) NOT NULL DEFAULT '101',
  `date_creation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`ID`, `firstname`, `lastname`, `email`, `birthday`, `city`, `cin`, `adress`, `imageid`, `date_creation`) VALUES
(5, 'borhene', 'borhene', 'borhene@gmail.com', '5555-02-02', 'ssss', '12345678', 'bohsina', 162, '0000-00-00 00:00:00'),
(9, 'testtest', 'testest', 'testtest@gmail.com', '2001-01-01', 'sousse', '14785236', 'sousse', 101, '0000-00-00 00:00:00'),
(26, 'Hayfa ed', 'Mrad', 'hayfamrad@gmail.com', '1990-11-01', 'Sousse', '09302655', 'Avenue akoudasser', 101, '2019-02-22 08:30:00'),
(28, 'Hayfa ed', 'Mrad', 'hayfamrade@gmail.com', '1990-10-26', 'Sousse', '09302656', 'Avenue akoudass', 101, '2019-02-22 10:53:19'),
(48, 'HamedKarim', 'Garnaoui', 'g.hamed.karim@gmail.com', '2019-03-01', 'Sousse', '08479331', 'Rue Rossignol Khezema Est', 101, '2019-03-08 15:19:39'),
(89, 'cc', 'cc', 'hayfa.mrad@chifco.com', '4444-04-04', 'xwc', '30000000', 'xwc', 101, '2019-03-18 13:31:16'),
(98, 'tareknom', 'tarek', 'tarek.challouf@chifco.com', '1990-01-01', 'soussecity', '14141414', 'soussseadress', 101, '2019-03-19 07:29:52'),
(100, 'borhene', 'ftiss', 'ftiss@chifco.com', '1994-02-02', 'riadh', '09342807', 'sousse', 101, '2019-03-19 07:58:04'),
(101, 'Ahmed', 'BEN AFIA', 'ahmed.ben@gmail.com', '1987-01-21', 'Khniss', '06798932', 'Khniss', 124, '2019-03-19 08:14:05');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `ID` int(11) NOT NULL,
  `telephone` varchar(8) NOT NULL,
  `idrecoverymode` int(11) NOT NULL,
  `idpaiementmode` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`ID`, `telephone`, `idrecoverymode`, `idpaiementmode`, `status`, `date`) VALUES
(18, '24478320', 21, 20, 'pending', '2018-12-25 11:52:26'),
(20, '24478320', 21, 18, 'pending', '2018-12-26 14:07:03'),
(22, '14785236', 21, 18, 'pending', '2018-12-27 08:55:52'),
(60, '95582551', 21, 20, 'pending', '2019-02-22 08:30:00'),
(61, '95582551', 21, 20, 'pending', '2019-02-22 10:39:41'),
(62, '95582552', 21, 20, 'pending', '2019-02-22 10:52:40'),
(63, '95582552', 21, 20, 'pending', '2019-02-22 10:52:50'),
(64, '95582552', 21, 20, 'pending', '2019-02-22 10:53:19'),
(83, '14785236', 22, 20, 'pending', '2019-02-28 08:32:38'),
(84, '14785236', 22, 20, 'pending', '2019-02-28 08:32:40'),
(85, '14785236', 22, 20, 'pending', '2019-02-28 08:39:58'),
(86, '14785236', 22, 20, 'pending', '2019-02-28 08:40:00'),
(87, '14785236', 22, 20, 'pending', '2019-02-28 08:48:11'),
(88, '14785236', 22, 20, 'pending', '2019-02-28 08:48:11'),
(89, '95582551', 22, 18, 'pending', '2019-02-28 08:51:34'),
(90, '95582551', 22, 18, 'pending', '2019-02-28 08:51:34'),
(91, '14785236', 22, 18, 'pending', '2019-02-28 08:55:57'),
(92, '14785236', 22, 18, 'pending', '2019-02-28 08:55:58'),
(93, '14785236', 22, 20, 'pending', '2019-02-28 09:00:56'),
(94, '14785236', 22, 20, 'pending', '2019-02-28 09:00:57'),
(95, '14785236', 22, 20, 'pending', '2019-02-28 09:00:59'),
(96, '14785236', 21, 20, 'pending', '2019-02-28 09:03:05'),
(97, '14785236', 21, 20, 'pending', '2019-02-28 09:03:06'),
(98, '14785236', 21, 20, 'pending', '2019-02-28 09:12:09'),
(99, '14785236', 21, 20, 'pending', '2019-02-28 09:12:10'),
(100, '14785236', 21, 20, 'pending', '2019-02-28 09:19:28'),
(101, '14785236', 21, 20, 'pending', '2019-02-28 09:19:29'),
(102, '14785236', 21, 20, 'pending', '2019-02-28 09:30:38'),
(103, '14785236', 21, 20, 'pending', '2019-02-28 09:30:40'),
(104, '14785236', 21, 18, 'pending', '2019-02-28 09:37:28'),
(105, '14785236', 21, 18, 'pending', '2019-02-28 09:37:29'),
(106, '14785236', 22, 18, 'pending', '2019-02-28 09:49:03'),
(107, '14785236', 22, 18, 'pending', '2019-02-28 09:49:04'),
(108, '14785236', 21, 18, 'pending', '2019-02-28 23:14:31'),
(109, '14785236', 21, 18, 'pending', '2019-02-28 23:14:33'),
(110, '14785236', 21, 18, 'pending', '2019-02-28 23:18:49'),
(111, '14785236', 21, 18, 'pending', '2019-02-28 23:18:51'),
(112, '14785236', 22, 20, 'pending', '2019-03-01 14:22:51'),
(113, '14785236', 22, 20, 'pending', '2019-03-01 14:22:51'),
(114, '14785236', 22, 20, 'pending', '2019-03-01 14:22:55'),
(115, '14785236', 22, 20, 'pending', '2019-03-01 14:25:24'),
(116, '14785236', 22, 20, 'pending', '2019-03-01 14:25:24'),
(120, '14785236', 22, 20, 'pending', '2019-03-01 14:31:59'),
(121, '14785236', 22, 20, 'pending', '2019-03-01 14:32:04'),
(122, '14785236', 22, 20, 'pending', '2019-03-01 14:37:20'),
(123, '14785236', 22, 20, 'pending', '2019-03-01 14:37:22'),
(124, '14785236', 22, 20, 'pending', '2019-03-01 14:41:54'),
(125, '14785236', 22, 20, 'pending', '2019-03-01 14:41:54'),
(126, '14785236', 22, 20, 'pending', '2019-03-01 14:57:16'),
(127, '14785236', 22, 20, 'pending', '2019-03-01 14:57:16'),
(128, '14785236', 21, 19, 'pending', '2019-03-01 15:10:05'),
(129, '14785236', 21, 19, 'pending', '2019-03-01 15:10:07'),
(130, '95582551', 22, 20, 'pending', '2019-03-01 15:11:58'),
(131, '95582551', 22, 20, 'pending', '2019-03-01 15:11:59'),
(134, '95582551', 22, 20, 'pending', '2019-03-01 16:31:59'),
(135, '95582551', 22, 20, 'pending', '2019-03-01 16:32:01'),
(136, '14785236', 22, 20, 'pending', '2019-03-01 16:35:17'),
(137, '14785236', 22, 20, 'pending', '2019-03-01 16:35:17'),
(138, '95582551', 22, 20, 'pending', '2019-03-01 16:48:23'),
(139, '14785236', 22, 20, 'pending', '2019-03-03 16:35:21'),
(140, '14785236', 22, 20, 'pending', '2019-03-03 16:35:24'),
(141, '14785236', 22, 20, 'pending', '2019-03-03 17:29:20'),
(144, '95582551', 21, 19, 'pending', '2019-03-04 16:51:23'),
(145, '95582551', 21, 19, 'pending', '2019-03-04 16:51:29'),
(148, '95582551', 22, 19, 'pending', '2019-03-05 08:30:25'),
(149, '95582551', 22, 19, 'pending', '2019-03-05 08:30:31'),
(150, '95582551', 21, 20, 'pending', '2019-03-05 11:04:37'),
(151, '95582551', 21, 20, 'pending', '2019-03-05 11:04:38'),
(152, '95582551', 21, 19, 'pending', '2019-03-05 11:06:29'),
(153, '95582551', 21, 19, 'pending', '2019-03-05 11:06:30'),
(154, '95582551', 21, 18, 'pending', '2019-03-05 11:16:29'),
(155, '95582551', 21, 18, 'pending', '2019-03-05 11:16:31'),
(156, '95582551', 22, 18, 'pending', '2019-03-05 11:29:53'),
(157, '95582551', 22, 18, 'pending', '2019-03-05 11:29:54'),
(158, '95582551', 22, 18, 'pending', '2019-03-05 11:37:04'),
(159, '95582551', 22, 18, 'pending', '2019-03-05 11:37:07'),
(160, '95582551', 21, 18, 'pending', '2019-03-05 11:39:53'),
(161, '95582551', 21, 18, 'pending', '2019-03-05 11:40:01'),
(230, '96071021', 21, 18, 'pending', '2019-03-08 15:19:39'),
(231, '96071021', 21, 19, 'pending', '2019-03-08 15:19:52'),
(266, '14785236', 21, 18, 'pending', '2019-03-16 14:09:53'),
(267, '14785236', 21, 18, 'pending', '2019-03-16 14:11:50'),
(268, '14785236', 21, 18, 'pending', '2019-03-16 14:14:40'),
(280, '52532080', 21, 20, 'pending', '2019-03-19 07:29:58'),
(282, '29593848', 21, 19, 'pending', '2019-03-19 07:58:05'),
(283, '96071015', 21, 19, 'pending', '2019-03-19 08:14:05');

-- --------------------------------------------------------

--
-- Structure de la table `games`
--

CREATE TABLE `games` (
  `ID` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `visible` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'inprogress',
  `link` varchar(255) NOT NULL,
  `picture` int(11) NOT NULL,
  `video` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `games`
--

INSERT INTO `games` (`ID`, `titre`, `description`, `visible`, `status`, `link`, `picture`, `video`) VALUES
(6, 'game1', 'dfsdfsf', 1, 'cancelled', '/quiz/index.html', 66, 0);

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `ID` int(11) NOT NULL,
  `idcommande` int(11) NOT NULL,
  `idproduit` int(11) NOT NULL,
  `prix` float NOT NULL,
  `listorder` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `panier`
--

INSERT INTO `panier` (`ID`, `idcommande`, `idproduit`, `prix`, `listorder`) VALUES
(22, 18, 23, 50, 1),
(23, 20, 23, 50, 1),
(25, 22, 23, 50, 1),
(63, 60, 23, 50, 1),
(64, 61, 23, 50, 1),
(65, 62, 23, 50, 1),
(66, 63, 23, 50, 1),
(67, 64, 23, 50, 1),
(86, 83, 23, 50, 1),
(87, 84, 23, 50, 1),
(88, 85, 23, 50, 1),
(89, 86, 23, 50, 1),
(90, 87, 23, 50, 1),
(91, 88, 23, 50, 1),
(92, 89, 23, 50, 1),
(93, 90, 23, 50, 1),
(94, 91, 23, 50, 1),
(95, 92, 23, 50, 1),
(96, 93, 23, 50, 1),
(97, 94, 23, 50, 1),
(98, 95, 23, 50, 1),
(99, 96, 23, 50, 1),
(100, 97, 23, 50, 1),
(101, 98, 23, 50, 1),
(102, 99, 23, 50, 1),
(103, 100, 23, 50, 1),
(104, 101, 23, 50, 1),
(105, 102, 23, 50, 1),
(106, 103, 23, 50, 1),
(107, 104, 23, 50, 1),
(108, 105, 23, 50, 1),
(109, 106, 23, 50, 1),
(110, 107, 23, 50, 1),
(111, 108, 23, 50, 1),
(112, 109, 23, 50, 1),
(113, 110, 23, 50, 1),
(114, 111, 23, 50, 1),
(115, 112, 23, 50, 1),
(116, 113, 23, 50, 1),
(117, 114, 23, 50, 1),
(118, 115, 23, 50, 1),
(119, 116, 23, 50, 1),
(123, 120, 23, 50, 1),
(124, 121, 23, 50, 1),
(125, 122, 23, 50, 1),
(126, 123, 23, 50, 1),
(127, 124, 23, 50, 1),
(128, 125, 23, 50, 1),
(129, 126, 23, 50, 1),
(130, 127, 23, 50, 1),
(131, 128, 23, 50, 1),
(132, 129, 23, 50, 1),
(133, 130, 23, 50, 1),
(134, 131, 23, 50, 1),
(137, 134, 23, 50, 1),
(138, 135, 23, 50, 1),
(139, 136, 23, 50, 1),
(140, 137, 23, 50, 1),
(141, 138, 23, 50, 1),
(142, 139, 23, 50, 1),
(143, 140, 23, 50, 1),
(144, 141, 23, 50, 1),
(147, 144, 23, 50, 1),
(148, 145, 23, 50, 1),
(149, 148, 23, 50, 1),
(150, 149, 23, 50, 1),
(151, 150, 23, 50, 1),
(152, 151, 23, 50, 1),
(153, 152, 23, 50, 1),
(154, 153, 23, 50, 1),
(155, 154, 23, 50, 1),
(156, 155, 23, 50, 1),
(157, 156, 23, 50, 1),
(158, 157, 23, 50, 1),
(159, 158, 23, 50, 1),
(160, 159, 23, 50, 1),
(161, 160, 23, 50, 1),
(162, 161, 23, 50, 1),
(211, 230, 23, 50, 1),
(212, 231, 23, 50, 1),
(214, 266, 23, 50, 1),
(215, 267, 23, 50, 1),
(216, 268, 23, 50, 1),
(225, 280, 23, 50, 1),
(226, 282, 23, 50, 1),
(227, 283, 23, 50, 1);

-- --------------------------------------------------------

--
-- Structure de la table `phone`
--

CREATE TABLE `phone` (
  `ID` int(11) NOT NULL,
  `number` varchar(8) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `idclient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `phone`
--

INSERT INTO `phone` (`ID`, `number`, `status`, `idclient`) VALUES
(5, '24478320', 0, 5),
(9, '14785236', 0, 9),
(33, '95582551', 0, 26),
(35, '95582552', 0, 26),
(55, '96071021', 0, 48),
(105, '52532080', 0, 98),
(107, '29593848', 0, 100),
(108, '96071015', 0, 101);

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Contenu de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('cafun', '[{"db":"cafun","table":"typecard"},{"db":"cafun","table":"card"},{"db":"cafun","table":"wp_users"},{"db":"cafun","table":"wp_posts"},{"db":"cafun","table":"wp_options"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Contenu de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('cafun', '2019-03-28 13:19:36', '{"lang":"fr","collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Structure de la table `quizanswers`
--

CREATE TABLE `quizanswers` (
  `ID` int(11) NOT NULL,
  `idclient` int(11) NOT NULL,
  `quizid` int(11) NOT NULL,
  `quizanswers` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `quizanswers`
--

INSERT INTO `quizanswers` (`ID`, `idclient`, `quizid`, `quizanswers`, `date`) VALUES
(159, 5, 85, '[{"questionid":"83","questionanswer":1},{"questionid":"84","questionanswer":2},{"questionid":"88","questionanswer":2},{"questionid":"89","questionanswer":2}]', '2019-03-28 08:34:00');

-- --------------------------------------------------------

--
-- Structure de la table `scores`
--

CREATE TABLE `scores` (
  `ID` int(11) NOT NULL,
  `idclient` int(11) NOT NULL,
  `card` varchar(255) NOT NULL,
  `gameid` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `scores`
--

INSERT INTO `scores` (`ID`, `idclient`, `card`, `gameid`, `level`, `score`, `date`) VALUES
(417, 5, '4807655797429', 1, 159, 0, '2019-03-28 08:34:01');

-- --------------------------------------------------------

--
-- Structure de la table `smscode`
--

CREATE TABLE `smscode` (
  `ID` int(11) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `datecreation` int(11) NOT NULL,
  `expired` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `smscode`
--

INSERT INTO `smscode` (`ID`, `telephone`, `code`, `datecreation`, `expired`) VALUES
(17, '52739620', '5411', 1544539137, 1544539257),
(3, '95582550', '4949', 1544522694, 1544522814),
(4, '95582550', '6146', 1544522844, 1544522964),
(5, '95582550', '7868', 1544526541, 1544526661),
(6, '95582550', '4837', 1544526870, 1544526990),
(7, '95582550', '9712', 1544528967, 1544529087),
(8, '95582550', '4842', 1544529034, 1544529154),
(9, '95582550', '5349', 1544529112, 1544529232),
(10, '52739620', '4236', 1544538359, 1544538479),
(11, '52739620', '9134', 1544538363, 1544538483),
(12, '52739620', '3257', 1544538371, 1544538491),
(13, '52739620', '9414', 1544538419, 1544538539),
(14, '52739620', '8654', 1544538793, 1544538913),
(16, '95582550', '7132', 1544538843, 1544538963),
(18, '52739620', '4674', 1544539141, 1544539261),
(19, '52739620', '7243', 1544539206, 1544539326),
(20, '52739620', '8226', 1544539284, 1544539404),
(21, '52739620', '3192', 1544539304, 1544539424),
(22, '52739620', '4625', 1544539306, 1544539426),
(23, '52739620', '6588', 1544539306, 1544539426),
(24, '52739620', '1776', 1544539591, 1544539711),
(25, '52739620', '8474', 1544539622, 1544539742),
(26, '52739620', '9646', 1544539708, 1544539828),
(27, '52739620', '1586', 1544539737, 1544539857),
(28, '52739620', '1314', 1544539772, 1544539892),
(29, '52739620', '3461', 1544539786, 1544539906),
(30, '95582550', '6786', 1544539830, 1544539950),
(31, '95582550', '4882', 1544539858, 1544539978),
(32, '95582550', '7343', 1544539886, 1544540006),
(33, '95582550', '7334', 1544539910, 1544540030),
(34, '95582550', '3768', 1544539911, 1544540031),
(35, '95582550', '5172', 1544539997, 1544540117),
(36, '95582550', '3249', 1544540003, 1544540123),
(37, '95582550', '8656', 1544540004, 1544540124),
(38, '95582550', '3537', 1544540005, 1544540125),
(39, '95582550', '4856', 1544540006, 1544540126),
(40, '95582550', '4575', 1544540007, 1544540127),
(41, '95582550', '6767', 1544540008, 1544540128),
(42, '95582550', '7795', 1544540009, 1544540129),
(43, '95582550', '7596', 1544540010, 1544540130),
(44, '95582550', '5914', 1544540011, 1544540131),
(45, '95582550', '3311', 1544540012, 1544540132),
(46, '95582550', '7514', 1544540013, 1544540133),
(47, '95582550', '2914', 1544540014, 1544540134),
(48, '95582550', '7766', 1544540039, 1544540159),
(49, '52739620', '8348', 1544541866, 1544541986),
(50, '95582550', '3784', 1544541906, 1544542026),
(51, '52739620', '7271', 1544602933, 1544603053),
(52, '52739620', '6956', 1544699130, 1544699250),
(53, '52739620', '7122', 1544776436, 1544776556),
(54, '52739620', '9619', 1544778859, 1544778979),
(55, '52739620', '4221', 1544779055, 1544779175),
(56, '52739620', '1829', 1544779666, 1544779786),
(57, '95582550', '4177', 1544779673, 1544779793),
(58, '95582550', '8891', 1544786561, 1544786681),
(59, '52739620 ', '2647', 1544793892, 1544794012),
(60, '29593848 ', '2648', 1544794007, 1544794127),
(61, '52739620 ', '2933', 1544794557, 1544794677),
(62, '52739620', '3573', 1544794650, 1544794770),
(63, '52739620 ', '7361', 1544795073, 1544795193),
(64, '52739620 ', '2183', 1544795224, 1544795344),
(65, '52739620', '3218', 1544795282, 1544795402),
(66, 'borhene', '7593', 1544795750, 1544795870),
(67, '52739620', '9819', 1544800642, 1544800762),
(68, '52739620', '4582', 1544801419, 1544801539),
(69, '24478320', '2618', 1544801447, 1544801567),
(70, '52739620', '6518', 1544802067, 1544802187),
(71, '52739620', '2249', 1544802070, 1544802190),
(72, '52739620', '6237', 1544802071, 1544802191),
(73, '52739620', '9114', 1544802089, 1544802209),
(74, '52739620', '9399', 1544802102, 1544802222),
(75, '5273999 ', '3558', 1544802171, 1544802291),
(76, '24478320', '4394', 1544802184, 1544802304),
(77, '29593848 ', '5892', 1544807418, 1544807538),
(78, '29593848', '3544', 1544807455, 1544807575),
(79, '295938488', '6467', 1544807772, 1544807892),
(80, '29593848', '2386', 1544807812, 1544807932),
(81, '29593848', '1318', 1544972009, 1544972129),
(82, '22', '4822', 1545055119, 1545055239),
(83, '22', '5787', 1545055212, 1545055332),
(84, '29593848', '2382', 1545055867, 1545055987),
(85, '29593848', '8235', 1545056009, 1545056129),
(86, 'uu', '6661', 1545056183, 1545056303),
(87, '22', '1392', 1545056250, 1545056370),
(88, '22', '6126', 1545056324, 1545056444),
(89, '22', '5115', 1545056505, 1545056625),
(90, '22', '6515', 1545056546, 1545056666),
(91, '22', '9746', 1545056637, 1545056757),
(92, '22', '2847', 1545056669, 1545056789),
(93, '22', '6471', 1545056692, 1545056812),
(94, '22', '3511', 1545057059, 1545057179),
(95, '22', '7212', 1545057105, 1545057225),
(96, '22', '8114', 1545057192, 1545057312),
(97, '22', '4957', 1545057437, 1545057557),
(98, '22', '4692', 1545057473, 1545057593),
(99, '22', '7848', 1545057541, 1545057661),
(100, '22', '8664', 1545057611, 1545057731),
(101, '22', '9184', 1545057685, 1545057805),
(102, '22', '3233', 1545057739, 1545057859),
(103, '22', '4554', 1545057835, 1545057955),
(104, '22', '5924', 1545058122, 1545058242),
(105, '22', '9648', 1545058241, 1545058361),
(106, '22', '3176', 1545058270, 1545058390),
(107, '22', '4573', 1545058293, 1545058413),
(108, '22', '2892', 1545058617, 1545058737),
(109, '22', '4734', 1545061301, 1545061421),
(110, '22', '4157', 1545061341, 1545061461),
(111, '52739620', '8772', 1545061430, 1545061550),
(112, '29593848', '1634', 1545063052, 1545063172),
(113, '29593848', '3266', 1545064119, 1545064239),
(114, '29593848', '3295', 1545075226, 1545075346),
(115, '29593848', '5534', 1545124288, 1545124408),
(116, '29593848', '4427', 1545126159, 1545126279),
(117, '29593848', '3926', 1545126522, 1545126642),
(118, '29593848', '8127', 1545126578, 1545126698),
(119, '29593848', '9153', 1545126700, 1545126820),
(120, '29593848', '7253', 1545126736, 1545126856),
(121, '29593848', '7653', 1545126893, 1545127013),
(122, '29593848', '5182', 1545126985, 1545127105),
(123, '29593848', '1694', 1545128163, 1545128283),
(124, '29593848', '7328', 1545128611, 1545128731),
(125, '29593848', '9399', 1545128613, 1545128733),
(126, '29593848', '3377', 1545128616, 1545128736),
(127, '29593848', '4998', 1545128617, 1545128737),
(128, '29593848', '2931', 1545128617, 1545128737),
(129, '29593848', '6769', 1545128619, 1545128739),
(130, '29593848', '8832', 1545128620, 1545128740),
(131, '29593848', '9255', 1545128620, 1545128740),
(132, '29593848', '2815', 1545128620, 1545128740),
(133, '29593848', '8299', 1545128622, 1545128742),
(134, '29593848', '4446', 1545129853, 1545129973),
(135, '29593848', '6284', 1545129855, 1545129975),
(136, '29593848', '9648', 1545130043, 1545130163),
(137, '29593848', '9652', 1545130046, 1545130166),
(138, '29593848', '8875', 1545130199, 1545130319),
(139, '29593848', '4412', 1545131754, 1545131874),
(140, '29593848', '6776', 1545133577, 1545133697),
(141, '29593848', '5971', 1545140014, 1545140134),
(142, '29593848', '5244', 1545312593, 1545312713),
(143, '29593848', '4246', 1545313020, 1545313140),
(144, '29593848', '1388', 1545313160, 1545313280),
(145, '29593848', '9962', 1545313502, 1545313622),
(146, '29593848', '7945', 1545314502, 1545314622),
(147, '29593848', '2417', 1545314696, 1545314816),
(148, '29593848', '4747', 1545316623, 1545316743),
(149, '29593848', '2235', 1545389632, 1545389752),
(150, '29593848', '5613', 1545389635, 1545389755),
(151, '29593848', '2341', 1545390577, 1545390697),
(152, '29593848', '2629', 1545390879, 1545390999),
(153, '29593848', '1964', 1545842586, 1545842706),
(154, '29593848', '8813', 1545902281, 1545902401),
(155, '29593848', '8521', 1545903267, 1545903387),
(156, '29593848', '3229', 1545924964, 1545925084),
(157, '22', '9986', 1545925178, 1545925298),
(158, '22', '2651', 1545925211, 1545925331),
(159, '22', '9431', 1545925267, 1545925387),
(160, '22', '5157', 1545925336, 1545925456),
(161, '22', '7911', 1545925433, 1545925553),
(162, '29593848', '2275', 1545925651, 1545925771),
(163, '29593848', '2687', 1545931546, 1545931666),
(164, '29593848', '8647', 1545943915, 1545944035),
(165, '29593848', '3442', 1545989608, 1545989728),
(166, '29593848', '2331', 1545989770, 1545989890),
(167, '29593848', '5584', 1545992316, 1545992436),
(168, '52739620', '4316', 1545992462, 1545992582),
(169, '52739620', '9175', 1545992542, 1545992662),
(170, '29593848', '6717', 1546008330, 1546008450),
(171, '29593848', '5987', 1546600958, 1546601078),
(172, '29593848', '1967', 1550567111, 1550567231),
(173, '95582550', '2142', 1550567344, 1550567464),
(174, '52739620', '3454', 1550567656, 1550567776),
(175, '95777890', '2955', 1550567712, 1550567832),
(176, '96071015', '6728', 1550568326, 1550568446),
(177, '52739620', '3971', 1550569076, 1550569196),
(178, '96071021', '9375', 1550570668, 1550570788),
(179, '52739620', '9148', 1550571176, 1550571296),
(180, '52739620', '8852', 1550571617, 1550571737),
(181, '52739620', '9331', 1550571784, 1550571904),
(182, '52739620', '9898', 1550571927, 1550572047),
(183, '52739620', '9963', 1550572562, 1550572682),
(184, '29593848', '1169', 1550572991, 1550573111),
(185, '52739620', '9282', 1550573299, 1550573419),
(186, '52739620', '4496', 1550573752, 1550573872),
(187, '52739620', '7421', 1550574045, 1550574165),
(188, '52739620', '3167', 1550576915, 1550577035),
(189, '52739620', '6218', 1550576946, 1550577066),
(190, '52739620', '1911', 1550577222, 1550577342),
(191, '52739620', '7753', 1550577244, 1550577364),
(192, '29593848', '3621', 1550577383, 1550577503),
(193, '52739620', '6513', 1550577444, 1550577564),
(194, '52739620', '3312', 1550577462, 1550577582),
(195, '29593848', '3659', 1550577606, 1550577726),
(196, '29593848', '2658', 1550577609, 1550577729),
(197, '29593848', '5345', 1550577648, 1550577768),
(198, '52739620', '4852', 1550577786, 1550577906),
(199, '52739620', '4315', 1550577812, 1550577932),
(200, '29593848', '1427', 1550577849, 1550577969),
(201, '29593848', '9748', 1550577907, 1550578027),
(202, '29593848', '4151', 1550578028, 1550578148),
(203, '29593848', '1891', 1550578149, 1550578269),
(204, '29593848', '5893', 1550578248, 1550578368),
(205, '52739620', '2132', 1550578774, 1550578894),
(206, '52739620', '5222', 1550578979, 1550579099),
(207, '52739620', '8588', 1550579001, 1550579121),
(208, '52739620', '9362', 1550579083, 1550579203),
(209, '52739620', '5237', 1550579195, 1550579315),
(210, '52739620', '4839', 1550579221, 1550579341),
(211, '29593848', '8594', 1550579342, 1550579462),
(212, '29593848', '2442', 1550579434, 1550579554),
(213, '52739620', '8283', 1550579436, 1550579556),
(214, '52739620', '1786', 1550579465, 1550579585),
(215, '29593848', '2774', 1550579504, 1550579624),
(216, '29593848', '5135', 1550579637, 1550579757),
(217, '52739620', '3495', 1550579757, 1550579877),
(218, '29593848', '7265', 1550579786, 1550579906),
(219, '52739620', '7468', 1550579800, 1550579920),
(220, '29593848', '4647', 1550579847, 1550579967),
(221, '52739620', '4118', 1550579924, 1550580044),
(222, '52739620', '3776', 1550579944, 1550580064),
(223, '52739620', '6939', 1550580515, 1550580635),
(224, '52739620', '7973', 1550580550, 1550580670),
(225, '29593848', '4243', 1550580798, 1550580918),
(226, '52739620', '5287', 1550580813, 1550580933),
(227, '52739620', '3562', 1550580839, 1550580959),
(228, '96071015', '6262', 1550581157, 1550581277),
(229, '96071015', '7971', 1550581232, 1550581352),
(230, '29593848', '3191', 1550581288, 1550581408),
(231, '96071021', '2974', 1550581392, 1550581512),
(232, '29593848', '7554', 1550581874, 1550581994),
(233, '29593848', '6739', 1550582001, 1550582121),
(234, '29593848', '9987', 1550582108, 1550582228),
(235, '29593848', '2439', 1550582291, 1550582411),
(236, '29593848', '7151', 1550582436, 1550582556),
(237, '29593848', '8223', 1550582475, 1550582595),
(238, '29593848', '1637', 1550582582, 1550582702),
(239, '29593848', '1698', 1550582942, 1550583062),
(240, '29593848', '2239', 1550583109, 1550583229),
(241, '96071021', '9975', 1550593704, 1550593824),
(242, '96071021', '3382', 1550658048, 1550658168),
(243, '29593848', '2521', 1551091030, 1551091150),
(244, '96071021', '6823', 1551100738, 1551100858),
(245, '29593848', '9661', 1551287226, 1551287346),
(246, '29593848', '8512', 1551287407, 1551287527),
(247, '96071021', '3539', 1551697011, 1551697131),
(248, '96071021', '8814', 1551697324, 1551697444),
(249, '96071021', '4576', 1551697332, 1551697452),
(250, '29593848', '4216', 1551698345, 1551698465),
(251, '29593848', '5155', 1551698377, 1551698497),
(252, '29593848', '4134', 1551701138, 1551701258),
(253, '29593848', '7217', 1551701261, 1551701381),
(254, '29593848', '7622', 1551701261, 1551701381),
(255, '29593848', '6893', 1551701261, 1551701381),
(256, '29593848', '8276', 1551701325, 1551701445),
(257, '29593848', '3798', 1551705132, 1551705252),
(258, '29593848', '5385', 1551705140, 1551705260),
(259, '29593848', '9564', 1551734358, 1551734478),
(260, '52739620', '9711', 1551802258, 1551802378),
(261, '52739620', '3768', 1551804047, 1551804167),
(262, '52739620', '6547', 1551804058, 1551804178),
(263, '52739620', '6158', 1551868642, 1551868762),
(264, '52739620', '1814', 1551868671, 1551868791),
(265, '29593848', '1491', 1552043401, 1552043521),
(266, '29593848', '9357', 1552043475, 1552043595),
(267, '29593848', '1113', 1552043570, 1552043690),
(268, '29593848', '1929', 1552047603, 1552047723),
(269, '29593848', '7326', 1552051837, 1552051957),
(270, '29593848', '9191', 1552054963, 1552055083),
(271, '52739620', '5815', 1552055931, 1552056051),
(272, '52739620', '5962', 1552055995, 1552056115),
(273, '29593848', '6743', 1552056717, 1552056837),
(274, '96071021', '4431', 1552056741, 1552056861),
(275, '96071015', '5247', 1552057268, 1552057388),
(276, '96071021', '8479', 1552058105, 1552058225),
(277, '96071021', '3839', 1552058227, 1552058347),
(278, '96071021', '4461', 1552058366, 1552058486),
(279, '29593848', '7731', 1552058412, 1552058532),
(280, '29593848', '4784', 1552058508, 1552058628),
(281, '29593848', '5291', 1552058518, 1552058638),
(282, '29593848', '8484', 1552058549, 1552058669),
(283, '29593848', '5593', 1552058852, 1552058972),
(284, '29593848', '2597', 1552058967, 1552059087),
(285, '29593848', '1563', 1552059069, 1552059189),
(286, '29593848', '8384', 1552059335, 1552059455),
(287, '29593848', '2879', 1552059476, 1552059596),
(288, '29593848', '4182', 1552059584, 1552059704),
(289, '29593848', '8394', 1552061086, 1552061206),
(290, '29593848', '3215', 1552063531, 1552063651),
(291, '29593848', '2213', 1552063653, 1552063773),
(292, '29593848', '5654', 1552063751, 1552063871),
(293, '29593848', '5222', 1552063905, 1552064025),
(294, '29593848', '2364', 1552065580, 1552065700),
(295, '96071015', '3592', 1552662480, 1552662600),
(296, '96071015', '9195', 1552662565, 1552662685),
(297, '96071015', '6518', 1552662973, 1552663093),
(298, '29593848', '5234', 1552663234, 1552663354),
(299, '29593848', '9562', 1552666969, 1552667089),
(300, '29593848', '1148', 1552667511, 1552667631),
(301, '29593848', '2166', 1552667721, 1552667841),
(302, '29593848', '8856', 1552668308, 1552668428),
(303, '95582550', '5985', 1552668350, 1552668470),
(304, '95777890', '4742', 1552668674, 1552668794),
(305, '29593848', '8772', 1552668947, 1552669067),
(306, '96071015', '6876', 1552670595, 1552670715),
(307, '96071015', '9896', 1552670839, 1552670959),
(308, '96071015', '1516', 1552671164, 1552671284),
(309, '95582550', '4759', 1552895765, 1552895885),
(310, '96071015', '5957', 1552897247, 1552897367),
(311, '96071015', '1386', 1552897441, 1552897561),
(312, '95582550', '1968', 1552900068, 1552900188),
(313, '24785210', '1787', 1552902066, 1552902186),
(314, '24785210', '6868', 1552902114, 1552902234),
(315, '24785210', '4683', 1552902206, 1552902326),
(316, '96071015', '7915', 1552902238, 1552902358),
(317, '96071015', '8424', 1552902336, 1552902456),
(318, '96071015', '7318', 1552902413, 1552902533),
(319, '24785210', '4584', 1552902657, 1552902777),
(320, '24785210', '8677', 1552902776, 1552902896),
(321, '24785210', '8166', 1552904578, 1552904698),
(322, '24785210', '9441', 1552905011, 1552905131),
(323, '24785210', '3451', 1552905031, 1552905151),
(324, '29593848', '6847', 1552930098, 1552930218),
(325, '29593848', '5744', 1552930639, 1552930759),
(326, '29593848', '6922', 1552930717, 1552930837),
(327, '29593848', '6788', 1552930802, 1552930922),
(328, '29593848', '5914', 1552930895, 1552931015),
(329, '29593848', '5493', 1552933228, 1552933348),
(330, '29593848', '4436', 1552933326, 1552933446),
(331, '29593848', '7114', 1552933668, 1552933788),
(332, '29593848', '2747', 1552933815, 1552933935),
(333, '29593848', '1797', 1552934079, 1552934199),
(334, '29593848', '1249', 1552934332, 1552934452),
(335, '29593848', '6996', 1552934396, 1552934516),
(336, '29593848', '1594', 1552934663, 1552934783),
(337, '29593848', '9424', 1552940357, 1552940477),
(338, '29593848', '4336', 1552940595, 1552940715),
(339, '29593848', '5643', 1552941005, 1552941125),
(340, '29593848', '3422', 1552941448, 1552941568),
(341, '29593848', '9477', 1552941668, 1552941788),
(342, '29593848', '9689', 1552942012, 1552942132),
(343, '96071015', '7977', 1552942423, 1552942543),
(344, '96071015', '9278', 1552942605, 1552942725),
(345, '96071015', '1321', 1552942932, 1552943052),
(346, '29593848', '8937', 1552944693, 1552944813),
(347, '29593848', '7966', 1552944798, 1552944918),
(348, '29593848', '4294', 1552944994, 1552945114),
(349, '29593848', '6184', 1552945003, 1552945123),
(350, '96071015', '9894', 1552945985, 1552946105),
(351, '52532080', '5964', 1552979799, 1552979919),
(352, '52532080', '9782', 1552979901, 1552980021),
(353, '29593848', '6714', 1552980030, 1552980150),
(354, '52532080', '1356', 1552980108, 1552980228),
(355, '52532080', '5146', 1552980191, 1552980311),
(356, '29593848', '5684', 1552980312, 1552980432),
(357, '52532080', '8159', 1552980559, 1552980679),
(358, '29593848', '5335', 1552981269, 1552981389),
(359, '29593848', '8825', 1552981484, 1552981604),
(360, '29593848', '9584', 1552982247, 1552982367),
(361, '96071015', '8964', 1552983195, 1552983315),
(362, '98404378', '8664', 1552985019, 1552985139),
(363, '98753983', '9127', 1552985149, 1552985269),
(364, '26744864', '7887', 1552985175, 1552985295),
(365, '98753983', '6664', 1552987387, 1552987507),
(366, '29593848', '7263', 1553524409, 1553524529);

-- --------------------------------------------------------

--
-- Structure de la table `typecard`
--

CREATE TABLE `typecard` (
  `id` int(11) UNSIGNED NOT NULL,
  `titre` varchar(50) NOT NULL,
  `montant` varchar(50) NOT NULL,
  `duree` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `typecard`
--

INSERT INTO `typecard` (`id`, `titre`, `montant`, `duree`, `status`) VALUES
(1, 'silver', '4DT', '3mois', 'active'),
(2, 'premium', '20DT', '3mois', 'active'),
(3, 'gold', '100DT', '3mois', 'active');

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-12-07 16:28:48', '2018-12-07 15:28:48', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://ca-fan.chifco.com/bo', 'yes'),
(2, 'home', 'https://ca-fan.chifco.com/bo', 'yes'),
(3, 'blogname', 'cafidélité', 'yes'),
(4, 'blogdescription', 'CA fidélité plateform', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'amalelamri26@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:103:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:14:"html5-blank/?$";s:31:"index.php?post_type=html5-blank";s:44:"html5-blank/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=html5-blank&feed=$matches[1]";s:39:"html5-blank/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=html5-blank&feed=$matches[1]";s:31:"html5-blank/page/([0-9]{1,})/?$";s:49:"index.php?post_type=html5-blank&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:37:"html5-blank/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"html5-blank/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"html5-blank/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"html5-blank/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"html5-blank/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"html5-blank/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"html5-blank/(.+?)/embed/?$";s:44:"index.php?html5-blank=$matches[1]&embed=true";s:30:"html5-blank/(.+?)/trackback/?$";s:38:"index.php?html5-blank=$matches[1]&tb=1";s:50:"html5-blank/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?html5-blank=$matches[1]&feed=$matches[2]";s:45:"html5-blank/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?html5-blank=$matches[1]&feed=$matches[2]";s:38:"html5-blank/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?html5-blank=$matches[1]&paged=$matches[2]";s:45:"html5-blank/(.+?)/comment-page-([0-9]{1,})/?$";s:51:"index.php?html5-blank=$matches[1]&cpage=$matches[2]";s:34:"html5-blank/(.+?)(?:/([0-9]+))?/?$";s:50:"index.php?html5-blank=$matches[1]&page=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:20:{i:0;s:27:"Customtypes/customtypes.php";i:1;s:29:"QuizRESTAPI/Quiz REST API.php";i:2;s:31:"RedisCronjobs/RedisCronjobs.php";i:3;s:51:"acf-field-date-time-picker/acf-date-time-picker.php";i:4;s:36:"acf-repeater-master/acf-repeater.php";i:5;s:37:"admin-menu-editor-pro/menu-editor.php";i:6;s:30:"advanced-custom-fields/acf.php";i:7;s:29:"attachment-importer/index.php";i:8;s:41:"caauthentification/caauthentification.php";i:9;s:18:"caquiz/ca-quiz.php";i:10;s:31:"clients/Participant_builder.php";i:11;s:35:"customdashboard/Customdashboard.php";i:12;s:29:"easy-wp-smtp/easy-wp-smtp.php";i:13;s:15:"games/index.php";i:14;s:27:"material-wp/material-wp.php";i:15;s:19:"members/members.php";i:16;s:19:"rest-api/plugin.php";i:17;s:41:"wordpress-importer/wordpress-importer.php";i:18;s:41:"wordpress-php-info/wordpress-php-info.php";i:19;s:27:"wp-crontrol/wp-crontrol.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'cafun', 'yes'),
(41, 'stylesheet', 'cafun', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:29:"easy-wp-smtp/easy-wp-smtp.php";s:17:"swpsmtp_uninstall";}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:6:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:66:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:16:"restrict_content";b:1;s:10:"list_roles";b:1;s:12:"create_roles";b:1;s:12:"delete_roles";b:1;s:10:"edit_roles";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:7:"caadmin";a:2:{s:4:"name";s:7:"caadmin";s:12:"capabilities";a:54:{s:16:"activate_plugins";b:1;s:12:"create_roles";b:1;s:12:"create_users";b:1;s:19:"delete_others_pages";b:1;s:19:"delete_others_posts";b:1;s:12:"delete_pages";b:1;s:14:"delete_plugins";b:1;s:12:"delete_posts";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:12:"delete_roles";b:1;s:13:"delete_themes";b:1;s:12:"delete_users";b:1;s:14:"edit_dashboard";b:1;s:10:"edit_files";b:1;s:17:"edit_others_pages";b:1;s:17:"edit_others_posts";b:1;s:10:"edit_pages";b:1;s:12:"edit_plugins";b:1;s:10:"edit_posts";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:20:"edit_published_pages";b:1;s:20:"edit_published_posts";b:1;s:10:"edit_roles";b:1;s:18:"edit_theme_options";b:1;s:11:"edit_themes";b:1;s:10:"edit_users";b:1;s:6:"export";b:1;s:6:"import";b:1;s:15:"install_plugins";b:1;s:14:"install_themes";b:1;s:10:"list_roles";b:1;s:10:"list_users";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:13:"promote_users";b:1;s:13:"publish_pages";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:12:"remove_users";b:1;s:16:"restrict_content";b:1;s:13:"switch_themes";b:1;s:15:"unfiltered_html";b:1;s:11:"update_core";b:1;s:14:"update_plugins";b:1;s:13:"update_themes";b:1;s:12:"upload_files";b:1;}}}', 'yes'),
(95, 'fresh_site', '1', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"widget-area-1";a:0:{}s:13:"widget-area-2";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1553779932;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1553786929;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1553786954;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1553789192;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1553807970;a:1:{s:44:"puc_cron_check_updates-admin-menu-editor-pro";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1549275050;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(801, 'current_theme', 'HTML5 Blank', 'yes'),
(802, 'theme_mods_cafun', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(803, 'theme_switched', '', 'yes'),
(804, 'ws_ame_meta_boxes', '{"format":{"name":"Admin Menu Editor meta boxes","version":"1.0"},"screens":{"caproduits":{"submitdiv":{"id":"submitdiv","title":"Publier","context":"side","isPresent":true,"grantAccess":[],"defaultVisibility":[],"isHiddenByDefault":false,"className":"ameMetaBoxWrapper","wasPresent":true,"callbackFileName":"\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/meta-boxes.php"},"slugdiv":{"id":"slugdiv","title":"Slug","context":"normal","isPresent":true,"grantAccess":[],"defaultVisibility":[],"isHiddenByDefault":true,"className":"ameMetaBoxWrapper","wasPresent":true,"callbackFileName":"\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/meta-boxes.php"}},"cacategory":{"submitdiv":{"id":"submitdiv","title":"Publier","context":"side","isPresent":true,"grantAccess":[],"defaultVisibility":[],"isHiddenByDefault":false,"className":"ameMetaBoxWrapper","wasPresent":true,"callbackFileName":"\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/meta-boxes.php"},"slugdiv":{"id":"slugdiv","title":"Slug","context":"normal","isPresent":true,"grantAccess":[],"defaultVisibility":[],"isHiddenByDefault":true,"className":"ameMetaBoxWrapper","wasPresent":true,"callbackFileName":"\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/meta-boxes.php"}},"calivraisons":{"submitdiv":{"id":"submitdiv","title":"Publier","context":"side","isPresent":true,"grantAccess":[],"defaultVisibility":[],"isHiddenByDefault":false,"className":"ameMetaBoxWrapper","wasPresent":true,"callbackFileName":"\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/meta-boxes.php"},"slugdiv":{"id":"slugdiv","title":"Slug","context":"normal","isPresent":true,"grantAccess":[],"defaultVisibility":[],"isHiddenByDefault":true,"className":"ameMetaBoxWrapper","wasPresent":true,"callbackFileName":"\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/meta-boxes.php"}},"capaiements":{"submitdiv":{"id":"submitdiv","title":"Publier","context":"side","isPresent":true,"grantAccess":[],"defaultVisibility":[],"isHiddenByDefault":false,"className":"ameMetaBoxWrapper","wasPresent":true,"callbackFileName":"\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/meta-boxes.php"},"slugdiv":{"id":"slugdiv","title":"Slug","context":"normal","isPresent":true,"grantAccess":[],"defaultVisibility":[],"isHiddenByDefault":true,"className":"ameMetaBoxWrapper","wasPresent":true,"callbackFileName":"\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/meta-boxes.php"}},"caquestion":{"submitdiv":{"id":"submitdiv","title":"Publier","context":"side","isPresent":true,"grantAccess":[],"defaultVisibility":[],"isHiddenByDefault":false,"className":"ameMetaBoxWrapper","wasPresent":true,"callbackFileName":"\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/meta-boxes.php"},"slugdiv":{"id":"slugdiv","title":"Slug","context":"normal","isPresent":true,"grantAccess":[],"defaultVisibility":[],"isHiddenByDefault":true,"className":"ameMetaBoxWrapper","wasPresent":true,"callbackFileName":"\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/meta-boxes.php"}},"caquiz":{"submitdiv":{"id":"submitdiv","title":"Publier","context":"side","isPresent":true,"grantAccess":[],"defaultVisibility":[],"isHiddenByDefault":false,"className":"ameMetaBoxWrapper","wasPresent":true,"callbackFileName":"\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/meta-boxes.php"},"slugdiv":{"id":"slugdiv","title":"Slug","context":"normal","isPresent":true,"grantAccess":[],"defaultVisibility":[],"isHiddenByDefault":true,"className":"ameMetaBoxWrapper","wasPresent":true,"callbackFileName":"\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/meta-boxes.php"}},"acf":{"submitdiv":{"id":"submitdiv","title":"Publier","context":"side","isPresent":true,"grantAccess":[],"defaultVisibility":[],"isHiddenByDefault":false,"className":"ameMetaBoxWrapper","wasPresent":true,"callbackFileName":"\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/meta-boxes.php"},"slugdiv":{"id":"slugdiv","title":"Slug","context":"normal","isPresent":true,"grantAccess":[],"defaultVisibility":[],"isHiddenByDefault":true,"className":"ameMetaBoxWrapper","wasPresent":true,"callbackFileName":"\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/meta-boxes.php"}}}}', 'no'),
(1743, '_site_transient_timeout_theme_roots', '1553766094', 'no'),
(1744, '_site_transient_theme_roots', 'a:4:{s:5:"cafun";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(133, 'can_compress_scripts', '1', 'no'),
(140, 'nonce_key', '1q6l1LlTPfNWcA7GKLcAiOK)9,!^tGF;O6M##fKVb@BuMAFW7~nLEn@fVr+tRL`k', 'no'),
(141, 'nonce_salt', 'CL[)ZGT?tr,A)~p#h}YPG5y$Z_Y~KznjW=zrc,8`wKtXCFginZ0i3POs#3Uned$F', 'no'),
(142, 'auth_key', '7y{Z&zLD:hd3.C0F6~kj] 8]k1V&HX>.:7/uA@e7!E}Ub] xu&5:W//d>NUW_+83', 'no'),
(143, 'auth_salt', 'cdw+zs7=i][u[FM(24?Jk@+rR*~g)++8`0/yx/D6q_~cw+[Mmq#}FqsMB>*Pt|/e', 'no'),
(144, 'logged_in_key', '9jbY]0V]<@|`C,&_<$h!:|3UrwxO<MD,1ct*siI}3UE>(;(.^a!#!+.#7i+:GQa~', 'no'),
(145, 'logged_in_salt', '5^x:xjyZw<qaP|rMP4q@v|uJ__Bcn8pTEmKx*Yn8ZoYicN+9i-*G$Bj;KA?3abl)', 'no'),
(351, 'secure_auth_key', 'rhun7:M|tPvh@@E*N1[t.!rL33_kK;[*0=/t3y-*2]734PuPTZ6W9C-:/P#L{f0V', 'no'),
(352, 'secure_auth_salt', 'sRMmDdVMm3j:a<mxD#_QCNM$*t!DJ*[PXI;BrPZzGJlJBo+2O||V>g17]BeUdeP ', 'no'),
(806, 'new_admin_email', 'amalelamri26@gmail.com', 'yes'),
(796, 'ws_ame_dashboard_widgets', '{\n    "format": {\n        "name": "Admin Menu Editor dashboard widgets",\n        "version": "1.0"\n    },\n    "widgets": [\n        {\n            "id": "dashboard_right_now",\n            "title": "",\n            "location": "",\n            "priority": "",\n            "isPresent": true,\n            "grantAccess": [],\n            "widgetType": "wrapper",\n            "wrappedWidget": {\n                "title": "D\\u2019un coup d\\u2019\\u0153il",\n                "location": "normal",\n                "priority": "core"\n            },\n            "wasPresent": true,\n            "callbackFileName": "\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/dashboard.php"\n        },\n        {\n            "id": "dashboard_activity",\n            "title": "",\n            "location": "",\n            "priority": "",\n            "isPresent": true,\n            "grantAccess": [],\n            "widgetType": "wrapper",\n            "wrappedWidget": {\n                "title": "Activit\\u00e9",\n                "location": "normal",\n                "priority": "core"\n            },\n            "wasPresent": true,\n            "callbackFileName": "\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/dashboard.php"\n        },\n        {\n            "id": "dashboard_quick_press",\n            "title": "",\n            "location": "",\n            "priority": "",\n            "isPresent": true,\n            "grantAccess": [],\n            "widgetType": "wrapper",\n            "wrappedWidget": {\n                "title": "<span class=\\"hide-if-no-js\\">Brouillon rapide<\\/span> <span class=\\"hide-if-js\\">Vos brouillons r\\u00e9cents<\\/span>",\n                "location": "side",\n                "priority": "core"\n            },\n            "wasPresent": true,\n            "callbackFileName": "\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/dashboard.php"\n        },\n        {\n            "id": "dashboard_primary",\n            "title": "",\n            "location": "",\n            "priority": "",\n            "isPresent": true,\n            "grantAccess": [],\n            "widgetType": "wrapper",\n            "wrappedWidget": {\n                "title": "\\u00c9v\\u00e8nements et nouveaut\\u00e9s WordPress",\n                "location": "side",\n                "priority": "core"\n            },\n            "wasPresent": true,\n            "callbackFileName": "\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/dashboard.php"\n        },\n        {\n            "id": "dashboard_browser_nag",\n            "title": "",\n            "location": "",\n            "priority": "",\n            "isPresent": false,\n            "grantAccess": [],\n            "widgetType": "wrapper",\n            "wrappedWidget": {\n                "title": "Votre navigateur est obsol\\u00e8te\\u00a0!",\n                "location": "normal",\n                "priority": "high"\n            },\n            "wasPresent": false,\n            "callbackFileName": "\\/var\\/www\\/html\\/bo\\/wp-admin\\/includes\\/dashboard.php"\n        }\n    ],\n    "siteComponentHash": "9eed36dcc80c771740ba8b2a9983f96a"\n}', 'no'),
(1745, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.1.1";s:7:"version";s:5:"5.1.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.1.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.1.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.1.1";s:7:"version";s:5:"5.1.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.1.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.1.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.1.1";s:7:"version";s:5:"5.1.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1553764300;s:15:"version_checked";s:5:"5.0.4";s:12:"translations";a:0:{}}', 'no'),
(1174, 'category_children', 'a:0:{}', 'yes'),
(336, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:22:"amalelamri26@gmail.com";s:7:"version";s:5:"5.0.4";s:9:"timestamp";i:1552551316;}', 'no'),
(419, 'acf_version', '4.4.12', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(786, 'ws_menu_editor_pro', 'a:22:{s:22:"hide_advanced_settings";b:1;s:16:"show_extra_icons";b:0;s:11:"custom_menu";a:7:{s:4:"tree";a:20:{s:9:"index.php";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:0;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:10:">index.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:2:{i:0;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:0;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:19:"index.php>index.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:0:{}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:7:"Accueil";s:12:"access_level";s:4:"read";s:16:"extra_capability";s:0:"";s:4:"file";s:9:"index.php";s:12:"page_heading";s:0:"";s:6:"parent";s:9:"index.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:9:"index.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:1;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:1;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:25:"index.php>update-core.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:93:"Mises à jour <span class=\'update-plugins count-7\'><span class=\'update-count\'>7</span></span>";s:12:"access_level";s:11:"update_core";s:16:"extra_capability";s:0:"";s:4:"file";s:15:"update-core.php";s:12:"page_heading";s:0:"";s:6:"parent";s:9:"index.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:15:"update-core.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}}s:12:"grant_access";a:0:{}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:15:"Tableau de bord";s:12:"access_level";s:4:"read";s:16:"extra_capability";s:0:"";s:4:"file";s:9:"index.php";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:43:"menu-top menu-top-first menu-icon-dashboard";s:8:"hookname";s:14:"menu-dashboard";s:8:"icon_url";s:19:"dashicons-dashboard";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:9:"index.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:11:"separator_3";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:1;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:1;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:12:">separator_3";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:0:{}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:0:"";s:12:"access_level";s:4:"read";s:16:"extra_capability";s:0:"";s:4:"file";s:11:"separator_3";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:17:"wp-menu-separator";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:1;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:0:"";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:8:"edit.php";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:2;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:9:">edit.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:4:{i:0;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:0;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:17:"edit.php>edit.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:17:"Tous les articles";s:12:"access_level";s:10:"edit_posts";s:16:"extra_capability";s:0:"";s:4:"file";s:8:"edit.php";s:12:"page_heading";s:0:"";s:6:"parent";s:8:"edit.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:8:"edit.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:1;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:1;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:21:"edit.php>post-new.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:7:"Ajouter";s:12:"access_level";s:10:"edit_posts";s:16:"extra_capability";s:0:"";s:4:"file";s:12:"post-new.php";s:12:"page_heading";s:0:"";s:6:"parent";s:8:"edit.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:12:"post-new.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:2;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:2;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:40:"edit.php>edit-tags.php?taxonomy=category";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:11:"Catégories";s:12:"access_level";s:17:"manage_categories";s:16:"extra_capability";s:0:"";s:4:"file";s:31:"edit-tags.php?taxonomy=category";s:12:"page_heading";s:0:"";s:6:"parent";s:8:"edit.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:31:"edit-tags.php?taxonomy=category";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:3;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:3;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:40:"edit.php>edit-tags.php?taxonomy=post_tag";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:11:"Étiquettes";s:12:"access_level";s:16:"manage_post_tags";s:16:"extra_capability";s:0:"";s:4:"file";s:31:"edit-tags.php?taxonomy=post_tag";s:12:"page_heading";s:0:"";s:6:"parent";s:8:"edit.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:31:"edit-tags.php?taxonomy=post_tag";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:8:"Articles";s:12:"access_level";s:10:"edit_posts";s:16:"extra_capability";s:0:"";s:4:"file";s:8:"edit.php";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:37:"menu-top menu-icon-post open-if-no-js";s:8:"hookname";s:10:"menu-posts";s:8:"icon_url";s:20:"dashicons-admin-post";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:8:"edit.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:10:"upload.php";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:3;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:11:">upload.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:2:{i:0;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:0;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:21:"upload.php>upload.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:0:{}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:13:"Bibliothèque";s:12:"access_level";s:12:"upload_files";s:16:"extra_capability";s:0:"";s:4:"file";s:10:"upload.php";s:12:"page_heading";s:0:"";s:6:"parent";s:10:"upload.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:10:"upload.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:1;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:1;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:24:"upload.php>media-new.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:0:{}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:7:"Ajouter";s:12:"access_level";s:12:"upload_files";s:16:"extra_capability";s:0:"";s:4:"file";s:13:"media-new.php";s:12:"page_heading";s:0:"";s:6:"parent";s:10:"upload.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:13:"media-new.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}}s:12:"grant_access";a:0:{}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:7:"Médias";s:12:"access_level";s:12:"upload_files";s:16:"extra_capability";s:0:"";s:4:"file";s:10:"upload.php";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:24:"menu-top menu-icon-media";s:8:"hookname";s:10:"menu-media";s:8:"icon_url";s:21:"dashicons-admin-media";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:10:"upload.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:23:"edit.php?post_type=page";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:4;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:24:">edit.php?post_type=page";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:2:{i:0;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:0;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:47:"edit.php?post_type=page>edit.php?post_type=page";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:16:"Toutes les pages";s:12:"access_level";s:10:"edit_pages";s:16:"extra_capability";s:0:"";s:4:"file";s:23:"edit.php?post_type=page";s:12:"page_heading";s:0:"";s:6:"parent";s:23:"edit.php?post_type=page";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:23:"edit.php?post_type=page";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:1;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:1;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:51:"edit.php?post_type=page>post-new.php?post_type=page";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:7:"Ajouter";s:12:"access_level";s:10:"edit_pages";s:16:"extra_capability";s:0:"";s:4:"file";s:27:"post-new.php?post_type=page";s:12:"page_heading";s:0:"";s:6:"parent";s:23:"edit.php?post_type=page";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:27:"post-new.php?post_type=page";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:5:"Pages";s:12:"access_level";s:10:"edit_pages";s:16:"extra_capability";s:0:"";s:4:"file";s:23:"edit.php?post_type=page";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:23:"menu-top menu-icon-page";s:8:"hookname";s:10:"menu-pages";s:8:"icon_url";s:20:"dashicons-admin-page";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:23:"edit.php?post_type=page";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:17:"edit-comments.php";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:5;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:18:">edit-comments.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:1:{i:0;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:0;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:35:"edit-comments.php>edit-comments.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:21:"Tous les commentaires";s:12:"access_level";s:10:"edit_posts";s:16:"extra_capability";s:0:"";s:4:"file";s:17:"edit-comments.php";s:12:"page_heading";s:0:"";s:6:"parent";s:17:"edit-comments.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:17:"edit-comments.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:91:"Commentaires <span class="awaiting-mod count-0"><span class="pending-count">0</span></span>";s:12:"access_level";s:10:"edit_posts";s:16:"extra_capability";s:0:"";s:4:"file";s:17:"edit-comments.php";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:27:"menu-top menu-icon-comments";s:8:"hookname";s:13:"menu-comments";s:8:"icon_url";s:24:"dashicons-admin-comments";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:17:"edit-comments.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:30:"edit.php?post_type=html5-blank";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:6;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:31:">edit.php?post_type=html5-blank";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:4:{i:0;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:0;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:61:"edit.php?post_type=html5-blank>edit.php?post_type=html5-blank";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:21:"Article personnalisé";s:12:"access_level";s:10:"edit_posts";s:16:"extra_capability";s:0:"";s:4:"file";s:30:"edit.php?post_type=html5-blank";s:12:"page_heading";s:0:"";s:6:"parent";s:30:"edit.php?post_type=html5-blank";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:30:"edit.php?post_type=html5-blank";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:1;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:1;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:65:"edit.php?post_type=html5-blank>post-new.php?post_type=html5-blank";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:15:"Ajouter nouveau";s:12:"access_level";s:10:"edit_posts";s:16:"extra_capability";s:0:"";s:4:"file";s:34:"post-new.php?post_type=html5-blank";s:12:"page_heading";s:0:"";s:6:"parent";s:30:"edit.php?post_type=html5-blank";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:34:"post-new.php?post_type=html5-blank";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:2;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:2;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:88:"edit.php?post_type=html5-blank>edit-tags.php?taxonomy=category&amp;post_type=html5-blank";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:11:"Catégories";s:12:"access_level";s:17:"manage_categories";s:16:"extra_capability";s:0:"";s:4:"file";s:57:"edit-tags.php?taxonomy=category&amp;post_type=html5-blank";s:12:"page_heading";s:0:"";s:6:"parent";s:30:"edit.php?post_type=html5-blank";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:53:"edit-tags.php?taxonomy=category&post_type=html5-blank";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:3;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:3;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:88:"edit.php?post_type=html5-blank>edit-tags.php?taxonomy=post_tag&amp;post_type=html5-blank";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:11:"Étiquettes";s:12:"access_level";s:16:"manage_post_tags";s:16:"extra_capability";s:0:"";s:4:"file";s:57:"edit-tags.php?taxonomy=post_tag&amp;post_type=html5-blank";s:12:"page_heading";s:0:"";s:6:"parent";s:30:"edit.php?post_type=html5-blank";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:53:"edit-tags.php?taxonomy=post_tag&post_type=html5-blank";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:21:"Article personnalisé";s:12:"access_level";s:10:"edit_posts";s:16:"extra_capability";s:0:"";s:4:"file";s:30:"edit.php?post_type=html5-blank";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:30:"menu-top menu-icon-html5-blank";s:8:"hookname";s:22:"menu-posts-html5-blank";s:8:"icon_url";s:20:"dashicons-admin-post";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:30:"edit.php?post_type=html5-blank";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:11:"separator_4";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:7;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:1;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:12:">separator_4";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:0:{}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:0:"";s:12:"access_level";s:4:"read";s:16:"extra_capability";s:0:"";s:4:"file";s:11:"separator_4";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:17:"wp-menu-separator";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:1;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:0:"";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:10:"themes.php";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:8;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:11:">themes.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:5:{i:0;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:0;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:21:"themes.php>themes.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:7:"Thèmes";s:12:"access_level";s:13:"switch_themes";s:16:"extra_capability";s:0:"";s:4:"file";s:10:"themes.php";s:12:"page_heading";s:0:"";s:6:"parent";s:10:"themes.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:10:"themes.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:1;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:1;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:24:"themes.php>customize.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:13:"Personnaliser";s:12:"access_level";s:9:"customize";s:16:"extra_capability";s:0:"";s:4:"file";s:80:"customize.php?return=%2Fbo%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor";s:12:"page_heading";s:0:"";s:6:"parent";s:10:"themes.php";s:9:"css_class";s:20:"hide-if-no-customize";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:80:"customize.php?return=%2Fbo%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:2;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:2;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:22:"themes.php>widgets.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:7:"Widgets";s:12:"access_level";s:18:"edit_theme_options";s:16:"extra_capability";s:0:"";s:4:"file";s:11:"widgets.php";s:12:"page_heading";s:0:"";s:6:"parent";s:10:"themes.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:11:"widgets.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:3;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:3;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:24:"themes.php>nav-menus.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:5:"Menus";s:12:"access_level";s:18:"edit_theme_options";s:16:"extra_capability";s:0:"";s:4:"file";s:13:"nav-menus.php";s:12:"page_heading";s:0:"";s:6:"parent";s:10:"themes.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:13:"nav-menus.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:4;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:4;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:27:"themes.php>theme-editor.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:8:"Éditeur";s:10:"menu_title";s:8:"Éditeur";s:12:"access_level";s:11:"edit_themes";s:16:"extra_capability";s:0:"";s:4:"file";s:16:"theme-editor.php";s:12:"page_heading";s:0:"";s:6:"parent";s:10:"themes.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:16:"theme-editor.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:9:"Apparence";s:12:"access_level";s:13:"switch_themes";s:16:"extra_capability";s:0:"";s:4:"file";s:10:"themes.php";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:29:"menu-top menu-icon-appearance";s:8:"hookname";s:15:"menu-appearance";s:8:"icon_url";s:26:"dashicons-admin-appearance";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:10:"themes.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:11:"plugins.php";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:9;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:12:">plugins.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:3:{i:0;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:0;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:23:"plugins.php>plugins.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:22:"Extensions installées";s:12:"access_level";s:16:"activate_plugins";s:16:"extra_capability";s:0:"";s:4:"file";s:11:"plugins.php";s:12:"page_heading";s:0:"";s:6:"parent";s:11:"plugins.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:11:"plugins.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:1;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:1;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:30:"plugins.php>plugin-install.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:7:"Ajouter";s:12:"access_level";s:15:"install_plugins";s:16:"extra_capability";s:0:"";s:4:"file";s:18:"plugin-install.php";s:12:"page_heading";s:0:"";s:6:"parent";s:11:"plugins.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:18:"plugin-install.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:2;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:2;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:29:"plugins.php>plugin-editor.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:8:"Éditeur";s:12:"access_level";s:12:"edit_plugins";s:16:"extra_capability";s:0:"";s:4:"file";s:17:"plugin-editor.php";s:12:"page_heading";s:0:"";s:6:"parent";s:11:"plugins.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:17:"plugin-editor.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:90:"Extensions <span class=\'update-plugins count-3\'><span class=\'plugin-count\'>3</span></span>";s:12:"access_level";s:16:"activate_plugins";s:16:"extra_capability";s:0:"";s:4:"file";s:11:"plugins.php";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:26:"menu-top menu-icon-plugins";s:8:"hookname";s:12:"menu-plugins";s:8:"icon_url";s:23:"dashicons-admin-plugins";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:11:"plugins.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:9:"users.php";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:10;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:10:">users.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:5:{i:0;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:0;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:19:"users.php>users.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:21:"Tous les utilisateurs";s:12:"access_level";s:10:"list_users";s:16:"extra_capability";s:0:"";s:4:"file";s:9:"users.php";s:12:"page_heading";s:0:"";s:6:"parent";s:9:"users.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:9:"users.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:1;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:1;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:22:"users.php>user-new.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:7:"Ajouter";s:12:"access_level";s:12:"create_users";s:16:"extra_capability";s:0:"";s:4:"file";s:12:"user-new.php";s:12:"page_heading";s:0:"";s:6:"parent";s:9:"users.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:12:"user-new.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:2;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:2;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:21:"users.php>profile.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:12:"Votre profil";s:12:"access_level";s:4:"read";s:16:"extra_capability";s:0:"";s:4:"file";s:11:"profile.php";s:12:"page_heading";s:0:"";s:6:"parent";s:9:"users.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:11:"profile.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:3;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:3;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:15:"users.php>roles";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:5:"Roles";s:10:"menu_title";s:5:"Roles";s:12:"access_level";s:10:"edit_roles";s:16:"extra_capability";s:0:"";s:4:"file";s:5:"roles";s:12:"page_heading";s:0:"";s:6:"parent";s:9:"users.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:1;s:6:"custom";b:0;s:3:"url";s:20:"users.php?page=roles";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:4;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:4;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:18:"users.php>role-new";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:12:"Add New Role";s:10:"menu_title";s:12:"Add New Role";s:12:"access_level";s:12:"create_roles";s:16:"extra_capability";s:0:"";s:4:"file";s:8:"role-new";s:12:"page_heading";s:0:"";s:6:"parent";s:9:"users.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:1;s:6:"custom";b:0;s:3:"url";s:23:"users.php?page=role-new";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:12:"Utilisateurs";s:12:"access_level";s:10:"list_users";s:16:"extra_capability";s:0:"";s:4:"file";s:9:"users.php";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:24:"menu-top menu-icon-users";s:8:"hookname";s:10:"menu-users";s:8:"icon_url";s:21:"dashicons-admin-users";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:9:"users.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:9:"tools.php";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:11;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:10:">tools.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:5:{i:0;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:0;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:19:"tools.php>tools.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:18:"Outils disponibles";s:12:"access_level";s:10:"edit_posts";s:16:"extra_capability";s:0:"";s:4:"file";s:9:"tools.php";s:12:"page_heading";s:0:"";s:6:"parent";s:9:"tools.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:9:"tools.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:1;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:1;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:20:"tools.php>import.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:8:"Importer";s:12:"access_level";s:6:"import";s:16:"extra_capability";s:0:"";s:4:"file";s:10:"import.php";s:12:"page_heading";s:0:"";s:6:"parent";s:9:"tools.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:10:"import.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:2;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:2;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:20:"tools.php>export.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:8:"Exporter";s:12:"access_level";s:6:"export";s:16:"extra_capability";s:0:"";s:4:"file";s:10:"export.php";s:12:"page_heading";s:0:"";s:6:"parent";s:9:"tools.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:10:"export.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:3;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:3;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:30:"tools.php>export_personal_data";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:21:"Exporter les données";s:10:"menu_title";s:21:"Exporter les données";s:12:"access_level";s:27:"export_others_personal_data";s:16:"extra_capability";s:0:"";s:4:"file";s:20:"export_personal_data";s:12:"page_heading";s:0:"";s:6:"parent";s:9:"tools.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:1;s:6:"custom";b:0;s:3:"url";s:35:"tools.php?page=export_personal_data";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:4;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:4;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:30:"tools.php>remove_personal_data";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:20:"Effacer les données";s:10:"menu_title";s:20:"Effacer les données";s:12:"access_level";s:26:"erase_others_personal_data";s:16:"extra_capability";s:0:"";s:4:"file";s:20:"remove_personal_data";s:12:"page_heading";s:0:"";s:6:"parent";s:9:"tools.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:1;s:6:"custom";b:0;s:3:"url";s:35:"tools.php?page=remove_personal_data";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:6:"Outils";s:12:"access_level";s:10:"edit_posts";s:16:"extra_capability";s:0:"";s:4:"file";s:9:"tools.php";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:24:"menu-top menu-icon-tools";s:8:"hookname";s:10:"menu-tools";s:8:"icon_url";s:21:"dashicons-admin-tools";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:9:"tools.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:19:"options-general.php";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:12;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:20:">options-general.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:10:{i:0;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:0;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:39:"options-general.php>options-general.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:9:"Général";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:19:"options-general.php";s:12:"page_heading";s:0:"";s:6:"parent";s:19:"options-general.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:19:"options-general.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:1;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:1;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:39:"options-general.php>options-writing.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:9:"Écriture";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:19:"options-writing.php";s:12:"page_heading";s:0:"";s:6:"parent";s:19:"options-general.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:19:"options-writing.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:2;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:2;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:39:"options-general.php>options-reading.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:7:"Lecture";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:19:"options-reading.php";s:12:"page_heading";s:0:"";s:6:"parent";s:19:"options-general.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:19:"options-reading.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:3;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:3;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:42:"options-general.php>options-discussion.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:10:"Discussion";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:22:"options-discussion.php";s:12:"page_heading";s:0:"";s:6:"parent";s:19:"options-general.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:22:"options-discussion.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:4;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:4;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:37:"options-general.php>options-media.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:7:"Médias";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:17:"options-media.php";s:12:"page_heading";s:0:"";s:6:"parent";s:19:"options-general.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:17:"options-media.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:5;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:5;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:41:"options-general.php>options-permalink.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:10:"Permaliens";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:21:"options-permalink.php";s:12:"page_heading";s:0:"";s:6:"parent";s:19:"options-general.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:21:"options-permalink.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:6;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:6;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:31:"options-general.php>privacy.php";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:17:"Confidentialité ";s:12:"access_level";s:22:"manage_privacy_options";s:16:"extra_capability";s:0:"";s:4:"file";s:11:"privacy.php";s:12:"page_heading";s:0:"";s:6:"parent";s:19:"options-general.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:11:"privacy.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:7;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:7;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:36:"options-general.php>members-settings";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:7:"Members";s:10:"menu_title";s:7:"Members";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:16:"members-settings";s:12:"page_heading";s:0:"";s:6:"parent";s:19:"options-general.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:1;s:6:"custom";b:0;s:3:"url";s:41:"options-general.php?page=members-settings";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:8;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:8;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:32:"options-general.php>cfpi_phpinfo";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:8:"PHP Info";s:10:"menu_title";s:8:"PHP Info";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:12:"cfpi_phpinfo";s:12:"page_heading";s:0:"";s:6:"parent";s:19:"options-general.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:1;s:6:"custom";b:0;s:3:"url";s:37:"options-general.php?page=cfpi_phpinfo";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:9;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:9;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:31:"options-general.php>menu_editor";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:15:"Menu Editor Pro";s:10:"menu_title";s:15:"Menu Editor Pro";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:11:"menu_editor";s:12:"page_heading";s:0:"";s:6:"parent";s:19:"options-general.php";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:1;s:6:"custom";b:0;s:3:"url";s:36:"options-general.php?page=menu_editor";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:10:"Réglages ";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:19:"options-general.php";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:27:"menu-top menu-icon-settings";s:8:"hookname";s:13:"menu-settings";s:8:"icon_url";s:24:"dashicons-admin-settings";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:19:"options-general.php";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:29:"edit.php?post_type=cacategory";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:13;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:30:">edit.php?post_type=cacategory";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:0:{}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:11:"Catégories";s:10:"menu_title";s:11:"Catégories";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:29:"edit.php?post_type=cacategory";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:48:"menu-top toplevel_page_edit?post_type=cacategory";s:8:"hookname";s:39:"toplevel_page_edit?post_type=cacategory";s:8:"icon_url";s:75:"https://ca-fan.chifco.com/bo/wp-content/plugins/Customtypes/img/package.png";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:29:"edit.php?post_type=cacategory";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:31:"edit.php?post_type=calivraisons";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:14;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:32:">edit.php?post_type=calivraisons";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:0:{}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:9:"Livraison";s:10:"menu_title";s:9:"Livraison";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:31:"edit.php?post_type=calivraisons";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:50:"menu-top toplevel_page_edit?post_type=calivraisons";s:8:"hookname";s:41:"toplevel_page_edit?post_type=calivraisons";s:8:"icon_url";s:75:"https://ca-fan.chifco.com/bo/wp-content/plugins/Customtypes/img/shipped.png";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:31:"edit.php?post_type=calivraisons";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:30:"edit.php?post_type=capaiements";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:15;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:31:">edit.php?post_type=capaiements";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:0:{}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:8:"Paiement";s:10:"menu_title";s:8:"Paiement";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:30:"edit.php?post_type=capaiements";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:49:"menu-top toplevel_page_edit?post_type=capaiements";s:8:"hookname";s:40:"toplevel_page_edit?post_type=capaiements";s:8:"icon_url";s:75:"https://ca-fan.chifco.com/bo/wp-content/plugins/Customtypes/img/payment.png";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:30:"edit.php?post_type=capaiements";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:29:"edit.php?post_type=caproduits";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:16;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:30:">edit.php?post_type=caproduits";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:0:{}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:7:"Produit";s:10:"menu_title";s:7:"Produit";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:29:"edit.php?post_type=caproduits";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:48:"menu-top toplevel_page_edit?post_type=caproduits";s:8:"hookname";s:39:"toplevel_page_edit?post_type=caproduits";s:8:"icon_url";s:77:"https://ca-fan.chifco.com/bo/wp-content/plugins/Customtypes/img/checklist.png";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:29:"edit.php?post_type=caproduits";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:22:"edit.php?post_type=acf";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:17;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:23:">edit.php?post_type=acf";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:3:{i:0;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:0;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:45:"edit.php?post_type=acf>edit.php?post_type=acf";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:3:"ACF";s:10:"menu_title";s:3:"ACF";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:22:"edit.php?post_type=acf";s:12:"page_heading";s:0:"";s:6:"parent";s:22:"edit.php?post_type=acf";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:22:"edit.php?post_type=acf";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:1;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:1;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:33:"edit.php?post_type=acf>acf-export";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:8:"Exporter";s:10:"menu_title";s:8:"Exporter";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:10:"acf-export";s:12:"page_heading";s:0:"";s:6:"parent";s:22:"edit.php?post_type=acf";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:1;s:6:"custom";b:0;s:3:"url";s:38:"edit.php?post_type=acf&page=acf-export";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}i:2;a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:2;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:33:"edit.php?post_type=acf>acf-addons";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:7:"Add-ons";s:10:"menu_title";s:7:"Add-ons";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:10:"acf-addons";s:12:"page_heading";s:0:"";s:6:"parent";s:22:"edit.php?post_type=acf";s:9:"css_class";s:0:"";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:1;s:6:"custom";b:0;s:3:"url";s:38:"edit.php?post_type=acf&page=acf-addons";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:3:"ACF";s:10:"menu_title";s:3:"ACF";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:22:"edit.php?post_type=acf";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:59:"menu-top menu-icon-generic toplevel_page_edit?post_type=acf";s:8:"hookname";s:32:"toplevel_page_edit?post_type=acf";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:22:"edit.php?post_type=acf";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:11:"separator_5";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:18;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:1;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:12:">separator_5";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:0:"";s:10:"menu_title";s:0:"";s:12:"access_level";s:4:"read";s:16:"extra_capability";s:0:"";s:4:"file";s:11:"separator_5";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:17:"wp-menu-separator";s:8:"hookname";s:0:"";s:8:"icon_url";s:23:"dashicons-admin-generic";s:9:"separator";b:1;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:0;s:6:"custom";b:0;s:3:"url";s:0:"";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}s:20:"material-wp_settings";a:31:{s:10:"page_title";N;s:10:"menu_title";N;s:12:"access_level";N;s:16:"extra_capability";N;s:4:"file";N;s:12:"page_heading";N;s:8:"position";i:19;s:6:"parent";N;s:9:"css_class";N;s:8:"hookname";N;s:8:"icon_url";N;s:9:"separator";b:0;s:6:"colors";N;s:14:"is_always_open";N;s:7:"open_in";N;s:13:"iframe_height";N;s:11:"template_id";s:21:">material-wp_settings";s:14:"is_plugin_page";N;s:6:"custom";b:0;s:3:"url";N;s:16:"embedded_page_id";N;s:21:"embedded_page_blog_id";N;s:5:"items";a:0:{}s:12:"grant_access";a:1:{s:12:"role:caadmin";b:0;}s:7:"missing";b:0;s:6:"unused";b:0;s:6:"hidden";b:0;s:17:"hidden_from_actor";a:0:{}s:24:"restrict_access_to_items";b:0;s:24:"had_access_before_hiding";N;s:8:"defaults";a:20:{s:10:"page_title";s:11:"Material WP";s:10:"menu_title";s:11:"Material WP";s:12:"access_level";s:14:"manage_options";s:16:"extra_capability";s:0:"";s:4:"file";s:20:"material-wp_settings";s:12:"page_heading";s:0:"";s:6:"parent";N;s:9:"css_class";s:43:"menu-top toplevel_page_material-wp_settings";s:8:"hookname";s:34:"toplevel_page_material-wp_settings";s:8:"icon_url";s:13:"dashicons-art";s:9:"separator";b:0;s:6:"colors";b:0;s:14:"is_always_open";b:0;s:7:"open_in";s:11:"same_window";s:13:"iframe_height";i:0;s:14:"is_plugin_page";b:1;s:6:"custom";b:0;s:3:"url";s:35:"admin.php?page=material-wp_settings";s:16:"embedded_page_id";i:0;s:21:"embedded_page_blog_id";i:1;}}}s:6:"format";a:3:{s:4:"name";s:22:"Admin Menu Editor menu";s:7:"version";s:3:"7.0";s:13:"is_normalized";b:1;}s:13:"color_presets";a:0:{}s:20:"component_visibility";a:0:{}s:22:"has_modified_dashicons";b:0;s:9:"color_css";s:0:"";s:18:"color_css_modified";i:0;}s:18:"first_install_time";i:1549271970;s:21:"display_survey_notice";b:1;s:17:"plugin_db_version";i:140;s:24:"security_logging_enabled";b:0;s:17:"menu_config_scope";s:6:"global";s:13:"plugin_access";s:14:"manage_options";s:15:"allowed_user_id";N;s:28:"plugins_page_allowed_user_id";N;s:27:"show_deprecated_hide_button";b:1;s:37:"dashboard_hiding_confirmation_enabled";b:1;s:21:"submenu_icons_enabled";s:9:"if_custom";s:22:"force_custom_dashicons";b:1;s:16:"ui_colour_scheme";s:7:"classic";s:13:"visible_users";a:0:{}s:23:"show_plugin_menu_notice";b:0;s:20:"unused_item_position";s:8:"relative";s:15:"error_verbosity";i:2;s:20:"compress_custom_menu";b:0;s:16:"is_active_module";a:1:{s:19:"highlight-new-menus";b:0;}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(788, 'ame_pro_external_updates', 'O:8:"stdClass":5:{s:9:"lastCheck";i:1553768446;s:14:"checkedVersion";s:3:"2.5";s:6:"update";O:8:"stdClass":9:{s:4:"slug";s:21:"admin-menu-editor-pro";s:7:"version";s:5:"2.8.1";s:12:"download_url";N;s:12:"translations";a:0:{}s:2:"id";i:0;s:8:"homepage";s:27:"http://adminmenueditor.com/";s:6:"tested";s:3:"5.0";s:14:"upgrade_notice";N;s:8:"filename";s:37:"admin-menu-editor-pro/menu-editor.php";}s:11:"updateClass";s:22:"Puc_v4p1_Plugin_Update";s:15:"updateBaseClass";s:13:"Plugin_Update";}', 'no'),
(789, 'material-wp_first_run', '1', 'yes'),
(790, 'material-wp_compiled-version', '5c5809d9b87f9', 'yes'),
(791, 'material-wp_compiler', '15614', 'yes'),
(792, 'material-wp_compiled', '1', 'yes'),
(793, 'material-wp_activation-compiled', '1', 'yes'),
(794, 'material-wp_options', 's:513:"a:15:{s:13:"primary-color";s:7:"#e31b28";s:12:"accent-color";s:7:"#ff1414";s:17:"menu-random-color";s:1:"1";s:17:"menu-custom-color";s:4:"#333";s:10:"menu-width";s:3:"280";s:15:"parallax-height";s:3:"300";s:16:"stage-min-height";s:3:"500";s:15:"adminbar-height";s:2:"55";s:23:"adminbar-subitem-height";s:2:"40";s:26:"adminbar-subitem-font-size";s:2:"16";s:16:"parallax-options";s:7:"default";s:17:"parallax-bg-color";s:7:"#e31b28";s:10:"default-bg";s:3:"bg1";s:9:"custom-bg";s:2:"59";s:11:"custom-logo";s:2:"58";}";', 'yes'),
(1747, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1553764303;s:7:"checked";a:4:{s:5:"cafun";s:5:"1.4.3";s:14:"twentynineteen";s:3:"1.0";s:15:"twentyseventeen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.6";}s:8:"response";a:3:{s:14:"twentynineteen";a:4:{s:5:"theme";s:14:"twentynineteen";s:11:"new_version";s:3:"1.3";s:3:"url";s:44:"https://wordpress.org/themes/twentynineteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentynineteen.1.3.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"2.1";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.2.1.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.9.zip";}}s:12:"translations";a:0:{}}', 'no'),
(1748, '_transient_timeout_easy_wp_smtp_sd_code', '1553822578', 'no'),
(1749, '_transient_easy_wp_smtp_sd_code', '88f2f79ff678b2cbb257ba127643a43d', 'no'),
(1750, 'swpsmtp_options', 'a:8:{s:16:"from_email_field";s:22:"amalelamri26@gmail.com";s:15:"from_name_field";s:12:"cafidélité";s:23:"force_from_name_replace";b:0;s:13:"smtp_settings";a:10:{s:4:"host";s:14:"smtp.gmail.com";s:15:"type_encryption";s:3:"ssl";s:4:"port";s:3:"465";s:13:"autentication";s:3:"yes";s:8:"username";s:20:"chifco.dev@gmail.com";s:8:"password";s:16:"Y2hpZmNvMjAxNyo=";s:12:"enable_debug";i:1;s:12:"insecure_ssl";b:0;s:12:"encrypt_pass";b:0;s:13:"log_file_name";s:27:"5c9cb4a06c602_debug_log.txt";}s:15:"allowed_domains";s:24:"Y2EtZmFuLmNoaWZjby5jb20=";s:14:"reply_to_email";s:0:"";s:17:"email_ignore_list";s:0:"";s:19:"enable_domain_check";b:0;}', 'yes'),
(1751, '_transient_timeout_plugin_slugs', '1553854847', 'no'),
(1752, '_transient_plugin_slugs', 'a:23:{i:0;s:37:"admin-menu-editor-pro/menu-editor.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:51:"acf-field-date-time-picker/acf-date-time-picker.php";i:3;s:36:"acf-repeater-master/acf-repeater.php";i:4;s:19:"akismet/akismet.php";i:5;s:29:"attachment-importer/index.php";i:6;s:18:"caquiz/ca-quiz.php";i:7;s:41:"caauthentification/caauthentification.php";i:8;s:31:"clients/Participant_builder.php";i:9;s:35:"customdashboard/Customdashboard.php";i:10;s:27:"Customtypes/customtypes.php";i:11;s:29:"easy-wp-smtp/easy-wp-smtp.php";i:12;s:15:"games/index.php";i:13;s:9:"hello.php";i:14;s:27:"material-wp/material-wp.php";i:15;s:19:"members/members.php";i:16;s:29:"QuizRESTAPI/Quiz REST API.php";i:17;s:31:"RedisCronjobs/RedisCronjobs.php";i:18;s:21:"wp-exporter/index.php";i:19;s:41:"wordpress-importer/wordpress-importer.php";i:20;s:41:"wordpress-php-info/wordpress-php-info.php";i:21;s:27:"wp-crontrol/wp-crontrol.php";i:22;s:19:"rest-api/plugin.php";}', 'no'),
(1753, 'smtp_test_mail', 'a:3:{s:10:"swpsmtp_to";s:22:"amal.elamri@chifco.com";s:15:"swpsmtp_subject";s:2:"ca";s:15:"swpsmtp_message";s:2:"ui";}', 'yes'),
(1625, '_site_transient_timeout_browser_75b3341da9e7208fc03d0909f69991aa', '1554130258', 'no'),
(1626, '_site_transient_browser_75b3341da9e7208fc03d0909f69991aa', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"72.0.3626.121";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(1732, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1553807431', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1733, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:5:"\n		\n	";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:51:"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Planète WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:17:"https://wpfr.net/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Toute l’actualité de WordPress en français !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:4:{i:0;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"Joomla ou WordPress : et s’il ne devait en rester qu’un ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/Dqk6yUo7ZC0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:117:"https://wpmarmite.com/joomla-ou-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=joomla-ou-wordpress";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 26 Mar 2019 07:00:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:316:"\n		        \nJoomla ou WordPress : quel CMS choisir pour votre projet ? Vous avez beau tourner et retourner le problème dans tous les sens, vous n’arrivez pas à vous décider entre...\nL’article Joomla ou WordPress : et s&rsquo;il ne devait en rester qu&rsquo;un ? est apparu en premier sur WP Marmite.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Marmite";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:694:"<p><img width="1500" height="830" src="https://wpmarmite.com/wp-content/uploads/2019/03/joomla-wordpress.jpg" class="attachment-full size-full wp-post-image" alt="" /></p>\n<p>Joomla ou WordPress : quel CMS choisir pour votre projet ? Vous avez beau tourner et retourner le problème dans tous les sens, vous n’arrivez pas à vous décider entre...</p>\n<p>L’article <a rel="nofollow" href="https://wpmarmite.com/joomla-ou-wordpress/">Joomla ou WordPress : et s&rsquo;il ne devait en rester qu&rsquo;un ?</a> est apparu en premier sur <a rel="nofollow" href="https://wpmarmite.com">WP Marmite</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/Dqk6yUo7ZC0" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:117:"https://wpmarmite.com/joomla-ou-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=joomla-ou-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:79:"Contribuer au Projet WordPress quand on est pas développeur: c’est possible!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/gdKegtKPBF8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:100:"https://thivinfo.com/blog/contribuer-au-projet-wordpress-quand-on-est-pas-developpeur-cest-possible/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Mar 2019 16:30:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:693:"\n		        Contribuer au projet WordPress? moi? mais je ne suis pas développeur! Cette phrase nous l&#8217;avons tous entendu&#8230; et c&#8217;est elle qui m&#8217;a donné envie de donner cette conférence au WordCamp Bordeaux 2019. Des développeurs qui contribuent&#8230; l’écosystème WordPress en regorge&#8230; par contre des utilisateurs finaux, non développeurs, qui contribuent&#8230; alors là il y en a beaucoup moins. Le but de cette conférence est de faire un tour d&#8217;horizon des divers univers de contribution possible lorsque nous ne sommes pas développeur. Accessibilité Core Polyglotte Support wp.tv Sont quelques uns des univers qu&#8217;on évoquera!		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:763:"Contribuer au projet WordPress? moi? mais je ne suis pas développeur! Cette phrase nous l&#8217;avons tous entendu&#8230; et c&#8217;est elle qui m&#8217;a donné envie de donner cette conférence au WordCamp Bordeaux 2019. Des développeurs qui contribuent&#8230; l’écosystème WordPress en regorge&#8230; par contre des utilisateurs finaux, non développeurs, qui contribuent&#8230; alors là il y en a beaucoup moins. Le but de cette conférence est de faire un tour d&#8217;horizon des divers univers de contribution possible lorsque nous ne sommes pas développeur. Accessibilité Core Polyglotte Support wp.tv Sont quelques uns des univers qu&#8217;on évoquera!<img src="http://feeds.feedburner.com/~r/wpfr/~4/gdKegtKPBF8" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:100:"https://thivinfo.com/blog/contribuer-au-projet-wordpress-quand-on-est-pas-developpeur-cest-possible/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Se rendre à la soirée de clôture";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/4W8_Qg0UIPI/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:79:"https://2019.bordeaux.wordcamp.org/2019/03/23/se-rendre-a-la-soiree-de-cloture/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Mar 2019 23:19:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:373:"\n		        Le Magasin général se situe sur la rive droite bordelaise. Pour vous y rendre, plusieurs possibilités : En tram Prenez le tram B à l’arrêt CAPC, juste devant la Cité Mondiale – qui accueille la journée de conférences, puis descendez à l’arrêt Quinconces pour prendre la ligne B, direction Porte de Bourgogne. Vous pouvez aussi [&#8230;]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"WordCamp Bordeaux";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2361:"<div class="googlemaps"></div>\n\n\n\n<p>Le Magasin général se situe sur la rive droite bordelaise. Pour vous y rendre, plusieurs possibilités :</p>\n\n\n\n<h3>En tram</h3>\n\n\n\n<p>Prenez <strong>le tram B à l’arrêt CAPC</strong>, juste devant la Cité Mondiale – qui accueille la journée de conférences, puis <strong>descendez à l’arrêt Quinconces pour prendre la ligne B, direction Porte de Bourgogne</strong>.\n Vous pouvez aussi tout simplement vous rendre à pied vers la place des \nQuinconces ou la place de la Bourse pour récupérer le tram B, histoire \nde profiter de la vue :).</p>\n\n\n\n<p>Là, grimpez dans le <strong>tram A pour vous arrêter à l’arrêt Stalingrad</strong>,\n ou traversez le pont de pierre à pied pour profiter, là encore,de la \njolie vue qu’il propose sur la ville. Parvenu·e rive droite, Il vous \nfaudra marcher une dizaine de minutes supplémentaires, le long de la \nGaronne – qui vous propose également une très belle vue sur la ville, \navant d’arriver à DARWIN, qui abrite le Magasin général.</p>\n\n\n\n<h3>En bateau</h3>\n\n\n\n<p>Marchez le long du quai en direction de la place des Quinquonces, sur laquelle vous pourrez accéder au <strong>Bat<sup>3</sup>, la navette fluviale permettant de traverser la Garonne d’une rive à l’autre</strong>.\n Elle vous déposera au pied de la place Stalingrad, de laquelle vous \npourrez partir pour longer la rive jusqu’à l’éco-système DARWIN.</p>\n\n\n\n<h3>En vélo</h3>\n\n\n\n<p>Une station de vélo V<sup>3</sup> se situe à deux pas de la Cité \nMondiale, vous pourrez ainsi longer la Garonne en direction du pont de \npierre, puis remonter celle-ci jusqu’à DARWIN, où vous trouverez une \nstation pour garer votre vélo le temps de la soirée.</p>\n\n\n\n<figure class="wp-block-image"><img src="https://2019.bordeaux.wordcamp.org/files/2019/02/soiree-cloture-wcbdx-2019-01-800x520.jpg" alt="Foodtruck du Magasin général, Darwin éco-système" class="wp-image-3280" /></figure>\n\n\n\n<h2>Soirée de clôture,<br>WordCamp Bordeaux 2019</h2>\n\n\n\n<p>Magasin Général – Darwin écosystème,<br>87 quai des Queyries – 33&nbsp;000 Bordeaux<br><em>à partir de 19H</em><br><a href="https://magasingeneral.camp" target="_blank" rel="noreferrer noopener">magasingeneral.camp</a></p><img src="http://feeds.feedburner.com/~r/wpfr/~4/4W8_Qg0UIPI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:79:"https://2019.bordeaux.wordcamp.org/2019/03/23/se-rendre-a-la-soiree-de-cloture/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:89:"Coût d’un site Web WordPress – La vérité derrière la construction d’un site Web";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/Hyg_gPV463U/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:51:"https://kinsta.com/fr/blog/cout-site-web-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Mar 2019 02:43:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:351:"\n		        WordPress peut avoir commencé comme une simple plateforme de blogging. Mais il a explosé en un CMS à part entière ces dernières années. Des entreprises comme ...\nThe post Coût d’un site Web WordPress &#8211; La vérité derrière la construction d’un site Web appeared first on Hébergement WordPress infogéré Kinsta.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Kinsta";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:31274:"<p>WordPress peut avoir commencé comme une simple plateforme de blogging. Mais il a explosé en un CMS à part entière ces dernières années. Des entreprises comme <a href="https://www.whitehouse.gov/" target="_blank" rel="noopener noreferrer">The White House</a>, <a href="http://jquery.com/" target="_blank" rel="noopener noreferrer">jQuery</a>, <a href="http://dyn.com/" target="_blank" rel="noopener noreferrer">Dyn</a>, <a href="https://www.nginx.com/" target="_blank" rel="noopener noreferrer">NGINX</a>, <a href="https://www.nytco.com/" target="_blank" rel="noopener noreferrer">The New York Times</a>, appellent toutes <a href="https://kinsta.com/blog/wordpress-site-examples/" target="_blank" rel="noopener noreferrer">WordPress leur maison en ligne</a>.</p>\n<p>Mais ce ne sont que les meilleurs. <a href="https://trends.builtwith.com/cms/WordPress" target="_blank" rel="noopener noreferrer">Selon BuiltWith</a>, 19 922 280 autres sites Web en direct (et ce n&rsquo;est pas fini) utilisent également WordPress. Il y a une raison pour laquelle tant de sites Web l&rsquo;utilisent. Plutôt que de facturer leur CMS d&rsquo;entreprise, la société fondatrice, <a href="https://automattic.com/" target="_blank" rel="noopener noreferrer">Automattic</a>, a choisi de le garder open source.</p>\n<p>Donc techniquement parlant, c&rsquo;est « gratuit ». Mais rien n&rsquo;est vraiment gratuit. Il y a toujours un prix à payer. Combien ça coûte vraiment, alors ? Combien cela vous coûterait-il de gérer un site de taille moyenne ou un site concurrent de celui de Mashable ou de TechCrunch ? Allons le découvrir.</p>\n<div class="cta-mini">\n  <div class=\'cta-mini--default\'>\n    <h4 class="heading--small mt--0 mb--30 text--superbold">Les temps d\'indisponibilité fréquents ou les problèmes WordPress nuisent-ils à votre entreprise ?</h4>\n    <div class="text--normal">Kinsta fournit une solution d\'hébergement tout-en-un conçue pour vous faire gagner du temps ! Laissez-nous nous occuper des petits détails (mise en cache, sauvegardes, etc.), et concentrez-vous sur ce que vous faites le mieux, c\'est-à-dire la croissance de votre entreprise.</div>\n    <div class=\'mt--10\'>\n      <a class=\'button--purple button--small\' href="https://kinsta.com/fr/fonctionnalites/">Jetez un coup d\'oeil à nos fonctionnalités</a>\n    </div>\n  </div>\n</div>\n\n<h2>Pourquoi WordPress n&rsquo;est pas vraiment gratuit</h2>\n<p><a href="https://kinsta.com/fr/blog/wordpress-com-vs-wordpress-org/" target="_blank" rel="noopener noreferrer">WordPress.org vous dira que c&rsquo;est complètement gratuit</a>. Mais&#8230;. eh bien, ça ne l&rsquo;est pas. Du moins, ce n&rsquo;est pas le cas si vous voulez que votre site Web WordPress soit une entité en ligne pleinement fonctionnelle. Dans ce cas, vous aurez besoin de quelque chose en plus. Les <i>extras dont</i> vous aurez besoin pour fonctionner sont là où le coût supplémentaire entre en ligne de compte.</p>\n<p>Et ces coûts supplémentaires se traduisent dans les catégories suivantes :</p>\n<ul>\n<li><a href="#web-hosting">Hébergement Web</a></li>\n<li><a href="#domain-name">Un nom de domaine</a></li>\n<li><a href="#design-and-themes">Design et thèmes</a></li>\n<li><a href="#plugins">Plugins/extensions (aussi connus sous le nom d&rsquo;applications)</a></li>\n<li><a href="#ecommerce-features">Fonctionnalités eCommerce</a></li>\n<li><a href="#time">Votre temps</a></li>\n</ul>\n<p>Je vais vous présenter chaque catégorie et vous dire combien elles vous coûteront réellement. Beaucoup d&rsquo;autres entreprises en ligne utilisent WordPress, mais cela ne signifie pas que c&rsquo;est la bonne solution pour <i>votre </i>entreprise. Pour vous aider à déterminer si c&rsquo;est le cas ou non, jetons un coup d&rsquo;œil à chaque catégorie.</p>\n<h2 id="web-hosting">Hébergement Web (30 $ &#8211; 900 $)</h2>\n<p>Décider dans quel hébergeur web investir est l&rsquo;un des choix les plus importants que vous ferez lors de la création de votre site WordPress. L&rsquo;hébergement Web avec Kinsta peut varier de 30 $ par mois à 900 $ par mois.</p>\n<p>C&rsquo;est une fourchette énorme. Mais la bonne nouvelle, c&rsquo;est que vous pouvez <a href="https://kinsta.com/fr/plans/" target="_blank" rel="noopener noreferrer">choisir le plan</a> qui correspond le mieux à votre bande passante idéale et à votre budget.</p>\n<div class="wp-caption aligncenter" style="max-width: 1856px"><img src="https://kinsta.com/fr/wp-content/uploads/sites/4/2017/12/tarifs-hebergement-wordpress-kinsta.png" alt="Tarifs d\'hébergement WordPress Kinsta" width="1856" height="647" /><p class="wp-caption-text">Tarifs d&rsquo;hébergement WordPress Kinsta</p></div>\n<p>Bien entendu, vous pouvez également héberger votre site directement sur WordPress.</p>\n<div class="wp-caption aligncenter" style="max-width: 2304px"><img src="https://kinsta.com/fr/wp-content/uploads/sites/4/2017/12/hebergement-wordpress-com.png" alt="Hébergement WordPress.com" width="2304" height="1438" /><p class="wp-caption-text">Hébergement WordPress.com</p></div>\n<p>Malheureusement, l&rsquo;hébergement est à peu près <i>tout ce que </i>vous pouvez faire avec l&rsquo;offre de WordPress. Bien que les prix soient plus bas, WordPress ne surveillera pas votre site Web pour vous ou ne vous aidera pas à résoudre les incompatibilités entre les plugins tiers.</p>\n<p>Kinsta, d&rsquo;un autre côté, le fera. Vous devez choisir un plan que vous pouvez vous permettre, mais vous devez également choisir un plan qui donnera à votre entreprise les meilleures chances de succès. Pour beaucoup d&rsquo;entre vous, ce prix se situera quelque part entre les deux. <strong>Avec l&rsquo;hébergement de site web, vous en avez pour votre argent.</strong></p>\n<p>N&rsquo;oubliez pas : plus l&rsquo;hébergement que vous choisissez est bon marché, en général moins il sera de qualité. L&rsquo;hébergement bon marché a tendance à surpeupler les serveurs pour faire un profit. Cela peut avoir un impact considérable sur les performances de votre site.</p>\n<p>L&rsquo;hébergement plus coûteux, par contre, est habituellement plus flexible et comprend des fonctions avancées comme l&rsquo;isolation des ressources, ce qui signifie que vous ne partagerez pas les ressources avec d&rsquo;autres sites. Ceci assure que votre site reste en ligne pendant les pics de trafic. Quel que soit votre choix, choisissez une option qui offre le bon prix, des fonctions flexibles et le support dont vous avez tant besoin.</p>\n<h3>SSL</h3>\n<p>En fonction de l&rsquo;hébergeur ou de vos besoins spécifiques, il se peut que vous deviez également dépenser de l&rsquo;argent pour un certificat SSL. Kinsta, par exemple, a des <a href="https://kinsta.com/fr/blog/hebergement-ssl-gratuit/" target="_blank" rel="noopener noreferrer">certificats SSL gratuits</a>, mais ce ne sont pas tous les hébergeurs qui offrent cela. De plus, si vous avez besoin d&rsquo;un certificat SSL Extended Validation, cela vous coûtera cher. Ceux-ci peuvent varier de 50 $ à 200 $ par année.</p>\n<h2 id="domain-name">Nom de domaine (10 $ à 30 $)</h2>\n<p>Lorsque vous enregistrez un nom de domaine, vous achetez une URL de site, ou adresse, où les utilisateurs peuvent aller pour voir le contenu de vos pages Web.</p>\n<div class="wp-caption aligncenter" style="max-width: 780px"><img src="https://kinsta.com/fr/wp-content/uploads/sites/4/2017/12/nom-domaine.png" alt="Nom de domaine" width="780" height="320" /><p class="wp-caption-text">Nom de domaine (Src Img : <a href="https://moz.com/learn/seo/domain" target="_blank" rel="noopener noreferrer">Moz</a>)</p></div>\n<p>Vous pouvez acheter des noms de domaine à des tonnes d&rsquo;endroits différents, mais <a href="https://www.godaddy.com/" target="_blank" rel="noopener noreferrer">GoDaddy</a> et <a href="https://www.namecheap.com/" target="_blank" rel="noopener noreferrer">Namecheap</a> sont deux options abordables. Un nom de domaine vous coûtera probablement entre 10 $ et 30 $ par année.</p>\n<p>Quoi que vous fassiez, <strong>n&rsquo;utilisez pas l&rsquo;option de nom de domaine gratuit de WordPress</strong> qui ressemble à « www.votredomaine.wordpress.com. ». Si vous voulez que les gens prennent votre entreprise au sérieux, alors vous devez<a href="https://kinsta.com/fr/blog/wordpress-com-vers-wordpress-org/" target="_blank" rel="noopener noreferrer"> passer à WordPress auto-hébergé</a> et obtenir votre propre nom de domaine. Nous avons largement couvert ce sujet dans notre autre article <a href="https://kinsta.com/fr/blog/choisir-un-nom-de-domaine/" target="_blank" rel="noopener noreferrer">Comment choisir un nom de domaine</a> &#8211; 8 conseils pour se démarquer.</p>\n<p>Vous devez également être conscient de la protection de la vie privée du domaine, ou <a href="https://www.namecheap.com/security/whoisguard.aspx" target="_blank" rel="noopener noreferrer">WhoisGuard protection</a>. Habituellement, lorsque vous achetez un domaine, vos informations personnelles sont publiées dans l&rsquo;annuaire Whois. Cela peut être une mauvaise nouvelle pour vous, car n&rsquo;importe qui peut avoir accès à cette information à moins que vous ne la protégiez. N&rsquo;importe qui, qu&rsquo;il s&rsquo;agisse d&rsquo;un spammeur ou d&rsquo;un pirate informatique, peut voir exactement comment vous contacter.</p>\n<p>Mais vous pouvez acheter ce module complémentaire pour préserver la confidentialité de vos coordonnées personnelles une fois que vous avez enregistré un domaine. Cet ajout peut vous coûter entre 10 $ et 15 $ de plus par année, mais c&rsquo;est un service que vous ne devriez pas négliger. Ou vous pouvez payer un petit extra pour votre domaine chez un <a href="https://kinsta.com/fr/blog/meilleur-registraire-de-domaine/#google-domains" target="_blank" rel="noopener noreferrer">registraire comme Google Domaines</a> et la protection Whois est incluse gratuitement.</p>\n<h2 id="design-and-themes">Design et thèmes (0 $ &#8211; 50 000 $)</h2>\n<p>WordPress a de nombreux thèmes disponibles pour tous les utilisateurs. Certains sont gratuits, mais d&rsquo;autres coûtent plus de 200 $. Les thèmes WordPress gratuits sont parfaits pour les débutants, <a href="https://kinsta.com/fr/blog/themes-wordpress-gratuits-vs-payants/" target="_blank" rel="noopener noreferrer">mais souvent ils n&rsquo;ont pas les fonctionnalités nécessaires </a>pour les propriétaires d&rsquo;entreprise sérieux.</p>\n<p>WordPress dispose d&rsquo;une énorme bibliothèque de thèmes que vous pouvez parcourir pour trouver ce que vous cherchez. Vous pouvez apporter des changements à ce thème plus tard avec des plugins, donc la clé est de trouver un thème qui correspond à la sensation générale que vous voulez que votre site Web ait. Voulez-vous que votre site Web soit simple ? Professionnel ? Rapide pour naviguer ? Amusant ? Intriguant ? Vous pouvez trouver un thème qui donne à votre site cette sensation.</p>\n<div class="wp-caption aligncenter" style="max-width: 838px"><img src="https://kinsta.com/fr/wp-content/uploads/sites/4/2018/01/referentiel-themes-wordpress.png" alt="Référentiel de thèmes WordPress" width="838" height="535" /><p class="wp-caption-text">Référentiel de thèmes WordPress</p></div>\n<p>Vous pouvez également filtrer les résultats de la recherche en fonction de la disposition, des caractéristiques et du sujet en rapport avec votre vision. Mais, vous n&rsquo;avez pas besoin d&rsquo;utiliser l&rsquo;un des gabarits WordPress préfabriqués. Vous pouvez trouver des gabarits de site Web préfabriqués à partir d&rsquo;un site différent comme <a href="https://www.templatemonster.com/" target="_blank" rel="noopener noreferrer">Template Monster</a> pour des prix qui varient de 75 $ à 200 $.</p>\n<div class="wp-caption aligncenter" style="max-width: 1035px"><a href="https://www.templatemonster.com/" target="_blank" rel="noopener noreferrer"><img src="https://kinsta.com/fr/wp-content/uploads/sites/4/2018/01/template-monster.png" alt="TemplateMonster" width="1035" height="549" /></a><p class="wp-caption-text">TemplateMonster</p></div>\n<p>Vous pouvez aussi les trouver sur <a href="https://market.envato.com/" target="_blank" rel="noopener noreferrer">Envato Market</a> pour des prix allant de 13 $ à 1 200 $.</p>\n<div class="wp-caption aligncenter" style="max-width: 2384px"><a href="https://market.envato.com/" target="_blank" rel="noopener noreferrer"><img src="https://kinsta.com/fr/wp-content/uploads/sites/4/2018/01/envato-wordpress-themes.png" alt="Envato Market" width="2384" height="720" /></a><p class="wp-caption-text">Envato Market</p></div>\n<p>Ou le <a href="http://www.mojomarketplace.com/themes/wordpress?page=1&amp;sorting=newest&amp;productType%255B0%255D=Themes&amp;category%255B0%255D=wordpress" target="_blank" rel="noopener noreferrer">Mojo Market</a> pour des prix variant de 59 $ à 79 $.</p>\n<p><a href="http://www.mojomarketplace.com/themes/wordpress?page=1&amp;sorting=newest&amp;productType%5B0%5D=Themes&amp;category%5B0%5D=wordpress" target="_blank" rel="noopener noreferrer"><img class="aligncenter" src="https://kinsta.com/fr/wp-content/uploads/sites/4/2018/01/Mojo-marketplace.png" alt="MOJO Marketplace" width="2198" height="618" /></a></p>\n<p>D&rsquo;autres boutiques de thèmes réputées que vous voudrez peut-être également consulter incluent <a href="https://www.elegantthemes.com/gallery/" target="_blank" rel="noopener noreferrer">Elegant Themes</a>, <a href="https://www.proteusthemes.com/" target="_blank" rel="noopener noreferrer">ProteusThemes</a>, <a href="https://themeisle.com/" target="_blank" rel="noopener noreferrer">ThemeIsle</a>, <a href="https://mythemeshop.com/themes/" target="_blank" rel="noopener noreferrer">MyThemeShop</a>, <a href="https://accesspressthemes.com/" target="_blank" rel="noopener noreferrer">Accesspressthemes</a>, <a href="https://premiumcoding.com/premiumcoding-wordpress-themes/" target="_blank" rel="noopener noreferrer">Premiumcoding</a> et <a href="https://teslathemes.com/wordpress-themes/" target="_blank" rel="noopener noreferrer">Tesla Themes</a>. Aussi, voici un <a href="https://engeniusweb.com/articles/4-misconceptions-wordpress-themes/" target="_blank" rel="noopener noreferrer">bon article</a> sur les idées fausses quand il s&rsquo;agit de thèmes WordPress.</p>\n<p>Lorsque vous choisissez un thème, assurez-vous également de choisir un thème adapté à votre mobile. Les ventes au détail en ligne d&rsquo;appareils mobiles sont en hausse. En 2016, l&rsquo;industrie du commerce mobile <a href="https://yourstory.com/2017/02/e-commerce-forrester-research/" target="_blank" rel="noopener noreferrer">valait 539 milliards de dollars</a>. Et ce nombre devrait doubler d&rsquo;ici 2021.</p>\n<div class="wp-caption aligncenter" style="max-width: 800px"><img src="https://kinsta.com/fr/wp-content/uploads/sites/4/2018/01/ventes-detail-appareils-mobiles.png" alt="Ventes au détail d\'appareils mobiles" width="800" height="400" /><p class="wp-caption-text">Ventes au détail d&rsquo;appareils mobiles (Src Img : <a href="https://yourstory.com/2017/02/e-commerce-forrester-research/" target="_blank" rel="noopener noreferrer">YourStory</a>)</p></div>\n<p>Mais gardez ceci à l&rsquo;esprit : Lorsque vous achetez des thèmes auprès de sociétés SaaS tierces, vous courez le risque d&rsquo;utiliser un modèle qui ne s&rsquo;intègre pas automatiquement avec les plugins natifs que vous souhaitez sur votre site Web. Les modèles prédéfinis sont également difficiles à personnaliser, à moins que vous ne sachiez <a href="https://kinsta.com/fr/blog/wordpress-vs-html-statique/" target="_blank" rel="noopener noreferrer">lire et écrire du HTML</a> et du CSS. Si vous ne le faites pas, alors ce que vous voyez est ce que vous obtenez.</p>\n<p>Cependant, certains d&rsquo;entre vous ne seront satisfaits d&rsquo;aucun des thèmes. Dans ce cas, pensez à engager un développeur web pour créer votre propre thème. Selon la personne que vous embauchez, vous pouvez vous attendre à un prix qui se situe entre 700 $ et 10 000 $. Et si votre entreprise est bien établie et qu&rsquo;elle a des besoins importants, vous pourriez même envisager un prix plus près de 50 000 $.</p>\n<p>Si vous choisissez d&rsquo;avoir quelqu&rsquo;un pour concevoir un thème personnalisé pour votre site WordPress, alors vous devriez probablement avoir quelques développeurs internes qui peuvent vous aider à faire des changements futurs. Sinon, vous serez sévèrement limité par votre manque de connaissances en codage. Pensez à naviguer dans <a href="http://codeable.io/" target="_blank" rel="noopener noreferrer">Codeable</a> pour trouver un développeur qui répond à vos besoins.</p>\n<div class="wp-caption aligncenter" style="max-width: 1827px"><a href="http://codeable.io/" target="_blank" rel="noopener noreferrer"><img src="https://kinsta.com/fr/wp-content/uploads/sites/4/2018/01/codeable-1.jpg" alt="Codeable" width="1827" height="1353" /></a><p class="wp-caption-text">Codeable</p></div>\n<p>Ou consultez ces autres <a href="https://kinsta.com/fr/blog/engager-developpeur-wordpress/" target="_blank" rel="noopener noreferrer">endroits recommandés pour embaucher des développeurs WordPress</a>.</p>\n<h2 id="plugins">Plugins/Extensions (426 $ &#8211; 1 587 $)</h2>\n<p><a href="https://kinsta.com/fr/base-de-connaissances/plugin-wordpress/" target="_blank" rel="noopener noreferrer">Les plugins WordPress</a> sont de petits bouts de code que vous pouvez ajouter à votre site Web. Certains plugins (aussi appelés extensions) sont gratuits, mais les options premium vont de 47 $ à 200 $. Et les frais peuvent être ponctuels ou récurrents. Vous pouvez faire une recherche parmi les <a href="https://wordpress.org/plugins/" target="_blank" rel="noopener noreferrer">53 123 plugins sur WordPress.org</a>.</p>  <div class="in-post-container">\n  <div id=\'simple-promo\'>\n  <div class=\'mb--20 mt--0 heading--normal\'>Vous avez des problèmes de temps d\'indisponibilité et de WordPress ? Kinsta est la solution d\'hébergement conçue pour vous faire gagner du temps ! <a href=\'https://kinsta.com/fr/fonctionnalites/\'>Découvrez nos fonctionnalités </a></div>\n</div>\n  </div>\n  \n<div class="wp-caption aligncenter" style="max-width: 983px"><img src="https://kinsta.com/fr/wp-content/uploads/sites/4/2018/01/wordpress-plugins.png" alt="Plugins WordPress" width="983" height="692" /><p class="wp-caption-text">Plugins WordPress</p></div>\n<p>En particulier, voici une liste de plugins que vous devez particulièrement envisager d&rsquo;implémenter sur votre site Web. Regardez exactement ce qu&rsquo;ils font et combien ils coûtent.</p>\n<ul>\n<li><a href="https://yoast.com/wordpress/plugins/seo/" target="_blank" rel="noopener noreferrer">Yoast SEO</a> <strong>($0 à $89)</strong> &#8211; Yoast vous permet d&rsquo;optimiser chaque page de votre site pour les moteurs de recherche. Ce qui signifie que vous avez la meilleure chance de vous classer sur votre SERP cible et de générer du trafic passif. Lisez notre <a href="https://kinsta.com/fr/blog/yoast-seo/" target="_blank" rel="noopener noreferrer">tutoriel avancé sur Yoast SEO</a>.</li>\n<li><a href="https://www.gravityforms.com/" target="_blank" rel="noopener noreferrer">Gravity Forms</a> <strong>(59 $)</strong> &#8211; Gravity Forms vous permet de créer des formulaires opt-in avec des fournisseurs comme MailChimp, Slack, Stripe, PayPal, Twilio, et bien plus encore.</li>\n<li><a href="https://www.advancedcustomfields.com/" target="_blank" rel="noopener noreferrer">Advanced Custom Fields</a> <strong>(0 $ à 100 $)</strong> &#8211; Ce plugin vous permet d&rsquo;inclure des personnalisations supplémentaires sur différents champs de page.</li>\n<li><a href="https://mailchimp.com/" target="_blank" rel="noopener noreferrer">MailChimp</a> &#8211; <strong>(0 $ à 35 $ par mois ou plus)</strong> Logiciel de marketing par courriel qui s&rsquo;intègre rapidement et facilement à votre site Web WordPress, y compris d&rsquo;autres plugins tiers. Kinsta utilise MailChimp. Vous pouvez également consulter ces autres <a href="https://kinsta.com/blog/email-marketing-software/" target="_blank" rel="noopener noreferrer">solutions logicielles d&#8217;email marketing</a>.</li>\n<li><a href="https://www.elegantthemes.com/plugins/bloom/" target="_blank" rel="noopener noreferrer">Bloom</a> <strong>(89 $ par an ou 249 $ à vie)</strong> &#8211; Bloom vous permet de tirer parti des formulaires latéraux, des barres flottantes, des superpositions d&rsquo;intentions de sortie et d&rsquo;autres fonctions qui augmenteront le taux de conversion de votre site Web. Kinsta utilise Bloom sur ce blog.</li>\n<li><a href="https://www.monsterinsights.com/" target="_blank" rel="noopener noreferrer">MonsterInsights</a> <strong>($39 à $199)</strong> &#8211; Ce plugin vous permet de connecter facilement Google Analytics à votre site WordPress.</li>\n<li><a href="https://sucuri.net/lp/sem/ga-wordpress-security-platform?gclid=CjwKCAiA9rjRBRAeEiwA2SV4ZQxCeLmWbUgF5QkL0Z8vWuXmiyyQ8kDtIruEWSPzB50tA6Sk7Z3uDRoC1WwQAvD_BwE" target="_blank" rel="noopener noreferrer">Sucuri</a> <strong>(199,99 $ à 499,99 $ par année) </strong>&#8211; Sucuri offre une protection pare-feu indispensable pour votre site Web WordPress.</li>\n<li><a href="https://updraftplus.com/" target="_blank" rel="noopener noreferrer">UpdraftPlus</a><strong> ($0 à $145 par an) </strong>&#8211; Ce plugin vous assure de ne pas perdre d&rsquo;informations critiques à cause d&rsquo;un désastre informatique.</li>\n<li><a href="https://www.sharethis.com/" target="_blank" rel="noopener noreferrer">ShareThis</a> <strong>(gratuit) </strong>&#8211; ShareThis vous permet d&rsquo;ajouter des boutons de partage à vos pages WordPress afin que les visiteurs puissent facilement partager votre contenu sur les médias sociaux.</li>\n<li><a href="https://www.csshero.org/" target="_blank" rel="noopener noreferrer">CSS Hero</a> <strong>(19 $ à 79 $ par an)</strong> &#8211; Vous voulez apporter des modifications à votre site Web WordPress sans vous bricoler le CSS ? Ce plugin vous permet de le faire.</li>\n</ul>\n<p>Avec tous ces plugins, votre site web sera prêt à rivaliser avec les experts WordPress les plus avertis. Mais vous ne devez installer que les plugins nécessaires à votre activité. D&rsquo;une manière générale, moins il y a de plugins, plus le site est rapide.</p>\n<p>Alors coupez l&rsquo;encombrement et n&rsquo;intégrez que les plugins nécessaires. Vous pouvez également envisager de faire nettoyer le code du plugin par un développeur interne pour mieux l&rsquo;adapter au thème de votre site Web. Quelle que soit la façon dont vous le faites, assurez-vous d&rsquo;obtenir ceux dont vous avez besoin et de vous débarrasser de ceux dont vous n&rsquo;avez pas besoin.</p>\n<h2 id="ecommerce-features">Fonctionnalités eCommerce (450 $ &#8211; 1 000 $)</h2>\n<p><a href="https://www.bigcommerce.com/blog/how-to-create-online-store/" target="_blank" rel="noopener noreferrer">La création d&rsquo;une boutique en ligne</a> peut sembler une tâche intimidante, mais elle n&rsquo;a pas à l&rsquo;être. WordPress par défaut n&rsquo;a pas de fonctionnalités de eCommerce intégrées, mais il existe de nombreuses solutions pour vous aider à fonctionner.</p>\n<div class="wp-caption aligncenter" style="max-width: 1066px"><img src="https://kinsta.com/fr/wp-content/uploads/sites/4/2018/01/woocommerce.jpg" alt="WooCommerce" width="1066" height="654" /><p class="wp-caption-text">WooCommerce</p></div>\n<ul>\n<li><a href="https://wordpress.org/plugins/woocommerce/" target="_blank" rel="noopener noreferrer">WooCommerce</a> <strong>(gratuit)</strong> &#8211; Il s&rsquo;agit d&rsquo;un plugin de solutions de eCommerce tout-en-un pour votre site Web WordPress.</li>\n<li><a href="https://easydigitaldownloads.com/" target="_blank" rel="noopener noreferrer">Easy Digital Downloads</a> <strong>(gratuit) </strong>&#8211; Une excellente solution pour les boutiques eCommerce qui vendent des téléchargements et des services numériques.</li>\n<li><a href="https://wordpress.org/plugins/shopp/" target="_blank" rel="noopener noreferrer">Shopp</a><strong> (gratuit) </strong>&#8211; Avec ce plugin, vous pouvez exécuter des ventes, ajouter de nouveaux produits, mettre à jour l&rsquo;inventaire, expédier des commandes, et bien plus encore.</li>\n<li><a href="http://www.inventorysource.com/how-it-works/" target="_blank" rel="noopener noreferrer">Inventory Source</a> <strong>(50 $ à 175 $ par mois)</strong> &#8211; Si vous voulez faire des livraisons directes avec votre boutique en ligne, Inventory Source &#8211; qui s&rsquo;intègre directement avec WooCommerce &#8211; vous aidera à garder toutes vos informations d&rsquo;expédition organisées.</li>\n</ul>\n<p>Bien que beaucoup de ces derniers soient gratuits, vous aurez probablement besoin de quelques plugins premium pour vous assurer qu&rsquo;ils fonctionnent bien, et qu&rsquo;ils fonctionnent comme vous en avez besoin. Par exemple, si vous êtes un développeur qui vend un plugin avec Easy Digital Downloads et qui utilise un modèle d&rsquo;abonnement récurrent, voici quelques plugins dont vous aurez très probablement besoin :</p>\n<ul>\n<li><a href="https://easydigitaldownloads.com/downloads/recurring-payments/" target="_blank" rel="noopener noreferrer">Recurring Payments</a> <strong>(199 $ par année)</strong> &#8211; Complément pour EDD qui vous permet de configurer des abonnements récurrents pour vos téléchargements ou produits numériques.</li>\n<li><a href="https://easydigitaldownloads.com/downloads/stripe-gateway/" target="_blank" rel="noopener noreferrer">Stripe Gateway</a> <strong>(89 $ par an)</strong> &#8211; Vous permet d&rsquo;<a href="https://kinsta.com/fr/blog/stripe-vs-paypal/" target="_blank" rel="noopener noreferrer">accepter les cartes de crédit en toute sécurité via Stripe</a> dans EDD.</li>\n<li><a href="https://easydigitaldownloads.com/downloads/software-licensing/" target="_blank" rel="noopener noreferrer">Software Licensing</a> <strong>(199 $ par année) </strong>&#8211; Fournit un système complet de génération, d&rsquo;activation et de vérification des clés de licence.</li>\n<li><a href="https://affiliatewp.com/" target="_blank" rel="noopener noreferrer">AffiliateWP</a> <strong>(99 $ par an)</strong> &#8211; De nombreux développeurs de plugins et de thèmes ont besoin d&rsquo;un moyen d&rsquo;intégrer un programme d&rsquo;affiliation dans les EDD. AffiliateWP est de loin la meilleure solution.</li>\n</ul>\n<p>Comme vous pouvez le voir, obtenir toutes les fonctionnalités de eCommerce que vous voulez ou dont vous avez besoin dans <strong>WordPress n&rsquo;est pas toujours bon marché</strong>. Et cela peut varier beaucoup en fonction de vos besoins de eCommerce.</p>\n<h2 id="time">Votre temps</h2>\n<p>Un autre facteur important dont vous devriez tenir compte est le temps dont vous disposez. <strong>Combien vaut votre temps pour vous ?</strong> C&rsquo;est quelque chose qui n&rsquo;est pas toujours discuté lors du lancement d&rsquo;un site, mais il peut être l&rsquo;un des plus importants. Armin, Sallie et John, tous des développeurs et designers de WordPress, en ont parlé dans les commentaires, il est donc intéressant de le souligner.</p>\n<blockquote><p>Le temps &#8211; c&rsquo;est le facteur le plus important et le moins pris en compte. Votre propre temps ! Les gens supposent toujours que si vous le faites vous-même, c&rsquo;est fondamentalement gratuit, mais ce n&rsquo;est pas le cas. D&rsquo;autant plus que vous passerez quelques jours à faire un site web très simple par vous-même. Si vous êtes free-lance, vous savez déjà comment calculer la valeur de votre temps. Le faire soi-même coûte aussi cher que de le faire faire par quelqu&rsquo;un d&rsquo;autre. &#8211; <a href="https://twitter.com/seltzdesign" target="_blank" rel="noopener noreferrer">Armin</a></p>\n<p>L&rsquo;installation et la configuration d&rsquo;une boutique prend beaucoup de temps et il est préférable que cela soit effectué par quelqu&rsquo;un d&rsquo;expérimenté, à moins que votre propre temps ne vaut vraiment rien et que vous ne sacrifiez aucun revenu en passant par la courbe d&rsquo;apprentissage et en prenant des semaines de plus pour installer votre boutique. &#8211; <a href="https://twitter.com/salliegoetsch" target="_blank" rel="noopener noreferrer">Sallie</a></p>\n<p>Une bonne règle de base est de décider si vous avez plus de temps ou d&rsquo;argent (la plupart des entreprises ont plus d&rsquo;argent que de temps). Dans ce cas, il est préférable d&rsquo;engager un spécialiste pour construire votre site. &#8211; <a href="https://twitter.com/Lockedown_" target="_blank" rel="noopener noreferrer">Jean</a></p></blockquote>\n<blockquote><p>&nbsp;</p></blockquote>\n<p>Et n&rsquo;oubliez pas non plus l&rsquo;entretien continu après coup.</p>\n<h2>Quel est le décompte final ?</h2>\n<p>Au bout du compte, vous allez dépenser <strong>entre 566 $ et 52 817 $</strong>. <a href="https://websitesetup.org/website-cost/" target="_blank" rel="noopener noreferrer">Le prix dépend</a> de ce que vous voulez que votre site Web fasse, de la vitesse à laquelle vous voulez qu&rsquo;il fonctionne, de sa sécurité et du trafic que vous voulez qu&rsquo;il gère. En d&rsquo;autres termes, le montant d&rsquo;argent que vous dépensez reflète directement la capacité de votre site Web.</p>\n<p>Bien sûr, WordPress est capable de gérer votre trafic, vos leads, vos opt-ins, vos conversions et vos clients. Mais seulement si vous utilisez le bon thème et ajoutez les bons plugins.</p>\n<h2>Conclusion</h2>\n<p>Certains des sites Web les plus puissants au monde utilisent WordPress. Et s&rsquo;ils peuvent l&rsquo;utiliser, vous pouvez l&rsquo;utiliser aussi. Mais ne vous faites pas duper en pensant que ça ne te coûtera rien.</p>\n<p>Tout d&rsquo;abord, vous avez besoin d&rsquo;un endroit pour héberger votre site Web. Et plus vous payez, meilleur est l&rsquo;hébergement. Vous avez également besoin d&rsquo;un nom de domaine pour afficher votre propriété en ligne et d&rsquo;un thème qui correspond aux intentions de votre site Web. Ensuite, vous devez ajouter les bons plugins. Et si vous exploitez une boutique en ligne, vous devez consacrer une attention particulière (et de l&rsquo;argent) à l&rsquo;utilisation de la bonne solution de eCommerce et à l&rsquo;ajout des bonnes extensions.</p>\n<p>En fin de compte, tous ces facteurs vont vous faire perdre votre portefeuille. Mais ils vont aussi augmenter votre succès. En d&rsquo;autres termes, c&rsquo;est de l&rsquo;<strong>argent bien dépensé</strong>.</p>\n<span class="et_bloom_bottom_trigger"></span><p>The post <a rel="nofollow" href="https://kinsta.com/fr/blog/cout-site-web-wordpress/">Coût d’un site Web WordPress &#8211; La vérité derrière la construction d’un site Web</a> appeared first on <a rel="nofollow" href="https://kinsta.com/fr">Hébergement WordPress infogéré Kinsta</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/Hyg_gPV463U" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:51:"https://kinsta.com/fr/blog/cout-site-web-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:32:"http://feeds.feedburner.com/wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:4:"wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"JIkIrMMwFFK/50jx0/ZYoUHaxbc";s:13:"last-modified";s:29:"Thu, 28 Mar 2019 09:09:11 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Thu, 28 Mar 2019 09:10:30 GMT";s:7:"expires";s:29:"Thu, 28 Mar 2019 09:10:30 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:7:"alt-svc";s:40:"quic=":443"; ma=2592000; v="46,44,43,39"";}}s:5:"build";s:14:"20190313100503";}', 'no'),
(1734, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1553807431', 'no'),
(1735, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1553764231', 'no'),
(1736, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1553807431', 'no'),
(1737, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/5usiKNtvjdc/\'>WPFR sponsor du WordCamp Bordeaux 2019, évènement éco-responsable</a></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/Hyg_gPV463U/\'>Coût d’un site Web WordPress – La vérité derrière la construction d’un site Web</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/Dqk6yUo7ZC0/\'>Joomla ou WordPress : et s’il ne devait en rester qu’un ?</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/gdKegtKPBF8/\'>Contribuer au Projet WordPress quand on est pas développeur: c’est possible!</a></li></ul></div>', 'no'),
(1738, '_site_transient_timeout_community-events-130b5d6db5d2d9b27946e3f83d5ff525', '1553807431', 'no'),
(1739, '_site_transient_community-events-130b5d6db5d2d9b27946e3f83d5ff525', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:11:"172.16.16.0";}s:6:"events";a:0:{}}', 'no'),
(1740, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1553775060', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1741, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4568;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:3358;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2614;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2482;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1913;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1724;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1715;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1465;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1430;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1424;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1423;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1357;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1294;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1291;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1138;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:1094;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1091;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1051;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:987;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:921;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:852;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:841;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:827;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:774;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:724;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:722;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:718;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:706;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:697;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:694;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:680;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:679;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:662;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:649;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:648;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:648;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:627;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:618;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:615;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:611;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:584;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:569;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:565;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:558;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:557;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:549;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:534;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:534;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:528;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:525;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:520;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:512;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:504;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:497;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:496;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:493;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:473;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:470;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:469;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:464;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:464;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:462;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:454;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:442;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:430;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:425;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:418;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:418;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:415;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:404;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:403;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:395;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:387;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:386;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:384;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:382;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:378;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:378;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:372;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:367;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:360;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:357;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:353;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:353;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:349;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:346;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:346;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:342;}s:14:"contact-form-7";a:3:{s:4:"name";s:14:"contact form 7";s:4:"slug";s:14:"contact-form-7";s:5:"count";i:328;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:324;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:321;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:320;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:316;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:314;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:314;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:310;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:308;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:307;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:307;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:304;}}', 'no'),
(1365, 'crontrol_schedules', 'a:0:{}', 'yes'),
(1746, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1553768442;s:8:"response";a:6:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":12:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"5.7.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.9";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.1.1";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:31:"clients/Participant_builder.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/clients";s:4:"slug";s:7:"clients";s:6:"plugin";s:31:"clients/Participant_builder.php";s:11:"new_version";s:5:"1.1.4";s:3:"url";s:38:"https://wordpress.org/plugins/clients/";s:7:"package";s:50:"https://downloads.wordpress.org/plugin/clients.zip";s:5:"icons";a:1:{s:7:"default";s:51:"https://s.w.org/plugins/geopattern-icon/clients.svg";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.8";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:15:"games/index.php";O:8:"stdClass":12:{s:2:"id";s:19:"w.org/plugins/games";s:4:"slug";s:5:"games";s:6:"plugin";s:15:"games/index.php";s:11:"new_version";s:5:"2.7.1";s:3:"url";s:36:"https://wordpress.org/plugins/games/";s:7:"package";s:48:"https://downloads.wordpress.org/plugin/games.zip";s:5:"icons";a:1:{s:2:"1x";s:58:"https://ps.w.org/games/assets/icon-128x128.png?rev=1073936";}s:7:"banners";a:1:{s:2:"1x";s:60:"https://ps.w.org/games/assets/banner-772x250.png?rev=1073936";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:6:"4.3.16";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:27:"wp-crontrol/wp-crontrol.php";O:8:"stdClass":12:{s:2:"id";s:25:"w.org/plugins/wp-crontrol";s:4:"slug";s:11:"wp-crontrol";s:6:"plugin";s:27:"wp-crontrol/wp-crontrol.php";s:11:"new_version";s:5:"1.7.0";s:3:"url";s:42:"https://wordpress.org/plugins/wp-crontrol/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/wp-crontrol.1.7.0.zip";s:5:"icons";a:1:{s:7:"default";s:62:"https://s.w.org/plugins/geopattern-icon/wp-crontrol_dfc98b.svg";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/wp-crontrol/assets/banner-1544x500.jpg?rev=2051757";s:2:"1x";s:66:"https://ps.w.org/wp-crontrol/assets/banner-772x250.jpg?rev=2051757";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.1.1";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:36:"acf-repeater-master/acf-repeater.php";O:8:"stdClass":8:{s:4:"slug";s:12:"acf-repeater";s:6:"plugin";s:36:"acf-repeater-master/acf-repeater.php";s:11:"new_version";s:5:"2.1.0";s:3:"url";s:36:"http://www.advancedcustomfields.com/";s:6:"tested";s:5:"4.9.0";s:7:"package";s:183:"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicmVwZWF0ZXIiLCJrIjoiUUpGNy1MNElYLVVDTlAtUkYyVyIsIndwX3VybCI6Imh0dHBzOlwvXC9jYS1mYW4uY2hpZmNvLmNvbVwvYm8ifQ==";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:1:{s:7:"default";s:66:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg";}}}s:12:"translations";a:0:{}s:9:"no_update";a:8:{s:51:"acf-field-date-time-picker/acf-date-time-picker.php";O:8:"stdClass":9:{s:2:"id";s:40:"w.org/plugins/acf-field-date-time-picker";s:4:"slug";s:26:"acf-field-date-time-picker";s:6:"plugin";s:51:"acf-field-date-time-picker/acf-date-time-picker.php";s:11:"new_version";s:5:"2.1.5";s:3:"url";s:57:"https://wordpress.org/plugins/acf-field-date-time-picker/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/acf-field-date-time-picker.2.1.5.zip";s:5:"icons";a:2:{s:2:"2x";s:78:"https://ps.w.org/acf-field-date-time-picker/assets/icon-256x256.jpg?rev=996369";s:2:"1x";s:78:"https://ps.w.org/acf-field-date-time-picker/assets/icon-128x128.jpg?rev=996369";}s:7:"banners";a:2:{s:2:"2x";s:81:"https://ps.w.org/acf-field-date-time-picker/assets/banner-1544x500.png?rev=703174";s:2:"1x";s:80:"https://ps.w.org/acf-field-date-time-picker/assets/banner-772x250.png?rev=703173";}s:11:"banners_rtl";a:0:{}}s:29:"attachment-importer/index.php";O:8:"stdClass":9:{s:2:"id";s:33:"w.org/plugins/attachment-importer";s:4:"slug";s:19:"attachment-importer";s:6:"plugin";s:29:"attachment-importer/index.php";s:11:"new_version";s:5:"0.6.0";s:3:"url";s:50:"https://wordpress.org/plugins/attachment-importer/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/attachment-importer.0.6.0.zip";s:5:"icons";a:1:{s:7:"default";s:63:"https://s.w.org/plugins/geopattern-icon/attachment-importer.svg";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:29:"easy-wp-smtp/easy-wp-smtp.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/easy-wp-smtp";s:4:"slug";s:12:"easy-wp-smtp";s:6:"plugin";s:29:"easy-wp-smtp/easy-wp-smtp.php";s:11:"new_version";s:7:"1.3.9.1";s:3:"url";s:43:"https://wordpress.org/plugins/easy-wp-smtp/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/easy-wp-smtp.zip";s:5:"icons";a:1:{s:2:"1x";s:65:"https://ps.w.org/easy-wp-smtp/assets/icon-128x128.png?rev=1242044";}s:7:"banners";a:1:{s:2:"1x";s:67:"https://ps.w.org/easy-wp-smtp/assets/banner-772x250.png?rev=1650323";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}s:19:"members/members.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/members";s:4:"slug";s:7:"members";s:6:"plugin";s:19:"members/members.php";s:11:"new_version";s:5:"2.1.0";s:3:"url";s:38:"https://wordpress.org/plugins/members/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/members.2.1.0.zip";s:5:"icons";a:2:{s:2:"2x";s:60:"https://ps.w.org/members/assets/icon-256x256.png?rev=1242689";s:2:"1x";s:60:"https://ps.w.org/members/assets/icon-128x128.png?rev=1242689";}s:7:"banners";a:2:{s:2:"2x";s:63:"https://ps.w.org/members/assets/banner-1544x500.png?rev=1242689";s:2:"1x";s:62:"https://ps.w.org/members/assets/banner-772x250.png?rev=1242689";}s:11:"banners_rtl";a:0:{}}s:21:"wp-exporter/index.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/wp-exporter";s:4:"slug";s:11:"wp-exporter";s:6:"plugin";s:21:"wp-exporter/index.php";s:11:"new_version";s:5:"0.0.6";s:3:"url";s:42:"https://wordpress.org/plugins/wp-exporter/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/wp-exporter.0.0.6.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/wp-exporter/assets/icon-256x256.png?rev=1433835";s:2:"1x";s:64:"https://ps.w.org/wp-exporter/assets/icon-128x128.png?rev=1433835";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/wp-exporter/assets/banner-772x250.png?rev=1433835";}s:11:"banners_rtl";a:0:{}}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":9:{s:2:"id";s:32:"w.org/plugins/wordpress-importer";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.4";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip";s:5:"icons";a:3:{s:2:"2x";s:71:"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375";s:2:"1x";s:63:"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375";s:3:"svg";s:63:"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375";}s:7:"banners";a:1:{s:2:"1x";s:72:"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654";}s:11:"banners_rtl";a:0:{}}s:19:"rest-api/plugin.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/rest-api";s:4:"slug";s:8:"rest-api";s:6:"plugin";s:19:"rest-api/plugin.php";s:11:"new_version";s:10:"2.0-beta15";s:3:"url";s:39:"https://wordpress.org/plugins/rest-api/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/rest-api.2.0-beta15.zip";s:5:"icons";a:2:{s:2:"2x";s:61:"https://ps.w.org/rest-api/assets/icon-256x256.png?rev=1346297";s:2:"1x";s:61:"https://ps.w.org/rest-api/assets/icon-128x128.png?rev=1346297";}s:7:"banners";a:2:{s:2:"2x";s:64:"https://ps.w.org/rest-api/assets/banner-1544x500.jpg?rev=1202542";s:2:"1x";s:63:"https://ps.w.org/rest-api/assets/banner-772x250.jpg?rev=1202542";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(1730, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1553807430', 'no'),
(1731, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1553764230', 'no'),
(1728, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1553807430', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1729, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:4:"WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:16:"https://wpfr.net";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:31:"Site officiel de la communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:34:"\n	Thu, 28 Mar 2019 08:46:23 +0000	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:54:"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n						\n		\n							";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"WPFR sponsor du WordCamp Bordeaux 2019, évènement éco-responsable";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/5usiKNtvjdc/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:88:"https://wpfr.net/wpfr-sponsor-wordcamp-bordeaux-2019-evenement-eco-responsable/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 16 Feb 2019 09:13:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2246905";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1505:"Le 23 mars 2019, Bordeaux accueillera la seconde édition de son WordCamp à la cité Mondiale Centre des Congrès.  Profitez-en pour aller à la rencontre de passionnés de WordPress au cours d&#8217;une journée riche en conférences. Cette édition 2019 sera axée autour de l&#8217;éco-responsabilité et de l&#8217;impact colossal du Web sur notre environnement. Pas moins<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5usiKNtvjdc:BXFb-UGLCJ0:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5usiKNtvjdc:BXFb-UGLCJ0:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5usiKNtvjdc:BXFb-UGLCJ0:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5usiKNtvjdc:BXFb-UGLCJ0:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5usiKNtvjdc:BXFb-UGLCJ0:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5usiKNtvjdc:BXFb-UGLCJ0:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/5usiKNtvjdc" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wpfr.net/wpfr-sponsor-wordcamp-bordeaux-2019-evenement-eco-responsable/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:79:"https://wpfr.net/wpfr-sponsor-wordcamp-bordeaux-2019-evenement-eco-responsable/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:54:"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n						\n		\n							";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:65:"Think WP, le documentaire vidéo sur WordPress enfin disponible !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BFWuQgyALjg/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wpfr.net/thinkwp-documentaire-video-wordpress/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2018 13:03:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2220300";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1538:"Découvrez WordPress en 30 minutes au travers de ce documentaire inédit d&#8217;interviews de la communauté française. Sur une idée originale de Déborah Donnier, entrepreneurs, chefs d&#8217;entreprises, freelances, agences web, développeurs, intégrateurs&#8230; de toute la France se succèdent pour nous parler de notre CMS favori WordPress. Financé uniquement par des dons et sponsors, le projet Think<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BFWuQgyALjg:KhIgVVs-X9Q:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BFWuQgyALjg:KhIgVVs-X9Q:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BFWuQgyALjg:KhIgVVs-X9Q:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BFWuQgyALjg:KhIgVVs-X9Q:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BFWuQgyALjg:KhIgVVs-X9Q:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BFWuQgyALjg:KhIgVVs-X9Q:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BFWuQgyALjg" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Benjamin Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wpfr.net/thinkwp-documentaire-video-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpfr.net/thinkwp-documentaire-video-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:41:"\n		\n		\n				\n		\n				\n		\n\n		\n				\n									";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"WP BootCamp 2018 : retours sur la deuxième édition";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/73jXJKLX5xI/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 23 Oct 2018 06:05:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2215483";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1487:"Soutenu par l&#8217;association WordPress Francophone, retours sur la seconde édition du WP BootCamp. Qu&#8217;est ce que le WP BootCamp ? Le WP BootCamp est un événement réunissant des passionnés de WordPress et du web en général sur un week-end de 3 jours. L&#8217;édition 2018, portée par Rémi Corson, Aurélien Denis et Benjamin Denis, se déroula<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=73jXJKLX5xI:kXAjLDU4P-c:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=73jXJKLX5xI:kXAjLDU4P-c:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=73jXJKLX5xI:kXAjLDU4P-c:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=73jXJKLX5xI:kXAjLDU4P-c:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=73jXJKLX5xI:kXAjLDU4P-c:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=73jXJKLX5xI:kXAjLDU4P-c:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/73jXJKLX5xI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Benjamin Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wpfr.net/wp-bootcamp-2018-retours-sur-la-deuxieme-edition/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:60:"\n		\n		\n				\n				\n		\n				\n		\n		\n		\n\n		\n				\n						\n		\n							";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wpfr.net/wordpress-gutenberg/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2018 09:00:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"éditeur visuel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:9:"Gutenberg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2117903";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1474:"Gutenberg arrive à grand pas, alors voici un résumé de tout ce qu&#8217;il faut savoir sur le nouvel éditeur visuel de WordPress au travers de questions / réponses ! Difficile de marcher tranquillement dans le quartier WordPress sans entendre parler de ce fameux Gutenberg ! C&#8217;est un nouvel éditeur ? C&#8217;est un nouveau page builder<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i6NQjnc9uiQ" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"maximebj";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wpfr.net/wordpress-gutenberg/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"13";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:37:"https://wpfr.net/wordpress-gutenberg/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:54:"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n						\n		\n							";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"Résultats des élections du bureau 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wpfr.net/resultats-elections-bureau-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Mar 2018 08:00:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2107099";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1521:"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2018, nous vous communiquons les résultats pour l&#8217;élection du bureau 2018. Vous avez été 40% des adhérents à participer au vote, soit 85 suffrages exprimés. C&#8217;est pratiquement autant de votants que l&#8217;an passé avec un nombre d&#8217;adhérents moins élevé, l&#8217;abstention reste<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/qvTDw6NqY5Q" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpfr.net/resultats-elections-bureau-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"13";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wpfr.net/resultats-elections-bureau-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:54:"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n						\n		\n							";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"Liste des candidats au bureau 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpfr.net/liste-candidats-bureau-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Feb 2018 11:45:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2092699";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1508:"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wpfr.net/liste-candidats-bureau-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wpfr.net/liste-candidats-bureau-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:54:"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n						\n		\n							";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"WPFR sponsor du WP Tech Lyon !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Feb 2018 07:00:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2082223";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1507:"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wpfr.net/wpfr-sponsor-wptech-lyon/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:60:"\n		\n		\n				\n				\n		\n				\n		\n		\n		\n\n		\n				\n						\n		\n							";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"Loi anti-fraude et l’e-commerce : les informations officielles";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:86:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 31 Jan 2018 14:51:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:10:"Extensions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"Loi anti-fraude";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2072415";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1503:"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"maximebj";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:82:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"39";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:54:"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n						\n		\n							";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"L’élection du bureau WPFR 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wpfr.net/election-bureau-wpfr-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 15 Jan 2018 11:30:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2041252";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1530:"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wpfr.net/election-bureau-wpfr-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:43:"https://wpfr.net/election-bureau-wpfr-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:41:"\n		\n		\n				\n		\n				\n		\n\n		\n				\n									";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"PHP Tour Montpellier 2018 : WPFR est partenaire !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Jan 2018 10:12:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2035309";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1489:"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:9:"\n	hourly	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:4:"\n	1	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:48:"http://feeds.feedburner.com/WordpressFrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:4:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:20:"wordpressfrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:20:"WordpressFrancophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:29:"https://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"feedFlare";a:9:{i:0;a:5:{s:4:"data";s:24:"Subscribe with NewsGator";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:112:"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://www.newsgator.com/images/ngsub1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Subscribe with Bloglines";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:77:"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone";s:3:"src";s:48:"http://www.bloglines.com/images/sub_modern11.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"Subscribe with Netvibes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:98:"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:39:"//www.netvibes.com/img/add2netvibes.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:21:"Subscribe with Google";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:93:"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:51:"http://buttons.googlesyndication.com/fusion/add.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:25:"Subscribe with Pageflakes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:101:"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:87:"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Subscribe with Plusmo";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:86:"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:43:"http://plusmo.com/res/graphics/fbplusmo.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Subscribe with Live.com";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:81:"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:141:"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:25:"Subscribe with Mon Yahoo!";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:99:"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:60:"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:25:"Subscribe with Excite MIX";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:89:"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://image.excite.co.uk/mix/addtomix.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"EQzuVptdUZNXssHf3yYFfGnG4sM";s:13:"last-modified";s:29:"Thu, 28 Mar 2019 08:48:16 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Thu, 28 Mar 2019 09:10:30 GMT";s:7:"expires";s:29:"Thu, 28 Mar 2019 09:10:30 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:7:"alt-svc";s:40:"quic=":443"; ma=2592000; v="46,44,43,39"";}}s:5:"build";s:14:"20190313100503";}', 'no'),
(1672, '_site_transient_timeout_browser_eb9c1268a950e6eddb2708071f6b0d52', '1554222405', 'no'),
(1673, '_site_transient_browser_eb9c1268a950e6eddb2708071f6b0d52', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"73.0.3683.86";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 1, '_edit_lock', '1544517377:1'),
(90, 11, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"caproduits";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(8, 2, '_edit_lock', '1544604718:1'),
(43, 3, '_edit_lock', '1544614547:1'),
(89, 11, 'field_5c113d2c489da', 'a:15:{s:3:"key";s:19:"field_5c113d2c489da";s:5:"label";s:4:"prix";s:4:"name";s:14:"caproduit_prix";s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:1:"1";s:3:"max";s:0:"";s:4:"step";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(161, 20, '_edit_lock', '1549276868:2'),
(88, 11, '_edit_last', '1'),
(163, 19, '_edit_lock', '1545214614:1'),
(76, 36, '_wp_attached_file', '2018/12/phone-1.png'),
(127, 23, '_edit_lock', '1549288258:2'),
(77, 36, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:104;s:6:"height";i:104;s:4:"file";s:19:"2018/12/phone-1.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(78, 37, '_wp_attached_file', '2018/12/boutique-1.png'),
(79, 37, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:104;s:6:"height";i:104;s:4:"file";s:22:"2018/12/boutique-1.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(80, 38, '_wp_attached_file', '2018/12/card-1.png'),
(81, 38, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:104;s:6:"height";i:104;s:4:"file";s:18:"2018/12/card-1.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(82, 39, '_wp_attached_file', '2018/12/close-1.png'),
(83, 39, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:104;s:6:"height";i:104;s:4:"file";s:19:"2018/12/close-1.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(84, 40, '_wp_attached_file', '2018/12/domicile-1.png'),
(85, 40, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:104;s:6:"height";i:104;s:4:"file";s:22:"2018/12/domicile-1.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(91, 11, 'position', 'normal'),
(92, 11, 'layout', 'no_box'),
(93, 11, 'hide_on_screen', ''),
(94, 11, 'field_5c122e654bdf4', 'a:13:{s:3:"key";s:19:"field_5c122e654bdf4";s:5:"label";s:6:"active";s:4:"name";s:16:"caproduit_active";s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:7:"choices";a:2:{s:3:"yes";s:3:"Yes";s:2:"no";s:2:"No";}s:12:"other_choice";s:1:"0";s:17:"save_other_choice";s:1:"0";s:13:"default_value";s:3:"yes";s:6:"layout";s:10:"horizontal";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(95, 11, 'field_5c122e991e53d', 'a:11:{s:3:"key";s:19:"field_5c122e991e53d";s:5:"label";s:5:"icone";s:4:"name";s:15:"caproduit_icone";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5c122e654bdf4";s:8:"operator";s:2:"==";s:5:"value";s:3:"yes";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(96, 15, '_edit_last', '1'),
(97, 15, 'field_5c12176e0a175', 'a:11:{s:3:"key";s:19:"field_5c12176e0a175";s:5:"label";s:5:"icone";s:4:"name";s:17:"calivraison_icone";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(98, 15, 'position', 'normal'),
(99, 15, 'layout', 'no_box'),
(100, 15, 'hide_on_screen', ''),
(101, 15, 'field_5c1218b0f7995', 'a:15:{s:3:"key";s:19:"field_5c1218b0f7995";s:5:"label";s:4:"prix";s:4:"name";s:16:"calivraison_prix";s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:1:"0";s:3:"max";s:0:"";s:4:"step";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(174, 15, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:12:"calivraisons";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(103, 15, 'field_5c12303cb0c9c', 'a:13:{s:3:"key";s:19:"field_5c12303cb0c9c";s:5:"label";s:6:"active";s:4:"name";s:18:"calivraison_active";s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:7:"choices";a:2:{s:3:"yes";s:3:"Yes";s:2:"no";s:2:"No";}s:12:"other_choice";s:1:"0";s:17:"save_other_choice";s:1:"0";s:13:"default_value";s:3:"yes";s:6:"layout";s:10:"horizontal";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(104, 16, '_edit_last', '1'),
(105, 16, 'field_5c121939316b5', 'a:11:{s:3:"key";s:19:"field_5c121939316b5";s:5:"label";s:5:"icone";s:4:"name";s:16:"capaiement_icone";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(106, 16, 'field_5c122dc1316b6', 'a:13:{s:3:"key";s:19:"field_5c122dc1316b6";s:5:"label";s:6:"active";s:4:"name";s:17:"capaiement_active";s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:7:"choices";a:2:{s:3:"yes";s:3:"Yes";s:2:"no";s:2:"No";}s:12:"other_choice";s:1:"0";s:17:"save_other_choice";s:1:"0";s:13:"default_value";s:3:"yes";s:6:"layout";s:10:"horizontal";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(107, 16, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:11:"capaiements";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(108, 16, 'position', 'normal'),
(109, 16, 'layout', 'no_box'),
(110, 16, 'hide_on_screen', ''),
(113, 23, '_edit_last', '1'),
(114, 23, 'caproduit_prix', '50'),
(115, 23, '_caproduit_prix', 'field_5c113d2c489da'),
(116, 23, 'caproduit_active', 'yes'),
(117, 23, '_caproduit_active', 'field_5c122e654bdf4'),
(118, 23, 'caproduit_icone', '38'),
(119, 23, '_caproduit_icone', 'field_5c122e991e53d'),
(120, 24, '_edit_last', '1'),
(121, 24, 'caproduit_prix', '4'),
(122, 24, '_caproduit_prix', 'field_5c113d2c489da'),
(123, 24, 'caproduit_active', 'no'),
(124, 24, '_caproduit_active', 'field_5c122e654bdf4'),
(125, 24, 'caproduit_icone', '45'),
(126, 24, '_caproduit_icone', 'field_5c122e991e53d'),
(162, 18, '_edit_lock', '1552670982:1'),
(130, 18, 'capaiement_icone', '38'),
(131, 18, '_edit_last', '1'),
(132, 18, '_capaiement_icone', 'field_5c121939316b5'),
(133, 18, 'capaiement_active', 'yes'),
(134, 18, '_capaiement_active', 'field_5c122dc1316b6'),
(135, 19, '_edit_last', '1'),
(136, 19, 'capaiement_icone', '36'),
(137, 19, '_capaiement_icone', 'field_5c121939316b5'),
(138, 19, 'capaiement_active', 'yes'),
(139, 19, '_capaiement_active', 'field_5c122dc1316b6'),
(140, 20, '_edit_last', '1'),
(141, 20, 'capaiement_icone', '40'),
(142, 20, '_capaiement_icone', 'field_5c121939316b5'),
(143, 20, 'capaiement_active', 'yes'),
(144, 20, '_capaiement_active', 'field_5c122dc1316b6'),
(147, 21, '_edit_last', '1'),
(148, 21, 'calivraison_icone', '40'),
(149, 21, '_calivraison_icone', 'field_5c12176e0a175'),
(150, 21, 'calivraison_prix', '10'),
(151, 21, '_calivraison_prix', 'field_5c1218b0f7995'),
(152, 21, 'calivraison_active', 'yes'),
(153, 21, '_calivraison_active', 'field_5c12303cb0c9c'),
(154, 22, '_edit_last', '1'),
(155, 22, 'calivraison_icone', '37'),
(156, 22, '_calivraison_icone', 'field_5c12176e0a175'),
(157, 22, 'calivraison_prix', '12'),
(158, 22, '_calivraison_prix', 'field_5c1218b0f7995'),
(159, 22, 'calivraison_active', 'yes'),
(160, 22, '_calivraison_active', 'field_5c12303cb0c9c'),
(164, 22, '_edit_lock', '1549276789:2'),
(165, 21, '_edit_lock', '1545214485:1'),
(166, 24, '_edit_lock', '1549277144:2'),
(167, 45, '_wp_attached_file', '2018/12/sim.png'),
(168, 45, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:104;s:6:"height";i:104;s:4:"file";s:15:"2018/12/sim.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(169, 11, '_edit_lock', '1545235944:1'),
(170, 15, '_edit_lock', '1545401982:1'),
(175, 48, '_edit_last', '1'),
(176, 48, 'field_5c1cf73261758', 'a:14:{s:3:"key";s:19:"field_5c1cf73261758";s:5:"label";s:17:"sous catégories ";s:4:"name";s:26:"cacategory_sous_categories";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"return_format";s:6:"object";s:9:"post_type";a:2:{i:0;s:12:"calivraisons";i:1;s:11:"capaiements";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5c1cf79c6175b";s:8:"operator";s:2:"==";s:5:"value";s:8:"recovery";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(177, 48, 'field_5c1cf75961759', 'a:14:{s:3:"key";s:19:"field_5c1cf75961759";s:5:"label";s:18:"nom de catégorie ";s:4:"name";s:14:"cacategory_nom";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(178, 48, 'field_5c1cf7756175a', 'a:11:{s:3:"key";s:19:"field_5c1cf7756175a";s:5:"label";s:5:"icone";s:4:"name";s:16:"cacategory_icone";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(179, 48, 'field_5c1cf79c6175b', 'a:12:{s:3:"key";s:19:"field_5c1cf79c6175b";s:5:"label";s:4:"type";s:4:"name";s:4:"type";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:7:"choices";a:2:{s:8:"recovery";s:8:"recovery";s:8:"paiement";s:8:"paiement";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(181, 48, 'position', 'normal'),
(182, 48, 'layout', 'no_box'),
(183, 48, 'hide_on_screen', ''),
(184, 48, '_edit_lock', '1545403049:1'),
(196, 48, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"cacategory";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(188, 50, '_wp_attached_file', '2018/12/Groupe-70.png'),
(189, 50, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:71;s:6:"height";i:58;s:4:"file";s:21:"2018/12/Groupe-70.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(190, 51, '_wp_attached_file', '2018/12/Groupe-79.png'),
(191, 51, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:56;s:6:"height";i:67;s:4:"file";s:21:"2018/12/Groupe-79.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(227, 58, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:1512;s:6:"height";i:1897;s:4:"file";s:18:"2019/02/logoCA.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(228, 59, '_wp_attached_file', '2019/02/coverca.png'),
(226, 58, '_wp_attached_file', '2019/02/logoCA.png'),
(206, 55, '_edit_last', '1'),
(207, 55, '_edit_lock', '1549276739:2'),
(208, 55, 'cacategory_sous_categories', 'a:3:{i:0;s:2:"18";i:1;s:2:"19";i:2;s:2:"20";}'),
(209, 55, '_cacategory_sous_categories', 'field_5c1cf73261758'),
(210, 55, 'cacategory_nom', 'Paiement'),
(211, 55, '_cacategory_nom', 'field_5c1cf75961759'),
(212, 55, 'cacategory_icone', '51'),
(213, 55, '_cacategory_icone', 'field_5c1cf7756175a'),
(214, 55, 'type', 'paiement'),
(215, 55, '_type', 'field_5c1cf79c6175b'),
(216, 56, '_edit_last', '1'),
(217, 56, '_edit_lock', '1549269812:1'),
(218, 56, 'cacategory_sous_categories', 'a:2:{i:0;s:2:"21";i:1;s:2:"22";}'),
(219, 56, '_cacategory_sous_categories', 'field_5c1cf73261758'),
(220, 56, 'cacategory_nom', 'Récupération de la carte'),
(221, 56, '_cacategory_nom', 'field_5c1cf75961759'),
(222, 56, 'cacategory_icone', '50'),
(223, 56, '_cacategory_icone', 'field_5c1cf7756175a'),
(224, 56, 'type', 'recovery'),
(225, 56, '_type', 'field_5c1cf79c6175b'),
(229, 59, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:3840;s:6:"height";i:1390;s:4:"file";s:19:"2019/02/coverca.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(230, 62, '_wp_attached_file', '2019/02/quiz-image.jpg'),
(231, 62, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:480;s:6:"height";i:240;s:4:"file";s:22:"2019/02/quiz-image.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(232, 63, '_wp_attached_file', '2019/02/quiz-image-1.jpg'),
(233, 63, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:480;s:6:"height";i:240;s:4:"file";s:24:"2019/02/quiz-image-1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(234, 64, '_wp_attached_file', '2019/02/quiz-image-2.jpg'),
(235, 64, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:480;s:6:"height";i:240;s:4:"file";s:24:"2019/02/quiz-image-2.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(236, 65, '_wp_attached_file', '2019/02/quiz-image-3.jpg'),
(237, 65, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:480;s:6:"height";i:240;s:4:"file";s:24:"2019/02/quiz-image-3.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(238, 66, '_wp_attached_file', '2019/02/quiz-image-5.jpg'),
(239, 66, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:480;s:6:"height";i:240;s:4:"file";s:24:"2019/02/quiz-image-5.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(240, 67, '_wp_attached_file', '2019/02/quiz-image-4.jpg'),
(241, 67, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:480;s:6:"height";i:240;s:4:"file";s:24:"2019/02/quiz-image-4.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(262, 83, '_edit_last', '1'),
(263, 83, 'caquestion_suggestion', '1942 - 1943\r\n1946 - 1947\r\n1956 - 1957\r\n1963 - 1964'),
(261, 83, '_edit_lock', '1552984507:1'),
(244, 71, '_edit_last', '2'),
(245, 71, 'field_5c76755856140', 'a:14:{s:3:"key";s:19:"field_5c76755856140";s:5:"label";s:4:"Quiz";s:4:"name";s:19:"caquiz_listquestion";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"return_format";s:6:"object";s:9:"post_type";a:1:{i:0;s:10:"caquestion";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(246, 71, 'field_5c77ebfd4ac1e', 'a:13:{s:3:"key";s:19:"field_5c77ebfd4ac1e";s:5:"label";s:6:"active";s:4:"name";s:13:"caquiz_active";s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:7:"choices";a:2:{s:3:"oui";s:3:"oui";s:3:"non";s:3:"non";}s:12:"other_choice";s:1:"0";s:17:"save_other_choice";s:1:"0";s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(247, 71, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:6:"caquiz";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(248, 71, 'position', 'normal'),
(249, 71, 'layout', 'no_box'),
(250, 71, 'hide_on_screen', ''),
(251, 71, 'field_5c76798ca6d04', 'a:15:{s:3:"key";s:19:"field_5c76798ca6d04";s:5:"label";s:10:"date debut";s:4:"name";s:16:"caquiz_datedebut";s:4:"type";s:16:"date_time_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:9:"show_date";s:4:"true";s:11:"date_format";s:7:"dd-m-yy";s:11:"time_format";s:5:"HH:mm";s:16:"show_week_number";s:5:"false";s:6:"picker";s:6:"slider";s:17:"save_as_timestamp";s:5:"false";s:16:"get_as_timestamp";s:5:"false";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(252, 71, 'field_5c7679f9a6d05', 'a:15:{s:3:"key";s:19:"field_5c7679f9a6d05";s:5:"label";s:8:"date fin";s:4:"name";s:14:"caquiz_datefin";s:4:"type";s:16:"date_time_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:9:"show_date";s:4:"true";s:11:"date_format";s:7:"dd-m-yy";s:11:"time_format";s:5:"HH:mm";s:16:"show_week_number";s:5:"false";s:6:"picker";s:6:"slider";s:17:"save_as_timestamp";s:5:"false";s:16:"get_as_timestamp";s:5:"false";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5c77ebfd4ac1e";s:8:"operator";s:2:"==";s:5:"value";s:3:"oui";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(253, 82, '_edit_last', '2'),
(254, 82, 'field_5c769d1ecee47', 'a:13:{s:3:"key";s:19:"field_5c769d1ecee47";s:5:"label";s:10:"Suggestion";s:4:"name";s:21:"caquestion_suggestion";s:4:"type";s:8:"textarea";s:12:"instructions";s:41:"Chaque suggestion dans une nouvelle ligne";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(255, 82, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"caquestion";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(256, 82, 'position', 'normal'),
(257, 82, 'layout', 'no_box'),
(258, 82, 'hide_on_screen', ''),
(259, 82, 'field_5c76a00f310f7', 'a:15:{s:3:"key";s:19:"field_5c76a00f310f7";s:5:"label";s:14:"Reponse valide";s:4:"name";s:18:"caquestion_reponse";s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:1:"1";s:3:"max";s:0:"";s:4:"step";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(260, 82, 'field_5c76a05e26701', 'a:15:{s:3:"key";s:19:"field_5c76a05e26701";s:5:"label";s:6:"Points";s:4:"name";s:16:"caquestion_point";s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:1:"0";s:3:"max";s:0:"";s:4:"step";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(264, 83, '_caquestion_suggestion', 'field_5c769d1ecee47'),
(265, 83, 'caquestion_reponse', '2'),
(266, 83, '_caquestion_reponse', 'field_5c76a00f310f7'),
(267, 83, 'caquestion_point', '30'),
(268, 83, '_caquestion_point', 'field_5c76a05e26701'),
(269, 84, '_edit_lock', '1552984315:1'),
(270, 84, '_edit_last', '1'),
(271, 84, 'caquestion_suggestion', '1992\r\n1996\r\n2008\r\n2015'),
(272, 84, '_caquestion_suggestion', 'field_5c769d1ecee47'),
(273, 84, 'caquestion_reponse', '4'),
(274, 84, '_caquestion_reponse', 'field_5c76a00f310f7'),
(275, 84, 'caquestion_point', '10'),
(276, 84, '_caquestion_point', 'field_5c76a05e26701'),
(277, 85, '_edit_lock', '1553269616:1'),
(278, 85, '_edit_last', '1'),
(279, 85, 'caquiz_datedebut', '06-3-2019 00:00'),
(280, 85, '_caquiz_datedebut', 'field_5c76798ca6d04'),
(281, 85, 'caquiz_datefin', '31-3-2019 00:00'),
(282, 85, '_caquiz_datefin', 'field_5c7679f9a6d05'),
(283, 85, 'caquiz_listquestion', 'a:4:{i:0;s:2:"83";i:1;s:2:"84";i:2;s:2:"88";i:3;s:2:"89";}'),
(284, 85, '_caquiz_listquestion', 'field_5c76755856140'),
(285, 85, 'caquiz_active', 'oui'),
(286, 85, '_caquiz_active', 'field_5c77ebfd4ac1e'),
(287, 86, '_edit_lock', '1552984554:1'),
(288, 86, '_edit_last', '1'),
(289, 86, 'caquiz_datedebut', '06-3-2019 00:00'),
(290, 86, '_caquiz_datedebut', 'field_5c76798ca6d04'),
(291, 86, 'caquiz_datefin', '31-3-2019 00:00'),
(292, 86, '_caquiz_datefin', 'field_5c7679f9a6d05'),
(293, 86, 'caquiz_listquestion', 'a:2:{i:0;s:2:"88";i:1;s:2:"89";}'),
(294, 86, '_caquiz_listquestion', 'field_5c76755856140'),
(295, 86, 'caquiz_active', 'oui'),
(296, 86, '_caquiz_active', 'field_5c77ebfd4ac1e'),
(297, 87, '_edit_lock', '1553528413:1'),
(298, 87, '_edit_last', '1'),
(299, 87, 'caquiz_datedebut', '06-3-2019 00:00'),
(300, 87, '_caquiz_datedebut', 'field_5c76798ca6d04'),
(301, 87, 'caquiz_datefin', '31-3-2019 00:00'),
(302, 87, '_caquiz_datefin', 'field_5c7679f9a6d05'),
(303, 87, 'caquiz_listquestion', 'a:4:{i:0;s:2:"89";i:1;s:2:"84";i:2;s:2:"88";i:3;s:2:"83";}'),
(304, 87, '_caquiz_listquestion', 'field_5c76755856140'),
(305, 87, 'caquiz_active', 'non'),
(306, 87, '_caquiz_active', 'field_5c77ebfd4ac1e'),
(307, 71, '_edit_lock', '1551884339:2'),
(308, 82, '_edit_lock', '1551891546:2'),
(309, 88, '_edit_lock', '1552984723:1'),
(310, 88, '_edit_last', '1'),
(311, 88, 'caquestion_suggestion', 'Mhammed Mestiri\r\nMoncef El Okby\r\nHadi Ginati\r\nBéchir Ben Mustapha'),
(312, 88, '_caquestion_suggestion', 'field_5c769d1ecee47'),
(313, 88, 'caquestion_reponse', '4'),
(314, 88, '_caquestion_reponse', 'field_5c76a00f310f7'),
(315, 88, 'caquestion_point', '10'),
(316, 88, '_caquestion_point', 'field_5c76a05e26701'),
(317, 89, '_edit_lock', '1552984816:1'),
(318, 89, '_edit_last', '1'),
(319, 89, 'caquestion_suggestion', 'Abdessalem Younsi\r\nSlim Riahi\r\nMarwen Hamoudia\r\nJamel Atrous'),
(320, 89, '_caquestion_suggestion', 'field_5c769d1ecee47'),
(321, 89, 'caquestion_reponse', '1'),
(322, 89, '_caquestion_reponse', 'field_5c76a00f310f7'),
(323, 89, 'caquestion_point', '20'),
(324, 89, '_caquestion_point', 'field_5c76a05e26701'),
(325, 90, '_edit_lock', '1552985019:1'),
(326, 90, '_edit_last', '1'),
(327, 90, 'caquiz_datedebut', '04-3-2019 00:00'),
(328, 90, '_caquiz_datedebut', 'field_5c76798ca6d04'),
(329, 90, 'caquiz_datefin', '12-3-2019 00:00'),
(330, 90, '_caquiz_datefin', 'field_5c7679f9a6d05'),
(331, 90, 'caquiz_listquestion', 'a:2:{i:0;s:2:"89";i:1;s:2:"83";}'),
(332, 90, '_caquiz_listquestion', 'field_5c76755856140'),
(333, 90, 'caquiz_active', 'non'),
(334, 90, '_caquiz_active', 'field_5c77ebfd4ac1e'),
(335, 91, '_edit_lock', '1552985163:1'),
(336, 91, '_edit_last', '1'),
(337, 91, 'caquiz_datedebut', '11-3-2019 00:00'),
(338, 91, '_caquiz_datedebut', 'field_5c76798ca6d04'),
(339, 91, 'caquiz_datefin', '31-3-2019 00:00'),
(340, 91, '_caquiz_datefin', 'field_5c7679f9a6d05'),
(341, 91, 'caquiz_listquestion', 'a:1:{i:0;s:2:"83";}'),
(342, 91, '_caquiz_listquestion', 'field_5c76755856140'),
(343, 91, 'caquiz_active', 'non'),
(344, 91, '_caquiz_active', 'field_5c77ebfd4ac1e'),
(368, 102, '_wp_attached_file', '2019/03/img.png'),
(346, 94, '_edit_last', '1'),
(347, 94, '_edit_lock', '1552986549:1'),
(348, 94, 'caquiz_datedebut', '12-3-2019 00:00'),
(349, 94, '_caquiz_datedebut', 'field_5c76798ca6d04'),
(350, 94, 'caquiz_datefin', '31-3-2019 00:00'),
(351, 94, '_caquiz_datefin', 'field_5c7679f9a6d05'),
(352, 94, 'caquiz_listquestion', 'a:2:{i:0;s:2:"89";i:1;s:2:"88";}'),
(353, 94, '_caquiz_listquestion', 'field_5c76755856140'),
(354, 94, 'caquiz_active', 'non'),
(355, 94, '_caquiz_active', 'field_5c77ebfd4ac1e'),
(356, 96, '_wp_attached_file', '2019/03/11gratuit-blue.png'),
(357, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:98;s:6:"height";i:89;s:4:"file";s:26:"2019/03/11gratuit-blue.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(358, 97, '_wp_attached_file', '2019/03/11gratuit-blue-1.png'),
(359, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:98;s:6:"height";i:89;s:4:"file";s:28:"2019/03/11gratuit-blue-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(360, 98, '_wp_attached_file', '2019/03/11gratuit-blue-2.png'),
(361, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:98;s:6:"height";i:89;s:4:"file";s:28:"2019/03/11gratuit-blue-2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(362, 99, '_wp_attached_file', '2019/03/couv_22_janvier.png'),
(363, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:702;s:6:"height";i:794;s:4:"file";s:27:"2019/03/couv_22_janvier.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"couv_22_janvier-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"couv_22_janvier-250x283.png";s:5:"width";i:250;s:6:"height";i:283;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:27:"couv_22_janvier-700x792.png";s:5:"width";i:700;s:6:"height";i:792;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:27:"couv_22_janvier-120x136.png";s:5:"width";i:120;s:6:"height";i:136;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:27:"couv_22_janvier-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(364, 100, '_wp_attached_file', '2019/03/couv_22_janvier-1.png'),
(365, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:702;s:6:"height";i:794;s:4:"file";s:29:"2019/03/couv_22_janvier-1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"couv_22_janvier-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:29:"couv_22_janvier-1-250x283.png";s:5:"width";i:250;s:6:"height";i:283;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:29:"couv_22_janvier-1-700x792.png";s:5:"width";i:700;s:6:"height";i:792;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:29:"couv_22_janvier-1-120x136.png";s:5:"width";i:120;s:6:"height";i:136;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:29:"couv_22_janvier-1-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(366, 101, '_wp_attached_file', '2019/03/avatar.png'),
(367, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:202;s:4:"file";s:18:"2019/03/avatar.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"avatar-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:18:"avatar-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:18:"avatar-202x200.png";s:5:"width";i:202;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(369, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:138;s:6:"height";i:150;s:4:"file";s:15:"2019/03/img.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"img-138x150.png";s:5:"width";i:138;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:15:"img-120x130.png";s:5:"width";i:120;s:6:"height";i:130;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(370, 103, '_wp_attached_file', '2019/03/img-1.png'),
(371, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:138;s:6:"height";i:150;s:4:"file";s:17:"2019/03/img-1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img-1-138x150.png";s:5:"width";i:138;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:17:"img-1-120x130.png";s:5:"width";i:120;s:6:"height";i:130;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(372, 104, '_wp_attached_file', '2019/03/img-2.png'),
(373, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:138;s:6:"height";i:150;s:4:"file";s:17:"2019/03/img-2.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img-2-138x150.png";s:5:"width";i:138;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:17:"img-2-120x130.png";s:5:"width";i:120;s:6:"height";i:130;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(374, 105, '_wp_attached_file', '2019/03/img-3.png'),
(375, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:138;s:6:"height";i:150;s:4:"file";s:17:"2019/03/img-3.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img-3-138x150.png";s:5:"width";i:138;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:17:"img-3-120x130.png";s:5:"width";i:120;s:6:"height";i:130;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(376, 106, '_wp_attached_file', '2019/03/img-4.png'),
(377, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:138;s:6:"height";i:150;s:4:"file";s:17:"2019/03/img-4.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img-4-138x150.png";s:5:"width";i:138;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:17:"img-4-120x130.png";s:5:"width";i:120;s:6:"height";i:130;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(378, 107, '_wp_attached_file', '2019/03/form.png'),
(379, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:504;s:6:"height";i:679;s:4:"file";s:16:"2019/03/form.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"form-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"form-250x337.png";s:5:"width";i:250;s:6:"height";i:337;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:16:"form-120x162.png";s:5:"width";i:120;s:6:"height";i:162;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:16:"form-504x200.png";s:5:"width";i:504;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(380, 108, '_wp_attached_file', '2019/03/camob.png'),
(381, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:203;s:4:"file";s:17:"2019/03/camob.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"camob-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"camob-250x156.png";s:5:"width";i:250;s:6:"height";i:156;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:16:"camob-120x75.png";s:5:"width";i:120;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:17:"camob-326x200.png";s:5:"width";i:326;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(382, 109, '_wp_attached_file', '2019/03/still.png'),
(383, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:203;s:4:"file";s:17:"2019/03/still.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"still-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"still-250x156.png";s:5:"width";i:250;s:6:"height";i:156;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:16:"still-120x75.png";s:5:"width";i:120;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:17:"still-326x200.png";s:5:"width";i:326;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(384, 110, '_wp_attached_file', '2019/03/oor.png'),
(385, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:203;s:4:"file";s:15:"2019/03/oor.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"oor-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"oor-250x156.png";s:5:"width";i:250;s:6:"height";i:156;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:14:"oor-120x75.png";s:5:"width";i:120;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:15:"oor-326x200.png";s:5:"width";i:326;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(386, 111, '_wp_attached_file', '2019/03/still-1.png'),
(387, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:203;s:4:"file";s:19:"2019/03/still-1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"still-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"still-1-250x156.png";s:5:"width";i:250;s:6:"height";i:156;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:18:"still-1-120x75.png";s:5:"width";i:120;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:19:"still-1-326x200.png";s:5:"width";i:326;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(388, 112, '_wp_attached_file', '2019/03/mo.png'),
(389, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:203;s:4:"file";s:14:"2019/03/mo.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"mo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:14:"mo-250x156.png";s:5:"width";i:250;s:6:"height";i:156;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:13:"mo-120x75.png";s:5:"width";i:120;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:14:"mo-326x200.png";s:5:"width";i:326;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(390, 113, '_wp_attached_file', '2019/03/still-2.png'),
(391, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:203;s:4:"file";s:19:"2019/03/still-2.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"still-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"still-2-250x156.png";s:5:"width";i:250;s:6:"height";i:156;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:18:"still-2-120x75.png";s:5:"width";i:120;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:19:"still-2-326x200.png";s:5:"width";i:326;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(392, 114, '_wp_attached_file', '2019/03/convertred.png'),
(393, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:45;s:6:"height";i:45;s:4:"file";s:22:"2019/03/convertred.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(394, 115, '_wp_attached_file', '2019/03/convertred-1.png'),
(395, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:45;s:6:"height";i:45;s:4:"file";s:24:"2019/03/convertred-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(396, 116, '_wp_attached_file', '2019/03/convertred-2.png'),
(397, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:45;s:6:"height";i:45;s:4:"file";s:24:"2019/03/convertred-2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(398, 117, '_wp_attached_file', '2019/03/donred.png'),
(399, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:53;s:6:"height";i:43;s:4:"file";s:18:"2019/03/donred.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(400, 118, '_wp_attached_file', '2019/03/Ahmed_Ben_Afia.jpg'),
(401, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:26:"2019/03/Ahmed_Ben_Afia.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"Ahmed_Ben_Afia-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"Ahmed_Ben_Afia-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:26:"Ahmed_Ben_Afia-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:26:"Ahmed_Ben_Afia-512x200.jpg";s:5:"width";i:512;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(402, 119, '_wp_attached_file', '2019/03/Ahmed_Ben_Afia-1.jpg'),
(403, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:28:"2019/03/Ahmed_Ben_Afia-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-1-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-1-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-1-512x200.jpg";s:5:"width";i:512;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(404, 120, '_wp_attached_file', '2019/03/Ahmed_Ben_Afia-2.jpg'),
(405, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:28:"2019/03/Ahmed_Ben_Afia-2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-2-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-2-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-2-512x200.jpg";s:5:"width";i:512;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(406, 121, '_wp_attached_file', '2019/03/still-3.png'),
(407, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:203;s:4:"file";s:19:"2019/03/still-3.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"still-3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"still-3-250x156.png";s:5:"width";i:250;s:6:"height";i:156;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:18:"still-3-120x75.png";s:5:"width";i:120;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:19:"still-3-326x200.png";s:5:"width";i:326;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(408, 122, '_wp_attached_file', '2019/03/oor-1.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(409, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:203;s:4:"file";s:17:"2019/03/oor-1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"oor-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"oor-1-250x156.png";s:5:"width";i:250;s:6:"height";i:156;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:16:"oor-1-120x75.png";s:5:"width";i:120;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:17:"oor-1-326x200.png";s:5:"width";i:326;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(410, 123, '_wp_attached_file', '2019/03/Ahmed_Ben_Afia-3.jpg'),
(411, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:28:"2019/03/Ahmed_Ben_Afia-3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-3-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-3-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-3-512x200.jpg";s:5:"width";i:512;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(412, 124, '_wp_attached_file', '2019/03/Ahmed_Ben_Afia-4.jpg'),
(413, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:28:"2019/03/Ahmed_Ben_Afia-4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-4-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-4-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:28:"Ahmed_Ben_Afia-4-512x200.jpg";s:5:"width";i:512;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(414, 130, '_wp_attached_file', '2019/03/img_footer2.png'),
(415, 130, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:23:"2019/03/img_footer2.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"img_footer2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"img_footer2-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:23:"img_footer2-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:23:"img_footer2-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:22:"img_footer2-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:23:"img_footer2-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(416, 131, '_wp_attached_file', '2019/03/still-4.png'),
(417, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:203;s:4:"file";s:19:"2019/03/still-4.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"still-4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"still-4-250x156.png";s:5:"width";i:250;s:6:"height";i:156;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:18:"still-4-120x75.png";s:5:"width";i:120;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:19:"still-4-326x200.png";s:5:"width";i:326;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(418, 132, '_wp_attached_file', '2019/03/img_footer1.png'),
(419, 132, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:151;s:4:"file";s:23:"2019/03/img_footer1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"img_footer1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"img_footer1-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:23:"img_footer1-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:22:"img_footer1-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:23:"img_footer1-700x151.png";s:5:"width";i:700;s:6:"height";i:151;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(420, 133, '_wp_attached_file', '2019/03/img_footer1-1.png'),
(421, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:151;s:4:"file";s:25:"2019/03/img_footer1-1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"img_footer1-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"img_footer1-1-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"img_footer1-1-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:24:"img_footer1-1-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:25:"img_footer1-1-700x151.png";s:5:"width";i:700;s:6:"height";i:151;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(422, 134, '_wp_attached_file', '2019/03/cafwhite.png'),
(423, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:234;s:6:"height";i:42;s:4:"file";s:20:"2019/03/cafwhite.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"cafwhite-150x42.png";s:5:"width";i:150;s:6:"height";i:42;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:19:"cafwhite-120x22.png";s:5:"width";i:120;s:6:"height";i:22;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(424, 136, '_wp_attached_file', '2019/03/cafwhite-2.png'),
(425, 135, '_wp_attached_file', '2019/03/cafwhite-1.png'),
(426, 137, '_wp_attached_file', '2019/03/cafwhite-3.png'),
(427, 136, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:234;s:6:"height";i:42;s:4:"file";s:22:"2019/03/cafwhite-2.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cafwhite-2-150x42.png";s:5:"width";i:150;s:6:"height";i:42;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:21:"cafwhite-2-120x22.png";s:5:"width";i:120;s:6:"height";i:22;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(428, 135, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:234;s:6:"height";i:42;s:4:"file";s:22:"2019/03/cafwhite-1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cafwhite-1-150x42.png";s:5:"width";i:150;s:6:"height";i:42;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:21:"cafwhite-1-120x22.png";s:5:"width";i:120;s:6:"height";i:22;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(429, 137, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:234;s:6:"height";i:42;s:4:"file";s:22:"2019/03/cafwhite-3.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cafwhite-3-150x42.png";s:5:"width";i:150;s:6:"height";i:42;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:21:"cafwhite-3-120x22.png";s:5:"width";i:120;s:6:"height";i:22;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(430, 138, '_wp_attached_file', '2019/03/img_footer2-1.png'),
(431, 138, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:25:"2019/03/img_footer2-1.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"img_footer2-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"img_footer2-1-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"img_footer2-1-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"img_footer2-1-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:24:"img_footer2-1-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:25:"img_footer2-1-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(432, 139, '_wp_attached_file', '2019/03/still-5.png'),
(433, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:203;s:4:"file";s:19:"2019/03/still-5.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"still-5-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"still-5-250x156.png";s:5:"width";i:250;s:6:"height";i:156;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:18:"still-5-120x75.png";s:5:"width";i:120;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:19:"still-5-326x200.png";s:5:"width";i:326;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(434, 140, '_wp_attached_file', '2019/03/img_footer2-2.png'),
(435, 140, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:25:"2019/03/img_footer2-2.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"img_footer2-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"img_footer2-2-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"img_footer2-2-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"img_footer2-2-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:24:"img_footer2-2-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:25:"img_footer2-2-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(436, 141, '_wp_attached_file', '2019/03/img_footer2-3.png'),
(437, 141, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:25:"2019/03/img_footer2-3.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"img_footer2-3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"img_footer2-3-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"img_footer2-3-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"img_footer2-3-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:24:"img_footer2-3-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:25:"img_footer2-3-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(438, 142, '_wp_attached_file', '2019/03/img_footer2-4.png'),
(439, 142, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:25:"2019/03/img_footer2-4.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"img_footer2-4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"img_footer2-4-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"img_footer2-4-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"img_footer2-4-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:24:"img_footer2-4-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:25:"img_footer2-4-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(440, 143, '_wp_attached_file', '2019/03/img_footer2-5.png'),
(441, 143, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:25:"2019/03/img_footer2-5.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"img_footer2-5-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"img_footer2-5-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"img_footer2-5-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"img_footer2-5-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:24:"img_footer2-5-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:25:"img_footer2-5-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(442, 144, '_wp_attached_file', '2019/03/img_footer2-6.png'),
(443, 144, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:25:"2019/03/img_footer2-6.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"img_footer2-6-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"img_footer2-6-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"img_footer2-6-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"img_footer2-6-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:24:"img_footer2-6-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:25:"img_footer2-6-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(444, 145, '_wp_attached_file', '2019/03/img_footer2-7.png'),
(445, 146, '_wp_attached_file', '2019/03/img_footer2-8.png'),
(446, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:25:"2019/03/img_footer2-7.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"img_footer2-7-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"img_footer2-7-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"img_footer2-7-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"img_footer2-7-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:24:"img_footer2-7-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:25:"img_footer2-7-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(447, 146, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:25:"2019/03/img_footer2-8.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"img_footer2-8-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"img_footer2-8-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"img_footer2-8-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"img_footer2-8-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:24:"img_footer2-8-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:25:"img_footer2-8-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(448, 147, '_wp_attached_file', '2019/03/img_footer2-9.png'),
(449, 147, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:25:"2019/03/img_footer2-9.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"img_footer2-9-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"img_footer2-9-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"img_footer2-9-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"img_footer2-9-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:24:"img_footer2-9-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:25:"img_footer2-9-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(450, 148, '_wp_attached_file', '2019/03/img_footer2-10.png'),
(451, 149, '_wp_attached_file', '2019/03/img_footer2-11.png'),
(452, 150, '_wp_attached_file', '2019/03/img_footer2-12.png'),
(453, 149, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:26:"2019/03/img_footer2-11.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"img_footer2-11-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"img_footer2-11-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"img_footer2-11-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"img_footer2-11-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:25:"img_footer2-11-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:26:"img_footer2-11-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(454, 148, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:26:"2019/03/img_footer2-10.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"img_footer2-10-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"img_footer2-10-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"img_footer2-10-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"img_footer2-10-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:25:"img_footer2-10-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:26:"img_footer2-10-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(455, 150, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:26:"2019/03/img_footer2-12.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"img_footer2-12-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"img_footer2-12-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"img_footer2-12-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"img_footer2-12-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:25:"img_footer2-12-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:26:"img_footer2-12-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(456, 151, '_wp_attached_file', '2019/03/img_footer2-13.png'),
(457, 151, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:26:"2019/03/img_footer2-13.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"img_footer2-13-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"img_footer2-13-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"img_footer2-13-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"img_footer2-13-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:25:"img_footer2-13-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:26:"img_footer2-13-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(458, 152, '_wp_attached_file', '2019/03/img_footer2-14.png'),
(459, 152, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:26:"2019/03/img_footer2-14.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"img_footer2-14-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"img_footer2-14-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"img_footer2-14-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"img_footer2-14-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:25:"img_footer2-14-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:26:"img_footer2-14-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(460, 153, '_wp_attached_file', '2019/03/instagramrouge.png'),
(461, 153, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:13;s:6:"height";i:13;s:4:"file";s:26:"2019/03/instagramrouge.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(462, 154, '_wp_attached_file', '2019/03/img_footer2-15.png'),
(463, 154, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:26:"2019/03/img_footer2-15.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"img_footer2-15-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"img_footer2-15-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"img_footer2-15-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"img_footer2-15-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:25:"img_footer2-15-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:26:"img_footer2-15-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(464, 155, '_wp_attached_file', '2019/03/img_footer2-16.png'),
(465, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:26:"2019/03/img_footer2-16.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"img_footer2-16-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"img_footer2-16-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"img_footer2-16-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"img_footer2-16-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:25:"img_footer2-16-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:26:"img_footer2-16-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(466, 156, '_wp_attached_file', '2019/03/instagramrouge-1.png'),
(467, 156, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:13;s:6:"height";i:13;s:4:"file";s:28:"2019/03/instagramrouge-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(468, 157, '_wp_attached_file', '2019/03/img_footer2-17.png'),
(469, 157, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:26:"2019/03/img_footer2-17.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"img_footer2-17-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"img_footer2-17-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"img_footer2-17-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"img_footer2-17-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:25:"img_footer2-17-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:26:"img_footer2-17-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(470, 158, '_wp_attached_file', '2019/03/img_footer2-18.png'),
(471, 158, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:26:"2019/03/img_footer2-18.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"img_footer2-18-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"img_footer2-18-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"img_footer2-18-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"img_footer2-18-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:25:"img_footer2-18-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:26:"img_footer2-18-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(472, 159, '_wp_attached_file', '2019/03/header_test1.png'),
(473, 159, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:204;s:4:"file";s:24:"2019/03/header_test1.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"header_test1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"header_test1-250x27.png";s:5:"width";i:250;s:6:"height";i:27;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:23:"header_test1-768x82.png";s:5:"width";i:768;s:6:"height";i:82;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:23:"header_test1-700x74.png";s:5:"width";i:700;s:6:"height";i:74;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:23:"header_test1-120x13.png";s:5:"width";i:120;s:6:"height";i:13;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:24:"header_test1-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(474, 160, '_wp_attached_file', '2019/03/instagramrouge-2.png'),
(475, 160, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:13;s:6:"height";i:13;s:4:"file";s:28:"2019/03/instagramrouge-2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(476, 161, '_wp_attached_file', '2019/03/instagramrouge-3.png'),
(477, 161, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:13;s:6:"height";i:13;s:4:"file";s:28:"2019/03/instagramrouge-3.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(478, 162, '_wp_attached_file', '2019/03/img_footer2-19.png'),
(479, 162, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:302;s:4:"file";s:26:"2019/03/img_footer2-19.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"img_footer2-19-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"img_footer2-19-250x52.png";s:5:"width";i:250;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"img_footer2-19-768x161.png";s:5:"width";i:768;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"img_footer2-19-700x147.png";s:5:"width";i:700;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:25:"img_footer2-19-120x25.png";s:5:"width";i:120;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:26:"img_footer2-19-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(480, 163, '_edit_lock', '1553511229:1'),
(481, 163, '_edit_last', '1'),
(482, 163, 'caquiz_datedebut', '25-3-2019 00:00'),
(483, 163, '_caquiz_datedebut', 'field_5c76798ca6d04'),
(484, 163, 'caquiz_datefin', '31-3-2019 00:00'),
(485, 163, '_caquiz_datefin', 'field_5c7679f9a6d05'),
(486, 163, 'caquiz_listquestion', 'a:1:{i:0;s:2:"83";}'),
(487, 163, '_caquiz_listquestion', 'field_5c76755856140'),
(488, 163, 'caquiz_active', 'oui'),
(489, 163, '_caquiz_active', 'field_5c77ebfd4ac1e'),
(490, 164, '_edit_lock', '1553511619:1'),
(491, 164, '_edit_last', '1'),
(492, 164, 'caquiz_datedebut', '25-3-2019 00:00'),
(493, 164, '_caquiz_datedebut', 'field_5c76798ca6d04'),
(494, 164, 'caquiz_datefin', '31-3-2019 00:00'),
(495, 164, '_caquiz_datefin', 'field_5c7679f9a6d05'),
(496, 164, 'caquiz_listquestion', 'a:1:{i:0;s:2:"83";}'),
(497, 164, '_caquiz_listquestion', 'field_5c76755856140'),
(498, 164, 'caquiz_active', 'oui'),
(499, 164, '_caquiz_active', 'field_5c77ebfd4ac1e'),
(500, 165, '_edit_lock', '1553513920:1'),
(501, 165, '_edit_last', '1'),
(502, 165, 'caquiz_datedebut', '25-3-2019 00:00'),
(503, 165, '_caquiz_datedebut', 'field_5c76798ca6d04'),
(504, 165, 'caquiz_datefin', '31-3-2019 00:00'),
(505, 165, '_caquiz_datefin', 'field_5c7679f9a6d05'),
(506, 165, 'caquiz_listquestion', 'a:1:{i:0;s:2:"84";}'),
(507, 165, '_caquiz_listquestion', 'field_5c76755856140'),
(508, 165, 'caquiz_active', 'oui'),
(509, 165, '_caquiz_active', 'field_5c77ebfd4ac1e'),
(510, 166, '_edit_lock', '1553511409:1'),
(511, 166, '_edit_last', '1'),
(512, 166, 'caquiz_datedebut', '25-3-2019 00:00'),
(513, 166, '_caquiz_datedebut', 'field_5c76798ca6d04'),
(514, 166, 'caquiz_datefin', '31-3-2019 00:00'),
(515, 166, '_caquiz_datefin', 'field_5c7679f9a6d05'),
(516, 166, 'caquiz_listquestion', 'a:1:{i:0;s:2:"83";}'),
(517, 166, '_caquiz_listquestion', 'field_5c76755856140'),
(518, 166, 'caquiz_active', 'oui'),
(519, 166, '_caquiz_active', 'field_5c77ebfd4ac1e'),
(520, 163, '_wp_trash_meta_status', 'publish'),
(521, 163, '_wp_trash_meta_time', '1553528507'),
(522, 163, '_wp_desired_post_slug', 'palmares-palmares'),
(523, 166, '_wp_trash_meta_status', 'publish'),
(524, 166, '_wp_trash_meta_time', '1553528507'),
(525, 166, '_wp_desired_post_slug', 'partenaires-partenaires-partenaires-partenaires'),
(526, 164, '_wp_trash_meta_status', 'publish'),
(527, 164, '_wp_trash_meta_time', '1553528508'),
(528, 164, '_wp_desired_post_slug', 'partenaires-partenairespartenaires'),
(529, 165, '_wp_trash_meta_status', 'publish'),
(530, 165, '_wp_trash_meta_time', '1553528508'),
(531, 165, '_wp_desired_post_slug', 'partenairespartenaires');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-12-07 16:28:48', '2018-12-07 15:28:48', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez où supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2018-12-07 16:28:48', '2018-12-07 15:28:48', '', 0, 'http://localhost/cafun/?p=1', 0, 'post', '', 1),
(2, 1, '2018-12-07 16:28:48', '2018-12-07 15:28:48', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://localhost/cafun/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2018-12-07 16:28:48', '2018-12-07 15:28:48', '', 0, 'http://localhost/cafun/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-12-07 16:28:48', '2018-12-07 15:28:48', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/cafun.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2018-12-07 16:28:48', '2018-12-07 15:28:48', '', 0, 'http://localhost/cafun/?page_id=3', 0, 'page', '', 0),
(11, 1, '2018-12-12 17:57:49', '2018-12-12 16:57:49', '', 'produits', '', 'publish', 'closed', 'closed', '', 'acf_produits', '', '', '2018-12-12 17:57:49', '2018-12-12 16:57:49', '', 0, 'http://localhost/cafun/?post_type=acf&amp;p=11', 0, 'acf', '', 0),
(15, 1, '2018-12-13 09:32:40', '2018-12-13 08:32:40', '', 'Les modes de livraison', '', 'publish', 'closed', 'closed', '', 'acf_les-modes-de-livraison', '', '', '2018-12-19 17:08:07', '2018-12-19 16:08:07', '', 0, 'http://localhost/cafun/?post_type=acf&#038;p=15', 0, 'acf', '', 0),
(16, 1, '2018-12-13 11:02:51', '2018-12-13 10:02:51', '', 'Paiement', '', 'publish', 'closed', 'closed', '', 'acf_paiement', '', '', '2018-12-13 11:02:51', '2018-12-13 10:02:51', '', 0, 'http://localhost/cafun/?post_type=acf&amp;p=16', 0, 'acf', '', 0),
(18, 1, '2018-12-17 11:52:35', '2018-12-17 10:52:35', '', 'Par carte bancaire / E-dinar', '', 'publish', 'closed', 'closed', '', 'par-carte-bancaire-e-dinar', '', '', '2018-12-17 15:34:43', '2018-12-17 14:34:43', '', 0, 'http://localhost/cafun/?post_type=capaiements&#038;p=18', 0, 'capaiements', '', 0),
(19, 1, '2018-12-17 11:52:55', '2018-12-17 10:52:55', '', 'Par recharge téléphonique', '', 'publish', 'closed', 'closed', '', 'par-recharge-telephonique', '', '', '2018-12-17 15:34:55', '2018-12-17 14:34:55', '', 0, 'http://localhost/cafun/?post_type=capaiements&#038;p=19', 0, 'capaiements', '', 0),
(20, 1, '2018-12-17 11:53:10', '2018-12-17 10:53:10', '', 'A la livraison', '', 'publish', 'closed', 'closed', '', 'a-la-livraison', '', '', '2018-12-17 15:34:30', '2018-12-17 14:34:30', '', 0, 'http://localhost/cafun/?post_type=capaiements&#038;p=20', 0, 'capaiements', '', 0),
(21, 1, '2018-12-17 11:53:40', '2018-12-17 10:53:40', '', 'Livraison à domicile', '', 'publish', 'closed', 'closed', '', 'livraison-a-domicile', '', '', '2018-12-17 15:35:18', '2018-12-17 14:35:18', '', 0, 'http://localhost/cafun/?post_type=calivraisons&#038;p=21', 0, 'calivraisons', '', 0),
(22, 1, '2018-12-17 11:54:02', '2018-12-17 10:54:02', '', 'Boutique', '', 'publish', 'closed', 'closed', '', 'boutique-2', '', '', '2018-12-17 15:35:07', '2018-12-17 14:35:07', '', 0, 'http://localhost/cafun/?post_type=calivraisons&#038;p=22', 0, 'calivraisons', '', 0),
(23, 1, '2018-12-17 12:05:38', '2018-12-17 11:05:38', '', 'Card', '', 'publish', 'closed', 'closed', '', 'card-2', '', '', '2018-12-17 15:35:31', '2018-12-17 14:35:31', '', 0, 'http://localhost/cafun/?post_type=caproduits&#038;p=23', 0, 'caproduits', '', 0),
(24, 1, '2018-12-17 12:31:48', '2018-12-17 11:31:48', '', 'Sim', '', 'publish', 'closed', 'closed', '', 'sim', '', '', '2018-12-17 15:35:51', '2018-12-17 14:35:51', '', 0, 'http://localhost/cafun/?post_type=caproduits&#038;p=24', 0, 'caproduits', '', 0),
(36, 1, '2018-12-12 13:19:27', '2018-12-12 12:19:27', '', 'phone', '', 'inherit', 'open', 'closed', '', 'phone', '', '', '2018-12-12 13:19:27', '2018-12-12 12:19:27', '', 0, 'http://172.16.16.148/admin/wp-content/uploads/2018/12/phone-1.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2018-12-12 13:19:28', '2018-12-12 12:19:28', '', 'boutique', '', 'inherit', 'open', 'closed', '', 'boutique', '', '', '2018-12-12 13:19:28', '2018-12-12 12:19:28', '', 0, 'http://172.16.16.148/admin/wp-content/uploads/2018/12/boutique-1.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2018-12-12 13:19:28', '2018-12-12 12:19:28', '', 'card', '', 'inherit', 'open', 'closed', '', 'card', '', '', '2018-12-12 13:19:28', '2018-12-12 12:19:28', '', 0, 'http://172.16.16.148/admin/wp-content/uploads/2018/12/card-1.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2018-12-12 13:19:28', '2018-12-12 12:19:28', '', 'close', '', 'inherit', 'open', 'closed', '', 'close', '', '', '2018-12-12 13:19:28', '2018-12-12 12:19:28', '', 0, 'http://172.16.16.148/admin/wp-content/uploads/2018/12/close-1.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2018-12-12 13:19:29', '2018-12-12 12:19:29', '', 'domicile', '', 'inherit', 'open', 'closed', '', 'domicile', '', '', '2018-12-12 13:19:29', '2018-12-12 12:19:29', '', 0, 'http://172.16.16.148/admin/wp-content/uploads/2018/12/domicile-1.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2018-12-17 15:35:47', '2018-12-17 14:35:47', '', 'sim', '', 'inherit', 'open', 'closed', '', 'sim-2', '', '', '2018-12-17 15:35:47', '2018-12-17 14:35:47', '', 24, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2018/12/sim.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2018-12-21 15:25:20', '2018-12-21 14:25:20', '', 'catégories', '', 'publish', 'closed', 'closed', '', 'acf_categories', '', '', '2018-12-21 15:39:46', '2018-12-21 14:39:46', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=acf&#038;p=48', 0, 'acf', '', 0),
(50, 1, '2018-12-21 15:35:34', '2018-12-21 14:35:34', '', 'Groupe 70', '', 'inherit', 'open', 'closed', '', 'groupe-70', '', '', '2018-12-21 15:35:34', '2018-12-21 14:35:34', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2018/12/Groupe-70.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2018-12-21 15:35:39', '2018-12-21 14:35:39', '', 'Groupe 79', '', 'inherit', 'open', 'closed', '', 'groupe-79', '', '', '2018-12-21 15:35:39', '2018-12-21 14:35:39', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2018/12/Groupe-79.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2018-12-21 15:40:56', '2018-12-21 14:40:56', '', 'Paiement', '', 'publish', 'closed', 'closed', '', 'paiement', '', '', '2018-12-21 15:40:56', '2018-12-21 14:40:56', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=cacategory&#038;p=55', 0, 'cacategory', '', 0),
(56, 1, '2018-12-21 15:41:37', '2018-12-21 14:41:37', '', 'Récupération de la carte', '', 'publish', 'closed', 'closed', '', 'recuperation-de-la-carte', '', '', '2018-12-21 15:41:37', '2018-12-21 14:41:37', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=cacategory&#038;p=56', 0, 'cacategory', '', 0),
(58, 1, '2019-02-04 10:24:55', '2019-02-04 09:24:55', '', 'logoCA', '', 'inherit', 'open', 'closed', '', 'logoca', '', '', '2019-02-04 10:24:55', '2019-02-04 09:24:55', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/02/logoCA.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2019-02-04 10:45:58', '2019-02-04 09:45:58', '', 'coverca', '', 'inherit', 'open', 'closed', '', 'coverca', '', '', '2019-02-04 10:45:58', '2019-02-04 09:45:58', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/02/coverca.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2019-02-21 17:19:13', '2019-02-21 16:19:13', '', 'quiz-image', '', 'inherit', 'open', 'closed', '', 'quiz-image', '', '', '2019-02-21 17:19:13', '2019-02-21 16:19:13', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/02/quiz-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2019-02-21 17:19:25', '2019-02-21 16:19:25', '', 'quiz-image', '', 'inherit', 'open', 'closed', '', 'quiz-image-2', '', '', '2019-02-21 17:19:25', '2019-02-21 16:19:25', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/02/quiz-image-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2019-02-21 17:19:50', '2019-02-21 16:19:50', '', 'quiz-image', '', 'inherit', 'open', 'closed', '', 'quiz-image-3', '', '', '2019-02-21 17:19:50', '2019-02-21 16:19:50', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/02/quiz-image-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2019-02-21 17:21:12', '2019-02-21 16:21:12', '', 'quiz-image', '', 'inherit', 'open', 'closed', '', 'quiz-image-4', '', '', '2019-02-21 17:21:12', '2019-02-21 16:21:12', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/02/quiz-image-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-02-21 17:26:57', '2019-02-21 16:26:57', '', 'quiz-image', '', 'inherit', 'open', 'closed', '', 'quiz-image-5', '', '', '2019-02-21 17:26:57', '2019-02-21 16:26:57', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/02/quiz-image-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-02-21 17:26:57', '2019-02-21 16:26:57', '', 'quiz-image', '', 'inherit', 'open', 'closed', '', 'quiz-image-5', '', '', '2019-02-21 17:26:57', '2019-02-21 16:26:57', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/02/quiz-image-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 2, '2019-02-27 12:38:27', '2019-02-27 11:38:27', '', 'QUIZ', '', 'publish', 'closed', 'closed', '', 'acf_quiz', '', '', '2019-02-27 12:38:27', '2019-02-27 11:38:27', '', 0, 'http://localhost/cafun/?post_type=acf&amp;p=70', 0, 'acf', '', 0),
(82, 2, '2019-02-27 15:32:25', '2019-02-27 14:32:25', '', 'Questions', '', 'publish', 'closed', 'closed', '', 'acf_questions', '', '', '2019-02-27 15:32:25', '2019-02-27 14:32:25', '', 0, 'http://localhost/cafun/?post_type=acf&amp;p=82', 0, 'acf', '', 0),
(83, 2, '2019-03-06 10:25:38', '2019-03-06 09:25:38', '', 'Le Club africain a gagné son premier titre de champion lors de la saison :', '', 'publish', 'closed', 'closed', '', 'question-1', '', '', '2019-03-19 09:34:44', '2019-03-19 08:34:44', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=caquestion&#038;p=83', 0, 'caquestion', '', 0),
(84, 2, '2019-03-06 10:26:26', '2019-03-06 09:26:26', '', 'Quelle est l`année du dernier championnat remporté ?', '', 'publish', 'closed', 'closed', '', 'question-2', '', '', '2019-03-19 09:33:53', '2019-03-19 08:33:53', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=caquestion&#038;p=84', 0, 'caquestion', '', 0),
(85, 2, '2019-03-06 10:26:50', '2019-03-06 09:26:50', '', 'Palmarès', '', 'publish', 'closed', 'closed', '', 'quiz-1', '', '', '2019-03-22 15:41:33', '2019-03-22 14:41:33', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=caquiz&#038;p=85', 0, 'caquiz', '', 0),
(86, 2, '2019-03-06 15:54:45', '2019-03-06 14:54:45', '', 'Présidents', '', 'publish', 'closed', 'closed', '', 'quiz-2', '', '', '2019-03-19 09:38:13', '2019-03-19 08:38:13', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=caquiz&#038;p=86', 0, 'caquiz', '', 0),
(87, 2, '2019-03-06 15:55:08', '2019-03-06 14:55:08', '', 'Fondateurs', '', 'publish', 'closed', 'closed', '', 'quiz-3', '', '', '2019-03-25 16:42:02', '2019-03-25 15:42:02', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=caquiz&#038;p=87', 0, 'caquiz', '', 0),
(88, 2, '2019-03-08 11:22:29', '2019-03-08 10:22:29', '', 'Qui est le premier président du club ?', '', 'publish', 'closed', 'closed', '', 'question-3', '', '', '2019-03-19 09:40:18', '2019-03-19 08:40:18', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=caquestion&#038;p=88', 0, 'caquestion', '', 0),
(89, 2, '2019-03-08 11:23:00', '2019-03-08 10:23:00', '', 'Qui est le président actuel du club ?', '', 'publish', 'closed', 'closed', '', 'quesiton-4', '', '', '2019-03-19 09:42:13', '2019-03-19 08:42:13', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=caquestion&#038;p=89', 0, 'caquestion', '', 0),
(90, 2, '2019-03-11 14:43:59', '2019-03-11 13:43:59', '', 'Records', '', 'publish', 'closed', 'closed', '', 'quiz', '', '', '2019-03-19 09:45:34', '2019-03-19 08:45:34', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=caquiz&#038;p=90', 0, 'caquiz', '', 0),
(91, 2, '2019-03-11 14:44:37', '2019-03-11 13:44:37', '', 'Partenaires', '', 'publish', 'closed', 'closed', '', 'quiz-5', '', '', '2019-03-19 09:47:36', '2019-03-19 08:47:36', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=caquiz&#038;p=91', 0, 'caquiz', '', 0),
(94, 2, '2019-03-12 11:43:01', '2019-03-12 10:43:01', '', 'Supporters', '', 'publish', 'closed', 'closed', '', 'quiz-6', '', '', '2019-03-19 09:48:35', '2019-03-19 08:48:35', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=caquiz&#038;p=94', 0, 'caquiz', '', 0),
(98, 0, '2019-03-18 15:50:43', '2019-03-18 14:50:43', '', '1+1gratuit blue', '', 'inherit', 'open', 'closed', '', '11gratuit-blue', '', '', '2019-03-18 15:50:43', '2019-03-18 14:50:43', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/11gratuit-blue-2.png', 0, 'attachment', 'image/png', 0),
(99, 0, '2019-03-18 16:14:06', '2019-03-18 15:14:06', '', 'couv_22_janvier', '', 'inherit', 'open', 'closed', '', 'couv_22_janvier', '', '', '2019-03-18 16:14:06', '2019-03-18 15:14:06', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/couv_22_janvier.png', 0, 'attachment', 'image/png', 0),
(100, 0, '2019-03-18 16:16:06', '2019-03-18 15:16:06', '', 'couv_22_janvier', '', 'inherit', 'open', 'closed', '', 'couv_22_janvier-2', '', '', '2019-03-18 16:16:06', '2019-03-18 15:16:06', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/couv_22_janvier-1.png', 0, 'attachment', 'image/png', 0),
(101, 2, '2019-03-18 17:01:09', '2019-03-18 16:01:09', '', 'avatar', '', 'inherit', 'open', 'closed', '', 'avatar', '', '', '2019-03-18 17:01:09', '2019-03-18 16:01:09', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/avatar.png', 0, 'attachment', 'image/png', 0),
(102, 0, '2019-03-18 18:18:17', '2019-03-18 17:18:17', '', 'img', '', 'inherit', 'open', 'closed', '', 'img', '', '', '2019-03-18 18:18:17', '2019-03-18 17:18:17', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img.png', 0, 'attachment', 'image/png', 0),
(103, 0, '2019-03-18 18:18:54', '2019-03-18 17:18:54', '', 'img', '', 'inherit', 'open', 'closed', '', 'img-2', '', '', '2019-03-18 18:18:54', '2019-03-18 17:18:54', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img-1.png', 0, 'attachment', 'image/png', 0),
(104, 0, '2019-03-18 18:27:54', '2019-03-18 17:27:54', '', 'img', '', 'inherit', 'open', 'closed', '', 'img-3', '', '', '2019-03-18 18:27:54', '2019-03-18 17:27:54', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img-2.png', 0, 'attachment', 'image/png', 0),
(105, 0, '2019-03-18 18:34:02', '2019-03-18 17:34:02', '', 'img', '', 'inherit', 'open', 'closed', '', 'img-4', '', '', '2019-03-18 18:34:02', '2019-03-18 17:34:02', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img-3.png', 0, 'attachment', 'image/png', 0),
(106, 0, '2019-03-18 18:34:31', '2019-03-18 17:34:31', '', 'img', '', 'inherit', 'open', 'closed', '', 'img-5', '', '', '2019-03-18 18:34:31', '2019-03-18 17:34:31', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img-4.png', 0, 'attachment', 'image/png', 0),
(107, 0, '2019-03-18 18:37:16', '2019-03-18 17:37:16', '', 'form', '', 'inherit', 'open', 'closed', '', 'form', '', '', '2019-03-18 18:37:16', '2019-03-18 17:37:16', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/form.png', 0, 'attachment', 'image/png', 0),
(108, 0, '2019-03-18 18:40:54', '2019-03-18 17:40:54', '', 'camob', '', 'inherit', 'open', 'closed', '', 'camob', '', '', '2019-03-18 18:40:54', '2019-03-18 17:40:54', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/camob.png', 0, 'attachment', 'image/png', 0),
(109, 0, '2019-03-18 18:42:47', '2019-03-18 17:42:47', '', 'still', '', 'inherit', 'open', 'closed', '', 'still', '', '', '2019-03-18 18:42:47', '2019-03-18 17:42:47', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/still.png', 0, 'attachment', 'image/png', 0),
(110, 0, '2019-03-18 18:43:34', '2019-03-18 17:43:34', '', 'oor', '', 'inherit', 'open', 'closed', '', 'oor', '', '', '2019-03-18 18:43:34', '2019-03-18 17:43:34', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/oor.png', 0, 'attachment', 'image/png', 0),
(111, 0, '2019-03-18 18:46:57', '2019-03-18 17:46:57', '', 'still', '', 'inherit', 'open', 'closed', '', 'still-2', '', '', '2019-03-18 18:46:57', '2019-03-18 17:46:57', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/still-1.png', 0, 'attachment', 'image/png', 0),
(112, 0, '2019-03-18 18:50:16', '2019-03-18 17:50:16', '', 'mo', '', 'inherit', 'open', 'closed', '', 'mo', '', '', '2019-03-18 18:50:16', '2019-03-18 17:50:16', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/mo.png', 0, 'attachment', 'image/png', 0),
(113, 0, '2019-03-18 18:53:59', '2019-03-18 17:53:59', '', 'still', '', 'inherit', 'open', 'closed', '', 'still-3', '', '', '2019-03-18 18:53:59', '2019-03-18 17:53:59', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/still-2.png', 0, 'attachment', 'image/png', 0),
(114, 0, '2019-03-18 21:47:14', '2019-03-18 20:47:14', '', 'convertred', '', 'inherit', 'open', 'closed', '', 'convertred', '', '', '2019-03-18 21:47:14', '2019-03-18 20:47:14', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/convertred.png', 0, 'attachment', 'image/png', 0),
(115, 0, '2019-03-18 21:49:20', '2019-03-18 20:49:20', '', 'convertred', '', 'inherit', 'open', 'closed', '', 'convertred-2', '', '', '2019-03-18 21:49:20', '2019-03-18 20:49:20', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/convertred-1.png', 0, 'attachment', 'image/png', 0),
(116, 0, '2019-03-18 21:50:18', '2019-03-18 20:50:18', '', 'convertred', '', 'inherit', 'open', 'closed', '', 'convertred-3', '', '', '2019-03-18 21:50:18', '2019-03-18 20:50:18', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/convertred-2.png', 0, 'attachment', 'image/png', 0),
(117, 0, '2019-03-18 21:52:45', '2019-03-18 20:52:45', '', 'donred', '', 'inherit', 'open', 'closed', '', 'donred', '', '', '2019-03-18 21:52:45', '2019-03-18 20:52:45', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/donred.png', 0, 'attachment', 'image/png', 0),
(118, 0, '2019-03-18 22:13:47', '2019-03-18 21:13:47', '', 'Ahmed_Ben_Afia', '', 'inherit', 'open', 'closed', '', 'ahmed_ben_afia', '', '', '2019-03-18 22:13:47', '2019-03-18 21:13:47', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/Ahmed_Ben_Afia.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 0, '2019-03-18 22:13:53', '2019-03-18 21:13:53', '', 'Ahmed_Ben_Afia', '', 'inherit', 'open', 'closed', '', 'ahmed_ben_afia-2', '', '', '2019-03-18 22:13:53', '2019-03-18 21:13:53', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/Ahmed_Ben_Afia-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 0, '2019-03-18 22:14:36', '2019-03-18 21:14:36', '', 'Ahmed_Ben_Afia', '', 'inherit', 'open', 'closed', '', 'ahmed_ben_afia-3', '', '', '2019-03-18 22:14:36', '2019-03-18 21:14:36', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/Ahmed_Ben_Afia-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 0, '2019-03-19 08:47:57', '2019-03-19 07:47:57', '', 'still', '', 'inherit', 'open', 'closed', '', 'still-4', '', '', '2019-03-19 08:47:57', '2019-03-19 07:47:57', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/still-3.png', 0, 'attachment', 'image/png', 0),
(122, 0, '2019-03-19 09:04:46', '2019-03-19 08:04:46', '', 'oor', '', 'inherit', 'open', 'closed', '', 'oor-2', '', '', '2019-03-19 09:04:46', '2019-03-19 08:04:46', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/oor-1.png', 0, 'attachment', 'image/png', 0),
(123, 0, '2019-03-19 09:16:22', '2019-03-19 08:16:22', '', 'Ahmed_Ben_Afia', '', 'inherit', 'open', 'closed', '', 'ahmed_ben_afia-4', '', '', '2019-03-19 09:16:22', '2019-03-19 08:16:22', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/Ahmed_Ben_Afia-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 0, '2019-03-19 09:16:49', '2019-03-19 08:16:49', '', 'Ahmed_Ben_Afia', '', 'inherit', 'open', 'closed', '', 'ahmed_ben_afia-5', '', '', '2019-03-19 09:16:49', '2019-03-19 08:16:49', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/Ahmed_Ben_Afia-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 2, '2019-03-19 09:24:39', '2019-03-19 08:24:39', '', 'quesiton 4', '', 'inherit', 'closed', 'closed', '', '89-autosave-v1', '', '', '2019-03-19 09:24:39', '2019-03-19 08:24:39', '', 89, 'https://ca-fan.chifco.com/bo/89-autosave-v1/', 0, 'revision', '', 0),
(126, 1, '2019-03-19 09:24:57', '2019-03-19 08:24:57', '', 'Le Club africain gagne son premier titre de champion lors de la saison :', '', 'inherit', 'closed', 'closed', '', '83-autosave-v1', '', '', '2019-03-19 09:24:57', '2019-03-19 08:24:57', '', 83, 'https://ca-fan.chifco.com/bo/83-autosave-v1/', 0, 'revision', '', 0),
(127, 1, '2019-03-19 09:31:40', '2019-03-19 08:31:40', '', 'Quelle est l\'année du dernier championnat ?', '', 'inherit', 'closed', 'closed', '', '84-autosave-v1', '', '', '2019-03-19 09:31:40', '2019-03-19 08:31:40', '', 84, 'https://ca-fan.chifco.com/bo/84-autosave-v1/', 0, 'revision', '', 0),
(128, 1, '2019-03-19 09:39:22', '2019-03-19 08:39:22', '', 'Qui est le premier président du club ?', '', 'inherit', 'closed', 'closed', '', '88-autosave-v1', '', '', '2019-03-19 09:39:22', '2019-03-19 08:39:22', '', 88, 'https://ca-fan.chifco.com/bo/88-autosave-v1/', 0, 'revision', '', 0),
(129, 1, '2019-03-19 09:42:11', '2019-03-19 08:42:11', '', 'Qui est le président actuel du club ?', '', 'inherit', 'closed', 'closed', '', '89-autosave-v1', '', '', '2019-03-19 09:42:11', '2019-03-19 08:42:11', '', 89, 'https://ca-fan.chifco.com/bo/89-autosave-v1/', 0, 'revision', '', 0),
(130, 0, '2019-03-21 15:33:11', '2019-03-21 14:33:11', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2', '', '', '2019-03-21 15:33:11', '2019-03-21 14:33:11', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2.png', 0, 'attachment', 'image/png', 0),
(131, 0, '2019-03-21 15:34:15', '2019-03-21 14:34:15', '', 'still', '', 'inherit', 'open', 'closed', '', 'still-5', '', '', '2019-03-21 15:34:15', '2019-03-21 14:34:15', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/still-4.png', 0, 'attachment', 'image/png', 0),
(132, 0, '2019-03-21 15:34:33', '2019-03-21 14:34:33', '', 'img_footer1', '', 'inherit', 'open', 'closed', '', 'img_footer1', '', '', '2019-03-21 15:34:33', '2019-03-21 14:34:33', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer1.png', 0, 'attachment', 'image/png', 0),
(133, 0, '2019-03-21 15:34:37', '2019-03-21 14:34:37', '', 'img_footer1', '', 'inherit', 'open', 'closed', '', 'img_footer1-2', '', '', '2019-03-21 15:34:37', '2019-03-21 14:34:37', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer1-1.png', 0, 'attachment', 'image/png', 0),
(134, 0, '2019-03-21 15:34:43', '2019-03-21 14:34:43', '', 'cafwhite', '', 'inherit', 'open', 'closed', '', 'cafwhite', '', '', '2019-03-21 15:34:43', '2019-03-21 14:34:43', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/cafwhite.png', 0, 'attachment', 'image/png', 0),
(135, 0, '2019-03-21 15:34:46', '2019-03-21 14:34:46', '', 'cafwhite', '', 'inherit', 'open', 'closed', '', 'cafwhite-2', '', '', '2019-03-21 15:34:46', '2019-03-21 14:34:46', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/cafwhite-1.png', 0, 'attachment', 'image/png', 0),
(136, 0, '2019-03-21 15:34:47', '2019-03-21 14:34:47', '', 'cafwhite', '', 'inherit', 'open', 'closed', '', 'cafwhite-3', '', '', '2019-03-21 15:34:47', '2019-03-21 14:34:47', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/cafwhite-2.png', 0, 'attachment', 'image/png', 0),
(137, 0, '2019-03-21 15:34:47', '2019-03-21 14:34:47', '', 'cafwhite', '', 'inherit', 'open', 'closed', '', 'cafwhite-4', '', '', '2019-03-21 15:34:47', '2019-03-21 14:34:47', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/cafwhite-3.png', 0, 'attachment', 'image/png', 0),
(138, 0, '2019-03-21 15:35:03', '2019-03-21 14:35:03', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-2', '', '', '2019-03-21 15:35:03', '2019-03-21 14:35:03', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-1.png', 0, 'attachment', 'image/png', 0),
(139, 0, '2019-03-21 15:35:29', '2019-03-21 14:35:29', '', 'still', '', 'inherit', 'open', 'closed', '', 'still-6', '', '', '2019-03-21 15:35:29', '2019-03-21 14:35:29', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/still-5.png', 0, 'attachment', 'image/png', 0),
(140, 0, '2019-03-21 15:35:30', '2019-03-21 14:35:30', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-3', '', '', '2019-03-21 15:35:30', '2019-03-21 14:35:30', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-2.png', 0, 'attachment', 'image/png', 0),
(141, 0, '2019-03-21 15:38:18', '2019-03-21 14:38:18', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-4', '', '', '2019-03-21 15:38:18', '2019-03-21 14:38:18', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-3.png', 0, 'attachment', 'image/png', 0),
(142, 0, '2019-03-21 15:38:37', '2019-03-21 14:38:37', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-5', '', '', '2019-03-21 15:38:37', '2019-03-21 14:38:37', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-4.png', 0, 'attachment', 'image/png', 0),
(143, 0, '2019-03-21 15:38:42', '2019-03-21 14:38:42', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-6', '', '', '2019-03-21 15:38:42', '2019-03-21 14:38:42', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-5.png', 0, 'attachment', 'image/png', 0),
(144, 0, '2019-03-21 15:39:02', '2019-03-21 14:39:02', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-7', '', '', '2019-03-21 15:39:02', '2019-03-21 14:39:02', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-6.png', 0, 'attachment', 'image/png', 0),
(145, 0, '2019-03-21 15:39:02', '2019-03-21 14:39:02', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-8', '', '', '2019-03-21 15:39:02', '2019-03-21 14:39:02', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-7.png', 0, 'attachment', 'image/png', 0),
(146, 0, '2019-03-21 15:39:02', '2019-03-21 14:39:02', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-9', '', '', '2019-03-21 15:39:02', '2019-03-21 14:39:02', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-8.png', 0, 'attachment', 'image/png', 0),
(147, 0, '2019-03-21 15:39:03', '2019-03-21 14:39:03', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-10', '', '', '2019-03-21 15:39:03', '2019-03-21 14:39:03', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-9.png', 0, 'attachment', 'image/png', 0),
(148, 0, '2019-03-21 15:39:03', '2019-03-21 14:39:03', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-11', '', '', '2019-03-21 15:39:03', '2019-03-21 14:39:03', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-10.png', 0, 'attachment', 'image/png', 0),
(149, 0, '2019-03-21 15:39:03', '2019-03-21 14:39:03', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-12', '', '', '2019-03-21 15:39:03', '2019-03-21 14:39:03', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-11.png', 0, 'attachment', 'image/png', 0),
(150, 0, '2019-03-21 15:39:04', '2019-03-21 14:39:04', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-13', '', '', '2019-03-21 15:39:04', '2019-03-21 14:39:04', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-12.png', 0, 'attachment', 'image/png', 0),
(151, 0, '2019-03-21 15:39:08', '2019-03-21 14:39:08', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-14', '', '', '2019-03-21 15:39:08', '2019-03-21 14:39:08', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-13.png', 0, 'attachment', 'image/png', 0),
(152, 0, '2019-03-21 15:39:29', '2019-03-21 14:39:29', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-15', '', '', '2019-03-21 15:39:29', '2019-03-21 14:39:29', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-14.png', 0, 'attachment', 'image/png', 0),
(153, 0, '2019-03-21 15:40:15', '2019-03-21 14:40:15', '', 'instagramrouge', '', 'inherit', 'open', 'closed', '', 'instagramrouge', '', '', '2019-03-21 15:40:15', '2019-03-21 14:40:15', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/instagramrouge.png', 0, 'attachment', 'image/png', 0),
(154, 0, '2019-03-21 15:41:24', '2019-03-21 14:41:24', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-16', '', '', '2019-03-21 15:41:24', '2019-03-21 14:41:24', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-15.png', 0, 'attachment', 'image/png', 0),
(155, 0, '2019-03-21 15:41:32', '2019-03-21 14:41:32', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-17', '', '', '2019-03-21 15:41:32', '2019-03-21 14:41:32', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-16.png', 0, 'attachment', 'image/png', 0),
(156, 0, '2019-03-21 15:42:14', '2019-03-21 14:42:14', '', 'instagramrouge', '', 'inherit', 'open', 'closed', '', 'instagramrouge-2', '', '', '2019-03-21 15:42:14', '2019-03-21 14:42:14', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/instagramrouge-1.png', 0, 'attachment', 'image/png', 0),
(157, 0, '2019-03-21 15:42:35', '2019-03-21 14:42:35', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-18', '', '', '2019-03-21 15:42:35', '2019-03-21 14:42:35', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-17.png', 0, 'attachment', 'image/png', 0),
(158, 0, '2019-03-21 15:42:41', '2019-03-21 14:42:41', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-19', '', '', '2019-03-21 15:42:41', '2019-03-21 14:42:41', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-18.png', 0, 'attachment', 'image/png', 0),
(159, 0, '2019-03-21 15:43:08', '2019-03-21 14:43:08', '', 'header_test1', '', 'inherit', 'open', 'closed', '', 'header_test1', '', '', '2019-03-21 15:43:08', '2019-03-21 14:43:08', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/header_test1.png', 0, 'attachment', 'image/png', 0),
(160, 0, '2019-03-21 15:53:41', '2019-03-21 14:53:41', '', 'instagramrouge', '', 'inherit', 'open', 'closed', '', 'instagramrouge-3', '', '', '2019-03-21 15:53:41', '2019-03-21 14:53:41', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/instagramrouge-2.png', 0, 'attachment', 'image/png', 0),
(161, 0, '2019-03-21 15:54:01', '2019-03-21 14:54:01', '', 'instagramrouge', '', 'inherit', 'open', 'closed', '', 'instagramrouge-4', '', '', '2019-03-21 15:54:01', '2019-03-21 14:54:01', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/instagramrouge-3.png', 0, 'attachment', 'image/png', 0),
(162, 0, '2019-03-25 09:36:29', '2019-03-25 08:36:29', '', 'img_footer2', '', 'inherit', 'open', 'closed', '', 'img_footer2-20', '', '', '2019-03-25 09:36:29', '2019-03-25 08:36:29', '', 0, 'https://ca-fan.chifco.com/bo/wp-content/uploads/2019/03/img_footer2-19.png', 0, 'attachment', 'image/png', 0),
(163, 1, '2019-03-25 11:56:04', '2019-03-25 10:56:04', '', 'Palmarès Palmarès', '', 'trash', 'closed', 'closed', '', 'palmares-palmares__trashed', '', '', '2019-03-25 16:41:47', '2019-03-25 15:41:47', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=caquiz&#038;p=163', 0, 'caquiz', '', 0),
(164, 1, '2019-03-25 11:56:34', '2019-03-25 10:56:34', '', 'Partenaires PartenairesPartenaires', '', 'trash', 'closed', 'closed', '', 'partenaires-partenairespartenaires__trashed', '', '', '2019-03-25 16:41:48', '2019-03-25 15:41:48', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=caquiz&#038;p=164', 0, 'caquiz', '', 0),
(165, 1, '2019-03-25 11:56:52', '2019-03-25 10:56:52', '', 'PartenairesPartenaires', '', 'trash', 'closed', 'closed', '', 'partenairespartenaires__trashed', '', '', '2019-03-25 16:41:48', '2019-03-25 15:41:48', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=caquiz&#038;p=165', 0, 'caquiz', '', 0),
(166, 1, '2019-03-25 11:57:13', '2019-03-25 10:57:13', '', 'Partenaires Partenaires Partenaires Partenaires', '', 'trash', 'closed', 'closed', '', 'partenaires-partenaires-partenaires-partenaires__trashed', '', '', '2019-03-25 16:41:47', '2019-03-25 15:41:47', '', 0, 'https://ca-fan.chifco.com/bo/?post_type=caquiz&#038;p=166', 0, 'caquiz', '', 0),
(167, 2, '2019-03-25 15:51:01', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-25 15:51:01', '0000-00-00 00:00:00', '', 0, 'https://ca-fan.chifco.com/bo/?p=167', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'cafun'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:7:"caadmin";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '61'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:11:"172.16.16.0";}'),
(41, 1, '_new_email', 'a:2:{s:4:"hash";s:32:"00c957aef7c3847ba9ab260f9113f8f9";s:8:"newemail";s:15:"cafun@gmail.com";}'),
(21, 2, 'nickname', 'caadmin'),
(22, 2, 'first_name', ''),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1545402993'),
(23, 2, 'last_name', ''),
(24, 2, 'description', ''),
(25, 2, 'rich_editing', 'true'),
(26, 2, 'syntax_highlighting', 'true'),
(27, 2, 'comment_shortcuts', 'false'),
(28, 2, 'admin_color', 'fresh'),
(29, 2, 'use_ssl', '0'),
(30, 2, 'show_admin_bar_front', 'true'),
(31, 2, 'locale', ''),
(32, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(33, 2, 'wp_user_level', '10'),
(34, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(40, 2, 'session_tokens', 'a:2:{s:64:"024a3cae25a43f68a2ef8e60f57e38f60ff0b530bd79644b0a6223e41820d4bd";a:4:{s:10:"expiration";i:1553684702;s:2:"ip";s:12:"172.16.16.16";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36";s:5:"login";i:1553511902;}s:64:"ba1d9f76c9b5cdebce81ce5ee191876797b534e894b6dca00239bdf469b122c6";a:4:{s:10:"expiration";i:1553790465;s:2:"ip";s:12:"172.16.16.16";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36";s:5:"login";i:1553617665;}}'),
(36, 2, 'wp_dashboard_quick_press_last_post_id', '167'),
(37, 2, 'community-events-location', 'a:1:{s:2:"ip";s:11:"172.16.16.0";}'),
(38, 2, 'show_welcome_panel', '0'),
(43, 1, 'session_tokens', 'a:3:{s:64:"5e3c930b6921bac8c22325b4e671b46cc6ea2e11305e956b9c13fd7d7d423f34";a:4:{s:10:"expiration";i:1554156323;s:2:"ip";s:12:"172.16.16.16";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36";s:5:"login";i:1552946723;}s:64:"65757620cbcb722b73ca872bc36ead82b10b64f1a4e7fb3aa687f20f17618322";a:4:{s:10:"expiration";i:1554194889;s:2:"ip";s:12:"172.16.16.16";s:2:"ua";s:117:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8";s:5:"login";i:1552985289;}s:64:"fbe0cc34bdb515a73617fbadc13170c912a3e7ce77d9bcbd669ba04d59d1178f";a:4:{s:10:"expiration";i:1554196612;s:2:"ip";s:12:"172.16.16.16";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36";s:5:"login";i:1552987012;}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'cafun', '$P$BqjRYmd6lVPT8oCvQOSWK.5AoUyCl./', 'cafun', 'cafun@gmail.com', '', '2018-12-07 15:28:48', '', 0, 'cafun'),
(2, 'caadmin', '$P$BqoN3z4nM3LJBFhGXMSg0xdxEQi/fv1', 'caadmin', 'caadmin@chifco.com', '', '2019-02-04 09:44:37', '', 0, 'caadmin');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `card_ibfk_1` (`Tel`),
  ADD KEY `typeCard` (`typeCard`);

--
-- Index pour la table `ca_modes`
--
ALTER TABLE `ca_modes`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `image` (`image`);

--
-- Index pour la table `clientimages`
--
ALTER TABLE `clientimages`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `cinunique` (`cin`),
  ADD UNIQUE KEY `emailunique` (`email`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `telephone` (`telephone`);

--
-- Index pour la table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idcommande` (`idcommande`);

--
-- Index pour la table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `number` (`number`),
  ADD KEY `phone_ibfk_1` (`idclient`);

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Index pour la table `quizanswers`
--
ALTER TABLE `quizanswers`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `quizid` (`quizid`,`idclient`),
  ADD KEY `quizanswers_ibfk_1` (`idclient`);

--
-- Index pour la table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `smscode`
--
ALTER TABLE `smscode`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `typecard`
--
ALTER TABLE `typecard`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `card`
--
ALTER TABLE `card`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;
--
-- AUTO_INCREMENT pour la table `ca_modes`
--
ALTER TABLE `ca_modes`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `clientimages`
--
ALTER TABLE `clientimages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;
--
-- AUTO_INCREMENT pour la table `games`
--
ALTER TABLE `games`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT pour la table `phone`
--
ALTER TABLE `phone`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `quizanswers`
--
ALTER TABLE `quizanswers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT pour la table `scores`
--
ALTER TABLE `scores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;
--
-- AUTO_INCREMENT pour la table `smscode`
--
ALTER TABLE `smscode`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;
--
-- AUTO_INCREMENT pour la table `typecard`
--
ALTER TABLE `typecard`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1759;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `card_ibfk_1` FOREIGN KEY (`Tel`) REFERENCES `phone` (`number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `card_ibfk_2` FOREIGN KEY (`typeCard`) REFERENCES `typecard` (`id`);

--
-- Contraintes pour la table `ca_modes`
--
ALTER TABLE `ca_modes`
  ADD CONSTRAINT `ca_modes_ibfk_1` FOREIGN KEY (`image`) REFERENCES `wp_posts` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`telephone`) REFERENCES `phone` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `panier_ibfk_1` FOREIGN KEY (`idcommande`) REFERENCES `commande` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`idclient`) REFERENCES `clients` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `quizanswers`
--
ALTER TABLE `quizanswers`
  ADD CONSTRAINT `quizanswers_ibfk_1` FOREIGN KEY (`idclient`) REFERENCES `clients` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
