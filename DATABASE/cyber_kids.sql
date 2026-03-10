-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2023 at 03:02 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cyber_kids`
--
CREATE DATABASE IF NOT EXISTS `cyber_kids` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cyber_kids`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add add game model', 7, 'add_addgamemodel'),
(26, 'Can change add game model', 7, 'change_addgamemodel'),
(27, 'Can delete add game model', 7, 'delete_addgamemodel'),
(28, 'Can view add game model', 7, 'view_addgamemodel'),
(29, 'Can add user model', 8, 'add_usermodel'),
(30, 'Can change user model', 8, 'change_usermodel'),
(31, 'Can delete user model', 8, 'delete_usermodel'),
(32, 'Can view user model', 8, 'view_usermodel'),
(33, 'Can add feedback model', 9, 'add_feedbackmodel'),
(34, 'Can change feedback model', 9, 'change_feedbackmodel'),
(35, 'Can delete feedback model', 9, 'delete_feedbackmodel'),
(36, 'Can view feedback model', 9, 'view_feedbackmodel'),
(37, 'Can add add questions', 10, 'add_addquestions'),
(38, 'Can change add questions', 10, 'change_addquestions'),
(39, 'Can delete add questions', 10, 'delete_addquestions'),
(40, 'Can view add questions', 10, 'view_addquestions'),
(41, 'Can add answers', 11, 'add_answers'),
(42, 'Can change answers', 11, 'change_answers'),
(43, 'Can delete answers', 11, 'delete_answers'),
(44, 'Can view answers', 11, 'view_answers'),
(45, 'Can add analysis', 12, 'add_analysis'),
(46, 'Can change analysis', 12, 'change_analysis'),
(47, 'Can delete analysis', 12, 'delete_analysis'),
(48, 'Can view analysis', 12, 'view_analysis');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'adminapp', 'addgamemodel'),
(8, 'userapp', 'usermodel'),
(9, 'userapp', 'feedbackmodel'),
(10, 'adminapp', 'addquestions'),
(11, 'adminapp', 'answers'),
(12, 'userapp', 'analysis');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-27 11:11:59.029950'),
(2, 'auth', '0001_initial', '2022-12-27 11:11:59.659218'),
(3, 'admin', '0001_initial', '2022-12-27 11:11:59.790964'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-27 11:11:59.806954'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-27 11:11:59.821918'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-27 11:11:59.917664'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-27 11:11:59.957292'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-27 11:11:59.995194'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-27 11:12:00.014235'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-27 11:12:00.056998'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-27 11:12:00.059987'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-27 11:12:00.073953'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-27 11:12:00.108889'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-27 11:12:00.145761'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-27 11:12:00.183256'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-27 11:12:00.198660'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-27 11:12:00.237560'),
(18, 'sessions', '0001_initial', '2022-12-27 11:12:00.286769'),
(19, 'userapp', '0001_initial', '2022-12-27 11:16:06.421468'),
(20, 'adminapp', '0001_initial', '2022-12-27 11:18:01.025320'),
(21, 'userapp', '0002_usermodel_user_prifile_alter_usermodel_status', '2022-12-27 11:28:38.661674'),
(22, 'adminapp', '0002_addquestions', '2022-12-28 06:22:03.478790'),
(23, 'adminapp', '0003_addquestions_option1_addquestions_option2_and_more', '2022-12-28 06:55:37.972615'),
(24, 'adminapp', '0004_addquestions_answer', '2022-12-28 12:33:58.822003'),
(25, 'adminapp', '0005_answers', '2022-12-29 10:31:14.611574'),
(26, 'adminapp', '0006_addquestions_game', '2022-12-29 11:14:05.588052'),
(27, 'userapp', '0003_analysis', '2022-12-30 08:55:16.157626'),
(28, 'userapp', '0004_alter_analysis_table', '2022-12-30 08:55:16.168947'),
(29, 'adminapp', '0007_addgamemodel_game_title', '2022-12-31 08:07:33.619202');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ihv3839hdbu4wv5i11pfmrw2pykltlfp', 'eyJ1c2VyX2lkIjoxfQ:1pAOYv:SL9M-crrNKzE1_Df683NEutgMqC0oRlFFqfGSCTWiuo', '2023-01-11 05:01:09.686128'),
('qpbmdj2s0uklmffe1jv69zb6s0qc3qp9', 'eyJ1c2VyX2lkIjoxfQ:1pCEbi:KgVe-lwXYml8HE2v4UyvUD6f521BBDJqKW1F6rLHTPU', '2023-01-16 06:47:38.332740'),
('0sxs823prrx76h52i2zoz8tk0k8nowco', 'eyJ1c2VyX2lkIjozfQ:1qsJVI:Jsk6l_B_by-qCWl_ZnDFOOYsD3GfGg-A2cIAATtd7KQ', '2023-10-30 09:03:12.760021'),
('vcoditpko3dng1zt1wl7z1zw3bpy2ztl', 'eyJ1c2VyX2lkIjo0fQ:1qwjiI:9g3GVIe2eG9Ee5CQNOwUKS6elMN6iTuMqmwIZZlQRDQ', '2023-11-11 13:50:54.268443');

