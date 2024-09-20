-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2024 at 11:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myproject1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `userid`, `productid`, `qity`) VALUES
(1, 0, 11, 3),
(2, 1, 11, 45),
(3, 1, 11, 45),
(4, 1, 11, 45),
(5, 1, 11, 45),
(6, 1, 16, 3),
(7, 1, 12, 21),
(8, 1, 12, 21),
(9, 1, 12, 21),
(10, 1, 11, 3),
(11, 1, 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryname`) VALUES
(1, 'TV\'s'),
(2, 'Dishwasher'),
(4, 'Ranges'),
(5, 'Computer'),
(6, 'Blu-ray & DVD Player'),
(7, 'Projectors'),
(8, 'Hometheater System'),
(9, 'Cameras'),
(10, 'Camcorders'),
(11, 'Washer & Dryers'),
(12, 'Refrigerators'),
(13, 'Microwaves');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `fullname`, `email`, `message`) VALUES
(1, 'John', 'john@gmial.com', 'this the message to owner');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pdescription` text NOT NULL,
  `productquantity` int(11) NOT NULL,
  `pprice` varchar(255) NOT NULL,
  `pstock` int(11) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `special` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `pname`, `pdescription`, `productquantity`, `pprice`, `pstock`, `pimage`, `special`) VALUES
(11, 1, 'Samsung', 'Samsung 356', 177, 'Rs.20000', 37, 'images/sam.png', 1),
(12, 9, 'Nikon D7000', 'Nikon', 300, 'Rs.3500', 53, 'images/nik.jpg', 0),
(13, 9, 'Kodak Camera', 'Camera', 567, 'Rs.3000', 112, 'images/kod.jpg', 1),
(14, 9, 'Acer Monitor', '22 inch', 86, 'Rs.15000', 234, 'images/acer.jpg', 0),
(15, 1, 'Sony camcorders', 'Sony lense', 767, 'Rs.16000', 765, 'images/sony.png', 1),
(16, 7, 'Samsung Projector', 'Projector', 56, 'Rs.27950', 11, 'images/sam-pro.jpg', 1),
(18, 3, 'Godrej', 'Dishwasher', 78, 'Rs.1200', 7, 'images/2.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'anuj', 'anuisahu309@gmail.com', '12345'),
(2, 'anuj', 'anuisahu309@gmail.com', '12345'),
(3, 'Anuj Gupta', 'anujsahu1811@gmail.com', '123'),
(4, 'Anuj Gupta', 'anujsahu1811@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
