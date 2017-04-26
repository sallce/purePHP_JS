-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2017 at 08:56 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tasks`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_ID` int(11) NOT NULL,
  `article_title` varchar(200) DEFAULT NULL,
  `article_author` varchar(50) DEFAULT NULL,
  `article_content` text,
  `article_date` datetime DEFAULT NULL,
  `article_archived` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_ID`, `article_title`, `article_author`, `article_content`, `article_date`, `article_archived`) VALUES
(1, 'Conditional Processing in Macromedia ColdFusion MX 7', 'Kelly Sylven', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc.', '2017-04-12 09:14:00', 1),
(2, 'ColdFusion and J2EE', 'Ben Forta', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere', '2017-04-26 15:21:20', 1),
(3, 'test', 'asdfasd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sed nulla non nisi pulvinar pretium non in velit. Pellentesque convallis velit in sem sodales iaculis. Nam imperdiet orci interdum libero congue laoreet. Phasellus rhoncus et mauris eu accumsan. Mauris rutrum iaculis tortor, vel lacinia eros maximus et. Nullam at placerat sapien. Nulla eget consequat sapien. Etiam leo odio, suscipit at consequat sit amet, cursus vitae turpis.\r\n\r\nAliquam ut hendrerit tellus, sed pharetra dui. Duis tincidunt sed sapien ac lacinia. Pellentesque eget hendrerit tortor. Sed ultrices aliquam sem, sit amet posuere odio placerat ut. Maecenas quis lacus ligula. Mauris tristique mollis urna vel tincidunt. Fusce ante ligula, pharetra quis felis non, efficitur dapibus nisl. Nam sed metus fermentum, tempus felis at, congue arcu. In quis suscipit leo, quis efficitur nisi. Integer id egestas nisl, eget aliquam turpis. Aenean purus quam, semper consequat pretium nec, iaculis vitae velit. Curabitur vel nibh sed diam viverra tincidunt id sit amet ex. Sed sed nisl ut orci placerat tempor nec quis purus. Vestibulum semper gravida faucibus. Maecenas sagittis ligula erat, eu semper eros congue at.\r\n\r\nUt efficitur quis velit at interdum. Integer molestie lobortis metus ac varius. Integer rutrum ex id neque luctus dignissim. Sed non interdum lacus. Ut facilisis tristique lacus, non laoreet diam iaculis in. Vivamus semper urna in posuere maximus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent sed metus mauris. Sed eu purus quis tellus porttitor tempus. Nunc porttitor arcu in orci sollicitudin, at iaculis lectus mollis. Nullam pulvinar bibendum mauris, eu fermentum mi commodo blandit. Phasellus pharetra sem eget lectus fermentum sagittis. Maecenas congue elementum turpis. Nullam at porta nisi. Donec nec aliquet tellus.\r\n\r\nMauris sit amet sapien eget ligula laoreet interdum elementum id velit. Vivamus ultrices dolor eu fringilla mattis. Praesent efficitur mi diam, nec posuere magna lacinia eu. Vivamus et imperdiet dui, ac dapibus erat. Maecenas tincidunt lacus vitae nisl luctus scelerisque. Nam ut dui auctor, aliquet justo eget, finibus felis. Cras vestibulum lacinia interdum. Integer eget elementum diam, ac fermentum leo. Fusce quis libero sit amet nisi aliquet rutrum at eget diam. Fusce arcu mauris, convallis in lectus id, volutpat eleifend sapien. Nam eget lacus nec lacus rutrum malesuada. Praesent eu lacinia eros, ac viverra urna. Aenean interdum sollicitudin risus bibendum gravida. In hac habitasse platea dictumst. Etiam in auctor quam. Morbi in lobortis quam.\r\n\r\nEtiam facilisis feugiat quam, interdum pulvinar libero gravida sit amet. Morbi sodales suscipit sem in luctus. Praesent metus enim, auctor vel sem id, mattis tempus eros. Phasellus sit amet nunc eu mi pulvinar egestas non quis nibh. Nunc in porttitor lectus, et gravida neque. Vivamus accumsan rhoncus purus, at ullamcorper dolor porttitor non. Fusce interdum sollicitudin volutpat.', '2017-04-19 14:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `article_image_mapping`
--

CREATE TABLE `article_image_mapping` (
  `aim_id` int(11) NOT NULL,
  `aim_articleID` int(11) DEFAULT NULL,
  `aim_imageID` int(11) DEFAULT NULL,
  `aim_archived` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article_image_mapping`
--

INSERT INTO `article_image_mapping` (`aim_id`, `aim_articleID`, `aim_imageID`, `aim_archived`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_ID` int(11) NOT NULL,
  `image_thumbpath` varchar(200) DEFAULT NULL,
  `image_fullpath` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_ID`, `image_thumbpath`, `image_fullpath`) VALUES
(1, 'http://wwwimages.adobe.com/content/dam/acom/en/products/coldfusion/Images/cf-family-marquee-v2-1440x810.jpg', 'http://wwwimages.adobe.com/content/dam/acom/en/products/coldfusion/Images/cf-family-marquee-v2-1440x810.jpg'),
(2, 'https://pisces.bbystatic.com/BestBuy_US/store/ee/2015/com/pm/nav_desktops_1115.jpg', 'https://pisces.bbystatic.com/BestBuy_US/store/ee/2015/com/pm/nav_desktops_1115.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_ID`);

--
-- Indexes for table `article_image_mapping`
--
ALTER TABLE `article_image_mapping`
  ADD PRIMARY KEY (`aim_id`),
  ADD KEY `artileFK` (`aim_articleID`),
  ADD KEY `imageFK` (`aim_imageID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `article_image_mapping`
--
ALTER TABLE `article_image_mapping`
  MODIFY `aim_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
