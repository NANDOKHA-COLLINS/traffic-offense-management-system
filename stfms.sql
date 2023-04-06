-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2023 at 10:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stfms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(20) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_email`, `admin_password`, `admin_name`, `code`, `status`) VALUES
(1, 'collins@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Traffic Police Admin', 206553, 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `license_id` varchar(255) NOT NULL,
  `driver_email` varchar(255) NOT NULL,
  `driver_password` varchar(255) NOT NULL,
  `driver_name` varchar(255) NOT NULL,
  `home_address` varchar(255) NOT NULL,
  `license_issue_date` date NOT NULL,
  `license_expire_date` date NOT NULL,
  `class_of_vehicle` varchar(255) NOT NULL,
  `registered_at` date NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`license_id`, `driver_email`, `driver_password`, `driver_name`, `home_address`, `license_issue_date`, `license_expire_date`, `class_of_vehicle`, `registered_at`, `code`, `status`) VALUES
('B4500800', 'stfmssample@gmail.com', '392a4ddea2df34a918560a6abff9c264', 'P.A.Nirmal Bandara', '512,A Peradeniya Road, Kandy', '2018-10-18', '2026-10-16', 'A1,A,B1,B,G1', '2021-08-01', 0, 'verified'),
('B4500950', 'B4500950@gmail.com', '392a4ddea2df34a918560a6abff9c264', 'M.P.Liyanage', '124/3, Passara Road, Badulla', '2017-10-24', '2026-11-16', 'A1,A,B1,B,G1', '2021-06-18', 0, 'verified'),
('B450100', 'mike12@gmail.com', 'c3b54b2cf592cb2913c52ee03027d895', 'Michael Njoroge', 'C/145,3 Passara Road, Badulla ', '2017-10-24', '2025-07-30', 'A1,A,B1,B,G1', '0000-00-00', 0, 'verified'),
('B4502650', 'B4502650@gmail.com', '392a4ddea2df34a918560a6abff9c264', 'Anuradha Subasinghe', '125, Kandy Road, Peradeniya', '2019-06-11', '2027-06-22', 'A1,A,B1,B,G1', '2021-08-01', 0, 'verified'),
('B4502660', 'B4502660@gmail.com', '392a4ddea2df34a918560a6abff9c264', 'Charitha Supun Amaresinghe', '20A, Bandaranayaka Mawatha, Colombo 05.', '2019-05-08', '2025-08-28', 'A1,A,B1,B,G1', '2021-08-01', 0, 'verified'),
('B5500800', 'michaelnjoroge2000@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Michael Njoroge', 'Thika', '2023-02-01', '2026-06-16', 'A1', '2023-02-02', 552569, 'verified'),
('B6500800', 'mikethecoder12@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Steve Kariuki', '1040 Nairobi', '2023-02-06', '2025-03-29', 'A1,A2,A3', '2023-02-06', 0, 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `fine_tickets`
--

CREATE TABLE `fine_tickets` (
  `fine_id` varchar(255) NOT NULL,
  `section_of_act` varchar(255) NOT NULL,
  `provision` varchar(255) NOT NULL,
  `fine_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fine_tickets`
--

INSERT INTO `fine_tickets` (`fine_id`, `section_of_act`, `provision`, `fine_amount`) VALUES
('100', 'Section 32', 'Revenue License to be displayed on motor vehicles and produced when required.', '1500.00'),
('102', 'Section 128B', 'Driving a special purpose vehicle without obtaining a licence.', '1000.00'),
('103', 'Section 128A', 'Failure to obtain authorization to drive a vehicle loaded with chemicals, hazardous waste, &amp;e.', '2000.00'),
('104', 'section 130', 'Failure to have a Licence to drive a specific class of vehiceles.', '1000.00'),
('105', 'Section 135', 'Failure to carry a Driving Licence when driving.', '2000.00'),
('106', 'Section 139A', 'Driving a special purpose vehicle without obtaining a licence', '2000.00'),
('107', 'Section 148', 'Failure to comply with road rules.', '2000.00'),
('108', 'Section 140 and 141', 'Not compliance with Speed limits provisions.', '3000.00'),
('109', 'Section 155A', 'Excessive emission of smoke &amp;c.', '1000.00'),
('110', 'Section 32C', 'Driving under the influence of drugs or alcohol', '1500.00'),
('111', 'Section 132B', 'Reckless or careless driving', '2500.00'),
('112', 'Section 322C', 'Exceeding the speed limit', '3200.00'),
('113', 'Section 12B', 'Failing to stop at a stop sign or red light', '1200.00'),
('114', 'Section 42', 'Failing to use seat belts or child restraints', '1300.00'),
('115', 'Section 2C', 'Using a mobile phone while driving', '3300.00'),
('80', 'Section 37E', 'Disrespecting road markings, signs and traffic signals', '3500.00'),
('81', 'Section 27E', 'Failing to give way to emergency vehicles', '3000.00'),
('82', 'Section 25E', 'Ignoring road construction or detour signs', '4000.00'),
('83', 'Section 25D', 'Using the road for unauthorized activities like hawking or illegal parking', '4500.00'),
('84', 'Section 5G', 'Failing to maintain brakes or other vehicle equipment', '4500.00'),
('85', 'Section 9A', 'Racing or participating in speed contests on the road', '3500.00'),
('86', 'Section 49A', 'Carrying excess passengers or cargo that obstructs the view of the driver', '3560.00'),
('87', 'Section 42C', 'Driving a commercial vehicle without proper certification or authorization', '3550.00'),
('88', 'Section 22C', 'Disobeying traffic officers or police', '2550.00'),
('89', 'Section 26D', 'Driving without lights at night', '2350.00'),
('90', 'Section 9B', 'Towing another vehicle without proper equipment or without a licensed driver', '1560.00'),
('91', 'Section 33AB', 'Failing to obey traffic signs and signals', '1750.00'),
('92', 'Section 29B', 'Improper parking', '1350.00'),
('93', 'Section 19A', 'Failing to signal when changing lanes or turning', '1400.00'),
('94', 'Section 19B', 'Running a red light', '1250.00'),
('95', 'Section 11C', 'Overtaking on a solid white line', '2000.00'),
('96', 'Section 31C', 'Failing to give way to pedestrians', '1000.00'),
('97', 'Section 30C', 'Overloading a vehicle', '1800.00'),
('98', 'Section 3D', 'Driving an unregistered or uninsured vehicle', '1600.00'),
('99', 'Section 13D', 'Driving without a valid drivers license', '2200.00');

-- --------------------------------------------------------

--
-- Table structure for table `issued_fines`
--

CREATE TABLE `issued_fines` (
  `ref_no` int(255) NOT NULL,
  `police_id` varchar(255) NOT NULL,
  `license_id` varchar(255) NOT NULL,
  `vehicle_no` varchar(255) NOT NULL,
  `class_of_vehicle` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `issued_date` date NOT NULL,
  `issued_time` time NOT NULL,
  `expire_date` date NOT NULL,
  `court` varchar(255) NOT NULL,
  `court_date` date NOT NULL,
  `provisions` varchar(255) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `paid_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issued_fines`
--

INSERT INTO `issued_fines` (`ref_no`, `police_id`, `license_id`, `vehicle_no`, `class_of_vehicle`, `place`, `issued_date`, `issued_time`, `expire_date`, `court`, `court_date`, `provisions`, `total_amount`, `status`, `paid_date`) VALUES
(10020, 'P55555', 'B4500800', 'AAE100', 'A1,A,B1,B,G1', 'Mawanella', '2021-08-01', '02:41:05', '2021-08-22', 'Mawanella', '2021-08-22', '104', '1000.00', 'pending', '2021-08-01'),
(10021, 'P55555', 'B4500800', 'AAE100', 'A1,A,B1,B,G1', 'Kandy', '2021-08-01', '02:41:21', '2021-08-22', 'Mawanella', '2021-08-22', '106', '2000.00', 'pending', '2021-08-01'),
(10022, 'P55555', 'B4500800', 'AAE100', 'A1,A,B1,B,G1', 'Colombo 05', '2021-08-01', '02:41:46', '2021-08-22', 'Mawanella', '2021-08-22', '108', '3000.00', 'pending', '2021-08-01'),
(10023, 'P55555', 'B4502650', 'WP2510', 'A1,A,B1,B,G1', 'Kandy', '2021-08-01', '02:42:33', '2021-08-22', 'Mawanella', '2021-08-22', '107', '2000.00', 'pending', '2021-08-01'),
(10024, 'P55555', 'B4502650', 'WP2510', 'A1,A,B1,B,G1', 'Kegalle', '2021-08-01', '02:42:48', '2021-08-22', 'Mawanella', '2021-08-22', '108', '3000.00', 'pending', '2021-08-01'),
(10025, '12345', 'B5500800', '23', 'A1', 'Thika', '2023-02-02', '05:06:20', '2023-02-23', 'millimani', '2023-02-23', '106', '2000.00', 'paid', '2023-02-02'),
(10026, '12345', 'B6500800', '75', 'A1,A2,A3', 'maseno', '2023-02-06', '02:21:48', '2023-02-27', 'millimani', '2023-02-27', '107', '2000.00', 'pending', '2023-02-06'),
(10027, '12345', 'B5500800', 'KCM 101B', 'A1', 'kitui', '2023-02-08', '09:07:35', '2023-03-01', 'millimani', '2023-03-01', '108', '3000.00', 'pending', '2023-02-08'),
(10028, '12345', 'B5500800', 'KCM 102B', 'A1', 'nairobi', '2023-02-08', '03:28:47', '2023-03-01', 'millimani', '2023-03-01', '108', '3000.00', 'pending', '2023-02-08');

-- --------------------------------------------------------

--
-- Table structure for table `mtd`
--

CREATE TABLE `mtd` (
  `mtd_id` int(20) NOT NULL,
  `mtd_email` varchar(255) NOT NULL,
  `mtd_password` varchar(255) NOT NULL,
  `registered_at` date NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mtd`
