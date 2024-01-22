-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2024 at 02:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tweede_kamer`
--

-- --------------------------------------------------------

--
-- Table structure for table `goedkeuring`
--

CREATE TABLE `goedkeuring` (
  `partijID` int(11) NOT NULL,
  `ministerGoedgekeurd` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partijen`
--

CREATE TABLE `partijen` (
  `partijID` int(11) NOT NULL,
  `partijNaam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partijen`
--

INSERT INTO `partijen` (`partijID`, `partijNaam`) VALUES
(1, 'VVD'),
(2, 'D66'),
(3, 'GL/PvdA '),
(4, 'PVV'),
(5, 'CDA'),
(6, 'SP'),
(7, 'FVD'),
(8, 'PVDD'),
(9, 'CU'),
(10, 'VOLT'),
(11, 'JA21'),
(12, 'SGP'),
(13, 'DENK'),
(14, '50PLUS'),
(15, 'BBB'),
(16, 'BIJ1'),
(17, 'Piratenoartij'),
(18, 'BVNL'),
(19, 'NSC'),
(20, 'Splinter'),
(21, 'LP'),
(22, 'LEF'),
(23, 'SVN'),
(24, 'NLPLAN');

-- --------------------------------------------------------

--
-- Table structure for table `partijleden`
--

CREATE TABLE `partijleden` (
  `partijID` int(11) NOT NULL,
  `ledenID` int(11) NOT NULL,
  `ledenNaam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partijleden`
--

INSERT INTO `partijleden` (`partijID`, `ledenID`, `ledenNaam`) VALUES
(1, 1, 'Yeşilgöz, D'),
(1, 2, 'Hermans, S.T.M'),
(1, 3, 'Becker, B'),
(1, 4, 'van der Burg'),
(1, 5, 'van der Wal-Zeggelink, C'),
(1, 6, 'Brekelmans, R.P'),
(1, 7, 'Heinen, E'),
(1, 8, 'de Vries, A'),
(1, 9, 'Kamminga, R.J'),
(1, 10, 'Paul, M.L.J'),
(1, 11, 'Erkens, S.P.A'),
(1, 12, 'Rajkowski, Q.M.'),
(1, 13, 'Aartsen, A.A.'),
(1, 14, 'van Campen, A.A.H'),
(1, 15, 'Tielen, J.Z.C.M'),
(1, 16, 'Veltman-Kamp, H.N.'),
(1, 17, 'van Eijk-Nagel, W.P.J'),
(1, 18, 'Ellian, U'),
(1, 19, 'Michon-Derkzen, I.J.M.'),
(1, 20, 'Martens-America, C.'),
(1, 21, 'Meulenkamp, W.J.H'),
(1, 22, 'de Groot, P.C'),
(1, 23, 'Kisteman, A.'),
(1, 24, 'de Kort, A.H.J.'),
(1, 25, 'van den Hil, J.'),
(1, 26, 'Valstar, P.J.'),
(1, 27, 'Bevers, H'),
(1, 28, 'Buijsse, M.R.G'),
(1, 29, 'Dral, R.M'),
(1, 30, 'Bikkers, B.T.'),
(1, 31, 'Verkuijlen, R.'),
(1, 32, 'Richardson, S.M'),
(1, 33, 'de Beer, M.E.E'),
(1, 34, 'van Strien, P.J.T.'),
(1, 35, 'Hartsuiker, R.J.J'),
(1, 36, 'Klein Lankhorst, H.'),
(1, 37, 'Haverkort, E.A'),
(1, 38, 'Simons, C.'),
(1, 39, 'Bijenhof, Y'),
(1, 40, 'van Groningen, D.A'),
(2, 41, 'Jetten, R.A.A'),
(2, 42, 'Paternotte, J.M.'),
(2, 43, 'Vijlbrief, J.A.'),
(2, 44, ' Podt, A.'),
(2, 45, 'Sneller, J.C.'),
(2, 46, 'Rooderkerk, I.'),
(2, 47, 'Paulusma, W'),
(2, 48, 'van der Werf, J.J'),
(2, 49, 'Bamenga, P.'),
(2, 50, 'de Groot, T.C'),
(2, 51, 'Synhaeve, M.'),
(2, 52, 'van Ginneken, L.M'),
(2, 53, 'Belhaj, S'),
(2, 54, 'Boulakjar, F.'),
(2, 55, 'Sahla, F.'),
(2, 56, 'Klos, F.C.O.'),
(2, 57, 'Kat, H'),
(2, 58, 'Warmerdam, S'),
(2, 59, 'Alberg, S.T'),
(2, 60, 'Hammelburg, A.R'),
(2, 61, 'Hollander, J.'),
(2, 62, 'ten Dolle, L.'),
(2, 63, 'Blommers, D'),
(2, 64, 'van Breugel, C'),
(2, 65, 'Teunissen, J.C.M'),
(2, 66, 'Çimen, M'),
(2, 67, 'Oualhadj, A.'),
(2, 68, 'Putuhena, M'),
(2, 69, 'Keij, E.J'),
(2, 70, 'Brink, V.J'),
(3, 71, 'Timmermans, F.C.G.M.'),
(3, 72, 'Lahlah, A'),
(3, 73, 'Klaver, J.F'),
(3, 74, 'Piri, K.P.'),
(3, 75, 'Westerveld, E.M.'),
(3, 76, 'Patijn, M.H.'),
(3, 77, 'Kröger, S.C'),
(3, 78, 'Bushoff, T.J.'),
(3, 79, 'van der Lee, T.M.T'),
(3, 80, 'Mutluer, S.'),
(3, 81, 'Bromet, L'),
(3, 82, 'de Hoop, H.E.'),
(3, 83, 'Maatoug, S'),
(3, 84, 'Mohandis, M'),
(3, 85, 'Gabriëls, G.J.W.'),
(3, 86, 'Thijssen, J.'),
(3, 87, 'Bouchallikh, K. ('),
(3, 88, 'Kathmann, B.C.'),
(3, 89, 'Slagt-Tichelman, E'),
(3, 90, 'Tseggai, M'),
(3, 91, 'White, R.J.'),
(3, 92, 'Pijpelink, A'),
(3, 93, 'Chakor, G'),
(3, 94, 'Nordkamp, J.'),
(3, 95, 'Stultiens, L.C.J'),
(3, 96, 'Haage, M.W.'),
(3, 97, 'Hirsch, D.H.'),
(3, 98, 'de Jong, H.A'),
(3, 99, 'Postma, J.P.'),
(3, 100, 'Oosting, I'),
(4, 101, 'Wilders, G'),
(4, 102, 'Agema, M'),
(4, 103, 'van Meetelen, R.F.'),
(4, 104, 'Markuszower, G.'),
(4, 105, 'Bosma, M'),
(4, 106, 'Claassen, R.A.B'),
(4, 107, 'Faber, M.H.M'),
(4, 108, 'Mulder, E'),
(4, 109, 'Maeijer, V'),
(4, 110, 'van Dijck, A.P.C'),
(5, 111, 'Bontenbal, H.'),
(5, 112, 'Vedder, E.C.'),
(5, 113, 'Boswijk, D.G.'),
(5, 114, 'van Dijk, I.'),
(5, 115, 'Krul, H.M.'),
(5, 116, 'Palland-Mulder, H.M'),
(5, 117, 'van den Brink, G'),
(5, 118, 'Absil, M.G.J.A.C.'),
(5, 119, 'Steen, H.S'),
(5, 120, 'Kuik, A.'),
(6, 121, 'Marijnissen, L.M.C'),
(6, 122, 'Beckerman, S.M'),
(6, 123, 'van Kent, B'),
(6, 124, 'Dijk, J.P'),
(6, 125, 'van Nispen, M'),
(6, 126, 'Dobbe, S.E.M.'),
(6, 127, 'Temmink, N.G.J'),
(6, 128, 'ten Broeke, M.J'),
(6, 129, 'van Dijk, J.J'),
(6, 130, 'Meijer, B.W.V'),
(7, 131, 'Baudet, T.H.P'),
(7, 132, 'Jansen, F.J.H.'),
(7, 133, 'van Meijeren, G.F.C'),
(7, 134, 'van Houwelingen, P'),
(7, 135, 'Dekker, R.J.'),
(7, 136, 'de Vos, L.G. '),
(7, 137, 'Russcher, T.K'),
(7, 138, 'Etalle, M.J.S'),
(7, 139, 'Bakir, A'),
(7, 140, 'Dessing, J.'),
(8, 141, 'Ouwehand, E'),
(8, 142, 'Kostić, I.'),
(8, 143, 'Teunissen, C.'),
(8, 144, 'Wassenberg, F.P.'),
(8, 145, 'Akerboom, E.S'),
(8, 146, 'van Raan, L.'),
(8, 147, 'van Schaik, M'),
(8, 148, 'Krijger, A.L.'),
(8, 149, 'Plusquin, P.S.M.L'),
(8, 150, 'Groenewege, P.J.L'),
(9, 151, 'Bikker, M.H'),
(9, 152, 'Grinwis, P.A'),
(9, 153, 'Ceder, D.G.M'),
(9, 154, 'te Rietstap, A.H'),
(9, 155, 'Gooijer-Medema, J.K.'),
(9, 156, 'Drost, N'),
(9, 157, 'Holtman, T.S'),
(9, 158, 'Otter-van den Bosch, C'),
(9, 159, 'van der Graaf, S.J.F'),
(9, 160, 'Klein, M.C.A'),
(10, 161, 'Dassen, L.A.J.M'),
(10, 162, 'Koekkoek, M'),
(10, 163, 'Boutkan, E'),
(10, 164, 'Elfilali, I'),
(10, 165, 'Hagoort, M.B.J'),
(10, 166, 'Frijters, R.M.J'),
(10, 167, 'de Boer, R.W'),
(10, 168, 'van der Lugt, S'),
(10, 169, 'Beijnon, B'),
(10, 170, 'Twickler, R'),
(11, 171, 'Nanninga, A'),
(11, 172, 'Eerdmans, B.J'),
(11, 173, 'Ceulemans, S'),
(11, 174, 'Bakker-Derks, E.H.M'),
(11, 175, 'van Doorn, D.M.A.'),
(11, 176, 'Goudzwaard, M.'),
(11, 177, 'Schyns, P.F.M'),
(11, 178, 'Uiterwijk, K'),
(11, 179, 'Dijksterhuis, R.G'),
(11, 180, 'van den Berg, D.J.'),
(12, 181, 'Stoffer, C.'),
(12, 182, 'van Dijk, D.J.H.'),
(12, 183, 'Flach, A.J'),
(12, 184, 'Middelkoop, P.N'),
(12, 185, 'Vroegindeweij, W.J'),
(12, 186, 'van der Maas, A.J'),
(12, 187, 'van der Wind, H.J'),
(12, 188, 'Both, D.D'),
(12, 189, 'Kloosterman, J'),
(12, 190, 'van Heijst, R.C'),
(13, 191, 'van Baarle, S.R.T'),
(13, 192, 'Ergin, D.A'),
(13, 193, 'El Abassi, I.'),
(13, 194, 'Alrubey, A'),
(13, 195, 'Gün, E'),
(13, 196, 'Usta, Y. '),
(13, 197, 'Rijssel, N.E.'),
(13, 198, 'Maroof, A.'),
(13, 199, 'Mac Intosch, G.J'),
(14, 200, 'van Hooft, G.O.P.C'),
(14, 201, 'van Rooij, M.G.J.H.'),
(14, 202, 'Brouwers, J.F.X.M.'),
(14, 203, 'Hoek, W.M.M'),
(14, 204, 'van Acquoij, R.H'),
(15, 205, 'van der Plas, C.A.M'),
(15, 206, 'Keijzer, M.C.G.'),
(15, 207, 'Tuinman, G.P'),
(15, 208, 'Vermeer, H.'),
(15, 209, 'Helder, L.M.J.S. ('),
(16, 210, 'Olf, E.M'),
(16, 211, 'Mc Cray, L'),
(16, 212, 'Salmi, L'),
(17, 213, 'van Treuren, M.A'),
(17, 214, 'Sadloe, S'),
(17, 215, 'van Zwoll, R.M.E'),
(17, 216, 'Pontier, M.A'),
(18, 217, 'van Haga, W.R'),
(18, 218, 'Krol, H.C.M'),
(18, 219, 'van Keimpema, J.S.'),
(18, 220, 'Dercksen, R.G.J.'),
(18, 221, 'Koopmans - van der Veen, W.J'),
(19, 222, 'Omtzigt, P.H'),
(19, 223, 'van Vroonhoven-Kok, J.N.'),
(19, 224, 'Uitermark, J.J.M'),
(20, 225, 'van Kooten-Arissen, F.M.'),
(20, 226, 'Ipenburg, N'),
(20, 227, 'Bogers, T.J'),
(20, 228, 'Vos, J.'),
(21, 229, 'van Lamoen, T.J'),
(21, 230, 'Burggraaf, B.W.'),
(21, 231, 'Verhagen, P.H'),
(22, 232, 'van Duijn, D.C'),
(22, 233, 'Zantman, N.M'),
(22, 234, 'Neijts, Z.V'),
(23, 235, 'Reijinga, M'),
(23, 236, ' You-ala, S'),
(23, 237, 'ten Seldam, W'),
(24, 238, 'Chan, K.K'),
(24, 239, 'Hogeweg, M.Y'),
(24, 240, 'Groeneveld, R.M');

-- --------------------------------------------------------

--
-- Table structure for table `stemgerechtigden`
--

CREATE TABLE `stemgerechtigden` (
  `stemgerechtigdenid` int(11) NOT NULL,
  `stemmernaam` varchar(50) NOT NULL,
  `stad` varchar(50) NOT NULL,
  `geboortedatum` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stemgerechtigden`
--

INSERT INTO `stemgerechtigden` (`stemgerechtigdenid`, `stemmernaam`, `stad`, `geboortedatum`) VALUES
(1, 'John Doe', 'Rotterdam', '1985-01-10'),
(2, 'Omar Ammar', 'Amsterdam', '1998-02-28'),
(3, 'Jap van de bruk ', 'Arnhem ', '1977-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `stemmen`
--

CREATE TABLE `stemmen` (
  `stemid` int(11) NOT NULL,
  `verkiezingid` int(11) NOT NULL,
  `verkiesbarenid` int(11) NOT NULL,
  `stemgerechtigdenid` int(11) NOT NULL,
  `stemdatum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stemmen`
--

INSERT INTO `stemmen` (`stemid`, `verkiezingid`, `verkiesbarenid`, `stemgerechtigdenid`, `stemdatum`) VALUES
(1, 1, 1, 1, '2023-07-07'),
(2, 2, 2, 2, '2023-07-07'),
(3, 3, 3, 3, '2023-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Ali Abo Rashed', 'aliaborashed07@'),
(2, 'Yasin Coban', 'Yasin08@'),
(3, '[value-2]', '[value-3]');

-- --------------------------------------------------------

--
-- Table structure for table `verkiesbaren`
--

CREATE TABLE `verkiesbaren` (
  `verkiesbarenid` int(11) NOT NULL,
  `verkiesbarennaam` varchar(50) NOT NULL,
  `lidID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `verkiesbaren`
--

INSERT INTO `verkiesbaren` (`verkiesbarenid`, `verkiesbarennaam`, `lidID`) VALUES
(1, 'John Doe', 1),
(2, 'Omar Ammar', 2),
(3, 'Jap ve de bruk', 3);

-- --------------------------------------------------------

--
-- Table structure for table `verkiezingen`
--

CREATE TABLE `verkiezingen` (
  `verkiezingenid` int(11) NOT NULL,
  `soort` varchar(50) NOT NULL,
  `datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `verkiezingen`
--

INSERT INTO `verkiezingen` (`verkiezingenid`, `soort`, `datum`) VALUES
(1, 'tweede kamer', '2023-07-07'),
(2, 'tweede kamer', '2023-07-07'),
(3, 'tweede kamer', '2023-07-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `partijen`
--
ALTER TABLE `partijen`
  ADD PRIMARY KEY (`partijID`);

--
-- Indexes for table `partijleden`
--
ALTER TABLE `partijleden`
  ADD PRIMARY KEY (`ledenID`),
  ADD KEY `partijID` (`partijID`);

--
-- Indexes for table `stemgerechtigden`
--
ALTER TABLE `stemgerechtigden`
  ADD PRIMARY KEY (`stemgerechtigdenid`);

--
-- Indexes for table `stemmen`
--
ALTER TABLE `stemmen`
  ADD PRIMARY KEY (`stemid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verkiesbaren`
--
ALTER TABLE `verkiesbaren`
  ADD PRIMARY KEY (`verkiesbarenid`);

--
-- Indexes for table `verkiezingen`
--
ALTER TABLE `verkiezingen`
  ADD PRIMARY KEY (`verkiezingenid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `partijen`
--
ALTER TABLE `partijen`
  MODIFY `partijID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `partijleden`
--
ALTER TABLE `partijleden`
  MODIFY `ledenID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `stemgerechtigden`
--
ALTER TABLE `stemgerechtigden`
  MODIFY `stemgerechtigdenid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stemmen`
--
ALTER TABLE `stemmen`
  MODIFY `stemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `verkiesbaren`
--
ALTER TABLE `verkiesbaren`
  MODIFY `verkiesbarenid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `verkiezingen`
--
ALTER TABLE `verkiezingen`
  MODIFY `verkiezingenid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
