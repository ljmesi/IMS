-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 25, 2019 at 04:20 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pet_feeder`
--

-- --------------------------------------------------------

--
-- Table structure for table `age`
--

DROP TABLE IF EXISTS `age`;
CREATE TABLE IF NOT EXISTS `age` (
  `ageID` int(11) NOT NULL AUTO_INCREMENT,
  `a_low` float(10,7) UNSIGNED DEFAULT NULL,
  `a_high` float(15,7) UNSIGNED DEFAULT NULL,
  `a_category` varchar(45) NOT NULL,
  `age_multi` float(10,7) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`ageID`)
) ENGINE=MyISAM AUTO_INCREMENT=2033 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `age`
--

INSERT INTO `age` (`ageID`, `a_low`, `a_high`, `a_category`, `age_multi`) VALUES
(2017, 0.1666667, 0.2500000, 'puppy 2mo', 0.0000000),
(2018, 0.2500000, 0.3300000, 'puppy 3mo', 0.0000000),
(2019, 0.3300000, 0.5000000, ' puppy 4mo', 0.0000000),
(2020, 0.5000000, 0.5833333, 'puppy 5mo', 0.0000000),
(2021, 0.5833333, 0.6667000, 'puppy 6mo', 0.0000000),
(2022, 0.0666700, 0.8333300, 'puppy 7mo', 0.0000000),
(2023, 0.8333330, 1.0000000, 'puppy 8mo', 0.0000000),
(2024, 1.0000000, 1.1666670, 'puppy 10mo', 0.0000000),
(2025, 1.6666700, 2.0000000, 'puppy 12 mo', 0.0000000),
(2026, 0.8333330, 8.0000000, 'adult small - medium dog', 0.0000000),
(2027, 2.0000000, 7.0000000, 'adult large dog', 0.0000000),
(2028, 7.0000000, 100.0000000, 'senior dog', 0.0000000),
(2029, 5.0000000, 100.0000000, 'senior dog large', 0.0000000),
(2030, 0.8000000, 1.0000000, 'kitten', 1.3300000),
(2031, 1.0000000, 9.0000000, 'adult cat', 1.0000000),
(2032, 9.0000000, 100.0000000, 'senior cat', 0.8500000);

-- --------------------------------------------------------

--
-- Table structure for table `cat_adult_diet`
--

DROP TABLE IF EXISTS `cat_adult_diet`;
CREATE TABLE IF NOT EXISTS `cat_adult_diet` (
  `size` varchar(255) NOT NULL,
  `body_weight` bigint(20) DEFAULT NULL,
  `High_activity` float(10,9) DEFAULT NULL,
  `Normal_activity` float(10,9) DEFAULT NULL,
  `Low_activity` float(10,9) DEFAULT NULL,
  `Diet` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_adult_diet`
--

INSERT INTO `cat_adult_diet` (`size`, `body_weight`, `High_activity`, `Normal_activity`, `Low_activity`, `Diet`) VALUES
('small', 2000, 0.050000001, 0.047499999, 0.045000002, 'raw'),
('small', 4000, 0.028250000, 0.026750000, 0.025000000, 'raw'),
('medium', 5000, 0.020833001, 0.019833330, 0.018833330, 'raw'),
('medium', 8000, 0.020000000, 0.017875001, 0.015625000, 'raw'),
('large', 9000, 0.022221999, 0.020000000, 0.017777778, 'raw'),
('large', 11000, 0.020636329, 0.019363601, 0.018181801, 'raw'),
('small', 2000, 0.050000001, 0.047499999, 0.045000002, 'raw grain free'),
('small', 4000, 0.028250000, 0.026750000, 0.025000000, 'raw grain free'),
('medium', 5000, 0.021000000, 0.020000000, 0.018999999, 'raw grain free'),
('medium', 8000, 0.021000000, 0.017999999, 0.016000001, 'raw grain free'),
('large', 9000, 0.022500001, 0.021000000, 0.017999999, 'raw grain free'),
('large', 11000, 0.021000000, 0.019400001, 0.018200001, 'raw grain free'),
('small', 2000, 0.016400000, 0.015500000, 0.014700000, 'dry'),
('small', 4000, 0.007420000, 0.007000000, 0.066500001, 'dry'),
('medium', 5000, 0.014628000, 0.013800000, 0.131099999, 'dry'),
('medium', 8000, 0.012720000, 0.012000000, 0.011400000, 'dry'),
('large', 9000, 0.012249000, 0.011556000, 0.010978000, 'dry'),
('large', 11000, 0.011448000, 0.010820000, 0.010000000, 'dry'),
('small', 2000, 0.016799999, 0.016000001, 0.015000000, 'dry grain free'),
('small', 4000, 0.007800000, 0.007500000, 0.007000000, 'dry grain free'),
('medium', 5000, 0.015000000, 0.014000000, 0.014000000, 'dry grain free'),
('medium', 8000, 0.012720000, 0.012500000, 0.012000000, 'dry grain free'),
('large', 9000, 0.013000000, 0.012500000, 0.012000000, 'dry grain free'),
('large', 11000, 0.011500000, 0.012000000, 0.010000000, 'dry grain free'),
('small', 2000, 0.063100003, 0.059500001, 0.056000002, 'wet'),
('small', 4000, 0.050349999, 0.047499999, 0.045000002, 'wet'),
('medium', 5000, 0.051300000, 0.048400000, 0.045979999, 'wet'),
('medium', 8000, 0.043724999, 0.041250002, 0.039200000, 'wet'),
('large', 9000, 0.042824000, 0.040440001, 0.038400002, 'wet'),
('large', 11000, 0.040500000, 0.038199998, 0.036290001, 'wet'),
('small', 2000, 0.064999998, 0.059999999, 0.059000000, 'wet grain free'),
('small', 4000, 0.050999999, 0.048000000, 0.046999998, 'wet grain free'),
('medium', 5000, 0.052999999, 0.050000001, 0.046000000, 'wet grain free'),
('medium', 8000, 0.046999998, 0.043000001, 0.039999999, 'wet grain free'),
('large', 9000, 0.043000001, 0.043000001, 0.039999999, 'wet grain free'),
('large', 11000, 0.041999999, 0.041000001, 0.040199999, 'wet grain free');

-- --------------------------------------------------------

--
-- Table structure for table `cat_breed`
--

