-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2015 at 10:51 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wallet`
--
CREATE DATABASE IF NOT EXISTS `wallet` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wallet`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_account_personal`
--
-- Creation: Jul 16, 2015 at 06:43 AM
--

DROP TABLE IF EXISTS `admin_account_personal`;
CREATE TABLE IF NOT EXISTS `admin_account_personal` (
  `t_date` date DEFAULT NULL,
  `t_id` int(20) NOT NULL AUTO_INCREMENT,
  `method` varchar(10) NOT NULL DEFAULT 'Cash',
  `debit` float DEFAULT '0',
  `credit` float DEFAULT '0',
  `category` varchar(50) DEFAULT 'uncategorized',
  `paid_to` varchar(30) NOT NULL DEFAULT 'unknown',
  `paid_by` varchar(50) NOT NULL DEFAULT 'unknown',
  `t_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`t_id`),
  UNIQUE KEY `t_id` (`t_id`),
  KEY `category` (`category`),
  KEY `paid_to` (`paid_to`),
  KEY `paid_by` (`paid_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `admin_account_personal`
--

INSERT INTO `admin_account_personal` (`t_date`, `t_id`, `method`, `debit`, `credit`, `category`, `paid_to`, `paid_by`, `t_desc`) VALUES
('2015-07-01', 1, 'Cash', 1000, 0, 'Personal', 'unknown', 'Parents  ', 'Pocket Money  '),
('2015-07-01', 2, 'Cash', 0, 100, 'Travel', 'S & D', 'unknown', 'From Home To College '),
('2015-07-01', 3, 'Cash', 0, 120, 'Snacks', 'unknown', 'unknown', 'Coffee '),
('2015-07-02', 4, 'Cash', 0, 175, 'Mobile Bills', 'unknown', 'unknown', '175/-  Recharge '),
('2015-07-01', 5, 'Cash', 0, 20, 'Misc Expenses ', 'unknown', 'unknown', 'Misc '),
('2015-07-01', 6, 'Cash', 0, 80, 'Travel', 'S & D', 'unknown', 'College To Home'),
('2015-07-02', 7, 'Cash', 0, 185, 'Studies', 'Jiwan', 'unknown', 'Books Purchased '),
('2015-07-02', 8, 'Cash', 0, 60, 'Misc Expenses ', 'Rahul Kumar', 'unknown', 'Returned Borrowed Money '),
('2015-07-03', 9, 'Cash', 0, 25, 'Personal Care', 'unknown', 'unknown', 'Hair Cut'),
('2015-07-03', 10, 'Cash', 0, 50, 'Food', 'unknown', 'unknown', 'Lunch !! '),
('2015-07-15', 11, 'Cash', 1500, 0, 'Personal', 'unknown', 'SukhVendra', 'old Money received'),
('2015-07-17', 12, 'Cash', 0, 1320, 'Interest Paid', 'Abhinav', 'unknown', 'interest paid '),
('2015-07-29', 13, 'Other', 1000, 0, 'uncategorized', 'unknown', 'unknown', 'misc\r\n'),
('2015-07-31', 14, 'Other', 280, 0, 'Misc Income ', 'unknown', 'Shubham Seth', ''),
('2015-07-31', 15, 'Cash', 0, 75, 'Personal Care', 'S & D', 'unknown', 'Cream '),
('2015-07-30', 16, 'Cash', 80, 0, 'Misc Income ', 'unknown', 'Shubham Seth', ''),
('2015-07-31', 17, 'Cash', 0, 300, 'Snacks', 'unknown', 'unknown', ''),
('2015-08-01', 18, 'Cash', 180, 0, 'Interest Recived', 'unknown', 'SukhVendra', ''),
('2015-08-02', 19, 'Cash', 0, 10, 'Mobile Bills', 'unknown', 'unknown', ''),
('2015-08-03', 20, 'Cash', 0, 580, 'Electricity Bills', 'unknown', 'unknown', ''),
('2015-08-03', 21, 'Cash', 0, 100, 'Mobile Bills', 'unknown', 'unknown', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `admin_monthb`
--
DROP VIEW IF EXISTS `admin_monthb`;
CREATE TABLE IF NOT EXISTS `admin_monthb` (
`t_date` date
,`t_id` int(20)
,`method` varchar(10)
,`debit` float
,`credit` float
,`category` varchar(50)
,`paid_to` varchar(30)
,`paid_by` varchar(50)
,`t_desc` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `admin_weekb`
--
DROP VIEW IF EXISTS `admin_weekb`;
CREATE TABLE IF NOT EXISTS `admin_weekb` (
`t_date` date
,`t_id` int(20)
,`method` varchar(10)
,`debit` float
,`credit` float
,`category` varchar(50)
,`paid_to` varchar(30)
,`paid_by` varchar(50)
,`t_desc` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `admin_yearb`
--
DROP VIEW IF EXISTS `admin_yearb`;
CREATE TABLE IF NOT EXISTS `admin_yearb` (
`t_date` date
,`t_id` int(20)
,`method` varchar(10)
,`debit` float
,`credit` float
,`category` varchar(50)
,`paid_to` varchar(30)
,`paid_by` varchar(50)
,`t_desc` varchar(255)
);
-- --------------------------------------------------------

--
-- Table structure for table `categ`
--
-- Creation: Jul 16, 2015 at 07:43 AM
--

DROP TABLE IF EXISTS `categ`;
CREATE TABLE IF NOT EXISTS `categ` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`),
  UNIQUE KEY `category` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `categ`
