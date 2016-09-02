/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : music

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-08-31 16:20:55
*/
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `Collection_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏id',
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
  `Comment_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论的id',
  `User_ID` int(11) NOT NULL COMMENT '用户id',
  `Music_ID` int(11) NOT NULL COMMENT '歌曲id',
  `comment_Info` text NOT NULL COMMENT '评论内容',
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
  `downloda_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '下载记录id',
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
  `music_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '音乐的id',
  `music_name` varchar(40) NOT NULL COMMENT '音乐的名称',
  `music_singer` varchar(40) NOT NULL COMMENT '歌手名',
  `music_special` varchar(40) NOT NULL COMMENT '歌曲专辑',
  `music_time` int(16) DEFAULT NULL COMMENT '音乐时长',
  `music_url` varchar(300) NOT NULL COMMENT '音乐的url',
  `music_listened_count` int(16) NOT NULL DEFAULT '0' COMMENT '歌曲播放量',
  `music_introduce` text COMMENT '歌曲介绍',
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
  `User_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户Id',
  `User_username` varchar(40) NOT NULL COMMENT '用户名',
  `User_password` varchar(50) NOT NULL COMMENT '密码',
  `User_name` varchar(40) NOT NULL COMMENT '用户的姓名',
  `User_sex` tinyint(1) DEFAULT NULL COMMENT '用户的性别',
  `User_age` smallint(6) DEFAULT NULL COMMENT '用户的年龄',
  `User_date` int(16) DEFAULT NULL COMMENT '用户的生日',
  `admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertable
-- ----------------------------
INSERT INTO `usertable` VALUES ('4', 'admin_test', '123456', 'admin', '1', '18', '1472630200', '1');
INSERT INTO `usertable` VALUES ('5', 'user_test', '123456', 'admin', '1', '18', '1472630200', '0');
