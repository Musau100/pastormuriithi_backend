-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 05, 2016 at 07:54 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `safarisbyjayne`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `id`           INT(11)      NOT NULL,
  `company_name` VARCHAR(30)  NOT NULL,
  `location`     VARCHAR(255) NOT NULL,
  `website`      VARCHAR(255) NOT NULL,
  `mobile`       VARCHAR(50)  NOT NULL,
  `office`       VARCHAR(50)  NOT NULL,
  `email`        VARCHAR(30)  NOT NULL,
  `about_us`     TEXT         NOT NULL,
  `logo`         TEXT         NOT NULL,
  `date_updated` TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`id`, `company_name`, `location`, `website`, `mobile`, `office`, `email`, `about_us`, `logo`, `date_updated`)
VALUES
  (1, 'Safaris by Jayne', 'Westlands Road, Nairobi.', 'www.safarisbyjayne.com', '(254) 716309956\n(254) 733747295',
   '(254) 20 2314088\n(254) 775543494', 'info@safarisbyjayne.com',
   'We are a team of professional Safari Consultants, with over 23 years working experience in various capacities in East Africa’s Tourism Industry; and have an understanding, clear knowledge and great passion for travel in Africa.\n\nWe use our creativity to design exciting, memorable holiday packages for families and groups; each specially tailored to suit individual interest, budget, style and specifically addressing what YOU want out of the experience. To us, this means offering unique, unforgettable traditional safaris covering magnificent wildlife, unspoiled sceneries and colorful people of Kenya and beyond – truly bound to touch your soul forever.\n\nWe are committed to working closely with the local communities to promote conservation and sustainable management of the magnificent wildlife, and local cultures within the areas in which we operate.',
   '', '2016-09-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id`   INT(11)      NOT NULL,
  `service_name` VARCHAR(255) NOT NULL,
  `service_desc` TEXT         NOT NULL,
  `image`        VARCHAR(255) NOT NULL,
  `status`       INT(11)      NOT NULL DEFAULT '1',
  `date_posted`  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `service_desc`, `image`, `status`, `date_posted`) VALUES
  (1, '3 Days Masai Mara', '',
   'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Rwanda-Traditional-Dancers.jpg\n', 1,
   '2016-10-01 09:14:19'),
  (2, 'Amboseli', '', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Elephants_Kili_2-560x460.jpg', 1, '2016-09-30 06:54:59'),
  (3, 'Canton Fair', '', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Canton-Cable-Ride-560x309.jpg', 1, '2016-09-30 06:54:59'),
  (4, 'Kilimanjaro Climb', '', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/kilimanjaro-long-way-560x460.jpg', 1, '2016-09-30 06:54:59'),
  (5, 'Bwindi Impenetrable - 3 days road safari', '', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Gorilla-Bwindi-Gorilla-kisses-560x460.jpg', 1, '2016-09-30 06:54:59'),
  (6, 'Rwanda Gorilla Tracking', '', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/mount-gorilla-560x460.jpg', 1, '2016-09-30 06:54:59'),
  (7, '11 Days: Kenya-Tanzania-Zanzibar', '', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Amboseli-Mt-Kilimanjaro--560x460.jpg', 1, '2016-09-30 06:54:59'),
  (8, 'Gorilla Express Tour', '', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Rwanda-Vulcans-Virungas-560x460.jpg', 1, '2016-09-30 06:54:59'),
  (9, '4 Days Flamingo Safari', '', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Lake-Nakuru-Flamingoes2-560x460.jpg', 1, '2016-09-30 06:54:59'),
  (10, 'Splendid Kenya - 8 Days', '', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Mzungu-dancing-wz-Samburu-Women-560x460.jpg', 1, '2016-09-30 06:54:59'),
  (11, 'Rovos Rail Adventures', '', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Rovos-Rail-with-lots-of-Kudus-560x460.jpg', 1, '2016-09-30 06:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `slider_id`   INT(11)      NOT NULL,
  `caption`     VARCHAR(255) NOT NULL,
  `image`       VARCHAR(255) NOT NULL,
  `status`      INT(11)      NOT NULL DEFAULT '1',
  `date_posted` TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`slider_id`, `caption`, `image`, `status`, `date_posted`) VALUES
  (1, 'samburu-3-beautifully-adorned-girls',
   'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Samburu-3-beautifully-adorned-girls.jpg', 1,
   '2016-09-30 06:23:57'),
  (2, 'naivasha-hippos-in-the-lake', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Naivasha-Hippos-in-the-Lake.jpg', 1, '2016-09-30 06:20:03'),
  (3, 'Cheap-Zanzibar-Hotels', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Cheap-Zanzibar-Hotesl.jpg', 1, '2016-09-30 06:20:03'),
  (4, 'sasaab-camel-ride', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Sasaab-Camel-Ride.jpg', 1, '2016-09-30 06:20:03'),
  (5, 'Rwanda-Baskets', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Rwanda-Baskets.jpg', 1, '2016-09-30 06:27:07'),
  (6, 'Rwanda-Traditional-Dancers', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Rwanda-Traditional-Dancers.jpg', 1, '2016-09-30 06:27:07'),
  (7, 'Tsavo-east-Ithumba-baby-elephant-whispering-to-care-giver', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Tsavo-east-Ithumba-baby-elephant-whispering-to-care-giver.jpg', 1, '2016-09-30 06:27:07'),
  (8, 'Masai-Mara-Bateleur-Camp-Bush-Breakfast', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Masai-Mara-Bateleur-Camp-Bush-Breakfast.jpg', 1, '2016-09-30 06:27:07'),
  (9, 'Rwanda-Coffee', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Rwanda-Coffee.jpg', 1, '2016-09-30 06:27:07'),
  (10, 'mara-migration-2016', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/mara-migration-2016.jpg', 1, '2016-09-30 06:27:07'),
  (11, 'Sunset-with-men-in-dhow', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Sunset-with-men-in-dhow.jpg', 1, '2016-09-30 06:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `who-we-are`
--

CREATE TABLE `who-we-are` (
  `id`              INT(11)      NOT NULL,
  `title`           VARCHAR(255) NOT NULL,
  `welcome_message` TEXT         NOT NULL,
  `quality1_title`  VARCHAR(255) NOT NULL,
  `quality1`        TEXT         NOT NULL,
  `quality2_title`  VARCHAR(255) NOT NULL,
  `quality2`        TEXT         NOT NULL,
  `quality3_title`  VARCHAR(255) NOT NULL,
  `quality3`        TEXT         NOT NULL,
  `section_image`   VARCHAR(100) NOT NULL,
  `date_posted`     TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `who-we-are`
--
ALTER TABLE `who-we-are`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 2;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` INT(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 12;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `slider_id` INT(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 12;
--
-- AUTO_INCREMENT for table `who-we-are`
--
ALTER TABLE `who-we-are`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
