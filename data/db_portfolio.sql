-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 05, 2020 at 01:27 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

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
  `tools` text NOT NULL,
  `img` text NOT NULL,
  `vid` text NOT NULL,
  `logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`id`, `title`, `bio`, `tools`, `img`, `vid`, `logo`) VALUES
(1, 'Thames Valley Anglers Association', 'This project was a school assignment where my partner and I were given full creative control to redesign and develop the Thames River Anglers Association’s website. The site previously was very outdated, unorganized and not appealing to the eye. We took an approach where we want the site to be modern, engaging and easy for user to navigate and read. ', 'VS Code, JS, HTML5, CSS3, GitHub, Adobe Suite', 'traa_mockup.png', '', 'traa_logo.svg'),
(2, 'Modern Link Media', 'Modern Link Media was a school project where I worked in a team of 4, we were assigned to create a digital marketing agency company and the build branding, website designs and develop the website. We accomplished this project by dividing and concurring, I took the role of lead front-end developer where I wrote all the HTML5, CSS3 and some JavaScript.  ', 'VS Code, JS, Sass, HTML5, CSS3, Gulp, Express, GitHub, Adobe Suite', 'modern_mockup.png', '', 'modern_link_logo.svg'),
(3, 'ThermoSecurity', 'This was school project where I was given 24 hours to design and develop a responsive web application for a company called “ThermoSecurity”. I was given the ability to design and build this however I wanted. The main goal was to showcase and sell their new product. ', 'VS Code, Node.JS, JS, Sass, HTML5, CSS3, Gulp, Express, GitHub, Adobe Suite, Cinema4D', 'thermo_mockup.png', '', 'logo_thermosecurity.svg'),
(4, 'Rev3K', 'I was assigned to create a testimonial video on an owner of a local business who has had to over came an obstacle to get to where they are now. This was in conjunction with my Interactive Media Design program at Fanshawe College. It was a lot of fun interviewing and filming Lieja Koelman the owner of Rev3k, breaking down her athletic career in the Olympics and how she was able to grow her brand into London #1 private gym.', 'Premier Pro, Canon 5D MKIV, Manfroto Slider & Tripod, Aperture LED', '', 'rev3k.mp4', 'rev3k.svg'),
(5, 'SportsNet', 'This project was assigned to me in my Motion Design class in my program Interactive Media Design program at Fanshawe College. We were assigned to recreate the SportsNet NFL Monday night football intro with Cinema4D and Adobe Suite. This was tricky having so many different moving pieces at once and having realistic camera pans in Cinema4D, but by Combining both my skills sets in Cinema4D and Adobe Suite I was able to successfully imitate the intro.', 'Cinema4D, Premier Pro, After Effects, MacBook Pro', '', 'sportsnet.mp4', 'sportsnet.svg'),
(6, 'Ontario Summer', 'Ontario Summer was a hackathon midterm assignment from my Interactive Media Design program at Fanshawe College where myself and 3 others had 24 hours to complete a fully functional website with front and back end, promotional video, and branding guidelines. I had the role of being the Lead Back End Developer and the Lead Motion Designer. I love hackathons because it tests every team members interpersonal skills and how hard we can all work. In order for the project to be successful everyone must clearly communicate goals, current work state, when helping someone, and so much more. This project was a success for our team because we could all work together well through communication and working as a team.', 'VS Code, PHP, Vue.JS, JS, Sass, HTML5, CSS3, Gulp, Express, GitHub, Adobe Suite', 'ontario_mockup.png', 'ontario.mp4', 'ontario.svg'),
(7, 'Sport Chek', 'This project was an assignment me and my partner in my last semester in my Interactive Media Design program at Fanshawe College. The goal of this assignment was to create a fully functional custom CMS for a mockup Sport Chek e-commerce store. The final product allows admins to upload, edit, and remove products from the database. I took the role of being the lead front-end developer, where I designed mockups in Adobe XD and wrote all the HTML5, Sass, and CSS. I am very proud of the way this project turned out.', 'VS Code, PHP, HTML5, CSS3, GitHub, Sass, Adobe Suite', 'sportchek.png', '', 'sportchek.svg'),
(8, 'Time to Talk', 'Time to Talk was my and 3 of my partners final project in my Interactive Media Design program at Fanshawe College. This project was a marketing campaign where we aimed to end the stigma around HIV & Aids in the youth of London, Ontario. To successfully do this we used a mix of multi media technologies such as a fully custom website, social media ads and more. Throughout this assignment I was the Lead Back-End Developer and assisted with the majority of the Front-End Development. For the back-end I create a custom CMS that allows admins to log in, edit admin accounts, add/ remove admins and a mailing list.', 'VS Code, PHP, Vue.JS, JS, HTML5, CSS3, GitHub, Adobe Suite', 'tt_mockup.png', '', 'tt_logo.svg'),
(9, 'Roku Flashback', 'Roku Flashback was a project I worked on with a partner where we created a Roku themed website, but branded as Roku Flashback where users could find old school movies, tv shows, and music most services do not provide. This project was made in conjunction in my Multimedia  Authoring class in my Interactive Media Design program at Fanshawe College. We used modern tools such as Vue.js to create a fully data driven web streaming app. In this project I worked as a Full Stack Developer, where I would code, made some design, and collected data and made copy.', 'VS Code, PHP, Vue.JS, JS, HTML5, CSS3, GitHub, Adobe Suite', 'roku_mockup.png', '', 'roku.svg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
