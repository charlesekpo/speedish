-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2022 at 08:35 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `speedish_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_password`, `admin_email`) VALUES
(1, 'Jaden Charles', '$2y$10$XwDz3ALlMTWb/X3ycePL7eoi28DnKK.Q1FN2EBQ9otDAuejdr6tMm', 'jaden@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `itemcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_image` varchar(45) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_image`, `created_date`) VALUES
(35, 'Rice Dish', 'rice.jpg', '2022-10-25 05:53:12'),
(36, 'Meat and Fish', 'meat-and-fish.jpg', '2022-10-25 05:53:35'),
(38, 'Special Dish', 'meal11.png', '2022-10-25 05:54:31'),
(39, 'Soup Dish', 'soup.jpg', '2022-10-25 05:54:50'),
(40, 'Bean Dish', 'beans-dishes.jpg', '2022-10-25 05:55:12'),
(41, 'Yam Dish', 'yam.jpg', '2022-10-25 05:55:24'),
(43, 'Soft Drinks', 'drinks.jpg', '2022-10-25 05:55:54'),
(47, 'starter', 'starter.jpg', '2022-11-17 09:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `courier`
--

CREATE TABLE `courier` (
  `courier_id` int(11) NOT NULL,
  `courier_firstname` varchar(50) NOT NULL,
  `courier_password` varchar(255) NOT NULL,
  `courier_lastname` varchar(100) NOT NULL,
  `courier_address` varchar(100) NOT NULL,
  `courier_gender` enum('Male','Female') NOT NULL,
  `courier_idcard` varchar(45) NOT NULL,
  `courier_email` varchar(50) NOT NULL,
  `courier_phone` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courier`
--

INSERT INTO `courier` (`courier_id`, `courier_firstname`, `courier_password`, `courier_lastname`, `courier_address`, `courier_gender`, `courier_idcard`, `courier_email`, `courier_phone`) VALUES
(1, 'Okolugbo', '$2y$10$56vWQIMdFzT1wqvBKYQMwOt7Z3Ru3aYi.W2AY6wko2ehf10yoWEMq', 'Chucks', '8, Lasode Crescent, Victoria Island.', 'Male', '', 'okolugboijem@gmail.com', '09080369064'),
(2, 'Grey', '$2y$10$L9ZdVTVo4OYFg.GkCLY1N./CSPEfm7MXQTZXB3BC0b1WY/8M7lURC', 'Patty', '25, aderupoko street, iwaya', 'Female', '', 'patty@yahoo.com', '08084652615'),
(3, 'grant', '$2y$10$fE4An8QLpDLRieWkyjrfou9uFOIxmH7m9GcL9haM9Gy.r1yJ8.BHm', 'alozie', 'badore, ajah lagos', 'Male', '', 'grant@gmail.com', '07066354199');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_firstname` varchar(50) NOT NULL,
  `customer_lastname` varchar(50) NOT NULL,
  `customer_gender` enum('male','female') NOT NULL,
  `customer_phone` varchar(50) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `profilephoto` varchar(160) NOT NULL,
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_firstname`, `customer_lastname`, `customer_gender`, `customer_phone`, `customer_email`, `customer_password`, `profilephoto`, `payment_id`) VALUES
(1, 'Charles', 'Ekpo', 'male', '8084720229', 'cekpo56@gmail.com', '$2y$10$pGcAnT1O7f/csOnNUw2w3u5E7IePaAQJF9hGaUIFDOLT2Aq5lTg8.', 'ph7389596231666583143.jpg', 0),
(3, 'henry', 'peters', 'male', '08084628871', 'henry@yahoo.com', '$2y$10$9t9LDil/4d/NX1tetVQqSu8zZzxxVyFeIrfyRgqq8cShhtHu8vfdy', '', 0),
(4, 'marvelous', 'joseph', 'male', '97945622514', 'joseph@yahoo.com', '$2y$10$Xhd21g6CfKV/MWBMgdIssuiim7kz/4czE6C3AMItKt4/2jcCvvcNC', 'ph21182418131666531500.png', 0),
(5, 'jane', 'hebrew', 'female', '07066265142', 'jane@gmail.com', '$2y$10$Z12NjieaSmrFfVCrnlFhNe57fGh67dh9PlyfVMdra4uzLN00JAShO', 'ph6185877091666583467.jpg', 0),
(6, 'danladi', 'bako', 'male', '08066825142', 'bako@gmail.com', '$2y$10$xfRBCAqHqBNzjKoqpuyKxeVtYFkvMMV48xB6A4cME2CyyKQP5S0NW', 'ph17152196531666587687.jpg', 0),
(7, 'zachariah', 'moses', 'male', '08064534413', 'zach@yahoo.com', '$2y$10$iZSAp2dWOTMl21bQ8Kf4femnWMk4ivVxwAkRo69cUdTTYfUXhQCxW', 'ph1979796111666598290.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `order_id` int(11) NOT NULL,
  `courier_id` int(11) NOT NULL,
  `datetime_pick` datetime NOT NULL,
  `datetime_delivery` datetime NOT NULL,
  `delivery_status` enum('Picked','Enroute','Delivered') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(45) NOT NULL,
  `item_price` float NOT NULL,
  `item_image` varchar(45) NOT NULL,
  `item_descript` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `itemcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_price`, `item_image`, `item_descript`, `category_id`, `itemcode`) VALUES
(71, 'coca cola', 200, 'coke-plastic.jpg', 'chilled 35cl coca-cola', 43, '689685841'),
(72, 'maltina', 250, 'multina-can.jpg', 'chilled can maltina', 43, '1020395204'),
(73, 'Fried Rice', 350, 'Fried-Rice.jpg', 'ganished fried rice', 35, '1183043781'),
(74, 'Egusi', 400, 'Eforiro-Assorted.jpg', 'Assorted Eforiro soup with moderate ingredents', 39, '1935064841'),
(75, 'Egusi soup', 350, 'Egusi-Assorted.jpg', 'Assorted egusi soup with little salt', 39, '299979175'),
(76, 'Ponmo', 100, 'ponmo.jpg', 'stewed cow ponmo meat', 36, '547860934'),
(77, 'snail', 100, 'snail.jpg', 'cooked snail', 36, '1218800754'),
(78, 'yamarita', 300, 'yamarita.jpg', 'yam coated with fried egg', 41, '1115327981'),
(79, 'Noodles', 400, 'meal9.jpg', 'Noodles with egg and plantain', 38, '843385683'),
(80, 'Togolese beans', 300, 'Togolese-Beans.jpg', 'Mashed beans', 40, '139917726'),
(81, 'chin-chin', 150, 'Chin-Chin.jpg', 'cooked chin-chin with moderate ingredients', 47, '275052271');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(23, 'Charles Ekpo', 'cekpo56@gmail.com', '8084720229', '25, aderupoko street, iwaya', 'cod', 'Egusi(1), snail(3), coca cola(1)', '900'),
(24, 'Okolugbo Ijem C.', 'okolugboijem@gmail.com', '09080369064', '8, Lasode Crescent, Victoria Island.', 'paystack', 'Ponmo(2), Fried Rice(1), coca cola(2), snail(1)', '1050'),
(25, 'Charles Ekpo', 'charlesekpo40@yahoo.com', '09080369064', '25, aderupoko street, iwaya', 'cod', 'yamarita(3)', '900');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `order_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount_paid` varchar(50) NOT NULL,
  `payment_status` enum('Completed','Pending','Cancelled') NOT NULL,
  `payment_mode` enum('Cash','Paystack') NOT NULL,
  `datepaid` datetime NOT NULL,
  `trans_reference` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email_UNIQUE` (`admin_email`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `courier`
--
ALTER TABLE `courier`
  ADD PRIMARY KEY (`courier_id`),
  ADD UNIQUE KEY `courier_email_UNIQUE` (`courier_email`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email_UNIQUE` (`customer_email`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD KEY `courier_id_idx` (`courier_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `category_id_idx` (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id_idx` (`phone`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD KEY `order_id_idx` (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD UNIQUE KEY `payment_id_UNIQUE` (`payment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `courier`
--
ALTER TABLE `courier`
  MODIFY `courier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `courier_id` FOREIGN KEY (`courier_id`) REFERENCES `courier` (`courier_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_id` FOREIGN KEY (`payment_id`) REFERENCES `customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
