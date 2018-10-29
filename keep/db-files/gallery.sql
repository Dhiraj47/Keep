-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2018 at 03:12 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sl_no` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `profile_pic` text NOT NULL,
  `photo_id` text NOT NULL,
  `likes` int(7) NOT NULL,
  `comments` int(7) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Not Done'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sl_no`, `email`, `address`, `profile_pic`, `photo_id`, `likes`, `comments`, `title`, `content`, `date`, `status`) VALUES
(1, 'dxk.r47@gmail.com', 'danapur, patna', 'dhiraj.jpg', '3230723523_539d4ebe9a_b.jpg', 15, 3, 'a new errorII', 'follow me on facebook : www.facebook.com/pages/Marta-Bevacqua-Photography/1362332?', '2018-07-04', 'Not Done'),
(2, 'dxk.r47@gmail.com', 'danapur, patna', 'dhiraj.jpg', '4727440298_3f2d891f02_z.jpg', 19, 6, 'scuba diving', 'some contents', '2018-07-05', 'Not Done'),
(3, 'dxk.r47@gmail.com', 'danapur, patna', 'dhiraj.jpg', '3394600192_f72bb0b98b_z.jpg', 11, 6, 'dark art', 'some contents', '2018-07-06', 'Not Done'),
(4, 'christinakoyel@gmail.com', 'garia, kolkata', 'koyel.jpg', '4671594023_b41c2ee662.jpg', 14, 5, 'california', 'some contents', '2018-07-07', 'Not Done'),
(5, 'dxk.r47@gmail.com', 'danapur, patna', 'dhiraj.jpg', '5123859750_1ac86128e2_b.jpg', 2, 20, 'game center', 'some contents', '2018-07-08', 'Not Done'),
(6, 'bkm.123@gmail.com', 'Birju Kumar', 'birju.jpg', '5227428607_6b946a83f1_b.jpg', 24, 4, 'a new errorII', 'follow me on facebook : www.facebook.com/pages/Marta-Bevacqua-Photography/1362332?', '2018-07-08', 'Not Done'),
(7, 'chandank.jaiswal@gmail.com', 'Chandan Kumar', 'chandan.jpg', '5333217436_ae8c784d12.jpg', 6, 1, 'scuba diving', 'some contents', '2018-07-09', 'Not Done'),
(8, 'christinakoyel@gmail.com', 'garia, kolkata', 'koyel.jpg', '6815445970_340e9a4994_h.jpg', 21, 4, 'dark art', 'some contents', '2018-07-09', 'Not Done'),
(9, 'dxk.r47@gmail.com', 'danapur, patna', 'dhiraj.jpg', '8354331500_be4910014c_b.jpg', 6, 0, 'california', 'some contents', '2018-07-09', 'Not Done'),
(10, 'sonjac797@outlook.com', 'amritsar, punjab', 'sonia.jpg', '8448841100_58fe2cd0a9_k.jpg', 22, 2, 'game center', 'some contents', '2018-07-09', 'Not Done'),
(11, 'vijayalaxmi1514@gmail.com', 'Vijaylaxmi', 'viji.jpg', '8478255627_fbf85b1552_b.jpg', 1, 1, 'Spicy', 'some contents', '2018-07-09', 'Not Done'),
(12, 'dxk.r47@gmail.com', 'danapur, patna', 'dhiraj.jpg', '8725975478_acab7bdf09_b.jpg', 11, 6, 'dark art', 'some contents', '2018-07-10', 'Not Done'),
(13, 'christinakoyel@gmail.com', 'garia, kolkata', 'koyel.jpg', '9465524831_880696a71a_b.jpg', 42, 5, 'california', 'some contents', '2018-07-04', 'Not Done'),
(14, 'dxk.r47@gmail.com', 'danapur, patna', 'dhiraj.jpg', '16944349157_7099875b4c_k.jpg', 3, 20, 'game center', 'some contents', '2018-07-04', 'Not Done'),
(15, 'bkm.123@gmail.com', 'Birju Kumar', 'birju.jpg', '25943542447_9182a681ca_k.jpg', 3, 4, 'a new errorII', 'follow me on facebook : www.facebook.com/pages/Marta-Bevacqua-Photography/1362332?', '2018-07-04', 'Not Done'),
(16, 'chandank.jaiswal@gmail.com', 'Chandan Kumar', 'chandan.jpg', '17389487171_f8b51ee48c_b.jpg', 15, 2, 'scuba diving', 'some contents', '2018-07-24', 'Not Done'),
(17, 'christinakoyel@gmail.com', 'garia, kolkata', 'koyel.jpg', '18149663983_1fc5dff5be_k.jpg', 22, 4, 'dark art', 'some contents', '2018-07-29', 'Not Done'),
(18, 'dxk.r47@gmail.com', 'danapur, patna', 'dhiraj.jpg', '19037945904_98aed551ba.jpg', 93, 0, 'california', 'some contents', '2018-07-04', 'Not Done'),
(19, 'sonjac797@outlook.com', 'amritsar, punjab', 'sonia.jpg', '20756817409_1ca2d8c1db_k.jpg', 33, 2, 'game center', 'some contents', '2018-07-25', 'Not Done'),
(20, 'vijayalaxmi1514@gmail.com', 'Vijaylaxmi', 'viji.jpg', '25740376760_3f5217a0f1_b.jpg', 41, 1, 'turtle', 'some contents', '2018-07-14', 'Not Done'),
(21, 'dxk.r47@gmail.com', 'danapur, patna', 'dhiraj.jpg', '13102022295b6632409356b7.3632278416.jpg', 14, 0, 'Sunrise', 'some contents', '2018-08-05', 'Done'),
(22, 'dxk.r47@gmail.com', 'danapur, patna', 'dhiraj.jpg', '7843851185b6632aacd7c03.609886178.jpg', 8, 0, 'Mountain', 'some contents', '2018-08-05', 'Done'),
(23, 'dxk.r47@gmail.com', 'danapur, patna', 'dhiraj.jpg', '2553361195b6633508e70f8.863159703.jpg', 10, 0, 'clouds', 'super nova', '2018-08-05', 'Not Done'),
(24, 'kundan@gmail.com', 'Ranchi', '16956438785b682738a33c29.48173379e1ebecb5e53267d0a971f37fb80938e2.png', '7621360785b682851549600.1282033717.jpg', 11, 0, 'Snowy Field', 'snowy crops ', '2018-08-06', 'Not Done'),
(25, 'ashu@gmail.com', 'kalapet, pondicherry', '5428717405b68f05f7c45f7.22585299black-ops-3-wallpapers-mobile-On-wallpaper-hd.jpg', '13057467685b68f0bb84d262.597734049.jpg', 6, 1, 'The Sun', 'Ultimate source of Energy', '2018-08-07', 'Not Done'),
(26, 'bkm.123@gmail.com', 'kanke, Jharkhand', 'birju.jpg', '10697235065b690f40c34e23.241810782880x1800.jpg', 0, 0, 'way', 'some contents', '2018-08-07', 'Not Done'),
(28, 'dxk.r47@gmail.com', 'danapur, patna', 'dhiraj.jpg', '', 0, 0, 'Movie', 'Going for movie', '2018-10-21', 'Not Done'),
(29, 'dxk.r47@gmail.com', 'danapur, patna', 'dhiraj.jpg', '4104280415bcc6676e26ff2.07987354pondicherry_beach.jpg', 0, 0, 'Shopping', 'going for shopping', '2018-10-31', 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(32) NOT NULL,
  `profile_pic` varchar(200) NOT NULL DEFAULT 'user.png',
  `gender` varchar(8) NOT NULL,
  `hit_upload` float NOT NULL,
  `hit_like` float NOT NULL,
  `hit_comment` float NOT NULL,
  `online_time` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `password`, `name`, `profile_pic`, `gender`, `hit_upload`, `hit_like`, `hit_comment`, `online_time`) VALUES
