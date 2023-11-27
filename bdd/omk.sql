-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 27 nov. 2023 à 14:26
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `omk_thyp_23-24`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--

CREATE TABLE `api_key` (
  `id` varchar(32) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `credential_hash` varchar(60) NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `api_key`
--

INSERT INTO `api_key` (`id`, `owner_id`, `label`, `credential_hash`, `last_ip`, `last_accessed`, `created`) VALUES
('tA9FXKrjUPW0nMt8FJBrR1i9LEoN5HX9', 1, 'key1', '$2y$10$k3Zz3fSRmo2fdY9kBjDzme9b42cbUjNmoREydolM72PrPalXQEi1q', NULL, NULL, '2023-11-24 22:43:52');

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `media_type` varchar(255) NOT NULL,
  `storage_id` varchar(190) NOT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `alt_text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `asset`
--

INSERT INTO `asset` (`id`, `owner_id`, `name`, `media_type`, `storage_id`, `extension`, `alt_text`) VALUES
(1, 1, 'copyrightitineramagica-180.jpg', 'image/jpeg', '79713a7f6e729f8ac6c20b97cff22a120cb37643', 'jpg', '');

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

CREATE TABLE `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext DEFAULT NULL,
  `text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(1, 'site_pages', 1, 1, 'Welcome', 'Bienvenue sur votre nouveau site. Ceci est une page d\'exemple.\r\n\r\n\r\n	Ceci est une liste à puces.\r\n	Deuxième entrée.\r\n\r\n\r\nRetour à la normale.\r\n\r\n\r\n	Il s\'agit d\'une liste ordonnée.\r\n	Deuxième entrée.\r\n\r\n\r\nRetour à la normale.\r\n\r\nCeci est une citation en bloc.\r\n\r\nRetour à la normale.\r\n\r\nCe texte est un lien qui ne pointe actuellement vers rien.\r\n\r\nCe texte est en gras, dans une balise.\r\n\r\nCe texte est en italique, dans une balise &lt;em&gt;.\r\n\r\nCe texte est souligné, dans une balise &lt;u&gt;.\r\n\r\nCe texte est barré, dans une balise &lt;s&gt;.\r\n\r\nCe texte est en indice et en exposant utilisant &lt;sub&gt; et &lt;sup&gt;, qui peuvent être utilisés pour ajouter des notes et des citations.\r\n\r\n\r\nIl s\'agit d\'un titre H1. Il est plus grand que le titre de la page, qui est rendu en H2.\r\n\r\nIl s\'agit d\'un en-tête H2, de la même taille que le titre de la page.\r\n\r\nIl s\'agit d\'un sous-en-tête H3.\r\n\r\nIl s\'agit d\'un sous-en-tête H4.\r\n\r\nIl s\'agit d\'un sous-en-tête H5.\r\n\r\nIl s\'agit d\'un sous-en-tête H6.\r\n\nIl s\'agit du style de bloc \"Titre italique\".\r\n\r\nIl s\'agit du style de bloc \"Sous-titre\".\r\n\r\nIl s\'agit du style de bloc \"Conteneur spécial\".\r\n\r\nIl s\'agit du style en ligne \"Marqueur\".\r\n\r\nIl s\'agit du style en ligne \"Big\". C\'est un texte normal.\r\n\r\nCe texte se trouve dans un style « petit » en ligne. C\'est un texte normal.\r\n\r\nThis is the \"Computer Code\" inline style.\r\n\r\nلكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار النشوة وتمجيد الألم يعرض هذا النص من اليمين إلى اليسار.\r\n'),
(4, 'site_pages', 1, 1, 'Welcome', 'Bienvenue sur votre nouveau site. Ceci est une page d\'exemple.\r\n\r\n\r\n	Ceci est une liste à puces.\r\n	Deuxième entrée.\r\n\r\n\r\nRetour à la normale.\r\n\r\n\r\n	Il s\'agit d\'une liste ordonnée.\r\n	Deuxième entrée.\r\n\r\n\r\nRetour à la normale.\r\n\r\nCeci est une citation en bloc.\r\n\r\nRetour à la normale.\r\n\r\nCe texte est un lien qui ne pointe actuellement vers rien.\r\n\r\nCe texte est en gras, dans une balise.\r\n\r\nCe texte est en italique, dans une balise &lt;em&gt;.\r\n\r\nCe texte est souligné, dans une balise &lt;u&gt;.\r\n\r\nCe texte est barré, dans une balise &lt;s&gt;.\r\n\r\nCe texte est en indice et en exposant utilisant &lt;sub&gt; et &lt;sup&gt;, qui peuvent être utilisés pour ajouter des notes et des citations.\r\n\r\n\r\nIl s\'agit d\'un titre H1. Il est plus grand que le titre de la page, qui est rendu en H2.\r\n\r\nIl s\'agit d\'un en-tête H2, de la même taille que le titre de la page.\r\n\r\nIl s\'agit d\'un sous-en-tête H3.\r\n\r\nIl s\'agit d\'un sous-en-tête H4.\r\n\r\nIl s\'agit d\'un sous-en-tête H5.\r\n\r\nIl s\'agit d\'un sous-en-tête H6.\r\n\nIl s\'agit du style de bloc \"Titre italique\".\r\n\r\nIl s\'agit du style de bloc \"Sous-titre\".\r\n\r\nIl s\'agit du style de bloc \"Conteneur spécial\".\r\n\r\nIl s\'agit du style en ligne \"Marqueur\".\r\n\r\nIl s\'agit du style en ligne \"Big\". C\'est un texte normal.\r\n\r\nCe texte se trouve dans un style « petit » en ligne. C\'est un texte normal.\r\n\r\nThis is the \"Computer Code\" inline style.\r\n\r\nلكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار النشوة وتمجيد الألم يعرض هذا النص من اليمين إلى اليسار.\r\n'),
(5, 'item_sets', 1, 1, 'article de blog', 'article de blog'),
(5, 'site_pages', 1, 1, 'coucher de soleil', 'Couche de soleil sur la plage'),
(6, 'items', 1, 1, 'Couche de soleil sur la plage', 'Couche de soleil sur la plage\nhttps://en.wikipedia.org/wiki/Public_domain Wikipédia ressource\nPhotographie\nJohn Doe\n15/09/2022\nUne magnifique vue du coucher de soleil sur une plage tropicale.\nImage\nFrançais\nPlage paradisiaque\n © John Doe, Tous droits réservés\nPlage, Coucher de soleil, Nature'),
(7, 'items', 1, 1, 'Id', 'Id\nidentifiant de la langue');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `primary_media_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`, `primary_media_id`) VALUES
(6, NULL),
(7, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_set`
--

INSERT INTO `item_set` (`id`, `is_open`) VALUES
(5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `item_site`
--

CREATE TABLE `item_site` (
  `item_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_site`
--

INSERT INTO `item_site` (`item_id`, `site_id`) VALUES
(6, 2),
(7, 2);

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `class` varchar(255) NOT NULL,
  `args` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `log` longtext DEFAULT NULL,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `job`
--

INSERT INTO `job` (`id`, `owner_id`, `pid`, `status`, `class`, `args`, `log`, `started`, `ended`) VALUES
(1, 1, NULL, 'error', 'Omeka\\Job\\UpdateSiteItems', '{\"sites\":{\"2\":[]},\"action\":\"add\"}', '2023-10-30T10:14:46+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2023-10-30T10:14:46+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2023-10-30T10:14:46+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Controller\\SiteAdmin\\IndexController.php(251): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Updat...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): Omeka\\Controller\\SiteAdmin\\IndexController->resourcesAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2023-10-30 10:14:46', '2023-10-30 10:14:46'),
(2, 1, NULL, 'error', 'Omeka\\Job\\UpdateSiteItems', '{\"sites\":{\"2\":[]},\"action\":\"add\"}', '2023-10-30T10:16:59+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2023-10-30T10:16:59+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2023-10-30T10:16:59+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Controller\\SiteAdmin\\IndexController.php(251): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Updat...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): Omeka\\Controller\\SiteAdmin\\IndexController->resourcesAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2023-10-30 10:16:59', '2023-10-30 10:16:59'),
(3, 1, NULL, 'error', 'Omeka\\Job\\UpdateSiteItems', '{\"sites\":{\"2\":{\"is_public\":\"1\"}},\"action\":\"add\"}', '2023-10-30T10:17:42+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2023-10-30T10:17:42+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2023-10-30T10:17:42+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Controller\\SiteAdmin\\IndexController.php(251): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Updat...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): Omeka\\Controller\\SiteAdmin\\IndexController->resourcesAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2023-10-30 10:17:42', '2023-10-30 10:17:42');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ingester` varchar(255) NOT NULL,
  `renderer` varchar(255) NOT NULL,
  `data` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `source` longtext DEFAULT NULL,
  `media_type` varchar(255) DEFAULT NULL,
  `storage_id` varchar(190) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `sha256` char(64) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `lang` varchar(190) DEFAULT NULL,
  `alt_text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration`
--

INSERT INTO `migration` (`version`) VALUES
('20171128053327'),
('20180412035023'),
('20180919072656'),
('20180924033501'),
('20181002015551'),
('20181004043735'),
('20181106060421'),
('20190307043537'),
('20190319020708'),
('20190412090532'),
('20190423040354'),
('20190423071228'),
('20190514061351'),
('20190515055359'),
('20190729023728'),
('20190809092609'),
('20190815062003'),
('20200224022356'),
('20200226064602'),
('20200325091157'),
('20200326091310'),
('20200803000000'),
('20200831000000'),
('20210205101827'),
('20210225095734'),
('20210810083804'),
('20220718090449'),
('20220824103916'),
('20230601060113'),
('20230713101012');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id` varchar(190) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_creation`
--

CREATE TABLE `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_creation`
--

INSERT INTO `password_creation` (`id`, `user_id`, `created`, `activate`) VALUES
('HHHmXHRlRlUChsHEjdZkH8QRFFESwBNv', 2, '2023-11-27 11:56:57', 1);

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'title', 'Title', 'A name given to the resource.'),
(2, NULL, 1, 'creator', 'Creator', 'An entity primarily responsible for making the resource.'),
(3, NULL, 1, 'subject', 'Subject', 'The topic of the resource.'),
(4, NULL, 1, 'description', 'Description', 'An account of the resource.'),
(5, NULL, 1, 'publisher', 'Publisher', 'An entity responsible for making the resource available.'),
(6, NULL, 1, 'contributor', 'Contributor', 'An entity responsible for making contributions to the resource.'),
(7, NULL, 1, 'date', 'Date', 'A point or period of time associated with an event in the lifecycle of the resource.'),
(8, NULL, 1, 'type', 'Type', 'The nature or genre of the resource.'),
(9, NULL, 1, 'format', 'Format', 'The file format, physical medium, or dimensions of the resource.'),
(10, NULL, 1, 'identifier', 'Identifier', 'An unambiguous reference to the resource within a given context.'),
(11, NULL, 1, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(12, NULL, 1, 'language', 'Language', 'A language of the resource.'),
(13, NULL, 1, 'relation', 'Relation', 'A related resource.'),
(14, NULL, 1, 'coverage', 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),
(15, NULL, 1, 'rights', 'Rights', 'Information about rights held in and over the resource.'),
(16, NULL, 1, 'audience', 'Audience', 'A class of entity for whom the resource is intended or useful.'),
(17, NULL, 1, 'alternative', 'Alternative Title', 'An alternative name for the resource.'),
(18, NULL, 1, 'tableOfContents', 'Table Of Contents', 'A list of subunits of the resource.'),
(19, NULL, 1, 'abstract', 'Abstract', 'A summary of the resource.'),
(20, NULL, 1, 'created', 'Date Created', 'Date of creation of the resource.'),
(21, NULL, 1, 'valid', 'Date Valid', 'Date (often a range) of validity of a resource.'),
(22, NULL, 1, 'available', 'Date Available', 'Date (often a range) that the resource became or will become available.'),
(23, NULL, 1, 'issued', 'Date Issued', 'Date of formal issuance (e.g., publication) of the resource.'),
(24, NULL, 1, 'modified', 'Date Modified', 'Date on which the resource was changed.'),
(25, NULL, 1, 'extent', 'Extent', 'The size or duration of the resource.'),
(26, NULL, 1, 'medium', 'Medium', 'The material or physical carrier of the resource.'),
(27, NULL, 1, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(28, NULL, 1, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(29, NULL, 1, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(30, NULL, 1, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(31, NULL, 1, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(32, NULL, 1, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(33, NULL, 1, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(34, NULL, 1, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(35, NULL, 1, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(36, NULL, 1, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(37, NULL, 1, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(38, NULL, 1, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(39, NULL, 1, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(40, NULL, 1, 'spatial', 'Spatial Coverage', 'Spatial characteristics of the resource.'),
(41, NULL, 1, 'temporal', 'Temporal Coverage', 'Temporal characteristics of the resource.'),
(42, NULL, 1, 'mediator', 'Mediator', 'An entity that mediates access to the resource and for whom the resource is intended or useful.'),
(43, NULL, 1, 'dateAccepted', 'Date Accepted', 'Date of acceptance of the resource.'),
(44, NULL, 1, 'dateCopyrighted', 'Date Copyrighted', 'Date of copyright.'),
(45, NULL, 1, 'dateSubmitted', 'Date Submitted', 'Date of submission of the resource.'),
(46, NULL, 1, 'educationLevel', 'Audience Education Level', 'A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),
(47, NULL, 1, 'accessRights', 'Access Rights', 'Information about who can access the resource or an indication of its security status.'),
(48, NULL, 1, 'bibliographicCitation', 'Bibliographic Citation', 'A bibliographic reference for the resource.'),
(49, NULL, 1, 'license', 'License', 'A legal document giving official permission to do something with the resource.'),
(50, NULL, 1, 'rightsHolder', 'Rights Holder', 'A person or organization owning or managing rights over the resource.'),
(51, NULL, 1, 'provenance', 'Provenance', 'A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(52, NULL, 1, 'instructionalMethod', 'Instructional Method', 'A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),
(53, NULL, 1, 'accrualMethod', 'Accrual Method', 'The method by which items are added to a collection.'),
(54, NULL, 1, 'accrualPeriodicity', 'Accrual Periodicity', 'The frequency with which items are added to a collection.'),
(55, NULL, 1, 'accrualPolicy', 'Accrual Policy', 'The policy governing the addition of items to a collection.'),
(56, NULL, 3, 'affirmedBy', 'affirmedBy', 'A legal decision that affirms a ruling.'),
(57, NULL, 3, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(58, NULL, 3, 'authorList', 'list of authors', 'An ordered list of authors. Normally, this list is seen as a priority list that order authors by importance.'),
(59, NULL, 3, 'citedBy', 'cited by', 'Relates a document to another document that cites the\nfirst document.'),
(60, NULL, 3, 'cites', 'cites', 'Relates a document to another document that is cited\nby the first document as reference, comment, review, quotation or for\nanother purpose.'),
(61, NULL, 3, 'contributorList', 'list of contributors', 'An ordered list of contributors. Normally, this list is seen as a priority list that order contributors by importance.'),
(62, NULL, 3, 'court', 'court', 'A court associated with a legal document; for example, that which issues a decision.'),
(63, NULL, 3, 'degree', 'degree', 'The thesis degree.'),
(64, NULL, 3, 'director', 'director', 'A Film director.'),
(65, NULL, 3, 'distributor', 'distributor', 'Distributor of a document or a collection of documents.'),
(66, NULL, 3, 'editor', 'editor', 'A person having managerial and sometimes policy-making responsibility for the editorial part of a publishing firm or of a newspaper, magazine, or other publication.'),
(67, NULL, 3, 'editorList', 'list of editors', 'An ordered list of editors. Normally, this list is seen as a priority list that order editors by importance.'),
(68, NULL, 3, 'interviewee', 'interviewee', 'An agent that is interviewed by another agent.'),
(69, NULL, 3, 'interviewer', 'interviewer', 'An agent that interview another agent.'),
(70, NULL, 3, 'issuer', 'issuer', 'An entity responsible for issuing often informally published documents such as press releases, reports, etc.'),
(71, NULL, 3, 'organizer', 'organizer', 'The organizer of an event; includes conference organizers, but also government agencies or other bodies that are responsible for conducting hearings.'),
(72, NULL, 3, 'owner', 'owner', 'Owner of a document or a collection of documents.'),
(73, NULL, 3, 'performer', 'performer', NULL),
(74, NULL, 3, 'presentedAt', 'presented at', 'Relates a document to an event; for example, a paper to a conference.'),
(75, NULL, 3, 'presents', 'presents', 'Relates an event to associated documents; for example, conference to a paper.'),
(76, NULL, 3, 'producer', 'producer', 'Producer of a document or a collection of documents.'),
(77, NULL, 3, 'recipient', 'recipient', 'An agent that receives a communication document.'),
(78, NULL, 3, 'reproducedIn', 'reproducedIn', 'The resource in which another resource is reproduced.'),
(79, NULL, 3, 'reversedBy', 'reversedBy', 'A legal decision that reverses a ruling.'),
(80, NULL, 3, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(81, NULL, 3, 'status', 'status', 'The publication status of (typically academic) content.'),
(82, NULL, 3, 'subsequentLegalDecision', 'subsequentLegalDecision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(83, NULL, 3, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(84, NULL, 3, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(85, NULL, 3, 'translator', 'translator', 'A person who translates written document from one language to another.'),
(86, NULL, 3, 'abstract', 'abstract', 'A summary of the resource.'),
(87, NULL, 3, 'argued', 'date argued', 'The date on which a legal case is argued before a court. Date is of format xsd:date'),
(88, NULL, 3, 'asin', 'asin', NULL),
(89, NULL, 3, 'chapter', 'chapter', 'An chapter number'),
(90, NULL, 3, 'coden', 'coden', NULL),
(91, NULL, 3, 'content', 'content', 'This property is for a plain-text rendering of the content of a Document. While the plain-text content of an entire document could be described by this property.'),
(92, NULL, 3, 'doi', 'doi', NULL),
(93, NULL, 3, 'eanucc13', 'eanucc13', NULL),
(94, NULL, 3, 'edition', 'edition', 'The name defining a special edition of a document. Normally its a literal value composed of a version number and words.'),
(95, NULL, 3, 'eissn', 'eissn', NULL),
(96, NULL, 3, 'gtin14', 'gtin14', NULL),
(97, NULL, 3, 'handle', 'handle', NULL),
(98, NULL, 3, 'identifier', 'identifier', NULL),
(99, NULL, 3, 'isbn', 'isbn', NULL),
(100, NULL, 3, 'isbn10', 'isbn10', NULL),
(101, NULL, 3, 'isbn13', 'isbn13', NULL),
(102, NULL, 3, 'issn', 'issn', NULL),
(103, NULL, 3, 'issue', 'issue', 'An issue number'),
(104, NULL, 3, 'lccn', 'lccn', NULL),
(105, NULL, 3, 'locator', 'locator', 'A description (often numeric) that locates an item within a containing document or collection.'),
(106, NULL, 3, 'numPages', 'number of pages', 'The number of pages contained in a document'),
(107, NULL, 3, 'numVolumes', 'number of volumes', 'The number of volumes contained in a collection of documents (usually a series, periodical, etc.).'),
(108, NULL, 3, 'number', 'number', 'A generic item or document number. Not to be confused with issue number.'),
(109, NULL, 3, 'oclcnum', 'oclcnum', NULL),
(110, NULL, 3, 'pageEnd', 'page end', 'Ending page number within a continuous page range.'),
(111, NULL, 3, 'pageStart', 'page start', 'Starting page number within a continuous page range.'),
(112, NULL, 3, 'pages', 'pages', 'A string of non-contiguous page spans that locate a Document within a Collection. Example: 23-25, 34, 54-56. For continuous page ranges, use the pageStart and pageEnd properties.'),
(113, NULL, 3, 'pmid', 'pmid', NULL),
(114, NULL, 3, 'prefixName', 'prefix name', 'The prefix of a name'),
(115, NULL, 3, 'section', 'section', 'A section number'),
(116, NULL, 3, 'shortDescription', 'shortDescription', NULL),
(117, NULL, 3, 'shortTitle', 'short title', 'The abbreviation of a title.'),
(118, NULL, 3, 'sici', 'sici', NULL),
(119, NULL, 3, 'suffixName', 'suffix name', 'The suffix of a name'),
(120, NULL, 3, 'upc', 'upc', NULL),
(121, NULL, 3, 'uri', 'uri', 'Universal Resource Identifier of a document'),
(122, NULL, 3, 'volume', 'volume', 'A volume number'),
(123, NULL, 4, 'mbox', 'personal mailbox', 'A  personal mailbox, ie. an Internet mailbox associated with exactly one owner, the first owner of this mailbox. This is a \'static inverse functional property\', in that  there is (across time and change) at most one individual that ever has any particular value for foaf:mbox.'),
(124, NULL, 4, 'mbox_sha1sum', 'sha1sum of a personal mailbox URI name', 'The sha1sum of the URI of an Internet mailbox associated with exactly one owner, the  first owner of the mailbox.'),
(125, NULL, 4, 'gender', 'gender', 'The gender of this Agent (typically but not necessarily \'male\' or \'female\').'),
(126, NULL, 4, 'geekcode', 'geekcode', 'A textual geekcode for this person, see http://www.geekcode.com/geek.html'),
(127, NULL, 4, 'dnaChecksum', 'DNA checksum', 'A checksum for the DNA of some thing. Joke.'),
(128, NULL, 4, 'sha1', 'sha1sum (hex)', 'A sha1sum hash, in hex.'),
(129, NULL, 4, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(130, NULL, 4, 'title', 'title', 'Title (Mr, Mrs, Ms, Dr. etc)'),
(131, NULL, 4, 'nick', 'nickname', 'A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).'),
(132, NULL, 4, 'jabberID', 'jabber ID', 'A jabber ID for something.'),
(133, NULL, 4, 'aimChatID', 'AIM chat ID', 'An AIM chat ID'),
(134, NULL, 4, 'skypeID', 'Skype ID', 'A Skype ID'),
(135, NULL, 4, 'icqChatID', 'ICQ chat ID', 'An ICQ chat ID'),
(136, NULL, 4, 'yahooChatID', 'Yahoo chat ID', 'A Yahoo chat ID'),
(137, NULL, 4, 'msnChatID', 'MSN chat ID', 'An MSN chat ID'),
(138, NULL, 4, 'name', 'name', 'A name for some thing.'),
(139, NULL, 4, 'firstName', 'firstName', 'The first name of a person.'),
(140, NULL, 4, 'lastName', 'lastName', 'The last name of a person.'),
(141, NULL, 4, 'givenName', 'Given name', 'The given name of some person.'),
(142, NULL, 4, 'givenname', 'Given name', 'The given name of some person.'),
(143, NULL, 4, 'surname', 'Surname', 'The surname of some person.'),
(144, NULL, 4, 'family_name', 'family_name', 'The family name of some person.'),
(145, NULL, 4, 'familyName', 'familyName', 'The family name of some person.'),
(146, NULL, 4, 'phone', 'phone', 'A phone,  specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).'),
(147, NULL, 4, 'homepage', 'homepage', 'A homepage for some thing.'),
(148, NULL, 4, 'weblog', 'weblog', 'A weblog of some thing (whether person, group, company etc.).'),
(149, NULL, 4, 'openid', 'openid', 'An OpenID for an Agent.'),
(150, NULL, 4, 'tipjar', 'tipjar', 'A tipjar document for this agent, describing means for payment and reward.'),
(151, NULL, 4, 'plan', 'plan', 'A .plan comment, in the tradition of finger and \'.plan\' files.'),
(152, NULL, 4, 'made', 'made', 'Something that was made by this agent.'),
(153, NULL, 4, 'maker', 'maker', 'An agent that  made this thing.'),
(154, NULL, 4, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(155, NULL, 4, 'depiction', 'depiction', 'A depiction of some thing.'),
(156, NULL, 4, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(157, NULL, 4, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(158, NULL, 4, 'myersBriggs', 'myersBriggs', 'A Myers Briggs (MBTI) personality classification.'),
(159, NULL, 4, 'workplaceHomepage', 'workplace homepage', 'A workplace homepage of some person; the homepage of an organization they work for.'),
(160, NULL, 4, 'workInfoHomepage', 'work info homepage', 'A work info homepage of some person; a page about their work for some organization.'),
(161, NULL, 4, 'schoolHomepage', 'schoolHomepage', 'A homepage of a school attended by the person.'),
(162, NULL, 4, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(163, NULL, 4, 'interest', 'interest', 'A page about a topic of interest to this person.'),
(164, NULL, 4, 'topic_interest', 'topic_interest', 'A thing of interest to this person.'),
(165, NULL, 4, 'publications', 'publications', 'A link to the publications of this person.'),
(166, NULL, 4, 'currentProject', 'current project', 'A current project this person works on.'),
(167, NULL, 4, 'pastProject', 'past project', 'A project this person has previously worked on.'),
(168, NULL, 4, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(169, NULL, 4, 'logo', 'logo', 'A logo representing some thing.'),
(170, NULL, 4, 'topic', 'topic', 'A topic of some page or document.'),
(171, NULL, 4, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(172, NULL, 4, 'focus', 'focus', 'The underlying or \'focal\' entity associated with some SKOS-described concept.'),
(173, NULL, 4, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(174, NULL, 4, 'page', 'page', 'A page or document about this thing.'),
(175, NULL, 4, 'theme', 'theme', 'A theme.'),
(176, NULL, 4, 'account', 'account', 'Indicates an account held by this agent.'),
(177, NULL, 4, 'holdsAccount', 'account', 'Indicates an account held by this agent.'),
(178, NULL, 4, 'accountServiceHomepage', 'account service homepage', 'Indicates a homepage of the service provide for this online account.'),
(179, NULL, 4, 'accountName', 'account name', 'Indicates the name (identifier) associated with this online account.'),
(180, NULL, 4, 'member', 'member', 'Indicates a member of a Group'),
(181, NULL, 4, 'membershipClass', 'membershipClass', 'Indicates the class of individuals that are a member of a Group'),
(182, NULL, 4, 'birthday', 'birthday', 'The birthday of this Agent, represented in mm-dd string form, eg. \'12-31\'.'),
(183, NULL, 4, 'age', 'age', 'The age in years of some agent.'),
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.'),
(242, 1, 10, 'Id', 'Identifiant', NULL),
(243, 1, 10, 'Nom', 'Nom', NULL),
(244, 1, 10, 'Email', 'Adresse Email', NULL),
(245, 1, 10, 'Password', 'Mot de passe', NULL),
(246, 1, 10, 'No', 'Numero', NULL),
(247, 1, 10, 'Native', 'Native', NULL),
(248, 1, 10, 'Code', 'Code', NULL),
(249, 1, 10, 'id_trans', 'Id_Trans', NULL),
(250, 1, 10, 'Text', 'Text', NULL),
(251, 1, 10, 'Translation', 'Translation', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `resource_template_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(5, 1, 26, 1, NULL, 'article de blog', 1, '2023-10-29 09:20:11', '2023-10-29 09:23:27', 'Omeka\\Entity\\ItemSet'),
(6, 1, 26, 1, NULL, 'Couche de soleil sur la plage', 1, '2023-10-30 11:21:27', '2023-10-30 11:21:27', 'Omeka\\Entity\\Item'),
(7, 1, 24, NULL, NULL, 'Id', 1, '2023-11-15 22:45:43', '2023-11-15 22:45:43', 'Omeka\\Entity\\Item');

-- --------------------------------------------------------

--
-- Structure de la table `resource_class`
--

CREATE TABLE `resource_class` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_class`
--

INSERT INTO `resource_class` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'Agent', 'Agent', 'A resource that acts or has the power to act.'),
(2, NULL, 1, 'AgentClass', 'Agent Class', 'A group of agents.'),
(3, NULL, 1, 'BibliographicResource', 'Bibliographic Resource', 'A book, article, or other documentary resource.'),
(4, NULL, 1, 'FileFormat', 'File Format', 'A digital resource format.'),
(5, NULL, 1, 'Frequency', 'Frequency', 'A rate at which something recurs.'),
(6, NULL, 1, 'Jurisdiction', 'Jurisdiction', 'The extent or range of judicial, law enforcement, or other authority.'),
(7, NULL, 1, 'LicenseDocument', 'License Document', 'A legal document giving official permission to do something with a Resource.'),
(8, NULL, 1, 'LinguisticSystem', 'Linguistic System', 'A system of signs, symbols, sounds, gestures, or rules used in communication.'),
(9, NULL, 1, 'Location', 'Location', 'A spatial region or named place.'),
(10, NULL, 1, 'LocationPeriodOrJurisdiction', 'Location, Period, or Jurisdiction', 'A location, period of time, or jurisdiction.'),
(11, NULL, 1, 'MediaType', 'Media Type', 'A file format or physical medium.'),
(12, NULL, 1, 'MediaTypeOrExtent', 'Media Type or Extent', 'A media type or extent.'),
(13, NULL, 1, 'MethodOfInstruction', 'Method of Instruction', 'A process that is used to engender knowledge, attitudes, and skills.'),
(14, NULL, 1, 'MethodOfAccrual', 'Method of Accrual', 'A method by which resources are added to a collection.'),
(15, NULL, 1, 'PeriodOfTime', 'Period of Time', 'An interval of time that is named or defined by its start and end dates.'),
(16, NULL, 1, 'PhysicalMedium', 'Physical Medium', 'A physical material or carrier.'),
(17, NULL, 1, 'PhysicalResource', 'Physical Resource', 'A material thing.'),
(18, NULL, 1, 'Policy', 'Policy', 'A plan or course of action by an authority, intended to influence and determine decisions, actions, and other matters.'),
(19, NULL, 1, 'ProvenanceStatement', 'Provenance Statement', 'A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(20, NULL, 1, 'RightsStatement', 'Rights Statement', 'A statement about the intellectual property rights (IPR) held in or over a Resource, a legal document giving official permission to do something with a resource, or a statement about access rights.'),
(21, NULL, 1, 'SizeOrDuration', 'Size or Duration', 'A dimension or extent, or a time taken to play or execute.'),
(22, NULL, 1, 'Standard', 'Standard', 'A basis for comparison; a reference point against which other things can be evaluated.'),
(23, NULL, 2, 'Collection', 'Collection', 'An aggregation of resources.'),
(24, NULL, 2, 'Dataset', 'Dataset', 'Data encoded in a defined structure.'),
(25, NULL, 2, 'Event', 'Event', 'A non-persistent, time-based occurrence.'),
(26, NULL, 2, 'Image', 'Image', 'A visual representation other than text.'),
(27, NULL, 2, 'InteractiveResource', 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced.'),
(28, NULL, 2, 'Service', 'Service', 'A system that provides one or more functions.'),
(29, NULL, 2, 'Software', 'Software', 'A computer program in source or compiled form.'),
(30, NULL, 2, 'Sound', 'Sound', 'A resource primarily intended to be heard.'),
(31, NULL, 2, 'Text', 'Text', 'A resource consisting primarily of words for reading.'),
(32, NULL, 2, 'PhysicalObject', 'Physical Object', 'An inanimate, three-dimensional object or substance.'),
(33, NULL, 2, 'StillImage', 'Still Image', 'A static visual representation.'),
(34, NULL, 2, 'MovingImage', 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession.'),
(35, NULL, 3, 'AcademicArticle', 'Academic Article', 'A scholarly academic article, typically published in a journal.'),
(36, NULL, 3, 'Article', 'Article', 'A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.'),
(37, NULL, 3, 'AudioDocument', 'audio document', 'An audio document; aka record.'),
(38, NULL, 3, 'AudioVisualDocument', 'audio-visual document', 'An audio-visual document; film, video, and so forth.'),
(39, NULL, 3, 'Bill', 'Bill', 'Draft legislation presented for discussion to a legal body.'),
(40, NULL, 3, 'Book', 'Book', 'A written or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.'),
(41, NULL, 3, 'BookSection', 'Book Section', 'A section of a book.'),
(42, NULL, 3, 'Brief', 'Brief', 'A written argument submitted to a court.'),
(43, NULL, 3, 'Chapter', 'Chapter', 'A chapter of a book.'),
(44, NULL, 3, 'Code', 'Code', 'A collection of statutes.'),
(45, NULL, 3, 'CollectedDocument', 'Collected Document', 'A document that simultaneously contains other documents.'),
(46, NULL, 3, 'Collection', 'Collection', 'A collection of Documents or Collections'),
(47, NULL, 3, 'Conference', 'Conference', 'A meeting for consultation or discussion.'),
(48, NULL, 3, 'CourtReporter', 'Court Reporter', 'A collection of legal cases.'),
(49, NULL, 3, 'Document', 'Document', 'A document (noun) is a bounded physical representation of body of information designed with the capacity (and usually intent) to communicate. A document may manifest symbolic, diagrammatic or sensory-representational information.'),
(50, NULL, 3, 'DocumentPart', 'document part', 'a distinct part of a larger document or collected document.'),
(51, NULL, 3, 'DocumentStatus', 'Document Status', 'The status of the publication of a document.'),
(52, NULL, 3, 'EditedBook', 'Edited Book', 'An edited book.'),
(53, NULL, 3, 'Email', 'EMail', 'A written communication addressed to a person or organization and transmitted electronically.'),
(54, NULL, 3, 'Event', 'Event', NULL),
(55, NULL, 3, 'Excerpt', 'Excerpt', 'A passage selected from a larger work.'),
(56, NULL, 3, 'Film', 'Film', 'aka movie.'),
(57, NULL, 3, 'Hearing', 'Hearing', 'An instance or a session in which testimony and arguments are presented, esp. before an official, as a judge in a lawsuit.'),
(58, NULL, 3, 'Image', 'Image', 'A document that presents visual or diagrammatic information.'),
(59, NULL, 3, 'Interview', 'Interview', 'A formalized discussion between two or more people.'),
(60, NULL, 3, 'Issue', 'Issue', 'something that is printed or published and distributed, esp. a given number of a periodical'),
(61, NULL, 3, 'Journal', 'Journal', 'A periodical of scholarly journal Articles.'),
(62, NULL, 3, 'LegalCaseDocument', 'Legal Case Document', 'A document accompanying a legal case.'),
(63, NULL, 3, 'LegalDecision', 'Decision', 'A document containing an authoritative determination (as a decree or judgment) made after consideration of facts or law.'),
(64, NULL, 3, 'LegalDocument', 'Legal Document', 'A legal document; for example, a court decision, a brief, and so forth.'),
(65, NULL, 3, 'Legislation', 'Legislation', 'A legal document proposing or enacting a law or a group of laws.'),
(66, NULL, 3, 'Letter', 'Letter', 'A written or printed communication addressed to a person or organization and usually transmitted by mail.'),
(67, NULL, 3, 'Magazine', 'Magazine', 'A periodical of magazine Articles. A magazine is a publication that is issued periodically, usually bound in a paper cover, and typically contains essays, stories, poems, etc., by many writers, and often photographs and drawings, frequently specializing in a particular subject or area, as hobbies, news, or sports.'),
(68, NULL, 3, 'Manual', 'Manual', 'A small reference book, especially one giving instructions.'),
(69, NULL, 3, 'Manuscript', 'Manuscript', 'An unpublished Document, which may also be submitted to a publisher for publication.'),
(70, NULL, 3, 'Map', 'Map', 'A graphical depiction of geographic features.'),
(71, NULL, 3, 'MultiVolumeBook', 'Multivolume Book', 'A loose, thematic, collection of Documents, often Books.'),
(72, NULL, 3, 'Newspaper', 'Newspaper', 'A periodical of documents, usually issued daily or weekly, containing current news, editorials, feature articles, and usually advertising.'),
(73, NULL, 3, 'Note', 'Note', 'Notes or annotations about a resource.'),
(74, NULL, 3, 'Patent', 'Patent', 'A document describing the exclusive right granted by a government to an inventor to manufacture, use, or sell an invention for a certain number of years.'),
(75, NULL, 3, 'Performance', 'Performance', 'A public performance.'),
(76, NULL, 3, 'Periodical', 'Periodical', 'A group of related documents issued at regular intervals.'),
(77, NULL, 3, 'PersonalCommunication', 'Personal Communication', 'A communication between an agent and one or more specific recipients.'),
(78, NULL, 3, 'PersonalCommunicationDocument', 'Personal Communication Document', 'A personal communication manifested in some document.'),
(79, NULL, 3, 'Proceedings', 'Proceedings', 'A compilation of documents published from an event, such as a conference.'),
(80, NULL, 3, 'Quote', 'Quote', 'An excerpted collection of words.'),
(81, NULL, 3, 'ReferenceSource', 'Reference Source', 'A document that presents authoritative reference information, such as a dictionary or encylopedia .'),
(82, NULL, 3, 'Report', 'Report', 'A document describing an account or statement describing in detail an event, situation, or the like, usually as the result of observation, inquiry, etc..'),
(83, NULL, 3, 'Series', 'Series', 'A loose, thematic, collection of Documents, often Books.'),
(84, NULL, 3, 'Slide', 'Slide', 'A slide in a slideshow'),
(85, NULL, 3, 'Slideshow', 'Slideshow', 'A presentation of a series of slides, usually presented in front of an audience with written text and images.'),
(86, NULL, 3, 'Standard', 'Standard', 'A document describing a standard'),
(87, NULL, 3, 'Statute', 'Statute', 'A bill enacted into law.'),
(88, NULL, 3, 'Thesis', 'Thesis', 'A document created to summarize research findings associated with the completion of an academic degree.'),
(89, NULL, 3, 'ThesisDegree', 'Thesis degree', 'The academic degree of a Thesis'),
(90, NULL, 3, 'Webpage', 'Webpage', 'A web page is an online document available (at least initially) on the world wide web. A web page is written first and foremost to appear on the web, as distinct from other online resources such as books, manuscripts or audio documents which use the web primarily as a distribution mechanism alongside other more traditional methods such as print.'),
(91, NULL, 3, 'Website', 'Website', 'A group of Webpages accessible on the Web.'),
(92, NULL, 3, 'Workshop', 'Workshop', 'A seminar, discussion group, or the like, that emphasizes zxchange of ideas and the demonstration and application of techniques, skills, etc.'),
(93, NULL, 4, 'LabelProperty', 'Label Property', 'A foaf:LabelProperty is any RDF property with texual values that serve as labels.'),
(94, NULL, 4, 'Person', 'Person', 'A person.'),
(95, NULL, 4, 'Document', 'Document', 'A document.'),
(96, NULL, 4, 'Organization', 'Organization', 'An organization.'),
(97, NULL, 4, 'Group', 'Group', 'A class of Agents.'),
(98, NULL, 4, 'Agent', 'Agent', 'An agent (eg. person, group, software or physical artifact).'),
(99, NULL, 4, 'Project', 'Project', 'A project (a collective endeavour of some kind).'),
(100, NULL, 4, 'Image', 'Image', 'An image.'),
(101, NULL, 4, 'PersonalProfileDocument', 'PersonalProfileDocument', 'A personal profile RDF document.'),
(102, NULL, 4, 'OnlineAccount', 'Online Account', 'An online account.'),
(103, NULL, 4, 'OnlineGamingAccount', 'Online Gaming Account', 'An online gaming account.'),
(104, NULL, 4, 'OnlineEcommerceAccount', 'Online E-commerce Account', 'An online e-commerce account.'),
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.'),
(124, 1, 10, 'utilisateur', 'utilisateur', NULL),
(125, 1, 10, 'langues', 'langues', NULL),
(126, 1, 10, 'translations', 'translations', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource_template`
--

CREATE TABLE `resource_template` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `title_property_id` int(11) DEFAULT NULL,
  `description_property_id` int(11) DEFAULT NULL,
  `label` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(3, 1, NULL, NULL, NULL, 'utilisateur'),
(4, 1, NULL, NULL, NULL, 'langues'),
(5, 1, NULL, NULL, NULL, 'translations');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

CREATE TABLE `resource_template_property` (
  `id` int(11) NOT NULL,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) DEFAULT NULL,
  `alternate_comment` longtext DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `data_type` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  `default_lang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template_property`
--

INSERT INTO `resource_template_property` (`id`, `resource_template_id`, `property_id`, `alternate_label`, `alternate_comment`, `position`, `data_type`, `is_required`, `is_private`, `default_lang`) VALUES
(1, 1, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(2, 1, 15, NULL, NULL, 2, NULL, 0, 0, NULL),
(3, 1, 8, NULL, NULL, 3, NULL, 0, 0, NULL),
(4, 1, 2, NULL, NULL, 4, NULL, 0, 0, NULL),
(5, 1, 7, NULL, NULL, 5, NULL, 0, 0, NULL),
(6, 1, 4, NULL, NULL, 6, NULL, 0, 0, NULL),
(7, 1, 9, NULL, NULL, 7, NULL, 0, 0, NULL),
(8, 1, 12, NULL, NULL, 8, NULL, 0, 0, NULL),
(9, 1, 40, 'Place', NULL, 9, NULL, 0, 0, NULL),
(10, 1, 5, NULL, NULL, 10, NULL, 0, 0, NULL),
(11, 1, 17, NULL, NULL, 11, NULL, 0, 0, NULL),
(12, 1, 6, NULL, NULL, 12, NULL, 0, 0, NULL),
(13, 1, 25, NULL, NULL, 13, NULL, 0, 0, NULL),
(14, 1, 10, NULL, NULL, 14, NULL, 0, 0, NULL),
(15, 1, 13, NULL, NULL, 15, NULL, 0, 0, NULL),
(16, 1, 29, NULL, NULL, 16, NULL, 0, 0, NULL),
(17, 1, 30, NULL, NULL, 17, NULL, 0, 0, NULL),
(18, 1, 50, NULL, NULL, 18, NULL, 0, 0, NULL),
(19, 1, 3, NULL, NULL, 19, NULL, 0, 0, NULL),
(20, 1, 41, NULL, NULL, 20, NULL, 0, 0, NULL),
(25, 3, 242, NULL, NULL, 1, NULL, 0, 0, NULL),
(26, 3, 243, NULL, NULL, 2, NULL, 0, 0, NULL),
(27, 3, 244, NULL, NULL, 3, NULL, 0, 0, NULL),
(28, 3, 245, NULL, NULL, 4, NULL, 0, 0, NULL),
(29, 4, 246, NULL, NULL, 1, NULL, 0, 0, NULL),
(30, 4, 243, NULL, NULL, 2, NULL, 0, 0, NULL),
(31, 4, 247, NULL, NULL, 3, NULL, 0, 0, NULL),
(32, 4, 248, NULL, NULL, 4, NULL, 0, 0, NULL),
(33, 5, 249, NULL, NULL, 1, NULL, 0, 0, NULL),
(34, 5, 242, NULL, NULL, 2, NULL, 0, 0, NULL),
(35, 5, 250, NULL, NULL, 3, NULL, 0, 0, NULL),
(36, 5, 251, NULL, NULL, 4, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` varchar(190) NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('0gs9cpss8csln1kcc588d9frm5', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313038383236352e3536313739373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2230677339637073733863736c6e316b6363353838643966726d35223b7d7d, 1701088265),
('11s0vu951euk6hb39dirk4r78r', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313038383231342e3037383531383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2231317330767539353165756b36686233396469726b3472373872223b7d7d, 1701088214),
('1q5okhij3jqhk7pd9cv09bqn72', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313038383439312e3632313237353b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a223171356f6b68696a336a71686b377064396376303962716e3732223b7d7d, 1701088491),
('470js705eh4kgqacinhtv2su1f', 0x5f5f4c616d696e61737c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313639383439333432352e3538323334313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2267693964657174356573626a30646a6269613573726139767133223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639383439323734323b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313639383439373030393b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223031333462636561666266666161306232636162303062336338316430383534223b733a33323a223635326365386164633139643430346331643965303962366264393438613731223b7d733a343a2268617368223b733a36353a2236353263653861646331396434303463316439653039623662643934386137312d3031333462636561666266666161306232636162303062336338316430383534223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a223433346261646237666335356337613438323464613561653163396539623063223b733a33323a223765636130363436643366656263313536316663313164306163633430643062223b733a33323a226434373532326134393264356666656464306236656632366532623962306136223b733a33323a226438653639643863643062323937316331636336316264356233353464306435223b733a33323a226564646431303335653337353561646633643239323630323239636364666439223b733a33323a226331306664646661363439343934393966373163616131396535653434336363223b733a33323a223061653166613732393063613466303134613931623332383038653230393064223b733a33323a226531326335323537323935373039663661333434666333323435326261363238223b733a33323a223735653337393234353432363834306364633764326439316131393337643763223b733a33323a223634636630646266646434323036653763653164306263346530636161353432223b733a33323a226435393334383832623533316232363136643861653066353964633266666238223b733a33323a226436363966316239326634306264396530343662376361633462623735343863223b733a33323a223437353361386332643637653962303665656461616537353239643131336366223b733a33323a223232363861306431346431626161653030656436616261366536656137393563223b733a33323a226432306135346437383331633861626539623039636363316136393233656261223b733a33323a226231613534663235653636353937333036303731363731373864366431353962223b7d733a343a2268617368223b733a36353a2262316135346632356536363539373330363037313637313738643664313539622d6432306135346437383331633861626539623039636363316136393233656261223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1698493425),
('4vd4cqq6j46q25m37lo1d429sf', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730303038383431382e3839373133393b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2236726a6c646d3931723964686e366c66353463626e3337756c70223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303039303133363b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313730303039323031333b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303039323031393b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303039323031383b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223066663666386365373131653037363430303061623566626535353064366335223b733a33323a223565303335333633633234643036633835666132303235306236326430376634223b7d733a343a2268617368223b733a36353a2235653033353336336332346430366338356661323032353062363264303766342d3066663666386365373131653037363430303061623566626535353064366335223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a226634326362323839313237396164303563313931323862356333363436393636223b733a33323a223137373239343733386637356430363462333166316232393136303630626538223b733a33323a223334316635323037626334353132326633336135376230656462646139643165223b733a33323a226566306466656435666231623935646139616464313239393563636665306163223b733a33323a226262383636363433313533613434356434333538363131613236386132316634223b733a33323a223737373632666330373630613839633933643638656134303530303034343336223b733a33323a226531633332336136366232373235366364393561323239613536383164366534223b733a33323a226136396438623862396639363764613137623366346665383965636339623738223b733a33323a226438316632333237363863333931396431353663333236653636373834646633223b733a33323a223830623138316230363866303036626631336637633736386364646262666332223b733a33323a223133333739353563313936353334383534363962396334333366383863376430223b733a33323a226464316232383865343264383865373664393564303435373064393864393662223b733a33323a223766303134666234323635323266626130333332653261306236343961666561223b733a33323a223064393965623932616538373838646362333566656261653530336335323365223b7d733a343a2268617368223b733a36353a2230643939656239326165383738386463623335666562616535303363353233652d3766303134666234323635323266626130333332653261306236343961666561223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32343a7b733a33323a223864313335616238666230333234333734383334393938663266373039396433223b733a33323a226564646263626662373933626431663965383566306366616331336462306136223b733a33323a223561663336393464383464353864633636626265316538303565363936306662223b733a33323a226663316330656132643239323363636362353163616238656138306232323363223b733a33323a223030663663396130656433623661323265396665386337653162656166626130223b733a33323a223361363636306139386533343731363338316465303838613864326331396666223b733a33323a223131623663306435396531663763653562653137633536656165363865633166223b733a33323a226666646432396130656563333134633632376239353137316462303861376465223b733a33323a226234643033373733646536383862323663333434396431303239623662643739223b733a33323a223233663039656438663032643864353237616338323738343531633738336633223b733a33323a223234346330613930363839633738383338623538626131303133663638373463223b733a33323a223165323937613764653861316233316631343561653439356131306366326239223b733a33323a223165623962376530353139623635333230633738333235323564636663613733223b733a33323a223835613361383337633963336239653839336363613231613536653739633239223b733a33323a223164333830343766663730346637356233373334613663303139313833623563223b733a33323a223132316439386237623039353630386163393834636233643561333862343832223b733a33323a226336623836646234383236396564356636303231373365353236313437386539223b733a33323a223633616332643665303836653866326639313865363831353262643032616433223b733a33323a226539623633333864663865383035366230363232653839353033346634363264223b733a33323a226430313135303232656365663034613438656336643464653931623361633861223b733a33323a223730656131656233666534316464323835393765323639636232363766356339223b733a33323a223432616538633239323862366561366533653663303431393930343561623965223b733a33323a223238636633316564336264333935623434643534633836663463633137653266223b733a33323a226632386366643332633236313366383034616366333632613232363534343335223b733a33323a223933316234636565323636353533376662643562393734383631303062346237223b733a33323a226234393437656637326563663164376564616361633337623662663838623062223b733a33323a223865613233613931623563616433633366306564666266316666663537316365223b733a33323a223933616566353137666337653862366461623834653938613433326135646364223b733a33323a223565626566643030643136303436633732656238613863643064613138633834223b733a33323a223063333836353432313831333230323535636165383233656430643330636139223b733a33323a226536353839306165353431336161363534336562323635633432376166613835223b733a33323a226236333032353632616262383531346439306538346434336463336539303838223b733a33323a223737636663393538373637626430636264656466333565326665326564633739223b733a33323a223637346665353430313334343665316331393466393165343062346133643537223b733a33323a223633643437663035376235643961343133653936366531356438636661323137223b733a33323a223865323964643434653430636134393934386565353939336134336434663565223b733a33323a223565323664316136623132613930366639303736353362643766396432326139223b733a33323a223361616234666561376131363839356337346430376333333163343863623861223b733a33323a226438363335303839633133323765663437323734336465386266646564616135223b733a33323a223435316364313131376566353365316462396435636539663938636164316363223b733a33323a223064363762353962313132306165383138626438623339643231616634346461223b733a33323a223261383762343038613430323330636633616431623562343235346366633634223b733a33323a226339336135323635653230623765393164333562316563633836643165356536223b733a33323a226161366636623633343037386237613234323835376534656638373163326133223b733a33323a226132666562306666363631343336353632376566666530326434356662623330223b733a33323a223832396463626663373235376634376538383863313438393130326630626266223b733a33323a223639396635623734383139343239326339663730373431633966623562306332223b733a33323a226362333335623533383965323430376132323935613462666232353266616231223b7d733a343a2268617368223b733a36353a2263623333356235333839653234303761323239356134626662323532666162312d3639396635623734383139343239326339663730373431633966623562306332223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a223766396237313731613530626266303164346161376534303934336639646632223b733a33323a223261383766313637393437396663353632616537323834356366316634383035223b733a33323a223232656238323538373765323563383164313738373261646161313463656236223b733a33323a226161323866656434613332363035613366306264366632383931653837323035223b733a33323a223735623633613762373661623133376561353739623163393534386139303637223b733a33323a226131613337323235303938656266633862333338373039343865383061616335223b733a33323a226634376336393438346331666334666231356263343231366366383537356232223b733a33323a223834333837393838383534633936343237363763393763663037373431353834223b733a33323a223164626262326333356134383866373962343931396234333566393137656230223b733a33323a226463336664623636393939613466346262626139393462346138633037616634223b733a33323a223064346639373933663631643464633334393664383561636461656261396236223b733a33323a223830336366313233646364636632386163626539343130313766326432643165223b7d733a343a2268617368223b733a36353a2238303363663132336463646366323861636265393431303137663264326431652d3064346639373933663631643464633334393664383561636461656261396236223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1700088419),
('5k4odmq22u9u5ai5s00meomun2', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313038373236332e3932393235323b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22356b346f646d713232753975356169357330306d656f6d756e32223b7d7d, 1701087264),
('7skb6bi6ip6h0c9nda65o1kv5i', 0x5f5f4c616d696e61737c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313038363836372e3732303537313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2238357469326730307262647567706a66643874626c6434693030223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730313038393932323b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730313039303436373b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226164373436366536373365306535356231353163396434623735356262393438223b733a33323a223834356237663465306635313130323862333033633936313933373433643861223b7d733a343a2268617368223b733a36353a2238343562376634653066353131303238623330336339363139333734336438612d6164373436366536373365306535356231353163396434623735356262393438223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a226536306136613732313264386638303863326236396666666163353039616365223b733a33323a226464326361313338323632616638636539613863626236633163353335386263223b733a33323a223733303731393264646663633638373436323962363065313737373138636339223b733a33323a223231383333656662323030393137396538343632653866386237353766386365223b733a33323a223661356163343463643466326265303363353836643134336464336631376666223b733a33323a226335626261393766373561346361306331323762653532653831613665396362223b733a33323a223537333330646633393039323632373466633636303638646332663736663537223b733a33323a226332373239663466323832393839383561316439343639656130636535636361223b7d733a343a2268617368223b733a36353a2263323732396634663238323938393835613164393436396561306365356363612d3537333330646633393039323632373466633636303638646332663736663537223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1701086867),
('7svrfm5ephga8lel43hg90blae', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313033333731322e3331343735333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2237737672666d356570686761386c656c343368673930626c6165223b7d7d, 1701033712),
('8jaq8093ihnfft3tsl4mcahpg4', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730303835383731342e3632303734333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a223934346b75723531636d36323461333865766c677234306c3230223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303836313934303b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303836323331343b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303836313935383b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223464386363663264663835623336336262383366346661643336396265663732223b733a33323a226262343036353837623161366539633934303430653665376663656165386163223b7d733a343a2268617368223b733a36353a2262623430363538376231613665396339343034306536653766636561653861632d3464386363663264663835623336336262383366346661643336396265663732223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a393a7b733a33323a226463613064346637363739353430353536343263663033643339373330656562223b733a33323a223666633437366535376636333037366531643230646538376136356262303639223b733a33323a226535613534313966613962613931363133343062373832396662616331316539223b733a33323a223762303038656436393933666533643664663366303534613462386639663561223b733a33323a223739356264613332393337613537323833353536373261383865633034346436223b733a33323a226539333266613334623565616236626262623035653234346461363236643435223b733a33323a223338656162346332373638383337316538333838393061316535383862613735223b733a33323a223263313431343539653163653336653062346663353935636366396665383634223b733a33323a223231626362343136386137353234353661313264636162666134636134303864223b733a33323a226561393139663662383037663865353234323532343262396364633537623464223b733a33323a226336623562346634656537613234323831323136373438316332653031663637223b733a33323a226239653731653661323831613030323464326461363962323735623932393363223b733a33323a223062343039393166326635363131353034613465323663323036383861663038223b733a33323a226539353835313763643439373161376330363464353231396439393562383761223b733a33323a226465626464326266623436353964653338326164303663343262313634633961223b733a33323a223035646639366137373361346132346461386362633138653730613663383836223b733a33323a223464616163346431663631306438613130396663343662616537386430373831223b733a33323a223735633036353337373862663931303231346134326434366331346234343731223b7d733a343a2268617368223b733a36353a2237356330363533373738626639313032313461343264343663313462343437312d3464616163346431663631306438613130396663343662616537386430373831223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226334333834653063613732333338343763353830383739323838633566386230223b733a33323a226666386665303330383464326262376433343830653930376335616639643131223b7d733a343a2268617368223b733a36353a2266663866653033303834643262623764333438306539303763356166396431312d6334333834653063613732333338343763353830383739323838633566386230223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1700858714),
('9g9o0iaufgcolfnp2f0bvk46p7', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313032393238382e3130333535383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a223967396f306961756667636f6c666e7032663062766b34367037223b7d7d, 1701029288),
('at5n271gve03tgoa4l5a3v6idp', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313038383435302e3633313639333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226174356e323731677665303374676f61346c3561337636696470223b7d7d, 1701088451),
('b4as6nil68uvh5vlt8ervlmd4v', 0x5f5f4c616d696e61737c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313639383636363430302e3530363330343b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226b35693765686867377575386a6261693076756f666c676f656c223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639383630373935303b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639383636383532353b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313639383636383439343b7d733a34353a224c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639383636383532353b7d733a35303a224c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639383636343731333b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226637343530336339303532373961623163363337313463393538653862356538223b733a33323a223061636262646565666432356239366261303262313735653962663531333262223b7d733a343a2268617368223b733a36353a2230616362626465656664323562393662613032623137356539626635313332622d6637343530336339303532373961623163363337313463393538653862356538223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32303a7b733a33323a223766363334623464653533666230663238663037383761643863613838313265223b733a33323a223466396630346434636638643137326530343065653439353062666633333861223b733a33323a223730336635326232313263356637363433656364636261636461356633646566223b733a33323a226163356664323333366261656439393663303930313039643839313163336234223b733a33323a223132623461386131613662633266653535656535623832313330623562323565223b733a33323a223765313537613962306165633465363064303130616639316433623739373663223b733a33323a223739363738623734393765616638396432386633376563393261616439636136223b733a33323a226538316133326561386564373336343334666138353561616639396535323034223b733a33323a223862646531326265376566666631363036643862623562373336336362316235223b733a33323a223865643231633939393866313730613266376531663735396134303339633739223b733a33323a223239663530336264353330366562303264353830383630303761393561653938223b733a33323a226466316461633339613262356631313465376163643936393536613336623733223b733a33323a223164343165613162303137643539663436666461353366306263316163626235223b733a33323a226537366538383666343266353965343133326164343962656134313634653235223b733a33323a226233316336663564303939346537383038633437383064313137323530623562223b733a33323a223261303536336464346164396538623439303761303738393564646564376364223b733a33323a226339633238613136393835626438653064613733303330653430376130373561223b733a33323a223134303830346335373937326630313439623862303238656662313765366634223b733a33323a226134656262393833663762373638646630376438363766323863613231323066223b733a33323a226462353463353033323236653535353161336565333462333065316531653162223b733a33323a223838343837353632656633666532666334336665373137343438663330313937223b733a33323a223437643939333238316365353238366262313832646638336437636231663637223b733a33323a223431343464346436613930633761623265636462316431646130373832336636223b733a33323a223264313335633631376330363537303761336664663934653936373530623262223b733a33323a223165613936373062336166643133656563653939383338303734346631326462223b733a33323a223934353666633833343636303365386661663031313534333336666461663236223b733a33323a226131376338636638643239383136653031383132353939663238333966653833223b733a33323a223336326661306539343133326238343938656238626631626538396663306365223b733a33323a226136353061336532313962643133316263336463316538623733303438376564223b733a33323a226531303164616464613638396663356361313962366666323431633762333866223b733a33323a226366393431303630633334653135303531323936656461666366386234633132223b733a33323a226430383932613766303465316432333861336138303934616332613333306632223b733a33323a223833613063633730653036376264666361303263333161386164616339386565223b733a33323a226139613939323435393661646566613163316433396337396535636135663237223b733a33323a223264303532396633316338636666613762666261643634616465326133646662223b733a33323a223366356562346265353538373930316534313037653837663734636435373932223b733a33323a226363316464656132306130356163646261333336333230313733653162323331223b733a33323a223466613731306266303664333566396437633134316230363733393033356536223b733a33323a226661303938306562376565653565643238643836393734646235316164383065223b733a33323a226565613634616331313131303734376262363436333863386334343566376262223b7d733a343a2268617368223b733a36353a2265656136346163313131313037343762623634363338633863343435663762622d6661303938306562376565653565643238643836393734646235316164383065223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223932646461656534346539373630323139663730373138313139373962633264223b733a33323a226639663434333262373262653935666533636535343263343565643634643761223b733a33323a223835666238393466303232353937383562343864393461653435306138623963223b733a33323a223562393135656237623263313961303732393131343832666332386462323438223b733a33323a223338336136313964313837323839386162623237666338646363376564333365223b733a33323a223332623635326362393135626366323530303438303364333238376535623135223b733a33323a223630633164663830646631396430333563643236633065376337323237366438223b733a33323a226338653435353933663032343537376166643962376531363134376465633562223b7d733a343a2268617368223b733a36353a2263386534353539336630323435373761666439623765313631343764656335622d3630633164663830646631396430333563643236633065376337323237366438223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a226662353636386362366335653032363365653830333735656362396464663030223b733a33323a226330653332373537656137616436303265616163323765613262373239646135223b733a33323a223834336234393838336538323562313262306433323436646163616564646338223b733a33323a223732363735616335333062666631376438353338353966383234323564373964223b733a33323a223736663137636261363663333137636231396531663330353635643438313332223b733a33323a223437313362633535366337636531623038393631323332313463623931333764223b7d733a343a2268617368223b733a36353a2234373133626335353663376365316230383936313233323134636239313337642d3736663137636261363663333137636231396531663330353635643438313332223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a223733613032646334656664303134303130623166326539343731646632643133223b733a33323a223231366361333566393963653366383339386531333833333333623531396130223b733a33323a223530386533376565616134626339353161306561316263343139326437653230223b733a33323a223237383562616532626132633038643433323263653462343839636437393534223b733a33323a223265653462616161316430343432323434636133313266613435343162636538223b733a33323a223130623034656636643366313664633137336630396230323361343236303734223b733a33323a223864306466373535393462303535336139353830343232636331353563313637223b733a33323a223562363836633866623133636435363738303262373135616433326565366135223b733a33323a226636366365363734353166656461333765386337623135363932386631326431223b733a33323a223735373164393732643032656361376635383034303362306233653664366630223b733a33323a223539393766396332336130653638373263366333386561663737643437356466223b733a33323a223032623232306137363936313038353165343030653363373831353130326661223b733a33323a223861323838663161613239653038313265313865633134323536306635623161223b733a33323a223562316565393737323235633661663732356536626465313664373335313161223b7d733a343a2268617368223b733a36353a2235623165653937373232356336616637323565366264653136643733353131612d3861323838663161613239653038313265313865633134323536306635623161223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1698666400),
('bj0nsuisgq4o15858ep9fan6b8', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313033333136312e3238343734313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22626a306e737569736771346f313538353865703966616e366238223b7d7d, 1701033161),
('ep0r6n4ajep6m0hlrk6fhsc6hj', 0x5f5f4c616d696e61737c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313039313430302e3135383530393b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2261766d6133716633757463393975736b67686e65316b67633571223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730313039323433373b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730313039353030303b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223063383833313765366638626238616133653562306265613463613630316533223b733a33323a223232323462316439303434303264653163643736353864393335386662633733223b7d733a343a2268617368223b733a36353a2232323234623164393034343032646531636437363538643933353866626337332d3063383833313765366638626238616133653562306265613463613630316533223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223536373735316261663437613631323761396366613536653437326333633432223b733a33323a226435356136373766356639303433313532393263653061343735303231313363223b733a33323a223134366362363238613230323332343133613730653931613366373233626630223b733a33323a226632373738336435666231613932306337353535316238356230323235313930223b733a33323a226331646364663061366339326663393331623537343261303436313130393138223b733a33323a223638343531306331396332326162346265393334623231656535326532386466223b733a33323a223332336161393137303831386331373366313633303034333762323938643662223b733a33323a223839373463643666666661353661653332353430356639363535343833653165223b7d733a343a2268617368223b733a36353a2238393734636436666666613536616533323534303566393635353438336531652d3332336161393137303831386331373366313633303034333762323938643662223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1701091400),
('ghfuure5abi6u4k1i3j55q5m3s', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313033323038312e3233313733343b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2267686675757265356162693675346b3169336a353571356d3373223b7d7d, 1701032081),
('hq7fr79tjclug9jvpj4h9goh4h', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313033333136392e38323439353b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2268713766723739746a636c7567396a76706a346839676f683468223b7d7d, 1701033169);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('hseu6ms88jrinbi4du3m19a2gn', 0x5f5f4c616d696e61737c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313639383532343530322e3539303230373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226d366966643936747135713732747439746a6b3333646c746175223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639383439373032353b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313639383532383033333b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639383532383036373b7d733a33373a224c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639383532363132303b7d733a35303a224c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639383439393935313b7d733a34353a224c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639383532383036373b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223839343431656134396134666163303533323665653736646464326136613634223b733a33323a226465666137356139643066363566333434646236353365386361393163333537223b7d733a343a2268617368223b733a36353a2264656661373561396430663635663334346462363533653863613931633335372d3839343431656134396134666163303533323665653736646464326136613634223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32343a7b733a33323a226565616639666633353431383239633831636163653634653664376164626330223b733a33323a223436316437353765646264306437383163323932363336633037656234353031223b733a33323a226264326661373535646665396233653931303537636664363631356434386162223b733a33323a223665626234616331366439323265373635376637356361366234356261663866223b733a33323a223833643164323437653939646632616666376465393638376232383730613031223b733a33323a223262393965316666306665333661656361336431366533353261626234626461223b733a33323a223536663435383839346236636164643133623966393435393466303831663964223b733a33323a223763626637353935643361316161313962653366353234653966643032643339223b733a33323a226561623762646637646163333331383632623239306132316432666138616133223b733a33323a223734663034333135396563643335393736306236643262333132663463363038223b733a33323a223935393065663630613239333132356262313930633039343738346663326537223b733a33323a223664653365376262653938393035653365326266376534666163623563363634223b733a33323a226439376333326561393961326130663338613765396166323732323735353134223b733a33323a223734633662303732326136376464653931653137303961353436393063316138223b733a33323a223736356661363263613065376535656366376261366434653331323334373031223b733a33323a223932343164646333376237373034313830646566656163666633313933363237223b733a33323a223362306665393362656635613933333939396563376663636362636630306438223b733a33323a223538316236343361313930396664623739303462353363633665356533303462223b733a33323a226362323962366338636563306362386437393737633038396636323936656132223b733a33323a223433383437633834393065303531623031363937363366313634363832653934223b733a33323a226137363637616266646234346338313239396461313564346337323035626438223b733a33323a223161356536306433336135393761323862323437396633356339646433333464223b733a33323a223165393765636566363830643766666364323565333866326565656662323264223b733a33323a223631303533376632616639393636623766633638326164616130316436303431223b733a33323a223034316364633035366363303966633361626638323336653235323635346434223b733a33323a226265353162613133393838663463376432646435613263646634363538646437223b733a33323a226239326235316237373461326363333432323666636335313935333338393235223b733a33323a226131373434343232663263336334383962346533653634663035396261393032223b733a33323a223366346466376530353638663738663063323165303762386332366665373132223b733a33323a223161663835366634303330386132333936306635366234343233373831356466223b733a33323a226237353235613662393131373838383330386265386165383934316331633735223b733a33323a223966316134323236316532303632383162393366363234366430323637383233223b733a33323a223536666333353562346437383930616537326466396232326338323337353162223b733a33323a223263313664336535346364333135393762316238373433376633613637376566223b733a33323a223464323664353163646534396439663764363464333334363966623966643138223b733a33323a226364636538383130363963343833633665373037303630363361336336616532223b733a33323a223539363036323364623166383061663033393362623162306434626164356336223b733a33323a223634363931373835366233623064656362323863666161316463383462613563223b733a33323a223133386366303733643366353532666136333431333533663231353639396162223b733a33323a223563653332633465363361386664343165313763303064313863663264313665223b733a33323a223039623766343537633335653239336661633539623533653263393437396534223b733a33323a223033396264373465643737386261363865656137343835386236373261336636223b733a33323a223539623537323433343338386366353064626439616135326136373633323239223b733a33323a223165363965383932656137313462383635396462326532313939303634313838223b733a33323a223137313838663663383039316337663534346339383563306138663235653961223b733a33323a226532663034623562653361383261346161373933666161313366303766656531223b733a33323a226366353638343132323433316534333031373663373933313434633334396136223b733a33323a226336376336396164383239626539353434396132663332396364356262366332223b7d733a343a2268617368223b733a36353a2263363763363961643832396265393534343961326633323963643562623663322d6366353638343132323433316534333031373663373933313434633334396136223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34383a7b733a33323a223338383265393131373337313961303430336561333338646133623066316636223b733a33323a223364363738383535353936306336666232616362643264643539393039623466223b733a33323a223937626564663136316464646139303131353237393239623438363766383939223b733a33323a223763323231373863323532356234373362653864303430383935373931393666223b733a33323a223039666365303264333839313064623765623462376134613738326463383161223b733a33323a226636646462653335623231353265653133653131333437316630303136373330223b733a33323a226663653737613439343263376332353338626330653939653835326230346232223b733a33323a223031643562323533336339363762393039353632343031626631373763346466223b733a33323a223463353965653033613334303631313137373332656236613563346463303730223b733a33323a226637343565666532623666303964353563663830653533343530353265373662223b733a33323a223262643432336635363339623636666261353036323331613964656665363164223b733a33323a226131373962323430316436663063323163383532666632383734653235663934223b733a33323a226535633236316165366661613933336133643632336437373562313631636336223b733a33323a226339353364333565346234343266653132353336323436653333333266366132223b733a33323a223135346633366635363865373563373437643039333535333535616530373765223b733a33323a223466636634326333613961643036373362373731616239386664646162653662223b733a33323a223863643734343939656264393163643264663239376366336536623062366661223b733a33323a223536636335643663396533373631343263623435643164663635666563313062223b733a33323a223962383433626636356561643038346539316631343566343133393539343930223b733a33323a223561313334366131356337623239306363316637323236353865316464326430223b733a33323a223635346561316536363563376161323534643661396631363334323936653664223b733a33323a226538616366303632666665386536663266323433313835383032626262613834223b733a33323a223665666262393663626535336338343034346266313861643738656139653861223b733a33323a223036613936326562623664626232363966616362336336343139346533353832223b733a33323a223539613131313562623262353265643766633066366261323039316163376438223b733a33323a223039663631663363323765656562323566386636336234393062653561343035223b733a33323a223566653664393439363033356435303235356536393431623838303636613230223b733a33323a223135393261303436396364383738383735653236643533366237366539333332223b733a33323a223965343265353936626563383431313232366231336636666365393838613233223b733a33323a226131633664623534393434326461353236623030303238316637353731356266223b733a33323a223166623038393435623530633031386232353637643837396666393536386262223b733a33323a223833336132323865663765396233333962363932313163373964356437353064223b733a33323a226131313463386333666131653665396532303139366436343231646662396433223b733a33323a226162653163303761366161623961653837653437363463393939393161393030223b733a33323a223163343339653561376533323364333064363730613631373866396431633837223b733a33323a223531303765323961656239363730656139316431386331393264613437366564223b733a33323a223365356265666362343531353730373436393465383639373735383762316639223b733a33323a223931666434373763316530363064646463633936646131303632346264313439223b733a33323a223765396663306465356436623232393964656137303165636139663139373932223b733a33323a223631613164333963343337303565306364356236643365663434363461376137223b733a33323a223262626134373563373530376463663338353462313235633033363638326132223b733a33323a223836393233353836623539653861623463646334646632363534343361356661223b733a33323a223739373431646664373363386639303637336439356332323730623664663938223b733a33323a223862623632643937653361326362656464663965303162643565633765633766223b733a33323a223739386164333931343933663737363639643236623565313532393532316661223b733a33323a226664653932383030353030383463356665333366646566346139616239353533223b733a33323a223532656563313634613661633930666332376336646437346231653534666662223b733a33323a223536626566323731303265303735303931656439323166633635373630333630223b733a33323a226363653566643838323237616365303233663966313237646463626166333934223b733a33323a223037336566663634396362616334613562666330353431323636343235346562223b733a33323a223563373362323536336166643433656539393138623832343763303664313632223b733a33323a223862383230366234613361653431643238616561383336646161326637623165223b733a33323a223939356337633532666366643564303561306361653864663138393466343762223b733a33323a226362643365613264303332646531666364666634336362323737373434646465223b733a33323a226261303162636436393835626164653037666137393838393238353661626136223b733a33323a226137656538633663333566363432376263383333323833356132313735393534223b733a33323a226437316233653533613531613664323138356234393562616236626362396365223b733a33323a226462306561613938363463613336663132666162623533613862616364623435223b733a33323a223533623464373461363334653139656162653931656634376162383132663033223b733a33323a223236633761396539623563323232383061346430626334343864636432313966223b733a33323a223832363531623464373335643038313732616439613238356339343430653863223b733a33323a223464666338363234346436383666623434303466303235663762366263323735223b733a33323a223133663031663836623562326262326265346564383864363938383132623436223b733a33323a223261353437643965363534313239656162623230623536656231636237343735223b733a33323a223133633964353361333735313162386462316461663631633166636633646438223b733a33323a223065653936636266373565666564386365623662396533306262343034303335223b733a33323a226233333230313362386435306336393838313862366233353737646138653861223b733a33323a223338326630303933656138653533663539346564373466393835396637623565223b733a33323a223330323363313665323635666364393937316537663564613031356461626330223b733a33323a223964393030303637666131316265613439643737663164663664383530366665223b733a33323a223339303531303364396134613632663361306239303837323763626662633566223b733a33323a223430636364643738376162626331343239346337653666323135323966383765223b733a33323a223636623633653363346630393139646339303531653035323764633432646136223b733a33323a226665313166353630383264646433346465363734376337363364373636306133223b733a33323a223263326334303661613439323062643630353165363237316265376436373838223b733a33323a223838313831363434333963663564623831653630346137656363353265393564223b733a33323a223164393635346632303938643135636466386135623232356563373532653633223b733a33323a223435323038333166626233343338633938663131333936616537643931663534223b733a33323a223463633033623235623233306536613632343364613133373664373531376265223b733a33323a223935346366643362303634653034353037626131633066303237363839343063223b733a33323a223066613565373166343237356231373362623863646139333537633036303430223b733a33323a223765346261386632323539336637363938613432303639396439633536363563223b733a33323a223235353164326331353465373734633839366632363133616565376134633536223b733a33323a223432613262363637626635313138383066313136623237333161306136656431223b733a33323a223566623439633261376636656164646137376331353165646637656161646638223b733a33323a223065303563623166666339653265323830643338383364663864663761306264223b733a33323a226462383837313964303934653164333336366561383737353861326664643763223b733a33323a223266306234306466386338633361313933316539316233323834646663636363223b733a33323a226134373363613161373665313038343061376566393639653137323533376439223b733a33323a223034633166626532343434343931316535326665626364643762396635666334223b733a33323a223838343965613334643135663033373633366231613864386561393662666335223b733a33323a226330663237336437666536636461656665303630633632356362626230373939223b733a33323a223430353136383334393066313436306165336330656535393836336663653863223b733a33323a226137336431303031363662363964383534303134333231306134383166396237223b733a33323a226432383265373866646662313632356132343261353231343834373630343164223b733a33323a226163316563303765306535386233393065363636636332623533636233656239223b7d733a343a2268617368223b733a36353a2261633165633037653065353862333930653636366363326235336362336562392d6432383265373866646662313632356132343261353231343834373630343164223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223661353164326435386562326631336131303031656337303465376166306133223b733a33323a223230323632346161396432303665396165323137356434396130333734323037223b733a33323a223236373336616234326366303865393633633330643266396432663233393966223b733a33323a223762323631646430326364313666663634663135656436303736656636383738223b733a33323a223062323938326635353964613637633832373439343336646130396635373665223b733a33323a226535643063333936623531353930303161373539663530353361656362636131223b7d733a343a2268617368223b733a36353a2265356430633339366235313539303031613735396635303533616563626361312d3062323938326635353964613637633832373439343336646130396635373665223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a226438636263623230373537323130326637633364366131373332613837626331223b733a33323a223866373333386237313135636139366464303266353639313336373338653134223b733a33323a223862613731313937393934633564323536626137613466666336623932633733223b733a33323a226537393662653966313233653862633636353933393738336331636261643466223b733a33323a223830303537363836366265316263323763663933343630333161386134336239223b733a33323a223566396131633035383732333830613730353131653437353838613337643033223b7d733a343a2268617368223b733a36353a2235663961316330353837323338306137303531316534373538386133376430332d3830303537363836366265316263323763663933343630333161386134336239223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31373a7b733a33323a226430336463666439633831663036626434393737666566653738333038306431223b733a33323a226533343938363961303666323332393063643865326637636638383034383735223b733a33323a223730613763653336623030613537313932616137623738376638666238623865223b733a33323a226565646631663665633431623962353630313838656134303563326234393763223b733a33323a226333336530363235303737383630663633376264343166626430633330383232223b733a33323a226265623738646135613633323837663264353338343865363437366633343135223b733a33323a223534313537323661616138613762353330303233656561373262366563343561223b733a33323a226537313564653762303466313261396335373539663332396633663562383131223b733a33323a223831623364303335636162626634373938323038393762646366343133623732223b733a33323a223338656466336361386536303565383233363066633564653631333131336161223b733a33323a223639646363316239373465616539343238326539633432306638373339386435223b733a33323a223436643039316361633039303435383263306438656235336532343737326464223b733a33323a223538633565653563316661373832626338366264316531303839393864356537223b733a33323a223334613132353266363431653035613462333661326666663139303836306234223b733a33323a223831613332343730653732326439393537666463303861666463356139666165223b733a33323a223062306361306363346465313934616134303230373964643063643237613362223b733a33323a223733383264303163363936383964376535316437393039663532363436373535223b733a33323a226333393835373833353532363437326465646630323866616336336532323830223b733a33323a223561356664393539613831346430643963326464353534633434653162343132223b733a33323a226334616565333232396265383934346561393861356135643137363333303532223b733a33323a223931363730336337346632626566613864613361636163333039636332326635223b733a33323a226437666163356636633233623461663530656133316462333665363439356332223b733a33323a223538356265343464343332356432383336383166363765363538303866633732223b733a33323a223332636334316335353134363134363337383331363238386661613139316337223b733a33323a223062323331616636613032353933626134653665656633303361346332633966223b733a33323a223836633035353435303839653935626339666435613530643165613034303036223b733a33323a226663626366643438663635363762333964643738356232373134663937616261223b733a33323a226366323331646466613638646162633530306439653163333833616563353337223b733a33323a226537326666666633666164343335613037306432343431633366303836316337223b733a33323a226366306363636533316362663265326531653039326436363637613631663738223b733a33323a223335326437336535373734646430356236396638346561633166396437306637223b733a33323a223666643762313462316538663364353133373264633264363262653030646232223b733a33323a223865343762376533623139323435613664326262316132313362373036363830223b733a33323a226361313232353531633435623234663764623635393462373434373466366236223b7d733a343a2268617368223b733a36353a2263613132323535316334356232346637646236353934623734343734663662362d3865343762376533623139323435613664326262316132313362373036363830223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1698524502),
('idatj0brf0r4tmhkfjjt382ufi', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313033313636332e3432393434383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22696461746a30627266307234746d686b666a6a74333832756669223b7d7d, 1701031664),
('kfsk6ad2g6ssk1tm0olpaduecm', 0x5f5f4c616d696e61737c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313038363330332e35303435343b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226b6b683962713937756c70626b6e656662697175386f36313237223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303836323436383b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730313032393737343b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730313038393836323b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313730313038393839303b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730313032383539313b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730313032393939313b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223965356361353433656230613632336132363033316262316461373533336534223b733a33323a223937663938356463333661303433316438393739643761366235623262633939223b7d733a343a2268617368223b733a36353a2239376639383564633336613034333164383937396437613662356232626339392d3965356361353433656230613632336132363033316262316461373533336534223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a223338306131366266623031313664613764386533636537346663376363613130223b733a33323a223963396532333231326138633234306366393937376337653165616131363634223b733a33323a223539663331373732616430663634376236653937356664363165363134623162223b733a33323a223636373637386138663637326532623665373461653437316436333437346264223b733a33323a223133376465386432363438636235313863386432353333643137343736313666223b733a33323a226265663833626363363265343438333862316361643763353631313033633439223b733a33323a223437383631353339636265373065306230356436643532623435616165376163223b733a33323a226565616531626261316664626263623032663532633239393933363635633934223b733a33323a223866396331326562656337663037333631636337663631616630363863396236223b733a33323a226264636561373537376433303639383630353862373031333039663435303635223b733a33323a223037376366343032366230373761613633633061633732663161656332313366223b733a33323a223838343739323831616132656137306563623537363263613162393836373662223b733a33323a226163303563366333346631393365393530363638376464633331663762333664223b733a33323a223732333038306335613764363638333331393465353361363961333738393163223b7d733a343a2268617368223b733a36353a2237323330383063356137643636383333313934653533613639613337383931632d6163303563366333346631393365393530363638376464633331663762333664223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31363a7b733a33323a223533346239356465643038393365373531666330306339633439363664363633223b733a33323a226135643164306463666663396639306139656431656239666534323837653865223b733a33323a226262656432626166393864316263643661323562316637313830356462333766223b733a33323a226661636433623436343737356366373366323865326566613335613035373963223b733a33323a223335303836353736323432383631323464666665623733666663626332333239223b733a33323a226338633632646361313335323731383633363462316339333432643538396432223b733a33323a223638356165336535326632386461333465623665376333336263643262326230223b733a33323a223364666433616166636237643762626561333363333231663265376532333239223b733a33323a223839363464373764633030313738383163623063313334653563666335346664223b733a33323a223864383634643038653830366538366331326532303566636437393233623834223b733a33323a223138656561633538613835386133626431323536376237656539303233353335223b733a33323a226531353762646164663335333063613465393766333937643833353037333538223b733a33323a226164303964306162396362326239633864633632636261646634363262643461223b733a33323a223264343863303233343839346665613138356562323433653563353762663933223b733a33323a223630666330643362353730383938383239336131363236613864326239616162223b733a33323a226263623432386638393636643266353865373138366238383237303938376263223b733a33323a226264306432613831323263383233356263343130326439306132356438323263223b733a33323a223337663032653265323265336636303532316464396262356365363533376137223b733a33323a226538346532343263633766383634666565353636383931383736663462636633223b733a33323a226330346665313135373963663763383564363564616137316266356665383863223b733a33323a226537303235373666343036363536313864616266643565326337376536363535223b733a33323a223838396131323339616637326431356237363463323662643335343331356237223b733a33323a223064363362633430646535626465326630316164313365626237666637323930223b733a33323a226138336134366561346264663261616339626264363461626430333963333865223b733a33323a226636373361623962356165613435386462326137643635323962613031626238223b733a33323a223966313038373163323466613464376465386462333932313863626538636261223b733a33323a223532626464633963646338666431613461313231356533363239323239393766223b733a33323a226534376364366337653437316536336331623836353530313264653935326666223b733a33323a223063316161346562353866336138633439376136356465313637633835343932223b733a33323a223931346534343839316262623864396565393838613430633135343534303963223b733a33323a223563373330306264613064663037313766656239366533393930323566633739223b733a33323a223464666631316563343032653033616362363836366364313934386661313963223b7d733a343a2268617368223b733a36353a2234646666313165633430326530336163623638363663643139343866613139632d3563373330306264613064663037313766656239366533393930323566633739223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31303a7b733a33323a223635663662373733323065386230633736313232633065373164343064306261223b733a33323a223163646366373338633165383631356234663661373264313433383566306461223b733a33323a223361316237343437383063383137663764346164623338396239313464663466223b733a33323a226565326561313731323235383433343163333633626534383932623330376664223b733a33323a223739303038333839396261663063663930666138376535353334656163313530223b733a33323a226136656438646664653236653133303661663330373062303539393638363232223b733a33323a223234636262386231323834663839616366663265316634363064366131663533223b733a33323a223563633934363739316534653839313430343732323366303865383037353662223b733a33323a223634633837306534353337336235653965356139636436316666633633393864223b733a33323a226132626330323138646166643339626131316534373262623030396433303935223b733a33323a223961396566313637353735616331336236376262373938366639636564386538223b733a33323a223332613438373630363134336436633936396432626462646532376135623932223b733a33323a223864313836363632613831313132353033653765386531643035343135316430223b733a33323a223335323865363735346331366134393130306630346563353632363539623962223b733a33323a223237666232346664333966316535623563623162626531343632643338633763223b733a33323a223766333165306131376334393737633434363764313237366165373135343233223b733a33323a223433386661666431613732303230313836303765663066343461353466393631223b733a33323a223963373035656166323033626538626264646261313831363038656561363430223b733a33323a226265616234303861633461373139653733363939343965393563373435633830223b733a33323a226634336461303935633831353261336465663433353761373631633265646437223b7d733a343a2268617368223b733a36353a2266343364613039356338313532613364656634333537613736316332656464372d6265616234303861633461373139653733363939343965393563373435633830223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226462396236333936396137633738643530656265626564383531373232356437223b733a33323a223739643162623936363961386233663137643239386264386332616635653737223b7d733a343a2268617368223b733a36353a2237396431626239363639613862336631376432393862643863326166356537372d6462396236333936396137633738643530656265626564383531373232356437223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31303a7b733a33323a223937626139663031343034626235633435313162353233656439663730373633223b733a33323a226166306133373431376361363632373834366562393561643032376134366633223b733a33323a223738653739366632323137313661353364663266666537333437346135653036223b733a33323a223536366437383238393866326536343433366361613632373636323935333039223b733a33323a223434323438313463313137636139363933633563616335633561356465393362223b733a33323a226565333830353536626430346664383463346131383339663935396464646532223b733a33323a223131333862333265306633363930663430316139373633316335353634383733223b733a33323a223633353634313735373764663035353934393964383062616133663266356439223b733a33323a223962643232643939313261643235363337356666393134306433653539336539223b733a33323a223463643065383238633534373964333636313732396431383138633734356561223b733a33323a223565616138343039376637653536343465663763346465623838313362626335223b733a33323a226537363030333266623462333336653662383961316331376333336263323637223b733a33323a226563383134326332376432386431616431333930333031666330393436316266223b733a33323a223764373231613562653734373163343133376532636332333135333733326164223b733a33323a223661623837336537373966646465333434356664363563396632396461353038223b733a33323a223530613130636663393566316434646261633164646135393033363064653434223b733a33323a223366306634306461313962633832333638633161623066326166613662623938223b733a33323a223162633631653661306361636230383261353635366463356434656662626466223b733a33323a223762653036643336363435666332626562666164353566386361313465356436223b733a33323a226562386637643661376266633964373664363735303236623562376538376339223b7d733a343a2268617368223b733a36353a2265623866376436613762666339643736643637353032366235623765383763392d3762653036643336363435666332626562666164353566386361313465356436223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1701086303),
('lkn8gdolci6n8ogtqvavhfdsev', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313038363332322e3532333638313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226339686b3131623268376a7274356b3970316e6c673130633130223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730313038393930333b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223335313131303132353836343761303233623733343239366665633730313736223b733a33323a223765623638656631666333313331333266343263663663653363313938346238223b7d733a343a2268617368223b733a36353a2237656236386566316663333133313332663432636636636533633139383462382d3335313131303132353836343761303233623733343239366665633730313736223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d72656469726563745f75726c7c4e3b, 1701086322),
('mhccvhlhvlrml2cf1gsmtvs4p5', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313038383130332e3835313633333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226d68636376686c68766c726d6c3263663167736d747673347035223b7d7d, 1701088103),
('miisjvr8efn0psmvg4b8p8gsfr', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313639393837303639382e3332333839383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2232693173373731636732676e363973346761357662696b697331223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639393832383238313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639393836373535343b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313639393832393137393b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226135623836343163353730356336643261313434326436326131343166336232223b733a33323a223739363266323833383132313438623064666331656235663636333263316531223b7d733a343a2268617368223b733a36353a2237393632663238333831323134386230646663316562356636363332633165312d6135623836343163353730356336643261313434326436326131343166336232223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223032376330643836616164396133373237613732316531396239313837313736223b733a33323a223665656461613632616564653664306564646638393663383937643431633866223b733a33323a223130303237343438366439383766643234326438343334656238373162613363223b733a33323a223266653665666633353232343533336331663063373764386239306135653561223b7d733a343a2268617368223b733a36353a2232666536656666333532323435333363316630633737643862393061356535612d3130303237343438366439383766643234326438343334656238373162613363223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226339663137303239653438356639346261303761306165386237636166373939223b733a33323a223232353039363238656463383264656439636434313533663262663964656432223b7d733a343a2268617368223b733a36353a2232323530393632386564633832646564396364343135336632626639646564322d6339663137303239653438356639346261303761306165386237636166373939223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1699870702),
('mr9gsnvdk0gjq8lmo414p3ph0b', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313033333437332e3238343438373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226d723967736e76646b30676a71386c6d6f343134703370683062223b7d7d, 1701033473),
('n6umqbmvboqiuqmkj0sabiv6n3', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313032393236322e3436303832333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226e36756d71626d76626f716975716d6b6a307361626976366e33223b7d7d, 1701029262);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('ocq88khhgrrrf8pb7kabh0982n', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730303335313939322e3835373035373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2261677376633063633969613031706d76666c6a67613968356763223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303332353234303b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303335353535313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303335353535323b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313730303332363530303b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223765613435316465393332636165626636643665353335356136373766353834223b733a33323a223562663333313135633237383633646465303637393438613638663863383066223b7d733a343a2268617368223b733a36353a2235626633333131356332373836336464653036373934386136386638633830662d3765613435316465393332636165626636643665353335356136373766353834223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a226633383138393532343932666336343632383237383037303639656236356533223b733a33323a223565613863336465613231303239356664613132313034616530373662323964223b733a33323a223834386438643963393834343532663630633435626262363862636438313138223b733a33323a223564376364303135363137313865623836623434393163376363343264323562223b733a33323a223462393339636637643366326164633465653566356234633634633731323566223b733a33323a223738343936353665373035383638353231366464633532643732656665323131223b733a33323a226162363836393166383764396664653665303763346162386431633236396361223b733a33323a226337663639303738656563333736393139623031636433373065363463623137223b733a33323a223261363462323039626232653163393837353765613332343134613035396163223b733a33323a223261346661393661363335636435343638653734363334666331626366316138223b7d733a343a2268617368223b733a36353a2232613466613936613633356364353436386537343633346663316263663161382d3261363462323039626232653163393837353765613332343134613035396163223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226131333336373938373839306366613439373763323761356431316635356439223b733a33323a223534653862653436386265663065613032666562396166376137363065623037223b7d733a343a2268617368223b733a36353a2235346538626534363862656630656130326665623961663761373630656230372d6131333336373938373839306366613439373763323761356431316635356439223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223463643636353636353935393939623266646562386665643135303633623265223b733a33323a226637336539366166316265376632626635323639333266326466303333316634223b7d733a343a2268617368223b733a36353a2266373365393661663162653766326266353236393332663264663033333166342d3463643636353636353935393939623266646562386665643135303633623265223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1700351993),
('p9bmajgu2bdph6c27pahkvtrtn', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313639393832333134392e3938333332323b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a227039626d616a67753262647068366332377061686b767472746e223b7d7d, 1699823154),
('pj0v6r8qcnmbu8006qb0393ks6', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313038383130372e3730343831363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22706a307636723871636e6d6275383030367162303339336b7336223b7d7d, 1701088107),
('q49g1smu1stsik2h5h0fscmlu8', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313038383236392e3234313938373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a227134396731736d7531737473696b32683568306673636d6c7538223b7d7d, 1701088269),
('qs0mpsmdj2fetqd823qboqr7ht', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313038383134362e3736323533333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a227173306d70736d646a32666574716438323371626f7172376874223b7d7d, 1701088146),
('rh9nu5frmhavldj0m5hate7mhh', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313639393639393436352e3132363333363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a227268396e753566726d6861766c646a306d3568617465376d6868223b7d7d, 1699699469),
('sbepl8kf7kfmm72d9ncreobhgf', 0x5f5f4c616d696e61737c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313639383537313835352e3031363335383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22357565696b336d646a6564373071763469347170636e33677065223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639383537343038313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639383537353435353b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313639383537353031343b7d733a34353a224c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639383537353435353b7d733a33373a224c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639383537353431363b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226665633864306265346336616362663837633531356263323331303164383666223b733a33323a223561636636343563643736653239303865653565633238306432383034353634223b7d733a343a2268617368223b733a36353a2235616366363435636437366532393038656535656332383064323830343536342d6665633864306265346336616362663837633531356263323331303164383666223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33353a7b733a33323a223466663331616537633232363039613366353631396230623430373136623134223b733a33323a226563346264356233303533633833396337333263623465373732313730616134223b733a33323a223663633134653865346136363366376265393336366637373732346263366130223b733a33323a223163663231313936646339303434316633343161646139663436643038336537223b733a33323a226433643964376566336135646338633132663466356363623064666266633161223b733a33323a223537323663323861353432343831633039336530353633323333336132336233223b733a33323a223235626364386132643262633533653861396438626231383861336339633032223b733a33323a223765636431613433356533346130363237383863633566623431343661363561223b733a33323a226363383437386532613963373561386666313738653038623432663239623332223b733a33323a226363343263393733666233383965333234393065633839313734386334373334223b733a33323a223162633734656435333833323065343432646430616565383366343064616237223b733a33323a226431316464373936376638333632353464313733346330323663316561383963223b733a33323a226634653839326436303635323736366466616566396632393263616332303739223b733a33323a223830343835393735376563626437343633396439346337356435303435386434223b733a33323a223132636435666664366537383632623261383265643162366261613733383833223b733a33323a223163346335313632346566306639646637363664363863626430323130616539223b733a33323a223134626532326437383065373163386439306566363963646462613963666566223b733a33323a223465613738393936646261626137663533616361373865646564313961356635223b733a33323a223266346366313864353938313863333235393635346465346333343933343235223b733a33323a226330643432306337626232636638343430393930663134396665613464373964223b733a33323a223830613664343464326462623631393436626463363866306632356162663339223b733a33323a226666306565333438656262316164366464303162313638393233306632306531223b733a33323a226465316330306233656235323533666630643130646139306432623963623331223b733a33323a223863646561636539393736646234616339333335666135386438343561653531223b733a33323a223537313631653235623734366634643234653638633933616339376161656130223b733a33323a226539323532313061643638393239306138646461646263356261636335303834223b733a33323a223333653132666466353162303966616265383961343564323966656362613139223b733a33323a223235616564306432653261393562653137376334666465626230633564313833223b733a33323a223038653066623661323365386532616634306434373966663635633332383636223b733a33323a223331653766633832383637633862373838366134653338313933646466393535223b733a33323a226331366662616532383662626233373961626234333365363130323939653065223b733a33323a223966653638306332623733643465653737393765643135303935336331396233223b733a33323a226330323833353938313666623036373430643539666362616331386637343666223b733a33323a223731363663623035333030643232393465646533396462376339333930653338223b733a33323a223366353165353162666466353930336266333065363737323438653934623335223b733a33323a223931333631653238326637306232313637616264353964386564643635326263223b733a33323a223330383365316364303062326362343334356165333331613532333432613136223b733a33323a223039633464373666633338646532303032336638313538663630303430383938223b733a33323a226538313530633662623165666438323737333065633061333163616232613061223b733a33323a223230656134306539633662396338663166656362653239336566356562646466223b733a33323a223737656439346332643562346664333139636461373132373764353364383461223b733a33323a223039663336336466613530353161343962653139633865633162643963663132223b733a33323a223137356639343137333435346337613964666134323034613334396534343239223b733a33323a226664653365363964306565383638636161346235613030303833663562316631223b733a33323a223037666162396261326265646137376463343466393432353366353264623339223b733a33323a223761383563656165613563653564303631363036353063383366653065343637223b733a33323a226161366564653665366635623261393432663535636265643933356566306435223b733a33323a226365646130333962663436353536666566396136633463303136643931626565223b733a33323a223263373761613237616232626462346433363132313463376431313432646136223b733a33323a223766343134356633333764613531383031356232393534333762663631306437223b733a33323a223663646239353861396138633661333465366165376134623066613165336164223b733a33323a226462633537643162366238393634613530356562386533313366326231396339223b733a33323a223565363837633362386637353964666530643030623531323135616562613538223b733a33323a223131313864356131653531633432663532633932346661396638316461313633223b733a33323a226465633539343636366630646535613530346463653839313534343830396638223b733a33323a223062396563623630393839666430366639323065363236343238336130663136223b733a33323a223235366661613237313132613939396337653536613762376463643163346663223b733a33323a226534356364666464343335363738633538393761386439323836613236346236223b733a33323a223265306333326535396234363136326265623431353565646134353663313432223b733a33323a223739663338643635316135376537393630333766396265393231663938303530223b733a33323a223538306631383335643534353666396564363165643439303035386635303365223b733a33323a223830323461616239323065623531363139623464303831393032386161613063223b733a33323a223832303066653765306463323565316366653266343939376534656462313461223b733a33323a223431386366643631383664373731656361343933316262376130393738306463223b733a33323a226631306435376635663738626637363437363335653036326333633061333665223b733a33323a223733393964356461396334386437396331333664363932616366343762376334223b733a33323a223838333434373035376338653062636334653266376233383963313863613034223b733a33323a226462393666613664336238306433376139306434316437396363623865386333223b733a33323a226239343537303231343634346633336237326232366631393031313237326234223b733a33323a223438356134346665353765653062316363616330636437656262313466336461223b7d733a343a2268617368223b733a36353a2234383561343466653537656530623163636163306364376562623134663364612d6239343537303231343634346633336237326232366631393031313237326234223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31353a7b733a33323a223064336630343837313036313230303137313231333637366533376330656637223b733a33323a226461373066373261373736653362396163616532313738333633666361323336223b733a33323a226339373832646465633938313964366232343764393834323563396437643063223b733a33323a226264386637613961656165366434336234363165623036323166643165333030223b733a33323a223636316531623139393833636337663034386637353534313831306439656233223b733a33323a223538333863353133343131663432383832666439353432323035336538323337223b733a33323a223338316639626637393065333161623830623134313464313738306431613238223b733a33323a226530643230303535366633343837313334343532666439373437383036346162223b733a33323a223566386562336636326336313939393063303634333863333231363266616236223b733a33323a223763626266366232623536663839393164383130663533313636353631653033223b733a33323a226464376530623733376238343736333838623531323033663936613930346639223b733a33323a223462343464636531343337616666643337623035653737353361336432666538223b733a33323a226164316463333433313562633133666331396561386533333461303032373531223b733a33323a223565383030643565366461366362396663393135386230626434643763303163223b733a33323a226665313132663964663034353465613865383036383132613461333432353936223b733a33323a223432356539316439356563306336623939663736336264343663306338316331223b733a33323a223961356339663332383439386366306336373239646331343765376666346238223b733a33323a223537623835333034366562333335363366303737666362643531613839653436223b733a33323a223463353037633966333637323034386165393734633332383264376535343731223b733a33323a226134653831653232393534636661623561643330623839626337393933643033223b733a33323a223339333266373939363239383139363930326234386261653362373761333538223b733a33323a223639666134663733303264393861643764343463626239303335613135623364223b733a33323a226336613138313238326661343237623465663737326461646663306434616539223b733a33323a226234386465373366373634626164303934343564363631636234356361653835223b733a33323a223635343733626139393530663632613631653063316637366561303762356564223b733a33323a223239633132353831383261393537356466333638356630633932666135313437223b733a33323a226565653637633139636631383134333266313464623762666135646466306638223b733a33323a223062626565356534343461303536643330613635633232353731323536333762223b733a33323a223734653636616262313730633333653734333765343461623665316264666462223b733a33323a223737363833653134643233313437356266383566643562393233356237373162223b7d733a343a2268617368223b733a36353a2237373638336531346432333134373562663835666435623932333562373731622d3734653636616262313730633333653734333765343461623665316264666462223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31343a7b733a33323a226636333339353338336538306439623330383639643333303763653934613732223b733a33323a223232316539323665356631386664623936376364373833303339333232313132223b733a33323a223764616261396636653836393837343335636364343932313034383639373433223b733a33323a223465393439353332633862653264303331653230396533386363373662313365223b733a33323a223734303231346438383062656430353738636534633264343337623466343935223b733a33323a223835623965333233323836363931633338616331396536643530333333666239223b733a33323a223764646663313763636330373939393434343234306131306435373034356434223b733a33323a223964366161663936663466356161353236353431636633386461376236666537223b733a33323a223661643030666463663639343732656438373731316430613635353832393966223b733a33323a223462373465613131386434363837656136393731373839623637393434373932223b733a33323a223433373934396236303636333666666164616636313436363534306633653838223b733a33323a223666633961366162303737316334313962643733316630626531343163623131223b733a33323a223466666163396561393737613162373334663936326366373262336363616134223b733a33323a223064633862313366663630306361313465656461376439643138303461326634223b733a33323a223736623562353766326163376666373937326333353832353130313336333738223b733a33323a226637623935633363636633313061323936366131643165303565663364646435223b733a33323a223065653162383462373431643462313336336537616535326235626164336462223b733a33323a223433633466303236396564303633316436616462313539343732623938643932223b733a33323a226135386237626638336336383335326431623266316666633266336437386639223b733a33323a223730313334323433326262633238333663303633656264653130373834303731223b733a33323a223365313930393430613063336337646236383366353439373939643334343939223b733a33323a223330303365656535323237393063656631613735653133646262356264663038223b733a33323a223537626635353633313139363766393630386636623533643366316639376636223b733a33323a223666383661306363663232303263313335326635353965666130653234343837223b733a33323a226237383263313236353862303565303562313362613037623765373833346537223b733a33323a226662393765316265353739396561633733623432353639383336643165396235223b733a33323a223166653034663062646634356330646463633361656331313063393231643536223b733a33323a223834326261333934376366303464663630326635346362613935643331333032223b7d733a343a2268617368223b733a36353a2238343262613339343763663034646636303266353463626139356433313330322d3166653034663062646634356330646463633361656331313063393231643536223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a226532613838313662366534616439333866333437393765643833616162613430223b733a33323a223036343131613164313035363337346162366431373764383034363731363631223b733a33323a223965636661623864393532636134306333666563306166323063636366323966223b733a33323a223466646165373832323233343665626135623039316539636461613266623663223b733a33323a226530613262313333623730363165386538663031326664313064373431303032223b733a33323a223535396637653836373434643464616638336136376561363864363834306439223b733a33323a223766613634636662646330356531613964643764303537353565363365643830223b733a33323a223134376236396666643539386466396635343831656532643465313161326138223b733a33323a223134393465396131613265363764336437353062393738666138373238356139223b733a33323a223961393439303833346633396366613263303235613735616265373336643664223b733a33323a226265643338666261363466303232643265393330613331633265393830396337223b733a33323a226336393138613038306131333363323030633862616231363339363634346536223b733a33323a223533333430313863623338376534306634313466376165633464636661393731223b733a33323a223562373432633561363133623331646630623437353132343630616139386535223b7d733a343a2268617368223b733a36353a2235623734326335613631336233316466306234373531323436306161393865352d3533333430313863623338376534306634313466376165633464636661393731223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1698571855),
('tn6loclc40jiv7r2qfbfi7iji7', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313033323930322e3439313935363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22746e366c6f636c6334306a6976377232716662666937696a6937223b7d7d, 1701032902),
('tt1tbqj9k1igc0rdop2bug0b06', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313038383533362e3837373730393b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a227474317462716a396b316967633072646f703262756730623036223b7d7d, 1701088536);

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

CREATE TABLE `setting` (
  `id` varchar(190) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"oumayma2001k@gmail.com\"'),
('default_site', '\"\"'),
('default_to_private', '\"0\"'),
('disable_file_validation', '\"0\"'),
('disable_jsonld_embed', '\"0\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"omeka\"'),
('locale', '\"\"'),
('media_alt_text_property', '\"\"'),
('media_type_whitelist', '{\"0\":\"application\\/msword\",\"1\":\"application\\/ogg\",\"2\":\"application\\/pdf\",\"3\":\"application\\/rtf\",\"4\":\"application\\/vnd.ms-access\",\"5\":\"application\\/vnd.ms-excel\",\"6\":\"application\\/vnd.ms-powerpoint\",\"7\":\"application\\/vnd.ms-project\",\"8\":\"application\\/vnd.ms-write\",\"9\":\"application\\/vnd.oasis.opendocument.chart\",\"10\":\"application\\/vnd.oasis.opendocument.database\",\"11\":\"application\\/vnd.oasis.opendocument.formula\",\"12\":\"application\\/vnd.oasis.opendocument.graphics\",\"13\":\"application\\/vnd.oasis.opendocument.presentation\",\"14\":\"application\\/vnd.oasis.opendocument.spreadsheet\",\"15\":\"application\\/vnd.oasis.opendocument.text\",\"16\":\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"17\":\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"18\":\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"19\":\"application\\/x-gzip\",\"20\":\"application\\/x-ms-wmp\",\"21\":\"application\\/x-msdownload\",\"22\":\"application\\/x-shockwave-flash\",\"23\":\"application\\/x-tar\",\"24\":\"application\\/zip\",\"25\":\"audio\\/midi\",\"26\":\"audio\\/mp4\",\"27\":\"audio\\/mpeg\",\"28\":\"audio\\/ogg\",\"29\":\"audio\\/x-aac\",\"30\":\"audio\\/x-aiff\",\"31\":\"audio\\/x-ms-wma\",\"32\":\"audio\\/x-ms-wax\",\"33\":\"audio\\/x-realaudio\",\"34\":\"audio\\/x-wav\",\"35\":\"image\\/bmp\",\"36\":\"image\\/gif\",\"37\":\"image\\/jp2\",\"38\":\"image\\/jpeg\",\"39\":\"image\\/pjpeg\",\"40\":\"image\\/png\",\"41\":\"image\\/tiff\",\"42\":\"image\\/x-icon\",\"43\":\"text\\/css\",\"44\":\"text\\/plain\",\"45\":\"text\\/richtext\",\"46\":\"video\\/divx\",\"47\":\"video\\/mp4\",\"48\":\"video\\/mpeg\",\"49\":\"video\\/ogg\",\"50\":\"video\\/quicktime\",\"51\":\"video\\/webm\",\"52\":\"video\\/x-ms-asf\",\"54\":\"video\\/x-msvideo\",\"55\":\"video\\/x-ms-wmv\"}'),
('pagination_per_page', '\"25\"'),
('property_label_information', '\"none\"'),
('recaptcha_secret_key', '\"\"'),
('recaptcha_site_key', '\"\"'),
('time_zone', '\"Europe\\/Berlin\"'),
('use_htmlpurifier', '\"1\"'),
('value_languages', '[]'),
('version', '\"4.0.4\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `homepage_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `slug` varchar(190) NOT NULL,
  `theme` varchar(190) NOT NULL,
  `title` varchar(190) NOT NULL,
  `summary` longtext DEFAULT NULL,
  `navigation` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `assign_new_items` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site`
--

INSERT INTO `site` (`id`, `thumbnail_id`, `homepage_id`, `owner_id`, `slug`, `theme`, `title`, `summary`, `navigation`, `item_pool`, `created`, `modified`, `is_public`, `assign_new_items`) VALUES
(2, NULL, NULL, 1, 'coucher-de-soleil-sur-la-plage', 'default', 'Coucher de soleil sur la plage', 'Une magnifique vue du coucher de soleil sur une plage tropicale.', '[{\"type\":\"browse\",\"data\":{\"label\":\"Browse\",\"query\":\"\"},\"links\":[]}]', '[]', '2023-10-29 09:12:12', '2023-10-30 10:17:42', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `site_block_attachment`
--

CREATE TABLE `site_block_attachment` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `caption` longtext NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_block_attachment`
--

INSERT INTO `site_block_attachment` (`id`, `block_id`, `item_id`, `media_id`, `caption`, `position`) VALUES
(1, 14, 6, NULL, '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `site_item_set`
--

CREATE TABLE `site_item_set` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_item_set`
--

INSERT INTO `site_item_set` (`id`, `site_id`, `item_set_id`, `position`) VALUES
(1, 2, 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `site_page`
--

CREATE TABLE `site_page` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `slug` varchar(190) NOT NULL,
  `title` varchar(190) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_page`
--

INSERT INTO `site_page` (`id`, `site_id`, `slug`, `title`, `is_public`, `created`, `modified`) VALUES
(4, 2, 'welcome', 'Welcome', 1, '2023-10-29 09:12:12', '2023-10-30 10:11:28'),
(5, 2, 'coucher-de-soleil', 'coucher de soleil', 1, '2023-10-29 18:55:16', '2023-10-30 11:22:05');

-- --------------------------------------------------------

--
-- Structure de la table `site_page_block`
--

CREATE TABLE `site_page_block` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `layout` varchar(80) NOT NULL,
  `data` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_page_block`
--

INSERT INTO `site_page_block` (`id`, `page_id`, `layout`, `data`, `position`) VALUES
(7, 4, 'html', '{\"html\":\"<p><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Bienvenue sur votre nouveau site. <\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Ceci est une page d\'exemple.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Ceci est une liste \\u00e0 puces.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/li>\\r\\n\\t<li><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Deuxi\\u00e8me entr\\u00e9e.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Retour \\u00e0 la normale.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Il s\'agit d\'une liste ordonn\\u00e9e.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/li>\\r\\n\\t<li><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Deuxi\\u00e8me entr\\u00e9e.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Retour \\u00e0 la normale.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/p>\\r\\n\\r\\n<blockquote><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Ceci est une citation en bloc.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/blockquote>\\r\\n\\r\\n<p><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Retour \\u00e0 la normale.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/p>\\r\\n\\r\\n<div><a href=\\\"#\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Ce texte est un lien qui ne pointe actuellement vers rien.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/a><\\/div>\\r\\n\\r\\n<p><strong><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Ce texte est en gras, dans une balise.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/strong><\\/p>\\r\\n\\r\\n<p><em><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Ce texte est en italique, dans une balise &lt;em&gt;.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/em><\\/p>\\r\\n\\r\\n<p><u><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Ce texte est soulign\\u00e9, dans une balise &lt;u&gt;.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/u><\\/p>\\r\\n\\r\\n<p><s><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Ce texte est barr\\u00e9, dans une balise &lt;s&gt;.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/s><\\/p>\\r\\n\\r\\n<p><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Ce texte est <\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><sub><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">en indice<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/sub><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"> et <\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><sup><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">en exposant<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/sup><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"> utilisant &lt;sub&gt; et &lt;sup&gt;, qui peuvent \\u00eatre utilis\\u00e9s pour ajouter des notes et des citations.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/p>\\r\\n\\r\\n<hr \\/>\\r\\n<h1><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Il s\'agit d\'un titre H1. <\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Il est plus grand que le titre de la page, qui est rendu en H2.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/h1>\\r\\n\\r\\n<h2><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Il s\'agit d\'un en-t\\u00eate H2, de la m\\u00eame taille que le titre de la page.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/h2>\\r\\n\\r\\n<h3><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Il s\'agit d\'un sous-en-t\\u00eate H3.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/h3>\\r\\n\\r\\n<h4><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Il s\'agit d\'un sous-en-t\\u00eate H4.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/h4>\\r\\n\\r\\n<h5><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Il s\'agit d\'un sous-en-t\\u00eate H5.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/h5>\\r\\n\\r\\n<h6><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Il s\'agit d\'un sous-en-t\\u00eate H6.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/h6>\\r\\n\",\"divclass\":\"\"}', 1),
(8, 4, 'lineBreak', '{\"break_type\":\"opaque\"}', 2),
(9, 4, 'html', '{\"html\":\"<h2 style=\\\"font-style:italic;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Il s\'agit du style de bloc \\\"Titre italique\\\".<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/h2>\\r\\n\\r\\n<h3 style=\\\"color:#aaaaaa;font-style:italic;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Il s\'agit du style de bloc \\\"Sous-titre\\\".<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/h3>\\r\\n\\r\\n<div style=\\\"background:#eeeeee;border:1px solid #cccccc;padding:5px 10px;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Il s\'agit du style de bloc \\\"Conteneur sp\\u00e9cial\\\".<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/div>\\r\\n\\r\\n<p><span class=\\\"marker\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Il s\'agit du style en ligne \\\"Marqueur\\\".<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/span><\\/p>\\r\\n\\r\\n<p><big><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Il s\'agit du style en ligne \\\"Big\\\". <\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/big><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">C\'est un texte normal.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/p>\\r\\n\\r\\n<p><small><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">Ce texte se trouve dans un style \\u00ab petit \\u00bb en ligne. <\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/small><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">C\'est un texte normal.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/p>\\r\\n\\r\\n<p><code>This is the \\\"Computer Code\\\" inline style.<\\/code><\\/p>\\r\\n\\r\\n<p><span dir=\\\"rtl\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\"><font style=\\\"vertical-align:inherit;\\\">\\u0644\\u0643\\u0646 \\u0644\\u0627 \\u0628\\u062f \\u0623\\u0646 \\u0623\\u0648\\u0636\\u062d \\u0644\\u0643 \\u0623\\u0646 \\u0643\\u0644 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0623\\u0641\\u0643\\u0627\\u0631 \\u0627\\u0644\\u0645\\u063a\\u0644\\u0648\\u0637\\u0629 \\u062d\\u0648\\u0644 \\u0627\\u0633\\u062a\\u0646\\u0643\\u0627\\u0631 \\u0627\\u0644\\u0646\\u0634\\u0648\\u0629 \\u0648\\u062a\\u0645\\u062c\\u064a\\u062f \\u0627\\u0644\\u0623\\u0644\\u0645 \\u064a\\u0639\\u0631\\u0636 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635 \\u0645\\u0646 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631.<\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/font><\\/span><\\/p>\\r\\n\",\"divclass\":\"\"}', 3),
(12, 5, 'pageTitle', '[]', 1),
(14, 5, 'itemShowCase', '{\"thumbnail_type\":\"large\",\"show_title_option\":\"item_title\"}', 2);

-- --------------------------------------------------------

--
-- Structure de la table `site_permission`
--

CREATE TABLE `site_permission` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_permission`
--

INSERT INTO `site_permission` (`id`, `site_id`, `user_id`, `role`) VALUES
(2, 2, 1, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` varchar(190) NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(190) NOT NULL,
  `name` varchar(190) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) DEFAULT NULL,
  `role` varchar(190) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'oumayma2001k@gmail.com', 'oumayma', '2023-10-28 10:32:21', '2023-10-28 10:32:21', '$2y$10$JQoWXaC3iZ6IKO5Z7Q31UuXO16DaJQkmcNWtGI9idexmRHo6WJqNK', 'global_admin', 1),
(2, 'samuel.szoniechy@univ-paris8.fr', 'samuel', '2023-11-27 11:56:57', '2023-11-27 11:58:09', '$2y$10$cvqHE4kbAwxmyaH21/TX4OggzSnM6VJkDakMBPWUVP1lUbkfO5dYu', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

CREATE TABLE `user_setting` (
  `id` varchar(190) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_setting`
--

INSERT INTO `user_setting` (`id`, `user_id`, `value`) VALUES
('browse_defaults_admin_item_sets', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_item_sets', 2, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_items', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_items', 2, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_media', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_media', 2, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_sites', 1, '{\"sort_by\":\"title\",\"sort_order\":\"asc\"}'),
('browse_defaults_admin_sites', 2, '{\"sort_by\":\"title\",\"sort_order\":\"asc\"}'),
('columns_admin_item_sets', 1, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_item_sets', 2, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_items', 1, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_items', 2, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_media', 1, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_media', 2, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_sites', 1, '[{\"type\":\"slug\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_sites', 2, '[{\"type\":\"slug\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('default_resource_template', 1, '\"\"'),
('default_resource_template', 2, '\"\"'),
('locale', 1, '\"\"'),
('locale', 2, '\"\"');

-- --------------------------------------------------------

--
-- Structure de la table `value`
--

CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value_resource_id` int(11) DEFAULT NULL,
  `value_annotation_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `uri` longtext DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `value_annotation_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(13, 5, 1, NULL, NULL, 'literal', '', 'article de blog', NULL, 1),
(14, 6, 1, NULL, NULL, 'literal', '', 'Couche de soleil sur la plage', NULL, 1),
(15, 6, 15, NULL, NULL, 'uri', '', 'Wikipédia ressource', 'https://en.wikipedia.org/wiki/Public_domain', 1),
(16, 6, 8, NULL, NULL, 'literal', '', 'Photographie', NULL, 1),
(17, 6, 2, NULL, NULL, 'literal', '', 'John Doe', NULL, 1),
(18, 6, 7, NULL, NULL, 'literal', '', '15/09/2022', NULL, 1),
(19, 6, 4, NULL, NULL, 'literal', '', 'Une magnifique vue du coucher de soleil sur une plage tropicale.', NULL, 1),
(20, 6, 9, NULL, NULL, 'literal', '', 'Image', NULL, 1),
(21, 6, 12, NULL, NULL, 'literal', '', 'Français', NULL, 1),
(22, 6, 40, NULL, NULL, 'literal', '', 'Plage paradisiaque', NULL, 1),
(23, 6, 50, NULL, NULL, 'literal', '', ' © John Doe, Tous droits réservés', NULL, 1),
(24, 6, 3, NULL, NULL, 'literal', '', 'Plage, Coucher de soleil, Nature', NULL, 1),
(25, 7, 1, NULL, NULL, 'literal', '', 'Id', NULL, 1),
(26, 7, 4, NULL, NULL, 'literal', '', 'identifiant de la langue', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `value_annotation`
--

CREATE TABLE `value_annotation` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vocabulary`
--

CREATE TABLE `vocabulary` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) NOT NULL,
  `prefix` varchar(190) NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(10, 1, 'https://Translate.univ-paris8.fr/onto/sat#', 'sat', 'Translate', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C912ED9D7E3C61F9` (`owner_id`);

--
-- Index pour la table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`);

--
-- Index pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD PRIMARY KEY (`id`,`resource`),
  ADD KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`);
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1F1B251ECBE0B084` (`primary_media_id`);

--
-- Index pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD PRIMARY KEY (`item_id`,`item_set_id`),
  ADD KEY `IDX_6D0C9625126F525E` (`item_id`),
  ADD KEY `IDX_6D0C9625960278D7` (`item_set_id`);

--
-- Index pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD PRIMARY KEY (`item_id`,`site_id`),
  ADD KEY `IDX_A1734D1F126F525E` (`item_id`),
  ADD KEY `IDX_A1734D1FF6BD1646` (`site_id`);

--
-- Index pour la table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_6A2CA10C126F525E` (`item_id`),
  ADD KEY `item_position` (`item_id`,`position`);

--
-- Index pour la table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`);

--
-- Index pour la table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  ADD KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  ADD KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  ADD KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`),
  ADD KEY `title` (`title`(190));

--
-- Index pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  ADD KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  ADD KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  ADD KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  ADD KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`);

--
-- Index pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  ADD KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  ADD KEY `IDX_4689E2F1549213EC` (`property_id`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  ADD KEY `IDX_694309E4FDFF2E92` (`thumbnail_id`),
  ADD KEY `IDX_694309E47E3C61F9` (`owner_id`);

--
-- Index pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_236473FEE9ED820C` (`block_id`),
  ADD KEY `IDX_236473FE126F525E` (`item_id`),
  ADD KEY `IDX_236473FEEA9FDD75` (`media_id`),
  ADD KEY `block_position` (`block_id`,`position`);

--
-- Index pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  ADD KEY `IDX_D4CE134F6BD1646` (`site_id`),
  ADD KEY `IDX_D4CE134960278D7` (`item_set_id`),
  ADD KEY `position` (`position`);

--
-- Index pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  ADD KEY `IDX_2F900BD9F6BD1646` (`site_id`);

--
-- Index pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C593E731C4663E4` (`page_id`),
  ADD KEY `page_position` (`page_id`,`position`);

--
-- Index pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  ADD KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  ADD KEY `IDX_C0401D6FA76ED395` (`user_id`);

--
-- Index pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`,`site_id`),
  ADD KEY `IDX_64D05A53F6BD1646` (`site_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `IDX_C779A692A76ED395` (`user_id`);

--
-- Index pour la table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1D7758349B66727E` (`value_annotation_id`),
  ADD KEY `IDX_1D77583489329D25` (`resource_id`),
  ADD KEY `IDX_1D775834549213EC` (`property_id`),
  ADD KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  ADD KEY `value` (`value`(190)),
  ADD KEY `uri` (`uri`(190));

--
-- Index pour la table `value_annotation`
--
ALTER TABLE `value_annotation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  ADD UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  ADD KEY `IDX_9099C97B7E3C61F9` (`owner_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `FK_C912ED9D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `FK_2AF5A5C7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1F1B251ECBE0B084` FOREIGN KEY (`primary_media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD CONSTRAINT `FK_6D0C9625126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6D0C9625960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD CONSTRAINT `FK_1015EEEBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD CONSTRAINT `FK_A1734D1F126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A1734D1FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_6A2CA10CBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD CONSTRAINT `FK_C77917B4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BF21CDEAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_BC91F41616131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F4167E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD CONSTRAINT `FK_C6F063AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C6F063ADAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD CONSTRAINT `FK_39ECD52E448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E724734A3` FOREIGN KEY (`title_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52EB84E0D1D` FOREIGN KEY (`description_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD CONSTRAINT `FK_4689E2F116131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`),
  ADD CONSTRAINT `FK_4689E2F1549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `FK_694309E4571EDDA` FOREIGN KEY (`homepage_id`) REFERENCES `site_page` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E47E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E4FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD CONSTRAINT `FK_236473FE126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_236473FEE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `site_page_block` (`id`),
  ADD CONSTRAINT `FK_236473FEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD CONSTRAINT `FK_D4CE134960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D4CE134F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD CONSTRAINT `FK_2F900BD9F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`);

--
-- Contraintes pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD CONSTRAINT `FK_C593E731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `site_page` (`id`);

--
-- Contraintes pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD CONSTRAINT `FK_C0401D6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C0401D6FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD CONSTRAINT `FK_64D05A53F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `FK_C779A692A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `value`
--
ALTER TABLE `value`
  ADD CONSTRAINT `FK_1D7758344BC72506` FOREIGN KEY (`value_resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D775834549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D77583489329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`),
  ADD CONSTRAINT `FK_1D7758349B66727E` FOREIGN KEY (`value_annotation_id`) REFERENCES `value_annotation` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `value_annotation`
--
ALTER TABLE `value_annotation`
  ADD CONSTRAINT `FK_C03BA4EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD CONSTRAINT `FK_9099C97B7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
