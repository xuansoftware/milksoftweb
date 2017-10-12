-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: 2017-10-09 03:08:36
-- 服务器版本： 5.7.19
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `milk_db`
--

-- --------------------------------------------------------

--
-- 表的结构 `chengjiao`
--

CREATE TABLE `chengjiao` (
  `md5` char(64) NOT NULL,
  `house_num` varchar(128) NOT NULL,
  `city` varchar(16) NOT NULL,
  `district` varchar(32) NOT NULL,
  `bizcircle` varchar(32) NOT NULL,
  `community` varchar(32) NOT NULL,
  `building_num` varchar(16) NOT NULL,
  `family_num` varchar(16) NOT NULL,
  `room_num` varchar(16) NOT NULL,
  `year_of_pre_owner` varchar(16) NOT NULL,
  `deal_price` varchar(16) NOT NULL,
  `square_price` varchar(16) NOT NULL,
  `assessment_price` varchar(16) NOT NULL,
  `hanging_out_price` varchar(16) NOT NULL,
  `build_year` varchar(16) NOT NULL,
  `floor` varchar(16) NOT NULL,
  `proportion_out` varchar(16) NOT NULL,
  `proportion_in` varchar(16) NOT NULL,
  `purpose` varchar(16) NOT NULL,
  `property_years` varchar(16) NOT NULL,
  `direction` varchar(16) NOT NULL,
  `elevator` varchar(16) NOT NULL,
  `stair_house_proportion` varchar(16) NOT NULL,
  `building_type` varchar(16) NOT NULL,
  `structure` varchar(16) NOT NULL,
  `hanging_out_time` varchar(16) NOT NULL,
  `sell_time` varchar(16) NOT NULL,
  `period` varchar(16) NOT NULL,
  `price_adjust` varchar(16) NOT NULL,
  `visit_num` varchar(16) NOT NULL,
  `subscribe_num` varchar(16) NOT NULL,
  `browse_num` varchar(16) NOT NULL,
  `house_url` varchar(16) NOT NULL,
  `community_url` varchar(256) NOT NULL,
  `subway_distance` varchar(16) NOT NULL,
  `fitment` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chengjiao`
--
ALTER TABLE `chengjiao`
  ADD PRIMARY KEY (`md5`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
