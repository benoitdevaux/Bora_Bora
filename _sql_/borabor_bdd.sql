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

-- Listage des données de la table borabora.bar_concerne : ~2 rows (environ)
/*!40000 ALTER TABLE `bar_concerne` DISABLE KEYS */;
INSERT INTO `bar_concerne` (`Num_Conso`, `Num_Cons_Bar`) VALUES
	(15, 1),
	(71, 2);
/*!40000 ALTER TABLE `bar_concerne` ENABLE KEYS */;

-- Listage des données de la table borabora.bar_facture : ~2 rows (environ)
/*!40000 ALTER TABLE `bar_facture` DISABLE KEYS */;
INSERT INTO `bar_facture` (`Num_Conso_Bar`, `Date`, `Quantite`) VALUES
	(1, '2020-05-13', 5),
	(2, '2020-04-13', 6);
/*!40000 ALTER TABLE `bar_facture` ENABLE KEYS */;

-- Listage des données de la table borabora.bar_sejour : ~0 rows (environ)
/*!40000 ALTER TABLE `bar_sejour` DISABLE KEYS */;
INSERT INTO `bar_sejour` (`Num_Cons`, `Num_Sej`) VALUES
	(2, 1);
/*!40000 ALTER TABLE `bar_sejour` ENABLE KEYS */;

-- Listage des données de la table borabora.brasserie : ~45 rows (environ)
/*!40000 ALTER TABLE `brasserie` DISABLE KEYS */;
INSERT INTO `brasserie` (`num_plat`, `lib_plat`, `prix_plat`, `cat`) VALUES
	(1, 'Salade Tahitienne', 2050, 'ENTSAL'),
	(2, 'Os à la Moelle au sel de Guérande', 1500, 'ENTSAL'),
	(3, 'Salade Tiède au Jarret', 2050, 'ENTSAL'),
	(4, 'Tartine au Chèvre Chaud sur Salade', 1750, 'ENTSAL'),
	(5, 'Salade Jean Pierre', 2050, 'ENTSAL'),
	(6, 'Salade Verte huile olive ou vinaigrette', 800, 'ENTSAL'),
	(7, 'Salade Verta Roquefort et Noix', 950, 'ENTSAL'),
	(8, 'Crevettes poelées et flambées', 2950, 'CREPAY'),
	(9, 'Crevettes poelées au Curry et amandes', 2950, 'CREPAY'),
	(10, 'Tartare de Thon à la moutarde et Garniture', 2450, 'PROMER'),
	(11, 'Steack de Thon mi-cuit sauce vierge Fruits frais e', 2850, 'PROMER'),
	(12, 'Noix d\'Entrecôte 200g', 2850, 'VIANDE'),
	(13, 'Noix d\'Entrecôte 350g', 3750, 'VIANDE'),
	(14, 'La Churascaia 500g', 5100, 'VIANDE'),
	(15, 'Travers de Porc Sauce Barbecue', 3150, 'VIANDE'),
	(16, 'Escalope de Veau Normande', 2650, 'VIANDE'),
	(17, 'Os à la Moelle en accompagnement', 500, 'VIANDE'),
	(18, 'Tartare de Boeuf aux Condiments', 2650, 'VIANDE'),
	(19, 'Sauce au choix', 300, 'VIANDE'),
	(20, 'Hamburger pur Boeuf Frites à Volonté', 2050, 'HAMBUR'),
	(21, 'Tagliatelle Carbonara', 1700, 'PATES'),
	(22, 'Tagliatelle au Saumon', 2800, 'PATES'),
	(23, 'Tagliatelle Crevttes Décortiquées', 2800, 'PATES'),
	(24, 'Flammekueche Formule à Volonté', 2050, 'FLAMME'),
	(25, 'La Classique', 1200, 'FLAMME'),
	(26, 'La Forestière', 1350, 'FLAMME'),
	(27, 'La Gratinée', 1350, 'FLAMME'),
	(28, 'La Spéciale', 1500, 'FLAMME'),
	(29, 'La Chèvre Chaud', 1600, 'FLAMME'),
	(30, 'La Choucroute', 1750, 'FLAMME'),
	(31, 'La Napolitaine', 1450, 'FLAMME'),
	(32, 'La Saumon', 1800, 'FLAMME'),
	(33, 'La Végétarienne', 1500, 'FLAMME'),
	(34, 'La Crevette', 1950, 'FLAMME'),
	(35, 'Les Trois Fromages', 1700, 'FLAMME'),
	(36, 'La Charcutière', 1800, 'FLAMME'),
	(37, 'La Pomme', 950, 'FLAMME'),
	(38, 'La Pomme Glacée', 1200, 'FLAMME'),
	(39, 'La Belle Hélène', 1150, 'FLAMME'),
	(40, 'La Ch\'ti', 1200, 'FLAMME'),
	(41, 'La Normande', 1200, 'FLAMME'),
	(42, 'La Cococ', 1600, 'FLAMME'),
	(43, 'La Spéciale Sucrée', 1100, 'FLAMME'),
	(44, 'La Tout Chocolat', 1100, 'FLAMME'),
	(45, 'La Martiniquaise', 1200, 'FLAMME');
