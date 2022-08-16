-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2021 at 02:55 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miniproject`
--
CREATE DATABASE IF NOT EXISTS `miniproject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `miniproject`;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `subject1` varchar(10) DEFAULT NULL,
  `subject2` varchar(10) DEFAULT NULL,
  `subject3` varchar(10) DEFAULT NULL,
  `subject4` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `subject1`, `subject2`, `subject3`, `subject4`) VALUES
(1, 'eng', 'math', 'social', 'evs');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `did` int(11) NOT NULL,
  `dname` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`did`, `dname`, `dept`, `phno`) VALUES
(1, 'abc', 'ent', 8907654678);

-- --------------------------------------------------------

--
-- Table structure for table `inpatient`
--

CREATE TABLE `inpatient` (
  `pid` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `date_of_adm` varchar(20) NOT NULL,
  `date_of_dis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`ID`, `name`, `gender`, `age`, `phno`, `address`) VALUES
(1, 'xyz', 'female', 35, 9908776533, 'bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `USN` varchar(200) NOT NULL,
  `Phone` bigint(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Login` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `Name`, `USN`, `Phone`, `Address`, `Login`, `Password`) VALUES
(1, 'dekshitha', '075', 9901931905, 'banglore', 'dekshi17@gmail.com', 'HIEE'),
(2, 'anurag', '1', 9087653456, 'bangalore', 'anurag@gmail.com', 'anurag'),
(3, 'yogita', '1ks18cs122', 9097432167, 'bangalore', 'yogita', 'raikar'),
(4, 'aaa', '0987', 908765432, 'bangalore', 'vdsa', 'ppp'),
(5, 'ccxz', '009', 98654, 'b', 'bg', 'pp'),
(6, 'swetha', '1ks18cs107', 9075432116, 'bangalore', 'swetha', 'swetha'),
(7, 'swetha', '1ks18cs107', 9098765431, 'bangalore', 'swetha', 'swetha'),
(8, 'swetha', '1ks18cs107', 9098765431, 'bangalore', 'swetha', 'swetha'),
(9, 'swetha', '1ks18cs107', 9098765431, 'bangalore', 'swetha', 'swetha'),
(10, 'swetha', '1ks18cs107', 9098765431, 'bangalore', 'swetha', 'swetha'),
(11, 'hemanth', '108', 9087667543, 'andra', 'hemanth', '1234'),
(12, 'dekshi', '075', 8990765345, 'bang', 'dekshi', 'dekshi'),
(13, 'dekshi', '075', 90876655433, 'ba', 'de', 'de');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `inpatient`
--
ALTER TABLE `inpatient`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inpatient`
--
ALTER TABLE `inpatient`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

--
-- Dumping data for table `pma__column_info`
--

INSERT INTO `pma__column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`, `input_transformation`, `input_transformation_options`) VALUES
(3, 'project', 'reservation', 'arriving', '', '', 'output/text_plain_dateformat.php', '0,\'%d.%m.%Y\'', '', ''),
(4, 'project', 'reservation', 'departing', '', '', 'output/text_plain_dateformat.php', '0,\'%d.%m.%Y\'', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"project\",\"table\":\"signup\"},{\"db\":\"project\",\"table\":\"reservation\"},{\"db\":\"project\",\"table\":\"room\"},{\"db\":\"miniproject\",\"table\":\"student\"},{\"db\":\"project\",\"table\":\"login\"},{\"db\":\"miniproject\",\"table\":\"inpatient\"},{\"db\":\"miniproject\",\"table\":\"doctor\"},{\"db\":\"miniproject\",\"table\":\"patient\"},{\"db\":\"miniproject\",\"table\":\"course\"},{\"db\":\"trial\",\"table\":\"department\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-12-15 20:01:04', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `bid` int(11) NOT NULL,
  `activities` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`bid`, `activities`) VALUES
(1, 'trekking,swimming,blossom to brew,plantation tour,outdoor dining and camping'),
(61, 'trekking,swimming,blossom to brew,plantation tour,outdoor dining and camping'),
(62, 'swimming'),
(63, 'swimming,trekking,outdoor dining and camping '),
(64, 'swimming,trekking,outdoor dining and camping '),
(65, 'trekking,swimming,blossom to brew,plantation tour,outdoor dining and camping'),
(66, 'trekking,swimming,blossom to brew,plantation tour,outdoor dining and camping'),
(67, 'trekking'),
(68, 'trekking,swimming,plantation tour'),
(80, 'trekking,swimming,blossom to brew,plantation tour,outdoor dining and camping'),
(82, 'trekking,swimming,plantation tour');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `userReview` int(11) NOT NULL,
  `userMessage` varchar(200) NOT NULL,
  `dateReviewed` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `userid`, `userReview`, `userMessage`, `dateReviewed`) VALUES
(5, 'swetha', 4, 'good time', 'Wednesday, December 16, 2020'),
(6, 'yogita', 4, 'lovely place!', 'Wednesday, December 16, 2020'),
(7, 'dekshitha', 4, 'had amazing experience!', 'Wednesday, December 16, 2020'),
(31, 'hemanth', 2, 'lovely nature !', 'Saturday, December 19, 2020'),
(33, 'arvind', 5, 'awesome', 'Friday, January 15, 2021'),
(34, 'ksit', 5, 'gud', 'Friday, January 15, 2021'),
(35, 'sandeep', 5, 'gud', 'Monday, January 18, 2021');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `rid` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `arriving` varchar(100) DEFAULT NULL,
  `departing` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `guests` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`rid`, `roomno`, `userid`, `arriving`, `departing`, `type`, `guests`) VALUES
(1, 301, 'dekshitha', '2021-01-17', '2021-01-20', 'Suite Cottage', 3),
(61, 400, 'dekshitha', '2020-12-27', '2020-12-29', 'Tree House', 2),
(62, 105, 'hemanth', '2020-12-20', '2020-12-22', 'Superior Luxury Cottage', 3),
(63, 100, 'hemanth', '2020-12-25', '2020-12-30', 'Superior Luxury Cottage', 2),
(64, 101, 'hemanth', '2020-12-31', '2021-01-02', 'Superior Luxury Cottage', 2),
(65, 101, 'Swetha bijanapalli', '2021-12-30', '2022-12-30', 'Superior Luxury Cottage', 3),
(66, 101, 'dekshitha', '2021-01-16', '2021-01-18', 'Superior Luxury Cottage', 4),
(67, 101, 'ksit', '2021-01-18', '2021-01-20', 'Superior Luxury Cottage', 3),
(68, 405, 'dekshitha', '2021-01-19', '2021-01-24', 'Tree House', 2),
(79, 105, 'dekshitha', '2021-01-26', '2021-01-29', 'Superior Luxury Cottage', 2),
(80, 105, 'dekshitha', '2021-01-29', '2021-02-02', 'Superior Luxury Cottage', 2),
(81, 101, 'dekshitha', '2021-01-29', '2021-02-02', 'Superior Luxury Cottage', 2),
(82, 205, 'Swetha bijanapalli', '2021-01-28', '2021-01-30', 'Luxury Cottage', 2);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `roomno`, `type`, `price`) VALUES
(1, 100, 'Superior Luxury Cottage', 18000),
(2, 101, 'Superior Luxury Cottage', 18000),
(3, 102, 'Superior Luxury Cottage', 18000),
(4, 103, 'Superior Luxury Cottage', 18000),
(5, 104, 'Superior Luxury Cottage', 18000),
(6, 105, 'Superior Luxury Cottage', 18000),
(7, 200, 'Luxury Cottage', 15000),
(8, 201, 'Luxury Cottage', 15000),
(9, 202, 'Luxury Cottage', 15000),
(10, 203, 'Luxury Cottage', 15000),
(11, 204, 'Luxury Cottage', 15000),
(12, 205, 'Luxury Cottage', 15000),
(13, 300, 'Suite Cottage', 10000),
(14, 301, 'Suite Cottage', 10000),
(15, 302, 'Suite Cottage', 10000),
(16, 303, 'Suite Cottage', 10000),
(17, 304, 'Suite Cottage', 10000),
(18, 305, 'Suite Cottage', 10000),
(19, 400, 'Tree House', 7000),
(20, 401, 'Tree House', 7000),
(21, 402, 'Tree House', 7000),
(22, 403, 'Tree House', 7000),
(23, 404, 'Tree House', 7000),
(24, 405, 'Tree House', 7000);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `userid` varchar(200) NOT NULL,
  `emailid` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phno` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `userid`, `emailid`, `password`, `phno`) VALUES