--

INSERT INTO `mtd` (`mtd_id`, `mtd_email`, `mtd_password`, `registered_at`, `code`, `status`) VALUES
(2, 'collins@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-05-24', 0, 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `revenue_license`
--

CREATE TABLE `revenue_license` (
  `vehicle_no` varchar(255) NOT NULL,
  `reference_no` varchar(255) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `fuel_type` varchar(255) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `owner_address` varchar(255) NOT NULL,
  `issue_date` date NOT NULL,
  `expire_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `revenue_license`
--

INSERT INTO `revenue_license` (`vehicle_no`, `reference_no`, `vehicle_type`, `fuel_type`, `owner_name`, `owner_address`, `issue_date`, `expire_date`) VALUES
('CPAAE0000', '1112135', 'Car', 'Petrol', 'Gayan Bandara', 'C/145,Kandy Road, Pilimathalawa.', '2021-06-11', '2022-09-14'),
('WPBE5264', '12348591', 'Bus', 'Desal', 'Nimal Bandara', 'Nugawala, Mawanella', '2021-08-01', '2022-08-02');

-- --------------------------------------------------------

--
-- Table structure for table `tpo`
--

CREATE TABLE `tpo` (
  `police_id` varchar(255) NOT NULL,
  `officer_email` varchar(255) NOT NULL,
  `officer_password` varchar(255) NOT NULL,
  `officer_name` varchar(255) NOT NULL,
  `police_station` varchar(255) NOT NULL,
  `court` varchar(255) NOT NULL,
  `registered_at` date NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tpo`
--

INSERT INTO `tpo` (`police_id`, `officer_email`, `officer_password`, `officer_name`, `police_station`, `court`, `registered_at`, `code`, `status`) VALUES
('12345', 'michaelnjoroge2000@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Michael Njoroge', 'milimani', 'millimani', '2023-02-02', 0, 'verified'),
('P55555', 'stfmssample@gmail.com', '392a4ddea2df34a918560a6abff9c264', 'H.R.S.Perera', 'Mawanella', 'Mawanella', '2021-07-18', 0, 'verified'),
('P55556', 'P55556@stfms.com', '392a4ddea2df34a918560a6abff9c264', 'R.A.Sumith Bandara', 'Kandy', 'Kandy', '2021-07-18', 0, 'verified'),
('P55557', 'P55557@stfms.com', '392a4ddea2df34a918560a6abff9c264', 'B.A.Kasun Kumara', 'Colombo', 'Colombo', '2021-07-18', 0, 'verified'),
('P55558', 'P55558@stfms.com', '392a4ddea2df34a918560a6abff9c264', 'B.M.D.Dissanayaka', 'Kandy', 'Kandy', '2021-07-18', 0, 'verified'),
('P55559', 'P55559@stfms.com', '392a4ddea2df34a918560a6abff9c264', 'M.A.Gunasekara', 'Ampara', 'Ampara', '2021-07-18', 0, 'verified'),
('P55560', 'P55560@stfms.com', '392a4ddea2df34a918560a6abff9c264', 'A.R.S.Perera', 'Colombo', 'Colombo', '2021-07-18', 0, 'verified'),
('P55561', 'P55561@stfms.com', '392a4ddea2df34a918560a6abff9c264', 'R.B.S.Buddika ', 'Kegalle', 'Kegalle', '2021-07-18', 0, 'verified'),
('P55562', 'P55562@stfms.com', '392a4ddea2df34a918560a6abff9c264', 'Gayan Perera', 'Kandy', 'Kandy', '2021-07-18', 0, 'verified'),
('P55563', 'P55563@stfms.com', '392a4ddea2df34a918560a6abff9c264', 'Supun Aravindha', 'Colombo', 'Colombo', '2021-07-18', 0, 'verified');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`license_id`),
  ADD UNIQUE KEY `driver_email` (`driver_email`);

--
-- Indexes for table `fine_tickets`
--
ALTER TABLE `fine_tickets`
  ADD PRIMARY KEY (`fine_id`);

--
-- Indexes for table `issued_fines`
--
ALTER TABLE `issued_fines`
  ADD PRIMARY KEY (`ref_no`),
  ADD KEY `fk_pid` (`police_id`),
  ADD KEY `fk_lid` (`license_id`);

--
-- Indexes for table `mtd`
--
ALTER TABLE `mtd`
  ADD PRIMARY KEY (`mtd_id`),
  ADD UNIQUE KEY `mtd_email` (`mtd_email`);

--
-- Indexes for table `revenue_license`
--
ALTER TABLE `revenue_license`
  ADD PRIMARY KEY (`vehicle_no`),
  ADD UNIQUE KEY `reference_no` (`reference_no`);

--
-- Indexes for table `tpo`
--
ALTER TABLE `tpo`
  ADD PRIMARY KEY (`police_id`),
  ADD UNIQUE KEY `officer_email` (`officer_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `issued_fines`
--
ALTER TABLE `issued_fines`
  MODIFY `ref_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10029;

--
-- AUTO_INCREMENT for table `mtd`
--
ALTER TABLE `mtd`
  MODIFY `mtd_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issued_fines`
--
ALTER TABLE `issued_fines`
  ADD CONSTRAINT `fk_lid` FOREIGN KEY (`license_id`) REFERENCES `driver` (`license_id`),
  ADD CONSTRAINT `fk_pid` FOREIGN KEY (`police_id`) REFERENCES `tpo` (`police_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
