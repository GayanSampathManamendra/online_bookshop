-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2018 at 04:04 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `author_and_book`
--

CREATE TABLE `author_and_book` (
  `author_id` int(10) NOT NULL,
  `book_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `author_and_categories`
--

CREATE TABLE `author_and_categories` (
  `author_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `author_and_qualifications`
--

CREATE TABLE `author_and_qualifications` (
  `author_id` int(10) NOT NULL,
  `qualification` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `author_contact`
--

CREATE TABLE `author_contact` (
  `author_id` int(10) NOT NULL,
  `contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `author_info`
--

CREATE TABLE `author_info` (
  `author_id` int(5) NOT NULL,
  `author_name` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `discription` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author_info`
--

INSERT INTO `author_info` (`author_id`, `author_name`, `dob`, `email`, `age`, `discription`) VALUES
(2, 'smith', '2018-11-07', 'smith@gmail.com', 23, 'i am john smith');

-- --------------------------------------------------------

--
-- Table structure for table `authot_ratings`
--

CREATE TABLE `authot_ratings` (
  `customer_id` int(10) NOT NULL,
  `author_id` int(10) NOT NULL,
  `number_of_stars` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book_and_author`
--

CREATE TABLE `book_and_author` (
  `author_id` int(5) NOT NULL,
  `book_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book_and_category`
--

CREATE TABLE `book_and_category` (
  `category_id` int(5) NOT NULL,
  `book_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book_and_comment`
--

CREATE TABLE `book_and_comment` (
  `comment_id` int(100) NOT NULL,
  `book_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book_and_seller`
--

CREATE TABLE `book_and_seller` (
  `seller_id` int(5) NOT NULL,
  `book_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `category_id` int(5) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`category_id`, `category_name`) VALUES
(1, 'nowel');

-- --------------------------------------------------------

--
-- Table structure for table `book_images`
--

CREATE TABLE `book_images` (
  `book_id` int(10) NOT NULL,
  `img_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book_info`
--

CREATE TABLE `book_info` (
  `book_id` int(10) NOT NULL,
  `ISBN_number` varchar(20) NOT NULL,
  `titel` varchar(100) NOT NULL,
  `discription` varchar(256) NOT NULL,
  `price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_info`
--

INSERT INTO `book_info` (`book_id`, `ISBN_number`, `titel`, `discription`, `price`) VALUES
(1, 'kjsdf45', 'hello world', 'this is hello world', 400);

-- --------------------------------------------------------

--
-- Table structure for table `book_kywords`
--

CREATE TABLE `book_kywords` (
  `book_id` int(10) NOT NULL,
  `keyword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checking_rated`
--

CREATE TABLE `checking_rated` (
  `customer_id` int(10) NOT NULL,
  `is_rated` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checking_rated_for_author`
--

CREATE TABLE `checking_rated_for_author` (
  `customer_id` int(10) NOT NULL,
  `is_rated` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment_and_reply`
--

CREATE TABLE `comment_and_reply` (
  `comment_id` int(100) NOT NULL,
  `reply_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment_info`
--

CREATE TABLE `comment_info` (
  `comment_id` int(100) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `customer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment_info`
--

INSERT INTO `comment_info` (`comment_id`, `comment`, `customer_id`) VALUES
(1, 'comment1', 34);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(100) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `customer_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`) VALUES
(34, 'ruwan', 'ruwanliyanag@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(35, 'ruwan', 'kasunliyanag@gmail.com', '934b535800b1cba8f96a5d72f72f1611'),
(36, 'ruwan', 'ruwanliyanag@gmail.comkk', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `book_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `number_of_stars` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reply_info`
--

CREATE TABLE `reply_info` (
  `reply_id` int(100) NOT NULL,
  `reply` varchar(256) NOT NULL,
  `customer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply_info`
--

INSERT INTO `reply_info` (`reply_id`, `reply`, `customer_id`) VALUES
(1, 'reply 1', 34);

-- --------------------------------------------------------

--
-- Table structure for table `seller_contact`
--

CREATE TABLE `seller_contact` (
  `seller_id` int(5) NOT NULL,
  `contact` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seller_info`
--

CREATE TABLE `seller_info` (
  `seller_id` int(5) NOT NULL,
  `seller_name` varchar(200) NOT NULL,
  `discription` varchar(256) NOT NULL,
  `register_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller_info`
--

INSERT INTO `seller_info` (`seller_id`, `seller_name`, `discription`, `register_number`) VALUES
(1, 'john', 'i am john', '');

-- --------------------------------------------------------

--
-- Table structure for table `seller_locations`
--

CREATE TABLE `seller_locations` (
  `seller_id` int(5) NOT NULL,
  `location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_adds`
--

CREATE TABLE `site_adds` (
  `add_id` int(10) NOT NULL,
  `add_title` varchar(256) NOT NULL,
  `add_body` varchar(256) NOT NULL,
  `add_type` varchar(50) NOT NULL,
  `number_of_clicks` int(10) NOT NULL,
  `seller_id` int(5) NOT NULL,
  `author_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_add_images`
--

CREATE TABLE `site_add_images` (
  `add_id` int(10) NOT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author_and_book`
--
ALTER TABLE `author_and_book`
  ADD PRIMARY KEY (`author_id`,`book_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `author_and_categories`
--
ALTER TABLE `author_and_categories`
  ADD PRIMARY KEY (`author_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `author_and_qualifications`
--
ALTER TABLE `author_and_qualifications`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `author_contact`
--
ALTER TABLE `author_contact`
  ADD PRIMARY KEY (`author_id`,`contact`);

--
-- Indexes for table `author_info`
--
ALTER TABLE `author_info`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `authot_ratings`
--
ALTER TABLE `authot_ratings`
  ADD PRIMARY KEY (`customer_id`,`author_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `book_and_author`
--
ALTER TABLE `book_and_author`
  ADD PRIMARY KEY (`author_id`,`book_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `book_and_category`
--
ALTER TABLE `book_and_category`
  ADD PRIMARY KEY (`category_id`,`book_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `book_and_comment`
--
ALTER TABLE `book_and_comment`
  ADD PRIMARY KEY (`comment_id`,`book_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `book_and_seller`
--
ALTER TABLE `book_and_seller`
  ADD PRIMARY KEY (`seller_id`,`book_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `book_images`
--
ALTER TABLE `book_images`
  ADD PRIMARY KEY (`book_id`,`img_url`);

--
-- Indexes for table `book_info`
--
ALTER TABLE `book_info`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `book_kywords`
--
ALTER TABLE `book_kywords`
  ADD PRIMARY KEY (`book_id`,`keyword`);

--
-- Indexes for table `checking_rated`
--
ALTER TABLE `checking_rated`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `checking_rated_for_author`
--
ALTER TABLE `checking_rated_for_author`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `comment_and_reply`
--
ALTER TABLE `comment_and_reply`
  ADD PRIMARY KEY (`comment_id`,`reply_id`),
  ADD KEY `reply_id` (`reply_id`);

--
-- Indexes for table `comment_info`
--
ALTER TABLE `comment_info`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`book_id`,`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `reply_info`
--
ALTER TABLE `reply_info`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `seller_contact`
--
ALTER TABLE `seller_contact`
  ADD PRIMARY KEY (`seller_id`,`contact`);

--
-- Indexes for table `seller_info`
--
ALTER TABLE `seller_info`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `seller_locations`
--
ALTER TABLE `seller_locations`
  ADD PRIMARY KEY (`seller_id`,`location`);

--
-- Indexes for table `site_adds`
--
ALTER TABLE `site_adds`
  ADD PRIMARY KEY (`add_id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `site_add_images`
--
ALTER TABLE `site_add_images`
  ADD PRIMARY KEY (`add_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author_info`
--
ALTER TABLE `author_info`
  MODIFY `author_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `category_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_info`
--
ALTER TABLE `book_info`
  MODIFY `book_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment_info`
--
ALTER TABLE `comment_info`
  MODIFY `comment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `reply_info`
--
ALTER TABLE `reply_info`
  MODIFY `reply_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seller_info`
--
ALTER TABLE `seller_info`
  MODIFY `seller_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_adds`
--
ALTER TABLE `site_adds`
  MODIFY `add_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author_and_book`
--
ALTER TABLE `author_and_book`
  ADD CONSTRAINT `author_and_book_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author_info` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `author_and_book_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `author_and_categories`
--
ALTER TABLE `author_and_categories`
  ADD CONSTRAINT `author_and_categories_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author_info` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `author_and_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `book_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `author_and_qualifications`
--
ALTER TABLE `author_and_qualifications`
  ADD CONSTRAINT `author_and_qualifications_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author_info` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `author_contact`
--
ALTER TABLE `author_contact`
  ADD CONSTRAINT `author_contact_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author_info` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `authot_ratings`
--
ALTER TABLE `authot_ratings`
  ADD CONSTRAINT `authot_ratings_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author_info` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `authot_ratings_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_and_author`
--
ALTER TABLE `book_and_author`
  ADD CONSTRAINT `book_and_author_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_and_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author_info` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_and_category`
--
ALTER TABLE `book_and_category`
  ADD CONSTRAINT `book_and_category_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_and_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `book_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_and_comment`
--
ALTER TABLE `book_and_comment`
  ADD CONSTRAINT `book_and_comment_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment_info` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_and_comment_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_and_seller`
--
ALTER TABLE `book_and_seller`
  ADD CONSTRAINT `book_and_seller_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_and_seller_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `seller_info` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_images`
--
ALTER TABLE `book_images`
  ADD CONSTRAINT `book_images_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_kywords`
--
ALTER TABLE `book_kywords`
  ADD CONSTRAINT `book_kywords_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `checking_rated`
--
ALTER TABLE `checking_rated`
  ADD CONSTRAINT `checking_rated_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `checking_rated_for_author`
--
ALTER TABLE `checking_rated_for_author`
  ADD CONSTRAINT `checking_rated_for_author_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment_and_reply`
--
ALTER TABLE `comment_and_reply`
  ADD CONSTRAINT `comment_and_reply_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment_info` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_and_reply_ibfk_2` FOREIGN KEY (`reply_id`) REFERENCES `reply_info` (`reply_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment_info`
--
ALTER TABLE `comment_info`
  ADD CONSTRAINT `comment_info_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reply_info`
--
ALTER TABLE `reply_info`
  ADD CONSTRAINT `reply_info_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seller_contact`
--
ALTER TABLE `seller_contact`
  ADD CONSTRAINT `seller_contact_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `seller_info` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seller_locations`
--
ALTER TABLE `seller_locations`
  ADD CONSTRAINT `seller_locations_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `seller_info` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `site_adds`
--
ALTER TABLE `site_adds`
  ADD CONSTRAINT `site_adds_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `seller_info` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `site_adds_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author_info` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `site_add_images`
--
ALTER TABLE `site_add_images`
  ADD CONSTRAINT `site_add_images_ibfk_1` FOREIGN KEY (`add_id`) REFERENCES `site_adds` (`add_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
