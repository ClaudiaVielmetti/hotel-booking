-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 02:54 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel-booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_name`, `email`, `mypassword`, `created_at`) VALUES
(1, 'admin_1@gmail.com', 'admin_1@gmail.com', '$2y$10$Uiap8jkhRzrrjiEez0OmtOG4PIGLdCVLPigxcWUJMOtEzMRHQkSNS', '2023-05-10 11:55:34'),
(3, 'admin_2@gmail.com', 'admin_2@gmail.com', '$2y$10$ShQDUGJyzQnJDqdOplH5WOHGTcFTvQUa2fIETKtaMdR2YSQlQI1Tq', '2023-05-10 14:08:34'),
(4, 'Test Admin', 'TestAdmin@gmail.com', '$2y$10$ed91qKVklH2tgsF53qdoUus3uQK7Rl.NCF939gxm6vhKWucq3DMbW', '2023-05-12 14:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `check_in` varchar(200) NOT NULL,
  `check_out` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `room_name` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `payment` int(10) NOT NULL,
  `user_id` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `check_in`, `check_out`, `email`, `phone_number`, `full_name`, `hotel_name`, `room_name`, `status`, `payment`, `user_id`, `created_at`) VALUES
(7, '5/12/2023', '5/13/2023', 'claudiavielmetti38@gmail.com', '00000000', 'Claudia Vielmetti', 'Sheraton', 'Suite Room', 'Pending', 2200, 3, '2023-05-09 10:57:04'),
(8, '5/12/2023', '5/13/2023', 'me@me.com', '00000000', 'me@me.com', 'The Palace Hotel', 'Standard Room', 'Pending', 1500, 2, '2023-05-09 10:58:18'),
(9, '5/12/2023', '5/13/2023', 'me@me.com', '00000000', 'me@me.com', 'The Palace Hotel', 'Standard Room', 'Pending', 1500, 2, '2023-05-09 11:04:17'),
(10, '5/12/2023', '5/13/2023', 'me@me.com', '00000000', 'me@me.com', 'Sheraton', 'Suite Room', 'Pending', 2200, 2, '2023-05-09 11:42:35'),
(11, '5/12/2023', '5/13/2023', 'me@me.com', '00000000', 'me@me.com', 'The Palace Hotel', 'Standard Room', 'Pending', 1500, 2, '2023-05-09 11:42:52'),
(12, '5/12/2023', '5/13/2023', 'me@me.com', '00000000', 'me@me.com', 'The Palace Hotel', 'Standard Room', '', 1500, 2, '2023-05-09 11:44:29'),
(13, '5/26/2023', '5/28/2023', 'claudiavielmetti38@gmail.com', '00000000', 'Claudia Vielmetti', 'Sheraton', 'Suite Room', '', 4400, 2, '2023-05-10 08:15:12'),
(14, '5/25/2023', '5/27/2023', 'user@gmail.com', '123456789', 'user@gmail.com', 'Sheraton', 'Suite Room', 'Pending', 4400, 4, '2023-05-12 09:27:09'),
(15, '5/26/2023', '5/28/2023', 'claudiavielmetti38@gmail.com', '00000000', 'Claudia Vielmetti', 'Sheraton', 'Suite Room', 'Pending', 4400, 4, '2023-05-12 10:00:15'),
(16, '5/28/2023', '5/29/2023', 'ghfghfgh', 'gfhfghfghgf', 'fghfgfgh', 'Sheraton', 'Suite Room', 'Pending', 2200, 4, '2023-05-12 11:12:09'),
(17, '5/17/2023', '5/19/2023', 'me@me.com', '00000000', 'me@me.com', 'Sheraton', 'Suite Room', 'Pending', 4400, 2, '2023-05-12 13:29:21'),
(18, '5/30/2023', '5/31/2023', 'me@me.com', '00000000', 'me@me.com', 'Sheraton', 'Suite Room', 'Pending', 2200, 2, '2023-05-12 13:32:49'),
(19, '5/27/2023', '5/28/2023', 'me@me.com', '00000000', 'me@me.com', 'Sheraton', 'Suite Room', 'Pending', 2200, 2, '2023-05-12 13:33:09'),
(20, '5/31/2023', '6/1/2023', 'user', '00000000', 'user', 'The Palace Hotel', 'Standard Room', 'Pending', 1500, 2, '2023-05-12 14:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `image`, `description`, `location`, `status`, `created_at`) VALUES
(1, 'Sheraton', 'services-1.jpg', 'We’ll give you the world. Collaborative meeting spaces | Refined design | Elevated Sheraton Clubs | Best-in-class service.', 'Pretoria', 1, '2023-05-04 12:06:52'),
(2, 'The Palace Hotel', 'palace.jpg', 'The Palace of the Lost City at Sun City lavishes its guests with luxurious surrounds and impeccable service.', 'Pilanesberg', 1, '2023-05-04 12:06:52'),
(8, 'The Ritz', 'ritz-hotel.jpg', 'At The Ritz-Carlton Hotel Company, L.L.C., \"We are Ladies and Gentlemen serving Ladies and Gentlemen.\" ', 'Cape Town', 1, '2023-05-11 10:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` int(10) NOT NULL,
  `num_persons` int(5) NOT NULL,
  `size` int(5) NOT NULL,
  `view` varchar(200) NOT NULL,
  `num_beds` int(5) NOT NULL,
  `hotel_id` int(5) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `status` int(5) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `image`, `price`, `num_persons`, `size`, `view`, `num_beds`, `hotel_id`, `hotel_name`, `status`, `created_at`) VALUES
