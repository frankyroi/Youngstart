-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2020 at 11:13 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youngstars`
--

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) NOT NULL,
  `question_id` int(10) NOT NULL,
  `option` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option`) VALUES
(1, 1, 'Wild Animals in Art'),
(2, 1, 'Hidden Prehistoric Paintings'),
(3, 1, 'Exploring Caves Respectfully'),
(4, 1, 'Determining the Age of French Caves'),
(5, 2, 'discovers'),
(6, 2, 'watches'),
(7, 2, 'notices'),
(8, 2, 'buys'),
(9, 3, 'It is home to rare animals.'),
(10, 3, 'It has a large number of caves.'),
(11, 3, 'It is known for horse-racing events.'),
(12, 3, 'It has attracted many famous artists.'),
(13, 4, 'Birds'),
(14, 4, 'Bison'),
(15, 4, 'Horses'),
(16, 4, 'Wild cats'),
(17, 5, 'show'),
(18, 5, 'hunt'),
(19, 5, 'count'),
(20, 5, 'draw'),
(21, 6, 'It was completely dark inside.'),
(22, 6, 'The caves were full of wild animals.'),
(23, 6, 'Painting materials were hard to find.'),
(24, 6, 'Many painting spaces were difficult to reach.'),
(25, 7, 'walls'),
(26, 7, 'artists'),
(27, 7, 'animals'),
(28, 7, 'materials'),
(29, 8, 'temperature changes'),
(30, 8, 'air movement'),
(31, 8, 'water'),
(32, 8, 'light'),
(33, 9, 'Visitors were prohibited from entering.'),
(34, 9, 'A new lighting system was installed.'),
(35, 9, 'Another part was discovered.'),
(36, 9, 'A new entrance was created.'),
(37, 10, '10 A.M.'),
(38, 10, '11 A.M.'),
(39, 10, '1 P.M.'),
(40, 10, '2 P.M.');

-- --------------------------------------------------------

--
-- Table structure for table `passage`
--

CREATE TABLE `passage` (
  `Id` int(11) NOT NULL,
  `Story` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passage`
--

INSERT INTO `passage` (`Id`, `Story`) VALUES
(1, 'When another old cave is discovered in the south of France, it is not usually news. Rather, it is an ordinary event. Such discoveries are so frequent these days that hardly anybody pays heed to them. However, when the Lascaux cave complex was discovered in 1940, the world was amazed. Painted directly on its walls were hundreds of scenes showing how people lived thousands of years ago. The scenes show people hunting animals, such as bison or wildcats. Other images depict birds and, most noticeably, horses, which appear in more than 300 wall images,by far outnumbering all other animals. Early artists drawing these animals accomplished a monumental and difficult task. They did not limit themselves to the easily accessible walls but carried their painting materials to spaces that required climbing steep walls or crawling into narrow passages in the Lascaux complex. ');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) NOT NULL,
  `question` varchar(800) NOT NULL,
  `right_option` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `right_option`) VALUES
(1, 'Which title best summarizes the main idea of the passage?', 1),
(2, 'In line 4, the words pays heed to are closest in meaning to _______.', 5),
(3, 'Based on the passage, what is probably true about the south of France?', 9),
(4, 'According to the passage, which animals appear most often on the cave walls?', 13),
(5, 'In line 10, the word depict is closest in meaning to _______.', 17),
(6, 'Why was painting inside the Lascaux complex a difficult task?', 24),
(7, 'In line 14, the word They refers to _______.', 28),
(8, 'According to the passage, all of the following have caused damage to the paintings EXCEPT _______.', 32),
(9, 'What does the passage say happened at the Lascaux caves in 1963?', 36),
(10, 'What time will the festival begin?', 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passage`
--
ALTER TABLE `passage`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `passage`
--
ALTER TABLE `passage`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
