-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2021 at 08:30 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment2`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `AddressID` smallint(6) NOT NULL,
  `Number` varchar(8) DEFAULT NULL,
  `Street` varchar(18) DEFAULT NULL,
  `Community` varchar(15) DEFAULT NULL,
  `Unit` varchar(4) DEFAULT NULL,
  `City` varchar(17) DEFAULT NULL,
  `ProvinceState` varchar(7) DEFAULT NULL,
  `PostalCodeZip` varchar(7) DEFAULT NULL,
  `CountryCode` varchar(2) DEFAULT NULL,
  `LandLordID` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`AddressID`, `Number`, `Street`, `Community`, `Unit`, `City`, `ProvinceState`, `PostalCodeZip`, `CountryCode`, `LandLordID`) VALUES
(1, '12', 'Dobosza', '', '#10', 'Warsaw', '', '', 'PL', ''),
(2, '278', 'Suder Greens Dr.', '', '#101', 'Edmonton', 'AB', 'T5T6V6', 'CA', ''),
(3, '11115', '9th Ave.', '', '#11', 'Edmonton', 'AB', 'T6J6Z1', 'CA', ''),
(4, '12', 'Higgo Rd.', '', '', 'Cape Town', '', '', 'ZA', ''),
(5, '1120', 'Tory Rd.', '', '#13', 'Edmonton', 'AB', 'T6R3G1', 'CA', ''),
(6, '13403', 'Cumberland Rd.', '', '#13', 'Edmonton', 'AB', 'T6V1P9', 'CA', ''),
(7, '17', 'Teak Rd.', '', '', 'Cape Town', '', '', 'ZA', ''),
(8, '32', 'Quarry Hill Rd.', '', '', 'Cape Town', '', '', 'ZA', ''),
(9, '15710', 'Beaumaris Rd.', '', '#5', 'Edmonton', 'AB', 'T5X5E2', 'CA', ''),
(10, '15625', 'Castle Downs Rd.', '', '#66', 'Edmonton', 'AB', 'T5X6C2', 'CA', ''),
(11, '1001', '14 Ave.', '', '', 'Edmonton', 'AB', 'T6U6L9', 'CA', ''),
(12, '10035', '32 Ave.', '', '', 'Edmonton', 'AB', 'T6M5E7', 'CA', ''),
(13, '1005', 'Fernie Rd.', '', '', 'Kamloops', 'BC', 'V2C 1B4', 'CA', ''),
(14, '1005', 'James Cr.', '', '', 'Edmonton', 'AB', 'T6L6P6', 'CA', ''),
(15, '10057', '67 St.', '', '', 'Edmonton', 'AB', 'T5W2G2', 'CA', ''),
(16, '10076', '63 St.', '', '', 'Edmonton', 'AB', 'T5R4Z4', 'CA', ''),
(17, '10081', '172 Ave.', '', '', 'Edmonton', 'AB', 'T5X4V7', 'CA', ''),
(18, '1015', 'Graham Ct.', '', '', 'Edmonton', 'AB', 'T5T6L4', 'CA', ''),
(19, '10183', '57 Ave.', '', '', 'Edmonton', 'AB', 'T6H8R5', 'CA', ''),
(20, '10191', '64 St.', '', '', 'Edmonton', 'AB', 'T5B0M8', 'CA', ''),
(21, '10192', '12 Ave.', '', '', 'Edmonton', 'AB', 'T6J0H1', 'CA', ''),
(22, '10303', '122 St.', '', '', 'Edmonton', 'AB', 'T5X8Q0', 'CA', ''),
(23, '10307', '120 Ave.', '', '', 'Edmonton', 'AB', 'T5G0S4', 'CA', ''),
(24, '10314', '59 Ave.', '', '', 'Edmonton', 'AB', 'T6F3D2', 'CA', ''),
(25, '1035', '30 St.', '', '', 'Sherwood Park', 'AB', 'T8A0B2', 'CA', ''),
(26, '10421', '64 Ave.', '', '', 'Edmonton', 'AB', 'T6H1S8', 'CA', ''),
(27, '10447', '116 Ave.', '', '', 'Edmonton', 'AB', 'T6F7B1', 'CA', ''),
(28, '10492', '15 Ave.', '', '', 'Edmonton', 'AB', 'T6Q3O9', 'CA', ''),
(29, '10504', '86 Ave.', '', '', 'Edmonton', 'AB', 'T6Z1G9', 'CA', ''),
(30, '10506', '145 St.', '', '', 'Edmonton', 'AB', 'T5G2R6', 'CA', ''),
(31, '10519', 'Saskatchewan Dr.', '', '', 'Edmonton', 'AB', 'T6E4S1', 'CA', ''),
(32, '10602', '214 Ave.', '', '', 'Edmonton', 'AB', 'T6O1T0', 'CA', ''),
(33, '10616', '185 St.', '', '', 'Edmonton', 'AB', 'T5U5L4', 'CA', ''),
(34, '10635', '99 St.', '', '', 'Edmonton', 'AB', 'T5E7V1', 'CA', ''),
(35, '10651', 'Hardisty Dr.', '', '', 'Edmonton', 'AB', 'T6A3T9', 'CA', ''),
(36, '1066', 'Ormsby Cr.', '', '', 'Edmonton', 'AB', 'T5T6J5', 'CA', ''),
(37, '10685', '171 St.', '', '', 'Edmonton', 'AB', 'T5R9N5', 'CA', ''),
(38, '10736', '32 Ave.', '', '', 'Edmonton', 'AB', 'T6O7H5', 'CA', ''),
(39, '10775', '69 Ave.', '', '', 'Edmonton', 'AB', 'T6B4E3', 'CA', ''),
(40, '10810', '33 Ave.', '', '', 'Edmonton', 'AB', 'T6J3C1', 'CA', ''),
(41, '10831', '178 St.', '', '', 'Edmonton', 'AB', 'T5S1J6', 'CA', ''),
(42, '10918', '50 Ave.', '', '', 'Edmonton', 'AB', 'T6P9T9', 'CA', ''),
(43, '10979', '16 St.', '', '', 'Edmonton', 'AB', 'T5G4G2', 'CA', ''),
(44, '1103', '191 St.', '', '', 'Edmonton', 'AB', 'T5Y4E2', 'CA', ''),
(45, '11030', '126 Ave.', '', '', 'Edmonton', 'AB', 'T6Y3B5', 'CA', ''),
(46, '11043', 'Groat Rd.', '', '', 'Edmonton', 'AB', 'T5M3J9', 'CA', ''),
(47, '1107', '70 Ave.', '', '', 'Sherwood Park', 'AB', 'T8A8Y4', 'CA', ''),
(48, '11070', '212 Ave.', '', '', 'Edmonton', 'AB', 'T6Y1O0', 'CA', ''),
(49, '1109', '149 Ave.', '', '', 'Edmonton', 'AB', 'T6V5J8', 'CA', ''),
(50, '11100', '28 St.', '', '', 'Edmonton', 'AB', 'T5Z8A0', 'CA', ''),
(51, '11101', '111 St.', '', '', 'Edmonton', 'AB', 'T5E2I6', 'CA', ''),
(52, '11120', '160 St.', '', '', 'Edmonton', 'AB', 'T5T2O1', 'CA', ''),
(53, '11127', '153 St.', '', '', 'Edmonton', 'AB', 'T5W9E5', 'CA', ''),
(54, '11136', '131 St.', '', '', 'Edmonton', 'AB', 'T5I4I5', 'CA', ''),
(55, '11231', '109 Ave.', '', '', 'Edmonton', 'AB', 'T5H4B1', 'CA', ''),
(56, '11249', '88 St.', '', '', 'Edmonton', 'AB', 'T5B3P6', 'CA', ''),
(57, '1127', '104 St.', '', '', 'Edmonton', 'AB', 'T5N1J2', 'CA', ''),
(58, '11286', '210 Ave.', '', '', 'Edmonton', 'AB', 'T6X4W1', 'CA', ''),
(59, '11349', '136 St.', '', '', 'Edmonton', 'AB', 'T5O2M5', 'CA', ''),
(60, '11371', '97 Ave.', '', '', 'Edmonton', 'AB', 'T6W7V9', 'CA', ''),
(61, '11402', '61 Ave.', '', '', 'Edmonton', 'AB', 'T6O6N7', 'CA', ''),
(62, '11415', '120 St.', '', '', 'Edmonton', 'AB', 'T5G2Y3', 'CA', ''),
(63, '11433', '143 Ave.', '', '', 'Edmonton', 'AB', 'T5X1S3', 'CA', ''),
(64, '1146', 'Hermitage Rd.', '', '', 'Edmonton', 'AB', 'T5A4L4', 'CA', ''),
(65, '1147', '182 St.', '', '', 'Edmonton', 'AB', 'T5Y3H1', 'CA', ''),
(66, '11509', '106 Ave.', '', '', 'Edmonton', 'AB', 'T5H0R8', 'CA', ''),
(67, '11597', '150 Ave.', '', '', 'Edmonton', 'AB', 'T6P4F6', 'CA', ''),
(68, '11643', '73 St.', '', '', 'Edmonton', 'AB', 'T5E9D8', 'CA', ''),
(69, '11651', '95 St.', '', '', 'Edmonton', 'AB', 'T5G1L7', 'CA', ''),
(70, '11656', '106 St.', '', '', 'Edmonton', 'AB', 'T5S9V0', 'CA', ''),
(71, '11713', '191 St.', '', '', 'Edmonton', 'AB', 'T5D9Q8', 'CA', ''),
(72, '1172', '43 St.', '', '', 'Edmonton', 'AB', 'T5J7H4', 'CA', ''),
(73, '11746', 'Groat Rd.', '', '', 'Edmonton', 'AB', 'T5M3K5', 'CA', ''),
(74, '11788', '104 Ave.', '', '', 'Edmonton', 'AB', 'T6K7K1', 'CA', ''),
(75, '11845', '22 St.', '', '', 'Edmonton', 'AB', 'T5R0I2', 'CA', ''),
(76, '11929', '161 St.', '', '', 'Edmonton', 'AB', 'T5R0N9', 'CA', ''),
(77, '11935', '115 Ave.', '', '', 'Edmonton', 'AB', 'T5G3E7', 'CA', ''),
(78, '12', 'Beacon Cr.', '', '', 'St. Albert', 'AB', 'T8N0A3', 'CA', ''),
(79, '12', 'Kirby St.', '', '', 'Red Deer', 'AB', 'T4P3M9', 'CA', ''),
(80, '12', 'Via del Cigno', '', '', 'Rimini', '', '', 'IT', ''),
(81, '12027', '92 St.', '', '', 'Edmonton', 'AB', 'T5G1A8', 'CA', ''),
(82, '12047', '103 St.', '', '', 'Edmonton', 'AB', 'T5G2J7', 'CA', ''),
(83, '12053', '113 St.', '', '', 'Edmonton', 'AB', 'T5H6U4', 'CA', ''),
(84, '12057', '40 St.', '', '', 'Edmonton', 'AB', 'T5M3Y2', 'CA', ''),
(85, '1206', 'Ormsby Ln.', '', '', 'Edmonton', 'AB', 'T5T6G8', 'CA', ''),
(86, '12066', '42 St.', '', '', 'Edmonton', 'AB', 'T5O3L6', 'CA', ''),
(87, '12076', '181 St.', '', '', 'Edmonton', 'AB', 'T5E6Q8', 'CA', ''),
(88, '12092', '156 St.', '', '', 'Edmonton', 'AB', 'T5G8Y2', 'CA', ''),
(89, '12133', '106 St.', '', '', 'Edmonton', 'AB', 'T5G2R7', 'CA', ''),
(90, '12137', '5 Ave.', '', '', 'Edmonton', 'AB', 'T6Y0A3', 'CA', ''),
(91, '12160', '201 St.', '', '', 'Edmonton', 'AB', 'T5R1D1', 'CA', ''),
(92, '12163', '81 Ave.', '', '', 'Edmonton', 'AB', 'T6J5Z6', 'CA', ''),
(93, '1220', 'Breckinridge Dr.', '', '', 'Edmonton', 'AB', 'T5T6J8', 'CA', ''),
(94, '12213', '110 Ave.', '', '', 'Edmonton', 'AB', 'T6V6F2', 'CA', ''),
(95, '12221', '19 St.', '', '', 'Edmonton', 'AB', 'T5C1V1', 'CA', ''),
(96, '12300', '5 St.', '', '', 'Edmonton', 'AB', 'T5L7S5', 'CA', ''),
(97, '12333', '175 St.', '', '', 'Edmonton', 'AB', 'T5F6G8', 'CA', ''),
(98, '12345', '121 St.', '', '', 'Edmonton', 'AB', 'T5L4Y7', 'CA', ''),
(99, '12354', '107 St.', '', '', 'Edmonton', 'AB', 'T5Q2T8', 'CA', ''),
(100, '12357', '46 St.', '', '', 'Edmonton', 'AB', 'T5O3H6', 'CA', '');

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `ClubID` varchar(10) NOT NULL,
  `ClubName` varchar(48) DEFAULT NULL,
  `Active` tinyint(4) DEFAULT NULL,
  `EmployeeID` varchar(2) DEFAULT NULL,
  `Fee` decimal(7,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`ClubID`, `ClubName`, `Active`, `EmployeeID`, `Fee`) VALUES
('ACM', 'Association of Computing Machinery', 0, '', '50.0000'),
('BSTC', 'Biological Sciences Technology Club', 1, '41', '25.0000'),
('BTC', 'Bachelor of Technology Club', 1, '', '15.0000'),
('BUSCON', 'Business Connex', 1, '', '10.0000'),
('CBSF', 'Chinese Bible Study Fellowship at NAIT', 1, '', '0.0000'),
('CCRC', 'Captioning and Court Reporting Club at NAIT', 1, '21', '5.0000'),
('CHESS', 'NAIT Chess Club', 1, '4', '50.0000'),
('CIPS', 'Computer Info Processing Society', 1, '2', '100.0000'),
('CIVET', 'Civil Engineering Technology', 1, '65', '15.0000'),
('CONET', 'Construction Engineering Technology Student Club', 1, '67', '35.0000'),
('CRAFTING', 'Crafting Club', 1, '', '0.0000'),
('CSS', 'Computer System Society', 0, '5', '50.0000'),
('CTSC', 'Chemical Technology Student Council', 1, '', '0.0000'),
('DBTG', 'DataBase Task Group', 0, '', '25.0000'),
('EDDS', 'Environmental Design Student Society', 1, '', '10.0000'),
('ENACTUS', 'Enactus NAIT', 1, '', '0.0000'),
('EXMEDCA', 'Exercise is Medicine Canada @ NAIT', 1, '', '35.0000'),
('GDANDD', 'Gamers of Dungeons and Dragons', 1, '', '0.0000'),
('INTSOC', 'INTERNATIONAL SOCCER CLUB', 1, '', '75.0000'),
('INTSTUDENT', 'International Students Club', 1, '', '0.0000'),
('INVESTC', 'Investment Club of NAIT', 1, '', '65.0000'),
('JUGGLING', 'Juggling Club', 1, '', '0.0000'),
('LDSSA', 'Latter-day Saint Student Association', 1, '', '0.0000'),
('LOFLEGENDS', 'League of Legends Club', 1, '', '0.0000'),
('LOGROLLING', 'Log Rolling Club @ NAIT', 0, '', '0.0000'),
('MACNAIT', 'Martial Arts Club @ NAIT', 1, '', '50.0000'),
('MECSA', 'Mechanical Student Association', 1, '52', '35.0000'),
('MEDTRANS', 'Medical Transcription Peer Support', 1, '41', '35.0000'),
('MSANAIT', 'Muslim Student Association at NAIT', 1, '', '0.0000'),
('NAITSA', 'NAIT Student Association', 1, '8', '25.0000'),
('NASA', 'NAIT Staff Association', 1, '6', '100.0000'),
('NASA1', 'NAIT Support Staff Association', 1, '1', '100.0000'),
('OHSSS', 'Occupational Health and Safety Student Society', 1, '40', '15.0000'),
('PISA', 'Pakistani & Indian Students Association', 1, '', '0.0000'),
('REST2018', 'Respiratory Therapy 2018', 1, '42', '45.0000'),
('SSMASHBROS', 'Super Smash Bros. Club', 1, '', '0.0000'),
('SUPERANIME', 'Super NAITSA Anime Club', 1, '', '0.0000'),
('TOASTMAS', 'IINTONAITion Toastmasters', 1, '', '45.0000');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseID` varchar(7) NOT NULL,
  `CourseName` varchar(68) DEFAULT NULL,
  `Credits` decimal(3,1) DEFAULT NULL,
  `TotalHours` varchar(2) DEFAULT NULL,
  `ClassroomType` varchar(0) DEFAULT NULL,
  `Term` tinyint(4) DEFAULT NULL,
  `Tuition` decimal(8,4) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseID`, `CourseName`, `Credits`, `TotalHours`, `ClassroomType`, `Term`, `Tuition`, `Description`) VALUES
('ACC3430', 'Financial Accounting', '3.0', '90', '', 2, '450.0000', ''),
('ACC4660', 'Managerial Accounting', '3.0', '90', '', 2, '450.0000', ''),
('ASE138', 'Effective Communications', '3.0', '', '', 1, '450.0000', ''),
('ASE140', 'Writing Fundamentals', '2.0', '', '', 1, '300.0000', ''),
('ASE157', 'Effective Communications', '4.0', '', '', 1, '600.0000', ''),
('ASE158', 'Effective Communications', '3.0', '', '', 1, '450.0000', ''),
('ASE169', 'Effective Communications', '4.0', '', '', 1, '600.0000', ''),
('ASE170', 'Effective Communications I', '3.0', '', '', 2, '450.0000', ''),
('ASE238', 'Effective Communication', '4.5', '', '', 2, '675.0000', ''),
('ASE241', 'Effective Communications', '3.0', '', '', 2, '450.0000', ''),
('ASE270', 'Effective Communications II', '2.0', '', '', 4, '300.0000', ''),
('ASE414', 'Technical Report Writing', '3.0', '', '', 4, '450.0000', ''),
('ASE435', 'Effective Communications II', '2.0', '', '', 4, '300.0000', ''),
('ASM100', 'Technical Mathematics for Telecommunication Technologists', '4.5', '', '', 1, '675.0000', ''),
('ASM104', 'Technical Mathematics with Electronic Applications', '4.5', '', '', 1, '675.0000', ''),
('ASM106', 'Technical Mathematics & Statistics for Computer Technologists', '5.0', '', '', 1, '750.0000', ''),
('ASM155', 'Technical Mathematics & Statistics for Instrumentation Technologists', '4.5', '', '', 1, '675.0000', ''),
('ASM160', 'Technical Mathematics & Calculus for Electrical Technologists', '5.5', '', '', 1, '825.0000', ''),
('ASM200', 'Calculus with Electrical Applications', '5.0', '', '', 2, '750.0000', ''),
('ASM255', 'Calculus for Instrumentation Technologists', '4.5', '', '', 2, '675.0000', ''),
('ASM256', 'Calculus for Telecommunication Technologists', '4.5', '', '', 2, '675.0000', ''),
('ASM260', 'Calculus for Electrical Technologists', '3.5', '', '', 2, '525.0000', ''),
('ASP122', 'Physics', '4.5', '', '', 1, '675.0000', ''),
('ASP160', 'Physics', '4.5', '', '', 1, '675.0000', ''),
('ASP185', 'Physical Science', '3.5', '', '', 1, '525.0000', ''),
('AXT101', 'Aircraft Electronics Fundamentals', '9.0', '', '', 1, '1350.0000', ''),
('AXT102', 'Instruments and Measurements', '8.5', '', '', 1, '1275.0000', ''),
('AXT103', 'Digital Fundamentals', '8.5', '', '', 1, '1275.0000', ''),
('AXT104', 'Soldering Practices', '3.0', '', '', 1, '450.0000', ''),
('AXT110', 'Hand Skills', '3.0', '', '', 1, '450.0000', ''),
('AXT206', 'Micro-Controllers', '3.0', '', '', 2, '450.0000', ''),
('AXT211', 'Standard Practices I', '3.0', '', '', 2, '450.0000', ''),
('AXT221', 'Electronic Communications I', '5.0', '', '', 2, '750.0000', ''),
('AXT225', 'Avionics Systems', '6.0', '', '', 2, '900.0000', ''),
('AXT231', 'ELECTRONIC CIRCUIT APPLICATIONS', '11.0', '', '', 2, '1650.0000', ''),
('AXT261', 'Aviation Familiarization', '2.5', '', '', 2, '375.0000', ''),
('AXT301', 'Aircraft Maintenance I', '3.0', '', '', 3, '450.0000', ''),
('AXT312', 'Standard Practices II', '4.0', '', '', 3, '600.0000', ''),
('AXT322', 'Electronic Communications II', '7.5', '', '', 3, '1125.0000', ''),
('AXT326', 'Nav/Comm Systems I', '5.5', '', '', 3, '825.0000', ''),
('AXT331', 'Power Electronics', '3.0', '', '', 3, '450.0000', ''),
('AXT361', 'Technology Studies I', '3.0', '', '', 3, '450.0000', ''),
('AXT381', 'Aircraft Electrical Systems', '3.0', '', '', 3, '450.0000', ''),
('AXT382', 'Instrument Systems', '3.0', '', '', 3, '450.0000', ''),
('AXT402', 'Aircraft Maintenance II', '4.5', '', '', 4, '675.0000', ''),
('AXT416', 'System Installation', '3.5', '', '', 4, '525.0000', ''),
('AXT423', 'Electronic Communications III', '5.0', '', '', 4, '750.0000', ''),
('AXT427', 'Nav/Comm Systems II', '10.5', '', '', 4, '1575.0000', ''),
('AXT451', 'Auto Flight Systems', '2.5', '', '', 4, '375.0000', ''),
('AXT461', 'Technology Studies II', '3.0', '', '', 4, '450.0000', ''),
('AXT462', 'Maintenance Regulations & Standards', '3.0', '', '', 4, '450.0000', ''),
('BAI3010', 'IT Professional Development Studies', '3.0', '90', '', 1, '450.0000', ''),
('BAI3020', 'Strategic Planning and Project Management', '3.0', '90', '', 1, '450.0000', ''),
('BAI3110', 'Information Systems Architecture and Security', '3.0', '90', '', 1, '450.0000', ''),
('BAI3130', 'Software Engineering I: Product Research Concepts', '3.0', '90', '', 1, '450.0000', ''),
('BAI3150', 'Software Development Tools', '6.0', '90', '', 1, '450.0000', ''),
('BAI3170', 'Introduction to Enterprise Resource Planning', '3.0', '90', '', 1, '450.0000', ''),
('BAI3210', 'Advanced Database Topics', '6.0', '90', '', 2, '450.0000', ''),
('BAI3230', 'Software Engineering II: Product Development and Release Concepts', '3.0', '90', '', 2, '450.0000', ''),
('BAI3270', 'Enterprise Resource Planning Web Development', '3.0', '90', '', 2, '450.0000', ''),
('BAI3990', 'Information Systems Capstone', '6.0', '90', '', 4, '450.0000', ''),
('BAI4991', 'Internship I', '15.0', '90', '', 3, '450.0000', ''),
('BAI4992', 'Internship II', '15.0', '90', '', 4, '450.0000', ''),
('BAI506', 'Architecture & Security', '3.0', '', '', 5, '450.0000', ''),
('BAI507', 'Software Engineering', '3.0', '', '', 5, '450.0000', ''),
('BAI511', 'Advanced Routing', '4.0', '', '', 5, '600.0000', ''),
('BAI513', 'Protocol Analysis', '3.0', '', '', 5, '450.0000', ''),
('BAI514', 'Network Security I', '4.0', '', '', 5, '600.0000', ''),
('BAI516', 'Network Management', '3.0', '', '', 5, '450.0000', ''),
('BAI517', 'Network Operating Systems - Linux', '3.0', '', '', 5, '450.0000', ''),
('BAI530', 'Leadership Development', '3.0', '', '', 5, '450.0000', ''),
('BAI540', 'Project Management', '3.0', '', '', 5, '450.0000', ''),
('BAI552', 'Business Process & Enterprise Resource Planning I', '3.0', '', '', 5, '450.0000', ''),
('BAI586', 'System Development Tools', '6.0', '', '', 5, '900.0000', ''),
('BAI590', 'Seminar I', '0.5', '', '', 5, '75.0000', ''),
('BAI600', 'Credit Work Experience I', '10.0', '', '', 6, '1500.0000', ''),
('BAI604', 'Management of the IT Portfolio', '3.0', '', '', 6, '450.0000', ''),
('BAI606', 'Database Topics', '3.0', '', '', 6, '450.0000', ''),
('BAI611', 'Advanced Switching Concepts', '4.0', '', '', 0, '600.0000', ''),
('BAI614', 'Security II', '4.0', '', '', 6, '600.0000', ''),
('BAI617', 'Network Operating Systems - Microsoft Windows', '3.0', '', '', 6, '450.0000', ''),
('BAI625', 'Introduction to Managerial Accounting', '3.0', '', '', 6, '450.0000', ''),
('BAI652', 'Business Process & Enterprise Resource Planning II', '3.0', '', '', 6, '450.0000', ''),
('BAI686', 'Research/Project Development', '6.0', '', '', 6, '900.0000', ''),
('BAI687', 'Applied Research', '6.0', '', '', 6, '900.0000', ''),
('BAI690', 'Seminar II', '0.5', '', '', 6, '75.0000', ''),
('BAI700', 'Credit Work Experience II', '10.0', '', '', 7, '1500.0000', ''),
('BET151', 'Programming Skills', '6.5', '', '', 1, '975.0000', ''),
('BET232', 'Instruments', '6.0', '', '', 2, '900.0000', ''),
('BET301', 'Water Processing and Dialysis', '2.5', '', '', 3, '375.0000', ''),
('BET381', 'Biomedical Control Systems', '2.5', '', '', 3, '375.0000', ''),
('BET400', 'Biomedical Instrumentation', '12.0', '', '', 4, '1800.0000', ''),
('BET431', 'Equipment Management', '5.5', '', '', 4, '825.0000', ''),
('BET444', 'Micro Applications', '7.5', '', '', 4, '1125.0000', ''),
('BET451', 'Specialty Imaging', '2.5', '', '', 4, '375.0000', ''),
('BET455', 'X-Ray Systems', '1.5', '', '', 4, '225.0000', ''),
('BET460', 'Work Experience Practicum', '2.5', '', '', 4, '375.0000', ''),
('BSS335', 'Anatomy and Physiology', '5.0', '', '', 3, '750.0000', ''),
('BUS110', 'Business Fundamentals', '2.0', '', '', 1, '300.0000', ''),
('BUS2050', 'Photographic Business Practices I', '3.0', '90', '', 3, '450.0000', '');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentNumber` int(11) NOT NULL,
  `FirstName` varchar(13) DEFAULT NULL,
  `LastName` varchar(15) DEFAULT NULL,
  `DisplayName` varchar(13) DEFAULT NULL,
  `CountryCode` varchar(2) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `BirthDate` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentNumber`, `FirstName`, `LastName`, `DisplayName`, `CountryCode`, `Gender`, `BirthDate`) VALUES
(20090001, 'Brock', 'Todd', 'Brock', 'CA', 'M', '1968-06-16 00:00:00'),
(20090002, 'Jagger', 'Plemons', 'Jagger', 'CA', 'M', '1968-07-19 00:00:00'),
(20090003, 'Sasha', 'Macgillvary', 'Sasha', 'CA', 'F', '1968-09-16 00:00:00'),
(20090004, 'Annette', 'Oldham', 'Annette', 'CA', 'F', '1968-10-09 00:00:00'),
(20090005, 'Thomas', 'Hilliard', 'Thomas', 'CA', 'M', '1968-11-10 00:00:00'),
(20090006, 'Collins', 'Layton', 'Collins', 'CA', 'M', '1968-11-22 00:00:00'),
(20090007, 'Pierre', 'Blancett', 'Pierre', 'CA', 'M', '1969-01-04 00:00:00'),
(20090008, 'Wallingford', 'Sumrall', 'Walls', 'CA', 'M', '1969-01-27 00:00:00'),
(20090009, 'Martin', 'Stumfoll', 'Marty', 'CA', 'M', '1969-01-31 00:00:00'),
(20090010, 'Tonio', 'Atenciolucas', 'Tonio', 'CA', 'M', '1969-03-05 00:00:00'),
(20090011, 'Garrett', 'Nevitt', 'Garrett', 'CA', 'M', '1969-03-20 00:00:00'),
(20090012, 'Trish', 'Michael', 'Trish', 'CA', 'F', '1969-03-27 00:00:00'),
(20090013, 'Lesley', 'Tinoco', 'Lesley', 'CA', 'F', '1969-05-21 00:00:00'),
(20090014, 'Kit', 'Ramey', 'Kit', 'CA', 'F', '1969-05-22 00:00:00'),
(20090015, 'Neil', 'Haven', 'Neil', 'CA', 'M', '1969-07-02 00:00:00'),
(20090016, 'Trista', 'Gandy', 'Trista', 'CA', 'F', '1969-08-28 00:00:00'),
(20090017, 'Mouth', 'Luther', 'Mouth', 'CA', 'M', '1969-09-09 00:00:00'),
(20090018, 'Anthony', 'Hazlett', 'Anthony', 'CA', 'M', '1969-10-17 00:00:00'),
(20090019, 'Ruby', 'Natkin', 'Ruby', 'CA', 'F', '1969-12-02 00:00:00'),
(20090020, 'Wei', 'Miao', 'Hanley', 'CA', 'M', '1970-02-28 00:00:00'),
(20090021, 'Cesar', 'Langford', 'Cesar', 'CA', 'M', '1970-06-06 00:00:00'),
(20090022, 'Nancy', 'Oleary', 'Nancy', 'CA', 'F', '1970-09-14 00:00:00'),
(20090023, 'Kylie', 'Cone', 'Kylie', 'CA', 'F', '1970-09-19 00:00:00'),
(20090024, 'Victoria', 'Tompkins', 'Vicky', 'CA', 'F', '1970-10-07 00:00:00'),
(20090025, 'Willis', 'Dregots', 'Bill', 'CA', 'M', '1970-10-19 00:00:00'),
(20090026, 'Paige', 'Bain', 'Paige', 'CA', 'F', '1970-11-20 00:00:00'),
(20090027, 'Lorraine', 'Arndt', 'Lorraine', 'CA', 'F', '1971-07-23 00:00:00'),
(20090028, 'Elizabeth', 'Mulhollen', 'Liz', 'CA', 'F', '1971-10-13 00:00:00'),
(20090029, 'Arielle', 'Mosley', 'Areille', 'CA', 'F', '1972-02-20 00:00:00'),
(20090030, 'Ally', 'Ely', 'Ally', 'CA', 'F', '1972-03-09 00:00:00'),
(20090031, 'Amber', 'Hutchison', 'Amber', 'CA', 'F', '1972-06-01 00:00:00'),
(20090032, 'Laurel', 'Hedge', 'Laurel', 'CA', 'F', '1972-07-20 00:00:00'),
(20090033, 'Samuel', 'Surkont', 'Sam', 'CA', 'M', '1972-07-24 00:00:00'),
(20090034, 'Dabney', 'Player', 'Dabney', 'CA', 'M', '1972-08-02 00:00:00'),
(20090035, 'Del', 'Donelow', 'Del', 'CA', 'M', '1972-10-18 00:00:00'),
(20090036, 'Tao', 'Ren', 'Right', 'CA', 'M', '1972-12-02 00:00:00'),
(20090037, 'Lahoma', 'Ayres', 'Lahoma', 'CA', 'M', '1973-01-17 00:00:00'),
(20090038, 'Flo', 'Strand', 'Flo', 'CA', 'F', '1973-01-23 00:00:00'),
(20090039, 'Craig', 'Hufford', 'Craig', 'CA', 'M', '1973-03-02 00:00:00'),
(20090040, 'Ming Yue', 'Li', 'Vivian', 'CA', 'F', '1973-04-07 00:00:00'),
(20090041, 'Jenna', 'Walls', 'Jenna', 'CA', 'F', '1973-05-22 00:00:00'),
(20090042, 'Colleen', 'Herbin', 'Colleen', 'CA', 'F', '1973-05-29 00:00:00'),
(20090043, 'Michelle', 'Sharon', 'Michelle', 'CA', 'F', '1973-06-06 00:00:00'),
(20090044, 'Cameron', 'Zornes', 'Cameron', 'ZA', 'M', '1973-10-26 00:00:00'),
(20090045, 'Jennifer', 'Algere', 'Jen', 'CA', 'F', '1974-02-08 00:00:00'),
(20090046, 'Olivia', 'Willie', 'Livie', 'CA', 'F', '1974-03-11 00:00:00'),
(20090047, 'Lincoln', 'Hagerty', 'Link', 'CA', 'M', '1974-04-25 00:00:00'),
(20090048, 'Gwen', 'Rocco', 'Gwen', 'CA', 'F', '1974-05-23 00:00:00'),
(20090049, 'Brenda', 'Bennet', 'Brenda', 'CA', 'F', '1974-06-30 00:00:00'),
(20090050, 'Ethan', 'Emling', 'Ethan', 'CA', 'M', '1974-07-29 00:00:00'),
(20090051, 'James', 'Blakeman', 'Jim', 'CA', 'M', '1974-08-17 00:00:00'),
(20090052, 'Anjelica', 'Gerow', 'Angel', 'CA', 'F', '1974-09-16 00:00:00'),
(20090053, 'April', 'Noskye', 'April', 'CA', 'F', '1974-10-19 00:00:00'),
(20090054, 'Lenore', 'Goldsmith', 'Lenore', 'CA', 'F', '1975-03-17 00:00:00'),
(20090055, 'Stefano', 'Lenderman', 'Stefano', 'CA', 'M', '1975-04-08 00:00:00'),
(20090056, 'Cheryl', 'Alvarado', 'Cheryl', 'CA', 'F', '1975-04-20 00:00:00'),
(20090057, 'Morgan', 'Porch', 'Morgan', 'CA', 'M', '1975-08-09 00:00:00'),
(20090058, 'Letitia', 'Gillett', 'Letitia', 'CA', 'F', '1975-09-05 00:00:00'),
(20090059, 'Ning', 'Wang', 'Julie', 'CA', 'F', '1975-10-24 00:00:00'),
(20090060, 'K.D.', 'Holtz', 'K.D.', 'CA', 'M', '1976-02-04 00:00:00'),
(20090061, 'Caleb', 'Fritts', 'Caleb', 'CA', 'M', '1976-03-23 00:00:00'),
(20090062, 'Jessica', 'Comeau', 'Jess', 'CA', 'F', '1976-04-08 00:00:00'),
(20090063, 'Mark', 'Laviolette', 'Mark', 'CA', 'M', '1976-06-17 00:00:00'),
(20090064, 'Lila', 'Bliven', 'Lila', 'CA', 'F', '1976-08-02 00:00:00'),
(20090065, 'Aidan', 'Hendrickson', 'Aidan', 'CA', 'M', '1976-09-27 00:00:00'),
(20090066, 'Emmy', 'Economos', 'Em', 'CA', 'F', '1976-10-14 00:00:00'),
(20090067, 'Zane', 'Zilewski', 'Zane', 'PL', 'M', '1977-02-25 00:00:00'),
(20090068, 'Hayley', 'Anthony', 'Hayley', 'CA', 'F', '1977-04-30 00:00:00'),
(20090069, 'Karin', 'Vannanski', 'Karin', 'CA', 'F', '1977-05-03 00:00:00'),
(20090070, 'Sylvie', 'Yesford', 'Sylvie', 'CA', 'F', '1977-05-08 00:00:00'),
(20090071, 'Regina', 'Bailey', 'Regina', 'CA', 'F', '1977-05-14 00:00:00'),
(20090072, 'Lois', 'Garza', 'Lois', 'CA', 'F', '1977-06-26 00:00:00'),
(20090073, 'April', 'Fuson', 'April', 'CA', 'F', '1977-08-05 00:00:00'),
(20090074, 'Dina', 'Nuyen', 'Dina', 'CA', 'F', '1977-09-14 00:00:00'),
(20090075, 'Michael', 'Trujillo', 'Mike', 'CA', 'M', '1977-09-16 00:00:00'),
(20090076, 'Sylvie', 'Vanwieringen', 'Sly', 'CA', 'F', '1977-11-22 00:00:00'),
(20090077, 'Erin', 'Gonzales', 'Erin', 'CA', 'F', '1978-06-11 00:00:00'),
(20090078, 'Wallingford', 'Dalke', 'Walter', 'CA', 'M', '1978-08-23 00:00:00'),
(20090079, 'Anthony', 'Frasier', 'Tony', 'CA', 'M', '1978-08-25 00:00:00'),
(20090080, 'Noah', 'Key', 'Noah', 'CA', 'M', '1978-10-24 00:00:00'),
(20090081, 'Jack', 'Vanderford', 'Jack', 'CA', 'M', '1978-10-27 00:00:00'),
(20090082, 'Marcus', 'Taft', 'Marcus', 'CA', 'M', '1978-12-23 00:00:00'),
(20090083, 'K.D.', 'Moran', 'K.D.', 'CA', 'M', '1979-07-07 00:00:00'),
(20090084, 'Patrick', 'Jeffries', 'Pat', 'CA', 'M', '1979-07-26 00:00:00'),
(20090085, 'Paolo', 'Sherwood', 'Paolo', 'CA', 'M', '1979-10-11 00:00:00'),
(20090086, 'Bess', 'Woods', 'Bess', 'CA', 'F', '1979-11-04 00:00:00'),
(20090087, 'Warton', 'Keyes', 'Warton', 'CA', 'M', '1979-12-02 00:00:00'),
(20090088, 'Skip', 'Fox', 'Skip', 'CA', 'M', '1980-03-11 00:00:00'),
(20090089, 'Stephano', 'Hollowell', 'Steph', 'CA', 'M', '1980-10-12 00:00:00'),
(20090090, 'Cui Ting', 'Fu', 'Nora', 'CA', 'F', '1981-01-25 00:00:00'),
(20090091, 'Eve', 'Cotter', 'Eve', 'CA', 'F', '1981-04-08 00:00:00'),
(20090092, 'Gary', 'Delorme', 'Gary', 'CA', 'M', '1981-06-13 00:00:00'),
(20090093, 'Ginger', 'Bain', 'Ginger', 'CA', 'F', '1981-10-09 00:00:00'),
(20090094, 'Hecuba', 'Geoffrey', 'Hecuba', 'CA', 'M', '1981-11-04 00:00:00'),
(20090095, 'Lil', 'Felice', 'Lil', 'CA', 'F', '1983-02-07 00:00:00'),
(20090096, 'Blackie', 'Ussery', 'Blackie', 'CA', 'M', '1983-02-07 00:00:00'),
(20090097, 'Jayson', 'Mateao', 'Jayson', 'CA', 'M', '1983-03-18 00:00:00'),
(20090098, 'Gwen', 'Seibert', 'Gwen', 'CA', 'F', '1983-05-20 00:00:00'),
(20090099, 'Nate', 'Durling', 'Nate', 'CA', 'M', '1983-07-04 00:00:00'),
(20090100, 'Kelsey', 'Parmalee', 'Kelsey', 'CA', 'F', '1983-11-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` tinyint(4) NOT NULL,
  `CompanyName` varchar(38) DEFAULT NULL,
  `ContactName` varchar(26) DEFAULT NULL,
  `ContactTitle` varchar(28) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `City` varchar(13) DEFAULT NULL,
  `Region` varchar(8) DEFAULT NULL,
  `PostalCode` varchar(8) DEFAULT NULL,
  `Country` varchar(11) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Fax` varchar(15) DEFAULT NULL,
  `HomePage` varchar(94) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
(1, 'Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'London', '', 'EC1 4SD', 'UK', '(171) 555-2222', '', ''),
(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'Order Administrator', 'P.O. Box 78934', 'New Orleans', 'LA', '70117', 'USA', '(100) 555-4822', '', '#CAJUN.HTM#'),
(3, 'Grandma Kelly\'s Homestead', 'Regina Murphy', 'Sales Representative', '707 Oxford Rd.', 'Ann Arbor', 'MI', '48104', 'USA', '(313) 555-5735', '(313) 555-3349', ''),
(4, 'Tokyo Traders', 'Yoshi Nagase', 'Marketing Manager', '9-8 Sekimai Musashino-shi', 'Tokyo', '', '100', 'Japan', '(03) 3555-5011', '', ''),
(5, 'Cooperativa de Quesos \'Las Cabras\'', 'Antonio del Valle Saavedra', 'Export Administrator', 'Calle del Rosal 4', 'Oviedo', 'Asturias', '33007', 'Spain', '(98) 598 76 54', '', ''),
(6, 'Mayumi\'s', 'Mayumi Ohno', 'Marketing Representative', '92 Setsuko Chuo-ku', 'Osaka', '', '545', 'Japan', '(06) 431-7877', '', 'Mayumi\'s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#'),
(7, 'Pavlova, Ltd.', 'Ian Devling', 'Marketing Manager', '74 Rose St. Moonie Ponds', 'Melbourne', 'Victoria', '3058', 'Australia', '(03) 444-2343', '(03) 444-6588', ''),
(8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', 'Sales Representative', '29 King\'s Way', 'Manchester', '', 'M14 GSD', 'UK', '(161) 555-4448', '', ''),
(9, 'PB Knäckebröd AB', 'Lars Peterson', 'Sales Agent', 'Kaloadagatan 13', 'Göteborg', '', 'S-345 67', 'Sweden', '031-987 65 43', '031-987 65 91', ''),
(10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Marketing Manager', 'Av. das Americanas 12.890', 'Sao Paulo', '', '5442', 'Brazil', '(11) 555 4640', '', ''),
(11, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Sales Manager', 'Tiergartenstraße 5', 'Berlin', '', '10785', 'Germany', '(010) 9984510', '', ''),
(12, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'International Marketing Mgr.', 'Bogenallee 51', 'Frankfurt', '', '60439', 'Germany', '(069) 992755', '', 'Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#'),
(13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinator Foreign Markets', 'Frahmredder 112a', 'Cuxhaven', '', '27478', 'Germany', '(04721) 8713', '(04721) 8714', ''),
(14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Sales Representative', 'Viale Dante, 75', 'Ravenna', '', '48100', 'Italy', '(0544) 60323', '(0544) 60603', '#FORMAGGI.HTM#'),
(15, 'Norske Meierier', 'Beate Vileid', 'Marketing Manager', 'Hatlevegen 5', 'Sandvika', '', '1320', 'Norway', '(0)2-953010', '', ''),
(16, 'Bigfoot Breweries', 'Cheryl Saylor', 'Regional Account Rep.', '3400 - 8th Avenue Suite 210', 'Bend', 'OR', '97101', 'USA', '(503) 555-9931', '', ''),
(17, 'Svensk Sjöföda AB', 'Michael Björn', 'Sales Representative', 'Brovallavägen 231', 'Stockholm', '', 'S-123 45', 'Sweden', '08-123 45 67', '', ''),
(18, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', 'Sales Manager', '203, Rue des Francs-Bourgeois', 'Paris', '', '75004', 'France', '(1) 03.83.00.68', '(1) 03.83.00.62', ''),
(19, 'New England Seafood Cannery', 'Robb Merchant', 'Wholesale Account Agent', 'Order Processing Dept. 2100 Paul Revere Blvd.', 'Boston', 'MA', '02134', 'USA', '(617) 555-3267', '(617) 555-3389', ''),
(20, 'Leka Trading', 'Chandra Leka', 'Owner', '471 Serangoon Loop, Suite #402', 'Singapore', '', '0512', 'Singapore', '555-8787', '', ''),
(21, 'Lyngbysild', 'Niels Petersen', 'Sales Manager', 'Lyngbysild Fiskebakken 10', 'Lyngby', '', '2800', 'Denmark', '43844108', '43844115', ''),
(22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Accounting Manager', 'Verkoop Rijnweg 22', 'Zaandam', '', '9999 ZZ', 'Netherlands', '(12345) 1212', '(12345) 1210', ''),
(23, 'Karkki Oy', 'Anne Heikkonen', 'Product Manager', 'Valtakatu 12', 'Lappeenranta', '', '53120', 'Finland', '(953) 10956', '', ''),
(24, 'G\'day, Mate', 'Wendy Mackenzie', 'Sales Representative', '170 Prince Edward Parade Hunter\'s Hill', 'Sydney', 'NSW', '2042', 'Australia', '(02) 555-5914', '(02) 555-4873', 'G\'day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#'),
(25, 'Ma Maison', 'Jean-Guy Lauzon', 'Marketing Manager', '2960 Rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada', '(514) 555-9022', '', ''),
(26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Order Administrator', 'Via dei Gelsomini, 153', 'Salerno', '', '84100', 'Italy', '(089) 6547665', '(089) 6547667', ''),
(27, 'Escargots Nouveaux', 'Marie Delamare', 'Sales Manager', '22, rue H. Voiron', 'Montceau', '', '71300', 'France', '85.57.00.07', '', ''),
(28, 'Gai pâturage', 'Eliane Noz', 'Sales Representative', 'Bat. B 3, rue des Alpes', 'Annecy', '', '74000', 'France', '38.76.98.06', '38.76.98.58', ''),
(29, 'Forêts d\'érables', 'Chantal Goulet', 'Accounting Manager', '148 rue Chasseur', 'Ste-Hyacinthe', 'Québec', 'J2S 7S8', 'Canada', '(514) 555-2955', '(514) 555-2921', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`AddressID`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`ClubID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentNumber`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
