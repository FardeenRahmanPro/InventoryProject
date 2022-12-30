-- SQL CODE




-- version 4.7.9
-- Host: 127.0.0.1:3306
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Database: `webinventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `user_id` varchar(11) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `pisition` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `confirm_password` varchar(25) NOT NULL,
  `image` longblob,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `user_name`, `first_name`, `last_name`, `pisition`, `password`, `confirm_password`, `image`) VALUES
('UID1003', 'admin', 'admin', 'admin', 'test', '123', '123', 0xffd8ffe000104a46494600010101006000600000ffe13aba4578696600004d4d002a000000080006000b000200000026000008620112000300000001000100000131000200000026000008880132000200000014000008ae8769000400000001000008c2ea1c00070000080c00000056000011461cea00000008000000000000000000000000000000),
('UID1004', 'dsfas', 'asda', 'sada', 'dad', 'asda', 'asda', 0x89504e470d0a1a0a0000000d4948445200000018000000180803000000d7a9cdca0000000373424954080808dbe14fe00000000970485973000000a8000000a80179f4b3c60000001974455874536f667477617265007777772e696e6b73636170652e6f72679bee3c1a000000e1504c5445ffffffff6633cc2222f35146ec4239ef504af15247ca2c29cb2b29f15248cc2b27f15248f1524ac829),
('UID1005', 'ruwan', 'any', 'any', 'any', '20111130', '20111130', 0x89504e470d0a1a0a0000000d4948445200000020000000200804000000d973b27f0000000467414d410000b18f0bfc6105000000206348524d00007a26000080840000fa00000080e8000075300000ea6000003a98000017709cba513c00000002624b47440000aa8d2332000000097048597300000ec400000ec401952b0e1b0000000774494d4507e20c1a0d281ac5eb8e500000024e4944415448c78dd55b888d511407f0df9c31cc608c91176a3022b90c45b9d414a28894cb83eb8bdc358978404a3cf1e0f682e24128f1201272897851d2b8369998dc46eeca8ceb197c1ece5cbe33e7fb8ef3df2f6bafbdfeffbdd6deebdb1fd14898e990473efae383070e98264fce98a0469031ee1a931b7d8964043d10f8615e2ebb37c5d00381a471d9e99dbcca420f041ecbcf9e7ef0df31279bc0ad1c042ec5d3bbc41cdfb7b459a30ee1fb0e63b48248e1c769b3ae46c409f489a4273d6de7e91327501a2950aba99da7479bd9216da13ba8b738cdfb49a99ba0b7ada1b80881d40daf7535238b6bcdd5f7b68cf0492564e2bc387c6dce44768159b10289ccb52881e30e46d24bd5989d8b40c2520323fc2b0c8a0a8e42be3d19cf47994dd15585696d986e5d5a5c9153bac59e8d7cebd509fc0975fc5fab5ad78b5d4efb1a36b651537d70d4302b74f4599585e0977b8628f70ccc57a05171dcfe33bc50823ac371d86ddbbdb728adbcb1ee3b6db1fdee48aab743496a210f473c7141c2591b3c9170514f93ecd5c539b57eea6fb2feb639e02f28344a9511c6f9921238eba4cd8a947927a9ca799d34c95369927e0abc71cb053fdae57dc28b96b3d8691fad254c552b1754aa6931cb35188b6a439578646d4e02c5920a5bee38a9c16e0b6c51ef584c7365a2cec854230df552855fe61b60a55dc6c752069b129a3d5491ea830a0d46ab568d22eb35b81e2330d1dc503fe6b508942bb5bcd5ddd7952c690f0c45f6f23b25f0dc5b4b3436bbd7288b791be9ec86d5cd76477bbd4e99050efa92c30f257d7c77460ffe01a62e0690f4e2b2670000002574455874646174653a63726561746500323031382d31322d32365431323a34303a32362b30313a30308187cfc60000002574455874646174653a6d6f6469667900323031382d31322d32365431323a34303a32362b30313a3030f0da777a0000001974455874536f667477617265007777772e696e6b73636170652e6f72679bee3c1a0000000049454e44ae426082);

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

DROP TABLE IF EXISTS `developer`;
CREATE TABLE IF NOT EXISTS `developer` (
  `company_name` varchar(100) NOT NULL,
  `sub_title` varchar(100) NOT NULL,
  `ex_date` date NOT NULL,
  `deve_name` varchar(100) NOT NULL,
  `bill_heder` varchar(100) NOT NULL,
  `contac_no` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `adress` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`company_name`, `sub_title`, `ex_date`, `deve_name`, `bill_heder`, `contac_no`, `email`, `adress`) VALUES
('Hamadi software', 'Inventory System', '2030-12-31', 'Software By: Ahmad', 'Hamadi Software', '2893396715', 'ahmadhamadi2002@gmail.com', 'add any adress');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `sin` varchar(50) NOT NULL,
  `sale_income` double NOT NULL,
  `sale_cost` double NOT NULL,
  `discount` double NOT NULL,
  `cash` double NOT NULL,
  `balance` double NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `sale_return` double NOT NULL,
  `return_cost` double NOT NULL,
  PRIMARY KEY (`sin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`sin`, `sale_income`, `sale_cost`, `discount`, `cash`, `balance`, `date`, `time`, `sale_return`, `return_cost`) VALUES
