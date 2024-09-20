-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2024 at 11:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adminpanel`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pdescription` text NOT NULL,
  `pprice` varchar(255) NOT NULL,
  `pstock` int(11) NOT NULL,
  `pimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `pname`, `pdescription`, `pprice`, `pstock`, `pimage`) VALUES
(11, 2, 'Samsung', 'Samsung 356', 'Rs.20000', 43, '1689761769253.jpg'),
(12, 13, 'Nikon D7000', 'Nikon', 'Rs.3500', 53, '1689761854152.jpg'),
(13, 13, 'Kodak Camera', 'Camera', 'Rs.3000', 112, '1689761924940.jpg'),
(14, 9, 'Acer Monitor', '22 inch', 'Rs.15000', 234, '1689762117134.png'),
(15, 14, 'Sony camcorders', 'Sony lense', 'Rs.16000', 765, '1689762203261.png'),
(16, 11, 'Samsung Projector', 'Projector', 'Rs.27950', 11, '1689762255660.jpg'),
(18, 3, 'Godrej', 'Dishwasher', 'Rs.1200', 7, '1689846777245.png'),
(19, 16, 'LG RH', 'LG ', 'Rs.9999', 427, '1689851658873.jpg'),
(20, 8, 'Samsung Range', 'Range', 'Rs.7500', 2, '1689852129258.png'),
(21, 10, 'Phillips Bdp32', 'DVD Player', 'Rs.1365', 541, '1689923736709.jpg'),
(22, 12, 'Intex GT43', 'Hometheator', 'Rs.2500', 1102, '1689923887667.jpg'),
(23, 12, 'Zebronics Fast21', 'Hometheator', 'Rs.4350', 359, '1689924057750.jpeg'),
(24, 15, 'Whirpool DR', 'Dryers', 'Rs.14599', 7, '1689924236917.jpg'),
(25, 17, 'Black Decker', 'Microwave', 'Rs.6700', 50, '1689924384069.jpg'),
(28, 12, 'Vox M22', 'Hometheater', 'Rs.1222', 33, '1689931000513.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