(1, 'dekshitha', 'dekshi17@gmail.com', 'dekshi', 9901931905),
(2, 'Swetha bijanapalli', 'swethabijanapalli@gmail.com', 'swetha', 8971678175),
(3, 'yogita', 'yogitaramesh11@gmail.com', 'yogita', 9663472404),
(13, 'hemanth', 'hemanthchowdary743@gmail.com', 'hemanth2001', 7702006368),
(14, 'arvind', 'arvindpathak96445@gmail.com', 'arvind', 7830167597),
(15, 'ksit', 'ksit@gmail.com', 'ksit', 9098764322);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`,`roomno`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `resume`
--
CREATE DATABASE IF NOT EXISTS `resume` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `resume`;

-- --------------------------------------------------------

--
-- Table structure for table `edu`
--

CREATE TABLE `edu` (
  `eid` int(255) NOT NULL,
  `uid` int(255) NOT NULL,
  `school` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `board` varchar(255) NOT NULL,
  `marks` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `edu`
--

INSERT INTO `edu` (`eid`, `uid`, `school`, `date`, `board`, `marks`, `field`, `city`) VALUES
(0, 1, 'kumarans', '2018-03-17', 'pu', '87%', 'pcmb', 'bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `infid` int(255) NOT NULL,
  `uid` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `pnum` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`infid`, `uid`, `fname`, `lname`, `email`, `address`, `city`, `country`, `zip`, `pnum`) VALUES
(1, 1, 'dekshitha', 'ravikumar', 'dekshi17@gmail.com', 'NO.46,6TH MAIN VAJPAI NAGAR NE', 'BANGALORE', 'India', '560061', '9901931905'),
(2, 1, 'asd', 'sdf', 'aaa@gmail.com', 'bang', 'bangalore', 'India', '560061', '90234555555'),
(3, 1, 'dekshi', 'r', 'dekshi@gmail.com', 'bang', 'bang', 'India', '560061', '988765443'),
(4, 2, 'hemanth', 'chowdary', 'hemanth@gmail.com', 'bang', 'bang', 'India', '560061', '90876543223'),
(5, 1, 'zxc', 'bnm', 'asd@gmail.com', 'tyui', 'basdf', 'India', '56006', '23456'),
(6, 1, 'asdfg', 'xcvb', 'defg@gmail.com', 'sdfg', 'bdd', 'India', '560061', '90754321');

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

CREATE TABLE `interest` (
  `iid` int(255) NOT NULL,
  `uid` int(255) NOT NULL,
  `interest` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interest`
