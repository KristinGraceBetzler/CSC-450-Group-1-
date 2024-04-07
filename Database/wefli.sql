-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 07, 2024 at 09:51 PM
-- Server version: 8.0.36
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wefli`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` int NOT NULL,
  `usersID` int DEFAULT NULL,
  `tripID` int DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `destinationID` int NOT NULL,
  `destination_state` varchar(100) DEFAULT NULL,
  `destination_city` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`destinationID`, `destination_state`, `destination_city`) VALUES
(1, 'Alabama', 'Huntsville'),
(2, 'Alaska', 'Fairbanks'),
(3, 'Arizona', 'Phoenix'),
(4, 'Arkansas', 'Little Rock'),
(5, 'California', 'Los Angeles'),
(6, 'California', 'San Francisco'),
(7, 'Colorado', 'Denver'),
(8, 'Connecticut', 'New Haven'),
(9, 'Delaware', 'Wilmington'),
(10, 'Florida', 'Miami'),
(11, 'Florida', 'Orlando'),
(12, 'Georgia', 'Atlanta'),
(13, 'Hawaii', 'Honolulu'),
(14, 'Hawaii', 'Maui'),
(15, 'Idaho', 'Boise'),
(16, 'Illinois', 'Chicago'),
(17, 'Indiana', 'Indianapolis'),
(18, 'Iowa', 'Des Moines'),
(19, 'Kansas', 'Kansas City'),
(20, 'Kentucky', 'Louisville'),
(21, 'Louisiana', 'New Orleans'),
(22, 'Maine', 'Portland'),
(23, 'Maryland', 'Washington D.C.'),
(24, 'Massachusetts', 'Boston'),
(25, 'Michigan', 'Detroit'),
(26, 'Minnesota', 'Minneapolis'),
(27, 'Mississippi', 'Jackson'),
(28, 'Missouri', 'St. Louis'),
(29, 'Montana', 'Bozeman'),
(30, 'Nebraska', 'Omaha'),
(31, 'Nevada', 'Las Vegas'),
(32, 'New Hampshire', 'Portsmouth'),
(33, 'New Jersey', 'Atlantic City'),
(34, 'New Mexico', 'Albuquerque'),
(35, 'New York', 'New York City'),
(36, 'North Carolina', 'Charlotte'),
(37, 'North Dakota', 'Bismarck'),
(38, 'Ohio', 'Cincinnati'),
(39, 'Oklahoma', 'Oklahoma City'),
(40, 'Oregon', 'Portland'),
(41, 'Pennsylvania', 'Philadelphia'),
(42, 'Rhode Island', 'Providence'),
(43, 'South Carolina', 'Charleston'),
(44, 'South Dakota', 'Rapid City'),
(45, 'Tennessee', 'Nashville'),
(46, 'Texas', 'Houston'),
(47, 'Utah', 'Salt Lake City'),
(48, 'Vermont', 'Burlington'),
(49, 'Virginia', 'Newport News'),
(50, 'Washington', 'Seattle'),
(51, 'West Virginia', 'Bridgeport'),
(52, 'Wisconsin', 'Madison'),
(53, 'Wyoming', 'Cheyenne');

-- --------------------------------------------------------

--
-- Table structure for table `excursions`
--

