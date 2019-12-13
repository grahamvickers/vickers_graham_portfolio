-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 13, 2019 at 07:17 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects`
--

CREATE TABLE `tbl_projects` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `bio` text NOT NULL,
  `img` text NOT NULL,
  `logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`id`, `title`, `bio`, `img`, `logo`) VALUES
(1, 'THAMES VALLEY ANGLERS ASSOCIATION', 'This project was a school assignment where my partner and I were given full creative control to redesign and develop the Thames River Anglers Association’s website. The site previously was very outdated, unorganized and not appealing to the eye. We took an approach where we want the site to be modern, engaging and easy for user to navigate and read. ', 'traa_mockup.png', 'traa_logo.svg'),
(2, 'Modern Link Media', 'Modern Link Media was a school project where I worked in a team of 4, we were assigned to create a digital marketing agency company and the build branding, website designs and develop the website. We accomplished this project by dividing and concurring, I took the role of lead front-end developer where I wrote all the HTML5, CSS3 and some JavaScript.  ', 'modern_mockup.png', 'modern_link_logo.svg'),
(3, 'ThermoSecurity', 'This was school project where I was given 24 hours to design and develop a responsive web application for a company called “ThermoSecurity”. I was given the ability to design and build this however I wanted. The main goal was to showcase and sell their new product. ', 'thermo_mockup.png', 'logo_thermosecurity.svg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
