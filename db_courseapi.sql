-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 15, 2020 at 07:43 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_courseapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` int(11) NOT NULL,
  `crid` int(11) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `date_completed` varchar(255) DEFAULT NULL,
  `updated` varchar(255) DEFAULT NULL,
  `grade_result` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `section_name` varchar(255) DEFAULT NULL,
  `complete` int(11) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `coid` int(11) DEFAULT NULL,
  `feeds_item_guid` varchar(255) DEFAULT NULL,
  `feeds_item_url` varchar(255) DEFAULT NULL,
  `feed_nid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `startdate` text DEFAULT NULL,
  `expirydate` text DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `external_id` int(11) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `term_id` int(11) DEFAULT NULL,
  `enabled` enum('true','false') NOT NULL DEFAULT 'true',
  `blocked` enum('true','false') NOT NULL DEFAULT 'false',
  `allow_self_enrollment` enum('true','false') NOT NULL DEFAULT 'false',
  `enable_grades` enum('true','false') NOT NULL DEFAULT 'false',
  `enable_discussions` enum('true','false') NOT NULL DEFAULT 'false',
  `enable_announcements` enum('true','false') NOT NULL DEFAULT 'false',
  `enable_materials` enum('true','false') NOT NULL DEFAULT 'false',
  `enable_messages` enum('true','false') NOT NULL DEFAULT 'false',
  `enable_certificate` enum('true','false') NOT NULL DEFAULT 'false',
  `enable_accessibility` enum('true','false') NOT NULL DEFAULT 'false',
  `course_added` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` int(11) NOT NULL,
  `ccid` int(11) NOT NULL,
  `nid` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `increments` varchar(255) DEFAULT '0.00',
  `min` varchar(255) DEFAULT '0.00',
  `max` varchar(255) DEFAULT '0.00',
  `enable_variable_credit` varchar(255) DEFAULT '0',
  `active` int(11) DEFAULT 0,
  `code` varchar(255) DEFAULT NULL,
  `expiration_type` varchar(255) DEFAULT NULL,
  `expiration_date` varchar(255) DEFAULT NULL,
  `expiration_offset` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `feeds_item_guid` varchar(255) DEFAULT NULL,
  `feeds_item_url` varchar(255) DEFAULT NULL,
  `feed_nid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `external_id` int(11) DEFAULT NULL,
  `instance_id` int(11) DEFAULT NULL,
  `occurance` int(11) DEFAULT 1,
  `file_url` text DEFAULT NULL,
  `folder_to_save` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `field_time_to_complete` varchar(255) DEFAULT NULL,
  `coid` int(11) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL,
  `module` varchar(255) DEFAULT 'course_content',
  `title` varchar(255) DEFAULT NULL,
  `object_type` varchar(255) DEFAULT 'course_page',
  `enabled` enum('1','0') DEFAULT '0',
  `info` varchar(255) DEFAULT NULL,
  `instance` int(11) DEFAULT NULL,
  `required` enum('1','0') DEFAULT '0',
  `weight` varchar(255) DEFAULT NULL,
  `hidden` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `feeds_item_guid` varchar(255) DEFAULT NULL,
  `feeds_item_url` varchar(255) DEFAULT NULL,
  `feed_nid` varchar(255) DEFAULT NULL,
  `instance_node` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `field_time_to_complete` varchar(255) DEFAULT NULL,
  `coid` int(11) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL,
  `module` varchar(255) DEFAULT 'course_quiz',
  `title` varchar(255) DEFAULT NULL,
  `object_type` varchar(255) DEFAULT 'quiz',
  `enabled` enum('1','0') DEFAULT '0',
  `info` varchar(255) DEFAULT NULL,
  `instance` int(11) DEFAULT NULL,
  `required` enum('1','0') DEFAULT '0',
  `weight` varchar(255) DEFAULT NULL,
  `hidden` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `feeds_item_guid` varchar(255) DEFAULT NULL,
  `feeds_item_url` varchar(255) DEFAULT NULL,
  `feed_nid` varchar(255) DEFAULT NULL,
  `instance_node` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `id` int(11) NOT NULL,
  `field_time_to_complete` varchar(255) DEFAULT NULL,
  `coid` int(11) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL,
  `module` varchar(255) DEFAULT 'course_webform',
  `title` varchar(255) DEFAULT NULL,
  `object_type` varchar(255) DEFAULT 'webform',
  `enabled` enum('1','0') DEFAULT '0',
  `info` varchar(255) DEFAULT NULL,
  `instance` int(11) DEFAULT NULL,
  `required` enum('1','0') DEFAULT '0',
  `weight` varchar(255) DEFAULT NULL,
  `hidden` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `feeds_item_guid` varchar(255) DEFAULT NULL,
  `feeds_item_url` varchar(255) DEFAULT NULL,
  `feed_nid` varchar(255) DEFAULT NULL,
  `instance_node` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `external_id` int(11) DEFAULT NULL,
  `file_uri` text DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `file_resource` varchar(255) DEFAULT NULL,
  `file_uuid` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `display` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4035;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=760;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
