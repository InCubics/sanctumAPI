-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 10 nov 2021 om 09:30
-- Serverversie: 10.4.17-MariaDB
-- PHP-versie: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deb7756n2_sanctumapi`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `beers`
--

CREATE TABLE `beers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brewer` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yeast` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perc` decimal(4,2) DEFAULT NULL,
  `purchase_price` decimal(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `beers`
--

INSERT INTO `beers` (`id`, `name`, `brewer`, `type`, `yeast`, `perc`, `purchase_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Abondance mirabellen', 'Brouwerij de Troch', 'overige', 'spontane', '0.04', '4.39', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(2, 'Abondance pêche', 'Brouwerij de Troch', 'overige', 'spontane', '0.04', '4.34', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(3, 'Adler', 'Brouwerij Haacht', 'dortmunder', 'lage', NULL, '3.53', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(4, 'Aerts 1900', 'Brouwerij Palm', 'overige', 'hoge met nof', '0.07', '2.66', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(5, 'Affligem christmas', 'Brouwerij de Smedt', 'overige', 'hoge', '0.07', '3.68', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(6, 'Affligem donker', 'Brouwerij de Smedt', 'dubbel', 'hoge met nof', '0.06', '2.44', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(7, 'Affligem helder', 'Brouwerij de Smedt', 'overige', 'hoge met nof', '0.06', '2.16', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(8, 'Affligem rood', 'Brouwerij de Smedt', 'overige', 'hoge met nof', '0.06', '4.49', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(9, 'Affligem tripel', 'Brouwerij de Smedt', 'tripel', 'hoge met nof', '0.09', '4.95', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(10, 'Affligem van `t patersvat', 'Brouwerij de Smedt', 'overige', 'hoge met nof', '0.06', '3.29', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(11, 'Akila pils', 'Brouwerij Louwaege', 'pilsener', 'lage', '0.05', '2.59', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(12, 'Alexander Rodenbach', 'Bierbrouwerij Rodenbach', 'overige', 'hoge+melkzure', '0.06', '4.08', NULL, '2018-05-04 22:00:00', '2000-07-01 22:00:00'),
(13, 'Alken export', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', '0.04', '4.62', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(14, 'Allard extra', 'Brasserie Allard et Groetembril', 'saison', 'hoge met nof', '0.07', '2.86', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(15, 'Allard extra vieille', 'Brasserie Allard et Groetembril', 'saison', 'hoge met nof', '0.07', '4.46', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(16, 'Ambiorix dubbel', 'Brouwerij Slagmuylder', 'dubbel', 'hoge met nof', '0.08', '2.70', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(17, 'Anglo pils', 'Alken-Maes (zetel Waarloos)', 'pilsener', 'lage', '0.05', '4.14', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(18, 'Anglo pils', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', '0.05', '4.59', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(19, 'Antiek', 'Brouwerij Isebaert', 'overige', 'hoge', '0.08', '2.52', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(20, 'Antigoon', 'Brouwerij Isebaert', 'overige', 'hoge', '0.08', '2.83', NULL, '2018-05-04 22:00:00', '2000-07-01 22:00:00'),
(21, 'Arabier', 'De Dolle Brouwers', 'overige', NULL, NULL, '4.60', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(22, 'Aro pils', 'Brouwerij Haacht', 'pilsener', 'lage', '0.05', '3.49', NULL, '2018-05-04 22:00:00', '2000-07-01 22:00:00'),
(23, 'Artevelde', 'Brouwerij L. Huyghe N.V.', 'ale', 'hoge', '0.07', '4.67', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(24, 'Artevelde grand cru', 'Brouwerij L. Huyghe N.V.', 'overige', 'hoge met nof', '0.06', '4.88', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(25, 'Artevelde pils', 'Brouwerij L. Huyghe N.V.', 'pilsener', 'lage', '0.05', '2.39', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(26, 'Artois export', 'Artois (groep Interbrew)', 'pilsener', 'lage', '0.05', '4.33', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(27, 'Artvelde grand cru op gist', 'Brouwerij L. Huyghe N.V.', 'overige', 'hoge met nof', '0.06', '3.45', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(28, 'Artvelde menta', 'Brouwerij L. Huyghe N.V.', 'overige', 'lage', '0.05', '2.29', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(29, 'Artvelde op gist', 'Brouwerij L. Huyghe N.V.', 'ale', 'hoge', '0.07', '2.09', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(30, 'Augustijn', 'Brouwerij Bios', 'overige', 'hoge met nof', '0.08', '4.56', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(31, 'Augustijn grand cru', 'Brouwerij Bios', 'tripel', 'hoge met nof', '0.09', '2.53', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(32, 'Avec les Bons Voeux de la brasserie Dupo', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.10', '2.98', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(33, 'Bacchus', 'Brouwerij Van Honsebrouck', 'Vlaamse bruine', 'hoge', '0.05', '2.33', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(34, 'Baf', 'Brouwerij de Smedt', 'Belgische ale', 'hoge', '0.05', '3.69', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(35, 'Bailus', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.09', '3.44', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(36, 'Bakelandt', 'Brouwerij van Eecke', 'overige', 'hoge met nof', '0.08', '4.16', NULL, '2018-12-12 22:00:00', '2019-01-02 22:00:00'),
(37, 'Bass Old Barley Stout', 'Lamot (groep Interbrew)', 'stout', 'hoge', '0.06', '2.48', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(38, 'Bass pale ale', 'Lamot (groep Interbrew)', 'pale ale', 'hoge', '0.05', '3.93', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(39, 'Battin Edelpils', 'Brasserie Battin', 'pilsener', 'lage', '0.05', '4.20', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(40, 'Battin Gambrinus', 'Brasserie Battin', 'pilsener', 'lage', '0.06', '4.23', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(41, 'Battin Gambrinus bock', 'Brasserie Battin', 'bokbier', 'lage', '0.07', '3.54', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(42, 'Battin Gambrinus urtyp', 'Brasserie Battin', 'pilsener', 'lage', '0.06', '2.99', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(43, 'Bavik super pils', 'Bavik - De Brabandere', 'pilsener', 'lage', '0.05', '2.34', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(44, 'Belga pils', 'Brouwerij Leroy', 'pilsener', 'lage', '0.05', '3.72', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(45, 'Belle Vue frambozen', 'Belle Vue', 'framboise', 'spontane', '0.05', '3.60', NULL, '2018-05-04 22:00:00', '2000-07-01 22:00:00'),
(46, 'Belle Vue gueuze lambic \"cuvée\"', 'Belle Vue', 'gueuze', 'spontane', '0.05', '4.83', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(47, 'Belle Vue kriek lambic', 'Belle Vue', 'kriekenbier', 'spontane', '0.05', '2.37', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(48, 'Belle Vue kriek lambic \"cuvée\"', 'Belle Vue', 'kriekenbier', 'spontane', '0.05', '4.33', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(49, 'Benedict', 'Brouwerij De Kluis (groep Interbrew)', 'dubbel', 'hoge met nof', '0.07', '3.57', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(50, 'Bergenbier', 'Artois (groep Interbrew)', 'pilsener', 'lage', '0.05', '2.84', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(51, '`n Seule', 'Brouwerij Slagmuylder', 'overige', 'hoge met nof', '0.06', '4.49', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(52, '`t Paterke Achelse Kluis', 'Brouwerij R. Gielen', 'dubbel', 'hoge met nof', '0.06', '2.94', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(53, '203 Hamse witten', 'Brouwerij Vieille Villers', 'witbier', 'lage', '0.05', '2.23', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(54, '406 Wuitensbier', 'Brouwerij Vieille Villers', 'dubbel', 'hoge', '0.06', '3.32', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(55, '1664 de Kronenbourg', 'Alken-Maes (zetel Alken)', 'superpils', 'lage', '0.06', '4.93', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(56, 'A la ferme', 'Brouwerij Isebaert', 'overige', 'hoge', '0.08', '3.70', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(57, 'Abbaye d`Aulne ADA 6° sur lie', 'Brouwerij de Smedt', 'overige', 'hoge met nof', '0.06', '4.68', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(58, 'Abbaye d`Aulne ADA 8° Selection', 'Brouwerij de Smedt', 'overige', 'hoge', '0.08', '4.33', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(59, 'Abbaye d`Aulne ADA 10° superbe', 'Brouwerij de Smedt', 'gerstewijn', 'hoge', '0.00', '2.60', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(60, 'Abbaye de Bonne Espérance', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.08', '3.99', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(61, 'Abbaye de Brogne Tripel sur lie', 'Brouwerij de Smedt', 'tripel', 'hoge met nof', '0.09', '4.17', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(62, 'Abbaye de Cambron', 'Brasserie de Silly', 'saison', 'hoge', '0.06', '3.89', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(63, 'Abbaye de Gembloux', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.08', '4.92', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(64, 'Abbaye de la Moinette', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '4.92', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(65, 'Abbaye de Saint-Ghislain', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '4.87', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(66, 'Abbaye des Rocs', 'Brasserie de l`Abbaye des Rocs (Brasseri', 'overige', 'hoge met nof', '0.09', '4.57', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(67, 'Abbaye du Val St.-Lambert', 'Brasserie Allard et Groetembril', 'overige', 'hoge+melkzure', '0.10', '3.24', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(68, 'Abdij van Steenbrugge', 'Brouwerij De Gouden Boom', 'dubbel', 'hoge met nof', '0.06', '3.49', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(69, 'Abdijbier Loo', 'Brouwerij Isebaert', 'tripel', 'hoge met nof', '0.08', '2.71', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(70, 'Abondance banaan', 'Brouwerij de Troch', 'overige', 'spontane', '0.04', '4.11', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(71, 'Abondance framboos', 'Brouwerij de Troch', 'framboise', 'spontane', '0.04', '4.43', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(72, 'Abondance kriek', 'Brouwerij de Troch', 'overige', 'spontane', '0.04', '4.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(73, 'Beyerd Speciaal', 'Brouwerij Sterkens', 'ale', 'hoge', '0.06', '2.72', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(74, 'Beyerd speciaal 150', 'Brouwerij Sterkens', 'tripel', 'hoge', '0.08', '3.20', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(75, 'Bezebier', 'Brouwerij Van Honsebrouck', 'overige', 'spontane', '0.05', '2.84', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(76, 'Bécasse gueuze', 'Brabrux (Groep Belle-Vue)', 'gueuze', 'spontane', '0.05', '2.61', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(77, 'Biermarkt super pils', 'Brouwerij Verhaeghe', 'pilsener', 'lage', '0.04', '2.50', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(78, 'Bière de la Commanderie de piéton', 'Brasserie Allard et Groetembril', 'overige', 'hoge+melkzure', '0.10', '2.71', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(79, 'Bière des Ducs Lothier', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.08', '4.01', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(80, 'Bière des Sorcières d`Ellezelles', 'Brasserie Voisin', 'overige', 'hoge met nof', '0.07', '3.94', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(81, 'Bière du Boucanier', 'Brouwerij Bios', 'gerstewijn', 'hoge met nof', '0.11', '2.68', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(82, 'Bière la Pax chatelet', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.08', '2.57', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(83, 'Bink', 'Huisbrouwerij Kerkom', 'overige', 'hoge met nof', '0.06', '2.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(84, 'Bios export', 'Brouwerij Bios', 'pilsener', 'lage', '0.05', '4.30', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(85, 'Bios Vlaamse bourgogne', 'Brouwerij Bios', 'Vlaamse bruine', 'hoge met nof', '0.06', '2.11', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(86, 'Blanch-ke', 'Brouwerij Van Honsebrouck', 'witbier', 'hoge met nof', '0.05', '4.64', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(87, 'Block export', 'Brouwerij de Block', 'pilsener', 'lage', '0.05', '2.87', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(88, 'Blonde des pères Abbaye d`Aulne', 'Brouwerij de Smedt', 'overige', 'hoge met nof', '0.08', '4.45', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(89, 'Blonde des pères Abbaye de Brogne', 'Brouwerij de Smedt', 'overige', 'hoge met nof', '0.08', '2.61', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(90, 'Blonde du menhir', 'Brasserie Lefèbvre', 'saison', 'hoge met nof', '0.06', '3.70', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(91, 'Bocholter Kwik Pils', 'Brouwerij Martens', 'pilsener', 'lage', '0.05', '2.68', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(92, 'Bock pils', 'Brouwerij Palm', 'pilsener', 'lage', '0.05', '3.29', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(93, 'Bockhauser pils', 'Brouwerij Haacht', 'pilsener', 'lage', '0.05', '3.41', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(94, 'Bockor', 'Brouwerij Bockor', 'pilsener', 'lage', '0.05', '2.18', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(95, 'Bockor export', 'Brouwerij Bockor', 'pilsener', 'lage', '0.05', '4.67', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(96, 'Bockor pils', 'Brouwerij Bockor', 'pilsener', 'lage', '0.05', '2.83', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(97, 'Bokkereyer', 'Brouwerij St. Jozef', 'overige', 'lage', '0.06', '4.14', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(98, 'Bokrijk tarwe beer', 'Brouwerij de Block', 'witbier', 'hoge met nof', '0.05', '4.19', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(99, 'Bokrijks kruikenbier', 'Brouwerij Sterkens', 'tripel', 'hoge met nof', '0.07', '3.55', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(100, 'Bolderbergs kluizenaarsbier', 'Brouwerij Sterkens', 'ale', 'hoge', '0.06', '3.18', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(101, 'Bornem dubbel', 'Brouwerij Bios', 'dubbel', 'hoge met nof', '0.08', '3.24', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(102, 'Bornem St. Bernard', 'Brouwerij Bios', 'dubbel', 'hoge met nof', '0.08', '4.64', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(103, 'Boskeun', 'De Dolle Brouwers', 'overige', 'hoge met nof', '0.08', '2.50', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(104, 'Bourgogne des Flandres', 'Brouwerij Verhaeghe', 'Vlaamse bruine', 'hoge', '0.06', '2.59', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(105, 'Boxer pils', 'Brouwerij Roman', 'pilsener', 'lage', '0.05', '3.46', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(106, 'Brabants witbier', 'Brouwerij Palm', 'witbier', 'hoge met nof', '0.05', '4.51', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(107, 'Brave broeder', 'Brasserie de Silly', 'saison', 'hoge', '0.06', '4.16', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(108, 'Brigand', 'Brouwerij Van Honsebrouck', 'tripel', 'hoge met nof', '0.09', '2.29', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(109, 'Brouwers abdijbier', 'Brouwerij de Smedt', 'dubbel', 'hoge met nof', '0.06', '2.95', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(110, 'Brouwers Bier Belgisch Bier', 'Brouwerij Piedboeuf', 'pilsener', 'lage', '0.05', '2.88', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(111, 'Brouwmeester', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', '0.05', '3.54', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(112, 'Brug ale', 'Brasserie de Silly', 'Belgische ale', 'hoge', '0.05', '4.08', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(113, 'Brugse straffe Hendrik', 'Huisbrouwerij Straffe Hendrik (groep Riv', 'overige', 'hoge met nof', '0.05', '4.75', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(114, 'Bruinekuif', 'Brouwerij Verhaeghe', 'Vlaamse bruine', 'hoge', '0.06', '3.54', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(115, 'Brunehaut 8', 'Brasserie Allard et Groetembril', 'overige', 'hoge+melkzure', '0.10', '4.46', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(116, 'Brunehaut 8 vieille réserve', 'Brasserie Allard et Groetembril', 'overige', 'hoge+melkzure', '0.10', '3.65', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(117, 'Buffalo', 'Brouwerij van den Bossche', 'overige', 'hoge', '0.05', '2.87', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(118, 'Bush beer', 'Brasserie Dubuisson', 'gerstewijn', 'hoge', '0.12', '4.42', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(119, 'Caeyman pils', 'Brouwerij van Roy', 'pilsener', 'lage', '0.05', '2.50', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(120, 'Cambrinus', 'Brouwerij Verhaeghe', 'Belgische ale', 'hoge', '0.06', '3.22', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(121, 'Campbell`s christmas', 'Martinas (groep Interbrew)', 'scotch ale', 'hoge', '0.08', '3.60', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(122, 'Campbell`s scotch', 'Martinas (groep Interbrew)', 'scotch ale', 'hoge', '0.08', '3.33', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(123, 'Campus', 'Brouwerij Bios', 'overige', 'hoge met nof', '0.08', '3.84', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(124, 'Cantillon druivenlambic', 'Brouwerij Cantillon', 'overige', 'spontane', '0.05', '4.24', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(125, 'Cantillon framboise', 'Brouwerij Cantillon', 'framboise', 'spontane', '0.05', '4.66', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(126, 'Cantillon Grand Cru', 'Brouwerij Cantillon', 'lambic', 'spontane', '0.05', '2.59', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(127, 'Cantillon kriek', 'Brouwerij Cantillon', 'kriekenbier', 'spontane', '0.05', '2.95', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(128, 'Cara pils', 'Brouwerij Haacht', 'pilsener', 'lage', '0.05', '2.01', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(129, 'Cara pils', 'Brouwerij van Roy', 'pilsener', 'lage', '0.05', '2.17', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(130, 'Cara pils', 'Brouwerij Martens', 'pilsener', 'lage', '0.05', '2.85', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(131, 'Cardor', 'Brouwerij Riva', 'overige', 'hoge', '0.08', '2.71', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(132, 'Carillon', 'Brasserie à Vapeur', 'overige', 'hoge met nof', '0.08', '3.02', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(133, 'Catchpole blonde', 'Brasserie du Bocq', 'overige', 'hoge met nof', '0.07', '4.98', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(134, 'Catchpole brune', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.09', '4.85', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(135, 'Caves', 'Brouwerij Verhaeghe', 'overige', 'hoge', '0.05', '4.28', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(136, 'Caves Bruegel gueuze lambic', 'Brabrux (Groep Belle-Vue)', 'gueuze', 'spontane', '0.05', '4.84', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(137, 'Caves Bruegel kriek lambic', 'Brabrux (Groep Belle-Vue)', 'kriekenbier', 'spontane', '0.05', '3.38', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(138, 'Cervesia', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '3.38', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(139, 'Cervoise de l`Avouerie d`Anthisnes', 'Brasserie de Silly', 'Belgische ale', 'hoge', '0.05', '4.76', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(140, 'Cervoise du Maca', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.07', '2.67', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(141, 'Charles Quint', 'Brouwerij Haacht', 'dubbel', 'hoge', '0.06', '3.06', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(142, 'Christmas', 'Brouwerij Leroy', 'dubbel', 'hoge', '0.08', '2.30', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(143, 'Christmas beer (Delhaize)', 'Brasserie du Bocq', 'scotch ale', 'hoge met nof', '0.09', '3.33', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(144, 'Christmas Primus pils', 'Brouwerij Haacht', 'pilsener', 'lage', '0.05', '4.73', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(145, 'Class pils', 'Brouwerij van Roy', 'pilsener', 'lage', '0.05', '2.68', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(146, 'Contra pils', 'Brouwerij Contreras', 'pilsener', 'lage', '0.05', '3.21', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(147, 'Coq hardi pils', 'Brouwerij Haacht', 'pilsener', 'lage', '0.05', '2.99', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(148, 'Corsendonk Agnus', 'Brasserie du Bocq', 'tripel', 'hoge met nof', '0.08', '3.34', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(149, 'Corsendonk Agnus 75 cl.', 'Brouwerij Bios', 'overige', 'hoge met nof', '0.08', '2.73', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(150, 'Corsendonk Agnus van het vat', 'Brouwerij de Smedt', 'overige', 'hoge', '0.06', '4.63', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(151, 'Corsendonk Pater', 'Brouwerij Bios', 'dubbel', 'hoge met nof', '0.08', '3.97', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(152, 'Coy`Heimsen', 'Brouwerij van Eecke', 'dubbel', 'hoge met nof', '0.06', '3.97', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(153, 'Cristal Alken', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', '0.05', '2.92', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(154, 'Cristmas van Roy', 'Brouwerij van Roy', 'bokbier', 'hoge', '0.07', '3.68', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(155, 'Crom pils', 'Brouwerij Crombé', 'pilsener', 'lage', '0.05', '4.67', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(156, 'Cupido', 'Brouwerij Bosteels', 'overige', 'hoge', '0.05', '4.30', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(157, 'Cuvée Bosquétia', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '2.47', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(158, 'Cuvée Cervesia Tornacum', 'Brasserie Allard et Groetembril', 'overige', 'hoge+melkzure', '0.10', '3.47', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(159, 'Cuvée de Blatteux', 'Brouwerij Verhaeghe', 'Belgische ale', 'hoge', '0.06', '4.94', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(160, 'Cuvée de Borq - la St. Hubert', 'Brasserie Maire', 'overige', 'hoge', '0.05', '3.30', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(161, 'Cuvée de Briqville', 'Brouwerij Bios', 'overige', 'hoge met nof', '0.08', '2.65', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(162, 'Cuvée de Ciney blonde', 'St. Guibert (groep Interbrew)', 'overige', 'hoge', '0.07', '4.36', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(163, 'Cuvée de Ciney brune', 'St. Guibert (groep Interbrew)', 'dubbel', 'hoge', '0.06', '2.87', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(164, 'Cuvée de Ciney spéciale', 'St. Guibert (groep Interbrew)', 'overige', 'hoge', '0.08', '2.27', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(165, 'Cuvée de Huy', 'Brouwerij Bios', 'gerstewijn', 'hoge met nof', '0.11', '3.74', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(166, 'Cuvée de l`Ascension', 'Brasserie de l`Abbaye des Rocs (Brasseri', 'overige', 'hoge met nof', '0.09', '3.91', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(167, 'Cuvée de l`Ermitage', 'Union (groep Alken-Maes)', 'dubbel', 'hoge', '0.07', '3.29', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(168, 'Cuvée de l`Ermitage christmas', 'Union (groep Alken-Maes)', 'dubbel', 'hoge', '0.07', '2.74', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(169, 'Cuvée de l`Escapade', 'Brouwerij Bios', 'gerstewijn', 'hoge met nof', '0.11', '4.83', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(170, 'Cuvée de la Pucelette', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.07', '4.95', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(171, 'Cuvée de la Thyria', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '2.24', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(172, 'Cuvée de Namur blonde', 'Brasserie du Bocq', '?', '?', '0.00', '3.34', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(173, 'Cuvée de Namur blonde', 'Brouwerij L. Huyghe N.V.', 'overige', 'hoge met nof', '0.08', '4.97', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(174, 'Cuvée de St. Gilles blonde', 'Brouwerij Facon', 'overige', 'hoge', '0.08', '3.85', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(175, 'Cuvée de St. Gilles brune', 'Brouwerij Facon', 'overige', 'hoge', '0.08', '2.32', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(176, 'Cuvée des Blatteux', 'Brouwerij Verhaeghe', 'Belgische ale', 'hoge', '0.06', '4.06', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(177, 'Cuvée des Forges', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.00', '2.33', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(178, 'Cuvée des Hauts Voués', 'Brasserie de Silly', 'dubbel', 'hoge', '0.08', '3.46', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(179, 'Cuvée des moissons blonde', 'Brasserie à Vapeur', 'overige', 'hoge met nof', '0.08', '2.31', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(180, 'Cuvée des moissons rousse', 'Brasserie à Vapeur', 'overige', 'hoge met nof', '0.08', '2.17', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(181, 'Cuvée du Brochon', 'Brasserie de l`Abbaye des Rocs (Brasseri', 'overige', 'hoge', '0.07', '4.91', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(182, 'Cuvée du P`tit Lu', 'Brasserie du Bocq', 'saison', 'hoge met nof', '0.06', '4.05', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(183, 'Cuvée du Tchop', 'Brasserie de Silly', 'dubbel', 'hoge', '0.08', '3.52', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(184, 'Cuvée Gerpinoise', 'Brasserie de Silly', 'dubbel', 'hoge', '0.08', '3.47', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(185, 'Cuvée Li Crochon', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.09', '4.77', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(186, 'Cuvée Piconrue', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', '0.08', '2.45', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(187, 'Cuvée spéciale de Chèvremont', 'Brasserie du Bocq', 'overige', 'hoge met nof', '0.07', '4.96', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(188, 'Cuvée St. Antoine', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.09', '3.42', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(189, 'Cuvée St. Berthuin', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.07', '3.22', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(190, 'Cuvée St.Amand', 'Bavik - De Brabandere', 'tripel', 'hoge', '0.08', '3.85', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(191, 'Da Vinci', 'Brasserie de Silly', 'dubbel', 'hoge', '0.08', '4.58', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(192, 'Daiselnaere', 'Brouwerij De Gouden Boom', 'dubbel', 'hoge met nof', '0.06', '3.37', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(193, 'De Brouwers van de Dijle', 'Lamot (groep Interbrew)', 'pilsener', 'lage', '0.05', '4.11', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(194, 'De Koninck', 'Brouwerij De Koninck', 'Belgische ale', 'hoge', '0.05', '2.43', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(195, 'De Koninck gueuze', 'Gueuzestekerij De Koninck', 'gueuze', 'spontane nof', '0.05', '3.82', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(196, 'De Koninck kriek', 'Gueuzestekerij De Koninck', 'kriekenbier', 'spontane', '0.05', '3.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(197, 'De Neve frambozen', 'De Neve (groep Belle-Vue)', 'framboise', 'spontane', '0.05', '2.56', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(198, 'De Neve gueuze gefilterd', 'De Neve (groep Belle-Vue)', 'gueuze', 'spontane', '0.05', '2.39', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(199, 'De Neve gueuze met hergisting', 'De Neve (groep Belle-Vue)', 'gueuze', 'spontane nof', '0.05', '2.25', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(200, 'De Neve kriek lambic', 'De Neve (groep Belle-Vue)', 'kriekenbier', 'spontane', '0.05', '2.10', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(201, 'De Pompeschitter', 'Brouwerij Leroy', 'overige', 'hoge', '0.07', '4.74', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(202, 'De Ryck christmas pale ale', 'Brouwerij de Ryck', 'ale', 'hoge', '0.05', '3.40', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(203, 'De Troch banane-lambic', 'Brouwerij de Troch', 'overige', 'spontane', '0.05', '3.77', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(204, 'De Troch framboise', 'Brouwerij de Troch', 'overige', 'spontane', '0.03', '3.65', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(205, 'De Troch gueuze', 'Brouwerij de Troch', 'gueuze', 'spontane nof', '0.05', '4.94', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(206, 'De Troch kriek', 'Brouwerij de Troch', 'kriekenbier', 'spontane nof', '0.06', '2.74', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(207, 'De Troch mirabelle', 'Brouwerij de Troch', 'overige', 'spontane', '0.03', '2.88', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(208, 'De Troch pêche', 'Brouwerij de Troch', 'overige', 'spontane', '0.03', '4.17', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(209, 'De Verboden Vrucht', 'Brouwerij De Kluis (groep Interbrew)', 'overige', '?', '0.00', '4.24', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(210, 'Deca pils', 'Brouwerij Isebaert', 'pilsener', 'lage', '0.05', '3.68', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(211, 'Deconinck pils', 'Brouwerij Riva', 'pilsener', 'lage', '0.05', '3.68', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(212, 'Den Bleeken Moriaan', 'Brouwerij van Eecke', 'overige', 'hoge met nof', '0.10', '2.37', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(213, 'Den Bruynen Moriaen', 'Brouwerij van Eecke', 'overige', 'hoge met nof', '0.09', '4.78', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(214, 'Dentergems witbier - Riva blanche', 'Brouwerij Riva', 'witbier', 'hoge met nof', '0.05', '2.82', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(215, 'Derby pils', 'Brouwerij Haacht', 'pilsener', 'lage', '0.05', '3.74', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(216, 'Dikke', 'Brouwerij de Smet', 'overige', 'lage', '0.07', '2.24', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(217, 'Dikke Mathile', 'Brouwerij Strubbe', 'ale', 'hoge', '0.06', '3.99', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(218, 'Dilirium tremens', 'Brouwerij L. Huyghe N.V.', 'overige', 'hoge met nof', '0.10', '2.25', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(219, 'Dobbel Palm', 'Brouwerij Palm', 'Belgische ale', 'hoge', '0.06', '3.25', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(220, 'Dobbelen bruinen', 'Brouwerij Roman', 'Vlaamse bruine', 'hoge met nof', '0.08', '4.51', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(221, 'Dobbelken', 'Brouwerij Strubbe', 'Vlaamse bruine', 'hoge+melkzure', '0.05', '4.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(222, 'Domein donker', 'Brouwerij Bios', 'dubbel', 'hoge met nof', '0.08', '2.47', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(223, 'Domein licht', 'Brouwerij Bios', 'overige', 'hoge met nof', '0.08', '4.95', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(224, 'Domus', 'Huisbrouwerij Domus', 'overige', 'lage', '0.04', '3.34', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(225, 'Dorée', 'Brasserie Lefèbvre', 'saison', 'hoge met nof', '0.06', '2.85', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(226, 'Dorp pils', 'Brouwerij van Roy', 'pilsener', 'lage', '0.05', '2.24', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(227, 'Double abbaye de flandres', 'Brouwerij Riva', 'dubbel', 'hoge', '0.06', '3.64', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(228, 'Double Enghien Spéciale', 'Brasserie de Silly', 'dubbel', 'hoge', '0.08', '3.49', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(229, 'Double spéciale bière d`abbaye Enghien', 'Brasserie de Silly', 'dubbel', 'hoge', '0.08', '4.50', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(230, 'Doublette d`Enghien', 'Brasserie de Silly', 'saison', 'hoge', '0.06', '4.06', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(231, 'Drie Fonteinen framboos', 'Gueuzestekerij Drie Fonteinen', 'framboise', 'spontane', '0.06', '4.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(232, 'Drie Fonteinen gueuze', 'Gueuzestekerij Drie Fonteinen', 'gueuze', 'spontane+nof', '0.06', '3.83', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(233, 'Drongens plezierke', 'Brouwerij Slagmuylder', 'dubbel', 'hoge met nof', '0.08', '2.72', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(234, 'Dubbel Domus honingbier', 'Huisbrouwerij Domus', 'overige', 'lage', '0.06', '3.14', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(235, 'Duivels bier', 'Brouwerij Vander Linden', 'overige', 'spontane+hoge', '0.06', '2.52', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(236, 'Duvel pils', 'Brouwerij Moortgat', 'pilsener', 'lage', '0.05', '4.17', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(237, 'E noed`n pannenoare', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '2.32', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(238, 'E.S.P. extra strong pils', 'Brouwerij van Roy', 'pilsener', 'lage', '0.05', '3.08', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(239, 'Echte kriek', 'Brouwerij Verhaeghe', 'kriekenbier', 'hoge', '0.06', '3.43', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(240, 'Eksaardse Blauwbuik', 'Brouwerij Bios', 'overige', 'hoge met nof', '0.08', '2.92', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(241, 'El Vert Doudou', 'Brasserie à Vapeur', 'overige', 'hoge met nof', '0.08', '2.30', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(242, 'Elckerlyc', 'Brouwerij Callewaert', 'pale ale', 'hoge', '0.06', '3.74', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(243, 'Engeltjesbier', 'Brouwerij `t Steedje', 'overige', 'hoge met nof', '0.10', '3.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(244, 'Eupener export', 'Eupener Bierbrauerei', 'pilsener', 'lage', '0.04', '2.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(245, 'Eupener kapuziner klosterbier', 'Eupener Bierbrauerei', 'overige', 'lage', '0.05', '3.59', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(246, 'Eupener pils', 'Eupener Bierbrauerei', 'pilsener', 'lage', '0.05', '4.54', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(247, 'Ever natuurbier', 'Brouwerij Neyt', 'pilsener', 'lage', '0.06', '3.95', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(248, 'Extra pilsener', 'Brouwerij Moortgat', 'pilsener', 'lage', '0.50', '4.11', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(249, 'Extra stout', 'Brouwerij Callewaert', 'stout', 'lage', '0.05', '3.70', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(250, 'Extra stout', 'Brasserie Lefèbvre', 'stout', 'hoge', '0.06', '4.17', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(251, 'Ezel', 'Brouwerij Verhaeghe', 'overige', 'hoge', '0.06', '4.74', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(252, 'Facon export', 'Brouwerij Facon', 'pilsener', 'lage', '0.04', '3.19', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(253, 'Facon extra stout', 'Brouwerij Facon', 'stout', 'hoge', '0.08', '2.73', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(254, 'Facon ouden bruin', 'Brouwerij Facon', 'Vlaamse bruine', 'hoge+melkzure', '0.05', '2.10', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(255, 'Facon pils', 'Brouwerij Facon', 'pilsener', 'lage', '0.05', '3.31', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(256, 'Facon scotch-christmas', 'Brouwerij Facon', 'scotch ale', 'hoge', '0.08', '2.25', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(257, 'Fakir', 'Brasserie la Binchoise', 'overige', 'hoge met nof', '0.06', '2.31', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(258, 'Fana Blonde', 'Brasserie du Bocq', 'tripel', 'hoge met nof', '0.08', '2.79', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(259, 'Fana brune', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '2.02', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(260, 'Fancy', 'Bavik - De Brabandere', 'stout', 'lage', '0.05', '2.73', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(261, 'Fantôme', 'Brasserie Fantôme', 'overige', 'hoge met nof', '0.08', '2.62', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(262, 'Faro extra', 'Brouwerij van Roy', 'faro', 'spontane', '0.05', '2.87', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(263, 'Faro Lambic Lindemans', 'Brouwerij Lindemans', 'faro', 'spontane', '0.04', '4.51', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(264, 'Faro Pertotale', 'Brouwerij Frank Boon N.V.', 'faro', 'spontane+hoge', '0.06', '2.94', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(265, 'Faro Vieux Foudre', 'Brouwerij Vander Linden', 'faro', 'spontane', '0.06', '2.18', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(266, 'Fausse Qau', 'Brasserie du Bocq', 'overige', 'hoge met nof', '0.07', '3.06', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(267, 'Felix kriek oud bruin', 'Brouwerij Clarysse', 'kriekenbier', 'hoge', '0.06', '3.78', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(268, 'Felix kriekbier', 'Brouwerij Clarysse', 'kriekenbier', 'hoge', '0.06', '4.72', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(269, 'Felix Oudenaards kriekbier', 'Brouwerij Clarysse', 'kriekenbier', 'hoge', '0.06', '4.25', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(270, 'Felix Oudenaards oud bruin', 'Brouwerij Clarysse', 'Vlaamse bruine', 'hoge', '0.06', '2.10', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(271, 'Felix speciaal Oudenaards', 'Brouwerij Clarysse', 'Vlaamse bruine', 'hoge', '0.05', '4.74', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(272, 'Flandrien', 'Brouwerij Louwaege', 'Belgische ale', 'hoge', '0.05', '3.39', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(273, 'Floreffe blond 7', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.07', '3.74', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(274, 'Floreffe double', 'Brasserie Lefèbvre', 'dubbel', 'hoge met nof', '0.07', '3.52', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(275, 'Floreffe la Meilleure', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.09', '4.37', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(276, 'Floreffe triple', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.00', '3.32', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(277, 'Fortuyn', 'Brasserie de Silly', 'saison', 'hoge', '0.06', '4.47', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(278, 'Foudroyante pêche', 'Brouwerij Lindemans', 'perzikbier', 'spontane', '0.04', '4.40', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(279, 'Framboise Boon', 'Brouwerij Frank Boon N.V.', 'framboise', 'spontane nof', '0.06', '3.59', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(280, 'Frambozenbier', 'Brouwerij Vander Linden', 'framboise', 'hoge met nof', '0.07', '2.74', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(281, 'Freutche', 'Brasserie Lefèbvre', 'saison', 'hoge', '0.05', '3.95', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(282, 'Frissing christmas', 'Brouwerij van Roy', 'bokbier', 'hoge', '0.07', '3.54', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(283, 'Frissing pils', 'Brouwerij van Roy', 'pilsener', 'lage', '0.05', '3.81', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(284, 'Gala pils', 'Brouwerij Haacht', 'pilsener', 'lage', '0.05', '3.47', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(285, 'Gapersbier', 'Brouwerij Verhaeghe', 'overige', 'hoge', '0.06', '3.90', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(286, 'Géant Altas 8', 'Brasserie Allard et Groetembril', 'overige', 'hoge+melkzure', '0.10', '4.09', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(287, 'Géant Atlas 9', 'Brasserie Allard et Groetembril', 'gerstewijn', 'hoge met nof', '0.10', '3.75', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(288, 'Gildenbier', 'Brouwerij Haacht', 'overige', 'hoge', '0.07', '4.49', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(289, 'Ginder ale', 'Martinas (groep Interbrew)', 'Belgische ale', 'hoge', '0.05', '3.18', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(290, 'Girardin gueuze 1882', 'Brouwerij Girardin', 'gueuze', 'spontane', '0.05', '3.46', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(291, 'Girardin kriek 1882', 'Brouwerij Girardin', 'kriekenbier', 'spontane', '0.05', '2.75', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(292, 'Gluck pils', 'Brouwerij van Roy', 'pilsener', 'lage', '0.05', '4.36', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(293, 'Godefroy', 'Brouwerij Moortgat', 'overige', 'hoge met nof', '0.06', '2.55', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(294, 'Gold pils', 'Brouwerij van Roy', 'pilsener', 'lage', '0.05', '3.68', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(295, 'Golden Girl pils', 'Brouwerij Isebaert', 'pilsener', 'lage', '0.05', '2.74', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(296, 'Golden hop pils', 'Bavik - De Brabandere', '?', '?', '0.00', '3.68', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(297, 'Golden Kenia', 'Brouwerij L. Huyghe N.V.', 'pilsener', 'lage', '0.05', '2.18', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(298, 'Golding Campina', 'Brouwerij Campina', 'pilsener', 'lage', '0.05', '3.86', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(299, 'Gouden Carolus', 'Brouwerij Het Anker', 'overige', 'hoge met nof', '0.07', '4.76', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(300, 'Grimbergen dubbel', 'Union (groep Alken-Maes)', 'dubbel', 'hoge', '0.06', '4.20', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(301, 'Grimbergen optimo bruno', 'Union (groep Alken-Maes)', 'gerstewijn', 'hoge', '0.10', '4.72', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(302, 'Grimbergen tripel', 'Union (groep Alken-Maes)', 'tripel', 'hoge', '0.08', '3.00', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(303, 'Grisette bière du cayoteu', 'Brasserie de Silly', 'Belgische ale', 'hoge', '0.05', '4.84', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(304, 'Gueuze F.Boon', 'Brouwerij Frank Boon N.V.', 'gueuze', 'spontane nof', '0.06', '4.21', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(305, 'Gueuze F.Boon \"Mariage parfait\"', 'Brouwerij Frank Boon N.V.', 'gueuze', 'spontane nof', '0.06', '4.50', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(306, 'Gueuze framboisée des Ardennes', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'framboise', 'spontane', '0.04', '4.91', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(307, 'Gueuze lambic Eylenbosch', 'Brouwerij Eyelenbosch (groep Alken-Maes)', 'gueuze', 'spontane', '0.05', '3.03', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(308, 'Gueuze Oud Beersel', 'Vandervelden', 'gueuze', 'spontane', '0.06', '4.42', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(309, 'Gueuze Vieux Foudre', 'Brouwerij Vander Linden', 'gueuze', 'spontane nof', '0.06', '2.03', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(310, 'Gulden Draak', 'Brouwerij Bios', 'gerstewijn', 'hoge met nof', '0.11', '3.87', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(311, 'Haacht export', 'Brouwerij Haacht', 'pilsener', 'lage', '0.05', '2.25', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(312, 'Haecht tarwebier', 'Brouwerij Haacht', 'witbier', 'hoge met nof', '0.05', '3.64', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(313, 'Hanssens gueuze', 'Gueuzestekerij Hanssens', 'gueuze', 'spontane', '0.06', '3.47', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(314, 'Hanssens kriek', 'Gueuzestekerij Hanssens', 'kriekenbier', 'spontane', '0.06', '4.43', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(315, 'Hapkin', 'Brouwerij Louwaege', 'overige', 'hoge met nof', '0.08', '3.73', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(316, 'Hellestraatse bruine', 'Brouwerij de Smedt', 'Belgische ale', 'hoge', '0.05', '3.38', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(317, 'Herbakkersbier', 'Brouwerij de Block', 'overige', 'hoge', '0.06', '3.70', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(318, 'Hercule Poirot', 'Brasserie Allard et Groetembril', 'gerstewijn', 'hoge met nof', '0.10', '3.36', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(319, 'Hert ale', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'Belgische ale', 'hoge', '0.05', '3.72', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(320, 'Hertog Jan Pilsener', 'Artois (groep Interbrew)', 'pilsener', 'lage', '0.05', '3.49', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(321, 'Het Kapittel abt', 'Brouwerij van Eecke', 'overige', 'hoge met nof', '0.10', '4.28', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(322, 'Het Kapittel dubbel', 'Brouwerij van Eecke', 'dubbel', 'hoge met nof', '0.08', '2.95', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(323, 'Het Kapittel pater', 'Brouwerij van Eecke', 'dubbel', 'hoge met nof', '0.06', '2.92', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(324, 'Het Kapittel prior', 'Brouwerij van Eecke', 'overige', 'hoge met nof', '0.09', '3.72', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(325, 'Hoegaarden grand cru', 'Brouwerij De Kluis (groep Interbrew)', 'tripel', 'hoge met nof', '0.09', '4.87', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(326, 'Holtland lager bier', 'Brouwerij Haacht', 'pilsener', 'lage', '0.05', '2.18', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(327, 'Horse ale', 'Lamot (groep Interbrew)', 'Belgische ale', 'hoge', '0.05', '3.27', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(328, 'Hotteuse grand cru', 'Brouwerij Roman', 'tripel', 'hoge met nof', '0.07', '4.84', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(329, 'Houten kop', 'Brouwerij Strubbe', 'overige', 'hoge met nof', '0.06', '3.39', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(330, 'Huyghe export', 'Brouwerij L. Huyghe N.V.', 'pilsener', 'lage', '0.04', '3.41', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(331, 'Ichtegems oud bruin', 'Brouwerij Strubbe', 'Vlaamse bruine', 'hoge+melkzure', '0.05', '4.88', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(332, 'Iguanodon', 'Brasserie la Binchoise', 'overige', 'hoge met nof', '0.06', '3.17', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(333, 'Interpils', 'Brouwerij Riva', 'pilsener', 'lage', '0.05', '2.21', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(334, 'Jack-Op', 'Brabrux (Groep Belle-Vue)', 'overige', 'hoge+spontane', '0.05', '2.54', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(335, 'Jacobins frambozen', 'Brouwerij Bockor', 'framboise', 'hoge+melkzure', '0.06', '4.09', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(336, 'Jacobins gueuze lambic', 'Brouwerij Bockor', 'gueuze', 'hoge+melkzure', '0.06', '4.83', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(337, 'Jacobins kriek lambic', 'Brouwerij Bockor', 'kriekenbier', 'hoge+melkzure', '0.06', '3.87', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(338, 'Jan Buuc', 'Brouwerij Leroy', 'overige', 'hoge', '0.07', '2.85', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(339, 'Jean de Nivilles', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '3.64', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(340, 'Jeunesse de St-Remy', 'Brouwerij Bios', 'tripel', 'hoge met nof', '0.09', '4.67', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(341, 'Jobarde', 'Brasserie à Vapeur', 'overige', 'hoge met nof', '0.08', '4.43', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(342, 'Jot-pils', 'Brouwerij Riva', 'pilsener', 'lage', '0.05', '3.14', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(343, 'Judas', 'Brouwerij van Zulte', 'overige', 'hoge met nof', '0.08', '3.42', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(344, 'Julius', 'Brouwerij De Kluis (groep Interbrew)', 'overige', 'hoge met nof', '0.87', '2.67', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(345, 'Jupiler', 'Kruger (groep Interbrew)', 'pilsener', 'lage', '0.05', '4.09', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(346, 'Kanterbräu', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', '0.05', '4.42', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(347, 'Kapucienestraetebier', 'Brouwerij Verhaeghe', 'overige', 'hoge', '0.05', '4.85', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(348, 'Karlsquell', 'Brouwerij Martens', 'pilsener', 'lage', '0.05', '3.00', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(349, 'Kastaar', 'Brouwerij de Block', 'overige', 'hoge', '0.06', '4.43', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(350, 'Kerelsbier donker', 'Brouwerij Leroy', 'overige', 'hoge', '0.07', '2.15', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(351, 'Kerelsbier licht', 'Brouwerij Leroy', 'superpils', 'lage', '0.06', '4.47', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(352, 'Kerstbier', 'Brouwerij van den Bossche', 'overige', 'hoge', '0.05', '4.88', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(353, 'Kluyserbier', 'Brouwerij Sterkens', 'ale', 'hoge', '0.06', '3.01', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(354, 'Kob pilsener', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'pilsener', 'lage', '0.05', '4.41', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(355, 'kriek', 'Brouwerij van Roy', 'kriekenbier', 'spontane', '0.05', '2.01', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(356, 'Kriek F.Boon', 'Brouwerij Frank Boon N.V.', 'kriekenbier', 'spontane nof', '0.06', '3.82', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00');
INSERT INTO `beers` (`id`, `name`, `brewer`, `type`, `yeast`, `perc`, `purchase_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(357, 'Kriek F.Boon \"mariage parfait\"', 'Brouwerij Frank Boon N.V.', 'kriekenbier', 'spontane nof', '0.06', '2.09', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(358, 'Kriek lambic Eylenbosch', 'Brouwerij Eyelenbosch (groep Alken-Maes)', 'kriekenbier', 'spontane', '0.05', '2.97', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(359, 'Kriek Oud Beersel', 'Brouwerij Museum Oud Beersel', 'kriekenbier', 'spontane', '0.07', '3.60', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(360, 'Kriek Vieux Foudre', 'Brouwerij Vander Linden', 'kriekenbier', 'spontane nof', '0.06', '4.08', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(361, 'Kriek-lambic Drie Fonteinen', 'Gueuzestekerij Drie Fonteinen', 'kriekenbier', 'spontane', '0.06', '4.58', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(362, 'Kriekenbier', 'Brouwerij St. Jozef', 'kriekenbier', 'lage', '0.05', '2.68', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(363, 'Kronenbourg', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', '0.05', '3.64', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(364, 'Krüger export beer', 'Kruger (groep Interbrew)', 'pilsener', 'lage', '0.05', '2.17', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(365, 'Krüger pils', 'Kruger (groep Interbrew)', 'pilsener', 'lage', '0.05', '3.91', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(366, 'L`Anvinoise', 'Brasserie à Vapeur', 'overige', 'hoge met nof', '0.08', '2.05', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(367, 'L`Arsouye blonde', 'Brasserie du Bocq', 'overige', 'hoge met nof', '0.07', '2.53', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(368, 'L`Arsouye brune', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '4.48', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(369, 'L`Eblouissante', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', '0.08', '3.84', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(370, 'L`Eveil Wallon', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '3.73', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(371, 'L`Gayette', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '2.15', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(372, 'L`Vapeur en folie', 'Brasserie à Vapeur', 'overige', 'hoge met nof', '0.08', '3.55', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(373, 'L`Vapeur rousse', 'Brasserie à Vapeur', 'overige', 'hoge met nof', '0.08', '3.32', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(374, 'La Bergeotte', 'Brasserie du Bocq', 'saison', 'hoge met nof', '0.06', '3.94', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(375, 'La Bergeotte', 'Brasserie du Bocq', 'saison', 'hoge met nof', '0.06', '4.73', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(376, 'La bière du Grand monarque', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '3.83', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(377, 'La Boum 6', 'Brasserie Allard et Groetembril', 'saison', 'hoge met nof', '0.07', '2.96', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(378, 'La Boum 8', 'Brasserie Allard et Groetembril', 'overige', 'hoge+melkzure', '0.10', '4.30', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(379, 'La Boussutoise - Biére des fagnes', 'Brasserie du Bocq', '?', '?', '0.00', '4.62', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(380, 'La Buxus', 'Brasserie la Binchoise', 'overige', 'hoge met nof', '0.08', '2.19', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(381, 'La Cervoise de St. Gery', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '4.12', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(382, 'La Cervoise des Fracs-Gaulois', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '3.01', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(383, 'La Communiale', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', '0.08', '3.70', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(384, 'La Condrusienne', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.07', '4.45', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(385, 'La Crupettoise', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '3.14', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(386, 'La Cuvée des Purleux', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '3.39', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(387, 'La Diva', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.00', '2.50', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(388, 'La Druide', 'Brasserie Allard et Groetembril', 'gerstewijn', 'hoge met nof', '0.10', '3.32', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(389, 'La Druide 10', 'Brasserie Allard et Groetembril', 'gerstewijn', 'hoge met nof', '0.10', '4.11', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(390, 'La Durboyse', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.07', '2.61', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(391, 'La Fleurie de Wanze', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', '0.08', '4.69', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(392, 'La Gauloise 8°', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.09', '4.63', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(393, 'La Gaumaise', 'Brasserie Maire', 'overige', 'hoge', '0.05', '4.09', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(394, 'La Gaumaise brune', 'Brasserie Maire', 'overige', 'hoge', '0.05', '4.55', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(395, 'La Geldonia', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '2.47', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(396, 'La Glorieuse', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', '0.08', '2.72', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(397, 'La Hamaide', 'Brasserie Voisin', 'saison', 'hoge', '0.06', '4.19', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(398, 'La Houlette', 'Brasserie du Bocq', 'saison', 'hoge met nof', '0.06', '4.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(399, 'La Joyeuse (blonde)', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '3.42', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(400, 'La Joyeuse (brune)', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '3.70', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(401, 'La Laekenoise', 'Brasserie du Bocq', 'overige', 'hoge met nof', '0.07', '3.22', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(402, 'La Liègeoise blonde', 'Brouwerij Riva', 'overige', 'hoge', '0.08', '3.01', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(403, 'La Liègeoise brune', 'Brouwerij Riva', 'dubbel', 'hoge met nof', '0.08', '3.38', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(404, 'La Louvoise', 'Brasserie du Bocq', 'overige', 'hoge met nof', '0.07', '2.87', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(405, 'La Malmédy blonde', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', '0.08', '2.23', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(406, 'La Malmédy brune', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', '0.08', '3.55', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(407, 'La Marquise blonde', 'Brouwerij Riva', 'overige', 'hoge', '0.08', '3.03', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(408, 'La Marquise brune', 'Brouwerij Riva', 'tripel', 'hoge', '0.08', '2.52', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(409, 'La Moinette des Sorcières de Warquignies', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '4.51', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(410, 'La Moneuse', 'Brasserie de Blaugies', 'overige', 'hoge met nof', '0.00', '4.00', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(411, 'La Moneuse Spéciale Noël', 'Brasserie de Blaugies', 'overige', 'hoge met nof', '0.00', '4.47', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(412, 'La Montagnarde', 'Brasserie de l`Abbaye des Rocs (Brasseri', 'overige', 'hoge met nof', '0.08', '2.34', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(413, 'La Naiade - Cuvée du Carnaval Tournai', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.00', '2.28', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(414, 'La Neuvilloise', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', '0.08', '2.37', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(415, 'La Petite follie', 'Brasserie de Silly', 'overige', 'hoge met nof', '0.06', '3.04', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(416, 'La Poiluchette blonde', 'Brouwerij L. Huyghe N.V.', 'overige', 'hoge met nof', '0.08', '3.06', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(417, 'La Poiluchette blonde', 'Brouwerij L. Huyghe N.V.', 'overige', 'hoge met nof', '0.08', '4.18', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(418, 'La Poiluchette brune', 'Brouwerij L. Huyghe N.V.', 'overige', 'hoge met nof', '0.08', '3.74', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(419, 'La Poiluchette brune', 'Brouwerij L. Huyghe N.V.', 'dubbel', 'hoge met nof', '0.08', '4.13', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(420, 'La Seigneurie', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.07', '4.45', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(421, 'La Vieille bon secours', 'Brouwerij Riva', 'tripel', 'hoge', '0.08', '4.86', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(422, 'La Vieille Salme', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', '0.08', '2.94', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(423, 'La Vieillotte du Hurlevent', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '4.13', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(424, 'Lamoral Degmont', 'Brouwerij van den Bossche', 'tripel', 'hoge met nof', '0.08', '3.83', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(425, 'Lamot export', 'Lamot (groep Interbrew)', 'pilsener', 'lage', '0.05', '4.75', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(426, 'Lamot pilsor', 'Lamot (groep Interbrew)', 'pilsener', 'lage', '0.05', '4.24', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(427, 'Le Cougnet', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', '0.08', '4.99', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(428, 'Le Roy christmas', 'Brouwerij Leroy', 'overige', 'hoge', '0.08', '4.20', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(429, 'Le Vaudrée', 'Brouwerij Bios', 'gerstewijn', 'hoge met nof', '0.11', '4.02', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(430, 'Leffe bière russe', 'St. Guibert (groep Interbrew)', 'overige', 'hoge', '0.00', '2.51', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(431, 'Leffe blonde', 'St. Guibert (groep Interbrew)', 'overige', 'hoge', '0.07', '4.50', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(432, 'Leffe brune', 'St. Guibert (groep Interbrew)', 'dubbel', 'hoge', '0.06', '3.95', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(433, 'Leffe radieuse', 'St. Guibert (groep Interbrew)', 'overige', 'hoge', '0.08', '4.26', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(434, 'Leffe triple', 'Brasserie du Bocq', 'tripel', 'hoge met nof', '0.08', '4.46', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(435, 'Leffe vieille cuvée 8', 'St. Guibert (groep Interbrew)', 'overige', 'hoge', '0.08', '4.50', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(436, 'Lekkerbek', 'Brouwerij Riva', 'pilsener', 'lage', '0.05', '4.13', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(437, 'Li Pir`êye di Licint 6.5', 'Brasserie la Binchoise', 'overige', 'hoge met nof', '0.06', '2.17', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(438, 'Lichtaartse Kwezel', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.07', '2.43', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(439, 'Liefmans', 'Brouwerij Liefmans (groep Riva)', 'Vlaamse bruine', 'hoge', '0.05', '3.64', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(440, 'Liefmans frambozenbier', 'Brouwerij Liefmans (groep Riva)', 'framboise', '?', '0.00', '2.92', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(441, 'Liefmans Goudenband', 'Brouwerij Liefmans (groep Riva)', 'Vlaamse bruine', '?', '0.00', '4.68', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(442, 'Liefmans kriekbier', 'Brouwerij Liefmans (groep Riva)', 'kriekenbier', 'hoge', '0.07', '3.64', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(443, 'Liezelse witte', 'Brouwerij Vieille Villers', 'witbier', 'lage', '0.05', '2.17', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(444, 'Lilliput - elisir degli gnomi', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', '0.08', '3.93', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(445, 'Lindemans cassis', 'Brouwerij Lindemans', 'cassisbier', 'spontane', '0.04', '2.15', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(446, 'Lindemans framboise', 'Brouwerij Lindemans', 'framboise', 'spontane', '0.04', '2.94', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(447, 'Lindemans gueuze gefilterd', 'Brouwerij Lindemans', 'gueuze', 'spontane', '0.05', '3.26', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(448, 'Lindemans gueuze ongefilterd', 'Brouwerij Lindemans', 'gueuze', 'spontane nof', '0.06', '2.49', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(449, 'Lindemans kriek', 'Brouwerij Lindemans', 'kriekenbier', 'spontane', '0.04', '3.68', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(450, 'Livinus blonde', 'Brouwerij van Eecke', 'overige', 'hoge met nof', '0.10', '2.92', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(451, 'Livinus brune', 'Brouwerij van Eecke', 'overige', 'hoge met nof', '0.09', '4.57', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(452, 'Loburg', 'Artois (groep Interbrew)', 'superpils', 'lage', '0.06', '3.10', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(453, 'Loteling (donker)', 'Brouwerij Vieille Villers', 'dubbel', 'hoge', '0.06', '2.79', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(454, 'Loteling licht', 'Brouwerij Vieille Villers', 'overige', 'hoge', '0.07', '2.63', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(455, 'Louwaege export', 'Brouwerij Louwaege', 'pilsener', 'lage', '0.04', '2.77', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(456, 'Louwaege stout', 'Brouwerij Louwaege', 'stout', 'lage', '0.04', '3.98', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(457, 'Louwaege`s pils', 'Brouwerij Louwaege', 'pilsener', 'lage', '0.05', '3.57', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(458, 'Lowie Kators', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', '0.08', '3.93', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(459, 'Lucifer', 'Brouwerij Riva', 'overige', 'hoge', '0.08', '3.91', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(460, 'Maartsen Tonneke', 'Brouwerij Contreras', 'ale', 'hoge met nof', '0.05', '2.79', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(461, 'Madie', 'Brouwerij van Roy', 'pilsener', 'lage', '0.05', '3.21', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(462, 'Maes dubbel special', 'Alken-Maes (zetel Waarloos)', '?', '?', '0.00', '2.69', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(463, 'Maes pils', 'Alken-Maes (zetel Waarloos)', 'pilsener', 'lage', '0.05', '4.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(464, 'Majutte', 'Brouwerij Strubbe', 'ale', 'hoge', '0.06', '4.95', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(465, 'Manneke pils', 'Bouwer Crombé', '?', 'hoge', '0.06', '2.34', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(466, 'Maredsous 6 (vat)', 'Brouwerij Moortgat', 'dubbel', 'hoge met nof', '0.06', '3.84', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(467, 'Maredsous 6° (fles)', 'Brouwerij Moortgat', 'dubbel', 'hoge met nof', '0.06', '4.20', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(468, 'Maredsous 8 (vat)', 'Brouwerij Moortgat', '?', '?', '0.00', '4.49', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(469, 'Maredsous 8° (fles)', 'Brouwerij Moortgat', 'dubbel', 'hoge', '0.08', '4.83', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(470, 'Maredsous 9°', 'Brouwerij Moortgat', 'overige', 'hoge met nof', '0.09', '2.66', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(471, 'Martens pils', 'Brouwerij Martens', 'pilsener', 'lage', '0.05', '2.85', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(472, 'Masterbräu', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', '0.05', '4.24', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(473, 'Mc Ewans christmas', 'Lamot (groep Interbrew)', 'overige', 'hoge', '0.08', '4.67', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(474, 'Mc Ewans scotch ale', 'Lamot (groep Interbrew)', 'scotch ale', 'hoge', '0.07', '2.64', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(475, 'Mechelse bruynen', 'Brouwerij Het Anker', 'overige', 'hoge met nof', '0.07', '3.17', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(476, 'Meister extra lager', 'Brouwerij van Roy', '?', '?', '0.00', '2.96', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(477, 'Minty', 'Brouwerij L. Huyghe N.V.', 'overige', 'lage', '0.05', '3.25', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(478, 'Moeder Overste', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.08', '2.40', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(479, 'Moinette (blonde)', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '3.25', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(480, 'Moinette (brune)', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '4.05', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(481, 'Moinette Athoise', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '2.48', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(482, 'Monseigneur', 'Brouwerij Bios', 'dubbel', 'hoge met nof', '0.08', '4.26', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(483, 'Monseigneur grand cru', 'Brouwerij Bios', 'overige', 'hoge met nof', '0.08', '2.85', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(484, 'Moortgat extra pilsener (fles)', 'Brouwerij Moortgat', 'pilsener', 'lage', '0.05', '2.50', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(485, 'Moortgat extra pilsener (vat)', 'Brouwerij Moortgat', 'pilsener', 'lage', '0.05', '4.91', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(486, 'Moriau gueuze', 'Gueuzestekerij Moriau', 'gueuze', 'spontane', '0.06', '3.09', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(487, 'Moriau kriek', 'Gueuzestekerij Moriau', 'kriekenbier', 'spontane', '0.06', '4.69', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(488, 'Mort Subite cassis', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'cassisbier', 'spontane', '0.04', '3.20', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(489, 'Mort Subite framboise', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'framboise', 'spontane', '0.04', '2.92', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(490, 'Mort Subite gueuze gefilterd', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'gueuze', 'spontane', '0.05', '2.98', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(491, 'Mort Subite gueuze ongefilterd', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'gueuze', 'spontane nof', '0.06', '4.17', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(492, 'Mort Subite kriek', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'kriekenbier', 'spontane', '0.04', '3.92', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(493, 'Munck pils', 'Brouwerij Haacht', 'pilsener', 'lage', '0.05', '2.07', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(494, 'Myn`s pils', 'Brasserie de Silly', 'pilsener', 'lage', '0.05', '2.60', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(495, 'Napoléon', 'Brouwerij de Smedt', 'overige', 'hoge', '0.07', '4.78', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(496, 'Ne Flierefluiter', 'Brouwerij de Smedt', 'overige', 'hoge met nof', '0.06', '2.09', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(497, 'Neyt export', 'Brouwerij Neyt', 'pilsener', 'lage', '0.05', '3.11', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(498, 'Neyt pils', 'Brouwerij Neyt', 'pilsener', 'lage', '0.05', '4.31', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(499, 'Noël-christmas-Weihnacht', 'Brouwerij Verhaeghe', 'tripel', 'hoge', '0.08', '4.19', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(500, 'NouNou', 'Brouwerij Bios', 'Belgische ale', 'hoge', '0.05', '3.01', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(501, 'Odnar', 'Brouwerij Liefmans (groep Riva)', 'Vlaamse bruine', 'hoge', '0.05', '3.51', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(502, 'Oelens boerke', 'Brouwerij Leroy', 'superpils', 'lage', '0.06', '3.50', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(503, 'Oeral', 'De Dolle Brouwers', 'overige', 'hoge met nof', '0.06', '4.99', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(504, 'Old Musketeer', 'Brouwerij Leroy', 'overige', 'hoge', '0.08', '3.46', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(505, 'Op-ale', 'Brouwerij de Smedt', 'Belgische ale', 'hoge', '0.05', '3.31', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(506, 'Ops-ale', 'St. Jozef', 'pilsener', 'lage', '0.06', '4.19', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(507, 'Oud Hoegaarden', 'Brouwerij De Kluis (groep Interbrew)', 'witbier', '?', '0.00', '3.02', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(508, 'Oud Kriekenbier', 'Brouwerij Crombé', 'kriekenbier', 'hoge', '0.06', '3.52', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(509, 'Oud Zottegems bier', 'Brouwerij Crombé', 'overige', 'hoge', '0.06', '3.54', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(510, 'Oudenaards wit tarwebier', 'Brouwerij Clarysse', 'weizenbier', 'hoge met nof', '0.05', '2.15', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(511, 'Palingbier', 'Brouwerij van Roy', 'tripel', 'hoge', '0.08', '4.13', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(512, 'Pandoer', 'Brouwerij Verhaeghe', 'Vlaamse bruine', 'hoge', '0.06', '3.19', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(513, 'Parel pils', 'Brouwerij van Roy', 'pilsener', 'lage', '0.05', '4.55', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(514, 'Pater Lieven', 'Brouwerij van den Bossche', 'Belgische ale', 'hoge', '0.05', '2.19', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(515, 'Paulus', 'Brouwerij Leroy', 'Vlaamse bruine', 'hoge', '0.07', '4.30', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(516, 'Pauwel Kwak', 'Brouwerij Bosteels', 'gerstewijn', 'hoge', '0.08', '3.91', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(517, 'Pax pils', 'St. Jozef', 'pilsener', 'lage', '0.05', '4.67', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(518, 'Pecheresse', 'Brouwerij Lindemans', 'perzikbier', 'spontane', '0.04', '3.60', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(519, 'Peeterman', 'Brouwerij De Kluis (groep Interbrew)', 'witbier', 'hoge', '0.04', '2.02', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(520, 'Perle d`Hastière', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.00', '3.27', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(521, 'Peter Benoit', 'Brouwerij Leroy', 'overige', 'hoge', '0.07', '2.31', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(522, 'Petrus', 'Bavik - De Brabandere', 'Vlaamse bruine', 'hoge', '0.06', '2.73', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(523, 'Pick-up pils', 'Brouwerij Walrave', 'pilsener', 'lage', '0.05', '4.73', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(524, 'Pils', 'Brouwerij Callewaert', 'pilsener', 'lage', '0.05', '4.47', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(525, 'Pils', 'Brouwerij Riva', 'pilsener', 'lage', '0.05', '3.14', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(526, 'Pils artisanale', 'Brouwerij Lefebvre', 'pilsener', 'lage', '0.05', '3.28', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(527, 'Pint`Cousse', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '4.98', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(528, 'Piraat', 'Brouwerij Bios', 'gerstewijn', 'hoge met nof', '0.11', '4.05', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(529, 'Poje', 'Brasserie à Vapeur', 'overige', 'hoge met nof', '0.08', '3.34', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(530, 'Polderbier', 'Brouwerij `t Steedje', 'overige', 'hoge met nof', '0.09', '2.54', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(531, 'Pony stout', 'Bavik - De Brabandere', 'stout', 'lage', '0.05', '3.66', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(532, 'Poorter', 'Brouwerij Sterkens', 'ale', 'hoge', '0.06', '2.69', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(533, 'Poperings Hommelbier', 'Brouwerij van Eecke', 'overige', 'hoge met nof', '0.08', '3.46', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(534, 'Postel Abdijbier', 'Brouwerij de Smedt', 'dubbel', 'hoge met nof', '0.06', '4.24', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(535, 'Prik pils', 'Brouwerij Roman', 'pilsener', 'lage', '0.05', '2.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(536, 'Primus Haacht pils', 'Brouwerij Haacht', 'pilsener', 'lage', '0.05', '2.29', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(537, 'Prisma pils', 'Brouwerij Haacht', 'pilsener', 'lage', '0.05', '4.03', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(538, 'Privat', 'Brouwerij Riva', 'pilsener', 'lage', '0.05', '2.30', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(539, 'Profi pils', 'Brouwerij van Roy', 'pilsener', 'lage', '0.05', '3.40', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(540, 'Prosit pils', 'Brouwerij Bosteels', 'pilsener', 'lage', '0.05', '2.12', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(541, 'Pruver', 'Brouwerij R. Gielen', 'overige', 'hoge met nof', '0.05', '4.37', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(542, 'Punch beer (blond)', 'Brouwerij Facon', 'overige', 'hoge', '0.08', '4.51', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(543, 'Rafexport', 'Brouwerij Contreras', 'pilsener', 'lage', '0.05', '4.43', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(544, 'Redor pils', 'Brasserie Dupont', 'pilsener', 'lage', '0.06', '3.63', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(545, 'Reets brooikensbier', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.07', '2.87', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(546, 'Reinbräu', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', '0.05', '4.46', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(547, 'Reuzen oud bier', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '2.70', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(548, 'Régal Christmas', 'Brasserie du Bocq', 'scotch ale', 'hoge met nof', '0.09', '4.09', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(549, 'Réserve Marie de Hongrie', 'Brasserie la Binchoise', 'overige', 'hoge met nof', '0.08', '4.38', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(550, 'Rétro oude methode', 'Brouwerij L. Huyghe N.V.', 'ale', 'hoge', '0.07', '4.61', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(551, 'Rétro pils oude methode', 'Brouwerij L. Huyghe N.V.', 'pilsener', 'lage', '0.05', '4.91', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(552, 'Rijsels tripel', 'Brouwerij Bios', 'tripel', 'hoge met nof', '0.09', '2.71', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(553, 'Riva 2000', 'Brouwerij Riva', 'superpils', 'lage', '0.06', '2.84', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(554, 'Riva christmas', 'Brouwerij Riva', 'dubbel', 'hoge', '0.08', '4.06', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(555, 'Riva pils', 'Brouwerij Riva', 'pilsener', 'lage', '0.05', '3.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(556, 'Rochefort 6', 'Abbaye Notre Dame De St.Rémy', 'trappist/dubbel', 'hoge met nof', '0.08', '4.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(557, 'Rochefort 8', 'Abbaye Notre Dame De St.Rémy', 'trappist/gerstewijn', 'hoge met nof', '0.09', '4.60', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(558, 'Rochefort 10', 'Abbaye Notre Dame De St.Rémy', 'trappist/gerstewijn', 'hoge met nof', '0.11', '3.60', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(559, 'Rochus', 'Brouwerij de Ryck', 'overige', 'hoge', '0.06', '2.22', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(560, 'Rodal', 'De Neve (groep Belle-Vue)', 'overige', 'hoge+spontane', '0.05', '4.30', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(561, 'Rodenbach grand cru', 'Bierbrouwerij Rodenbach', 'Vlaamse bruine', 'hoge+melkzure', '0.07', '3.84', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(562, 'Roman export', 'Brouwerij Roman', 'pilsener', 'lage', '0.05', '4.28', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(563, 'Roman Oudenaards', 'Brouwerij Roman', 'Vlaamse bruine', 'hoge', '0.05', '4.87', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(564, 'Romy luxe', 'Brouwerij Roman', 'pilsener', 'lage', '0.06', '3.54', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(565, 'Romy pils', 'Brouwerij Roman', 'pilsener', 'lage', '0.05', '4.08', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(566, 'Rosé de Cambrinus', 'Brouwerij Cantillon', 'framboise', 'spontane', '0.05', '4.76', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(567, 'Royal pils', 'Brouwerij Riva', 'pilsener', 'lage', '0.05', '3.59', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(568, 'RUCA pils', 'Brouwerij Isebaert', 'pilsener', 'lage', '0.05', '4.66', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(569, 'Safir pils', 'Artois (groep Interbrew)', 'pilsener', 'lage', '0.05', '4.53', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(570, 'Saison 1900', 'Brasserie Lefèbvre', 'saison', 'hoge', '0.05', '3.68', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(571, 'Saison de Pipaux', 'Brasserie à Vapeur', 'saison', 'hoge met nof', '0.06', '2.81', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(572, 'Saison de Silly', 'Brasserie de Silly', 'saison', 'hoge', '0.05', '4.01', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(573, 'Saison Dupont', 'Brasserie Dupont', 'saison', 'hoge met nof', '0.06', '3.60', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(574, 'Saison Regal', 'Brasserie du Bocq', 'saison', 'hoge met nof', '0.06', '3.96', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(575, 'Salvator abdijbier', 'Brouwerij van Roy', 'bokbier', 'hoge', '0.07', '4.04', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(576, 'Samwell pils', 'Brouwerij van Roy', 'pilsener', 'lage', '0.05', '3.28', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(577, 'Sanctus', 'Brouwerij Moortgat', 'dubbel', 'hoge met nof', '0.06', '2.31', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(578, 'Sandersput pils', 'Brouwerij van Roy', 'pilsener', 'lage', '0.05', '2.70', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(579, 'Sas export', 'Brouwerij Leroy', 'pilsener', 'lage', '0.05', '4.58', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(580, 'Sas pils', 'Brouwerij Leroy', 'pilsener', 'lage', '0.05', '3.77', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(581, 'Sasbraü', 'Brouwerij Leroy', 'superpils', 'lage', '0.06', '3.15', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(582, 'Satyre', 'Brouwerij de Block', 'dubbel', 'hoge', '0.08', '2.41', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(583, 'Schavuit', 'Brouwerij Callewaert', 'Vlaamse bruine', 'hoge', '0.08', '3.60', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(584, 'Scotch', 'Brasserie de Silly', 'scotch ale', 'hoge', '0.08', '2.77', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(585, 'Sezoens', 'Brouwerij Martens', 'overige', 'hoge', '0.06', '4.06', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(586, 'Si Boune (blonde)', 'Brasserie du Bocq', 'tripel', 'hoge met nof', '0.08', '3.98', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(587, 'Si Boune (brune)', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '2.73', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(588, 'Silbrau dort', 'Brasserie de Silly', 'saison', 'hoge', '0.06', '2.73', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(589, 'Silver pils', 'Brouwerij Moortgat', 'pilsener', 'lage', '0.05', '3.43', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(590, 'Simon Noël', 'Brasserie Simon', 'bokbier', 'lage', '0.07', '3.98', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(591, 'Simon pils', 'Brasserie Simon', 'pilsener', 'lage', '0.05', '4.60', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(592, 'Simon Régal', 'Brasserie Simon', 'dortmunder', 'lage', '0.06', '3.04', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(593, 'Sinaaise bok', 'Brouwerij Bios', 'overige', 'hoge met nof', '0.08', '2.43', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(594, 'Ski-rodt biermuseum blonde', 'Brasserie du Bocq', 'overige', 'hoge met nof', '0.07', '4.03', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(595, 'Ski-rodt biermuseum brune', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '4.86', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(596, 'Slag lager', 'Brouwerij Slagmuylder', 'dortmunder', 'lage', '0.06', '4.20', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(597, 'Slaghmuylder kerstbier', 'Brouwerij Slagmuylder', 'dortmunder', 'lage', '0.06', '4.40', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(598, 'Slaghmuylder paasbier', 'Brouwerij Slagmuylder', 'dortmunder', 'lage', '0.06', '4.43', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(599, 'Smash', 'Brouwerij Riva', 'tripel', 'hoge', '0.08', '3.92', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(600, 'Soldaat', 'Brouwerij Sterkens', 'dubbel', 'hoge', '0.06', '4.33', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(601, 'Soleilmont double', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.07', '4.89', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(602, 'Soleilmont triple', 'Brasserie de Silly', 'scotch ale', 'hoge', '0.08', '3.45', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(603, 'Sparta pils', 'Brouwerij Bios', 'pilsener', 'lage', '0.05', '3.59', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(604, 'Speciaal Natuurbier', 'Brouwerij Strubbe', 'dortmunder', 'lage', '0.04', '2.60', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(605, 'Special 6', 'Brouwerij de Block', 'Belgische ale', 'hoge', '0.05', '3.25', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(606, 'Special De Ryck', 'Brouwerij de Ryck', 'Belgische ale', 'hoge', '0.04', '3.43', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(607, 'Special Drink center Shape', 'Brouwerij L. Huyghe N.V.', 'pilsener', 'lage', '0.05', '2.38', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(608, 'Special Katje', 'Brouwerij Leroy', 'overige', 'hoge', '0.07', '2.64', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(609, 'Special Roman', 'Brouwerij Roman', 'Vlaamse bruine', 'hoge', '0.06', '4.07', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(610, 'Speciale Aerts', 'Brouwerij Palm', 'Belgische ale', 'hoge', '0.05', '4.41', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(611, 'Speciale Palm', 'Brouwerij Palm', 'Belgische ale', 'hoge', '0.05', '4.84', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(612, 'Speciale Stop', 'Bavik - De Brabandere', 'Belgische ale', 'hoge', '0.05', '2.98', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(613, 'Spéciale de Fourquepire', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '4.38', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(614, 'Spéciale des Géants', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.00', '4.94', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(615, 'Spéciale Villers Saint-Ghislain', 'Brasserie de Silly', 'dubbel', 'hoge', '0.08', '3.56', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(616, 'St. André', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.00', '3.98', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(617, 'St. Benoit blonde', 'Brasserie du Bocq', 'overige', 'hoge met nof', '0.07', '4.24', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(618, 'St. Benoit brune', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '4.25', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(619, 'St. Bernardus', 'Brouwerij St. Bernardus', 'dubbel', 'hoge met nof', '0.08', '3.52', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(620, 'St. Denis dark', 'Brouwerij Sterkens', 'ale', 'hoge', '0.06', '2.86', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(621, 'St. Denise grand cru', 'Brouwerij Sterkens', 'tripel', 'hoge met nof', '0.07', '4.73', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(622, 'St. Feuillien (blonde)', 'Brasserie Friart', 'overige', 'hoge met nof', '0.06', '4.08', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(623, 'St. Feuillien (blonde)', 'Brasserie du Bocq', 'overige', 'hoge met nof', '0.06', '4.21', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(624, 'St. Feuillien (brune)', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '3.83', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(625, 'St. Feuillien (brune)', 'Brasserie Friart', 'dubbel', 'hoge met nof', '0.07', '4.49', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(626, 'St. Feuillien cuvée de noël', 'Brasserie du Bocq', 'scotch ale', 'hoge met nof', '0.09', '2.99', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(627, 'St. Hubert', 'Brasserie de l`Abbaye des Rocs (Brasseri', 'overige', 'hoge', '0.07', '2.46', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(628, 'St. Laurent', 'Brouwerij Sterkens', 'ale', 'hoge', '0.06', '4.32', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(629, 'St. Laurent triple', 'Brouwerij Sterkens', 'tripel', 'hoge met nof', '0.07', '3.25', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(630, 'St. Léger', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.07', '4.28', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(631, 'St. Louis cassis kir royal', 'Brouwerij Van Honsebrouck', 'overige', 'spontane', '0.05', '3.65', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(632, 'St. Louis framboisée', 'Brouwerij Van Honsebrouck', 'framboise', 'spontane', '0.05', '3.40', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(633, 'St. Louis gueuze lambic', 'Brouwerij Van Honsebrouck', 'gueuze', 'spontane', '0.05', '4.04', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(634, 'St. Louis kriek lambic', 'Brouwerij Van Honsebrouck', 'kriekenbier', 'spontane', '0.05', '2.03', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(635, 'St. Louis pêche lambic', 'Brouwerij Van Honsebrouck', 'overige', 'spontane', '0.05', '2.00', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(636, 'St. Mengold 25cl.', 'Brasserie de Silly', 'dubbel', 'hoge', '0.08', '4.94', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(637, 'St. Mengold Huy', 'Brasserie à Vapeur', 'overige', 'hoge met nof', '0.08', '4.67', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(638, 'St. Sebastiaan', 'Brouwerij Sterkens', 'ale', 'hoge', '0.06', '3.53', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(639, 'St. Sixtus Abdij Abt 12', 'Brouwerij St. Bernardus', 'gerstewijn', 'hoge met nof', '0.10', '4.66', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(640, 'St. Sixtus Abdij Pater 6', 'Brouwerij St. Bernardus', 'dubbel', 'hoge met nof', '0.06', '4.72', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(641, 'St. Sixtus Abdij Prior 8', 'Brouwerij St. Bernardus', 'dubbel', 'hoge met nof', '0.08', '4.59', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(642, 'Steedje special', 'Brouwerij `t Steedje', 'overige', 'hoge met nof', '0.08', '3.81', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(643, 'Steedje tripel', 'Brouwerij `t Steedje', 'tripel', 'hoge met nof', '0.08', '3.26', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(644, 'Steenezel', 'Brouwerij Bios', 'gerstewijn', 'hoge met nof', '0.11', '2.89', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(645, 'Stella Artois', 'Artois (groep Interbrew)', 'pilsener', 'lage', '0.05', '2.64', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(646, 'Stille Nacht', 'De Dolle Brouwers', 'gerstewijn', 'hoge met nof', '0.08', '2.56', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(647, 'Stoere pils', 'Brouwerij van Roy', 'pilsener', 'lage', '0.05', '2.86', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(648, 'Stoeren Bonk', 'Brouwerij Bios', 'overige', 'hoge met nof', '0.06', '4.62', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(649, 'Stout', 'Brouwerij Strubbe', 'stout', 'hoge', '0.05', '3.52', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(650, 'Stout Leroy', 'Brouwerij Leroy', 'stout', 'lage', '0.06', '4.76', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(651, 'Stropken', 'Brouwerij Slagmuylder', 'overige', 'hoge met nof', '0.06', '2.21', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(652, 'Strubbe export', 'Brouwerij Strubbe', 'pilsener', 'lage', '0.04', '3.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(653, 'Sublim', 'Brouwerij Piessens', 'overige', 'hoge met nof', '0.08', '4.35', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(654, 'Suna pils', 'Brouwerij Leroy', 'pilsener', 'lage', '0.05', '2.34', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(655, 'Super 64', 'Brasserie de Silly', 'Belgische ale', 'hoge', '0.05', '2.67', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(656, 'Super des Fagnes', 'Brasserie du Bocq', 'tripel', 'hoge met nof', '0.08', '4.32', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(657, 'Super Gueuze Cantillon', 'Brouwerij Cantillon', 'gueuze', 'spontane', '0.05', '2.60', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(658, 'Super houblo', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.00', '4.05', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(659, 'Super Lait des Feuilles Mortes', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '4.44', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(660, 'Super pils', 'Brouwerij Strubbe', 'pilsener', 'lage', '0.04', '2.07', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(661, 'Supra pils', 'Artois (groep Interbrew)', 'pilsener', 'lage', '0.05', '4.01', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(662, 'Teutenbier', 'Brouwerij van Roy', 'overige', 'hoge met nof', '0.08', '2.83', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(663, 'Thouroutenaere', 'Brouwerij Louwaege', 'overige', 'hoge met nof', '0.08', '3.13', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(664, 'Timmermans cassis lambic', 'Brouwerij Timmermans N.V.', 'cassisbier', 'spontane', '0.05', '2.18', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(665, 'Timmermans framboise lambic', 'Brouwerij Timmermans N.V.', 'framboise', 'spontane', '0.05', '2.49', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(666, 'Timmermans gueuze caveau', 'Brouwerij Timmermans N.V.', 'gueuze', 'spontane nof', '0.05', '3.90', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(667, 'Timmermans gueuze lambic', 'Brouwerij Timmermans N.V.', 'gueuze', 'spontane', '0.05', '4.05', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(668, 'Timmermans kriek lambic', 'Brouwerij Timmermans N.V.', 'kriekenbier', 'spontane', '0.05', '3.54', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(669, 'Timmermans pêche lambic', 'Brouwerij Timmermans N.V.', 'perzikbier', 'spontane', '0.05', '3.57', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(670, 'Tongerlo dubbel', 'St. Guibert (groep Interbrew)', 'dubbel', 'hoge', '0.06', '2.20', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(671, 'Tongerlo Norbertijnerbier', 'St. Guibert (groep Interbrew)', 'dubbel', 'hoge', '0.06', '4.32', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(672, 'Tonneke', 'Brouwerij Contreras', 'Belgische ale', 'hoge', '0.05', '3.99', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(673, 'Tradition des Moines blonde', 'Brasserie du Bocq', 'overige', 'hoge met nof', '0.07', '2.00', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(674, 'Tradition des Moines brune', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '2.03', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(675, 'Travelling', 'Brasserie du Bocq', 'overige', 'hoge met nof', '0.07', '2.16', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(676, 'Triple', 'Brouwerij Riva', 'tripel', 'hoge', '0.08', '2.72', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(677, 'Triple Abbaye d`Aulne', 'Brouwerij de Smedt', 'tripel', 'hoge met nof', '0.09', '2.10', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(678, 'Triple Aulne', 'Brouwerij de Smedt', 'tripel', 'hoge met nof', '0.08', '3.32', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(679, 'Triple de Val-Dieu', 'Brouwerij Van Honsebrouck', 'tripel', 'hoge met nof', '0.09', '2.33', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(680, 'Triple Moine', 'Brasserie du Bocq', 'tripel', 'hoge met nof', '0.08', '2.66', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(681, 'Triple Petrus', 'Bavik - De Brabandere', 'tripel', 'hoge', '0.08', '4.34', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(682, 'Triple saison Roland', 'Brasserie Lefèbvre', 'saison', 'hoge', '0.05', '2.73', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(683, 'Triple Soleilmont', 'Brasserie de Silly', 'dubbel', 'hoge', '0.08', '4.61', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(684, 'Triple St. Pierre', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '3.85', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(685, 'Triple Toison d`or', 'Brouwerij Het Anker', 'tripel', 'hoge met nof', '0.07', '3.41', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(686, 'Triple Villers', 'Brouwerij Vieille Villers', 'tripel', 'hoge', '0.06', '3.51', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(687, 'Trippel Bornem', 'Brouwerij Bios', 'tripel', 'hoge met nof', '0.09', '2.34', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(688, 'Ulricher lager', 'Brouwerij Girardin', 'pilsener', 'lage', '0.05', '2.15', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(689, 'Upper 19', 'Brouwerij van Roy', 'tripel', 'hoge', '0.08', '4.76', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(690, 'V Keute di Nameur blonde', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.07', '3.32', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(691, 'Vaartlander', 'Brouwerij Bios', 'tripel', 'hoge met nof', '0.09', '3.32', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(692, 'Val d`heure (blonde. 25 cl.)', 'Brasserie du Bocq', 'saison', 'hoge met nof', '0.06', '4.66', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(693, 'Val d`heure (blonde. 75 cl.)', 'Brasserie du Bocq', 'tripel', 'hoge met nof', '0.08', '2.31', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(694, 'Val d`Heure (brune. 25 cl.)', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.07', '4.58', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(695, 'Val d`Heure (brune. 75 cl.)', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', '0.09', '4.99', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(696, 'Val-Dieu triple', 'Brouwerij Van Honsebrouck', 'tripel', 'hoge met nof', '0.09', '3.20', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(697, 'Van der Ghinste`s Tripel', 'Brouwerij Bockor', 'Vlaamse bruine', 'hoge+melkzure', '0.06', '2.03', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(698, 'vander Linden lambik', 'Brouwerij Vander Linden', 'lambic', 'spontane', '0.06', '4.57', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(699, 'Vedett', 'Brouwerij Moortgat', 'pilsener', 'lage', '0.05', '2.74', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(700, 'Vera pils', 'Brouwerij Verhaeghe', 'pilsener', 'lage', '0.04', '4.01', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(701, 'Verabraü super pils', 'Brouwerij Verhaeghe', 'pilsener', 'lage', '0.04', '3.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(702, 'Verabraü urtyp', 'Brouwerij Verhaeghe', 'pilsener', 'lage', '0.04', '4.98', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(703, 'Verhaeghe export', 'Brouwerij Verhaeghe', 'pilsener', 'lage', '0.04', '2.49', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(704, 'Vichtenaar', 'Brouwerij Verhaeghe', 'Vlaamse bruine', 'hoge', '0.06', '4.52', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(705, 'Vieille des Estinnes', 'Brasserie Dupont', 'overige', 'hoge met nof', '0.08', '4.11', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(706, 'Vieille Villers', 'Brouwerij Vieille Villers', 'dubbel', 'hoge', '0.06', '2.01', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(707, 'Vieux Bruges gueuze lambic', 'Brouwerij Van Honsebrouck', 'gueuze', 'spontane', '0.05', '4.73', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(708, 'Vieux Bruges framboisée', 'Brouwerij Van Honsebrouck', 'framboise', 'spontane', '0.05', '3.61', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(709, 'Vieux Bruges gueuze lambic', 'Brouwerij Van Honsebrouck', 'gueuze', 'spontane', '0.05', '4.88', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(710, 'Vieux Bruges kriek lambic', 'Brouwerij Van Honsebrouck', 'kriekenbier', 'spontane', '0.05', '2.54', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(711, 'Vieux Temps', 'St. Guibert (groep Interbrew)', 'Belgische ale', 'hoge', '0.05', '2.08', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(712, 'Villers tripel', 'Brouwerij Vieille Villers', 'overige', 'hoge', '0.07', '3.77', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(713, 'Vlaske', 'Brouwerij de Block', 'overige', 'hoge', '0.06', '4.62', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(714, 'Voisin saison', 'Brasserie Voisin', 'saison', 'hoge', '0.06', '3.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00');
INSERT INTO `beers` (`id`, `name`, `brewer`, `type`, `yeast`, `perc`, `purchase_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(715, 'Voisin super', 'Brasserie Voisin', 'Belgische ale', 'hoge', '0.05', '3.12', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(716, 'Vondel', 'Brouwerij Riva', 'tripel', 'hoge', '0.08', '2.22', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(717, 'Walrave export', 'Brouwerij Walrave', 'pilsener', 'lage', '0.05', '2.72', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(718, 'Watneys pale ale', 'Union (groep Alken-Maes)', 'pale ale', 'hoge', '0.05', '4.93', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(719, 'Watneys red', 'Union (groep Alken-Maes)', 'ale', 'hoge', '0.06', '2.52', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(720, 'Watneys scotch', 'Union (groep Alken-Maes)', 'scotch ale', 'hoge', '0.08', '4.80', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(721, 'Watou`s wit bier', 'Brouwerij van Eecke', 'weizenbier', 'hoge met nof', '0.05', '2.43', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(722, 'Wellington red lion', 'Union (groep Alken-Maes)', 'ale', 'hoge', '0.06', '4.74', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(723, 'Wellington scotch ale', 'Union (groep Alken-Maes)', 'dubbel', 'hoge', '0.06', '2.44', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(724, 'West pils', 'Brouwerij Leroy', 'pilsener', 'lage', '0.05', '4.96', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(725, 'Westmalle tripel', 'Abdij der Trappisten van Westmalle', 'trappist/dubbel', '?', '0.00', '3.50', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(726, 'Westmalle dubbel', 'Abdij der Trappisten van Westmalle', '?', '?', '0.00', '3.61', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(727, 'Westmalle extra', 'Abdij der Trappisten van Westmalle', 'trappist/tripel', 'hoge met nof', '0.09', '2.57', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(728, 'Westvleteren extra 8', 'Abdij St. Sixtus', 'trappist/gerstewijn', 'hoge met nof', '0.11', '3.01', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(729, 'Westvleteren abt 12', 'Abdij St. Sixtus', 'trappist/dubbel', 'hoge met nof', '0.08', '2.32', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(730, 'Westvleteren special 6', 'Abdij St. Sixtus', 'trappist/dubbel', 'hoge met nof', '0.06', '3.59', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(731, 'Wets gueuze', 'Gueuzestekerij Wets', 'gueuze', 'spontane', '0.06', '2.99', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(732, 'Wets kriek', 'Gueuzestekerij Wets', 'kriekenbier', 'spontane', '0.06', '2.17', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(733, 'Whitbread extra stout', 'Martinas (groep Interbrew)', 'stout', 'hoge', '0.05', '2.86', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(734, 'Whitbread pale ale', 'Martinas (groep Interbrew)', 'pale ale', 'hoge', '0.06', '2.83', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(735, 'Wiel`s pils', 'Wielemans', 'pilsener', 'lage', '0.05', '3.55', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(736, 'Wiels pils', 'Artois (groep Interbrew)', 'pilsener', 'lage', '0.05', '4.25', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(737, 'Wieze christmas', 'Brouwerij van Roy', 'bokbier', 'hoge', '0.07', '2.59', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(738, 'Wieze pils', 'Brouwerij van Roy', 'pilsener', 'lage', '0.05', '4.20', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(739, 'Wilson mild stout', 'Brouwerij Bios', 'stout', 'lage', '0.05', '2.25', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(740, 'Witkap pater dubbele pater', 'Brouwerij Slagmuylder', 'dubbel', 'hoge met nof', '0.07', '2.64', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(741, 'Witkap pater stimulo', 'Brouwerij Slagmuylder', 'overige', 'hoge met nof', '0.06', '4.44', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(742, 'Witkap pater tripel', 'Brouwerij Slagmuylder', 'tripel', 'hoge met nof', '0.08', '3.28', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(743, 'Witte blonde kuif', 'Brouwerij Clarysse', 'weizenbier', 'hoge met nof', '0.05', '4.08', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(744, 'Wittekop', 'Brouwerij Riva', 'witbier', 'hoge met nof', '0.05', '2.58', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(745, 'Wonderbier', 'Brouwerij Moortgat', 'pilsener', 'lage', '0.05', '4.65', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(746, 'Zafke 25cl.', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', '0.07', '4.52', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(747, 'Zedelgemse Martelaar', 'Brouwerij Strubbe', 'ale', 'hoge', '0.06', '3.64', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(748, 'Zerewever', 'Brouwerij Verhaeghe', 'overige', 'hoge', '0.06', '2.64', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(749, 'Zottegems bruin', 'Brouwerij Crombé', 'overige', 'hoge', '0.04', '3.29', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00'),
(750, 'Zulte', 'Brouwerij van Zulte', 'Vlaamse bruine', 'hoge', '0.05', '3.53', NULL, '2018-05-04 22:00:00', '2018-05-04 22:00:00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barname` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homenr` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_reduction` decimal(5,2) DEFAULT NULL,
  `bankcard` varchar(34) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `customers`
--

INSERT INTO `customers` (`id`, `barname`, `address`, `homenr`, `zip`, `city`, `phone`, `country`, `price_reduction`, `bankcard`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 'Micheal\'s Bar', 'Barstreet', '127', '87432-5327', 'New York', '01566678353556', 'USA', '5.50', '371449635398431', NULL, NULL, NULL),
(6, 'Bolt', 'Center square', '45-222', '12462-5329', 'New York', '01645678323456', 'USA', '2.00', '371449635366442', NULL, NULL, NULL),
(7, 'Martin', 'Peaks high', '127', '77368', 'Torento', '07654123456', 'Canada', '2.00', '4012888888881881', NULL, NULL, NULL),
(8, 'Winston', 'Queens boulevard', '127', '1205', 'Brisban', '0321123678', 'Australia', '2.00', '5105105199673480', NULL, NULL, NULL),
(9, 'Stadscafe Het Refter', 'Bethlehemkerkplein', '35a', '8011PH', 'Zwolle', '0383031841', 'the Netherlands', '3.00', 'NL3300000000123456789', NULL, NULL, NULL),
(10, 'Lambiek', 'Maria straat', '78', '8404', 'Gent', '017623457', 'Belgium', '3.00', 'BE71096123456769', NULL, NULL, NULL),
(11, 'Shilton', 'Rockies street', '127', '98765', 'Torento', '07623456', 'Canada', '3.60', '5105105105188334', NULL, NULL, NULL),
(12, 'Karolina', 'Kings street', '23', '855346', 'Torento', '07654323456', 'Canada', '2.00', '37144263539845', NULL, NULL, NULL),
(13, 'Charles', 'Hills', '127', 'EC1A 1BB', 'Hampshair', '076234567', 'UK', '1.70', 'GB98HIGB07009317654123', NULL, NULL, NULL),
(14, 'Ramesh', 'Uertabswe Qegebsh', '1', '123-567', 'Mumbai', '076543123456', 'India', '3.00', '5105105105434342', NULL, NULL, NULL),
(15, 'Sundariya', 'Donker gracht', '25', '1033HH', 'Amsterdam', '031651234585', 'the Netherlands', '5.50', 'NL02INGB0123987654', NULL, NULL, NULL),
(16, 'Steven', 'Dessert road', '127', '65431-6772', 'San Jose', '541234567', 'USA', '10.00', '40128888885151515', NULL, NULL, NULL),
(17, 'Holmes', 'Alleylane', '21', 'L1A 0AH', '0567876543212', 'London', 'UK', '3.00', 'GB98MIDL07002645671973', NULL, NULL, NULL),
(18, 'Rangarappa', 'Outashs', '127', '172-083', 'Bangalore', '0541234588', 'India', '2.20', '5172105177227717', NULL, NULL, NULL),
(19, 'Stuart', 'Bridgeroad', '1', 'L1A 3AX', 'London', '0053577632345', 'UK', '2.00', 'GB98MIDL07009314466883', NULL, NULL, NULL),
(20, 'Lamme Leen', 'Spui', '32', '2234HH', 'Utrecht', '031776445789', 'the Netherlands', '4.00', 'NL02ABNA0126633221', NULL, NULL, NULL),
(21, 'Fleming', 'Dustcreek', '33', '86003A', 'Brisban', '076542345', 'Australia', '2.50', '5105105105105100', NULL, NULL, NULL),
(22, 'Yearannaidu', 'Bjegha', '127', '12132', 'Köln', '095434567754323', 'Germany', '3.00', 'DE91100001222123466332', NULL, NULL, NULL),
(23, 'Albert\'s', '21 West', '127', '65432-5624', 'New York', '017653578933', 'USA', '12.00', '371449635554329', NULL, NULL, NULL),
(24, 'Jacks', 'Abro alley', '55', '6670', 'Brisban', '087654234423', 'Australia', '5.00', '5985105105105940', NULL, NULL, NULL),
(25, 'Im Loch', 'Droster Straße', '12', '45646', 'Hamburg', '04514793434', 'Germany', '2.00', 'DE91100000000235727927', NULL, NULL, NULL),
(26, 'Karl', 'Charels lane', '87', 'L1A 1RK', 'London', '0764234567', 'UK', '4.00', 'GB98MIDL0750631823554', NULL, NULL, NULL),
(27, 'Cook', 'Eastonstreet', '4', 'L1B 7AX', 'London', '0536545789', 'UK', '2.30', 'GB98MIDL07009312345678', NULL, NULL, NULL),
(28, 'Albert\'s', 'Eroway', '127', '978-105', 'Bangalore', '096534799265', 'India', '2.00', '5105106655221569', NULL, NULL, NULL),
(29, 'Gemütliches Stube', 'Güne straße', '102', '19993', 'Bitburg', '07654123456', 'Germany', '3.00', 'DE91100000000123456789', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix_name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_nr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branche` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titles` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_scale` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowance` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `function` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_since` date DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homenr` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `employees`
--

INSERT INTO `employees` (`id`, `firstname`, `lastname`, `prefix_name`, `department`, `employee_nr`, `branche`, `titles`, `salary_scale`, `allowance`, `salary`, `function`, `employee_since`, `birthday`, `address`, `homenr`, `zip`, `city`, `province`, `deleted_at`, `created_at`, `updated_at`) VALUES
(30, 'Vriesekoop', 'Berend', '', '2', '312-23-9900', 'COMMERCIEEL', '', '4', '0', '4000', 'VERKOPER', '1960-01-01', '2000-01-01', 'Krotenweg 12', '0', '1300 FA', 'Goor', 'UT', NULL, NULL, NULL),
(31, 'Bemelmans', 'Sandra', '', '2', '151-22-7773', 'ADMINISTRAT', 'DRS', '3', '0', '2420', 'SECRETARIS', '2002-01-01', '1982-08-19', 'Seringenhof 40', '0', '1943 NZ', 'Beverwijk', 'NH', NULL, NULL, NULL),
(32, 'Biervliet', 'Henk', '', '1', '899-02-3333', 'COMMERCIEEL', 'DRS', '5', '20', '4000', 'VERKOPER', '1999-07-01', '1978-02-19', 'Vliet 213', '0', '8801 ZA', 'Franeker', 'FR', NULL, NULL, NULL),
(33, 'Campers', 'Linda', '', '1', '441-22-3333', 'COMMERCIEEL', '', '5', '25', '4000', 'VERKOPER', '1998-09-01', '1988-05-23', 'Brederodelaan 102A', '0', '3353 GV', 'Papendrecht', 'ZH', NULL, NULL, NULL),
(34, 'Cohen', 'Leo', '', '1', '551-22-3333', 'COMMERCIEEL', 'DRS', '5', '25', '4000', 'VERKOPER', '1989-09-01', '1966-06-11', 'Molenwijk 39', '0', '7751 CJ', 'Dalen', 'DR', NULL, NULL, NULL),
(35, 'Cools', 'Sacha', '', '1', '661-22-3333', 'COMMERCIEEL', '', '5', '20', '4000', 'VERKOPER', '1990-09-01', '1970-11-17', 'Heibloempad 16', '0', '4841 LS', 'Prinsenbeek', 'NB', NULL, NULL, NULL),
(36, 'Dannink', 'Dominique', '', '1', '771-22-3333', 'COMMERCIEEL', 'DRS', '5', '15', '4000', 'VERKOPER', '2000-03-30', '1981-01-01', 'Hogendijk 172', '0', '4538 PB', 'Terneuzen', 'ZL', NULL, NULL, NULL),
(37, 'Delden', 'Theo', 'v', '1', '881-22-3333', 'COMMERCIEEL', 'IR', '5', '20', '4000', 'VERKOPER', '1988-09-01', '2000-01-01', 'Kuifmees 77', '0', '3435 RV', 'Nieuwegein', 'UT', NULL, NULL, NULL),
(38, 'Dessems', 'Michiel', '', '2', '861-28-3983', 'ADMINISTRAT', '', '3', '0', '2900', 'SECRETARIS', '2000-09-01', '2000-01-01', 'Sloterweg 703', '0', '1171 XA', 'Badhoevedorp', 'NH', NULL, NULL, NULL),
(39, 'Dieckema', 'Lodewijk', '', '2', '677-82-3333', 'ADMINISTRAT', 'IR', '7', '0', '9800', 'MANAGER', '1982-09-01', '2000-01-01', 'Steurpad 2B', '0', '3174 AN', 'Poortugaal', 'ZH', NULL, NULL, NULL),
(40, 'Draaijer', 'Peter', 'de', '1', '991-22-3333', 'COMMERCIEEL', '', '5', '20', '4000', 'VERKOPER', '1989-03-03', '2000-01-01', 'Heiligeweg 86', '0', '8861 EE', 'Harlingen', 'FR', NULL, NULL, NULL),
(41, 'Duintjer', 'Kees', '', '1', '001-22-3333', 'COMMERCIEEL', '', '5', '15', '4000', 'VERKOPER', '1992-03-30', '2000-01-01', 'Vinkenlaan 20', '0', '2172 JL', 'Sassenheim', 'ZH', NULL, NULL, NULL),
(42, 'Ennema', 'Michel', '', '1', '111-22-5555', 'COMMERCIEEL', '', '5', '25', '4000', 'VERKOPER', '1986-09-01', '2000-01-01', 'Havikshorst 160', '0', '7414 JS', 'Deventer', 'OV', NULL, NULL, NULL),
(43, 'Evers', 'Harrie', '', '2', '111-22-3777', 'ADMINISTRAT', '', '2', '0', '2100', 'TYPIST', '1989-09-01', '2000-01-01', 'Flevoweg 14', '0', '8081 PC', 'Elburg', 'GL', NULL, NULL, NULL),
(44, 'Galen', 'Lidy', 'v', '2', '461-22-5553', 'ADMINISTRAT', '', '2', '0', '2450', 'TYPIST', '2000-09-01', '2000-01-01', 'Hogezoom 228', '0', '4325 UV', 'Renesse', 'ZL', NULL, NULL, NULL),
(45, 'Geels', 'Gerrit', '', '2', '445-22-3555', 'ADMINISTRAT', 'DR', '8', '0', '11200', 'ONDERDIRECTEUR', '2000-09-01', '2000-01-01', 'Dennendijk 84', '0', '7102 FX', 'Winterswijk', 'GL', NULL, NULL, NULL),
(46, 'Gisbers', 'Koos', '', '1', '111-22-6666', 'COMMERCIEEL', '', '5', '25', '4000', 'VERKOPER', '2000-09-01', '2000-01-01', 'Oude Brink 7', '0', '7855 PL', 'Meppen', 'DR', NULL, NULL, NULL),
(47, 'Gooijer', 'Vicky', 'den', '2', '647-22-3433', 'ADMINISTRAT', 'DR', '7', '0', '11800', 'ONDERDIRECTEUR', '2000-09-01', '2000-01-01', 'Ketellapper 64', '0', '1625 WP', 'Hoorn', 'NH', NULL, NULL, NULL),
(48, 'Hamburg', 'Maartje', '', '2', '861-22-3333', 'ADMINISTRAT', '', '2', '0', '2300', 'TYPIST', '1989-09-01', '2000-01-01', 'Domineeslaan 72', '0', '3621 EF', 'Breukelen', 'UT', NULL, NULL, NULL),
(49, 'Harten', 'Paul', '', '1', '111-22-7777', 'COMMERCIEEL', 'DRS', '5', '20', '4000', 'VERKOPER', '1981-09-01', '2000-01-01', 'Akerdijk 404', '0', '1175 LO', 'Lijnden', 'NH', NULL, NULL, NULL),
(50, 'Jansen', 'Jan', '', '1', '111-22-8888', 'COMMERCIEEL', 'IR', '5', '25', '4000', 'VERKOPER', '1992-09-01', '2000-01-01', 'Mozartlaan 30', '0', '1901 XX', 'Castricum', 'NH', NULL, NULL, NULL),
(51, 'Kalkhoven', 'Liesbeth', '', '1', '110-02-3030', 'COMMERCIEEL', '', '5', '0', '3000', 'VERKOPER', '2000-09-01', '2000-01-01', 'Irenestraat 62', '0', '9288 TS', 'Buitenpost', 'FR', NULL, NULL, NULL),
(52, 'Keesing', 'Marlies', '', '2', '897-22-3333', 'ADMINISTRAT', '', '3', '0', '3300', 'SECRETARIS', '2000-12-21', '2000-01-01', 'Brilsteeg 8A', '0', '7451 SV', 'Holten', 'OV', NULL, NULL, NULL),
(53, 'Keesing', 'Otto', '', '1', '110-20-0303', 'COMMERCIEEL', 'DRS', '5', '0', '5000', 'VERKOPER', '2000-09-01', '2000-01-01', 'Brilsteeg 8A', '0', '7451 SV', 'Holten', 'OV', NULL, NULL, NULL),
(54, 'Koopman', 'Linda', '', '1', '010-02-3303', 'COMMERCIEEL', '', '5', '0', '4000', 'VERKOPER', '2000-09-01', '2000-01-01', 'Leliestraat 66', '0', '4142 ZL', 'Leerdam', 'ZH', NULL, NULL, NULL),
(55, 'Laarmans', 'Jenneke', '', '1', '101-02-3303', 'COMMERCIEEL', '', '5', '0', '4000', 'VERKOPER', '2000-09-01', '2000-01-01', 'J. Verhulststr. 100', '0', '1071 NK', 'Amsterdam', 'NH', NULL, NULL, NULL),
(56, 'Lieshout', 'Rik', '', '1', '001-22-3333', 'COMMERCIEEL', '', '5', '20', '4000', 'VERKOPER', '2000-09-01', '2000-01-01', 'Hoek 16', '0', '6031 PX', 'Nederweert', 'L', NULL, NULL, NULL),
(57, 'Lodijzen', 'Katja', '', '1', '001-02-3333', 'COMMERCIEEL', '', '5', '0', '4000', 'VERKOPER', '2000-09-01', '2000-01-01', 'Molendijk 28', '0', '5451 NN', 'Mill', 'NB', NULL, NULL, NULL),
(58, 'Lorentz', 'Erik', '', '1', '001-20-3033', 'COMMERCIEEL', '', '5', '20', '4000', 'VERKOPER', '1993-09-01', '2000-01-01', 'Vondelplein 10', '0', '5025 TC', 'Tilburg', 'NB', NULL, NULL, NULL),
(59, 'Louwerse', 'Cees', '', '1', '100-22-3333', 'BUITENDIENS', '', '4', '0', '5000', 'VERKOPER', '1999-09-01', '2000-01-01', 'Oranjestraat 79B', '0', '3312 VH', 'Dordrecht', 'ZH', NULL, NULL, NULL),
(60, 'Lucassen', 'Johan', '', '1', '101-20-3003', 'COMMERCIEEL', '', '5', '0', '4000', 'VERKOPER', '1993-12-21', '2000-01-01', 'Hoofdstraat 203', '0', '9968 AF', 'Pieterburen', 'FR', NULL, NULL, NULL),
(61, 'Michiels', 'Ellen', '', '1', '111-11-3333', 'BUITENDIENS', '', '4', '0', '5000', 'VERKOPER', '2001-09-01', '2000-01-01', 'Murillostraat 18', '0', '1611 DD', 'Bovenkarspel', 'NH', NULL, NULL, NULL),
(62, 'Nieuwveen', 'Robert-Jan', '', '2', '971-22-3333', 'ADMINISTRAT', 'DR', '6', '0', '10400', 'MANAGER', '2000-09-01', '2014-08-01', 'Acacialaan 25', '0', '3886 AH', 'Garderen', 'GL', NULL, NULL, NULL),
(63, 'Oss', 'Johan', 'von', '1', '111-22-3333', 'COMMERCIEEL', '', '5', '0', '4400', 'VERKOPER', '2004-09-01', '2000-01-01', 'Zuidweg 90', '0', '2671 MR', 'Naaldwijk', 'ZH', NULL, NULL, NULL),
(64, 'Petersen', 'Johan', '', '1', '134-44-5555', 'COMMERCIEEL', '', '5', '0', '4000', 'VERKOPER', '2000-01-08', '2000-01-01', 'Rading 178', '0', '1231 KG', 'Loosdrecht', 'NH', NULL, NULL, NULL),
(65, 'Pluijmsma', 'Danny', '', '1', '444-22-3333', 'COMMERCIEEL', 'DRS', '6', '5', '11500', 'MANAGER', '1993-09-01', '2000-01-01', 'Groenland 88', '0', '1759 XM', 'Callantsoog', 'NH', NULL, NULL, NULL),
(66, 'Poulen', 'Jaap', '', '1', '555-22-3333', 'COMMERCIEEL', '', '5', '22', '4000', 'VERKOPER', '2000-09-01', '2000-01-01', 'Kruisweg 16', '0', '3847 NJ', 'Harderwijk', 'GL', NULL, NULL, NULL),
(67, 'Ridder', 'Annet', 'de', '1', '666-22-3333', 'COMMERCIEEL', '', '5', '0', '4000', 'VERKOPER', '2000-09-01', '2000-01-01', 'Eelinkstraat 114', '0', '7101 JT', 'Winterswijk', 'GL', NULL, NULL, NULL),
(68, 'Roodenburg', 'Berend', '', '1', '777-22-3333', 'COMMERCIEEL', '', '5', '17', '4000', 'VERKOPER', '1986-09-01', '2000-01-01', 'Beeklaan 340', '0', '2201 BC', 'Noordwijk', 'ZH', NULL, NULL, NULL),
(69, 'Sanders', 'Anneke', '', '1', '111-11-2222', 'BUITENDIENS', '', '6', '50', '9000', 'MANAGER', '2001-07-07', '2007-05-01', 'Harreweg 97', '0', '3123 KF', 'Schiedam', 'ZH', NULL, NULL, NULL),
(70, 'Sijes', 'Joep', '', '1', '888-22-3333', 'COMMERCIEEL', '', '5', '10', '4000', 'VERKOPER', '2000-12-21', '2000-01-01', 'Weerwal 40', '0', '1441 AP', 'Purmerend', 'NH', NULL, NULL, NULL),
(71, 'Valk', 'Simon', 'van der', '1', '122-33-4444', 'BUITENDIENS', '', '4', '0', '5000', 'VERKOPER', '1999-09-01', '2000-01-01', 'Dreef 20', '0', '4116 CY', 'Buren', 'GL', NULL, NULL, NULL),
(72, 'Valkenier', 'Dick', '', '1', '999-22-3333', 'COMMERCIEEL', '', '5', '5', '4000', 'VERKOPER', '2000-09-01', '2000-01-01', 'Talmastraat 16', '0', '4102 EL', 'Culemborg', 'GL', NULL, NULL, NULL),
(73, 'Zandhuis', 'Rik', '', '2', '978-22-4444', 'ADMINISTRAT', 'DR', '9', '0', '15900', 'DIRECTEUR', '1999-01-08', '2000-01-01', 'Mezenpad 31', '0', '1452 XS', 'Ilpendam', 'NH', NULL, NULL, NULL),
(74, 'Adema', 'Niek', '', '1', '703-22-3333', 'COMMERCIEEL', 'IR', '5', '20', '4000', 'VERKOPER', '1987-07-07', '1967-05-26', 'Baanstraat 200', '0', '6371 KK', 'Schaesberg', 'L', NULL, NULL, NULL),
(75, 'Anders', 'Debbie', '', '2', '118-72-3777', 'ADMINISTRAT', '', '2', '0', '2400', 'TYPIST', '1999-08-01', '1974-11-13', 'Klaproosstraat 42', '0', '9611 GZ', 'Sappemeer', 'GR', NULL, NULL, NULL),
(76, 'Arkel', 'Kees', 'van der', '1', '437-22-6788', 'COMMERCIEEL', '', '5', '20', '5000', 'VERKOPER', '1990-12-01', '1980-08-22', 'Abtstraat 90', '0', '6211 QV', 'Maastricht', 'L', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(71, '2014_10_12_000000_create_users_table', 1),
(72, '2014_10_12_100000_create_password_resets_table', 1),
(73, '2019_08_19_000000_create_failed_jobs_table', 1),
(74, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(75, '2021_11_04_122947_create_beer_tables', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `employee_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 9, 33, NULL, '2018-09-26 22:00:00', '2018-09-26 22:00:00'),
(2, 13, 32, NULL, '2018-10-01 22:00:00', '2018-10-11 22:00:00'),
(3, 9, 30, NULL, '2019-10-28 22:00:00', '2019-10-28 22:00:00'),
(4, 6, 34, NULL, '2019-12-04 23:00:00', '2019-12-04 23:00:00'),
(5, 9, 34, NULL, '2020-05-05 22:00:00', '2020-05-05 22:00:00'),
(6, 9, 33, NULL, '2020-09-11 19:25:56', '2020-09-11 19:40:33'),
(7, 13, 33, NULL, '2020-09-11 20:24:56', '2020-09-11 20:24:56'),
(8, 5, 36, NULL, '2020-10-22 19:24:56', '2020-10-26 09:10:10');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `order_beer`
--

CREATE TABLE `order_beer` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `beer_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,0) NOT NULL,
  `price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `order_beer`
--

INSERT INTO `order_beer` (`order_id`, `beer_id`, `amount`, `price`) VALUES
(1, 8, '20', '4.39'),
(1, 143, '20', '4.50'),
(1, 156, '10', '4.30'),
(1, 164, '2', '3.61'),
(2, 8, '20', '4.39'),
(2, 156, '50', '4.30'),
(3, 8, '12', '4.39'),
(3, 156, '12', '4.30'),
(3, 649, '6', '3.52'),
(4, 4, '23', '4.49'),
(5, 8, '25', '4.30'),
(5, 156, '10', '4.30'),
(6, 156, '50', '4.09'),
(7, 8, '5', '4.39'),
(7, 156, '50', '4.09'),
(7, 716, '80', '2.22'),
(8, 8, '1', '4.39');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'RootMe', 'root@app.com', '2021-10-14 12:28:18', '$2y$10$a7qqmCnr83sAO4412ws39uqSPHjef4VFDWJo5jvMNIg/pOn7vGL4G', 'Ruri9DHx2F', '2021-10-12 12:03:52', '2021-11-03 12:09:20'),
(2, 'AdminMe', 'admin@app.com', '2021-11-10 07:29:21', '$2y$10$OZSB/ag1ZWDoWRsylB.C5eoSOa6hWJ7QHsrpfB91v060JiD9Q1Q52', 'E0PGADj3mj', '2021-11-10 07:29:21', '2021-11-10 07:29:21'),
(3, 'UserMe', 'user@app.com', '2021-10-11 14:52:54', '$2y$10$Nj/F/ru.zKBIWDQ0nWtNkuYetnfJDT1J7Z3iyaXZcZUFpSNxe2Jsm', 'ilNqniXPNS', '2021-10-16 09:16:00', '2021-10-29 14:42:58'),
(4, 'VisitorMe', 'visitor@app.com', '2021-10-13 20:09:02', '$2y$10$4TZPhzMl/wYa0UTVKBDn5eUFrCBO8JzXI0zdME2zGc5.pfadqg/.W', 'aCPvSXjdxa', '2021-10-21 09:50:59', '2021-11-01 00:06:48'),
(5, 'Zachery Kemmer', 'user5@app.com', '2021-11-10 07:29:21', '$2y$10$/JlBaAD.swV2ZfMr9eSVf.n6lkygjZKV4mu66NWQkXzrv85GpQaou', '5YRNGuV2Ze', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(6, 'Zola Weissnat', 'user6@app.com', '2021-11-10 07:29:21', '$2y$10$qslj4VkvBakVZVmLV.2MCO1Q5NtHO2XxRwPN4EjIHrR.tOVCg/zYa', 'NC3BM8G8lC', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(7, 'Valentin Blanda', 'user7@app.com', '2021-11-10 07:29:21', '$2y$10$r.jigPYZmmPXzNYeQWv7EexiOIJ2mBMXVdv4k8C2qaS2QSo2JXGj2', 'CaeMeoEqaY', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(8, 'Iva Langosh', 'user8@app.com', '2021-11-10 07:29:21', '$2y$10$o0od23T6TqLdze6sG9p7r.7XaoMnqf43x5TtkKenVu5rcm/46OfHe', 'sGL1pusyiY', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(9, 'Prof. Brent Botsford', 'user9@app.com', '2021-11-10 07:29:21', '$2y$10$H48bLK0embrvoo2qkc3vcufl0VtpYTgSQWQWf0NwpV1EhIOEkGemy', 'uJt7KB3GXL', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(10, 'Madaline Powlowski III', 'user10@app.com', '2021-11-10 07:29:21', '$2y$10$bmtpbaH7vS6ZoNe0UvXZ1OC.DKDhM.9feTp7SHIT21WVba28ZyItq', 'dB9akcs39A', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(11, 'Dr. Wilbert Dicki', 'user11@app.com', '2021-11-10 07:29:21', '$2y$10$MeAfhGSPG39X.p6DGq0vNu.9Og5d3M5SN7Mbo.BIMTLoymjUg.FRi', 'YyIgjktJVa', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(12, 'Miss Cara Wisoky', 'user12@app.com', '2021-11-10 07:29:21', '$2y$10$c5co4CC8.L82q69VdBWsYe7mah5lN0xzWSThcvxNZydvZluQwYo9m', 'KOADY8hbD1', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(13, 'Ewell Mraz DDS', 'user13@app.com', '2021-11-10 07:29:21', '$2y$10$KuEifqLOHvlt8b/OYgznt.GGP26UAJLjw1gwXWyS1b3gA/449yGey', 'eXxCrhnDtD', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(14, 'Viva Williamson', 'user14@app.com', '2021-11-10 07:29:21', '$2y$10$jic4501yLG6eGkM29apD4uzae1BoSNKOdVPKUE1St.pKrM7FP4V2a', '7iXBV5osi2', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(15, 'Tessie Nitzsche', 'user15@app.com', '2021-11-10 07:29:21', '$2y$10$92alOy8m54FA3kLoPiXUteTQkyW3vddIMwRoyX3dA87GIpd7TyIjq', 'mnFR4tTzRG', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(16, 'Lucienne Schaden', 'user16@app.com', '2021-11-10 07:29:22', '$2y$10$z5d.3jXB6rAMGxqtVkuNG.YJ/cHOpEpIEp7i2REBBj.5SsBLbwAFi', 'MErNN7oJvo', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(17, 'Stephan Graham DDS', 'user17@app.com', '2021-11-10 07:29:22', '$2y$10$Vbjef2UKKx7vi7DiiyhpuuMx7npOBj8NYLHs5Ohd0iyjSLX6M1LGm', 'e4C4DKJoBO', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(18, 'Darien Reilly', 'user18@app.com', '2021-11-10 07:29:22', '$2y$10$9Pm3atIm/WwrfW8FG1/anexteXNQWhJRbm37RtFNGwM3zJ6wIpElO', 'FtV5rxWj3g', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(19, 'Stan Nikolaus', 'user19@app.com', '2021-11-10 07:29:22', '$2y$10$KjrS9apOchvbF14.JvQ8JeFRV9ZmfEcR/Q2uHMSigPNA8aZfMCAaK', 'WWMA10VKrY', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(20, 'Weldon Hammes', 'user20@app.com', '2021-11-10 07:29:22', '$2y$10$qHEyb482Maja7xh0J.c7POypF/t1e46XuBrVHpQ2Vb.2qIoM57xGC', '20nXBHT9Bl', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(21, 'Mr. Angus Raynor', 'user21@app.com', '2021-11-10 07:29:22', '$2y$10$ODlla7EL67Cll.fvGiGLeuyhCL5EQHB8bjEygDurnR1of2mn7PTGu', '6CS3Qk53Xa', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(22, 'Trisha Kiehn II', 'user22@app.com', '2021-11-10 07:29:22', '$2y$10$tj6.zhP6BzWaQWscc/V/se932oFSovbb67L1HM/TeBuEaMM2vwATC', 'jvXZS8GzEd', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(23, 'Dawson Goldner', 'user23@app.com', '2021-11-10 07:29:22', '$2y$10$OjTVQ8GeDZ68PWDslmt0depXyykSNev1wO7/Nlq0QKz/pozJs16SS', 'yTOQ5QJtfj', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(24, 'Deshawn Larkin', 'user24@app.com', '2021-11-10 07:29:22', '$2y$10$KPO.tbhlTwLaL1nzFeBzaeey7FXTAbfhsMIzj5B74yQj7txtFw3IO', 'edZrXyZIgM', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(25, 'Dr. Antonette VonRueden PhD', 'user25@app.com', '2021-11-10 07:29:22', '$2y$10$/uJQWF2uJllWtaMiDMgnj.rvMpECOkA2cKrzf9rxO3QG5YwWqscje', 'nz4iNScoGe', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(26, 'Virginie Reichert I', 'user26@app.com', '2021-11-10 07:29:22', '$2y$10$XJFlcRj8OsLgtC7wRcnM3uIsgfxgzzrNbJ4wLjU6bA09BMu2e.Jzy', '4jGjY5iZkA', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(27, 'Mr. Rhett Parker II', 'user27@app.com', '2021-11-10 07:29:22', '$2y$10$HMDzrgzpgCGxj1jeieryhuq/dPWU4kbLdRVn36kSIvRkCC7vxH/gq', 'UejYByyBpF', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(28, 'Therese Brakus', 'user28@app.com', '2021-11-10 07:29:22', '$2y$10$x0fSHPDYgqLNzrdZSHbTNeJUpykL5xGMe.vKcpLKr8/nkdHRzMyye', 'seZbBBvDta', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(29, 'Mrs. Jaclyn Schowalter III', 'user29@app.com', '2021-11-10 07:29:22', '$2y$10$A8yfvFq/.l4bCABYTexDj.ZJ7MGjDWEssY4PigwzvSp4XAvEP4Uge', 'w6aoewFdTa', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(30, 'Joy Fritsch', 'user30@app.com', '2021-11-10 07:29:22', '$2y$10$N/drg1Wy1//ST3sJGKCk6OtLskGkT9GZii7Pt.e8W1pLl4SZ.d3gO', 'P6uI1Hja2A', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(31, 'Damien Prohaska', 'user31@app.com', '2021-11-10 07:29:22', '$2y$10$HuIOijOIlWqmAa/AuPLl6OP/mPg0/EeQNM3WymxbhHahboQguPTcO', 'qfw2u1WYGm', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(32, 'Prof. Royal Watsica', 'user32@app.com', '2021-11-10 07:29:22', '$2y$10$2qjuCxVMuwub5FEPtuky3eB7knepxTwab5wCYsmRLcIpail.M11Uq', 'Lpi6gVX2yL', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(33, 'Mrs. Heather Waters', 'user33@app.com', '2021-11-10 07:29:22', '$2y$10$xNaRRqMlxGdlpSzYPFNbeOAg.SdG8GNdX.wju4WENGEEY00x2GCrW', 'wJJB3Iezvm', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(34, 'Dr. Enos Kuvalis', 'user34@app.com', '2021-11-10 07:29:22', '$2y$10$RO6A0exU/tt1wgfTrAf4reqR9UgRU2WjDzLbC2pboNQ4SKYeNdhC6', 'ihQFz6lOes', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(35, 'Michele Bruen', 'user35@app.com', '2021-11-10 07:29:22', '$2y$10$0oT3TH3.F09wmTp88V/IAO2xmD7mwAF9qd7koL0HVKIFuw9KKs.b6', 'nZdRPXZIrJ', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(36, 'Meaghan Balistreri DVM', 'user36@app.com', '2021-11-10 07:29:22', '$2y$10$wWrnKgNX9u7VSH1jpR8BeeBtF2rZDVqLXpFpMrrRP0p0V8IatbMzy', 'gZqGCevj3h', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(37, 'Viola Powlowski', 'user37@app.com', '2021-11-10 07:29:23', '$2y$10$CczYxbTcYtg.XLsx6tzGLeLRilujvqs3SuUTOoY4.7PRaEPF1EXAy', 'qi3oPK5IHk', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(38, 'Obie Ernser Sr.', 'user38@app.com', '2021-11-10 07:29:23', '$2y$10$M3AzYpgjGpdQhP7cNfMsq..mZrwIAymlWqP4cMwAI4jf52Tl2XkyC', 'XwpWsUEeYo', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(39, 'Sheridan Parker', 'user39@app.com', '2021-11-10 07:29:23', '$2y$10$ODoHSDuhC9UR0wScMnXFUeHfsiTYsMLfenSDqCgD4yMQ5QUFvIliq', '0KnBJNbQA5', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(40, 'Sonya Kemmer Sr.', 'user40@app.com', '2021-11-10 07:29:23', '$2y$10$jPabR9x5hWIz47RjIVsHDOLK1mB./vHU4iPaLq0SJvLKiu.tluWcW', 'CUJjW9J0GP', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(41, 'Francesca Gutmann', 'user41@app.com', '2021-11-10 07:29:23', '$2y$10$m2IV8.Kje5sLWAfTGg5YO.KDk1UuNEjNAh0UBg6QLNgMH2k7vwiIO', '4js7ZfBacZ', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(42, 'Frederic Gottlieb', 'user42@app.com', '2021-11-10 07:29:23', '$2y$10$Yx0g3C6QP.UxBXDw4Zxr2e6NNeIc384ZhQ9AuS.UWl84NzWeT2fkG', 'emLHllVpWq', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(43, 'Jeffry Hayes IV', 'user43@app.com', '2021-11-10 07:29:23', '$2y$10$guFgVnAs/QpebU1YB/DnoeoOTJUr.EsuxEZan8tX5tjJYhg5HT.YK', 'BlH6eQRMsi', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(44, 'Flavie Stamm', 'user44@app.com', '2021-11-10 07:29:23', '$2y$10$RUcms2Q17.PLKcYjqf2i5OKMLg2aOnwOfAx4Jdx2msi9XmwQdZL3a', 'klF8ElUkFs', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(45, 'Dr. Dennis Wintheiser II', 'user45@app.com', '2021-11-10 07:29:23', '$2y$10$zP07TH6WVLDpoRzNu2/KQuVB0037Lm9ksMtJyPUECO6KM2tDR3fNa', 'z8IgzixYje', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(46, 'Ursula Bartell', 'user46@app.com', '2021-11-10 07:29:23', '$2y$10$zRAPKGHbBsvaYllV2JxI..mkKjiDH3xpSBfAhvQ16e7BEuX5KHjN.', 'bbiUEhSND1', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(47, 'Dr. Jovanny Simonis', 'user47@app.com', '2021-11-10 07:29:23', '$2y$10$s2NbLxclsyFJfnXcpiW4JOfClwFBOokYii/yfL2vuru4zFt76E4fu', 'UvoMZhuQPl', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(48, 'Mr. Bailey Rau DDS', 'user48@app.com', '2021-11-10 07:29:23', '$2y$10$yU87Xad9PpjmUhWn5Sv8BerFnnOAqZzoQlI1InbCGuU.m5M7ZkkEW', 'Jzqxm4t01A', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(49, 'Dr. Charles Jast DDS', 'user49@app.com', '2021-11-10 07:29:23', '$2y$10$wWa1J/2TsslDzcQvXF4vCuhMdvc1yytY.wH.cFtYCf.sAkdmlh43G', 'kFRwBDi9di', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(50, 'Deven Wintheiser', 'user50@app.com', '2021-11-10 07:29:23', '$2y$10$Pksjd2l20WBRIi2KX9C.R.sxztpnI/bIb2e7aRDC/4bJQu.Fp35ki', 'KoS0aaHun8', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(51, 'Bulah Denesik', 'user51@app.com', '2021-11-10 07:29:23', '$2y$10$MZBF3/3gdoL7GpqKAC0aou1UAPWMUvr9aE.j.HM0txwRnm/lmse2m', 'a8enXY6eEO', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(52, 'Ronaldo Terry', 'user52@app.com', '2021-11-10 07:29:23', '$2y$10$QZU8wsQdjHMnaQRWth8GVuLR0Hc94gOtoN/M0hhtJjrvDmq5S5IuC', '9VbkmOdoKh', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(53, 'Kole Schinner', 'user53@app.com', '2021-11-10 07:29:23', '$2y$10$kiJBM2YdMJZVoXPm5A5NFONj7Q4g9IpL7Ghz2y9YrzA1UTM2Dvlqy', '06ehbzsUEj', '2021-11-10 07:29:23', '2021-11-10 07:29:23'),
(54, 'Alyce Zieme', 'user54@app.com', '2021-11-10 07:29:23', '$2y$10$KO8ASwGrkXlHwC6SgTRxXet0uFxViZTuTBd4RVRZ4vx.kaebybD4m', 'WtQR1wK7ZP', '2021-11-10 07:29:23', '2021-11-10 07:29:23');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `beers`
--
ALTER TABLE `beers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_employee_id_foreign` (`employee_id`);

--
-- Indexen voor tabel `order_beer`
--
ALTER TABLE `order_beer`
  ADD PRIMARY KEY (`order_id`,`beer_id`),
  ADD KEY `order_beer_beer_id_foreign` (`beer_id`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexen voor tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `beers`
--
ALTER TABLE `beers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=751;

--
-- AUTO_INCREMENT voor een tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT voor een tabel `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT voor een tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT voor een tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `orders_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `order_beer`
--
ALTER TABLE `order_beer`
  ADD CONSTRAINT `order_beer_beer_id_foreign` FOREIGN KEY (`beer_id`) REFERENCES `beers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_beer_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
