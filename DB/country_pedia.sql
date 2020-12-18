-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2020 at 12:51 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `country_pedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `charcters`
--

CREATE TABLE `charcters` (
  `id` int(4) NOT NULL,
  `countryId` int(4) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `short_description` text COLLATE utf8_bin NOT NULL,
  `img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `charcters`
--

INSERT INTO `charcters` (`id`, `countryId`, `name`, `short_description`, `img`) VALUES
(1, 1, 'Sayyid Ali Hosseini Khamenei', 'Sayyid Ali Hosseini Khamenei is a Twelver Shia Marja\' and the second and current supreme leader of Iran, in office since 1989. He was previously President of Iran from 1981 to 1989', 'https://www.leader.ir/media/album/original/45504_856.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(4) NOT NULL,
  `name` varchar(40) COLLATE utf8_bin NOT NULL,
  `flag` text COLLATE utf8_bin NOT NULL,
  `short_description` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `flag`, `short_description`) VALUES
(1, 'Iran', 'https://cdn.britannica.com/22/1722-004-EAD033D8/Flag-Iran.jpg', 'Iran, also called Persia, and officially the Islamic Republic of Iran, is a country in Western Asia; with more than 83 million inhabitants.'),
(2, 'Germany', 'https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Flag_of_Germany.svg/1200px-Flag_of_Germany.svg.png', 'Germany is a Western European country with a landscape of forests, rivers, mountain ranges and North Sea beaches. It has over 2 millennia of history. Berlin, its capital, is home to art and nightlife scenes, the Brandenburg Gate and many sites relating to WWII. Munich is known for its Oktoberfest and beer halls, including the 16th-century Hofbräuhaus. Frankfurt, with its skyscrapers, houses the European Central Bank.');

-- --------------------------------------------------------

--
-- Table structure for table `cultures`
--

CREATE TABLE `cultures` (
  `id` int(4) NOT NULL,
  `countryId` int(4) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `short_description` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cultures`
--

INSERT INTO `cultures` (`id`, `countryId`, `name`, `short_description`) VALUES
(1, 1, 'Persia', 'The Culture of Iran, also known as Culture of Persia, is one of the most influential cultures in the world');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(4) NOT NULL,
  `countryId` int(4) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `short_description` text COLLATE utf8_bin NOT NULL,
  `img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `countryId`, `name`, `short_description`, `img`) VALUES
(1, 1, 'Kabab koobideh', 'Kabab koobideh or Kobida is an Iranian meat kabab made from ground lamb or beef, often mixed with ground pepper and chopped onions', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Kabab_koobideh_bbq_persian_food.jpg/330px-Kabab_koobideh_bbq_persian_food.jpg'),
(2, 1, 'Abgoosht', 'Abgoosht is an Iranian stew. It is also called dizi, which refers to the traditional stoneware crocks it is served in. Some describe it as a \"hearty mutton Persian soup thickened with chickpeas.', 'https://lh3.googleusercontent.com/proxy/ZplqfDNi4FpnnGn_7oyfl06P0MIQDbHpSpZAnm2AwHz2_yd8SXTMYfQvHh1PSKSogPm3brobyF9f0k5diz1ccxv1TC0dKAPazDYS-BNwf58'),
(3, 1, 'Fesenjān', 'Khoresh-e fesenjān, or simply fesenjān, is an Iranian stew from Gilan province, Iran. It is flavored with pomegranate paste and ground walnuts and spices like turmeric, cinnamon, orange peel, cardamom, and rosebud. It is traditionally made with eggplant and poultry.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Khoresht-e_fesenjan.jpg/375px-Khoresht-e_fesenjan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `foods_ing`
--

CREATE TABLE `foods_ing` (
  `id` int(4) NOT NULL,
  `foodId` int(4) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `foods_ing`
--

INSERT INTO `foods_ing` (`id`, `foodId`, `name`, `img`) VALUES
(1, 1, 'Meet', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fnir-for-food.com%2Fground-beef-analysis%2F&psig=AOvVaw3xFmGwYTvz7cneK2fT1dJn&ust=1608418955379000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJCrp9fR2O0CFQAAAAAdAAAAABAO'),
(2, 1, 'Onion', 'https://www.theguardian.pe.ca/media/photologue/photos/cache/Screen_Shot_2020-08-04_at_4.30.33_PM_large.png'),
(3, 1, 'Tomato', 'https://upload.wikimedia.org/wikipedia/commons/8/89/Tomato_je.jpg'),
(4, 1, 'Spices', 'https://www.homestratosphere.com/wp-content/uploads/2019/04/Different-types-of-spices-of-the-table-apr18.jpg'),
(5, 2, 'Meat', 'https://tcfeline.com/wp-content/uploads/2011/03/iStock_raw-stew-meat.jpg'),
(6, 2, 'Potato', 'https://www.irishtimes.com/polopoly_fs/1.3594671.1534163385!/image/image.jpg_gen/derivatives/box_620_330/image.jpg'),
(7, 2, 'Spices', 'https://www.homestratosphere.com/wp-content/uploads/2019/04/Different-types-of-spices-of-the-table-apr18.jpg'),
(8, 2, 'Beans', 'https://www.gracefullittlehoneybee.com/wp-content/uploads/2014/09/Slow-Cooker-Pinto-Beans-3.jpg'),
(9, 2, 'Tomato Paste', 'https://thethingswellmake.com/wp-content/uploads/2016/11/225-easy-homemade-tomato-paste-recipe-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(4) NOT NULL,
  `countryId` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `countryId`, `name`) VALUES
(1, 1, 'Farsi'),
(2, 1, 'Turkish'),
(3, 1, 'Lori'),
(4, 1, 'Kurdish'),
(5, 1, 'Arabic');

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` int(4) NOT NULL,
  `countryId` int(4) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `countryId`, `name`) VALUES
(1, 1, 'Islam'),
(2, 1, 'Zoroastrianism'),
(3, 1, 'Christianity'),
(4, 1, 'Judaism');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `charcters`
--
ALTER TABLE `charcters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cultures`
--
ALTER TABLE `cultures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods_ing`
--
ALTER TABLE `foods_ing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `charcters`
--
ALTER TABLE `charcters`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cultures`
--
ALTER TABLE `cultures`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `foods_ing`
--
ALTER TABLE `foods_ing`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
