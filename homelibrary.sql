-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2022 at 02:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homelibrary`
--
CREATE DATABASE IF NOT EXISTS `homelibrary` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `homelibrary`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_ID` int(11) NOT NULL,
  `author_name` varchar(80) NOT NULL,
  `author_birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_ID`, `author_name`, `author_birthdate`) VALUES
(1, 'John Gardner', '1933-07-21'),
(2, 'Arthur Conan Doyle', '1859-05-22'),
(3, 'Daniel Myshkin', '1980-05-05'),
(4, 'Adrienne N. Hew Cn', '1980-03-22'),
(5, 'George Orwell', '1903-06-25'),
(6, 'Stephen King', '1947-09-21'),
(7, 'Agatha Christie', '1890-09-15'),
(8, 'J. K. Rowling', '1965-07-31'),
(9, 'Ernest Hemingway', '1899-07-21'),
(10, 'Neal Stephenson', '1959-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_ID` int(11) NOT NULL,
  `book_description` varchar(2500) NOT NULL,
  `book_start_date` date DEFAULT NULL,
  `book_end_date` date DEFAULT NULL,
  `book_name` varchar(250) NOT NULL,
  `fk_author_ID` int(11) DEFAULT NULL,
  `fk_user_ID` int(11) DEFAULT NULL,
  `fk_language_ID` int(11) NOT NULL,
  `fk_genre_ID` int(11) NOT NULL,
  `fk_purchase_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_ID`, `book_description`, `book_start_date`, `book_end_date`, `book_name`, `fk_author_ID`, `fk_user_ID`, `fk_language_ID`, `fk_genre_ID`, `fk_purchase_ID`) VALUES