/*!40000 ALTER TABLE `brasserie` ENABLE KEYS */;

-- Listage des données de la table borabora.brasserie_cat : ~7 rows (environ)
/*!40000 ALTER TABLE `brasserie_cat` DISABLE KEYS */;
INSERT INTO `brasserie_cat` (`cat`, `lib_cat`) VALUES
	('CREPAY', 'Crevette Pays'),
	('ENTSAL', 'Entrées, Salades'),
	('FLAMME', 'Flammekueche '),
	('HAMBUR', 'Hamburger'),
	('PATES', 'Les Pâtes'),
	('PROMER', 'Produits de la Mer'),
	('VIANDE', 'Les Viandes');
/*!40000 ALTER TABLE `brasserie_cat` ENABLE KEYS */;

-- Listage des données de la table borabora.brasserie_concerne : ~0 rows (environ)
/*!40000 ALTER TABLE `brasserie_concerne` DISABLE KEYS */;
/*!40000 ALTER TABLE `brasserie_concerne` ENABLE KEYS */;

-- Listage des données de la table borabora.brasserie_facture : ~0 rows (environ)
/*!40000 ALTER TABLE `brasserie_facture` DISABLE KEYS */;
/*!40000 ALTER TABLE `brasserie_facture` ENABLE KEYS */;

-- Listage des données de la table borabora.brasserie_sejour : ~0 rows (environ)
/*!40000 ALTER TABLE `brasserie_sejour` DISABLE KEYS */;
/*!40000 ALTER TABLE `brasserie_sejour` ENABLE KEYS */;

-- Listage des données de la table borabora.brasserie_table : ~5 rows (environ)
/*!40000 ALTER TABLE `brasserie_table` DISABLE KEYS */;
INSERT INTO `brasserie_table` (`id_table`, `num_table`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5);
/*!40000 ALTER TABLE `brasserie_table` ENABLE KEYS */;

-- Listage des données de la table borabora.chambre : ~5 rows (environ)
/*!40000 ALTER TABLE `chambre` DISABLE KEYS */;
INSERT INTO `chambre` (`Num_Chambre`, `Categorie`) VALUES
	(100, 1),
	(101, 1),
	(120, 2),
	(150, 3),
	(130, 4);
/*!40000 ALTER TABLE `chambre` ENABLE KEYS */;

-- Listage des données de la table borabora.chambre_cate : ~4 rows (environ)
/*!40000 ALTER TABLE `chambre_cate` DISABLE KEYS */;
INSERT INTO `chambre_cate` (`Id_Cat`, `Libelle`, `Nbre_Place`, `Prix`) VALUES
	(1, 'Chambre Classique', 2, 17000),
	(2, 'Suite Classique', 4, 37000),
	(3, 'Bungalow Sur Le Lagon', 2, 32000),
	(4, 'Bungalow Jardin', 4, 26000);
/*!40000 ALTER TABLE `chambre_cate` ENABLE KEYS */;

-- Listage des données de la table borabora.chambre_sejour : ~2 rows (environ)
/*!40000 ALTER TABLE `chambre_sejour` DISABLE KEYS */;
INSERT INTO `chambre_sejour` (`NumChambre`, `Num_sej`) VALUES
	(100, 1),
	(100, 2);
