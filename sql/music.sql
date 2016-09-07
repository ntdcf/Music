/*
Navicat MariaDB Data Transfer

Source Server         : MariaDB
Source Server Version : 100114
Source Host           : localhost:3306
Source Database       : music

Target Server Type    : MariaDB
Target Server Version : 100114
File Encoding         : 65001

Date: 2016-09-07 14:34:17
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES ('9', '27', '15');
INSERT INTO `collection` VALUES ('10', '27', '5');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('2', '28', '1', '我也感觉很好听，哈哈哈');
INSERT INTO `comment` VALUES ('7', '27', '15', '太TM好听了');
INSERT INTO `comment` VALUES ('8', '27', '15', '好听');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of musicmenu
-- ----------------------------
INSERT INTO `musicmenu` VALUES ('2', 'Hero', 'Mariah Carey', 'The Ballads', null, 'E:\\MusicFile\\Hero.mp3 \r\n\r\n', '2', null);
INSERT INTO `musicmenu` VALUES ('5', 'Hero', 'Mariah Carey', 'The Ballads', null, 'E:\\MusicFile\\Hero.mp3 \r\n\r\n', '2', '《Hero》是由美国流行女歌手玛丽亚·凯莉演唱的一首歌曲。歌曲由玛利亚·凯莉与华特·亚凡瑟夫谱写，作为第二支单曲收录在玛利亚·凯莉第三张录音室专辑《Music Box》中，于1993年10月19日由哥伦比亚唱片公司发行。美国NBA球星迈克尔·乔丹将《Hero》作为了自己退役时的主题曲');
INSERT INTO `musicmenu` VALUES ('6', 'A Sky Full of Stars', 'Coldplay', 'Ghost stories', null, 'music/A Sky Full of Stars.mp3', '0', '《A Sky Full of Stars》是英国另类摇滚乐队酷玩乐队演唱的一首流行歌曲，由乐队及瑞典音乐制作人Avicii进行词曲创作，Avicii、乐队及保罗·埃普沃思等人编曲制作，被Parlophone唱片公司作为乐队六专《Ghost Stories》的第三支单曲发行于2014年5月2日');
INSERT INTO `musicmenu` VALUES ('8', 'Change', 'Taylor Swift', 'Fearless', null, 'music/Change.mp3', '0', 'Taylor Swift第二张专辑《Fearless》的一首歌曲，并成为公认的2008年北京奥运会美国宣传单曲，在美国一时大热。');
INSERT INTO `musicmenu` VALUES ('9', 'Bird', 'Coldplay', 'A Head Full Of Dream', null, 'music/Bird.mp3', '0', '酷玩专辑《A Head Full Of Dreams》的一首单曲');
INSERT INTO `musicmenu` VALUES ('11', 'Breathe', 'Taylor Swift', 'Fearless', null, 'music/Breathe.mp3', '0', '《Breathe》是Taylor Swift 在专辑《Fearless》中的一首与Colbie Caillat合唱的美国抒情乡村风格的歌曲。');
INSERT INTO `musicmenu` VALUES ('15', '斑马，斑马', '宋冬野', '安河桥北', null, 'music/1.mp3', '1', '一首好听的民谣');

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
  `lockUser` tinyint(1) unsigned zerofill NOT NULL COMMENT '用户名是否封锁',
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertable
-- ----------------------------
INSERT INTO `usertable` VALUES ('24', 'admin_test', '123456', 'luohao', '1', '20', '2000000', '1', '0');
INSERT INTO `usertable` VALUES ('27', 'user_test', '123456', '崔红红', '0', '22', '608617472', '0', '0');
INSERT INTO `usertable` VALUES ('28', 'luohao', '1995624', '罗昊', '1', '22', '764315648', '0', '1');
INSERT INTO `usertable` VALUES ('29', 'luohao2', '1995624', '罗昊', '1', '22', '1213417472', '0', '0');
INSERT INTO `usertable` VALUES ('38', 'test_a', '123456', '测试姓名', '1', '22', '1472800105', '0', '0');
INSERT INTO `usertable` VALUES ('39', 'test_b', '123457', '测试姓名', '1', '22', '1472800106', '0', '0');
INSERT INTO `usertable` VALUES ('40', 'test_c', '123458', '测试姓名', '1', '22', '1472800106', '0', '0');
INSERT INTO `usertable` VALUES ('41', 'test_d', '123459', '测试姓名', '1', '22', '1472800106', '0', '0');
INSERT INTO `usertable` VALUES ('42', 'test_e', '123460', '测试姓名', '1', '22', '1472800106', '0', '0');
INSERT INTO `usertable` VALUES ('43', 'test_f', '123461', '测试姓名', '1', '22', '1472800106', '0', '0');
INSERT INTO `usertable` VALUES ('44', 'test_g', '123462', '测试姓名', '1', '22', '1472800106', '0', '0');
INSERT INTO `usertable` VALUES ('45', 'test_h', '123463', '测试姓名', '1', '22', '1472800106', '0', '0');
INSERT INTO `usertable` VALUES ('46', 'test1', '123456', '罗昊', '1', '12', '1818217472', '0', '0');
INSERT INTO `usertable` VALUES ('47', 'admin', '123456', '啊啊啊', '1', '12', '1818217472', '1', '0');
