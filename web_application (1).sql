-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 18, 2021 at 07:19 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_application`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add employee', 7, 'add_employee'),
(26, 'Can change employee', 7, 'change_employee'),
(27, 'Can delete employee', 7, 'delete_employee'),
(28, 'Can view employee', 7, 'view_employee'),
(29, 'Can add developers', 8, 'add_developers'),
(30, 'Can change developers', 8, 'change_developers'),
(31, 'Can delete developers', 8, 'delete_developers'),
(32, 'Can view developers', 8, 'view_developers'),
(33, 'Can add managers', 9, 'add_managers'),
(34, 'Can change managers', 9, 'change_managers'),
(35, 'Can delete managers', 9, 'delete_managers'),
(36, 'Can view managers', 9, 'view_managers'),
(37, 'Can add clients', 10, 'add_clients'),
(38, 'Can change clients', 10, 'change_clients'),
(39, 'Can delete clients', 10, 'delete_clients'),
(40, 'Can view clients', 10, 'view_clients'),
(41, 'Can add projects', 11, 'add_projects'),
(42, 'Can change projects', 11, 'change_projects'),
(43, 'Can delete projects', 11, 'delete_projects'),
(44, 'Can view projects', 11, 'view_projects');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$8mMhTAhKfatz$ZcDSYql1E6YpxPQKr+YgLKVPT/IbtqRhbwlyfA2JwNY=', '2019-01-18 12:01:00.622721', 1, 'admin', '', '', 'pdjani91@gmail.com', 1, 1, '2019-01-18 06:56:48.768216'),
(2, 'pbkdf2_sha256$216000$6In6QTK26OFk$eTPsbO694j//UZTt6gJ2FAucdQpxrREnFiYIKCzePHw=', NULL, 0, 'new', '', '', '', 0, 1, '2021-01-18 18:01:39.316485'),
(3, 'pbkdf2_sha256$216000$wHZs57JySerV$r9++NCOIZah+PXUAMfdYRbsFv81k9s0Zr2MK3Lws9Do=', NULL, 0, 'junaid', '', '', '', 0, 1, '2021-01-18 18:03:14.561474'),
(4, 'pbkdf2_sha256$216000$BrD024XVrHoh$22DCHpHsIRt6l4lRlgjraffOSmJ0qYAUHKuut3n3N20=', NULL, 0, 'junaid123', '', '', '', 0, 1, '2021-01-18 18:17:13.994917');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `cname` varchar(250) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `ccontact` varchar(30) NOT NULL,
  `cli_created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `cli_updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `cid`, `cname`, `cemail`, `ccontact`, `cli_created_date`, `cli_updated_date`) VALUES
(1, 1, '1sad', 'asd@gmail.com1', '23232321', '2021-01-18 02:22:00', '2021-01-18 02:25:48'),
(2, 2, 'asdasd', 'email@gmail.com', '23232323', '2021-01-18 02:22:17', '2021-01-18 02:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE `developers` (
  `id` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `dname` varchar(250) NOT NULL,
  `demail` varchar(100) NOT NULL,
  `dcontact` varchar(30) NOT NULL,
  `developer_created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `developer_updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` (`id`, `did`, `dname`, `demail`, `dcontact`, `developer_created_date`, `developer_updated_date`) VALUES