-- --------------------------------------------------------

--
-- Table structure for table `game_details`
--

DROP TABLE IF EXISTS `game_details`;
CREATE TABLE IF NOT EXISTS `game_details` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_type` varchar(500) NOT NULL,
  `game_platform` varchar(500) NOT NULL,
  `game_image` varchar(100) DEFAULT NULL,
  `game_url` varchar(500) NOT NULL,
  `game_title` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_details`
--

INSERT INTO `game_details` (`game_id`, `game_type`, `game_platform`, `game_image`, `game_url`, `game_title`) VALUES
(1, 'Adventure', 'Android OS', 'images/subway_surfers.png', 'https://poki.com/en/g/subway-surfers', 'Subway Surf Princes Running'),
(2, 'Jeep Driving ', 'Android', 'images/Offroad_Jeep_Driving__Parking.jpg', 'https://poki.com/en/g/demolition-derby-crash-racing', 'Offroad Jeep Driving & Parking'),
(3, 'Action', 'Windows', 'images/Garena_Free_Fire.jpg', 'https://poki.com/en/g/battle-forces', 'Garena Free Fire Max'),
(4, 'Adventure', 'Android OS', 'images/moto_b.jpeg', 'https://poki.com/en/g/moto-x3m', 'Hill climb'),
(5, 'Chalange', 'Android OS', 'images/bike_riding.jpeg', 'https://poki.com/en/g/3d-moto-simulator-2', 'Racing'),
(6, 'Action', 'Windows', 'images/parking_fury.jpg', 'https://poki.com/en/g/parking-fury-3d', 'Parking Fury'),
(7, 'Action', 'Windows', 'images/combat-online.jpg', 'https://poki.com/en/g/combat-online', 'Combact '),
(8, 'Action', 'Android OS', 'images/temple_run_jungle.jpg', 'https://poki.com/en/g/temple-run-2-jungle-fall', 'Temple run -2 jungle'),
(9, 'War', 'Windows', 'images/chess.jpg', 'https://poki.com/en/g/chess-grandmaster', 'Chess'),
(10, 'Running', 'Windows', 'images/running.jpg', 'https://poki.com/en/g/athletics-hero', 'Athletics'),
(11, 'Adventure', 'Android OS', 'images/Temple_Run_2Frozen_Shadows.jpg', 'https://poki.com/en/g/temple-run-2-frozen-shadows', 'Temple Run 2: Frozen Shadows'),
(12, 'Adventure', 'Windows OS', 'images/python_projects.jpg', 'https://www.sesamestreet.org/games?id=27033', 'Go Green');

-- --------------------------------------------------------

--
-- Table structure for table `game_questions`
--