('SI1003', 700, 500, 0, 1000, 300, '2022-12-04', '10:34:23', 0, 0),
('SI1002', 2100, 1500, 0, 5000, 2900, '2022-12-04', '10:25:05', 0, 0),
('SI1001', 700, 500, 0, 1000, 300, '2022-12-04', '10:21:41', 0, 0),
('SI1000', 2232, 1700, 168.00000000000003, 5000, 2768, '2022-12-04', '10:11:56', 2400, 600),
('SI1004', 3700, 2700, 100, 5000, 1300, '2022-12-25', '09:50:15', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `receivestock`
--

DROP TABLE IF EXISTS `receivestock`;
CREATE TABLE IF NOT EXISTS `receivestock` (
  `receive_no` varchar(25) NOT NULL,
  `receive_date` varchar(25) DEFAULT NULL,
  `item_number` varchar(100) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `quentity` double DEFAULT NULL,
  `expire_date` varchar(25) DEFAULT NULL,
  `buying_price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `mark` int(5) NOT NULL,
  PRIMARY KEY (`receive_no`,`item_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receivestock`
--

INSERT INTO `receivestock` (`receive_no`, `receive_date`, `item_number`, `item_name`, `description`, `quentity`, `expire_date`, `buying_price`, `selling_price`, `total_price`, `mark`) VALUES
('RN1002', 'Dec 4, 2022', 'ti120', 'sA', 'ADA', 18, 'Dec 23, 2022', 12, 600, 216, 1),
('RN1001', 'Dec 5, 2022', 'item02', 'item02', 'any', 20, 'Dec 28, 2022', 500, 700, 10000, 0),
('RN1000', 'Dec 4, 2022', 'item01', 'item1 name', 'any', 5, 'Dec 4, 2022', 100, 150, 500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `aaaa` int(1) NOT NULL,
  `bbbb` int(1) NOT NULL,
  `cccc` int(1) NOT NULL,
  `dddd` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `returnsalecost`
--

DROP TABLE IF EXISTS `returnsalecost`;
CREATE TABLE IF NOT EXISTS `returnsalecost` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `sin` varchar(25) NOT NULL,
  `cost` double NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returnsalecost`
--

INSERT INTO `returnsalecost` (`tid`, `sin`, `cost`) VALUES
(58, 'SI1000', 100),
(59, 'si1000', 500);

-- --------------------------------------------------------

--
-- Table structure for table `returnstock`
--

DROP TABLE IF EXISTS `returnstock`;
CREATE TABLE IF NOT EXISTS `returnstock` (
  `tb_no` int(11) NOT NULL AUTO_INCREMENT,
  `receive_number` varchar(50) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `total_price` varchar(50) NOT NULL,
  `mark` int(5) NOT NULL,
  PRIMARY KEY (`tb_no`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returnstock`
--

INSERT INTO `returnstock` (`tb_no`, `receive_number`, `item_name`, `quantity`, `total_price`, `mark`) VALUES
(6, 'RN1002', 'sA', '2', '24.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sale_return`
--

DROP TABLE IF EXISTS `sale_return`;
CREATE TABLE IF NOT EXISTS `sale_return` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `sin` varchar(25) NOT NULL,
  `receive_no` varchar(25) NOT NULL,
  `item_no` varchar(25) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `quantity` int(25) NOT NULL,
  `price` double NOT NULL,
  `amount` double NOT NULL,
  `mark` int(5) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale_return`
--

INSERT INTO `sale_return` (`tid`, `sin`, `receive_no`, `item_no`, `item_name`, `quantity`, `price`, `amount`, `mark`) VALUES
(158, 'SI1000', 'RN1000', 'item01', 'item1 name', 2, 150, 300, 0),
(159, 'SI1000', 'RN1001', 'item02', 'item02', 3, 700, 2100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sells`
--

DROP TABLE IF EXISTS `sells`;
CREATE TABLE IF NOT EXISTS `sells` (
  `tid` int(50) NOT NULL AUTO_INCREMENT,
  `sin` varchar(100) NOT NULL,
  `receive_no` varchar(100) NOT NULL,
  `item_number` varchar(200) DEFAULT NULL,
  `item_name` varchar(200) DEFAULT NULL,
  `quentity` varchar(200) DEFAULT NULL,
  `price` varchar(10000) DEFAULT NULL,
  `amount` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=526 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sells`
--

INSERT INTO `sells` (`tid`, `sin`, `receive_no`, `item_number`, `item_name`, `quentity`, `price`, `amount`) VALUES
(520, 'SI1001', 'RN1001', 'item02', 'item02', '1', '700', '700.0'),
(522, 'SI1003', 'RN1001', 'item02', 'item02', '1', '700', '700.0'),
(519, 'SI1000', 'RN1001', 'item02', 'item02', '0', '700', '0'),
(518, 'SI1000', 'RN1000', 'item01', 'item1 name', '0', '150', '0'),
(521, 'SI1002', 'RN1001', 'item02', 'item02', '3', '700', '2100.0'),
(524, 'SI1004', 'RN1001', 'item02', 'item02', '5', '700', '3500.0'),
(525, 'SI1004', 'RN1000', 'item01', 'item1 name', '2', '150', '300.0');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `receive_no` varchar(200) NOT NULL,
  `item_number` varchar(200) NOT NULL,
  `quentity` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`receive_no`,`item_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`receive_no`, `item_number`, `quentity`) VALUES
('RN1000', 'item01', '2'),
('RN1001', 'item02', '7');
COMMIT;

