-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mer. 03 avr. 2019 à 12:57
-- Version du serveur :  5.6.34-log
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `todo`
--

-- --------------------------------------------------------

--
-- Structure de la table `todos`
--

CREATE TABLE `todos` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `chosen_time` varchar(255) NOT NULL,
  `important` int(11) DEFAULT NULL,
  `ID_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `todos`
--

INSERT INTO `todos` (`ID`, `name`, `comment`, `chosen_time`, `important`, `ID_user`) VALUES
(4, 'pirateWeek', '', 'week', NULL, 0),
(6, 'pirateMonth', '', 'month', NULL, 0),
(7, 'pirateYear', 'pirateYear', 'year', 1, 0),
(8, 'pirateYear', '', 'year', NULL, 0),
(25, 'pirateday', '', 'today', NULL, 0),
(28, 'yololo', '', 'today', NULL, 0),
(29, 'Coder encore', '', 'today', 1, 96),
(30, 'shambala', 'dlalalalalalalalalallllllllllaaaaaaaaaaaaa', 'today', NULL, 0),
(31, 'deploiement', '', 'today', NULL, 0),
(33, 'tarabistouille', 'yeah', 'today', NULL, 97),
(34, 'faire la lessive', '', 'week', NULL, 97);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`userID`, `userName`, `password`) VALUES
(0, 'Luffy', '$2y$11$92dfa8203e44e770140bbeNreCBrvGmuKaCN7S.7PeRnGOcvDWSxi'),
(41, 'zozor', '$2y$11$8ff6a6dd97e90260d4eb9eGqM0l.wsu5nj7lmK8VsxE0OHtRCHmMG'),
(92, 'abraham', '$2y$11$6d4f99e59efd09befde73uvXbARw1.x64mgZt1gucN1P2K1Ww/kCe'),
(93, 'Feirbrand', '$2y$11$bf744cac38c4f537e0ad2uO/d.er0txI00ukAT9TCqlDlbYNDoSfy'),
(94, 'Zeub', '$2y$11$b5851a293d6a041c41825uIuXDI.cueqwQj0Z6Khf3Eb82TiIoVxO'),
(95, 'zigoto', '$2y$11$9917a6405f5f393b72044uo6SI5ji139GVLPy5OQzcCD4MwbZT1D.'),
(96, 'yeah', '$2y$11$f80f536513bee6a3a35efOHkO4yToAAE4b1Kipxqew3YJdQi8KlN6'),
(97, 'Grin', '$2y$11$d2ced06db61af63911f87OlSf3Pc6Uhk82SHjnZVjsGwtS60m9Ci2'),
(98, 'Albvert', '$2y$11$a5e3675131dd8ef261a9buZ8LoGkdPEDirMw0JCmOY/P2fXqB4WZm');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `todos`
--
ALTER TABLE `todos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
