-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 15, 2016 at 02:34 AM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nesherba_capstone2016`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_assethis`
--

CREATE TABLE IF NOT EXISTS `all_assethis` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `make` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_imei` int(11) DEFAULT NULL,
  `date_purchased` date DEFAULT NULL,
  `warranty_date` date DEFAULT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imei` int(11) DEFAULT NULL,
  `mobile_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `ntm_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ntm_pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cad_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sim_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sim_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gps_protocol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firmware_ver` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `radio_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meid_model_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multi_tech_sim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mdc_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mdc_pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `network_status` tinyint(4) DEFAULT '0',
  `drop_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `switch_serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `screen_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ac_adapter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stylus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seid_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tmv_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tmv_alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `radio_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tier_level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `station_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `station_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `all_assethis`
--

INSERT INTO `all_assethis` (`id`, `asset_id`, `name`, `asset_type`, `model`, `make`, `manu`, `serial_number`, `model_imei`, `date_purchased`, `warranty_date`, `cost`, `imei`, `mobile_type`, `os`, `comments`, `ntm_uid`, `ntm_pass`, `ip_address`, `mac`, `cad_ip`, `sim_id`, `sim_phone`, `gps_protocol`, `firmware_ver`, `radio_id`, `meid_model_num`, `meid`, `phone`, `multi_tech_sim`, `mdc_id`, `mdc_pass`, `cpu`, `ram`, `asset_tag`, `network_status`, `drop_status`, `switch_serial`, `screen_size`, `ac_adapter`, `stylus`, `seid_num`, `emid`, `tmv_num`, `tmv_alias`, `radio_desc`, `tier_level`, `system_alias`, `system_id`, `status_id`, `status`, `station_id`, `station_name`, `vehicle_id`, `vehicle_name`, `vendor_id`, `vendor_name`, `grant_name`, `created_at`, `updated_at`) VALUES
(1, '13', NULL, 'Computer Monitor', 'E221', NULL, NULL, '123456', NULL, '2016-02-01', '0000-00-00', '300', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-05 11:22:41', '2016-12-05 11:22:41'),
(2, '21', 'OFD-EMS-MASTER', 'Mobile Computer', 'Getac', 'V110', NULL, 'RF139V0199', 0, '2014-04-05', '0000-00-00', '$1,856', 2147483647, 'ePCR', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-05 12:47:02', '2016-12-05 12:47:02'),
(3, '21', 'OFD-EMS-MASTER', 'Mobile Computer', 'Getac', 'V110', NULL, 'RF139V0199', 0, '2014-04-05', '0000-00-00', '48976', 2147483647, 'ePCR', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-05 12:48:04', '2016-12-05 12:48:04'),
(4, '23', NULL, 'Netmotion', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '', 'Engine21', 'ofdeng29999', '10.4.1.523', NULL, '10.5.6.123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-05 12:57:53', '2016-12-05 12:57:53'),
(5, '2', NULL, 'Portable Radio', 'pr-23392', 'Motorola', NULL, '123456789', NULL, '2016-10-12', '0000-00-00', '50000', NULL, NULL, NULL, 'please change vendor names to realistic ones', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'long range radio', NULL, 'rig_5 radio', '12', '2', 'Spare', NULL, NULL, '5', 'ADGJADRGDF-1242135-1234', '22', 'Midwest Technology Solutions', '[]', '2016-12-05 13:01:45', '2016-12-05 13:01:45'),
(6, '10', NULL, 'HPD', 'HPD 1000', 'Motorola', NULL, '153CJV0205', NULL, '0000-00-00', '2017-02-15', NULL, NULL, NULL, NULL, '', NULL, NULL, '10.4.5.123', NULL, NULL, NULL, NULL, NULL, '10', '4456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-05 13:03:26', '2016-12-05 13:03:26'),
(7, '12', 'BAT 1', 'IPad', 'AirPad 2', 'Apple', NULL, 'DLXQ11TJG5YP', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, 'ipad for medic units, using its 3rd charger', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, '4023784546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '89148000001844400000', '356969062471434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-05 13:03:45', '2016-12-05 13:03:45'),
(8, '14', 'FIRE-ADMN-D026', 'Desktop Computer', 'Optiplex 760', 'Dell', NULL, 'FIRE-ADMN-D026', NULL, '2014-07-20', '0000-00-00', '1353', NULL, NULL, 'windows 7', '', NULL, NULL, '10.3.1.125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dual 3.0 Ghz', '4 gb', 'OFD-214123134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-05 19:18:08', '2016-12-05 19:18:08'),
(9, '10', NULL, 'HPD', 'HPD 1000', 'Motorola', NULL, '153CJV0205', NULL, '0000-00-00', '2017-02-15', NULL, NULL, NULL, NULL, '', NULL, NULL, '10.4.5.123', NULL, NULL, NULL, NULL, NULL, '10', '4456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', 'Station 3', NULL, NULL, '21', 'Dell Marketing LP', '[]', '2016-12-05 22:19:46', '2016-12-05 22:19:46'),
(10, '15', NULL, 'InMotion', '100', NULL, 'Texas Instruments', 'HS-4534', NULL, '0000-00-00', '0000-00-00', NULL, 2147483647, NULL, NULL, 'IMEI has letter in it, need to change the datatype, add as an issue at the Yodiz', NULL, NULL, NULL, '0024E60051EC', NULL, NULL, NULL, NULL, '3.1.4.2', NULL, '362', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-05 22:33:33', '2016-12-05 22:33:33'),
(11, '20', NULL, 'HPD', 'HPD-TS-1270', 'Texas Instruments', NULL, '312413431', NULL, '0000-00-00', '2017-07-31', NULL, NULL, NULL, NULL, 'need firmware version update', NULL, NULL, '192.231.23.15', NULL, NULL, NULL, NULL, NULL, 'v2', 'hpd_838120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-05 22:33:52', '2016-12-05 22:33:52'),
(12, '23', NULL, 'Netmotion', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '', 'Engine21', 'ofdeng29999', '10.4.1.523', NULL, '10.5.6.123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-05 22:34:24', '2016-12-05 22:34:24'),
(13, '22', NULL, 'Dock', '7160-0515-03', 'Gamber-Jonhson', NULL, 'C21314AAW010', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-05 22:34:45', '2016-12-05 22:34:45'),
(14, '22', NULL, 'Dock', '7160-0515-03', 'Gamber-Jonhson', NULL, 'C21314AAW010', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 'In-repair', NULL, NULL, NULL, NULL, '21', 'Dell Marketing LP', '["Sarpy County"]', '2016-12-05 22:41:59', '2016-12-05 22:41:59'),
(15, '2', NULL, 'Portable Radio', 'pr-23392', 'Motorola', NULL, '123456789', NULL, '2016-10-12', '0000-00-00', '5000', NULL, NULL, NULL, 'please change vendor names to realistic ones', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'long range radio', NULL, 'rig_5 radio', '12', '2', 'Spare', '3', 'Station 5', '4', '57322', '22', 'Midwest Technology Solutions', '[]', '2016-12-05 23:00:01', '2016-12-05 23:00:01'),
(16, '28', NULL, 'Drone', '10000', 'X', NULL, '12321312', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Available', '3', 'Station 5', '11', 'OFD-199482-19385024', '21', 'Dell Marketing LP', '[]', '2016-12-05 23:01:35', '2016-12-05 23:01:35'),
(17, '27', 'NPI2250CE', 'Printer', 'LaserJet 200 color M251nw', 'HP', NULL, 'VNB3B29207', NULL, '2015-04-08', '0000-00-00', '1403', NULL, NULL, NULL, '', 'Chief Ausdemore', NULL, '10.3.1.236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MPC468', 0, 'Yes', '2153279000720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-05 23:19:02', '2016-12-05 23:19:02'),
(18, '27', 'NPI2250CE', 'Printer', 'LaserJet 200 color M251nw', 'HP', NULL, 'VNB3B29207', NULL, '2015-04-08', '0000-00-00', '1403', NULL, NULL, NULL, '', 'Chief Ausdemore', NULL, '10.3.1.236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MPC468', 0, 'Yes', '2153279000720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Station 1', NULL, NULL, NULL, NULL, '[]', '2016-12-05 23:19:23', '2016-12-05 23:19:23'),
(19, '27', 'NPI2250CE', 'Printer', 'LaserJet 200 color M251nw', 'HP', NULL, 'VNB3B29207', NULL, '2015-04-08', '0000-00-00', '1403', NULL, NULL, NULL, '', 'Chief Ausdemore', NULL, '10.3.1.236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MPC468', 0, 'Yes', '2153279000720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Station 1', NULL, NULL, NULL, NULL, '[]', '2016-12-05 23:19:50', '2016-12-05 23:19:50'),
(20, '27', 'NPI2250CE', 'Printer', 'LaserJet 200 color M251nw', 'HP', NULL, 'VNB3B29207', NULL, '2015-04-08', '0000-00-00', '1403', NULL, NULL, NULL, '', 'Chief Ausdemore', NULL, '10.3.1.236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MPC468', 0, 'Yes', '2153279000720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Station 1', NULL, NULL, NULL, NULL, '[]', '2016-12-05 23:20:10', '2016-12-05 23:20:10'),
(21, '2', NULL, 'Portable Radio', 'pr-23392', 'Motorola', NULL, '123456789', NULL, '2016-10-12', '0000-00-00', '5000', NULL, NULL, NULL, 'please change vendor names to realistic ones', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'long range radio', NULL, 'rig_5 radio', '12', '2', 'Spare', '3', 'Station 5', '1', '23231', '22', 'Midwest Technology Solutions', '[]', '2016-12-07 05:57:25', '2016-12-07 05:57:25'),
(22, '15', NULL, 'InMotion', '100', NULL, 'Texas Instruments', 'HS-4534', NULL, '0000-00-00', '0000-00-00', NULL, 2147483647, NULL, NULL, 'IMEI has letter in it, need to change the datatype, add as an issue at the Yodiz', NULL, NULL, NULL, '0024E60051EC', NULL, NULL, NULL, NULL, '3.1.4.2', NULL, '362', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 'In-repair', NULL, NULL, NULL, NULL, '22', 'Midwest Technology Solutions', '["Federal Grant","Sarpy County"]', '2016-12-08 22:35:36', '2016-12-08 22:35:36'),
(23, '10', NULL, 'HPD', 'HPD 1000', 'Motorola', NULL, '153CJV0205', NULL, '0000-00-00', '2017-02-15', NULL, NULL, NULL, NULL, '', NULL, NULL, '10.4.5.123', NULL, NULL, NULL, NULL, NULL, '10', '4456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 'Station 5', NULL, NULL, '21', 'Dell Marketing LP', '["Federal Grant"]', '2016-12-10 19:20:47', '2016-12-10 19:20:47'),
(24, '15', NULL, 'InMotion', '100', NULL, 'Texas Instruments', 'HS-4534', NULL, '0000-00-00', '0000-00-00', NULL, 2147483647, NULL, NULL, 'IMEI has letter in it, need to change the datatype, add as an issue at the Yodiz', NULL, NULL, NULL, '0024E60051EC', NULL, NULL, NULL, NULL, '3.1.4.2', NULL, '362', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Available', NULL, NULL, NULL, NULL, '22', 'Midwest Technology Solutions', '["Federal Grant","Sarpy County"]', '2016-12-10 19:20:59', '2016-12-10 19:20:59'),
(25, '24', NULL, 'Sim Card', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '', NULL, NULL, '166.156.103.237', NULL, NULL, '89148000000000000000', '402-810-1133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-10 19:21:17', '2016-12-10 19:21:17'),
(26, '26', NULL, 'Multi-Tech Modem', 'MTD-EV3', NULL, NULL, '5266496K', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 'E362', 'A1000032B3EC85', '402-619-3849', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-10 19:21:38', '2016-12-10 19:21:38'),
(27, '22', NULL, 'Dock', '7160-0515-03', 'Gamber-Jonhson', NULL, 'C21314AAW010', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Available', NULL, NULL, NULL, NULL, '21', 'Dell Marketing LP', '["Sarpy County"]', '2016-12-10 19:21:53', '2016-12-10 19:21:53'),
(28, '30', NULL, 'Drone', '', '', NULL, '', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-10 19:22:25', '2016-12-10 19:22:25'),
(29, '25', NULL, 'Trimble GPS Unit', 'Placer Gold', 'Trimble', NULL, 'X0123', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NEMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-10 19:22:54', '2016-12-10 19:22:54'),
(30, '21', 'OFD-EMS-MASTER', 'Mobile Computer', 'Getac', 'V110', NULL, 'RF139V0199', 0, '2014-04-05', '0000-00-00', '48976', 2147483647, 'ePCR', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-10 19:23:11', '2016-12-10 19:23:11'),
(31, '27', 'NPI2250CE', 'Printer', 'LaserJet 200 color M251nw', 'HP', NULL, 'VNB3B29207', NULL, '2015-04-08', '0000-00-00', '1403', NULL, NULL, NULL, '', 'Chief Ausdemore', NULL, '10.3.1.236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MPC468', 0, 'Yes', '2153279000720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Station 1', NULL, NULL, NULL, NULL, '[]', '2016-12-10 19:24:02', '2016-12-10 19:24:02'),
(32, '10', NULL, 'HPD', 'HPD 1000', 'Motorola', NULL, '153CJV0205', NULL, '0000-00-00', '2017-02-15', NULL, NULL, NULL, NULL, '', NULL, NULL, '10.4.5.123', NULL, NULL, NULL, NULL, NULL, '10', '4456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Station 1', NULL, NULL, '21', 'Dell Marketing LP', '[]', '2016-12-10 19:25:08', '2016-12-10 19:25:08'),
(33, '14', 'FIRE-ADMN-D026', 'Desktop Computer', 'Optiplex 760', 'Dell', NULL, 'FIRE-ADMN-D026', NULL, '2014-07-20', '0000-00-00', '1353', NULL, NULL, 'windows 7', '', NULL, NULL, '10.3.1.125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dual 3.0 Ghz', '4 gb', 'OFD-214123134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '23231', NULL, NULL, '[]', '2016-12-10 19:25:21', '2016-12-10 19:25:21'),
(34, '27', 'NPI2250CE', 'Printer', 'LaserJet 200 color M251nw', 'HP', NULL, 'VNB3B29207', NULL, '2015-04-08', '0000-00-00', '$1403.00', NULL, NULL, NULL, '', 'Chief Ausdemore', NULL, '10.3.1.236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MPC468', 0, 'Yes', '2153279000720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Station 1', NULL, NULL, NULL, NULL, '[]', '2016-12-10 19:25:34', '2016-12-10 19:25:34'),
(35, '12', 'BAT 1', 'IPad', 'AirPad 2', 'Apple', NULL, 'DLXQ11TJG5YP', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, 'ipad for medic units, using its 3rd charger', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, '4023784546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '89148000001844400000', '356969062471434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 'Station 5', NULL, NULL, NULL, NULL, '[]', '2016-12-10 19:25:54', '2016-12-10 19:25:54'),
(36, '14', 'FIRE-ADMN-D026', 'Desktop Computer', 'Optiplex 760', 'Dell', NULL, 'FIRE-ADMN-D026', NULL, '2014-07-20', '0000-00-00', '1353', NULL, NULL, 'windows 7', '', NULL, NULL, '10.3.1.125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dual 3.0 Ghz', '4 gb', 'OFD-214123134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 'In-repair', NULL, NULL, '1', '23231', NULL, NULL, '[]', '2016-12-10 19:26:16', '2016-12-10 19:26:16'),
(37, '13', NULL, 'Computer Monitor', 'E221', NULL, NULL, '123456', NULL, '2016-02-01', '0000-00-00', '300', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Available', NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2016-12-10 19:26:26', '2016-12-10 19:26:26'),
(38, '23', NULL, 'Netmotion', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, 'user id need to be changed', 'Engine21', 'ofdeng29999', '10.4.1.523', NULL, '10.5.6.123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', '67142', NULL, NULL, '["Sarpy County"]', '2016-12-10 19:26:40', '2016-12-10 19:26:40'),
(39, '14', 'FIRE-ADMN-D026', 'Desktop Computer', 'Optiplex 760', 'Dell', NULL, 'FIRE-ADMN-D026', NULL, '2014-07-20', '0000-00-00', '1353', NULL, NULL, 'windows 7', '', NULL, NULL, '10.3.1.125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dual 3.0 Ghz', '4 gb', 'OFD-214123134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 'In-repair', '1', 'Station 1', NULL, NULL, NULL, NULL, '[]', '2016-12-10 19:28:05', '2016-12-10 19:28:05'),
(40, '13', NULL, 'Computer Monitor', 'E221', NULL, NULL, '123456', NULL, '2016-02-01', '0000-00-00', '300', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Available', '1', 'Station 1', NULL, NULL, NULL, NULL, '[]', '2016-12-10 19:28:38', '2016-12-10 19:28:38'),
(41, '26', NULL, 'Multi-Tech Modem', 'MTD-EV3', NULL, NULL, '5266496K', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 'E362', 'A1000032B3EC85', '402-619-3849', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Station 1', '1', '23231', NULL, NULL, '[]', '2016-12-10 19:29:12', '2016-12-10 19:29:12'),
(42, '10', NULL, 'HPD', 'HPD 1000', 'Motorola', NULL, '153CJV0205', NULL, '0000-00-00', '2017-02-15', NULL, NULL, NULL, NULL, '', NULL, NULL, '10.4.5.123', NULL, NULL, NULL, NULL, NULL, '10', '4456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 'In-repair', '1', 'Station 1', NULL, NULL, '21', 'Dell Marketing LP', '[]', '2016-12-10 20:35:42', '2016-12-10 20:35:42'),
(43, '23', NULL, 'Netmotion', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, 'user id need to be changed', 'Engine21', 'ofdeng29999', '10.4.1.523', NULL, '10.5.6.123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 'In-repair', NULL, NULL, '7', '67142', NULL, NULL, '["Sarpy County"]', '2016-12-10 20:36:11', '2016-12-10 20:36:11'),
(44, '2', NULL, 'Portable Radio', 'pr-23392', 'Motorola', NULL, '123456789', NULL, '2016-10-12', '0000-00-00', '5000', NULL, NULL, NULL, 'please change vendor names to realistic ones', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'long range radio', NULL, 'rig_5 radio', '12', '2', 'Spare', '3', 'Station 5', '1', '23231', '22', 'Midwest Technology Solutions', '[]', '2016-12-10 20:36:31', '2016-12-10 20:36:31'),
(45, '20', NULL, 'HPD', 'HPD-TS-1270', 'Texas Instruments', NULL, '312413431', NULL, '0000-00-00', '2017-07-31', NULL, NULL, NULL, NULL, 'need firmware version update', NULL, NULL, '192.231.23.15', NULL, NULL, NULL, NULL, NULL, 'v2', 'hpd_838120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Available', NULL, NULL, '2', '23421', '22', 'Midwest Technology Solutions', '["Federal Grant"]', '2016-12-10 20:36:43', '2016-12-10 20:36:43'),
(46, '13', NULL, 'Computer Monitor', 'E221', NULL, NULL, '123456', NULL, '2016-02-01', '0000-00-00', '$300.00', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Available', '1', 'Station 1', NULL, NULL, NULL, NULL, '[]', '2016-12-11 00:14:09', '2016-12-11 00:14:09'),
(47, '36', NULL, 'Cad', NULL, NULL, 'a', NULL, NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Available', '20', 'Station 52', '1', '23231', '21', 'Dell Marketing LP', '["Corporate Sponsorship"]', '2016-12-11 15:56:47', '2016-12-11 15:56:47'),
(48, '2', NULL, 'Portable Radio', 'pr-23392', 'Motorola', NULL, '123456789', NULL, '2016-10-12', '0000-00-00', '5000', NULL, NULL, NULL, 'please change vendor names to realistic ones', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'long range radio', NULL, 'rig_5 radio', '12', '2', 'Spare', '3', 'Station 5', '1', '50385', '22', 'Midwest Technology Solutions', '["Sarpy County"]', '2016-12-12 16:44:39', '2016-12-12 16:44:39'),
(49, '35', '<script>alert(1)</script>', 'Desktop Computer', '<script>alert(1)</script>', '<script>alert(1)</script>', NULL, '<script>alert(1)</script>', NULL, '2014-12-08', '0000-00-00', '<script>alert(1)</script>', NULL, NULL, '<script>alert(1)</script>', '<script>alert(1)</script>', NULL, NULL, '312.453.823.888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<script>alert(1)</script>', '<script>alert(1)</script>', '<script>alert(1)</script>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Available', '17', 'Station 41', '1', '50385', '5', 'Ford', '["Omaha "]', '2016-12-12 22:31:22', '2016-12-12 22:31:22'),
(50, '20', NULL, 'HPD', 'HPD-TS-1270', 'Texas Instruments', NULL, '312413431', NULL, '0000-00-00', '2017-07-31', NULL, NULL, NULL, NULL, 'need firmware version update', NULL, NULL, '192.231.23.15', NULL, NULL, NULL, NULL, NULL, 'v2', 'hpd_838120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Available', NULL, NULL, '2', '50386', '22', 'Midwest Technology Solutions', '["Sarpy County"]', '2016-12-12 22:32:25', '2016-12-12 22:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `all_assets`
--

CREATE TABLE IF NOT EXISTS `all_assets` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `make` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_imei` int(11) DEFAULT NULL,
  `date_purchased` date DEFAULT NULL,
  `warranty_date` date DEFAULT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imei` int(11) DEFAULT NULL,
  `mobile_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `ntm_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ntm_pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cad_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sim_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sim_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gps_protocol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firmware_ver` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `radio_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meid_model_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multi_tech_sim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mdc_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mdc_pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `network_status` tinyint(4) DEFAULT '0',
  `drop_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `switch_serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `screen_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ac_adapter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stylus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seid_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tmv_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tmv_alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `radio_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tier_level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_document` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `personnel_id` int(10) unsigned DEFAULT NULL,
  `status_id` int(10) unsigned DEFAULT NULL,
  `vehicle_id` int(10) unsigned DEFAULT NULL,
  `vendor_id` int(10) unsigned DEFAULT NULL,
  `station_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `all_assets`
--

INSERT INTO `all_assets` (`id`, `name`, `asset_type`, `model`, `make`, `manu`, `serial_number`, `model_imei`, `date_purchased`, `warranty_date`, `cost`, `imei`, `mobile_type`, `os`, `comments`, `ntm_uid`, `ntm_pass`, `ip_address`, `mac`, `cad_ip`, `sim_id`, `sim_phone`, `gps_protocol`, `firmware_ver`, `radio_id`, `meid_model_num`, `meid`, `phone`, `multi_tech_sim`, `mdc_id`, `mdc_pass`, `cpu`, `ram`, `asset_tag`, `network_status`, `drop_status`, `switch_serial`, `screen_size`, `ac_adapter`, `stylus`, `seid_num`, `emid`, `tmv_num`, `tmv_alias`, `radio_desc`, `tier_level`, `system_alias`, `system_id`, `asset_document`, `asset_image`, `created_at`, `updated_at`, `deleted_at`, `personnel_id`, `status_id`, `vehicle_id`, `vendor_id`, `station_id`) VALUES
(2, NULL, 'Portable Radio', 'pr-23392', 'Motorola', NULL, '123456789', NULL, '2016-10-12', NULL, '5000', NULL, NULL, NULL, 'please change vendor names to realistic ones', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'long range radio', NULL, 'rig_5 radio', '12', NULL, NULL, '2016-11-11 06:11:38', '2016-12-06 05:00:02', NULL, NULL, 2, 1, 22, 3),
(3, NULL, 'Dock', 'zxzxz', NULL, 'zxzxz', 'zzxz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-11 06:15:44', '2016-11-17 09:22:54', '2016-11-17 09:22:54', NULL, NULL, NULL, NULL, NULL),
(4, '', 'Mobile Computer', '', NULL, NULL, '1111111111', 0, NULL, NULL, '', 0, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-11 06:30:39', '2016-11-16 11:38:13', '2016-11-16 11:38:13', NULL, NULL, NULL, NULL, NULL),
(5, '', 'Laptop', '', NULL, '', '11111111', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, '111133335555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 0, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-11 06:31:13', '2016-11-16 11:38:19', '2016-11-16 11:38:19', NULL, NULL, NULL, NULL, NULL),
(7, '9898', 'Laptop', '9898', NULL, '9898', '98998', NULL, '2016-10-16', NULL, '9898', NULL, NULL, NULL, '', NULL, NULL, '9898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '988', '9898', NULL, NULL, NULL, NULL, NULL, NULL, '9898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-14 10:14:35', '2016-11-17 09:23:08', '2016-11-17 09:23:08', NULL, NULL, NULL, NULL, NULL),
(8, NULL, 'Cad', NULL, NULL, 'kkj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kjjkkj', 'kj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-14 10:20:12', '2016-11-17 09:23:00', '2016-11-17 09:23:00', NULL, NULL, NULL, NULL, NULL),
(9, NULL, 'Cad', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fdfdfdgfd', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-15 06:08:53', '2016-11-16 22:04:23', '2016-11-16 22:04:23', NULL, NULL, NULL, NULL, NULL),
(10, NULL, 'HPD', 'HPD 1000', 'Motorola', NULL, '153CJV0205', NULL, NULL, '2017-02-15', NULL, NULL, NULL, NULL, '', NULL, NULL, '10.4.5.123', NULL, NULL, NULL, NULL, NULL, '10', '4456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-15 06:28:24', '2016-12-11 01:25:08', NULL, NULL, 3, NULL, 21, 1),
(11, NULL, 'Cad', NULL, NULL, 'fddsaf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id_mdc_we_are_the', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-15 06:37:00', '2016-11-17 09:23:14', '2016-11-17 09:23:14', NULL, NULL, NULL, NULL, NULL),
(12, 'BAT 1', 'IPad', 'AirPad 2', 'Apple', NULL, 'DLXQ11TJG5YP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ipad for medic units, using its 3rd charger', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, '4023784546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '89148000001844400000', '356969062471434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-16 10:53:05', '2016-12-11 01:25:54', NULL, NULL, 3, NULL, NULL, 3),
(13, NULL, 'Computer Monitor', 'Samsung 72', NULL, NULL, 'SN-123210931133', NULL, '2016-02-01', NULL, '$300.00', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-16 11:22:16', '2016-12-11 06:14:09', NULL, NULL, 2, NULL, NULL, 11),
(14, 'FIRE-ADMN-D026', 'Desktop Computer', 'Optiplex 760', 'Dell', NULL, 'FIRE-ADMN-D026', NULL, '2014-07-20', NULL, '$1,353.00', NULL, NULL, 'windows 7', '', NULL, NULL, '10.3.1.125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dual 3.0 Ghz', '4 gb', 'OFD-214123134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-16 11:24:35', '2016-12-11 01:28:05', NULL, NULL, 3, NULL, NULL, 1),
(15, NULL, 'InMotion', '100', NULL, 'Texas Instruments', 'HS-4534', NULL, NULL, NULL, NULL, 2147483647, NULL, NULL, 'IMEI has letter in it, need to change the datatype, add as an issue at the Yodiz', NULL, NULL, NULL, '0024E60051EC', NULL, NULL, NULL, NULL, '3.1.4.2', NULL, '362', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-16 11:27:36', '2016-12-11 01:20:59', NULL, NULL, 1, NULL, 22, 1),
(16, NULL, 'X-Series', NULL, NULL, NULL, 'SN-123210931231234', NULL, '2013-12-01', NULL, '1900', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-16 11:44:32', '2016-11-17 09:23:36', '2016-11-17 09:23:36', NULL, NULL, NULL, NULL, NULL),
(17, NULL, 'Team Viewer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'ofd_admin23', 'dsfjXewr1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TM190283', 'tmv_12', NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-16 11:45:12', '2016-11-17 09:23:21', '2016-11-17 09:23:21', NULL, NULL, NULL, NULL, NULL),
(18, 'pr1', 'Printer', '1231', 'HP', NULL, '123123123123', NULL, NULL, NULL, '', NULL, NULL, NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'g', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-16 19:58:13', '2016-11-16 22:04:35', '2016-11-16 22:04:35', NULL, NULL, NULL, NULL, NULL),
(19, NULL, 'Cad', NULL, NULL, 'B1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fsdfdsfddsffd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DD11', '1122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-16 22:01:40', '2016-11-17 09:23:30', '2016-11-17 09:23:30', NULL, NULL, NULL, NULL, NULL),
(20, NULL, 'HPD', 'HPD-TS-1270', 'Texas Instruments', NULL, '312413431', NULL, NULL, '2017-07-31', NULL, NULL, NULL, NULL, 'need firmware version update, testing ', NULL, NULL, '192.231.23.15', NULL, NULL, NULL, NULL, NULL, 'v2', 'hpd_838120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-16 22:06:19', '2016-12-13 04:32:25', NULL, NULL, 1, 2, 22, NULL),
(21, 'OFD-EMS-MASTER', 'Mobile Computer', 'Getac', 'V110', NULL, 'RF139V0199', 0, '2014-04-05', NULL, '48976', 2147483647, 'ePCR', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-17 09:37:07', '2016-12-11 01:23:11', NULL, NULL, 1, 1, 22, NULL),
(22, NULL, 'Dock', '7160-0515-03', 'Gamber-Jonhson', NULL, 'C21314AAW010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-17 10:11:47', '2016-12-11 01:21:53', NULL, NULL, 2, 1, 21, 1),
(23, NULL, 'Netmotion', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user id need to be changed', 'Engine21', 'ofdeng29999', '10.4.1.523', NULL, '10.5.6.123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-17 10:13:07', '2016-12-11 01:26:40', NULL, NULL, 3, 7, NULL, NULL),
(24, NULL, 'Sim Card', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '166.156.103.237', NULL, NULL, '89148000000000000000', '402-810-1133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-17 10:14:15', '2016-12-11 01:21:17', NULL, NULL, 1, 1, NULL, 1),
(25, NULL, 'Trimble GPS Unit', 'Placer Gold', 'Trimble', NULL, 'X0123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NEMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-17 10:15:23', '2016-12-11 01:22:54', NULL, NULL, 1, 1, 21, 1),
(26, NULL, 'Multi-Tech Modem', 'MTD-EV3', NULL, NULL, '5266496K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 'E362', 'A1000032B3EC85', '402-619-3849', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-17 10:17:22', '2016-12-11 01:29:12', NULL, NULL, 1, 1, NULL, 1),
(27, 'NPI2250CE', 'Printer', 'LaserJet 200 color M251nw', 'HP', NULL, 'VNB3B29207', NULL, '2015-04-08', NULL, '$1403.00', NULL, NULL, NULL, '', 'Chief Ausdemore', NULL, '10.3.1.236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MPC468', 0, 'Yes', '2153279000720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-17 10:22:25', '2016-12-11 01:25:34', NULL, NULL, 3, NULL, NULL, 1),
(28, 'test', 'Drone', '10000', 'X', '', '12321312', NULL, NULL, NULL, '', 0, '', '', 'test', NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-06 04:53:41', '2016-12-06 05:01:35', NULL, NULL, 1, 11, 21, 3),
(30, '', 'Drone', '', '', '', '', NULL, NULL, NULL, '', 0, '', '', '', NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-07 21:15:52', '2016-12-11 01:22:25', NULL, NULL, NULL, 1, NULL, 1),
(31, NULL, 'Drone', '', '', NULL, '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-07 21:16:32', '2016-12-07 21:16:32', NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, 'Drone', '', '', NULL, '567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-07 21:17:50', '2016-12-07 21:17:50', NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, 'Drone', 'X1', 'Ford', NULL, '7890123', NULL, NULL, '2016-01-02', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-07 21:19:41', '2016-12-07 21:19:41', NULL, NULL, 1, 2, 5, 1),
(34, NULL, 'misc', '', 'W', NULL, '4568', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-07 21:21:35', '2016-12-07 21:21:35', NULL, NULL, NULL, NULL, NULL, NULL),
(35, '<script>alert(1)</script>', 'Desktop Computer', '<script>alert(1)</script>', '<script>alert(1)</script>', NULL, '<script>alert(1)</script>', NULL, '2014-12-08', NULL, '<script>alert(1)</script>', NULL, NULL, '<script>alert(1)</script>', '<script>alert(1)</script>', NULL, NULL, '312.453.823.888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<script>alert(1)</script>', '<script>alert(1)</script>', '<script>alert(1)</script>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-11 21:50:13', '2016-12-11 21:50:13', NULL, NULL, 1, 1, 5, 17),
(36, NULL, 'Cad', NULL, NULL, 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-11 21:53:31', '2016-12-11 21:53:31', NULL, NULL, 1, 1, 21, 20),
(37, NULL, 'Cad', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-11 21:59:30', '2016-12-11 21:59:30', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_grant`
--

CREATE TABLE IF NOT EXISTS `asset_grant` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `grant_id` int(10) unsigned DEFAULT NULL,
  `all_asset_id` int(10) unsigned DEFAULT NULL,
  `station_id` int(10) unsigned DEFAULT NULL,
  `vehicle_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `asset_grant`
--

INSERT INTO `asset_grant` (`id`, `created_at`, `updated_at`, `deleted_at`, `grant_id`, `all_asset_id`, `station_id`, `vehicle_id`) VALUES
(6, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(7, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(8, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(9, NULL, NULL, NULL, 15, NULL, NULL, NULL),
(19, NULL, NULL, NULL, 2, 15, NULL, NULL),
(21, NULL, NULL, NULL, 2, 23, NULL, NULL),
(22, NULL, NULL, NULL, 2, 22, NULL, NULL),
(23, NULL, NULL, NULL, 3, 33, NULL, NULL),
(24, NULL, NULL, NULL, 2, 10, NULL, NULL),
(25, NULL, NULL, NULL, 2, 2, NULL, NULL),
(26, NULL, NULL, NULL, 2, 20, NULL, NULL),
(27, NULL, NULL, NULL, 3, 35, NULL, NULL),
(28, NULL, NULL, NULL, 16, 36, NULL, NULL),
(32, NULL, NULL, NULL, 21, NULL, NULL, 3),
(33, NULL, NULL, NULL, 21, NULL, NULL, 4),
(34, NULL, NULL, NULL, 21, NULL, NULL, 7),
(35, NULL, NULL, NULL, 21, NULL, NULL, 8),
(36, NULL, NULL, NULL, 21, NULL, NULL, 9),
(37, NULL, NULL, NULL, 21, NULL, NULL, 10),
(38, NULL, NULL, NULL, 21, NULL, NULL, 11),
(39, NULL, NULL, NULL, 21, NULL, NULL, 13),
(40, NULL, NULL, NULL, 21, NULL, NULL, 14),
(41, NULL, NULL, NULL, 15, 35, NULL, NULL),
(42, NULL, NULL, NULL, 2, NULL, NULL, 2),
(43, NULL, NULL, NULL, 15, NULL, NULL, 2),
(44, NULL, NULL, NULL, 2, NULL, NULL, 1),
(45, NULL, NULL, NULL, 3, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `grants`
--

CREATE TABLE IF NOT EXISTS `grants` (
  `id` int(10) unsigned NOT NULL,
  `grant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  `grant_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_matures` date DEFAULT NULL,
  `grant_value` decimal(15,2) DEFAULT NULL,
  `grant_comments` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grants`
--

INSERT INTO `grants` (`id`, `grant_name`, `date_issued`, `grant_type`, `date_matures`, `grant_value`, `grant_comments`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Federal Grant', '2017-04-29', 'Federal Government', '2018-11-01', '250000.00', '', '2016-11-02 10:36:01', '2016-12-10 09:56:33', '2016-12-10 09:56:33'),
(2, 'Sarpy County', '2016-11-12', 'Functional ', '2016-11-10', '90000.00', '', '2016-11-04 04:20:49', '2016-11-17 05:43:55', NULL),
(3, 'Omaha ', '2016-11-07', 'Technical ', '2016-11-30', '700000.00', '', '2016-11-04 04:24:09', '2016-11-04 05:01:32', NULL),
(4, 'South beach ', '2016-12-01', 'Functional ', '2017-03-09', '1000000.00', 'No comments  ', '2016-11-04 04:31:21', '2016-11-08 04:00:51', '2016-11-08 04:00:51'),
(5, 'Omaha ', '2016-11-07', 'Technical ', '2016-11-30', '700000.00', '', '2016-11-04 04:39:52', '2016-11-16 09:54:36', '2016-11-16 09:54:36'),
(6, 'Nebraska ', '2016-08-25', 'Technical ', '2018-08-19', '60001.00', '', '2016-11-04 04:59:06', '2016-11-17 05:44:15', '2016-11-17 05:44:15'),
(7, 'state fund', '2016-11-09', 'state', '2016-11-09', '10000.00', 'afsdfadf3rrwqr', '2016-11-08 03:55:39', '2016-11-17 05:44:22', '2016-11-17 05:44:22'),
(8, 'Federal Grant 2', '2016-11-21', 'Federal Government', '2016-11-02', '1500000.00', '', '2016-11-08 03:56:38', '2016-11-17 09:00:05', '2016-11-17 09:00:05'),
(15, 'State Grant', '2016-11-16', 'State', '2016-11-30', '1000000.00', '', '2016-11-17 09:04:02', '2016-11-18 03:55:02', NULL),
(16, 'Corporate Sponsorship', '2016-11-30', 'Corporate', '2017-03-24', '3000000.00', 'new grant', '2016-11-17 09:05:00', '2016-11-17 09:05:00', NULL),
(17, 'County Grant', '2016-11-01', '', NULL, '1000120.00', 'test the delete', '2016-11-17 22:42:37', '2016-12-06 04:15:45', '2016-12-06 04:15:45'),
(18, 'Grant 2341', '2016-11-22', 'Federal', '2016-11-30', '1200000.00', '', '2016-11-18 03:54:06', '2016-12-05 18:49:15', NULL),
(19, 'State Grant2', '2016-11-24', 'State', '2017-01-20', '123333.00', '', '2016-11-18 04:39:23', '2016-11-18 04:39:50', NULL),
(20, 'AFG', '2016-11-18', 'Fire', '2016-11-19', '1000.00', '', '2016-11-18 04:39:47', '2016-11-18 04:39:47', NULL),
(21, 'N/A', '2016-01-01', '', NULL, '0.00', '', '2016-12-12 22:07:19', '2016-12-12 22:07:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_09_21_083935_create_stations_table', 1),
(4, '2016_09_22_084138_create_vehicles_table', 1),
(5, '2016_10_04_024705_create_personnels_table', 1),
(6, '2016_10_08_054358_create_all_assets_table', 1),
(7, '2016_10_09_010113_create_grants_table', 1),
(8, '2016_10_12_055601_create_unit_types_table', 1),
(9, '2016_10_14_012434_create_statuses_table', 1),
(10, '2016_10_14_072534_create_types_table', 1),
(11, '2016_10_15_024211_create_vendors_table', 1),
(12, '2016_10_19_062602_update_all_assets_table', 1),
(13, '2016_10_19_062602_update_vehicles_table', 1),
(14, '2016_10_25_060010_create_related_files_table', 1),
(15, '2016_10_26_010112_create_assetgrant_table', 1),
(16, '2016_11_16_062604_update_vehicles_vendor_table', 1),
(17, '2016_11_16_074832_update_1479282512_stations_table', 1),
(18, '2016_11_22_102236_update_related_files', 1),
(19, '2016_11_24_014344_create_vehicles_History_table', 1),
(20, '2016_11_25_040100_create_stations_History_table', 1),
(21, '2016_11_25_054210_create_allassets_History_table', 1),
(22, '2016_11_28_073802_create_todos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personnels`
--

CREATE TABLE IF NOT EXISTS `personnels` (
  `id` int(10) unsigned NOT NULL,
  `ofd_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ofd_full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ofd_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ofd_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ofd_role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `related_files`
--

CREATE TABLE IF NOT EXISTS `related_files` (
  `id` int(10) unsigned NOT NULL,
  `related_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `related_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `station_id` int(10) unsigned DEFAULT NULL,
  `allasset_id` int(10) unsigned DEFAULT NULL,
  `vehicle_id` int(10) unsigned DEFAULT NULL,
  `grant_id` int(10) unsigned DEFAULT NULL,
  `vendor_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `related_files`
--

INSERT INTO `related_files` (`id`, `related_file`, `related_image`, `created_at`, `updated_at`, `deleted_at`, `station_id`, `allasset_id`, `vehicle_id`, `grant_id`, `vendor_id`) VALUES
(1, '1475407155527.jpg', NULL, '2016-12-06 05:35:45', '2016-12-06 05:35:45', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '1475444437241.png', NULL, '2016-12-06 05:35:45', '2016-12-06 05:35:45', NULL, NULL, NULL, NULL, NULL, NULL),
(3, '1475532643804.jpg', NULL, '2016-12-06 05:35:45', '2016-12-06 05:35:45', NULL, NULL, NULL, NULL, NULL, NULL),
(4, '1475539315439.jpg', NULL, '2016-12-06 05:35:45', '2016-12-06 05:35:45', NULL, NULL, NULL, NULL, NULL, NULL),
(5, '1475573177267.jpg', NULL, '2016-12-06 05:35:45', '2016-12-06 05:35:45', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stationhis`
--

CREATE TABLE IF NOT EXISTS `stationhis` (
  `id` int(10) unsigned NOT NULL,
  `station_id` int(11) DEFAULT NULL,
  `station_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `station_number` int(11) DEFAULT NULL,
  `station_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `district` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grant_id` int(11) DEFAULT NULL,
  `grant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stationhis`
--

INSERT INTO `stationhis` (`id`, `station_id`, `station_name`, `station_number`, `station_date`, `address`, `city`, `zipcode`, `district`, `vendor_id`, `vendor_name`, `grant_id`, `grant_name`, `created_at`, `updated_at`) VALUES
(1, 11, 'Station 222', 222, '2016-11-26', '2402 ridgeview dr,', 'Omaha', 54701, 'douglas', NULL, NULL, 16, 'Corporate Sponsorship', '2016-12-05 12:58:05', '2016-12-05 12:58:05'),
(2, 11, 'Station 222', 222, '2016-11-26', '2402 ridgeview dr,', 'Omaha', 54701, 'douglas', NULL, NULL, 16, 'Corporate Sponsorship', '2016-12-05 12:58:40', '2016-12-05 12:58:40'),
(3, 1, 'Station 1', 1, '1967-03-31', '1516 Jackson St.', 'Omaha', 68102, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-05 13:04:53', '2016-12-05 13:04:53'),
(4, 13, 'station 777', 777, '2016-12-15', '7 yyy dr', 'omaha', 56473, 'yyy', NULL, NULL, NULL, NULL, '2016-12-05 21:26:42', '2016-12-05 21:26:42'),
(5, 12, 'station8', 88, '2016-12-16', '556 g st', 'omaha', 68754, 'yy', NULL, NULL, 1, 'Federal Grant', '2016-12-05 21:26:47', '2016-12-05 21:26:47'),
(6, 6, 'Station 200', 200, '2016-11-16', '7520 Jackson Street 37', 'omaha', 68114, 'ggfg', NULL, NULL, NULL, NULL, '2016-12-05 22:07:53', '2016-12-05 22:07:53'),
(7, 6, 'Station 200', 200, '2016-11-16', '7520 Jackson Street 37', 'omaha', 68114, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-05 22:08:05', '2016-12-05 22:08:05'),
(8, 3, 'Station 5', 5, '2016-11-15', '2209 Florence Blvd. ', 'Omaha', 68110, 'data missing', NULL, NULL, NULL, NULL, '2016-12-05 22:08:20', '2016-12-05 22:08:20'),
(9, 4, 'Training', 101, '2016-11-01', '11616 Rainwood Road ', 'Omaha', 68142, 'data missing', NULL, NULL, 8, NULL, '2016-12-05 22:08:31', '2016-12-05 22:08:31'),
(10, 5, 'FIU', 102, '2016-11-01', '3126 South 16th Street', 'Omaha', 68108, 'data missing', NULL, NULL, NULL, NULL, '2016-12-05 22:08:38', '2016-12-05 22:08:38'),
(11, 2, 'Station 3', 3, '2001-07-10', '3126 South 16th Street', 'Omaha', 68108, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-05 22:43:37', '2016-12-05 22:43:37'),
(12, 2, 'Station 3', 3, '2001-07-10', '3126 South 16th Street', 'Omaha', 68108, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-05 22:43:59', '2016-12-05 22:43:59'),
(13, 2, 'Station 3', 3, '2001-07-10', '3126 South 16th Street', 'Omaha', 68108, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-05 22:45:19', '2016-12-05 22:45:19'),
(14, 1, 'Station 1', 1, '1967-03-31', '1516 Jackson St.', 'Omaha', 78102, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-05 22:47:39', '2016-12-05 22:47:39'),
(15, 1, 'Station 1', 1, '1967-03-31', '1515 Jackson St.', 'Omaha', 78102, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-08 15:28:26', '2016-12-08 15:28:26'),
(16, 1, 'Station 1', 1, '1967-03-31', '1516 Jackson St.', 'Omaha', 68102, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-08 15:31:54', '2016-12-08 15:31:54'),
(17, 3, 'Station 5', 5, '2016-11-15', '2209 Florence Blvd. ', 'Omaha', 68110, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-08 15:32:15', '2016-12-08 15:32:15'),
(18, 3, 'Station 5', 5, '2016-11-15', '2209 Florence Blvd. ', 'Omaha', 68110, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-08 15:34:27', '2016-12-08 15:34:27'),
(19, 4, 'Training', 101, '2016-11-01', '11616 Rainwood Road ', 'Omaha', 68142, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-08 15:34:53', '2016-12-08 15:34:53'),
(20, 5, 'FIU', 102, '2016-11-01', '3126 South 16th Street', 'Omaha', 68108, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-08 15:35:15', '2016-12-08 15:35:15'),
(21, 10, 'Station 204', 204, '2016-11-16', '7520 Jackson Street 37', 'omaha', 68114, 'OMA', NULL, NULL, 15, 'State Grant', '2016-12-08 15:41:50', '2016-12-08 15:41:50'),
(22, 9, 'Station 203', 203, '2016-11-16', '7520 Jackson Street 37', 'omaha', 68114, 'OMA', NULL, NULL, 15, 'State Grant', '2016-12-08 15:43:11', '2016-12-08 15:43:11'),
(23, 8, 'Station 202', 202, '2016-11-16', '7520 Jackson Street 37', 'omaha', 68114, 'OMA', NULL, NULL, NULL, NULL, '2016-12-08 15:44:45', '2016-12-08 15:44:45'),
(24, 7, 'Station 201', 201, '2016-11-16', '7520 Jackson Street 37', 'omaha', 68114, 'OMA', NULL, NULL, NULL, NULL, '2016-12-08 15:46:04', '2016-12-08 15:46:04'),
(25, 6, 'Station 200', 200, '2016-11-16', '7520 Jackson Street 37', 'omaha', 68114, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-08 15:47:00', '2016-12-08 15:47:00'),
(26, 30, 'TSD', 103, '2016-12-08', '20476 Laramie Road', 'Elkhorn', 68022, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-08 16:09:08', '2016-12-08 16:09:08'),
(27, 30, 'TSD71', 103, '2016-12-08', '20476 Laramie Road', 'Elkhorn', 68022, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-09 14:49:54', '2016-12-09 14:49:54'),
(28, 31, 'TSD78', 104, '2016-12-08', '2909 North 144th Street', 'Omaha', 68116, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-09 14:50:03', '2016-12-09 14:50:03'),
(29, 33, 'Station 301', 301, '2016-12-08', '3126 South 16th Street', 'Omaha', 68108, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-09 14:50:10', '2016-12-09 14:50:10'),
(30, 1, 'Station 1', 1, '1967-03-31', '1516 Jackson St.', 'Omaha', 68102, 'Douglas', NULL, NULL, NULL, NULL, '2016-12-09 20:52:33', '2016-12-09 20:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE IF NOT EXISTS `stations` (
  `id` int(10) unsigned NOT NULL,
  `station_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `station_number` int(11) NOT NULL,
  `station_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` int(11) NOT NULL,
  `district` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `station_note` text COLLATE utf8_unicode_ci,
  `station_document` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `station_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `grant_id` int(10) unsigned DEFAULT NULL,
  `vendor_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `station_name`, `station_number`, `station_date`, `address`, `city`, `zipcode`, `district`, `station_note`, `station_document`, `station_image`, `created_at`, `updated_at`, `deleted_at`, `grant_id`, `vendor_id`) VALUES
(1, 'Station 1', 1, '1967-03-31', '1516 Jackson St.', 'Omaha', 68102, 'Douglas', NULL, '', '', '2016-11-02 10:29:29', '2016-12-10 02:53:29', NULL, NULL, NULL),
(2, 'Station 3', 3, '2001-07-10', '3126 South 16th Street', 'Omaha', 68108, 'Douglas', NULL, '', '', '2016-11-08 07:24:33', '2016-12-09 06:24:26', NULL, NULL, NULL),
(3, 'Station 5', 5, '2016-11-15', '2209 Florence Blvd. ', 'Omaha', 68110, 'Douglas', NULL, '', '', '2016-11-16 11:35:03', '2016-12-06 04:08:20', NULL, NULL, NULL),
(4, 'Training', 101, '2016-11-01', '11616 Rainwood Road ', 'Omaha', 68142, 'Douglas', NULL, '1479336165-MB Armstrong Enhancing Training Outcomes with Gamification Poster.pdf', '1479336165-01.gif', '2016-11-17 04:42:45', '2016-12-06 04:08:31', NULL, NULL, NULL),
(5, 'FIU', 102, '2016-11-01', '3126 South 16th Street', 'Omaha', 68108, 'Douglas', NULL, '', '', '2016-11-17 08:50:51', '2016-12-06 04:08:38', NULL, NULL, NULL),
(6, 'Station 31', 31, '2016-12-08', '4702 South 25th Street', 'Omaha', 68107, 'Douglas', NULL, '', '', '2016-11-17 10:48:00', '2016-12-08 21:47:00', NULL, NULL, NULL),
(7, 'Station 30', 30, '2016-12-08', '6936 "F" Street', 'Omaha', 68117, 'Douglas', NULL, '', '', '2016-11-17 10:53:00', '2016-12-08 21:46:04', NULL, NULL, NULL),
(8, 'Station 24', 24, '2016-12-08', '2304 Fontenelle Blvd', 'Omaha', 68104, 'Douglas', NULL, '', '', '2016-11-17 11:00:03', '2016-12-08 21:44:45', NULL, NULL, NULL),
(9, 'Station 23', 23, '2016-12-08', '9090 North 30th Street', 'Omaha', 68112, 'Douglas', NULL, '', '', '2016-11-17 21:46:31', '2016-12-08 21:43:11', NULL, 15, NULL),
(10, 'Station 22', 22, '2016-12-08', '6310 Lindbergh Plaza', 'Omaha', 68110, 'Douglas', NULL, '', '', '2016-11-17 21:58:54', '2016-12-08 21:41:50', NULL, 15, NULL),
(11, 'Station 222', 222, '2016-11-26', '2402 ridgeview dr,', 'Omaha', 54701, 'douglas', NULL, '', '', '2016-11-27 10:14:44', '2016-12-09 06:24:31', NULL, 16, NULL),
(14, 'Station 21', 21, '2016-12-08', '3454 Ames Ave', 'Omaha', 68111, 'Douglas', NULL, NULL, NULL, '2016-12-08 21:40:06', '2016-12-08 21:40:06', NULL, NULL, NULL),
(15, 'Station 33', 33, '2016-12-08', '3232 South 42nd Street ', 'Omaha', 68105, 'Douglas', NULL, NULL, NULL, '2016-12-08 21:48:55', '2016-12-08 21:48:55', NULL, NULL, NULL),
(16, 'Station 34', 34, '2016-12-08', '956 South 48th Street', 'Omaha', 68106, 'Douglas', NULL, NULL, NULL, '2016-12-08 21:50:20', '2016-12-08 21:50:20', NULL, NULL, NULL),
(17, 'Station 41', 41, '2016-12-08', '4515 North 61st Street', 'Omaha', 68104, 'Douglas', NULL, NULL, NULL, '2016-12-08 21:51:25', '2016-12-08 21:51:25', NULL, NULL, NULL),
(18, 'Station 42', 42, '2016-12-08', '3120 North 102nd Street', 'Omaha', 68134, 'Douglas', NULL, NULL, NULL, '2016-12-08 21:52:58', '2016-12-08 21:52:58', NULL, NULL, NULL),
(19, 'Station 43', 43, '2016-12-08', '5505 North 103rd Street', 'Omaha', 68134, 'Douglas', NULL, NULL, NULL, '2016-12-08 21:53:58', '2016-12-08 21:53:58', NULL, NULL, NULL),
(20, 'Station 52', 52, '2016-12-08', '10727 Pacific Street', 'Omaha', 68114, 'Douglas', NULL, NULL, NULL, '2016-12-08 21:55:06', '2016-12-08 21:55:06', NULL, NULL, NULL),
(21, 'Station 53', 53, '2016-12-08', '8001 Dodge Street', 'Omaha', 68114, 'Douglas', NULL, NULL, NULL, '2016-12-08 21:55:51', '2016-12-08 21:55:51', NULL, NULL, NULL),
(22, 'Station 56', 56, '2016-12-08', '16410 Pacific Street', 'Omaha', 68118, 'Douglas', NULL, NULL, NULL, '2016-12-08 21:56:46', '2016-12-08 21:56:46', NULL, NULL, NULL),
(23, 'Station 60', 60, '2016-12-08', '2929 South 129th Ave', 'Omaha', 68144, 'Douglas', NULL, NULL, NULL, '2016-12-08 21:57:41', '2016-12-08 21:57:41', NULL, NULL, NULL),
(24, 'Station 61', 61, '2016-12-08', '11111 "I" Street', 'Omaha', 68137, 'Douglas', NULL, NULL, NULL, '2016-12-08 21:58:37', '2016-12-08 21:58:37', NULL, NULL, NULL),
(25, 'Station 63', 63, '2016-12-08', '16736 "S" Street', 'Omaha', 68135, 'Douglas', NULL, NULL, NULL, '2016-12-08 21:59:25', '2016-12-08 21:59:25', NULL, NULL, NULL),
(26, 'Station 65', 65, '2016-12-08', '7010 South 142nd Street', 'Omaha', 68138, 'Douglas', NULL, NULL, NULL, '2016-12-08 22:01:13', '2016-12-08 22:01:13', NULL, NULL, NULL),
(27, 'Station 71', 71, '2016-12-08', '20476 Laramie Road', 'Elkhorn', 68022, 'Douglas', NULL, NULL, NULL, '2016-12-08 22:02:43', '2016-12-08 22:02:43', NULL, NULL, NULL),
(28, 'Station 77', 77, '2016-12-08', '20220 Atlas Street', 'Elkhorn', 68030, 'Douglas', NULL, NULL, NULL, '2016-12-08 22:04:02', '2016-12-08 22:04:02', NULL, NULL, NULL),
(29, 'Station 78', 78, '2016-12-08', '2909 North 144th Street', 'Omaha', 68116, 'Douglas', NULL, NULL, NULL, '2016-12-08 22:04:58', '2016-12-08 22:04:58', NULL, NULL, NULL),
(30, 'TSD71', 103, '2016-12-08', '20476 Laramie Road', 'Elkhorn', 68022, 'Douglas', NULL, NULL, NULL, '2016-12-08 22:07:52', '2016-12-11 02:37:59', NULL, NULL, NULL),
(31, 'TSD78', 104, '2016-12-08', '2909 North 144th Street', 'Omaha', 68116, 'Douglas', NULL, NULL, NULL, '2016-12-08 22:11:54', '2016-12-11 02:38:04', NULL, NULL, NULL),
(32, 'Station 10', 10, '2016-12-08', '1606 South 50th Street', 'Omaha', 68106, 'Douglas', NULL, NULL, NULL, '2016-12-08 22:13:06', '2016-12-08 22:13:06', NULL, NULL, NULL),
(33, 'Station 301', 301, '2016-12-08', '3126 South 16th Street', 'Omaha', 68108, 'Douglas', NULL, NULL, NULL, '2016-12-08 23:01:51', '2016-12-11 02:38:29', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int(10) unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Available', '2016-11-02 10:49:37', '2016-11-17 08:11:09', NULL),
(2, 'Spare', '2016-11-16 21:08:21', '2016-11-17 08:11:17', NULL),
(3, 'In-repair', '2016-11-16 21:08:48', '2016-11-17 08:11:26', NULL),
(4, 'Deactivated', '2016-11-16 21:09:00', '2016-12-05 15:29:02', '2016-12-05 15:29:02'),
(5, 'Disposed', '2016-11-16 21:09:11', '2016-11-17 08:11:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE IF NOT EXISTS `todos` (
  `id` int(10) unsigned NOT NULL,
  `task` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `task`, `notepad`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Update Station 55 address', 'address has changed', '2016-12-05 17:22:13', '2016-12-06 04:02:20', NULL),
(6, 'Laptop pickup', 'Pick up laptop 143256 from Station 3', '2016-12-13 04:26:10', '2016-12-13 04:26:10', NULL),
(7, 'HPD not working', 'Need to check HPD in M-3', '2016-12-13 04:26:35', '2016-12-13 04:26:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(10) unsigned NOT NULL,
  `asst_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `asst_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'testtype1', '2016-12-05 19:13:47', '2016-12-05 19:13:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unit_types`
--

CREATE TABLE IF NOT EXISTS `unit_types` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unit_types`
--

INSERT INTO `unit_types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'RIG', '2016-11-10 01:24:19', '2016-12-10 00:46:03', '2016-12-10 00:46:03'),
(2, 'Medic', '2016-11-10 01:24:24', '2016-11-17 08:58:25', NULL),
(3, 'Squad', '2016-11-17 08:57:02', '2016-12-10 00:47:30', '2016-12-10 00:47:30'),
(4, 'Engine', '2016-12-10 00:46:20', '2016-12-10 01:06:35', '2016-12-10 01:06:35'),
(5, 'Truck', '2016-12-10 00:46:35', '2016-12-10 00:46:35', NULL),
(6, 'B/C', '2016-12-10 00:46:48', '2016-12-10 00:46:48', NULL),
(7, 'Command Post', '2016-12-10 00:47:02', '2016-12-10 00:47:02', NULL),
(8, 'Rescue', '2016-12-10 00:47:14', '2016-12-10 00:47:14', NULL),
(9, 'Other', '2016-12-10 00:47:21', '2016-12-10 01:08:37', '2016-12-10 01:08:37'),
(10, 'Engine', '2016-12-10 01:08:50', '2016-12-10 01:08:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jason Ryan', 'jryan', 'jason.ryan@dotcomm.org', '$2y$10$i7dyCHt3094GjdqFhxzH8e5POmiWJZaAv1TlDpQNH7j3rDGQl.0yW', 'UCjN17rjdpQDGGQB7jJOMD1YTNhlGxSvC1REolN32iSEjktIyv6ogniNSaz2', '2016-12-05 14:50:16', '2016-12-12 23:56:01'),
(3, 'Stan', 'Stan', 'Stanley.Shearer@cityofomaha.org', '$2y$10$751KROTWuPcElC9.13Da9OrxrmWB4gKlyXym0ImBEGOCfUC9gCXGK', 'cRO0rlRpaRYq05KfOcp6uRVYdq7RCEiKm4FBCQ6NuXwK5fgqCKsrnxFfipWd', '2016-09-30 13:55:44', '2016-12-06 04:38:01'),
(4, 'Brent', 'Brent', 'william.vanscoy@cityofomaha.org', '$2y$10$ai/jb9E2bK6p4uKkc8BaH.LlIhkTTHfwrgKfSGIeM6Z7moyyrrCCS', 'VHZ7HWIhhRS07cygJHGEhkzHYqgtGGrKAjzO9LpfQpEXjnOAHGvx53LE2I2o', '2016-09-30 13:56:46', '2016-12-06 04:38:40'),
(10, 'Jim', 'Jim', 'jim@dotcomm.org', '$2y$10$M3EHAEaPBAOTNamd0wDegeWs8IauHIy3YkLflTeRc1HsfGxVEJiu6', 'wsahiZ8KGUyrCwfk3sxKgntf4WMgALVSgk4cA3IJTvepZ1E6TONPACdjjPLN', '2016-10-04 05:28:04', '2016-10-04 05:41:49'),
(11, 'Jeffrey Acklie', 'jacklie', 'jeffrey.acklie@dotcomm.org', '$2y$10$0DO4HRbBarI/APE4NeH1kuR8TXSVLqdq9PniOyv5euBuThBg5tWUa', '8eL3InysPiYljqLQCK5g9yeexDPgzjmtHXo2Xz7I8fY3izHrmLj8fIlkv2Pp', '2016-10-04 05:31:48', '2016-12-06 05:14:53'),
(12, 'Matt Feilmeier', 'FE1LMEMC', 'feilmemc@gmail.com', '$2y$10$3vnfnEVLGm7N6YhW6ksS0OFko5qMQJFHtv0UleFkpQt0KNCbOXKfy', 'ox35sM5M70kHYN4QQYsZHaSeI4vqyD3OJuv8ghBXNcbssbd7hHoJXkVm9IqD', '2016-11-11 22:45:20', '2016-11-12 03:40:43'),
(13, 'Ann', 'Ann', 'afruhling@unomaha.edu', '$2y$10$N4G4Vm762/W4NnZ4QTNaTOg5majU7Alc9fYgXyLVuJ19m15Zn0qhu', NULL, '2016-12-06 04:38:41', '2016-12-06 04:38:41'),
(14, 'marina', 'marina', 'm@m.com', '$2y$10$hnmoDWhvr7VT9PVgk6c96OYDWVZ0RtZ/Et60h7oq5KBLlk7ySwuLK', NULL, '2016-12-06 04:49:26', '2016-12-06 04:49:26'),
(15, 'Praveen Kumar Durgam', 'pdurgam', 'praveendurgamus@gmail.com', '$2y$10$uDGoqbYJR7/dcEs4BgUvouc1Hs3vvKGSO82TkCnGvnUms2ro5d5g6', NULL, '2016-12-09 02:41:28', '2016-12-09 02:48:27'),
(16, 'Paul', 'Paul', 'pbaldwin@unomaha.edu', '$2y$10$AOMnednS.8dUetCwZskFMeLiCCOem0bw0e4VUWklb.DN8BszKElyq', 'x8LgOmkj5tC6JvEFWkSBn6SjMsZBPXB4XnMis2Zg9TwFNNKLS5j5nKGQ6lGT', '2016-12-09 07:42:38', '2016-12-13 04:53:38'),
(17, 'Amartuvshin Orgodol', 'aorgodol', 'aorgodol@unomaha.edu', '$2y$10$4m6IJjgJxtQaL9hZFYdcb.E3heDqVdj9zjlrXkgf9ZknCTZzcEk06', 'QBzl9T76CgctWRooycG9stiEZFN8hClv6U0nxyZ4U2QvbozizCnmdvS4Avof', '2016-12-13 04:21:06', '2016-12-13 04:22:44'),
(18, 'tester1', 'tester1', 'tes@tes.com', '$2y$10$tOVAcQ.PvYZpjll5ejMi6Og1OWf9CcxYJRtFqr5Zdl8auQgWg6wOC', 'PoVjywfEu7uXM7kBXTCvES73ONnA1aAbGsJ3t56d8aLra2o5dkDJWKpp6d6P', '2016-12-13 20:52:35', '2016-12-13 20:53:02'),
(19, 'test', 'test', 'asd@asd.com', '$2y$10$wS7y9c9vD33KCo/jWgSLHuh0JAdkMGsPt7KUGF0bnDi2LW/03vcbC', NULL, '2016-12-15 05:06:13', '2016-12-15 05:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `vehiclehis`
--

CREATE TABLE IF NOT EXISTS `vehiclehis` (
  `id` int(10) unsigned NOT NULL,
  `vehicle_id` int(10) unsigned DEFAULT NULL,
  `vehicle_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `van` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `make` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `station_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(10) unsigned DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grant_id` int(10) unsigned DEFAULT NULL,
  `grant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unittype_id` int(10) unsigned DEFAULT NULL,
  `unittype_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_id` int(10) unsigned DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehiclehis`
--

INSERT INTO `vehiclehis` (`id`, `vehicle_id`, `vehicle_number`, `van`, `make`, `model`, `year`, `created_at`, `updated_at`, `station_id`, `name`, `status_id`, `status`, `grant_id`, `grant_name`, `unittype_id`, `unittype_name`, `vendor_id`, `vendor_name`) VALUES
(1, 9, NULL, '121212121212121212', '', '', '0000', '2016-12-05 09:28:31', '2016-12-05 09:28:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 4, NULL, '57322', 'Honda', 'Traktor', '0000', '2016-12-05 09:28:45', '2016-12-05 09:28:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 9, NULL, '121212121212121212', '', '', '0', '2016-12-05 09:30:08', '2016-12-05 09:30:08', 2, 'Station 3', 3, 'In-repair', NULL, NULL, NULL, NULL, 5, 'Ford'),
(4, 1, NULL, '23231', 'Chevrolet', '150', '0000', '2016-12-05 12:45:40', '2016-12-05 12:45:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 9, NULL, '121212121212121212', 'Ford Motors', 'Frieghtliner', '2010', '2016-12-05 12:46:14', '2016-12-05 12:46:14', 2, 'Station 3', 3, 'In-repair', NULL, NULL, NULL, NULL, 5, 'Ford'),
(6, 12, NULL, '23237', 'Chevrolet', '', '0000', '2016-12-05 19:31:19', '2016-12-05 19:31:19', 1, 'Station 1', 1, 'Available', NULL, NULL, 2, 'Medic', NULL, NULL),
(7, 10, NULL, '52340', 'Coach', 'Freightliner', '0000', '2016-12-05 19:43:11', '2016-12-05 19:43:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, NULL, '23231', 'Chevrolet', '150', '0000', '2016-12-05 19:53:02', '2016-12-05 19:53:02', NULL, NULL, 3, 'In-repair', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, NULL, '23231', 'Chevrolet', '150', '0000', '2016-12-05 20:00:59', '2016-12-05 20:00:59', NULL, NULL, 3, 'In-repair', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, NULL, '23231', 'Chevrolet', '150', '0000', '2016-12-05 20:04:32', '2016-12-05 20:04:32', NULL, NULL, 3, 'In-repair', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 13, NULL, '12311', 'Ford Motors', '150', '2010', '2016-12-05 20:09:28', '2016-12-05 20:09:28', 2, 'Station 3', 1, 'Available', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 13, NULL, '12311', 'Ford Motors', '150', '2010', '2016-12-05 20:10:11', '2016-12-05 20:10:11', 2, 'Station 3', 1, 'Available', NULL, NULL, 2, 'Medic', 5, 'Ford'),
(13, 1, NULL, '23231', 'Chevrolet', '150', '0000', '2016-12-05 20:14:16', '2016-12-05 20:14:16', NULL, NULL, 3, 'In-repair', NULL, NULL, 1, 'RIG', NULL, NULL),
(14, 13, NULL, '12311', 'Ford Motors', '150', '2010', '2016-12-05 20:29:50', '2016-12-05 20:29:50', 2, 'Station 3', 1, 'Available', NULL, NULL, 2, 'Medic', 5, 'Ford'),
(15, 13, NULL, '12311', 'Ford Motors', '150', '2010', '2016-12-05 20:30:16', '2016-12-05 20:30:16', 2, 'Station 3', 1, 'Available', NULL, NULL, 2, 'Medic', 5, 'Ford'),
(16, 13, NULL, '12311', 'Ford Motors', '150', '2010', '2016-12-05 20:46:01', '2016-12-05 20:46:01', 2, 'Station 3', 1, 'Available', NULL, NULL, 2, 'Medic', 5, 'Ford'),
(17, 1, NULL, '23231', 'Chevrolet', '150', '0000', '2016-12-05 21:27:16', '2016-12-05 21:27:16', NULL, NULL, 3, 'In-repair', NULL, NULL, 1, 'RIG', NULL, NULL),
(18, 2, NULL, '23421', 'Dodge', '150', '0000', '2016-12-05 21:27:51', '2016-12-05 21:27:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 9, NULL, '121212121212121212', 'Ford Motors', 'Frieghtliner', '2010', '2016-12-05 22:09:35', '2016-12-05 22:09:35', 2, 'Station 3', 1, 'Available', NULL, NULL, NULL, NULL, 5, 'Ford'),
(20, 11, NULL, 'OFD-199482-19385024', 'Honda', 'Moped', '0000', '2016-12-05 22:09:54', '2016-12-05 22:09:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 3, NULL, '68341', 'Dodge', 'Caravan', '0000', '2016-12-05 22:10:12', '2016-12-05 22:10:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 4, NULL, '57322', 'Honda', 'Traktor', '0000', '2016-12-05 22:10:23', '2016-12-05 22:10:23', 4, 'Training', 2, 'Spare', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 5, NULL, 'ADGJADRGDF-1242135-1234', 'Honda', 'Moped', '0000', '2016-12-05 22:10:40', '2016-12-05 22:10:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 6, NULL, '52345', 'Coach', 'Freightliner', '0000', '2016-12-05 22:10:52', '2016-12-05 22:10:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 7, NULL, '67142', 'Coach', 'Freightliner', '0000', '2016-12-05 22:11:04', '2016-12-05 22:11:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 8, NULL, '71526', 'Coach', 'Freightliner', '0000', '2016-12-05 22:11:17', '2016-12-05 22:11:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 10, NULL, '52340', 'Coach', 'Freightliner', '0000', '2016-12-05 22:11:27', '2016-12-05 22:11:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 1, NULL, '23231', 'Chevrolet', '150', '2010', '2016-12-05 22:57:24', '2016-12-05 22:57:24', NULL, NULL, 3, 'In-repair', NULL, NULL, 1, 'RIG', NULL, NULL),
(29, 2, NULL, '23421', 'Dodge', '150', '2016', '2016-12-09 02:02:36', '2016-12-09 02:02:36', 1, 'Station 1', 1, 'Available', NULL, NULL, 2, 'Medic', 5, 'Ford'),
(30, 2, NULL, '23421', 'Dodge', '150', '2016', '2016-12-09 02:37:53', '2016-12-09 02:37:53', 1, 'Station 1', 3, 'In-repair', NULL, NULL, 2, 'Medic', 21, 'Dell Marketing LP'),
(31, 6, NULL, '52345', 'Coach', 'Freightliner', '2016', '2016-12-09 19:08:08', '2016-12-09 19:08:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 6, NULL, '52345', 'Coach', 'Freightliner', '2016', '2016-12-09 19:09:21', '2016-12-09 19:09:21', NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(33, 2, NULL, '23421', 'Dodge', '150', '2016', '2016-12-09 22:01:42', '2016-12-09 22:01:42', 1, 'Station 1', 1, 'Available', NULL, NULL, 2, 'Medic', 21, 'Dell Marketing LP'),
(34, 4, NULL, '57322', 'Honda', 'Traktor', '2009', '2016-12-09 23:21:30', '2016-12-09 23:21:30', 4, 'Training', 2, 'Spare', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 1, NULL, '23231', 'Chevrolet', '150', '2010', '2016-12-10 02:48:32', '2016-12-10 02:48:32', NULL, NULL, 3, 'In-repair', NULL, NULL, 1, NULL, NULL, NULL),
(36, 2, NULL, '23421', 'Dodge', '150', '2016', '2016-12-10 19:15:56', '2016-12-10 19:15:56', 1, 'Station 1', 1, 'Available', NULL, NULL, 2, 'Medic', 21, 'Dell Marketing LP'),
(37, 1, NULL, '23231', 'Chevrolet', '150', '2010', '2016-12-10 19:16:19', '2016-12-10 19:16:19', NULL, NULL, 3, 'In-repair', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 6, NULL, '52345', 'Coach', 'Freightliner', '2016', '2016-12-10 19:16:50', '2016-12-10 19:16:50', NULL, NULL, NULL, NULL, NULL, NULL, 10, 'Engine', NULL, NULL),
(39, 7, NULL, '67142', 'Coach', 'Freightliner', '2004', '2016-12-10 19:17:06', '2016-12-10 19:17:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 3, NULL, '68341', 'Dodge', 'Caravan', '2009', '2016-12-10 19:17:22', '2016-12-10 19:17:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 5, NULL, 'ADGJADRGDF-1242135-1234', 'Honda', 'Moped', '2010', '2016-12-10 19:17:34', '2016-12-10 19:17:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 3, NULL, '68341', 'Dodge', 'Caravan', '2009', '2016-12-10 19:17:52', '2016-12-10 19:17:52', 1, 'Station 1', 3, 'In-repair', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 5, NULL, 'ADGJADRGDF-1242135-1234', 'Honda', 'Moped', '2010', '2016-12-10 19:18:17', '2016-12-10 19:18:17', 1, 'Station 1', 3, 'In-repair', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 6, NULL, '52345', 'Coach', 'Freightliner', '2016', '2016-12-10 19:18:36', '2016-12-10 19:18:36', 1, 'Station 1', NULL, NULL, NULL, NULL, 10, 'Engine', NULL, NULL),
(45, 7, NULL, '67142', 'Coach', 'Freightliner', '2004', '2016-12-10 19:18:51', '2016-12-10 19:18:51', 1, 'Station 1', 2, 'Spare', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 5, NULL, 'ADGJADRGDF-1242135-1234', 'Honda', 'Moped', '2010', '2016-12-10 19:19:16', '2016-12-10 19:19:16', 1, 'Station 1', 3, 'In-repair', NULL, NULL, 8, 'Rescue', NULL, NULL),
(47, 1, NULL, '23231', 'Chevrolet', '150', '2010', '2016-12-10 19:24:25', '2016-12-10 19:24:25', 1, 'Station 1', 3, 'In-repair', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 1, NULL, '23231', 'Chevrolet', '150', '2010', '2016-12-10 19:30:25', '2016-12-10 19:30:25', 1, 'Station 1', 3, 'In-repair', NULL, NULL, 2, 'Medic', 5, 'Ford'),
(49, 6, NULL, '52345', 'Coach', 'Freightliner', '2016', '2016-12-10 22:42:04', '2016-12-10 22:42:04', 1, 'Station 1', 1, 'Available', NULL, NULL, 10, 'Engine', NULL, NULL),
(50, 1, NULL, '23231', 'Chevrolet', '150', '2010', '2016-12-10 23:42:07', '2016-12-10 23:42:07', 1, 'Station 1', 3, 'In-repair', NULL, NULL, 2, 'Medic', 5, 'Ford'),
(51, 15, NULL, '1', '', '', '0000', '2016-12-11 01:30:55', '2016-12-11 01:30:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 1, NULL, '23231', 'Chevrolet', '150', '2010', '2016-12-11 02:23:00', '2016-12-11 02:23:00', 1, 'Station 1', 3, 'In-repair', NULL, NULL, 2, 'Medic', 5, 'Ford'),
(53, 1, NULL, '23231', 'Chevrolet', '150', '2010', '2016-12-12 16:06:47', '2016-12-12 16:06:47', 1, 'Station 1', 3, 'In-repair', NULL, NULL, 2, 'Medic', 5, 'Ford'),
(54, 1, NULL, '50385', 'International', 'Terrastar', '2015', '2016-12-12 16:07:40', '2016-12-12 16:07:40', 1, 'Station 1', 1, 'Available', NULL, NULL, 2, 'Medic', 5, 'Ford'),
(55, 2, NULL, '23421', 'Dodge', '150', '2016', '2016-12-12 16:09:14', '2016-12-12 16:09:14', 1, 'Station 1', 1, 'Available', NULL, NULL, 2, 'Medic', 21, 'Dell Marketing LP'),
(56, 3, NULL, '68341', 'Dodge', 'Caravan', '2009', '2016-12-12 16:10:46', '2016-12-12 16:10:46', 1, 'Station 1', 3, 'In-repair', NULL, NULL, 5, 'Truck', NULL, NULL),
(57, 4, NULL, '57322', 'Honda', 'Traktor', '2009', '2016-12-12 16:12:39', '2016-12-12 16:12:39', 4, 'Training', 2, 'Spare', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 5, NULL, '1242135', 'Honda', 'Moped', '2010', '2016-12-12 16:13:51', '2016-12-12 16:13:51', 1, 'Station 1', 3, 'In-repair', NULL, NULL, 8, 'Rescue', NULL, NULL),
(59, 5, NULL, '50342', 'Chevy', 'Tahoe', '2009', '2016-12-12 16:14:46', '2016-12-12 16:14:46', 1, 'Station 1', 1, 'Available', NULL, NULL, 6, 'B/C', NULL, NULL),
(60, 7, NULL, '67142', 'Coach', 'Freightliner', '2004', '2016-12-12 16:17:12', '2016-12-12 16:17:12', 1, 'Station 1', 2, 'Spare', NULL, NULL, 2, 'Medic', NULL, NULL),
(61, 8, NULL, '71526', 'Coach', 'Freightliner', '2006', '2016-12-12 16:18:25', '2016-12-12 16:18:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 9, NULL, '164854', 'Ford Motors', 'Frieghtliner', '2010', '2016-12-12 16:19:59', '2016-12-12 16:19:59', 2, 'Station 3', 1, 'Available', NULL, NULL, NULL, NULL, 5, 'Ford'),
(63, 10, NULL, '52340', 'Coach', 'Freightliner', '2000', '2016-12-12 16:21:38', '2016-12-12 16:21:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 11, NULL, 'OFD-199482-19385024', 'Honda', 'Moped', '2006', '2016-12-12 16:23:00', '2016-12-12 16:23:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 13, NULL, '12311', 'Ford Motors', '150', '2010', '2016-12-12 16:24:16', '2016-12-12 16:24:16', 2, 'Station 3', 1, 'Available', NULL, NULL, 2, 'Medic', 5, 'Ford'),
(66, 14, NULL, 'gf', '', '', '0000', '2016-12-12 16:26:52', '2016-12-12 16:26:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 3, NULL, '50327', 'Sutphen', 'SP95', '2008', '2016-12-12 16:40:42', '2016-12-12 16:40:42', 1, 'Station 1', 1, 'Available', NULL, NULL, 5, 'Truck', 5, 'Ford'),
(68, 2, NULL, '50386', 'International', 'Terrastar', '2015', '2016-12-14 23:07:40', '2016-12-14 23:07:40', 2, 'Station 3', 1, 'Available', NULL, NULL, 2, 'Medic', NULL, NULL),
(69, 1, NULL, '50385', 'International', 'Terrastar', '2015', '2016-12-14 23:07:50', '2016-12-14 23:07:50', 1, 'Station 1', 1, 'Available', NULL, NULL, 2, 'Medic', 5, 'Ford');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(10) unsigned NOT NULL,
  `vehicle_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `van` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `make` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `vehicle_note` text COLLATE utf8_unicode_ci,
  `vehicle_document` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `station_id` int(10) unsigned DEFAULT NULL,
  `status_id` int(10) unsigned DEFAULT NULL,
  `unittype_id` int(10) unsigned DEFAULT NULL,
  `vendor_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `vehicle_number`, `van`, `make`, `model`, `year`, `vehicle_note`, `vehicle_document`, `vehicle_image`, `created_at`, `updated_at`, `deleted_at`, `station_id`, `status_id`, `unittype_id`, `vendor_id`) VALUES
(1, 'M-1', '50385', 'International', 'Terrastar', 2015, '', NULL, NULL, '2016-11-02 10:31:12', '2016-12-12 22:06:47', NULL, 1, 1, 2, 5),
(2, 'M-3', '50386', 'International', 'Terrastar', 2015, '', NULL, NULL, '2016-11-08 06:24:09', '2016-12-12 22:09:14', NULL, 2, 1, 2, NULL),
(3, 'TR-30', '50327', 'Sutphen', 'SP95', 2008, '', NULL, NULL, '2016-11-08 06:24:46', '2016-12-12 22:40:42', NULL, 7, 1, 5, 5),
(4, 'E-1', '57357', 'Spartan', 'Pumper', 2010, '', NULL, NULL, '2016-11-08 06:25:45', '2016-12-12 22:12:39', NULL, 1, 1, 10, 5),
(5, 'B-1', '50342', 'Chevy', 'Tahoe', 2009, '', NULL, NULL, '2016-11-08 06:26:44', '2016-12-12 22:14:46', NULL, 1, 1, 6, 26),
(6, 'E-42', '52345', 'Coach', 'Freightliner', 2016, '', NULL, NULL, '2016-11-08 07:04:55', '2016-12-11 04:42:04', '2016-12-11 04:42:04', 1, 1, 10, NULL),
(7, 'B-2', '50345', 'Chevy', 'Tahoe', 2009, '', NULL, NULL, '2016-11-08 07:06:03', '2016-12-12 22:17:12', NULL, 14, 1, 6, 26),
(8, 'E-3', '50277', 'Toyne', 'Pumper', 2003, '', NULL, NULL, '2016-11-08 07:30:03', '2016-12-12 22:18:25', NULL, 2, 1, 10, 5),
(9, 'E-21', '50358', 'Spartan', 'Pumper', 2010, '', NULL, NULL, '2016-11-16 23:28:57', '2016-12-12 22:19:59', NULL, 14, 1, 10, 5),
(10, 'TR-21', '50368', 'Spartan', 'AerialLadder75', 2011, '', NULL, NULL, '2016-11-17 09:22:05', '2016-12-12 22:21:38', NULL, 14, 1, 5, 5),
(11, 'M-21', '50383', 'International', 'Terrastar', 2015, '', NULL, NULL, '2016-11-25 00:08:59', '2016-12-12 22:23:00', NULL, 14, 1, 2, 5),
(13, 'M-3', '50303', 'International', '4900', 2005, '', NULL, NULL, '2016-12-06 02:05:13', '2016-12-12 22:24:16', NULL, 3, 1, 2, 5),
(14, 'E-5', '50337', 'Spartan', 'Pumper', 2008, '', NULL, NULL, '2016-12-11 07:22:48', '2016-12-12 22:26:52', NULL, 3, 1, 10, 5),
(15, '', '1', '', '', 0000, '', NULL, NULL, '2016-12-11 07:30:44', '2016-12-11 07:30:56', '2016-12-11 07:30:56', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE IF NOT EXISTS `vendors` (
  `id` int(10) unsigned NOT NULL,
  `vendor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_web` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_tech_sup` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_rep` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_rep_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_rep_phone_m` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `vendor_name`, `vendor_address`, `vendor_web`, `vendor_phone`, `vendor_fax`, `vendor_tech_sup`, `vendor_rep`, `vendor_rep_phone`, `vendor_rep_phone_m`, `vendor_email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Chevrolet', 'Industrial Avenue 89', 'www.chevrolet.com', '888-0000-1234', '888-0000-1238', '888-9999-8888', 'Jane', '888-1212-1212', '402-5234-7823', 'jane@chevrolet.com', '2016-11-02 10:37:59', '2016-11-29 06:35:31', '2016-11-29 06:35:31'),
(5, 'Ford', '54 Ford Avenue Omaha NE 68114', 'www.ford.com', '402-879-0987', '', '1-800-543-0987', 'Joe Doe', '402-987-0987', '402-567-2311', 'joe.doe@ford.com', '2016-11-08 03:27:24', '2016-12-05 09:28:13', NULL),
(21, 'Dell Marketing LP', 'P.O. Box 534118', 'www.dell.com', '1-800-981-3355', '1-800-433-9527', '1-800-624-9896', 'Shawn Tucker', '512-728-3500 x 45917', '512-934-2367', 'shawn_tucker@dell.com', '2016-11-17 09:46:47', '2016-11-17 09:46:47', NULL),
(22, 'Midwest Technology Solutions', '2580 S 90th St # 2 ', 'http://mtsi.net/', '(402) 504-4437', '', '402-504-4327', 'Mr. Charles Liakos', '(402) 504-4437', '', 'cliakos@mtsi.net', '2016-11-17 09:56:08', '2016-11-17 09:56:08', NULL),
(23, 'Sirius Computer Solutions Inc.', '14301 FNB Pkwy #400 Omaha, NE  68154', 'http://www.siriuscom.com/', '(402) 965-2300', '', '1-800-460-1237', 'Joe Mertens (CEO)', '', '', '', '2016-11-17 10:10:58', '2016-11-17 10:10:58', NULL),
(24, 'Eagle Software, Inc', '124 Indiana Avenue, Salina, Kansas 67401 ', 'https://eagleinc.com/', '1-800-477-5432', '', '1-800-477-5432', 'Dan G. (Contact using Team Viewer)', '', '', 'support@eagleinc.com', '2016-11-17 10:21:14', '2016-11-17 10:21:14', NULL),
(25, 'Lexmark International, Inc.', '740 W. New Circle Road, Lexington, KY 40550', 'http://www.lexmark.com/', '1-913-227-7000', '', '1-800-539-6275', 'Not Determined', '', '', '', '2016-11-17 11:09:52', '2016-11-17 11:09:52', NULL),
(26, 'Chevy', '', '', '', '', '', 'Scott Gorden', '', '', '', '2016-12-12 22:14:23', '2016-12-12 22:14:23', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_assethis`
--
ALTER TABLE `all_assethis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_assets`
--
ALTER TABLE `all_assets`
  ADD PRIMARY KEY (`id`), ADD KEY `all_assets_deleted_at_index` (`deleted_at`), ADD KEY `fk_all_assets_personnel` (`personnel_id`), ADD KEY `fk_all_assets_status` (`status_id`), ADD KEY `fk_all_assets_vehicle` (`vehicle_id`), ADD KEY `fk_all_assets_vendor` (`vendor_id`), ADD KEY `fk_all_assets_station` (`station_id`);

--
-- Indexes for table `asset_grant`
--
ALTER TABLE `asset_grant`
  ADD PRIMARY KEY (`id`), ADD KEY `asset_grant_deleted_at_index` (`deleted_at`), ADD KEY `fk_asset_grant_grant` (`grant_id`), ADD KEY `fk_asset_grant_all_asset` (`all_asset_id`), ADD KEY `fk_station_grant_station` (`station_id`), ADD KEY `fk_vehicle_grant_vehicle` (`vehicle_id`);

--
-- Indexes for table `grants`
--
ALTER TABLE `grants`
  ADD PRIMARY KEY (`id`), ADD KEY `grants_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `personnels`
--
ALTER TABLE `personnels`
  ADD PRIMARY KEY (`id`), ADD KEY `personnels_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `related_files`
--
ALTER TABLE `related_files`
  ADD PRIMARY KEY (`id`), ADD KEY `related_files_deleted_at_index` (`deleted_at`), ADD KEY `fk_station` (`station_id`), ADD KEY `fk_allasset` (`allasset_id`), ADD KEY `fk_vehicle_vehicle` (`vehicle_id`), ADD KEY `fk_grant` (`grant_id`), ADD KEY `fk_vendor_vendor` (`vendor_id`);

--
-- Indexes for table `stationhis`
--
ALTER TABLE `stationhis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`), ADD KEY `stations_deleted_at_index` (`deleted_at`), ADD KEY `fk_grant_grant_id_station` (`grant_id`), ADD KEY `fk_vendor_vendor_id_station` (`vendor_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`), ADD KEY `statuses_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`), ADD KEY `todos_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`), ADD KEY `types_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `unit_types`
--
ALTER TABLE `unit_types`
  ADD PRIMARY KEY (`id`), ADD KEY `unit_types_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehiclehis`
--
ALTER TABLE `vehiclehis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`), ADD KEY `vehicles_deleted_at_index` (`deleted_at`), ADD KEY `fk_vehicles_station` (`station_id`), ADD KEY `fk_vehicles_status` (`status_id`), ADD KEY `fk_vehicles_unittype` (`unittype_id`), ADD KEY `fk_vehicles_vendor` (`vendor_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`), ADD KEY `vendors_deleted_at_index` (`deleted_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_assethis`
--
ALTER TABLE `all_assethis`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `all_assets`
--
ALTER TABLE `all_assets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `asset_grant`
--
ALTER TABLE `asset_grant`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `grants`
--
ALTER TABLE `grants`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `personnels`
--
ALTER TABLE `personnels`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `related_files`
--
ALTER TABLE `related_files`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `stationhis`
--
ALTER TABLE `stationhis`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `unit_types`
--
ALTER TABLE `unit_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `vehiclehis`
--
ALTER TABLE `vehiclehis`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `all_assets`
--
ALTER TABLE `all_assets`
ADD CONSTRAINT `fk_all_assets_personnel` FOREIGN KEY (`personnel_id`) REFERENCES `personnels` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_all_assets_station` FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_all_assets_status` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_all_assets_vehicle` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_all_assets_vendor` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `asset_grant`
--
ALTER TABLE `asset_grant`
ADD CONSTRAINT `fk_asset_grant_all_asset` FOREIGN KEY (`all_asset_id`) REFERENCES `all_assets` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_asset_grant_grant` FOREIGN KEY (`grant_id`) REFERENCES `grants` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_station_grant_station` FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_vehicle_grant_vehicle` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `related_files`
--
ALTER TABLE `related_files`
ADD CONSTRAINT `fk_allasset` FOREIGN KEY (`allasset_id`) REFERENCES `all_assets` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_grant` FOREIGN KEY (`grant_id`) REFERENCES `grants` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_station` FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_vehicle_vehicle` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_vendor_vendor` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `stations`
--
ALTER TABLE `stations`
ADD CONSTRAINT `fk_grant_grant_id_station` FOREIGN KEY (`grant_id`) REFERENCES `grants` (`id`),
ADD CONSTRAINT `fk_vendor_vendor_id_station` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`);

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
ADD CONSTRAINT `fk_vehicles_station` FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_vehicles_status` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_vehicles_unittype` FOREIGN KEY (`unittype_id`) REFERENCES `unit_types` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_vehicles_vendor` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