(1, 'Suite Room', 'room-1.jpg', 2200, 2, 45, 'Park View', 1, 1, 'Sheraton', 1, '2023-05-04 13:09:16'),
(2, 'Standard Room', 'room-2.jpg', 1500, 3, 55, 'Valley of Waves', 2, 2, 'The Palace Hotel', 1, '2023-05-04 13:09:16'),
(3, 'Family Room', 'room-3.jpg', 2500, 4, 65, 'Golf Course', 2, 2, 'The Palace Hotel', 1, '2023-05-04 13:09:16'),
(4, 'Deluxe Room', 'room-4.jpg', 3000, 4, 65, 'Sea View', 3, 3, 'The Ritz', 1, '2023-05-04 13:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `mypassword`, `created_at`) VALUES
(1, 'username', 'username@u.com', '$2y$10$VaDcPPfbV5kniwrUfDzqEe7aqdHZzFuJbd8ufNJv20Xwyf4z76/wG', '2023-04-21 12:53:44'),
(2, 'me@me.com', 'me@me.com', '$2y$10$ubgr10tARWLTdylL6tWrou9bwnmO2Ov7x/tzihHzXpuIJC/KlugLi', '2023-04-21 13:18:58'),
(3, 'ClaudiaVielmetti38@gmail.com', 'claudiavielmetti38@gmail.com', '$2y$10$TpeTorbQKfEgkwIIaQMByOc88Lt.hDR5TlQucA0qmPXML0JZXmqEe', '2023-05-09 10:56:48'),
(4, 'User A', 'user@gmail.com', '$2y$10$Uiap8jkhRzrrjiEez0OmtOG4PIGLdCVLPigxcWUJMOtEzMRHQkSNS', '2023-05-10 11:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `utilities`
--

CREATE TABLE `utilities` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `room_id` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilities`
--

INSERT INTO `utilities` (`id`, `name`, `icon`, `description`, `room_id`, `created_at`) VALUES
(1, 'Tea and Coffee', 'fa fa-coffee', 'We offer a tea and coffee station with some other refreshments', 1, '2023-05-05 12:12:54'),
(2, 'Tea and Coffee', 'fa fa-coffee', 'We offer a tea and coffee station with some other refreshments', 2, '2023-05-05 12:12:54'),
(3, 'Tea and Coffee', 'fa fa-coffee', 'We offer a tea and coffee station with some other refreshments', 3, '2023-05-05 12:12:54'),
(4, 'Hot Showers', 'fa fa-shower', 'Guaranteed hot every time', 1, '2023-05-05 12:12:54'),
(5, 'Hot Showers', 'fa fa-shower', 'Guaranteed hot every time', 2, '2023-05-05 12:12:54'),
(6, 'Hot Showers', 'fa fa-shower', 'Guaranteed hot every time', 3, '2023-05-05 12:12:54'),
(7, 'Laundry', 'fa fa-suitcase', 'Same day laundry service', 1, '2023-05-05 12:12:54'),
(8, 'Laundry', 'fa fa-suitcase', 'Same day laundry service', 2, '2023-05-05 12:12:54'),
(9, 'Laundry', 'fa fa-suitcase', 'Same day laundry service', 3, '2023-05-05 12:12:54'),
(10, 'Air-conditioning', 'fa fa-snowflake-o', 'Keeping it cool or hot', 1, '2023-05-05 12:12:54'),
(11, 'Air-conditioning', 'fa fa-snowflake-o', 'Keeping it cool or hot', 2, '2023-05-05 12:12:54'),
(12, 'Air-conditioning', 'fa fa-snowflake-o', 'Keeping it cool or hot', 3, '2023-05-05 12:12:54'),
(13, 'Free Wifi', 'fa fa-wifi', 'Unlimited free wifi', 1, '2023-05-05 12:12:54'),
(14, 'Free Wifi', 'fa fa-wifi', 'Unlimited free Wifi', 2, '2023-05-05 12:12:54'),
(15, 'Free Wifi', 'fa fa-wifi', 'Unlimited free wifi', 3, '2023-05-05 12:12:54'),
(16, 'Room Service', 'fa fa-cutlery', 'Delivered to your door', 3, '2023-05-05 12:12:54'),
(17, 'TV', 'fa fa-television', 'Any channel you want', 1, '2023-05-05 12:12:54'),
(18, 'TV', 'fa fa-television', 'Any channel you want', 2, '2023-05-05 12:12:54'),
(19, 'Shuttle', 'fa fa-taxi', 'We will give you a ride', 1, '2023-05-05 12:12:54'),
(20, 'Tea and Coffee', 'fa fa-coffee', 'We offer a tea and coffee station with some other refreshments', 1, '2023-05-05 12:13:00'),
(21, 'Tea and Coffee', 'fa fa-coffee', 'We offer a tea and coffee station with some other refreshments', 2, '2023-05-05 12:13:00'),
(22, 'Tea and Coffee', 'fa-fa-coffee', 'We offer a tea and coffee station with some other refreshments', 3, '2023-05-05 12:13:00'),
(23, 'Hot Showers', 'fa fa-shower', 'Guaranteed hot every time', 1, '2023-05-05 12:13:00'),
(24, 'Hot Showers', 'fa fa-shower', 'Guaranteed hot every time', 2, '2023-05-05 12:13:00'),
(25, 'Hot Showers', 'fa fa-shower', 'Guaranteed hot every time', 3, '2023-05-05 12:13:00'),
(26, 'Laundry', 'fa fa-suitcase', 'Same day laundry service', 1, '2023-05-05 12:13:00'),
(27, 'Laundry', 'fa fa-suitcase', 'Same day laundry service', 2, '2023-05-05 12:13:00'),
(28, 'Laundry', 'fa fa-suitcase', 'Same day laundry service', 3, '2023-05-05 12:13:00'),
(29, 'Air-conditioning', 'fa fa-snowflake-o', 'Keeping it cool or hot', 1, '2023-05-05 12:13:00'),
(30, 'Air-conditioning', 'fa fa-snowflake-o', 'Keeping it cool or hot', 2, '2023-05-05 12:13:00'),
(31, 'Air-conditioning', 'fa fa-snowflake-o', 'Keeping it cool or hot', 3, '2023-05-05 12:13:00'),
(32, 'Free Wifi', 'fa fa-wifi', 'Unlimited free wifi', 1, '2023-05-05 12:13:00'),
(33, 'Free Wifi', 'fa fa-wifi', 'Unlimited free Wifi', 2, '2023-05-05 12:13:00'),
(34, 'Free Wifi', 'fa fa-wifi', 'Unlimited free wifi', 3, '2023-05-05 12:13:00'),
(35, 'Room Service', 'fa fa-cutlery', 'Delivered to your door', 3, '2023-05-05 12:13:00'),
(36, 'TV', 'fa fa-television', 'Any channel you want', 1, '2023-05-05 12:13:00'),
(37, 'TV', 'fa fa-television', 'Any channel you want', 2, '2023-05-05 12:13:00'),
(38, 'Shuttle', 'fa fa-taxi', 'We will give you a ride', 1, '2023-05-05 12:13:00'),
(39, 'Tea and Coffee', 'fa fa-coffee', 'We offer a tea and coffee station with some other refreshments', 4, '2023-05-08 10:07:52'),
(41, 'Hot Showers', 'fa fa-shower', 'Guaranteed hot every time', 4, '2023-05-05 12:12:54'),
(42, 'Laundry', 'fa fa-suitcase', 'Same day laundry service', 4, '2023-05-05 12:12:54'),
(43, 'Free Wifi', 'fa fa-wifi', 'Unlimited free wifi', 4, '2023-05-05 12:12:54'),
(44, 'TV', 'fa fa-television', 'Any channel you want', 4, '2023-05-05 12:12:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilities`
--
ALTER TABLE `utilities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `utilities`
--
ALTER TABLE `utilities`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
