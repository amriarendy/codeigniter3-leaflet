-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 17, 2023 at 03:18 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leaflet`
--

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `province` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `regency` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `district` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `sub_district` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `vilage` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`id`, `code`, `province`, `regency`, `district`, `sub_district`, `vilage`, `latitude`, `longitude`) VALUES
('1', 'TU001', 'BANDUNG', 'BANDUNG UTARA', 'SUKASARI', 'ORARI', 'LEMAH NEUNDEUT', '-6.88077', '107.579187'),
('2', 'TU002', 'BANDUNG', 'BANDUNG UTARA', 'SUKASARI', 'SARIMADU', 'SARIMADU KOMPLEK SARIJADI', '-6.882981', '107.573238'),
('3', 'TU003', 'BANDUNG', 'BANDUNG UTARA', 'SUKASARI', 'KPAD', 'KARTIKA KOMP. KPAD GERLONG', '-6.868206', '107.588659'),
('4', 'TU004', 'BANDUNG', 'BANDUNG UTARA', 'SUKASARI', 'GERLONG', 'PASAR GERLONG JL. GERLONG TENGAH', '-6.86741', '107.591298'),
('5', 'TU005', 'BANDUNG', 'BANDUNG UTARA', 'SUKASARI', 'SERSAN BAJURI', 'SERSAN BAJURI', '-6.855445', '107.592013'),
('6', 'TU006', 'BANDUNG', 'BANDUNG UTARA', 'SUKASARI', 'UPI', 'KOMPLEK UPI', '-6.862401', '107.592886'),
('7', 'TU007', 'BANDUNG', 'BANDUNG UTARA', 'SUKAJADI', 'KARANGTINEUNG (JEMPUTAN)', 'KARANGTINEUNG (JEMPUTAN)', '-6.883527', '107.593569'),
('8', 'TU008', 'BANDUNG', 'BANDUNG UTARA', 'CIDADAP', 'PUNCLUT', 'PUNCLUT DEKAT SMPN 52', '-6.860752', '107.606472'),
('9', 'TU009', 'BANDUNG', 'BANDUNG UTARA', 'CIDADAP', 'LEDENG', 'TERMINAL LEDENG', '-6.85925', '107.595322'),
('10', 'TU010', 'BANDUNG', 'BANDUNG UTARA', 'CIDADAP', 'CIRATEUN', 'CIRATEUN', '-6.845731', '107.599585'),
('11', 'TU011', 'BANDUNG', 'BANDUNG UTARA', 'CIBEUNYING KALER', 'CIHAURGEULIS', 'SURAPATI (PASAR CIHAURGEULIS)', '-6.899374', '107.628068'),
('12', 'TU012', 'BANDUNG', 'BANDUNG UTARA', 'CIBEUNYING KALER', 'ITENAS', 'PH. MUSTOPHA (ITENAS)', '-6.896515', '107.636539'),
('13', 'TU013', 'BANDUNG', 'BANDUNG UTARA', 'CIBEUNYING KALER', 'DAGO GOLF (JEMPUTAN)', 'DAGO GOLF (JEMPUTAN)', '-6.869288', '107.623386'),
('14', 'TU014', 'BANDUNG', 'BANDUNG UTARA', 'SUKAJADI', 'PASTEUR', 'DJUNJUNAN', '-6.896963', '107.59194'),
('15', 'TU015', 'BANDUNG', 'BANDUNG UTARA', 'SUKAJADI', 'SEDERHANA', 'SEDERHANA', '-6.890433', '107.599634'),
('16', 'TU016', 'BANDUNG', 'BANDUNG UTARA', 'SUKAJADI', 'CIBOGO', 'CIBOGO', '-6.891418', '107.579992'),
('17', 'TU017', 'BANDUNG', 'BANDUNG UTARA', 'SUKAJADI', 'RUMAH SAKIT HASAN SADIKIN (RSHS)', 'RUMAH SAKIT', '-6.897324', '107.599055'),
('18', 'TU018', 'BANDUNG', 'BANDUNG UTARA', 'SUKAJADI', 'PARIS VAN JAVA (PVJ)', 'SUKAJADI', '-6.889355', '107.595842'),
('19', 'TU019', 'BANDUNG', 'BANDUNG UTARA', 'SUKAJADI', 'GIANT HYPERSQUARE', 'DJUNJUNAN', '-6.91437', '107.594345'),
('20', 'TU020', 'BANDUNG', 'BANDUNG UTARA', 'SUKAJADI', 'MARANATHA', 'SURYA SUMANTRI', '-6.886454', '107.58099'),
('21', 'TU021', 'BANDUNG', 'BANDUNG UTARA', 'CIBEUNYING KIDUL', 'CIKUTRA', 'CIKUTRA', '-6.906454', '107.643936'),
('22', 'TU022', 'BANDUNG', 'BANDUNG UTARA', 'CIBEUNYING KIDUL', 'SUCI', 'PH. MUSTOPHA', '-6.900163', '107.64465'),
('23', 'TU023', 'BANDUNG', 'BANDUNG UTARA', 'CIBEUNYING KIDUL', 'PUSAT PERSENJATAAN INFANTRI (PPI)', 'SUPRATMAN (KOMPLEK PPI)', '-6.903209', '107.632913'),
('24', 'TU024', 'BANDUNG', 'BANDUNG UTARA', 'BANDUNG WETAN', 'PASAR BUNGA', 'WASTUKANCANA', '-6.904978', '107.607525'),
('25', 'TU025', 'BANDUNG', 'BANDUNG UTARA', 'BANDUNG WETAN', 'SUPERINDO', 'DJUANDA', '-6.901653', '107.612577'),
('26', 'TU026', 'BANDUNG', 'BANDUNG UTARA', 'BANDUNG WETAN', 'AMBON', 'AMBON', '-6.908415', '107.614448'),
('27', 'TU027', 'BANDUNG', 'BANDUNG UTARA', 'BANDUNG WETAN', 'TAMAN CIBEUNYING', 'TAMAN CIBEUNYING', '-6.907386', '107.626327'),
('28', 'TU028', 'BANDUNG', 'BANDUNG UTARA', 'BANDUNG WETAN', 'CIMANDIRI', 'CIMANDIRI', '-6.903596', '107.618611'),
('29', 'TU029', 'BANDUNG', 'BANDUNG UTARA', 'BANDUNG WETAN', 'BALUBUR', 'BALUBUR TOWN SQUARE (BALTOS)', '-6.898823', '107.608534'),
('30', 'TU030', 'BANDUNG', 'BANDUNG UTARA', 'COBLONG', 'SANGKURIAN', 'CISITU', '-6.882778', '107.610229'),
('31', 'TU031', 'BANDUNG', 'BANDUNG UTARA', 'COBLONG', 'BOROMEUS', 'DJUANDA (RUMAH SAKIT BOROMEUS)', '-6.894761', '107.613858'),
('32', 'TU032', 'BANDUNG', 'BANDUNG UTARA', 'COBLONG', 'TERMINAL DAGO', 'TERMINAL DAGO', '-6.867195', '107.621516'),
('33', 'TU033', 'BANDUNG', 'BANDUNG UTARA', 'COBLONG', 'DIPATIUKUR', 'SINGAPERBANGSA', '-6.895688', '107.616884'),
('34', 'TU034', 'BANDUNG', 'BANDUNG UTARA', 'COBLONG', 'PASAR SADANG SERANG', 'PASAR SADANG SERANG', '-6.892071', '107.624908'),
('35', 'TU035', 'BANDUNG', 'BANDUNG UTARA', 'COBLONG', 'KOMPLEK SADANG SERANG', 'SADANG TENGAH', '-6.890184', '107.625154'),
('36', 'TU036', 'BANDUNG', 'BANDUNG UTARA', 'COBLONG', 'KEBON BINATANG', 'TAMANSARI', '-6.893971', '107.608394'),
('37', 'TU037', 'BANDUNG', 'BANDUNG UTARA', 'COBLONG', 'BABAKAN SILIWANGI', 'BABAKAN SILIWANGI', '-6.885066', '107.608938'),
('38', 'TU038', 'BANDUNG', 'BANDUNG UTARA', 'COBLONG', 'PUTER', 'PUTER', '-6.898462', '107.622263'),
('39', 'TS001', 'BANDUNG', 'BANDUNG SELATAN', 'SUMUR BANDUNG', 'KOSAMBI', 'PASAR KOSAMBI', '-6.919615', '107.62239'),
('40', 'TS002', 'BANDUNG', 'BANDUNG SELATAN', 'SUMUR BANDUNG', 'PATRAKOMALA', 'PATRAKOMALA', '-6.912586', '107.624853'),
('41', 'TS003', 'BANDUNG', 'BANDUNG SELATAN', 'SUMUR BANDUNG', 'GEDUNG PAKUAN', 'GEDUNG PAKUAN', '-6.911939', '107.605076'),
('42', 'TS004', 'BANDUNG', 'BANDUNG SELATAN', 'SUMUR BANDUNG', 'GUDANG SELATAN', 'GUDANG SELATAN', '-6.916756', '107.619216'),
('43', 'TS005', 'BANDUNG', 'BANDUNG SELATAN', 'SUMUR BANDUNG', 'BI BRAGA', 'BRAGA', '-6.913973', '107.609106'),
('44', 'TS006', 'BANDUNG', 'BANDUNG SELATAN', 'KIARACONDONG', 'KEBAKTIAN', 'KEBAKTIAN', '-6.922385', '107.649556'),
('45', 'TS008', 'BANDUNG', 'BANDUNG SELATAN', 'KIARACONDONG', 'PSM', 'PSM', '-6.929856', '107.648888'),
('46', 'TS009', 'BANDUNG', 'BANDUNG SELATAN', 'KIARACONDONG', 'PASAR CICADAS', 'PASAR CICADAS', '-6.911315', '107.643993'),
('47', 'TS010', 'BANDUNG', 'BANDUNG SELATAN', 'KIARACONDONG', 'PASAR KIARACONDONG', 'KIARACONDONG', '-6.926538', '107.644702'),
('48', 'TS011', 'BANDUNG', 'BANDUNG SELATAN', 'KIARACONDONG', 'TARUMATEX', 'AHMAD YANI', '-6.911961', '107.636369'),
('49', 'TS012', 'BANDUNG', 'BANDUNG SELATAN', 'KIARACONDONG', 'CICAHEUM', 'TERMINAL CICAHEUM (BELAKANG)', '-6.902577', '107.65673'),
('50', 'TS013', 'BANDUNG', 'BANDUNG SELATAN', 'REGOL', 'TEGALLEGA/KOBANA', 'M. TOHA', '-6.932901', '107.606407'),
('51', 'TS014', 'BANDUNG', 'BANDUNG SELATAN', 'REGOL', 'TAMAN TEGALLEGA', 'TAMAN TEGALLEGA', '-6.937096', '107.603423'),
('52', 'TS015', 'BANDUNG', 'BANDUNG SELATAN', 'REGOL', 'PASAR KARAPITAN', 'PASAR KARAPITAN', '-6.93217', '107.615351'),
('53', 'TS016', 'BANDUNG', 'BANDUNG SELATAN', 'REGOL', 'PASIRLUYU', 'PASIRLUYU', '-6.944699', '107.620927'),
('54', 'TS017', 'BANDUNG', 'BANDUNG SELATAN', 'REGOL', 'PLN SUKARNO HATTA', 'SUKARNO HATTA', '-6.949005', '107.611994'),
('55', 'TS018', 'BANDUNG', 'BANDUNG SELATAN', 'REGOL', 'CISEUREUH', 'M. TOHA', '-6.955037', '107.611764'),
('56', 'TS019', 'BANDUNG', 'BANDUNG SELATAN', 'LENGKONG', 'PUTERACO', 'GUNTURSARI WETAN', '-6.944903', '107.634558'),
('57', 'TS020', 'BANDUNG', 'BANDUNG SELATAN', 'LENGKONG', 'HASAN SAPUTRA', 'HASAN', '-6.937215', '107.634952'),
('58', 'TS021', 'BANDUNG', 'BANDUNG SELATAN', 'LENGKONG', 'PASAR PALASARI', 'LODAYA', '-6.931732', '107.62302'),
('59', 'TS022', 'BANDUNG', 'BANDUNG SELATAN', 'LENGKONG', 'BINTARA', 'SESKO ABRI RW 08', '-6.925608', '107.628695'),
('60', 'TS023', 'BANDUNG', 'BANDUNG SELATAN', 'BATUNUNGGAL', 'SUKABUMI', 'SUKABUMI', '-6.917163', '107.63451'),
('61', 'TS024', 'BANDUNG', 'BANDUNG SELATAN', 'BATUNUNGGAL', 'BANTEN', 'BANTEN', '-6.917934', '107.640912'),
('62', 'TS025', 'BANDUNG', 'BANDUNG SELATAN', 'BATUNUNGGAL', 'PEMKOT', 'CIANJUR', '-6.915805', '107.632432'),
('63', 'TS026', 'BANDUNG', 'BANDUNG SELATAN', 'BATUNUNGGAL', 'PT. DELAMI', 'SUKARNO HATTA', '-6.945798', '107.638431'),
('64', 'TS027', 'BANDUNG', 'BANDUNG SELATAN', 'BATUNUNGGAL', 'LP KB. WARU', 'JAKARTA', '-6.91405', '107.63898'),
('65', 'TS028', 'BANDUNG', 'BANDUNG SELATAN', 'BATUNUNGGAL', 'MAJALENGKA', 'MAJALENGKA', '-6.919548', '107.63076'),
('66', 'TS029', 'BANDUNG', 'BANDUNG SELATAN', 'BATUNUNGGAL', 'CIBANGKONG RW 11', 'CIBANGKONG', '-6.920972', '107.631426'),
('67', 'TS030', 'BANDUNG', 'BANDUNG SELATAN', 'BATUNUNGGAL', 'MALEER INDAH', 'KOMPLEK MALEER INDAH', '-6.928854', '107.638725'),
('68', 'TS031', 'BANDUNG', 'BANDUNG SELATAN', 'BATUNUNGGAL', 'MALEER RW 05', 'JEMBATAN CIBANGKONG', '-6.922346', '107.636901'),
('69', 'TS032', 'BANDUNG', 'BANDUNG SELATAN', 'BATUNUNGGAL', 'MALEER RW 06', 'JEMBATAN IV', '-6.924978', '107.638314'),
('70', 'TS033', 'BANDUNG', 'BANDUNG SELATAN', 'BATUNUNGGAL', 'GUMURUH', 'GUMURUH', '-6.939377', '107.637677'),
('71', 'TS034', 'BANDUNG', 'BANDUNG SELATAN', 'BATUNUNGGAL', 'BINONGJATI', 'BINONGJATI', '-6.941195', '107.640197'),
('72', 'TS035', 'BANDUNG', 'BANDUNG SELATAN', 'BANDUNG KIDUL', 'BATUNUNGGAL INDAH', 'BATUNUNGGAL INDAH', '-6.961939', '107.624687'),
('73', 'TS036', 'BANDUNG', 'BANDUNG SELATAN', 'BANDUNG KIDUL', 'PASAR MODEN BATUNUNGGAL', 'KOMPLEK BATUNUNGGAL', '-6.958627', '107.623818'),
('74', 'TS037', 'BANDUNG', 'BANDUNG SELATAN', 'BANDUNG KIDUL', 'LEN LIPI', 'SUKARNO HATTA', '-6.949259', '107.61953'),
('75', 'TS038', 'BANDUNG', 'BANDUNG SELATAN', 'BANDUNG KIDUL', 'CURUG ECE', 'BUAH BATU', '-6.954415', '107.63885'),
('76', 'TS040', 'BANDUNG', 'BANDUNG SELATAN', 'BANDUNG KIDUL', 'JAKAPURWA', 'JAKAPURWA', '-6.962812', '107.64902'),
('77', 'TS043', 'BANDUNG', 'BANDUNG SELATAN', 'BANDUNG KIDUL', 'POOLSEKELIMUS', 'SEKELIMUS BARAT', '-6.948118', '107.636457'),
('78', 'TB001', 'BANDUNG', 'BANDUNG BARAT', 'CICENDO', 'GUNUNG BATU BARAT', 'GUNUNG BATU BARAT', '-6.889066', '107.564819'),
('79', 'TB002', 'BANDUNG', 'BANDUNG BARAT', 'CICENDO', 'GUNUNG BATU TIMUR', 'GUNUNG BATU TIMUR', '-6.890467', '107.571774'),
('80', 'TB003', 'BANDUNG', 'BANDUNG BARAT', 'CICENDO', 'PASAR PAMOYANAN', 'PASAR PAMOYANAN', '-6.903482', '107.596173'),
('81', 'TB004', 'BANDUNG', 'BANDUNG BARAT', 'CICENDO', 'PABRIK KINA', 'PAJAJARAN', '-6.907275', '107.602447'),
('82', 'TB005', 'BANDUNG', 'BANDUNG BARAT', 'CICENDO', 'CICENDO', 'CICENDO', '-6.91026', '107.603992'),
('83', 'TB006', 'BANDUNG', 'BANDUNG BARAT', 'CICENDO', 'IPTN', 'KOMPLEK PTDI', '-6.899048', '107.583847'),
('84', 'TB007', 'BANDUNG', 'BANDUNG BARAT', 'CICENDO', 'INDUSTRI DALAM', 'INDUSTRI DALAM', '-6.912398', '107.595185'),
('85', 'TB008', 'BANDUNG', 'BANDUNG BARAT', 'CICENDO', 'ARUNA', 'ARUNA', '-6.908853', '107.588417'),
('86', 'TB009', 'BANDUNG', 'BANDUNG BARAT', 'ANDIR', 'BABAKAN CIANJUR', 'BABAKAN CIANJUR', '-6.896893', '107.568667'),
('87', 'TB010', 'BANDUNG', 'BANDUNG BARAT', 'ANDIR', 'RUMAH SAKIT KEBONJATI', 'RUMAH SAKIT KEBONJATI', '-6.91606', '107.596325'),
('88', 'TB011', 'BANDUNG', 'BANDUNG BARAT', 'ANDIR', 'PASAR ANDIR', 'PASAR ANDIR', '-6.91781', '107.590265'),
('89', 'TB012', 'BANDUNG', 'BANDUNG BARAT', 'ANDIR', 'ENCE AZIS', 'ENCE AZIS', '-6.919155', '107.600982'),
('90', 'TB013', 'BANDUNG', 'BANDUNG BARAT', 'ANDIR', 'CIROYOM', 'PASAR CIROYOM', '-6.914407', '107.587663'),
('91', 'TB014', 'BANDUNG', 'BANDUNG BARAT', 'ANDIR', 'PASAR BARU', 'PASAR BARU', '-6.917366', '107.603742'),
('92', 'TB015', 'BANDUNG', 'BANDUNG BARAT', 'ANDIR', 'HYPERSQUARE', 'PASIR KALIKI', '-6.91437', '107.594345'),
('93', 'TB016', 'BANDUNG', 'BANDUNG BARAT', 'ANDIR', 'WARINGIN', 'WARINGIN', '-6.91781', '107.590265'),
('94', 'TB017', 'BANDUNG', 'BANDUNG BARAT', 'BOJONGLOA KALER', 'PASAR SUKAHAJI', 'PASAR SUKAHAJI', '-6.927458', '107.585917'),
('95', 'TB018', 'BANDUNG', 'BANDUNG BARAT', 'BANDUNG KULON', 'PASAR CIJERAH', 'CIJERAH', '-6.926913', '107.564936'),
('96', 'TB019', 'BANDUNG', 'BANDUNG BARAT', 'BANDUNG KULON', 'TAMAN HOLIS', 'TAMAN HOLIS', '-6.949503', '107.565123'),
('97', 'TB020', 'BANDUNG', 'BANDUNG BARAT', 'BANDUNG KULON', 'PASAR RAHAYU', 'CIGONDEWAH', '-6.951814', '107.564632'),
('98', 'TB021', 'BANDUNG', 'BANDUNG BARAT', 'BANDUNG KULON', 'BUMI ASRI', 'KOMPLEK BUMI ASRI', '-6.92007', '107.706557'),
('99', 'TB022', 'BANDUNG', 'BANDUNG BARAT', 'BANDUNG KULON', 'MELONG ASIH', 'KOMPLEK MELONG ASIH', '-6.922132', '107.565206'),
('100', 'TB023', 'BANDUNG', 'BANDUNG BARAT', 'BANDUNG KULON', 'MASTERINDO', 'SUKARNO HATTA', '-6.937977', '107.579738'),
('101', 'TB024', 'BANDUNG', 'BANDUNG BARAT', 'BANDUNG KULON', 'SURYANI', 'TERUSAN SURYANI', '-6.92645', '107.577698'),
('102', 'TB025', 'BANDUNG', 'BANDUNG BARAT', 'BANDUNG KULON', 'CIGONDEWAH RW 08', 'CIGONDEWAH KALER RW 08', '-6.935616', '107.563677'),
('103', 'TB026', 'BANDUNG', 'BANDUNG BARAT', 'BABAKAN CIPARAY', 'PORIB', 'PORIB', '-6.948799', '107.582281'),
('104', 'TB027', 'BANDUNG', 'BANDUNG BARAT', 'BABAKAN CIPARAY', 'SATRIA RAYA', 'KOMPLEK SATRIA RAYA', '-6.948345', '107.572199'),
('105', 'TB028', 'BANDUNG', 'BANDUNG BARAT', 'BABAKAN CIPARAY', 'KOPO ELOK', 'KOPO', '-6.960323', '107.579967'),
('106', 'TB029', 'BANDUNG', 'BANDUNG BARAT', 'BABAKAN CIPARAY', 'DIAN PERMAI', 'DIAN PERMAI', '-6.941385', '107.571214'),
('107', 'TB030', 'BANDUNG', 'BANDUNG BARAT', 'BABAKAN CIPARAY', 'SUMBERSARI', 'SUMBERSARI', '-6.932243', '107.574038'),
('108', 'TB031', 'BANDUNG', 'BANDUNG BARAT', 'BABAKAN CIPARAY', 'PIKIRAN RAKYAT', 'SUKARNO HATTA', '-6.93745', '107.580362'),
('109', 'TB032', 'BANDUNG', 'BANDUNG BARAT', 'BABAKAN CIPARAY', 'PASIR KOJA', 'TERUSAN PASIR KOJA', '-6.929329', '107.579196'),
('110', 'TB033', 'BANDUNG', 'BANDUNG BARAT', 'ASTANA ANYAR', 'PASAR ASTANA ANYAR', 'ASTANA ANYAR', '-6.930574', '107.60106'),
('111', 'TB034', 'BANDUNG', 'BANDUNG BARAT', 'ASTANA ANYAR', 'PETA', 'PETA', '-6.937229', '107.599497'),
('112', 'TB035', 'BANDUNG', 'BANDUNG BARAT', 'ASTANA ANYAR', 'PAGARSIH', 'PAGARSIH', '-6.92328', '107.595648'),
('113', 'TB036', 'BANDUNG', 'BANDUNG BARAT', 'ASTANA ANYAR', 'NYENGSERET', 'NYENGSERET', '-6.931288', '107.599691'),
('114', 'TB037', 'BANDUNG', 'BANDUNG BARAT', 'BOJONGLOA KIDUL', 'RUMAH SAKIT IMANUEL', 'KOPO', '-6.935786', '107.596329'),
('115', 'TB038', 'BANDUNG', 'BANDUNG BARAT', 'BOJONGLOA KIDUL', 'PASAR LEUWI PANJANG', 'LEUWI PANJANG', '-6.93842', '107.59705'),
('116', 'TB039', 'BANDUNG', 'BANDUNG BARAT', 'BOJONGLOA KIDUL', 'TERMINAL LEUWI PANJANG', 'TERMINAL LEUWI PANJANG', '-6.94544', '107.592922'),
('117', 'TB040', 'BANDUNG', 'BANDUNG BARAT', 'BOJONGLOA KIDUL', 'CIBADUYUT', 'CIBADUYUT', '-6.962001', '107.59384'),
('118', 'TB041', 'BANDUNG', 'BANDUNG BARAT', 'BOJONGLOA KIDUL', 'MEKAR WANGI', 'KARASAK LAMA', '-6.956275', '107.607503'),
('119', 'TB042', 'BANDUNG', 'BANDUNG BARAT', 'BOJONGLOA KIDUL', 'KARASAK', 'KARASAK', '-6.948939', '107.604308'),
('120', 'TT001', 'BANDUNG', 'BANDUNG TIMUR', 'ARCAMANIK', 'PACUAN KUDA', 'PACUAN KUDA', '-6.909549', '107.673853'),
('121', 'TT002', 'BANDUNG', 'BANDUNG TIMUR', 'ARCAMANIK', 'KOMPLEK ARCAMANIK', 'CISARANTEN RW 15', '-6.925413', '107.674764'),
('122', 'TT003', 'BANDUNG', 'BANDUNG TIMUR', 'ARCAMANIK', 'CISARANTEN JATI', 'CISARANTEN JATI', '-6.916406', '107.682559'),
('123', 'TT004', 'BANDUNG', 'BANDUNG TIMUR', 'ARCAMANIK', 'CINGISED', 'CISARANTEN KULON RW 04', '-6.929193', '107.676572'),
('124', 'TT005', 'BANDUNG', 'BANDUNG TIMUR', 'ARCAMANIK', 'CICUKANG', 'CICUKANG', '-6.912408', '107.683038'),
('125', 'TT006', 'BANDUNG', 'BANDUNG TIMUR', 'ARCAMANIK', 'BOJONG AWI', 'BOJONG AWI', '-6.907363', '107.685567'),
('126', 'TT007', 'BANDUNG', 'BANDUNG TIMUR', 'ARCAMANIK', 'PU BINAMARGA', 'KOMPLEK BINAMARGA', '-6.915195', '107.688462'),
('127', 'TT008', 'BANDUNG', 'BANDUNG TIMUR', 'ARCAMANIK', 'GADING REGENSI', 'KOMPLEK GADING REGENSI', '-6.935927', '107.671181'),
('128', 'TT009', 'BANDUNG', 'BANDUNG TIMUR', 'ANTAPANI', 'SUBANG', 'SUBANG', '-6.912648', '107.655265'),
('129', 'TT010', 'BANDUNG', 'BANDUNG TIMUR', 'ANTAPANI', 'INDRAMAYU', 'INDRAMAYU', '-6.917873', '107.657642'),
('130', 'TT011', 'BANDUNG', 'BANDUNG TIMUR', 'ANTAPANI', 'CIBATU', 'CIBATU', '-6.915205', '107.665714'),
('131', 'TT012', 'BANDUNG', 'BANDUNG TIMUR', 'ANTAPANI', 'PRATISTA', 'PRATISTA', '-6.927434', '107.668131'),
('132', 'TT013', 'BANDUNG', 'BANDUNG TIMUR', 'CIBIRU', 'CIPADUNG RW 08', 'CIPADUNG RW 08', '-6.918357', '107.722479'),
('133', 'TT014', 'BANDUNG', 'BANDUNG TIMUR', 'CIBIRU', 'LEGIT', 'AH. NASUTION', '-6.927804', '107.711587'),
('134', 'TT015', 'BANDUNG', 'BANDUNG TIMUR', 'GEDEBAGE', 'CEMPAKA ARUM', 'CEMPAKA ARUM', '-6.956463', '107.706541'),
('135', 'TT016', 'BANDUNG', 'BANDUNG TIMUR', 'GEDEBAGE', 'RANCABOLANG', 'RANCABOLANG', '-6.967186', '107.689146'),
('136', 'TT017', 'BANDUNG', 'BANDUNG TIMUR', 'RANCASARI', 'DERWATI', 'DERWATI', '-6.968468', '107.685994'),
('137', 'TT018', 'BANDUNG', 'BANDUNG TIMUR', 'RANCASARI', 'PASAR CIWASTRA', 'PASAR CIWASTRA', '-6.961261', '107.66661'),
('138', 'TT019', 'BANDUNG', 'BANDUNG TIMUR', 'RANCASARI', 'BANDUNG INTEN', 'KOMPLEK BANDUNG INTEN', '-6.962297', '107.684365'),
('139', 'TT020', 'BANDUNG', 'BANDUNG TIMUR', 'BUAH BATU', 'CIPAGALO', 'CIPAGALO', '-6.952764', '107.648219'),
('140', 'TT021', 'BANDUNG', 'BANDUNG TIMUR', 'BUAH BATU', 'CIJAURA GIRANG', 'KOMPLEK CIJAURA', '-6.949825', '107.654045'),
('141', 'TT022', 'BANDUNG', 'BANDUNG TIMUR', 'BUAH BATU', 'EMERALD TOWER', 'EMERALD TOWER', '-6.932958', '107.663931'),
('142', 'TT023', 'BANDUNG', 'BANDUNG TIMUR', 'MANDALAJATI', 'CIKADUT', 'CIKADUT/ MAKAM CIKADUT', '-6.902276', '107.665968'),
('143', 'TT024', 'BANDUNG', 'BANDUNG TIMUR', 'MANDALAJATI', 'BANDUNG HILL SIDE', 'KOMPLEK TAMANSARI BUKIT BANDUNG', '-6.901288', '107.683451'),
('144', 'TT025', 'BANDUNG', 'BANDUNG TIMUR', 'MANDALAJATI', 'SUKA ASIH', 'KOMPLEK SUKA ASIH', '-6.903882', '107.686414'),
('145', 'TT026', 'BANDUNG', 'BANDUNG TIMUR', 'UJUNG BERUNG', 'CIJAMBE', 'CIJAMBE', '-6.909275', '107.690682'),
('146', 'TT027', 'BANDUNG', 'BANDUNG TIMUR', 'UJUNG BERUNG', 'PASAR UJUNG BERUNG', 'PASAR UJUNG BERUNG', '-6.913759', '107.702342'),
('147', 'TT028', 'BANDUNG', 'BANDUNG TIMUR', 'UJUNG BERUNG', 'CIGENDING', 'CIGENDING', '-6.909617', '107.703856'),
('148', 'TT029', 'BANDUNG', 'BANDUNG TIMUR', 'UJUNG BERUNG', 'UJUNG BERUNG INDAH', 'KOMPLEK UJUNG BERUNG INDAH', '-6.908726', '107.696078'),
('149', 'TT030', 'BANDUNG', 'BANDUNG TIMUR', 'CINAMBO', 'CINAMBO INDAH', 'CINAMBO', '-6.924559', '107.690714'),
('150', 'TT031', 'BANDUNG', 'BANDUNG TIMUR', 'CINAMBO', 'GOLF', 'GOLF', '-6.917651', '107.688964'),
('151', 'TT032', 'BANDUNG', 'BANDUNG TIMUR', 'PANYILEUKAN', 'PANYILEUKAN', 'KOMPLEK PANYILEUKAN', '-6.936523', '107.712407'),
('152', 'TT033', 'BANDUNG', 'BANDUNG TIMUR', 'PANYILEUKAN', 'PANGARITAN', 'PANGARITAN', '-6.926104', '107.707907'),
('153', 'TT034', 'BANDUNG', 'BANDUNG TIMUR', 'PANYILEUKAN', 'PASAR GEDEBAGE', 'PASAR GEDEBAGE', '-6.936373', '107.696179'),
('154', 'TT035', 'BANDUNG', 'BANDUNG TIMUR', 'PANYILEUKAN', 'POLDA JABAR', 'SUKARNO HATTA', '-6.937023', '107.703626');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