DROP TABLE IF EXISTS `game_questions`;
CREATE TABLE IF NOT EXISTS `game_questions` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `questions` varchar(1000) DEFAULT NULL,
  `option1` varchar(100) DEFAULT NULL,
  `option2` varchar(100) DEFAULT NULL,
  `option3` varchar(100) DEFAULT NULL,
  `option4` varchar(100) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`q_id`),
  KEY `Game_questions_game_id_12510ccc` (`game_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_questions`
--

INSERT INTO `game_questions` (`q_id`, `questions`, `option1`, `option2`, `option3`, `option4`, `answer`, `game_id`) VALUES
(1, '  Which one of the following can protect a computer from the risk of unwanted emails?', 'Anti-spam software.', 'Anti-virus software.', ' Anti-spyware software.', ' PC diagnostic software.', 'Anti-spam software.', NULL),
(2, 'Which one of the following describes why firewalls are used?', ' Preventing unauthorized access', 'vijay', 'None', 'None', ' Preventing unauthorized access', NULL),
(26, '  Which one of the following would result in the loss of contact details if it were stolen?', 'Printer', 'Mobile Phone', ' Modem', 'MP3', 'Printer', NULL),
(3, 'What is personal information?', 'Your shoe', 'Your address', 'The pizza restaurant phone number', 'None', 'Your address', NULL),
(4, 'Which of the following is an online threat?', 'Identity theft', 'Phishing', 'Surfing', 'Both A&B', 'Both A&B', NULL),
(5, 'What do you do if someone is bullying you online?', 'Ask them to please stop', 'Say you will tell on them', 'Stop, block, tell an adult', 'all', 'Stop, block, tell an adult', NULL),
(7, 'Who do you tell if you see something harmful online?', 'Your parents', 'Your teachers', 'A trusted adult', 'All the above', 'All the above', NULL),
(8, 'You can totally share your password with your best friend, you trust them!', 'True', 'False', '', '', 'False', NULL),
(9, 'Which of the following is an online threat?', 'Identity theft', 'Phishing', 'Surfing', 'Both A&B', 'Both A&B', NULL),
(10, 'Whatever you post online will stay there forever even if you delete it.', 'False', 'True', '', '', 'True', NULL),
(11, 'Which of these protocols reside in Layer 3 - Network in the OSI Model?', 'TPC and IPSeC', 'IP and IPSeC ', 'IP and TCP', '', 'IP and IPSeC ', NULL),
(12, 'Authentication is _________.', 'Insertion', 'Modification', 'To assure identity of user on a remote system', ' Integration', 'To assure identity of user on a remote system', NULL),
(13, 'What is Cyber Security?', 'Cyber Security provides security against malware', 'Cyber Security provides security against cyber-terrorists', 'Cyber Security protects a system from cyber attacks', ' All of the mentioned', ' All of the mentioned', NULL),
(14, 'Who is the father of computer security?', 'August Kerckhoffs', 'Charles', 'Bob Thomas', 'Robert', 'August Kerckhoffs', NULL),
(15, 'Which of the following is a type of cyber security?', 'Application Security', 'Network Security', 'Cloud Security', 'All of the above', 'All of the above', NULL),
(16, ' Which of the following is not a cybercrime?', 'AES', ' Malware', ' Man in the Middle', ' Denial of Service', 'AES', NULL),
(17, 'Which of the following is a type of cyber attack?', 'Phishing', ' SQL Injections', 'Password Attack', 'All of the above', 'All of the above', NULL),
(18, 'Which of the following is not an advantage of cyber security?', 'Makes the system slower', 'Minimizes computer freezing and crashes', 'Gives privacy to users', 'Protects system against viruses', 'Makes the system slower', NULL),
(19, 'Which of the following act violates cyber security?', 'Exploit', ' Attack', 'Threat', 'Vulnerability', ' Attack', NULL),
(20, 'Which of the following is not a type of peer-to-peer cyber-crime?', 'MiTM', 'Injecting Trojans to a target victim', 'Credit card details leak in the deep web', ' Phishing', 'Credit card details leak in the deep web', NULL),
(21, 'Where did the term “hacker” originate?', 'MIT', 'New York University', 'Harvard University', 'Bell’s Lab', 'MIT', NULL),
(22, 'What is the existence of weakness in a system or network is known as?', 'Attack', ' Exploit', 'Vulnerability', 'Threat', 'Vulnerability', NULL),
(23, '  Which of the remote is a secure remote access protocol?', '  SSH', 'FTP', 'Telnet', ' SMTP', '  SSH', NULL),
(24, 'Which of the following describes monitoring software installed without your consent?', 'Malware', '  Adware', 'Spyware', 'Ransomware', 'Malware', NULL),
(25, 'Which of the following is the security standard for WPA2?', '802.11ad', '802.11i', '802.11n', ' 802.11a', ' 802.11a', NULL),
(28, 'What are two types of network layer firewalls?', 'Stateful and stateless', '  Dynamic and static', 'Anomaly and signature', 'Mandatory and discretionary', 'Anomaly and signature', NULL),
(29, 'Can I share OTP with my Friend without any doubt', 'Yes', 'No', 'None', 'All of the Above', 'No', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers`
--

DROP TABLE IF EXISTS `quiz_answers`;
CREATE TABLE IF NOT EXISTS `quiz_answers` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(1000) DEFAULT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `Quiz_Answers_question_id_58715f55` (`question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_answers`
--

INSERT INTO `quiz_answers` (`answer_id`, `answer`, `question_id`) VALUES
(1, '  SSH', 23),
(2, 'Malware', 24),
(3, ' 802.11a', 25),
(4, 'Printer', 26),
(6, 'Anomaly and signature', 28),
(7, 'No', 29);

-- --------------------------------------------------------

--
-- Table structure for table `result_analysis`
--

DROP TABLE IF EXISTS `result_analysis`;
CREATE TABLE IF NOT EXISTS `result_analysis` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_analysis`
--

INSERT INTO `result_analysis` (`id`, `correct`, `wrong`) VALUES
(1, 27, 23);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_join_date` date NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_age` varchar(10) NOT NULL,
  `user_email` varchar(254) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `user_prifile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_join_date`, `user_name`, `user_age`, `user_email`, `user_password`, `status`, `user_prifile`) VALUES
(2, '2022-12-31', 'Kiran', '17', 'kiran@gmail.com', '12345', 'Pending', ''),
(3, '2022-12-31', 'Guru', '18', 'guru@gmail.com', '12345', 'Pending', ''),
(4, '2023-10-28', 'fazal', '12', 'fazalsirmail@gmail.com', 'fazal', 'Pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

DROP TABLE IF EXISTS `user_feedback`;
CREATE TABLE IF NOT EXISTS `user_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` longtext NOT NULL,
  `date` date DEFAULT NULL,
  `sentiment` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `user_feedback_user_id_5b987fa1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`feedback_id`, `feedback`, `date`, `sentiment`, `user_id`) VALUES
(2, 'Not Bad it games have to update', '2022-12-31', 'Positive', 2),
(3, 'some games are not good', '2022-12-31', 'Negitive', 2),
(4, 'Nice games to play', '2022-12-31', 'Very Positive', 3),
(5, 'some games are not good ', '2022-12-31', 'Negitive', 3),
(8, 'its a nice idea excellent job.', '2023-10-28', 'Very Positive', 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