--

INSERT INTO `interest` (`iid`, `uid`, `interest`) VALUES
(1, 1, '0'),
(2, 1, '0'),
(3, 1, '0'),
(4, 1, '0'),
(5, 1, '0'),
(6, 1, '0'),
(7, 1, '0'),
(8, 1, '0'),
(9, 1, '0'),
(10, 1, '0'),
(11, 1, '0'),
(12, 1, '0'),
(13, 1, '0'),
(14, 1, '0'),
(15, 1, '0'),
(16, 1, '0'),
(17, 1, '0'),
(18, 1, '0'),
(19, 1, '0'),
(20, 2, '0'),
(21, 2, '0'),
(22, 2, '0'),
(23, 2, '0'),
(24, 2, '0'),
(25, 2, '0'),
(26, 2, '0'),
(27, 2, 'intr1'),
(28, 1, 'python'),
(29, 1, 'qwe'),
(30, 1, 'zxcv'),
(31, 1, 'zxcv'),
(32, 1, 'asdf'),
(33, 1, 'xcv'),
(34, 1, 'zxcv'),
(35, 1, 'cvbn'),
(36, 1, 'asd'),
(37, 1, 'asd'),
(38, 1, 'xcv'),
(39, 1, 'cv'),
(40, 1, 'xcv'),
(41, 1, 'tyui');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skid` int(255) NOT NULL,
  `uid` int(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `srate` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skid`, `uid`, `sname`, `srate`) VALUES
