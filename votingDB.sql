/*
SQLyog Community Edition- MySQL GUI v5.22a
Host - 5.1.41 : Database - votingdatabase
*********************************************************************
Server version : 5.1.41
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `votingdatabase`;

USE `votingdatabase`;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `administrator` */

DROP TABLE IF EXISTS `administrator`;

CREATE TABLE `administrator` (
  `a_id` int(10) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(30) DEFAULT NULL,
  `a_email` varchar(30) DEFAULT NULL,
  `a_password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `administrator` */

insert  into `administrator`(`a_id`,`a_name`,`a_email`,`a_password`) values (1,'thabiso','thabiso@gmail.com','thabiso');

/*Table structure for table `candidate` */

DROP TABLE IF EXISTS `candidate`;

CREATE TABLE `candidate` (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(20) DEFAULT NULL,
  `c_surname` varchar(20) DEFAULT NULL,
  `c_image` varchar(100) DEFAULT NULL,
  `partyname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `candidate` */

insert  into `candidate`(`c_id`,`c_name`,`c_surname`,`c_image`,`partyname`) values (1,'mpho','maboko','../images/1.png','pasma'),(2,' banele',' ziqubu','../images/dd.jpg',' sasco'),(3,' esrael',' masephula','../images/20200427_214441.png','daso'),(4,' leo',' messi','../images/san1.jpg',' effsc');

/*Table structure for table `party` */

DROP TABLE IF EXISTS `party`;

CREATE TABLE `party` (
  `p_id` int(10) NOT NULL AUTO_INCREMENT,
  `partyname` varchar(30) DEFAULT NULL,
  `partyLogo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `party` */

insert  into `party`(`p_id`,`partyname`,`partyLogo`) values (1,'pasma','C:/Users/thabiso/Picturespasma'),(2,'daso','C:/Users/thabiso/Picturesdaso.'),(3,'effsc','C:/Users/thabiso/Pictureseff.j'),(4,'sasco','C:/Users/thabiso/Picturessasco');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `stud_id` int(10) NOT NULL AUTO_INCREMENT,
  `student_number` int(10) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contact` int(10) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`stud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`stud_id`,`student_number`,`surname`,`name`,`gender`,`email`,`contact`,`password`,`address`) values (1,215546047,'singwane','sandile','Male','sandilesingwane@gmail.com',791741258,'msandi',' 55 richards drive \r\n midrand\r\n 2547'),(2,214789578,'khoza','gift','Female','gift@gmail.com',745874521,'gift',' 25 william nicol drive \r\n brynston \r\n 1254'),(3,0,'','','please select gender','',0,'','');

/*Table structure for table `vote` */

DROP TABLE IF EXISTS `vote`;

CREATE TABLE `vote` (
  `vote_id` int(10) NOT NULL AUTO_INCREMENT,
  `partyname` varchar(30) DEFAULT NULL,
  `stud_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`vote_id`),
  UNIQUE KEY `stud_id` (`stud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `vote` */

insert  into `vote`(`vote_id`,`partyname`,`stud_id`) values (1,'pasma',NULL),(2,'pasma',NULL),(3,'daso',NULL),(4,'daso',NULL),(5,'daso',NULL),(6,'pasma',NULL),(7,'pasma',NULL),(8,'pasma',NULL),(9,'effsc',NULL),(10,'effsc',NULL),(11,'sasco',NULL),(12,'pasma',NULL),(13,'pasma',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;