CREATE TABLE `excursions` (
  `excursionID` int NOT NULL,
  `excursion_title` varchar(100) DEFAULT NULL,
  `excursion_description` varchar(100) DEFAULT NULL,
  `type_of_excursion_tag` varchar(100) DEFAULT NULL,
  `destinationID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `tripID` int NOT NULL,
  `usersID` int DEFAULT NULL,
  `destinationID` int DEFAULT NULL,
  `likes` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip_excursions`
--

CREATE TABLE `trip_excursions` (
  `tripID` int DEFAULT NULL,
  `excursionID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersID` int NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `verification_code` int DEFAULT NULL,
  `verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersID`, `first_name`, `last_name`, `phone_number`, `email`, `address`, `user_name`, `password`, `verification_code`, `verified`) VALUES
(1, 'John', 'Smith', '123-456-7890', 'john.smith@gmail.com', '123 Main St, New York, NY', 'ohn.smith_123', 'HnG47sKp3R', 123456, 1),
(2, 'Mary', 'Johnson', '234-567-8901', 'mary.johnson@yahoo.com', '456 Elm St, Los Angeles, CA', 'mary.johnson_456', 'QpN92eRs6W', 123457, 1),
(3, 'James', 'Williams', '345-678-9012', 'james.williams@hotmail.com', '789 Oak St, Chicago, IL', 'james.williams_789', 'LxGf84Rp1Q', 123458, 1),
(6, 'Jennifer', 'Davis', '678-901-2345', 'jennifer.davis@yahoo.com', '456 Elm St, Los Angeles, CA', 'jennifer.davis_456', 'RdMw28Gc7E', 123461, 1),
(7, 'David', 'Miller', '789-012-3456', 'david.miller@hotmail.com', '789 Oak St, Chicago, IL', 'david.miller_789', 'FpKu36As4D', 123462, 1),
(8, 'Linda', 'Wilson', '890-123-4567', 'linda.wilson@outlook.com', '321 Pine St, Houston, TX', 'linda.wilson_321', 'NrYv59Px8T', 123463, 1),
(10, 'Elizabeth', 'Taylor', '012-345-6789', 'elizabeth.taylor@yahoo.com', '456 Elm St, Los Angeles, CA', 'elizabeth.taylor_456', 'QwZr74Gv2L', 123465, 1),
(12, 'Barbara', 'Thomas', '213-456-7890', 'barbara.thomas@outlook.com', '321 Pine St, Houston, TX', 'barbara.thomas_321', 'VrJs62Gh4B', 123467, 1),
(13, 'Josep', 'Jackson', '324-567-8901', 'joseph.jackson@gmail.com', '123 Main St, New York, NY', 'joseph.jackson_123', 'LpYt84Sq9R', 123468, 1),
(14, 'Jessica', 'White', '435-678-9012', 'jessica.white@yahoo.com', '456 Elm St, Los Angeles, CA', 'jessica.white_456', 'WpBt75Xz8N', 123469, 1),
(17, 'Charles', 'Thompson', '768-901-2345', 'charles.thompson@gmail.com', '123 Main St, New York, NY', 'charles.thompson_123', 'UyBz59Rq7T', 123472, 1),
(18, 'Karen', 'Garcia', '879-012-3456', 'karen.garcia@yahoo.com', '456 Elm St, Los Angeles, CA', 'karen.garcia_456', 'HjFn63Ts8A', 123473, 1),
(19, 'Daniel', 'Martinez', '980-123-4567', 'daniel.martinez@hotmail.com', '789 Oak St, Chicago, IL', 'daniel.martinez_789', 'LpGr93Vx7C', 123474, 1),
(23, 'Karen', 'Lewis', '432-567-8901', 'karen.lewis@hotmail.com', '789 Oak St, Chicago, IL', 'karen.lewis_789', 'JiDf29Xp6L', 123478, 1),
(24, 'Jose', 'Lee', '543-678-9012', 'jose.lee@outlook.com', '321 Pine St, Houston, TX', 'jose.lee_321', 'PmSg86Wq4R', 123479, 1),
(25, 'Emily', 'Walker', '654-789-0123', 'emily.walker@gmail.com', '123 Main St, New York, NY', 'emily.walker_123', 'VnQm57Zx8L', 123480, 1),
(27, 'David', 'Young', '876-901-2345', 'david.young@hotmail.com', '789 Oak St, Chicago, IL', 'david.young_789', 'PnJt64Sq9W', 123482, 1),
(28, 'Ashley', 'Allen', '987-012-3456', 'ashley.allen@outlook.com', '321 Pine St, Houston, TX', 'ashley.allen_321', 'FvYb93Qs8Z', 123483, 1),
(29, 'Jason', 'Hernandez', '098-123-4567', 'jason.hernandez@gmail.com', '123 Main St, New York, NY', 'jason.hernandez_123', 'NmBw46Gq9V', 123484, 1),
(31, 'Margaret', 'Wright', '210-345-6789', 'margaret.wright@hotmail.com', '789 Oak St, Chicago, IL', 'margaret.wright_789', 'RmBs83Qw6P', 123486, 1),
(34, 'Cynthia', 'Scott', '543-678-9012', 'cynthia.scott@yahoo.com', '456 Elm St, Los Angeles, CA', 'cynthia.scott_456', 'LbRs73Nw2G', 123489, 1),
(35, 'Kevin', 'Green', '654-789-0123', 'kevin.green@hotmail.com', '789 Oak St, Chicago, IL', 'kevin.green_789', 'NfRg37Mp9W', 123490, 1),
(36, 'Amanda', 'Adams', '765-890-1234', 'amanda.adams@outlook.com', '321 Pine St, Houston, TX', 'amanda.adams_321', 'QlBr52Gs7P', 123491, 1),
(37, 'Cynthia', 'Baker', '876-901-2345', 'cynthia.baker@gmail.com', '123 Main St, New York, NY', 'cynthia.baker_123', 'TjPq68Vs9N', 123492, 1),
(38, 'Gerald', 'Gonzalez', '987-012-3456', 'gerald.gonzalez@yahoo.com', '456 Elm St, Los Angeles, CA', 'gerald.gonzalez_456', 'HsMn84Pr6G', 123493, 1),
(39, 'Maria', 'Nelson', '098-123-4567', 'maria.nelson@hotmail.com', '789 Oak St, Chicago, IL', 'maria.nelson_789', 'DfBs73Qt6P', 123494, 1),
(40, 'Laura', 'Carter', '109-234-5678', 'laura.carter@outlook.com', '321 Pine St, Houston, TX', 'laura.carter_321', 'NtBr49Ms6V', 123495, 1),
(41, 'Joseph', 'Mitchell', '210-345-6789', 'joseph.mitchell@gmail.com', '123 Main St, New York, NY', 'joseph.mitchell_123', 'JhRq37Ts9P', 123496, 1),
(42, 'John', 'Smith', '123-456-7890', 'john.smith@gmail.com', '123 Main St, New York, NY', 'ohn.smith_123', 'HnG47sKp3R', 123456, 1),
(43, 'Mary', 'Johnson', '234-567-8901', 'mary.johnson@yahoo.com', '456 Elm St, Los Angeles, CA', 'mary.johnson_456', 'QpN92eRs6W', 123457, 1),
(44, 'James', 'Williams', '345-678-9012', 'james.williams@hotmail.com', '789 Oak St, Chicago, IL', 'james.williams_789', 'LxGf84Rp1Q', 123458, 1),
(47, 'Jennifer', 'Davis', '678-901-2345', 'jennifer.davis@yahoo.com', '456 Elm St, Los Angeles, CA', 'jennifer.davis_456', 'RdMw28Gc7E', 123461, 1),
(48, 'David', 'Miller', '789-012-3456', 'david.miller@hotmail.com', '789 Oak St, Chicago, IL', 'david.miller_789', 'FpKu36As4D', 123462, 1),
(49, 'Linda', 'Wilson', '890-123-4567', 'linda.wilson@outlook.com', '321 Pine St, Houston, TX', 'linda.wilson_321', 'NrYv59Px8T', 123463, 1),
(51, 'Elizabeth', 'Taylor', '012-345-6789', 'elizabeth.taylor@yahoo.com', '456 Elm St, Los Angeles, CA', 'elizabeth.taylor_456', 'QwZr74Gv2L', 123465, 1),
(53, 'Barbara', 'Thomas', '213-456-7890', 'barbara.thomas@outlook.com', '321 Pine St, Houston, TX', 'barbara.thomas_321', 'VrJs62Gh4B', 123467, 1),
(54, 'Josep', 'Jackson', '324-567-8901', 'joseph.jackson@gmail.com', '123 Main St, New York, NY', 'joseph.jackson_123', 'LpYt84Sq9R', 123468, 1),
(55, 'Jessica', 'White', '435-678-9012', 'jessica.white@yahoo.com', '456 Elm St, Los Angeles, CA', 'jessica.white_456', 'WpBt75Xz8N', 123469, 1),
(58, 'Charles', 'Thompson', '768-901-2345', 'charles.thompson@gmail.com', '123 Main St, New York, NY', 'charles.thompson_123', 'UyBz59Rq7T', 123472, 1),
(59, 'Karen', 'Garcia', '879-012-3456', 'karen.garcia@yahoo.com', '456 Elm St, Los Angeles, CA', 'karen.garcia_456', 'HjFn63Ts8A', 123473, 1),
(60, 'Daniel', 'Martinez', '980-123-4567', 'daniel.martinez@hotmail.com', '789 Oak St, Chicago, IL', 'daniel.martinez_789', 'LpGr93Vx7C', 123474, 1),
(64, 'Karen', 'Lewis', '432-567-8901', 'karen.lewis@hotmail.com', '789 Oak St, Chicago, IL', 'karen.lewis_789', 'JiDf29Xp6L', 123478, 1),
(65, 'Jose', 'Lee', '543-678-9012', 'jose.lee@outlook.com', '321 Pine St, Houston, TX', 'jose.lee_321', 'PmSg86Wq4R', 123479, 1),
(66, 'Emily', 'Walker', '654-789-0123', 'emily.walker@gmail.com', '123 Main St, New York, NY', 'emily.walker_123', 'VnQm57Zx8L', 123480, 1),
(68, 'David', 'Young', '876-901-2345', 'david.young@hotmail.com', '789 Oak St, Chicago, IL', 'david.young_789', 'PnJt64Sq9W', 123482, 1),
(69, 'Ashley', 'Allen', '987-012-3456', 'ashley.allen@outlook.com', '321 Pine St, Houston, TX', 'ashley.allen_321', 'FvYb93Qs8Z', 123483, 1),
(70, 'Jason', 'Hernandez', '098-123-4567', 'jason.hernandez@gmail.com', '123 Main St, New York, NY', 'jason.hernandez_123', 'NmBw46Gq9V', 123484, 1),
(72, 'Margaret', 'Wright', '210-345-6789', 'margaret.wright@hotmail.com', '789 Oak St, Chicago, IL', 'margaret.wright_789', 'RmBs83Qw6P', 123486, 1),
(75, 'Cynthia', 'Scott', '543-678-9012', 'cynthia.scott@yahoo.com', '456 Elm St, Los Angeles, CA', 'cynthia.scott_456', 'LbRs73Nw2G', 123489, 1),
(76, 'Kevin', 'Green', '654-789-0123', 'kevin.green@hotmail.com', '789 Oak St, Chicago, IL', 'kevin.green_789', 'NfRg37Mp9W', 123490, 1),
(77, 'Amanda', 'Adams', '765-890-1234', 'amanda.adams@outlook.com', '321 Pine St, Houston, TX', 'amanda.adams_321', 'QlBr52Gs7P', 123491, 1),
(78, 'Cynthia', 'Baker', '876-901-2345', 'cynthia.baker@gmail.com', '123 Main St, New York, NY', 'cynthia.baker_123', 'TjPq68Vs9N', 123492, 1),
(79, 'Gerald', 'Gonzalez', '987-012-3456', 'gerald.gonzalez@yahoo.com', '456 Elm St, Los Angeles, CA', 'gerald.gonzalez_456', 'HsMn84Pr6G', 123493, 1),
(80, 'Maria', 'Nelson', '098-123-4567', 'maria.nelson@hotmail.com', '789 Oak St, Chicago, IL', 'maria.nelson_789', 'DfBs73Qt6P', 123494, 1),
(81, 'Laura', 'Carter', '109-234-5678', 'laura.carter@outlook.com', '321 Pine St, Houston, TX', 'laura.carter_321', 'NtBr49Ms6V', 123495, 1),
(82, 'Joseph', 'Mitchell', '210-345-6789', 'joseph.mitchell@gmail.com', '123 Main St, New York, NY', 'joseph.mitchell_123', 'JhRq37Ts9P', 123496, 1),
(83, 'John', 'Smith', '123-456-7890', 'john.smith@gmail.com', '123 Main St, New York, NY', 'ohn.smith_123', 'HnG47sKp3R', 123456, 1),
(84, 'Mary', 'Johnson', '234-567-8901', 'mary.johnson@yahoo.com', '456 Elm St, Los Angeles, CA', 'mary.johnson_456', 'QpN92eRs6W', 123457, 1),
(85, 'James', 'Williams', '345-678-9012', 'james.williams@hotmail.com', '789 Oak St, Chicago, IL', 'james.williams_789', 'LxGf84Rp1Q', 123458, 1),
(86, 'Patricia', 'Jones', '456-789-0123', 'patricia.jones@outlook.com', '321 Pine St, Houston, TX', 'patricia.jones_321', 'VwPq65Tu9Z', 123459, 1),
(87, 'Michael', 'Brown', '567-890-1234', 'michael.brown@gmail.com', '123 Main St, New York, NY', 'michael.brown_123', 'KsNt73Wx5A', 123460, 1),
(88, 'Jennifer', 'Davis', '678-901-2345', 'jennifer.davis@yahoo.com', '456 Elm St, Los Angeles, CA', 'jennifer.davis_456', 'RdMw28Gc7E', 123461, 1),
(89, 'David', 'Miller', '789-012-3456', 'david.miller@hotmail.com', '789 Oak St, Chicago, IL', 'david.miller_789', 'FpKu36As4D', 123462, 1),
(90, 'Linda', 'Wilson', '890-123-4567', 'linda.wilson@outlook.com', '321 Pine St, Houston, TX', 'linda.wilson_321', 'NrYv59Px8T', 123463, 1),
(91, 'William', 'Moore', '901-234-5678', 'william.moore@gmail.com', '123 Main St, New York, NY', 'william.moore_123', 'HgBs82Mn6P', 123464, 1),
(92, 'Elizabeth', 'Taylor', '012-345-6789', 'elizabeth.taylor@yahoo.com', '456 Elm St, Los Angeles, CA', 'elizabeth.taylor_456', 'QwZr74Gv2L', 123465, 1),
(93, 'Richard', 'Anderson', '102-345-6789', 'richard.anderson@hotmail.com', '789 Oak St, Chicago, IL', 'richard.anderson_789', 'TnLm93Vx1C', 123466, 1),
(94, 'Barbara', 'Thomas', '213-456-7890', 'barbara.thomas@outlook.com', '321 Pine St, Houston, TX', 'barbara.thomas_321', 'VrJs62Gh4B', 123467, 1),
(95, 'Josep', 'Jackson', '324-567-8901', 'joseph.jackson@gmail.com', '123 Main St, New York, NY', 'joseph.jackson_123', 'LpYt84Sq9R', 123468, 1),
(96, 'Jessica', 'White', '435-678-9012', 'jessica.white@yahoo.com', '456 Elm St, Los Angeles, CA', 'jessica.white_456', 'WpBt75Xz8N', 123469, 1),
(97, 'Thomas', 'Harris', '546-789-0123', 'thomas.harris@hotmail.com', '789 Oak St, Chicago, IL', 'thomas.harris_789', 'FgQw86Hr5Z', 123470, 1),
(98, 'Sarah', 'Martin', '657-890-1234', 'sarah.martin@outlook.com', '321 Pine St, Houston, TX', 'sarah.martin_321', 'YmRs47Nx3L', 123471, 1),
(99, 'Charles', 'Thompson', '768-901-2345', 'charles.thompson@gmail.com', '123 Main St, New York, NY', 'charles.thompson_123', 'UyBz59Rq7T', 123472, 1),
(100, 'Karen', 'Garcia', '879-012-3456', 'karen.garcia@yahoo.com', '456 Elm St, Los Angeles, CA', 'karen.garcia_456', 'HjFn63Ts8A', 123473, 1),
(101, 'Daniel', 'Martinez', '980-123-4567', 'daniel.martinez@hotmail.com', '789 Oak St, Chicago, IL', 'daniel.martinez_789', 'LpGr93Vx7C', 123474, 1),
(102, 'Melissa', 'Robinson', '091-234-5678', 'melissa.robinson@outlook.com', '321 Pine St, Houston, TX', 'melissa.robinson_321', 'QwKt52Gv3P', 123475, 1),
(103, 'Nancy', 'Clark', '210-345-6789', 'nancy.clark@gmail.com', '123 Main St, New York, NY', 'nancy.clark_123', 'FgTs86Zx5Q', 123476, 1),
(104, 'Paul', 'Rodriguez', '321-456-7890', 'paul.rodriguez@yahoo.com', '456 Elm St, Los Angeles, CA', 'paul.rodriguez_456', 'HrUs74Nw9V', 123477, 1),
(105, 'Karen', 'Lewis', '432-567-8901', 'karen.lewis@hotmail.com', '789 Oak St, Chicago, IL', 'karen.lewis_789', 'JiDf29Xp6L', 123478, 1),
(106, 'Jose', 'Lee', '543-678-9012', 'jose.lee@outlook.com', '321 Pine St, Houston, TX', 'jose.lee_321', 'PmSg86Wq4R', 123479, 1),
(107, 'Emily', 'Walker', '654-789-0123', 'emily.walker@gmail.com', '123 Main St, New York, NY', 'emily.walker_123', 'VnQm57Zx8L', 123480, 1),
(108, 'Michelle', 'Hall', '765-890-1234', 'michelle.hall@yahoo.com', '456 Elm St, Los Angeles, CA', 'michelle.hall_456', 'HtKj73Nr6S', 123481, 1),
(109, 'David', 'Young', '876-901-2345', 'david.young@hotmail.com', '789 Oak St, Chicago, IL', 'david.young_789', 'PnJt64Sq9W', 123482, 1),
(110, 'Ashley', 'Allen', '987-012-3456', 'ashley.allen@outlook.com', '321 Pine St, Houston, TX', 'ashley.allen_321', 'FvYb93Qs8Z', 123483, 1),
(111, 'Jason', 'Hernandez', '098-123-4567', 'jason.hernandez@gmail.com', '123 Main St, New York, NY', 'jason.hernandez_123', 'NmBw46Gq9V', 123484, 1),
(112, 'Ruth', 'King', '109-234-5678', 'ruth.king@yahoo.com', '456 Elm St, Los Angeles, CA', 'ruth.king_456', 'LjFg95Ms7R', 123485, 1),
(113, 'Margaret', 'Wright', '210-345-6789', 'margaret.wright@hotmail.com', '789 Oak St, Chicago, IL', 'margaret.wright_789', 'RmBs83Qw6P', 123486, 1),
(114, 'Ryan', 'Lopez', '321-456-7890', 'ryan.lopez@outlook.com', '321 Pine St, Houston, TX', 'ryan.lopez_321', 'NkTs64Zx8H', 123487, 1),
(115, 'Shirley', 'Hill', '432-567-8901', 'shirley.hill@gmail.com', '123 Main St, New York, NY', 'shirley.hill_123', 'JgPr94Wq5L', 123488, 1),
(116, 'Cynthia', 'Scott', '543-678-9012', 'cynthia.scott@yahoo.com', '456 Elm St, Los Angeles, CA', 'cynthia.scott_456', 'LbRs73Nw2G', 123489, 1),
(117, 'Kevin', 'Green', '654-789-0123', 'kevin.green@hotmail.com', '789 Oak St, Chicago, IL', 'kevin.green_789', 'NfRg37Mp9W', 123490, 1),
(118, 'Amanda', 'Adams', '765-890-1234', 'amanda.adams@outlook.com', '321 Pine St, Houston, TX', 'amanda.adams_321', 'QlBr52Gs7P', 123491, 1),
(119, 'Cynthia', 'Baker', '876-901-2345', 'cynthia.baker@gmail.com', '123 Main St, New York, NY', 'cynthia.baker_123', 'TjPq68Vs9N', 123492, 1),
(120, 'Gerald', 'Gonzalez', '987-012-3456', 'gerald.gonzalez@yahoo.com', '456 Elm St, Los Angeles, CA', 'gerald.gonzalez_456', 'HsMn84Pr6G', 123493, 1),
(121, 'Maria', 'Nelson', '098-123-4567', 'maria.nelson@hotmail.com', '789 Oak St, Chicago, IL', 'maria.nelson_789', 'DfBs73Qt6P', 123494, 1),
(122, 'Laura', 'Carter', '109-234-5678', 'laura.carter@outlook.com', '321 Pine St, Houston, TX', 'laura.carter_321', 'NtBr49Ms6V', 123495, 1),
(123, 'Joseph', 'Mitchell', '210-345-6789', 'joseph.mitchell@gmail.com', '123 Main St, New York, NY', 'joseph.mitchell_123', 'JhRq37Ts9P', 123496, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `usersID` (`usersID`),
  ADD KEY `tripID` (`tripID`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`destinationID`);

--
-- Indexes for table `excursions`
--
ALTER TABLE `excursions`
  ADD PRIMARY KEY (`excursionID`),
  ADD KEY `destinationID` (`destinationID`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`tripID`),
  ADD KEY `usersID` (`usersID`),
  ADD KEY `destinationID` (`destinationID`);

--
-- Indexes for table `trip_excursions`
--
ALTER TABLE `trip_excursions`
  ADD KEY `tripID` (`tripID`),
  ADD KEY `excursionID` (`excursionID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `destinationID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `excursions`
--
ALTER TABLE `excursions`
  MODIFY `excursionID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `tripID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`tripID`) REFERENCES `trip` (`tripID`);

--
-- Constraints for table `excursions`
--
ALTER TABLE `excursions`
  ADD CONSTRAINT `excursions_ibfk_1` FOREIGN KEY (`destinationID`) REFERENCES `destinations` (`destinationID`);

--
-- Constraints for table `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `trip_ibfk_1` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`),
  ADD CONSTRAINT `trip_ibfk_2` FOREIGN KEY (`destinationID`) REFERENCES `destinations` (`destinationID`);

--
-- Constraints for table `trip_excursions`
--
ALTER TABLE `trip_excursions`
  ADD CONSTRAINT `trip_excursions_ibfk_1` FOREIGN KEY (`tripID`) REFERENCES `trip` (`tripID`),
  ADD CONSTRAINT `trip_excursions_ibfk_2` FOREIGN KEY (`excursionID`) REFERENCES `excursions` (`excursionID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