(0, 1, 'python', 0);

-- --------------------------------------------------------

--
-- Table structure for table `summary`
--

CREATE TABLE `summary` (
  `suid` int(255) NOT NULL,
  `summary` varchar(3000) NOT NULL,
  `uid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `summary`
--

INSERT INTO `summary` (`suid`, `summary`, `uid`) VALUES
(3, '<p>i am a quick learner</p>', 1),
(4, '<p>Next, use our Get Started docs to setup Tiny!</p>', 1),
(5, '<p>quick learner</p>', 1),
(6, '<p>hi</p>', 1),
(7, '<p>hi</p>', 1),
(8, '<p>hi</p>', 1),
(9, '<p>hie</p>', 2),
(10, '<p>Next, use our Get Started docs to setup Tiny!</p>', 2),
(11, '<p>Next, use our Get Started docs to setup Tiny!</p>', 2),
(12, '<p>hi</p>', 1),
(13, '<p>hi</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `pnum` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `fname`, `lname`, `email`, `gender`, `pass`, `pnum`) VALUES
(1, 'Dekshitha', 'Ravikumar', 'dekshi17@gmail.com', 'female', 'dekshi', '9901931905'),
(2, 'hemanth', 'chowdary', 'hemanth@gmail.com', 'male', 'abc', '9087654321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `edu`
--
ALTER TABLE `edu`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`infid`);

--
-- Indexes for table `interest`
--
ALTER TABLE `interest`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skid`);

--
-- Indexes for table `summary`
--
ALTER TABLE `summary`
  ADD PRIMARY KEY (`suid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `infid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `interest`
--
ALTER TABLE `interest`
  MODIFY `iid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `summary`
--
ALTER TABLE `summary`
  MODIFY `suid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `trial`
--
CREATE DATABASE IF NOT EXISTS `trial` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `trial`;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `D_CODE` varchar(50) NOT NULL,
  `DEPARTMENT` varchar(50) DEFAULT NULL,
  `DOCTOR` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`D_CODE`, `DEPARTMENT`, `DOCTOR`) VALUES
('D101', 'Surgery', 'Dr. D. Nayar'),
('D105', 'Orthopedic', 'Dr. M. Roy'),
('D108', 'ENT', 'Dr. K. Bhatia'),
('D115', 'Gynecology', 'Dr. P. Tejpal'),
('D120', 'Cardiology', 'Dr. D. Singh'),
('D125', 'Nuclear Medicine', 'Dr. A. Banerjee');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `NO.` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `D_CODE` varchar(50) DEFAULT NULL,
  `DATOFADM` varchar(50) DEFAULT NULL,
  `CHARGES` bigint(20) DEFAULT NULL,
  `SEX` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`NO.`, `NAME`, `AGE`, `D_CODE`, `DATOFADM`, `CHARGES`, `SEX`) VALUES
(1, 'Sandeep', 65, 'D101', '23/02/2011', 300, 'M'),
(2, 'Ravina', 24, 'D105', '20/01/2011', 200, 'F'),
(3, 'Karan', 45, 'D105', '19/02/2011', 200, 'M'),
(4, 'Tarun', 12, 'D101', '01/01/2011', 300, 'M'),
(5, 'Zubin', 36, 'D108', '12/01/2011', 250, 'M'),
(6, 'Ketaki', 16, 'D108', '24/02/2011', 300, 'F'),
(7, 'Ankita', 29, 'D120', '20/02/2011', 800, 'F'),
(8, 'Zareen', 45, 'D115', '22/02/2011', 300, 'F'),
(9, 'Kush', 19, 'D120', '13/01/2011', 800, 'M'),
(10, 'Shailya', 31, 'D125', '19/02/2011', 400, 'F');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`D_CODE`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`NO.`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
