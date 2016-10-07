-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2016 at 03:10 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `church`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `books_id` int(11) NOT NULL,
  `book_name` varchar(200) NOT NULL,
  `book_description` text NOT NULL,
  `book_image_url` text NOT NULL,
  `book_author` varchar(50) NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`books_id`, `book_name`, `book_description`, `book_image_url`, `book_author`, `date_updated`) VALUES
(1, 'Leadership Pitfalls: Mistakes Every Leader Must Avoid', 'Leadership is not for the perfect but for the imperfect persons who are willing to learn from the mistakes of others and ensure they put safeguards that will protect them from falling into the traps that have hindered other leaders from success. The author has identified the most common leadership pitfalls that have been the cause of many leadership failures before. This book serves as a reminder and a warning at the sane time of areas that leaders are vulnerable and hence the need to protect themselves in order to succeed and make a difference. The book is enriched with the author''s personal experiences thus making it a "ready-made meal" for every leader who desires to do exploits in their area of leadership.\r\n', 'images/patrick_book.jpg', 'Patrick M. Nyaga', '2016-10-07 13:07:09');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `id` int(11) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `location` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `office` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `about_us` text NOT NULL,
  `logo` text NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`id`, `company_name`, `location`, `website`, `mobile`, `office`, `email`, `about_us`, `logo`, `date_updated`) VALUES
(1, 'Church', 'P.O BOX 7175-00300Nairobi, Kenya', 'www.church.co.ke', '0713126689', '0713126689', 'pmnyagah@gmail.com', 'We are a team of professional Safari Consultants, with over 23 years working experience in various capacities in East Africa’s Tourism Industry; and have an understanding, clear knowledge and great passion for travel in Africa.\n\nWe use our creativity to design exciting, memorable holiday packages for families and groups; each specially tailored to suit individual interest, budget, style and specifically addressing what YOU want out of the experience. To us, this means offering unique, unforgettable traditional safaris covering magnificent wildlife, unspoiled sceneries and colorful people of Kenya and beyond – truly bound to touch your soul forever.\n\nWe are committed to working closely with the local communities to promote conservation and sustainable management of the magnificent wildlife, and local cultures within the areas in which we operate.', '', '2016-09-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `devotion`
--

CREATE TABLE `devotion` (
  `devotion_id` int(11) NOT NULL,
  `devotion_title` varchar(50) NOT NULL,
  `devotion_description` text NOT NULL,
  `devotion_url` text NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `event_time` varchar(50) NOT NULL,
  `event_description` text NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_time`, `event_description`, `date_updated`) VALUES
(1, 'Abigael''s', '', 'Every 3rd Sunday of the Month', '2016-10-07 12:44:42'),
(2, 'Destiny Achievers', '', 'Every 3rd Sunday of the Month', '2016-10-07 12:44:42'),
(3, 'Youth Meeting', '', 'Every 2nd Sunday of the Month', '2016-10-07 12:47:02'),
(4, 'Sunday Service', '10:00 - 12:30 ', 'Every week', '2016-10-07 12:47:02'),
(5, 'School of Ministry', '08:00 - 09:15 ', 'Every Sunday', '2016-10-07 12:48:26'),
(6, ' Prayers', '09:15 - 10:00a.m', 'Every Sunday', '2016-10-07 12:50:31'),
(7, 'Mid-Week Services ', '5:45p.m - 7:30p.m ', 'Every Wednesday', '2016-10-07 12:50:31'),
(8, 'Prayer Service ', '5:45p.m - 7:30p.m ', 'Every Friday', '2016-10-07 12:52:47'),
(9, 'Teenagers Sunday School', '09:30a.m - 10:00a.m ', 'Every Sunday', '2016-10-07 12:52:47'),
(10, 'Sunday School', '10:00a.m - 1:00p.m ', 'Every Sunday', '2016-10-07 12:53:47'),
(11, 'Kingdom Tv', '10:05p.m - 10:35p.m ', 'Every Saturday', '2016-10-07 12:55:42'),
(12, 'Kingdom Tv(Repeat)', '10:40p.m - 11:20p.m ', 'Every Monday', '2016-10-07 12:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `slider_id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`slider_id`, `caption`, `image`, `status`, `date_posted`) VALUES
(1, 'samburu-3-beautifully-adorned-girls', 'http://www.safarisbyjayne.com/wp-content/uploads/2016/09/Samburu-3-beautifully-adorned-girls.jpg', 1, '2016-09-30 06:23:57'),
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
-- Table structure for table `verses`
--

CREATE TABLE `verses` (
  `verses_id` int(11) NOT NULL,
  `verse_name` varchar(50) NOT NULL,
  `verse_description` text NOT NULL,
  `version_bible` varchar(100) NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verses`
--

INSERT INTO `verses` (`verses_id`, `verse_name`, `verse_description`, `version_bible`, `date_updated`) VALUES
(1, 'Luke 6:35 ', ' But love your enemies, do good to them, and lend to them without expecting to get anything back. Then your reward will be great, and you will be children of the Most High, because he is kind to the ungrateful and wicked. ', 'King James Version', '2016-10-06 11:24:57'),
(2, '2 Thessalonians 1:11-12 ', 'With this in mind, we constantly pray for you, that our God may make you worthy of his calling, and that by his power he may bring to fruition your every desire for goodness and your every deed prompted by faith. 12 We pray this so that the name of our Lord Jesus may be glorified in you, and you in him, according to the grace of our God and the Lord Jesus Christ. ', 'New International Version (NIV)', '2016-10-06 11:26:14'),
(3, '1 John 4:18-19 ', ' There is no fear in love. But perfect love drives out fear, because fear has to do with punishment. The one who fears is not made perfect in love. 19 We love because he first loved us. ', 'New King James Version (NKJV)', '2016-10-06 11:26:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`books_id`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devotion`
--
ALTER TABLE `devotion`
  ADD PRIMARY KEY (`devotion_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `verses`
--
ALTER TABLE `verses`
  ADD PRIMARY KEY (`verses_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `books_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `devotion`
--
ALTER TABLE `devotion`
  MODIFY `devotion_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `verses`
--
ALTER TABLE `verses`
  MODIFY `verses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
