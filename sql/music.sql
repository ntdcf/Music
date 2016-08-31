/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : music

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-08-31 08:48:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `Collection_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` int(11) NOT NULL,
  `Music_ID` int(11) NOT NULL,
  PRIMARY KEY (`Collection_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collection
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `Comment_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` int(11) NOT NULL,
  `Music_ID` int(11) NOT NULL,
  `comment_Info` varchar(200) CHARACTER SET latin1 NOT NULL,
  `comment_count` smallint(6) NOT NULL,
  PRIMARY KEY (`Comment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for downloadtable
-- ----------------------------
DROP TABLE IF EXISTS `downloadtable`;
CREATE TABLE `downloadtable` (
  `downloda_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `User_ID` int(11) NOT NULL,
  `Music_ID` int(11) NOT NULL,
  PRIMARY KEY (`downloda_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of downloadtable
-- ----------------------------

-- ----------------------------
-- Table structure for musicmenu
-- ----------------------------
DROP TABLE IF EXISTS `musicmenu`;
CREATE TABLE `musicmenu` (
  `music_id` int(11) NOT NULL AUTO_INCREMENT,
  `music_name` varchar(40) CHARACTER SET latin1 NOT NULL,
  `music_singer` varchar(40) CHARACTER SET latin1 NOT NULL,
  `music_special` varchar(40) CHARACTER SET latin1 NOT NULL,
  `music_time` timestamp NULL DEFAULT NULL,
  `music_url` varchar(300) CHARACTER SET latin1 NOT NULL,
  `music_listened_count` smallint(6) NOT NULL,
  `music_introduce` text CHARACTER SET latin1,
  PRIMARY KEY (`music_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of musicmenu
-- ----------------------------

-- ----------------------------
-- Table structure for usertable
-- ----------------------------
DROP TABLE IF EXISTS `usertable`;
CREATE TABLE `usertable` (
  `User_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_username` varchar(40) CHARACTER SET latin1 NOT NULL,
  `User_password` varchar(50) CHARACTER SET latin1 NOT NULL,
  `User_name` varchar(40) CHARACTER SET latin1 NOT NULL,
  `User_sex` char(2) CHARACTER SET latin1 DEFAULT NULL,
  `User_age` smallint(6) DEFAULT NULL,
  `User_date` date DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertable
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
