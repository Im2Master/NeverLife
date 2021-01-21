-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 18 jan. 2021 à 19:50
-- Version du serveur :  10.4.14-MariaDB-1:10.4.14+maria~stretch
-- Version de PHP : 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Nael6674fivem`
--

-- --------------------------------------------------------

--
-- Structure de la table `account_info`
--

CREATE TABLE `account_info` (
  `account_id` int(11) NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `steam` varchar(22) COLLATE utf8mb4_bin DEFAULT NULL,
  `xbl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `live` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `fivem` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `guid` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `first_connection` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('property_dirtycash', 'Argent Sale Propriété', 0),
('society_Ballas1', 'ballas1', 1),
('society_Bloods', 'Bloods', 1),
('society_Families1', 'famillies1', 1),
('society_Marabunta1', 'marabunta1', 1),
('society_Vagos1', 'vagos1', 1),
('society_ambulance', 'Ambulance', 1),
('society_avocat', 'Avocat', 1),
('society_boatshop', 'Concessionnaire Bateaux', 1),
('society_carshop', 'Concessionnaire Voitures', 1),
('society_journalist', 'Journaliste', 1),
('society_mecano', 'Mécano', 1),
('society_planeshop', 'Concessionnaire Avions', 1),
('society_police', 'Police', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_ubereats', 'UberEats', 1),
('society_unicorn', 'Unicorn', 1),
('society_vendeur', 'Vendeur Arme', 1),
('society_vigne', 'Vigneron', 1),
('trunk_dirtycash', 'Argent Sale Coffre Véhicule', 0);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(2924, 'society_police', 280, NULL),
(3058, 'society_ambulance', 529585, NULL),
(3061, 'society_carshop', 730799, NULL),
(3063, 'society_realestateagent', 31065, NULL),
(3066, 'society_mecano', 543373, NULL),
(3121, 'society_vigne', 32328, NULL),
(3392, 'property_dirtycash', 168330, 'license:67585afbc26a7cc0350cadf5b56fb0f163270cd3'),
(3393, 'society_Ballas1', 0, NULL),
(3394, 'society_Bloods', 0, NULL),
(3395, 'society_Vagos1', 0, NULL),
(3396, 'society_Marabunta1', 0, NULL),
(3397, 'society_Families1', 0, NULL),
(3398, 'society_avocat', 0, NULL),
(3399, 'society_boatshop', 0, NULL),
(3400, 'society_planeshop', 0, NULL),
(3401, 'society_tabac', 0, NULL),
(3402, 'society_taxi', 0, NULL),
(3403, 'society_ubereats', 0, NULL),
(3404, 'society_vendeur', 0, NULL),
(3405, 'society_journalist', 0, NULL),
(3406, 'society_unicorn', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_Ballas1', 'ballas1', 1),
('society_Bloods', 'Bloods', 1),
('society_Families1', 'famillies1', 1),
('society_Marabunta1', 'marabunta1', 1),
('society_Vagos1', 'vagos1', 1),
('society_ambulance', 'Ambulance', 1),
('society_avocat', 'Avocat', 1),
('society_boatshop', 'Concessionnaire Bateaux', 1),
('society_carshop', 'Concessionnaire Voitures', 1),
('society_casino', 'Casino', 1),
('society_journalist', 'Journaliste', 1),
('society_krzcorp', 'Korioz Corp.', 1),
('society_mecano', 'Mécano', 1),
('society_planeshop', 'Concessionnaire Avions', 1),
('society_police', 'Police', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_ubereats', 'ubereats', 1),
('society_ubereats_fridge', 'UberEats (frigo)', 1),
('society_unicorn', 'Unicorn', 1),
('society_unicorn_fridge', 'Unicorn (frigo)', 1),
('society_vendeur', 'Vendeur Arme', 1),
('society_vigne', 'Vigneron', 1),
('trunk', 'Coffre Véhicule', 0);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
(1, 'society_police', 'basic_key', 319, NULL),
(2, 'society_police', 'basic_cuff', 579, NULL),
(4, 'trunk', 'coke', 9, 'JRSM4202'),
(10, 'trunk', 'medikit', 7, '20LAT402'),
(12, 'society_Bloods', 'water', 5, NULL),
(13, 'society_Bloods', 'bread', 8, NULL),
(14, 'society_Bloods', 'coke', 4, NULL),
(15, 'trunk', 'opium', 1830, 'UBYM3520'),
(28, 'society_vigne', 'grand_cru', 66, NULL),
(29, 'trunk', 'raisin', 775, 'VIGN2819'),
(30, 'trunk', 'opium', 20, 'LSPD0231'),
(31, 'trunk', 'vine', 275, 'VIGN2819'),
(32, 'trunk', 'grand_cru', 7, 'VIGN2819'),
(33, 'trunk', 'bread', 3, 'UPFE9450'),
(35, 'trunk', 'weed', 48, '27OCA673'),
(38, 'trunk', 'grand_cru', 18, 'VIGN8981'),
(39, 'society_vigne', 'weed', 2, NULL),
(40, 'society_vigne', 'weed_pooch', 4, NULL),
(42, 'trunk', 'grand_cru', 30, 'VIGN6453'),
(47, 'society_vigne', 'vine', 95, NULL),
(51, 'society_Bloods', 'opium', 6, NULL),
(52, 'society_Bloods', 'piluleoubli', 1, NULL),
(56, 'trunk', 'weed', 0, 'DTCL0414'),
(57, 'trunk', 'opium', 32, 'ZUVE3452'),
(59, 'society_police', 'opium', 24, NULL),
(60, 'trunk', 'coke', 86, 'WFAZ9244'),
(61, 'trunk', 'coke_pooch', 0, 'WFAZ9244'),
(63, 'trunk', 'raisin', 325, 'VIGN3178'),
(64, 'trunk', 'opium_pooch', 178, 'ZUVE3452'),
(65, 'trunk', 'vine', 98, 'VIGN3178'),
(66, 'trunk', 'grand_cru', 2, 'VIGN3178'),
(67, 'trunk', 'opium', 2, 'VYYS6369'),
(68, 'trunk', 'vine', 0, 'VIGN9943'),
(69, 'trunk', 'raisin', 0, 'VIGN9943'),
(70, 'trunk', 'grand_cru', 17, 'VIGN9943'),
(71, 'society_Bloods', 'weed', 24, NULL),
(72, 'trunk', 'opium_pooch', 0, 'VYYS6369'),
(73, 'trunk', 'bread', 0, 'HWGV9953'),
(74, 'trunk', 'raisin', 1000, 'HWGV9953'),
(75, 'trunk', 'grand_cru', 1, 'VIGN9102'),
(76, 'trunk', 'raisin', 906, 'VIGN9102');

-- --------------------------------------------------------

--
-- Structure de la table `baninfo`
--

CREATE TABLE `baninfo` (
  `id` int(11) NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `banlist`
--

CREATE TABLE `banlist` (
  `licenseid` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetName` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceName` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



-- --------------------------------------------------------

--
-- Structure de la table `banlisthistory`
--

CREATE TABLE `banlisthistory` (
  `id` int(11) NOT NULL,
  `licenseid` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetName` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceName` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



--
-- Structure de la table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `society` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT 'carshop'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dateofbirth` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sex` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT 'M',
  `height` varchar(128) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_Ballas1', 'ballas1', 1),
('society_Bloods', 'Bloods', 1),
('society_Families1', 'famillies1', 1),
('society_Marabunta1', 'marabunta1', 1),
('society_Vagos1', 'vagos1', 1),
('society_ambulance', 'Ambulance', 1),
('society_avocat', 'Avocat', 1),
('society_boatshop', 'Concessionnaire Bateaux', 1),
('society_carshop', 'Concessionnaire Voitures', 1),
('society_journalist', 'Journaliste', 1),
('society_mecano', 'Mécano', 1),
('society_planeshop', 'Concessionnaire Avions', 1),
('society_police', 'Police', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_ubereats', 'UberEats', 1),
('society_unicorn', 'Unicorn', 1),
('society_vendeur', 'Vendeur Arme', 1),
('society_vigne', 'Vigneron', 1),
('trunk', 'Coffre Véhicule', 0),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `data` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



--
-- Structure de la table `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Structure de la table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 50, 0),
(2, 'Franchir une ligne continue', 100, 0),
(3, 'Circulation à contresens', 150, 0),
(4, 'Demi-tour non autorisé', 250, 0),
(5, 'Circulation hors-route', 300, 0),
(6, 'Non-respect des distances de sécurité', 100, 0),
(7, 'Arrêt dangereux / interdit', 300, 0),
(8, 'Stationnement gênant / interdit', 300, 0),
(9, 'Non respect  de la priorité à droite', 200, 0),
(10, 'Non-respect à un véhicule prioritaire', 300, 0),
(11, 'Non-respect d\'un stop', 200, 0),
(12, 'Non-respect d\'un feu rouge', 400, 0),
(13, 'Dépassement dangereux', 500, 0),
(14, 'Véhicule non en état', 600, 0),
(15, 'Conduite sans permis', 2000, 0),
(16, 'Délit de fuite', 5000, 0),
(17, 'Excès de vitesse < 5 kmh', 2450, 0),
(18, 'Excès de vitesse 5-15 kmh', 4800, 0),
(19, 'Excès de vitesse 15-30 kmh', 6000, 0),
(20, 'Excès de vitesse > 30 kmh', 9980, 0),
(21, 'Entrave de la circulation', 2130, 1),
(22, 'Dégradation de la voie publique', 1300, 1),
(23, 'Trouble à l\'ordre publique', 1970, 1),
(24, 'Entrave opération de police', 5000, 1),
(25, 'Insulte envers / entre civils', 3000, 1),
(26, 'Outrage à agent de police', 1500, 1),
(27, 'Menace verbale ou intimidation evers civils', 9630, 1),
(28, 'Menace verbale ou intimidation envers policier', 8600, 1),
(29, 'Manifestation illégale', 4960, 1),
(30, 'Tentative de corruption', 3500, 1),
(31, 'Arme blanche sortie en ville', 10000, 2),
(32, 'Arme léthale sortie en ville', 20000, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 0, 2),
(34, 'Port d\'arme illégal', 0, 2),
(35, 'Pris en flag lockpick', 14600, 2),
(36, 'Vol de voiture', 13300, 2),
(37, 'Vente de drogue', 20000, 2),
(38, 'Fabriquation de drogue', 15000, 2),
(39, 'Possession de drogue', 12000, 2),
(40, 'Prise d\'ôtage civil', 75000, 2),
(41, 'Prise d\'ôtage agent de l\'état', 125000, 2),
(42, 'Braquage particulier', 86000, 2),
(43, 'Braquage magasin', 52000, 2),
(44, 'Braquage de banque', 136000, 2),
(45, 'Tir sur civil', 40000, 3),
(46, 'Tir sur agent de l\'état', 45000, 3),
(47, 'Tentative de meurtre sur civil', 20000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 25000, 3),
(49, 'Meurtre sur civil', 45000, 3),
(50, 'Meurte sur agent de l\'état', 55000, 3),
(51, 'Meurtre involontaire', 15000, 3),
(52, 'Escroquerie à l\'entreprise', 7500, 2),
(53, 'Vol de Vehicule Aeriens', 6000, 1),
(54, 'Default de permis Aeriens', 2500, 1),
(55, 'Default de permis de BATEAU', 2500, 1),
(56, 'Vol de Vehicule Aquatique', 3000, 1),
(57, 'Refus d\'obtempérer', 3000, 2),
(58, 'Usurpation d\'identité', 2500, 2),
(59, 'Complice du meurtre ', 20000, 2),
(60, 'Tentative de kidnapping', 15000, 2);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_vendeur`
--

CREATE TABLE `fine_types_vendeur` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `weight` float NOT NULL DEFAULT 1,
  `rare` tinyint(1) NOT NULL DEFAULT 0,
  `can_remove` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('armor', 'Kevlar', 3, 0, 1),
('bandage', 'Bandage', 0.2, 0, 1),
('basic_cuff', 'Menottes Basique', 0.3, 0, 1),
('basic_key', 'Clefs de Menottes Basique', 0.1, 0, 1),
('beer', 'Bière', 0.1, 0, 1),
('blowpipe', 'Chalumeaux', 1.5, 0, 1),
('bread', 'Pain', 0.1, 0, 1),
('burger', 'Burger', 0.3, 0, 1),
('carokit', 'Kit carosserie', 3, 0, 1),
('carotool', 'Outils carosserie', 4, 0, 1),
('chip', 'Jeton', 0, 0, 1),
('cigarette', 'Cigarette', 0.1, 0, 1),
('clip', 'Chargeur', 0.3, 0, 1),
('coca', 'Coca', 0.1, 0, 1),
('coke', 'Coke', 1, 0, 1),
('coke_pooch', 'Pochon de coke', 0.25, 0, 1),
('cola', 'Cola', 0.2, 0, 1),
('defibrillateur', 'Défibrillateur', 2, 0, 1),
('feuille_coca', 'Feuille de coca', 1, 0, 1),
('firstaidkit', 'Trousse premier secours', 1, 0, 1),
('fixkit', 'Kit réparation', 1.5, 0, 1),
('fixtool', 'Outils réparation', 2, 0, 1),
('gazbottle', 'Bouteille de gaz', 2, 0, 1),
('gitanes', 'Gitanes', 0.1, 0, 1),
('grand_cru', 'Grand cru', 0.2, 0, 1),
('grapperaisin', 'Grappe de raisin', 0.3, 0, 1),
('handcuff', 'Serre câble ', 0.3, 0, 1),
('ice', 'Glaçon', 0.1, 0, 1),
('jager', 'Jägermeister', 0.5, 0, 1),
('jagerbomb', 'Jägermeister', 0.5, 0, 1),
('jagercerbere', 'Jäger Cerbère', 0.5, 0, 1),
('jumelles', 'Jumelles', 0.25, 0, 1),
('jus_coca', 'Jus de coca', 0.5, 0, 1),
('jus_raisin', 'Jus de raisin', 0.5, 0, 1),
('jusfruit', 'Jus de fruits', 0.5, 0, 1),
('limonade', 'Limonade', 0.5, 0, 1),
('lockpick', 'Pied de Biche', 1, 0, 1),
('malbora', 'Malboro', 0.1, 0, 1),
('martini', 'Martini blanc', 1, 0, 1),
('meat', 'Viande', 0.3, 0, 1),
('medikit', 'Medikit', 2, 0, 1),
('menthe', 'Feuille de menthe', 1, 0, 1),
('meth', 'Meth', 1, 0, 1),
('meth_pooch', 'Pochon de meth', 0.25, 0, 1),
('metreshooter', 'Mètre de shooter', 0.1, 0, 1),
('mixapero', 'Mix Apéritif', 0.1, 0, 1),
('mojito', 'Mojito', 0.1, 0, 1),
('opium', 'Opium', 1, 0, 1),
('opium_pooch', 'Pochon d\'opium', 0.25, 0, 1),
('orange', 'Orange', 0.1, 0, 1),
('orange_juice', 'Jus d\'orange', 0.3, 0, 1),
('outfit_hazmat_black', 'Tenue Hazmat | Noire', 1, 0, 1),
('outfit_hazmat_blue', 'Tenue Hazmat | Bleue', 1, 0, 1),
('outfit_hazmat_white', 'Tenue Hazmat | Blanche', 1, 0, 1),
('outfit_hazmat_yellow', 'Tenue Hazmat | Jaune', 1, 0, 1),
('oxygen_mask', 'Masque à Oxygène', 0.6, 0, 1),
('pepperspray', 'Gazeuse', 1, 0, -1),
('phone', 'Téléphone', 0.3, 0, 1),
('piluleoubli', 'GHB', 1, 0, 1),
('police_cuff', 'Menottes LSPD', 0.3, 0, 1),
('police_key', 'Clefs de Menottes LSPD', 0.1, 0, 1),
('pomme', 'Pomme', 0.1, 0, 1),
('radio', 'Radio', 0.5, 0, 1),
('raisin', 'Raisin', 0.3, 0, 1),
('redbull', 'Redbull', 0.3, 0, 1),
('repairkit', 'Repairkit', 2, 0, 1),
('rhum', 'Rhum', 0.4, 0, 1),
('rhumcoca', 'Rhum-Coca', 0.5, 0, 1),
('rhumfruit', 'Rhum-Jus de fruits', 0.5, 0, 1),
('tabac', 'Tabac', 0.5, 0, 1),
('tabacblond', 'Tabac Blond', 0.5, 0, 1),
('tabacblondsec', 'Tabac Blond Séché', 0.5, 0, 1),
('tabacbrun', 'Tabac Brun', 0.5, 0, 1),
('tabacbrunsec', 'Tabac Brun Séché', 0.5, 0, 1),
('tarte_pomme', 'Tarte aux Pommes', 0.3, 0, 1),
('teqpaf', 'Teq\'paf', 0.5, 0, 1),
('tequila', 'Tequila', 0.5, 0, 1),
('vine', 'Vin', 0.5, 0, 1),
('vittvin', 'Vin Blanc', 0.5, 0, 1),
('vodka', 'Vodka', 0.3, 0, 1),
('vodkaenergy', 'Vodka-Energy', 0.4, 0, 1),
('vodkafruit', 'Vodka-Jus de fruits', 0.3, 0, 1),
('vodkaredbull', 'Vodka-Redbull', 0.3, 0, 1),
('water', 'Bouteille d\'eau', 0.1, 0, 1),
('weed', 'Weed', 1, 0, 1),
('weed_pooch', 'Pochon de weed', 0.25, 0, 1),
('whisky', 'Whisky', 0.4, 0, 1),
('whiskycoca', 'Whisky-coca', 0.5, 0, 1),
('zetony', 'Jetons', -1, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('Ballas1', 'ballas1', 1),
('Bloods', 'Bloods', 1),
('Families1', 'famillies1', 1),
('Marabunta1', 'marabunta1', 1),
('Vagos1', 'vagos1', 1),
('ambulance', 'Ambulance', 1),
('avocat', 'Avocat', 1),
('boatshop', 'Concessionnaire Bateaux', 1),
('carshop', 'Concessionnaire Voitures', 1),
('journalist', 'Journaliste', 1),
('mecano', 'Mécano', 1),
('planeshop', 'Concessionnaire Avions', 1),
('police', '‍L.S.P.D', 1),
('realestateagent', 'Agent immobilier', 1),
('taxi', 'Taxi', 1),
('unemployed', 'Chomeur', 0),
('unemployed2', 'Aucune', 1),
('unicorn', 'Unicorn', 1),
('vendeur', 'Vendeur Arme', 1),
('vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'ambulance', 0, 'ambulance', 'Ambulancier', 1, '{\"beard_1\":0,\"eye_color\":0,\"makeup_3\":0,\"blemishes_1\":0,\"mask_1\":0,\"glasses_1\":0,\"bproof_2\":0,\"lipstick_3\":0,\"beard_2\":0,\"torso_1\":249,\"pants_1\":24,\"blush_3\":0,\"torso_2\":0,\"blush_2\":0,\"complexion_1\":0,\"lipstick_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"sun_2\":0,\"complexion_2\":0,\"chain_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"tshirt_1\":94,\"hair_color_1\":0,\"eyebrows_2\":0,\"mask_2\":0,\"helmet_2\":0,\"hair_2\":0,\"beard_3\":0,\"moles_2\":0,\"bags_1\":0,\"arms_2\":0,\"decals_2\":0,\"age_1\":0,\"ears_1\":-1,\"moles_1\":0,\"bracelets_2\":0,\"watches_1\":-1,\"face\":0,\"bags_2\":0,\"pants_2\":5,\"chest_3\":0,\"blemishes_2\":0,\"chest_1\":0,\"hair_color_2\":0,\"blush_1\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"hair_1\":0,\"shoes_2\":0,\"lipstick_4\":0,\"eyebrows_4\":0,\"ears_2\":0,\"watches_2\":0,\"bodyb_2\":0,\"bodyb_1\":0,\"eyebrows_1\":0,\"decals_1\":57,\"makeup_4\":0,\"glasses_2\":0,\"age_2\":0,\"shoes_1\":8,\"arms\":90,\"chain_1\":126,\"bracelets_1\":-1,\"chest_2\":0,\"beard_4\":0,\"makeup_1\":0,\"lipstick_1\":0,\"skin\":0,\"sex\":0}', '{\"age_1\":0,\"blush_3\":0,\"complexion_2\":0,\"bracelets_2\":0,\"chain_2\":0,\"bodyb_1\":0,\"pants_1\":23,\"hair_1\":4,\"lipstick_4\":0,\"bproof_2\":0,\"bodyb_2\":0,\"shoes_2\":1,\"sun_2\":0,\"blush_1\":0,\"shoes_1\":4,\"decals_1\":65,\"eyebrows_2\":10,\"makeup_1\":6,\"glasses\":0,\"chest_3\":0,\"bags_2\":0,\"arms\":105,\"watches_1\":2,\"arms_2\":0,\"hair_color_1\":28,\"beard_3\":0,\"chain_1\":96,\"chest_1\":0,\"mask_1\":0,\"sex\":1,\"decals_2\":0,\"bproof_1\":0,\"hair_color_2\":28,\"eyebrows_3\":61,\"makeup_2\":8,\"helmet_1\":-1,\"bags_1\":0,\"lipstick_3\":23,\"face\":45,\"bracelets_1\":-1,\"tshirt_1\":29,\"beard_4\":0,\"moles_2\":10,\"mask_2\":0,\"helmet_2\":0,\"makeup_3\":25,\"skin\":10,\"beard_2\":0,\"shoes\":1,\"blemishes_2\":0,\"moles_1\":0,\"pants_2\":0,\"complexion_1\":0,\"glasses_2\":1,\"age_2\":0,\"ears_1\":12,\"watches_2\":0,\"eyebrows_4\":0,\"eye_color\":3,\"lipstick_2\":4,\"glasses_1\":11,\"eyebrows_1\":1,\"ears_2\":0,\"makeup_4\":18,\"sun_1\":0,\"blush_2\":0,\"torso_2\":0,\"chest_2\":0,\"hair_2\":0,\"tshirt_2\":0,\"torso_1\":257,\"lipstick_1\":1,\"blemishes_1\":0,\"beard_1\":0}'),
(2, 'ambulance', 1, 'doctor', 'Medecin', 1, '{\"beard_1\":0,\"eye_color\":0,\"makeup_3\":0,\"blemishes_1\":0,\"mask_1\":0,\"glasses_1\":0,\"bproof_2\":0,\"lipstick_3\":0,\"beard_2\":0,\"torso_1\":13,\"pants_1\":24,\"blush_3\":0,\"torso_2\":3,\"blush_2\":0,\"complexion_1\":0,\"lipstick_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"sun_2\":0,\"complexion_2\":0,\"chain_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"tshirt_1\":15,\"hair_color_1\":0,\"eyebrows_2\":0,\"mask_2\":0,\"helmet_2\":0,\"hair_2\":0,\"beard_3\":0,\"moles_2\":0,\"bags_1\":0,\"arms_2\":0,\"decals_2\":0,\"age_1\":0,\"ears_1\":-1,\"moles_1\":0,\"bracelets_2\":0,\"watches_1\":-1,\"face\":0,\"bags_2\":0,\"pants_2\":5,\"chest_3\":0,\"blemishes_2\":0,\"chest_1\":0,\"hair_color_2\":0,\"blush_1\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"hair_1\":0,\"shoes_2\":9,\"lipstick_4\":0,\"eyebrows_4\":0,\"ears_2\":0,\"watches_2\":0,\"bodyb_2\":0,\"bodyb_1\":0,\"eyebrows_1\":0,\"decals_1\":57,\"makeup_4\":0,\"glasses_2\":0,\"age_2\":0,\"shoes_1\":57,\"arms\":92,\"chain_1\":126,\"bracelets_1\":-1,\"chest_2\":0,\"beard_4\":0,\"makeup_1\":0,\"lipstick_1\":0,\"skin\":0,\"sex\":0}', '{\"age_1\":0,\"blush_3\":0,\"complexion_2\":0,\"bracelets_2\":0,\"chain_2\":0,\"bodyb_1\":0,\"pants_1\":51,\"hair_1\":4,\"lipstick_4\":0,\"bproof_2\":0,\"bodyb_2\":0,\"shoes_2\":7,\"sun_2\":0,\"blush_1\":0,\"shoes_1\":1,\"decals_1\":66,\"eyebrows_2\":10,\"makeup_1\":6,\"glasses\":0,\"chest_3\":0,\"bags_2\":0,\"arms\":106,\"watches_1\":2,\"arms_2\":0,\"hair_color_1\":28,\"beard_3\":0,\"chain_1\":96,\"chest_1\":0,\"mask_1\":0,\"sex\":1,\"decals_2\":0,\"bproof_1\":0,\"hair_color_2\":28,\"eyebrows_3\":61,\"makeup_2\":8,\"helmet_1\":-1,\"bags_1\":0,\"lipstick_3\":23,\"face\":45,\"bracelets_1\":-1,\"tshirt_1\":29,\"beard_4\":0,\"moles_2\":10,\"mask_2\":0,\"helmet_2\":0,\"makeup_3\":25,\"skin\":10,\"beard_2\":0,\"shoes\":1,\"blemishes_2\":0,\"moles_1\":0,\"pants_2\":0,\"complexion_1\":0,\"glasses_2\":1,\"age_2\":0,\"ears_1\":12,\"watches_2\":0,\"eyebrows_4\":0,\"eye_color\":3,\"lipstick_2\":4,\"glasses_1\":11,\"eyebrows_1\":1,\"ears_2\":0,\"makeup_4\":18,\"sun_1\":0,\"blush_2\":0,\"torso_2\":2,\"chest_2\":0,\"hair_2\":0,\"tshirt_2\":0,\"torso_1\":9,\"lipstick_1\":1,\"blemishes_1\":0,\"beard_1\":0}'),
(3, 'ambulance', 2, 'chief_doctor', 'Médecin-Chef', 1, '{\"beard_1\":0,\"eye_color\":0,\"makeup_3\":0,\"blemishes_1\":0,\"mask_1\":0,\"glasses_1\":0,\"bproof_2\":0,\"lipstick_3\":0,\"beard_2\":0,\"torso_1\":250,\"pants_1\":24,\"blush_3\":0,\"torso_2\":0,\"blush_2\":0,\"complexion_1\":0,\"lipstick_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"sun_2\":0,\"complexion_2\":0,\"chain_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"tshirt_1\":15,\"hair_color_1\":0,\"eyebrows_2\":0,\"mask_2\":0,\"helmet_2\":0,\"hair_2\":0,\"beard_3\":0,\"moles_2\":0,\"bags_1\":0,\"arms_2\":0,\"decals_2\":0,\"age_1\":0,\"ears_1\":-1,\"moles_1\":0,\"bracelets_2\":0,\"watches_1\":-1,\"face\":0,\"bags_2\":0,\"pants_2\":5,\"chest_3\":0,\"blemishes_2\":0,\"chest_1\":0,\"hair_color_2\":0,\"blush_1\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"hair_1\":0,\"shoes_2\":0,\"lipstick_4\":0,\"eyebrows_4\":0,\"ears_2\":0,\"watches_2\":0,\"bodyb_2\":0,\"bodyb_1\":0,\"eyebrows_1\":0,\"decals_1\":57,\"makeup_4\":0,\"glasses_2\":0,\"age_2\":0,\"shoes_1\":26,\"arms\":74,\"chain_1\":126,\"bracelets_1\":-1,\"chest_2\":0,\"beard_4\":0,\"makeup_1\":0,\"lipstick_1\":0,\"skin\":0,\"sex\":0}', '{\"age_1\":0,\"blush_3\":0,\"complexion_2\":0,\"bracelets_2\":0,\"chain_2\":0,\"bodyb_1\":0,\"pants_1\":50,\"hair_1\":4,\"lipstick_4\":0,\"bproof_2\":0,\"bodyb_2\":0,\"shoes_2\":2,\"sun_2\":0,\"blush_1\":0,\"shoes_1\":4,\"decals_1\":66,\"eyebrows_2\":10,\"makeup_1\":6,\"glasses\":0,\"chest_3\":0,\"bags_2\":0,\"arms\":96,\"watches_1\":2,\"arms_2\":0,\"hair_color_1\":28,\"beard_3\":0,\"chain_1\":96,\"chest_1\":0,\"mask_1\":0,\"sex\":1,\"decals_2\":0,\"bproof_1\":0,\"hair_color_2\":28,\"eyebrows_3\":61,\"makeup_2\":8,\"helmet_1\":-1,\"bags_1\":0,\"lipstick_3\":23,\"face\":45,\"bracelets_1\":-1,\"tshirt_1\":29,\"beard_4\":0,\"moles_2\":10,\"mask_2\":0,\"helmet_2\":0,\"makeup_3\":25,\"skin\":10,\"beard_2\":0,\"shoes\":1,\"blemishes_2\":0,\"moles_1\":0,\"pants_2\":0,\"complexion_1\":0,\"glasses_2\":1,\"age_2\":0,\"ears_1\":12,\"watches_2\":0,\"eyebrows_4\":0,\"eye_color\":3,\"lipstick_2\":4,\"glasses_1\":11,\"eyebrows_1\":1,\"ears_2\":0,\"makeup_4\":18,\"sun_1\":0,\"blush_2\":0,\"torso_2\":0,\"chest_2\":0,\"hair_2\":0,\"tshirt_2\":0,\"torso_1\":258,\"lipstick_1\":1,\"blemishes_1\":0,\"beard_1\":0}'),
(4, 'ambulance', 3, 'boss', 'Directeur', 1, '{\"beard_1\":0,\"eye_color\":0,\"makeup_3\":0,\"blemishes_1\":0,\"mask_1\":0,\"glasses_1\":5,\"bproof_2\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"torso_1\":102,\"pants_1\":24,\"blush_3\":0,\"torso_2\":1,\"blush_2\":0,\"complexion_1\":0,\"lipstick_2\":0,\"makeup_2\":0,\"bproof_1\":35,\"sun_2\":0,\"makeup_4\":0,\"chain_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"tshirt_1\":72,\"hair_color_1\":14,\"hair_1\":49,\"mask_2\":0,\"helmet_2\":0,\"hair_2\":0,\"beard_3\":0,\"moles_2\":0,\"bags_1\":0,\"arms_2\":0,\"decals_2\":0,\"age_1\":0,\"ears_1\":-1,\"moles_1\":0,\"lipstick_4\":0,\"arms\":75,\"face\":0,\"eyebrows_1\":0,\"pants_2\":5,\"chest_3\":0,\"chest_1\":0,\"bodyb_2\":0,\"beard_2\":0,\"glasses_2\":1,\"tshirt_2\":4,\"helmet_1\":-1,\"blush_1\":0,\"bags_2\":0,\"decals_1\":0,\"watches_1\":1,\"chain_1\":126,\"watches_2\":0,\"bracelets_1\":-1,\"bodyb_1\":0,\"bracelets_2\":0,\"ears_2\":0,\"lipstick_1\":0,\"blemishes_2\":0,\"age_2\":0,\"shoes_2\":1,\"complexion_2\":0,\"shoes_1\":30,\"beard_4\":0,\"chest_2\":0,\"hair_color_2\":0,\"makeup_1\":0,\"eyebrows_2\":0,\"skin\":0,\"sex\":0}', '{\"age_1\":0,\"blush_3\":0,\"complexion_2\":0,\"bracelets_2\":0,\"chain_2\":0,\"bodyb_1\":0,\"pants_1\":51,\"hair_1\":4,\"lipstick_4\":0,\"bproof_2\":0,\"bodyb_2\":0,\"shoes_2\":2,\"sun_2\":0,\"blush_1\":0,\"shoes_1\":81,\"decals_1\":66,\"eyebrows_2\":10,\"makeup_1\":6,\"glasses\":0,\"chest_3\":0,\"bags_2\":0,\"arms\":96,\"watches_1\":2,\"arms_2\":0,\"hair_color_1\":28,\"beard_3\":0,\"chain_1\":96,\"chest_1\":0,\"mask_1\":0,\"sex\":1,\"decals_2\":0,\"bproof_1\":0,\"hair_color_2\":28,\"eyebrows_3\":61,\"makeup_2\":8,\"helmet_1\":-1,\"bags_1\":0,\"lipstick_3\":23,\"face\":45,\"bracelets_1\":-1,\"tshirt_1\":29,\"beard_4\":0,\"moles_2\":10,\"mask_2\":0,\"helmet_2\":0,\"makeup_3\":25,\"skin\":10,\"beard_2\":0,\"shoes\":1,\"blemishes_2\":0,\"moles_1\":0,\"pants_2\":0,\"complexion_1\":0,\"glasses_2\":1,\"age_2\":0,\"ears_1\":12,\"watches_2\":0,\"eyebrows_4\":0,\"eye_color\":3,\"lipstick_2\":4,\"glasses_1\":11,\"eyebrows_1\":1,\"ears_2\":0,\"makeup_4\":18,\"sun_1\":0,\"blush_2\":0,\"torso_2\":2,\"chest_2\":0,\"hair_2\":0,\"tshirt_2\":0,\"torso_1\":14,\"lipstick_1\":1,\"blemishes_1\":0,\"beard_1\":0}'),
(7, 'avocat', 0, 'recruit', 'Recrue', 350, '{\"tshirt_1\":57,\"torso_1\":55,\"arms\":0,\"pants_1\":35,\"glasses\":0,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":5,\"face\":19,\"glasses_2\":1,\"torso_2\":0,\"shoes\":24,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":8}', '{\"tshirt_1\":34,\"torso_1\":48,\"shoes\":24,\"pants_1\":34,\"torso_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"glasses\":0,\"helmet_2\":0,\"hair_2\":3,\"face\":21,\"decals_1\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"arms\":14,\"hair_color_1\":10,\"tshirt_2\":0,\"helmet_1\":57}'),
(8, 'avocat', 1, 'boss', 'Patron', 400, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":41,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":8,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(43, 'mecano', 0, 'recrue', 'Recrue', 300, '{}', '{}'),
(44, 'mecano', 1, 'novice', 'Novice', 350, '{}', '{}'),
(45, 'mecano', 2, 'experimente', 'Experimente', 400, '{}', '{}'),
(46, 'mecano', 3, 'chief', 'Chef d\'equipe', 450, '{}', '{}'),
(47, 'mecano', 4, 'boss', 'Patron', 650, '{}', '{}'),
(50, 'police', 0, 'recruit', 'Recrue', 100, '{}', '{}'),
(51, 'police', 1, 'officer', 'Officier', 200, '{}', '{}'),
(52, 'police', 2, 'sergeant', 'Caporal', 300, '{}', '{}'),
(53, 'police', 3, 'chef', 'Sergent', 400, '{}', '{}'),
(54, 'police', 4, 'lieutenant', 'Lieutenant', 500, '{}', '{}'),
(55, 'police', 5, 'intendent', 'Capitaine', 600, '{}', '{}'),
(56, 'police', 6, 'boss', 'Chef de police', 800, '{}', '{}'),
(66, 'taxi', 0, 'recrue', 'Recrue', 350, '{}', '{}'),
(67, 'taxi', 1, 'novice', 'Novice', 350, '{}', '{}'),
(68, 'taxi', 2, 'experimente', 'Experimente', 350, '{}', '{}'),
(69, 'taxi', 3, 'uber', 'Uber', 350, '{}', '{}'),
(70, 'taxi', 4, 'boss', 'Patron', 350, '{}', '{}'),
(74, 'unemployed', 0, 'unemployed', 'RSA', 25, '{}', '{}'),
(75, 'unicorn', 0, 'barman', 'Barman', 400, '{}', '{}'),
(76, 'unicorn', 1, 'dancer', 'Videur', 300, '{}', '{}'),
(77, 'unicorn', 2, 'viceboss', 'Co-gérant', 300, '{}', '{}'),
(78, 'unicorn', 3, 'boss', 'Gérant', 200, '{}', '{}'),
(79, 'vigne', 0, 'recrue', 'Recrue', 100, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(80, 'vigne', 1, 'novice', 'Novice', 150, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(81, 'vigne', 2, 'cdisenior', 'Chef de Chai', 200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(82, 'vigne', 3, 'boss', 'Patron', 250, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(148, 'realestateagent', 0, 'location', 'Location', 250, '{}', '{}'),
(149, 'realestateagent', 1, 'vendeur', 'Vendeur', 350, '{}', '{}'),
(150, 'realestateagent', 2, 'gestion', 'Gestion', 450, '{}', '{}'),
(151, 'realestateagent', 3, 'boss', 'Patron', 300, '{}', '{}'),
(157, 'unemployed2', 0, 'unemployed2', 'Citoyen', 0, '{}', '{}'),
(182, 'journalist', 0, 'stagiaire', 'Stagiaire', 250, '{}', '{}'),
(183, 'journalist', 1, 'reporter', 'Reporter', 200, '{}', '{}'),
(184, 'journalist', 2, 'investigator', 'Investigateur', 200, '{}', '{}'),
(185, 'journalist', 3, 'boss', 'Directeur', 200, '{}', '{}'),
(462, 'carshop', 0, 'novice', 'Novice', 400, '{}', '{}'),
(463, 'carshop', 1, 'sergeant', 'Intermediaire', 200, '{}', '{}'),
(464, 'carshop', 2, 'experienced', 'Experimente', 200, '{}', '{}'),
(465, 'carshop', 3, 'boss', 'Patron', 200, '{}', '{}'),
(466, 'planeshop', 3, 'boss', 'Patron', 200, '{}', '{}'),
(467, 'planeshop', 2, 'experienced', 'Experimente', 200, '{}', '{}'),
(468, 'planeshop', 1, 'sergeant', 'Intermediaire', 200, '{}', '{}'),
(469, 'planeshop', 0, 'novice', 'Novice', 300, '{}', '{}'),
(470, 'boatshop', 3, 'boss', 'Patron', 200, '{}', '{}'),
(471, 'boatshop', 2, 'experienced', 'Experimente', 200, '{}', '{}'),
(472, 'boatshop', 1, 'sergeant', 'Intermediaire', 100, '{}', '{}'),
(473, 'boatshop', 0, 'novice', 'Novice', 100, '{}', '{}'),
(487, 'Ballas1', 0, 'rookie', 'Associé', 0, '{}', '{}'),
(488, 'Ballas1', 1, 'member', 'Soldat', 0, '{}', '{}'),
(489, 'Ballas1', 2, 'elite', 'Elite', 0, '{}', '{}'),
(490, 'Ballas1', 3, 'lieutenant', 'Lieutenant', 0, '{}', '{}'),
(491, 'Ballas1', 4, 'viceboss', 'Bras Droit', 0, '{}', '{}'),
(492, 'Ballas1', 5, 'boss', 'OG', 0, '{}', '{}'),
(493, 'Vagos1', 0, 'rookie', 'Associé', 0, '{}', '{}'),
(494, 'Vagos1', 1, 'member', 'Soldat', 0, '{}', '{}'),
(495, 'Vagos1', 2, 'elite', 'Elite', 0, '{}', '{}'),
(496, 'Vagos1', 3, 'lieutenant', 'Lieutenant', 0, '{}', '{}'),
(497, 'Vagos1', 4, 'viceboss', 'Bras Droit', 0, '{}', '{}'),
(498, 'Vagos1', 5, 'boss', 'Jefe', 0, '{}', '{}'),
(499, 'Families1', 0, 'rookie', 'Associé', 0, '{}', '{}'),
(500, 'Families1', 1, 'member', 'Soldat', 0, '{}', '{}'),
(501, 'Families1', 2, 'elite', 'Elite', 0, '{}', '{}'),
(502, 'Families1', 3, 'lieutenant', 'Lieutenant', 0, '{}', '{}'),
(503, 'Families1', 4, 'viceboss', 'Bras Droit', 0, '{}', '{}'),
(504, 'Families1', 5, 'boss', 'OG', 0, '{}', '{}'),
(505, 'Marabunta1', 0, 'rookie', 'Associé', 0, '{}', '{}'),
(506, 'Marabunta1', 1, 'member', 'Soldat', 0, '{}', '{}'),
(507, 'Marabunta1', 2, 'elite', 'Elite', 0, '{}', '{}'),
(508, 'Marabunta1', 3, 'lieutenant', 'Lieutenant', 0, '{}', '{}'),
(509, 'Marabunta1', 4, 'viceboss', 'Bras Droit', 0, '{}', '{}'),
(510, 'Marabunta1', 5, 'boss', 'Jefe', 0, '{}', '{}'),
(511, 'Bloods', 0, 'rookie', 'Associé', 0, '{}', '{}'),
(512, 'Bloods', 1, 'member', 'Soldat', 0, '{}', '{}'),
(513, 'Bloods', 2, 'elite', 'Elite', 0, '{}', '{}'),
(514, 'Bloods', 3, 'lieutenant', 'Lieutenant', 0, '{}', '{}'),
(515, 'Bloods', 4, 'viceboss', 'Bras Droit', 0, '{}', '{}'),
(516, 'Bloods', 5, 'boss', 'Jefe', 0, '{}', '{}'),
(529, 'vendeur', 0, 'soldato', 'Soldat', 0, '{}', '{}'),
(530, 'vendeur', 1, 'capo', 'Ã‰lite', 0, '{}', '{}'),
(531, 'vendeur', 2, 'consigliere', 'Chef', 0, '{}', '{}'),
(532, 'vendeur', 3, 'boss', 'Boss', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'PPA 1'),
('weapon2', 'PPA 2');

-- --------------------------------------------------------

--
-- Structure de la table `open_car`
--

CREATE TABLE `open_car` (
  `id` int(11) NOT NULL,
  `owner` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL,
  `NB` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `open_car`
--



--
-- Structure de la table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'car',
  `state` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `owned_vehicles`
--



--
-- Structure de la table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) CHARACTER SET utf8 NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(1, '537-3619', 'Aboubakar', 1, '2021-01-16 23:16:39', 0),
(2, '219-7517', '911', 1, '2021-01-17 00:47:07', 0),
(3, '874-3767', '425-6939', 1, '2021-01-17 13:53:20', 1),
(4, '425-6939', '874-3767', 0, '2021-01-17 13:53:20', 1),
(5, '874-3767', '425-6939', 1, '2021-01-17 13:53:21', 1),
(6, '425-6939', '874-3767', 0, '2021-01-17 13:53:21', 1),
(7, '425-6939', '874-3767', 1, '2021-01-17 13:56:11', 0),
(8, '874-3767', '425-6939', 0, '2021-01-17 13:56:11', 0),
(9, '874-3767', '425-6939', 1, '2021-01-17 14:08:58', 0),
(10, '425-6939', '874-3767', 0, '2021-01-17 14:08:58', 0),
(11, '874-3767', '425-6939', 1, '2021-01-17 14:10:15', 0),
(12, '425-6939', '874-3767', 0, '2021-01-17 14:10:15', 0),
(13, '874-3767', '425-6939', 1, '2021-01-17 14:10:57', 0),
(14, '425-6939', '874-3767', 0, '2021-01-17 14:10:57', 0),
(15, '425-6939', '874-3767', 0, '2021-01-17 14:11:03', 1),
(16, '874-3767', '425-6939', 1, '2021-01-17 14:11:03', 1),
(17, '874-3767', '425-6939', 1, '2021-01-17 14:11:03', 1),
(18, '425-6939', '874-3767', 0, '2021-01-17 14:11:03', 1),
(19, '425-6939', '874-3767', 1, '2021-01-17 14:18:12', 0),
(20, '874-3767', '425-6939', 0, '2021-01-17 14:18:12', 0),
(21, '277-6301', '416-8795', 1, '2021-01-17 14:53:37', 1),
(22, '416-8795', '277-6301', 0, '2021-01-17 14:53:37', 1),
(23, '277-6301', '416-8795', 1, '2021-01-17 14:53:40', 1),
(24, '416-8795', '277-6301', 0, '2021-01-17 14:53:40', 1),
(25, '416-8795', '288-9433', 1, '2021-01-17 15:02:18', 1),
(26, '288-9433', '416-8795', 0, '2021-01-17 15:02:18', 1),
(27, '416-8795', '288-9433', 1, '2021-01-17 15:02:20', 1),
(28, '288-9433', '416-8795', 0, '2021-01-17 15:02:20', 1),
(29, '871-5075', '792-3652', 1, '2021-01-17 15:15:30', 1),
(30, '792-3652', '871-5075', 0, '2021-01-17 15:15:30', 1),
(31, '792-3652', '871-5075', 1, '2021-01-17 15:16:19', 0),
(32, '871-5075', '792-3652', 0, '2021-01-17 15:16:19', 0),
(33, '871-5075', '792-3652', 1, '2021-01-17 15:41:33', 0),
(34, '792-3652', '871-5075', 0, '2021-01-17 15:41:33', 0),
(35, '871-5075', '884-3792', 1, '2021-01-17 15:49:29', 1),
(36, '884-3792', '871-5075', 0, '2021-01-17 15:49:29', 1),
(37, '871-5075', '884-3792', 1, '2021-01-17 15:49:32', 1),
(38, '884-3792', '871-5075', 0, '2021-01-17 15:49:32', 1),
(39, '884-3792', '871-5075', 1, '2021-01-17 15:55:04', 0),
(40, '871-5075', '884-3792', 0, '2021-01-17 15:55:04', 0),
(41, '338-3807', '911', 1, '2021-01-17 17:18:57', 0),
(42, '276-2009', 'Williams ', 1, '2021-01-17 17:26:49', 0),
(43, '722-9044', 'jackson', 1, '2021-01-17 17:26:55', 0),
(44, '561-5622', 'jorge', 1, '2021-01-17 17:35:01', 0),
(45, '561-5622', '911', 1, '2021-01-17 17:35:18', 1),
(46, '586-1130', 'polo', 1, '2021-01-17 17:38:37', 0),
(47, '183-1880', '318-6568', 1, '2021-01-17 17:50:36', 1),
(48, '318-6568', '183-1880', 0, '2021-01-17 17:50:36', 1),
(49, '183-1880', '318-6568', 1, '2021-01-17 17:50:36', 1),
(50, '318-6568', '183-1880', 0, '2021-01-17 17:50:36', 1),
(51, '972-8042', '911', 1, '2021-01-17 17:57:49', 0),
(52, '972-8042', '911-2', 1, '2021-01-17 18:06:40', 0),
(53, '824-2255', '555-8741', 1, '2021-01-17 18:12:08', 0),
(54, '219-7517', '162-4818', 1, '2021-01-17 18:49:20', 0),
(55, '162-4818', '219-7517', 0, '2021-01-17 18:49:20', 0),
(57, '495-4532', '665-4821', 0, '2021-01-17 19:02:55', 0),
(58, '204-9865', '555-2731', 0, '2021-01-17 19:02:56', 0),
(59, '555-2731', '204-9865', 1, '2021-01-17 19:02:56', 0),
(60, '555-2731', '204-9865', 1, '2021-01-17 19:03:12', 1),
(61, '204-9865', '555-2731', 0, '2021-01-17 19:03:12', 1),
(62, '555-2731', '204-9865', 1, '2021-01-17 19:03:14', 1),
(63, '204-9865', '555-2731', 0, '2021-01-17 19:03:14', 1),
(65, '871-5075', '665-4821', 0, '2021-01-17 19:04:49', 1),
(67, '871-5075', '665-4821', 0, '2021-01-17 19:04:51', 1),
(69, '871-5075', '665-4821', 0, '2021-01-17 19:04:51', 1),
(70, '204-9865', '555-2731', 1, '2021-01-17 19:24:01', 0),
(71, '555-2731', '204-9865', 0, '2021-01-17 19:24:01', 0),
(72, '276-2009', 'williams ', 1, '2021-01-17 19:30:48', 0),
(73, '555-2731', '204-9865', 1, '2021-01-17 19:33:58', 1),
(74, '204-9865', '555-2731', 0, '2021-01-17 19:33:58', 1),
(75, '555-2731', '204-9865', 1, '2021-01-17 19:33:59', 1),
(76, '204-9865', '555-2731', 0, '2021-01-17 19:33:59', 1),
(77, '526-8113', '9674328', 1, '2021-01-17 19:36:00', 0),
(78, '526-8113', '9674328', 1, '2021-01-17 19:36:25', 0),
(79, '526-8113', '9674328', 1, '2021-01-17 19:37:27', 0),
(80, '967-4328', '526-8113', 0, '2021-01-17 19:37:33', 1),
(81, '526-8113', '967-4328', 1, '2021-01-17 19:37:33', 1),
(82, '967-4328', '526-8113', 1, '2021-01-17 19:38:15', 0),
(83, '526-8113', '967-4328', 0, '2021-01-17 19:38:15', 0),
(85, '871-5075', '665-4821', 0, '2021-01-17 20:07:39', 0),
(86, '874-3767', '884-3792', 1, '2021-01-17 20:09:56', 0),
(87, '884-3792', '874-3767', 0, '2021-01-17 20:09:56', 0),
(88, '318-8187', '871-5075', 1, '2021-01-17 20:10:30', 0),
(89, '871-5075', '318-8187', 0, '2021-01-17 20:10:30', 0),
(91, '871-5075', '665-4821', 0, '2021-01-17 20:13:27', 1),
(93, '871-5075', '665-4821', 0, '2021-01-17 20:13:29', 1),
(94, '618-1137', '911-2', 1, '2021-01-17 20:25:34', 0),
(95, '874-3767', '911', 1, '2021-01-17 20:34:25', 0),
(96, '747-7763', 'recruté', 1, '2021-01-17 20:41:47', 0),
(97, '318-8187', '871-5075', 1, '2021-01-17 20:52:39', 0),
(98, '871-5075', '318-8187', 0, '2021-01-17 20:52:39', 0),
(99, '813-3011', 'pqblo recr', 1, '2021-01-17 20:52:58', 0),
(100, '555-2731', '204-9865', 1, '2021-01-17 23:14:58', 0),
(101, '204-9865', '555-2731', 0, '2021-01-17 23:14:58', 0),
(102, '555-2731', '204-9865', 1, '2021-01-17 23:43:53', 1),
(103, '204-9865', '555-2731', 0, '2021-01-17 23:43:53', 1),
(104, '204-9865', '555-2731', 1, '2021-01-17 23:44:17', 0),
(105, '555-2731', '204-9865', 0, '2021-01-17 23:44:17', 0),
(106, '185-5624', '871-5075', 1, '2021-01-18 10:04:48', 0),
(107, '871-5075', '185-5624', 0, '2021-01-18 10:04:48', 0),
(108, '237-4103', '792-3652', 1, '2021-01-18 11:43:08', 1),
(109, '792-3652', '237-4103', 0, '2021-01-18 11:43:08', 1),
(110, '237-4103', '792-3652', 1, '2021-01-18 12:10:21', 0),
(111, '792-3652', '237-4103', 0, '2021-01-18 12:10:21', 0),
(112, '237-4103', '567-3868', 1, '2021-01-18 12:12:55', 1),
(113, '567-3868', '237-4103', 0, '2021-01-18 12:12:55', 1),
(116, '871-5075', '665-4821', 0, '2021-01-18 12:21:09', 0),
(119, '495-4532', '665-4821', 0, '2021-01-18 12:21:53', 0),
(120, '792-3652', '837-8303', 1, '2021-01-18 13:36:30', 1),
(121, '837-8303', '792-3652', 0, '2021-01-18 13:36:30', 1),
(122, '792-3652', '911', 1, '2021-01-18 14:02:15', 0),
(123, '792-3652', '911', 1, '2021-01-18 14:10:37', 0),
(124, '665-4821', '318-8187', 1, '2021-01-18 15:06:23', 0),
(125, '318-8187', '665-4821', 0, '2021-01-18 15:06:23', 0),
(126, '665-4821', '318-8187', 1, '2021-01-18 15:17:49', 1),
(127, '318-8187', '665-4821', 0, '2021-01-18 15:17:49', 1),
(128, '318-8187', '665-4821', 1, '2021-01-18 15:18:02', 1),
(129, '665-4821', '318-8187', 0, '2021-01-18 15:18:02', 1),
(130, '555-2731', '732-5579', 1, '2021-01-18 15:42:16', 0),
(131, '732-5579', '555-2731', 0, '2021-01-18 15:42:16', 0),
(132, '220-2090', '318-8187', 1, '2021-01-18 15:55:25', 1),
(133, '318-8187', '220-2090', 0, '2021-01-18 15:55:25', 1),
(134, '665-4821', '318-8187', 1, '2021-01-18 15:58:42', 1),
(135, '318-8187', '665-4821', 0, '2021-01-18 15:58:42', 1),
(136, '730-2027', '911', 1, '2021-01-18 16:02:33', 0),
(137, '730-2027', '911', 1, '2021-01-18 16:08:59', 0),
(138, '730-2027', '911', 1, '2021-01-18 16:10:12', 0),
(139, '792-3652', '730-2027', 1, '2021-01-18 16:10:17', 1),
(140, '730-2027', '792-3652', 0, '2021-01-18 16:10:17', 1),
(141, '220-2090', '730-2027', 1, '2021-01-18 16:10:18', 0),
(142, '730-2027', '220-2090', 0, '2021-01-18 16:10:18', 0),
(143, '730-2027', '220-2090', 1, '2021-01-18 16:10:35', 1),
(144, '220-2090', '730-2027', 0, '2021-01-18 16:10:35', 1),
(145, '792-3652', '730-2027', 1, '2021-01-18 16:10:57', 0),
(146, '730-2027', '792-3652', 0, '2021-01-18 16:10:57', 0),
(147, '220-2090', '730-2027', 1, '2021-01-18 16:12:36', 0),
(148, '730-2027', '220-2090', 0, '2021-01-18 16:12:36', 0),
(149, '220-2090', '730-2027', 1, '2021-01-18 16:13:42', 0),
(150, '730-2027', '220-2090', 0, '2021-01-18 16:13:42', 0),
(151, '640-9016', '911-2', 1, '2021-01-18 16:17:17', 0),
(152, '665-4821', '318-8187', 1, '2021-01-18 16:45:54', 1),
(153, '318-8187', '665-4821', 0, '2021-01-18 16:45:54', 1),
(154, '318-8187', '871-5075', 1, '2021-01-18 16:47:09', 0),
(155, '871-5075', '318-8187', 0, '2021-01-18 16:47:09', 0),
(156, '318-8187', '871-5075', 1, '2021-01-18 16:48:58', 0),
(157, '871-5075', '318-8187', 0, '2021-01-18 16:48:58', 0),
(158, '665-4821', '871-5075', 1, '2021-01-18 16:50:08', 0),
(159, '871-5075', '665-4821', 0, '2021-01-18 16:50:08', 0),
(160, '318-8187', '871-5075', 1, '2021-01-18 17:11:43', 1),
(161, '871-5075', '318-8187', 0, '2021-01-18 17:11:43', 1),
(162, '318-8187', '665-4821', 1, '2021-01-18 17:13:59', 1),
(163, '665-4821', '318-8187', 0, '2021-01-18 17:13:59', 1),
(164, '665-4821', '871-5075', 1, '2021-01-18 17:14:55', 1),
(165, '871-5075', '665-4821', 0, '2021-01-18 17:14:55', 1),
(166, '871-5075', '665-4821', 0, '2021-01-18 17:16:35', 1),
(167, '665-4821', '871-5075', 1, '2021-01-18 17:16:35', 1),
(168, '318-8187', '871-5075', 1, '2021-01-18 17:20:31', 1),
(169, '871-5075', '318-8187', 0, '2021-01-18 17:20:31', 1),
(170, '871-5075', '665-4821', 1, '2021-01-18 17:21:11', 1),
(171, '665-4821', '871-5075', 0, '2021-01-18 17:21:11', 1),
(172, '318-8187', '871-5075', 1, '2021-01-18 17:28:22', 1),
(173, '871-5075', '318-8187', 0, '2021-01-18 17:28:22', 1),
(174, '318-8187', '871-5075', 1, '2021-01-18 17:32:19', 1),
(175, '871-5075', '318-8187', 0, '2021-01-18 17:32:19', 1),
(176, '318-8187', '871-5075', 1, '2021-01-18 17:32:58', 1),
(177, '871-5075', '318-8187', 0, '2021-01-18 17:32:58', 1),
(178, '871-5075', '318-8187', 1, '2021-01-18 17:34:15', 1),
(179, '318-8187', '871-5075', 0, '2021-01-18 17:34:15', 1),
(180, '665-4821', '871-5075', 1, '2021-01-18 17:34:42', 1),
(181, '871-5075', '665-4821', 0, '2021-01-18 17:34:42', 1),
(182, '318-8187', '871-5075', 1, '2021-01-18 17:35:48', 0),
(183, '871-5075', '318-8187', 0, '2021-01-18 17:35:48', 0),
(184, '318-8187', '871-5075', 1, '2021-01-18 17:35:54', 1),
(185, '871-5075', '318-8187', 0, '2021-01-18 17:35:54', 1),
(186, '871-5075', '318-8187', 1, '2021-01-18 17:36:02', 1),
(187, '318-8187', '871-5075', 0, '2021-01-18 17:36:02', 1),
(188, '318-8187', '871-5075', 1, '2021-01-18 17:36:25', 1),
(189, '871-5075', '318-8187', 0, '2021-01-18 17:36:25', 1),
(190, '665-4821', '871-5075', 1, '2021-01-18 17:39:04', 1),
(191, '871-5075', '665-4821', 0, '2021-01-18 17:39:04', 1),
(192, '871-5075', '665-4821', 1, '2021-01-18 17:42:22', 1),
(193, '665-4821', '871-5075', 0, '2021-01-18 17:42:22', 1),
(194, '871-5075', '665-4821', 1, '2021-01-18 17:42:34', 1),
(195, '665-4821', '871-5075', 0, '2021-01-18 17:42:34', 1),
(196, '318-8187', '871-5075', 1, '2021-01-18 17:45:28', 1),
(197, '871-5075', '318-8187', 0, '2021-01-18 17:45:28', 1),
(198, '318-8187', '665-4821', 1, '2021-01-18 17:51:35', 1),
(199, '665-4821', '318-8187', 0, '2021-01-18 17:51:35', 1),
(200, '318-8187', '665-4821', 1, '2021-01-18 17:51:47', 1),
(201, '665-4821', '318-8187', 0, '2021-01-18 17:51:47', 1),
(202, '871-5075', '665-4821', 1, '2021-01-18 17:53:35', 1),
(203, '665-4821', '871-5075', 0, '2021-01-18 17:53:35', 1),
(204, '871-5075', '318-8187', 1, '2021-01-18 17:54:21', 1),
(205, '318-8187', '871-5075', 0, '2021-01-18 17:54:21', 1),
(206, '318-8187', '871-5075', 1, '2021-01-18 17:56:27', 1),
(207, '871-5075', '318-8187', 0, '2021-01-18 17:56:27', 1),
(208, '871-5075', '792-3652', 1, '2021-01-18 17:59:23', 0),
(209, '792-3652', '871-5075', 0, '2021-01-18 17:59:23', 0),
(210, '871-5075', '404-4957', 1, '2021-01-18 18:00:03', 0),
(211, '404-4957', '871-5075', 0, '2021-01-18 18:00:03', 0),
(212, '871-5075', '318-8187', 0, '2021-01-18 18:00:56', 1),
(213, '318-8187', '871-5075', 1, '2021-01-18 18:00:56', 1),
(214, '284-2169', 'GLEN', 1, '2021-01-18 18:03:11', 0),
(215, '284-2169', '911', 1, '2021-01-18 18:03:46', 1),
(216, '620-8384', '911', 1, '2021-01-18 18:05:57', 0),
(217, '871-5075', '318-8187', 1, '2021-01-18 18:08:42', 0),
(218, '318-8187', '871-5075', 0, '2021-01-18 18:08:42', 0),
(219, '871-5075', '318-8187', 1, '2021-01-18 18:08:51', 0),
(220, '318-8187', '871-5075', 0, '2021-01-18 18:08:51', 0),
(221, '871-5075', '318-8187', 1, '2021-01-18 18:10:01', 1),
(222, '318-8187', '871-5075', 0, '2021-01-18 18:10:01', 1),
(223, '620-8384', '911', 1, '2021-01-18 18:10:21', 0),
(224, '318-8187', '871-5075', 1, '2021-01-18 18:15:16', 1),
(225, '871-5075', '318-8187', 0, '2021-01-18 18:15:16', 1),
(226, '665-4821', '495-4532', 1, '2021-01-18 18:15:53', 1),
(227, '495-4532', '665-4821', 0, '2021-01-18 18:15:53', 1),
(228, '495-4532', '665-4821', 1, '2021-01-18 18:16:57', 1),
(229, '665-4821', '495-4532', 0, '2021-01-18 18:16:57', 1),
(230, '318-8187', '871-5075', 1, '2021-01-18 18:27:59', 1),
(231, '871-5075', '318-8187', 0, '2021-01-18 18:27:59', 1),
(232, '318-8187', '871-5075', 1, '2021-01-18 18:30:18', 1),
(233, '871-5075', '318-8187', 0, '2021-01-18 18:30:18', 1),
(234, '318-8187', '871-5075', 1, '2021-01-18 18:30:57', 0),
(235, '871-5075', '318-8187', 0, '2021-01-18 18:30:57', 0),
(236, '318-8187', '220-2090', 1, '2021-01-18 18:31:41', 0),
(237, '220-2090', '318-8187', 0, '2021-01-18 18:31:41', 0),
(238, '871-5075', '318-8187', 0, '2021-01-18 18:31:56', 1),
(239, '318-8187', '871-5075', 1, '2021-01-18 18:31:56', 1),
(240, '665-4821', '495-4532', 1, '2021-01-18 18:35:47', 1),
(241, '495-4532', '665-4821', 0, '2021-01-18 18:35:47', 1),
(242, '555-2731', '732-5579', 1, '2021-01-18 18:37:08', 0),
(243, '732-5579', '555-2731', 0, '2021-01-18 18:37:08', 0),
(244, '732-5579', '555-2731', 1, '2021-01-18 18:37:37', 0),
(245, '555-2731', '732-5579', 0, '2021-01-18 18:37:37', 0),
(246, '871-5075', '318-8187', 1, '2021-01-18 18:48:53', 0),
(247, '318-8187', '871-5075', 0, '2021-01-18 18:48:53', 0);

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `receiver` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(10, '404-4957', '330-5100', 'Taylor Blake', '2021-01-16 22:55:45', 1, 0),
(11, '330-5100', '404-4957', 'Taylor Blake', '2021-01-16 22:55:45', 1, 1),
(12, '219-7517', '162-4818', 'Pet', '2021-01-16 23:03:18', 1, 0),
(13, '162-4818', '219-7517', 'Pet', '2021-01-16 23:03:18', 1, 1),
(14, '162-4818', '219-7517', 'bytek 600 kg', '2021-01-16 23:03:32', 1, 0),
(15, '219-7517', '162-4818', 'bytek 600 kg', '2021-01-16 23:03:32', 1, 1),
(16, '219-7517', '162-4818', 'HAHAHA', '2021-01-16 23:03:40', 1, 0),
(17, '162-4818', '219-7517', 'HAHAHA', '2021-01-16 23:03:40', 1, 1),
(18, '162-4818', '219-7517', 'grr', '2021-01-16 23:15:37', 1, 0),
(19, '219-7517', '162-4818', 'grr', '2021-01-16 23:15:37', 1, 1),
(20, '219-7517', '162-4818', 'Miam', '2021-01-16 23:15:43', 1, 0),
(21, '162-4818', '219-7517', 'Miam', '2021-01-16 23:15:43', 1, 1),
(22, '277-6301', '416-8795', 'Wsh c adel', '2021-01-16 23:24:42', 1, 0),
(23, '416-8795', '277-6301', 'Wsh c adel', '2021-01-16 23:24:42', 1, 1),
(24, '277-6301', '288-9433', 'wsh c adel bg', '2021-01-16 23:25:21', 1, 0),
(25, '288-9433', '277-6301', 'wsh c adel bg', '2021-01-16 23:25:21', 1, 1),
(26, '416-8795', '277-6301', 'GPS: -1213.9390869141, -326.697265625', '2021-01-16 23:25:30', 1, 0),
(27, '277-6301', '416-8795', 'GPS: -1213.9390869141, -326.697265625', '2021-01-16 23:25:30', 1, 1),
(28, '288-9433', '277-6301', 'GPS: -1357.8233642578, -1131.9367675781', '2021-01-16 23:26:47', 1, 0),
(29, '277-6301', '288-9433', 'GPS: -1357.8233642578, -1131.9367675781', '2021-01-16 23:26:47', 1, 1),
(30, '277-6301', '288-9433', 'GPS: -1155.5948486328, -1423.2598876953', '2021-01-16 23:27:58', 1, 0),
(31, '288-9433', '277-6301', 'GPS: -1155.5948486328, -1423.2598876953', '2021-01-16 23:27:58', 1, 1),
(32, '288-9433', '277-6301', 'GPS: 118.0899810791, -1198.3569335938', '2021-01-16 23:33:36', 1, 0),
(33, '277-6301', '288-9433', 'GPS: 118.0899810791, -1198.3569335938', '2021-01-16 23:33:36', 1, 1),
(34, '712-8925', '515-6348', 'oue BOYS', '2021-01-16 23:49:54', 0, 0),
(35, '515-6348', '712-8925', 'oue BOYS', '2021-01-16 23:49:54', 1, 1),
(36, '288-9433', '416-8795', 'we', '2021-01-16 23:54:23', 1, 0),
(37, '416-8795', '288-9433', 'we', '2021-01-16 23:54:23', 1, 1),
(38, 'ambulance', '871-5075', 'De #813-3011 : Attention médicale requise: citoyen inconscient! -95.734184265136, -856.80114746094', '2021-01-17 01:05:41', 1, 0),
(39, 'ambulance', '871-5075', 'De #976-9181 : Attention médicale requise: citoyen inconscient! -476.49694824218, -999.11450195312', '2021-01-17 02:10:49', 1, 0),
(40, '162-4818', '915-8004', 'sexe', '2021-01-17 12:17:02', 1, 0),
(41, '915-8004', '162-4818', 'sexe', '2021-01-17 12:17:02', 1, 1),
(42, '915-8004', '162-4818', 'ophobe', '2021-01-17 12:17:10', 1, 0),
(43, '162-4818', '915-8004', 'ophobe', '2021-01-17 12:17:10', 1, 1),
(44, '915-8004', '162-4818', 'GPS: -1282.03125, 291.85928344727', '2021-01-17 12:17:19', 1, 0),
(45, '162-4818', '915-8004', 'GPS: -1282.03125, 291.85928344727', '2021-01-17 12:17:19', 1, 1),
(46, '162-4818', '915-8004', 'tg', '2021-01-17 12:18:14', 1, 0),
(47, '915-8004', '162-4818', 'tg', '2021-01-17 12:18:15', 1, 1),
(48, '915-8004', '162-4818', 'swat$', '2021-01-17 12:18:22', 1, 0),
(49, '162-4818', '915-8004', 'swat$', '2021-01-17 12:18:22', 1, 1),
(50, 'ambulance', '871-5075', 'De #376-3204 : Attention médicale requise: citoyen inconscient! -398.33865356446, -379.96685791016', '2021-01-17 12:44:09', 1, 0),
(51, '183-1880', '404-4957', 'Zack', '2021-01-17 13:42:42', 1, 0),
(52, '404-4957', '183-1880', 'Zack', '2021-01-17 13:42:42', 1, 1),
(53, '183-1880', '330-5100', 'Zack', '2021-01-17 13:42:47', 1, 0),
(54, '330-5100', '183-1880', 'Zack', '2021-01-17 13:42:48', 1, 1),
(55, '8743767', '425-6939', 'cc', '2021-01-17 13:52:10', 1, 1),
(56, '874-3767', '425-6939', 'Hey', '2021-01-17 13:53:06', 1, 0),
(57, '425-6939', '874-3767', 'Hey', '2021-01-17 13:53:06', 1, 1),
(58, '425-6939', '874-3767', 'cc', '2021-01-17 13:55:42', 1, 0),
(59, '874-3767', '425-6939', 'cc', '2021-01-17 13:55:42', 1, 1),
(60, '874-3767', '425-6939', 'HI', '2021-01-17 13:56:20', 1, 0),
(61, '425-6939', '874-3767', 'HI', '2021-01-17 13:56:20', 1, 1),
(62, '425-6939', '874-3767', 't ou', '2021-01-17 14:01:48', 1, 0),
(63, '874-3767', '425-6939', 't ou', '2021-01-17 14:01:48', 1, 1),
(64, '425-6939', '874-3767', 'tu est ou', '2021-01-17 14:05:24', 1, 0),
(65, '874-3767', '425-6939', 'tu est ou', '2021-01-17 14:05:24', 1, 1),
(66, '874-3767', '425-6939', 'je passe mon permis', '2021-01-17 14:05:40', 1, 0),
(67, '425-6939', '874-3767', 'je passe mon permis', '2021-01-17 14:05:40', 1, 1),
(68, '404-4957', '330-5100', 'T sexy', '2021-01-17 14:05:56', 1, 0),
(69, '425-6939', '874-3767', 'ok ma biche', '2021-01-17 14:05:56', 1, 0),
(70, '330-5100', '404-4957', 'T sexy', '2021-01-17 14:05:56', 1, 1),
(71, '874-3767', '425-6939', 'ok ma biche', '2021-01-17 14:05:56', 1, 1),
(72, '330-5100', '404-4957', 'merci toi aussi bb', '2021-01-17 14:06:10', 1, 0),
(73, '404-4957', '330-5100', 'merci toi aussi bb', '2021-01-17 14:06:10', 1, 1),
(74, '874-3767', '425-6939', 'je me suis fait controllé par les flics', '2021-01-17 14:06:13', 1, 0),
(75, '425-6939', '874-3767', 'je me suis fait controllé par les flics', '2021-01-17 14:06:13', 1, 1),
(76, '404-4957', '330-5100', 'Que des batard la', '2021-01-17 14:06:18', 1, 0),
(77, '330-5100', '404-4957', 'Que des batard la', '2021-01-17 14:06:19', 1, 1),
(78, '330-5100', '404-4957', 'grrrrr', '2021-01-17 14:06:27', 1, 0),
(79, '404-4957', '330-5100', 'grrrrr', '2021-01-17 14:06:27', 1, 1),
(80, '404-4957', '330-5100', 'GRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR', '2021-01-17 14:08:56', 1, 0),
(81, '330-5100', '404-4957', 'GRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR', '2021-01-17 14:08:56', 1, 1),
(82, '874-3767', '425-6939', 'tu fais quoi ?', '2021-01-17 14:09:09', 1, 0),
(83, '425-6939', '874-3767', 'tu fais quoi ?', '2021-01-17 14:09:09', 1, 1),
(84, '330-5100', '404-4957', 'tu me donne chaud', '2021-01-17 14:09:22', 1, 0),
(85, '404-4957', '330-5100', 'tu me donne chaud', '2021-01-17 14:09:22', 1, 1),
(86, '425-6939', '874-3767', 'je suis mort', '2021-01-17 14:11:22', 1, 0),
(87, '874-3767', '425-6939', 'je suis mort', '2021-01-17 14:11:22', 1, 1),
(88, '425-6939', '874-3767', '*', '2021-01-17 14:12:19', 1, 0),
(89, '874-3767', '425-6939', '*', '2021-01-17 14:12:19', 1, 1),
(90, '425-6939', '874-3767', 'je suis a l hopital', '2021-01-17 14:16:53', 1, 0),
(91, '874-3767', '425-6939', 'je suis a l hopital', '2021-01-17 14:16:53', 1, 1),
(92, '425-6939', '874-3767', 'tu peux venir ou pas', '2021-01-17 14:18:27', 1, 0),
(93, '874-3767', '425-6939', 'tu peux venir ou pas', '2021-01-17 14:18:28', 1, 1),
(94, '874-3767', '425-6939', 'J\'ai pas de voiture', '2021-01-17 14:18:39', 1, 0),
(95, '425-6939', '874-3767', 'J\'ai pas de voiture', '2021-01-17 14:18:39', 1, 1),
(96, '425-6939', '874-3767', 't ou', '2021-01-17 14:18:49', 1, 0),
(97, '874-3767', '425-6939', 't ou', '2021-01-17 14:18:49', 1, 1),
(98, '874-3767', '425-6939', 'Commico', '2021-01-17 14:18:58', 1, 0),
(99, '425-6939', '874-3767', 'Commico', '2021-01-17 14:18:58', 1, 1),
(100, '792-3652', '871-5075', 'Mathys Zachary PDG mecano', '2021-01-17 15:04:36', 1, 0),
(101, '871-5075', '792-3652', 'Mathys Zachary PDG mecano', '2021-01-17 15:04:36', 1, 1),
(102, 'ambulance', '871-5075', 'De #310-5040 : Attention médicale requise: citoyen inconscient! -378.84603881836, -1004.310180664', '2021-01-17 15:05:17', 1, 0),
(103, '237-4103', '792-3652', 'Yanis', '2021-01-17 15:08:51', 1, 0),
(104, '792-3652', '237-4103', 'Yanis', '2021-01-17 15:08:52', 1, 1),
(105, '792-3652', '237-4103', 'okok', '2021-01-17 15:09:02', 1, 0),
(106, '237-4103', '792-3652', 'okok', '2021-01-17 15:09:02', 1, 1),
(107, '871-5075', '792-3652', 'tu est dispo', '2021-01-17 15:10:34', 1, 0),
(108, '792-3652', '871-5075', 'tu est dispo', '2021-01-17 15:10:34', 1, 1),
(109, '792-3652', '871-5075', 'oui', '2021-01-17 15:15:49', 1, 0),
(110, '871-5075', '792-3652', 'oui', '2021-01-17 15:15:49', 1, 1),
(111, '871-5075', '792-3652', 'tu est ou', '2021-01-17 15:16:28', 1, 0),
(112, '792-3652', '871-5075', 'tu est ou', '2021-01-17 15:16:28', 1, 1),
(113, '871-5075', '792-3652', 'possible te voir a ton travail envoie ta pose stp', '2021-01-17 15:16:56', 1, 0),
(114, '792-3652', '871-5075', 'possible te voir a ton travail envoie ta pose stp', '2021-01-17 15:16:56', 1, 1),
(115, '792-3652', '871-5075', 'GPS: -194.66259765625, -1307.3507080078', '2021-01-17 15:17:02', 1, 0),
(116, '871-5075', '792-3652', 'GPS: -194.66259765625, -1307.3507080078', '2021-01-17 15:17:02', 1, 1),
(117, 'ambulance', '871-5075', 'De #310-5040 : Attention médicale requise: citoyen inconscient! 571.93463134766, -1178.101196289', '2021-01-17 15:19:13', 1, 0),
(118, 'ambulance', '871-5075', 'De #408-8897 : Attention médicale requise: citoyen inconscient! 570.26635742188, -1176.4810791016', '2021-01-17 15:19:39', 1, 0),
(119, '425-6939', '874-3767', 't ou', '2021-01-17 15:29:40', 1, 0),
(120, '874-3767', '425-6939', 't ou', '2021-01-17 15:29:40', 1, 1),
(121, '874-3767', '425-6939', 'commico', '2021-01-17 15:29:48', 1, 0),
(122, '425-6939', '874-3767', 'commico', '2021-01-17 15:29:48', 1, 1),
(123, '425-6939', '874-3767', 'vien nn', '2021-01-17 15:34:23', 1, 0),
(124, '874-3767', '425-6939', 'vien nn', '2021-01-17 15:34:24', 1, 1),
(125, '874-3767', '425-6939', 'ATt', '2021-01-17 15:34:29', 1, 0),
(126, '425-6939', '874-3767', 'ATt', '2021-01-17 15:34:30', 1, 1),
(127, '871-5075', '884-3792', 'moussa SNOW PDG EMS', '2021-01-17 15:35:03', 1, 0),
(128, '884-3792', '871-5075', 'moussa SNOW PDG EMS', '2021-01-17 15:35:03', 1, 1),
(129, '425-6939', '874-3767', 'bonne chance', '2021-01-17 15:35:04', 1, 0),
(130, '874-3767', '425-6939', 'bonne chance', '2021-01-17 15:35:04', 1, 1),
(131, '874-3767', '425-6939', 'mrc', '2021-01-17 15:35:12', 1, 0),
(132, '425-6939', '874-3767', 'mrc', '2021-01-17 15:35:12', 1, 1),
(133, '884-3792', '871-5075', 'James LSPD COM', '2021-01-17 15:35:16', 1, 0),
(134, '871-5075', '884-3792', 'James LSPD COM', '2021-01-17 15:35:16', 1, 1),
(135, '425-6939', '874-3767', 'g prie ta voitur', '2021-01-17 15:35:31', 1, 0),
(136, '874-3767', '425-6939', 'g prie ta voitur', '2021-01-17 15:35:31', 1, 1),
(137, '425-6939', '874-3767', 'TU ME DIT QUAND TA FINI', '2021-01-17 15:42:30', 1, 0),
(138, '874-3767', '425-6939', 'TU ME DIT QUAND TA FINI', '2021-01-17 15:42:30', 1, 1),
(139, '874-3767', '425-6939', 'Fini', '2021-01-17 15:46:04', 1, 0),
(140, '425-6939', '874-3767', 'Fini', '2021-01-17 15:46:04', 1, 1),
(141, '425-6939', '874-3767', 'gg', '2021-01-17 15:46:17', 1, 0),
(142, '874-3767', '425-6939', 'gg', '2021-01-17 15:46:17', 1, 1),
(143, '874-3767', '425-6939', 'Merci', '2021-01-17 15:46:25', 1, 0),
(144, '425-6939', '874-3767', 'Merci', '2021-01-17 15:46:25', 1, 1),
(145, '425-6939', '874-3767', 'la tfk ducoup', '2021-01-17 15:46:39', 1, 0),
(146, '874-3767', '425-6939', 'la tfk ducoup', '2021-01-17 15:46:39', 1, 1),
(147, '874-3767', '425-6939', 'Patrouille', '2021-01-17 15:47:00', 1, 0),
(148, '425-6939', '874-3767', 'Patrouille', '2021-01-17 15:47:00', 1, 1),
(149, '425-6939', '874-3767', 'bonne chance', '2021-01-17 15:47:22', 1, 0),
(150, '874-3767', '425-6939', 'bonne chance', '2021-01-17 15:47:22', 1, 1),
(151, '874-3767', '425-6939', 'MRC', '2021-01-17 15:47:31', 1, 0),
(152, '425-6939', '874-3767', 'MRC', '2021-01-17 15:47:31', 1, 1),
(153, '425-6939', '874-3767', 'si ta beusouin tu me dit', '2021-01-17 15:48:12', 1, 0),
(154, '874-3767', '425-6939', 'si ta beusouin tu me dit', '2021-01-17 15:48:12', 1, 1),
(155, '884-3792', '871-5075', 'Mathis Zakary a passe la visite ?', '2021-01-17 15:54:00', 1, 0),
(156, '871-5075', '884-3792', 'Mathis Zakary a passe la visite ?', '2021-01-17 15:54:00', 1, 1),
(157, '874-3767', '425-6939', 'Tu es ou ?', '2021-01-17 15:55:34', 0, 0),
(158, '425-6939', '874-3767', 'Tu es ou ?', '2021-01-17 15:55:34', 1, 1),
(159, '871-5075', '884-3792', 'uii', '2021-01-17 15:57:51', 1, 0),
(160, '884-3792', '871-5075', 'uii', '2021-01-17 15:57:52', 1, 1),
(161, 'ambulance', '871-5075', 'De #751-2696 : Attention médicale requise: citoyen inconscient! -1145.1818847656, -1636.1853027344', '2021-01-17 16:05:59', 1, 0),
(162, 'ambulance', '871-5075', 'De #423-3475 : Attention médicale requise: citoyen inconscient! 3.363469839096, -878.91088867188', '2021-01-17 16:21:36', 1, 0),
(163, '404-4957', '792-3652', 'Taylor', '2021-01-17 16:22:58', 1, 0),
(164, '792-3652', '404-4957', 'Taylor', '2021-01-17 16:22:58', 1, 1),
(165, '792-3652', '404-4957', 'mathys', '2021-01-17 16:23:07', 1, 0),
(166, '404-4957', '792-3652', 'mathys', '2021-01-17 16:23:07', 1, 1),
(167, 'ambulance', '871-5075', 'De #493-2909 : Attention médicale requise: citoyen inconscient! -4.4872994422912, -1027.2059326172', '2021-01-17 16:26:21', 1, 0),
(168, 'ambulance', '871-5075', 'De #795-8006 : Attention médicale requise: citoyen inconscient! 223.56071472168, -1399.6729736328', '2021-01-17 16:51:46', 1, 0),
(169, 'ambulance', '871-5075', 'De #795-8006 : Attention médicale requise: citoyen inconscient! 235.95149230958, -1426.0174560546', '2021-01-17 16:55:51', 1, 0),
(170, 'ambulance', '871-5075', 'De #487-1706 : Attention médicale requise: citoyen inconscient! 296.58938598632, -1426.1083984375', '2021-01-17 16:59:06', 1, 0),
(171, '183-1880', '897-5503', 'zack', '2021-01-17 16:59:19', 1, 0),
(172, '897-5503', '183-1880', 'zack', '2021-01-17 16:59:19', 1, 1),
(173, '183-1880', '897-5503', 'GPS: -1144.8388671875, -1535.5151367188', '2021-01-17 16:59:21', 1, 0),
(174, '897-5503', '183-1880', 'GPS: -1144.8388671875, -1535.5151367188', '2021-01-17 16:59:22', 1, 1),
(175, '897-5503', '183-1880', 'j\'arrive', '2021-01-17 16:59:54', 1, 0),
(176, '183-1880', '897-5503', 'j\'arrive', '2021-01-17 16:59:55', 1, 1),
(177, '183-1880', '746-6644', 'Zack', '2021-01-17 17:03:49', 0, 0),
(178, '746-6644', '183-1880', 'Zack', '2021-01-17 17:03:50', 1, 1),
(179, 'ambulance', '871-5075', 'De #751-2696 : Attention médicale requise: citoyen inconscient! -1159.406616211, -1521.2294921875', '2021-01-17 17:03:55', 1, 0),
(180, '330-5100', '404-4957', 'saute', '2021-01-17 17:07:01', 1, 0),
(181, '404-4957', '330-5100', 'saute', '2021-01-17 17:07:01', 1, 1),
(182, '330-5100', '404-4957', 'saute t\'as un chewing gum', '2021-01-17 17:07:27', 1, 0),
(183, '404-4957', '330-5100', 'saute t\'as un chewing gum', '2021-01-17 17:07:27', 1, 1),
(184, 'ambulance', '871-5075', 'De #907-7193 : Attention médicale requise: citoyen inconscient! -1133.2214355468, -1556.7784423828', '2021-01-17 17:15:19', 1, 0),
(185, 'ambulance', '871-5075', 'De #907-7193 : Réanimation -1133.2214355468, -1556.7784423828', '2021-01-17 17:16:55', 1, 0),
(186, '404-4957', '871-5075', 'Bloods', '2021-01-17 17:17:02', 1, 0),
(187, '871-5075', '404-4957', 'Bloods', '2021-01-17 17:17:02', 1, 1),
(188, 'ambulance', '871-5075', 'De #276-2009 : Attention médicale requise: citoyen inconscient! -905.49279785156, -1207.0009765625', '2021-01-17 17:17:37', 1, 0),
(189, 'police', '219-7517', 'De #338-3807 : je vais me sucider BYE BYE )= 134.42265319824, -1054.3054199218', '2021-01-17 17:17:53', 1, 0),
(190, 'police', '884-3792', 'De #338-3807 : je vais me sucider BYE BYE )= 134.42265319824, -1054.3054199218', '2021-01-17 17:17:53', 1, 0),
(191, 'police', '633-1896', 'De #338-3807 : je vais me sucider BYE BYE )= 134.42265319824, -1054.3054199218', '2021-01-17 17:17:53', 1, 0),
(192, 'police', '933-1325', 'De #338-3807 : je vais me sucider BYE BYE )= 134.42265319824, -1054.3054199218', '2021-01-17 17:17:53', 0, 0),
(193, 'police', '620-8384', 'De #338-3807 : je vais me sucider BYE BYE )= 134.42265319824, -1054.3054199218', '2021-01-17 17:17:53', 0, 0),
(194, 'ambulance', '871-5075', 'De #582-5634 : Attention médicale requise: citoyen inconscient! -480.5, -776.59289550782', '2021-01-17 17:18:33', 1, 0),
(195, 'police', '219-7517', 'De #338-3807 : Agression 134.42265319824, -1054.3054199218', '2021-01-17 17:19:03', 1, 0),
(196, 'police', '620-8384', 'De #338-3807 : Agression 134.42265319824, -1054.3054199218', '2021-01-17 17:19:03', 0, 0),
(197, 'police', '884-3792', 'De #338-3807 : Agression 134.42265319824, -1054.3054199218', '2021-01-17 17:19:03', 1, 0),
(198, 'police', '633-1896', 'De #338-3807 : Agression 134.42265319824, -1054.3054199218', '2021-01-17 17:19:03', 1, 0),
(199, 'police', '933-1325', 'De #338-3807 : Agression 134.42265319824, -1054.3054199218', '2021-01-17 17:19:03', 0, 0),
(200, 'ambulance', '871-5075', 'De #633-1896 : Attention médicale requise: citoyen inconscient! -1049.6215820312, -1541.1987304688', '2021-01-17 17:19:37', 1, 0),
(201, 'ambulance', '871-5075', 'De #964-3301 : Attention médicale requise: citoyen inconscient! 89.100715637208, -1055.6185302734', '2021-01-17 17:21:09', 1, 0),
(202, '871-5075', '404-4957', 'c quoi ton nom stp', '2021-01-17 17:26:06', 1, 0),
(203, '404-4957', '871-5075', 'c quoi ton nom stp', '2021-01-17 17:26:06', 1, 1),
(204, '404-4957', '871-5075', 'Apeller moi Blake', '2021-01-17 17:26:20', 1, 0),
(205, '871-5075', '404-4957', 'Apeller moi Blake', '2021-01-17 17:26:20', 1, 1),
(206, '884-3792', '871-5075', 'GPS: 25.142612457275, -1357.3009033203', '2021-01-17 17:26:20', 1, 0),
(207, '871-5075', '884-3792', 'GPS: 25.142612457275, -1357.3009033203', '2021-01-17 17:26:20', 1, 1),
(208, '884-3792', '871-5075', 'GPS: 25.654521942139, -1356.8752441406', '2021-01-17 17:26:21', 1, 0),
(209, '871-5075', '884-3792', 'GPS: 25.654521942139, -1356.8752441406', '2021-01-17 17:26:21', 1, 1),
(210, '884-3792', '871-5075', 'GPS: 26.582231521606, -1357.2569580078', '2021-01-17 17:26:21', 1, 0),
(211, '871-5075', '884-3792', 'GPS: 26.582231521606, -1357.2569580078', '2021-01-17 17:26:22', 1, 1),
(212, '884-3792', '871-5075', 'GPS: 31.753665924072, -1351.2915039062', '2021-01-17 17:27:25', 1, 0),
(213, '871-5075', '884-3792', 'GPS: 31.753665924072, -1351.2915039062', '2021-01-17 17:27:26', 1, 1),
(214, '884-3792', '871-5075', 'GPS: 31.753665924072, -1351.2915039062', '2021-01-17 17:27:26', 1, 0),
(215, '871-5075', '884-3792', 'GPS: 31.753665924072, -1351.2915039062', '2021-01-17 17:27:26', 1, 1),
(216, 'ambulance', '871-5075', 'De #220-2090 : Attention médicale requise: citoyen inconscient! 399.33087158204, -927.38330078125', '2021-01-17 17:27:44', 1, 0),
(217, 'ambulance', '871-5075', 'De #619-2711 : Attention médicale requise: citoyen inconscient! 407.11456298828, -915.5966796875', '2021-01-17 17:28:02', 1, 0),
(218, '219-7517', '162-4818', 'Je begaille', '2021-01-17 17:28:43', 1, 0),
(219, '162-4818', '219-7517', 'Je begaille', '2021-01-17 17:28:43', 1, 1),
(220, '162-4818', '219-7517', 'MDRR', '2021-01-17 17:28:51', 1, 0),
(221, '219-7517', '162-4818', 'MDRR', '2021-01-17 17:28:51', 1, 1),
(222, '162-4818', '219-7517', 'pense a irox', '2021-01-17 17:28:56', 1, 0),
(223, '219-7517', '162-4818', 'pense a irox', '2021-01-17 17:28:56', 1, 1),
(224, '219-7517', '162-4818', 'HAHHAA', '2021-01-17 17:29:00', 1, 0),
(225, '162-4818', '219-7517', 'HAHHAA', '2021-01-17 17:29:00', 1, 1),
(226, '219-7517', '162-4818', 'STOP', '2021-01-17 17:29:01', 1, 0),
(227, '162-4818', '219-7517', 'STOP', '2021-01-17 17:29:02', 1, 1),
(228, '162-4818', '219-7517', 'ta un beau crane', '2021-01-17 17:29:09', 1, 0),
(229, '219-7517', '162-4818', 'ta un beau crane', '2021-01-17 17:29:09', 1, 1),
(230, '162-4818', '219-7517', 'il a dis', '2021-01-17 17:29:13', 1, 0),
(231, '219-7517', '162-4818', 'il a dis', '2021-01-17 17:29:13', 1, 1),
(232, '219-7517', '162-4818', 'ils peuvent nous braquer au poing', '2021-01-17 17:29:14', 1, 0),
(233, '162-4818', '219-7517', 'ils peuvent nous braquer au poing', '2021-01-17 17:29:14', 1, 1),
(234, '162-4818', '219-7517', 'mdr', '2021-01-17 17:29:18', 1, 0),
(235, '219-7517', '162-4818', 'mdr', '2021-01-17 17:29:18', 1, 1),
(236, '162-4818', '219-7517', 'tg', '2021-01-17 17:29:25', 1, 0),
(237, '219-7517', '162-4818', 'tg', '2021-01-17 17:29:25', 1, 1),
(238, '219-7517', '162-4818', 'j\'ai envis de sauter en bas', '2021-01-17 17:29:26', 1, 0),
(239, '162-4818', '219-7517', 'j\'ai envis de sauter en bas', '2021-01-17 17:29:27', 1, 1),
(240, '162-4818', '219-7517', 'BAHAHA STOP', '2021-01-17 17:29:33', 1, 0),
(241, '219-7517', '162-4818', 'BAHAHA STOP', '2021-01-17 17:29:33', 1, 1),
(242, '219-7517', '162-4818', 'le mur c réparé', '2021-01-17 17:29:36', 1, 0),
(243, '162-4818', '219-7517', 'le mur c réparé', '2021-01-17 17:29:36', 1, 1),
(244, '162-4818', '219-7517', 'oui baptiste la recraché', '2021-01-17 17:29:46', 1, 0),
(245, '219-7517', '162-4818', 'oui baptiste la recraché', '2021-01-17 17:29:46', 1, 1),
(246, '219-7517', '162-4818', 'stop', '2021-01-17 17:29:52', 1, 0),
(247, '162-4818', '219-7517', 'stop', '2021-01-17 17:29:52', 1, 1),
(248, '219-7517', '162-4818', 'jvais plus me controler', '2021-01-17 17:29:59', 1, 0),
(249, '162-4818', '219-7517', 'jvais plus me controler', '2021-01-17 17:29:59', 1, 1),
(250, '162-4818', '219-7517', 'mdr il me font peur', '2021-01-17 17:31:16', 1, 0),
(251, '219-7517', '162-4818', 'mdr il me font peur', '2021-01-17 17:31:16', 1, 1),
(265, '612-6314', '824-2255', 'junior', '2021-01-17 17:34:43', 1, 1),
(254, '884-3792', '871-5075', 'GPS: 199.12272644043, -775.53497314453', '2021-01-17 17:33:10', 1, 1),
(264, '824-2255', '612-6314', 'junior', '2021-01-17 17:34:43', 1, 0),
(256, 'police', '884-3792', 'De #871-5075 : Vol en cours ! 163.45622253418, -827.05865478516', '2021-01-17 17:34:21', 1, 0),
(257, 'police', '219-7517', 'De #871-5075 : Vol en cours ! 163.45622253418, -827.05865478516', '2021-01-17 17:34:21', 1, 0),
(258, 'police', '874-3767', 'De #871-5075 : Vol en cours ! 163.45622253418, -827.05865478516', '2021-01-17 17:34:21', 1, 0),
(259, 'police', '933-1325', 'De #871-5075 : Vol en cours ! 163.45622253418, -827.05865478516', '2021-01-17 17:34:21', 0, 0),
(260, 'police', '620-8384', 'De #871-5075 : Vol en cours ! 163.45622253418, -827.05865478516', '2021-01-17 17:34:21', 0, 0),
(261, 'police', '633-1896', 'De #871-5075 : Vol en cours ! 163.45622253418, -827.05865478516', '2021-01-17 17:34:21', 1, 0),
(262, '612-6314', '824-2255', 'slt c\'est ruan', '2021-01-17 17:34:25', 1, 0),
(263, '824-2255', '612-6314', 'slt c\'est ruan', '2021-01-17 17:34:25', 1, 1),
(266, 'police', '874-3767', 'De #871-5075 : Vol en cours ! 196.97944641114, -1320.8002929688', '2021-01-17 17:35:10', 1, 0),
(267, 'police', '884-3792', 'De #871-5075 : Vol en cours ! 196.97944641114, -1320.8002929688', '2021-01-17 17:35:10', 1, 0),
(268, 'police', '219-7517', 'De #871-5075 : Vol en cours ! 196.97944641114, -1320.8002929688', '2021-01-17 17:35:10', 1, 0),
(269, 'police', '620-8384', 'De #871-5075 : Vol en cours ! 196.97944641114, -1320.8002929688', '2021-01-17 17:35:10', 0, 0),
(270, 'police', '633-1896', 'De #871-5075 : Vol en cours ! 196.97944641114, -1320.8002929688', '2021-01-17 17:35:10', 1, 0),
(271, 'police', '933-1325', 'De #871-5075 : Vol en cours ! 196.97944641114, -1320.8002929688', '2021-01-17 17:35:10', 0, 0),
(272, 'ambulance', '871-5075', 'De #457-4567 : Attention médicale requise: citoyen inconscient! 246.7520904541, -846.55627441406', '2021-01-17 17:36:25', 1, 0),
(273, 'ambulance', '871-5075', 'De #457-4567 : Attention médicale requise: citoyen inconscient! 42.320266723632, -1503.5180664062', '2021-01-17 17:38:38', 1, 0),
(274, 'ambulance', '871-5075', 'De #884-3792 : Attention médicale requise: citoyen inconscient! 32.579006195068, -1511.1036376954', '2021-01-17 17:38:57', 1, 0),
(275, '871-5075', '404-4957', 'ok tes dispo ??', '2021-01-17 17:41:54', 1, 0),
(276, '404-4957', '871-5075', 'ok tes dispo ??', '2021-01-17 17:41:54', 1, 1),
(277, '404-4957', '871-5075', 'Pour ?', '2021-01-17 17:42:02', 1, 0),
(278, '871-5075', '404-4957', 'Pour ?', '2021-01-17 17:42:02', 1, 1),
(279, '871-5075', '404-4957', 'ils avait un bloods qui voulais acheter su GHB pillule de loublie', '2021-01-17 17:42:34', 1, 0),
(280, '404-4957', '871-5075', 'ils avait un bloods qui voulais acheter su GHB pillule de loublie', '2021-01-17 17:42:35', 1, 1),
(281, '871-5075', '404-4957', 'envoie ta pose', '2021-01-17 17:43:09', 1, 0),
(282, '404-4957', '871-5075', 'envoie ta pose', '2021-01-17 17:43:10', 1, 1),
(283, '404-4957', '871-5075', 'Ouais', '2021-01-17 17:43:11', 1, 0),
(284, '871-5075', '404-4957', 'Ouais', '2021-01-17 17:43:11', 1, 1),
(285, '871-5075', '404-4957', 'envoie ta pose', '2021-01-17 17:43:22', 1, 0),
(286, '404-4957', '871-5075', 'envoie ta pose', '2021-01-17 17:43:23', 1, 1),
(287, '404-4957', '871-5075', 'cb les 5 GHB', '2021-01-17 17:43:24', 1, 0),
(288, '871-5075', '404-4957', 'cb les 5 GHB', '2021-01-17 17:43:24', 1, 1),
(289, 'ambulance', '871-5075', 'De #586-1130 : Attention médicale requise: citoyen inconscient! 489.32025146484, -1018.8587646484', '2021-01-17 17:43:35', 1, 0),
(290, '871-5075', '404-4957', 'sa depend combien vous prenez', '2021-01-17 17:43:46', 1, 0),
(291, '404-4957', '871-5075', 'sa depend combien vous prenez', '2021-01-17 17:43:46', 1, 1),
(292, '404-4957', '871-5075', 'Si on en prend 10', '2021-01-17 17:44:01', 1, 0),
(293, '871-5075', '404-4957', 'Si on en prend 10', '2021-01-17 17:44:01', 1, 1),
(294, 'ambulance', '871-5075', 'De #495-4532 : Attention médicale requise: citoyen inconscient! 105.5595779419, -1366.5115966796', '2021-01-17 17:44:02', 1, 0),
(295, 'ambulance', '871-5075', 'De #798-9765 : Attention médicale requise: citoyen inconscient! 101.81135559082, -1367.8626708984', '2021-01-17 17:44:11', 1, 0),
(296, '183-1880', '318-6568', 'Zack', '2021-01-17 17:46:02', 1, 0),
(297, '318-6568', '183-1880', 'Zack', '2021-01-17 17:46:02', 1, 1),
(298, '318-6568', '183-1880', 'bv', '2021-01-17 17:46:11', 1, 0),
(299, '183-1880', '318-6568', 'bv', '2021-01-17 17:46:11', 1, 1),
(300, 'ambulance', '871-5075', 'De #856-4229 : Attention médicale requise: citoyen inconscient! 417.91290283204, -994.91876220704', '2021-01-17 17:46:31', 1, 0),
(301, 'ambulance', '871-5075', 'De #160-5643 : Attention médicale requise: citoyen inconscient! 468.27508544922, -983.78057861328', '2021-01-17 17:47:06', 1, 0),
(302, 'ambulance', '871-5075', 'De #722-9044 : Attention médicale requise: citoyen inconscient! 413.80981445312, -993.6226196289', '2021-01-17 17:48:20', 1, 0),
(303, '183-1880', '318-6568', 'j\'ai vendu un akuma a 40k', '2021-01-17 17:48:27', 1, 0),
(304, '318-6568', '183-1880', 'j\'ai vendu un akuma a 40k', '2021-01-17 17:48:27', 1, 1),
(305, '183-1880', '318-6568', 'tu peut venir concess ?', '2021-01-17 17:48:37', 1, 0),
(306, '318-6568', '183-1880', 'tu peut venir concess ?', '2021-01-17 17:48:37', 1, 1),
(307, '318-6568', '183-1880', 'j\'arrive', '2021-01-17 17:48:55', 1, 0),
(308, '183-1880', '318-6568', 'j\'arrive', '2021-01-17 17:48:55', 1, 1),
(309, 'ambulance', '871-5075', 'De #504-5530 : Attention médicale requise: citoyen inconscient! -531.939453125, -941.61193847656', '2021-01-17 17:49:02', 1, 0),
(310, 'ambulance', '871-5075', 'De #840-7169 : Attention médicale requise: citoyen inconscient! -533.26892089844, -997.77410888672', '2021-01-17 17:51:49', 1, 0),
(311, 'ambulance', '871-5075', 'De #920-3960 : Attention médicale requise: citoyen inconscient! 396.64901733398, -1019.8572387696', '2021-01-17 17:51:56', 1, 0),
(312, 'ambulance', '871-5075', 'De #874-3767 : Attention médicale requise: citoyen inconscient! 251.30903625488, -837.94848632812', '2021-01-17 17:53:07', 1, 0),
(313, 'ambulance', '871-5075', 'De #429-2583 : Attention médicale requise: citoyen inconscient! 381.2116394043, -1040.4938964844', '2021-01-17 17:53:29', 1, 0),
(314, 'ambulance', '871-5075', 'De #586-1130 : Attention médicale requise: citoyen inconscient! 282.53210449218, -912.46557617188', '2021-01-17 17:54:03', 1, 0),
(315, '792-3652', '404-4957', 'alors', '2021-01-17 17:54:08', 1, 0),
(316, '404-4957', '792-3652', 'alors', '2021-01-17 17:54:08', 1, 1),
(317, '404-4957', '792-3652', 'Il a dit oui', '2021-01-17 17:54:20', 1, 0),
(318, '792-3652', '404-4957', 'Il a dit oui', '2021-01-17 17:54:21', 1, 1),
(319, '792-3652', '404-4957', 'on t dispo', '2021-01-17 17:54:35', 1, 0),
(320, '404-4957', '792-3652', 'on t dispo', '2021-01-17 17:54:35', 1, 1),
(321, 'ambulance', '871-5075', 'De #665-4821 : Attention médicale requise: citoyen inconscient! -1017.279663086, 5649.4409179688', '2021-01-17 17:55:25', 1, 0),
(322, 'ambulance', '871-5075', 'De #520-6940 : Attention médicale requise: citoyen inconscient! -216.20216369628, -897.9213256836', '2021-01-17 17:55:53', 1, 0),
(323, 'ambulance', '871-5075', 'De #275-1423 : Attention médicale requise: citoyen inconscient! 259.57650756836, -1044.9212646484', '2021-01-17 17:57:34', 1, 0),
(324, 'ambulance', '871-5075', 'De #722-9044 : Attention médicale requise: citoyen inconscient! -1008.914428711, -1385.3830566406', '2021-01-17 17:58:06', 1, 0),
(325, 'ambulance', '871-5075', 'De #751-2696 : Attention médicale requise: citoyen inconscient! -1165.8485107422, -1566.3040771484', '2021-01-17 17:59:08', 1, 0),
(326, 'ambulance', '871-5075', 'De #276-2009 : Attention médicale requise: citoyen inconscient! -1001.4833374024, -1410.0400390625', '2021-01-17 17:59:14', 1, 0),
(327, '874-3767', '884-3792', 'Vous pouvez venir me chercher à l\'hopital', '2021-01-17 17:59:44', 1, 0),
(328, '884-3792', '874-3767', 'Vous pouvez venir me chercher à l\'hopital', '2021-01-17 17:59:44', 1, 1),
(329, 'ambulance', '871-5075', 'De #561-5622 : Attention médicale requise: citoyen inconscient! 248.80313110352, -861.63049316406', '2021-01-17 18:00:06', 1, 0),
(330, '871-5075', '404-4957', 'pour vous comme je vous aprecie je vous fait 17500', '2021-01-17 18:03:29', 1, 0),
(331, '404-4957', '871-5075', 'pour vous comme je vous aprecie je vous fait 17500', '2021-01-17 18:03:29', 1, 1),
(332, '871-5075', '404-4957', 'a lors normalement c 30k', '2021-01-17 18:03:55', 1, 0),
(333, '404-4957', '871-5075', 'a lors normalement c 30k', '2021-01-17 18:03:55', 1, 1),
(334, 'ambulance', '871-5075', 'De #267-3877 : Attention médicale requise: citoyen inconscient! 151.54273986816, -1032.3247070312', '2021-01-17 18:05:02', 1, 0),
(335, 'ambulance', '871-5075', 'De #972-8042 : Attention médicale requise: citoyen inconscient! 218.55528259278, -1964.9924316406', '2021-01-17 18:06:04', 1, 0),
(336, 'ambulance', '871-5075', 'De #972-8042 : Réanimation 218.52453613282, -1965.295288086', '2021-01-17 18:06:10', 1, 0),
(337, 'ambulance', '871-5075', 'De #972-8042 : Besoin de soins 218.43951416016, -1965.3951416016', '2021-01-17 18:06:13', 1, 0),
(338, 'ambulance', '871-5075', 'De #871-5075 : Attention médicale requise: citoyen inconscient! 137.11610412598, -1021.877380371', '2021-01-17 18:06:28', 1, 0),
(339, '871-5075', '404-4957', 'envoie pose', '2021-01-17 18:10:35', 1, 0),
(340, '404-4957', '871-5075', 'envoie pose', '2021-01-17 18:10:35', 1, 1),
(341, 'ambulance', '871-5075', 'De #871-5075 : Attention médicale requise: citoyen inconscient! -637.73425292968, -955.52844238282', '2021-01-17 18:14:07', 1, 0),
(342, 'ambulance', '871-5075', 'De #423-3475 : Attention médicale requise: citoyen inconscient! -115.69762420654, -1128.5958251954', '2021-01-17 18:14:14', 1, 0),
(343, '665-4821', '495-4532', 'Noemie', '2021-01-17 18:16:11', 1, 0),
(345, 'ambulance', '871-5075', 'De #423-3475 : Attention médicale requise: citoyen inconscient! 259.8794555664, -857.07861328125', '2021-01-17 18:17:50', 1, 0),
(346, 'ambulance', '871-5075', 'De #718-4607 : Attention médicale requise: citoyen inconscient! 279.18957519532, -874.35803222656', '2021-01-17 18:21:40', 1, 0),
(347, 'ambulance', '871-5075', 'De #751-2696 : Attention médicale requise: citoyen inconscient! 254.18563842774, -849.5703125', '2021-01-17 18:24:48', 1, 0),
(348, 'ambulance', '871-5075', 'De #433-3864 : Attention médicale requise: citoyen inconscient! 46.328796386718, -770.3955078125', '2021-01-17 18:25:14', 1, 0),
(349, 'ambulance', '871-5075', 'De #665-4821 : Attention médicale requise: citoyen inconscient! 254.65127563476, -845.88513183594', '2021-01-17 18:26:19', 1, 0),
(350, 'ambulance', '871-5075', 'De #272-8873 : Attention médicale requise: citoyen inconscient! 90.401344299316, -1950.5026855468', '2021-01-17 18:26:53', 1, 0),
(351, 'ambulance', '871-5075', 'De #612-6314 : Attention médicale requise: citoyen inconscient! 95.91626739502, -1948.2446289062', '2021-01-17 18:27:09', 1, 0),
(353, '665-4821', '871-5075', 'Moussa SNOW', '2021-01-17 18:33:24', 1, 1),
(356, '665-4821', '871-5075', 'donnez moi votre discord est vous majouter sil vous plait', '2021-01-17 18:44:48', 1, 0),
(937, 'police', '874-3767', 'De #318-6568 : Vol en cours ! -1222.5057373046, -906.92645263672', '2021-01-18 15:57:13', 1, 0),
(355, 'ambulance', '871-5075', 'De #589-9191 : Attention médicale requise: citoyen inconscient! -536.90539550782, 5497.3872070312', '2021-01-17 18:43:32', 1, 0),
(936, 'police', '620-8384', 'De #318-6568 : Vol en cours ! -1222.5057373046, -906.92645263672', '2021-01-18 15:57:13', 0, 0),
(358, '824-2255', '219-7517', 'Junior', '2021-01-17 18:46:35', 1, 0),
(359, '219-7517', '824-2255', 'Junior', '2021-01-17 18:46:35', 1, 1),
(360, '824-2255', '162-4818', 'Junior', '2021-01-17 18:46:38', 1, 0),
(361, '162-4818', '824-2255', 'Junior', '2021-01-17 18:46:38', 1, 1),
(362, '162-4818', '824-2255', 'Tomy', '2021-01-17 18:46:49', 1, 0),
(363, '824-2255', '162-4818', 'Tomy', '2021-01-17 18:46:49', 1, 1),
(365, '665-4821', '871-5075', '#speedos4595', '2021-01-17 18:46:59', 1, 1),
(935, 'police', '837-8303', 'De #318-6568 : Vol en cours ! -1222.5057373046, -906.92645263672', '2021-01-18 15:57:13', 1, 0),
(366, '665-4821', '871-5075', 'ajouter moi discord sil vous plait c\'est NOWNOW#0668', '2021-01-17 18:49:38', 1, 0),
(368, '318-8187', '871-5075', 'JJ', '2021-01-17 18:54:59', 1, 0),
(369, '871-5075', '318-8187', 'JJ', '2021-01-17 18:54:59', 1, 1),
(370, '208-3420', '871-5075', 'hola je suis el mara', '2021-01-17 18:56:34', 1, 0),
(371, '871-5075', '208-3420', 'hola je suis el mara', '2021-01-17 18:56:35', 1, 1),
(373, '665-4821', '871-5075', 'JAI FINI ACCEPTE', '2021-01-17 18:57:08', 1, 1),
(374, '871-5075', '208-3420', 'OK JE te voir', '2021-01-17 18:57:27', 1, 0),
(375, '208-3420', '871-5075', 'OK JE te voir', '2021-01-17 18:57:27', 1, 1),
(376, '871-5075', '208-3420', 'envoie pose', '2021-01-17 18:57:31', 1, 0),
(377, '208-3420', '871-5075', 'envoie pose', '2021-01-17 18:57:32', 1, 1),
(378, '871-5075', '318-8187', 'ecris nom prenom', '2021-01-17 18:57:41', 1, 0),
(379, '318-8187', '871-5075', 'ecris nom prenom', '2021-01-17 18:57:41', 1, 1),
(934, 'police', '926-7757', 'De #318-6568 : Vol en cours ! -1222.5057373046, -906.92645263672', '2021-01-18 15:57:13', 0, 0),
(380, 'ambulance', '318-8187', 'De #874-3767 : Attention médicale requise: citoyen inconscient! 86.428497314454, -991.71887207032', '2021-01-17 19:03:18', 1, 0),
(933, 'police', '353-9631', 'De #318-6568 : Vol en cours ! -1222.5057373046, -906.92645263672', '2021-01-18 15:57:13', 0, 0),
(382, 'ambulance', '972-8042', 'De #874-3767 : Attention médicale requise: citoyen inconscient! 86.428497314454, -991.71887207032', '2021-01-17 19:03:18', 1, 0),
(383, 'ambulance', '871-5075', 'De #874-3767 : Attention médicale requise: citoyen inconscient! 86.428497314454, -991.71887207032', '2021-01-17 19:03:18', 1, 0),
(384, '318-8187', '871-5075', 'OUI', '2021-01-17 19:05:21', 1, 0),
(385, '871-5075', '318-8187', 'OUI', '2021-01-17 19:05:21', 1, 1),
(386, '871-5075', '318-8187', 'va hopital', '2021-01-17 19:05:38', 1, 0),
(387, '318-8187', '871-5075', 'va hopital', '2021-01-17 19:05:38', 1, 1),
(388, '871-5075', '208-3420', 'va hopital', '2021-01-17 19:06:00', 1, 0),
(389, '208-3420', '871-5075', 'va hopital', '2021-01-17 19:06:00', 1, 1),
(932, 'mecano', '792-3652', 'De #318-8187 : Bonjour, ma voiture est en panne. Pouvez-vous intervenir ? 2461.2661132812, 2219.3806152344', '2021-01-18 15:54:57', 1, 0),
(391, 'ambulance', '972-8042', 'De #510-4743 : Attention médicale requise: citoyen inconscient! 140.5675201416, -912.38262939454', '2021-01-17 19:06:03', 1, 0),
(392, 'ambulance', '318-8187', 'De #510-4743 : Attention médicale requise: citoyen inconscient! 140.5675201416, -912.38262939454', '2021-01-17 19:06:03', 1, 0),
(393, 'ambulance', '871-5075', 'De #510-4743 : Attention médicale requise: citoyen inconscient! 140.5675201416, -912.38262939454', '2021-01-17 19:06:03', 1, 0),
(394, '208-3420', '871-5075', 'por?', '2021-01-17 19:06:08', 1, 0),
(395, '871-5075', '208-3420', 'por?', '2021-01-17 19:06:08', 1, 1),
(396, '871-5075', '318-8187', 'va hopital', '2021-01-17 19:06:12', 1, 0),
(397, '208-3420', '871-5075', 'je fait un truc au benys la', '2021-01-17 19:06:12', 1, 0),
(398, '318-8187', '871-5075', 'va hopital', '2021-01-17 19:06:13', 1, 1),
(399, '871-5075', '208-3420', 'je fait un truc au benys la', '2021-01-17 19:06:13', 1, 1),
(400, '871-5075', '208-3420', 'besoin reunion', '2021-01-17 19:06:23', 1, 0),
(401, '208-3420', '871-5075', 'besoin reunion', '2021-01-17 19:06:23', 1, 1),
(402, '208-3420', '871-5075', 'hm ok', '2021-01-17 19:06:34', 1, 0),
(403, '871-5075', '208-3420', 'hm ok', '2021-01-17 19:06:34', 1, 1),
(404, '208-3420', '871-5075', 'envoie position', '2021-01-17 19:06:51', 1, 0),
(405, '871-5075', '208-3420', 'envoie position', '2021-01-17 19:06:51', 1, 1),
(406, 'ambulance', '972-8042', 'De #972-8042 : vien mec', '2021-01-17 19:07:10', 1, 0),
(407, 'ambulance', '318-8187', 'De #972-8042 : vien mec', '2021-01-17 19:07:10', 1, 0),
(408, 'ambulance', '871-5075', 'De #972-8042 : vien mec', '2021-01-17 19:07:10', 1, 0),
(409, 'ambulance', '972-8042', 'vien mec', '2021-01-17 19:07:10', 1, 1),
(410, 'ambulance', '972-8042', 'De #425-3037 : Attention médicale requise: citoyen inconscient! -826.29815673828, -127.23141479492', '2021-01-17 19:08:11', 1, 0),
(411, 'ambulance', '871-5075', 'De #425-3037 : Attention médicale requise: citoyen inconscient! -826.29815673828, -127.23141479492', '2021-01-17 19:08:11', 1, 0),
(412, 'ambulance', '318-8187', 'De #425-3037 : Attention médicale requise: citoyen inconscient! -826.29815673828, -127.23141479492', '2021-01-17 19:08:11', 1, 0),
(413, '208-3420', '871-5075', 'vous êtes meme pas la', '2021-01-17 19:10:36', 1, 0),
(414, '871-5075', '208-3420', 'vous êtes meme pas la', '2021-01-17 19:10:36', 1, 1),
(415, '871-5075', '208-3420', 'GPS: 282.78387451172, -599.77325439453', '2021-01-17 19:11:25', 1, 0),
(416, '208-3420', '871-5075', 'GPS: 282.78387451172, -599.77325439453', '2021-01-17 19:11:25', 1, 1),
(417, 'ambulance', '871-5075', 'De #972-8042 : Attention médicale requise: citoyen inconscient! 108.68328857422, -954.51440429688', '2021-01-17 19:11:30', 1, 0),
(418, 'ambulance', '972-8042', 'De #972-8042 : Attention médicale requise: citoyen inconscient! 108.68328857422, -954.51440429688', '2021-01-17 19:11:30', 1, 0),
(419, 'ambulance', '318-8187', 'De #972-8042 : Attention médicale requise: citoyen inconscient! 108.68328857422, -954.51440429688', '2021-01-17 19:11:30', 1, 0),
(421, 'ambulance', '972-8042', 'De #972-8042 : euh....', '2021-01-17 19:11:40', 1, 0),
(422, 'ambulance', '318-8187', 'De #972-8042 : euh....', '2021-01-17 19:11:40', 1, 0),
(423, 'ambulance', '871-5075', 'De #972-8042 : euh....', '2021-01-17 19:11:40', 1, 0),
(425, 'ambulance', '972-8042', 'euh....', '2021-01-17 19:11:41', 1, 1),
(427, '665-4821', '871-5075', 't ou', '2021-01-17 19:20:43', 1, 1),
(428, 'ambulance', '318-8187', 'De #885-3842 : Attention médicale requise: citoyen inconscient! 280.77841186524, -899.5697631836', '2021-01-17 19:21:36', 1, 0),
(429, 'ambulance', '871-5075', 'De #885-3842 : Attention médicale requise: citoyen inconscient! 280.77841186524, -899.5697631836', '2021-01-17 19:21:36', 1, 0),
(430, '871-5075', '404-4957', 'je vous fait 15k', '2021-01-17 19:23:27', 1, 0),
(431, '404-4957', '871-5075', 'je vous fait 15k', '2021-01-17 19:23:27', 1, 1),
(432, '411-9915', '185-5624', 'sergio', '2021-01-17 19:37:31', 1, 0),
(433, '185-5624', '411-9915', 'sergio', '2021-01-17 19:37:32', 1, 1),
(434, '665-4821', '871-5075', 'GPS: 320.55090332031, -577.66174316406', '2021-01-17 20:05:30', 1, 0),
(930, 'mecano', '220-2090', 'De #318-8187 : Bonjour, ma voiture est en panne. Pouvez-vous intervenir ? 2461.2661132812, 2219.3806152344', '2021-01-18 15:54:57', 1, 0),
(436, '665-4821', '871-5075', 'GPS: 293.1096496582, -581.65838623047', '2021-01-17 20:05:50', 1, 0),
(931, 'mecano', '248-6771', 'De #318-8187 : Bonjour, ma voiture est en panne. Pouvez-vous intervenir ? 2461.2661132812, 2219.3806152344', '2021-01-18 15:54:57', 0, 0),
(438, '665-4821', '871-5075', 'GPS: 301.01541137695, -578.39099121094', '2021-01-17 20:06:43', 1, 0),
(929, 'mecano', '798-9765', 'De #318-8187 : Bonjour, ma voiture est en panne. Pouvez-vous intervenir ? 2461.2661132812, 2219.3806152344', '2021-01-18 15:54:57', 0, 0),
(928, '665-4821', '318-8187', '13', '2021-01-18 15:53:30', 1, 1),
(927, '318-8187', '665-4821', '13', '2021-01-18 15:53:30', 1, 0),
(441, '318-8187', '871-5075', 'patron', '2021-01-17 20:10:39', 1, 0),
(442, '871-5075', '318-8187', 'patron', '2021-01-17 20:10:40', 1, 1),
(926, 'ambulance', '318-8187', 'De #874-3767 : Besoin de soins 314.41036987304, -587.34521484375', '2021-01-18 15:48:07', 1, 0),
(925, 'ambulance', '665-4821', 'De #874-3767 : Besoin de soins 314.41036987304, -587.34521484375', '2021-01-18 15:48:07', 1, 0),
(924, 'ambulance', '318-8187', 'De #874-3767 : Besoin de soins 314.41036987304, -587.34521484375', '2021-01-18 15:48:00', 1, 0),
(448, '665-4821', '871-5075', 'jarrive', '2021-01-17 20:14:02', 1, 1),
(922, '871-5075', '318-8187', '13', '2021-01-18 15:46:54', 1, 1),
(923, 'ambulance', '665-4821', 'De #874-3767 : Besoin de soins 314.41036987304, -587.34521484375', '2021-01-18 15:48:00', 1, 0),
(451, '665-4821', '871-5075', 'je suis hopital t ou', '2021-01-17 20:14:13', 1, 1),
(920, '183-1880', '732-5579', 'salut cest travis(bloods) tu es ou?', '2021-01-18 15:45:26', 1, 1),
(919, '732-5579', '183-1880', 'salut cest travis(bloods) tu es ou?', '2021-01-18 15:45:26', 0, 0),
(918, 'ambulance', '665-4821', 'De #318-6568 : Attention médicale requise: citoyen inconscient! 9.238989830017, -1039.982421875', '2021-01-18 15:44:08', 1, 0),
(916, 'police', '226-7457', 'De #318-6568 : Agression 426.39135742188, -982.62939453125', '2021-01-18 15:37:48', 1, 0),
(921, '318-8187', '871-5075', '13', '2021-01-18 15:46:54', 1, 0),
(917, 'ambulance', '318-8187', 'De #318-6568 : Attention médicale requise: citoyen inconscient! 9.238989830017, -1039.982421875', '2021-01-18 15:44:08', 1, 0),
(915, 'police', '926-7757', 'De #318-6568 : Agression 426.39135742188, -982.62939453125', '2021-01-18 15:37:48', 0, 0),
(914, 'police', '837-8303', 'De #318-6568 : Agression 426.39135742188, -982.62939453125', '2021-01-18 15:37:48', 1, 0),
(913, 'police', '874-3767', 'De #318-6568 : Agression 426.39135742188, -982.62939453125', '2021-01-18 15:37:48', 1, 0),
(912, 'police', '226-7457', 'De #318-6568 : Agression 426.39251708984, -982.63995361328', '2021-01-18 15:37:45', 1, 0),
(911, 'police', '926-7757', 'De #318-6568 : Agression 426.39251708984, -982.63995361328', '2021-01-18 15:37:45', 0, 0),
(910, 'police', '837-8303', 'De #318-6568 : Agression 426.39251708984, -982.63995361328', '2021-01-18 15:37:45', 1, 0),
(462, '318-8187', '871-5075', 'dans le bureau xd', '2021-01-17 20:44:09', 1, 0),
(463, '871-5075', '318-8187', 'dans le bureau xd', '2021-01-17 20:44:09', 1, 1),
(464, '871-5075', '318-8187', 'uii tkt $', '2021-01-17 20:44:22', 1, 0),
(465, '318-8187', '871-5075', 'uii tkt $', '2021-01-17 20:44:22', 1, 1),
(466, '871-5075', '318-8187', 'ta vu elle ve rester avec moi seul', '2021-01-17 20:44:36', 1, 0),
(467, '318-8187', '871-5075', 'ta vu elle ve rester avec moi seul', '2021-01-17 20:44:36', 1, 1),
(468, '318-8187', '871-5075', 'elle veut te ken', '2021-01-17 20:44:54', 1, 0),
(469, '871-5075', '318-8187', 'elle veut te ken', '2021-01-17 20:44:54', 1, 1),
(470, '871-5075', '318-8187', 'c moi qui va la ken', '2021-01-17 20:45:21', 1, 0),
(471, '318-8187', '871-5075', 'c moi qui va la ken', '2021-01-17 20:45:22', 1, 1),
(472, '318-8187', '871-5075', 'taxi', '2021-01-17 20:45:51', 1, 0),
(473, '871-5075', '318-8187', 'taxi', '2021-01-17 20:45:52', 1, 1),
(474, '208-3420', '871-5075', 'vous êtes la?', '2021-01-17 20:45:54', 1, 0),
(475, '871-5075', '208-3420', 'vous êtes la?', '2021-01-17 20:45:55', 1, 1),
(476, '871-5075', '208-3420', 'uii', '2021-01-17 20:46:09', 1, 0),
(477, '208-3420', '871-5075', 'uii', '2021-01-17 20:46:09', 1, 1),
(478, '208-3420', '871-5075', 'jvous envoie un pose', '2021-01-17 20:46:15', 1, 0),
(479, '871-5075', '208-3420', 'jvous envoie un pose', '2021-01-17 20:46:15', 1, 1),
(480, '871-5075', '318-8187', 'de quoi', '2021-01-17 20:46:17', 1, 0),
(481, '318-8187', '871-5075', 'de quoi', '2021-01-17 20:46:17', 1, 1),
(482, '871-5075', '318-8187', '??', '2021-01-17 20:46:19', 1, 0),
(483, '318-8187', '871-5075', '??', '2021-01-17 20:46:19', 1, 1),
(484, '871-5075', '208-3420', 'pk ??', '2021-01-17 20:46:27', 1, 0),
(485, '208-3420', '871-5075', 'pk ??', '2021-01-17 20:46:28', 1, 1),
(486, '318-8187', '871-5075', 'le mec', '2021-01-17 20:46:31', 1, 0),
(487, '871-5075', '318-8187', 'le mec', '2021-01-17 20:46:31', 1, 1),
(488, '208-3420', '871-5075', 'bh parler ^^', '2021-01-17 20:46:34', 1, 0),
(489, '871-5075', '208-3420', 'bh parler ^^', '2021-01-17 20:46:34', 1, 1),
(490, '871-5075', '208-3420', 'ok', '2021-01-17 20:46:42', 1, 0),
(491, '208-3420', '871-5075', 'ok', '2021-01-17 20:46:42', 1, 1),
(492, '208-3420', '871-5075', 'amener de quoi', '2021-01-17 20:46:54', 1, 0),
(493, '871-5075', '208-3420', 'amener de quoi', '2021-01-17 20:46:54', 1, 1),
(494, '208-3420', '871-5075', 'coquin', '2021-01-17 20:48:14', 1, 0),
(495, '871-5075', '208-3420', 'coquin', '2021-01-17 20:48:15', 1, 1),
(496, '871-5075', '208-3420', 'c qui', '2021-01-17 20:48:27', 1, 0),
(497, '208-3420', '871-5075', 'c qui', '2021-01-17 20:48:27', 1, 1),
(498, '871-5075', '318-8187', 'c qui', '2021-01-17 20:48:34', 1, 0),
(499, '318-8187', '871-5075', 'c qui', '2021-01-17 20:48:34', 1, 1),
(500, '318-8187', '871-5075', 'jsp', '2021-01-17 20:49:33', 1, 0),
(501, '871-5075', '318-8187', 'jsp', '2021-01-17 20:49:33', 1, 1),
(502, '318-8187', '871-5075', 'alors patron danq lit', '2021-01-17 20:52:59', 1, 0),
(503, '871-5075', '318-8187', 'alors patron danq lit', '2021-01-17 20:52:59', 1, 1),
(504, '871-5075', '318-8187', 'je lai en mener au millieu d\'un lac t ou', '2021-01-17 20:56:07', 1, 0),
(505, '318-8187', '871-5075', 'je lai en mener au millieu d\'un lac t ou', '2021-01-17 20:56:07', 1, 1),
(506, '318-8187', '871-5075', 'comico', '2021-01-17 20:57:09', 1, 0),
(507, '871-5075', '318-8187', 'comico', '2021-01-17 20:57:09', 1, 1),
(508, '871-5075', '318-8187', 'ta un probleme tu veut je vien', '2021-01-17 20:57:27', 1, 0),
(509, '318-8187', '871-5075', 'ta un probleme tu veut je vien', '2021-01-17 20:57:27', 1, 1),
(510, '318-8187', '871-5075', 'non tkt  profite', '2021-01-17 20:57:51', 1, 0),
(511, '871-5075', '318-8187', 'non tkt  profite', '2021-01-17 20:57:52', 1, 1),
(512, '318-8187', '871-5075', 'jme balade en scoot', '2021-01-17 20:59:21', 1, 0),
(513, '871-5075', '318-8187', 'jme balade en scoot', '2021-01-17 20:59:21', 1, 1),
(909, 'police', '874-3767', 'De #318-6568 : Agression 426.39251708984, -982.63995361328', '2021-01-18 15:37:45', 1, 0),
(515, 'ambulance', '803-2479', 'De #913-2043 : Attention médicale requise: citoyen inconscient! 457.82272338868, -1129.1550292968', '2021-01-17 21:00:06', 1, 0),
(516, '871-5075', '318-8187', 'att', '2021-01-17 21:04:58', 1, 0),
(517, '318-8187', '871-5075', 'att', '2021-01-17 21:04:58', 1, 1),
(518, '871-5075', '318-8187', 'vien je temboche', '2021-01-17 21:05:06', 1, 0),
(519, '318-8187', '871-5075', 'vien je temboche', '2021-01-17 21:05:06', 1, 1),
(520, '318-8187', '871-5075', 'je suis la', '2021-01-17 21:05:57', 1, 0),
(521, '871-5075', '318-8187', 'je suis la', '2021-01-17 21:05:57', 1, 1),
(522, '318-8187', '871-5075', 'a hopital', '2021-01-17 21:06:37', 1, 0),
(523, '871-5075', '318-8187', 'a hopital', '2021-01-17 21:06:37', 1, 1),
(524, '318-8187', '871-5075', 'patron vous etes en vie', '2021-01-17 21:07:43', 1, 0),
(525, '871-5075', '318-8187', 'patron vous etes en vie', '2021-01-17 21:07:44', 1, 1),
(526, '871-5075', '318-8187', 'uii', '2021-01-17 21:07:57', 1, 0),
(527, '318-8187', '871-5075', 'uii', '2021-01-17 21:07:57', 1, 1),
(528, '871-5075', '318-8187', 'je baise', '2021-01-17 21:08:02', 1, 0),
(529, '318-8187', '871-5075', 'je baise', '2021-01-17 21:08:02', 1, 1),
(530, '871-5075', '318-8187', 'nn deconne', '2021-01-17 21:08:07', 1, 0),
(531, '318-8187', '871-5075', 'nn deconne', '2021-01-17 21:08:07', 1, 1),
(532, 'ambulance', '803-2479', 'De #476-2274 : Attention médicale requise: citoyen inconscient! -1180.6221923828, -513.43438720704', '2021-01-17 21:11:09', 0, 0),
(908, 'police', '226-7457', 'De #318-6568 : Agression 425.37350463868, -984.80401611328', '2021-01-18 15:37:42', 1, 0),
(534, '665-4821', '871-5075', 'JAI UN PROBLEME', '2021-01-17 21:12:01', 1, 0),
(537, '665-4821', '871-5075', 'YAVAIS DES HERSE EST LES FLIC L\'ON PAS ENELVER EST SA MA CREVER MA VOIRURE', '2021-01-17 21:12:41', 1, 0),
(538, '665-4821', '871-5075', 'quoi', '2021-01-17 21:12:41', 1, 1),
(905, 'police', '874-3767', 'De #318-6568 : Agression 425.37350463868, -984.80401611328', '2021-01-18 15:37:42', 1, 0),
(906, 'police', '837-8303', 'De #318-6568 : Agression 425.37350463868, -984.80401611328', '2021-01-18 15:37:42', 1, 0),
(541, '665-4821', '871-5075', 'envoie pose', '2021-01-17 21:12:57', 1, 1),
(542, '665-4821', '871-5075', 'BEN FAIS GAFFE', '2021-01-17 21:13:04', 1, 0),
(544, '665-4821', '871-5075', 'GPS: -67.800689697266, -1359.7077636719', '2021-01-17 21:13:07', 1, 0),
(904, 'ambulance', '318-8187', 'De #792-3652 : Attention médicale requise: citoyen inconscient! -146.85838317872, -1004.6870117188', '2021-01-18 15:12:00', 1, 0),
(546, 'ambulance', '803-2479', 'De #230-5958 : Attention médicale requise: citoyen inconscient! 17.137117385864, -1365.4799804688', '2021-01-17 21:16:17', 0, 0),
(547, 'ambulance', '871-5075', 'De #230-5958 : Attention médicale requise: citoyen inconscient! 17.137117385864, -1365.4799804688', '2021-01-17 21:16:17', 1, 0),
(907, 'police', '926-7757', 'De #318-6568 : Agression 425.37350463868, -984.80401611328', '2021-01-18 15:37:42', 0, 0),
(903, 'ambulance', '665-4821', 'De #792-3652 : Attention médicale requise: citoyen inconscient! -146.85838317872, -1004.6870117188', '2021-01-18 15:12:00', 1, 0),
(549, '318-8187', '871-5075', 'patron je me sans mal', '2021-01-17 21:19:02', 1, 0),
(550, '871-5075', '318-8187', 'patron je me sans mal', '2021-01-17 21:19:02', 1, 1),
(551, '871-5075', '318-8187', 'c bon vien hopital', '2021-01-17 21:19:49', 1, 0),
(552, '318-8187', '871-5075', 'c bon vien hopital', '2021-01-17 21:19:49', 1, 1),
(553, '318-8187', '871-5075', 'ji suis', '2021-01-17 21:20:03', 1, 0),
(554, '871-5075', '318-8187', 'ji suis', '2021-01-17 21:20:03', 1, 1);
INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(902, '871-5075', '665-4821', 'tes la ?', '2021-01-18 15:06:41', 1, 1),
(556, 'ambulance', '871-5075', 'De #476-2274 : Attention médicale requise: citoyen inconscient! -29.706115722656, -1253.7005615234', '2021-01-17 21:20:56', 1, 0),
(557, '871-5075', '318-8187', 'jisuis', '2021-01-17 21:20:57', 1, 0),
(558, '318-8187', '871-5075', 'jisuis', '2021-01-17 21:20:57', 1, 1),
(559, '871-5075', '318-8187', 't ou', '2021-01-17 21:21:01', 1, 0),
(560, '318-8187', '871-5075', 't ou', '2021-01-17 21:21:01', 1, 1),
(901, '665-4821', '871-5075', 'tes la ?', '2021-01-18 15:06:41', 1, 0),
(561, '318-8187', '871-5075', 'couchz sur le trotoir', '2021-01-17 21:21:29', 1, 0),
(562, '871-5075', '318-8187', 'couchz sur le trotoir', '2021-01-17 21:21:29', 1, 1),
(563, '871-5075', '318-8187', 'envoie pose', '2021-01-17 21:22:12', 1, 0),
(564, '318-8187', '871-5075', 'envoie pose', '2021-01-17 21:22:12', 1, 1),
(565, '318-8187', '871-5075', 'a hopital', '2021-01-17 21:22:36', 1, 0),
(566, '871-5075', '318-8187', 'a hopital', '2021-01-17 21:22:37', 1, 1),
(567, '318-8187', '871-5075', 'sur le trotoir', '2021-01-17 21:22:44', 1, 0),
(568, '871-5075', '318-8187', 'sur le trotoir', '2021-01-17 21:22:45', 1, 1),
(569, '318-8187', '871-5075', 'jme suis fait taper', '2021-01-17 21:22:57', 1, 0),
(570, '871-5075', '318-8187', 'jme suis fait taper', '2021-01-17 21:22:57', 1, 1),
(571, '871-5075', '404-4957', 'les ga vous avez des arme a me proposer', '2021-01-17 21:27:41', 1, 0),
(572, '404-4957', '871-5075', 'les ga vous avez des arme a me proposer', '2021-01-17 21:27:41', 1, 1),
(573, '404-4957', '871-5075', 'Je suis pas vendeur d\'arme', '2021-01-17 21:27:57', 1, 0),
(574, '871-5075', '404-4957', 'Je suis pas vendeur d\'arme', '2021-01-17 21:27:57', 1, 1),
(575, '871-5075', '404-4957', 'a pgv', '2021-01-17 21:28:16', 1, 0),
(576, '404-4957', '871-5075', 'a pgv', '2021-01-17 21:28:16', 1, 1),
(577, '871-5075', '318-8187', 'elle entrain se faire belle pour moi', '2021-01-17 21:31:06', 1, 0),
(578, '318-8187', '871-5075', 'elle entrain se faire belle pour moi', '2021-01-17 21:31:06', 1, 1),
(579, '318-8187', '871-5075', 'patron va pecho', '2021-01-17 21:31:37', 1, 0),
(580, '871-5075', '318-8187', 'patron va pecho', '2021-01-17 21:31:37', 1, 1),
(582, 'ambulance', '871-5075', 'De #718-6306 : Attention médicale requise: citoyen inconscient! -32.421573638916, -1318.906616211', '2021-01-17 21:32:01', 1, 0),
(583, 'ambulance', '318-8187', 'De #718-6306 : Attention médicale requise: citoyen inconscient! -32.421573638916, -1318.906616211', '2021-01-17 21:32:01', 1, 0),
(584, 'ambulance', '318-8187', 'De #466-7213 : Attention médicale requise: citoyen inconscient! 315.73538208008, -1512.1962890625', '2021-01-17 21:34:06', 1, 0),
(585, 'ambulance', '871-5075', 'De #466-7213 : Attention médicale requise: citoyen inconscient! 315.73538208008, -1512.1962890625', '2021-01-17 21:34:06', 1, 0),
(900, 'ambulance', '318-8187', 'De #318-8187 : Attention médicale requise: citoyen inconscient! 201.04638671875, -698.20434570312', '2021-01-18 14:58:46', 1, 0),
(587, '665-4821', '871-5075', 'TES OU?', '2021-01-17 21:35:20', 1, 0),
(899, 'ambulance', '318-8187', 'De #798-9765 : Attention médicale requise: citoyen inconscient! 2331.34375, 2588.4038085938', '2021-01-18 14:43:19', 1, 0),
(590, '665-4821', '871-5075', 'dans la voiture', '2021-01-17 21:38:47', 1, 1),
(591, '871-5075', '318-8187', 'ta besoin coup main', '2021-01-17 21:39:02', 1, 0),
(592, '318-8187', '871-5075', 'ta besoin coup main', '2021-01-17 21:39:02', 1, 1),
(593, '318-8187', '871-5075', 'oui tu peux venir me chercher auto ecole', '2021-01-17 21:39:30', 1, 0),
(594, '871-5075', '318-8187', 'oui tu peux venir me chercher auto ecole', '2021-01-17 21:39:30', 1, 1),
(595, '318-8187', '871-5075', 'PATRON', '2021-01-17 21:42:27', 1, 0),
(596, '871-5075', '318-8187', 'PATRON', '2021-01-17 21:42:27', 1, 1),
(597, 'mecano', '913-2043', 'De #411-9915 : Bonsoir je suis dans votre garage pour une custop êtes vous dispo merci -210.59440612792, -1331.1005859375', '2021-01-17 21:44:23', 1, 0),
(598, 'mecano', '208-3420', 'De #411-9915 : Bonsoir je suis dans votre garage pour une custop êtes vous dispo merci -210.59440612792, -1331.1005859375', '2021-01-17 21:44:23', 1, 0),
(599, 'mecano', '913-2043', 'De #411-9915 : Bonjour, ma voiture est en panne. Pouvez-vous intervenir ? -215.08518981934, -1326.0267333984', '2021-01-17 21:45:06', 1, 0),
(600, 'mecano', '208-3420', 'De #411-9915 : Bonjour, ma voiture est en panne. Pouvez-vous intervenir ? -215.08518981934, -1326.0267333984', '2021-01-17 21:45:06', 1, 0),
(601, '871-5075', '318-8187', 'uii', '2021-01-17 21:49:54', 1, 0),
(602, '318-8187', '871-5075', 'uii', '2021-01-17 21:49:54', 1, 1),
(603, '318-8187', '871-5075', 'JE CSUIS A HOPITAL', '2021-01-17 21:50:12', 1, 0),
(604, '871-5075', '318-8187', 'JE CSUIS A HOPITAL', '2021-01-17 21:50:13', 1, 1),
(605, '871-5075', '318-8187', 'c bon', '2021-01-17 21:50:23', 1, 0),
(606, '318-8187', '871-5075', 'c bon', '2021-01-17 21:50:23', 1, 1),
(607, '318-8187', '871-5075', 'OUI', '2021-01-17 21:50:41', 1, 0),
(608, '871-5075', '318-8187', 'OUI', '2021-01-17 21:50:41', 1, 1),
(609, '871-5075', '318-8187', 'va sur le discord ems', '2021-01-17 21:50:55', 1, 0),
(610, '318-8187', '871-5075', 'va sur le discord ems', '2021-01-17 21:50:55', 1, 1),
(611, '318-8187', '871-5075', 'OUI', '2021-01-17 21:51:16', 1, 0),
(612, '871-5075', '318-8187', 'OUI', '2021-01-17 21:51:17', 1, 1),
(613, '871-5075', '318-8187', 'il y un salon', '2021-01-17 21:51:36', 1, 0),
(614, '318-8187', '871-5075', 'il y un salon', '2021-01-17 21:51:36', 1, 1),
(615, '318-8187', '871-5075', 'OUI', '2021-01-17 21:51:56', 1, 0),
(616, '871-5075', '318-8187', 'OUI', '2021-01-17 21:51:56', 1, 1),
(617, '318-8187', '871-5075', 'PATRON', '2021-01-17 21:52:39', 1, 0),
(618, '871-5075', '318-8187', 'PATRON', '2021-01-17 21:52:39', 1, 1),
(619, '871-5075', '318-8187', 'c ecrit quand tu prend ton service', '2021-01-17 21:52:57', 1, 0),
(620, '318-8187', '871-5075', 'c ecrit quand tu prend ton service', '2021-01-17 21:52:57', 1, 1),
(621, '318-8187', '871-5075', 'JE SUIS EN SERVICE', '2021-01-17 21:53:24', 1, 0),
(622, '871-5075', '318-8187', 'JE SUIS EN SERVICE', '2021-01-17 21:53:24', 1, 1),
(623, '871-5075', '318-8187', 'uii mes note tout tes facture', '2021-01-17 21:53:37', 1, 0),
(624, '318-8187', '871-5075', 'uii mes note tout tes facture', '2021-01-17 21:53:38', 1, 1),
(625, 'ambulance', '871-5075', 'De #518-1931 : Attention médicale requise: citoyen inconscient! 493.13385009766, -1009.8157348632', '2021-01-17 21:53:55', 1, 0),
(626, 'ambulance', '318-8187', 'De #518-1931 : Attention médicale requise: citoyen inconscient! 493.13385009766, -1009.8157348632', '2021-01-17 21:53:55', 1, 0),
(897, '871-5075', '318-8187', 'YO', '2021-01-18 14:28:47', 1, 1),
(898, 'ambulance', '318-8187', 'De #318-8187 : Besoin de soins 202.39735412598, 149.49159240722', '2021-01-18 14:33:37', 1, 0),
(628, 'police', '633-1896', 'De #518-1931 : fsp ntm mange tes mort 493.13385009766, -1009.8157348632', '2021-01-17 21:54:11', 1, 0),
(629, 'police', '696-4228', 'De #518-1931 : fsp ntm mange tes mort 493.13385009766, -1009.8157348632', '2021-01-17 21:54:11', 0, 0),
(630, 'police', '476-2274', 'De #518-1931 : fsp ntm mange tes mort 493.13385009766, -1009.8157348632', '2021-01-17 21:54:11', 1, 0),
(631, 'police', '884-3792', 'De #518-1931 : fsp ntm mange tes mort 493.13385009766, -1009.8157348632', '2021-01-17 21:54:11', 1, 0),
(632, 'police', '625-9830', 'De #518-1931 : fsp ntm mange tes mort 493.13385009766, -1009.8157348632', '2021-01-17 21:54:11', 1, 0),
(633, 'ambulance', '318-8187', 'De #476-2274 : Attention médicale requise: citoyen inconscient! 262.67199707032, -1055.2923583984', '2021-01-17 21:59:39', 1, 0),
(634, 'ambulance', '871-5075', 'De #476-2274 : Attention médicale requise: citoyen inconscient! 262.67199707032, -1055.2923583984', '2021-01-17 21:59:39', 1, 0),
(894, '318-8187', '665-4821', 'YO', '2021-01-18 14:28:39', 1, 0),
(895, '665-4821', '318-8187', 'YO', '2021-01-18 14:28:39', 1, 1),
(896, '318-8187', '871-5075', 'YO', '2021-01-18 14:28:47', 1, 0),
(636, '665-4821', '871-5075', 'BON ben je vais dodo comme tu va travailler', '2021-01-17 22:00:51', 1, 0),
(639, '665-4821', '871-5075', 'bonne a nuite je veux un bisous avant', '2021-01-17 22:01:10', 1, 1),
(640, '665-4821', '871-5075', 'tu le merite ?', '2021-01-17 22:01:27', 1, 0),
(893, 'mecano', '792-3652', 'De #837-8303 : Bonjours, j\'aimerais passer l\'entretiens de mon véhicules s\'il vous plaît -208.21482849122, -1296.791381836', '2021-01-18 13:35:48', 1, 0),
(642, '665-4821', '871-5075', 'ya un keuf il veux me prendre la jai rien fais', '2021-01-17 22:04:09', 1, 0),
(645, '665-4821', '871-5075', 't ou', '2021-01-17 22:05:11', 1, 1),
(647, '665-4821', '871-5075', 'uii', '2021-01-17 22:05:13', 1, 1),
(648, '665-4821', '871-5075', 'non c\'est bon je me suis barrer', '2021-01-17 22:05:28', 1, 0),
(892, 'mecano', '913-2043', 'De #837-8303 : Bonjours, j\'aimerais passer l\'entretiens de mon véhicules s\'il vous plaît -208.21482849122, -1296.791381836', '2021-01-18 13:35:48', 1, 0),
(651, '665-4821', '871-5075', 'et mon bisous vien hopital', '2021-01-17 22:05:45', 1, 1),
(652, 'ambulance', '172-8840', 'De #476-2274 : Attention médicale requise: citoyen inconscient! 360.8662109375, -794.91369628906', '2021-01-17 22:05:48', 1, 0),
(653, 'ambulance', '871-5075', 'De #476-2274 : Attention médicale requise: citoyen inconscient! 360.8662109375, -794.91369628906', '2021-01-17 22:05:48', 1, 0),
(655, 'ambulance', '318-8187', 'De #476-2274 : Attention médicale requise: citoyen inconscient! 360.8662109375, -794.91369628906', '2021-01-17 22:05:48', 1, 0),
(656, 'ambulance', '172-8840', 'De #696-4228 : Attention médicale requise: citoyen inconscient! 369.02560424804, -835.17797851562', '2021-01-17 22:05:50', 1, 0),
(657, 'ambulance', '871-5075', 'De #696-4228 : Attention médicale requise: citoyen inconscient! 369.02560424804, -835.17797851562', '2021-01-17 22:05:50', 1, 0),
(658, 'ambulance', '318-8187', 'De #696-4228 : Attention médicale requise: citoyen inconscient! 369.02560424804, -835.17797851562', '2021-01-17 22:05:50', 1, 0),
(890, '665-4821', '318-8187', 'tes en ville', '2021-01-18 13:13:21', 1, 1),
(661, '665-4821', '871-5075', 'jai enmener des jolie endroit', '2021-01-17 22:05:55', 1, 1),
(662, '665-4821', '871-5075', 'hum tes partit comme sa', '2021-01-17 22:06:22', 1, 0),
(888, 'police', '620-8384', 'De #318-6568 : Vol en cours ! -47.87483215332, -1757.2770996094', '2021-01-18 13:10:27', 0, 0),
(665, '665-4821', '871-5075', 'je tes donner de bon coeur 10 k', '2021-01-17 22:06:27', 1, 1),
(666, 'ambulance', '871-5075', 'De #913-2043 : Attention médicale requise: citoyen inconscient! 370.91174316406, -812.01123046875', '2021-01-17 22:06:35', 1, 0),
(667, 'ambulance', '172-8840', 'De #913-2043 : Attention médicale requise: citoyen inconscient! 370.91174316406, -812.01123046875', '2021-01-17 22:06:35', 1, 0),
(887, 'police', '753-4318', 'De #318-6568 : Vol en cours ! -47.87483215332, -1757.2770996094', '2021-01-18 13:10:27', 0, 0),
(669, 'ambulance', '318-8187', 'De #913-2043 : Attention médicale requise: citoyen inconscient! 370.91174316406, -812.01123046875', '2021-01-17 22:06:35', 1, 0),
(670, 'ambulance', '172-8840', 'De #208-3420 : Attention médicale requise: citoyen inconscient! 372.20364379882, -814.89764404296', '2021-01-17 22:06:37', 1, 0),
(671, 'ambulance', '871-5075', 'De #208-3420 : Attention médicale requise: citoyen inconscient! 372.20364379882, -814.89764404296', '2021-01-17 22:06:37', 1, 0),
(672, 'ambulance', '318-8187', 'De #208-3420 : Attention médicale requise: citoyen inconscient! 372.20364379882, -814.89764404296', '2021-01-17 22:06:37', 1, 0),
(886, 'police', '226-7457', 'De #318-6568 : Vol en cours ! -47.87483215332, -1757.2770996094', '2021-01-18 13:10:27', 1, 0),
(675, '665-4821', '871-5075', 'nn javais rendez avec papillon stp', '2021-01-17 22:06:42', 1, 1),
(676, '665-4821', '871-5075', 'c\'est vrais', '2021-01-17 22:06:44', 1, 0),
(884, 'police', '226-7457', 'De #318-6568 : Vol en cours ! -47.87483215332, -1757.2770996094', '2021-01-18 13:10:25', 1, 0),
(678, '208-3420', '871-5075', 'BESOIN EMS ( PERSONNE INCOSIENT )', '2021-01-17 22:06:51', 1, 0),
(679, '871-5075', '208-3420', 'BESOIN EMS ( PERSONNE INCOSIENT )', '2021-01-17 22:06:51', 1, 1),
(680, '208-3420', '871-5075', 'GPS: 372.20364379883, -814.89764404297', '2021-01-17 22:06:51', 1, 0),
(681, '871-5075', '208-3420', 'GPS: 372.20364379883, -814.89764404297', '2021-01-17 22:06:52', 1, 1),
(682, '665-4821', '871-5075', 'humm', '2021-01-17 22:06:54', 1, 0),
(891, 'mecano', '798-9765', 'De #837-8303 : Bonjours, j\'aimerais passer l\'entretiens de mon véhicules s\'il vous plaît -208.21482849122, -1296.791381836', '2021-01-18 13:35:48', 1, 0),
(889, '318-8187', '665-4821', 'tes en ville', '2021-01-18 13:13:21', 1, 0),
(885, 'police', '620-8384', 'De #318-6568 : Vol en cours ! -47.87483215332, -1757.2770996094', '2021-01-18 13:10:25', 0, 0),
(685, '665-4821', '871-5075', 'mon bisous mon nounours', '2021-01-17 22:06:58', 1, 1),
(687, '665-4821', '871-5075', 'vien hopital$', '2021-01-17 22:07:50', 1, 1),
(689, '665-4821', '871-5075', 't ou', '2021-01-17 22:12:59', 1, 1),
(883, 'police', '753-4318', 'De #318-6568 : Vol en cours ! -47.87483215332, -1757.2770996094', '2021-01-18 13:10:25', 0, 0),
(882, '318-6568', '183-1880', 'GPS: 714.14208984375, -1864.2196044922', '2021-01-18 13:08:00', 1, 1),
(690, '665-4821', '871-5075', 'GPS: 308.80014038086, -573.40228271484', '2021-01-17 22:14:02', 1, 0),
(881, '183-1880', '318-6568', 'GPS: 714.14208984375, -1864.2196044922', '2021-01-18 13:07:59', 1, 0),
(692, '625-9830', '318-8187', 'Cadet 25 James Clark', '2021-01-17 22:17:30', 1, 0),
(693, '318-8187', '625-9830', 'Cadet 25 James Clark', '2021-01-17 22:17:30', 1, 1),
(695, 'ambulance', '871-5075', 'De #464-5646 : Attention médicale requise: citoyen inconscient! 365.5940246582, -850.31860351562', '2021-01-17 22:18:47', 1, 0),
(696, 'ambulance', '172-8840', 'De #464-5646 : Attention médicale requise: citoyen inconscient! 365.5940246582, -850.31860351562', '2021-01-17 22:18:47', 1, 0),
(697, 'ambulance', '318-8187', 'De #464-5646 : Attention médicale requise: citoyen inconscient! 365.5940246582, -850.31860351562', '2021-01-17 22:18:47', 1, 0),
(727, '318-6568', '871-5075', 'oue', '2021-01-17 23:18:40', 1, 0),
(728, '871-5075', '318-6568', 'oue', '2021-01-17 23:18:40', 1, 1),
(880, 'ambulance', '318-8187', 'De #913-2043 : Attention médicale requise: citoyen inconscient! 86.337745666504, -1390.9526367188', '2021-01-18 12:53:38', 1, 0),
(699, '665-4821', '871-5075', 'bisous a demain hein', '2021-01-17 22:28:30', 1, 0),
(701, 'ambulance', '172-8840', 'De #318-8187 : Attention médicale requise: citoyen inconscient! -847.71905517578, -1146.5849609375', '2021-01-17 22:29:23', 1, 0),
(702, 'ambulance', '318-8187', 'De #318-8187 : Attention médicale requise: citoyen inconscient! -847.71905517578, -1146.5849609375', '2021-01-17 22:29:23', 1, 0),
(703, 'ambulance', '871-5075', 'De #318-8187 : Attention médicale requise: citoyen inconscient! -847.71905517578, -1146.5849609375', '2021-01-17 22:29:23', 1, 0),
(704, 'ambulance', '172-8840', 'De #464-5646 : Attention médicale requise: citoyen inconscient! 273.57403564454, -1045.125366211', '2021-01-17 22:29:49', 1, 0),
(705, 'ambulance', '318-8187', 'De #464-5646 : Attention médicale requise: citoyen inconscient! 273.57403564454, -1045.125366211', '2021-01-17 22:29:49', 1, 0),
(706, 'ambulance', '871-5075', 'De #464-5646 : Attention médicale requise: citoyen inconscient! 273.57403564454, -1045.125366211', '2021-01-17 22:29:49', 1, 0),
(708, '665-4821', '871-5075', 'bisous a demain', '2021-01-17 22:29:55', 1, 1),
(709, '871-5075', '318-8187', 't ou', '2021-01-17 22:31:14', 1, 0),
(710, '318-8187', '871-5075', 't ou', '2021-01-17 22:31:14', 1, 1),
(711, '871-5075', '318-8187', 'jai besoin te dire des truc de fou', '2021-01-17 22:31:32', 1, 0),
(712, '318-8187', '871-5075', 'jai besoin te dire des truc de fou', '2021-01-17 22:31:33', 1, 1),
(713, '318-8187', '871-5075', 'EN SERVICE', '2021-01-17 22:31:33', 1, 0),
(714, '871-5075', '318-8187', 'EN SERVICE', '2021-01-17 22:31:34', 1, 1),
(715, '871-5075', '318-8187', 'vien vocal discord EMS', '2021-01-17 22:32:53', 1, 0),
(716, '318-8187', '871-5075', 'vien vocal discord EMS', '2021-01-17 22:32:53', 1, 1),
(717, 'ambulance', '172-8840', 'De #911-1191 : Attention médicale requise: citoyen inconscient! 231.05012512208, -1040.3314208984', '2021-01-17 22:34:14', 1, 0),
(718, 'ambulance', '871-5075', 'De #911-1191 : Attention médicale requise: citoyen inconscient! 231.05012512208, -1040.3314208984', '2021-01-17 22:34:14', 1, 0),
(719, '411-9915', '172-8840', 'Sergio', '2021-01-17 22:55:25', 1, 0),
(720, '172-8840', '411-9915', 'Sergio', '2021-01-17 22:55:25', 1, 1),
(721, '185-5624', '411-9915', 'GPS: -179.77293395996, 1867.5635986328', '2021-01-17 22:56:10', 1, 0),
(722, '411-9915', '185-5624', 'GPS: -179.77293395996, 1867.5635986328', '2021-01-17 22:56:10', 1, 1),
(723, '871-5075', '411-9915', 'Moussa SNow', '2021-01-17 22:58:28', 1, 0),
(724, '411-9915', '871-5075', 'Moussa SNow', '2021-01-17 22:58:29', 1, 1),
(725, '871-5075', '411-9915', 'pdg ems', '2021-01-17 22:58:34', 1, 0),
(726, '411-9915', '871-5075', 'pdg ems', '2021-01-17 22:58:35', 1, 1),
(729, '411-9915', '871-5075', 'Rebonsoir si jamais vous avez besoin de mes service envoyer moi un message sur discord a Sergio Pakito', '2021-01-17 23:31:48', 1, 0),
(730, '871-5075', '411-9915', 'Rebonsoir si jamais vous avez besoin de mes service envoyer moi un message sur discord a Sergio Pakito', '2021-01-17 23:31:48', 1, 1),
(731, '871-5075', '411-9915', 'TU EST DISPO', '2021-01-17 23:34:01', 1, 0),
(732, '411-9915', '871-5075', 'TU EST DISPO', '2021-01-17 23:34:02', 1, 1),
(733, '871-5075', '411-9915', 'ENVOIE pose stp', '2021-01-17 23:34:08', 1, 0),
(734, '411-9915', '871-5075', 'ENVOIE pose stp', '2021-01-17 23:34:08', 1, 1),
(735, '871-5075', '318-6568', 'oggy bloods', '2021-01-17 23:34:24', 1, 0),
(736, '318-6568', '871-5075', 'oggy bloods', '2021-01-17 23:34:24', 1, 1),
(737, '411-9915', '871-5075', 'pk ?', '2021-01-17 23:34:41', 1, 0),
(738, '871-5075', '411-9915', 'pk ?', '2021-01-17 23:34:42', 1, 1),
(739, '318-6568', '871-5075', 'jpeux avoir 2 ghb vite fais la', '2021-01-17 23:34:47', 1, 0),
(740, '871-5075', '318-6568', 'jpeux avoir 2 ghb vite fais la', '2021-01-17 23:34:47', 1, 1),
(741, '411-9915', '871-5075', 'tu as besoin de quoi', '2021-01-17 23:34:58', 1, 0),
(742, '871-5075', '411-9915', 'tu as besoin de quoi', '2021-01-17 23:34:58', 1, 1),
(743, '871-5075', '318-6568', 'uii', '2021-01-17 23:34:58', 1, 0),
(744, '318-6568', '871-5075', 'uii', '2021-01-17 23:34:59', 1, 1),
(745, '871-5075', '318-6568', 'jarrive', '2021-01-17 23:35:02', 1, 0),
(746, '318-6568', '871-5075', 'jarrive', '2021-01-17 23:35:02', 1, 1),
(747, '318-6568', '871-5075', 'j\'ai un truc a faire', '2021-01-17 23:35:02', 1, 0),
(748, '871-5075', '318-6568', 'j\'ai un truc a faire', '2021-01-17 23:35:02', 1, 1),
(749, '318-6568', '871-5075', 'vient quartier', '2021-01-17 23:35:08', 1, 0),
(750, '871-5075', '318-6568', 'vient quartier', '2021-01-17 23:35:09', 1, 1),
(751, '411-9915', '871-5075', '?', '2021-01-17 23:35:14', 1, 0),
(752, '871-5075', '411-9915', '?', '2021-01-17 23:35:14', 1, 1),
(753, '871-5075', '411-9915', 'parler affaire', '2021-01-17 23:35:25', 1, 0),
(754, '411-9915', '871-5075', 'parler affaire', '2021-01-17 23:35:25', 1, 1),
(755, '411-9915', '871-5075', 'quel genre d\'affaire :)', '2021-01-17 23:35:38', 1, 0),
(756, '871-5075', '411-9915', 'quel genre d\'affaire :)', '2021-01-17 23:35:39', 1, 1),
(757, '411-9915', '871-5075', '?', '2021-01-17 23:36:46', 1, 0),
(758, '871-5075', '411-9915', '?', '2021-01-17 23:36:46', 1, 1),
(759, '871-5075', '318-6568', 'jy suis *', '2021-01-17 23:38:00', 1, 0),
(760, '318-6568', '871-5075', 'jy suis *', '2021-01-17 23:38:00', 1, 1),
(761, '871-5075', '318-6568', 't ou', '2021-01-17 23:38:04', 1, 0),
(762, '318-6568', '871-5075', 't ou', '2021-01-17 23:38:04', 1, 1),
(763, '411-9915', '871-5075', '?', '2021-01-17 23:38:05', 1, 0),
(764, '871-5075', '411-9915', '?', '2021-01-17 23:38:05', 1, 1),
(765, '318-6568', '871-5075', 'j\'arrive 30 secd', '2021-01-17 23:38:16', 1, 0),
(766, '871-5075', '318-6568', 'j\'arrive 30 secd', '2021-01-17 23:38:16', 1, 1),
(767, '871-5075', '411-9915', 'pour les jus raisin', '2021-01-17 23:38:19', 1, 0),
(768, '411-9915', '871-5075', 'pour les jus raisin', '2021-01-17 23:38:20', 1, 1),
(769, '411-9915', '871-5075', 'd\'accord', '2021-01-17 23:38:30', 1, 0),
(770, '871-5075', '411-9915', 'd\'accord', '2021-01-17 23:38:30', 1, 1),
(771, '871-5075', '318-6568', 'ok', '2021-01-17 23:38:34', 0, 0),
(772, '318-6568', '871-5075', 'ok', '2021-01-17 23:38:35', 1, 1),
(773, '411-9915', '871-5075', 'viens au vignoble', '2021-01-17 23:38:38', 1, 0),
(774, '871-5075', '411-9915', 'viens au vignoble', '2021-01-17 23:38:39', 1, 1),
(775, '871-5075', '411-9915', 'envoie pose', '2021-01-17 23:38:40', 1, 0),
(776, '411-9915', '871-5075', 'envoie pose', '2021-01-17 23:38:40', 1, 1),
(777, '411-9915', '871-5075', 'GPS: -1904.9471435547, 2068.3940429688', '2021-01-17 23:38:44', 1, 0),
(778, '871-5075', '411-9915', 'GPS: -1904.9471435547, 2068.3940429688', '2021-01-17 23:38:45', 1, 1),
(779, '871-5075', '411-9915', 'dans 5 min je suis la je fini un truc', '2021-01-17 23:38:59', 1, 0),
(780, '411-9915', '871-5075', 'dans 5 min je suis la je fini un truc', '2021-01-17 23:38:59', 1, 1),
(781, '411-9915', '871-5075', 'vas\'y tu veut le jus de raisin maintenant ou pas', '2021-01-17 23:39:19', 1, 0),
(782, '871-5075', '411-9915', 'vas\'y tu veut le jus de raisin maintenant ou pas', '2021-01-17 23:39:19', 1, 1),
(783, '411-9915', '871-5075', 'parceque on a rien de pret pour l\'instant', '2021-01-17 23:39:27', 1, 0),
(784, '871-5075', '411-9915', 'parceque on a rien de pret pour l\'instant', '2021-01-17 23:39:27', 1, 1),
(785, 'mecano', '208-3420', 'De #398-4453 : Bonjour, mon camion est en panne. Pouvez-vous intervenir ? -482.79479980468, -995.8560180664', '2021-01-17 23:41:37', 1, 0),
(786, 'mecano', '913-2043', 'De #398-4453 : Bonjour, mon camion est en panne. Pouvez-vous intervenir ? -482.79479980468, -995.8560180664', '2021-01-17 23:41:37', 1, 0),
(787, '411-9915', '871-5075', 'GPS: -1873.9168701172, 2086.4699707031', '2021-01-17 23:44:00', 1, 0),
(788, '871-5075', '411-9915', 'GPS: -1873.9168701172, 2086.4699707031', '2021-01-17 23:44:00', 1, 1),
(789, '411-9915', '871-5075', 'la terrase derriere', '2021-01-17 23:44:42', 1, 0),
(790, '871-5075', '411-9915', 'la terrase derriere', '2021-01-17 23:44:43', 1, 1),
(791, '871-5075', '411-9915', 'vizn parking', '2021-01-17 23:44:48', 1, 0),
(792, '411-9915', '871-5075', 'vizn parking', '2021-01-17 23:44:48', 1, 1),
(793, '871-5075', '411-9915', 'ok', '2021-01-17 23:44:50', 1, 0),
(794, '411-9915', '871-5075', 'ok', '2021-01-17 23:44:50', 1, 1),
(795, 'ambulance', '871-5075', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 22.496654510498, -1464.6069335938', '2021-01-17 23:48:32', 1, 0),
(796, 'ambulance', '172-8840', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 22.496654510498, -1464.6069335938', '2021-01-17 23:48:32', 1, 0),
(797, 'ambulance', '353-9631', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 22.496654510498, -1464.6069335938', '2021-01-17 23:48:32', 0, 0),
(798, '185-5624', '871-5075', 'Red Morningstar Patron Vigneron', '2021-01-17 23:48:57', 1, 0),
(799, '871-5075', '185-5624', 'Red Morningstar Patron Vigneron', '2021-01-17 23:48:57', 1, 1),
(800, 'ambulance', '172-8840', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 47.113109588624, -1496.922241211', '2021-01-17 23:49:47', 1, 0),
(801, 'ambulance', '871-5075', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 47.113109588624, -1496.922241211', '2021-01-17 23:49:47', 1, 0),
(802, 'ambulance', '353-9631', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 47.113109588624, -1496.922241211', '2021-01-17 23:49:47', 0, 0),
(803, 'ambulance', '172-8840', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 23.20767211914, -1493.2006835938', '2021-01-17 23:50:34', 1, 0),
(804, 'ambulance', '871-5075', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 23.20767211914, -1493.2006835938', '2021-01-17 23:50:34', 1, 0),
(805, 'ambulance', '913-2043', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 23.20767211914, -1493.2006835938', '2021-01-17 23:50:34', 1, 0),
(806, 'ambulance', '353-9631', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 23.20767211914, -1493.2006835938', '2021-01-17 23:50:34', 0, 0),
(807, '185-5624', '871-5075', 'Contactez moi afin que je puisse organiser votre après midi', '2021-01-17 23:51:39', 1, 0),
(808, '871-5075', '185-5624', 'Contactez moi afin que je puisse organiser votre après midi', '2021-01-17 23:51:39', 1, 1),
(809, 'ambulance', '172-8840', 'De #172-8840 : Attention médicale requise: citoyen inconscient! 38.973720550538, -1490.7319335938', '2021-01-17 23:51:56', 1, 0),
(810, 'ambulance', '871-5075', 'De #172-8840 : Attention médicale requise: citoyen inconscient! 38.973720550538, -1490.7319335938', '2021-01-17 23:51:56', 1, 0),
(811, 'ambulance', '913-2043', 'De #172-8840 : Attention médicale requise: citoyen inconscient! 38.973720550538, -1490.7319335938', '2021-01-17 23:51:56', 1, 0),
(812, 'ambulance', '353-9631', 'De #172-8840 : Attention médicale requise: citoyen inconscient! 38.973720550538, -1490.7319335938', '2021-01-17 23:51:56', 0, 0),
(813, '411-9915', '871-5075', 'n\'hesite pas a en parler aux autre pour le vins', '2021-01-17 23:51:58', 1, 0),
(814, '871-5075', '411-9915', 'n\'hesite pas a en parler aux autre pour le vins', '2021-01-17 23:51:58', 1, 1),
(815, 'ambulance', '353-9631', 'De #398-4453 : Attention médicale requise: citoyen inconscient! -454.07794189454, -753.05670166016', '2021-01-17 23:55:08', 0, 0),
(816, 'ambulance', '871-5075', 'De #398-4453 : Attention médicale requise: citoyen inconscient! -454.07794189454, -753.05670166016', '2021-01-17 23:55:08', 1, 0),
(817, 'ambulance', '172-8840', 'De #398-4453 : Attention médicale requise: citoyen inconscient! -454.07794189454, -753.05670166016', '2021-01-17 23:55:08', 1, 0),
(818, 'ambulance', '172-8840', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 54.104328155518, -1294.5455322266', '2021-01-17 23:59:11', 1, 0),
(819, 'ambulance', '353-9631', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 54.104328155518, -1294.5455322266', '2021-01-17 23:59:11', 0, 0),
(879, '665-4821', '318-8187', 'tes ou', '2021-01-18 12:32:43', 1, 1),
(820, '318-8187', '871-5075', 'patron', '2021-01-18 08:55:58', 1, 0),
(821, '871-5075', '318-8187', 'patron', '2021-01-18 08:55:58', 1, 1),
(822, '185-5624', '226-7457', 'Red Morningstar', '2021-01-18 10:10:26', 1, 0),
(823, '226-7457', '185-5624', 'Red Morningstar', '2021-01-18 10:10:26', 1, 1),
(824, '226-7457', '185-5624', 'le mec qui fait plein de metier', '2021-01-18 10:10:51', 1, 0),
(825, '185-5624', '226-7457', 'le mec qui fait plein de metier', '2021-01-18 10:10:51', 1, 1),
(826, '237-4103', '792-3652', 'T la ?', '2021-01-18 11:25:12', 1, 0),
(827, '792-3652', '237-4103', 'T la ?', '2021-01-18 11:25:12', 1, 1),
(828, '792-3652', '237-4103', 'oui', '2021-01-18 11:25:21', 1, 0),
(829, '237-4103', '792-3652', 'oui', '2021-01-18 11:25:22', 1, 1),
(830, '237-4103', '792-3652', 'tu peux venir me recup', '2021-01-18 11:25:32', 1, 0),
(831, '792-3652', '237-4103', 'tu peux venir me recup', '2021-01-18 11:25:32', 1, 1),
(832, '792-3652', '237-4103', 'oui', '2021-01-18 11:25:41', 1, 0),
(833, '237-4103', '792-3652', 'oui', '2021-01-18 11:25:41', 1, 1),
(834, '237-4103', '792-3652', 'GPS: -379.13616943359, -1114.0358886719', '2021-01-18 11:25:47', 1, 0),
(835, '792-3652', '237-4103', 'GPS: -379.13616943359, -1114.0358886719', '2021-01-18 11:25:47', 1, 1),
(836, '237-4103', '792-3652', 'je dois te dire un truc apres', '2021-01-18 11:29:27', 1, 0),
(837, '792-3652', '237-4103', 'je dois te dire un truc apres', '2021-01-18 11:29:27', 1, 1),
(838, '792-3652', '237-4103', 'ok att  min', '2021-01-18 11:29:40', 1, 0),
(839, '237-4103', '792-3652', 'ok att  min', '2021-01-18 11:29:40', 1, 1),
(840, '237-4103', '792-3652', 'vsy vsy', '2021-01-18 11:29:45', 1, 0),
(841, '792-3652', '237-4103', 'vsy vsy', '2021-01-18 11:29:45', 1, 1),
(842, '237-4103', '792-3652', 'y a mon cous qui arrive en ville tu peux le recruter dans la mafia', '2021-01-18 11:31:22', 1, 0),
(843, '792-3652', '237-4103', 'y a mon cous qui arrive en ville tu peux le recruter dans la mafia', '2021-01-18 11:31:22', 1, 1),
(878, '318-8187', '665-4821', 'tes ou', '2021-01-18 12:32:43', 1, 0),
(845, '792-3652', '237-4103', 'on verra', '2021-01-18 11:31:34', 1, 0),
(846, '237-4103', '792-3652', 'on verra', '2021-01-18 11:31:34', 1, 1),
(847, '237-4103', '792-3652', 'ok', '2021-01-18 11:31:40', 1, 0),
(848, '792-3652', '237-4103', 'ok', '2021-01-18 11:31:40', 1, 1),
(877, '318-8187', '665-4821', 'C\'est noemie', '2021-01-18 12:22:59', 1, 1),
(849, '237-4103', '792-3652', 'je prend ton véhicule je vais aller le chercher ok ?', '2021-01-18 11:32:04', 1, 0),
(850, '792-3652', '237-4103', 'je prend ton véhicule je vais aller le chercher ok ?', '2021-01-18 11:32:04', 1, 1),
(851, '792-3652', '237-4103', 'elle est ou lma voiture', '2021-01-18 11:43:47', 1, 0),
(852, '237-4103', '792-3652', 'elle est ou lma voiture', '2021-01-18 11:43:47', 1, 1),
(853, '237-4103', '792-3652', 'GPS: -797.80999755859, -97.29615020752', '2021-01-18 11:43:50', 1, 0),
(854, '792-3652', '237-4103', 'GPS: -797.80999755859, -97.29615020752', '2021-01-18 11:43:51', 1, 1),
(855, '792-3652', '237-4103', 'GPS: -206.92074584961, -1324.3697509766', '2021-01-18 11:43:59', 1, 0),
(856, '237-4103', '792-3652', 'GPS: -206.92074584961, -1324.3697509766', '2021-01-18 11:43:59', 1, 1),
(857, '237-4103', '792-3652', 'tu ma pas laisse la prendre', '2021-01-18 11:44:19', 1, 0),
(858, '792-3652', '237-4103', 'tu ma pas laisse la prendre', '2021-01-18 11:44:19', 1, 1),
(859, '237-4103', '792-3652', 'je l\'ai pas prise', '2021-01-18 11:44:44', 1, 0),
(860, '792-3652', '237-4103', 'je l\'ai pas prise', '2021-01-18 11:44:45', 1, 1),
(861, '792-3652', '237-4103', 'GPS: -210.68663024902, -1308.0197753906', '2021-01-18 11:44:49', 1, 0),
(862, '237-4103', '792-3652', 'GPS: -210.68663024902, -1308.0197753906', '2021-01-18 11:44:49', 1, 1),
(863, '318-8187', '871-5075', 'patron', '2021-01-18 12:04:18', 1, 0),
(864, '871-5075', '318-8187', 'patron', '2021-01-18 12:04:19', 1, 1),
(865, '237-4103', '792-3652', 't ou ?', '2021-01-18 12:07:50', 1, 0),
(866, '792-3652', '237-4103', 't ou ?', '2021-01-18 12:07:50', 1, 1),
(867, '567-3868', '237-4103', 'sly', '2021-01-18 12:12:18', 1, 0),
(868, '237-4103', '567-3868', 'sly', '2021-01-18 12:12:19', 1, 1),
(869, '567-3868', '237-4103', 'Kyle', '2021-01-18 12:12:53', 1, 0),
(870, '237-4103', '567-3868', 'Kyle', '2021-01-18 12:12:54', 1, 1),
(876, '665-4821', '318-8187', 'C\'est noemie', '2021-01-18 12:22:59', 1, 0),
(872, '913-2043', '824-2255', '.', '2021-01-18 12:19:58', 1, 0),
(873, '824-2255', '913-2043', '.', '2021-01-18 12:19:59', 1, 1),
(874, '824-2255', '913-2043', 'junior', '2021-01-18 12:20:05', 1, 0),
(875, '913-2043', '824-2255', 'junior', '2021-01-18 12:20:05', 1, 1),
(938, 'police', '226-7457', 'De #318-6568 : Vol en cours ! -1222.5057373046, -906.92645263672', '2021-01-18 15:57:13', 0, 0),
(939, 'police', '219-7517', 'De #318-6568 : Vol en cours ! -1222.5057373046, -906.92645263672', '2021-01-18 15:57:13', 1, 0),
(940, 'police', '874-3767', 'De #318-6568 : Vol en cours ! -1222.5057373046, -906.92645263672', '2021-01-18 15:57:17', 1, 0),
(941, 'police', '837-8303', 'De #318-6568 : Vol en cours ! -1222.5057373046, -906.92645263672', '2021-01-18 15:57:17', 1, 0),
(942, 'police', '353-9631', 'De #318-6568 : Vol en cours ! -1222.5057373046, -906.92645263672', '2021-01-18 15:57:17', 0, 0),
(943, 'police', '926-7757', 'De #318-6568 : Vol en cours ! -1222.5057373046, -906.92645263672', '2021-01-18 15:57:17', 0, 0),
(944, 'police', '620-8384', 'De #318-6568 : Vol en cours ! -1222.5057373046, -906.92645263672', '2021-01-18 15:57:17', 0, 0),
(945, 'police', '219-7517', 'De #318-6568 : Vol en cours ! -1222.5057373046, -906.92645263672', '2021-01-18 15:57:17', 1, 0),
(946, 'police', '226-7457', 'De #318-6568 : Vol en cours ! -1222.5057373046, -906.92645263672', '2021-01-18 15:57:17', 0, 0),
(947, '792-3652', '495-4532', 'GPS: 2329.3156738281, 2571.5512695312', '2021-01-18 15:58:14', 1, 0),
(948, '495-4532', '792-3652', 'GPS: 2329.3156738281, 2571.5512695312', '2021-01-18 15:58:14', 1, 1),
(949, 'ambulance', '318-8187', 'De #614-3866 : Attention médicale requise: citoyen inconscient! 982.43096923828, -1653.5341796875', '2021-01-18 15:58:15', 1, 0),
(950, 'ambulance', '665-4821', 'De #614-3866 : Attention médicale requise: citoyen inconscient! 982.43096923828, -1653.5341796875', '2021-01-18 15:58:15', 1, 0),
(951, '665-4821', '318-8187', 'tes ou ?', '2021-01-18 15:58:32', 1, 0),
(952, '318-8187', '665-4821', 'tes ou ?', '2021-01-18 15:58:32', 1, 1),
(953, 'mecano', '495-4532', 'De #730-2027 : Bonjour, mon camion est en panne. Pouvez-vous intervenir ? 211.09341430664, -699.1303100586', '2021-01-18 16:09:43', 1, 0),
(954, 'mecano', '248-6771', 'De #730-2027 : Bonjour, mon camion est en panne. Pouvez-vous intervenir ? 211.09341430664, -699.1303100586', '2021-01-18 16:09:43', 0, 0),
(955, 'mecano', '792-3652', 'De #730-2027 : Bonjour, mon camion est en panne. Pouvez-vous intervenir ? 211.09341430664, -699.1303100586', '2021-01-18 16:09:43', 1, 0),
(956, 'mecano', '220-2090', 'De #730-2027 : Bonjour, mon camion est en panne. Pouvez-vous intervenir ? 211.09341430664, -699.1303100586', '2021-01-18 16:09:43', 1, 0),
(957, 'mecano', '798-9765', 'De #730-2027 : Bonjour, mon camion est en panne. Pouvez-vous intervenir ? 211.09341430664, -699.1303100586', '2021-01-18 16:09:43', 0, 0),
(958, 'ambulance', '318-8187', 'De #640-9016 : Besoin de soins 303.44464111328, -594.8876953125', '2021-01-18 16:17:26', 1, 0),
(959, 'ambulance', '665-4821', 'De #640-9016 : Besoin de soins 303.44464111328, -594.8876953125', '2021-01-18 16:17:26', 1, 0),
(960, 'ambulance', '665-4821', 'De #640-9016 : Besoin de soins 303.44464111328, -594.8876953125', '2021-01-18 16:17:36', 1, 0),
(961, 'ambulance', '318-8187', 'De #640-9016 : Besoin de soins 303.44464111328, -594.8876953125', '2021-01-18 16:17:36', 1, 0),
(962, 'ambulance', '665-4821', 'De #640-9016 : Besoin de soins 303.44464111328, -594.8876953125', '2021-01-18 16:17:45', 1, 0),
(963, 'ambulance', '318-8187', 'De #640-9016 : Besoin de soins 303.44464111328, -594.8876953125', '2021-01-18 16:17:45', 1, 0),
(964, 'ambulance', '318-8187', 'De #248-6771 : Attention médicale requise: citoyen inconscient! 365.10479736328, -564.13952636718', '2021-01-18 16:24:58', 1, 0),
(965, 'ambulance', '665-4821', 'De #248-6771 : Attention médicale requise: citoyen inconscient! 365.10479736328, -564.13952636718', '2021-01-18 16:24:58', 1, 0),
(966, 'ambulance', '318-8187', 'De #792-3652 : Attention médicale requise: citoyen inconscient! 1158.3156738282, 2155.0725097656', '2021-01-18 16:28:17', 1, 0),
(967, 'ambulance', '665-4821', 'De #792-3652 : Attention médicale requise: citoyen inconscient! 1158.3156738282, 2155.0725097656', '2021-01-18 16:28:17', 1, 0),
(968, 'ambulance', '665-4821', 'De #730-2027 : Attention médicale requise: citoyen inconscient! 2321.7966308594, 2582.9577636718', '2021-01-18 16:33:44', 1, 0),
(969, 'ambulance', '665-4821', 'De #640-9016 : Attention médicale requise: citoyen inconscient! 94.691955566406, -2204.5075683594', '2021-01-18 16:33:47', 1, 0),
(970, 'ambulance', '665-4821', 'De #730-2027 : Réanimation 2318.5029296875, 2588.9836425782', '2021-01-18 16:33:53', 1, 0),
(971, 'ambulance', '665-4821', 'De #730-2027 : Besoin de soins 2318.5029296875, 2588.9836425782', '2021-01-18 16:33:57', 1, 0),
(972, 'ambulance', '665-4821', 'De #495-4532 : Attention médicale requise: citoyen inconscient! 1086.1000976562, 1880.3184814454', '2021-01-18 16:34:34', 1, 0),
(973, '318-8187', '871-5075', 'PATRON', '2021-01-18 16:47:22', 1, 0),
(974, '871-5075', '318-8187', 'PATRON', '2021-01-18 16:47:22', 1, 1),
(975, '792-3652', '495-4532', 'GPS: 839.80883789062, 2174.7487792969', '2021-01-18 16:52:41', 1, 0),
(976, '495-4532', '792-3652', 'GPS: 839.80883789062, 2174.7487792969', '2021-01-18 16:52:41', 1, 1),
(977, '871-5075', '185-5624', 'je vous redit sa dans quelque minute vous etes la', '2021-01-18 16:55:53', 1, 0),
(978, '185-5624', '871-5075', 'je vous redit sa dans quelque minute vous etes la', '2021-01-18 16:55:53', 1, 1),
(979, '871-5075', '318-8187', 'uii', '2021-01-18 16:56:00', 1, 0),
(980, '318-8187', '871-5075', 'uii', '2021-01-18 16:56:01', 1, 1),
(981, '871-5075', '665-4821', 'uiii', '2021-01-18 16:56:06', 1, 0),
(982, '665-4821', '871-5075', 'uiii', '2021-01-18 16:56:06', 1, 1),
(983, '665-4821', '871-5075', 'GPS: 313.31887817383, -571.7333984375', '2021-01-18 16:56:21', 1, 0),
(984, '871-5075', '665-4821', 'GPS: 313.31887817383, -571.7333984375', '2021-01-18 16:56:22', 1, 1),
(985, '871-5075', '665-4821', 'GPS: 229.70439147949, -800.11706542969', '2021-01-18 16:56:39', 1, 0),
(986, '665-4821', '871-5075', 'GPS: 229.70439147949, -800.11706542969', '2021-01-18 16:56:40', 1, 1),
(987, 'ambulance', '318-8187', 'De #330-5100 : Attention médicale requise: citoyen inconscient! -1189.3931884766, -1500.7543945312', '2021-01-18 16:57:14', 1, 0),
(988, 'ambulance', '665-4821', 'De #330-5100 : Attention médicale requise: citoyen inconscient! -1189.3931884766, -1500.7543945312', '2021-01-18 16:57:14', 1, 0),
(989, 'ambulance', '871-5075', 'De #330-5100 : Attention médicale requise: citoyen inconscient! -1189.3931884766, -1500.7543945312', '2021-01-18 16:57:14', 1, 0),
(990, '871-5075', '665-4821', 't ou', '2021-01-18 16:57:27', 1, 0),
(991, '665-4821', '871-5075', 't ou', '2021-01-18 16:57:28', 1, 1),
(992, 'ambulance', '318-8187', 'De #459-1645 : Attention médicale requise: citoyen inconscient! 92.07472229004, -794.41131591796', '2021-01-18 17:01:08', 1, 0),
(993, 'ambulance', '871-5075', 'De #459-1645 : Attention médicale requise: citoyen inconscient! 92.07472229004, -794.41131591796', '2021-01-18 17:01:08', 1, 0),
(994, 'ambulance', '665-4821', 'De #459-1645 : Attention médicale requise: citoyen inconscient! 92.07472229004, -794.41131591796', '2021-01-18 17:01:08', 1, 0),
(995, 'ambulance', '665-4821', 'De #741-6741 : Attention médicale requise: citoyen inconscient! 403.38766479492, -1085.2416992188', '2021-01-18 17:01:57', 1, 0),
(996, 'ambulance', '318-8187', 'De #741-6741 : Attention médicale requise: citoyen inconscient! 403.38766479492, -1085.2416992188', '2021-01-18 17:01:57', 1, 0),
(997, 'ambulance', '871-5075', 'De #741-6741 : Attention médicale requise: citoyen inconscient! 403.38766479492, -1085.2416992188', '2021-01-18 17:01:57', 1, 0),
(998, 'ambulance', '318-8187', 'De #188-5632 : Attention médicale requise: citoyen inconscient! 408.34866333008, -1090.94921875', '2021-01-18 17:02:09', 1, 0),
(999, 'ambulance', '871-5075', 'De #188-5632 : Attention médicale requise: citoyen inconscient! 408.34866333008, -1090.94921875', '2021-01-18 17:02:09', 1, 0),
(1000, 'ambulance', '665-4821', 'De #188-5632 : Attention médicale requise: citoyen inconscient! 408.34866333008, -1090.94921875', '2021-01-18 17:02:09', 1, 0),
(1001, '871-5075', '318-8187', 'prend la dodge', '2021-01-18 17:03:07', 1, 0),
(1002, '318-8187', '871-5075', 'prend la dodge', '2021-01-18 17:03:07', 1, 1),
(1003, '871-5075', '185-5624', 'vous etes la', '2021-01-18 17:03:21', 1, 0),
(1004, '185-5624', '871-5075', 'vous etes la', '2021-01-18 17:03:22', 1, 1),
(1005, '871-5075', '318-6568', 'je peut passer au bario', '2021-01-18 17:04:25', 0, 0),
(1006, '318-6568', '871-5075', 'je peut passer au bario', '2021-01-18 17:04:25', 1, 1),
(1007, '871-5075', '404-4957', 't la', '2021-01-18 17:04:46', 0, 0),
(1008, '404-4957', '871-5075', 't la', '2021-01-18 17:04:47', 1, 1),
(1009, '665-4821', '871-5075', 'GPS: -357.79507446289, -645.68078613281', '2021-01-18 17:15:18', 1, 0),
(1010, '871-5075', '665-4821', 'GPS: -357.79507446289, -645.68078613281', '2021-01-18 17:15:18', 1, 1),
(1011, '665-4821', '871-5075', 'ya des gens qui me collles vien*', '2021-01-18 17:17:41', 1, 0),
(1012, '871-5075', '665-4821', 'ya des gens qui me collles vien*', '2021-01-18 17:17:41', 1, 1),
(1013, 'ambulance', '318-8187', 'De #837-8303 : Besoin de soins 309.97955322266, -592.23010253906', '2021-01-18 17:26:27', 1, 0),
(1014, 'ambulance', '665-4821', 'De #837-8303 : Besoin de soins 309.97955322266, -592.23010253906', '2021-01-18 17:26:27', 1, 0),
(1015, 'ambulance', '871-5075', 'De #837-8303 : Besoin de soins 309.97955322266, -592.23010253906', '2021-01-18 17:26:27', 1, 0),
(1016, 'ambulance', '318-8187', 'De #837-8303 : Besoin de soins 309.97955322266, -592.23010253906', '2021-01-18 17:26:36', 1, 0),
(1017, 'ambulance', '972-8042', 'De #837-8303 : Besoin de soins 309.97955322266, -592.23010253906', '2021-01-18 17:26:36', 1, 0),
(1018, 'ambulance', '665-4821', 'De #837-8303 : Besoin de soins 309.97955322266, -592.23010253906', '2021-01-18 17:26:36', 1, 0),
(1019, 'ambulance', '871-5075', 'De #837-8303 : Besoin de soins 309.97955322266, -592.23010253906', '2021-01-18 17:26:36', 1, 0),
(1020, '871-5075', '665-4821', 'tu veut etre ma copine ??', '2021-01-18 17:30:17', 1, 0),
(1021, '665-4821', '871-5075', 'tu veut etre ma copine ??', '2021-01-18 17:30:17', 1, 1),
(1022, '665-4821', '871-5075', 'DEJA ?', '2021-01-18 17:30:48', 1, 0),
(1023, '871-5075', '665-4821', 'DEJA ?', '2021-01-18 17:30:48', 1, 1),
(1024, '665-4821', '871-5075', 'EN 1 JOURS', '2021-01-18 17:30:55', 1, 0),
(1025, '871-5075', '665-4821', 'EN 1 JOURS', '2021-01-18 17:30:56', 1, 1),
(1026, '665-4821', '871-5075', '1 SEMAINE', '2021-01-18 17:31:08', 1, 0),
(1027, '871-5075', '665-4821', '1 SEMAINE', '2021-01-18 17:31:09', 1, 1),
(1028, '871-5075', '665-4821', 'tu veut attendre 1 semaine ??', '2021-01-18 17:31:28', 1, 0),
(1029, '665-4821', '871-5075', 'tu veut attendre 1 semaine ??', '2021-01-18 17:31:28', 1, 1),
(1030, '871-5075', '665-4821', 'nn mes moi apres tu peut avoir des remise partout $', '2021-01-18 17:31:47', 1, 0),
(1031, '665-4821', '871-5075', 'nn mes moi apres tu peut avoir des remise partout $', '2021-01-18 17:31:47', 1, 1),
(1032, 'ambulance', '318-8187', 'De #318-8187 : Attention médicale requise: citoyen inconscient! -40.561210632324, -907.5278930664', '2021-01-18 17:31:54', 1, 0),
(1033, 'ambulance', '665-4821', 'De #318-8187 : Attention médicale requise: citoyen inconscient! -40.561210632324, -907.5278930664', '2021-01-18 17:31:54', 1, 0),
(1034, 'ambulance', '972-8042', 'De #318-8187 : Attention médicale requise: citoyen inconscient! -40.561210632324, -907.5278930664', '2021-01-18 17:31:54', 1, 0),
(1035, 'ambulance', '871-5075', 'De #318-8187 : Attention médicale requise: citoyen inconscient! -40.561210632324, -907.5278930664', '2021-01-18 17:31:54', 1, 0),
(1036, 'ambulance', '318-8187', 'De #972-8042 : j ai soigner quelqu un', '2021-01-18 17:31:55', 1, 0),
(1037, 'ambulance', '972-8042', 'De #972-8042 : j ai soigner quelqu un', '2021-01-18 17:31:55', 1, 0),
(1038, 'ambulance', '665-4821', 'De #972-8042 : j ai soigner quelqu un', '2021-01-18 17:31:55', 1, 0),
(1039, 'ambulance', '871-5075', 'De #972-8042 : j ai soigner quelqu un', '2021-01-18 17:31:55', 1, 0),
(1040, 'ambulance', '972-8042', 'j ai soigner quelqu un', '2021-01-18 17:31:55', 1, 1),
(1041, '665-4821', '871-5075', 'NON TA PAS COMPRIS MDR MAIS SA FAIS PAS BCP ON SE CONNAIS HEIN', '2021-01-18 17:31:57', 1, 0),
(1042, '871-5075', '665-4821', 'NON TA PAS COMPRIS MDR MAIS SA FAIS PAS BCP ON SE CONNAIS HEIN', '2021-01-18 17:31:57', 1, 1),
(1043, '665-4821', '871-5075', 'on attend la soirée cest bon ?', '2021-01-18 17:32:10', 1, 0),
(1044, '871-5075', '665-4821', 'on attend la soirée cest bon ?', '2021-01-18 17:32:10', 1, 1),
(1045, 'ambulance', '318-8187', 'De #972-8042 : euh la reunion vous ets ou', '2021-01-18 17:32:13', 1, 0),
(1046, 'ambulance', '972-8042', 'De #972-8042 : euh la reunion vous ets ou', '2021-01-18 17:32:13', 1, 0),
(1047, 'ambulance', '665-4821', 'De #972-8042 : euh la reunion vous ets ou', '2021-01-18 17:32:13', 1, 0),
(1048, 'ambulance', '871-5075', 'De #972-8042 : euh la reunion vous ets ou', '2021-01-18 17:32:13', 1, 0),
(1049, 'ambulance', '972-8042', 'euh la reunion vous ets ou', '2021-01-18 17:32:13', 1, 1),
(1050, 'ambulance', '318-8187', 'De #318-8187 : Réanimation -40.561210632324, -907.5278930664', '2021-01-18 17:32:39', 1, 0),
(1051, 'ambulance', '972-8042', 'De #318-8187 : Réanimation -40.561210632324, -907.5278930664', '2021-01-18 17:32:39', 1, 0),
(1052, 'ambulance', '665-4821', 'De #318-8187 : Réanimation -40.561210632324, -907.5278930664', '2021-01-18 17:32:39', 1, 0),
(1053, 'ambulance', '871-5075', 'De #318-8187 : Réanimation -40.561210632324, -907.5278930664', '2021-01-18 17:32:39', 1, 0),
(1054, '871-5075', '665-4821', 'ce soir du me donne la repons edacc', '2021-01-18 17:35:44', 1, 0),
(1055, '665-4821', '871-5075', 'ce soir du me donne la repons edacc', '2021-01-18 17:35:45', 1, 1),
(1056, '871-5075', '665-4821', 'vien ma biche', '2021-01-18 17:36:24', 1, 0),
(1057, '665-4821', '871-5075', 'vien ma biche', '2021-01-18 17:36:24', 1, 1),
(1058, '665-4821', '871-5075', 'tes ou ?', '2021-01-18 17:36:52', 1, 0),
(1059, '871-5075', '665-4821', 'tes ou ?', '2021-01-18 17:36:52', 1, 1),
(1060, '871-5075', '665-4821', 'GPS: 292.41244506836, -605.50561523438', '2021-01-18 17:37:03', 1, 0),
(1061, '665-4821', '871-5075', 'GPS: 292.41244506836, -605.50561523438', '2021-01-18 17:37:03', 1, 1),
(1062, '824-2255', '162-4818', 'tla?', '2021-01-18 17:37:24', 0, 0),
(1063, '162-4818', '824-2255', 'tla?', '2021-01-18 17:37:25', 1, 1),
(1064, '824-2255', '219-7517', 'tla?', '2021-01-18 17:38:32', 1, 0),
(1065, '219-7517', '824-2255', 'tla?', '2021-01-18 17:38:32', 1, 1),
(1066, '824-2255', '219-7517', 'je partdesoler', '2021-01-18 17:39:58', 1, 0),
(1067, '219-7517', '824-2255', 'je partdesoler', '2021-01-18 17:39:58', 1, 1),
(1068, '665-4821', '871-5075', 'je te dérange  peut etre...', '2021-01-18 17:41:41', 1, 0),
(1069, '871-5075', '665-4821', 'je te dérange  peut etre...', '2021-01-18 17:41:41', 1, 1),
(1070, '871-5075', '665-4821', 'nn t ou', '2021-01-18 17:41:50', 1, 0),
(1071, '665-4821', '871-5075', 'nn t ou', '2021-01-18 17:41:51', 1, 1),
(1072, '665-4821', '871-5075', 'je tourne seul', '2021-01-18 17:42:01', 1, 0),
(1073, '871-5075', '665-4821', 'je tourne seul', '2021-01-18 17:42:01', 1, 1),
(1074, '871-5075', '665-4821', 'vien ems ma biche', '2021-01-18 17:42:13', 1, 0),
(1075, '665-4821', '871-5075', 'vien ems ma biche', '2021-01-18 17:42:13', 1, 1),
(1076, '665-4821', '871-5075', 'on verra si sa se passe bien tinquiete pas', '2021-01-18 17:43:19', 1, 0),
(1077, '871-5075', '665-4821', 'on verra si sa se passe bien tinquiete pas', '2021-01-18 17:43:19', 1, 1),
(1078, '871-5075', '665-4821', 'att moi', '2021-01-18 17:50:09', 1, 0),
(1079, '665-4821', '871-5075', 'att moi', '2021-01-18 17:50:09', 1, 1),
(1080, '665-4821', '871-5075', 'MAIS tu dois faire le truk a alexis est tout', '2021-01-18 17:50:31', 1, 0),
(1081, '871-5075', '665-4821', 'MAIS tu dois faire le truk a alexis est tout', '2021-01-18 17:50:32', 1, 1),
(1082, 'police', '620-8384', 'De #318-6568 : Vol en cours ! -1223.400024414, -907.53662109375', '2021-01-18 17:51:19', 0, 0),
(1083, 'police', '884-3792', 'De #318-6568 : Vol en cours ! -1223.400024414, -907.53662109375', '2021-01-18 17:51:19', 1, 0),
(1084, 'police', '813-3011', 'De #318-6568 : Vol en cours ! -1223.400024414, -907.53662109375', '2021-01-18 17:51:19', 0, 0),
(1085, 'police', '837-8303', 'De #318-6568 : Vol en cours ! -1223.400024414, -907.53662109375', '2021-01-18 17:51:19', 1, 0),
(1086, 'police', '353-9631', 'De #318-6568 : Vol en cours ! -1223.400024414, -907.53662109375', '2021-01-18 17:51:19', 0, 0),
(1087, 'police', '219-7517', 'De #318-6568 : Vol en cours ! -1223.400024414, -907.53662109375', '2021-01-18 17:51:19', 1, 0),
(1088, 'police', '633-1896', 'De #318-6568 : Vol en cours ! -1223.400024414, -907.53662109375', '2021-01-18 17:51:19', 1, 0),
(1089, 'police', '884-3792', 'De #318-6568 : Vol en cours ! -1223.4011230468, -907.53735351562', '2021-01-18 17:51:22', 1, 0),
(1090, 'police', '353-9631', 'De #318-6568 : Vol en cours ! -1223.4011230468, -907.53735351562', '2021-01-18 17:51:22', 0, 0),
(1091, 'police', '620-8384', 'De #318-6568 : Vol en cours ! -1223.4011230468, -907.53735351562', '2021-01-18 17:51:22', 0, 0),
(1092, 'police', '219-7517', 'De #318-6568 : Vol en cours ! -1223.4011230468, -907.53735351562', '2021-01-18 17:51:22', 1, 0),
(1093, 'police', '837-8303', 'De #318-6568 : Vol en cours ! -1223.4011230468, -907.53735351562', '2021-01-18 17:51:22', 1, 0),
(1094, 'police', '813-3011', 'De #318-6568 : Vol en cours ! -1223.4011230468, -907.53735351562', '2021-01-18 17:51:22', 0, 0),
(1095, 'police', '633-1896', 'De #318-6568 : Vol en cours ! -1223.4011230468, -907.53735351562', '2021-01-18 17:51:22', 1, 0),
(1096, '824-2255', '219-7517', 'je part de la ville un peu', '2021-01-18 17:51:55', 1, 0),
(1097, '219-7517', '824-2255', 'je part de la ville un peu', '2021-01-18 17:51:55', 1, 1),
(1098, 'police', '884-3792', 'De #318-6568 : Agression -1226.509765625, -899.54132080078', '2021-01-18 17:52:41', 1, 0),
(1099, 'police', '353-9631', 'De #318-6568 : Agression -1226.509765625, -899.54132080078', '2021-01-18 17:52:41', 0, 0),
(1100, 'police', '219-7517', 'De #318-6568 : Agression -1226.509765625, -899.54132080078', '2021-01-18 17:52:41', 1, 0),
(1101, 'police', '620-8384', 'De #318-6568 : Agression -1226.509765625, -899.54132080078', '2021-01-18 17:52:41', 0, 0),
(1102, 'police', '837-8303', 'De #318-6568 : Agression -1226.509765625, -899.54132080078', '2021-01-18 17:52:41', 1, 0),
(1103, 'police', '813-3011', 'De #318-6568 : Agression -1226.509765625, -899.54132080078', '2021-01-18 17:52:41', 0, 0),
(1104, 'police', '633-1896', 'De #318-6568 : Agression -1226.509765625, -899.54132080078', '2021-01-18 17:52:41', 1, 0),
(1105, 'ambulance', '318-8187', 'De #318-8187 : Attention médicale requise: citoyen inconscient! 1185.9975585938, -2091.6896972656', '2021-01-18 17:54:58', 1, 0),
(1106, 'ambulance', '871-5075', 'De #318-8187 : Attention médicale requise: citoyen inconscient! 1185.9975585938, -2091.6896972656', '2021-01-18 17:54:58', 1, 0);
INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(1107, 'ambulance', '236-7614', 'De #318-8187 : Attention médicale requise: citoyen inconscient! 1185.9975585938, -2091.6896972656', '2021-01-18 17:54:58', 0, 0),
(1108, 'ambulance', '972-8042', 'De #318-8187 : Attention médicale requise: citoyen inconscient! 1185.9975585938, -2091.6896972656', '2021-01-18 17:54:58', 1, 0),
(1109, 'ambulance', '665-4821', 'De #318-8187 : Attention médicale requise: citoyen inconscient! 1185.9975585938, -2091.6896972656', '2021-01-18 17:54:58', 1, 0),
(1110, 'ambulance', '871-5075', 'De #884-3792 : Attention médicale requise: citoyen inconscient! 316.9280090332, -2257.3950195312', '2021-01-18 17:55:54', 1, 0),
(1111, 'ambulance', '236-7614', 'De #884-3792 : Attention médicale requise: citoyen inconscient! 316.9280090332, -2257.3950195312', '2021-01-18 17:55:54', 0, 0),
(1112, 'ambulance', '318-8187', 'De #884-3792 : Attention médicale requise: citoyen inconscient! 316.9280090332, -2257.3950195312', '2021-01-18 17:55:54', 1, 0),
(1113, 'ambulance', '972-8042', 'De #884-3792 : Attention médicale requise: citoyen inconscient! 316.9280090332, -2257.3950195312', '2021-01-18 17:55:54', 1, 0),
(1114, 'ambulance', '665-4821', 'De #884-3792 : Attention médicale requise: citoyen inconscient! 316.9280090332, -2257.3950195312', '2021-01-18 17:55:54', 1, 0),
(1115, 'ambulance', '318-8187', 'De #318-8187 : Réanimation 1185.993774414, -2091.6911621094', '2021-01-18 17:55:55', 1, 0),
(1116, 'ambulance', '236-7614', 'De #318-8187 : Réanimation 1185.993774414, -2091.6911621094', '2021-01-18 17:55:55', 0, 0),
(1117, 'ambulance', '665-4821', 'De #318-8187 : Réanimation 1185.993774414, -2091.6911621094', '2021-01-18 17:55:55', 1, 0),
(1118, 'ambulance', '871-5075', 'De #318-8187 : Réanimation 1185.993774414, -2091.6911621094', '2021-01-18 17:55:55', 1, 0),
(1119, 'ambulance', '972-8042', 'De #318-8187 : Réanimation 1185.993774414, -2091.6911621094', '2021-01-18 17:55:55', 1, 0),
(1120, 'police', '476-2274', 'De #318-6568 : Vol en cours ! 25.801357269288, -1347.3930664062', '2021-01-18 17:59:15', 1, 0),
(1121, 'police', '884-3792', 'De #318-6568 : Vol en cours ! 25.801357269288, -1347.3930664062', '2021-01-18 17:59:15', 1, 0),
(1122, 'police', '353-9631', 'De #318-6568 : Vol en cours ! 25.801357269288, -1347.3930664062', '2021-01-18 17:59:15', 0, 0),
(1123, 'police', '813-3011', 'De #318-6568 : Vol en cours ! 25.801357269288, -1347.3930664062', '2021-01-18 17:59:15', 0, 0),
(1124, 'police', '219-7517', 'De #318-6568 : Vol en cours ! 25.801357269288, -1347.3930664062', '2021-01-18 17:59:15', 1, 0),
(1125, 'police', '837-8303', 'De #318-6568 : Vol en cours ! 25.801357269288, -1347.3930664062', '2021-01-18 17:59:15', 1, 0),
(1126, 'police', '633-1896', 'De #318-6568 : Vol en cours ! 25.801357269288, -1347.3930664062', '2021-01-18 17:59:15', 1, 0),
(1127, 'police', '476-2274', 'De #318-6568 : Vol en cours ! 25.801357269288, -1347.3930664062', '2021-01-18 17:59:19', 1, 0),
(1128, 'police', '884-3792', 'De #318-6568 : Vol en cours ! 25.801357269288, -1347.3930664062', '2021-01-18 17:59:19', 1, 0),
(1129, 'police', '353-9631', 'De #318-6568 : Vol en cours ! 25.801357269288, -1347.3930664062', '2021-01-18 17:59:19', 0, 0),
(1130, 'police', '219-7517', 'De #318-6568 : Vol en cours ! 25.801357269288, -1347.3930664062', '2021-01-18 17:59:19', 1, 0),
(1131, 'police', '837-8303', 'De #318-6568 : Vol en cours ! 25.801357269288, -1347.3930664062', '2021-01-18 17:59:19', 1, 0),
(1132, 'police', '813-3011', 'De #318-6568 : Vol en cours ! 25.801357269288, -1347.3930664062', '2021-01-18 17:59:19', 0, 0),
(1133, 'police', '633-1896', 'De #318-6568 : Vol en cours ! 25.801357269288, -1347.3930664062', '2021-01-18 17:59:19', 1, 0),
(1134, 'police', '884-3792', 'De #330-5100 : Vol en cours ! 24.912775039672, -1353.7312011718', '2021-01-18 17:59:52', 1, 0),
(1135, 'police', '476-2274', 'De #330-5100 : Vol en cours ! 24.912775039672, -1353.7312011718', '2021-01-18 17:59:52', 1, 0),
(1136, 'police', '219-7517', 'De #330-5100 : Vol en cours ! 24.912775039672, -1353.7312011718', '2021-01-18 17:59:52', 1, 0),
(1137, 'police', '353-9631', 'De #330-5100 : Vol en cours ! 24.912775039672, -1353.7312011718', '2021-01-18 17:59:52', 0, 0),
(1138, 'police', '837-8303', 'De #330-5100 : Vol en cours ! 24.912775039672, -1353.7312011718', '2021-01-18 17:59:52', 1, 0),
(1139, 'police', '813-3011', 'De #330-5100 : Vol en cours ! 24.912775039672, -1353.7312011718', '2021-01-18 17:59:52', 0, 0),
(1140, 'police', '633-1896', 'De #330-5100 : Vol en cours ! 24.912775039672, -1353.7312011718', '2021-01-18 17:59:52', 1, 0),
(1141, 'police', '476-2274', 'De #330-5100 : Vol en cours ! 24.9403591156, -1353.6971435546', '2021-01-18 18:00:45', 1, 0),
(1142, 'police', '353-9631', 'De #330-5100 : Vol en cours ! 24.9403591156, -1353.6971435546', '2021-01-18 18:00:45', 0, 0),
(1143, 'police', '219-7517', 'De #330-5100 : Vol en cours ! 24.9403591156, -1353.6971435546', '2021-01-18 18:00:45', 1, 0),
(1144, 'police', '884-3792', 'De #330-5100 : Vol en cours ! 24.9403591156, -1353.6971435546', '2021-01-18 18:00:45', 1, 0),
(1145, 'police', '813-3011', 'De #330-5100 : Vol en cours ! 24.9403591156, -1353.6971435546', '2021-01-18 18:00:45', 0, 0),
(1146, 'police', '837-8303', 'De #330-5100 : Vol en cours ! 24.9403591156, -1353.6971435546', '2021-01-18 18:00:45', 1, 0),
(1147, 'police', '633-1896', 'De #330-5100 : Vol en cours ! 24.9403591156, -1353.6971435546', '2021-01-18 18:00:45', 1, 0),
(1148, 'police', '219-7517', 'De #318-6568 : Vol en cours ! 27.602598190308, -1352.0845947266', '2021-01-18 18:01:01', 1, 0),
(1149, 'police', '476-2274', 'De #318-6568 : Vol en cours ! 27.602598190308, -1352.0845947266', '2021-01-18 18:01:01', 1, 0),
(1150, 'police', '813-3011', 'De #318-6568 : Vol en cours ! 27.602598190308, -1352.0845947266', '2021-01-18 18:01:01', 0, 0),
(1151, 'police', '837-8303', 'De #318-6568 : Vol en cours ! 27.602598190308, -1352.0845947266', '2021-01-18 18:01:01', 1, 0),
(1152, 'police', '353-9631', 'De #318-6568 : Vol en cours ! 27.602598190308, -1352.0845947266', '2021-01-18 18:01:01', 0, 0),
(1153, 'police', '884-3792', 'De #318-6568 : Vol en cours ! 27.602598190308, -1352.0845947266', '2021-01-18 18:01:01', 1, 0),
(1154, 'police', '633-1896', 'De #318-6568 : Vol en cours ! 27.602598190308, -1352.0845947266', '2021-01-18 18:01:01', 1, 0),
(1155, '665-4821', '871-5075', 'OK SA CACHE DES CHoSE', '2021-01-18 18:03:24', 1, 0),
(1156, '871-5075', '665-4821', 'OK SA CACHE DES CHoSE', '2021-01-18 18:03:25', 1, 1),
(1157, '871-5075', '665-4821', 't sur $', '2021-01-18 18:04:22', 1, 0),
(1158, '665-4821', '871-5075', 't sur $', '2021-01-18 18:04:22', 1, 1),
(1159, '871-5075', '665-4821', 'vien je texplique', '2021-01-18 18:04:30', 1, 0),
(1160, '665-4821', '871-5075', 'vien je texplique', '2021-01-18 18:04:30', 1, 1),
(1161, 'police', '884-3792', 'De #620-8384 : Vol en cours ! -707.41094970704, -913.91613769532', '2021-01-18 18:05:21', 1, 0),
(1162, 'police', '353-9631', 'De #620-8384 : Vol en cours ! -707.41094970704, -913.91613769532', '2021-01-18 18:05:21', 0, 0),
(1163, 'police', '476-2274', 'De #620-8384 : Vol en cours ! -707.41094970704, -913.91613769532', '2021-01-18 18:05:21', 1, 0),
(1164, 'police', '813-3011', 'De #620-8384 : Vol en cours ! -707.41094970704, -913.91613769532', '2021-01-18 18:05:21', 0, 0),
(1165, 'police', '219-7517', 'De #620-8384 : Vol en cours ! -707.41094970704, -913.91613769532', '2021-01-18 18:05:21', 1, 0),
(1166, 'police', '837-8303', 'De #620-8384 : Vol en cours ! -707.41094970704, -913.91613769532', '2021-01-18 18:05:21', 1, 0),
(1167, 'police', '633-1896', 'De #620-8384 : Vol en cours ! -707.41094970704, -913.91613769532', '2021-01-18 18:05:21', 0, 0),
(1168, 'ambulance', '871-5075', 'De #318-6568 : Attention médicale requise: citoyen inconscient! 803.44555664062, -1750.088256836', '2021-01-18 18:05:28', 1, 0),
(1169, 'ambulance', '318-8187', 'De #318-6568 : Attention médicale requise: citoyen inconscient! 803.44555664062, -1750.088256836', '2021-01-18 18:05:28', 1, 0),
(1170, 'ambulance', '236-7614', 'De #318-6568 : Attention médicale requise: citoyen inconscient! 803.44555664062, -1750.088256836', '2021-01-18 18:05:28', 0, 0),
(1171, 'ambulance', '972-8042', 'De #318-6568 : Attention médicale requise: citoyen inconscient! 803.44555664062, -1750.088256836', '2021-01-18 18:05:28', 1, 0),
(1172, 'ambulance', '665-4821', 'De #318-6568 : Attention médicale requise: citoyen inconscient! 803.44555664062, -1750.088256836', '2021-01-18 18:05:28', 1, 0),
(1173, 'police', '476-2274', 'De #620-8384 : ahhh je veux tuer l\'otage -707.41094970704, -913.91613769532', '2021-01-18 18:05:34', 1, 0),
(1174, 'police', '884-3792', 'De #620-8384 : ahhh je veux tuer l\'otage -707.41094970704, -913.91613769532', '2021-01-18 18:05:34', 1, 0),
(1175, 'police', '353-9631', 'De #620-8384 : ahhh je veux tuer l\'otage -707.41094970704, -913.91613769532', '2021-01-18 18:05:34', 0, 0),
(1176, 'police', '219-7517', 'De #620-8384 : ahhh je veux tuer l\'otage -707.41094970704, -913.91613769532', '2021-01-18 18:05:34', 1, 0),
(1177, 'police', '813-3011', 'De #620-8384 : ahhh je veux tuer l\'otage -707.41094970704, -913.91613769532', '2021-01-18 18:05:34', 0, 0),
(1178, 'police', '633-1896', 'De #620-8384 : ahhh je veux tuer l\'otage -707.41094970704, -913.91613769532', '2021-01-18 18:05:34', 0, 0),
(1179, 'police', '837-8303', 'De #620-8384 : ahhh je veux tuer l\'otage -707.41094970704, -913.91613769532', '2021-01-18 18:05:34', 1, 0),
(1180, '665-4821', '871-5075', 'hum', '2021-01-18 18:05:35', 1, 0),
(1181, '871-5075', '665-4821', 'hum', '2021-01-18 18:05:35', 1, 1),
(1182, 'police', '884-3792', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:37', 1, 0),
(1183, 'police', '476-2274', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:37', 1, 0),
(1184, 'police', '353-9631', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:37', 0, 0),
(1185, 'police', '219-7517', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:37', 1, 0),
(1186, 'police', '837-8303', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:37', 1, 0),
(1187, 'police', '813-3011', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:37', 0, 0),
(1188, 'police', '633-1896', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:37', 0, 0),
(1189, 'police', '884-3792', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:41', 1, 0),
(1190, 'police', '353-9631', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:41', 0, 0),
(1191, 'police', '219-7517', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:41', 1, 0),
(1192, 'police', '837-8303', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:41', 1, 0),
(1193, 'police', '813-3011', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:41', 0, 0),
(1194, 'police', '476-2274', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:41', 1, 0),
(1195, 'police', '633-1896', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:41', 0, 0),
(1196, 'police', '476-2274', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:44', 1, 0),
(1197, 'police', '884-3792', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:44', 1, 0),
(1198, 'police', '353-9631', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:44', 0, 0),
(1199, 'police', '219-7517', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:44', 1, 0),
(1200, 'police', '837-8303', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:44', 1, 0),
(1201, 'police', '633-1896', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:44', 0, 0),
(1202, 'police', '813-3011', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:44', 0, 0),
(1203, 'police', '884-3792', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:46', 1, 0),
(1204, 'police', '837-8303', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:46', 1, 0),
(1205, 'police', '476-2274', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:46', 1, 0),
(1206, 'police', '813-3011', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:46', 0, 0),
(1207, 'police', '633-1896', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:46', 0, 0),
(1208, 'police', '353-9631', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:46', 0, 0),
(1209, 'police', '219-7517', 'De #620-8384 : Agression -707.41094970704, -913.91613769532', '2021-01-18 18:05:46', 1, 0),
(1210, 'ambulance', '871-5075', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 798.9384765625, -1752.3649902344', '2021-01-18 18:06:05', 1, 0),
(1211, 'ambulance', '236-7614', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 798.9384765625, -1752.3649902344', '2021-01-18 18:06:05', 0, 0),
(1212, 'ambulance', '665-4821', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 798.9384765625, -1752.3649902344', '2021-01-18 18:06:05', 1, 0),
(1213, 'ambulance', '318-8187', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 798.9384765625, -1752.3649902344', '2021-01-18 18:06:05', 1, 0),
(1214, 'ambulance', '972-8042', 'De #633-1896 : Attention médicale requise: citoyen inconscient! 798.9384765625, -1752.3649902344', '2021-01-18 18:06:05', 1, 0),
(1215, '871-5075', '665-4821', 'tu me parle plus t  sur', '2021-01-18 18:06:15', 1, 0),
(1216, '665-4821', '871-5075', 'tu me parle plus t  sur', '2021-01-18 18:06:15', 1, 1),
(1217, 'ambulance', '871-5075', 'De #330-5100 : Attention médicale requise: citoyen inconscient! 798.85717773438, -1776.8992919922', '2021-01-18 18:06:53', 1, 0),
(1218, 'ambulance', '236-7614', 'De #330-5100 : Attention médicale requise: citoyen inconscient! 798.85717773438, -1776.8992919922', '2021-01-18 18:06:53', 0, 0),
(1219, 'ambulance', '318-8187', 'De #330-5100 : Attention médicale requise: citoyen inconscient! 798.85717773438, -1776.8992919922', '2021-01-18 18:06:53', 1, 0),
(1220, 'ambulance', '972-8042', 'De #330-5100 : Attention médicale requise: citoyen inconscient! 798.85717773438, -1776.8992919922', '2021-01-18 18:06:53', 1, 0),
(1221, 'ambulance', '665-4821', 'De #330-5100 : Attention médicale requise: citoyen inconscient! 798.85717773438, -1776.8992919922', '2021-01-18 18:06:53', 1, 0),
(1222, 'police', '353-9631', 'De #620-8384 : Agression -710.68939208984, -915.59344482422', '2021-01-18 18:07:00', 0, 0),
(1223, 'police', '476-2274', 'De #620-8384 : Agression -710.68939208984, -915.59344482422', '2021-01-18 18:07:00', 1, 0),
(1224, 'police', '884-3792', 'De #620-8384 : Agression -710.68939208984, -915.59344482422', '2021-01-18 18:07:00', 1, 0),
(1225, 'police', '219-7517', 'De #620-8384 : Agression -710.68939208984, -915.59344482422', '2021-01-18 18:07:00', 1, 0),
(1226, 'police', '813-3011', 'De #620-8384 : Agression -710.68939208984, -915.59344482422', '2021-01-18 18:07:00', 0, 0),
(1227, 'police', '837-8303', 'De #620-8384 : Agression -710.68939208984, -915.59344482422', '2021-01-18 18:07:00', 1, 0),
(1228, 'police', '633-1896', 'De #620-8384 : Agression -710.68939208984, -915.59344482422', '2021-01-18 18:07:00', 0, 0),
(1229, 'police', '476-2274', 'De #620-8384 : Vol en cours ! -710.68939208984, -915.59344482422', '2021-01-18 18:07:02', 1, 0),
(1230, 'police', '884-3792', 'De #620-8384 : Vol en cours ! -710.68939208984, -915.59344482422', '2021-01-18 18:07:02', 1, 0),
(1231, 'police', '353-9631', 'De #620-8384 : Vol en cours ! -710.68939208984, -915.59344482422', '2021-01-18 18:07:02', 0, 0),
(1232, 'police', '219-7517', 'De #620-8384 : Vol en cours ! -710.68939208984, -915.59344482422', '2021-01-18 18:07:02', 1, 0),
(1233, 'police', '837-8303', 'De #620-8384 : Vol en cours ! -710.68939208984, -915.59344482422', '2021-01-18 18:07:02', 1, 0),
(1234, 'police', '813-3011', 'De #620-8384 : Vol en cours ! -710.68939208984, -915.59344482422', '2021-01-18 18:07:02', 0, 0),
(1235, 'police', '633-1896', 'De #620-8384 : Vol en cours ! -710.68939208984, -915.59344482422', '2021-01-18 18:07:02', 0, 0),
(1236, 'police', '476-2274', 'De #620-8384 : vener -710.68939208984, -915.59344482422', '2021-01-18 18:07:08', 1, 0),
(1237, 'police', '884-3792', 'De #620-8384 : vener -710.68939208984, -915.59344482422', '2021-01-18 18:07:08', 1, 0),
(1238, 'police', '353-9631', 'De #620-8384 : vener -710.68939208984, -915.59344482422', '2021-01-18 18:07:08', 0, 0),
(1239, 'police', '219-7517', 'De #620-8384 : vener -710.68939208984, -915.59344482422', '2021-01-18 18:07:08', 1, 0),
(1240, 'police', '837-8303', 'De #620-8384 : vener -710.68939208984, -915.59344482422', '2021-01-18 18:07:08', 1, 0),
(1241, 'police', '813-3011', 'De #620-8384 : vener -710.68939208984, -915.59344482422', '2021-01-18 18:07:08', 0, 0),
(1242, 'police', '633-1896', 'De #620-8384 : vener -710.68939208984, -915.59344482422', '2021-01-18 18:07:08', 0, 0),
(1243, 'police', '884-3792', 'De #620-8384 : Agression -710.68939208984, -915.59344482422', '2021-01-18 18:07:12', 1, 0),
(1244, 'police', '353-9631', 'De #620-8384 : Agression -710.68939208984, -915.59344482422', '2021-01-18 18:07:12', 0, 0),
(1245, 'police', '837-8303', 'De #620-8384 : Agression -710.68939208984, -915.59344482422', '2021-01-18 18:07:12', 1, 0),
(1246, 'police', '813-3011', 'De #620-8384 : Agression -710.68939208984, -915.59344482422', '2021-01-18 18:07:12', 0, 0),
(1247, 'police', '219-7517', 'De #620-8384 : Agression -710.68939208984, -915.59344482422', '2021-01-18 18:07:12', 1, 0),
(1248, 'police', '476-2274', 'De #620-8384 : Agression -710.68939208984, -915.59344482422', '2021-01-18 18:07:12', 1, 0),
(1249, 'police', '633-1896', 'De #620-8384 : Agression -710.68939208984, -915.59344482422', '2021-01-18 18:07:12', 0, 0),
(1250, '871-5075', '665-4821', 'repond moi', '2021-01-18 18:07:23', 1, 0),
(1251, '665-4821', '871-5075', 'repond moi', '2021-01-18 18:07:23', 1, 1),
(1252, '665-4821', '871-5075', 'non', '2021-01-18 18:07:32', 1, 0),
(1253, '871-5075', '665-4821', 'non', '2021-01-18 18:07:32', 1, 1),
(1254, 'ambulance', '236-7614', 'De #330-5100 : Réanimation 798.85717773438, -1776.8992919922', '2021-01-18 18:07:32', 0, 0),
(1255, 'ambulance', '871-5075', 'De #330-5100 : Réanimation 798.85717773438, -1776.8992919922', '2021-01-18 18:07:32', 1, 0),
(1256, 'ambulance', '665-4821', 'De #330-5100 : Réanimation 798.85717773438, -1776.8992919922', '2021-01-18 18:07:32', 1, 0),
(1257, 'ambulance', '318-8187', 'De #330-5100 : Réanimation 798.85717773438, -1776.8992919922', '2021-01-18 18:07:32', 1, 0),
(1258, 'ambulance', '972-8042', 'De #330-5100 : Réanimation 798.85717773438, -1776.8992919922', '2021-01-18 18:07:32', 1, 0),
(1259, '665-4821', '318-8187', 'toi tu me dis de partir tu me fais pas confiance pff', '2021-01-18 18:09:44', 1, 0),
(1260, '318-8187', '665-4821', 'toi tu me dis de partir tu me fais pas confiance pff', '2021-01-18 18:09:44', 1, 1),
(1261, '185-5624', '871-5075', 'Oui je suis là désolé un petit contretemps', '2021-01-18 18:11:48', 1, 0),
(1262, '871-5075', '185-5624', 'Oui je suis là désolé un petit contretemps', '2021-01-18 18:11:48', 1, 1),
(1263, '871-5075', '318-8187', 'GPS: -1898.3831787109, 2050.2485351562', '2021-01-18 18:12:21', 1, 0),
(1264, '318-8187', '871-5075', 'GPS: -1898.3831787109, 2050.2485351562', '2021-01-18 18:12:21', 1, 1),
(1265, '411-9915', '185-5624', 'T en ville ?', '2021-01-18 18:14:42', 1, 0),
(1266, '185-5624', '411-9915', 'T en ville ?', '2021-01-18 18:14:42', 1, 1),
(1267, '871-5075', '318-8187', 'dit suprise', '2021-01-18 18:15:51', 1, 0),
(1268, '318-8187', '871-5075', 'dit suprise', '2021-01-18 18:15:51', 1, 1),
(1269, '318-8187', '665-4821', 'si mais le patron ne veut pas que je dise', '2021-01-18 18:16:18', 1, 0),
(1270, '665-4821', '318-8187', 'si mais le patron ne veut pas que je dise', '2021-01-18 18:16:18', 1, 1),
(1271, '871-5075', '318-8187', 'ta 1250$', '2021-01-18 18:16:39', 1, 0),
(1272, '318-8187', '871-5075', 'ta 1250$', '2021-01-18 18:16:39', 1, 1),
(1273, '665-4821', '318-8187', 'okok', '2021-01-18 18:16:42', 1, 0),
(1274, '318-8187', '665-4821', 'okok', '2021-01-18 18:16:42', 1, 1),
(1275, 'ambulance', '318-8187', 'De #495-4532 : Attention médicale requise: citoyen inconscient! 28.50305557251, -909.24688720704', '2021-01-18 18:18:03', 1, 0),
(1276, 'ambulance', '236-7614', 'De #495-4532 : Attention médicale requise: citoyen inconscient! 28.50305557251, -909.24688720704', '2021-01-18 18:18:03', 0, 0),
(1277, 'ambulance', '871-5075', 'De #495-4532 : Attention médicale requise: citoyen inconscient! 28.50305557251, -909.24688720704', '2021-01-18 18:18:03', 1, 0),
(1278, 'ambulance', '665-4821', 'De #495-4532 : Attention médicale requise: citoyen inconscient! 28.50305557251, -909.24688720704', '2021-01-18 18:18:03', 1, 0),
(1279, 'ambulance', '972-8042', 'De #495-4532 : Attention médicale requise: citoyen inconscient! 28.50305557251, -909.24688720704', '2021-01-18 18:18:03', 1, 0),
(1280, '665-4821', '871-5075', 'je c\'est c pas sa car il ma dis  alexix qui pouvais pas dire...', '2021-01-18 18:18:12', 1, 0),
(1281, '871-5075', '665-4821', 'je c\'est c pas sa car il ma dis  alexix qui pouvais pas dire...', '2021-01-18 18:18:12', 1, 1),
(1282, '871-5075', '665-4821', 'justement', '2021-01-18 18:18:26', 1, 0),
(1283, '665-4821', '871-5075', 'justement', '2021-01-18 18:18:27', 1, 1),
(1284, '665-4821', '871-5075', 'hummm', '2021-01-18 18:18:53', 1, 0),
(1285, '871-5075', '665-4821', 'hummm', '2021-01-18 18:18:53', 1, 1),
(1286, 'police', '219-7517', 'De #620-8384 : teste 28.951314926148, -1347.9305419922', '2021-01-18 18:18:56', 1, 0),
(1287, 'police', '837-8303', 'De #620-8384 : teste 28.951314926148, -1347.9305419922', '2021-01-18 18:18:56', 1, 0),
(1288, 'police', '813-3011', 'De #620-8384 : teste 28.951314926148, -1347.9305419922', '2021-01-18 18:18:56', 0, 0),
(1289, 'police', '884-3792', 'De #620-8384 : teste 28.951314926148, -1347.9305419922', '2021-01-18 18:18:56', 1, 0),
(1290, 'police', '476-2274', 'De #620-8384 : teste 28.951314926148, -1347.9305419922', '2021-01-18 18:18:56', 1, 0),
(1291, 'police', '633-1896', 'De #620-8384 : teste 28.951314926148, -1347.9305419922', '2021-01-18 18:18:56', 0, 0),
(1292, 'police', '353-9631', 'De #620-8384 : teste 28.951314926148, -1347.9305419922', '2021-01-18 18:18:56', 0, 0),
(1293, '495-4532', '665-4821', 'tfq', '2021-01-18 18:19:02', 1, 0),
(1294, '665-4821', '495-4532', 'tfq', '2021-01-18 18:19:02', 1, 1),
(1295, '665-4821', '495-4532', 'dans le nord je fais un truk est si tu veux c\'est bon', '2021-01-18 18:19:34', 1, 0),
(1296, '495-4532', '665-4821', 'dans le nord je fais un truk est si tu veux c\'est bon', '2021-01-18 18:19:34', 1, 1),
(1297, '495-4532', '665-4821', 'ok', '2021-01-18 18:19:43', 1, 0),
(1298, '665-4821', '495-4532', 'ok', '2021-01-18 18:19:43', 1, 1),
(1299, 'ambulance', '871-5075', 'De #871-5075 : Attention médicale requise: citoyen inconscient! -1723.802734375, 2274.4565429688', '2021-01-18 18:24:26', 1, 0),
(1300, 'ambulance', '236-7614', 'De #871-5075 : Attention médicale requise: citoyen inconscient! -1723.802734375, 2274.4565429688', '2021-01-18 18:24:26', 0, 0),
(1301, 'ambulance', '972-8042', 'De #871-5075 : Attention médicale requise: citoyen inconscient! -1723.802734375, 2274.4565429688', '2021-01-18 18:24:26', 1, 0),
(1302, 'ambulance', '318-8187', 'De #871-5075 : Attention médicale requise: citoyen inconscient! -1723.802734375, 2274.4565429688', '2021-01-18 18:24:26', 1, 0),
(1303, 'ambulance', '665-4821', 'De #871-5075 : Attention médicale requise: citoyen inconscient! -1723.802734375, 2274.4565429688', '2021-01-18 18:24:26', 1, 0),
(1304, '411-9915', '185-5624', 't ou ??', '2021-01-18 18:24:41', 1, 0),
(1305, '185-5624', '411-9915', 't ou ??', '2021-01-18 18:24:41', 1, 1),
(1306, '185-5624', '411-9915', 'vigneron', '2021-01-18 18:24:48', 1, 0),
(1307, '411-9915', '185-5624', 'vigneron', '2021-01-18 18:24:48', 1, 1),
(1308, '411-9915', '185-5624', 'jarr', '2021-01-18 18:24:54', 1, 0),
(1309, '185-5624', '411-9915', 'jarr', '2021-01-18 18:24:54', 1, 1),
(1310, 'ambulance', '318-8187', 'De #318-8187 : Attention médicale requise: citoyen inconscient! -767.56182861328, 1664.3985595704', '2021-01-18 18:29:59', 1, 0),
(1311, 'ambulance', '353-9631', 'De #318-8187 : Attention médicale requise: citoyen inconscient! -767.56182861328, 1664.3985595704', '2021-01-18 18:29:59', 0, 0),
(1312, 'ambulance', '871-5075', 'De #318-8187 : Attention médicale requise: citoyen inconscient! -767.56182861328, 1664.3985595704', '2021-01-18 18:29:59', 1, 0),
(1313, 'ambulance', '236-7614', 'De #318-8187 : Attention médicale requise: citoyen inconscient! -767.56182861328, 1664.3985595704', '2021-01-18 18:29:59', 0, 0),
(1314, 'ambulance', '972-8042', 'De #318-8187 : Attention médicale requise: citoyen inconscient! -767.56182861328, 1664.3985595704', '2021-01-18 18:29:59', 1, 0),
(1315, 'ambulance', '665-4821', 'De #318-8187 : Attention médicale requise: citoyen inconscient! -767.56182861328, 1664.3985595704', '2021-01-18 18:29:59', 1, 0),
(1316, '185-5624', '226-7457', 'C\'est possible d\'avoir un rdv avec toi ? Un associé à moi aimerais parler buisiness', '2021-01-18 18:30:00', 0, 0),
(1317, '226-7457', '185-5624', 'C\'est possible d\'avoir un rdv avec toi ? Un associé à moi aimerais parler buisiness', '2021-01-18 18:30:00', 1, 1),
(1318, '318-8087', '411-9915', 'Bonjour j\'ai eu votre numero par une personne annonyme qui ma dit que vous seriez intérreser pour faire  du buisennes ensemble??', '2021-01-18 18:30:32', 1, 1),
(1319, '495-4532', '665-4821', 'tu veux que je vienne te chercher', '2021-01-18 18:30:50', 1, 0),
(1320, '665-4821', '495-4532', 'tu veux que je vienne te chercher', '2021-01-18 18:30:50', 1, 1),
(1321, '665-4821', '495-4532', 'OUE ATTEND', '2021-01-18 18:31:07', 1, 0),
(1322, '495-4532', '665-4821', 'OUE ATTEND', '2021-01-18 18:31:07', 1, 1),
(1323, 'ambulance', '318-8187', 'De #318-8187 : jsuis a terre', '2021-01-18 18:31:18', 1, 0),
(1324, 'ambulance', '871-5075', 'De #318-8187 : jsuis a terre', '2021-01-18 18:31:18', 1, 0),
(1325, 'ambulance', '353-9631', 'De #318-8187 : jsuis a terre', '2021-01-18 18:31:18', 0, 0),
(1326, 'ambulance', '236-7614', 'De #318-8187 : jsuis a terre', '2021-01-18 18:31:18', 0, 0),
(1327, 'ambulance', '972-8042', 'De #318-8187 : jsuis a terre', '2021-01-18 18:31:18', 1, 0),
(1328, 'ambulance', '665-4821', 'De #318-8187 : jsuis a terre', '2021-01-18 18:31:18', 1, 0),
(1329, 'ambulance', '318-8187', 'jsuis a terre', '2021-01-18 18:31:18', 1, 1),
(1330, '495-4532', '665-4821', 'ok', '2021-01-18 18:31:23', 1, 0),
(1331, '665-4821', '495-4532', 'ok', '2021-01-18 18:31:23', 1, 1),
(1332, '665-4821', '495-4532', 'TFK TOI LA ?', '2021-01-18 18:31:35', 1, 0),
(1333, '495-4532', '665-4821', 'TFK TOI LA ?', '2021-01-18 18:31:35', 1, 1),
(1334, '495-4532', '665-4821', 'rien', '2021-01-18 18:31:44', 1, 0),
(1335, '665-4821', '495-4532', 'rien', '2021-01-18 18:31:44', 1, 1),
(1336, '665-4821', '495-4532', 'TFK TOI DEJA DANS LA VIE ?', '2021-01-18 18:31:55', 1, 0),
(1337, '495-4532', '665-4821', 'TFK TOI DEJA DANS LA VIE ?', '2021-01-18 18:31:55', 1, 1),
(1338, '495-4532', '665-4821', 'mécano', '2021-01-18 18:32:18', 1, 0),
(1339, '665-4821', '495-4532', 'mécano', '2021-01-18 18:32:19', 1, 1),
(1340, '318-8087', '411-9915', '??', '2021-01-18 18:32:22', 1, 1),
(1341, '665-4821', '495-4532', 'DACOORD', '2021-01-18 18:32:29', 1, 0),
(1342, '495-4532', '665-4821', 'DACOORD', '2021-01-18 18:32:29', 1, 1),
(1343, '495-4532', '665-4821', 'envois ta pose stv', '2021-01-18 18:32:52', 1, 0),
(1344, '665-4821', '495-4532', 'envois ta pose stv', '2021-01-18 18:32:52', 1, 1),
(1345, '665-4821', '495-4532', 'ATTEND', '2021-01-18 18:33:03', 1, 0),
(1346, '495-4532', '665-4821', 'ATTEND', '2021-01-18 18:33:03', 1, 1),
(1347, '495-4532', '665-4821', 'ok', '2021-01-18 18:33:18', 1, 0),
(1348, '665-4821', '495-4532', 'ok', '2021-01-18 18:33:19', 1, 1),
(1349, 'ambulance', '871-5075', 'De #633-1896 : Attention médicale requise: citoyen inconscient! -78.413673400878, -1076.0158691406', '2021-01-18 18:33:24', 1, 0),
(1350, 'ambulance', '353-9631', 'De #633-1896 : Attention médicale requise: citoyen inconscient! -78.413673400878, -1076.0158691406', '2021-01-18 18:33:24', 0, 0),
(1351, 'ambulance', '236-7614', 'De #633-1896 : Attention médicale requise: citoyen inconscient! -78.413673400878, -1076.0158691406', '2021-01-18 18:33:24', 0, 0),
(1352, 'ambulance', '318-8187', 'De #633-1896 : Attention médicale requise: citoyen inconscient! -78.413673400878, -1076.0158691406', '2021-01-18 18:33:24', 1, 0),
(1353, 'ambulance', '665-4821', 'De #633-1896 : Attention médicale requise: citoyen inconscient! -78.413673400878, -1076.0158691406', '2021-01-18 18:33:24', 1, 0),
(1354, 'ambulance', '972-8042', 'De #633-1896 : Attention médicale requise: citoyen inconscient! -78.413673400878, -1076.0158691406', '2021-01-18 18:33:24', 0, 0),
(1355, 'ambulance', '236-7614', 'De #873-2216 : Attention médicale requise: citoyen inconscient! -197.95286560058, -661.9028930664', '2021-01-18 18:33:41', 0, 0),
(1356, 'ambulance', '353-9631', 'De #873-2216 : Attention médicale requise: citoyen inconscient! -197.95286560058, -661.9028930664', '2021-01-18 18:33:41', 0, 0),
(1357, 'ambulance', '318-8187', 'De #873-2216 : Attention médicale requise: citoyen inconscient! -197.95286560058, -661.9028930664', '2021-01-18 18:33:41', 1, 0),
(1358, 'ambulance', '871-5075', 'De #873-2216 : Attention médicale requise: citoyen inconscient! -197.95286560058, -661.9028930664', '2021-01-18 18:33:41', 1, 0),
(1359, 'ambulance', '972-8042', 'De #873-2216 : Attention médicale requise: citoyen inconscient! -197.95286560058, -661.9028930664', '2021-01-18 18:33:41', 0, 0),
(1360, 'ambulance', '665-4821', 'De #873-2216 : Attention médicale requise: citoyen inconscient! -197.95286560058, -661.9028930664', '2021-01-18 18:33:41', 1, 0),
(1361, 'ambulance', '353-9631', 'De #813-3011 : Attention médicale requise: citoyen inconscient! -721.23956298828, -943.3833618164', '2021-01-18 18:34:31', 0, 0),
(1362, 'ambulance', '972-8042', 'De #813-3011 : Attention médicale requise: citoyen inconscient! -721.23956298828, -943.3833618164', '2021-01-18 18:34:31', 0, 0),
(1363, 'ambulance', '236-7614', 'De #813-3011 : Attention médicale requise: citoyen inconscient! -721.23956298828, -943.3833618164', '2021-01-18 18:34:31', 0, 0),
(1364, 'ambulance', '318-8187', 'De #813-3011 : Attention médicale requise: citoyen inconscient! -721.23956298828, -943.3833618164', '2021-01-18 18:34:31', 1, 0),
(1365, 'ambulance', '871-5075', 'De #813-3011 : Attention médicale requise: citoyen inconscient! -721.23956298828, -943.3833618164', '2021-01-18 18:34:31', 1, 0),
(1366, 'ambulance', '665-4821', 'De #813-3011 : Attention médicale requise: citoyen inconscient! -721.23956298828, -943.3833618164', '2021-01-18 18:34:31', 1, 0),
(1367, '555-2731', '732-5579', 'wesh, tu peux venir me cherche stp.', '2021-01-18 18:36:01', 1, 0),
(1368, '732-5579', '555-2731', 'wesh, tu peux venir me cherche stp.', '2021-01-18 18:36:01', 1, 1),
(1369, 'ambulance', '871-5075', 'De #551-9185 : Attention médicale requise: citoyen inconscient! 30.450078964234, -1118.1057128906', '2021-01-18 18:37:05', 1, 0),
(1370, 'ambulance', '236-7614', 'De #551-9185 : Attention médicale requise: citoyen inconscient! 30.450078964234, -1118.1057128906', '2021-01-18 18:37:05', 0, 0),
(1371, 'ambulance', '353-9631', 'De #551-9185 : Attention médicale requise: citoyen inconscient! 30.450078964234, -1118.1057128906', '2021-01-18 18:37:05', 0, 0),
(1372, 'ambulance', '318-8187', 'De #551-9185 : Attention médicale requise: citoyen inconscient! 30.450078964234, -1118.1057128906', '2021-01-18 18:37:05', 1, 0),
(1373, 'ambulance', '972-8042', 'De #551-9185 : Attention médicale requise: citoyen inconscient! 30.450078964234, -1118.1057128906', '2021-01-18 18:37:05', 0, 0),
(1374, 'ambulance', '665-4821', 'De #551-9185 : Attention médicale requise: citoyen inconscient! 30.450078964234, -1118.1057128906', '2021-01-18 18:37:05', 1, 0),
(1375, 'ambulance', '871-5075', 'De #329-1868 : Attention médicale requise: citoyen inconscient! 25.868770599366, -1111.8001708984', '2021-01-18 18:37:11', 1, 0),
(1376, 'ambulance', '353-9631', 'De #329-1868 : Attention médicale requise: citoyen inconscient! 25.868770599366, -1111.8001708984', '2021-01-18 18:37:11', 0, 0),
(1377, 'ambulance', '236-7614', 'De #329-1868 : Attention médicale requise: citoyen inconscient! 25.868770599366, -1111.8001708984', '2021-01-18 18:37:11', 0, 0),
(1378, 'ambulance', '318-8187', 'De #329-1868 : Attention médicale requise: citoyen inconscient! 25.868770599366, -1111.8001708984', '2021-01-18 18:37:11', 1, 0),
(1379, 'ambulance', '972-8042', 'De #329-1868 : Attention médicale requise: citoyen inconscient! 25.868770599366, -1111.8001708984', '2021-01-18 18:37:11', 0, 0),
(1380, 'ambulance', '665-4821', 'De #329-1868 : Attention médicale requise: citoyen inconscient! 25.868770599366, -1111.8001708984', '2021-01-18 18:37:11', 1, 0),
(1381, 'ambulance', '871-5075', 'De #813-3011 : Attention médicale requise: citoyen inconscient! -726.31378173828, -576.48028564454', '2021-01-18 18:40:22', 1, 0),
(1382, 'ambulance', '236-7614', 'De #813-3011 : Attention médicale requise: citoyen inconscient! -726.31378173828, -576.48028564454', '2021-01-18 18:40:22', 0, 0),
(1383, 'ambulance', '353-9631', 'De #813-3011 : Attention médicale requise: citoyen inconscient! -726.31378173828, -576.48028564454', '2021-01-18 18:40:22', 0, 0),
(1384, 'ambulance', '318-8187', 'De #813-3011 : Attention médicale requise: citoyen inconscient! -726.31378173828, -576.48028564454', '2021-01-18 18:40:22', 1, 0),
(1385, 'ambulance', '972-8042', 'De #813-3011 : Attention médicale requise: citoyen inconscient! -726.31378173828, -576.48028564454', '2021-01-18 18:40:22', 0, 0),
(1386, 'ambulance', '665-4821', 'De #813-3011 : Attention médicale requise: citoyen inconscient! -726.31378173828, -576.48028564454', '2021-01-18 18:40:22', 1, 0),
(1387, '665-4821', '495-4532', 'TES PAS MECANO NTOI', '2021-01-18 18:45:58', 1, 0),
(1388, '495-4532', '665-4821', 'TES PAS MECANO NTOI', '2021-01-18 18:45:58', 1, 1),
(1389, '495-4532', '665-4821', 'BAS SI', '2021-01-18 18:46:39', 1, 0),
(1390, '665-4821', '495-4532', 'BAS SI', '2021-01-18 18:46:39', 1, 1),
(1391, '665-4821', '495-4532', 'IL MON DIS NN', '2021-01-18 18:47:06', 0, 0),
(1392, '495-4532', '665-4821', 'IL MON DIS NN', '2021-01-18 18:47:07', 1, 1),
(1393, '871-5075', '665-4821', 'je te lesse akim', '2021-01-18 18:48:15', 1, 0),
(1394, '665-4821', '871-5075', 'je te lesse akim', '2021-01-18 18:48:15', 1, 1),
(1395, '665-4821', '871-5075', 'JE TE LAISSE JE TE PARLE TU ME REPOND MEME PAS', '2021-01-18 18:49:30', 0, 0),
(1396, '871-5075', '665-4821', 'JE TE LAISSE JE TE PARLE TU ME REPOND MEME PAS', '2021-01-18 18:49:30', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `display` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `phone_users_contacts`
--

INSERT INTO `phone_users_contacts` (`id`, `identifier`, `number`, `display`) VALUES
(1, 'license:b8dc6fdefadfc4f87cd01eb2fb8c699d878c517e', '330-5100', 'Jason Blake'),
(2, 'license:da2b7bb286feb4216da44e653ed8c3a09185e725', '162-4818', 'Kwiiscoo'),
(3, 'license:bb4a8d84aaca8046b664c2bb07d523ad08dcb7de', '416-8795', 'Juan'),
(4, 'license:bb4a8d84aaca8046b664c2bb07d523ad08dcb7de', '288-9433', 'Drake'),
(5, 'license:3bb71158776485ef53b42a8bdd7e566a5815ec9a', '277-6301', 'Adel'),
(6, 'license:d0e8b15af46601dd729c34eb06f0d78ae7614ed4', '515-6348', 'Moha'),
(7, 'license:41154f4e3d84bd477029c17f1762c816dc15e456', '416-8795', 'jacob'),
(8, 'license:3bb71158776485ef53b42a8bdd7e566a5815ec9a', '288-9433', 'Drake'),
(9, 'license:e98611ed0c1b98a885fa20b08c25edd954a40dcf', '915-8004', 'Mark Layers'),
(10, 'license:866f002cca77133c14e8ad6ad37aa525fefc00f2', '162-4818', 'Tomy '),
(11, 'license:a5df0dde5e7522bbc6e95ff04d98d46f5c1b740d', '404-4957', 'Taylor'),
(12, 'license:a5df0dde5e7522bbc6e95ff04d98d46f5c1b740d', '330-5100', 'jeason'),
(13, 'license:b8dc6fdefadfc4f87cd01eb2fb8c699d878c517e', '183-1880', 'Zack Reay'),
(14, 'license:8db35f925f269068f07d4d44576c771f0142dbb7', '183-1880', 'Zak'),
(15, 'license:bd5ee579df9dcbdeb9d933be3da184155d60b01c', '8743767', 'noah'),
(16, 'license:10be05819fcd7a2edd4a636d9748c4dc9472e26a', '425-6939', 'Karim'),
(17, 'license:bd5ee579df9dcbdeb9d933be3da184155d60b01c', '874-3767', 'noah'),
(18, 'license:d53af9b89c13f02980a4128ca7d5724fdad73e8a', '871-5075', 'mousa snow PDG EMS'),
(19, 'license:503c0786210165d48189edd11f101fd0d88d088d', '792-3652', 'Mathys'),
(20, 'license:789634d4d254d3faf0f15cfd3520110029ccdb99', '792-3652', 'mathys PDG mecano'),
(21, 'license:8db35f925f269068f07d4d44576c771f0142dbb7', '813-3011', 'Pablo'),
(22, 'license:10be05819fcd7a2edd4a636d9748c4dc9472e26a', '884-3792', 'Commendant'),
(23, 'license:789634d4d254d3faf0f15cfd3520110029ccdb99', '884-3792', 'commandants LSPD JEMS'),
(24, 'license:b8dc6fdefadfc4f87cd01eb2fb8c699d878c517e', '792-3652', 'PDG Mecano'),
(25, 'license:a5df0dde5e7522bbc6e95ff04d98d46f5c1b740d', '897-5503', 'Damarko'),
(26, 'license:a5df0dde5e7522bbc6e95ff04d98d46f5c1b740d', '746-6644', 'Cian'),
(27, 'license:2a580ab916407368ee59388073f333724db94394', '183-1880', 'Zack Reay'),
(28, 'license:b8dc6fdefadfc4f87cd01eb2fb8c699d878c517e', '871-5075', 'Moussa'),
(30, 'license:e76874578b7b5070f707d621a52ffe81b4ad5c4f', '824-2255', 'Junoir'),
(31, 'license:a5df0dde5e7522bbc6e95ff04d98d46f5c1b740d', '318-6568', 'OG '),
(63, 'license:6e343cb7e5a04798731aca2f43471d25d97b4ac4', '495-4532', 'Hakim'),
(33, 'license:8db35f925f269068f07d4d44576c771f0142dbb7', '160-5643', 'Habi'),
(34, 'license:789634d4d254d3faf0f15cfd3520110029ccdb99', '665-4821', 'noemie'),
(35, 'license:549595c76b7f480ab7e3c92fc13a3d5cb446747a', '219-7517', 'V-BOOS'),
(36, 'license:549595c76b7f480ab7e3c92fc13a3d5cb446747a', '162-4818', 'V-SOUS BOSS'),
(37, 'license:6f956e5f879a2ea73187e7233907b5b50211718f', '871-5075', 'Nouveau Contact'),
(38, 'license:032c91c6ba2ecd026f566f599bcfd0b5081b1fc1', '871-5075', 'Moussa SNOW EMS'),
(39, 'license:8db35f925f269068f07d4d44576c771f0142dbb7', '208-3420', 'réfé'),
(62, 'license:6e343cb7e5a04798731aca2f43471d25d97b4ac4', '871-5075', 'Moussa'),
(41, 'license:021d6a26229dcbaa459f0fc846cf3ed388ebcd3f', '9674328', 'Aziz'),
(42, 'license:021d6a26229dcbaa459f0fc846cf3ed388ebcd3f', '967-4328', 'Aziz'),
(43, 'license:eb0acd29bfe5f891f78f4dd3cb4a17c350c20b06', '185-5624', 'Dembe Zuma ^^'),
(44, 'license:032c91c6ba2ecd026f566f599bcfd0b5081b1fc1', '884-3792', '- 83'),
(45, 'license:789634d4d254d3faf0f15cfd3520110029ccdb99', '404-4957', 'bloods '),
(46, 'license:789634d4d254d3faf0f15cfd3520110029ccdb99', '318-8187', 'alexi frero'),
(47, 'license:3b10e0a3853dd5be5acb189e4e6b67732071580c', '411-9915', 'Nick\'s pizza'),
(48, 'license:389889093c046e700f96c548b71507af5d9a21d3', '318-8187', 'Nouveau Contact'),
(49, 'license:eb0acd29bfe5f891f78f4dd3cb4a17c350c20b06', '172-8840', 'William EMS'),
(50, 'license:789634d4d254d3faf0f15cfd3520110029ccdb99', '411-9915', 'szergio co patron vigneron'),
(51, 'license:eb0acd29bfe5f891f78f4dd3cb4a17c350c20b06', '871-5075', 'pdg ems '),
(52, 'license:67585afbc26a7cc0350cadf5b56fb0f163270cd3', '871-5075', 'PDG EMS'),
(53, 'license:3b10e0a3853dd5be5acb189e4e6b67732071580c', '871-5075', 'PDG EMS Moussa '),
(54, 'license:2e9ec7d8cad19bce0392d1938e413f28d1196252', '5552731', 'D.Ace'),
(55, 'license:2e9ec7d8cad19bce0392d1938e413f28d1196252', '3186568', 'OG'),
(56, 'license:3b10e0a3853dd5be5acb189e4e6b67732071580c', '226-7457', 'Garde du corps'),
(57, 'license:503c0786210165d48189edd11f101fd0d88d088d', '567-3868', 'Kyle'),
(58, 'license:b1073c955ae77351121326fe025c141e975859f0', '237-4103', 'Yanis'),
(61, 'license:6e343cb7e5a04798731aca2f43471d25d97b4ac4', '318-8187', 'ALEXIS'),
(60, 'license:791c2ff94b279ac06b57531c9c8f2657d259a210', '824-2255', 'Junior'),
(64, 'license:791c2ff94b279ac06b57531c9c8f2657d259a210', '612-6314', 'Ruan'),
(65, 'license:f0ced31318fc5f638e528ee489541c57612aaa18', '318-6568', 'OG(Bloods)'),
(66, 'license:f0ced31318fc5f638e528ee489541c57612aaa18', '404-4957', 'Numbald(Taylor)'),
(67, 'license:f0ced31318fc5f638e528ee489541c57612aaa18', '897-5503', 'Damarko'),
(68, 'license:0648e154110e69d046382640c7236c34e5d4ac7f', '732-5579', 'Travis'),
(69, 'license:f0ced31318fc5f638e528ee489541c57612aaa18', '746-6644', 'CIan'),
(70, 'license:f0ced31318fc5f638e528ee489541c57612aaa18', '183-1880', 'Zack'),
(71, 'license:0648e154110e69d046382640c7236c34e5d4ac7f', '318-6568', 'OG/Chef des blood '),
(72, 'license:f0ced31318fc5f638e528ee489541c57612aaa18', '555-2731', 'Ace(Babdine)'),
(73, 'license:0648e154110e69d046382640c7236c34e5d4ac7f', '204-9865', 'White D / Nima /Ramirez'),
(74, 'license:d53af9b89c13f02980a4128ca7d5724fdad73e8a', '495-4532', 'abdel MATT'),
(75, 'license:3b10e0a3853dd5be5acb189e4e6b67732071580c', '318-8087', 'Alexis [EMS]'),
(76, 'license:eb0acd29bfe5f891f78f4dd3cb4a17c350c20b06', '318-8087', 'Alexis EMS ');

-- --------------------------------------------------------

--
-- Structure de la table `playerstattoos`
--

CREATE TABLE `playerstattoos` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `entering` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `exit` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `inside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `outside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ipls` varchar(255) COLLATE utf8mb4_bin DEFAULT '[]',
  `gateway` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000);

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `player_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT 'carshop'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `shops`
--

CREATE TABLE `shops` (
  `item` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `shops`
--

INSERT INTO `shops` (`item`, `price`) VALUES
('bread', 5),
('phone', 200),
('water', 7);

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `tebex_boutique`
--

CREATE TABLE `tebex_boutique` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descriptions` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `action` longtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tebex_boutique`
--

INSERT INTO `tebex_boutique` (`id`, `category`, `name`, `descriptions`, `price`, `is_enabled`, `action`, `created_at`, `updated_at`) VALUES
(1, 3, 'Pack Arme-Mini', 'Micro-smg + Pistolet Lourd + machette ', 2499, 1, '{\"weapons\":[{\"ammo\":50,\"name\":\"weapon_pistol\"},{\"ammo\":1,\"name\":\"weapon_knuckle\"},{\"ammo\":500,\"name\":\"weapon_minismg\"}]}', '2020-11-01 01:21:42', '2020-11-01 01:21:42'),
(14, 3, 'Full Custom', 'Permet de customiser son véhicule au mécano au Maximum (demande de custom sur les tickets discord).', 1000, 1, '{}', '2020-11-01 03:22:44', '2020-11-01 03:22:44'),
(15, 3, 'Pack Gang/Organisation', '- Label Officiel \r\nAccès Menu F7 (Fouiller / Escorter) ,Zône Contrôlée', 4745, 1, '{}', '2020-11-01 03:25:54', '2020-11-01 03:25:54'),
(27, 1, 'AK-47', 'AK-47 permanente ', 3000, 1, '{\"weapons\":[{\"ammo\":250,\"name\":\"weapon_assaultrifle\"},]}', '2020-11-01 01:31:30', '2020-11-01 01:31:30'),
(28, 1, 'Combat PDW', 'Combat PDW', 2500, 1, '{\"weapons\":[{\"ammo\":250,\"name\":\"weapon_combatpdw\"},]}', '2020-11-01 01:31:30', '2020-11-01 01:31:30'),
(400, 1, 'M4', 'M4 permanente', 3000, 1, '{\"weapons\":[{\"ammo\":200,\"name\":\"weapon_carbinerifle\"},]}', '2020-11-01 01:31:30', '2020-11-01 01:31:30'),
(502, 2, 'tmax', 'Vitesse Max 275km', 1500, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"tmax\"}]}', '2021-01-14 05:44:16', '2021-01-14 05:44:16'),
(503, 3, 'Pack Arme-Gang Bronze', 'Bat + Machete + Poing americain', 500, 1, '{\"weapons\":[{\"ammo\":1,\"name\":\"weapon_bat\"},{\"ammo\":1,\"name\":\"weapon_knuckle\"},{\"ammo\":1,\"name\":\"weapon_machete\"}]}', '2021-01-14 07:13:51', '2021-01-14 07:13:51'),
(504, 2, 'Urus 2018', 'Vitesse Max 320km', 2500, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"urus2018\"}]}', '2021-01-14 13:33:09', '2021-01-14 13:33:09'),
(505, 2, '911turbos', 'Vitesse Max 400km', 2500, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"911turbos\"}]}', '2021-01-14 13:45:46', '2021-01-14 13:45:46'),
(506, 2, 'arv10 (AudiR8)', 'Vitesse Max 240km', 2000, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"arv10\"}]}', '2021-01-14 14:04:28', '2021-01-14 14:04:28'),
(507, 2, 'velar (RangeRover)', 'Vitesse Max 180km', 1500, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"velar\"}]}', '2021-01-14 14:18:44', '2021-01-14 14:18:44'),
(508, 2, 'laferrari17', 'Vitesse Max 260km', 2000, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"laferrari17\"}]}', '2021-01-14 14:31:38', '2021-01-14 14:31:38'),
(509, 2, 'rmodmi8 (BMW)', 'Vitesse Max 190km', 1500, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"rmodmi8\"}]}', '2021-01-14 15:27:58', '2021-01-14 15:27:58'),
(510, 2, 'pturismo (Porsche Panamera)', 'Vitesse Max 280km', 2000, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"pturismo\"}]}', '2021-01-14 15:43:47', '2021-01-14 15:43:47'),
(511, 2, 'demonhawk (JEEP)', 'Vitesse Max 278km', 2000, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"demonhawk\"}]}', '2021-01-14 15:56:50', '2021-01-14 15:56:50'),
(512, 2, 'mvisiongt (Mercedes)', 'Vitesse Max 250km', 2000, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"mvisiongt\"}]}', '2021-01-14 16:25:26', '2021-01-14 16:25:26'),
(513, 2, 'rmodx6 (BMW)', 'Vitesse Max 220km', 2000, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"rmodx6\"}]}', '2021-01-14 16:38:50', '2021-01-14 16:38:50'),
(514, 2, 'brabus700 (Mercedes Brabus)', 'Vitesse Max 160km', 1500, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"brabus700\"}]}', '2021-01-14 16:56:14', '2021-01-14 16:56:14'),
(515, 2, 'a45', 'Vitesse Max 240km', 2000, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"a45\"}]}', '2021-01-14 17:36:27', '2021-01-14 17:36:27'),
(516, 2, 'divo ', 'Vitesse Max 330km', 3000, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"divo\"}]}', '2021-01-14 21:29:33', '2021-01-14 21:29:33');

-- --------------------------------------------------------

--
-- Structure de la table `tebex_boutique_category`
--

CREATE TABLE `tebex_boutique_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descriptions` varchar(255) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tebex_boutique_category`
--

INSERT INTO `tebex_boutique_category` (`id`, `name`, `descriptions`, `is_enabled`, `created_at`, `updated_at`) VALUES
(1, 'Armes', 'Packs  armes imports ', 1, '2020-10-31 21:26:42', '2020-10-31 21:26:42'),
(2, 'Véhicules', 'Véhicules imports défintifs', 1, '2020-10-31 21:28:00', '2020-10-31 21:28:00'),
(3, 'Packs ', 'Pack Gang , Pack Gold/Silver/Bronze ', 1, '2020-10-31 21:57:58', '2020-10-31 21:57:58');

-- --------------------------------------------------------

--
-- Structure de la table `tebex_players_wallet`
--

CREATE TABLE `tebex_players_wallet` (
  `id` int(11) NOT NULL,
  `identifiers` varchar(255) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `points` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tebex_players_wallet`
--

INSERT INTO `tebex_players_wallet` (`id`, `identifiers`, `transaction`, `price`, `currency`, `points`, `created_at`, `updated_at`) VALUES
(39, '526890', 'tbx-4941621a86089-5c45e9', '4.16', 'EUR', 4500, '2021-01-18 00:55:33', '2021-01-18 00:55:33'),
(40, '526890', 'Achat object laferrari17', '0', 'Points', -2000, '2021-01-18 01:01:58', '2021-01-18 01:01:58'),
(41, '526890', 'Achat object a45', '0', 'Points', -2000, '2021-01-18 01:13:42', '2021-01-18 01:13:42'),
(42, '526890', 'Achat object Pack Arme-Gang Bronze', '0', 'Points', -500, '2021-01-18 13:22:26', '2021-01-18 13:22:26');

-- --------------------------------------------------------

--
-- Structure de la table `truck_inventory`
--

CREATE TABLE `truck_inventory` (
  `id` int(11) NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `plate` varchar(8) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `twitter_accounts`
--

INSERT INTO `twitter_accounts` (`id`, `username`, `password`, `avatar_url`) VALUES
(1, 'Moussa Snow', 'Soumara22', 'https://i.imgur.com/'),
(2, 'Djamel', 'wxsujet', NULL),
(3, 'Yanis Idrissi', 'Yanis100.', NULL),
(4, 'Mathys Mécano', 'mathys', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fm.hypercars.co%2Farticles%2Fmclaren-p1-gtr-road-legal-for-sale&psig=AOvVaw3LLePGeD9jQ5SsT_aoNHsm&ust=1610983141251000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIjOtN2jo-4CFQAAAAAdAAAAABAD'),
(5, 'dimitri vegast ', 'dimitri', 'https://i.imgur.com/'),
(6, 'Reddington', 'Saintcyr974', NULL),
(7, 'alexis', 'macherie', NULL),
(8, 'alex medecin', 'alexis', 'https://i.golife'),
(9, 'Kyle', 'redaaitzidane2007', NULL),
(10, 'Sancha', 'dragolol1', 'https://i.imgur.com/');

-- --------------------------------------------------------

--
-- Structure de la table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `twitter_likes`
--

INSERT INTO `twitter_likes` (`id`, `authorId`, `tweetId`) VALUES
(1, 8, 11);

-- --------------------------------------------------------

--
-- Structure de la table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `twitter_tweets`
--

INSERT INTO `twitter_tweets` (`id`, `authorId`, `realUser`, `message`, `time`, `likes`) VALUES
(1, 1, 'license:789634d4d254d3faf0f15cfd3520110029ccdb99', 'EMS en ville !! et a votre disposition', '2021-01-17 01:37:13', 0),
(2, 1, 'license:789634d4d254d3faf0f15cfd3520110029ccdb99', 'Il a PDG EMS en ville', '2021-01-17 12:38:13', 0),
(3, 2, 'license:f24a978ad9ef9af1d97c2087a2827314413bde60', 'test', '2021-01-17 12:58:31', 0),
(4, 3, 'license:503c0786210165d48189edd11f101fd0d88d088d', 'Concess auto dispo ?', '2021-01-17 15:17:32', 0),
(5, 4, 'license:d53af9b89c13f02980a4128ca7d5724fdad73e8a', 'cc', '2021-01-17 15:19:32', 0),
(6, 4, 'license:d53af9b89c13f02980a4128ca7d5724fdad73e8a', 'concess dispo?', '2021-01-17 16:09:12', 0),
(7, 5, 'license:486772518643be09ef555c2265955aaedcddfee1', 'mécano ouvert !!!', '2021-01-17 18:59:42', 0),
(8, 6, 'license:3b10e0a3853dd5be5acb189e4e6b67732071580c', 'Un medecin de disponible ?', '2021-01-17 21:59:21', 0),
(9, 7, 'license:6777e08cb20922350bb9a15189c5316d90bc4feb', 'qui peux m\'aider svp .', '2021-01-18 08:57:35', 0),
(10, 7, 'license:6777e08cb20922350bb9a15189c5316d90bc4feb', 'Qui peux m\'aider svp ?', '2021-01-18 08:57:49', 0),
(11, 8, 'license:6f956e5f879a2ea73187e7233907b5b50211718f', 'wsh savez vous ou il a des belle demoiselle', '2021-01-18 12:09:46', 1),
(12, 10, 'license:ed86ba960858dba3a3c06a50af1a0ddfdc33add2', 'Bonjours, Il n\'y a pas de concessionnaire auto ?', '2021-01-18 13:18:35', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `character_id` int(11) NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permission_group` varchar(50) COLLATE utf8mb4_bin DEFAULT 'user',
  `permission_level` int(11) DEFAULT 0,
  `position` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `accounts` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `inventory` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed2',
  `job2_grade` int(11) DEFAULT 0,
  `isDead` int(11) DEFAULT 0,
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `animations` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `users`
--



--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(1, 'dmv', 'license:10be05819fcd7a2edd4a636d9748c4dc9472e26a'),
(2, 'drive', 'license:10be05819fcd7a2edd4a636d9748c4dc9472e26a'),
(3, 'drive_bike', 'license:10be05819fcd7a2edd4a636d9748c4dc9472e26a'),
(4, 'dmv', 'license:789634d4d254d3faf0f15cfd3520110029ccdb99'),
(5, 'drive', 'license:789634d4d254d3faf0f15cfd3520110029ccdb99'),
(6, 'drive_bike', 'license:789634d4d254d3faf0f15cfd3520110029ccdb99'),
(7, 'drive_truck', 'license:789634d4d254d3faf0f15cfd3520110029ccdb99'),
(8, 'dmv', 'license:6da3227e7af5f44843816fd3fa0460217b9f5f6c'),
(9, 'drive', 'license:6da3227e7af5f44843816fd3fa0460217b9f5f6c'),
(10, 'drive_bike', 'license:6da3227e7af5f44843816fd3fa0460217b9f5f6c'),
(11, 'drive_truck', 'license:6da3227e7af5f44843816fd3fa0460217b9f5f6c'),
(12, 'dmv', 'license:41154f4e3d84bd477029c17f1762c816dc15e456'),
(13, 'dmv', 'license:f0ced31318fc5f638e528ee489541c57612aaa18'),
(14, 'dmv', 'license:00414ccecc31d240735d82a104674696bd576ad4'),
(15, 'dmv', 'license:2c493fe8b8b1034507f4a988a1372893d486176b'),
(16, 'dmv', 'license:3bb71158776485ef53b42a8bdd7e566a5815ec9a'),
(17, 'drive', 'license:41154f4e3d84bd477029c17f1762c816dc15e456'),
(18, 'drive', 'license:f0ced31318fc5f638e528ee489541c57612aaa18'),
(19, 'drive', 'license:00414ccecc31d240735d82a104674696bd576ad4'),
(20, 'drive', 'license:3bb71158776485ef53b42a8bdd7e566a5815ec9a'),
(21, 'dmv', 'license:503c0786210165d48189edd11f101fd0d88d088d'),
(22, 'drive', 'license:503c0786210165d48189edd11f101fd0d88d088d'),
(23, 'dmv', 'license:2cd957ff0cf30c4728a5c15f7d43db51e339872b'),
(24, 'dmv', 'license:bd5ee579df9dcbdeb9d933be3da184155d60b01c'),
(25, 'drive_truck', 'license:10be05819fcd7a2edd4a636d9748c4dc9472e26a'),
(26, 'dmv', 'license:d53af9b89c13f02980a4128ca7d5724fdad73e8a'),
(27, 'dmv', 'license:85e2ef94b6e0c9b3fa4d0d9ba18a369b2dcd6a0e'),
(28, 'drive', 'license:85e2ef94b6e0c9b3fa4d0d9ba18a369b2dcd6a0e'),
(29, 'drive', 'license:d53af9b89c13f02980a4128ca7d5724fdad73e8a'),
(30, 'dmv', 'license:ba16e605e516ce730157d54bab693b9d2ae1c163'),
(31, 'dmv', 'license:c9e87daf397f37fc5e373494766606d1f5569d27'),
(32, 'dmv', 'license:8db35f925f269068f07d4d44576c771f0142dbb7'),
(33, 'drive', 'license:c9e87daf397f37fc5e373494766606d1f5569d27'),
(34, 'dmv', 'license:486772518643be09ef555c2265955aaedcddfee1'),
(35, 'drive', 'license:486772518643be09ef555c2265955aaedcddfee1'),
(36, 'dmv', 'license:6f956e5f879a2ea73187e7233907b5b50211718f'),
(37, 'dmv', 'license:2e9ec7d8cad19bce0392d1938e413f28d1196252'),
(38, 'drive_bike', 'license:6f956e5f879a2ea73187e7233907b5b50211718f'),
(39, 'drive', 'license:2e9ec7d8cad19bce0392d1938e413f28d1196252'),
(40, 'dmv', 'license:6e343cb7e5a04798731aca2f43471d25d97b4ac4'),
(41, 'dmv', 'license:389889093c046e700f96c548b71507af5d9a21d3'),
(42, 'drive', 'license:6e343cb7e5a04798731aca2f43471d25d97b4ac4'),
(43, 'drive', 'license:389889093c046e700f96c548b71507af5d9a21d3'),
(44, 'dmv', 'license:da4eabafbf9fa5cffd335cc770a4e4e3fcd2c277'),
(45, 'drive', 'license:da4eabafbf9fa5cffd335cc770a4e4e3fcd2c277'),
(46, 'dmv', 'license:fcb64d9cc755be634c42e2413b0aeb90081ab283'),
(47, 'dmv', 'license:0648e154110e69d046382640c7236c34e5d4ac7f'),
(48, 'drive', 'license:fcb64d9cc755be634c42e2413b0aeb90081ab283'),
(49, 'dmv', 'license:eb0acd29bfe5f891f78f4dd3cb4a17c350c20b06'),
(50, 'drive', 'license:0648e154110e69d046382640c7236c34e5d4ac7f'),
(51, 'drive', 'license:eb0acd29bfe5f891f78f4dd3cb4a17c350c20b06'),
(52, 'dmv', 'license:3b10e0a3853dd5be5acb189e4e6b67732071580c'),
(53, 'drive', 'license:3b10e0a3853dd5be5acb189e4e6b67732071580c'),
(54, 'drive_truck', 'license:6f956e5f879a2ea73187e7233907b5b50211718f'),
(55, 'dmv', 'license:4771a3fd094a8aa7650c4103050fd8f6d76b2cf1'),
(56, 'drive', 'license:4771a3fd094a8aa7650c4103050fd8f6d76b2cf1'),
(57, 'dmv', 'license:ed86ba960858dba3a3c06a50af1a0ddfdc33add2'),
(58, 'drive', 'license:ed86ba960858dba3a3c06a50af1a0ddfdc33add2'),
(59, 'drive_bike', 'license:ed86ba960858dba3a3c06a50af1a0ddfdc33add2'),
(60, 'dmv', 'license:ff92b337618b10c40d39c97d83de145395ee54f0'),
(61, 'drive', 'license:ff92b337618b10c40d39c97d83de145395ee54f0'),
(62, 'dmv', 'license:828e2cb61f54dda6ae7a395f9a700ba0d8d12152'),
(63, 'drive', 'license:828e2cb61f54dda6ae7a395f9a700ba0d8d12152'),
(64, 'drive_bike', 'license:828e2cb61f54dda6ae7a395f9a700ba0d8d12152'),
(65, 'drive_truck', 'license:828e2cb61f54dda6ae7a395f9a700ba0d8d12152'),
(66, 'helico', 'license:828e2cb61f54dda6ae7a395f9a700ba0d8d12152'),
(67, 'avion', 'license:828e2cb61f54dda6ae7a395f9a700ba0d8d12152'),
(68, 'dmv', 'license:d1584c099b74ac5f29e0c9ace82cc906f4a66c15'),
(69, 'drive', 'license:d1584c099b74ac5f29e0c9ace82cc906f4a66c15'),
(70, 'drive_bike', 'license:d1584c099b74ac5f29e0c9ace82cc906f4a66c15'),
(71, 'drive_truck', 'license:d1584c099b74ac5f29e0c9ace82cc906f4a66c15'),
(72, 'helico', 'license:d1584c099b74ac5f29e0c9ace82cc906f4a66c15'),
(73, 'avion', 'license:d1584c099b74ac5f29e0c9ace82cc906f4a66c15'),
(74, 'dmv', 'license:2e9717a209ea5061f8dcc98d21e35e16c7c3233a'),
(75, 'drive', 'license:2e9717a209ea5061f8dcc98d21e35e16c7c3233a'),
(76, 'dmv', 'license:bf5c21f757e7f33277519556df672a28b680b9a9'),
(77, 'drive', 'license:bf5c21f757e7f33277519556df672a28b680b9a9'),
(78, 'dmv', 'license:153e390a09e07375455b293b1146b3127f4e7c40'),
(79, 'drive_bike', 'license:ff92b337618b10c40d39c97d83de145395ee54f0'),
(80, 'dmv', 'license:62ad1de30529b2be657190b94f8d2d1afe87b946'),
(81, 'drive', 'license:62ad1de30529b2be657190b94f8d2d1afe87b946'),
(82, 'drive_bike', 'license:62ad1de30529b2be657190b94f8d2d1afe87b946'),
(83, 'drive_truck', 'license:62ad1de30529b2be657190b94f8d2d1afe87b946'),
(84, 'helico', 'license:62ad1de30529b2be657190b94f8d2d1afe87b946'),
(85, 'avion', 'license:62ad1de30529b2be657190b94f8d2d1afe87b946'),
(86, 'dmv', 'license:752033c419535ffa45000d1aaf5aa1f5bef49c40'),
(87, 'drive', 'license:752033c419535ffa45000d1aaf5aa1f5bef49c40'),
(88, 'dmv', 'license:61e4d6e620734e0fe383fffc3c00f88588dacbea'),
(89, 'drive', 'license:61e4d6e620734e0fe383fffc3c00f88588dacbea'),
(90, 'dmv', 'license:95540405f73fd98a0c920c59fc1201b4b958652e'),
(91, 'dmv', 'license:1bba0ffed2c9edd6a5f0d9b842f297cb23435869'),
(92, 'drive', 'license:95540405f73fd98a0c920c59fc1201b4b958652e'),
(93, 'dmv', 'license:1777a6e41a78f0936633af3cec6ffd69e10b3cdc'),
(94, 'drive', 'license:1777a6e41a78f0936633af3cec6ffd69e10b3cdc'),
(95, 'drive_bike', 'license:95540405f73fd98a0c920c59fc1201b4b958652e'),
(96, 'drive_truck', 'license:95540405f73fd98a0c920c59fc1201b4b958652e'),
(97, 'dmv', 'license:f60bb94490863d30a49f502567b127dbdcd870fc'),
(98, 'drive', 'license:f60bb94490863d30a49f502567b127dbdcd870fc'),
(99, 'drive_truck', 'license:f60bb94490863d30a49f502567b127dbdcd870fc');

-- --------------------------------------------------------

--
-- Structure de la table `user_parkings`
--

CREATE TABLE `user_parkings` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `garage` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `model` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`model`, `name`, `price`, `category`) VALUES
('adder', 'Adder', 950000, 'super'),
('akuma', 'Akuma', 17000, 'motorcycles'),
('alpha', 'Alpha', 45000, 'sports'),
('asea', 'Asea', 5500, 'sedans'),
('autarch', 'Autarch', 1200000, 'super'),
('avarus', 'Avarus', 35000, 'motorcycles'),
('bagger', 'Bagger', 22000, 'motorcycles'),
('baller2', 'Baller', 70000, 'suvs'),
('baller3', 'Baller Sport', 90000, 'suvs'),
('banshee', 'Banshee', 60000, 'sports'),
('banshee2', 'Banshee 900R', 80000, 'super'),
('bati', 'Bati 801', 22000, 'motorcycles'),
('bati2', 'Bati 801RR', 35000, 'motorcycles'),
('bestiagts', 'Bestia GTS', 75000, 'sports'),
('bf400', 'BF400', 37000, 'motorcycles'),
('bfinjection', 'Bf Injection', 14000, 'offroad'),
('bifta', 'Bifta', 25000, 'offroad'),
('bison', 'Bison', 22000, 'vans'),
('blade', 'Blade', 17000, 'muscle'),
('blazer', 'Blazer', 14000, 'offroad'),
('blazer4', 'Blazer Sport', 25000, 'offroad'),
('blista', 'Blista', 5000, 'compacts'),
('bmx', 'BMX (velo)', 1000, 'motorcycles'),
('bobcatxl', 'Bobcat XL', 25000, 'vans'),
('brawler', 'Brawler', 257000, 'offroad'),
('brioso', 'Brioso R/A', 21000, 'compacts'),
('btype', 'Btype', 125000, 'sportsclassics'),
('btype2', 'Btype Hotroad', 150000, 'sportsclassics'),
('btype3', 'Btype Luxe', 200000, 'sportsclassics'),
('buccaneer', 'Buccaneer', 37000, 'muscle'),
('buccaneer2', 'Buccaneer Rider', 45000, 'muscle'),
('buffalo', 'Buffalo', 21000, 'sports'),
('buffalo2', 'Buffalo S', 30000, 'sports'),
('bullet', 'Bullet', 95000, 'super'),
('burrito3', 'Burrito', 35000, 'vans'),
('camper', 'Camper', 31000, 'vans'),
('carbonizzare', 'Carbonizzare', 150000, 'sports'),
('carbonrs', 'Carbon RS', 160000, 'motorcycles'),
('casco', 'Casco', 700000, 'sportsclassics'),
('cavalcade2', 'Cavalcade', 27000, 'suvs'),
('cheetah', 'Cheetah', 850000, 'super'),
('chimera', 'Chimera', 125000, 'motorcycles'),
('chino', 'Chino', 60000, 'muscle'),
('chino2', 'Chino Luxe', 75000, 'muscle'),
('cliffhanger', 'Cliffhanger', 170000, 'motorcycles'),
('cogcabrio', 'Cognoscenti Cabrio', 25000, 'coupes'),
('cognoscenti', 'Cognoscenti', 250000, 'sedans'),
('comet2', 'Comet', 280000, 'sports'),
('comet5', 'Comet 5', 330000, 'sports'),
('contender', 'Contender', 45000, 'suvs'),
('coquette', 'Coquette', 255000, 'sports'),
('coquette2', 'Coquette Classic', 200000, 'sportsclassics'),
('coquette3', 'Coquette BlackFin', 300000, 'muscle'),
('cruiser', 'Cruiser (velo)', 1000, 'motorcycles'),
('cyclone', 'Cyclone', 750000, 'super'),
('daemon', 'Daemon', 25000, 'motorcycles'),
('daemon2', 'Daemon High', 30000, 'motorcycles'),
('defiler', 'Defiler', 75000, 'motorcycles'),
('dinghy3', 'Dinghy', 15000000, 'superboat'),
('dominator', 'Dominator', 60000, 'muscle'),
('double', 'Double T', 100000, 'motorcycles'),
('dubsta', 'Dubsta', 14000, 'suvs'),
('dubsta2', 'Dubsta Luxuary', 19000, 'suvs'),
('dubsta3', 'Bubsta 6x6', 80000, 'offroad'),
('dukes', 'Dukes', 12000, 'muscle'),
('dune', 'Dune Buggy', 20000, 'offroad'),
('elegy2', 'Elegy', 35000, 'sports'),
('emperor', 'Emperor', 20000, 'sedans'),
('enduro', 'Enduro', 21000, 'motorcycles'),
('entityxf', 'Entity XF', 650000, 'super'),
('esskey', 'Esskey', 47000, 'motorcycles'),
('exemplar', 'Exemplar', 95000, 'coupes'),
('f620', 'F620', 78000, 'coupes'),
('faction', 'Faction', 57000, 'muscle'),
('faction2', 'Faction Rider', 60000, 'muscle'),
('faction3', 'Faction XL', 65000, 'muscle'),
('faggio', 'Faggio', 2000, 'motorcycles'),
('faggio2', 'Vespa', 3000, 'motorcycles'),
('felon', 'Felon', 45000, 'coupes'),
('felon2', 'Felon GT', 55000, 'coupes'),
('feltzer2', 'Feltzer', 120000, 'sports'),
('feltzer3', 'Stirling GT', 250000, 'sportsclassics'),
('fixter', 'Fixter (velo)', 1000, 'motorcycles'),
('fmj', 'FMJ', 395000, 'super'),
('fq2', 'Fhantom', 55000, 'suvs'),
('frogger', 'Frogger', 10000000, 'avionfdp'),
('fugitive', 'Fugitive', 60000, 'sedans'),
('furoregt', 'Furore GT', 90000, 'sports'),
('fusilade', 'Fusilade', 20000, 'sports'),
('gargoyle', 'Gargoyle', 100000, 'motorcycles'),
('gauntlet', 'Gauntlet', 40000, 'muscle'),
('gburrito', 'Gang Burrito', 15000, 'vans'),
('gburrito2', 'Burrito', 17000, 'vans'),
('glendale', 'Glendale', 9000, 'sedans'),
('granger', 'Grabger', 41000, 'suvs'),
('gresley', 'Gresley', 23000, 'suvs'),
('gt500', 'GT 500', 157000, 'sportsclassics'),
('guardian', 'Guardian', 400000, 'offroad'),
('hakuchou', 'Hakuchou', 20000, 'motorcycles'),
('hakuchou2', 'Hakuchou Sport', 35000, 'motorcycles'),
('hermes', 'Hermes', 60000, 'muscle'),
('hexer', 'Hexer', 50000, 'motorcycles'),
('hotknife', 'Hotknife', 57000, 'muscle'),
('huntley', 'Huntley S', 70000, 'suvs'),
('hustler', 'Hustler', 31000, 'muscle'),
('infernus', 'Infernus', 120000, 'super'),
('innovation', 'Innovation', 30000, 'motorcycles'),
('intruder', 'Intruder', 20000, 'sedans'),
('issi2', 'Issi', 14000, 'compacts'),
('jackal', 'Jackal', 25000, 'coupes'),
('jester', 'Jester', 100000, 'sports'),
('jester2', 'Jester(Racecar)', 125000, 'sports'),
('jetmax', 'Jetmax', 14000000, 'superboat'),
('journey', 'Journey', 15000, 'vans'),
('kamacho', 'Kamacho', 35000, 'offroad'),
('khamelion', 'Khamelion', 120000, 'sports'),
('kuruma', 'Kuruma', 250000, 'sports'),
('landstalker', 'Landstalker', 15500, 'suvs'),
('le7b', 'RE-7B', 700000, 'super'),
('luxor', 'Luxor', 40000000, 'avionfdp'),
('luxor2', 'Luxor Deluxe', 45000000, 'avionfdp'),
('lynx', 'Lynx', 50000, 'sports'),
('mamba', 'Mamba', 50000, 'sports'),
('mammatus', 'Mammatus', 29000000, 'avionfdp'),
('manana', 'Manana', 30000, 'sportsclassics'),
('manchez', 'Manchez', 12000, 'motorcycles'),
('marquis', 'Marquis', 1200000, 'superboat'),
('massacro', 'Massacro', 80000, 'sports'),
('massacro2', 'Massacro(Racecar)', 100000, 'sports'),
('mesa', 'Mesa', 37000, 'suvs'),
('mesa3', 'Mesa Trail', 45000, 'suvs'),
('minivan', 'Minivan', 15000, 'vans'),
('monroe', 'Monroe', 175000, 'sportsclassics'),
('moonbeam', 'Moonbeam', 16000, 'vans'),
('moonbeam2', 'Moonbeam Rider', 16000, 'vans'),
('nemesis', 'Nemesis', 37000, 'motorcycles'),
('neon', 'Neon', 750000, 'sports'),
('nightblade', 'Nightblade', 55000, 'motorcycles'),
('nightshade', 'Nightshade', 65000, 'muscle'),
('ninef', '9F', 100000, 'sports'),
('ninef2', '9F Cabrio', 120000, 'sports'),
('omnis', 'Omnis', 200000, 'sports'),
('oracle2', 'Oracle XS', 100000, 'coupes'),
('osiris', 'Osiris', 450000, 'super'),
('panto', 'Panto', 3500, 'compacts'),
('paradise', 'Paradise', 19200, 'vans'),
('pariah', 'Pariah', 555555, 'sports'),
('patriot', 'Patriot', 50000, 'suvs'),
('pcj', 'PCJ-600', 27000, 'motorcycles'),
('penumbra', 'Penumbra', 43000, 'sports'),
('pfister811', 'Pfister', 250000, 'super'),
('phoenix', 'Phoenix', 33000, 'muscle'),
('picador', 'Picador', 37000, 'muscle'),
('pigalle', 'Pigalle', 20000, 'sportsclassics'),
('prairie', 'Prairie', 25000, 'compacts'),
('premier', 'Premier', 25000, 'sedans'),
('primo2', 'Primo Custom', 30000, 'sedans'),
('prototipo', 'X80 Proto', 1200000, 'super'),
('radi', 'Radius', 19000, 'suvs'),
('raiden', 'raiden', 675000, 'sports'),
('rapidgt', 'Rapid GT', 95000, 'sports'),
('rapidgt2', 'Rapid GT Convertible', 110000, 'sports'),
('rapidgt3', 'Rapid GT3', 130000, 'sportsclassics'),
('reaper', 'Reaper', 275000, 'super'),
('rebel2', 'Rebel', 50000, 'offroad'),
('regina', 'Regina', 14000, 'sedans'),
('retinue', 'Retinue', 19200, 'sportsclassics'),
('riata', 'riata', 110000, 'offroad'),
('rocoto', 'Rocoto', 14000, 'suvs'),
('rogue', 'Rogue', 30000000, 'avionfdp'),
('ruffian', 'Ruffian', 23000, 'motorcycles'),
('rumpo', 'Rumpo', 19000, 'vans'),
('rumpo3', 'Rumpo Trail', 17000, 'vans'),
('sabregt', 'Sabre Turbo', 14000, 'muscle'),
('sabregt2', 'Sabre GT', 25000, 'muscle'),
('sanchez', 'Sanchez', 11000, 'motorcycles'),
('sanchez2', 'Sanchez Sport', 15000, 'motorcycles'),
('sanctus', 'Sanctus', 57000, 'motorcycles'),
('sandking', 'Sandking', 60000, 'offroad'),
('savestra', 'Savestra', 80000, 'sportsclassics'),
('sc1', 'SC 1', 150000, 'super'),
('schafter2', 'Schafter', 75000, 'sedans'),
('schafter3', 'Schafter V12', 90000, 'sports'),
('scorcher', 'Scorcher (velo)', 100, 'motorcycles'),
('seashark', 'SeaShark', 11000000, 'superboat'),
('seashark2', 'Seashark2', 12500000, 'superboat'),
('seminole', 'Seminole', 23000, 'suvs'),
('sentinel', 'Sentinel', 14000, 'coupes'),
('sentinel2', 'Sentinel XS', 20000, 'coupes'),
('sentinel3', 'Sentinel3', 25000, 'sports'),
('seven70', 'Seven 70', 70000, 'sports'),
('sheava', 'ETR1', 170000, 'super'),
('slamvan3', 'Slam Van', 23000, 'muscle'),
('sovereign', 'Sovereign', 17000, 'motorcycles'),
('speeder', 'Speeder', 14000000, 'superboat'),
('squalo', 'Squalo', 11000000, 'superboat'),
('stinger', 'Stinger', 260000, 'sportsclassics'),
('stingergt', 'Stinger GT', 300000, 'sportsclassics'),
('streiter', 'Streiter', 21000, 'sports'),
('stretch', 'Stretch', 600000, 'sedans'),
('stromberg', 'Stromberg', 1000000, 'sports'),
('sultan', 'Sultan', 45000, 'sports'),
('sultanrs', 'Sultan RS', 75000, 'super'),
('suntrap', 'Stuntrap', 5000000, 'superboat'),
('superd', 'Super Diamond', 120000, 'sedans'),
('supervolito', 'SuperVolito', 40000000, 'avionfdp'),
('surano', 'Surano', 100000, 'sports'),
('surfer', 'Surfer', 7000, 'vans'),
('swift', 'Swift', 50000000, 'avionfdp'),
('swift2', 'Swift Deluxe', 60000000, 'avionfdp'),
('t20', 'T20', 600000, 'super'),
('tailgater', 'Tailgater', 30000, 'sedans'),
('tampa', 'Tampa', 25000, 'muscle'),
('tampa2', 'Drift Tampa', 30000, 'sports'),
('thrust', 'Thrust', 12000, 'motorcycles'),
('toro', 'Toro', 12500000, 'superboat'),
('tribike3', 'Tri bike (velo)', 1000, 'motorcycles'),
('trophytruck', 'Trophy Truck', 60000, 'offroad'),
('trophytruck2', 'Trophy Truck Limited', 90000, 'offroad'),
('tropic', 'Tropic', 11500000, 'superboat'),
('tropos', 'Tropos', 95000, 'sports'),
('turismor', 'Turismo R', 500000, 'super'),
('tyrus', 'Tyrus', 120000, 'super'),
('vacca', 'Vacca', 175000, 'super'),
('vader', 'Vader', 25000, 'motorcycles'),
('velum', 'Velum', 35000000, 'avionfdp'),
('verlierer2', 'Verlierer', 180000, 'sports'),
('vestra', 'Vestra', 32000000, 'avionfdp'),
('vigero', 'Vigero', 30000, 'muscle'),
('virgo', 'Virgo', 30000, 'muscle'),
('viseris', 'Viseris', 47000, 'sportsclassics'),
('visione', 'Visione', 1300000, 'super'),
('voltic', 'Voltic', 350000, 'super'),
('voodoo', 'Voodoo', 35000, 'muscle'),
('vortex', 'Vortex', 80000, 'motorcycles'),
('warrener', 'Warrener', 20500, 'sedans'),
('washington', 'Washington', 20500, 'sedans'),
('windsor', 'Windsor', 95000, 'coupes'),
('windsor2', 'Windsor Drop', 95000, 'coupes'),
('wolfsbane', 'Woflsbane', 33000, 'motorcycles'),
('xls', 'XLS', 25000, 'suvs'),
('yosemite', 'Yosemite', 30000, 'muscle'),
('youga', 'Youga', 20000, 'vans'),
('youga2', 'Youga Luxuary', 25000, 'vans'),
('z190', 'Z190', 100000, 'sportsclassics'),
('zentorno', 'Zentorno', 350000, 'super'),
('zion', 'Zion', 60000, 'coupes'),
('zion2', 'Zion Cabrio', 70000, 'coupes'),
('zombiea', 'Zombie', 14000, 'motorcycles'),
('zombieb', 'Zombie Luxuary', 25000, 'motorcycles'),
('ztype', 'Z-Type', 145000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT 'carshop'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`, `society`) VALUES
('avionfdp', 'Avion - Hélico', 'planeshop'),
('compacts', 'Compacts', 'carshop'),
('coupes', 'Coupes', 'carshop'),
('imports', 'Imports', 'carshop'),
('motorcycles', 'Motos', 'carshop'),
('muscle', 'Muscle', 'carshop'),
('offroad', 'Off Road', 'carshop'),
('sedans', 'Sedans', 'carshop'),
('sports', 'Sports', 'carshop'),
('sportsclassics', 'Sports Classics', 'carshop'),
('super', 'Super', 'carshop'),
('superboat', 'Bateau', 'boatshop'),
('suvs', 'SUVs', 'carshop'),
('vans', 'Vans', 'carshop');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `soldby` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT 'carshop'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `vehicle_sold`
--

INSERT INTO `vehicle_sold` (`client`, `model`, `plate`, `soldby`, `date`, `society`) VALUES
('William agarta', 'sentinel2', 'ACTM9630', 'Bersekalex05', '2021-01-17 21:35', 'carshop'),
('robb', 'panto', 'AUWJ0972', 'NEVER | M | Twazii', '2021-01-17 17:54', 'carshop'),
('lenbrapoff', 'sentinel', 'BEDD8316', 'NEVER | M | Twazii', '2021-01-17 19:16', 'carshop'),
('ilyes.b3146', 'akuma', 'BRYC3971', 'NEVER | M | Twazii', '2021-01-17 13:07', 'carshop'),
('kop', 'primo2', 'CGNX7304', '[ Never | A ] Aiden Benfosa', '2021-01-17 19:26', 'carshop'),
('Alexi', 'faggio', 'DCLM1776', 'Bersekalex05', '2021-01-17 20:50', 'carshop'),
('Nix ツ [NEVER]', 'sultanrs', 'DKOI9643', '[ Never | A ] Aiden Benfosa', '2021-01-17 23:27', 'carshop'),
('gab63kil3er', 'bati', 'DQJH1841', 'Jason Blake', '2021-01-18 17:23', 'carshop'),
('mo.jo', 'dubsta', 'DRFW2724', 'Jason Blake', '2021-01-18 17:34', 'carshop'),
('Nix ツ [NEVER]', 'primo2', 'DRPF5835', '[ Never | A ] Aiden Benfosa', '2021-01-17 19:24', 'carshop'),
('$Mike$', 'sultan', 'DTCL0414', 'Bersekalex05', '2021-01-17 19:34', 'carshop'),
('Alexi', 'akuma', 'EYNS4229', 'NEVER | M | Twazii', '2021-01-17 17:48', 'carshop'),
('willchat52', 'bati', 'FECT5751', 'Jason Blake', '2021-01-18 17:21', 'carshop'),
('Moussa Snow', 'seven70', 'GYYT5689', '[ Never | A ] Aiden Benfosa', '2021-01-17 23:32', 'carshop'),
('noemieledesma30', 'brioso', 'HDLK0413', 'Bersekalex05', '2021-01-17 21:03', 'carshop'),
('Aaron Gray', 'buffalo2', 'HLCX6932', 'NEVER | M | Twazii', '2021-01-17 19:32', 'carshop'),
('Sergio Pakito', 'sultanrs', 'HWGV9953', 'Jason Blake', '2021-01-18 17:20', 'carshop'),
('inex5', 'sentinel2', 'IBMG4742', 'Bersekalex05', '2021-01-17 21:40', 'carshop'),
('Sergio Pakito', 'sentinel', 'IKNE9934', 'Bersekalex05', '2021-01-17 19:21', 'carshop'),
('Bryan Lord', 'buffalo', 'IKSA5642', 'NEVER | M | Twazii', '2021-01-17 19:28', 'carshop'),
('Marc', 'contender', 'JRSM4202', '[ H | Numbbald ]﹣Taylor Blake', '2021-01-17 09:27', 'carshop'),
('Red Morningstar', 'blista', 'KIXF9681', 'NEVER | M | Twazii', '2021-01-17 19:31', 'carshop'),
('Twitch.tv/Sancha_', 'bati', 'LFMM1395', 'Master', '2021-01-18 13:30', 'carshop'),
('[ Never | A ] Aiden Benfosa', 'sultan', 'LRSB4337', '[ H | Numbbald ]﹣Taylor Blake', '2021-01-17 12:48', 'carshop'),
('ben', 'buffalo', 'LXAN8184', 'Utilisateur', '2021-01-18 12:49', 'carshop'),
('kazdycrf', 'akuma', 'MSOW4252', 'NEVER | M | Twazii', '2021-01-17 12:51', 'carshop'),
('Never [S] Mathys', 'brioso', 'NFUE3528', 'Bersekalex05', '2021-01-17 18:05', 'carshop'),
('Williams Laspart', 'sentinel', 'NLCO1096', '[ Never | A ] Aiden Benfosa', '2021-01-17 19:23', 'carshop'),
('Marwane Belkouf', 'jackal', 'OGDL6412', 'NEVER | M | Twazii', '2021-01-17 13:01', 'carshop'),
('Utilisateur', 'journey', 'OIOD7022', 'NEVER [M] Twazii', '2021-01-18 13:03', 'carshop'),
('Utilisateur', 'dubsta', 'OXVP8687', 'Jason Blake', '2021-01-18 18:49', 'carshop'),
('ya', 'sentinel', 'PUUC7874', 'NEVER | M | Twazii', '2021-01-17 19:14', 'carshop'),
('Sabri Jay', 'jackal', 'QJXQ3305', 'NEVER | M | Twazii', '2021-01-17 13:02', 'carshop'),
('[_ Never_Sergio_Idrissi_]', 'sentinel3', 'QRMD3507', 'NEVER | M | Twazii', '2021-01-17 14:56', 'carshop'),
('cleme', 'jackal', 'RBGB6240', 'NEVER | M | Twazii', '2021-01-17 12:57', 'carshop'),
('robb', 'akuma', 'SAIA0799', 'NEVER | M | Twazii', '2021-01-17 17:50', 'carshop'),
('aday0', 'jackal', 'TJCX3394', 'NEVER | M | Twazii', '2021-01-17 17:59', 'carshop'),
('Bersekalex05', 'kamacho', 'TSBC8682', '[ H | Numbbald ]﹣Taylor Blake', '2021-01-17 13:28', 'carshop'),
('[ H | Numbbald ]﹣Taylor Blake', 'kamacho', 'UBYM3520', 'Bersekalex05', '2021-01-17 13:29', 'carshop'),
('Vashkirie', 'sentinel', 'UPFE9450', 'NEVER | M | Twazii', '2021-01-17 19:20', 'carshop'),
('abdel cader', 'sentinel', 'VQRC0223', '[ Never | A ] Aiden Benfosa', '2021-01-17 16:44', 'carshop'),
('[M] Papy', 'buffalo', 'VXUL3677', 'NEVER [M] Twazii', '2021-01-18 12:51', 'carshop'),
('indra_77', 'issi2', 'VYYS6369', 'NEVER | M | Twazii', '2021-01-17 17:52', 'carshop'),
('zapilogoto', 'buffalo', 'WDEO5899', 'Jason Blake', '2021-01-18 17:18', 'carshop'),
('hugos', 'jackal', 'WFAZ9244', 'Master', '2021-01-18 15:26', 'carshop'),
('sefa canoz', 'sentinel2', 'ZIUK2506', 'Bersekalex05', '2021-01-17 20:46', 'carshop'),
('Pablo.mt', 'buffalo', 'ZNED5330', 'Bersekalex05', '2021-01-17 15:52', 'carshop'),
('Never  STRAT', 'sultan', 'ZTYF9655', '[ H | Numbbald ]﹣Taylor Blake', '2021-01-17 12:53', 'carshop'),
('Never [S] Mathys', 'dubsta3', 'ZUVE3452', 'Nix ツ [NEVER]', '2021-01-18 14:24', 'carshop');

-- --------------------------------------------------------

--
-- Structure de la table `votehistory`
--

CREATE TABLE `votehistory` (
  `ip` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `pseudo` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `waveshield_ban`
--

CREATE TABLE `waveshield_ban` (
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `waveshield_ban`
--

INSERT INTO `waveshield_ban` (`license`, `identifier`, `liveid`, `xblid`, `discord`, `playerip`, `targetplayername`, `sourceplayername`, `reason`, `timeat`, `expiration`, `permanent`) VALUES
('license:20216f9a12dbf9fdaa33a7777ddfa5d508f24f7c', 'steam:11000011d0e27ed', 'live:985154553113618', 'xbl:2535464965351560', 'discord:793945074097717259', 'ip:144.76.101.203', 'Maxime BlackWhite', '�・WaveShield', 'Arme Blacklist', '1610970661', '1610970661', 1),
('license:2ab255e4160b4ea53edb6f8c9a53826aaa052541', 'steam:11000010257fec7', 'live:914802149655968', NULL, NULL, 'ip:5.135.143.71', 'fdsa6666a', '�・WaveShield', 'Arme Blacklist', '1610982955', '1610982955', 1),
('license:70846ed28a7bb039c31db1e3dac6bc47b637b419', 'steam:11000013b9b2c03', 'live:914798353673253', 'xbl:2535441299165026', 'discord:533921866314940427', 'ip:90.91.9.96', 'Hugo Medina', '�・WaveShield', '� WaveShield : Give Weapon', '1610901621', '1610901621', 1),
('license:828e2cb61f54dda6ae7a395f9a700ba0d8d12152', 'steam:110000143f47e1b', NULL, NULL, NULL, 'ip:176.31.236.143', 'Raphael', '�・WaveShield', 'Arme Blacklist', '1610972376', '1610972376', 1),
('license:bbc710282224274b35d295a772dbaa19dd78c353', 'steam:1100001147d3e9f', NULL, NULL, 'discord:210081480343420928', 'ip:90.40.67.180', 'Vic\'', '�・WaveShield', 'Arme Blacklist', '1610966356', '1610966356', 1),
('license:d1584c099b74ac5f29e0c9ace82cc906f4a66c15', NULL, NULL, NULL, 'discord:658280233295675440', 'ip:86.111.139.131', 'biberliboub', '�・WaveShield', '� WaveShield : Give Weapon', '1610973446', '1610973446', 1);

-- --------------------------------------------------------

--
-- Structure de la table `whitelist`
--

CREATE TABLE `whitelist` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `account_info`
--
ALTER TABLE `account_info`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `license` (`license`);

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`) USING BTREE;

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_addon_account_data_account_name` (`account_name`) USING BTREE,
  ADD KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`) USING BTREE;

--
-- Index pour la table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`) USING BTREE;

--
-- Index pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`) USING BTREE,
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`) USING BTREE,
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`) USING BTREE;

--
-- Index pour la table `banlist`
--
ALTER TABLE `banlist`
  ADD PRIMARY KEY (`licenseid`);

--
-- Index pour la table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_billing_identifier` (`identifier`) USING BTREE;

--
-- Index pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_characters_identifier` (`identifier`) USING BTREE;

--
-- Index pour la table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`) USING BTREE;

--
-- Index pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_datastore_data_name` (`name`) USING BTREE,
  ADD KEY `index_datastore_data_name_owner` (`name`,`owner`) USING BTREE;

--
-- Index pour la table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `fine_types_vendeur`
--
ALTER TABLE `fine_types_vendeur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`) USING BTREE;

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`) USING BTREE;

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`) USING BTREE;

--
-- Index pour la table `open_car`
--
ALTER TABLE `open_car`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_open_car_owner` (`owner`) USING BTREE,
  ADD KEY `index_open_car_owner_plate` (`owner`,`plate`) USING BTREE;

--
-- Index pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_owned_properties_owner` (`owner`) USING BTREE,
  ADD KEY `index_owned_properties_rented` (`rented`) USING BTREE,
  ADD KEY `index_owned_properties_owner_name` (`owner`,`name`) USING BTREE;

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`) USING BTREE,
  ADD KEY `index_owned_vehicles_owner` (`owner`) USING BTREE,
  ADD KEY `index_owned_vehicles_owner_plate` (`owner`,`plate`) USING BTREE,
  ADD KEY `index_owned_vehicles_owner_type` (`owner`,`type`) USING BTREE,
  ADD KEY `index_owned_vehicles_owner_type_state` (`owner`,`type`,`state`) USING BTREE;

--
-- Index pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_phone_app_chat_channel` (`channel`) USING BTREE;

--
-- Index pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_phone_calls_owner` (`owner`) USING BTREE,
  ADD KEY `index_phone_calls_owner_num` (`owner`,`num`) USING BTREE;

--
-- Index pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_phone_messages_receiver` (`receiver`) USING BTREE,
  ADD KEY `index_phone_messages_receiver_transmitter` (`receiver`,`transmitter`) USING BTREE;

--
-- Index pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_phone_users_contacts_identifier` (`identifier`) USING BTREE;

--
-- Index pour la table `playerstattoos`
--
ALTER TABLE `playerstattoos`
  ADD PRIMARY KEY (`identifier`) USING BTREE;

--
-- Index pour la table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`) USING BTREE;

--
-- Index pour la table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`item`) USING BTREE;

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `tebex_boutique`
--
ALTER TABLE `tebex_boutique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tebex_boutique_category`
--
ALTER TABLE `tebex_boutique_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tebex_players_wallet`
--
ALTER TABLE `tebex_players_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `truck_inventory`
--
ALTER TABLE `truck_inventory`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `item` (`item`,`plate`) USING BTREE;

--
-- Index pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Index pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`) USING BTREE,
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`) USING BTREE;

--
-- Index pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`) USING BTREE;

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`character_id`),
  ADD UNIQUE KEY `identifier` (`identifier`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `user_parkings`
--
ALTER TABLE `user_parkings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`) USING BTREE;

--
-- Index pour la table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`) USING BTREE;

--
-- Index pour la table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`) USING BTREE;

--
-- Index pour la table `waveshield_ban`
--
ALTER TABLE `waveshield_ban`
  ADD PRIMARY KEY (`license`);

--
-- Index pour la table `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`identifier`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `account_info`
--
ALTER TABLE `account_info`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3407;

--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3313;

--
-- AUTO_INCREMENT pour la table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `fine_types_vendeur`
--
ALTER TABLE `fine_types_vendeur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=533;

--
-- AUTO_INCREMENT pour la table `open_car`
--
ALTER TABLE `open_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=618;

--
-- AUTO_INCREMENT pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1397;

--
-- AUTO_INCREMENT pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tebex_boutique`
--
ALTER TABLE `tebex_boutique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=517;

--
-- AUTO_INCREMENT pour la table `tebex_boutique_category`
--
ALTER TABLE `tebex_boutique_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tebex_players_wallet`
--
ALTER TABLE `tebex_players_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `truck_inventory`
--
ALTER TABLE `truck_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `character_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT pour la table `user_parkings`
--
ALTER TABLE `user_parkings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
