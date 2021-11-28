-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2021 at 10:48 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `milkproducts`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'ceb6c970658f31504a901b89dcd3e461', '2017-01-24 16:21:18', '13-05-2021 05:33:47 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Milk Powder', '', '2017-01-24 19:17:37', '16-05-2021 12:28:35 PM'),
(4, 'Ghee', '', '2017-01-24 19:19:32', '16-05-2021 12:29:41 PM'),
(5, 'Butter', '', '2017-01-24 19:19:54', '16-05-2021 04:13:27 PM'),
(6, 'Paneer', '', '2017-02-20 19:18:52', '16-05-2021 04:14:17 PM'),
(7, 'Cheese', '', '2021-05-16 06:46:54', '16-05-2021 04:14:04 PM'),
(9, 'Lassi', '', '2021-05-16 08:28:44', NULL),
(10, 'Curd', '', '2021-05-16 08:29:13', NULL),
(11, 'Sweets', '', '2021-05-16 08:33:14', NULL),
(12, 'Ice Cream', '', '2021-05-16 08:33:35', NULL),
(14, 'Yogurt', '', '2021-05-16 08:36:06', NULL),
(15, 'Milk ', '', '2021-05-16 08:40:36', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `charts`
-- (See below for the actual view)
--
CREATE TABLE `charts` (
`productName` varchar(150)
,`id` int(111)
,`totalQuantity` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `charts1`
-- (See below for the actual view)
--
CREATE TABLE `charts1` (
`id` int(11)
,`productName` varchar(255)
,`totalquantity` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(8, 5, '33', 1, '2021-05-21 13:39:40', 'Internet Banking', 'Delivered'),
(9, 5, '32', 1, '2021-05-21 14:39:37', 'Bhmp', 'Delivered'),
(12, 5, '33', 1, '2021-05-21 15:14:39', 'Bhmp', 'Delivered'),
(13, 5, '35', 1, '2021-05-21 17:55:05', 'Bhmp', 'Delivered'),
(14, 5, '34', 1, '2021-05-21 17:59:06', 'Internet Banking', 'un-Sucessfull'),
(15, 5, '40', 1, '2021-05-21 18:07:25', '', 'Delivered'),
(16, 5, '32', 1, '2021-05-21 19:06:11', '', 'Delivered'),
(17, 5, '40', 1, '2021-05-21 19:06:12', '', 'Delivered'),
(18, 5, '29', 1, '2021-05-22 07:06:03', '', NULL),
(19, 5, '29', 1, '2021-05-22 07:35:24', '', 'Unsuccessful'),
(20, 5, '29', 1, '2021-05-22 08:37:30', '', NULL),
(21, 5, '34', 1, '2021-05-22 08:50:08', '', 'Unsuccessful'),
(22, 5, '35', 1, '2021-05-22 08:52:03', '', NULL),
(24, 5, '34', 1, '2021-05-22 08:57:40', 'COD', 'Unsuccessful'),
(25, 5, '35', 1, '2021-05-22 08:58:40', 'gay', 'Unsuccessful'),
(33, 5, '33', 1, '2021-05-22 10:57:36', 'Internet Banking', 'Delivered'),
(34, 5, '32', 1, '2021-05-23 14:43:00', 'gpay', NULL),
(35, 6, '35', 6, '2021-05-31 13:54:12', 'gpay', 'Delivered'),
(36, 6, '34', 1, '2021-05-31 13:57:05', 'gpay', NULL),
(37, 5, '33', 1, '2021-06-04 07:00:11', 'gpay', NULL),
(38, 5, '45', 1, '2021-06-21 15:11:48', 'gpay', 'Unsuccessful'),
(39, 5, '50', 1, '2021-06-21 15:11:48', 'gpay', NULL),
(40, 5, '43', 1, '2021-06-21 15:14:19', 'gpay', NULL),
(41, 5, '67', 1, '2021-06-21 15:15:53', NULL, 'Unsuccessful');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 7, 'Delivered', 'nill', '2021-05-11 12:01:04'),
(6, 4, 'Delivered', 'nill', '2021-05-11 14:26:59'),
(7, 13, 'in Process', 'soon', '2021-05-21 17:56:41'),
(8, 13, 'in Process', 'soon', '2021-05-21 17:57:00'),
(9, 13, 'Delivered', 'done', '2021-05-21 17:57:29'),
(10, 14, 'in Process', 'soon', '2021-05-21 18:01:26'),
(11, 8, 'in Process', 'soon', '2021-05-21 18:02:13'),
(12, 9, 'Delivered', 'done', '2021-05-21 18:03:11'),
(13, 16, 'Delivered', 'done', '2021-05-22 10:59:09'),
(14, 17, 'Delivered', 'done', '2021-05-22 10:59:50'),
(15, 33, 'Delivered', 'done', '2021-05-22 11:00:12'),
(16, 8, 'Delivered', 'shipping is sucessfull', '2021-05-30 10:35:21'),
(17, 35, 'in Process', 'shipping is to be done soon', '2021-05-31 14:01:12'),
(18, 35, 'Delivered', 'shipping is sucessfull', '2021-05-31 14:04:47'),
(19, 12, 'Delivered', 'shipping sucessfull', '2021-05-31 14:08:12'),
(20, 14, 'un-Sucessfull', 'Unsuccessful due to pandemic', '2021-06-05 10:20:07'),
(21, 25, 'Unsuccessful', 'Shipping failed', '2021-06-05 10:25:11'),
(22, 21, 'Unsuccessful', 'Shipping Unsuccessful', '2021-06-05 10:40:34'),
(23, 15, 'Delivered', 'Shipping is successfull', '2021-06-23 12:28:27'),
(24, 24, 'Unsuccessful', 'Shipping was unsuccessful', '2021-06-23 12:29:03'),
(25, 41, 'Unsuccessful', 'Shipping was unsuccessful', '2021-06-23 12:30:08'),
(26, 19, 'Unsuccessful', 'shipping was Unsuccessful', '2021-06-23 12:31:27'),
(27, 38, 'Unsuccessful', 'shipping was unsuccessful', '2021-06-23 12:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(29, 5, 21, 'Amul  Butter', 'Amul', 48, 51, 'Amul PASTEURISED BUTTER UNSALT (100 g)', '100-pasteurised-amul-original-imafykhy5nqzs58h.jpeg', '100-pasteurised-amul-original-imafykhykwmzgneb.jpeg', '100-pasteurised-amul-original-imafykhy5nqzs58h.jpeg', 0, 'In Stock', '2021-05-16 11:39:40', NULL),
(32, 5, 22, 'Nandini Butter', 'Nandini', 92, 95, 'Nandini<div>PASTEURISED BUTTER</div><div>UNSALT</div><div>200 g</div>', '242672_3-nandini-cooking-butter-unsalted.webp', 'Capture.JPG', '242672_3-nandini-cooking-butter-unsalted.webp', 0, 'In Stock', '2021-05-16 11:47:24', NULL),
(33, 3, 18, 'Nandini Milk Powder', 'Nandini', 160, 0, 'Nandini<div>Skimmed Milk</div><div>500 g pouch</div><div><br></div>', '100285709_2-nandini-powder-skimmed-milk.webp', '100285709-2_2-nandini-powder-skimmed-milk.webp', 'Capture.JPG', 0, 'In Stock', '2021-05-16 11:56:06', NULL),
(34, 3, 19, 'Amulya Dairy Whitener', 'Amulya ', 80, 0, 'Amulya Dairy Whitener<div>Milk Powder<br><div>200 g Pouch<br><div><br></div></div></div>', 'AMULYA-2-500-BACK.png', 'amulya-dairy-whitener-1-kg-1-20200522-270x270.jpg', 'ADC8CA3066551F9D5BBC2872C3_1608375027778.jpeg', 0, 'In Stock', '2021-05-16 12:20:35', NULL),
(35, 3, 23, 'Nestle Everyday Dairy Whitener', 'Nestle', 200, 0, 'Nestle Everyday Dairy Whitener<div>Milk Powder for Tea&nbsp;</div><div>400 g pouch</div>', '71x9onReBAL._SL1500_.jpg', '71Ud6bgOKsL._SL1500_.jpg', '818BdXEYuPL._SL1500_.jpg', 0, 'In Stock', '2021-05-16 12:44:09', NULL),
(36, 3, 17, 'Dailycious', 'Mother Dairy', 212, 0, '', '500-dairy-whitener-mother-dairy-original-imaf2y34cfjgddms.jpeg', '500-dairy-whitener-mother-dairy-original-imaf2y34gq3bhcwu.jpeg', '500-dairy-whitener-mother-dairy-original-imaf2y35bemzmnug.jpeg', 0, 'Out of Stock', '2021-05-16 13:20:27', NULL),
(39, 3, 24, 'Instant Skimmed Milk Powder', 'Govinda', 410, 450, 'Govinda Milk and Milk Products<div>Skimmed Milk Powder</div><div>1 kg</div>', '500-govnd-skimmed-milk-powder-500gm-pack-govind-milk-and-milk-original-imaftgjkjwyw7mb3.jpeg', '500-govnd-skimmed-milk-powder-500gm-pack-govind-milk-and-milk-original-imaftgjhcfpd4zgw.jpeg', '500-govnd-skimmed-milk-powder-500gm-pack-govind-milk-and-milk-original-imaftgjkpaybx2yy.jpeg', 0, 'In Stock', '2021-05-16 14:48:17', NULL),
(40, 3, 27, 'Whole Milk Powder', 'Puramio', 512, 0, 'Puramio Milk Powder<div>100 % Natural</div><div>600 g</div>', '600-whole-milk-powder-puramio-original-imafxnnwrw2c4bwg.jpeg', '600-whole-milk-powder-puramio-original-imafxnnwmznhzazv.jpeg', '600-whole-milk-powder-puramio-original-imafxnnwwpghm7je.jpeg', 0, 'In Stock', '2021-05-16 15:09:11', NULL),
(41, 5, 21, 'Amul Bread spread Lite', 'Amul', 27, 27, '<div id=\"productOverview_feature_div\" class=\"celwidget\" data-feature-name=\"productOverview\" data-csa-c-id=\"2zqxfz-g52okl-9989ph-5sc82q\" data-cel-widget=\"productOverview_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\"><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 432.469px; margin-bottom: 4px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; line-height: 20px !important;\"><b><font face=\"georgia\">Brand</font></b></span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 319.25px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\"><b><font face=\"georgia\">:Amul</font></b></span></td></tr><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; line-height: 20px !important;\"><b><font face=\"georgia\">Weight</font></b></span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 319.25px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\"><b><font face=\"georgia\">:100 Grams</font></b></span></td></tr><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; line-height: 20px !important;\"><b><font face=\"georgia\">Temperature Rating</font></b></span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 319.25px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\"><b><font face=\"georgia\">:Chilled: 33 to 38 degrees</font></b></span></td></tr><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; line-height: 20px !important;\"><b><font face=\"georgia\">Package Weight</font></b></span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 319.25px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\"><b><font face=\"georgia\">\"3.84 Ounces</font></b></span></td></tr></tbody></table></div></div><div id=\"featurebullets_feature_div\" class=\"celwidget\" data-feature-name=\"featurebullets\" data-csa-c-id=\"ouihuf-t15ynp-ham2u8-q0twiz\" data-cel-widget=\"featurebullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\"><div id=\"feature-bullets\" class=\"a-section a-spacing-medium a-spacing-top-small\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-top: 8px !important;\"><div id=\"vnv-container\" class=\"a-section a-spacing-none vnv-container\" style=\"box-sizing: border-box; margin-bottom: 22px; padding-top: 5px; position: relative;\"><br></div></div></div>', 'Capture.JPG', '255187-4_3-amul-bread-spread-lite.jpg', '255187-3_3-amul-bread-spread-lite.jpg', 0, 'In Stock', '2021-06-21 05:41:51', NULL),
(42, 7, 29, 'Cheese Sciles', 'Britannia', 345, 389, '<table class=\"a-normal a-spacing-micro\" style=\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 4px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 319.25px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Britannia</span></td></tr><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Flavour</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 319.25px;\">No artificial flavour and colou<br></td></tr><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Weight</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 319.25px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">480 Grams</span></td></tr><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Temperature Rating</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 319.25px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Chilled: 33 to 38 degrees</span></td></tr><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Package Weight</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 319.25px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">18.34 Ounces</span></td></tr></tbody></table>', '41DscmybvZL.AC_.jpg', '1.JPG', 'Capture.JPG', 30, 'In Stock', '2021-06-21 05:55:20', NULL),
(43, 7, 15, 'Amul Processed Cheese Block', 'Amul', 453, 453, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><font face=\"georgia\"><b>Easy to spread and use, healthiest form of spread</b></font></span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><font face=\"georgia\"><b>Easy to use as a cheesy alternative to chutneys, sauces, ketchups and dips</b></font></span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><font face=\"georgia\"><b>Product of Amul</b></font></span></li></ul>', '51-757UxtoL.AC_.jpg', 'Capture.JPG', '', 20, 'In Stock', '2021-06-21 05:59:56', NULL),
(44, 6, 30, 'Amul Fresh Paneer Block Pouch', 'Amul', 68, 68, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\" style=\"\" face=\"georgia\">Amul Fresh Paneer Block Pouch 200grams</font></span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><font face=\"georgia\"><b><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Rich in milk proteins</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Pure and hygienic</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Paneer having smooth, uniform texture and softness</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">It can be cubed and stir-fried, grilled, scrambled, pickled, smoked, baked, barbecued or served in soups</span></li></b></font></ul></span></div><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><br></span></div>', 'Capture.JPG', 'Capture.JPG', '', 0, 'In Stock', '2021-06-21 06:15:12', NULL),
(45, 6, 31, 'Gowardhan Paneer - Classic Block', 'Gowardhan', 65, 75, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important;\"><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\" id=\"productTitle\"><font size=\"2\" style=\"\" face=\"georgia\">Gowardhan Paneer - Classic Block, 200g 12% off</font></span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><b style=\"\"><font face=\"georgia\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Soft and nutritious</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Made from cows milk</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">A rich source of protein</span></li></font></b></ul></span></div>', 'Capture.JPG', '1.JPG', '2.JPG', 0, 'In Stock', '2021-06-21 06:27:30', NULL),
(46, 7, 16, 'Mother Dairy Cheese - Slices', 'Mother Dairy', 107, 117, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\" style=\"\" face=\"georgia\">Mother Dairy Cheese - Slices, 200g Pack 10%off</font></span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><b style=\"\"><font face=\"georgia\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Soft cheese slices</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Offers the rich creamy and delectable taste</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Perfect for making delicious sandwiches, burgers</span></li></font></b></ul></span></div>', '1.JPG', '2.JPG', '1.JPG', 0, 'In Stock', '2021-06-21 06:36:36', NULL),
(47, 7, 14, 'Nandini Cheddar Cheese blocks', 'Nandini', 350, 350, '<p style=\"box-sizing: border-box; margin-bottom: 15px; color: rgb(17, 17, 17);\"><b style=\"\"><font face=\"georgia\">Nandini Cheese is a rich source of Calcium and Milk proteins. Its delicious and delightful. Available as Processed Cheese Spread and Cheddar Cheese available&nbsp;.</font></b></p><p style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 15px; color: rgb(17, 17, 17);\"><b><font face=\"georgia\">Cheddar Cheese blocks- 200g pouch and 1 kg pouch,</font></b></p><p style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 15px; color: rgb(17, 17, 17);\"><b style=\"\"><font face=\"georgia\">Processed Cheese - 1kg pouch,</font></b></p>', '1.JPG', '1.JPG', '1.JPG', 0, 'In Stock', '2021-06-21 06:51:42', NULL),
(48, 7, 33, 'Go Slice Cheese', 'Go cheese', 100, 130, '<div><font color=\"#0f1111\" face=\"Amazon Ember, Arial, sans-serif\"><span style=\"font-size: 14px;\">Go Slice Cheese 200 g pouch 30% off</span></font></div><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Made from processed cheddar cheese, using world best German UHT technology ensure longer shelf life, rich and natural taste high calcium content</span></li></ul>', '419CESbe2KL.AC_.jpg', 'Capture.JPG', 'go-cheese-slices-200-g-pouch-4-20200910.jpg', 0, 'In Stock', '2021-06-21 07:13:59', NULL),
(49, 7, 34, 'Milky Mist Cheese ', 'Milky mist', 99, 129, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\" id=\"productTitle\"><font size=\"2\" style=\"\">Milky Mist Cheese&nbsp;</font></span></h1><h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\">- 10 Slices, 200g 21% off</font></span></h1><h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><b style=\"font-size: small;\">Milky Mist Cheese - Slices</b></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><br></span></div>', 'Capture.JPG', '1.JPG', '2.JPG', 12, 'In Stock', '2021-06-21 07:22:54', NULL),
(50, 6, 35, 'Mother Dairy Ultimate Paneer', 'Mother Dairy', 85, 85, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\" style=\"\" face=\"georgia\">Mother Dairy Ultimate Paneer Pouch, 200 g</font></span></h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b style=\"\"><font face=\"georgia\">Hence, catering to this consumer need, this paneer with high fat &amp; protein</font></b></span></li></ul>', '1.JPG', '3.JPG', 'Capture.JPG', 0, 'In Stock', '2021-06-21 07:31:27', NULL),
(51, 6, 36, 'Indian’Z Desire (Malai Paneer Cubes)', 'Indian’Z Desire ', 229, 250, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font face=\"georgia\" style=\"\" size=\"2\">Indian’Z Desire (Malai Paneer Cubes)</font></span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><b style=\"\"><font face=\"georgia\" style=\"\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Indian’Z Desire - Malai Paneer Cubes</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Fresh &amp; Softer Than Frozen Paneer</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Container Total Weight 850gm</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Drain Weight 425gm</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Shelf Life - 12 Months</span></li></font></b></ul></span></div>', 'Capture.JPG', '2.JPG', 'Capture.JPG', 115, 'In Stock', '2021-06-21 07:35:58', NULL),
(52, 6, 37, 'Rahul Sterilized Paneer ', 'Rahul Sterilized ', 77, 99, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\" style=\"\" face=\"georgia\">Rahul Sterilized Paneer 200GM 17% off</font></span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 432.469px; color: rgb(15, 17, 17); background-color: rgb(255, 255, 255); margin-bottom: 4px !important;\"><tbody style=\"box-sizing: border-box;\"><b><font face=\"georgia\"><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 319.25px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">RAHUL</span></td></tr><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; line-height: 20px !important;\">Weight</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 319.25px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">200 Grams</span></td></tr><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; line-height: 20px !important;\">Diet Type</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 319.25px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Vegetarian</span></td></tr><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; line-height: 20px !important;\">Temperature Rating</span></td></tr></font></b></tbody></table></span></div>', '22.JPG', '3.JPG', '1.JPG', 50, 'In Stock', '2021-06-21 07:41:59', NULL),
(53, 6, 38, 'Prabhat Malai Paneer Pouch, 200 g', 'Prabhat ', 62, 62, 'Prabhat Malai Paneer Pouch, 200 g<div><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Blast is soft in texture and creamy in taste</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Richness of proteins and calcium</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">No preservatives or chemicals used</span></li></ul><div><br></div></div>', 'Capture.JPG', '1.JPG', '2.JPG', 0, 'In Stock', '2021-06-21 07:45:26', NULL),
(54, 5, 39, 'Mother Dairy Butter Pouch', 'Mother Dairy', 235, 235, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\" style=\"\" face=\"georgia\">Mother Dairy Butter Pouch-500 g</font></span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><font face=\"georgia\"><b>Very creamy &amp; easy to spread; has the right amount of salt; for that perfect taste.; butter is delicious &amp; made from tastier &amp; wholesome milk</b></font></span></li></ul></span></div>', 'Capture.JPG', '1.JPG', '2.JPG', 120, 'In Stock', '2021-06-21 07:56:27', NULL),
(55, 5, 40, 'Nutralite DoodhShakti Probiotic Butter', 'Nutralite DoodhShakti', 81, 119, '<b>Nutralite DoodhShakti Probiotic Butter 22% off<br></b><div><b>500 g</b></div><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b>Probiotic butter</b></span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b>Rich source of milk</b></span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b>Probiotics which supports immunity</b></span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b>Meant for the family</b></span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b>Makes food tasty</b></span></li></ul>', 'Capture.JPG', '3.JPG', '2.JPG', 0, 'In Stock', '2021-06-21 08:03:41', NULL),
(56, 5, 41, 'President Unsalted Butter ', 'President ', 55, 55, '<b><font face=\"georgia\">President Unsalted Butter 100 gm Box<br></font></b><div><span style=\"color: rgb(15, 17, 17);\"><b style=\"\"><font face=\"georgia\">Internationally acclaimed butter</font></b></span><br></div>', 'Capture.JPG', '1.JPG', '2.JPG', 0, 'In Stock', '2021-06-21 08:08:41', NULL),
(57, 15, 42, 'Amul Taza ', 'Amul', 57, 61, 'Amul Taza - 1L Pack<br><div>5% off</div><div><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Amul Taza</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Country of Origin: India</span></li></ul></div><div><br></div>', '51tXyqBBpOL.AC_.jpg', '1.JPG', '2.JPG', 0, 'In Stock', '2021-06-21 08:51:13', NULL),
(58, 15, 43, 'Milky Mist Double Toned Milk (UHT) ', 'Milky mist', 44, 56, 'Milky Mist Double Toned Milk (UHT) Pouch, 500 ml 5% off<br><div><table class=\"a-normal a-spacing-micro\" style=\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 4px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">rand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 319.25px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Milky Mist</span></td></tr><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Allergen Information</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 319.25px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Dairy</span></td></tr><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Temperature Rating</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 319.25px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Ambient: Room Temperature</span></td></tr><tr class=\"a-spacing-small\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 113.219px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Package Weight</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 319.25px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">17.6 Ounces</span></td></tr></tbody></table></div>', '41nc+evKiXL.AC_.jpg', '41nc+evKiXL.AC_.jpg', '41nc+evKiXL.AC_.jpg', 0, 'Out of Stock', '2021-06-21 08:56:39', NULL),
(59, 4, 46, 'Nestle Everyday Shahi Ghee', 'Nestle Everyday Dairy', 438, 469, '<b><font face=\"georgia\">&nbsp;Nestle Everyday Shahi Ghee, 1L Carton 3% off</font></b><div><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b><font face=\"georgia\">Packaged using processes to retain the flavour and aroma</font></b></span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b><font face=\"georgia\">Has a pleasing aroma and rich granular texture. Organic : No</font></b></span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b><font face=\"georgia\">Lends itself beautifully to varied Indian cuisines</font></b></span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b style=\"\"><font face=\"georgia\">A must have in all Indian households</font></b></span></li></ul></div>', '10.JPG', '12.JPG', '11.JPG', 100, 'In Stock', '2021-06-21 09:18:55', NULL),
(60, 4, 3, 'Nandini Pure Ghee', 'Nandini', 245, 245, '<span style=\"color: rgb(33, 33, 33); font-family: Arial, sans-serif; font-size: 18px; letter-spacing: -0.2px;\">Nandini Cow Ghee 500 ml bottle</span><div><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 737.203px; color: rgb(33, 33, 33); font-family: Arial, sans-serif; font-size: 14px; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 737.203px;\"><td class=\"_1hKmbr col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 184.297px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Brand</td><td class=\"URwL2w col col-9-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; width: 552.891px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_21lJbe\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Nandini</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 737.203px;\"><td class=\"_1hKmbr col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 184.297px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; width: 552.891px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_21lJbe\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Cow</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 737.203px;\"><td class=\"_1hKmbr col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 184.297px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Container Type</td><td class=\"URwL2w col col-9-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; width: 552.891px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_21lJbe\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Pouch</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 737.203px;\"><td class=\"_1hKmbr col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 184.297px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Quantity</td><td class=\"URwL2w col col-9-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; width: 552.891px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_21lJbe\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">500 ml</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 737.203px;\"><td class=\"_1hKmbr col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 184.297px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Maximum Shelf Life</td><td class=\"URwL2w col col-9-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; width: 552.891px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_21lJbe\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">9 Months</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 737.203px;\"><td class=\"_1hKmbr col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 184.297px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Source Type</td><td class=\"URwL2w col col-9-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; width: 552.891px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_21lJbe\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Cow Milk</li></ul></td></tr></tbody></table><div><font color=\"#212121\" face=\"Arial, sans-serif\"><span style=\"font-size: 18px; letter-spacing: -0.2px;\"><br></span></font><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 737.203px; color: rgb(33, 33, 33); letter-spacing: -0.2px; background-color: rgb(255, 255, 255); font-family: Arial, sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 737.203px;\"><td class=\"_1hKmbr col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 184.297px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></td></tr></tbody></table></div></div>', 'g1.jpg', 'g2.jpg', 'g1.jpg', 60, 'In Stock', '2021-06-21 09:30:24', NULL),
(61, 10, 47, 'Mother Dairy Classic Curd ', 'Mother Dairy', 30, 30, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\" style=\"\" face=\"georgia\">Mother Dairy Classic Curd Polypack Pouch, 400 g</font></span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b style=\"\"><font face=\"georgia\">Simply delicious; tastes like homemade curd; made from pasteurized toned milk</font></b></span></li></ul></span></div>', '1.JPG', '2.JPG', '3.JPG', 0, 'In Stock', '2021-06-21 09:33:57', NULL),
(62, 4, 48, 'Gowardhan Ghee Jar', 'Gowardhan', 533, 546, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font face=\"georgia\" style=\"\" size=\"2\">Gowardhan Ghee Jar, 1L 6% off</font></span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b style=\"\"><font face=\"georgia\" style=\"\">Country of Origin: India</font></b></span></li></ul></span></div>', '4.JPG', '5.JPG', '6.JPG', 100, 'In Stock', '2021-06-21 12:59:34', NULL),
(63, 4, 49, 'Dynamix Pure Cow Ghee Pouch', 'Dynamix ', 264, 275, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(15, 17, 17); box-sizing: border-box; padding: 0px; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\" face=\"georgia\">Dynamix Pure Cow Ghee Pouch, 500&nbsp; ml 4% off</font></span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; box-sizing: border-box; color: rgb(15, 17, 17);\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b><font face=\"georgia\">Made from pure cow milk</font></b></span></li></ul></span></div>', '7.JPG', '7.JPG', '7.JPG', 30, 'In Stock', '2021-06-21 13:04:28', NULL),
(64, 4, 50, 'Prabhat Cow Ghee Jar', 'Prabhat ', 295, 295, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\" style=\"\" face=\"georgia\">Prabhat Cow Ghee Jar, 500 ml&nbsp;</font></span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><b><font face=\"georgia\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">It’s made from fresh cream, It gives out a rich aroma</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Its golden yellow colour makes it so tempting</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Cow ghee is better for heart compares to other buffalo ghee</span></li></font></b></ul></span></div><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><br></span></div>', '9.JPG', '10.JPG', '11.JPG', 0, 'In Stock', '2021-06-21 13:09:11', NULL),
(65, 4, 51, 'Ved A2 Desi Gir Cow Ghee', 'Veda', 883, 893, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\" style=\"\" face=\"georgia\">Ved A2 Desi Gir Cow Ghee- 500ml 10% off</font></span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><b style=\"\"><font face=\"georgia\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Metabolism booster, Anti ageing agent, Detoxifies body, Increases immunity, Reduces indigestion, Help in losing weight, Balance Tri Dosha,(kapha, pitta, vaata), Lower bad cholesterol, Good for pregnant ladies, Brain tonic,</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Cow ghee is better for heart compares to other buffalo ghee</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Ghee calms Pitta and Vata. Hence, it is ideal for people with Vata-Pitta body type and for those suffering from Vata and Pitta imbalance disorders</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">It Helps in increasing intelligence and memory power</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Boost body energy and detoxify the body</span></li></font></b></ul></span></div>', '12.JPG', '13.JPG', '14.JPG', 120, 'In Stock', '2021-06-21 13:14:40', NULL);
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(66, 12, 52, 'Kwality Walls Party Pack', 'Kwality Walls ', 96, 192, 'Kwality Walls Party Pack, Chocolate, 700ml 25% off<br><div><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Order a Family Pack, scoop it up and enjoy Kwality Wall’s Chocolate at its best</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">You could also add some milk and blend it into a delicious milkshake</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Also you could add any of your favourite sauces or nuts like almond, cashew etc.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Try the exciting range of Kwality Walls lively flavours &amp; satisfy your dessert cravings</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Also try Magnum ice cream. Premium ice cream made with Belgian chocolate. Available in Kwality Wall’s</span></li></ul></div>', '1.JPG', '2.JPG', '3.JPG', 0, 'In Stock', '2021-06-21 13:27:26', NULL),
(67, 12, 52, 'Kwality Walls Magnum Brownie Ice Cream ', 'Kwality Walls ', 90, 90, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\" style=\"\" face=\"georgia\">Kwality Walls Magnum Brownie Ice Cream 80ml</font></span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><b style=\"\"><font face=\"georgia\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Magnum Ice Cream is made with Belgian Chocolate</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Indulgent hazelnut ice cream is covered in thick cracking chocolate and crunchy caramelized hazelnut pieces</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Wild, crunchy and smooth to the taste in every bite.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Store at -18 C or below</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">You will also love Magnum Hazelnut Ice Cream. Premium ice cream made with Belgian chocolate. Available in Kwality Wall’s.</span></li></font></b></ul></span></div>', '4.JPG', '5.JPG', '6.JPG', 0, 'In Stock', '2021-06-21 13:32:35', NULL),
(68, 12, 53, 'Amul Real Ice Cream ', 'Amul', 250, 250, '<h1 class=\"GrE04\" style=\"box-sizing: border-box; padding: 0.6rem 0px 0px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; color: rgb(34, 34, 34); -webkit-line-clamp: initial; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\"><font size=\"2\" style=\"\" face=\"georgia\">Amul Real Ice Cream - Rajbhog, 1 L Tub</font></h1>', '7.JPG', '8.JPG', '9.JPG', 0, 'In Stock', '2021-06-21 13:39:16', NULL),
(69, 12, 53, 'Cream Pot Malai Kulfi', 'Amul', 180, 180, '<h1 class=\"GrE04\" style=\"box-sizing: border-box; padding: 0.6rem 0px 0px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; color: rgb(34, 34, 34); -webkit-line-clamp: initial; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\"><font size=\"2\" style=\"\" face=\"georgia\">Cream Pot Malai Kulfi, 270 ml</font></h1>', '10.JPG', '12.JPG', '11.JPG', 0, 'Out of Stock', '2021-06-21 13:44:13', NULL),
(70, 12, 54, 'NIC Natural Ice Cream ', 'NIC', 370, 380, '<h1 class=\"GrE04\" style=\"box-sizing: border-box; padding: 0.6rem 0px 0px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; color: rgb(34, 34, 34); -webkit-line-clamp: initial; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\"><font size=\"2\" style=\"\" face=\"georgia\">NIC Natural Ice Cream - Yummy Chocochip, 750 m 10%off</font></h1>', '13.JPG', '14.JPG', '15.JPG', 30, 'In Stock', '2021-06-21 13:49:11', NULL),
(71, 12, 55, 'Butterfly Instant Ice Cream Mix, 150 Grams (Butterscotch)', 'Butterfly', 30, 40, '<span style=\"color: rgb(17, 17, 17);\"><b style=\"\"><font face=\"georgia\">Butterfly Instant Ice Cream Mix, 150 Grams (Butterscotch) 10% off</font></b></span><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b><font face=\"georgia\">Quantity: 150 g</font></b></span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b><font face=\"georgia\">Ready To Serve and Enjoy</font></b></span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b style=\"\"><font face=\"georgia\">It is Delicious</font></b></span></li></ul>', '16.JPG', '18.JPG', '16.JPG', 0, 'Out of Stock', '2021-06-21 13:56:45', NULL),
(72, 9, 56, 'Amul Lassi Tetra Pack', 'Amul', 70, 70, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Amul Lassi Tetra Pack, 1L (Rose Flavour)</span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Amul kool Lassi is refreshing milk based natural drink</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Delicious taste</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Tastes best when chilled</span></li></ul></span></div>', '19.JPG', '20.JPG', '21.JPG', 0, 'In Stock', '2021-06-21 14:01:00', NULL),
(73, 9, 57, 'Go Lassi', 'Go', 15, 15, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\" style=\"\" face=\"georgia\">Go Lassi, 180 ml</font></span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><b style=\"\"><font face=\"georgia\">Made form 100 percent cow milk, sweet taste</font></b></span></li></ul></span></div>', '22.JPG', '23.JPG', '22.JPG', 0, 'Out of Stock', '2021-06-21 14:04:53', NULL),
(74, 9, 58, 'Mother Dairy Lassi, Mango, 200ml', 'Mother Dairy', 20, 20, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Mother Dairy Lassi, Mango, 200ml</span></h1>', '24.JPG', '25.JPG', '26.JPG', 0, 'Out of Stock', '2021-06-21 14:08:25', NULL),
(75, 10, 59, 'Prabhat Curd Pouch ', 'Prabhat ', 35, 35, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\" style=\"\" face=\"georgia\">Prabhat Curd Pouch 500 g</font></span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><b style=\"\"><font face=\"georgia\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">It rich and creamy in texture and nutritious</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Uniformly smooth &amp; semisolid</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Giving you all the health benefits, your family would need</span></li></font></b></ul></span></div>', '27.JPG', '28.JPG', '29.JPG', 0, 'In Stock', '2021-06-21 14:13:26', NULL),
(76, 10, 60, 'Gowardhan Set Curd Jar', 'Gowardhan', 104, 104, '<span style=\"color: rgb(17, 17, 17); font-family: verdana, arial, helvetica, sans-serif; font-size: 17px;\">Gowardhan Set Curd Jar, 1 Kg</span><br>', '30.JPG', '31.JPG', '30.JPG', 30, 'In Stock', '2021-06-21 14:16:04', NULL),
(77, 14, 61, 'Milky Mist Yoghurt - Mango ', 'Milky mist', 14, 14, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Milky Mist Yoghurt - Mango 100g</span></h1>', '32.JPG', '33.JPG', '34.JPG', 0, 'In Stock', '2021-06-21 14:22:02', NULL),
(78, 14, 62, 'Epigamia Natural Greek Yogurt', 'Epigamia', 45, 45, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Epigamia Natural Greek Yogurt, 90g</span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Epigamia Natural Greek Yogurt, 90g</span></h1></span></div>', '35.JPG', '36.JPG', '37.JPG', 0, 'In Stock', '2021-06-21 14:28:43', NULL),
(79, 14, 62, ' Epigamia Greek Yogurt Smoothie ', 'Epigamia', 40, 40, '<br><div><span style=\"color: rgb(17, 17, 17); font-family: verdana, arial, helvetica, sans-serif; font-size: 17px;\">Epigamia Greek Yogurt Smoothie - Strawberry Bottle, 200 ml</span><br></div>', '38.JPG', '39.JPG', '40.JPG', 0, 'Out of Stock', '2021-06-21 14:33:45', NULL),
(80, 11, 63, 'Nandini Peda', 'Nandini', 30, 30, '<strong style=\"color: rgb(59, 59, 59); font-family: verdana, helvetica, arial; font-size: 14px;\">Nandini Peda</strong><div><strong style=\"color: rgb(59, 59, 59); font-family: verdana, helvetica, arial; font-size: 14px;\">Nutritinal Information/100ml*&nbsp;</strong><br></div>', '41.JPG', '42.JPG', '41.JPG', 0, 'In Stock', '2021-06-21 14:43:57', NULL),
(81, 11, 64, 'Nestle Milkmaid', 'Nestle Everyday Dairy', 116, 119, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Nestle Milkmaid, 400g 3%off</span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Partly skimmed, sweetened condensed milk from the house of Nestlé</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">A versatile dessert partner for mothers to create sweet stories with their families</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Indian &amp; western desserts with perfect consistency, texture and taste</span></li></ul></span></div>', '43.JPG', '44.JPG', '45.JPG', 30, 'In Stock', '2021-06-21 14:48:19', NULL),
(82, 11, 65, 'Amul Mithai Mate ', 'Amul', 212, 212, '<div><h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\" style=\"\" face=\"georgia\">Amul Mithai Mate 400Gm Can (Pack of 2)</font></span></h1></div><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17);\"><b style=\"\"><font face=\"georgia\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Make instant mithai.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Canned condensed milk(Sweetened).</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Made of pure milk fat.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Available in very convenient easy to open pack</span></li></font></b></ul></span></div>', '46.JPG', '47.JPG', '46.JPG', 30, 'In Stock', '2021-06-21 14:56:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Mother dairy', '2017-01-26 16:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Nandini', '2017-01-26 16:29:09', ''),
(4, 4, 'Amul', '2017-01-30 16:55:48', ''),
(14, 7, 'Nandini', '2021-05-16 06:51:19', NULL),
(15, 7, 'Amul', '2021-05-16 06:51:48', NULL),
(16, 7, 'Mother Dairy', '2021-05-16 07:00:44', NULL),
(17, 3, 'Mother Dairy', '2021-05-16 07:13:30', NULL),
(18, 3, 'Nandini', '2021-05-16 07:13:38', NULL),
(19, 3, 'Amulya', '2021-05-16 07:13:45', NULL),
(20, 3, 'Amul', '2021-05-16 07:13:53', NULL),
(21, 5, 'Amul', '2021-05-16 10:44:48', NULL),
(22, 5, 'Nandini', '2021-05-16 11:23:08', NULL),
(23, 3, 'Nestle Everyday Dairy', '2021-05-16 12:41:17', NULL),
(24, 3, 'Govinda', '2021-05-16 13:13:28', NULL),
(27, 3, 'Puramio', '2021-05-16 15:05:37', NULL),
(29, 7, 'Britannia', '2021-06-21 05:50:12', NULL),
(30, 6, 'Amul', '2021-06-21 06:08:06', NULL),
(31, 6, 'Gowardhan', '2021-06-21 06:24:19', NULL),
(32, 5, 'Britannia', '2021-06-21 06:57:31', NULL),
(33, 7, 'Go cheese', '2021-06-21 07:09:18', NULL),
(34, 7, 'Milky mist', '2021-06-21 07:19:24', NULL),
(35, 6, 'Mother Dairy', '2021-06-21 07:29:28', NULL),
(36, 6, 'Indian’Z Desire ', '2021-06-21 07:33:36', NULL),
(37, 6, 'Rahul Sterilized ', '2021-06-21 07:40:18', NULL),
(38, 6, 'Prabhat ', '2021-06-21 07:44:00', NULL),
(39, 5, 'Mother Dairy', '2021-06-21 07:53:53', NULL),
(40, 5, 'Nutralite DoodhShakti', '2021-06-21 07:57:12', NULL),
(41, 5, 'President', '2021-06-21 08:04:42', NULL),
(42, 15, 'Amul', '2021-06-21 08:49:26', NULL),
(43, 15, 'Milky mist', '2021-06-21 08:53:48', NULL),
(44, 15, 'Nandini', '2021-06-21 08:58:43', NULL),
(45, 15, 'Mother Dairy', '2021-06-21 09:03:06', NULL),
(46, 4, 'Nestle Everyday Dairy', '2021-06-21 09:16:15', NULL),
(47, 10, 'Mother Dairy', '2021-06-21 09:32:41', NULL),
(48, 4, 'Gowardhan', '2021-06-21 12:57:28', NULL),
(49, 4, 'Dynamic ', '2021-06-21 13:03:08', NULL),
(50, 4, 'Prabhat ', '2021-06-21 13:05:24', NULL),
(51, 4, 'Veda', '2021-06-21 13:12:25', NULL),
(52, 12, 'Kwality Walls', '2021-06-21 13:22:00', NULL),
(53, 12, 'Amul', '2021-06-21 13:37:52', NULL),
(54, 12, 'NIC', '2021-06-21 13:46:48', NULL),
(55, 12, 'Butterfly', '2021-06-21 13:54:44', NULL),
(56, 9, 'Amul', '2021-06-21 13:59:34', NULL),
(57, 9, 'Go', '2021-06-21 14:03:18', NULL),
(58, 9, 'Mother Dairy', '2021-06-21 14:07:07', NULL),
(59, 10, 'Prabhat ', '2021-06-21 14:10:42', NULL),
(60, 10, 'Gowardhan', '2021-06-21 14:15:00', NULL),
(61, 14, 'Milky Mist ', '2021-06-21 14:18:23', NULL),
(62, 14, 'Epigamia ', '2021-06-21 14:25:57', NULL),
(63, 11, 'Nandini', '2021-06-21 14:42:11', NULL),
(64, 11, 'Nestle Everyday Dairy', '2021-06-21 14:45:06', NULL),
(65, 11, 'Amul', '2021-06-21 14:53:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `InvoiceNumber` int(11) DEFAULT NULL,
  `CustomerName` varchar(150) DEFAULT NULL,
  `CustomerContactNo` bigint(12) DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `InvoiceGenDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `ProductId`, `Quantity`, `InvoiceNumber`, `CustomerName`, `CustomerContactNo`, `PaymentMode`, `InvoiceGenDate`) VALUES
(1, 4, 2, 753947547, 'Anuj', 9354778033, 'cash', '2019-12-25 03:02:47'),
(2, 1, 1, 753947547, 'Anuj', 9354778033, 'cash', '2019-12-25 03:02:47'),
(3, 1, 1, 979148350, 'Sanjeen', 1234567890, 'card', '2019-12-25 06:08:08'),
(4, 4, 1, 979148350, 'Sanjeen', 1234567890, 'card', '2019-12-25 06:08:08'),
(5, 1, 1, 861354457, 'Rahul', 9876543210, 'cash', '2019-12-24 06:13:48'),
(6, 5, 1, 861354457, 'Rahul', 9876543210, 'cash', '2019-12-24 06:13:48'),
(7, 5, 1, 276794782, 'Sarita', 1122334455, 'cash', '2019-12-25 06:18:06'),
(8, 6, 1, 276794782, 'Sarita', 1122334455, 'cash', '2019-12-25 06:18:06'),
(9, 6, 2, 744608164, 'Babu Pandey', 123458962, 'card', '2019-12-25 06:37:50'),
(10, 2, 2, 744608164, 'Babu Pandey', 123458962, 'card', '2019-12-25 06:37:50'),
(11, 7, 1, 139640585, 'John', 45632147892, 'cash', '2019-12-25 09:24:24'),
(12, 5, 1, 139640585, 'John', 45632147892, 'cash', '2019-12-25 09:24:24'),
(0, 1, 6, 350871996, 'xyz', 6361160882, 'cash', '2021-05-11 14:12:57'),
(0, 7, 6, 678245687, 'today', 521487379281, 'card', '2021-05-11 14:14:47'),
(0, 7, 1, 935369162, 'test2', 6361160882, 'cash', '2021-05-11 14:15:56'),
(0, 3, 1, 164898505, 'arun', 521487379281, 'cash', '2021-05-11 14:16:46'),
(0, 7, 1, 164898505, 'arun', 521487379281, 'cash', '2021-05-11 14:16:46'),
(0, 2, 1, 452636387, 'Test', 6361160882, 'cash', '2021-05-11 14:23:58'),
(0, 7, 13, 452636387, 'Test', 6361160882, 'cash', '2021-05-11 14:23:58'),
(0, 1, 1, 931173429, 'today', 6361160882, 'cash', '2021-05-11 14:36:15'),
(0, 7, 1, 931173429, 'today', 6361160882, 'cash', '2021-05-11 14:36:15'),
(0, 1, 1, 431033263, 'Test', 521487379281, 'cash', '2021-05-11 14:54:29'),
(0, 1, 1, 948514365, 'thrusday', 53467892341, 'cash', '2021-05-13 11:40:42'),
(0, 1, 1, 140686934, 'admin', 521487379281, 'card', '2021-05-13 13:02:59'),
(0, 7, 2, 551256460, 'john', 53467892341, 'cash', '2021-05-13 13:07:27'),
(0, 1, 1, 648755947, 'customername', 6361160882, 'cash', '2021-05-13 15:02:46'),
(0, 1, 1, 243285459, 'admin', 6361160882, 'cash', '2021-05-13 18:16:42'),
(0, 1, 2, 554643598, 'friday', 6361160882, 'cash', '2021-05-14 11:41:27'),
(0, 1, 1, 516579242, 'tuesday', 521487379281, 'cash', '2021-05-18 07:37:07'),
(0, 7, 13, 989724021, 'admin', 6361160882, 'cash', '2021-05-18 08:09:52'),
(0, 1, 1, 908011660, 'test1', 521487379281, 'cash', '2021-05-18 08:15:51'),
(0, 7, 1, 908011660, 'test1', 521487379281, 'cash', '2021-05-18 08:15:51'),
(0, 7, 1, 759900251, 'today', 6361160882, 'cash', '2021-05-18 08:18:13'),
(0, 1, 1, 535105825, 'sandhya', 521487379281, 'Gpay', '2021-05-23 14:39:34'),
(0, 2, 1, 631601679, 'sana', 53467892341, 'Gpay', '2021-05-23 15:04:57'),
(0, 7, 1, 485984252, '27th ', 6361160882, 'Gpay', '2021-05-27 09:30:42'),
(0, 7, 1, 342442133, 'today', 6361160882, 'Gpay', '2021-05-31 14:11:44'),
(0, 6, 13, 283280745, 'Srinivasan', 9964541780, 'cash', '2021-06-23 13:20:22'),
(0, 7, 18, 283280745, 'Srinivasan', 9964541780, 'cash', '2021-06-23 13:20:22'),
(0, 7, 18, 885175116, 'Srinivasan', 9964541780, 'cash', '2021-06-23 13:29:17'),
(0, 1, 12, 885175116, 'Srinivasan', 9964541780, 'cash', '2021-06-23 13:29:17'),
(0, 6, 13, 207653401, 'Srinivasan', 9964541780, 'cash', '2021-06-23 13:30:04'),
(0, 7, 18, 207653401, 'Srinivasan', 9964541780, 'cash', '2021-06-23 13:30:04'),
(0, 7, 18, 934766383, 'admin', 6361160882, 'cash', '2021-06-23 13:31:12'),
(0, 8, 13, 961556002, 'admin', 6361160882, 'cash', '2021-06-23 13:31:41'),
(0, 7, 13, 221651832, 'Srinivasan', 6361160882, 'cash', '2021-06-23 13:41:00'),
(0, 8, 13, 221651832, 'Srinivasan', 6361160882, 'cash', '2021-06-23 13:41:00'),
(0, 7, 18, 175973197, 'admin', 6361160882, 'cash', '2021-06-23 13:50:42'),
(0, 8, 13, 175973197, 'admin', 6361160882, 'cash', '2021-06-23 13:50:42'),
(0, 7, 13, 565072291, 'today', 521487379281, 'cash', '2021-06-23 13:51:46'),
(0, 1, 13, 565072291, 'today', 521487379281, 'cash', '2021-06-23 13:51:46'),
(0, 7, 18, 899468127, 'Srinivasan', 521487379281, 'cash', '2021-06-23 13:52:41'),
(0, 8, 18, 899468127, 'Srinivasan', 521487379281, 'cash', '2021-06-23 13:52:41'),
(0, 1, 13, 662816601, 'arun', 6361160882, 'cash', '2021-06-23 13:58:03'),
(0, 6, 13, 662816601, 'arun', 6361160882, 'cash', '2021-06-23 13:58:03'),
(0, 9, 13, 662816601, 'arun', 6361160882, 'cash', '2021-06-23 13:58:03'),
(0, 2, 1, 318799568, 'today', 53467892341, 'cash', '2021-06-23 15:10:28'),
(0, 7, 13, 318799568, 'today', 53467892341, 'cash', '2021-06-23 15:10:28'),
(0, 8, 13, 447757007, 'xyz', 521487379281, 'cash', '2021-06-23 15:14:05'),
(0, 6, 13, 447757007, 'xyz', 521487379281, 'cash', '2021-06-23 15:14:05'),
(0, 7, 13, 772950395, 'admin', 6361160882, 'cash', '2021-06-23 15:21:08'),
(0, 8, 13, 597478722, 'admin', 53467892341, 'cash', '2021-06-23 15:22:13'),
(0, 1, 13, 615017317, 'admin', 6361160882, 'cash', '2021-06-23 15:41:15'),
(0, 8, 13, 615017317, 'admin', 6361160882, 'cash', '2021-06-23 15:41:15'),
(0, 8, 13, 443431019, 'admin', 6361160882, 'cash', '2021-06-23 15:45:31'),
(0, 1, 1, 988294047, 'admin', 6361160882, 'Gpay', '2021-06-28 06:15:08'),
(0, 2, 2, 988294047, 'admin', 6361160882, 'Gpay', '2021-06-28 06:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `id` int(111) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  `ProductPrice` decimal(10,0) DEFAULT current_timestamp(),
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`id`, `CategoryName`, `CompanyName`, `ProductName`, `ProductPrice`, `PostingDate`, `UpdationDate`) VALUES
(1, 'Milk', 'Amul', 'Toned milk 500ml', '22', '2019-12-24 23:52:37', '2019-12-24 23:52:37'),
(2, 'Milk', 'Mother Diary', 'Full Cream Milk 500ml', '26', '2019-12-25 01:12:24', '2019-12-25 01:12:24'),
(3, 'Milk', 'Gowardhan', 'Full Cream Milk 1ltr', '50', '2019-12-25 01:12:39', '2019-12-25 01:12:39'),
(4, 'Butter', 'Amul', 'Butter 100mg', '46', '2019-12-25 06:12:56', '2019-12-25 06:12:56'),
(5, 'Butter', 'Nandini', 'Nandini Tuppa 500ml', '30', '2019-12-25 06:10:10', NULL),
(6, 'Ghee', 'Gowardhan', 'Ghee 500mg', '350', '2019-12-25 09:23:33', '2019-12-25 09:23:33'),
(7, 'Ghee', 'Nandini', 'Ghee 100mg', '50', '2020-12-25 03:53:33', '2020-12-25 03:53:33'),
(8, 'Ghee', 'Amul', 'Ghee 1lr Tin', '3500', '2020-12-25 03:50:33', '2020-12-25 03:53:23'),
(9, 'cheese', 'Gowardhan', 'cheese 500mg', '300', '2019-12-25 03:53:33', '2019-12-25 03:53:33'),
(10, 'cheese', 'Amul', 'Silce 100g', '180', '2019-12-25 03:53:33', '2019-12-25 03:53:33'),
(11, 'cheese', 'Nandini', 'Cheddar cheese block 450g', '250', '2019-12-25 03:53:33', '2019-12-25 03:53:33'),
(12, 'ice cream', 'Amul', 'Family pack', '250', '2019-12-25 03:53:33', '2019-12-25 03:53:33'),
(13, 'ice cream', 'NIC', '750 mg', '350', '2019-12-25 03:53:33', '2019-12-25 03:53:33'),
(14, 'ice cream', 'Kwality walls', 'Pary pack 500mg', '960', '2019-12-25 03:53:33', '2019-12-25 03:53:33');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, '108cs16009@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-11 11:58:49', NULL, 1),
(25, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-21 13:38:04', NULL, 0),
(26, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-21 13:38:42', '21-05-2021 08:25:32 PM', 1),
(27, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-21 14:55:48', NULL, 1),
(28, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-21 15:13:30', NULL, 1),
(29, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-21 17:55:00', '21-05-2021 11:28:32 PM', 1),
(30, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-21 17:59:02', '21-05-2021 11:34:37 PM', 1),
(31, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-21 18:05:53', NULL, 1),
(32, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-22 07:00:39', NULL, 1),
(33, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-22 08:37:13', NULL, 1),
(34, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-22 09:38:55', NULL, 1),
(35, '', 0x3132372e302e302e3100000000000000, '2021-05-22 10:25:07', NULL, 0),
(36, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-22 10:25:18', NULL, 1),
(37, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-23 14:42:54', NULL, 1),
(38, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-31 13:38:06', '31-05-2021 07:08:40 PM', 1),
(39, 'snehasneha200@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-31 13:52:51', NULL, 0),
(40, 'snehaksneha200@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-31 13:53:19', '31-05-2021 07:31:29 PM', 1),
(41, 'snehaksneha200@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-31 14:05:31', NULL, 0),
(42, 'snehaksneha200@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-31 14:05:45', NULL, 0),
(43, 'snehaksneha200@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-31 14:06:01', NULL, 0),
(44, 'snehaksneha200@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-31 14:06:53', NULL, 0),
(45, 'snehaksneha200@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-31 14:07:07', NULL, 0),
(46, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-31 14:07:16', '31-05-2021 07:53:57 PM', 1),
(47, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-06-04 07:00:05', NULL, 1),
(48, 'BIBIAYESHA6360@gmail.com', 0x3132372e302e302e3100000000000000, '2021-06-21 15:11:41', '21-06-2021 08:46:13 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'test', '108cs16009@gmail.com', 6361160882, '098f6bcd4621d373cade4e832627b4f6', 'kalyanam', 'assam', 'asu', 658890, 'kalyangiri', 'karnataka', 'mysuru', 57001, '2021-05-11 11:58:35', NULL),
(5, 'test', 'bibiayesha6360@gmail.com', 6361160882, '098f6bcd4621d373cade4e832627b4f6', 'mysuru', 'karnataka', 'mysuru', 570019, 'kalyangiri', 'karnataka', 'mysuru', 57001, '2021-05-21 13:38:30', NULL),
(6, 'sneha', 'snehaksneha200@gmail.com', 6361160882, 'cc03e747a6afbbcbf8be7668acfebee5', 'mysuru', 'karnataka', 'mysuru', 570019, 'kalyangiri', 'karnataka', 'mysuru', 57001, '2021-05-31 13:51:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

-- --------------------------------------------------------

--
-- Structure for view `charts`
--
DROP TABLE IF EXISTS `charts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `charts`  AS SELECT `tblproducts`.`ProductName` AS `productName`, `tblproducts`.`id` AS `id`, `s`.`totalQuantity` AS `totalQuantity` FROM (`tblproducts` join (select `tblorders`.`ProductId` AS `ProductId`,sum(`tblorders`.`Quantity`) AS `totalQuantity` from `tblorders` group by `tblorders`.`ProductId`) `s` on(`tblproducts`.`id` = `s`.`ProductId`)) ;

-- --------------------------------------------------------

--
-- Structure for view `charts1`
--
DROP TABLE IF EXISTS `charts1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `charts1`  AS SELECT `products`.`id` AS `id`, `products`.`productName` AS `productName`, `s`.`totalquantity` AS `totalquantity` FROM (`products` join (select `orders`.`productId` AS `productId`,sum(`orders`.`quantity`) AS `totalquantity` from `orders` group by `orders`.`productId`) `s` on(`products`.`id` = `s`.`productId`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
