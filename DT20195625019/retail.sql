create database retail;
use retail;
-- Database: `retail`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `customerid` int(11) NOT NULL,
  `accounttype` varchar(15) NOT NULL,
  `balance` int(11) NOT NULL,
  `date` varchar(15) NOT NULL,
  `status` varchar(215) NOT NULL,
   `message` varchar(215) NOT NULL,
  `accountid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`accountid`)
) ;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountid`, `accounttype`, `balance`, `date`,`status`,`message`, `customerid`) VALUES
(200000000, 'saving', 500, '2020/06/17','Active','account creation complete', 100000000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `ssnid` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `message` varchar(255) NOT NULL,
  `lastupdated` varchar(255) NOT NULL,
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`customerid`)
) ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ssnid`, `name`, `age`, `address`,`status`,`message`,`lastupdated`, `customerid`) VALUES
(123456789, 'mohit sharma', 21, 'delhi,Patna,Maharashtra', 'Active','customer created succesfully','2020/06/16',100000001),
(15656, 'hari', 45, '44,Ahemdabad,Madhya Pradesh','Active','customer created succesfully','2020/06/17', 100000002);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `sourceaccountid` int(11) NOT NULL,
  `sourceaccounttype` varchar(15) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `targetaccountid` int(11) DEFAULT NULL,
  `targetaccounttype` varchar(15) DEFAULT NULL,
  `type` varchar(15) NOT NULL,
  `transactionid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`transactionid`)
) ;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sourceaccountid`, `sourceaccounttype`, `amount`, `date`, `targetaccountid`, `targetaccounttype`, `type`, `transactionid`) VALUES
(100000001, 'saving', 50, 20200616, NULL, NULL, 'withdraw', 1),
(100000001, 'saving', 500, 20200616, NULL, NULL, 'deposit', 2),
(100000001, 'saving', 500, 20200616, 100000000, 'saving', 'transfer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `uname` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  PRIMARY KEY (`uname`)
) ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uname`, `password`) VALUES
('a', 'b');

select * from customer;
select * from account;
select * from transaction;
