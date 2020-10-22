-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour borabora
CREATE DATABASE IF NOT EXISTS `borabora` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `borabora`;

-- Listage de la structure de la table borabora. brasserie

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. cate_chambre
CREATE TABLE IF NOT EXISTS `cate_chambre` (
  `Id_Cat` int(11) NOT NULL,
  `Libelle` varchar(50) NOT NULL DEFAULT '',
  `Nbre_Place` int(11) NOT NULL DEFAULT '0',
  `Prix` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id_Cat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. cat_brasserie
CREATE TABLE IF NOT EXISTS `cat_brasserie` (
  `cat` varchar(6) NOT NULL,
  `lib_cat` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `brasserie` (
  `num_plat` int(3) NOT NULL,
  `lib_plat` varchar(50) DEFAULT NULL,
  `prix_plat` float DEFAULT NULL,
  `cat` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`num_plat`),
  KEY `brasserie_ibfk_1` (`cat`),
  CONSTRAINT `brasserie_ibfk_1` FOREIGN KEY (`cat`) REFERENCES `cat_brasserie` (`cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. cat_cons
CREATE TABLE IF NOT EXISTS `cat_cons` (
  `cat` varchar(6) NOT NULL,
  `lib_cat` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. cat_spa
CREATE TABLE IF NOT EXISTS `cat_spa` (
  `Id_CatSpa` int(11) NOT NULL,
  `Lib_CatSpa` varchar(50) NOT NULL DEFAULT '',
  `Durée` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id_CatSpa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. chambre
CREATE TABLE IF NOT EXISTS `chambre` (
  `Num_Chambre` int(11) NOT NULL,
  `Categorie` int(11) NOT NULL,
  PRIMARY KEY (`Num_Chambre`),
  KEY `Categorie` (`Categorie`),
  CONSTRAINT `FK_chambre_cate_chambre` FOREIGN KEY (`Categorie`) REFERENCES `cate_chambre` (`Id_Cat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. client
CREATE TABLE IF NOT EXISTS `client` (
  `Num_Client` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL,
  `Adresse` varchar(50) DEFAULT NULL,
  `Tel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Num_Client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. concerne_bar


-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. concerne_brass


-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. concerne_spa


-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. consommation
CREATE TABLE IF NOT EXISTS `consommation` (
  `num_cons` int(3) NOT NULL,
  `lib_cons` varchar(50) DEFAULT NULL,
  `prix_cons` float DEFAULT NULL,
  `cat` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`num_cons`),
  KEY `consommation_ibfk_1` (`cat`),
  CONSTRAINT `consommation_ibfk_1` FOREIGN KEY (`cat`) REFERENCES `cat_cons` (`cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. facture


-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. facture_bar
CREATE TABLE IF NOT EXISTS `facture_bar` (
  `Num_Conso_Bar` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Quantite` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Num_Conso_Bar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `concerne_bar` (
  `Num_Conso` int(11) NOT NULL,
  `Num_Cons_Bar` int(11) NOT NULL,
  PRIMARY KEY (`Num_Conso`,`Num_Cons_Bar`),
  KEY `Num_Conso` (`Num_Conso`),
  KEY `Num_Cons_Bar` (`Num_Cons_Bar`),
  CONSTRAINT `FK__consommation` FOREIGN KEY (`Num_Conso`) REFERENCES `consommation` (`num_cons`),
  CONSTRAINT `FK__facture_bar` FOREIGN KEY (`Num_Cons_Bar`) REFERENCES `facture_bar` (`Num_Conso_Bar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. facture_brasserie
CREATE TABLE IF NOT EXISTS `facture_brasserie` (
  `Num_Conso_Brasserie` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Quantite` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Num_Conso_Brasserie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `concerne_brass` (
  `NumPlat` int(11) NOT NULL,
  `Num_Conso` int(11) NOT NULL,
  PRIMARY KEY (`NumPlat`,`Num_Conso`),
  KEY `NumPlat` (`NumPlat`),
  KEY `Num_Conso` (`Num_Conso`),
  CONSTRAINT `FK__brasserie` FOREIGN KEY (`NumPlat`) REFERENCES `brasserie` (`num_plat`),
  CONSTRAINT `FK__facture_brasserie` FOREIGN KEY (`Num_Conso`) REFERENCES `facture_brasserie` (`Num_Conso_Brasserie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. facture_spa
CREATE TABLE IF NOT EXISTS `facture_spa` (
  `Num_Conso_Spa` int(11) NOT NULL,
  `Date_Spa` date NOT NULL,
  `Quantite_Spa` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Num_Conso_Spa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. sejour
CREATE TABLE IF NOT EXISTS `sejour` (
  `Num_Sejour` int(11) NOT NULL,
  `Date_Arrivee` date NOT NULL,
  `Date_Depart` date NOT NULL,
  `Nbr_Personne` int(11) NOT NULL DEFAULT '0',
  `Num_Cli` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Num_Sejour`),
  KEY `Num_Cli` (`Num_Cli`),
  CONSTRAINT `FK_sejour_client` FOREIGN KEY (`Num_Cli`) REFERENCES `client` (`Num_Client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `facture` (
  `num_fact` int(11) NOT NULL AUTO_INCREMENT,
  `date_fact` date DEFAULT NULL,
  `Num_Sej` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_fact`),
  KEY `Num_Client` (`Num_Sej`),
  CONSTRAINT `FK_facture_client` FOREIGN KEY (`Num_Sej`) REFERENCES `sejour` (`Num_Sejour`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. sejour_bar
CREATE TABLE IF NOT EXISTS `sejour_bar` (
  `Num_Cons` int(11) NOT NULL,
  `Num_Sej` int(11) NOT NULL,
  PRIMARY KEY (`Num_Cons`,`Num_Sej`),
  KEY `Num_Sej` (`Num_Sej`),
  KEY `Num_Cons` (`Num_Cons`),
  CONSTRAINT `FK_Sejour_Bar_facture_bar` FOREIGN KEY (`Num_Cons`) REFERENCES `facture_bar` (`Num_Conso_Bar`),
  CONSTRAINT `FK_Sejour_Bar_sejour` FOREIGN KEY (`Num_Sej`) REFERENCES `sejour` (`Num_Sejour`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. sejour_brasserie
CREATE TABLE IF NOT EXISTS `sejour_brasserie` (
  `Num_Conso` int(11) NOT NULL,
  `Num_Sej` int(3) NOT NULL,
  PRIMARY KEY (`Num_Conso`,`Num_Sej`),
  KEY `comprend_brasseriefk_1` (`Num_Sej`),
  KEY `Num_Conso` (`Num_Conso`),
  CONSTRAINT `comprend_brasseriefk_1` FOREIGN KEY (`Num_Conso`) REFERENCES `facture_brasserie` (`Num_Conso_Brasserie`),
  CONSTRAINT `comprend_brasseriefk_2` FOREIGN KEY (`Num_Sej`) REFERENCES `sejour` (`Num_Sejour`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. sejour_chambre
CREATE TABLE IF NOT EXISTS `sejour_chambre` (
  `NumChambre` int(11) NOT NULL,
  `Num_sej` int(11) NOT NULL,
  PRIMARY KEY (`NumChambre`,`Num_sej`),
  KEY `NumChambre` (`NumChambre`),
  KEY `NumFact_Ch` (`Num_sej`),
  CONSTRAINT `FK__chambre` FOREIGN KEY (`NumChambre`) REFERENCES `chambre` (`Num_Chambre`),
  CONSTRAINT `FK__facture` FOREIGN KEY (`Num_sej`) REFERENCES `sejour` (`Num_Sejour`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. sejour_spa
CREATE TABLE IF NOT EXISTS `sejour_spa` (
  `Num_Cons_Spa` int(11) NOT NULL,
  `Num_Sej` int(11) NOT NULL,
  PRIMARY KEY (`Num_Cons_Spa`,`Num_Sej`),
  KEY `Num_Cons_Spa` (`Num_Cons_Spa`),
  KEY `Num_Sej` (`Num_Sej`),
  CONSTRAINT `FK__facture_spa` FOREIGN KEY (`Num_Cons_Spa`) REFERENCES `facture_spa` (`Num_Conso_Spa`),
  CONSTRAINT `FK__sejour` FOREIGN KEY (`Num_Sej`) REFERENCES `sejour` (`Num_Sejour`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table borabora. spa
CREATE TABLE IF NOT EXISTS `spa` (
  `Num_Soin` int(11) NOT NULL,
  `Lib_Soin` varchar(50) NOT NULL DEFAULT '',
  `Cat_soin` int(11) NOT NULL DEFAULT '0',
  `Prix` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Num_Soin`),
  KEY `Cat_soin` (`Cat_soin`),
  CONSTRAINT `FK__cat_spa` FOREIGN KEY (`Cat_soin`) REFERENCES `cat_spa` (`Id_CatSpa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `concerne_spa` (
  `Num_soinSpa` int(11) NOT NULL,
  `Num_FactSpa` int(11) NOT NULL,
  PRIMARY KEY (`Num_soinSpa`,`Num_FactSpa`),
  KEY `Num_soinSpa` (`Num_soinSpa`),
  KEY `Num_FactSpa` (`Num_FactSpa`),
  CONSTRAINT `FK__spa` FOREIGN KEY (`Num_soinSpa`) REFERENCES `spa` (`Num_Soin`),
  CONSTRAINT `FK_comprend_spa_facture` FOREIGN KEY (`Num_FactSpa`) REFERENCES `facture_spa` (`Num_Conso_Spa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