DROP TABLE IF EXISTS `cat_breed`;
CREATE TABLE IF NOT EXISTS `cat_breed` (
  `b_name` varchar(255) NOT NULL,
  `male_low_base` int(10) UNSIGNED DEFAULT NULL,
  `male_high_base` int(10) UNSIGNED NOT NULL,
  `female_low_base` int(10) UNSIGNED DEFAULT NULL,
  `female_high_base` int(10) UNSIGNED NOT NULL,
  `size` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_breed`
--

INSERT INTO `cat_breed` (`b_name`, `male_low_base`, `male_high_base`, `female_low_base`, `female_high_base`, `size`) VALUES
('Abyssinian', 3175, 4536, 2722, 3629, 'small'),
('American Bobtail', 5443, 7257, 3175, 4990, 'large'),
('American Curl', 3175, 4536, 2268, 3629, 'small'),
('American Shorthair', 4990, 6804, 3629, 5443, 'large'),
('American Wirehair', 5443, 6804, 3629, 5443, 'large'),
('Balinese-Javanese', 5443, 7257, 3629, 5443, 'medium'),
('Bengal', 4536, 8165, 2722, 5443, 'large'),
('Birman', 4082, 6804, 2722, 4536, 'medium'),
('Bombay', 3629, 4990, 2722, 4082, 'medium'),
('British Shorthair', 5443, 8165, 4082, 6804, 'large'),
('Burmese', 3629, 5443, 2722, 4536, 'medium'),
('Chartreux', 4536, 6804, 2722, 4990, 'large'),
('Cornish Rex', 2722, 4082, 2268, 3175, 'small'),
('Devon Rex', 3629, 4536, 2268, 3629, 'small'),
('Egyptian Mau', 4536, 6350, 2722, 4536, 'medium'),
('European Burmese', 4536, 6350, 3175, 4536, 'medium'),
('Exotic Shorthair', 3175, 6350, 2722, 4536, 'medium'),
('Havana Brown', 3629, 4536, 2722, 3629, 'medium'),
('Himalayan', 4082, 6350, 3175, 4990, 'medium'),
('Japanese Bobtail', 3175, 4536, 2268, 3175, 'medium'),
('Korat', 3629, 4536, 2722, 3629, 'medium'),
('LaPerm', 3175, 4536, 2268, 3629, 'medium'),
('Maine Coon', 5443, 6804, 4082, 5443, 'large'),
('Manx', 4082, 5897, 3175, 4990, 'medium'),
('Norwegian', 4536, 7257, 3629, 5443, 'large'),
('Ocicat', 4536, 6804, 3175, 5443, 'medium'),
('Oriental', 3175, 4536, 2268, 3629, 'small'),
('Persian', 4082, 6350, 3175, 4990, 'medium'),
('Peterbald', 3629, 4536, 2722, 3629, 'small'),
('Pixiebob', 5443, 7711, 3629, 5443, 'large'),
('Ragamuffin', 5443, 9072, 3629, 6804, 'large'),
('Russian Blue', 3629, 6804, 2722, 4990, 'small'),
('Savannah', 5443, 11340, 4536, 9525, 'large'),
('Scottish Fold', 4082, 5443, 2722, 4082, 'medium'),
('Selkirk', 4990, 7257, 2722, 5443, 'medium'),
('Siamese', 4990, 6804, 3629, 5443, 'medium'),
('Siberian', 3629, 7711, 2722, 5897, 'large'),
('Singapura', 2722, 3629, 2268, 2722, 'small'),
('Somali', 4536, 5443, 2722, 4536, 'large'),
('Sphynx', 3629, 5443, 2722, 4082, 'medium'),
('Tonkinese', 3629, 5443, 2722, 3629, 'medium'),
('Toyger', 4536, 6804, 3175, 4536, 'medium'),
('Turkish Angora', 3175, 4536, 2268, 3629, 'medium'),
('Turkish Van', 4082, 9072, 3175, 5443, 'large');

-- --------------------------------------------------------

--
-- Table structure for table `diet`
--

DROP TABLE IF EXISTS `diet`;
CREATE TABLE IF NOT EXISTS `diet` (
  `dID` int(11) NOT NULL AUTO_INCREMENT,
  `diet_name` varchar(255) NOT NULL,
  PRIMARY KEY (`dID`)
) ENGINE=MyISAM AUTO_INCREMENT=2010 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diet`
--

INSERT INTO `diet` (`dID`, `diet_name`) VALUES
(2001, 'raw'),
(2002, 'raw grain free'),
(2003, 'raw limited'),
(2004, 'dry'),
(2005, 'dry grain free'),
(2006, 'dry limited'),
(2007, 'wet'),
(2008, 'wet grain free'),
(2009, 'wet limited');

-- --------------------------------------------------------

--
-- Table structure for table `diet_tag_map`
--

DROP TABLE IF EXISTS `diet_tag_map`;
CREATE TABLE IF NOT EXISTS `diet_tag_map` (
  `dID` int(11) NOT NULL DEFAULT '0',
  `tagID` int(11) NOT NULL,
  PRIMARY KEY (`dID`,`tagID`),
  KEY `tag_fk` (`tagID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dog_adult_diet`
--

DROP TABLE IF EXISTS `dog_adult_diet`;
CREATE TABLE IF NOT EXISTS `dog_adult_diet` (
  `size` varchar(255) NOT NULL,
  `body_weight` bigint(20) DEFAULT NULL,
  `High_activity` float(10,9) DEFAULT NULL,
  `Normal_activity` float(10,9) DEFAULT NULL,
  `Low_activity` float(10,9) DEFAULT NULL,
  `Diet` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dog_adult_diet`
--

INSERT INTO `dog_adult_diet` (`size`, `body_weight`, `High_activity`, `Normal_activity`, `Low_activity`, `Diet`) VALUES
('toy', 2000, 0.029500000, 0.026000001, 0.022500001, 'dry grain free'),
('toy', 4000, 0.025000000, 0.022000000, 0.019250000, 'dry grain free'),
('small', 5000, 0.023600001, 0.020800000, 0.018200001, 'dry grain free'),
('small', 6000, 0.022666667, 0.020000000, 0.017333332, 'dry grain free'),
('small', 8000, 0.021125000, 0.018625000, 0.016249999, 'dry grain free'),
('small', 10000, 0.012300000, 0.010900000, 0.009600000, 'dry grain free'),
('medium', 10000, 0.020000000, 0.017700000, 0.015400000, 'dry grain free'),
('medium', 15000, 0.018133333, 0.016133333, 0.014066667, 'dry grain free'),
('medium', 23000, 0.016565217, 0.014695652, 0.012826087, 'dry grain free'),
('large', 23000, 0.017434783, 0.015434783, 0.013478261, 'dry grain free'),
('large', 25000, 0.017440001, 0.015480000, 0.013480000, 'dry grain free'),
('large', 30000, 0.015433333, 0.013700000, 0.011966667, 'dry grain free'),
('large', 35000, 0.014171429, 0.012600000, 0.011028571, 'dry grain free'),
('large', 40000, 0.013150000, 0.011700000, 0.010225000, 'dry grain free'),
('large', 46000, 0.012086957, 0.010760870, 0.009413043, 'dry grain free'),
('xlarge', 46000, 0.012673913, 0.011282609, 0.009869565, 'dry grain free'),
('xlarge', 50000, 0.013060000, 0.011600000, 0.010160000, 'dry grain free'),
('xlarge', 55000, 0.012545455, 0.011163636, 0.009781818, 'dry grain free'),
('xlarge', 60000, 0.012516667, 0.011133333, 0.009750000, 'dry grain free'),
('xlarge', 65000, 0.012200000, 0.010861538, 0.009523077, 'dry grain free'),
('xlarge', 70000, 0.012085714, 0.010757143, 0.009414286, 'dry grain free'),
('xlarge', 75000, 0.011906667, 0.010586667, 0.009280000, 'dry grain free'),
('xlarge', 80000, 0.011712500, 0.010425000, 0.009150000, 'dry grain free'),
('xlarge', 85000, 0.011635294, 0.010352941, 0.009082353, 'dry grain free'),
('xlarge', 90000, 0.011411111, 0.010155556, 0.008911111, 'dry grain free'),
('xlarge', 95000, 0.011389474, 0.010147368, 0.008894737, 'dry grain free'),
('toy', 2000, 0.028500000, 0.025000000, 0.021500001, 'dry'),
('toy', 4000, 0.024000000, 0.021000000, 0.018250000, 'dry'),
('small', 5000, 0.022600001, 0.019800000, 0.017200001, 'dry'),
('small', 6000, 0.021666666, 0.018999999, 0.016333332, 'dry'),
('small', 8000, 0.020125000, 0.017625000, 0.015250000, 'dry'),
('small', 10000, 0.011300000, 0.009900000, 0.008600000, 'dry'),
('medium', 10000, 0.018999999, 0.016700000, 0.014400000, 'dry'),
('medium', 15000, 0.017133333, 0.015133333, 0.013066667, 'dry'),
('medium', 23000, 0.015565217, 0.013695652, 0.011826087, 'dry'),
('large', 23000, 0.016434783, 0.014434783, 0.012478261, 'dry'),
('large', 25000, 0.016440000, 0.014480000, 0.012480000, 'dry'),
('large', 30000, 0.014433333, 0.012700000, 0.010966667, 'dry'),
('large', 35000, 0.013171429, 0.011600000, 0.010028571, 'dry'),
('large', 40000, 0.012150000, 0.010700000, 0.009225000, 'dry'),
('large', 46000, 0.011086957, 0.009760870, 0.008413043, 'dry'),
('xlarge', 46000, 0.011673913, 0.010282609, 0.008869565, 'dry'),
('xlarge', 50000, 0.012060000, 0.010600000, 0.009160000, 'dry'),
('xlarge', 55000, 0.011545455, 0.010163636, 0.008781818, 'dry'),
('xlarge', 60000, 0.011516667, 0.010133333, 0.008750000, 'dry'),
('xlarge', 65000, 0.011200000, 0.009861538, 0.008523077, 'dry'),
('xlarge', 70000, 0.011085714, 0.009757143, 0.008414286, 'dry'),
('xlarge', 75000, 0.010906667, 0.009586667, 0.008280000, 'dry'),
('xlarge', 80000, 0.010712500, 0.009425000, 0.008150000, 'dry'),
('xlarge', 85000, 0.010635294, 0.009352941, 0.008082353, 'dry'),
('xlarge', 90000, 0.010411111, 0.009155556, 0.007911111, 'dry'),
('xlarge', 95000, 0.010389474, 0.009147368, 0.007894737, 'dry'),
('toy', 5000, 0.050000001, 0.045699999, 0.036699999, 'raw'),
('small', 8000, 0.039999999, 0.035000000, 0.029999999, 'raw'),
('medium', 10000, 0.029999999, 0.025000000, 0.022000000, 'raw'),
('large', 23000, 0.024000000, 0.023000000, 0.022000000, 'raw'),
('xlarge', 46000, 0.023000000, 0.022000000, 0.021000000, 'raw'),
('toy', 5000, 0.050999999, 0.046000000, 0.036800001, 'raw grain free'),
('small', 8000, 0.041000001, 0.037000000, 0.032000002, 'raw grain free'),
('medium', 10000, 0.030999999, 0.021000000, 0.023000000, 'raw grain free'),
('large', 23000, 0.025000000, 0.024000000, 0.023000000, 'raw grain free'),
('xlarge', 46000, 0.024000000, 0.023000000, 0.022000000, 'raw grain free'),
('toy', 5000, 0.056600001, 0.050999999, 0.041000001, 'wet'),
('small', 8000, 0.063749999, 0.057999998, 0.045000002, 'wet'),
('medium', 10000, 0.056600001, 0.050999999, 0.041000001, 'wet'),
('large', 23000, 0.050521739, 0.041999999, 0.029999999, 'wet'),
('xlarge', 46000, 0.100000001, 0.090000004, 0.079999998, 'wet'),
('toy', 5000, 0.057000000, 0.052000001, 0.041999999, 'wet grain free'),
('small', 8000, 0.064999998, 0.059999999, 0.046000000, 'wet grain free'),
('medium', 10000, 0.057000000, 0.052000001, 0.041999999, 'wet grain free'),
('large', 23000, 0.051500000, 0.043000001, 0.030999999, 'wet grain free'),
('xlarge', 46000, 0.109999999, 0.090999998, 0.081000000, 'wet grain free');

-- --------------------------------------------------------

--
-- Table structure for table `dog_breed`
--

DROP TABLE IF EXISTS `dog_breed`;
CREATE TABLE IF NOT EXISTS `dog_breed` (
  `b_name` varchar(255) NOT NULL,
  `male_low_base` int(10) UNSIGNED DEFAULT NULL,
  `male_high_base` int(10) UNSIGNED NOT NULL,
  `female_low_base` int(10) UNSIGNED DEFAULT NULL,
  `female_high_base` int(10) UNSIGNED NOT NULL,
  `size` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dog_breed`
--

INSERT INTO `dog_breed` (`b_name`, `male_low_base`, `male_high_base`, `female_low_base`, `female_high_base`, `size`) VALUES
('Affenpinscher', 3175, 4536, 3175, 4536, 'small'),
('Afghan Hound', 2680, 27216, 2680, 27216, 'large'),
('Airedale Terrier', 2680, 31751, 2680, 31751, 'large'),
('Akita', 45359, 5897, 31751, 45359, 'xlarge'),
('Alaskan Malamute', NULL, 385, NULL, 34019, 'large'),
('American English Coonhound', 2042, 29483, 2042, 29483, 'large'),
('American Eskimo Dog(toy)', 2722, 4536, 2722, 4536, 'small'),
('American Eskimo Dog (miniature)', 4536, 9072, 4536, 9072, 'small'),
('American Eskimo Dogs(standard)', 140, 15876, 140, 15876, 'medium'),
('American Foxhound', 29483, 31751, 27216, 29483, 'large'),
('American Hairless Terrier', 543, 7257, 543, 7257, 'small'),
('American Staffordshire Terrier', 24948, 31751, 18144, 24948, 'large'),
('ANULLtolian Shepherd Dog', 49895, 68039, 36287, 5431, 'xlarge'),
('Australian Cattle Dog', 15876, 2680, 15876, 2680, 'medium'),
('Australian Shepherd', 2680, 29483, 18144, 24948, 'large'),
('Australian Terrier', 543, 8165, 543, 8165, 'small'),
('Basenji', 1086, 1086, 979, 979, 'medium'),
('Basset Hound', 18144, 29483, 18144, 29483, 'large'),
('Beagles(13 inches & under)', 6804, 9072, 9072, 13608, 'small'),
('Beagles(13-15 inches)', 9072, 13608, 9072, 13608, 'medium'),
('Bearded Collie', 2042, 24948, 2042, 24948, 'large'),
('Beauceron', 31751, 49895, 31751, 49895, 'xlarge'),
('Bedlington Terrier', 71, 10433, 71, 10433, 'medium'),
('Belgian Malinois', 27216, 36287, 18144, 27216, 'large'),
('Belgian Sheepdog', 24948, 34019, 2042, 27216, 'large'),
('Belgian Tervuren', 24948, 34019, 2042, 27216, 'large'),
('Bergamaco', 31751, 38102, 25855, 3205, 'large'),
('Berger Picard', 2680, 31751, 2680, 31751, 'large'),
('Bernese Mountain Dog', 36287, 52163, 31751, 43091, 'xlarge'),
('Bichons Frise', 543, 8165, 543, 8165, 'small'),
('Black and Tan Coonhound', 29483, 49895, 29483, 49895, 'xlarge'),
('Black Russian terrier', 36287, 5897, 36287, 5897, 'xlarge'),
('Bloodhound', 40823, 49895, 36287, 45359, 'xlarge'),
('Bluetick Coonhound', 24948, 36287, 2042, 29483, 'large'),
('Boerboel', 68039, 90718, 68039, 90718, 'xlarge'),
('Border Collie', 13608, 24948, 13608, 24948, 'large'),
('Border terrier', 5897, 7031, 5216, 6350, 'small'),
('Borzoi', 34019, 47627, 27216, 385, 'xlarge'),
('Boston terrier', 543, 140, 543, 140, 'medium'),
('Bouviers des Flandre', 31751, 49895, 31751, 49895, 'xlarge'),
('Boxer', 29483, 36287, 2680, 29483, 'large'),
('Briard', 24948, 45359, 24948, 45359, 'large'),
('Brittany', 13608, 18144, 13608, 18144, 'medium'),
('Brussels Griffon', 3629, 4536, 3629, 4536, 'small'),
('bull terrier', 2680, 31751, 2680, 31751, 'large'),
('bulldog', 18144, 2680, 13608, 18144, 'medium'),
('BullMastiff', 49895, 5897, 45359, 5431, 'xlarge'),
('Cairn terrier', NULL, 6350, NULL, 5897, 'small'),
('CaNULLn Dog', 2042, 24948, 15876, 2042, 'large'),
('Cardigan Welsh Corgi', 13608, 17236, 140, 1542, 'medium'),
('Cavalier King Charles Spaniel', 5897, 8165, 5897, 8165, 'small'),
('Cesky terrier', 6350, 1086, 6350, 1086, 'medium'),
('Chihuahua', 1361, 4536, 1361, 4536, 'small'),
('Chinese Crested', 3629, 543, 3629, 543, 'small'),
('Chine SharPei', 2042, 27216, 2042, 27216, 'large'),
('Chinok', 24948, 40823, 2680, 29483, 'large'),
('Chow Chow', 2042, 31751, 2042, 31751, 'large'),
('Cirnechi del EtNULL', 979, 1793, 71, 979, 'medium'),
('Collie', 27216, 34019, 2680, 29483, 'large'),
('Coton de Tulear', 4082, 6804, 3629, 5897, 'small'),
('Dachshunds(standard)', 7257, 14515, 7257, 14515, 'medium'),
('Dachshund(miniature)', 4082, 4990, 4082, 4990, 'small'),
('Dalmatian', 2042, 31751, 2042, 31751, 'large'),
('Dandie Dinmont terrier', 8165, 1086, 8165, 1086, 'medium'),
('Doberman Pinscher', 34019, 45359, 27216, 40823, 'large'),
('Dogue de Bordeaux', NULL, 5897, NULL, 5431, 'xlarge'),
('English Foxhound', 27216, 34019, 27216, 34019, 'large'),
('English Toy Spaniel', 3629, 6350, 3629, 6350, 'small'),
('Entlebucher Mountain Dog', 24948, 29483, 24948, 29483, 'large'),
('Finnish Laphund', 14969, 24040, 14969, 24040, 'large'),
('Finnish Spitz', 140, 14969, 9072, 1271, 'medium'),
('Fox terrier (Smooth)', 6804, 8165, 5897, 7257, 'small'),
('Fox terrier (Wire)', 7257, 8165, 6350, 7257, 'small'),
('French bulldog', 979, 1271, 979, 1271, 'medium'),
('German Pinscher', 140, 2042, 140, 2042, 'medium'),
('German Shepherd Dog', 29483, 40823, 2680, 31751, 'large'),
('Giant SchNULLuzer', 27216, 385, 24948, 34019, 'large'),
('Glen of Imal terrier', 14515, 18144, 14515, 18144, 'medium'),
('Great Dane', 63503, 79379, 49895, 63503, 'xlarge'),
('Great Pyrenese', 45359, 5897, 385, 45359, 'xlarge'),
('Greater Swis Mountain Dog', 52163, 63503, 385, 49895, 'xlarge'),
('Greyhound', 29483, 31751, 27216, 29483, 'large'),
('Harrier', 2042, 27216, 2042, 27216, 'large'),
('Havanese', 3175, 5897, 3175, 5897, 'small'),
('Ibizan Hound', 18144, 2680, 17236, 2042, 'medium'),
('Icelandic Sheepdog', 9072, 13608, 9072, 140, 'medium'),
('Irish terrier', 979, 1247, 9072, 140, 'medium'),
('Irish Wolfhound', 49895, 5431, 43091, 47627, 'xlarge'),
('Italian Greyhound', 3175, 6350, 3175, 6350, 'small'),
('Japanese Chin', 3175, 4990, 3175, 4990, 'small'),
('Kehonden', 15876, 2042, 15876, 2042, 'medium'),
('Kerry Blue terrier', 14969, 18144, 14061, 17236, 'medium'),
('Komondorok', 45359, 63503, 36287, 5431, 'xlarge'),
('Kuvazok', 45359, 52163, 31751, 40823, 'xlarge'),
(' Lagoti Romagnoli', 12927, 15876, 1086, 14061, 'medium'),
(' Lakeland terrier', 5897, 71, 543, 7257, 'small'),
(' Leonberger', 49895, 711, 40823, 63503, 'xlarge'),
(' Lhasa Apso', 543, 8165, 543, 8165, 'small'),
(' Lowchen', 4990, 6804, 4990, 6804, 'small'),
(' Maltese', 907, 3175, 907, 3175, 'toy'),
(' Manchester terrier(toy)', 3175, 543, 3175, 543, 'small'),
(' Manchester terriers (standard)', 543, 979, 543, 979, 'medium'),
(' Mastifff', 72575, 104326, 5431, 711, 'xlarge'),
(' Miniature American Shepherd', 9072, 18144, 9072, 18144, 'medium'),
(' Miniature Bull terrier', 8165, 1271, 8165, 1271, 'medium'),
(' Miniature Pinscher', 3629, 4536, 3629, 4536, 'small'),
(' Miniature SchNULLuzer', 4990, 9072, 4990, 9072, 'small'),
(' Neapolitan Mastiff', 61235, 68039, 43091, 49895, 'xlarge'),
(' Newfoundland', 5897, 68039, 45359, 5431, 'xlarge'),
(' Norfolk terrier', 4990, 543, 4990, 543, 'small'),
(' Norwegian Buhund', 14061, 18144, 1793, 15876, 'medium'),
(' Norwegian Elkhound', 2680, 24948, 18144, 2172, 'large'),
(' Norwegian Lundehund', 9072, 13608, 9072, 13608, 'medium'),
(' Norwich terrier', 4082, 543, 4082, 543, 'small'),
(' Old English Sheepdog', 27216, 45359, 27216, 45359, 'large'),
(' Oterhound', 47627, 52163, 31751, 36287, 'xlarge'),
(' Papillon', 268, 4536, 268, 4536, 'small'),
(' Parson Rusell terrier', 5897, 71, 5897, 71, 'small'),
(' Pekingese', 4536, 6350, 4536, 6350, 'small'),
(' Pembroke Welsh Corgi', 9072, 13608, 9072, 1271, 'medium'),
(' Petits Bassets Grifons Venden', 140, 18144, 140, 18144, 'medium'),
(' Pharaoh Hound', 2042, 24948, 2042, 24948, 'large'),
(' Plot', 2680, 27216, 18144, 24948, 'large'),
(' Pointer', 24948, 34019, 2042, 29483, 'large'),
(' Pointer (German Shorthaired)', 24948, 31751, 2042, 27216, 'large'),
(' Pointer (German Wirehaired)', 2680, 31751, 2680, 31751, 'large'),
(' Polish Lowland Sheepdog', 13608, 2680, 13608, 2680, 'medium'),
(' Pomeranian', 1361, 3175, 1361, 3175, 'toy'),
(' Poodle(toy)', 1814, 2722, 1814, 2722, 'toy'),
(' Poodle (miniature)', 4536, 6804, 4536, 6804, 'small'),
(' Poodles(standard) ', 27216, 31751, 18144, 2680, 'large'),
(' Portuguese Podengo Pequeno', 4082, 5897, 4082, 5897, 'small'),
(' Portuguese Water Dog', 19051, 27216, 15876, 2680, 'large'),
(' Pug', 6350, 8165, 6350, 8165, 'small'),
(' Pulik', 140, 15876, 140, 15876, 'medium'),
(' Pumik', 1247, 13154, 979, 1086, 'medium'),
(' Pyrenean Shepherd', 6804, 13608, 6804, 13608, 'medium'),
(' Rat terrier', 4536, 140, 4536, 140, 'medium'),
(' Redbone Coonhound', 2042, 31751, 2042, 31751, 'large'),
(' Retrievers (Chesapeake Bay)', 29483, 36287, 24948, 31751, 'large'),
(' Retriever (Curly Coated)', 27216, 43091, 27216, 43091, 'large'),
(' Retriever (Flat Coated)', 27216, 31751, 27216, 31751, 'large'),
(' Retriever (Golden)', 29483, 34019, 24948, 29483, 'large'),
(' Retriever (Labrador)', 29483, 36287, 24948, 31751, 'large'),
(' Retriever (Nova Scotia Duck Tolling)', 15876, 2680, 15876, 2680, 'medium'),
(' Rhodesian Ridgeback', 36287, 385, 29483, 31751, 'large'),
(' Rottweiler', 43091, 61235, 36287, 45359, 'xlarge'),
(' Rusell terrier', 4082, 6804, 4082, 6804, 'small'),
(' Saluki', 18144, 29483, 18144, 29483, 'large'),
(' Samoyed', 2042, 29483, 15876, 2680, 'large'),
(' Schiperke', 4536, 7257, 4536, 7257, 'small'),
(' Scotish Deerhound', 385, 49895, 34019, 43091, 'xlarge'),
(' Scotish terrier', 8618, 979, 8165, 9525, 'medium'),
(' Sealyham terrier', 10433, 1086, 9072, 10433, 'medium'),
(' Setters (English)', 29483, 36287, 2042, 24948, 'large'),
(' Setter (Gordon)', 24948, 36287, 2042, 31751, 'large'),
(' Setters (Irish Red and White)', 19051, 27216, 15876, 2680, 'large'),
(' Setters (Irish)', 28576, 31751, 2494, 27216, 'large'),
(' Shetland Sheepdog', 6804, 140, 6804, 140, 'medium'),
(' Shiba Inu', 8165, 10433, 5897, 71, 'medium'),
(' Shih Tzu', 4082, 7257, 4082, 7257, 'small'),
(' Siberian Husky', 2042, 27216, 15876, 2680, 'large'),
(' Silky terrier', 4082, 4990, 4082, 4990, 'small'),
(' Skye terrier', 15876, 2042, 14515, 18144, 'medium'),
(' Sloughi', 15876, 2680, 15876, 2680, 'medium'),
(' Soft Coated Wheaten terrier', 15876, 18144, 13608, 15876, 'medium'),
(' Spaniel (American Water)', 13608, 2042, 140, 18144, 'medium'),
(' Spaniel (Boykin)', 13608, 18144, 140, 15876, 'medium'),
(' Spaniel (Clumber)', 31751, 385, 24948, 31751, 'large'),
(' Spaniels (English Cocker)', 1271, 1542, 1793, 14515, 'medium'),
(' Spaniels (English Springer)', 19051, 2680, 13608, 18144, 'medium'),
(' Spaniel (Field)', 15876, 2680, 15876, 2680, 'medium'),
(' Spaniels (Irish Water)', 24948, 3084, 2042, 26308, 'large'),
(' Spaniels (Sussex)', 15876, 2042, 15876, 2042, 'medium'),
(' Spaniels (Welsh Springer)', 18144, 24948, 15876, 2680, 'large'),
(' Spanish Water Dog', 18144, 26, 14061, 18144, 'medium'),
(' Spinoni Italiani', NULL, 25401, NULL, 25401, 'large'),
(' St. BerNULLrd', 63503, 81647, 5431, 63503, 'xlarge'),
(' Staffordshire Bull terrier', 1271, 17236, 1086, 1542, 'medium'),
(' Standard SchNULLuzer', 15876, 2680, 13608, 2042, 'medium'),
(' Swedish Valhund', 9072, 15876, 9072, 15876, 'medium'),
(' Tibetan Mastiff', 40823, 68039, 31751, 5431, 'xlarge'),
(' Tibetan terrier', 8165, 13608, 7257, 1271, 'medium'),
(' Tibetan Spaniel', 4082, 6804, 4082, 6804, 'small'),
(' Toy Fox terrier', 1588, 3175, 1588, 3175, 'toy'),
(' Treeing Walker Coonhound', 2680, 31751, 2680, 31751, 'large'),
(' Vizsla', 24948, 27216, 1958, 24948, 'large'),
(' Weimaraner', 31751, 40823, 24948, 34019, 'large'),
(' Welsh terrier', 6804, 9072, 5897, 8165, 'small'),
(' West Highland White terrier', 6804, 9072, 6804, 9072, 'small'),
(' Whippet', 140, 18144, 140, 18144, 'medium'),
(' Wirehaired Pointing Griffon', 2680, 31751, 15876, 2680, 'large'),
(' Wirehaired Vizsla', 24948, 29483, 2042, 24948, 'large'),
(' Xoloitzcuintli(toy)', 4536, 6804, 4536, 6804, 'small'),
(' Xoloitzcuintli(miniature)', 6804, 13608, 6804, 13608, 'medium'),
(' Xoloitzcuintli(standard)', 13608, 24948, 13608, 24948, 'large'),
(' Yorkshire terrier', 268, 3175, 268, 3175, 'toy');

-- --------------------------------------------------------

--
-- Table structure for table `dog_food_table`
--

DROP TABLE IF EXISTS `dog_food_table`;
CREATE TABLE IF NOT EXISTS `dog_food_table` (
  `Age` int(11) DEFAULT NULL,
  `Body_type` varchar(45) DEFAULT NULL,
  `High_activity` float(15,12) DEFAULT NULL,
  `Low_activity` float(15,12) DEFAULT NULL,
  `Normal_activity` float(15,12) DEFAULT NULL,
  `diet_type` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dog_pup_diet`
--

DROP TABLE IF EXISTS `dog_pup_diet`;
CREATE TABLE IF NOT EXISTS `dog_pup_diet` (
  `size` varchar(255) NOT NULL,
  `body_weight` bigint(20) DEFAULT '0',
  `Age_2mo` float(10,7) DEFAULT '0.0000000',
  `Age_3_6mo` float(10,7) DEFAULT '0.0000000',
  `Age6_12mo` float(10,7) DEFAULT '0.0000000',
  `Age_12_more` float(10,7) DEFAULT '0.0000000',
  `Diet` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dog_pup_diet`
--

INSERT INTO `dog_pup_diet` (`size`, `body_weight`, `Age_2mo`, `Age_3_6mo`, `Age6_12mo`, `Age_12_more`, `Diet`) VALUES
('toy', 2000, 0.0250000, 0.0291250, NULL, NULL, 'dry'),
('small', 5000, 0.0186000, 0.0227500, NULL, NULL, 'dry'),
('medium', 10000, 0.0154000, 0.0189000, 0.0180000, 0.0162000, 'dry'),
('medium', 15000, 0.0143333, 0.0185833, 0.0165333, 0.0148000, 'dry'),
('medium', 25000, 0.0102000, 0.0138000, 0.0134033, 0.0127900, 'dry'),
('large', 30000, 0.0102000, 0.0140542, 0.0135458, 0.0122000, 'dry'),
('large', 35000, 0.0091714, 0.0133643, 0.0133750, 0.0120214, 'dry'),
('large', 40000, 0.0088500, 0.0128906, 0.0129094, 0.0115250, 'dry'),
('large', 45000, 0.0086556, 0.0127222, NULL, NULL, 'dry'),
('xlarge', 50000, 0.0127222, 0.0128100, 0.0116667, 0.0106200, 'dry'),
('xlarge', 55000, 0.0081455, 0.0117273, NULL, NULL, 'dry'),
('xlarge', 60000, 0.0117273, 0.0122083, 0.0114444, 0.0103111, 'dry'),
('xlarge', 65000, 0.0074462, 0.0102769, NULL, NULL, 'dry'),
('xlarge', 70000, 0.0102769, 0.0114810, 0.0112190, 0.0101952, 'dry'),
('xlarge', 75000, 0.0071200, 0.0098133, NULL, NULL, 'dry'),
('xlarge', 80000, 0.0098133, 0.0106656, 0.0108208, 0.0096688, 'dry'),
('xlarge', 85000, 0.0068471, 0.0103306, 0.0104815, 0.0093778, 'dry'),
('xlarge', 90000, 0.0084706, 0.0103306, 0.0104815, 0.0093778, 'dry'),
('toy', 2000, 0.0260000, 0.0301250, NULL, NULL, 'dry grain free'),
('small', 5000, 0.0196000, 0.0237500, NULL, NULL, 'dry grain free'),
('medium', 10000, 0.0164000, 0.0199000, 0.0190000, 0.0172000, 'dry grain free'),
('medium', 15000, 0.0153333, 0.0195833, 0.0175333, 0.0158000, 'dry grain free'),
('medium', 25000, 0.0112000, 0.0148000, 0.0144033, 0.0137900, 'dry grain free'),
('large', 30000, 0.0112000, 0.0150542, 0.0145458, 0.0132000, 'dry grain free'),
('large', 35000, 0.0101714, 0.0143643, 0.0143750, 0.0130214, 'dry grain free'),
('large', 40000, 0.0098500, 0.0138906, 0.0139094, 0.0125250, 'dry grain free'),
('large', 45000, 0.0096556, 0.0137222, NULL, NULL, 'dry grain free'),
('xlarge', 50000, 0.0137222, 0.0138100, 0.0126667, 0.0116200, 'dry grain free'),
('xlarge', 55000, 0.0091455, 0.0127270, NULL, NULL, 'dry grain free'),
('xlarge', 60000, 0.0127273, 0.0132083, 0.0124440, 0.0113110, 'dry grain free'),
('xlarge', 65000, 0.0084462, 0.0112769, NULL, NULL, 'dry grain free'),
('xlarge', 70000, 0.0112769, 0.0124810, 0.0122190, 0.0111952, 'dry grain free'),
('xlarge', 75000, 0.0081200, 0.0108130, NULL, NULL, 'dry grain free'),
('xlarge', 80000, 0.0108133, 0.0116656, 0.0118208, 0.0106688, 'dry grain free'),
('xlarge', 85000, 0.0078471, 0.0113306, 0.0114815, 0.0103780, 'dry grain free'),
('xlarge', 90000, 0.0094706, 0.0113306, 0.0114815, 0.0103780, 'dry grain free'),
('toy', 2000, 0.1000000, 0.0500000, 0.0400000, 0.0200000, 'raw'),
('small', 10000, 0.0850000, 0.0480000, 0.0390000, 0.0200000, 'raw'),
('medium', 25000, 0.0750000, 0.0450000, 0.0380000, 0.0200000, 'raw'),
('large', 30000, 0.0680000, 0.0420000, 0.0370000, 0.0200000, 'raw'),
('xlarge', 50000, 0.0600000, 0.0400000, 0.0350000, 0.0200000, 'raw'),
('toy', 2000, 0.0990000, 0.0490000, 0.0390000, 0.0190000, 'raw'),
('small', 10000, 0.0840000, 0.0470000, 0.0380000, 0.0190000, 'raw grain free'),
('medium', 25000, 0.0750000, 0.0440000, 0.0370000, 0.0190000, 'raw grain free'),
('large', 30000, 0.0670000, 0.0410000, 0.0360000, 0.0190000, 'raw grain free'),
('xlarge', 50000, 0.0590000, 0.0390000, 0.0340000, 0.0190000, 'raw grain free'),
('toy', 2000, 0.0891045, 0.0490000, 0.0590000, 0.0280000, 'wet'),
('small', 10000, 0.0624000, 0.0315000, 0.0210000, 0.0110000, 'wet'),
('medium', 25000, 0.0488400, 0.0244000, 0.0350000, 0.0160000, 'wet'),
('large', 30000, 0.0461333, 0.0230000, 0.0180000, 0.0090000, 'wet'),
('xlarge', 50000, 0.0410800, 0.0221000, 0.0190000, 0.0100000, 'wet'),
('toy', 2000, 0.0900000, 0.0500000, 0.0600000, 0.0290000, 'wet grain free'),
('small', 10000, 0.0630000, 0.0326000, 0.0211000, 0.0111000, 'wet grain free'),
('medium', 25000, 0.0490000, 0.0250000, 0.0360000, 0.0170000, 'wet grain free'),
('large', 30000, 0.0470000, 0.0240000, 0.0190000, 0.0100000, 'wet grain free'),
('xlarge', 50000, 0.0420000, 0.0231000, 0.0200000, 0.0110000, 'wet grain free');

-- --------------------------------------------------------

--
-- Table structure for table `dog_senior_diet`
--

DROP TABLE IF EXISTS `dog_senior_diet`;
CREATE TABLE IF NOT EXISTS `dog_senior_diet` (
  `size` varchar(255) NOT NULL,
  `body_weight` bigint(20) DEFAULT NULL,
  `Normal_activity` float(10,9) DEFAULT NULL,
  `Low_activity` float(10,9) DEFAULT NULL,
  `Diet` varchar(255) NOT NULL,
  `High_activity` float(10,9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dog_senior_diet`
--

INSERT INTO `dog_senior_diet` (`size`, `body_weight`, `Normal_activity`, `Low_activity`, `Diet`, `High_activity`) VALUES
('small', 9000, 0.020777781, 0.018110000, 'dry grain free', 0.020777781),
('medium', 10000, 0.018800000, 0.016400000, 'dry grain free', 0.018800000),
('medium', 15000, 0.017066671, 0.014866670, 'dry grain free', 0.017066671),
('medium', 20000, 0.015950000, 0.013900000, 'dry grain free', 0.015950000),
('medium', 25000, 0.015120000, 0.013200000, 'dry grain free', 0.015120000),
('large', 25000, 0.015120000, 0.013200000, 'dry grain free', 0.015120000),
('large', 30000, 0.014500000, 0.012666670, 'dry grain free', 0.014500000),
('large', 35000, 0.014000000, 0.012228571, 'dry grain free', 0.014000000),
('large', 40000, 0.013575000, 0.011850000, 'dry grain free', 0.013575000),
('xlarge', 46000, 0.012913043, 0.011304348, 'dry grain free', 0.012913043),
('xlarge', 50000, 0.012880000, 0.011260000, 'dry grain free', 0.012880000),
('xlarge', 60000, 0.012350000, 0.010816670, 'dry grain free', 0.012350000),
('xlarge', 70000, 0.011928571, 0.010442857, 'dry grain free', 0.011928571),
('xlarge', 80000, 0.011575000, 0.010125000, 'dry grain free', 0.011575000),
('xlarge', 90000, 0.011266667, 0.009867000, 'dry grain free', 0.011266667),
('toy', 5000, 0.039999999, 0.029360000, 'raw', 0.039999999),
('medium', 10000, 0.024000000, 0.017600000, 'raw', 0.024000000),
('large', 23000, 0.019200001, 0.017600000, 'raw', 0.019200001),
('xlarge', 46000, 0.018400000, 0.016799999, 'raw', 0.018400000),
('medium', 10000, 0.024800001, 0.018400000, 'raw grain free', 0.024800001),
('large', 23000, 0.020000000, 0.018400000, 'raw grain free', 0.020000000),
('xlarge', 46000, 0.019200001, 0.017600000, 'raw grain free', 0.019200001),
('toy', 5000, 0.045279998, 0.032800000, 'wet', 0.045279998),
('small', 8000, 0.050999999, 0.037000000, 'wet', 0.050999999),
('medium', 10000, 0.045279998, 0.032000002, 'wet', 0.045279998),
('large', 23000, 0.040399998, 0.024000000, 'wet', 0.040399998),
('xlarge', 46000, 0.079999998, 0.064000003, 'wet', 0.079999998),
('toy', 5000, 0.045600001, 0.033599999, 'wet grain free', 0.045600001),
('small', 8000, 0.052000001, 0.036800001, 'wet grain free', 0.052000001),
('large', 23000, 0.041200001, 0.024800001, 'wet grain free', 0.041200001),
('xlarge', 46000, 0.088000000, 0.064800002, 'wet grain free', 0.088000000);

-- --------------------------------------------------------

--
-- Table structure for table `health`
--

DROP TABLE IF EXISTS `health`;
CREATE TABLE IF NOT EXISTS `health` (
  `hID` int(11) NOT NULL AUTO_INCREMENT,
  `health_name` varchar(45) NOT NULL,
  `active` float(10,7) DEFAULT NULL,
  PRIMARY KEY (`hID`)
) ENGINE=MyISAM AUTO_INCREMENT=3012 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health`
--

INSERT INTO `health` (`hID`, `health_name`, `active`) VALUES
(3001, 'Kidney disease', 1.0000000),
(3002, 'Pregnant 0-5wks', 1.3000000),
(3003, 'Pregnant 5+wks)', 1.3000000),
(3004, 'Nursing 1-3wks', 1.4000000),
(3005, 'Nursing 3+wks', 1.6000000),
(3006, 'Heart condition', 1.0000000),
(3007, 'Joint issues', 1.0000000),
(3008, 'None', 1.0000000),
(3009, 'Other', 1.0000000),
(3010, 'Overweight', 0.5600000),
(3011, 'Underweight', 1.3300000);

-- --------------------------------------------------------

--
-- Table structure for table `historical_data`
--

DROP TABLE IF EXISTS `historical_data`;
CREATE TABLE IF NOT EXISTS `historical_data` (
  `owner_id` int(11) NOT NULL,
  `type_of_pet` varchar(255) NOT NULL,
  `pet_weight` float(20,7) UNSIGNED DEFAULT NULL,
  `food_amount` float(10,7) UNSIGNED NOT NULL,
  `historical_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `historical_data`
--

INSERT INTO `historical_data` (`owner_id`, `type_of_pet`, `pet_weight`, `food_amount`, `historical_date`) VALUES
(4001, 'dog', 2265.0000000, 101.9250031, '2019-03-18'),
(4001, 'dog', 2718.0000000, 0.0000000, '2019-03-18'),
(4001, 'dog', 2718.0000000, 0.0000000, '2019-03-18'),
(4001, 'dog', 2718.0000000, 0.0000000, '2019-03-18'),
(4001, 'dog', 2718.0000000, 0.0000000, '2019-03-18'),
(4001, 'dog', 2718.0000000, 56.5344009, '2019-03-18'),
(4001, 'dog', 2718.0000000, 56.5344009, '2019-03-18'),
(4001, 'dog', 2718.0000000, 90.4550400, '2019-03-18'),
(4001, 'dog', 2718.0000000, 103.2839966, '2019-03-18'),
(4001, 'dog', 2718.0000000, 103.2839966, '2019-03-18'),
(4003, 'cat', 6613.7998047, 0.0000000, '2019-03-18'),
(4002, 'dog', 13.1499996, 540.0000000, '2019-02-20'),
(4002, 'dog', 14.1999998, 600.0000000, '2019-01-30'),
(4002, 'dog', 11098.5000000, 0.0000000, '2019-03-18'),
(4003, 'cat', 2718.0000000, 0.0000000, '2019-03-18'),
(4002, 'dog', 24009.0000000, 0.0000000, '2019-03-18'),
(4002, 'dog', 6659.1000977, 125.1910782, '2019-03-18'),
(4003, 'cat', 4077.0000000, 85.6169968, '2019-03-18'),
(4003, 'cat', 4077.0000000, 73.3859940, '2019-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `lifestyle`
--

DROP TABLE IF EXISTS `lifestyle`;
CREATE TABLE IF NOT EXISTS `lifestyle` (
  `lifeID` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_level` varchar(45) NOT NULL,
  PRIMARY KEY (`lifeID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lifestyle`
--

INSERT INTO `lifestyle` (`lifeID`, `activity_level`) VALUES
(1, 'High activity'),
(2, 'Normal activity'),
(3, 'Low activity');

-- --------------------------------------------------------

--
-- Table structure for table `pet`
--

DROP TABLE IF EXISTS `pet`;
CREATE TABLE IF NOT EXISTS `pet` (
  `pID` int(11) NOT NULL AUTO_INCREMENT,
  `type_of_pet` varchar(255) NOT NULL,
  `food_amount` float(10,7) UNSIGNED NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=MyISAM AUTO_INCREMENT=5067 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pet`
--

INSERT INTO `pet` (`pID`, `type_of_pet`, `food_amount`) VALUES
(5039, 'dog', 0.0000000),
(5038, 'dog', 0.0000000),
(5037, 'dog', 60.2490005),
(5036, 'dog', 103.2839966),
(5035, 'dog', 103.2839966),
(5034, 'dog', 90.4550400),
(5033, 'dog', 56.5344009),
(5032, 'dog', 56.5344009),
(5031, 'dog', 0.0000000),
(5030, 'dog', 0.0000000),
(5029, 'dog', 0.0000000),
(5028, 'dog', 0.0000000),
(5027, 'dog', 142.6950073),
(5026, 'dog', 101.9250031),
(5025, 'dog', 56.1267014),
(5024, 'dog', 56.1267014),
(5023, 'dog', 56.1267014),
(5022, 'dog', 56.1267014),
(5021, 'dog', 56.1267014),
(5040, 'dog', 0.0000000),
(5041, 'dog', 0.0000000),
(5042, 'dog', 0.0000000),
(5043, 'dog', 0.0000000),
(5044, 'dog', 0.0000000),
(5045, 'cat', 0.0000000),
(5046, 'cat', 0.0000000),
(5047, 'cat', 0.0000000),
(5048, 'cat', 0.0000000),
(5049, 'cat', 0.0000000),
(5050, 'cat', 0.0000000),
(5051, 'cat', 0.0000000),
(5052, 'cat', 0.0000000),
(5053, 'cat', 0.0000000),
(5054, 'cat', 0.0000000),
(5055, 'cat', 0.0000000),
(5056, 'cat', 0.0000000),
(5057, 'cat', 0.0000000),
(5058, 'cat', 0.0000000),
(5059, 'cat', 0.0000000),
(5060, 'cat', 0.0000000),
(5061, 'cat', 0.0000000),
(5062, 'cat', 122.3100052),
(5063, 'cat', 85.6169968),
(5064, 'cat', 73.3859940),
(5065, 'dog', 125.1910782),
(5066, 'dog', 0.0000000);

-- --------------------------------------------------------

--
-- Table structure for table `pet_owner`
--

DROP TABLE IF EXISTS `pet_owner`;
CREATE TABLE IF NOT EXISTS `pet_owner` (
  `oID` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `own_password` varchar(255) NOT NULL,
  PRIMARY KEY (`oID`)
) ENGINE=MyISAM AUTO_INCREMENT=4019 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pet_owner`
--

INSERT INTO `pet_owner` (`oID`, `email`, `own_password`) VALUES
(4001, 'arijeet.laga@gmail.com', 'f49378b46eab68713077da107189e834'),
(4002, 'ylva.jondelius@gmail.com', '9f32a49b0998e3a62085abb091d6a54b'),
(4003, 'yuvaranimasarapu@gmail.com', '9f32a49b0998e3a62085abb091d6a54b'),
(4018, 'yuvaranima@gmail.com', '9f32a49b0998e3a62085abb091d6a54b');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `tagID` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(45) NOT NULL,
  PRIMARY KEY (`tagID`)
) ENGINE=MyISAM AUTO_INCREMENT=1023 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tagID`, `tag_name`) VALUES
(1001, 'raw'),
(1002, 'grain free'),
(1003, 'dry'),
(1004, 'phosphorous'),
(1005, 'kidney'),
(1006, 'toy'),
(1007, 'weight'),
(1008, 'high protein'),
(1009, 'heart'),
(1010, 'small breed'),
(1011, 'adult'),
(1012, 'puppy'),
(1013, 'senior'),
(1014, 'cat'),
(1015, 'dog'),
(1016, 'wet'),
(1017, 'kitten'),
(1018, 'cat'),
(1019, 'joint'),
(1020, 'large breed'),
(1021, 'pregnant'),
(1022, 'nursing');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
