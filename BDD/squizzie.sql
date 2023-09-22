-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 22 sep. 2023 à 12:37
-- Version du serveur : 5.7.39
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `squizzie`
--

-- --------------------------------------------------------

--
-- Structure de la table `animaux`
--

CREATE TABLE `animaux` (
  `id_question` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `reponse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `animaux`
--

INSERT INTO `animaux` (`id_question`, `question`, `reponse`) VALUES
(1, 'Les kangourous sont originaires d\'Australie.', 'Vrai'),
(2, 'Les chauves-souris sont des oiseaux.', 'Faux'),
(3, 'Le dauphin est un poisson.', 'Faux'),
(4, 'Les éléphants sont les plus grands animaux terrestres.', 'Vrai'),
(5, 'Les serpents sont des reptiles venimeux.', 'Faux'),
(6, 'Les abeilles produisent du miel en digérant du nectar.', 'Vrai'),
(7, 'Les girafes ont le même nombre de vertèbres cervicales que les humains.', 'Faux'),
(8, 'Les pingouins vivent exclusivement en Antarctique.', 'Faux'),
(9, 'Les pandas géants se nourrissent principalement de bambou.', 'Vrai'),
(10, 'Les tortues peuvent vivre sur terre et dans l\'eau.', 'Vrai');

-- --------------------------------------------------------

--
-- Structure de la table `culture_generale`
--

CREATE TABLE `culture_generale` (
  `id_question` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `reponse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `culture_generale`
--

INSERT INTO `culture_generale` (`id_question`, `question`, `reponse`) VALUES
(1, 'La Grande Muraille de Chine est visible depuis l\'espace.', 'Faux'),
(2, 'La Tour Eiffel a été construite pour l\'Exposition universelle de Paris en 1889.', 'Vrai'),
(3, 'La Terre est la planète la plus proche du soleil.', 'Faux'),
(4, 'La Mona Lisa est une peinture célèbre de Vincent van Gogh.', 'Faux'),
(5, 'Le Japon est une île située en Amérique du Sud.', 'Faux'),
(6, 'William Shakespeare était un dramaturge et poète anglais du XVIe siècle.', 'Vrai'),
(7, 'La mer Morte est si salée que l\'on peut flotter à la surface sans effort.', 'Vrai'),
(8, 'La statue de la Liberté a été un cadeau de la France aux États-Unis.', 'Vrai'),
(9, 'La Grande Barrière de corail est située au large des côtes de l\'Australie.', 'Vrai'),
(10, 'La Chine est le pays le plus peuplé du monde.', 'Vrai');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id_question` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `reponse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id_question`, `question`, `reponse`) VALUES
(1, 'Le film \"Titanic\" a remporté 11 Oscars.', 'Vrai'),
(2, 'Le film \"Forrest Gump\" met en vedette Tom Hanks.', 'Vrai'),
(3, '\"Le Seigneur des Anneaux : Le Retour du Roi\" est le dernier film de la trilogie \"Le Seigneur des Anneaux.\"', 'Vrai'),
(4, 'James Bond est un agent secret britannique.', 'Vrai'),
(5, '\"Le Parrain\" est une trilogie réalisée par Martin Scorsese.', 'Faux'),
(6, '\"E.T. l\'extra-terrestre\" a été réalisé par Steven Spielberg.', 'Vrai'),
(7, '\"Jurassic Park\" est un film sur des dinosaures créés par clonage.', 'Vrai'),
(8, '\"Avatar\" est le film le plus rentable de tous les temps.', 'Vrai'),
(9, '\"Pulp Fiction\" est un film de science-fiction.', 'Faux'),
(10, 'Le personnage de Batman est également connu sous le nom de Bruce Wayne.', 'Vrai');

-- --------------------------------------------------------

--
-- Structure de la table `musique`
--

CREATE TABLE `musique` (
  `id_question` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `reponse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `musique`
--

INSERT INTO `musique` (`id_question`, `question`, `reponse`) VALUES
(1, 'Michael Jackson était surnommé \"le Roi de la Pop\".', 'Vrai'),
(2, 'Les Beatles sont un groupe de rock britannique.', 'Vrai'),
(3, 'Le piano est un instrument à vent.', 'Faux'),
(4, 'Le groupe Queen a enregistré la chanson \"Bohemian Rhapsody\".', 'Vrai'),
(5, 'La chanteuse Beyoncé a fait partie du groupe Destiny\'s Child.', 'Vrai'),
(6, 'La guitare électrique a été inventée par Les Paul.', 'Vrai'),
(7, 'Le rappeur Eminem est originaire de Los Angeles.', 'Faux'),
(8, 'Le genre musical reggae a ses origines en Jamaïque.', 'Vrai'),
(9, 'Le violoncelle est un instrument à cordes frottées.', 'Vrai'),
(10, 'Le compositeur Ludwig van Beethoven était sourd à la fin de sa vie.', 'Vrai');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animaux`
--
ALTER TABLE `animaux`
  ADD PRIMARY KEY (`id_question`);

--
-- Index pour la table `culture_generale`
--
ALTER TABLE `culture_generale`
  ADD PRIMARY KEY (`id_question`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_question`);

--
-- Index pour la table `musique`
--
ALTER TABLE `musique`
  ADD PRIMARY KEY (`id_question`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `animaux`
--
ALTER TABLE `animaux`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `culture_generale`
--
ALTER TABLE `culture_generale`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `musique`
--
ALTER TABLE `musique`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
