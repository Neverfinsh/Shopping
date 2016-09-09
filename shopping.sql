/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-09-09 11:42:45
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
  `goodsid` int(11) DEFAULT NULL,
  `dingdanstatus` int(10) unsigned zerofill DEFAULT '0000000000',
  PRIMARY KEY (`id`),
  KEY `fk_shop_id` (`shopid`),
  KEY `fk_good_id` (`goodsid`),
  CONSTRAINT `fk_good_id` FOREIGN KEY (`goodsid`) REFERENCES `goods` (`id`),
  CONSTRAINT `fk_shop_id` FOREIGN KEY (`shopid`) REFERENCES `shop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('1', '平板', '35', '1', '1', '10', '0000000000');
INSERT INTO `dingdan` VALUES ('2', 'BB机', '35', '1', '1', '11', '0000000000');
INSERT INTO `dingdan` VALUES ('3', '平板', '35', '1', '2', '10', '0000000000');
INSERT INTO `dingdan` VALUES ('4', '平板', '35', '1', '1', '10', '0000000000');
INSERT INTO `dingdan` VALUES ('5', '箱包', '35', '2', '1', '14', '0000000000');
INSERT INTO `dingdan` VALUES ('6', 'ateets', '123', '33', '1', '24', '0000000000');

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
INSERT INTO `function` VALUES ('6', '订单管理', '3');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('7', '123456', 'www.jpg', '89', '18', '2016-9-5 10:37:36', '0000000001', '4', 'test');
INSERT INTO `goods` VALUES ('8', '电脑', 'bg.jpg', '35', '50', '2016-9-5 10:44:03', '0000000001', '4', '这是一个好的产品');
INSERT INTO `goods` VALUES ('9', '手机', 'image-6.jpg', '35', '19', '2016-9-5 10:45:19', '0000000000', '4', '这是一个非常好的产品');
INSERT INTO `goods` VALUES ('10', '平板', 'image-3.jpg', '35', '29', '2016-9-5 10:46:59', '0000000000', '4', '这是一个很好的产品');
INSERT INTO `goods` VALUES ('11', 'BB机', 'thumb-6.jpg', '35', '39', '2016-9-5 10:47:04', '0000000000', '4', 'sadasd---');
INSERT INTO `goods` VALUES ('12', '衣服', 'thumb-3.jpg', '35', '10', '2016-9-5 10:47:11', '0000000000', '4', 'sadasd---');
INSERT INTO `goods` VALUES ('13', '鞋子', 'image-4.jpg', '35', '43', '2016-9-5 10:47:17', '0000000000', '4', 'sadasd---');
INSERT INTO `goods` VALUES ('14', '箱包', 'image-2.jpg', '35', '43', '2016-9-5 10:47:27', '0000000000', '4', 'sadasd---');
INSERT INTO `goods` VALUES ('15', '平板', 'thumb-1.jpg', '285', '2654', '2016-9-5 14:25:11', '0000000001', '4', 'sadasd');
INSERT INTO `goods` VALUES ('16', 'admin', 'image-3.jpg', '29', '12', '2016-9-6 11:59:03', '0000000000', '3', 'asdasdasdasdasdasdasdasd');
INSERT INTO `goods` VALUES ('17', 'mioajsd ', 'image-5.jpg', '300000', '300000', '2016-9-6 11:59:35', '0000000000', '3', 'BB专用@@@@@@@@@@');
INSERT INTO `goods` VALUES ('18', 'Test', 'thumb-4.jpg', '203', '203', '2016-9-8 15:00:52', '0000000001', '4', '这是一个测试!!!!!!!!!!---');
INSERT INTO `goods` VALUES ('19', '测试', 'image-6.jpg', '20', '230', '2016-9-8 15:00:27', '0000000000', '4', '按时打算打算打算按时打!!!!!!!!!!!!!!!!!!!!!!!!!');
INSERT INTO `goods` VALUES ('20', 'ceiling', 'thumb-1.jpg', '2', '2', '2016-9-8 15:00:43', '0000000000', '4', '按时打算打算打算的');
INSERT INTO `goods` VALUES ('21', '阿达', 'image-4.jpg', '93', '30', '2016-9-8 15:01:14', '0000000000', '4', '发生大事');
INSERT INTO `goods` VALUES ('22', '阿斯达撒旦', 'image-4.jpg', '12', '222', '2016-9-8 15:01:35', '0000000000', '4', '让大叔的');
INSERT INTO `goods` VALUES ('23', '飒飒的撒的', 'image-3.jpg', '20', '333', '2016-9-8 15:45:30', '0000000000', '4', '撒打算打算打算---烦烦烦');
INSERT INTO `goods` VALUES ('24', 'ateets', 'thumb-5.jpg', '123', '90', '2016-9-8 15:52:33', '0000000000', '3', 'sadasdasdasdas');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', '9', '2016-9-8 8:54:24', '0000000000');
INSERT INTO `shop` VALUES ('2', '16', '2016-9-8 10:16:25', '0000000000');
INSERT INTO `shop` VALUES ('3', '9', '2016-9-8 15:44:04', '0000000000');
INSERT INTO `shop` VALUES ('4', '9', '2016-9-8 15:53:16', '0000000000');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'test333', 'test333', 'test@test.com', '1', '0');
INSERT INTO `user` VALUES ('2', 'buy', 'buy', 'buy@buy.com', '1', '0');
INSERT INTO `user` VALUES ('3', 'qsd33333', 'qsd33333', 'qsd33333@163.com', '3', '0');
INSERT INTO `user` VALUES ('4', '666', '666', '666', '3', '0');
INSERT INTO `user` VALUES ('5', '999', '999', '9999@9999.com', '1', '0');
INSERT INTO `user` VALUES ('7', 'test', 'test', 'teste@qq.com', '1', '0');
INSERT INTO `user` VALUES ('8', 'qsd', 'qsd', 'qsd@qsd123.com', '1', '1');
INSERT INTO `user` VALUES ('9', '333', '333', '333@333.com', '2', '0');
INSERT INTO `user` VALUES ('10', '123', '123', '123@123.com', '2', '0');
INSERT INTO `user` VALUES ('11', '654321', '654321', '987654@333.com', '2', '1');
INSERT INTO `user` VALUES ('12', '111', '111', '111@111.com', '3', '0');
INSERT INTO `user` VALUES ('14', '', '', '', '2', '0');
INSERT INTO `user` VALUES ('15', '951', '951', '951@951.com', '2', '0');
INSERT INTO `user` VALUES ('16', 'test2', 'test2', 'test@test.com', '2', '0');
INSERT INTO `user` VALUES ('17', '333445', '33445', 'aasdas@qq.com', '2', '0');
INSERT INTO `user` VALUES ('18', '11123', '11123', '111@1112.com', '2', '0');