/*!40000 ALTER TABLE `chambre_sejour` ENABLE KEYS */;

-- Listage des données de la table borabora.client : ~2 rows (environ)
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` (`Num_Client`, `Nom`, `Prenom`, `Mail`, `Adresse`, `Tel`) VALUES
	(1, 'Doe', 'John', 'johndoe@gmail.com', '132 rue xx', '124578'),
	(2, 'abc', 'def', 'zejfio@gero', '152 rue cc', '789561');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;

-- Listage des données de la table borabora.consommation : ~121 rows (environ)
/*!40000 ALTER TABLE `consommation` DISABLE KEYS */;
INSERT INTO `consommation` (`num_cons`, `lib_cons`, `prix_cons`, `cat`) VALUES
	(1, 'Demi 25cl', 700, 'BIEBLA'),
	(2, 'Taverne 33cl', 800, 'BIEBLA'),
	(3, 'Brasseur 50cl', 1000, 'BIEBLA'),
	(4, 'Formidable 100cl', 1900, 'BIEBLA'),
	(5, 'Pichet 1,5l', 3200, 'BIEBLA'),
	(6, 'Le mètre 25cl *10', 5000, 'BIEBLA'),
	(7, 'Demi 25cl', 700, 'BIEBLO'),
	(8, 'Taverne 33cl', 800, 'BIEBLO'),
	(9, 'Brasseur 50cl', 1000, 'BIEBLO'),
	(10, 'Formidable 100cl', 1900, 'BIEBLO'),
	(11, 'Pichet 1,5l', 3200, 'BIEBLO'),
	(12, 'Le mètre 25cl *10', 5000, 'BIEBLO'),
	(13, 'Demi 25cl', 700, 'BIEBLO'),
	(14, 'Taverne 33cl', 800, 'BIEBLO'),
	(15, 'Brasseur 50cl', 1000, 'BIEBLO'),
	(16, 'Formidable 100cl', 1900, 'BIEBLO'),
	(17, 'Pichet 1,5l', 3200, 'BIEBLO'),
	(18, 'Le mètre 25cl *10', 5000, 'BIEBLO'),
	(19, 'Le Panaché 25cl', 650, 'APEBIE'),
	(20, 'Le Panaché 33cl', 700, 'APEBIE'),
	(21, 'Le Panaché 50cl', 900, 'APEBIE'),
	(22, 'Le Panaché 1l', 1500, 'APEBIE'),
	(23, 'Le Panaché Pitcher', 3200, 'APEBIE'),
	(24, 'Le Tango 25 cl', 700, 'APEBIE'),
	(25, 'Le Tango 33 cl', 800, 'APEBIE'),
	(26, 'Le Tango 50 cl', 1100, 'APEBIE'),
	(27, 'Le Tango 1l', 1100, 'APEBIE'),
	(28, 'Le Tango Pitcher', 3200, 'APEBIE'),
	(29, 'Le Monaco 25 cl', 700, 'APEBIE'),
	(30, 'Le Monaco 33 cl', 800, 'APEBIE'),
	(31, 'Le Monaco 50 cl', 1100, 'APEBIE'),
	(32, 'Le Monaco 1l', 1100, 'APEBIE'),
	(33, 'Le Monaco Pitcher', 3200, 'APEBIE'),
	(34, 'Picon Bière 25 cl', 1100, 'APEBIE'),
	(35, 'Picon Bière 33 cl', 1350, 'APEBIE'),
	(36, 'Picon Bière 50 cl', 1900, 'APEBIE'),
	(37, 'Picon Bière 1l', 2400, 'APEBIE'),
	(38, 'Picon Bière Pitcher', 4200, 'APEBIE'),
	(39, 'Le Nord Express 25 cl', 1100, 'APEBIE'),
	(40, 'Le Nord Express 33 cl', 1350, 'APEBIE'),
	(41, 'Le Nord Express 50 cl', 1900, 'APEBIE'),
	(42, 'Le Nord Express 1l', 2400, 'APEBIE'),
	(43, 'Le Nord Express Pitcher', 4200, 'APEBIE'),
	(45, 'Le Mexicanos 25 cl', 1100, 'APEBIE'),
	(46, 'Le Mexicanos 33 cl', 1350, 'APEBIE'),
	(47, 'Le Mexicanos 50 cl', 1900, 'APEBIE'),
	(48, 'Le Mexicanos 1l', 2400, 'APEBIE'),
	(49, 'Le Mexicanos Pitcher', 4200, 'APEBIE'),
	(50, 'Le Habana 25 cl', 1100, 'APEBIE'),
	(51, 'Le Habana 33 cl', 1350, 'APEBIE'),
	(52, 'Le Habana 50 cl', 1900, 'APEBIE'),
	(53, 'Le Habana 1l', 2400, 'APEBIE'),
	(54, 'Le Habana Pitcher', 4200, 'APEBIE'),
	(55, 'L\'Irlandais 25 cl', 1100, 'APEBIE'),
	(56, 'L\'Irlandais 33 cl', 1350, 'APEBIE'),
	(57, 'L\'Irlandais 50 cl', 1900, 'APEBIE'),
	(58, 'L\'Irlandais 1l', 2400, 'APEBIE'),
	(59, 'L\'Irlandais Pitcher', 4200, 'APEBIE'),
	(60, 'Le Boucanier 25 cl', 1100, 'APEBIE'),
	(61, 'Le Boucanier 33 cl', 1350, 'APEBIE'),
	(62, 'Le Boucanier 50 cl', 1900, 'APEBIE'),
	(63, 'Le Boucanier 1l', 2400, 'APEBIE'),
	(64, 'Le Boucanier', 4200, 'APEBIE'),
	(65, 'Campari 2 cl', 1000, 'APERIT'),
	(66, 'Martini 2 cl', 1000, 'APERIT'),
	(67, 'Ricard 2 cl', 1000, 'APERIT'),
	(68, 'Coupe de champagne Taitin', 2100, 'APERIT'),
	(69, 'Kir Royal Taitingeri 12 c', 2300, 'APERIT'),
	(70, 'Whisky classique', 1050, 'WHISKY'),
	(71, 'Bourbon:Jim Beam', 1300, 'WHISKY'),
	(72, 'Vieux Scotch Chivas Regal', 1500, 'WHISKY'),
	(73, 'Vieux Scotch Johnnie Black Label', 1500, 'WHISKY'),
	(74, 'Single Pure Malt Glenfiddich', 1500, 'WHISKY'),
	(75, 'Single Pure Malt Glenlivet', 1500, 'WHISKY'),
	(76, 'Gin 4cl', 1000, 'ALCOOL'),
	(77, 'Vodka 4cl', 1000, 'ALCOOL'),
	(78, 'Tequila 4 cl', 1000, 'ALCOOL'),
	(79, 'Rhum', 1000, 'ALCOOL'),
	(80, 'Vodka Zubrowska 4cl', 1300, 'ALCOOL'),
	(81, 'Vodka Absolut 4cl', 1300, 'ALCOOL'),
	(82, 'Rhum Damoiseau 4cl', 1300, 'ALCOOL'),
	(83, 'Rhum Bacardi 4cl', 1300, 'ALCOOL'),
	(84, 'Gin Bombay 4cl', 1300, 'ALCOOL'),
	(85, 'Gin Gordon\'s 4cl', 1300, 'ALCOOL'),
	(86, 'Vodka Red Bull 4cl', 1500, 'ALCOOL'),
	(87, 'Pinacolada', 1500, 'COKTAI'),
	(88, 'Planteur', 1500, 'COKTAI'),
	(89, 'Punch Coco', 1500, 'COKTAI'),
	(90, 'Sancerre Les Montachins Blanc 37,5cl', 3800, 'LACAVE'),
	(91, 'Sancerre Les Montachins Blanc 75cl', 6200, 'LACAVE'),
	(92, 'Riesling Hugel 37,5cl', 3250, 'LACAVE'),
	(93, 'Riesling Hugel 75cl', 5500, 'LACAVE'),
	(94, 'Muscadet sur Lie 37,5cl', 2200, 'LACAVE'),
	(95, 'Muscadet sur Lie 75cl', 3900, 'LACAVE'),
	(96, 'Cristal de Provence Rosé 37,5cl', 2300, 'LACAVE'),
	(97, 'Cristal de Provence Rosé 75cl', 4200, 'LACAVE'),
	(98, 'Beaujolais Village Georges Duboeuf 37,5cl', 2200, 'LACAVE'),
	(99, 'Beaujolais Village Georges Duboeuf 75cl', 3800, 'LACAVE'),
	(100, 'Bordeaux Manoir du Passager 75 l', 3900, 'LACAVE'),
	(101, 'Clos La Maurasse Graves rouge ou blanc 75cl', 5500, 'LACAVE'),
	(102, 'Château Castera Cru Bourgeois Medoc 75 cl', 5900, 'LACAVE'),
	(103, 'Riesling Hugel 75cl', 5500, 'LACAVE'),
	(104, 'Champagne Taittinger 75 cl', 12500, 'LACAVE'),
	(105, 'Bordeaux Manoir du Passager Le Verre Rouge ou Blan', 950, 'LACAVE'),
	(106, 'Medoc Château Castera le verre', 1300, 'LACAVE'),
	(107, 'Les Nectars Poire 25cl', 700, 'NECTAR'),
	(108, 'Les Nectars Abricot 25cl', 700, 'NECTAR'),
	(109, 'Les Nectars Tomate 25cl', 700, 'NECTAR'),
	(110, 'Coca Cola 33cl', 630, 'SODAS'),
	(111, 'Coca Zéro 33cl', 630, 'SODAS'),
	(112, 'Orangina 33cl', 630, 'SODAS'),
	(113, 'Ice Tea 33cl', 630, 'SODAS'),
	(114, '7 Up 33cl', 630, 'SODAS'),
	(115, 'Schweppes Tonic 33cl', 630, 'SODAS'),
	(116, 'Maxi Soda 50cl', 850, 'SODAS'),
	(117, 'Red Bull', 900, 'SODAS'),
	(118, 'Mont Dore 50cl', 500, 'EAUMIN'),
	(119, 'Mont Dore 1,50l', 650, 'EAUMIN'),
	(120, 'San Pellegrino 50cl', 650, 'EAUMIN'),
	(121, 'San Pellegrino 75cl', 850, 'EAUMIN'),
	(122, 'Perrier boîte 33cl', 630, 'EAUMIN');
/*!40000 ALTER TABLE `consommation` ENABLE KEYS */;

-- Listage des données de la table borabora.conso_categorie : ~16 rows (environ)
/*!40000 ALTER TABLE `conso_categorie` DISABLE KEYS */;
INSERT INTO `conso_categorie` (`cat`, `lib_cat`) VALUES
	('ALCOOL', 'Alcool'),
	('APEBIE', 'Apéritif à la bière'),
	('APERIT', 'Apéritif'),
	('BIEAMB', 'Bière ambrée'),
	('BIEBLA', 'Bière blanche'),
	('BIEBLO', 'Bière blonde'),
	('BIESCO', 'Bière scotch'),
	('BIESPE', 'Bière spéciale'),
	('COKBIE', 'Apéritif à la bière'),
	('COKTAI', 'Coktail'),
	('EAUMIN', 'Eaux minérales'),
	('JUSFRA', 'Jus de fruits frais'),
	('LACAVE', 'La cave'),
	('NECTAR', 'Nectars'),
	('SODAS', 'Sodas'),
	('WHISKY', 'Whisky');
/*!40000 ALTER TABLE `conso_categorie` ENABLE KEYS */;

-- Listage des données de la table borabora.facture : ~2 rows (environ)
/*!40000 ALTER TABLE `facture` DISABLE KEYS */;
INSERT INTO `facture` (`num_fact`, `date_fact`, `Num_Sej`) VALUES
	(1, '2020-05-14', 1),
	(2, '2020-05-21', 2);
/*!40000 ALTER TABLE `facture` ENABLE KEYS */;

-- Listage des données de la table borabora.sejour : ~3 rows (environ)
/*!40000 ALTER TABLE `sejour` DISABLE KEYS */;
INSERT INTO `sejour` (`Num_Sejour`, `Date_Arrivee`, `Date_Depart`, `Nbr_Personne`, `Num_Cli`) VALUES
	(1, '2020-05-13', '2020-05-14', 2, 1),
	(2, '2020-05-20', '2020-05-21', 1, 2),
	(3, '2020-07-01', '2020-07-03', 1, 1);
/*!40000 ALTER TABLE `sejour` ENABLE KEYS */;

-- Listage des données de la table borabora.spa : ~20 rows (environ)
/*!40000 ALTER TABLE `spa` DISABLE KEYS */;
INSERT INTO `spa` (`Num_Soin`, `Lib_Soin`, `Cat_soin`, `Prix`) VALUES
	(1, 'SOIN CONTOUR DES YEUX ÉCLAT', 1, 6500),
	(2, 'SOIN ÉCLAT IMMÉDIAT AUX FLEURS', 2, 9500),
	(3, 'SOIN PRODIGIEUX® À L’IMMORTELLE BLEUE', 2, 12500),
	(4, 'SOIN EXPRESS AUX EXTRAITS D’ARBRES - Pour Homme', 1, 9500),
	(5, 'SOIN AROMA-LACTÉ CRÈME FRAÎCHE', 3, 13000),
	(6, 'SOIN AROMA-PERFECTION® AUX PLANTES', 3, 13000),
	(7, 'SOIN ULTRA-RÉCONFORTANT AU MIEL', 3, 13000),
	(8, 'SOIN BEAU JOUEUR - Pour Homme', 3, 13000),
	(9, 'SOIN BIO-BEAUTÉ', 3, 13000),
	(10, 'SOIN NUXELLENCE', 3, 16000),
	(11, 'SOIN NIRVANESQUE', 3, 16000),
	(12, 'SOIN MERVEILLANCE expert', 3, 16000),
	(13, 'ENVELOPPEMENT', 1, 6500),
	(14, 'SOIN RÉVÉLATEUR D’ÉCLAT IMMÉDIAT', 2, 9000),
	(15, 'SOIN «BODY RELAXANT»', 2, 13000),
	(16, 'SOIN du dos', 3, 14000),
	(17, 'SOIN PRODIGIEUX', 3, 14000),
	(18, 'SOIN RÊVE DE MIEL', 3, 15000),
	(19, 'SOIN PURETÉ DU DOS - Pour Homme', 3, 14000),
	(20, 'SOIN RÊVERIE ORIENTALE', 4, 18000);
/*!40000 ALTER TABLE `spa` ENABLE KEYS */;

-- Listage des données de la table borabora.spa_categorie : ~4 rows (environ)
/*!40000 ALTER TABLE `spa_categorie` DISABLE KEYS */;
INSERT INTO `spa_categorie` (`Id_CatSpa`, `Lib_CatSpa`, `Durée`) VALUES
	(1, 'Soin basique', 30),
	(2, 'Soin Classique', 60),
	(3, 'Soin Prestige', 90),
	(4, 'Soin Luxe', 120);
/*!40000 ALTER TABLE `spa_categorie` ENABLE KEYS */;

-- Listage des données de la table borabora.spa_concerne : ~0 rows (environ)
/*!40000 ALTER TABLE `spa_concerne` DISABLE KEYS */;
INSERT INTO `spa_concerne` (`Num_soinSpa`, `Num_FactSpa`) VALUES
	(2, 1);
/*!40000 ALTER TABLE `spa_concerne` ENABLE KEYS */;

-- Listage des données de la table borabora.spa_facture : ~0 rows (environ)
/*!40000 ALTER TABLE `spa_facture` DISABLE KEYS */;
INSERT INTO `spa_facture` (`NumFactureSpa`, `Date_Spa`, `Quantite_Spa`) VALUES
	(1, '2020-05-13', 2);
/*!40000 ALTER TABLE `spa_facture` ENABLE KEYS */;

-- Listage des données de la table borabora.spa_sejour : ~0 rows (environ)
/*!40000 ALTER TABLE `spa_sejour` DISABLE KEYS */;
INSERT INTO `spa_sejour` (`NumFactSpa`, `Num_Sej`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `spa_sejour` ENABLE KEYS */;

-- Listage des données de la table borabora.users : ~0 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `identifiant`, `mdp`, `fonction`) VALUES
	(1, 'John', 'Doe', 'Receptionniste');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