(1, 123, 'junaid', 'khan@gmail.com', '1332323232', '2021-01-17 09:44:37', '2021-01-17 09:44:37'),
(3, 332, 'Test', 'email@gmail.com', '0301898955', '2021-01-17 10:05:53', '2021-01-17 10:17:43'),
(4, 332, 'Test', 'email@gmail.com', '0301898955', '2021-01-17 10:05:53', '2021-01-17 10:17:43'),
(5, 332, 'Test', 'email@gmail.com', '0301898955', '2021-01-17 10:05:53', '2021-01-17 10:17:43'),
(10, 123, 'Test Manager', 'email@gmail.com', '5454545454', '2021-01-17 17:34:56', '2021-01-17 17:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'crud', 'clients'),
(8, 'crud', 'developers'),
(7, 'crud', 'employee'),
(9, 'crud', 'managers'),
(11, 'crud', 'projects'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-01-18 06:55:45.203127'),
(2, 'auth', '0001_initial', '2019-01-18 06:55:48.773132'),
(3, 'admin', '0001_initial', '2019-01-18 06:55:49.668134'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-01-18 06:55:49.703134'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-01-18 06:55:49.758134'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-01-18 06:55:50.473135'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-01-18 06:55:50.968135'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-01-18 06:55:51.373136'),
(9, 'auth', '0004_alter_user_username_opts', '2019-01-18 06:55:51.408136'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-01-18 06:55:51.593136'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-01-18 06:55:51.603136'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-01-18 06:55:51.618136'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-01-18 06:55:51.868137'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-01-18 06:55:52.108137'),
(15, 'sessions', '0001_initial', '2019-01-18 06:55:52.308137'),
(16, 'crud', '0001_initial', '2019-01-18 07:39:11.108005'),
(17, 'auth', '0010_alter_group_name_max_length', '2021-01-17 08:59:50.742444'),
(18, 'auth', '0011_update_proxy_permissions', '2021-01-17 08:59:50.822570'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2021-01-17 08:59:51.110717');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7781wvyxwvaq9fnhpr636qzx0s92xan1', 'ZDg2M2U4N2U4NGYyYTUwZmIzYmFhMTlhMzExZDA2MThhZmFmZWZlODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNWM3YmNhZjBjMmVmYTk4NGMxZDZmOTA4N2I1MWM1M2U3YTI1M2VmIn0=', '2019-02-01 12:01:00.638321');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `eid` varchar(10) NOT NULL,
  `ename` varchar(50) NOT NULL,
  `eemail` varchar(254) NOT NULL,
  `econtact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `eid`, `ename`, `eemail`, `econtact`) VALUES
(1, '001', 'Parth Jani', 'pdjani91@gmx.us', '9925852525'),
(3, '003', 'Dipam Jani', 'dipam@gmail.com', '7878787844'),
(4, '12', 'Name', 'email@email.com', '0301898955');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `memail` varchar(100) NOT NULL,
  `mcontact` varchar(30) NOT NULL,
  `manager_created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `manager_updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `mid`, `mname`, `memail`, `mcontact`, `manager_created_date`, `manager_updated_date`) VALUES
(1, 123, 'Test Manager 1', 'email@manager.com', '2323232323', '2021-01-17 17:35:27', '2021-01-17 17:46:44'),
(2, 7, 'New Name1', 'email@kutaksha.com', '2323232323', '2021-01-17 17:37:07', '2021-01-17 17:46:50'),
(3, 7, 'New Name', 'email@kutaksha.com', '2323232323', '2021-01-17 17:37:07', '2021-01-17 17:37:07'),
(4, 7, 'New Name', 'email@kutaksha.com', '2323232323', '2021-01-17 17:37:07', '2021-01-17 17:37:07'),
(5, 7, 'New Name', 'email@kutaksha.com', '2323232323', '2021-01-17 17:37:07', '2021-01-17 17:37:07'),
(6, 7, 'New Name', 'email@kutaksha.com', '2323232323', '2021-01-17 17:37:07', '2021-01-17 17:37:07'),
(7, 7, 'New Name', 'email@kutaksha.com', '2323232323', '2021-01-17 17:37:07', '2021-01-17 17:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `pname` varchar(250) NOT NULL,
  `client_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `developer_id` int(11) NOT NULL,
  `project_create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `project_updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `pname`, `client_id`, `manager_id`, `developer_id`, `project_create_date`, `project_updated_date`) VALUES
(1, 'sadasd', 2, 2, 3, '2021-01-18 16:35:52', '2021-01-18 16:35:52'),
(4, 'Test Project 1', 1, 1, 3, '2021-01-18 17:34:03', '2021-01-18 17:34:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `manager_id` (`manager_id`),
  ADD KEY `developer_id` (`developer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `developers`
--
ALTER TABLE `developers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_ibfk_3` FOREIGN KEY (`manager_id`) REFERENCES `managers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
