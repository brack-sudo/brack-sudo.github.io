-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 10:54 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$0vWTYB5.j0itcKOpCtLIKOqT4Cc8PEdTFwWCJN3Z4XfE5UKJpZcju', 'phpgurukulofficial@gmail.com', 1, '2018-05-27 17:51:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncement`
--

CREATE TABLE `tblannouncement` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PostImage` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblannouncement`
--

INSERT INTO `tblannouncement` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(4, 'radio manager', 3, 0, '<p>manager in jornalism</p>', '2023-01-11 13:37:29', '2023-01-11 13:37:29', 1, 'radio-manager', 'df2300427bbcb073ffad5dde1dca1dd5.jpg'),
(5, 'online radio station', 6, 0, '<p>mn agebah</p><table class=\"table table-bordered\"><tbody><tr><td>uduufj</td><td>jhffh</td><td>jklglgj</td><td>hgiugk</td></tr><tr><td>9876543</td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr></tbody></table><p><br></p>', '2023-01-11 15:06:39', '2023-01-11 15:06:39', 1, 'online-radio-station', '2966ddf55f6e92c0b9969830a984c89b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncementcatagory`
--

CREATE TABLE `tblannouncementcatagory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblannouncementcatagory`
--

INSERT INTO `tblannouncementcatagory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'educator', 'any available educator', '2023-01-11 11:38:09', '2023-01-11 15:20:50', 1),
(6, 'check', 'mn agebah', '2023-01-11 15:03:16', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncementcomment`
--

