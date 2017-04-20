-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 10 Avril 2017 à 19:18
-- Version du serveur :  5.6.24
-- Version de PHP :  5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `smartsearch`
--

-- --------------------------------------------------------

--
-- Structure de la table `actions`
--

CREATE TABLE IF NOT EXISTS `actions` (
  `id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `date_action` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `actions`
--

INSERT INTO `actions` (`id`, `document_id`, `profile_id`, `type`, `date_action`) VALUES
(1, 2, 12, 'favourite', '2017-03-03 20:08'),
(2, 4, 12, 'favourite', '2017-03-03 20:55'),
(3, 1, 12, 'favourite', '2017-03-03 20:59'),
(4, 1, 12, 'view', '2017-03-03 20:48'),
(5, 1, 12, 'view', '2017-03-03 20:40'),
(6, 1, 12, 'view', '2017-03-03 20:40'),
(7, 1, 12, 'view', '2017-03-03 20:41'),
(8, 1, 12, 'view', '2017-03-03 20:41'),
(9, 1, 12, 'view', '2017-03-03 21:36'),
(10, 1, 12, 'view', '2017-03-03 21:31'),
(11, 1, 12, 'view', '2017-03-03 21:35'),
(12, 1, 12, 'view', '2017-03-03 21:37'),
(13, 1, 12, 'view', '2017-03-03 21:48'),
(14, 1, 12, 'view', '2017-03-03 21:36'),
(15, 1, 12, 'view', '2017-03-03 21:37'),
(16, 1, 12, 'view', '2017-03-03 21:38'),
(17, 1, 12, 'view', '2017-03-03 21:38'),
(18, 1, 12, 'view', '2017-03-03 21:39'),
(19, 1, 12, 'view', '2017-03-03 21:40'),
(20, 1, 12, 'view', '2017-03-03 21:40'),
(21, 1, 12, 'view', '2017-03-03 21:41'),
(22, 1, 12, 'view', '2017-03-03 21:30'),
(23, 1, 12, 'view', '2017-03-03 21:32'),
(24, 1, 12, 'view', '2017-03-03 21:50'),
(25, 1, 12, 'view', '2017-03-03 21:54'),
(26, 4, 12, 'view', '2017-03-03 21:15'),
(27, 1, 12, 'view', '2017-03-03 21:51'),
(28, 1, 12, 'view', '2017-03-06 14:05'),
(29, 1, 12, 'view', '2017-03-06 14:08'),
(30, 5, 12, 'view', '2017-03-06 14:28'),
(31, 5, 12, 'view', '2017-03-06 14:59'),
(32, 5, 12, 'download', '2017-03-06 16:41'),
(33, 5, 12, 'download', '2017-03-06 16:45'),
(34, 2, 12, 'download', '2017-03-06 16:43'),
(35, 5, 12, 'download', '2017-03-06 16:06'),
(36, 5, 12, 'download', '2017-03-06 19:01'),
(37, 5, 12, 'download', '2017-03-06 19:33'),
(38, 5, 12, 'download', '2017-03-06 19:08'),
(39, 5, 12, 'download', '2017-03-06 19:21'),
(40, 5, 12, 'download', '2017-03-06 19:53'),
(41, 5, 12, 'download', '2017-03-06 19:28'),
(42, 5, 12, 'download', '2017-03-06 19:49'),
(43, 5, 12, 'download', '2017-03-06 19:57'),
(44, 5, 12, 'download', '2017-03-06 19:16'),
(45, 5, 12, 'download', '2017-03-06 19:29'),
(46, 5, 12, 'download', '2017-03-06 19:35'),
(47, 5, 12, 'download', '2017-03-06 19:48'),
(48, 5, 12, 'download', '2017-03-06 19:49'),
(49, 5, 12, 'download', '2017-03-06 19:52'),
(50, 5, 12, 'download', '2017-03-06 19:54'),
(152, 4, 12, 'download', '2017-03-07 21:35'),
(153, 4, 12, 'unlike', '2017-03-07 21:27'),
(154, 3, 12, 'favourite', '2017-03-07 21:55'),
(155, 3, 12, 'like', '2017-03-07 21:06'),
(156, 3, 12, 'Send', '2017-03-07 21:42'),
(157, 5, 12, 'download', '2017-03-07 22:22'),
(158, 1, 12, 'Send', '2017-03-07 22:00'),
(159, 1, 12, 'Send', '2017-03-07 22:02'),
(160, 1, 12, 'Send', '2017-03-07 22:02'),
(161, 1, 12, 'Send', '2017-03-07 22:03'),
(162, 1, 12, 'Send', '2017-03-07 22:03'),
(163, 1, 12, 'Send', '2017-03-07 22:04'),
(164, 1, 12, 'Send', '2017-03-07 22:05'),
(165, 5, 12, 'favourite', '2017-03-07 22:01'),
(166, 5, 12, 'favourite', '2017-03-07 22:02'),
(167, 5, 12, 'favourite', '2017-03-07 22:56'),
(168, 5, 12, 'favourite', '2017-03-07 22:02'),
(169, 1, 12, 'favourite', '2017-03-07 22:12'),
(170, 5, 12, 'favourite', '2017-03-07 22:25'),
(171, 5, 12, 'favourite', '2017-03-07 22:27'),
(172, 5, 12, 'favourite', '2017-03-08 14:49'),
(173, 5, 12, 'download', '2017-03-08 14:03'),
(174, 5, 12, 'favourite', '2017-03-08 14:15'),
(175, 4, 12, 'favourite', '2017-03-08 19:17'),
(176, 5, 4, 'download', '2017-03-24 00:47'),
(177, 10, 4, 'favourite', '2017-04-06 10:05'),
(178, 10, 4, 'download', '2017-04-06 10:08'),
(179, 10, 4, 'Send', '2017-04-06 10:56'),
(180, 10, 4, 'unlike', '2017-04-06 10:02'),
(181, 10, 4, 'unlike', '2017-04-06 10:05');

-- --------------------------------------------------------

--
-- Structure de la table `attachments`
--

CREATE TABLE IF NOT EXISTS `attachments` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `keyword` text,
  `url` varchar(222) NOT NULL,
  `extension` varchar(222) NOT NULL,
  `document_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `attachments`
--

INSERT INTO `attachments` (`id`, `name`, `keyword`, `url`, `extension`, `document_id`) VALUES
(1, 'BilelBlewafi - Employment Offer Letter 2 (2).pdf', '', 'files\\Stockage\\protected\\Informatique\\BilelBlewafi - Employment Offer Letter 2 (2).pdf', 'pdf', 1),
(2, 'BilelBlewafi - Employment Offer Letter 2 scan.pdf', '', 'files\\Stockage\\protected\\Informatique\\BilelBlewafi - Employment Offer Letter 2 scan.pdf', 'pdf', 1),
(3, 'BilelBlewafi - Employment Offer Letter 2.pdf', '', 'files\\Stockage\\protected\\Informatique\\BilelBlewafi - Employment Offer Letter 2.pdf', 'pdf', 1),
(4, 'Cahier-de-charge-bilel-marwa-safa.docx', '', 'files\\Stockage\\protected\\Informatique\\Cahier-de-charge-bilel-marwa-safa.docx', 'docx', 1),
(5, 'New Document Microsoft Word.docx', '', 'files\\Stockage\\protected\\Informatique\\New Document Microsoft Word.docx', 'docx', 1),
(6, 'Photos du journal.html', '', 'files\\Stockage\\protected\\Informatique\\Photos du journal.html', 'html', 1),
(7, 'BilelBlewafi - Employment Offer Letter 2 (2).pdf', '', 'files\\Stockage\\public\\php\\BilelBlewafi - Employment Offer Letter 2 (2).pdf', 'pdf', 2),
(8, 'BilelBlewafi - Employment Offer Letter 2 scan.pdf', '', 'files\\Stockage\\public\\php\\BilelBlewafi - Employment Offer Letter 2 scan.pdf', 'pdf', 2),
(9, 'BilelBlewafi - Employment Offer Letter 2.pdf', '', 'files\\Stockage\\public\\php\\BilelBlewafi - Employment Offer Letter 2.pdf', 'pdf', 2),
(10, 'Cahier-de-charge-bilel-marwa-safa.docx', '', 'files\\Stockage\\public\\php\\Cahier-de-charge-bilel-marwa-safa.docx', 'docx', 2),
(11, 'New Document Microsoft Word.docx', '', 'files\\Stockage\\public\\php\\New Document Microsoft Word.docx', 'docx', 2),
(12, 'Photos du journal.html', '', 'files\\Stockage\\public\\php\\Photos du journal.html', 'html', 2),
(13, 'BilelBlewafi - Employment Offer Letter 2 (2).pdf', '', 'files\\Stockage\\public\\fs\\BilelBlewafi - Employment Offer Letter 2 (2).pdf', 'pdf', 3),
(14, 'BilelBlewafi - Employment Offer Letter 2 scan.pdf', '', 'files\\Stockage\\public\\fs\\BilelBlewafi - Employment Offer Letter 2 scan.pdf', 'pdf', 3),
(15, 'BilelBlewafi - Employment Offer Letter 2.pdf', '', 'files\\Stockage\\public\\fs\\BilelBlewafi - Employment Offer Letter 2.pdf', 'pdf', 3),
(16, 'Cahier-de-charge-bilel-marwa-safa.docx', '', 'files\\Stockage\\public\\fs\\Cahier-de-charge-bilel-marwa-safa.docx', 'docx', 3),
(17, 'New Document Microsoft Word.docx', '', 'files\\Stockage\\public\\fs\\New Document Microsoft Word.docx', 'docx', 3),
(18, 'Photos du journal.html', '', 'files\\Stockage\\public\\fs\\Photos du journal.html', 'html', 3),
(19, 'Cahier-de-charge-bilel-marwa-safa.docx', '', 'files\\Stockage\\protected\\document 2\\Cahier-de-charge-bilel-marwa-safa.docx', 'docx', 4),
(20, 'New Document Microsoft Word.docx', '', 'files\\Stockage\\protected\\document 2\\New Document Microsoft Word.docx', 'docx', 4),
(21, 'Photos du journal.html', '', 'files\\Stockage\\protected\\document 2\\Photos du journal.html', 'html', 4),
(22, 'Concevoir un formulaire.pdf', '', 'files\\Stockage\\protected\\bocument1\\Concevoir un formulaire.pdf', 'pdf', 5),
(23, '', '', 'files\\Stockage\\Select your visibility\\\\', '', 6),
(24, 'Plafond avec spots lumineux.jpg', '', 'files\\Stockage\\protected\\document nathalie\\Plafond avec spots lumineux.jpg', 'jpg', 7),
(25, 'Remerciements.docx', '', 'files\\Stockage\\protected\\document nathalie\\Remerciements.docx', 'docx', 7),
(26, 'residence.txt', '', 'files\\Stockage\\protected\\document nathalie\\residence.txt', 'txt', 7),
(27, '', '', 'files\\Stockage\\Select your visibility\\\\', '', 8),
(28, 'debug.log', '', 'files\\Stockage\\public\\ghm\\debug.log', 'log', 9),
(29, 'New Document Microsoft Word (2).docx', '', 'files\\Stockage\\public\\doc1\\New Document Microsoft Word (2).docx', 'docx', 10),
(30, 'New Document Microsoft Word (3).docx', '', 'files\\Stockage\\public\\doc1\\New Document Microsoft Word (3).docx', 'docx', 10),
(31, 'New Document Microsoft Word.docx', '', 'files\\Stockage\\public\\doc1\\New Document Microsoft Word.docx', 'docx', 10),
(32, 'New Text Document.txt', '', 'files\\Stockage\\public\\doc1\\New Text Document.txt', 'txt', 10),
(33, 'Remerciements.docx', '', 'files\\Stockage\\public\\doc1\\Remerciements.docx', 'docx', 10);

-- --------------------------------------------------------

--
-- Structure de la table `axes`
--

CREATE TABLE IF NOT EXISTS `axes` (
  `id` int(11) NOT NULL,
  `titre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `bankaccounts`
--

CREATE TABLE IF NOT EXISTS `bankaccounts` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `description` varchar(222) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `description`) VALUES
(1, 'bilel'),
(2, 'categorei2'),
(3, 'categorie1'),
(4, 'categorei2'),
(5, 'bilel belwafi');

-- --------------------------------------------------------

--
-- Structure de la table `chart_js`
--

CREATE TABLE IF NOT EXISTS `chart_js` (
  `id` int(11) NOT NULL,
  `labels` varchar(10) NOT NULL,
  `mlabels` varchar(100) NOT NULL,
  `data` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `component_categorys`
--

CREATE TABLE IF NOT EXISTS `component_categorys` (
  `id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `component_customers`
--

CREATE TABLE IF NOT EXISTS `component_customers` (
  `id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `component_customers`
--

INSERT INTO `component_customers` (`id`, `component_id`, `customer_id`) VALUES
(1, 22, 1),
(2, 22, 2),
(3, 22, 3),
(4, 22, 5),
(5, 22, 1),
(6, 22, 2),
(7, 22, 3),
(8, 22, 5),
(9, 19, 0),
(10, 23, 1),
(11, 23, 2),
(12, 23, 3),
(13, 23, 5),
(14, 24, 1),
(15, 24, 2),
(16, 24, 3),
(17, 24, 5),
(18, 25, 0),
(19, 26, 1),
(20, 26, 2),
(21, 26, 3),
(22, 26, 5),
(23, 27, 2),
(24, 28, 1),
(25, 29, 1),
(26, 30, 1),
(27, 31, 1),
(28, 32, 1);

-- --------------------------------------------------------

--
-- Structure de la table `component_languages`
--

CREATE TABLE IF NOT EXISTS `component_languages` (
  `id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `component_languages`
--

INSERT INTO `component_languages` (`id`, `component_id`, `language_id`) VALUES
(1, 22, 1),
(2, 22, 3),
(3, 22, 4),
(4, 22, 1),
(5, 22, 3),
(6, 22, 4),
(7, 19, 1),
(8, 19, 3),
(9, 19, 4),
(10, 23, 1),
(11, 23, 3),
(12, 23, 4),
(13, 24, 1),
(14, 24, 3),
(15, 24, 4),
(16, 25, 0),
(17, 26, 1),
(18, 26, 3),
(19, 26, 4),
(20, 27, 1),
(21, 27, 3),
(22, 27, 4),
(23, 28, 1),
(24, 29, 1),
(25, 30, 1),
(26, 31, 1),
(27, 32, 1);

-- --------------------------------------------------------

--
-- Structure de la table `component_sectors`
--

CREATE TABLE IF NOT EXISTS `component_sectors` (
  `id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `component_sectors`
--

INSERT INTO `component_sectors` (`id`, `component_id`, `sector_id`) VALUES
(1, 22, 1),
(2, 22, 13),
(3, 22, 14),
(4, 22, 18),
(5, 22, 21),
(6, 22, 1),
(7, 22, 13),
(8, 22, 14),
(9, 22, 18),
(10, 22, 21),
(11, 19, 0),
(12, 23, 1),
(13, 23, 13),
(14, 23, 14),
(15, 23, 18),
(16, 23, 21),
(17, 24, 1),
(18, 24, 13),
(19, 24, 14),
(20, 24, 18),
(21, 24, 21),
(22, 25, 0),
(23, 26, 1),
(24, 26, 13),
(25, 26, 14),
(26, 26, 18),
(27, 26, 21),
(28, 27, 0),
(29, 28, 13),
(30, 29, 13),
(31, 30, 13),
(32, 31, 13),
(33, 32, 13);

-- --------------------------------------------------------

--
-- Structure de la table `composants`
--

CREATE TABLE IF NOT EXISTS `composants` (
  `id` int(11) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `composants`
--

INSERT INTO `composants` (`id`, `titre`, `description`, `type_id`) VALUES
(27, '', '            ', 0);

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL,
  `description` varchar(222) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `customers`
--

INSERT INTO `customers` (`id`, `description`) VALUES
(1, 'customers bilel belwafi'),
(2, 'customers vvvvv'),
(3, 'customers1'),
(5, ' xcvxcv');

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(11) NOT NULL,
  `name` varchar(222) DEFAULT NULL,
  `country` varchar(222) DEFAULT NULL,
  `them` varchar(222) DEFAULT NULL,
  `description` varchar(222) DEFAULT NULL,
  `keyword` text,
  `price` varchar(22) DEFAULT NULL,
  `creation_date` varchar(222) DEFAULT NULL,
  `url` varchar(222) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `size` varchar(123) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `documents`
--

INSERT INTO `documents` (`id`, `name`, `country`, `them`, `description`, `keyword`, `price`, `creation_date`, `url`, `profile_id`, `size`) VALUES
(1, 'Informatique', 'D524, 63700 La Crouzille, France', 'formatation', 'formation ajax', 'ajax,java ,php', '0', '2017-02-28 22:th', 'files\\Stockage\\protected\\Informatique\\New Document Microsoft Word.docx', 12, '1.7614936828613'),
(2, 'php', 'D524, 63700 La Crouzille, France', 'php', 'php', 'php css', '0', '2017-02-28 23:th', 'files\\Stockage\\public\\php\\New Document Microsoft Word.docx', 12, '1.7614936828613'),
(3, 'fs', '130 Westmorland St, Moncton, NB E1C 1G2, Canada', 'sdfg', 'gs', 'nodejs', '0', '2017-02-28 23:th', 'files\\Stockage\\public\\fs\\BilelBlewafi - Employment Offer Letter 2 scan.pdf', 12, '2.2716207504272'),
(4, 'document 2', '130 Westmorland St, Moncton, NB E1C 1G2, Canada', 'bile', 'pour test', 'francis', '0', '2017-03-01 20:st', 'files\\Stockage\\protected\\document 2\\BilelBlewafi - Employment Offer Letter 2.pdf', 12, '1.1080150604248'),
(5, 'bocument1', '130 Westmorland St, Moncton, NB E1C 1G2, Canada', 'dd', 'ddddd', 'bil,php,facebook', '0', '2017-03-06 14:th', 'files\\Stockage\\protected\\bocument1\\Exercice 04.pdf', 12, '0.71043395996094'),
(6, '', 'D524, 63700 La Crouzille, France', '', '', '', '0', '2017-03-08 17:th', 'files\\Stockage\\Select your visibility\\\\', 12, '0'),
(7, 'document nathalie', 'City Hall Park Path, New York, NY 10007, États-Unis', 'minicupalite', 'test pour nathalie', 'nathalie,test,frabcis', '0', '2017-03-08 21:th', 'files\\Stockage\\protected\\document nathalie\\Remerciements.docx', 12, '0.076962471008301'),
(8, '', 'Bilbao, Espagne', '', '', '', '0', '2017-03-09 20:th', 'files\\Stockage\\Select your visibility\\\\', 12, '0'),
(9, 'ghm', 'SK-914, Division No. 18, Unorganized, SK S0J, Canada', 'hjghuj', 'ghjkghj', 'ghjk', '0', '2017-03-16 14:th', 'files\\Stockage\\public\\ghm\\chrome_100_percent.pak', 14, '0.4691858291626'),
(10, 'doc1', 'SK-914, Division No. 18, Unorganized, SK S0J, Canada', 'them2', 'documentation pour test a mathieu', 'php,mathieu,javascript ,moncton', '0', '2017-04-06 09:th', 'files\\Stockage\\public\\doc1\\NB_T2202A_LS.pdf', 14, '0.21684837341309');

-- --------------------------------------------------------

--
-- Structure de la table `document_categories`
--

CREATE TABLE IF NOT EXISTS `document_categories` (
  `id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `document_categories`
--

INSERT INTO `document_categories` (`id`, `document_id`, `categorie_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 3, 3),
(8, 4, 2),
(9, 4, 3),
(10, 5, 1),
(11, 5, 2),
(12, 7, 1),
(13, 7, 2),
(14, 7, 3),
(15, 9, 2),
(16, 10, 1),
(17, 10, 2);

-- --------------------------------------------------------

--
-- Structure de la table `document_customers`
--

CREATE TABLE IF NOT EXISTS `document_customers` (
  `id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `document_customers`
--

INSERT INTO `document_customers` (`id`, `document_id`, `customer_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 4, 1),
(8, 4, 2),
(9, 5, 2),
(10, 5, 3),
(11, 7, 1),
(12, 7, 2),
(13, 7, 3),
(14, 9, 2),
(15, 10, 4);

-- --------------------------------------------------------

--
-- Structure de la table `document_languages`
--

CREATE TABLE IF NOT EXISTS `document_languages` (
  `id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `document_languages`
--

INSERT INTO `document_languages` (`id`, `document_id`, `language_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 2),
(4, 3, 1),
(5, 3, 2),
(6, 4, 2),
(7, 4, 1),
(8, 5, 1),
(9, 5, 2),
(10, 7, 1),
(11, 7, 3),
(12, 9, 1),
(13, 9, 2),
(14, 10, 1),
(15, 10, 2);

-- --------------------------------------------------------

--
-- Structure de la table `document_sectors`
--

CREATE TABLE IF NOT EXISTS `document_sectors` (
  `id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `document_sectors`
--

INSERT INTO `document_sectors` (`id`, `document_id`, `sector_id`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 2, 2),
(4, 3, 4),
(5, 3, 5),
(6, 3, 6),
(7, 3, 7),
(8, 4, 1),
(9, 4, 2),
(10, 5, 1),
(11, 5, 2),
(12, 7, 2),
(13, 7, 3),
(14, 9, 2),
(15, 9, 3),
(16, 9, 4),
(17, 10, 1),
(18, 10, 2),
(19, 10, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fileupload`
--

CREATE TABLE IF NOT EXISTS `fileupload` (
  `id` int(11) NOT NULL,
  `contant` text NOT NULL,
  `str_con` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `groupe_users`
--

CREATE TABLE IF NOT EXISTS `groupe_users` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `nombre` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `historicals`
--

CREATE TABLE IF NOT EXISTS `historicals` (
  `period` varchar(200) NOT NULL,
  `rabais` varchar(200) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int(11) NOT NULL,
  `ref` varchar(222) NOT NULL,
  `date` varchar(222) NOT NULL,
  `total_price` varchar(222) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `invoice_details`
--

CREATE TABLE IF NOT EXISTS `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_ligne` varchar(222) NOT NULL,
  `price` varchar(22) NOT NULL,
  `quantity` varchar(222) NOT NULL,
  `invoice_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `price` varchar(222) NOT NULL,
  `description` varchar(222) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `description`) VALUES
(1, 'undefined', 'undefined', 'juste pour l test,'),
(3, 'cvb', 'cvbvb', 'bcv');

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `abbreviation` varchar(222) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `languages`
--

INSERT INTO `languages` (`id`, `name`, `abbreviation`) VALUES
(1, 'francais arabe', 'fr'),
(3, 'arabe', 'ar'),
(4, 'farncais', 'frfr');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `date_message` varchar(200) NOT NULL,
  `vu` varchar(20) NOT NULL,
  `id_profile_send` int(11) NOT NULL,
  `id_profile_recu` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`id`, `description`, `date_message`, `vu`, `id_profile_send`, `id_profile_recu`) VALUES
(1, 'conditions fournit des conditions pour la clause WHERE de la requête.\r\nlimit Définit le nombre de lignes que vous voulez.\r\noffset Définit l’offset de la page que vous souhaitez. Vous pouvez aussi utiliser page pour faciliter le calcul.\r\ncontain définit les associations à charger en eager.\r\nfields limite les champs chargés dans l’entity. Charger seulement quelques champs peut faire que les entities se comportent de manière incorrecte.\r\ngroup ajoute une clause GROUP BY à votre requête. C’est utile quand vous utilisez les fonctions d’agrégation.\r\nhaving ajoute une clause HAVING à votre requête.\r\njoin définit les jointures personnalisées supplémentaires.\r\norder ordonne l’ensemble des résultats.', '12;23;3', 'non', 12, 14),
(13, 'message', 'March 14, 2017, 12:10 pm', 'non', 12, 14),
(17, 'message', 'March 14, 2017, 12:37 pm', 'non', 12, 14),
(18, 'message', 'March 14, 2017, 12:39 pm', 'non', 12, 14),
(19, 'message', 'March 14, 2017, 3:19 pm', 'non', 12, 14);

-- --------------------------------------------------------

--
-- Structure de la table `mode_payments`
--

CREATE TABLE IF NOT EXISTS `mode_payments` (
  `id` int(11) NOT NULL,
  `description` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `date_notification` varchar(222) NOT NULL,
  `vu` varchar(20) NOT NULL,
  `id_profile_send` int(11) NOT NULL,
  `id_profile_recu` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `notifications`
--

INSERT INTO `notifications` (`id`, `description`, `date_notification`, `vu`, `id_profile_send`, `id_profile_recu`) VALUES
(1, 'Our plans include unlimited texting, calling, and data, starting as low as $13.99 per month with no contracts. We even have a free, Wi-Fi only version of TextNow, available for download on your existing device.', '12-05-2016', 'non', 13, 14),
(2, 'fhker', '23323', 're', 15, 14);

-- --------------------------------------------------------

--
-- Structure de la table `offers`
--

CREATE TABLE IF NOT EXISTS `offers` (
  `id` int(11) NOT NULL,
  `nombre` varchar(222) NOT NULL,
  `price_ligne` varchar(222) NOT NULL,
  `regulation_id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL,
  `payment_date` varchar(222) NOT NULL,
  `mode_payment_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `permission_access`
--

CREATE TABLE IF NOT EXISTS `permission_access` (
  `id` int(11) NOT NULL,
  `personal_offers_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `permission` varchar(222) NOT NULL,
  `groupe_id` int(11) NOT NULL,
  `date_debut` varchar(222) NOT NULL,
  `date_fin` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `personal_offers`
--

CREATE TABLE IF NOT EXISTS `personal_offers` (
  `id` int(11) NOT NULL,
  `nombre` varchar(222) NOT NULL,
  `price_ligne` varchar(222) NOT NULL,
  `historical_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `plans`
--

CREATE TABLE IF NOT EXISTS `plans` (
  `id` int(11) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `date_creartion` varchar(222) NOT NULL,
  `adress` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `prix` varchar(200) NOT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `regulations`
--

CREATE TABLE IF NOT EXISTS `regulations` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `date` varchar(222) NOT NULL,
  `total_price` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sample_table`
--

CREATE TABLE IF NOT EXISTS `sample_table` (
  `id` int(6) unsigned NOT NULL,
  `Rangees` varchar(30) NOT NULL,
  `aa` int(11) DEFAULT NULL,
  `bb` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sectors`
--

CREATE TABLE IF NOT EXISTS `sectors` (
  `id` int(11) NOT NULL,
  `description` varchar(222) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sectors`
--

INSERT INTO `sectors` (`id`, `description`) VALUES
(13, 'dsfsdfsdfsdgdfgdfg'),
(14, 'sdfsdfsdfsdfsdfsdfsdf'),
(18, 'dfghdfghdfh'),
(21, 'fdhdfh');

-- --------------------------------------------------------

--
-- Structure de la table `smarttable`
--

CREATE TABLE IF NOT EXISTS `smarttable` (
  `id` int(11) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `smarttable`
--

INSERT INTO `smarttable` (`id`, `firstName`, `lastName`, `username`, `email`, `age`) VALUES
(1, 'asd', 'asd', 'asd', 'asd@asd.com', 12),
(2, 'dfg', 'dfg', 'dfg', 'dfg@dfg.com', 25),
(3, 'qwe', 'qwe', 'qwe', 'qwe@qwe.com', 45),
(4, 'yui', 'yui', 'yui', 'yui@yui.com', 55),
(5, 'sdf', 'sdf', 'sdf', 'sdf', 23);

-- --------------------------------------------------------

--
-- Structure de la table `social_profiles`
--

CREATE TABLE IF NOT EXISTS `social_profiles` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `social_network_name` varchar(64) DEFAULT NULL,
  `social_network_id` varchar(128) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `display_name` varchar(128) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `link` varchar(512) NOT NULL,
  `picture` varchar(512) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `social_profiles`
--

INSERT INTO `social_profiles` (`id`, `user_id`, `social_network_name`, `social_network_id`, `email`, `display_name`, `first_name`, `last_name`, `link`, `picture`, `created`, `modified`, `status`) VALUES
(1, 12, 'bilel belwafi', NULL, 'bilel', 'bilel belwafi', 'bilel', 'belwafi', '', 'robert1.jpg', '2017-03-15 00:00:00', '2017-03-24 00:00:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(11) NOT NULL,
  `description` varchar(222) NOT NULL,
  `reference` varchar(222) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `typebankaccounts`
--

CREATE TABLE IF NOT EXISTS `typebankaccounts` (
  `id` int(11) NOT NULL,
  `description` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `type_components`
--

CREATE TABLE IF NOT EXISTS `type_components` (
  `id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `prix` varchar(33) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `type_components`
--

INSERT INTO `type_components` (`id`, `description`, `prix`) VALUES
(1, 'Objective', ''),
(2, 'Action', ''),
(3, 'Project', ''),
(4, 'Deliverable', ''),
(5, 'Input', ''),
(6, 'Output', ''),
(7, 'Resources', ''),
(8, 'Human Ressources', ''),
(9, 'Material Ressources', ''),
(10, 'Financial Ressources', ''),
(11, 'Deadline', ''),
(12, 'Budget', ''),
(13, 'Jobs', '');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `role` varchar(64) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role`, `created`, `modified`, `status`) VALUES
(13, 'robert_audoux', '3d7a0f28a4634d1ce2a5b2fc7bf084bc145b450e', 'robert@garago.com', 'admin', '2017-03-09 21:13:39', '2017-03-09 21:13:39', 1),
(14, 'bilel_belwafi', '852e8e14064983ca058b83303fba19091b13bd4a', 'bilel.belwafi.iit@gmail.com', 'admin', '2017-03-10 09:04:04', '2017-03-10 09:04:04', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `group` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `user_data`
--

INSERT INTO `user_data` (`id`, `name`, `status`, `group`) VALUES
(21, '123132', 1, 1),
(22, 'hkjhkjhk', 1, 1),
(23, '567567', 1, 3),
(24, 'Anmol', 1, 2),
(25, 'Bilel', 1, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bankaccounts`
--
ALTER TABLE `bankaccounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chart_js`
--
ALTER TABLE `chart_js`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `component_categorys`
--
ALTER TABLE `component_categorys`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `component_customers`
--
ALTER TABLE `component_customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `component_languages`
--
ALTER TABLE `component_languages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `component_sectors`
--
ALTER TABLE `component_sectors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `composants`
--
ALTER TABLE `composants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `document_categories`
--
ALTER TABLE `document_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `document_customers`
--
ALTER TABLE `document_customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `document_languages`
--
ALTER TABLE `document_languages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `document_sectors`
--
ALTER TABLE `document_sectors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fileupload`
--
ALTER TABLE `fileupload`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `groupe_users`
--
ALTER TABLE `groupe_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `historicals`
--
ALTER TABLE `historicals`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mode_payments`
--
ALTER TABLE `mode_payments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permission_access`
--
ALTER TABLE `permission_access`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personal_offers`
--
ALTER TABLE `personal_offers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `regulations`
--
ALTER TABLE `regulations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sample_table`
--
ALTER TABLE `sample_table`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `smarttable`
--
ALTER TABLE `smarttable`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `social_profiles`
--
ALTER TABLE `social_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typebankaccounts`
--
ALTER TABLE `typebankaccounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_components`
--
ALTER TABLE `type_components`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT pour la table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `bankaccounts`
--
ALTER TABLE `bankaccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `chart_js`
--
ALTER TABLE `chart_js`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `component_categorys`
--
ALTER TABLE `component_categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `component_customers`
--
ALTER TABLE `component_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `component_languages`
--
ALTER TABLE `component_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `component_sectors`
--
ALTER TABLE `component_sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `composants`
--
ALTER TABLE `composants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `document_categories`
--
ALTER TABLE `document_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `document_customers`
--
ALTER TABLE `document_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `document_languages`
--
ALTER TABLE `document_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `document_sectors`
--
ALTER TABLE `document_sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `fileupload`
--
ALTER TABLE `fileupload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `groupe_users`
--
ALTER TABLE `groupe_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `historicals`
--
ALTER TABLE `historicals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `mode_payments`
--
ALTER TABLE `mode_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `permission_access`
--
ALTER TABLE `permission_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `personal_offers`
--
ALTER TABLE `personal_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `regulations`
--
ALTER TABLE `regulations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sample_table`
--
ALTER TABLE `sample_table`
  MODIFY `id` int(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `smarttable`
--
ALTER TABLE `smarttable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `social_profiles`
--
ALTER TABLE `social_profiles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `typebankaccounts`
--
ALTER TABLE `typebankaccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `type_components`
--
ALTER TABLE `type_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
