-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2020 at 01:16 AM
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
(1, 1, 'Sayyid Ali Hosseini Khamenei', 'Sayyid Ali Hosseini Khamenei is a Twelver Shia Marja\' and the second and current supreme leader of Iran, in office since 1989. He was previously President of Iran from 1981 to 1989', 'https://www.leader.ir/media/album/original/45504_856.jpg'),
(2, 1, 'Reza Shah Pahlavi', 'Reza Shah Pahlavi, commonly known as Reza Shah, was the Shah of Iran from 15 December 1925 until he was forced to abdicate by the Anglo-Soviet invasion of Iran on 16 September 1941. Two years after the 1921 Persian coup d\'état, led by Zia ol Din Tabatabaee, Reza Pahlavi became Iran\'s prime minister', 'https://upload.wikimedia.org/wikipedia/commons/9/92/Reza-shah.jpg'),
(3, 1, 'Rostam', 'Rostam or Rustam is a legendary hero in Persian mythology, the son of Zāl and Rudaba, whose life and work was immortalized by the 10th-century Persian poet Ferdowsi in the Shahnameh, or Epic of Kings, which contains pre-Islamic Iranian folklore and history. However, the roots of the narrative date much earlier', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Rostam.jpg/1200px-Rostam.jpg'),
(4, 1, 'Rumi', 'Jalāl ad-Dīn Muhammad Rūmī, also known as Jalāl ad-Dīn Muhammad Balkhī, Mevlânâ/Mawlānā, Mevlevî/Mawlawī, and more popularly simply as Rumi, was a 13th-century Persian poet, Hanafi faqih, Islamic scholar, Maturidi theologian, and Sufi mystic originally from Greater Khorasan in Greater Iran', 'https://lh3.googleusercontent.com/proxy/AYgfDsYnyh6bYi8mVWKi6smfCZoig0EOeVg3ZPWT41LPeONQ9BbULPjofSxiQLaFJTzIAlkQpJO2glQa91yaEKDTOohsMFtIkcuVX6L6mFHB2YHkrp5Kxy_m5O3KFu23B6PO0Je5wvW7yHmqODjcgKc'),
(5, 2, 'Frank-Walter Steinmeier', 'Frank-Walter Steinmeier is a German politician serving as President of Germany since 19 March 2017. He was Minister for Foreign Affairs from 2005 to 2009 and from 2013 to 2017, and Vice-Chancellor of Germany from 2007 to 2009', 'https://www.americanacademy.de/wp-content/uploads/2019/01/Steinmeier-Frank-Walter.jpg'),
(6, 2, 'Angela Merkel', 'Angela Dorothea Merkel is a German politician who has been Chancellor of Germany since 2005. She served as Leader of the Opposition from 2002 to 2005 and as Leader of the Christian Democratic Union from 2000 to 2018. A member of the Christian Democratic Union, Merkel is the first female Chancellor of Germany', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Angela_Merkel_2019_cropped.jpg/1200px-Angela_Merkel_2019_cropped.jpg'),
(7, 2, 'Adolf Hitler', 'Adolf Hitler was a German politician and leader of the Nazi Party. He rose to power as the chancellor of Germany in 1933 and then as Führer in 1934. During his dictatorship from 1933 to 1945, he initiated World War II in Europe by invading Poland on 1 September 1939', 'https://historycouk.s3.eu-west-2.amazonaws.com/s3fs-public/styles/768x432/public/2020-07/gettyimages-3329462_2.53.38_pm_0.jpg'),
(8, 3, 'George Washington', 'George Washington was an American political leader, military general, statesman, and Founding Father who served as the first president of the United States from 1789 to 1797. Previously, he led Patriot forces to victory in the nation\'s War for Independence.', 'https://www.biography.com/.image/t_share/MTY2NDcwODAyODk0NDk2OTI5/gilbert_stuart_williamstown_portrait_of_george_washington_promo.jpg'),
(9, 3, 'Elvis Presley', 'Elvis Aaron Presley, also known simply as Elvis, was an American singer, musician and actor. He is regarded as one of the most significant cultural icons of the 20th century and is often referred to as the \"King of Rock and Roll\" or simply \"the King\"', 'https://www.grammy.com/sites/com/files/styles/news_detail_header/public/gettyimages-74291159.jpg?itok=yqvaFmFj'),
(10, 3, 'Donald Trump', 'Donald John Trump is the 45th and current president of the United States. Before entering politics, he was a businessman and television personality', 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2020%2F11%2F27%2Fdonald-trump-3.jpg'),
(11, 3, 'Mark Twain', 'Samuel Langhorne Clemens, known by his pen name Mark Twain, was an American writer, humorist, entrepreneur, publisher, and lecturer. He was lauded as the \"greatest humorist the United States has produced,\" and William Faulkner called him \"the father of American literature\".', 'https://www.biography.com/.image/t_share/MTE5NDg0MDU1MTUzNTA5OTAz/mark-twain-9512564-1-402.jpg'),
(12, 4, 'Napoleon Bonaparte', 'Napoleon Bonaparte was a French statesman and military leader who led many successful campaigns during the French Revolution and the French Revolutionary Wars, and was Emperor of the French from 1804 until 1814 and again briefly in 1815 during the Hundred Days.', 'https://www.nationalgeographic.com/content/dam/archaeologyandhistory/rights-exempt/history-magazine/2018/01-02/napoleon/og-napoleon-waterloo.ngsversion.1565877905340.adapt.1900.1.jpg'),
(13, 4, 'Nostradamus', 'Michel de Nostredame, usually Latinised as Nostradamus, was a French astrologer, physician and reputed seer, who is best known for his book Les Prophéties, a collection of 942 poetic quatrains allegedly predicting future events. The book was first published in 1555', 'https://upload.wikimedia.org/wikipedia/commons/c/c6/Nostradamus_by_Cesar.jpg'),
(14, 4, 'Marie Antoinette', 'Marie Antoinette was the last queen of France before the French Revolution. She was born an archduchess of Austria and was the penultimate child and youngest daughter of Empress Maria Theresa and Emperor Francis I. ', 'https://www.history.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTU3ODc5MDg1MzU2MDk5Mjk1/portrait-of-marie-antoinette.jpg'),
(15, 4, 'Victor Hugo', 'Victor Hugo was a French writer famous for his poems, novels and plays. He is most famous for his novels The Hunchback of Notre Dame (1831) and Les Misérables (1862), both of which enjoyed a second round of fame when they were transformed into a film and opera respectively.\r\n\r\n', 'https://upload.wikimedia.org/wikipedia/commons/e/e6/Victor_Hugo_by_%C3%89tienne_Carjat_1876_-_full.jpg');

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
(2, 'Germany', 'https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Flag_of_Germany.svg/1200px-Flag_of_Germany.svg.png', 'Germany is a Western European country with a landscape of forests, rivers, mountain ranges and North Sea beaches. It has over 2 millennia of history. Berlin, its capital, is home to art and nightlife scenes, the Brandenburg Gate and many sites relating to WWII. Munich is known for its Oktoberfest and beer halls, including the 16th-century Hofbräuhaus. Frankfurt, with its skyscrapers, houses the European Central Bank.'),
(3, 'United State of America', 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1200px-Flag_of_the_United_States.svg.png', 'The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles\' Hollywood is famed for filmmaking'),
(4, 'France', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/1200px-Flag_of_France.svg.png', 'France, in Western Europe, encompasses medieval cities, alpine villages and Mediterranean beaches. Paris, its capital, is famed for its fashion houses, classical art museums including the Louvre and monuments like the Eiffel Tower. The country is also renowned for its wines and sophisticated cuisine. Lascaux’s ancient cave drawings, Lyon’s Roman theater and the vast Palace of Versailles attest to its rich history.');

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
(1, 1, 'Persia', 'The Culture of Iran, also known as Culture of Persia, is one of the most influential cultures in the world'),
(2, 2, 'Das Land der Dichter und Denker', 'There are a number of public holidays in Germany. The country is particularly known for its Oktoberfest celebrations in Munich, its carnival culture and globally influential Christmas customs known as Weihnachten.[2][3] 3 October has been the national day of Germany since 1990, celebrated as the German Unity Day (Tag der Deutschen Einheit). The UNESCO inscribed 38 properties in Germany on the World Heritage List.[4]\r\n\r\nGermany was the world\'s second most respected nation among 50 countries in 2013.[5] A global opinion poll for the BBC revealed that Germany is recognized for having the most positive influence in the world in 2011, 2013, and 2014'),
(3, 3, 'Culture of the United States', 'The culture of the United States of America is primarily of Western origin, but is influenced by a multicultural ethos that includes African, Native American, Asian, Pacific Island, and Latin American people and their cultures'),
(4, 4, 'Culture of France', 'France has been a center of Western cultural development for centuries. Many French artists have been among the most renowned of their time, and France is still recognized in the world for its rich cultural tradition.\r\n\r\nThe successive political regimes have always promoted artistic creation, and the creation of the Ministry of Culture in 1959 helped preserve the cultural heritage of the country and make it available to the public. The Ministry of Culture has been very active since its creation, granting subsidies to artists, promoting French culture in the world, supporting festivals and cultural events, protecting historical monuments. The French government also succeeded in maintaining a cultural exception to defend audiovisual products made in the country.\r\n\r\nFrance receives the highest number of tourists per year, largely thanks to the numerous cultural establishments and historical buildings implanted all over the territory. It counts 1,200 museums welcoming more than 50 million people annually.[321] The most important cultural sites are run by the government, for instance through the public agency Centre des monuments nationaux, which is responsible for approximately 85 national historical monuments.\r\n\r\nThe 43,180 buildings protected as historical monuments include mainly residences (many castles) and religious buildings (cathedrals, basilicas, churches), but also statues, memorials and gardens. The UNESCO inscribed 45 sites in France on the World Heritage List.');

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
(3, 1, 'Fesenjān', 'Khoresh-e fesenjān, or simply fesenjān, is an Iranian stew from Gilan province, Iran. It is flavored with pomegranate paste and ground walnuts and spices like turmeric, cinnamon, orange peel, cardamom, and rosebud. It is traditionally made with eggplant and poultry.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Khoresht-e_fesenjan.jpg/375px-Khoresht-e_fesenjan.jpg'),
(4, 2, 'Sauerbraten (Roast Beef Stew)', 'Sauerbraten is a traditional German roast of heavily marinated meat. It is regarded as a national dish of Germany, and is frequently served in German-style restaurants internationally. It can be prepared from a variety of meats, most often from beef, but also from venison, lamb and mutton, pork and horse.\r\n', 'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2009/8/13/1/FNM100109TakeItFromHere003_s4x3.jpg.rend.hgtvcom.826.620.suffix/1371591332138.jpeg'),
(5, 2, 'Schweinshaxe (Pork Knuckle)\r\n', 'Schweinshaxe (German pronunciation: [ˈʃvaɪns.haksə]), in German cuisine, is a roasted ham hock (or “pork knuckle”).[1] The ham hock is the end of the pig\'s leg, just above the ankle and below the meaty ham portion. It is especially popular in Bavaria as Schweinshaxn [ˈʃvaɪns.haksn̩] or Sauhax(n) [ˈsaohaks(n̩)].[2] A variation of this dish is known in parts of Germany as Eisbein, in which the ham hock is pickled and usually slightly boiled', 'https://www.kitchenproject.com/german/recipes/Schweinshaxe/Schweishaxe2/8/Finished-Schweinshaxe.jpg'),
(6, 2, 'Rinderroulade (Beef Roll)', 'Rouladen or Rinderrouladen (plural, singlular Roulade) are a German meat dish, usually consisting of bacon, onions, mustard and pickles wrapped in thinly sliced beef which is then cooked.[1] The dish is considered traditional also in the Upper Silesia region of Poland where it is known as rolada śląska (Silesian roulade) and in the Czech Republic where it is known as španělský ptáček (spanish bird).', 'https://www.sunnysidecircus.com/wp-content/uploads/2019/01/Rinderrouladen_Knodel_Rotkraut_fullwidth.jpg'),
(8, 3, 'Hamburger', 'A hamburger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled.', 'https://qph.fs.quoracdn.net/main-qimg-34011d1a77600aa23c783e210424b116'),
(9, 4, 'Macarons', 'A macaron or French macaroon is a sweet meringue-based confection made with egg white, icing sugar, granulated sugar, almond meal, and food colouring. The macaron is traditionally held to have been introduced in France by the Italian chef of queen Catherine de Medici during the Renaissance', 'https://cakemerchant.com/wp-content/uploads/French-Macarons-16.jpg'),
(10, 4, 'Baguette', 'A baguette is a long, thin loaf of French bread that is commonly made from basic lean dough. It is distinguishable by its length and crisp crust. A baguette has a diameter of about 5 to 6 centimetres and a usual length of about 65 cm, although a baguette can be up to 1 m long.', 'https://www.rockrecipes.com/wp-content/uploads/2010/09/DSC0529-2.jpg'),
(11, 4, 'Croissant', 'A croissant is a buttery, flaky, viennoiserie pastry of Austrian origin, named for its historical crescent shape. Croissants and other viennoiserie are made of a layered yeast-leavened dough.', 'https://sarahsvegankitchen.com/wp-content/uploads/2020/05/croissants-23-min.jpg'),
(12, 4, 'France cheese', 'These are cheeses that can be bought from cheese merchants and supermarkets throughout France, and are also exported. Camembert (a soft cheese from Normandy) Roquefort (A blue ewe\'s milk cheese from the Aveyron part of Occitanie) Comté (A pressed cheese from Franche Comté) Brie (A soft cheese from Ile de France)\r\n', 'https://www.gourmetfoodworld.com/images/Product/large/gourmet-food-world-classic-french-cheese-board-2-1S-2244.jpg');

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
(9, 2, 'Tomato Paste', 'https://thethingswellmake.com/wp-content/uploads/2016/11/225-easy-homemade-tomato-paste-recipe-4.jpg'),
(10, 3, 'Pomegranate juice', 'https://yazdshirini.com/wp-content/uploads/2020/05/%D8%B1%D8%A8-%D8%A7%D9%86%D8%A7%D8%B1-2-600x600.jpg'),
(11, 3, 'Walnut', 'https://statics.basalam.com/public/users/jzkl/1910/U02zuXacoH6nhLkw4UXrGWpaPXBFDd2ohhk1bPUT.jpeg_512X512X70.jpeg'),
(12, 3, 'Poultry', 'https://www.foodbusinessnews.net/ext/resources/2019/1/ChickenProducts_Lead.jpg?1548446043'),
(13, 8, 'Ground beef', 'https://embed.widencdn.net/img/beef/4hh1pywcnj/800x600px/Grind_Fine_85.psd?keep=c&u=7fueml'),
(14, 8, 'Onion', 'https://www.foodsafetynews.com/files/2020/09/fresh-onions.jpg');

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
(5, 1, 'Arabic'),
(7, 2, 'German language'),
(8, 3, 'English'),
(9, 3, 'Spanish'),
(10, 3, 'Chinese'),
(11, 4, 'French');

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
(4, 1, 'Judaism'),
(5, 2, 'Christian '),
(6, 2, 'Roman Catholic'),
(7, 2, ' Protestantism'),
(8, 3, 'Christians '),
(9, 3, 'Protestants'),
(10, 3, ' Catholicism '),
(11, 3, 'Mormonism'),
(12, 4, ' Roman Catholic '),
(13, 4, ' No religion '),
(14, 4, ' Islam'),
(15, 4, ' Eastern Orthodoxy');

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
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cultures`
--
ALTER TABLE `cultures`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `foods_ing`
--
ALTER TABLE `foods_ing`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
