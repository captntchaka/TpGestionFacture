-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 26 oct. 2018 à 09:50
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `logicielfacturation`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `IDCLIENT` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(45) COLLATE armscii8_bin NOT NULL,
  `PRENOM` varchar(45) COLLATE armscii8_bin NOT NULL,
  `NUMERO_TELEPHONE` varchar(45) COLLATE armscii8_bin NOT NULL,
  `ADRESSE` varchar(45) COLLATE armscii8_bin NOT NULL,
  PRIMARY KEY (`IDCLIENT`)
) ENGINE=MyISAM DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `IDFACTURE` int(11) NOT NULL AUTO_INCREMENT,
  `IDUTILISATEUR` int(11) NOT NULL,
  PRIMARY KEY (`IDFACTURE`)
) ENGINE=MyISAM DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `IDPRODUIT` int(11) NOT NULL AUTO_INCREMENT,
  `LIBELLE` varchar(45) COLLATE armscii8_bin NOT NULL,
  `PRIX` decimal(10,0) NOT NULL,
  PRIMARY KEY (`IDPRODUIT`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `produit facture`
--

DROP TABLE IF EXISTS `produit facture`;
CREATE TABLE IF NOT EXISTS `produit facture` (
  `IDPRODUITFACTURE` int(11) NOT NULL AUTO_INCREMENT,
  `QUANTITE` int(11) NOT NULL,
  `FACTURE_ID` int(11) NOT NULL,
  `PRODUIT_ID` int(11) NOT NULL,
  PRIMARY KEY (`IDPRODUITFACTURE`)
) ENGINE=MyISAM DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