(1, 'Bond infiltrates the castle of Dr. Anton Murik, a nuclear physicist who is involved with a terrorist named Franco. Murik hired Franco to hijack six nuclear power stations in order to start a meltdown, but the terrorists are prevented from doing so by Bond who, posing as Murik, orders them to abort.', '2022-02-27', '2022-03-05', 'License Renewed', 1, 1, 1, 5, 1),
(2, 'Contains 7 stories published 1908–1917.', '2022-03-08', '2022-03-08', 'His Last Bow', 2, NULL, 1, 8, 2),
(3, 'How Google, Facebook and the government use big data to spy on the world', '2020-05-20', '2020-05-20', 'What the internet really knows about you', 3, 2, 1, 5, 3),
(4, 'The Mystery of Cloomber is a novel by the British author Sir Arthur Conan Doyle. It is narrated by John Fothergill West, a Scot who has moved with his family from Edinburgh to Wigtownshire to care for the estate of his father\'s half brother, William Farintosh.', '2022-03-08', '2022-03-08', 'The Mystery of Cloomber', 2, 3, 1, 8, 4),
(5, 'DON\'T SETTLE FOR LIMP IMITATIONS!', '2020-03-01', '2022-03-08', '50 Ways to Eat Cock: Healthy Chicken Recipes with Balls!', 4, 3, 1, 9, 5),
(6, 'The story follows the experiences of seven children as they are terrorized by an evil entity that exploits the fears of its victims to disguise itself while hunting its prey.', '2022-01-11', '2022-03-06', 'IT', 6, 6, 1, 7, 6),
(7, 'The novel\'s narrative is based on the relationship of its two main characters – the romance novelist Paul Sheldon and his deranged fan Annie Wilkes. ', '2022-03-01', '2022-03-08', 'Misery', 6, NULL, 1, 7, 7),
(8, 'It was the last major work of fiction written by Hemingway that was published during his lifetime.', '2022-02-01', '2022-02-03', 'The Old Man and the Sea', 9, NULL, 1, 8, 8),
(9, 'The Garden of Eden indicates Hemingway\'s exploration of male-female relationships, shows an interest in androgynous characters, and \"the reversal of gender roles.\"', '2022-01-01', '2022-01-06', 'The Garden of Eden', 9, 5, 1, 8, 9),
(10, 'Murder on the Orient Express is a work of detective fiction by English writer Agatha Christie featuring the Belgian detective Hercule Poirot. It was first published in the United Kingdom by the Collins Crime Club on 1 January 1934.', '2022-03-01', '2022-03-04', 'Murder on the Orient Express', 7, NULL, 1, 6, 10),
(11, 'Crooked House is a work of detective fiction by Agatha Christie first published in the US by Dodd, Mead and Company in March 1949 and in the UK by the Collins Crime Club on 23 May of the same year. The action takes place in and near London in the autumn of 1947.', '2022-02-09', '2022-02-18', 'Crooked House', 7, NULL, 1, 6, 11),
(12, 'The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry.', '2022-02-14', '2022-02-22', 'Harry Potter and the Philosopher\'s Stone', 8, 7, 1, 10, 12),
(13, 'Nineteen Eighty-Four is a dystopian social science fiction novel and cautionary tale written by English writer George Orwell.', '2021-12-01', '2021-12-13', 'Nineteen Eighty-Four', 5, 4, 1, 1, 13),
(14, 'Snow Crash is a science fiction novel by the American writer Neal Stephenson, published in 1992. Like many of Stephenson\'s novels, it covers history, linguistics, anthropology, archaeology, religion, computer science, politics, cryptography, memetics, and philosophy.', '2021-10-28', '2021-11-03', 'Snow Crash', 10, 2, 1, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_ID` int(11) NOT NULL,
  `genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_ID`, `genre`) VALUES
(1, 'Science Fiction'),
(2, 'Romance'),
(3, 'Poetry'),
(4, 'Adventure'),
(5, 'Thriller'),
(6, 'Crime'),
(7, 'Horror'),
(8, 'Classic'),
(9, 'Cooking'),
(10, 'Fantasy'),
(11, 'History'),
(12, 'Comics'),
(13, 'Language');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_ID` int(11) NOT NULL,
  `language` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_ID`, `language`) VALUES
(1, 'English'),
(2, 'German'),
(3, 'Latin'),
(4, 'Russian'),
(5, 'Spanish'),
(6, 'French'),
(7, 'Italian');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_information`
--

CREATE TABLE `purchase_information` (
  `purchase_ID` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_information`
--

INSERT INTO `purchase_information` (`purchase_ID`, `purchase_date`, `purchase_price`) VALUES
(1, '2020-01-15', 12),
(2, '2020-02-11', 10),
(3, '2021-07-13', 15),
(4, '2022-03-06', 10),
(5, '2022-02-14', 10),
(6, '2021-12-14', 5),
(7, '2021-08-16', 8),
(8, '2021-10-15', 10),
(9, '2022-02-09', 20),
(10, '2022-01-25', 8),
(11, '2022-03-01', 10),
(12, '2022-02-01', 9),
(13, '2021-04-18', 25),
(14, '2021-10-11', 10);

-- --------------------------------------------------------

--
-- Table structure for table `reading`
--

CREATE TABLE `reading` (
  `reading_ID` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reading`
--

INSERT INTO `reading` (`reading_ID`, `start_date`, `end_date`) VALUES
(1, '2021-09-20', '2021-10-11'),
(2, '2021-12-01', '2021-12-15'),
(3, '2022-01-19', '2022-02-17'),
(4, '2022-03-01', '2022-03-08'),
(5, '2022-01-10', '2022-02-08'),
(6, '2022-02-01', '2022-03-01'),
(7, '2021-12-12', '2022-01-10'),
(8, '2022-01-23', '2022-03-03'),
(9, '2020-08-11', '2021-01-19'),
(10, '2021-03-15', '2021-05-11'),
(11, '2021-12-19', '2022-01-16'),
(12, '2022-01-04', '2022-01-13'),
(13, '2022-02-03', '2022-02-17'),
(14, '2022-03-02', '2022-03-04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(60) NOT NULL,
  `user_address` varchar(60) NOT NULL,
  `fk_reading_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_address`, `fk_reading_ID`) VALUES
(1, 'John Wick', '121 Mill Neck', 7),
(2, 'Edward Snowden', 'Unknown', 5),
(3, 'Samuel L. Jackson', 'Motherfucker Road', 13),
(4, 'Ritesh', 'Rockinqueue 47', 6),
(5, 'Susanne', 'Neubaugasse 22', 14),
(6, 'Geoff Smith', 'Adelaide Terrace', 1),
(7, 'Alex Festi', 'Favoritenstraße 123', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_ID`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_ID`),
  ADD KEY `fk_author_ID` (`fk_author_ID`),
  ADD KEY `fk_language_ID` (`fk_language_ID`),
  ADD KEY `fk_genre_ID` (`fk_genre_ID`),
  ADD KEY `fk_purchase_ID` (`fk_purchase_ID`),
  ADD KEY `fk_user_ID` (`fk_user_ID`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_ID`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_ID`);

--
-- Indexes for table `purchase_information`
--
ALTER TABLE `purchase_information`
  ADD PRIMARY KEY (`purchase_ID`);

--
-- Indexes for table `reading`
--
ALTER TABLE `reading`
  ADD PRIMARY KEY (`reading_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_reading_ID` (`fk_reading_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchase_information`
--
ALTER TABLE `purchase_information`
  MODIFY `purchase_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reading`
--
ALTER TABLE `reading`
  MODIFY `reading_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`fk_author_id`) REFERENCES `author` (`author_id`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`fk_author_ID`) REFERENCES `author` (`author_ID`),
  ADD CONSTRAINT `book_ibfk_3` FOREIGN KEY (`fk_user_ID`) REFERENCES `users` (`user_ID`),
  ADD CONSTRAINT `book_ibfk_4` FOREIGN KEY (`fk_language_ID`) REFERENCES `language` (`language_ID`),
  ADD CONSTRAINT `book_ibfk_5` FOREIGN KEY (`fk_genre_ID`) REFERENCES `genre` (`genre_ID`),
  ADD CONSTRAINT `book_ibfk_6` FOREIGN KEY (`fk_purchase_ID`) REFERENCES `purchase_information` (`purchase_ID`),
  ADD CONSTRAINT `book_ibfk_7` FOREIGN KEY (`fk_user_ID`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`fk_reading_ID`) REFERENCES `reading` (`reading_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
