-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 30 Mai 2018 à 18:33
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `centre_service`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `ID_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`ID_admin`, `username`, `password`) VALUES
(1, 'hossam', '5885'),
(3, 'jedjdj', 'dsks'),
(4, 'hossam', '123456');

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

CREATE TABLE `annonce` (
  `ID_annonce` int(11) NOT NULL,
  `ID_off` int(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `descreption` text NOT NULL,
  `date` date NOT NULL,
  `etat` enum('Accepter','Refuser') DEFAULT 'Refuser',
  `price` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `ID_categorie` int(11) NOT NULL,
  `Type` enum('Je me propose','Je cherche') DEFAULT NULL,
  `top` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `annonce`
--

INSERT INTO `annonce` (`ID_annonce`, `ID_off`, `image`, `descreption`, `date`, `etat`, `price`, `title`, `ID_categorie`, `Type`, `top`) VALUES
(29, 18, 'coif.jpg', 'Bonjour Je recherches ', '2018-05-16', 'Accepter', 400, ' Coiffure', 34, 'Je cherche', 'ok'),
(30, 18, 'prog.jpg', 'je suis déplomé...', '2018-05-16', 'Accepter', 800, 'cours programmation ', 40, 'Je me propose', 'ok'),
(31, 18, 'car.jfif', 'Je vous propose mes services ', '2018-05-16', 'Accepter', 100, 'Déménagement et transport', 15, 'Je me propose', 'no'),
(32, 19, 'guitare.jpg', 'je suis  la recherchee ....', '2018-05-18', 'Accepter', 400, 'Cours de guitaree', 5, 'Je cherche', 'ok'),
(35, 20, 'app_logo.png', 'draw', '2018-05-26', 'Refuser', 265, 'draw', 4, 'Je cherche', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `ID_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(50) NOT NULL,
  `classe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`ID_categorie`, `nom_categorie`, `classe`) VALUES
(4, 'Design', 'lni-leaf'),
(5, 'Music', 'lni-tshirt'),
(6, 'Photographie', 'lni-briefcase'),
(9, 'Cuisine', 'lni-graduation'),
(12, 'Mécanique', 'lni-home'),
(13, 'Plomberie', 'lni-home'),
(14, 'Menuiserire', 'lni-tshirt'),
(15, 'Transport', 'lni-car'),
(16, 'Agriculture', 'lni-hand'),
(17, 'Electiricité', 'lni-mobile'),
(18, 'Electronique', 'lni-leaf'),
(19, 'Organisation des fêtes', 'lni-display'),
(20, 'Sculpture', 'lni-home'),
(22, 'Serveur', 'lni-paint-roller'),
(24, 'Traduction', 'lni-display'),
(26, 'Sécurité', 'lni-home'),
(27, 'Jardinerie', 'lni-tshirt'),
(30, 'Ménage', 'lni-home'),
(31, 'Enfants', 'lni-heart'),
(32, 'Administration et gestion', 'lni-hand'),
(33, 'Artisans', 'lni-hand'),
(34, 'Beauté & Bien-être', 'lni-hand'),
(35, 'Cours & Formations', 'lni-home'),
(36, 'Commerces', 'lni-hand'),
(37, 'Événementiel & Arts du spectacle', 'lni-mobile'),
(38, 'Hébergement & Immobilier', 'lni-laptop'),
(39, 'Hôtellerie & Restauration', 'lni-paint-roller'),
(40, 'Informatique & Web', 'lni-laptop'),
(41, 'Maison, Bricolage & Déco', 'lni-home'),
(42, 'Dessin', 'lni-mobile');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `ID_Client` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` int(20) NOT NULL,
  `genre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`ID_Client`, `nom`, `prenom`, `email`, `password`, `phone`, `genre`) VALUES
(223, 'ben', 'salma', 'salma.ben@gmail.com', '123456789', 637578084, 'Femme'),
(224, 'farih', 'anas', 'hossam@email.com', '123456', 635289784, 'Homme'),
(226, 'hossam', 'hossam', 'hossam1@mail.com', '123456', 680714151, 'Homme'),
(227, 'hossam', 'hossam', 'hossam1@mail.com', '123456', 680714151, 'Homme');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `ID_commentaire` int(11) NOT NULL,
  `ID_Client` int(11) NOT NULL,
  `text` text NOT NULL,
  `ID_annonce` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commentaire`
--

