/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-09-07 00:21:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dingdan`
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(32) DEFAULT NULL,
  `goodsprice` double DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `shopid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_shop_id` (`shopid`),
  CONSTRAINT `fk_shop_id` FOREIGN KEY (`shopid`) REFERENCES `shop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('2', '', null, null, null);
INSERT INTO `dingdan` VALUES ('8', 'asd', '33.3', '20', '6');
INSERT INTO `dingdan` VALUES ('9', 'asdasdasd', '35', '3', '8');

-- ----------------------------
-- Table structure for `function`
-- ----------------------------
DROP TABLE IF EXISTS `function`;
CREATE TABLE `function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `functionname` varchar(32) DEFAULT NULL,
  `rowid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rowid` (`rowid`),
  CONSTRAINT `fk_rowid` FOREIGN KEY (`rowid`) REFERENCES `row` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of function
-- ----------------------------
INSERT INTO `function` VALUES ('1', '增加用户', '1');
INSERT INTO `function` VALUES ('2', '管理所有用户', '1');
INSERT INTO `function` VALUES ('3', '删除用户', '1');
INSERT INTO `function` VALUES ('4', '查询单个用户', '1');
INSERT INTO `function` VALUES ('5', '新增商品', '3');
INSERT INTO `function` VALUES ('6', '商品撤销', '3');
INSERT INTO `function` VALUES ('7', '商品维护', '3');
INSERT INTO `function` VALUES ('8', '查询商品', '3');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(32) DEFAULT NULL,
  `image` varchar(2000) DEFAULT NULL,
  `price` double(32,0) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `status` int(10) unsigned zerofill DEFAULT '0000000000',
  `userid` int(11) DEFAULT NULL,
  `comment` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userid` (`userid`),
  CONSTRAINT `fk_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('7', '123456', 'www.jpg', '89', '18', '2016-9-5 10:37:36', '0000000001', '4', 'test');
INSERT INTO `goods` VALUES ('8', 'asdasdasd', 'bg.jpg', '35', '50', '2016-9-5 10:44:03', '0000000001', '4', 'sadasd---');
INSERT INTO `goods` VALUES ('9', 'asdasdasd', 'image-6.jpg', '35', '47', '2016-9-5 10:45:19', '0000000000', '4', 'sadasd---------');
INSERT INTO `goods` VALUES ('10', 'asdasdasd', 'image-3.jpg', '35', '34', '2016-9-5 10:46:59', '0000000000', '4', 'sadasd---');
INSERT INTO `goods` VALUES ('11', 'asdasdasd', 'thumb-6.jpg', '35', '47', '2016-9-5 10:47:04', '0000000000', '4', 'sadasd---');
INSERT INTO `goods` VALUES ('12', 'asdasdasd', 'thumb-3.jpg', '35', '50', '2016-9-5 10:47:11', '0000000000', '4', 'sadasd---');
INSERT INTO `goods` VALUES ('13', 'asdasdasd', 'image-4.jpg', '35', '50', '2016-9-5 10:47:17', '0000000000', '4', 'sadasd---');
INSERT INTO `goods` VALUES ('14', 'asdasdasd', 'image-2.jpg', '35', '50', '2016-9-5 10:47:27', '0000000000', '4', 'sadasd---');
INSERT INTO `goods` VALUES ('15', 'sadsad', 'thumb-1.jpg', '285', '2656', '2016-9-5 14:25:11', '0000000000', '4', 'sadasd');
INSERT INTO `goods` VALUES ('16', 'admin', 'image-3.jpg', '29', '20', '2016-9-6 11:59:03', '0000000000', '3', 'asdasdasdasdasdasdasdasd');
INSERT INTO `goods` VALUES ('17', 'mioajsd ', 'image-5.jpg', '300000', '300000', '2016-9-6 11:59:35', '0000000000', '3', 'BB专用@@@@@@@@@@');

-- ----------------------------
-- Table structure for `row`
-- ----------------------------
DROP TABLE IF EXISTS `row`;
CREATE TABLE `row` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rowname` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of row
-- ----------------------------
INSERT INTO `row` VALUES ('1', '管理员');
INSERT INTO `row` VALUES ('2', '买家');
INSERT INTO `row` VALUES ('3', '卖家');

-- ----------------------------
-- Table structure for `shop`
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `shopstatus` int(10) unsigned zerofill DEFAULT '0000000000',
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`userid`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('2', '9', '2016-9-6 21:14:49', '0000000000');
INSERT INTO `shop` VALUES ('3', '9', '2016-9-6 21:17:12', '0000000000');
INSERT INTO `shop` VALUES ('4', '9', '2016-9-6 21:24:00', '0000000000');
INSERT INTO `shop` VALUES ('5', '9', '2016-9-6 21:25:16', '0000000000');
INSERT INTO `shop` VALUES ('6', '9', '2016-9-6 21:27:32', '0000000000');
INSERT INTO `shop` VALUES ('7', '9', '2016-9-6 21:28:37', '0000000000');
INSERT INTO `shop` VALUES ('8', '9', '2016-9-6 21:41:54', '0000000000');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `rowid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_id` (`rowid`),
  CONSTRAINT `fk_id` FOREIGN KEY (`rowid`) REFERENCES `row` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'test', 'test', 'test@test.com', '1', '0');
INSERT INTO `user` VALUES ('2', 'buy', 'buy', 'buy@buy.com', '1', '0');
INSERT INTO `user` VALUES ('3', 'qsd33333', 'qsd33333', 'qsd33333@163.com', '3', '0');
INSERT INTO `user` VALUES ('4', '666', '666', '666', '3', '0');
INSERT INTO `user` VALUES ('5', '999', '999', '9999@9999.com', '1', '0');
INSERT INTO `user` VALUES ('7', 'test', 'test', 'teste@qq.com', '1', '0');
INSERT INTO `user` VALUES ('8', 'qsd', 'qsd', 'qsd@qsd123.com', '1', '1');
INSERT INTO `user` VALUES ('9', '333', '333', '333@333.com', '2', '0');