--

INSERT INTO `categ` (`Id`, `category`) VALUES
(10, 'Electricity Bills'),
(2, 'Food'),
(6, 'Interest Paid'),
(5, 'Interest Recived'),
(12, 'Misc Expenses '),
(13, 'Misc Income '),
(11, 'Mobile Bills'),
(3, 'Personal'),
(9, 'Personal Care'),
(15, 'Ronak'),
(8, 'S & D'),
(7, 'Snacks'),
(14, 'Studies'),
(4, 'Travel'),
(1, 'uncategorized');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--
-- Creation: Jul 16, 2015 at 12:48 PM
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `code` char(2) CHARACTER SET latin1 NOT NULL,
  `name_en` tinytext CHARACTER SET latin1,
  `name_fr` tinytext CHARACTER SET latin1,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`code`, `name_en`, `name_fr`) VALUES
('AD', 'Andorra', 'Andorre'),
('AE', 'United Arab Emirates', 'Émirats arabes unis'),
('AF', 'Afghanistan', 'Afghanistan'),
('AG', 'Antigua and Barbuda', 'Antigua-et-Barbuda'),
('AI', 'Anguilla', 'Anguilla'),
('AL', 'Albania', 'Albanie'),
('AM', 'Armenia', 'Arménie'),
('AO', 'Angola', 'Angola'),
('AQ', 'Antarctica', 'Antarctique'),
('AR', 'Argentina', 'Argentine'),
('AS', 'American Samoa', 'Samoa américaine'),
('AT', 'Austria', 'Autriche'),
('AU', 'Australia', 'Australie'),
('AW', 'Aruba', 'Aruba'),
('AX', 'Åland Islands', 'Îles d''Åland'),
('AZ', 'Azerbaijan', 'Azerbaïdjan'),
('BA', 'Bosnia and Herzegovina', 'Bosnie-Herzégovine'),
('BB', 'Barbados', 'Barbade'),
('BD', 'Bangladesh', 'Bangladesh'),
('BE', 'Belgium', 'Belgique'),
('BF', 'Burkina Faso', 'Burkina Faso'),
('BG', 'Bulgaria', 'Bulgarie'),
('BH', 'Bahrain', 'Bahreïn'),
('BI', 'Burundi', 'Burundi'),
('BJ', 'Benin', 'Bénin'),
('BL', 'Saint Barthélemy', 'Saint-Barthélemy'),
('BM', 'Bermuda', 'Bermudes'),
('BN', 'Brunei Darussalam', 'Brunei Darussalam'),
('BO', 'Bolivia', 'Bolivie'),
('BQ', 'Caribbean Netherlands ', 'Pays-Bas caribéens'),
('BR', 'Brazil', 'Brésil'),
('BS', 'Bahamas', 'Bahamas'),
('BT', 'Bhutan', 'Bhoutan'),
('BV', 'Bouvet Island', 'Île Bouvet'),
('BW', 'Botswana', 'Botswana'),
('BY', 'Belarus', 'Bélarus'),
('BZ', 'Belize', 'Belize'),
('CA', 'Canada', 'Canada'),
('CC', 'Cocos (Keeling) Islands', 'Îles Cocos (Keeling)'),
('CD', 'Congo, Democratic Republic of', 'Congo, République démocratique du'),
('CF', 'Central African Republic', 'République centrafricaine'),
('CG', 'Congo', 'Congo'),
('CH', 'Switzerland', 'Suisse'),
('CI', 'Côte d''Ivoire', 'Côte d''Ivoire'),
('CK', 'Cook Islands', 'Îles Cook'),
('CL', 'Chile', 'Chili'),
('CM', 'Cameroon', 'Cameroun'),
('CN', 'China', 'Chine'),
('CO', 'Colombia', 'Colombie'),
('CR', 'Costa Rica', 'Costa Rica'),
('CU', 'Cuba', 'Cuba'),
('CV', 'Cape Verde', 'Cap-Vert'),
('CW', 'Curaçao', 'Curaçao'),
('CX', 'Christmas Island', 'Île Christmas'),
('CY', 'Cyprus', 'Chypre'),
('CZ', 'Czech Republic', 'République tchèque'),
('DE', 'Germany', 'Allemagne'),
('DJ', 'Djibouti', 'Djibouti'),
('DK', 'Denmark', 'Danemark'),
('DM', 'Dominica', 'Dominique'),
('DO', 'Dominican Republic', 'République dominicaine'),
('DZ', 'Algeria', 'Algérie'),
('EC', 'Ecuador', 'Équateur'),
('EE', 'Estonia', 'Estonie'),
('EG', 'Egypt', 'Égypte'),
('EH', 'Western Sahara', 'Sahara Occidental'),
('ER', 'Eritrea', 'Érythrée'),
('ES', 'Spain', 'Espagne'),
('ET', 'Ethiopia', 'Éthiopie'),
('FI', 'Finland', 'Finlande'),
('FJ', 'Fiji', 'Fidji'),
('FK', 'Falkland Islands', 'Îles Malouines'),
('FM', 'Micronesia, Federated States of', 'Micronésie, États fédérés de'),
('FO', 'Faroe Islands', 'Îles Féroé'),
('FR', 'France', 'France'),
('GA', 'Gabon', 'Gabon'),
('GB', 'United Kingdom', 'Royaume-Uni'),
('GD', 'Grenada', 'Grenade'),
('GE', 'Georgia', 'Géorgie'),
('GF', 'French Guiana', 'Guyane française'),
('GG', 'Guernsey', 'Guernesey'),
('GH', 'Ghana', 'Ghana'),
('GI', 'Gibraltar', 'Gibraltar'),
('GL', 'Greenland', 'Groenland'),
('GM', 'Gambia', 'Gambie'),
('GN', 'Guinea', 'Guinée'),
('GP', 'Guadeloupe', 'Guadeloupe'),
('GQ', 'Equatorial Guinea', 'Guinée équatoriale'),
('GR', 'Greece', 'Grèce'),
('GS', 'South Georgia and the South Sandwich Islands', 'Géorgie du Sud et les îles Sandwich du Sud'),
('GT', 'Guatemala', 'Guatemala'),
('GU', 'Guam', 'Guam'),
('GW', 'Guinea-Bissau', 'Guinée-Bissau'),
('GY', 'Guyana', 'Guyana'),
('HK', 'Hong Kong', 'Hong Kong'),
('HM', 'Heard and McDonald Islands', 'Îles Heard et McDonald'),
('HN', 'Honduras', 'Honduras'),
('HR', 'Croatia', 'Croatie'),
('HT', 'Haiti', 'Haïti'),
('HU', 'Hungary', 'Hongrie'),
('ID', 'Indonesia', 'Indonésie'),
('IE', 'Ireland', 'Irlande'),
('IL', 'Israel', 'Israël'),
('IM', 'Isle of Man', 'Île de Man'),
('IN', 'India', 'Inde'),
('IO', 'British Indian Ocean Territory', 'Territoire britannique de l''océan Indien'),
('IQ', 'Iraq', 'Irak'),
('IR', 'Iran', 'Iran'),
('IS', 'Iceland', 'Islande'),
('IT', 'Italy', 'Italie'),
('JE', 'Jersey', 'Jersey'),
('JM', 'Jamaica', 'Jamaïque'),
('JO', 'Jordan', 'Jordanie'),
('JP', 'Japan', 'Japon'),
('KE', 'Kenya', 'Kenya'),
('KG', 'Kyrgyzstan', 'Kirghizistan'),
('KH', 'Cambodia', 'Cambodge'),
('KI', 'Kiribati', 'Kiribati'),
('KM', 'Comoros', 'Comores'),
('KN', 'Saint Kitts and Nevis', 'Saint-Kitts-et-Nevis'),
('KP', 'North Korea', 'Corée du Nord'),
('KR', 'South Korea', 'Corée du Sud'),
('KW', 'Kuwait', 'Koweït'),
('KY', 'Cayman Islands', 'Îles Caïmans'),
('KZ', 'Kazakhstan', 'Kazakhstan'),
('LA', 'Lao People''s Democratic Republic', 'Laos'),
('LB', 'Lebanon', 'Liban'),
('LC', 'Saint Lucia', 'Sainte-Lucie'),
('LI', 'Liechtenstein', 'Liechtenstein'),
('LK', 'Sri Lanka', 'Sri Lanka'),
('LR', 'Liberia', 'Libéria'),
('LS', 'Lesotho', 'Lesotho'),
('LT', 'Lithuania', 'Lituanie'),
('LU', 'Luxembourg', 'Luxembourg'),
('LV', 'Latvia', 'Lettonie'),
('LY', 'Libya', 'Libye'),
('MA', 'Morocco', 'Maroc'),
('MC', 'Monaco', 'Monaco'),
('MD', 'Moldova', 'Moldavie'),
('ME', 'Montenegro', 'Monténégro'),
('MF', 'Saint-Martin (France)', 'Saint-Martin (France)'),
('MG', 'Madagascar', 'Madagascar'),
('MH', 'Marshall Islands', 'Îles Marshall'),
('MK', 'Macedonia', 'Macédoine'),
('ML', 'Mali', 'Mali'),
('MM', 'Myanmar', 'Myanmar'),
('MN', 'Mongolia', 'Mongolie'),
('MO', 'Macau', 'Macao'),
('MP', 'Northern Mariana Islands', 'Mariannes du Nord'),
('MQ', 'Martinique', 'Martinique'),
('MR', 'Mauritania', 'Mauritanie'),
('MS', 'Montserrat', 'Montserrat'),
('MT', 'Malta', 'Malte'),
('MU', 'Mauritius', 'Maurice'),
('MV', 'Maldives', 'Maldives'),
('MW', 'Malawi', 'Malawi'),
('MX', 'Mexico', 'Mexique'),
('MY', 'Malaysia', 'Malaisie'),
('MZ', 'Mozambique', 'Mozambique'),
('NA', 'Namibia', 'Namibie'),
('NC', 'New Caledonia', 'Nouvelle-Calédonie'),
('NE', 'Niger', 'Niger'),
('NF', 'Norfolk Island', 'Île Norfolk'),
('NG', 'Nigeria', 'Nigeria'),
('NI', 'Nicaragua', 'Nicaragua'),
('NL', 'The Netherlands', 'Pays-Bas'),
('NO', 'Norway', 'Norvège'),
('NP', 'Nepal', 'Népal'),
('NR', 'Nauru', 'Nauru'),
('NU', 'Niue', 'Niue'),
('NZ', 'New Zealand', 'Nouvelle-Zélande'),
('OM', 'Oman', 'Oman'),
('PA', 'Panama', 'Panama'),
('PE', 'Peru', 'Pérou'),
('PF', 'French Polynesia', 'Polynésie française'),
('PG', 'Papua New Guinea', 'Papouasie-Nouvelle-Guinée'),
('PH', 'Philippines', 'Philippines'),
('PK', 'Pakistan', 'Pakistan'),
('PL', 'Poland', 'Pologne'),
('PM', 'St. Pierre and Miquelon', 'Saint-Pierre-et-Miquelon'),
('PN', 'Pitcairn', 'Pitcairn'),
('PR', 'Puerto Rico', 'Puerto Rico'),
('PS', 'Palestine, State of', 'Palestine'),
('PT', 'Portugal', 'Portugal'),
('PW', 'Palau', 'Palau'),
('PY', 'Paraguay', 'Paraguay'),
('QA', 'Qatar', 'Qatar'),
('RE', 'Réunion', 'Réunion'),
('RO', 'Romania', 'Roumanie'),
('RS', 'Serbia', 'Serbie'),
('RU', 'Russian Federation', 'Russie'),
('RW', 'Rwanda', 'Rwanda'),
('SA', 'Saudi Arabia', 'Arabie saoudite'),
('SB', 'Solomon Islands', 'Îles Salomon'),
('SC', 'Seychelles', 'Seychelles'),
('SD', 'Sudan', 'Soudan'),
('SE', 'Sweden', 'Suède'),
('SG', 'Singapore', 'Singapour'),
('SH', 'Saint Helena', 'Sainte-Hélène'),
('SI', 'Slovenia', 'Slovénie'),
('SJ', 'Svalbard and Jan Mayen Islands', 'Svalbard et île de Jan Mayen'),
('SK', 'Slovakia', 'Slovaquie'),
('SL', 'Sierra Leone', 'Sierra Leone'),
('SM', 'San Marino', 'Saint-Marin'),
('SN', 'Senegal', 'Sénégal'),
('SO', 'Somalia', 'Somalie'),
('SR', 'Suriname', 'Suriname'),
('SS', 'South Sudan', 'Soudan du Sud'),
('ST', 'Sao Tome and Principe', 'Sao Tomé-et-Principe'),
('SV', 'El Salvador', 'El Salvador'),
('SX', 'Sint Maarten (Dutch part)', 'Saint-Martin (Pays-Bas)'),
('SY', 'Syria', 'Syrie'),
('SZ', 'Swaziland', 'Swaziland'),
('TC', 'Turks and Caicos Islands', 'Îles Turks et Caicos'),
('TD', 'Chad', 'Tchad'),
('TF', 'French Southern Territories', 'Terres australes françaises'),
('TG', 'Togo', 'Togo'),
('TH', 'Thailand', 'Thaïlande'),
('TJ', 'Tajikistan', 'Tadjikistan'),
('TK', 'Tokelau', 'Tokelau'),
('TL', 'Timor-Leste', 'Timor-Leste'),
('TM', 'Turkmenistan', 'Turkménistan'),
('TN', 'Tunisia', 'Tunisie'),
('TO', 'Tonga', 'Tonga'),
('TR', 'Turkey', 'Turquie'),
('TT', 'Trinidad and Tobago', 'Trinité-et-Tobago'),
('TV', 'Tuvalu', 'Tuvalu'),
('TW', 'Taiwan', 'Taïwan'),
('TZ', 'Tanzania', 'Tanzanie'),
('UA', 'Ukraine', 'Ukraine'),
('UG', 'Uganda', 'Ouganda'),
('UM', 'United States Minor Outlying Islands', 'Îles mineures éloignées des États-Unis'),
('US', 'United States', 'États-Unis'),
('UY', 'Uruguay', 'Uruguay'),
('UZ', 'Uzbekistan', 'Ouzbékistan'),
('VA', 'Vatican', 'Vatican'),
('VC', 'Saint Vincent and the Grenadines', 'Saint-Vincent-et-les-Grenadines'),
('VE', 'Venezuela', 'Venezuela'),
('VG', 'Virgin Islands (British)', 'Îles Vierges britanniques'),
('VI', 'Virgin Islands (U.S.)', 'Îles Vierges américaines'),
('VN', 'Vietnam', 'Vietnam'),
('VU', 'Vanuatu', 'Vanuatu'),
('WF', 'Wallis and Futuna Islands', 'Îles Wallis-et-Futuna'),
('WS', 'Samoa', 'Samoa'),
('YE', 'Yemen', 'Yémen'),
('YT', 'Mayotte', 'Mayotte'),
('ZA', 'South Africa', 'Afrique du Sud'),
('ZM', 'Zambia', 'Zambie'),
('ZW', 'Zimbabwe', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `paidby`
--
-- Creation: Jul 16, 2015 at 11:41 AM
--

DROP TABLE IF EXISTS `paidby`;
CREATE TABLE IF NOT EXISTS `paidby` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `party_name` varchar(255) NOT NULL,
  `mobile_no` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `party_name` (`party_name`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `paidby`
--

INSERT INTO `paidby` (`ID`, `party_name`, `mobile_no`, `email`, `country`, `address`) VALUES
(1, 'unknown', NULL, NULL, NULL, NULL),
(2, 'Rajat Tiwari', '8769810995', 'Rajat@gamil.com', 'Indonesia', ''),
(3, 'Shubham Seth', '85796687', 'shu@gmail.com', 'American Samoa', ''),
(4, 'SukhVendra', '7418529630', 'a@aa.com', 'India', ''),
(5, 'S & D', '015810220', 's_d@gmail.com', 'Brunei Darussalam', 'near 1/2 Gate'),
(8, 'Parents  ', '1236', '', 'Indonesia', ''),
(9, 'Ronak', '', 'A@A.COM', 'Bosnia and Herzegovina', '');

-- --------------------------------------------------------

--
-- Table structure for table `paidto`
--
-- Creation: Jul 16, 2015 at 05:49 PM
--

DROP TABLE IF EXISTS `paidto`;
CREATE TABLE IF NOT EXISTS `paidto` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `party_name` varchar(255) NOT NULL,
  `mobile_no` varchar(13) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `party_name` (`party_name`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `moblie_no` (`mobile_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `paidto`
--

INSERT INTO `paidto` (`ID`, `party_name`, `mobile_no`, `email`, `country`, `address`) VALUES
(1, 'unknown', NULL, NULL, NULL, NULL),
(2, 'Rahul Kumar', '85794', 'Rahul@gamil.com', 'Åland Islands', ''),
(3, 'Abhinav', '8529637410', 'abhi@gmail.com', 'United Arab Emirates', ''),
(4, 'S & D', '015810220', 's_d@gmail.com', 'Brunei Darussalam', 'near 1/2 Gate'),
(5, 'Jiwan', '7896544123', 'jiv@india.com', 'India', 'Sader Bazar , Delhi'),
(6, 'Ronak', '', 'A@A.COM', 'Bosnia and Herzegovina', '');

-- --------------------------------------------------------

--
-- Table structure for table `ronak_account_personal`
--
-- Creation: Aug 03, 2015 at 08:12 AM
--

DROP TABLE IF EXISTS `ronak_account_personal`;
CREATE TABLE IF NOT EXISTS `ronak_account_personal` (
  `t_date` date DEFAULT NULL,
  `t_id` int(20) NOT NULL AUTO_INCREMENT,
  `method` varchar(10) DEFAULT NULL,
  `debit` float DEFAULT NULL,
  `credit` float DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `paid_to` varchar(30) DEFAULT NULL,
  `paid_by` varchar(30) DEFAULT NULL,
  `t_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`t_id`),
  KEY `category` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ronak_account_personal`
--

INSERT INTO `ronak_account_personal` (`t_date`, `t_id`, `method`, `debit`, `credit`, `category`, `paid_to`, `paid_by`, `t_desc`) VALUES
('2015-08-03', 1, 'Cash', 100, 0, 'Interest Recived', 'unknown', 'S & D', 'Int.');

-- --------------------------------------------------------

--
-- Stand-in structure for view `ronak_monthb`
--
DROP VIEW IF EXISTS `ronak_monthb`;
CREATE TABLE IF NOT EXISTS `ronak_monthb` (
`t_date` date
,`t_id` int(20)
,`method` varchar(10)
,`debit` float
,`credit` float
,`category` varchar(50)
,`paid_to` varchar(30)
,`paid_by` varchar(30)
,`t_desc` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `ronak_weekb`
--
DROP VIEW IF EXISTS `ronak_weekb`;
CREATE TABLE IF NOT EXISTS `ronak_weekb` (
`t_date` date
,`t_id` int(20)
,`method` varchar(10)
,`debit` float
,`credit` float
,`category` varchar(50)
,`paid_to` varchar(30)
,`paid_by` varchar(30)
,`t_desc` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `ronak_yearb`
--
DROP VIEW IF EXISTS `ronak_yearb`;
CREATE TABLE IF NOT EXISTS `ronak_yearb` (
`t_date` date
,`t_id` int(20)
,`method` varchar(10)
,`debit` float
,`credit` float
,`category` varchar(50)
,`paid_to` varchar(30)
,`paid_by` varchar(30)
,`t_desc` varchar(255)
);
-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Jul 14, 2015 at 06:42 AM
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `U_ID` int(30) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `userPIN` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL,
  PRIMARY KEY (`U_ID`),
  UNIQUE KEY `userName` (`userName`),
  UNIQUE KEY `userPIN` (`userPIN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1029 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`U_ID`, `userName`, `userPIN`, `userType`) VALUES
(1001, 'admin', 'root', 'admin'),
(1025, 'qwe', 'q', 'admin'),
(1026, 'ronak', '123', 'admin'),
(1028, 'ae', '12', 'admin');

-- --------------------------------------------------------

--
-- Structure for view `admin_monthb`
--
DROP TABLE IF EXISTS `admin_monthb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admin_monthb` AS select `admin_account_personal`.`t_date` AS `t_date`,`admin_account_personal`.`t_id` AS `t_id`,`admin_account_personal`.`method` AS `method`,`admin_account_personal`.`debit` AS `debit`,`admin_account_personal`.`credit` AS `credit`,`admin_account_personal`.`category` AS `category`,`admin_account_personal`.`paid_to` AS `paid_to`,`admin_account_personal`.`paid_by` AS `paid_by`,`admin_account_personal`.`t_desc` AS `t_desc` from `admin_account_personal` where (month(`admin_account_personal`.`t_date`) = month(curdate()));

-- --------------------------------------------------------

--
-- Structure for view `admin_weekb`
--
DROP TABLE IF EXISTS `admin_weekb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admin_weekb` AS select `admin_account_personal`.`t_date` AS `t_date`,`admin_account_personal`.`t_id` AS `t_id`,`admin_account_personal`.`method` AS `method`,`admin_account_personal`.`debit` AS `debit`,`admin_account_personal`.`credit` AS `credit`,`admin_account_personal`.`category` AS `category`,`admin_account_personal`.`paid_to` AS `paid_to`,`admin_account_personal`.`paid_by` AS `paid_by`,`admin_account_personal`.`t_desc` AS `t_desc` from `admin_account_personal` where (`admin_account_personal`.`t_date` between (now() - interval 1 week) and now());

-- --------------------------------------------------------

--
-- Structure for view `admin_yearb`
--
DROP TABLE IF EXISTS `admin_yearb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admin_yearb` AS select `admin_account_personal`.`t_date` AS `t_date`,`admin_account_personal`.`t_id` AS `t_id`,`admin_account_personal`.`method` AS `method`,`admin_account_personal`.`debit` AS `debit`,`admin_account_personal`.`credit` AS `credit`,`admin_account_personal`.`category` AS `category`,`admin_account_personal`.`paid_to` AS `paid_to`,`admin_account_personal`.`paid_by` AS `paid_by`,`admin_account_personal`.`t_desc` AS `t_desc` from `admin_account_personal` where (year(`admin_account_personal`.`t_date`) = year(curdate()));

-- --------------------------------------------------------

--
-- Structure for view `ronak_monthb`
--
DROP TABLE IF EXISTS `ronak_monthb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ronak_monthb` AS select `ronak_account_personal`.`t_date` AS `t_date`,`ronak_account_personal`.`t_id` AS `t_id`,`ronak_account_personal`.`method` AS `method`,`ronak_account_personal`.`debit` AS `debit`,`ronak_account_personal`.`credit` AS `credit`,`ronak_account_personal`.`category` AS `category`,`ronak_account_personal`.`paid_to` AS `paid_to`,`ronak_account_personal`.`paid_by` AS `paid_by`,`ronak_account_personal`.`t_desc` AS `t_desc` from `ronak_account_personal` where (month(`ronak_account_personal`.`t_date`) = month(curdate()));

-- --------------------------------------------------------

--
-- Structure for view `ronak_weekb`
--
DROP TABLE IF EXISTS `ronak_weekb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ronak_weekb` AS select `ronak_account_personal`.`t_date` AS `t_date`,`ronak_account_personal`.`t_id` AS `t_id`,`ronak_account_personal`.`method` AS `method`,`ronak_account_personal`.`debit` AS `debit`,`ronak_account_personal`.`credit` AS `credit`,`ronak_account_personal`.`category` AS `category`,`ronak_account_personal`.`paid_to` AS `paid_to`,`ronak_account_personal`.`paid_by` AS `paid_by`,`ronak_account_personal`.`t_desc` AS `t_desc` from `ronak_account_personal` where (`ronak_account_personal`.`t_date` between (now() - interval 1 week) and now());

-- --------------------------------------------------------

--
-- Structure for view `ronak_yearb`
--
DROP TABLE IF EXISTS `ronak_yearb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ronak_yearb` AS select `ronak_account_personal`.`t_date` AS `t_date`,`ronak_account_personal`.`t_id` AS `t_id`,`ronak_account_personal`.`method` AS `method`,`ronak_account_personal`.`debit` AS `debit`,`ronak_account_personal`.`credit` AS `credit`,`ronak_account_personal`.`category` AS `category`,`ronak_account_personal`.`paid_to` AS `paid_to`,`ronak_account_personal`.`paid_by` AS `paid_by`,`ronak_account_personal`.`t_desc` AS `t_desc` from `ronak_account_personal` where (year(`ronak_account_personal`.`t_date`) = year(curdate()));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_account_personal`
--
ALTER TABLE `admin_account_personal`
  ADD CONSTRAINT `admin_account_personal_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categ` (`category`),
  ADD CONSTRAINT `admin_account_personal_ibfk_2` FOREIGN KEY (`paid_to`) REFERENCES `paidto` (`party_name`),
  ADD CONSTRAINT `admin_account_personal_ibfk_3` FOREIGN KEY (`paid_by`) REFERENCES `paidby` (`party_name`);

--
-- Constraints for table `ronak_account_personal`
--
ALTER TABLE `ronak_account_personal`
  ADD CONSTRAINT `ronak_account_personal_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categ` (`category`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
