
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--

--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `code_client` bigint(20) NOT NULL,
  `nom_client` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`code_client`, `nom_client`) VALUES
(1, 'A'),
(2, 'ClientA');

-- --------------------------------------------------------

--
-- Table structure for table `compte`
--

CREATE TABLE `compte` (
  `type_cpte` varchar(2) NOT NULL,
  `code_compte` varchar(255) NOT NULL,
  `date_creation` date DEFAULT NULL,
  `solde` double NOT NULL,
  `decouvert` double DEFAULT NULL,
  `taux` double DEFAULT NULL,
  `code_cli` bigint(20) DEFAULT NULL,
  `code_emp` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compte`
--

INSERT INTO `compte` (`type_cpte`, `code_compte`, `date_creation`, `solde`, `decouvert`, `taux`, `code_cli`, `code_emp`) VALUES
('CC', 'CC1', '2018-10-27', 20999, 0, NULL, 3, 3),
('CE', 'CE1', '2018-10-27', 25000, NULL, 0, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `code_employe` bigint(20) NOT NULL,
  `nom_employe` varchar(255) DEFAULT NULL,
  `code_emp_sup` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`code_employe`, `nom_employe`, `code_emp_sup`) VALUES
(1, 'Employe1', NULL),
(2, 'Employe2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_gr`
--

CREATE TABLE `emp_gr` (
  `employes_code_employe` bigint(20) NOT NULL,
  `groupes_code_groupe` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groupes`
--

CREATE TABLE `groupes` (
  `code_groupe` bigint(20) NOT NULL,
  `nom_groupe` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `operations`
--

CREATE TABLE `operations` (
  `dtype` varchar(31) NOT NULL,
  `numero_operation` bigint(20) NOT NULL,
  `date_operation` datetime DEFAULT NULL,
  `montant` double NOT NULL,
  `code_cpte` varchar(255) DEFAULT NULL,
  `code_emp` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operations`
--

INSERT INTO `operations` (`dtype`, `numero_operation`, `date_operation`, `montant`, `code_cpte`, `code_emp`) VALUES
('R', 1, '2018-10-28 00:55:04', 5000, 'CC1', 1),
('V', 2, '2018-10-28 01:22:25', 2000, 'CE2', 5).

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`code_client`);

--
-- Indexes for table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`code_compte`),
  ADD KEY `FK2hw4shqsxc782lychpkr52lmv` (`code_cli`),
  ADD KEY `FKbm21kemcgkptyq3x0ge8ciaqu` (`code_emp`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`code_employe`),
  ADD KEY `FKhsh3jgj0ctoiewmr371xmvby5` (`code_emp_sup`);

--
-- Indexes for table `emp_gr`
--
ALTER TABLE `emp_gr`
  ADD KEY `FKjhp1uprhg2x5coadrabgmb7qv` (`groupes_code_groupe`),
  ADD KEY `FK5qwh8m8pw9xxgjpqr0lh1tobx` (`employes_code_employe`);

--
-- Indexes for table `groupes`
--
ALTER TABLE `groupes`
  ADD PRIMARY KEY (`code_groupe`);

--
-- Indexes for table `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`numero_operation`),
  ADD KEY `FKjebuh2o30jfjy921nkks7p25c` (`code_cpte`),
  ADD KEY `FK293goou09mrmn60vqtlxmj62` (`code_emp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `code_client` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `code_employe` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `groupes`
--
ALTER TABLE `groupes`
  MODIFY `code_groupe` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `operations`
--
ALTER TABLE `operations`
  MODIFY `numero_operation` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
