-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2018 at 08:40 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctors`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` double NOT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1.jpg',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `first_name`, `last_name`, `user_name`, `email`, `phone`, `pic`, `password`, `created_at`, `updated_at`) VALUES
(1, 'rezaul', 'alam', 'oni12', 'oni@gmail.com', 1687855988, '1.jpg', '123456', '2018-10-01 20:50:00', NULL),
(2, 'mehedi', 'hassan', 'mehedi', 'mehadi@gmail.com', 152110670000, '1.jpg', '123654', '2018-10-01 21:19:11', '2018-10-01 21:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(255) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `time` text NOT NULL,
  `problems` text NOT NULL,
  `dr_comments` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(30) NOT NULL,
  `patient_id` int(50) DEFAULT NULL,
  `doctor_id` int(30) DEFAULT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `photo` text,
  `name_adj` text NOT NULL,
  `details` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `photo`, `name_adj`, `details`) VALUES
(1, 'Gynaecology', 'dpt1.jpg', 'Gynaecologist', 'Obstetrics and Gynaecology (often abbreviated to OB/GYN, OBG, O&G or Obs & Gynae) are the two surgical specialties dealing with the female reproductive organs, and as such are often combined to form a single medical specialty and postgraduate training program.'),
(2, 'Orthology', 'dpt2.jpg', 'Orthologist', 'Orthology is the study of the right use of words in language. The word comes from Greek ortho- (\"correct\") and -logy (\"science of\"). This science is a place where psychology, philosophy, linguistics, and many other fields of learning come together.'),
(3, 'Dermatology', 'dpt3.jpg', 'Dermatologist', 'Dermatology is the branch of medicine dealing with the skin, nails, hair and its diseases. It is a specialty with both medical and surgical aspects. A dermatologist treats diseases, in the widest sense, and some csasdsadosmetic problems of the skin, scalp, hair, and nails.'),
(4, 'Child Health ', 'dpt4.jpg', 'Child health', 'The Department of Oncology is an academic department within the School of Clinical Medicine at the University of Cambridge. Our Head of Department is Professor Richard Gilbertson, a world leading expert on childhood brain tumours, who is also Director of the Cancer Research UK Cambridge Cancer.'),
(5, 'Scene', 'dpt6.jpg', 'Scene Expert', 'People with conditions of ear, nose, throat, and head and neck are cared for by the specialists of the Mayo Clinic Department of Otorhinolaryngology (ENT)/Head and Neck Surgery. The clinic has one of the largest ear, nose and throat practices in the world, with more than 50 specialists committed to providing individualized medical and surgical care to people at its campuses in Arizona, Minnesota and Florida. Mayo Clinic Health System locations serve more than 60 communities in Iowa, Wisconsin and Minnesota. These sites bring Mayo Clinic otorhinolaryngology and head and neck surgery to their local communities.'),
(6, 'Surgery ', 'dpt3.jpg', 'surgery ', 'Pediatric gastroenterology has grown greatly in North America and Europe. It began with the speciality of pediatrics, which was developed along with childrenâ€™s hospitals in the 19th century. The concept of specialists concentrating on organ specific specialties started around the same time.'),
(7, 'Oncology ', 'dpt4.jpg', 'Oncologist', 'The Department of Oncology is an academic department within the School of Clinical Medicine at the University of Cambridge. Our Head of Department is Professor Richard Gilbertson, a world leading expert on childhood brain tumours, who is also Director of the Cancer Research UK Cambridge Cancer.'),
(8, 'ENT', 'dpt6.jpg', 'ENT Expert', 'People with conditions of ear, nose, throat, and head and neck are cared for by the specialists of the Mayo Clinic Department of Otorhinolaryngology (ENT)/Head and Neck Surgery. The clinic has one of the largest ear, nose and throat practices in the world, with more than 50 specialists committed to providing individualized medical and surgical care to people at its campuses in Arizona, Minnesota and Florida. Mayo Clinic Health System locations serve more than 60 communities in Iowa, Wisconsin and Minnesota. These sites bring Mayo Clinic otorhinolaryngology and head and neck surgery to their local communities.'),
(9, 'Paediatrics', 'dpt3.jpg', 'Paediatrics', 'Pediatric gastroenterology has grown greatly in North America and Europe. It began with the speciality of pediatrics, which was developed along with childrenâ€™s hospitals in the 19th century. The concept of specialists concentrating on organ specific specialties started around the same time.'),
(10, 'Eye Care', 'dpt5.jpg', 'Eye Care', 'An eye care professional (ECP) is an individual who provides a service related to the eyes or vision. It is a general term that can refer to any healthcare worker involved in eye care, from one with a small amount of post-secondary training to practitioners with a doctoral level of education.'),
(11, 'Haematology', 'dpt2.jpg', 'Haematologist', 'Haematology services work closely with the hospital laboratory. These doctors treat blood diseases and malignancies linked to the blood, with both new referrals and emergency admissions being seen.'),
(12, 'Neurology', 'dpt4.jpg', 'Neurologist', 'This unit deals with disorders of the nervous system, including the brain and spinal cord. It\'s run by doctors who specialise in this area (neurologists) and their staff.\r\n\r\nThere are also paediatric neurologists who treat children. Neurologists may also be involved in clinical research and clinical trials.\r\n\r\nSpecialist nurses (epilepsy, multiple sclerosis) liaise with patients, consultants and GPs to help with any problems that may occur between outpatient appointments.'),
(13, 'Orthopaedics', 'dpt6.jpg', 'Orthopaedics', 'Orthopaedic departments treat problems that affect your musculoskeletal system. That\'s your muscles, joints, bones, ligaments, tendons and nerves.The doctors and nurses who run this department deal with everything from setting bone fractures to carrying out surgery to correct problems such as torn ligaments and hip replacements.'),
(16, 'asda', 'dpts.jpg', 'ddasdisttr', 'sdfa asdfasd asdfasdasdfasasdasdasdfaasdfasdfasdcasdc adfsadfsdfasdsffvasdfawe fafas f\r\nsdfgsad gasdcvasda aef  asdrg erg rea are gaerg arwe ytjerhy aewry gh sgth ');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(30) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` text NOT NULL,
  `gender` text NOT NULL,
  `age` int(30) DEFAULT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '3',
  `photo` text,
  `degree` text,
  `awards` text,
  `department_id` int(18) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `specialty` text,
  `experience` varchar(50) NOT NULL,
  `hospital_id` int(10) NOT NULL,
  `start_appointment` text,
  `end_appointment` text,
  `time_slot` text,
  `week_end` text,
  `status` int(2) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `first_name`, `last_name`, `email`, `phone`, `gender`, `age`, `username`, `password`, `role_id`, `photo`, `degree`, `awards`, `department_id`, `position`, `specialty`, `experience`, `hospital_id`, `start_appointment`, `end_appointment`, `time_slot`, `week_end`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Abu', 'Ahsan', 'abu@gmail.com', '01687855988', 'Male', 32, 'zilanioni99231', '321987546', 3, 'd1.jpg', 'MBBS', 'N/A', 2, 'N/A', 'N/A', '2', 2, '10:00', '23:00', '20', 'Saturday', 0, '2018-09-27 00:00:00', '2018-10-01 15:57:15'),
(2, 'kamal ', 'hossail', 'kamal@gaail.com', '01521100570', 'Male', 41, '', '', 3, 'd12.jpg', 'MBBS,FCPS', NULL, 3, NULL, NULL, '3', 1, NULL, NULL, '4:00', 'Sunday', 0, '2018-09-27 00:00:00', '2018-09-27 00:00:00'),
(3, 'test1', 'Ahsan ', 'kamiial@gaail.com', '01829082649', 'Female', 60, '', '', 3, 'd3.jpg', 'MBBS,FCPS', NULL, 4, NULL, NULL, '7', 3, NULL, NULL, '10:00', 'SUNDAY', 0, '2018-09-27 00:00:00', '2018-09-27 00:00:00'),
(4, 'Test', 'bbnyuy', 'ff@gbb.c0m', '01678556776', 'Male', 52, 'mnbhgytu', '125896347', 3, 'd13.jpg', 'MBBS', 'N/A', 5, 'N/A', 'N/A', '4', 2, '22:00', '23:00', '20', 'Friday', 0, '2018-09-27 00:00:00', '2018-10-01 15:58:59'),
(5, 'test21', 'ttttt', 'rttr@gmail.com', '01687855988', 'Female', 29, '', '', 3, 'd5.jpg', 'MBBS', NULL, 6, NULL, NULL, '3', 3, NULL, NULL, '10', 'Friday', 0, '2018-09-27 00:00:00', '2018-09-27 00:00:00'),
(6, 'sdfasd', 'asdfasd', 'rzalam9df@mail.com', '1829082649', 'Male', NULL, 'zilanisss', '123456', 3, 'd10.jpg', 'ddd', NULL, 14, NULL, NULL, '0', 2, NULL, NULL, '', '', 0, '2018-09-27 03:50:01', '0000-00-00 00:00:00'),
(7, 'Shahida', 'Rafiq', 'oni.cse21@gmail.com', '1321325436', 'Female', 52, 'shahida123', '325416987', 3, '12524063_879978482115598_2760146279530089286_n.jpg', 'MBBS', 'N/A', 12, 'N/A', 'N/A', '0', 4, '00:00', '12:00', '30', 'Wednesday', 0, '2018-09-27 04:01:27', '2018-10-01 16:05:23'),
(8, 'alam', 'qwasd', 'dsafsdfa@asdc.cco', '1829082649', 'Male', NULL, 'qweasd', '123456', 3, 'd7.jpg', 'MBBS', NULL, 13, NULL, NULL, '0', 3, NULL, NULL, NULL, NULL, 0, '2018-09-28 02:28:26', '0000-00-00 00:00:00'),
(9, 'Addul', 'Korim', 'test@test.com', '12342345345645', 'Male', NULL, 'asdfgh', 'zxcvbn', 3, 'd2.jpg', 'MBBS,BSABAS', NULL, 12, NULL, NULL, '0', 3, NULL, NULL, NULL, NULL, 0, '2018-09-28 02:30:27', '0000-00-00 00:00:00'),
(10, 'NIzam', 'Uddin', 'ist@ist.tt', '09876543452', 'Female', NULL, 'qwertyqwert', 'asdfghjkl', 3, 'd11.jpg', 'MBBS,BSABAS', NULL, 13, NULL, NULL, '0', 5, NULL, NULL, NULL, NULL, 0, '2018-09-28 02:38:50', '0000-00-00 00:00:00'),
(11, 'Abbas', 'uddin', 'assaas@xzcxz.com', '1687855988', 'Male', 52, 'abbas123', 'mnbvcxz', 3, 'd56.jpg', 'MBBS,BSABAS', 'N/A', 10, 'N/A', 'N/A', '2', 17, '10:00', '21:00', '20', 'Friday', 0, '2018-10-01 03:59:31', '0000-00-00 00:00:00'),
(12, 'Twokir', 'ALam', 'twkir@fad.vom', '321265465', 'Male', 65, 'sdfsd21354', '125478963', 3, 'd4.jpg', 'MBBS', 'N/A', 12, 'N/A', '', '0', 10, '10:00', '22:00', '20', 'Saturday', 0, '2018-10-01 12:33:13', '2018-10-01 20:13:07'),
(13, 'jamakd', 'asdgrv', 'awerqw@asdfm.cvb', '1829082649', 'Male', NULL, 'qwerdsfa34', 'qwertyu', 3, 'd56.jpg', 'MBBS,FCPS', NULL, 13, NULL, NULL, '0', 16, NULL, NULL, NULL, NULL, 0, '2018-10-01 12:41:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(30) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `photo` text,
  `location_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `address`, `photo`, `location_id`) VALUES
