-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2022 at 10:15 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virgin_atlantic`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `Booking_ID` int(11) NOT NULL,
  `Flight_ID` int(11) NOT NULL,
  `Ticket_ID` int(11) NOT NULL,
  `Passenger_name` varchar(30) DEFAULT NULL,
  `Booking_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Booking_ID`),
  KEY `Flight_ID` (`Flight_ID`),
  KEY `Ticket_ID` (`Ticket_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`Booking_ID`, `Flight_ID`, `Ticket_ID`, `Passenger_name`, `Booking_date`) VALUES
(1, 994, 7855, 'Kwabena Sarkodieh', '5 March'),
(2, 856, 1548, 'Kylie Jenner', '1 February'),
(3, 209, 8521, 'Travis Scott', '8 April');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
CREATE TABLE IF NOT EXISTS `flight` (
  `Flight_ID` int(11) NOT NULL,
  `Departure_date` varchar(30) DEFAULT NULL,
  `Departure_time` varchar(30) DEFAULT NULL,
  `Arrival_date` varchar(30) DEFAULT NULL,
  `Arrival_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Flight_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`Flight_ID`, `Departure_date`, `Departure_time`, `Arrival_date`, `Arrival_time`) VALUES
(1, '5 March', '5:25 PM', '6 March', '10:25 PM'),
(2, '15 April', '9:25 AM', '16 April', '12:25 PM'),
(3, '8 May', '3:30 PM', '9 MAY', '11:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `flight_crew`
--

DROP TABLE IF EXISTS `flight_crew`;
CREATE TABLE IF NOT EXISTS `flight_crew` (
  `Flight_Crew_ID` int(11) NOT NULL,
  `Flight_ID` int(11) NOT NULL,
  `First_name` varchar(30) DEFAULT NULL,
  `Last_name` varchar(30) DEFAULT NULL,
  `Job_title` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Flight_Crew_ID`),
  KEY `Flight_ID` (`Flight_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_crew`
--

INSERT INTO `flight_crew` (`Flight_Crew_ID`, `Flight_ID`, `First_name`, `Last_name`, `Job_title`) VALUES
(1, 777, 'Jerad', 'letto', 'Pilot'),
(2, 333, 'Bruce', 'Wayne', 'Air host'),
(3, 444, 'Clark', 'Kent', 'flight engineer');

-- --------------------------------------------------------

--
-- Table structure for table `luggage`
--

DROP TABLE IF EXISTS `luggage`;
CREATE TABLE IF NOT EXISTS `luggage` (
  `Luggage_ID` int(11) NOT NULL,
  `weight` varchar(30) DEFAULT NULL,
  `Booking_ID` int(11) NOT NULL,
  `Passenger_ID` int(11) NOT NULL,
  PRIMARY KEY (`Luggage_ID`),
  KEY `Booking_ID` (`Booking_ID`),
  KEY `Passenger_ID` (`Passenger_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `luggage`
--

INSERT INTO `luggage` (`Luggage_ID`, `weight`, `Booking_ID`, `Passenger_ID`) VALUES
(1, '50 lbs', 1, 1),
(2, '70 lbs', 2, 2),
(3, '60 lbs', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

DROP TABLE IF EXISTS `passengers`;
CREATE TABLE IF NOT EXISTS `passengers` (
  `Passenger_ID` int(11) NOT NULL,
  `First_name` varchar(30) DEFAULT NULL,
  `Last_name` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Contact_no` varchar(30) DEFAULT NULL,
  `Mailing_address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Passenger_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`Passenger_ID`, `First_name`, `Last_name`, `Email`, `Contact_no`, `Mailing_address`) VALUES
(1, 'Kwabena', 'Sarkodieh', 'Kwabena@gmail.com', '0599999999', '1547 MD'),
(2, 'Kylie', 'Jenner', 'kylie@gmail.com', '0588888888', '875 AB'),
(3, 'Travis', 'Scott', 'traviscott@gmail.com', '0277777777', '746 CA');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `Ticket_ID` int(11) NOT NULL,
  `Passenger_ID` int(11) NOT NULL,
  `Flight_ID` int(11) NOT NULL,
  `Ticket_from` varchar(30) DEFAULT NULL,
  `Ticket_to` varchar(30) DEFAULT NULL,
  `Ticket_price` varchar(30) DEFAULT NULL,
  `Invoice_no` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Ticket_ID`),
  KEY `Passenger_ID` (`Passenger_ID`),
  KEY `Flight_ID` (`Flight_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`Ticket_ID`, `Passenger_ID`, `Flight_ID`, `Ticket_from`, `Ticket_to`, `Ticket_price`, `Invoice_no`) VALUES
(1, 1, 994, 'London', 'New York', '60 dollars', '96325'),
(2, 2, 856, 'Dubai', 'Manchester City', '100 dollars', '74125'),
(3, 3, 209, 'China', 'Japan', '60 dollars', '85274');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