CREATE TABLE `tblannouncementcomment` (
  `id` int(11) NOT NULL,
  `postId` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `name` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `comment` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblannouncementcomment`
--

INSERT INTO `tblannouncementcomment` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, '4', 'eyasu demis', 'eyasudemis27@gmail.com', 'i apply\r\n', '2023-01-12 09:18:13', 1),
(2, '5', 'lili', 'admin@gmail.com', 'fsafdasfsaf', '2023-01-12 09:29:39', 1),
(3, '5', 'beki', 'beki@gmail.com', 'ok', '2023-01-12 09:30:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncementsubcatagory`
--

CREATE TABLE `tblannouncementsubcatagory` (
  `id` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `SubCatDescription` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblannouncementsubcatagory`
--

INSERT INTO `tblannouncementsubcatagory` (`id`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(1, 2, 'fdfdfdf', 'dfsdffd', '2023-01-11 11:39:37', '2023-01-11 11:39:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(8, 'sport', 'news which are related to sport', '2023-01-08 13:59:44', '0000-00-00 00:00:00', 1),
(9, 'check', 'mn agebah', '2023-01-11 15:01:27', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, '12', 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2018-11-21 11:06:22', 0),
(2, '12', 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2018-11-21 11:25:56', 1),
(3, '7', 'ABC', 'abc@test.com', 'This is sample text for testing.', '2018-11-21 11:27:06', 1),
(4, '13', 'eyasu demis', 'eyasudemis27@gmail.com', 'good quality', '2023-01-11 13:50:36', 1),
(5, '13', 'eyasu demis', 'admin@gmail.com', 'dfadfasfas', '2023-01-11 13:52:37', 1),
(6, '13', 'eyasu demis', 'eyasudemis27@gmail.com', 'fafasf', '2023-01-11 13:54:21', 1),
(7, '16', 'eyasu demis', 'admin@gmail.com', 'jdghsfdvscz', '2023-01-12 09:22:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` longtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Dilla University community centered radio station', '<div><font face=\"Times New Roman\"><span style=\"font-size: 26px;\">DUCCR FM 89.0 radio began its broadcasting service on September 2020. Dilla University established the station to educate the community and to use the radio station as a bridge to link with the community. The station currently broadcasts in Gedeofa and Amharic languages for 10 hours daily. More than 25 volunteers, administration, and academic staff s of the university are currently working in the station. The station strives to educate, entertain, and inform the public by addressing social, economic, and national affairs.&nbsp;&nbsp;</span></font></div><div><font face=\"Times New Roman\"><span style=\"font-size: 26px;\">DUCCRS FM is targeted at the Gedeo zone communities in Gedeo zone administration and surroundings. It broadcasts mainly in two different languages to an independent audience. The station promotes and supports local projects and provides listeners with entertainment, information, advice, and the opportunity to share their stories and life experiences. DUCCRS FM enables listeners to know what is happening within their area and community and has a platform to participate in and contribute their views about issues that affect them. We regularly ask for feedback from our listeners to ensure that we are inclusive and reflect their preferences and priorities, taking account of the various listener segments. With a secular, non-religious outlook, we are the only community radio station serving our community that does this.</span></font></div><div><font face=\"Times New Roman\"><span style=\"font-size: 26px;\">Dilla University Community Radio (DUCR) FM 89.0 began its broadcasting service on September 2020. The station was established by Dilla University to educate the community and provide a platform for students to gain experience in the broadcasting industry. The mission of DUCR is to provide a platform for students to gain experience in the broadcasting industry, while also educating the community. The station offers a variety of programming, including news, music, sports, and talk shows. The station also provides educational programming, such as lectures and seminars on topics related to Dilla University. The station also provides a platform for students to express their opinions and share their stories.&nbsp;</span></font></div><div><font face=\"Times New Roman\"><span style=\"font-size: 26px;\">The programming provided by DUCR is varied and diverse. The station offers a variety of music genres, including hip-hop, rock, jazz, classical, contemporary and old music’s. The station also provides news and sports coverage from around the world. Additionally, DUCR offers talk shows that focus on topics such as politics, culture, and current events. The station also provides educational programming, such as lectures and seminars on topics related to Dilla University.&nbsp;</span></font></div><div><font face=\"Times New Roman\"><span style=\"font-size: 26px;\">Since its launch, DUCR has had a positive impact on the local community. The station has provided a platform for students to gain experience in the broadcasting industry and to express their opinions. Additionally, the station has provided educational programming that has helped to educate the community on topics related to social issues. Finally, the station has provided a platform for local artists to showcase their music and for local businesses to advertise their products and services.&nbsp;</span></font></div><div><font face=\"Times New Roman\"><span style=\"font-size: 26px;\">DUCR FM 89.0 has been a great success since its launch in September 2020. The station has provided a platform for students to gain experience in the broadcasting industry, while also educating the community on topics related to Dilla University. Additionally, the station has provided a platform for local artists to showcase their music and for local businesses to advertise their products and services. DUCR has been an invaluable asset to the local community and will continue to be so in the future.</span></font></div>', '2018-06-30 18:01:03', '2023-01-10 21:28:10'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp;&nbsp;</b></p><p><b>Phone Number :&nbsp;</b></p><p><b>Email -id :&nbsp;</b></p><p><br></p>', '2018-06-30 18:01:36', '2023-01-08 14:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(16, 'facebook in ethiopia', 8, 0, '<p>የኢትዮጵያን ጨምሮ የፌስቡክ ይዘቶችን የሚቆጣጠረው ተቋም አገልግሎቱን ሊያቆም ነው።</p><p><br></p><p>ኢንስታግራም፣ ፌስቡክን እና ዋትስአፕን የሚያስተዳድረው ሜታ ይዘት ተቆጣጣሪ የሆነው የምሥራቅ አፍሪካው ድርጅት፣ ሳማ በፈረንጆቹ ሚያዝያ ወር መጨረሻ የይዘት ቁጥጥር ሥራውን ለማቆም ማቀዱን አስታወቀ።</p><p><br></p><p>ሳማ በማኅበራዊ ሚዲያ መድረኩ ላይ የሚሰራጩ ከጥላቻ አዘል ይዘቶች እስከ አሰቃቂ የሆኑ ምስሎችንና ቪዲዮዎችን ላይ ቁጥጥር ሲያደርግ ነበር።</p><p><br></p><p>የሜታ ቃል አቀባይ፣ ሳማ የይዘት ቁጥጥር አገልግሎቱን ለማቆም ያሳለፈውን ውሳኔ እንደሚያከብሩ ለቢቢሲ ተናግረዋል።&nbsp;</p><p><br></p><p>የፌስቡክ፣ ኢንስታግራም እና ዋትስአፕ ባለቤት የሆነው ሜታ፣ ሽግግሩ የማኅበራዊ ሚዲያ መድረኩ ላይ ተፅዕኖ እንዳይኖረው እንደሚያረጋግጥ ገልጿል። (BBC)</p>', '2023-01-11 14:39:31', NULL, 1, 'facebook-in-ethiopia', '55c21d652bdc0adb7337bf89eda580fa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblschedule`
--

CREATE TABLE `tblschedule` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PageTitle` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblschedule`
--

INSERT INTO `tblschedule` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'Schedule', 'schedule', '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td>monday</td><td><br></td><td><br></td><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td>dfa</td><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td>aldfda</td><td>dfdfa</td><td><br></td><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td><td><br></td><td><br></td><td><br></td></tr></tbody></table><p><br></p>', '2023-01-11 13:16:21', '2023-01-11 14:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblannouncement`
--
ALTER TABLE `tblannouncement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblannouncementcatagory`
--
ALTER TABLE `tblannouncementcatagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblannouncementcomment`
--
ALTER TABLE `tblannouncementcomment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblannouncementsubcatagory`
--
ALTER TABLE `tblannouncementsubcatagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblschedule`
--
ALTER TABLE `tblschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblannouncement`
--
ALTER TABLE `tblannouncement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblannouncementcatagory`
--
ALTER TABLE `tblannouncementcatagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblannouncementcomment`
--
ALTER TABLE `tblannouncementcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblannouncementsubcatagory`
--
ALTER TABLE `tblannouncementsubcatagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblschedule`
--
ALTER TABLE `tblschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