(1, 'Shahid Suhrawardy Hospital', 'Ser-e-Banglanagar, Collegegate,Shamoli, Dhaka', 'h76.jpg', 5),
(2, 'Ad-Din Hospital', 'Moghbazar, Dhaka', 'h2.jpg', 1),
(3, 'Ahmed Medical Centre Ltd.', 'House # 71, Road # 15-A, (New), Dhanmondi Dhaka', 'h1.jpg', 7),
(4, 'Appolo Hospital', '20/5, Babar Road, (Ground Floor), Block # B, Mohammadpur, Dhaka', 'h3.jpg', 4),
(5, 'Arimo General Hospital', 'HMatuil, Deamra Road, Mohammadpur, Dhaka', 'h1.jpg', 4),
(6, 'Bangladesh Specialized Hospital', 'Moghbazar, Dhaka', 'h2.jpg', 1),
(7, 'National Institute of Mental Health', 'Ser-e-Banglanagar, Collegegate,Shamoli, Dhaka', 'h1.jpg', 7),
(8, 'xyz Hospital', '20/5, Babar Road, (Ground Floor), Block # B, Mohammadpur, Dhaka', 'h3.jpg', 5),
(9, 'ABCD General Hospital', 'HMatuil, Deamra Road, Mohammadpur, Dhaka', 'h1.jpg', 5),
(10, 'Ahmed Medical Centre Ltd.', 'House # 71, Road # 15-A, (New), Dhanmondi Dhaka', 'h1.jpg', 3),
(11, 'Bangabandhu Shiekh Mujib Medical University', 'Sahbag Dhaka', 'h1.jpg', 2),
(12, 'Ad-Din Hospital', 'Moghbazar, Dhaka', 'h2.jpg', 1),
(13, 'Bdm Hospital', '5/17, Humaund Road, Block # B, Mohammedpur', 'h1.jpg', 7),
(14, 'Care Madical Center Ltd.', '41, Chamelibagh, Shantinagar', 'h3.jpg', 4),
(15, 'Chandshi Medical Centre', 'House # 9, Road # 27, Block # K, Banani', 'h1.jpg', 4),
(16, 'Community Hospital', '190/1, Wireless Rail Gate, Baramaghbazar, Dhaka', 'h2.jpg', 1),
(17, ' Central Hospital Ltd.', 'House # 2, Road # 5, Green Road, Dhanmondi', 'h1.jpg', 7),
(18, 'Brain & Maind Hospital Ltd.', '149/A, Airport Road, Farmgate, Baityl Shoraf Mosque Complex', 'h3.jpg', 5),
(19, 'Brighton Hospital Ltd', '163, Sonargaon Road Hitirpool, Dhaka- 120', 'h1.jpg', 5),
(20, 'Aysha Memorial Specialized Hospital', '74/G, Arjatpara, Mohakhali, Dhaka', 'h1.jpg', 3),
(21, 'Abdul Kori General Hospital', 'h# 12,R7,ZIGATHOLA, dhanmondi, dhaka', 'IMG20170802181121.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(30) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `name`) VALUES
(1, 'dhanmondi , dhaka'),
(2, 'mohommadpur, dhaka'),
(3, 'newmarket, dhaka'),
(4, 'Shahbag,dhaka '),
(5, 'shymoly, dhaka'),
(6, 'agargaw,dhaka'),
(7, 'mirpur-10, dhaka'),
(8, 'mirpur-1, dhaka'),
(9, 'farmget, dhaka'),
(10, 'mohakhali,dhaka'),
(11, 'gulshan,dhaka'),
(12, 'bonani, dhaka'),
(13, 'malibag, dhaka'),
(14, 'motizil, dhaka'),
(15, 'jatrabari, dhaka'),
(16, 'shahbag, dhaka'),
(17, 'gulisthan, dhaka'),
(18, 'uttora, dhaka'),
(19, 'chatkhil , noakhali '),
(20, 'sonaimuri, noakhali'),
(21, 'Razarbag,Dhaka'),
(22, 'Uttora, Dhaka'),
(23, 'zdv dfhg srg ere '),
(24, 'zdv dfhg srg ere ');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` int(55) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `gender` text,
  `password` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(255) DEFAULT NULL,
  `dob` text,
  `age` int(50) DEFAULT NULL,
  `blood_group` text,
  `role_id` int(30) NOT NULL DEFAULT '2',
  `location_id` int(30) NOT NULL,
  `medical_history` text,
  `medical_report` text,
  `status` int(15) DEFAULT '1',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `first_name`, `last_name`, `user_name`, `gender`, `password`, `email`, `phone`, `dob`, `age`, `blood_group`, `role_id`, `location_id`, `medical_history`, `medical_report`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jokin', 'Cuello', 'jokin123', 'Female', '40364673', 'jokin.cuello@openlanak.com', 1687855988, '1995-02/25', NULL, 'A+', 2, 15, 'high-blood-pressure,heart-problems,asthma,hiv,blood-thinners,noasdcasdc thisssf   asdfasdfhgjsad fg                                             ,', NULL, 1, '2018-09-12', '2018-10-01'),
(2, 'rezaul ', 'alam', 'rzalam93', 'Male', '124587654', 'rzalam93@gmail.com', 1829082649, '1993-9-28', NULL, 'A+', 2, 19, 'heart-problems,kidney-stones,jaundice,epilepsy,,blood-thinners,12547ljh\r\n,', NULL, 1, '2018-09-20', '2018-10-02'),
(3, 'test ', 'tesaas', 'test', 'Female', '1234aserqw', 'test@teest.com', 1829082649, '1998-4-29', NULL, 'AB-', 2, 20, 'high-blood-pressure,heart-problems,asthma,kidney-disease,kidney-stones,rheumatic-fever,blood-thinners,ewrqer asdf asd\r\n,', NULL, 1, '2018-09-17', '2018-10-02'),
(4, 'test', 'tssera', 'rana', 'Male', '123456', 'dfggs@dsf.bv', 1521100570, '23/12/1993', NULL, 'AB+', 2, 9, 'diabetes,kidney-stones,hepatitis,blood-thinners,Nice job for testing, ', NULL, 1, '2018-09-17', '2018-09-18'),
(5, 'Niazam', 'Uddin', 'nizam', 'Female', '569874123', 'dfggs@dsf.bv', 1234123151, '23/12/1999', NULL, 'O+', 2, 3, 'diabetes,heart-problems,asthma,kidney-disease,jaundice,cancer,hiv,epilepsy,blood-thinners,patient Add testiing,', NULL, 1, '2018-09-18', '2018-10-02'),
(6, 'Test 12', 'Uddin', 'test123', 'Female', '987542215', 'dfggs@dsf.bv', 1234123151, '23/12/1999', NULL, 'O+', 2, 4, 'diabetes,high-cholesterol,asthma,kidney-disease,kidney-stones,cancer,hiv,epilepsy,blood-thinners,patient Add testiing nicaea\r\njobb asdf asldkals asdf,', NULL, 1, '2018-09-18', '2018-10-02'),
(10, 'demo', 'test', 'zilanioni99', 'Male', 'qwerty', 'oni.cse21@gmail.com', 1687855988, NULL, NULL, 'A+', 2, 12, '', NULL, 1, '2018-09-22', '0000-00-00'),
(11, 'demo2', 'test', 'nizam123', 'Female', '123456', 'razalaam@gmail.com', 1687855988, '23/12/1999', NULL, 'B+', 2, 3, 'high-blood-pressure, asthma, kidney-disease, kidney-stones, hepatitis, rheumatic-fever, hiv, <br>NIce work, ', NULL, 1, '2018-09-22', '0000-00-00'),
(12, 'demtwo', 'TestTwo', 'rana23', 'Female', '123456', 'razalaam@gmail.com', 1521100570, NULL, NULL, 'O+', 2, 15, '', NULL, 1, '2018-09-22', '0000-00-00'),
(13, 'TESTrera', 'minve', 'oni12312', 'Female', 'qwerty', 'zczc@amail.com', 1687855988, NULL, NULL, 'A-', 2, 8, '', NULL, 1, '2018-09-23', '0000-00-00'),
(14, 'sdfasd', 'aliabdol', 'niza444', 'Male', '123456', 'zilanioni@gmail.com', 1521100570, '23/12/1993', NULL, 'A-', 2, 1, 'diabetes,high-blood-pressure,high-cholesterol,heart-problems,asthma,,rheumatic-fever,,nice testing,', NULL, 1, '2018-09-25', '2018-10-02'),
(15, 'sdfasd', 'test', 'oni12345', 'Male', '123456', 'oni.cse21@gmail.com', 1521100570, NULL, NULL, '', 2, 11, '', NULL, 1, '2018-09-25', '0000-00-00'),
(16, 'TESTrera', 'test', 'oni123', 'Female', '123456', 'zilanioni@gmail.com', 1521100570, NULL, NULL, 'B+', 2, 1, '', NULL, 1, '2018-09-25', '0000-00-00'),
(17, 'asd', 'tssera', 'test123323', 'Female', '123456', 'ullash@gmail.com', 1521100570, NULL, NULL, 'AB-', 2, 5, '', NULL, 1, '2018-09-25', '0000-00-00'),
(18, 'asdfas', 'qwer', 'rana', 'Male', '123456', 'qwe@fgf.com', 1829082649, NULL, NULL, 'B-', 2, 5, '', NULL, 1, '2018-09-26', '0000-00-00'),
(19, 'sdfasd', 'aliabdol', 'qwerqw', 'Male', 'qwerty', 'razalaam@gmail.com', 1521100570, NULL, NULL, 'AB-', 2, 15, '', NULL, 1, '2018-09-27', '0000-00-00'),
(20, 'oni', 'Alam', 'oni93', 'Male', 'asdfgh', 'oni.cse21@gmail.com', 1829082649, NULL, NULL, 'B+', 2, 5, '', NULL, 1, '2018-09-27', '0000-00-00'),
(21, 'asd', 'test', 'oni123', 'Male', 'zxcvbn', 'zilanioni@gmail.com', 1687855988, NULL, NULL, 'AB-', 2, 16, '', NULL, 1, '2018-09-27', '0000-00-00'),
(22, 'sdfasd', 'rersr', 'qwerty', 'Male', 'qwerty', 'sfrgs@zz.com', 1829082649, NULL, NULL, 'A-', 2, 14, '', NULL, 1, '2018-09-27', '0000-00-00'),
(23, 'rasayl', 'niceakom', '34dfghsdfgs', 'Male', 'qwerty', 'nicaed@tsrt.com', 45234778, NULL, NULL, 'O+', 2, 6, '', NULL, 1, '2018-09-28', '0000-00-00'),
(24, 'zdvsdv', 'zsdfvsdfvsd', 'zxcvbnm', 'Male', '654123', 'sadfvasdfvs@scv.cvb', 1829082649, '23/12/1999', NULL, 'AB-', 2, 14, 'high-blood-pressure,high-cholesterol,heart-problems,jaundice,,epilepsy,,blood-thinners,drsklbvcsxzzGJKL;,', NULL, 1, '2018-09-30', '2018-10-02'),
(25, 'TESTrera', 'asdfasd', 'qwer13123', 'Male', '98543261', 'zxsa@resr.cim', 123456, '25/02/2001', NULL, 'AB+', 2, 5, 'diabetes,asthma,kidney-disease,rheumatic-fever,,zxvcmasdfa asdfasd,', NULL, 1, '2018-09-30', '2018-10-02'),
(26, 'tezay', 'dwmo', 'qazxswq', 'Female', '21659847', 'demo@fafeasd.vpm', 1829082649, '21/21/1995', NULL, 'A+', 2, 2, 'high-cholesterol,asthma,jaundice,rheumatic-fever,cancer,blood-thinners,Thius  is patient this is a nice work to do..,', NULL, 1, '2018-09-30', '2018-10-02'),
(27, 'asdfasd', 'asdfasdf', 'asdfasd23165', 'Male', '12547896', 'asdfas@asdf.com', 1829082649, '23/12/1999', NULL, 'B-', 2, 3, 'high-cholesterol,heart-problems,asthma,kidney-disease,rheumatic-fever,cancer,jyfvsdfasdf mm ls/e rn aslr vnaso;ic fnasercfoauiw cxes,', NULL, 1, '2018-09-30', '2018-10-02'),
(28, 'asdfasdf', 'adsfsdfg', 'xzcvz5623', 'Male', '123456', 'asdfasdfasd@cxadfsd.vcb', 321354321, NULL, NULL, 'AB-', 2, 4, '', NULL, 1, '2018-10-01', '0000-00-00'),
(29, 'abdu', 'Korim', 'addul1425', 'Male', '123456', 'adbyfk@gad.com', 1829082649, NULL, NULL, 'B+', 2, 1, '', NULL, 1, '2018-10-03', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(30) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'admin'),
(2, 'patient'),
(3, 'doctor');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1',
  `created_at` text NOT NULL,
  `updaated_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `status`, `created_at`, `updaated_at`) VALUES
(1, 'polinakul87@gmail.com', 1, '	07 Aug 2018', ''),
(2, 'fgpolinl87@gmail.com', 1, '09 Aug 2018', ''),
(3, 'monirpoll87@gmail.com', 1, '16 Aug 2018', ''),
(4, 'jaamll87@gmail.com', 1, '20 Aug 2018', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `hospital_id` (`hospital_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patient_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `doctor_key` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hospital_key` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patient_key` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `location_forain_key` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_forain_key` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
