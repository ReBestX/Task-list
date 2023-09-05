-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2023 at 06:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_tasks`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `completed`, `created_at`, `updated_at`) VALUES
(39, 'Debug complex code in a legacy system - test', 'Dive into the labyrinth of legacy code and find those elusive bugs.', 1, '2023-09-05 11:44:33', '2023-09-05 13:24:08'),
(40, 'Optimize database queries for better performance', 'Identify and refactor slow database queries to improve application speed.', 1, '2023-09-05 11:44:45', '2023-09-05 11:51:23'),
(41, 'Attend a tech conference on machine learning', 'Stay updated with the latest trends in machine learning and AI.', 0, '2023-09-05 11:44:57', '2023-09-05 11:45:26'),
(42, 'Code review for a colleague\'s pull request', 'Provide constructive feedback on a teammate\'s code changes.', 1, '2023-09-05 11:45:07', '2023-09-05 11:51:28'),
(43, 'Fix CSS styling issues on the homepage', 'Tackle those pesky styling bugs that make the homepage look unprofessional.', 0, '2023-09-05 11:45:41', '2023-09-05 11:45:41'),
(44, 'Develop a RESTful API for a new feature', 'Design and implement a robust API to support a critical functionality.', 1, '2023-09-05 11:45:55', '2023-09-05 13:48:39'),
(45, 'Write unit tests for the authentication module', 'Ensure the security and reliability of the authentication system through comprehensive testing.', 1, '2023-09-05 11:46:08', '2023-09-05 11:51:46'),
(46, 'Create wireframes for a mobile app redesign', 'Sketch out the user interface for the upcoming mobile app makeover.', 1, '2023-09-05 11:46:20', '2023-09-05 11:51:51'),
(47, 'Write unit tests for the authentication module', 'Ensure the security and reliability of the authentication system through comprehensive testing.', 0, '2023-09-05 11:46:37', '2023-09-05 11:46:37'),
(49, 'Collaborate with the design team on UX improvements', 'Work closely with designers to enhance the user experience of the application.', 0, '2023-09-05 11:46:57', '2023-09-05 11:46:57'),
(50, 'Review security best practices for web applications', 'Stay informed about the latest security threats and mitigation strategies.', 0, '2023-09-05 11:47:13', '2023-09-05 11:47:13'),
(51, 'Conduct a code refactoring session', 'Dedicate time to clean up and improve the existing codebase.', 1, '2023-09-05 11:47:28', '2023-09-05 11:51:59'),
(52, 'Research and implement a new JavaScript framework', 'Explore the capabilities of a cutting-edge JavaScript framework and apply it to a project.', 1, '2023-09-05 11:47:40', '2023-09-05 11:54:53'),
(53, 'Participate in a hackathon for a social cause', 'Collaborate with peers to create a software solution that addresses a real-world problem.', 0, '2023-09-05 11:47:54', '2023-09-05 11:47:54'),
(54, 'Document API endpoints and usage guidelines', 'Provide clear documentation for developers using the API.', 0, '2023-09-05 11:48:07', '2023-09-05 11:48:07'),
(55, 'Prepare a tech talk on DevOps practices', 'Share insights on DevOps methodologies with the team during a knowledge-sharing session.', 1, '2023-09-05 11:48:19', '2023-09-05 11:55:00'),
(56, 'Troubleshoot server downtime issues', 'Investigate and resolve server outages to minimize downtime.', 0, '2023-09-05 11:48:31', '2023-09-05 11:48:35'),
(57, 'Code a chatbot for customer support', 'Build an AI-powered chatbot to assist customers with common inquiries.', 1, '2023-09-05 11:48:47', '2023-09-05 11:55:07'),
(58, 'Test compatibility across different web browsers', 'Ensure that the web application functions smoothly on various browsers.', 0, '2023-09-05 11:48:58', '2023-09-05 11:48:58'),
(59, 'Set up continuous integration and deployment pipelines', 'Automate the build and deployment processes to streamline development.', 0, '2023-09-05 11:49:12', '2023-09-05 11:49:12'),
(60, 'Explore containerization with Docker', 'Experiment with containerization to enhance application scalability and portability.', 0, '2023-09-05 11:49:23', '2023-09-05 11:49:23'),
(62, 'Conduct code performance profiling', 'Identify and resolve bottlenecks in code performance.', 1, '2023-09-05 11:49:33', '2023-09-05 11:55:17'),
(63, 'Mentor an intern on software development best practices', 'Share knowledge and guide an intern in their software development journey.', 0, '2023-09-05 11:50:10', '2023-09-05 11:50:10'),
(64, 'Analyze user feedback and prioritize feature requests', 'Gather user feedback and determine which features to prioritize for development.', 0, '2023-09-05 11:50:22', '2023-09-05 11:50:22'),
(65, 'Update documentation for API version 2.0', 'Revise documentation to reflect changes in the new API version.', 1, '2023-09-05 11:50:33', '2023-09-05 11:55:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