INSERT INTO `commentaire` (`ID_commentaire`, `ID_Client`, `text`, `ID_annonce`, `date`) VALUES
(14, 223, 'je vous remercie pour cette vraiment je suis interesser .... merci beaucoup', 1, '12-12-2012'),
(15, 223, 'c\'est une copie laisse pas ? <br>\r\nsi s\'est faut alors on peut dire tu as un bon offreur. ', 1, '12-12-2012'),
(16, 223, 'parfait !!! ... vraiment il est en bon etat ;)', 1, '12-12-2012'),
(17, 223, 'gjgvngnh ;cfnbkfnbfg lkdfglkdfkdf ldfgkldfgbkdfb mdfm,lbdflb pmlfgdfgdf pdfjdkfbdfb podfgldflg pdfjgdflgdlg dfogodf', 2, '12-12-2012'),
(18, 223, 'hgjghjghj tfhfth rtgh rfgh gfh fg', 2, '12-12-2012'),
(19, 223, 'thanks', 1, '12-12-2012'),
(24, 223, 'je suis tres interesser . est ce que peut de reprise avec Iphone ?', 1, '12-12-2012'),
(25, 223, 'jghnghnghnghng', 30, '12-12-2012'),
(26, 223, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 30, '2018-05-19'),
(27, 223, 'jhsdsbd skdskdjf sjdbfksjdfsd sjkdfvskdjv lsdffsd ', 30, '2018-05-19'),
(28, 223, 'ghhh hghfh fghfg', 30, '2018-05-19'),
(29, 223, 'okkkkkk', 30, '2018-05-19'),
(30, 223, 'this is  good ', 32, '2018-05-19'),
(31, 223, 'i want this ', 29, '2018-05-19'),
(32, 224, 'hello this is a very good', 32, '2018-05-20'),
(33, 224, 'kfdkjkdkdf jkfj', 32, '2018-05-20'),
(34, 224, 'hi i\'am intrested', 29, '2018-05-20'),
(35, 18, 'je suis interessé', 32, '2018-05-20'),
(36, 223, 'jeshjer hjersjhds', 32, '2018-05-21');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `sujet` varchar(80) NOT NULL,
  `commentaire` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `sujet`, `commentaire`) VALUES
(1, 'jamila', 'jamila.bendhi@gmail.com', 'hello', 'this is cool'),
(2, 'jamila', 'jamila.bendhi@gmail.com', 'hello', 'this is cool'),
(3, 'hossam', 'jamila.bendh@gmail.com', 'hem', 'hhhhhhhhhh'),
(4, 'hossam', 'jamila.bendh@gmail.com', 'hem', 'hhhhhhhhhh'),
(5, 'gggg', 'hh@gmail.com', 'kkkk', 'jhhhhhhhh'),
(6, 'gggg', 'hh@gmail.com', 'kkkk', 'jhhhhhhhh'),
(7, 'hossam', 'hossam@email.com', 'OK', 'OK');

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

CREATE TABLE `evaluation` (
  `id_ev` int(11) NOT NULL,
  `id_off` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `resultat` double DEFAULT NULL,
  `nbr_star` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `evaluation`
--

INSERT INTO `evaluation` (`id_ev`, `id_off`, `id_client`, `resultat`, `nbr_star`) VALUES
(13, 1, 1, 0, 5),
(23, 10, 3, 4.5, 5),
(22, 2, 3, 3, 1),
(21, 2, 2, 2.5, 3.5),
(20, 4, 5, 2.75, 0.5),
(19, 4, 1, 0.5, 5),
(18, 11, 2, 0, 0.5),
(17, 10, 2, 0, 4.5),
(16, 8, 1, 0, 1.5),
(15, 4, 2, 0, 0.5),
(24, 18, 2, 0, 4),
(25, 18, 1, 4, 0.5),
(26, 18, 5, 2.25, 5),
(27, 18, 223, 3.1666666666666665, 5),
(28, 19, 223, 0, 2.5),
(29, 19, 3, 2.5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `offreur_service`
--

CREATE TABLE `offreur_service` (
  `ID_off` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` int(20) NOT NULL,
  `nom_service` varchar(50) NOT NULL,
  `descreption` text NOT NULL,
  `ville` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL DEFAULT 'offreur.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `offreur_service`
--

INSERT INTO `offreur_service` (`ID_off`, `nom`, `prenom`, `email`, `password`, `phone`, `nom_service`, `descreption`, `ville`, `genre`, `photo`) VALUES
(18, 'salmaa', 'ben', 'ben.salma@gmail.com', '123456789', 62857594, 'Administration et gestion', 'je suis ges....', 'agadir', 'null', 'prof3.jpg'),
(19, 'bosalh', 'sana', 'bosalh@gmail.com', '10987654jam', 638529784, 'Administration et gestion', 'je suis Déplomé....', 'marrakech', 'Femme', 'offreur.jpg'),
(20, 'hossam', 'hossam', 'hossam_york@outlook.com', '123456', 6999999, 'Artisans', 'OK', 'AGADIR', 'male', '42-36472427.jpg');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_admin`);

--
-- Index pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD PRIMARY KEY (`ID_annonce`),
  ADD KEY `hfh` (`ID_categorie`),
  ADD KEY `fk_PerOrd` (`ID_off`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`ID_categorie`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID_Client`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`ID_commentaire`),
  ADD KEY `ID_Client` (`ID_Client`),
  ADD KEY `ID_annonce` (`ID_annonce`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id_ev`),
  ADD KEY `id_off` (`id_off`);

--
-- Index pour la table `offreur_service`
--
ALTER TABLE `offreur_service`
  ADD PRIMARY KEY (`ID_off`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `annonce`
--
ALTER TABLE `annonce`
  MODIFY `ID_annonce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `ID_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `ID_Client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `ID_commentaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `id_ev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `offreur_service`
--
ALTER TABLE `offreur_service`
  MODIFY `ID_off` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD CONSTRAINT `fk_PerOrd` FOREIGN KEY (`ID_off`) REFERENCES `offreur_service` (`ID_off`),
  ADD CONSTRAINT `hfh` FOREIGN KEY (`ID_categorie`) REFERENCES `categorie` (`ID_categorie`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