('admin@flickr', 'admin', 'Admin', 'admin.png', 'Male', 0, 0, 0, 0),
('ashu@gmail.com', 'ashu', 'Ashutosh', '5428717405b68f05f7c45f7.22585299black-ops-3-wallpapers-mobile-On-wallpaper-hd.jpg', 'Male', 1, 4, 3, 20.65),
('bkm.123@gmail.com', '78945612', 'Birju Kumar', 'birju.jpg', 'Male', 1, 4, 3, 2.6),
('chandank.jaiswal@gmail.com', '741852', 'Chandan Kumar', 'chandan.jpg', 'Male', 1.5, 2.5, 1.5, 34.1333),
('christinakoyel@gmail.com', 'KoyelKai', 'Koyel Pramanick', 'koyel.jpg', 'Female', 15, 15, 15, 4),
('dxk.r47@gmail.com', '12345678', 'Dhiraj kumar', 'dhiraj.jpg', 'Male', 1, 4, 3, 2.68333),
('kundan@gmail.com', 'kundan', 'Kundan', '16956438785b682738a33c29.48173379e1ebecb5e53267d0a971f37fb80938e2.png', 'Male', 1.5, 12, 5, 11.5167),
('rahul123@gmail.com', 'rahul', 'Rahul Gupta', 'rahul.jpg', 'Male', 0.3, 10, 7, 2),
('ren@gmail.com', 'ren@123', 'Reinson', 'ren.jpg', 'Female', 0.2, 5, 3, 10),
('riasen@gmail.com', 'ria@sen', 'Ria Sen', 'ria.jpg', 'Female', 0.5, 15, 13, 1.5),
('rohit123@gmail.com', 'rohit', 'Rohit Kumar', 'rohit.jpg', 'Male', 0.111, 15, 3, 5),
('sd.sonu@gmail.com', 'sonu', 'sidharth', '13487527855b6826a05eef37.25578182movies_wall-e_desktop_1920x1200_hd-wallpaper-1033710.jpg', 'Male', 1.5, 2.5, 1.5, 1.625),
('sonjac797@outlook.com', 'sonia123', 'Sonia Chaudhary', 'sonia.jpg', 'Female', 1, 8, 3.5, 10.5667),
('tsarkar@gmail.com', 'tamal', 'Tamal Sarkar', 'sarkar.jpg', 'Male', 1, 3, 10, 3.5),
('vijayalaxmi1514@gmail.com', 'viji123456', 'Vijaylaxmi', 'viji.jpg', 'Female', 8, 18, 28, 2.22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
