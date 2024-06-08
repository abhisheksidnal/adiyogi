-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 07, 2024 at 05:43 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id22285866_database `
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--


CREATE TABLE `admin` (
  `ADMIN_ID` varchar(255) NOT NULL,
  `ADMIN_PASSWORD` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ADMIN_ID`, `ADMIN_PASSWORD`) VALUES
('ADIYOGI', 'Shiva@123');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `BOOK_ID` int NOT NULL AUTO_INCREMENT,
  `CAR_ID` int NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `BOOK_PLACE` varchar(255) NOT NULL,
  `BOOK_DATE` date NOT NULL,
  `DURATION` int NOT NULL,
  `PHONE_NUMBER` bigint NOT NULL,
  `DESTINATION` varchar(255) NOT NULL,
  `RETURN_DATE` date NOT NULL,
  `PRICE` int NOT NULL,
  `BOOK_STATUS` varchar(255) NOT NULL DEFAULT 'UNDER PROCESSING',
  PRIMARY KEY (`BOOK_ID`),
  KEY `CAR_ID` (`CAR_ID`),
  KEY `EMAIL` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BOOK_ID`, `CAR_ID`, `EMAIL`, `BOOK_PLACE`, `BOOK_DATE`, `DURATION`, `PHONE_NUMBER`, `DESTINATION`, `RETURN_DATE`, `PRICE`, `BOOK_STATUS`) VALUES
(85, 31, 'abhisheksidnal14@gmail.com', 'hubli', '2024-06-05', 1, 8660390854, 'sakleshpura', '2024-06-06', 3300, 'APPROVED'),
(86, 23, 'abhisheksidnal14@gmail.com', 'belagavi', '2024-06-07', 2, 8792287099, 'Goa', '2024-06-09', 9600, 'UNDER PROCESSING'),
(87, 32, 'yadavdarshan12@gmail.com', 'dawangere', '2024-06-07', 4, 7876555659, 'chikkmangalur', '2024-06-11', 18000, 'APPROVED'),
(88, 23, 'yadavdarshan12@gmail.com', 'belagavi', '2024-06-07', 1, 8971993378, 'dharwad', '2024-06-08', 4800, 'UNDER PROCESSING');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
  `CAR_ID` int NOT NULL AUTO_INCREMENT,
  `CAR_NAME` varchar(255) NOT NULL,
  `FUEL_TYPE` varchar(255) NOT NULL,
  `CAPACITY` int NOT NULL,
  `PRICE` int NOT NULL,
  `CAR_IMG` varchar(255) NOT NULL,
  `AVAILABLE` varchar(255) NOT NULL,
  PRIMARY KEY (`CAR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`CAR_ID`, `CAR_NAME`, `FUEL_TYPE`, `CAPACITY`, `PRICE`, `CAR_IMG`, `AVAILABLE`) VALUES
(23, 'ERTIGA', 'DEISEL', 7, 4800, 'IMG-6654b813742025.35208030.jpeg', 'Y'),
(27, 'SWIFT ', 'DEISEL', 5, 3600, 'IMG-6659f1488f97c3.79222771.jpg', 'Y'),
(29, 'TT', 'DEISEL', 15, 5700, 'IMG-6659f208643791.20421217.png', 'Y'),
(31, 'VENUE', 'DEISEL', 5, 3300, 'IMG-665da515ad20c9.69413197.png', 'N'),
(32, 'INNOVA', 'DEISEL', 7, 4500, 'IMG-665da54d5fc7d1.02901912.jpeg', 'N'),
(33, 'ALTO', 'PETROL', 5, 2700, 'IMG-665da57c13cd23.77487611.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `FED_ID` int NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(255) NOT NULL,
  `COMMENT` text NOT NULL,
  PRIMARY KEY (`FED_ID`),
  KEY `TEST` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FED_ID`, `EMAIL`, `COMMENT`) VALUES
(14, 'abhisheksidnal14@gmail.com', 'good'),
(15, 'yadavdarshan12@gmail.com', 'good service and well designed website');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `PAY_ID` int NOT NULL AUTO_INCREMENT,
  `BOOK_ID` int NOT NULL,
  `CARD_NO` varchar(255) NOT NULL,
  `EXP_DATE` varchar(255) NOT NULL,
  `CVV` int NOT NULL,
  `PRICE` int NOT NULL,
  PRIMARY KEY (`PAY_ID`),
  UNIQUE KEY `BOOK_ID` (`BOOK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PAY_ID`, `BOOK_ID`, `CARD_NO`, `EXP_DATE`, `CVV`, `PRICE`) VALUES
(38, 85, '123456789009', '1234', 543, 3300),
(39, 86, '123456789009', '1234', 123, 9600),
(40, 87, '123456789098', '1234', 213, 18000),
(41, 88, '123456789098', '3452', 234, 4800);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `FNAME` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `PHONE_NUMBER` bigint NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`FNAME`, `EMAIL`, `PHONE_NUMBER`, `PASSWORD`) VALUES
('Abhishek', 'abhisheksidnal14@gmail.com', 8971993378, '8371f69bdcc49cb926f09c9f4a061082'),
('harish', 'harish123@gmail.com', 7876555659, '02ab970087ecdd690dc412cd8621bf64'),
('jaggu', 'jaggu143@gmail.com', 8792287099, 'cd787893f4230ec45b35eed4ef466af0'),
('Rohit', 'rohitballari7@gmail.com', 7876555659, '24780214eac5297e08da75a44c5f0480'),
('darshan yadav', 'yadavdarshan12@gmail.com', 8971993378, '0700bcf4fde97c5d775732bd32a986fc');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`CAR_ID`) REFERENCES `cars` (`CAR_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`EMAIL`) REFERENCES `users` (`EMAIL`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `TEST` FOREIGN KEY (`EMAIL`) REFERENCES `users` (`EMAIL`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`BOOK_ID`) REFERENCES `booking` (`BOOK_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
