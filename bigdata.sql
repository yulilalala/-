/*
Navicat MySQL Data Transfer

Source Server         : alibaba
Source Server Version : 50726
Source Host           : 47.100.105.10:3306
Source Database       : bigdata

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-06-20 09:23:57
*/
USE `bigdata`;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `admin_id` int(11) NOT NULL COMMENT '管理员编号',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '123456');
INSERT INTO `t_admin` VALUES ('2', 'user', '123456');

-- ----------------------------
-- Table structure for `t_classify`
-- ----------------------------
DROP TABLE IF EXISTS `t_classify`;
CREATE TABLE `t_classify` (
  `classify_id` int(11) NOT NULL AUTO_INCREMENT,
  `classify_code` int(6) NOT NULL COMMENT '类别编码',
  `classify_name` varchar(20) NOT NULL COMMENT '类别名字',
  PRIMARY KEY (`classify_id`),
  KEY `classify_code` (`classify_code`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_classify
-- ----------------------------
INSERT INTO `t_classify` VALUES ('1', '111101', 'web前端');
INSERT INTO `t_classify` VALUES ('2', '111102', 'C#/.Net');
INSERT INTO `t_classify` VALUES ('3', '111103', 'C/C++');
INSERT INTO `t_classify` VALUES ('4', '111104', 'Java');
INSERT INTO `t_classify` VALUES ('5', '111105', 'PHP');
INSERT INTO `t_classify` VALUES ('6', '111106', 'Python');
INSERT INTO `t_classify` VALUES ('7', '111107', '大数据');
INSERT INTO `t_classify` VALUES ('8', '111108', 'Linux云计算');
INSERT INTO `t_classify` VALUES ('9', '111109', 'Android');
INSERT INTO `t_classify` VALUES ('10', '111110', 'IOS');
INSERT INTO `t_classify` VALUES ('11', '111111', 'Unity3D');
INSERT INTO `t_classify` VALUES ('12', '111112', '嵌入式');
INSERT INTO `t_classify` VALUES ('13', '111113', '软件测试');
INSERT INTO `t_classify` VALUES ('14', '111114', '网络营销');
INSERT INTO `t_classify` VALUES ('15', '111115', '产品经理');
INSERT INTO `t_classify` VALUES ('16', '111116', 'UED设计');
INSERT INTO `t_classify` VALUES ('17', '111117', 'UID设计');

-- ----------------------------
-- Table structure for `t_collection`
-- ----------------------------
DROP TABLE IF EXISTS `t_collection`;
CREATE TABLE `t_collection` (
  `colloction _id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户编号',
  `course_id` int(11) NOT NULL COMMENT '课程编号',
  `createTime` datetime NOT NULL ,
  `endTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '结束时间',
  PRIMARY KEY (`colloction _id`),
  KEY `fk_user_id` (`user_id`),
  KEY `fk_course_id` (`course_id`),
  CONSTRAINT `fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `t_course` (`course_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=868 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_collection
-- ----------------------------
INSERT INTO `t_collection` VALUES ('1', '1', '2', '2019-02-13 00:00:00', '2019-03-20 00:00:00');
INSERT INTO `t_collection` VALUES ('2', '3', '2', '2018-01-18 00:00:00', '2019-01-16 00:00:00');
INSERT INTO `t_collection` VALUES ('3', '4', '2', '2017-05-16 00:00:00', '2019-02-13 00:00:00');
INSERT INTO `t_collection` VALUES ('4', '1', '2', '2018-06-07 00:00:00', '2018-12-13 00:00:00');
INSERT INTO `t_collection` VALUES ('5', '1', '1', '2019-06-13 00:00:00', '2019-06-14 00:00:00');
INSERT INTO `t_collection` VALUES ('6', '1', '1', '2019-05-27 00:00:00', '2019-05-29 00:00:00');
INSERT INTO `t_collection` VALUES ('7', '1', '1', '2019-06-05 00:00:00', '2019-06-05 00:00:00');
INSERT INTO `t_collection` VALUES ('8', '1', '10', '2019-06-05 00:00:00', '2019-06-05 00:00:00');
INSERT INTO `t_collection` VALUES ('9', '1', '10', '2019-06-05 00:00:00', '2019-06-05 00:00:00');
INSERT INTO `t_collection` VALUES ('10', '1', '2', '2019-06-18 00:02:52', '2019-06-18 00:02:52');
INSERT INTO `t_collection` VALUES ('11', '1', '2', '2019-06-18 00:03:00', '2019-06-18 00:03:00');
INSERT INTO `t_collection` VALUES ('12', '1', '10', '2019-06-05 00:00:00', '2019-06-05 00:00:00');
INSERT INTO `t_collection` VALUES ('13', '1', '10', '2019-06-05 00:00:00', '2019-06-05 00:00:00');
INSERT INTO `t_collection` VALUES ('14', '1', '10', '2019-06-05 00:00:00', '2019-06-05 00:00:00');
INSERT INTO `t_collection` VALUES ('15', '1', '10', '2019-06-05 00:00:00', '2019-06-05 00:00:00');
INSERT INTO `t_collection` VALUES ('16', '1', '10', '2019-06-05 00:00:00', '2019-06-05 00:00:00');
INSERT INTO `t_collection` VALUES ('17', '1', '10', '2019-06-05 00:00:00', '2019-06-05 00:00:00');
INSERT INTO `t_collection` VALUES ('18', '1', '10', '2019-06-05 00:00:00', '2019-06-05 00:00:00');
INSERT INTO `t_collection` VALUES ('19', '3', '15', '2019-06-12 10:40:38', '2019-06-12 15:40:46');
INSERT INTO `t_collection` VALUES ('20', '1', '10', '2019-06-13 16:14:30', '2019-06-14 16:14:35');
INSERT INTO `t_collection` VALUES ('21', '1', '10', '2019-06-12 14:22:55', '2019-06-12 15:23:07');
INSERT INTO `t_collection` VALUES ('22', '1', '10', '2019-06-12 14:23:14', '2019-06-12 17:23:20');
INSERT INTO `t_collection` VALUES ('23', '20', '6', '2019-06-14 09:29:23', '2019-06-14 09:29:23');
INSERT INTO `t_collection` VALUES ('24', '1', '1', '2019-06-14 09:31:33', '2019-06-14 09:31:33');
INSERT INTO `t_collection` VALUES ('25', '3', '10', '2019-06-17 01:38:49', '2019-06-17 01:38:49');
INSERT INTO `t_collection` VALUES ('26', '4', '10', '2019-06-17 02:11:43', '2019-06-17 02:11:43');
INSERT INTO `t_collection` VALUES ('27', '1', '3', '2019-06-17 02:31:32', '2019-06-17 02:31:32');
INSERT INTO `t_collection` VALUES ('30', '1', '1', '2019-06-17 06:45:25', '2019-06-17 06:45:25');
INSERT INTO `t_collection` VALUES ('32', '1', '1', '2019-06-17 06:45:33', '2019-06-17 06:45:33');
INSERT INTO `t_collection` VALUES ('33', '4', '4', '2019-06-17 06:45:36', '2019-06-17 06:45:36');
INSERT INTO `t_collection` VALUES ('36', '1', '1', '2019-06-17 07:41:44', '2019-06-17 07:41:44');
INSERT INTO `t_collection` VALUES ('38', '1', '5', '2019-06-18 00:35:42', '2019-06-18 00:35:42');
INSERT INTO `t_collection` VALUES ('39', '1', '3', '2019-06-18 00:40:52', '2019-06-18 00:40:52');
INSERT INTO `t_collection` VALUES ('40', '1', '6', '2019-06-18 00:44:08', '2019-06-18 00:44:08');
INSERT INTO `t_collection` VALUES ('41', '1', '9', '2019-06-18 03:16:02', '2019-06-18 03:16:02');
INSERT INTO `t_collection` VALUES ('42', '1', '10', '2019-06-18 03:16:42', '2019-06-18 03:16:42');
INSERT INTO `t_collection` VALUES ('43', '1', '9', '2019-06-18 04:39:33', '2019-06-18 04:39:33');
INSERT INTO `t_collection` VALUES ('44', '1', '9', '2019-06-18 04:39:48', '2019-06-18 04:39:48');
INSERT INTO `t_collection` VALUES ('45', '133', '10', '2019-06-18 11:16:25', '2019-06-18 11:16:25');
INSERT INTO `t_collection` VALUES ('46', '133', '10', '2019-06-18 11:16:27', '2019-06-18 11:16:27');
INSERT INTO `t_collection` VALUES ('47', '133', '10', '2019-06-18 11:16:56', '2019-06-18 11:16:56');
INSERT INTO `t_collection` VALUES ('48', '133', '10', '2019-06-18 11:17:01', '2019-06-18 11:17:01');
INSERT INTO `t_collection` VALUES ('49', '133', '10', '2019-06-18 11:17:12', '2019-06-18 11:17:12');
INSERT INTO `t_collection` VALUES ('50', '133', '10', '2019-06-18 11:17:14', '2019-06-18 11:17:14');
INSERT INTO `t_collection` VALUES ('51', '133', '10', '2019-06-18 11:17:26', '2019-06-18 11:17:26');
INSERT INTO `t_collection` VALUES ('52', '133', '1', '2019-06-18 11:17:33', '2019-06-18 11:17:33');
INSERT INTO `t_collection` VALUES ('53', '133', '1', '2019-06-18 11:17:34', '2019-06-18 11:17:34');
INSERT INTO `t_collection` VALUES ('54', '133', '10', '2019-06-18 11:17:41', '2019-06-18 11:17:41');
INSERT INTO `t_collection` VALUES ('55', '133', '10', '2019-06-18 11:17:47', '2019-06-18 11:17:47');
INSERT INTO `t_collection` VALUES ('56', '133', '10', '2019-06-18 11:17:48', '2019-06-18 11:17:48');
INSERT INTO `t_collection` VALUES ('57', '133', '1', '2019-06-18 11:22:19', '2019-06-18 11:22:19');
INSERT INTO `t_collection` VALUES ('58', '133', '2', '2019-06-18 11:22:25', '2019-06-18 11:22:25');
INSERT INTO `t_collection` VALUES ('59', '133', '2', '2019-06-18 11:22:33', '2019-06-18 11:22:33');
INSERT INTO `t_collection` VALUES ('60', '133', '2', '2019-06-18 11:22:33', '2019-06-18 11:22:33');
INSERT INTO `t_collection` VALUES ('61', '133', '2', '2019-06-18 11:22:33', '2019-06-18 11:22:33');
INSERT INTO `t_collection` VALUES ('62', '133', '2', '2019-06-18 11:22:34', '2019-06-18 11:22:34');
INSERT INTO `t_collection` VALUES ('63', '133', '2', '2019-06-18 11:22:34', '2019-06-18 11:22:34');
INSERT INTO `t_collection` VALUES ('64', '133', '2', '2019-06-18 11:22:34', '2019-06-18 11:22:34');
INSERT INTO `t_collection` VALUES ('65', '133', '2', '2019-06-18 11:22:34', '2019-06-18 11:22:34');
INSERT INTO `t_collection` VALUES ('66', '133', '2', '2019-06-18 11:22:35', '2019-06-18 11:22:35');
INSERT INTO `t_collection` VALUES ('67', '133', '2', '2019-06-18 11:22:35', '2019-06-18 11:22:35');
INSERT INTO `t_collection` VALUES ('68', '133', '2', '2019-06-18 11:22:35', '2019-06-18 11:22:35');
INSERT INTO `t_collection` VALUES ('69', '133', '2', '2019-06-18 11:22:35', '2019-06-18 11:22:35');
INSERT INTO `t_collection` VALUES ('70', '133', '2', '2019-06-18 11:22:35', '2019-06-18 11:22:35');
INSERT INTO `t_collection` VALUES ('71', '133', '2', '2019-06-18 11:22:36', '2019-06-18 11:22:36');
INSERT INTO `t_collection` VALUES ('72', '133', '2', '2019-06-18 11:22:36', '2019-06-18 11:22:36');
INSERT INTO `t_collection` VALUES ('73', '133', '2', '2019-06-18 11:22:36', '2019-06-18 11:22:36');
INSERT INTO `t_collection` VALUES ('74', '133', '2', '2019-06-18 11:22:36', '2019-06-18 11:22:36');
INSERT INTO `t_collection` VALUES ('75', '133', '2', '2019-06-18 11:22:36', '2019-06-18 11:22:36');
INSERT INTO `t_collection` VALUES ('76', '133', '2', '2019-06-18 11:22:37', '2019-06-18 11:22:37');
INSERT INTO `t_collection` VALUES ('77', '133', '2', '2019-06-18 11:22:37', '2019-06-18 11:22:37');
INSERT INTO `t_collection` VALUES ('78', '133', '2', '2019-06-18 11:22:37', '2019-06-18 11:22:37');
INSERT INTO `t_collection` VALUES ('79', '133', '2', '2019-06-18 11:22:37', '2019-06-18 11:22:37');
INSERT INTO `t_collection` VALUES ('80', '133', '2', '2019-06-18 11:22:37', '2019-06-18 11:22:37');
INSERT INTO `t_collection` VALUES ('81', '133', '2', '2019-06-18 11:22:38', '2019-06-18 11:22:38');
INSERT INTO `t_collection` VALUES ('82', '133', '2', '2019-06-18 11:22:38', '2019-06-18 11:22:38');
INSERT INTO `t_collection` VALUES ('83', '133', '2', '2019-06-18 11:22:38', '2019-06-18 11:22:38');
INSERT INTO `t_collection` VALUES ('84', '133', '2', '2019-06-18 11:22:38', '2019-06-18 11:22:38');
INSERT INTO `t_collection` VALUES ('85', '133', '2', '2019-06-18 11:22:39', '2019-06-18 11:22:39');
INSERT INTO `t_collection` VALUES ('86', '133', '2', '2019-06-18 11:22:39', '2019-06-18 11:22:39');
INSERT INTO `t_collection` VALUES ('87', '133', '2', '2019-06-18 11:22:39', '2019-06-18 11:22:39');
INSERT INTO `t_collection` VALUES ('88', '133', '2', '2019-06-18 11:22:39', '2019-06-18 11:22:39');
INSERT INTO `t_collection` VALUES ('89', '133', '2', '2019-06-18 11:22:39', '2019-06-18 11:22:39');
INSERT INTO `t_collection` VALUES ('90', '133', '2', '2019-06-18 11:22:40', '2019-06-18 11:22:40');
INSERT INTO `t_collection` VALUES ('91', '133', '2', '2019-06-18 11:22:40', '2019-06-18 11:22:40');
INSERT INTO `t_collection` VALUES ('92', '133', '1', '2019-06-18 11:22:51', '2019-06-18 11:22:51');
INSERT INTO `t_collection` VALUES ('93', '133', '1', '2019-06-18 11:22:51', '2019-06-18 11:22:51');
INSERT INTO `t_collection` VALUES ('94', '133', '1', '2019-06-18 11:22:51', '2019-06-18 11:22:51');
INSERT INTO `t_collection` VALUES ('95', '133', '1', '2019-06-18 11:22:51', '2019-06-18 11:22:51');
INSERT INTO `t_collection` VALUES ('96', '133', '1', '2019-06-18 11:22:52', '2019-06-18 11:22:52');
INSERT INTO `t_collection` VALUES ('97', '133', '1', '2019-06-18 11:22:52', '2019-06-18 11:22:52');
INSERT INTO `t_collection` VALUES ('98', '133', '1', '2019-06-18 11:22:52', '2019-06-18 11:22:52');
INSERT INTO `t_collection` VALUES ('99', '133', '1', '2019-06-18 11:22:52', '2019-06-18 11:22:52');
INSERT INTO `t_collection` VALUES ('100', '133', '1', '2019-06-18 11:22:52', '2019-06-18 11:22:52');
INSERT INTO `t_collection` VALUES ('101', '133', '1', '2019-06-18 11:22:53', '2019-06-18 11:22:53');
INSERT INTO `t_collection` VALUES ('102', '133', '1', '2019-06-18 11:22:53', '2019-06-18 11:22:53');
INSERT INTO `t_collection` VALUES ('103', '133', '1', '2019-06-18 11:22:53', '2019-06-18 11:22:53');
INSERT INTO `t_collection` VALUES ('104', '133', '1', '2019-06-18 11:22:53', '2019-06-18 11:22:53');
INSERT INTO `t_collection` VALUES ('105', '133', '1', '2019-06-18 11:22:53', '2019-06-18 11:22:53');
INSERT INTO `t_collection` VALUES ('106', '133', '1', '2019-06-18 11:22:54', '2019-06-18 11:22:54');
INSERT INTO `t_collection` VALUES ('107', '133', '1', '2019-06-18 11:22:54', '2019-06-18 11:22:54');
INSERT INTO `t_collection` VALUES ('108', '133', '1', '2019-06-18 11:22:54', '2019-06-18 11:22:54');
INSERT INTO `t_collection` VALUES ('109', '133', '1', '2019-06-18 11:22:54', '2019-06-18 11:22:54');
INSERT INTO `t_collection` VALUES ('110', '133', '1', '2019-06-18 11:22:54', '2019-06-18 11:22:54');
INSERT INTO `t_collection` VALUES ('111', '133', '1', '2019-06-18 11:22:55', '2019-06-18 11:22:55');
INSERT INTO `t_collection` VALUES ('112', '133', '1', '2019-06-18 11:22:55', '2019-06-18 11:22:55');
INSERT INTO `t_collection` VALUES ('113', '133', '9', '2019-06-18 11:23:00', '2019-06-18 11:23:00');
INSERT INTO `t_collection` VALUES ('114', '133', '9', '2019-06-18 11:23:00', '2019-06-18 11:23:00');
INSERT INTO `t_collection` VALUES ('115', '133', '9', '2019-06-18 11:23:01', '2019-06-18 11:23:01');
INSERT INTO `t_collection` VALUES ('116', '133', '9', '2019-06-18 11:23:01', '2019-06-18 11:23:01');
INSERT INTO `t_collection` VALUES ('117', '133', '9', '2019-06-18 11:23:01', '2019-06-18 11:23:01');
INSERT INTO `t_collection` VALUES ('118', '133', '9', '2019-06-18 11:23:01', '2019-06-18 11:23:01');
INSERT INTO `t_collection` VALUES ('119', '133', '9', '2019-06-18 11:23:02', '2019-06-18 11:23:02');
INSERT INTO `t_collection` VALUES ('120', '133', '9', '2019-06-18 11:23:02', '2019-06-18 11:23:02');
INSERT INTO `t_collection` VALUES ('121', '133', '9', '2019-06-18 11:23:02', '2019-06-18 11:23:02');
INSERT INTO `t_collection` VALUES ('122', '133', '9', '2019-06-18 11:23:02', '2019-06-18 11:23:02');
INSERT INTO `t_collection` VALUES ('123', '133', '9', '2019-06-18 11:23:02', '2019-06-18 11:23:02');
INSERT INTO `t_collection` VALUES ('124', '133', '9', '2019-06-18 11:23:03', '2019-06-18 11:23:03');
INSERT INTO `t_collection` VALUES ('125', '133', '9', '2019-06-18 11:23:03', '2019-06-18 11:23:03');
INSERT INTO `t_collection` VALUES ('126', '133', '9', '2019-06-18 11:23:03', '2019-06-18 11:23:03');
INSERT INTO `t_collection` VALUES ('127', '133', '9', '2019-06-18 11:23:03', '2019-06-18 11:23:03');
INSERT INTO `t_collection` VALUES ('128', '133', '9', '2019-06-18 11:23:03', '2019-06-18 11:23:03');
INSERT INTO `t_collection` VALUES ('129', '133', '9', '2019-06-18 11:23:04', '2019-06-18 11:23:04');
INSERT INTO `t_collection` VALUES ('130', '133', '9', '2019-06-18 11:23:04', '2019-06-18 11:23:04');
INSERT INTO `t_collection` VALUES ('131', '133', '9', '2019-06-18 11:23:04', '2019-06-18 11:23:04');
INSERT INTO `t_collection` VALUES ('132', '133', '9', '2019-06-18 11:23:04', '2019-06-18 11:23:04');
INSERT INTO `t_collection` VALUES ('133', '133', '9', '2019-06-18 11:23:05', '2019-06-18 11:23:05');
INSERT INTO `t_collection` VALUES ('134', '133', '6', '2019-06-18 11:23:10', '2019-06-18 11:23:10');
INSERT INTO `t_collection` VALUES ('135', '133', '6', '2019-06-18 11:23:10', '2019-06-18 11:23:10');
INSERT INTO `t_collection` VALUES ('136', '133', '6', '2019-06-18 11:23:10', '2019-06-18 11:23:10');
INSERT INTO `t_collection` VALUES ('137', '133', '6', '2019-06-18 11:23:10', '2019-06-18 11:23:10');
INSERT INTO `t_collection` VALUES ('138', '133', '6', '2019-06-18 11:23:11', '2019-06-18 11:23:11');
INSERT INTO `t_collection` VALUES ('139', '133', '6', '2019-06-18 11:23:11', '2019-06-18 11:23:11');
INSERT INTO `t_collection` VALUES ('140', '133', '6', '2019-06-18 11:23:11', '2019-06-18 11:23:11');
INSERT INTO `t_collection` VALUES ('141', '133', '6', '2019-06-18 11:23:11', '2019-06-18 11:23:11');
INSERT INTO `t_collection` VALUES ('142', '133', '6', '2019-06-18 11:23:11', '2019-06-18 11:23:11');
INSERT INTO `t_collection` VALUES ('143', '133', '6', '2019-06-18 11:23:12', '2019-06-18 11:23:12');
INSERT INTO `t_collection` VALUES ('144', '133', '6', '2019-06-18 11:23:12', '2019-06-18 11:23:12');
INSERT INTO `t_collection` VALUES ('145', '133', '6', '2019-06-18 11:23:12', '2019-06-18 11:23:12');
INSERT INTO `t_collection` VALUES ('146', '133', '6', '2019-06-18 11:23:12', '2019-06-18 11:23:12');
INSERT INTO `t_collection` VALUES ('147', '133', '6', '2019-06-18 11:23:13', '2019-06-18 11:23:13');
INSERT INTO `t_collection` VALUES ('148', '133', '6', '2019-06-18 11:23:13', '2019-06-18 11:23:13');
INSERT INTO `t_collection` VALUES ('149', '133', '6', '2019-06-18 11:23:13', '2019-06-18 11:23:13');
INSERT INTO `t_collection` VALUES ('150', '133', '6', '2019-06-18 11:23:14', '2019-06-18 11:23:14');
INSERT INTO `t_collection` VALUES ('151', '133', '6', '2019-06-18 11:23:14', '2019-06-18 11:23:14');
INSERT INTO `t_collection` VALUES ('152', '133', '6', '2019-06-18 11:23:14', '2019-06-18 11:23:14');
INSERT INTO `t_collection` VALUES ('153', '133', '6', '2019-06-18 11:23:14', '2019-06-18 11:23:14');
INSERT INTO `t_collection` VALUES ('154', '133', '6', '2019-06-18 11:23:14', '2019-06-18 11:23:14');
INSERT INTO `t_collection` VALUES ('155', '133', '6', '2019-06-18 11:23:15', '2019-06-18 11:23:15');
INSERT INTO `t_collection` VALUES ('156', '133', '6', '2019-06-18 11:23:15', '2019-06-18 11:23:15');
INSERT INTO `t_collection` VALUES ('157', '133', '6', '2019-06-18 11:23:15', '2019-06-18 11:23:15');
INSERT INTO `t_collection` VALUES ('158', '133', '6', '2019-06-18 11:23:15', '2019-06-18 11:23:15');
INSERT INTO `t_collection` VALUES ('159', '133', '6', '2019-06-18 11:23:16', '2019-06-18 11:23:16');
INSERT INTO `t_collection` VALUES ('160', '133', '6', '2019-06-18 11:23:16', '2019-06-18 11:23:16');
INSERT INTO `t_collection` VALUES ('161', '133', '6', '2019-06-18 11:23:16', '2019-06-18 11:23:16');
INSERT INTO `t_collection` VALUES ('162', '133', '6', '2019-06-18 11:23:16', '2019-06-18 11:23:16');
INSERT INTO `t_collection` VALUES ('163', '133', '6', '2019-06-18 11:23:16', '2019-06-18 11:23:16');
INSERT INTO `t_collection` VALUES ('164', '133', '6', '2019-06-18 11:23:17', '2019-06-18 11:23:17');
INSERT INTO `t_collection` VALUES ('165', '133', '6', '2019-06-18 11:23:17', '2019-06-18 11:23:17');
INSERT INTO `t_collection` VALUES ('166', '133', '6', '2019-06-18 11:23:17', '2019-06-18 11:23:17');
INSERT INTO `t_collection` VALUES ('167', '133', '6', '2019-06-18 11:23:17', '2019-06-18 11:23:17');
INSERT INTO `t_collection` VALUES ('168', '133', '6', '2019-06-18 11:23:18', '2019-06-18 11:23:18');
INSERT INTO `t_collection` VALUES ('169', '133', '6', '2019-06-18 11:23:18', '2019-06-18 11:23:18');
INSERT INTO `t_collection` VALUES ('170', '133', '6', '2019-06-18 11:23:18', '2019-06-18 11:23:18');
INSERT INTO `t_collection` VALUES ('171', '133', '6', '2019-06-18 11:23:18', '2019-06-18 11:23:18');
INSERT INTO `t_collection` VALUES ('172', '133', '6', '2019-06-18 11:23:19', '2019-06-18 11:23:19');
INSERT INTO `t_collection` VALUES ('173', '133', '6', '2019-06-18 11:23:19', '2019-06-18 11:23:19');
INSERT INTO `t_collection` VALUES ('174', '133', '6', '2019-06-18 11:23:19', '2019-06-18 11:23:19');
INSERT INTO `t_collection` VALUES ('175', '133', '6', '2019-06-18 11:23:19', '2019-06-18 11:23:19');
INSERT INTO `t_collection` VALUES ('176', '133', '6', '2019-06-18 11:23:19', '2019-06-18 11:23:19');
INSERT INTO `t_collection` VALUES ('177', '133', '6', '2019-06-18 11:23:20', '2019-06-18 11:23:20');
INSERT INTO `t_collection` VALUES ('178', '133', '6', '2019-06-18 11:23:20', '2019-06-18 11:23:20');
INSERT INTO `t_collection` VALUES ('179', '133', '3', '2019-06-18 11:23:25', '2019-06-18 11:23:25');
INSERT INTO `t_collection` VALUES ('180', '133', '3', '2019-06-18 11:23:26', '2019-06-18 11:23:26');
INSERT INTO `t_collection` VALUES ('181', '133', '3', '2019-06-18 11:23:26', '2019-06-18 11:23:26');
INSERT INTO `t_collection` VALUES ('182', '133', '3', '2019-06-18 11:23:26', '2019-06-18 11:23:26');
INSERT INTO `t_collection` VALUES ('183', '133', '3', '2019-06-18 11:23:26', '2019-06-18 11:23:26');
INSERT INTO `t_collection` VALUES ('184', '133', '3', '2019-06-18 11:23:26', '2019-06-18 11:23:26');
INSERT INTO `t_collection` VALUES ('185', '133', '3', '2019-06-18 11:23:27', '2019-06-18 11:23:27');
INSERT INTO `t_collection` VALUES ('186', '133', '3', '2019-06-18 11:23:27', '2019-06-18 11:23:27');
INSERT INTO `t_collection` VALUES ('187', '133', '3', '2019-06-18 11:23:27', '2019-06-18 11:23:27');
INSERT INTO `t_collection` VALUES ('188', '133', '3', '2019-06-18 11:23:27', '2019-06-18 11:23:27');
INSERT INTO `t_collection` VALUES ('189', '133', '3', '2019-06-18 11:23:27', '2019-06-18 11:23:27');
INSERT INTO `t_collection` VALUES ('190', '133', '3', '2019-06-18 11:23:28', '2019-06-18 11:23:28');
INSERT INTO `t_collection` VALUES ('191', '133', '3', '2019-06-18 11:23:28', '2019-06-18 11:23:28');
INSERT INTO `t_collection` VALUES ('192', '133', '3', '2019-06-18 11:23:28', '2019-06-18 11:23:28');
INSERT INTO `t_collection` VALUES ('193', '133', '3', '2019-06-18 11:23:28', '2019-06-18 11:23:28');
INSERT INTO `t_collection` VALUES ('194', '133', '3', '2019-06-18 11:23:29', '2019-06-18 11:23:29');
INSERT INTO `t_collection` VALUES ('195', '133', '3', '2019-06-18 11:23:29', '2019-06-18 11:23:29');
INSERT INTO `t_collection` VALUES ('196', '133', '10', '2019-06-18 11:23:37', '2019-06-18 11:23:37');
INSERT INTO `t_collection` VALUES ('197', '133', '10', '2019-06-18 11:23:38', '2019-06-18 11:23:38');
INSERT INTO `t_collection` VALUES ('198', '133', '10', '2019-06-18 11:23:39', '2019-06-18 11:23:39');
INSERT INTO `t_collection` VALUES ('199', '133', '10', '2019-06-18 11:23:39', '2019-06-18 11:23:39');
INSERT INTO `t_collection` VALUES ('200', '133', '10', '2019-06-18 11:23:39', '2019-06-18 11:23:39');
INSERT INTO `t_collection` VALUES ('201', '133', '10', '2019-06-18 11:23:39', '2019-06-18 11:23:39');
INSERT INTO `t_collection` VALUES ('202', '133', '10', '2019-06-18 11:23:39', '2019-06-18 11:23:39');
INSERT INTO `t_collection` VALUES ('203', '133', '10', '2019-06-18 11:23:40', '2019-06-18 11:23:40');
INSERT INTO `t_collection` VALUES ('204', '133', '10', '2019-06-18 11:23:40', '2019-06-18 11:23:40');
INSERT INTO `t_collection` VALUES ('205', '133', '10', '2019-06-18 11:23:40', '2019-06-18 11:23:40');
INSERT INTO `t_collection` VALUES ('206', '133', '10', '2019-06-18 11:23:40', '2019-06-18 11:23:40');
INSERT INTO `t_collection` VALUES ('207', '133', '10', '2019-06-18 11:23:41', '2019-06-18 11:23:41');
INSERT INTO `t_collection` VALUES ('208', '133', '10', '2019-06-18 11:23:41', '2019-06-18 11:23:41');
INSERT INTO `t_collection` VALUES ('209', '133', '10', '2019-06-18 11:23:41', '2019-06-18 11:23:41');
INSERT INTO `t_collection` VALUES ('210', '133', '10', '2019-06-18 11:23:41', '2019-06-18 11:23:41');
INSERT INTO `t_collection` VALUES ('211', '133', '10', '2019-06-18 11:23:41', '2019-06-18 11:23:41');
INSERT INTO `t_collection` VALUES ('212', '133', '10', '2019-06-18 11:23:42', '2019-06-18 11:23:42');
INSERT INTO `t_collection` VALUES ('213', '133', '10', '2019-06-18 11:23:42', '2019-06-18 11:23:42');
INSERT INTO `t_collection` VALUES ('214', '133', '10', '2019-06-18 11:23:42', '2019-06-18 11:23:42');
INSERT INTO `t_collection` VALUES ('215', '133', '10', '2019-06-18 11:23:42', '2019-06-18 11:23:42');
INSERT INTO `t_collection` VALUES ('216', '133', '10', '2019-06-18 11:23:43', '2019-06-18 11:23:43');
INSERT INTO `t_collection` VALUES ('217', '133', '10', '2019-06-18 11:23:43', '2019-06-18 11:23:43');
INSERT INTO `t_collection` VALUES ('218', '133', '10', '2019-06-18 11:23:43', '2019-06-18 11:23:43');
INSERT INTO `t_collection` VALUES ('219', '133', '10', '2019-06-18 11:23:43', '2019-06-18 11:23:43');
INSERT INTO `t_collection` VALUES ('220', '133', '10', '2019-06-18 11:23:43', '2019-06-18 11:23:43');
INSERT INTO `t_collection` VALUES ('221', '133', '10', '2019-06-18 11:23:44', '2019-06-18 11:23:44');
INSERT INTO `t_collection` VALUES ('222', '133', '10', '2019-06-18 11:23:44', '2019-06-18 11:23:44');
INSERT INTO `t_collection` VALUES ('223', '133', '10', '2019-06-18 11:23:44', '2019-06-18 11:23:44');
INSERT INTO `t_collection` VALUES ('224', '133', '10', '2019-06-18 11:23:44', '2019-06-18 11:23:44');
INSERT INTO `t_collection` VALUES ('225', '133', '10', '2019-06-18 11:23:45', '2019-06-18 11:23:45');
INSERT INTO `t_collection` VALUES ('226', '133', '10', '2019-06-18 11:23:45', '2019-06-18 11:23:45');
INSERT INTO `t_collection` VALUES ('227', '133', '10', '2019-06-18 11:23:45', '2019-06-18 11:23:45');
INSERT INTO `t_collection` VALUES ('228', '133', '10', '2019-06-18 11:23:45', '2019-06-18 11:23:45');
INSERT INTO `t_collection` VALUES ('229', '133', '10', '2019-06-18 11:23:46', '2019-06-18 11:23:46');
INSERT INTO `t_collection` VALUES ('230', '133', '10', '2019-06-18 11:23:46', '2019-06-18 11:23:46');
INSERT INTO `t_collection` VALUES ('231', '133', '10', '2019-06-18 11:23:46', '2019-06-18 11:23:46');
INSERT INTO `t_collection` VALUES ('232', '133', '10', '2019-06-18 11:23:46', '2019-06-18 11:23:46');
INSERT INTO `t_collection` VALUES ('233', '133', '10', '2019-06-18 11:23:47', '2019-06-18 11:23:47');
INSERT INTO `t_collection` VALUES ('234', '133', '10', '2019-06-18 11:23:47', '2019-06-18 11:23:47');
INSERT INTO `t_collection` VALUES ('235', '133', '10', '2019-06-18 11:23:47', '2019-06-18 11:23:47');
INSERT INTO `t_collection` VALUES ('236', '133', '10', '2019-06-18 11:23:47', '2019-06-18 11:23:47');
INSERT INTO `t_collection` VALUES ('237', '133', '10', '2019-06-18 11:23:48', '2019-06-18 11:23:48');
INSERT INTO `t_collection` VALUES ('238', '133', '10', '2019-06-18 11:23:48', '2019-06-18 11:23:48');
INSERT INTO `t_collection` VALUES ('239', '133', '10', '2019-06-18 11:23:48', '2019-06-18 11:23:48');
INSERT INTO `t_collection` VALUES ('240', '133', '10', '2019-06-18 11:23:48', '2019-06-18 11:23:48');
INSERT INTO `t_collection` VALUES ('241', '133', '10', '2019-06-18 11:23:48', '2019-06-18 11:23:48');
INSERT INTO `t_collection` VALUES ('242', '133', '10', '2019-06-18 11:23:49', '2019-06-18 11:23:49');
INSERT INTO `t_collection` VALUES ('243', '133', '10', '2019-06-18 11:23:49', '2019-06-18 11:23:49');
INSERT INTO `t_collection` VALUES ('244', '133', '10', '2019-06-18 11:23:49', '2019-06-18 11:23:49');
INSERT INTO `t_collection` VALUES ('245', '133', '10', '2019-06-18 11:23:49', '2019-06-18 11:23:49');
INSERT INTO `t_collection` VALUES ('246', '133', '10', '2019-06-18 11:23:49', '2019-06-18 11:23:49');
INSERT INTO `t_collection` VALUES ('247', '133', '10', '2019-06-18 11:23:50', '2019-06-18 11:23:50');
INSERT INTO `t_collection` VALUES ('248', '133', '10', '2019-06-18 11:23:50', '2019-06-18 11:23:50');
INSERT INTO `t_collection` VALUES ('249', '133', '10', '2019-06-18 11:23:50', '2019-06-18 11:23:50');
INSERT INTO `t_collection` VALUES ('250', '133', '10', '2019-06-18 11:23:50', '2019-06-18 11:23:50');
INSERT INTO `t_collection` VALUES ('251', '133', '10', '2019-06-18 11:23:51', '2019-06-18 11:23:51');
INSERT INTO `t_collection` VALUES ('252', '133', '10', '2019-06-18 11:23:51', '2019-06-18 11:23:51');
INSERT INTO `t_collection` VALUES ('253', '133', '10', '2019-06-18 11:23:51', '2019-06-18 11:23:51');
INSERT INTO `t_collection` VALUES ('254', '133', '10', '2019-06-18 11:23:51', '2019-06-18 11:23:51');
INSERT INTO `t_collection` VALUES ('255', '133', '10', '2019-06-18 11:23:52', '2019-06-18 11:23:52');
INSERT INTO `t_collection` VALUES ('256', '133', '10', '2019-06-18 11:23:52', '2019-06-18 11:23:52');
INSERT INTO `t_collection` VALUES ('257', '133', '10', '2019-06-18 11:23:52', '2019-06-18 11:23:52');
INSERT INTO `t_collection` VALUES ('258', '133', '10', '2019-06-18 11:23:52', '2019-06-18 11:23:52');
INSERT INTO `t_collection` VALUES ('259', '133', '10', '2019-06-18 11:23:53', '2019-06-18 11:23:53');
INSERT INTO `t_collection` VALUES ('260', '133', '10', '2019-06-18 11:23:53', '2019-06-18 11:23:53');
INSERT INTO `t_collection` VALUES ('261', '133', '10', '2019-06-18 11:23:53', '2019-06-18 11:23:53');
INSERT INTO `t_collection` VALUES ('262', '133', '10', '2019-06-18 11:23:54', '2019-06-18 11:23:54');
INSERT INTO `t_collection` VALUES ('263', '133', '10', '2019-06-18 11:23:54', '2019-06-18 11:23:54');
INSERT INTO `t_collection` VALUES ('264', '133', '10', '2019-06-18 11:23:54', '2019-06-18 11:23:54');
INSERT INTO `t_collection` VALUES ('265', '133', '10', '2019-06-18 11:23:54', '2019-06-18 11:23:54');
INSERT INTO `t_collection` VALUES ('266', '133', '10', '2019-06-18 11:23:55', '2019-06-18 11:23:55');
INSERT INTO `t_collection` VALUES ('267', '133', '10', '2019-06-18 11:23:55', '2019-06-18 11:23:55');
INSERT INTO `t_collection` VALUES ('268', '133', '10', '2019-06-18 11:23:55', '2019-06-18 11:23:55');
INSERT INTO `t_collection` VALUES ('269', '133', '10', '2019-06-18 11:23:55', '2019-06-18 11:23:55');
INSERT INTO `t_collection` VALUES ('270', '133', '10', '2019-06-18 11:23:55', '2019-06-18 11:23:55');
INSERT INTO `t_collection` VALUES ('271', '133', '10', '2019-06-18 11:23:56', '2019-06-18 11:23:56');
INSERT INTO `t_collection` VALUES ('272', '133', '10', '2019-06-18 11:23:56', '2019-06-18 11:23:56');
INSERT INTO `t_collection` VALUES ('273', '133', '10', '2019-06-18 11:23:56', '2019-06-18 11:23:56');
INSERT INTO `t_collection` VALUES ('274', '133', '10', '2019-06-18 11:23:56', '2019-06-18 11:23:56');
INSERT INTO `t_collection` VALUES ('275', '133', '10', '2019-06-18 11:23:57', '2019-06-18 11:23:57');
INSERT INTO `t_collection` VALUES ('276', '133', '10', '2019-06-18 11:23:57', '2019-06-18 11:23:57');
INSERT INTO `t_collection` VALUES ('277', '133', '10', '2019-06-18 11:23:57', '2019-06-18 11:23:57');
INSERT INTO `t_collection` VALUES ('278', '133', '10', '2019-06-18 11:23:57', '2019-06-18 11:23:57');
INSERT INTO `t_collection` VALUES ('279', '133', '10', '2019-06-18 11:23:58', '2019-06-18 11:23:58');
INSERT INTO `t_collection` VALUES ('280', '133', '10', '2019-06-18 11:23:58', '2019-06-18 11:23:58');
INSERT INTO `t_collection` VALUES ('281', '133', '10', '2019-06-18 11:23:58', '2019-06-18 11:23:58');
INSERT INTO `t_collection` VALUES ('282', '133', '10', '2019-06-18 11:24:06', '2019-06-18 11:24:06');
INSERT INTO `t_collection` VALUES ('283', '133', '10', '2019-06-18 11:24:06', '2019-06-18 11:24:06');
INSERT INTO `t_collection` VALUES ('284', '133', '10', '2019-06-18 11:24:06', '2019-06-18 11:24:06');
INSERT INTO `t_collection` VALUES ('285', '133', '10', '2019-06-18 11:24:07', '2019-06-18 11:24:07');
INSERT INTO `t_collection` VALUES ('286', '133', '10', '2019-06-18 11:24:07', '2019-06-18 11:24:07');
INSERT INTO `t_collection` VALUES ('287', '133', '10', '2019-06-18 11:24:07', '2019-06-18 11:24:07');
INSERT INTO `t_collection` VALUES ('288', '133', '10', '2019-06-18 11:24:07', '2019-06-18 11:24:07');
INSERT INTO `t_collection` VALUES ('289', '133', '10', '2019-06-18 11:24:08', '2019-06-18 11:24:08');
INSERT INTO `t_collection` VALUES ('290', '133', '10', '2019-06-18 11:24:08', '2019-06-18 11:24:08');
INSERT INTO `t_collection` VALUES ('291', '133', '10', '2019-06-18 11:24:08', '2019-06-18 11:24:08');
INSERT INTO `t_collection` VALUES ('292', '133', '10', '2019-06-18 11:24:08', '2019-06-18 11:24:08');
INSERT INTO `t_collection` VALUES ('293', '133', '10', '2019-06-18 11:24:09', '2019-06-18 11:24:09');
INSERT INTO `t_collection` VALUES ('294', '133', '10', '2019-06-18 11:24:09', '2019-06-18 11:24:09');
INSERT INTO `t_collection` VALUES ('295', '133', '10', '2019-06-18 11:24:09', '2019-06-18 11:24:09');
INSERT INTO `t_collection` VALUES ('296', '133', '10', '2019-06-18 11:24:09', '2019-06-18 11:24:09');
INSERT INTO `t_collection` VALUES ('297', '133', '10', '2019-06-18 11:24:09', '2019-06-18 11:24:09');
INSERT INTO `t_collection` VALUES ('298', '133', '10', '2019-06-18 11:24:10', '2019-06-18 11:24:10');
INSERT INTO `t_collection` VALUES ('299', '133', '10', '2019-06-18 11:24:10', '2019-06-18 11:24:10');
INSERT INTO `t_collection` VALUES ('300', '133', '10', '2019-06-18 11:24:11', '2019-06-18 11:24:11');
INSERT INTO `t_collection` VALUES ('301', '133', '10', '2019-06-18 11:24:11', '2019-06-18 11:24:11');
INSERT INTO `t_collection` VALUES ('302', '133', '10', '2019-06-18 11:24:11', '2019-06-18 11:24:11');
INSERT INTO `t_collection` VALUES ('303', '133', '10', '2019-06-18 11:24:11', '2019-06-18 11:24:11');
INSERT INTO `t_collection` VALUES ('304', '133', '10', '2019-06-18 11:26:06', '2019-06-18 11:26:06');
INSERT INTO `t_collection` VALUES ('305', '133', '10', '2019-06-18 11:26:13', '2019-06-18 11:26:13');
INSERT INTO `t_collection` VALUES ('306', '133', '10', '2019-06-18 11:26:19', '2019-06-18 11:26:19');
INSERT INTO `t_collection` VALUES ('307', '133', '10', '2019-06-18 11:26:26', '2019-06-18 11:26:26');
INSERT INTO `t_collection` VALUES ('308', '133', '10', '2019-06-18 11:26:31', '2019-06-18 11:26:31');
INSERT INTO `t_collection` VALUES ('309', '133', '10', '2019-06-18 11:26:35', '2019-06-18 11:26:35');
INSERT INTO `t_collection` VALUES ('310', '133', '6', '2019-06-18 11:27:11', '2019-06-18 11:27:11');
INSERT INTO `t_collection` VALUES ('311', '133', '6', '2019-06-18 11:27:16', '2019-06-18 11:27:16');
INSERT INTO `t_collection` VALUES ('312', '133', '6', '2019-06-18 11:27:19', '2019-06-18 11:27:19');
INSERT INTO `t_collection` VALUES ('313', '133', '17', '2019-06-18 11:27:41', '2019-06-18 11:27:41');
INSERT INTO `t_collection` VALUES ('314', '133', '17', '2019-06-18 11:27:42', '2019-06-18 11:27:42');
INSERT INTO `t_collection` VALUES ('315', '133', '17', '2019-06-18 11:27:42', '2019-06-18 11:27:42');
INSERT INTO `t_collection` VALUES ('316', '133', '17', '2019-06-18 11:27:43', '2019-06-18 11:27:43');
INSERT INTO `t_collection` VALUES ('317', '133', '17', '2019-06-18 11:27:43', '2019-06-18 11:27:43');
INSERT INTO `t_collection` VALUES ('318', '133', '17', '2019-06-18 11:27:43', '2019-06-18 11:27:43');
INSERT INTO `t_collection` VALUES ('319', '133', '17', '2019-06-18 11:27:44', '2019-06-18 11:27:44');
INSERT INTO `t_collection` VALUES ('320', '133', '17', '2019-06-18 11:27:44', '2019-06-18 11:27:44');
INSERT INTO `t_collection` VALUES ('321', '133', '17', '2019-06-18 11:27:45', '2019-06-18 11:27:45');
INSERT INTO `t_collection` VALUES ('322', '133', '17', '2019-06-18 11:27:45', '2019-06-18 11:27:45');
INSERT INTO `t_collection` VALUES ('323', '133', '17', '2019-06-18 11:27:45', '2019-06-18 11:27:45');
INSERT INTO `t_collection` VALUES ('324', '133', '17', '2019-06-18 11:27:46', '2019-06-18 11:27:46');
INSERT INTO `t_collection` VALUES ('325', '133', '17', '2019-06-18 11:27:46', '2019-06-18 11:27:46');
INSERT INTO `t_collection` VALUES ('326', '133', '17', '2019-06-18 11:27:47', '2019-06-18 11:27:47');
INSERT INTO `t_collection` VALUES ('327', '133', '17', '2019-06-18 11:27:47', '2019-06-18 11:27:47');
INSERT INTO `t_collection` VALUES ('328', '133', '17', '2019-06-18 11:27:47', '2019-06-18 11:27:47');
INSERT INTO `t_collection` VALUES ('329', '133', '17', '2019-06-18 11:27:48', '2019-06-18 11:27:48');
INSERT INTO `t_collection` VALUES ('330', '133', '17', '2019-06-18 11:27:48', '2019-06-18 11:27:48');
INSERT INTO `t_collection` VALUES ('331', '133', '17', '2019-06-18 11:27:49', '2019-06-18 11:27:49');
INSERT INTO `t_collection` VALUES ('332', '133', '17', '2019-06-18 11:27:49', '2019-06-18 11:27:49');
INSERT INTO `t_collection` VALUES ('333', '133', '11', '2019-06-18 11:27:56', '2019-06-18 11:27:56');
INSERT INTO `t_collection` VALUES ('334', '133', '11', '2019-06-18 11:27:56', '2019-06-18 11:27:56');
INSERT INTO `t_collection` VALUES ('335', '133', '11', '2019-06-18 11:27:57', '2019-06-18 11:27:57');
INSERT INTO `t_collection` VALUES ('336', '133', '11', '2019-06-18 11:27:57', '2019-06-18 11:27:57');
INSERT INTO `t_collection` VALUES ('337', '133', '11', '2019-06-18 11:27:58', '2019-06-18 11:27:58');
INSERT INTO `t_collection` VALUES ('338', '133', '11', '2019-06-18 11:27:58', '2019-06-18 11:27:58');
INSERT INTO `t_collection` VALUES ('339', '133', '11', '2019-06-18 11:27:58', '2019-06-18 11:27:58');
INSERT INTO `t_collection` VALUES ('340', '133', '11', '2019-06-18 11:27:59', '2019-06-18 11:27:59');
INSERT INTO `t_collection` VALUES ('341', '133', '11', '2019-06-18 11:27:59', '2019-06-18 11:27:59');
INSERT INTO `t_collection` VALUES ('342', '133', '11', '2019-06-18 11:28:00', '2019-06-18 11:28:00');
INSERT INTO `t_collection` VALUES ('343', '133', '11', '2019-06-18 11:28:00', '2019-06-18 11:28:00');
INSERT INTO `t_collection` VALUES ('344', '133', '11', '2019-06-18 11:28:01', '2019-06-18 11:28:01');
INSERT INTO `t_collection` VALUES ('345', '133', '11', '2019-06-18 11:28:01', '2019-06-18 11:28:01');
INSERT INTO `t_collection` VALUES ('346', '133', '11', '2019-06-18 11:28:01', '2019-06-18 11:28:01');
INSERT INTO `t_collection` VALUES ('347', '133', '11', '2019-06-18 11:28:02', '2019-06-18 11:28:02');
INSERT INTO `t_collection` VALUES ('348', '133', '11', '2019-06-18 11:28:02', '2019-06-18 11:28:02');
INSERT INTO `t_collection` VALUES ('349', '133', '11', '2019-06-18 11:28:03', '2019-06-18 11:28:03');
INSERT INTO `t_collection` VALUES ('350', '133', '11', '2019-06-18 11:28:03', '2019-06-18 11:28:03');
INSERT INTO `t_collection` VALUES ('351', '133', '11', '2019-06-18 11:28:03', '2019-06-18 11:28:03');
INSERT INTO `t_collection` VALUES ('352', '133', '11', '2019-06-18 11:28:04', '2019-06-18 11:28:04');
INSERT INTO `t_collection` VALUES ('353', '133', '11', '2019-06-18 11:28:04', '2019-06-18 11:28:04');
INSERT INTO `t_collection` VALUES ('354', '133', '11', '2019-06-18 11:28:05', '2019-06-18 11:28:05');
INSERT INTO `t_collection` VALUES ('355', '133', '11', '2019-06-18 11:28:05', '2019-06-18 11:28:05');
INSERT INTO `t_collection` VALUES ('356', '133', '11', '2019-06-18 11:28:05', '2019-06-18 11:28:05');
INSERT INTO `t_collection` VALUES ('357', '133', '11', '2019-06-18 11:28:06', '2019-06-18 11:28:06');
INSERT INTO `t_collection` VALUES ('358', '133', '11', '2019-06-18 11:28:06', '2019-06-18 11:28:06');
INSERT INTO `t_collection` VALUES ('359', '133', '11', '2019-06-18 11:28:07', '2019-06-18 11:28:07');
INSERT INTO `t_collection` VALUES ('360', '133', '11', '2019-06-18 11:28:07', '2019-06-18 11:28:07');
INSERT INTO `t_collection` VALUES ('361', '133', '11', '2019-06-18 11:28:08', '2019-06-18 11:28:08');
INSERT INTO `t_collection` VALUES ('362', '133', '11', '2019-06-18 11:28:08', '2019-06-18 11:28:08');
INSERT INTO `t_collection` VALUES ('363', '133', '11', '2019-06-18 11:28:09', '2019-06-18 11:28:09');
INSERT INTO `t_collection` VALUES ('364', '133', '11', '2019-06-18 11:28:09', '2019-06-18 11:28:09');
INSERT INTO `t_collection` VALUES ('365', '133', '11', '2019-06-18 11:28:10', '2019-06-18 11:28:10');
INSERT INTO `t_collection` VALUES ('366', '133', '11', '2019-06-18 11:28:10', '2019-06-18 11:28:10');
INSERT INTO `t_collection` VALUES ('367', '133', '11', '2019-06-18 11:28:10', '2019-06-18 11:28:10');
INSERT INTO `t_collection` VALUES ('368', '133', '11', '2019-06-18 11:28:11', '2019-06-18 11:28:11');
INSERT INTO `t_collection` VALUES ('369', '133', '11', '2019-06-18 11:28:11', '2019-06-18 11:28:11');
INSERT INTO `t_collection` VALUES ('370', '133', '11', '2019-06-18 11:28:12', '2019-06-18 11:28:12');
INSERT INTO `t_collection` VALUES ('371', '133', '11', '2019-06-18 11:32:41', '2019-06-18 11:32:41');
INSERT INTO `t_collection` VALUES ('372', '133', '11', '2019-06-18 11:34:43', '2019-06-18 11:34:43');
INSERT INTO `t_collection` VALUES ('373', '133', '11', '2019-06-18 11:36:58', '2019-06-18 11:36:58');
INSERT INTO `t_collection` VALUES ('374', '133', '11', '2019-06-18 11:37:23', '2019-06-18 11:37:23');
INSERT INTO `t_collection` VALUES ('375', '133', '11', '2019-06-18 11:37:36', '2019-06-18 11:37:36');
INSERT INTO `t_collection` VALUES ('376', '133', '11', '2019-06-18 11:38:04', '2019-06-18 11:38:04');
INSERT INTO `t_collection` VALUES ('377', '133', '11', '2019-06-18 11:39:42', '2019-06-18 11:39:42');
INSERT INTO `t_collection` VALUES ('378', '133', '11', '2019-06-18 11:40:25', '2019-06-18 11:40:25');
INSERT INTO `t_collection` VALUES ('379', '133', '11', '2019-06-18 11:41:32', '2019-06-18 11:41:32');
INSERT INTO `t_collection` VALUES ('380', '133', '11', '2019-06-18 11:41:34', '2019-06-18 11:41:34');
INSERT INTO `t_collection` VALUES ('381', '133', '11', '2019-06-18 11:41:36', '2019-06-18 11:41:36');
INSERT INTO `t_collection` VALUES ('382', '133', '11', '2019-06-18 11:41:38', '2019-06-18 11:41:38');
INSERT INTO `t_collection` VALUES ('383', '133', '8', '2019-06-18 11:41:50', '2019-06-18 11:41:50');
INSERT INTO `t_collection` VALUES ('384', '133', '8', '2019-06-18 11:41:51', '2019-06-18 11:41:51');
INSERT INTO `t_collection` VALUES ('385', '133', '8', '2019-06-18 11:41:51', '2019-06-18 11:41:51');
INSERT INTO `t_collection` VALUES ('386', '133', '8', '2019-06-18 11:41:51', '2019-06-18 11:41:51');
INSERT INTO `t_collection` VALUES ('387', '133', '8', '2019-06-18 11:41:52', '2019-06-18 11:41:52');
INSERT INTO `t_collection` VALUES ('388', '133', '8', '2019-06-18 11:41:52', '2019-06-18 11:41:52');
INSERT INTO `t_collection` VALUES ('389', '133', '8', '2019-06-18 11:41:52', '2019-06-18 11:41:52');
INSERT INTO `t_collection` VALUES ('390', '133', '8', '2019-06-18 11:41:53', '2019-06-18 11:41:53');
INSERT INTO `t_collection` VALUES ('391', '133', '8', '2019-06-18 11:41:53', '2019-06-18 11:41:53');
INSERT INTO `t_collection` VALUES ('392', '133', '8', '2019-06-18 11:41:54', '2019-06-18 11:41:54');
INSERT INTO `t_collection` VALUES ('393', '133', '8', '2019-06-18 11:41:54', '2019-06-18 11:41:54');
INSERT INTO `t_collection` VALUES ('394', '133', '8', '2019-06-18 11:41:54', '2019-06-18 11:41:54');
INSERT INTO `t_collection` VALUES ('395', '133', '16', '2019-06-18 11:41:59', '2019-06-18 11:41:59');
INSERT INTO `t_collection` VALUES ('396', '133', '16', '2019-06-18 11:42:00', '2019-06-18 11:42:00');
INSERT INTO `t_collection` VALUES ('397', '133', '16', '2019-06-18 11:42:00', '2019-06-18 11:42:00');
INSERT INTO `t_collection` VALUES ('398', '133', '16', '2019-06-18 11:42:01', '2019-06-18 11:42:01');
INSERT INTO `t_collection` VALUES ('399', '133', '16', '2019-06-18 11:42:01', '2019-06-18 11:42:01');
INSERT INTO `t_collection` VALUES ('400', '133', '16', '2019-06-18 11:42:01', '2019-06-18 11:42:01');
INSERT INTO `t_collection` VALUES ('401', '133', '16', '2019-06-18 11:42:02', '2019-06-18 11:42:02');
INSERT INTO `t_collection` VALUES ('402', '133', '16', '2019-06-18 11:42:02', '2019-06-18 11:42:02');
INSERT INTO `t_collection` VALUES ('403', '133', '1', '2019-06-18 11:42:29', '2019-06-18 11:42:29');
INSERT INTO `t_collection` VALUES ('404', '133', '16', '2019-06-18 11:42:48', '2019-06-18 11:42:48');
INSERT INTO `t_collection` VALUES ('405', '133', '16', '2019-06-18 11:42:49', '2019-06-18 11:42:49');
INSERT INTO `t_collection` VALUES ('406', '133', '16', '2019-06-18 11:42:49', '2019-06-18 11:42:49');
INSERT INTO `t_collection` VALUES ('407', '133', '16', '2019-06-18 11:42:49', '2019-06-18 11:42:49');
INSERT INTO `t_collection` VALUES ('408', '133', '16', '2019-06-18 11:42:50', '2019-06-18 11:42:50');
INSERT INTO `t_collection` VALUES ('409', '133', '16', '2019-06-18 11:42:50', '2019-06-18 11:42:50');
INSERT INTO `t_collection` VALUES ('410', '133', '10', '2019-06-18 11:42:56', '2019-06-18 11:42:56');
INSERT INTO `t_collection` VALUES ('411', '133', '10', '2019-06-18 11:42:57', '2019-06-18 11:42:57');
INSERT INTO `t_collection` VALUES ('412', '133', '10', '2019-06-18 11:42:57', '2019-06-18 11:42:57');
INSERT INTO `t_collection` VALUES ('413', '133', '11', '2019-06-18 11:43:02', '2019-06-18 11:43:02');
INSERT INTO `t_collection` VALUES ('414', '133', '11', '2019-06-18 11:43:02', '2019-06-18 11:43:02');
INSERT INTO `t_collection` VALUES ('415', '133', '11', '2019-06-18 11:43:03', '2019-06-18 11:43:03');
INSERT INTO `t_collection` VALUES ('416', '133', '10', '2019-06-18 11:43:07', '2019-06-18 11:43:07');
INSERT INTO `t_collection` VALUES ('417', '133', '10', '2019-06-18 11:43:14', '2019-06-18 11:43:14');
INSERT INTO `t_collection` VALUES ('418', '133', '10', '2019-06-18 11:43:21', '2019-06-18 11:43:21');
INSERT INTO `t_collection` VALUES ('419', '133', '4', '2019-06-18 11:43:37', '2019-06-18 11:43:37');
INSERT INTO `t_collection` VALUES ('420', '133', '16', '2019-06-18 11:44:55', '2019-06-18 11:44:55');
INSERT INTO `t_collection` VALUES ('421', '132', '10', '2019-06-18 11:49:30', '2019-06-18 11:49:30');
INSERT INTO `t_collection` VALUES ('422', '132', '10', '2019-06-18 11:51:04', '2019-06-18 11:51:04');
INSERT INTO `t_collection` VALUES ('423', '132', '10', '2019-06-18 11:51:30', '2019-06-18 11:51:30');
INSERT INTO `t_collection` VALUES ('424', '132', '10', '2019-06-18 11:52:34', '2019-06-18 11:52:34');
INSERT INTO `t_collection` VALUES ('425', '132', '10', '2019-06-18 12:28:13', '2019-06-18 12:28:13');
INSERT INTO `t_collection` VALUES ('426', '132', '10', '2019-06-18 12:29:05', '2019-06-18 12:29:05');
INSERT INTO `t_collection` VALUES ('427', '132', '10', '2019-06-18 12:29:06', '2019-06-18 12:29:06');
INSERT INTO `t_collection` VALUES ('428', '132', '10', '2019-06-18 12:29:07', '2019-06-18 12:29:07');
INSERT INTO `t_collection` VALUES ('429', '132', '10', '2019-06-18 12:29:07', '2019-06-18 12:29:07');
INSERT INTO `t_collection` VALUES ('430', '132', '10', '2019-06-18 12:29:07', '2019-06-18 12:29:07');
INSERT INTO `t_collection` VALUES ('431', '132', '10', '2019-06-18 12:29:08', '2019-06-18 12:29:08');
INSERT INTO `t_collection` VALUES ('432', '132', '10', '2019-06-18 12:29:08', '2019-06-18 12:29:08');
INSERT INTO `t_collection` VALUES ('433', '132', '10', '2019-06-18 12:31:40', '2019-06-18 12:31:40');
INSERT INTO `t_collection` VALUES ('434', '132', '10', '2019-06-18 12:31:44', '2019-06-18 12:31:44');
INSERT INTO `t_collection` VALUES ('435', '132', '10', '2019-06-18 12:31:52', '2019-06-18 12:31:52');
INSERT INTO `t_collection` VALUES ('436', '132', '10', '2019-06-18 12:31:55', '2019-06-18 12:31:55');
INSERT INTO `t_collection` VALUES ('437', '132', '10', '2019-06-18 12:35:36', '2019-06-18 12:35:36');
INSERT INTO `t_collection` VALUES ('438', '132', '10', '2019-06-18 12:38:44', '2019-06-18 12:38:44');
INSERT INTO `t_collection` VALUES ('439', '132', '10', '2019-06-18 12:39:04', '2019-06-18 12:39:04');
INSERT INTO `t_collection` VALUES ('440', '132', '10', '2019-06-18 12:49:16', '2019-06-18 12:49:16');
INSERT INTO `t_collection` VALUES ('441', '132', '10', '2019-06-18 12:49:24', '2019-06-18 12:49:24');
INSERT INTO `t_collection` VALUES ('442', '132', '10', '2019-06-18 12:49:43', '2019-06-18 12:49:43');
INSERT INTO `t_collection` VALUES ('443', '132', '11', '2019-06-18 12:53:03', '2019-06-18 12:53:03');
INSERT INTO `t_collection` VALUES ('444', '132', '11', '2019-06-18 12:53:14', '2019-06-18 12:53:14');
INSERT INTO `t_collection` VALUES ('445', '132', '11', '2019-06-18 12:53:21', '2019-06-18 12:53:21');
INSERT INTO `t_collection` VALUES ('446', '132', '11', '2019-06-18 12:53:29', '2019-06-18 12:53:29');
INSERT INTO `t_collection` VALUES ('447', '132', '11', '2019-06-18 12:53:37', '2019-06-18 12:53:37');
INSERT INTO `t_collection` VALUES ('448', '132', '11', '2019-06-18 12:53:40', '2019-06-18 12:53:40');
INSERT INTO `t_collection` VALUES ('449', '132', '11', '2019-06-18 12:53:59', '2019-06-18 12:53:59');
INSERT INTO `t_collection` VALUES ('450', '132', '11', '2019-06-18 12:54:23', '2019-06-18 12:54:23');
INSERT INTO `t_collection` VALUES ('451', '132', '1', '2019-06-18 12:55:04', '2019-06-18 12:55:04');
INSERT INTO `t_collection` VALUES ('452', '132', '1', '2019-06-18 12:55:16', '2019-06-18 12:55:16');
INSERT INTO `t_collection` VALUES ('453', '132', '1', '2019-06-18 12:55:35', '2019-06-18 12:55:35');
INSERT INTO `t_collection` VALUES ('454', '132', '1', '2019-06-18 12:55:36', '2019-06-18 12:55:36');
INSERT INTO `t_collection` VALUES ('455', '132', '1', '2019-06-18 12:55:36', '2019-06-18 12:55:36');
INSERT INTO `t_collection` VALUES ('456', '132', '1', '2019-06-18 12:55:37', '2019-06-18 12:55:37');
INSERT INTO `t_collection` VALUES ('457', '132', '1', '2019-06-18 12:55:37', '2019-06-18 12:55:37');
INSERT INTO `t_collection` VALUES ('458', '132', '1', '2019-06-18 12:55:37', '2019-06-18 12:55:37');
INSERT INTO `t_collection` VALUES ('459', '132', '1', '2019-06-18 12:55:38', '2019-06-18 12:55:38');
INSERT INTO `t_collection` VALUES ('460', '132', '1', '2019-06-18 12:55:39', '2019-06-18 12:55:39');
INSERT INTO `t_collection` VALUES ('461', '132', '1', '2019-06-18 12:56:07', '2019-06-18 12:56:07');
INSERT INTO `t_collection` VALUES ('462', '132', '1', '2019-06-18 12:56:09', '2019-06-18 12:56:09');
INSERT INTO `t_collection` VALUES ('463', '132', '1', '2019-06-18 12:56:14', '2019-06-18 12:56:14');
INSERT INTO `t_collection` VALUES ('464', '132', '1', '2019-06-18 12:56:15', '2019-06-18 12:56:15');
INSERT INTO `t_collection` VALUES ('465', '132', '1', '2019-06-18 12:56:17', '2019-06-18 12:56:17');
INSERT INTO `t_collection` VALUES ('466', '132', '1', '2019-06-18 12:56:18', '2019-06-18 12:56:18');
INSERT INTO `t_collection` VALUES ('467', '132', '17', '2019-06-18 12:56:59', '2019-06-18 12:56:59');
INSERT INTO `t_collection` VALUES ('468', '132', '17', '2019-06-18 12:57:26', '2019-06-18 12:57:26');
INSERT INTO `t_collection` VALUES ('469', '132', '17', '2019-06-18 12:57:47', '2019-06-18 12:57:47');
INSERT INTO `t_collection` VALUES ('470', '132', '17', '2019-06-18 12:58:55', '2019-06-18 12:58:55');
INSERT INTO `t_collection` VALUES ('471', '132', '17', '2019-06-18 12:58:56', '2019-06-18 12:58:56');
INSERT INTO `t_collection` VALUES ('472', '132', '17', '2019-06-18 12:58:57', '2019-06-18 12:58:57');
INSERT INTO `t_collection` VALUES ('473', '132', '17', '2019-06-18 12:59:11', '2019-06-18 12:59:11');
INSERT INTO `t_collection` VALUES ('474', '132', '17', '2019-06-18 12:59:32', '2019-06-18 12:59:32');
INSERT INTO `t_collection` VALUES ('475', '132', '10', '2019-06-18 13:04:36', '2019-06-18 13:04:36');
INSERT INTO `t_collection` VALUES ('476', '132', '8', '2019-06-18 13:04:47', '2019-06-18 13:04:47');
INSERT INTO `t_collection` VALUES ('477', '132', '8', '2019-06-18 13:04:52', '2019-06-18 13:04:52');
INSERT INTO `t_collection` VALUES ('478', '132', '8', '2019-06-18 13:05:01', '2019-06-18 13:05:01');
INSERT INTO `t_collection` VALUES ('479', '132', '10', '2019-06-18 13:17:15', '2019-06-18 13:17:15');
INSERT INTO `t_collection` VALUES ('480', '132', '10', '2019-06-18 13:17:35', '2019-06-18 13:17:35');
INSERT INTO `t_collection` VALUES ('481', '132', '10', '2019-06-18 13:17:58', '2019-06-18 13:17:58');
INSERT INTO `t_collection` VALUES ('482', '132', '10', '2019-06-18 13:18:05', '2019-06-18 13:18:05');
INSERT INTO `t_collection` VALUES ('483', '132', '11', '2019-06-18 13:18:30', '2019-06-18 13:18:30');
INSERT INTO `t_collection` VALUES ('484', '132', '11', '2019-06-18 13:18:45', '2019-06-18 13:18:45');
INSERT INTO `t_collection` VALUES ('485', '133', '10', '2019-06-19 00:33:33', '2019-06-19 00:33:33');
INSERT INTO `t_collection` VALUES ('486', '133', '10', '2019-06-19 00:33:41', '2019-06-19 00:33:41');
INSERT INTO `t_collection` VALUES ('487', '133', '10', '2019-06-19 00:33:45', '2019-06-19 00:33:45');
INSERT INTO `t_collection` VALUES ('488', '133', '10', '2019-06-19 00:34:00', '2019-06-19 00:34:00');
INSERT INTO `t_collection` VALUES ('489', '133', '16', '2019-06-19 00:34:18', '2019-06-19 00:34:18');
INSERT INTO `t_collection` VALUES ('490', '132', '10', '2019-06-19 00:35:51', '2019-06-19 00:35:51');
INSERT INTO `t_collection` VALUES ('491', '132', '10', '2019-06-19 00:36:28', '2019-06-19 00:36:28');
INSERT INTO `t_collection` VALUES ('492', '134', '6', '2019-06-19 00:54:53', '2019-06-19 00:54:53');
INSERT INTO `t_collection` VALUES ('493', '134', '6', '2019-06-19 00:54:54', '2019-06-19 00:54:54');
INSERT INTO `t_collection` VALUES ('494', '134', '6', '2019-06-19 00:54:54', '2019-06-19 00:54:54');
INSERT INTO `t_collection` VALUES ('495', '134', '6', '2019-06-19 00:54:54', '2019-06-19 00:54:54');
INSERT INTO `t_collection` VALUES ('496', '134', '6', '2019-06-19 00:54:55', '2019-06-19 00:54:55');
INSERT INTO `t_collection` VALUES ('497', '134', '6', '2019-06-19 00:54:55', '2019-06-19 00:54:55');
INSERT INTO `t_collection` VALUES ('498', '134', '6', '2019-06-19 00:54:57', '2019-06-19 00:54:57');
INSERT INTO `t_collection` VALUES ('499', '134', '20', '2019-06-19 00:56:13', '2019-06-19 00:56:13');
INSERT INTO `t_collection` VALUES ('500', '134', '10', '2019-06-19 00:56:28', '2019-06-19 00:56:28');
INSERT INTO `t_collection` VALUES ('501', '134', '8', '2019-06-19 00:56:35', '2019-06-19 00:56:35');
INSERT INTO `t_collection` VALUES ('502', '134', '8', '2019-06-19 00:56:42', '2019-06-19 00:56:42');
INSERT INTO `t_collection` VALUES ('503', '134', '8', '2019-06-19 00:56:44', '2019-06-19 00:56:44');
INSERT INTO `t_collection` VALUES ('504', '134', '8', '2019-06-19 00:56:44', '2019-06-19 00:56:44');
INSERT INTO `t_collection` VALUES ('505', '134', '16', '2019-06-19 00:57:05', '2019-06-19 00:57:05');
INSERT INTO `t_collection` VALUES ('506', '134', '16', '2019-06-19 00:57:07', '2019-06-19 00:57:07');
INSERT INTO `t_collection` VALUES ('507', '134', '16', '2019-06-19 00:57:07', '2019-06-19 00:57:07');
INSERT INTO `t_collection` VALUES ('508', '134', '16', '2019-06-19 00:57:07', '2019-06-19 00:57:07');
INSERT INTO `t_collection` VALUES ('509', '134', '16', '2019-06-19 00:57:07', '2019-06-19 00:57:07');
INSERT INTO `t_collection` VALUES ('510', '134', '16', '2019-06-19 00:57:23', '2019-06-19 00:57:23');
INSERT INTO `t_collection` VALUES ('511', '134', '16', '2019-06-19 00:57:23', '2019-06-19 00:57:23');
INSERT INTO `t_collection` VALUES ('512', '134', '10', '2019-06-19 00:58:43', '2019-06-19 00:58:43');
INSERT INTO `t_collection` VALUES ('513', '134', '10', '2019-06-19 00:58:47', '2019-06-19 00:58:47');
INSERT INTO `t_collection` VALUES ('514', '134', '10', '2019-06-19 00:58:48', '2019-06-19 00:58:48');
INSERT INTO `t_collection` VALUES ('515', '134', '10', '2019-06-19 00:58:48', '2019-06-19 00:58:48');
INSERT INTO `t_collection` VALUES ('516', '134', '10', '2019-06-19 00:58:48', '2019-06-19 00:58:48');
INSERT INTO `t_collection` VALUES ('517', '134', '10', '2019-06-19 00:58:48', '2019-06-19 00:58:48');
INSERT INTO `t_collection` VALUES ('518', '134', '10', '2019-06-19 00:58:48', '2019-06-19 00:58:48');
INSERT INTO `t_collection` VALUES ('519', '134', '10', '2019-06-19 00:58:49', '2019-06-19 00:58:49');
INSERT INTO `t_collection` VALUES ('520', '134', '10', '2019-06-19 00:58:49', '2019-06-19 00:58:49');
INSERT INTO `t_collection` VALUES ('521', '134', '10', '2019-06-19 00:58:49', '2019-06-19 00:58:49');
INSERT INTO `t_collection` VALUES ('522', '134', '10', '2019-06-19 00:58:49', '2019-06-19 00:58:49');
INSERT INTO `t_collection` VALUES ('523', '134', '10', '2019-06-19 00:58:49', '2019-06-19 00:58:49');
INSERT INTO `t_collection` VALUES ('524', '134', '10', '2019-06-19 00:58:49', '2019-06-19 00:58:49');
INSERT INTO `t_collection` VALUES ('525', '134', '10', '2019-06-19 00:58:50', '2019-06-19 00:58:50');
INSERT INTO `t_collection` VALUES ('526', '134', '10', '2019-06-19 00:58:50', '2019-06-19 00:58:50');
INSERT INTO `t_collection` VALUES ('527', '134', '10', '2019-06-19 00:58:50', '2019-06-19 00:58:50');
INSERT INTO `t_collection` VALUES ('528', '134', '10', '2019-06-19 00:58:50', '2019-06-19 00:58:50');
INSERT INTO `t_collection` VALUES ('529', '134', '10', '2019-06-19 00:58:51', '2019-06-19 00:58:51');
INSERT INTO `t_collection` VALUES ('530', '134', '10', '2019-06-19 00:58:51', '2019-06-19 00:58:51');
INSERT INTO `t_collection` VALUES ('531', '134', '10', '2019-06-19 00:58:51', '2019-06-19 00:58:51');
INSERT INTO `t_collection` VALUES ('532', '134', '10', '2019-06-19 00:58:52', '2019-06-19 00:58:52');
INSERT INTO `t_collection` VALUES ('533', '134', '10', '2019-06-19 00:58:52', '2019-06-19 00:58:52');
INSERT INTO `t_collection` VALUES ('534', '134', '10', '2019-06-19 00:58:53', '2019-06-19 00:58:53');
INSERT INTO `t_collection` VALUES ('535', '134', '10', '2019-06-19 00:58:53', '2019-06-19 00:58:53');
INSERT INTO `t_collection` VALUES ('536', '134', '10', '2019-06-19 00:58:53', '2019-06-19 00:58:53');
INSERT INTO `t_collection` VALUES ('537', '134', '10', '2019-06-19 00:58:53', '2019-06-19 00:58:53');
INSERT INTO `t_collection` VALUES ('538', '134', '10', '2019-06-19 00:58:54', '2019-06-19 00:58:54');
INSERT INTO `t_collection` VALUES ('539', '134', '11', '2019-06-19 00:58:58', '2019-06-19 00:58:58');
INSERT INTO `t_collection` VALUES ('540', '134', '11', '2019-06-19 00:58:58', '2019-06-19 00:58:58');
INSERT INTO `t_collection` VALUES ('541', '134', '11', '2019-06-19 00:58:58', '2019-06-19 00:58:58');
INSERT INTO `t_collection` VALUES ('542', '134', '11', '2019-06-19 00:58:58', '2019-06-19 00:58:58');
INSERT INTO `t_collection` VALUES ('543', '134', '11', '2019-06-19 00:58:58', '2019-06-19 00:58:58');
INSERT INTO `t_collection` VALUES ('544', '134', '11', '2019-06-19 00:58:58', '2019-06-19 00:58:58');
INSERT INTO `t_collection` VALUES ('545', '134', '11', '2019-06-19 00:58:59', '2019-06-19 00:58:59');
INSERT INTO `t_collection` VALUES ('546', '134', '11', '2019-06-19 00:58:59', '2019-06-19 00:58:59');
INSERT INTO `t_collection` VALUES ('547', '134', '11', '2019-06-19 00:58:59', '2019-06-19 00:58:59');
INSERT INTO `t_collection` VALUES ('548', '134', '11', '2019-06-19 00:58:59', '2019-06-19 00:58:59');
INSERT INTO `t_collection` VALUES ('549', '134', '8', '2019-06-19 00:59:13', '2019-06-19 00:59:13');
INSERT INTO `t_collection` VALUES ('550', '134', '8', '2019-06-19 00:59:14', '2019-06-19 00:59:14');
INSERT INTO `t_collection` VALUES ('551', '134', '8', '2019-06-19 00:59:14', '2019-06-19 00:59:14');
INSERT INTO `t_collection` VALUES ('552', '134', '8', '2019-06-19 00:59:14', '2019-06-19 00:59:14');
INSERT INTO `t_collection` VALUES ('553', '134', '16', '2019-06-19 00:59:21', '2019-06-19 00:59:21');
INSERT INTO `t_collection` VALUES ('554', '134', '16', '2019-06-19 00:59:22', '2019-06-19 00:59:22');
INSERT INTO `t_collection` VALUES ('555', '134', '16', '2019-06-19 00:59:22', '2019-06-19 00:59:22');
INSERT INTO `t_collection` VALUES ('556', '134', '16', '2019-06-19 00:59:22', '2019-06-19 00:59:22');
INSERT INTO `t_collection` VALUES ('557', '134', '16', '2019-06-19 00:59:22', '2019-06-19 00:59:22');
INSERT INTO `t_collection` VALUES ('558', '134', '16', '2019-06-19 00:59:22', '2019-06-19 00:59:22');
INSERT INTO `t_collection` VALUES ('559', '134', '16', '2019-06-19 00:59:27', '2019-06-19 00:59:27');
INSERT INTO `t_collection` VALUES ('560', '134', '17', '2019-06-19 00:59:43', '2019-06-19 00:59:43');
INSERT INTO `t_collection` VALUES ('561', '134', '17', '2019-06-19 00:59:43', '2019-06-19 00:59:43');
INSERT INTO `t_collection` VALUES ('562', '134', '1', '2019-06-19 01:00:24', '2019-06-19 01:00:24');
INSERT INTO `t_collection` VALUES ('563', '134', '1', '2019-06-19 01:00:24', '2019-06-19 01:00:24');
INSERT INTO `t_collection` VALUES ('564', '134', '1', '2019-06-19 01:00:25', '2019-06-19 01:00:25');
INSERT INTO `t_collection` VALUES ('565', '134', '1', '2019-06-19 01:00:25', '2019-06-19 01:00:25');
INSERT INTO `t_collection` VALUES ('566', '134', '1', '2019-06-19 01:00:25', '2019-06-19 01:00:25');
INSERT INTO `t_collection` VALUES ('567', '134', '1', '2019-06-19 01:00:25', '2019-06-19 01:00:25');
INSERT INTO `t_collection` VALUES ('568', '134', '1', '2019-06-19 01:00:25', '2019-06-19 01:00:25');
INSERT INTO `t_collection` VALUES ('569', '134', '1', '2019-06-19 01:00:25', '2019-06-19 01:00:25');
INSERT INTO `t_collection` VALUES ('570', '134', '1', '2019-06-19 01:00:26', '2019-06-19 01:00:26');
INSERT INTO `t_collection` VALUES ('571', '134', '1', '2019-06-19 01:00:26', '2019-06-19 01:00:26');
INSERT INTO `t_collection` VALUES ('572', '134', '1', '2019-06-19 01:00:27', '2019-06-19 01:00:27');
INSERT INTO `t_collection` VALUES ('573', '134', '1', '2019-06-19 01:00:27', '2019-06-19 01:00:27');
INSERT INTO `t_collection` VALUES ('574', '134', '1', '2019-06-19 01:00:27', '2019-06-19 01:00:27');
INSERT INTO `t_collection` VALUES ('575', '134', '1', '2019-06-19 01:00:27', '2019-06-19 01:00:27');
INSERT INTO `t_collection` VALUES ('576', '134', '1', '2019-06-19 01:00:27', '2019-06-19 01:00:27');
INSERT INTO `t_collection` VALUES ('577', '134', '1', '2019-06-19 01:00:27', '2019-06-19 01:00:27');
INSERT INTO `t_collection` VALUES ('578', '134', '1', '2019-06-19 01:00:28', '2019-06-19 01:00:28');
INSERT INTO `t_collection` VALUES ('579', '134', '1', '2019-06-19 01:00:28', '2019-06-19 01:00:28');
INSERT INTO `t_collection` VALUES ('580', '134', '1', '2019-06-19 01:00:28', '2019-06-19 01:00:28');
INSERT INTO `t_collection` VALUES ('581', '134', '1', '2019-06-19 01:00:28', '2019-06-19 01:00:28');
INSERT INTO `t_collection` VALUES ('582', '134', '1', '2019-06-19 01:00:28', '2019-06-19 01:00:28');
INSERT INTO `t_collection` VALUES ('583', '134', '1', '2019-06-19 01:00:28', '2019-06-19 01:00:28');
INSERT INTO `t_collection` VALUES ('584', '134', '1', '2019-06-19 01:00:29', '2019-06-19 01:00:29');
INSERT INTO `t_collection` VALUES ('585', '134', '1', '2019-06-19 01:00:29', '2019-06-19 01:00:29');
INSERT INTO `t_collection` VALUES ('586', '134', '1', '2019-06-19 01:00:29', '2019-06-19 01:00:29');
INSERT INTO `t_collection` VALUES ('587', '134', '1', '2019-06-19 01:00:29', '2019-06-19 01:00:29');
INSERT INTO `t_collection` VALUES ('588', '134', '1', '2019-06-19 01:00:29', '2019-06-19 01:00:29');
INSERT INTO `t_collection` VALUES ('589', '134', '1', '2019-06-19 01:00:30', '2019-06-19 01:00:30');
INSERT INTO `t_collection` VALUES ('590', '134', '1', '2019-06-19 01:00:30', '2019-06-19 01:00:30');
INSERT INTO `t_collection` VALUES ('591', '134', '1', '2019-06-19 01:00:30', '2019-06-19 01:00:30');
INSERT INTO `t_collection` VALUES ('592', '134', '1', '2019-06-19 01:00:30', '2019-06-19 01:00:30');
INSERT INTO `t_collection` VALUES ('593', '134', '1', '2019-06-19 01:00:30', '2019-06-19 01:00:30');
INSERT INTO `t_collection` VALUES ('594', '134', '1', '2019-06-19 01:00:30', '2019-06-19 01:00:30');
INSERT INTO `t_collection` VALUES ('595', '134', '1', '2019-06-19 01:00:31', '2019-06-19 01:00:31');
INSERT INTO `t_collection` VALUES ('596', '134', '1', '2019-06-19 01:00:37', '2019-06-19 01:00:37');
INSERT INTO `t_collection` VALUES ('597', '134', '1', '2019-06-19 01:00:37', '2019-06-19 01:00:37');
INSERT INTO `t_collection` VALUES ('598', '134', '1', '2019-06-19 01:00:37', '2019-06-19 01:00:37');
INSERT INTO `t_collection` VALUES ('599', '134', '1', '2019-06-19 01:00:38', '2019-06-19 01:00:38');
INSERT INTO `t_collection` VALUES ('600', '134', '1', '2019-06-19 01:00:38', '2019-06-19 01:00:38');
INSERT INTO `t_collection` VALUES ('601', '134', '1', '2019-06-19 01:00:39', '2019-06-19 01:00:39');
INSERT INTO `t_collection` VALUES ('602', '134', '1', '2019-06-19 01:00:39', '2019-06-19 01:00:39');
INSERT INTO `t_collection` VALUES ('603', '134', '1', '2019-06-19 01:00:39', '2019-06-19 01:00:39');
INSERT INTO `t_collection` VALUES ('604', '134', '1', '2019-06-19 01:00:39', '2019-06-19 01:00:39');
INSERT INTO `t_collection` VALUES ('605', '134', '1', '2019-06-19 01:00:39', '2019-06-19 01:00:39');
INSERT INTO `t_collection` VALUES ('606', '134', '1', '2019-06-19 01:00:39', '2019-06-19 01:00:39');
INSERT INTO `t_collection` VALUES ('607', '134', '1', '2019-06-19 01:00:39', '2019-06-19 01:00:39');
INSERT INTO `t_collection` VALUES ('608', '134', '1', '2019-06-19 01:00:40', '2019-06-19 01:00:40');
INSERT INTO `t_collection` VALUES ('609', '134', '1', '2019-06-19 01:00:40', '2019-06-19 01:00:40');
INSERT INTO `t_collection` VALUES ('610', '134', '1', '2019-06-19 01:00:40', '2019-06-19 01:00:40');
INSERT INTO `t_collection` VALUES ('611', '134', '1', '2019-06-19 01:00:40', '2019-06-19 01:00:40');
INSERT INTO `t_collection` VALUES ('612', '134', '1', '2019-06-19 01:00:40', '2019-06-19 01:00:40');
INSERT INTO `t_collection` VALUES ('613', '134', '1', '2019-06-19 01:00:40', '2019-06-19 01:00:40');
INSERT INTO `t_collection` VALUES ('614', '134', '1', '2019-06-19 01:00:41', '2019-06-19 01:00:41');
INSERT INTO `t_collection` VALUES ('615', '134', '1', '2019-06-19 01:00:41', '2019-06-19 01:00:41');
INSERT INTO `t_collection` VALUES ('616', '134', '1', '2019-06-19 01:00:41', '2019-06-19 01:00:41');
INSERT INTO `t_collection` VALUES ('617', '134', '1', '2019-06-19 01:00:41', '2019-06-19 01:00:41');
INSERT INTO `t_collection` VALUES ('618', '134', '1', '2019-06-19 01:00:41', '2019-06-19 01:00:41');
INSERT INTO `t_collection` VALUES ('619', '134', '1', '2019-06-19 01:00:42', '2019-06-19 01:00:42');
INSERT INTO `t_collection` VALUES ('620', '134', '1', '2019-06-19 01:00:42', '2019-06-19 01:00:42');
INSERT INTO `t_collection` VALUES ('621', '134', '1', '2019-06-19 01:00:42', '2019-06-19 01:00:42');
INSERT INTO `t_collection` VALUES ('622', '134', '1', '2019-06-19 01:00:42', '2019-06-19 01:00:42');
INSERT INTO `t_collection` VALUES ('623', '134', '1', '2019-06-19 01:00:42', '2019-06-19 01:00:42');
INSERT INTO `t_collection` VALUES ('624', '134', '1', '2019-06-19 01:00:42', '2019-06-19 01:00:42');
INSERT INTO `t_collection` VALUES ('625', '134', '1', '2019-06-19 01:00:43', '2019-06-19 01:00:43');
INSERT INTO `t_collection` VALUES ('626', '134', '1', '2019-06-19 01:00:43', '2019-06-19 01:00:43');
INSERT INTO `t_collection` VALUES ('627', '134', '1', '2019-06-19 01:00:43', '2019-06-19 01:00:43');
INSERT INTO `t_collection` VALUES ('628', '134', '1', '2019-06-19 01:00:43', '2019-06-19 01:00:43');
INSERT INTO `t_collection` VALUES ('629', '134', '1', '2019-06-19 01:00:43', '2019-06-19 01:00:43');
INSERT INTO `t_collection` VALUES ('630', '134', '1', '2019-06-19 01:00:44', '2019-06-19 01:00:44');
INSERT INTO `t_collection` VALUES ('631', '134', '1', '2019-06-19 01:00:45', '2019-06-19 01:00:45');
INSERT INTO `t_collection` VALUES ('632', '134', '1', '2019-06-19 01:00:45', '2019-06-19 01:00:45');
INSERT INTO `t_collection` VALUES ('633', '134', '1', '2019-06-19 01:00:45', '2019-06-19 01:00:45');
INSERT INTO `t_collection` VALUES ('634', '134', '1', '2019-06-19 01:00:45', '2019-06-19 01:00:45');
INSERT INTO `t_collection` VALUES ('635', '134', '1', '2019-06-19 01:00:45', '2019-06-19 01:00:45');
INSERT INTO `t_collection` VALUES ('636', '134', '1', '2019-06-19 01:00:48', '2019-06-19 01:00:48');
INSERT INTO `t_collection` VALUES ('637', '134', '1', '2019-06-19 01:00:49', '2019-06-19 01:00:49');
INSERT INTO `t_collection` VALUES ('638', '134', '1', '2019-06-19 01:00:50', '2019-06-19 01:00:50');
INSERT INTO `t_collection` VALUES ('639', '134', '1', '2019-06-19 01:00:50', '2019-06-19 01:00:50');
INSERT INTO `t_collection` VALUES ('640', '134', '1', '2019-06-19 01:00:50', '2019-06-19 01:00:50');
INSERT INTO `t_collection` VALUES ('641', '134', '1', '2019-06-19 01:00:50', '2019-06-19 01:00:50');
INSERT INTO `t_collection` VALUES ('642', '134', '1', '2019-06-19 01:00:51', '2019-06-19 01:00:51');
INSERT INTO `t_collection` VALUES ('643', '134', '1', '2019-06-19 01:00:51', '2019-06-19 01:00:51');
INSERT INTO `t_collection` VALUES ('644', '134', '1', '2019-06-19 01:00:51', '2019-06-19 01:00:51');
INSERT INTO `t_collection` VALUES ('645', '134', '1', '2019-06-19 01:00:51', '2019-06-19 01:00:51');
INSERT INTO `t_collection` VALUES ('646', '134', '1', '2019-06-19 01:00:51', '2019-06-19 01:00:51');
INSERT INTO `t_collection` VALUES ('647', '134', '1', '2019-06-19 01:00:51', '2019-06-19 01:00:51');
INSERT INTO `t_collection` VALUES ('648', '134', '1', '2019-06-19 01:00:52', '2019-06-19 01:00:52');
INSERT INTO `t_collection` VALUES ('649', '134', '1', '2019-06-19 01:00:52', '2019-06-19 01:00:52');
INSERT INTO `t_collection` VALUES ('650', '134', '1', '2019-06-19 01:00:52', '2019-06-19 01:00:52');
INSERT INTO `t_collection` VALUES ('651', '134', '1', '2019-06-19 01:00:52', '2019-06-19 01:00:52');
INSERT INTO `t_collection` VALUES ('652', '134', '1', '2019-06-19 01:00:52', '2019-06-19 01:00:52');
INSERT INTO `t_collection` VALUES ('653', '134', '1', '2019-06-19 01:00:53', '2019-06-19 01:00:53');
INSERT INTO `t_collection` VALUES ('654', '134', '1', '2019-06-19 01:00:53', '2019-06-19 01:00:53');
INSERT INTO `t_collection` VALUES ('655', '134', '1', '2019-06-19 01:00:53', '2019-06-19 01:00:53');
INSERT INTO `t_collection` VALUES ('656', '134', '1', '2019-06-19 01:00:53', '2019-06-19 01:00:53');
INSERT INTO `t_collection` VALUES ('657', '134', '1', '2019-06-19 01:00:54', '2019-06-19 01:00:54');
INSERT INTO `t_collection` VALUES ('658', '134', '1', '2019-06-19 01:00:54', '2019-06-19 01:00:54');
INSERT INTO `t_collection` VALUES ('659', '134', '1', '2019-06-19 01:00:54', '2019-06-19 01:00:54');
INSERT INTO `t_collection` VALUES ('660', '134', '1', '2019-06-19 01:00:54', '2019-06-19 01:00:54');
INSERT INTO `t_collection` VALUES ('661', '134', '1', '2019-06-19 01:00:54', '2019-06-19 01:00:54');
INSERT INTO `t_collection` VALUES ('662', '134', '1', '2019-06-19 01:00:54', '2019-06-19 01:00:54');
INSERT INTO `t_collection` VALUES ('663', '134', '1', '2019-06-19 01:00:55', '2019-06-19 01:00:55');
INSERT INTO `t_collection` VALUES ('664', '134', '1', '2019-06-19 01:00:55', '2019-06-19 01:00:55');
INSERT INTO `t_collection` VALUES ('665', '134', '1', '2019-06-19 01:00:55', '2019-06-19 01:00:55');
INSERT INTO `t_collection` VALUES ('666', '134', '1', '2019-06-19 01:00:55', '2019-06-19 01:00:55');
INSERT INTO `t_collection` VALUES ('667', '134', '1', '2019-06-19 01:00:55', '2019-06-19 01:00:55');
INSERT INTO `t_collection` VALUES ('668', '134', '1', '2019-06-19 01:00:55', '2019-06-19 01:00:55');
INSERT INTO `t_collection` VALUES ('669', '134', '1', '2019-06-19 01:00:56', '2019-06-19 01:00:56');
INSERT INTO `t_collection` VALUES ('670', '134', '1', '2019-06-19 01:00:56', '2019-06-19 01:00:56');
INSERT INTO `t_collection` VALUES ('671', '134', '1', '2019-06-19 01:00:56', '2019-06-19 01:00:56');
INSERT INTO `t_collection` VALUES ('672', '134', '1', '2019-06-19 01:00:56', '2019-06-19 01:00:56');
INSERT INTO `t_collection` VALUES ('673', '134', '1', '2019-06-19 01:00:56', '2019-06-19 01:00:56');
INSERT INTO `t_collection` VALUES ('674', '134', '1', '2019-06-19 01:00:57', '2019-06-19 01:00:57');
INSERT INTO `t_collection` VALUES ('675', '134', '1', '2019-06-19 01:00:57', '2019-06-19 01:00:57');
INSERT INTO `t_collection` VALUES ('676', '134', '1', '2019-06-19 01:00:57', '2019-06-19 01:00:57');
INSERT INTO `t_collection` VALUES ('677', '134', '1', '2019-06-19 01:00:57', '2019-06-19 01:00:57');
INSERT INTO `t_collection` VALUES ('678', '134', '1', '2019-06-19 01:00:57', '2019-06-19 01:00:57');
INSERT INTO `t_collection` VALUES ('679', '134', '1', '2019-06-19 01:00:58', '2019-06-19 01:00:58');
INSERT INTO `t_collection` VALUES ('680', '134', '1', '2019-06-19 01:00:58', '2019-06-19 01:00:58');
INSERT INTO `t_collection` VALUES ('681', '134', '1', '2019-06-19 01:00:58', '2019-06-19 01:00:58');
INSERT INTO `t_collection` VALUES ('682', '134', '1', '2019-06-19 01:00:58', '2019-06-19 01:00:58');
INSERT INTO `t_collection` VALUES ('683', '134', '1', '2019-06-19 01:00:58', '2019-06-19 01:00:58');
INSERT INTO `t_collection` VALUES ('684', '134', '1', '2019-06-19 01:00:58', '2019-06-19 01:00:58');
INSERT INTO `t_collection` VALUES ('685', '134', '1', '2019-06-19 01:00:59', '2019-06-19 01:00:59');
INSERT INTO `t_collection` VALUES ('686', '134', '1', '2019-06-19 01:00:59', '2019-06-19 01:00:59');
INSERT INTO `t_collection` VALUES ('687', '134', '1', '2019-06-19 01:00:59', '2019-06-19 01:00:59');
INSERT INTO `t_collection` VALUES ('688', '134', '1', '2019-06-19 01:00:59', '2019-06-19 01:00:59');
INSERT INTO `t_collection` VALUES ('689', '134', '1', '2019-06-19 01:00:59', '2019-06-19 01:00:59');
INSERT INTO `t_collection` VALUES ('690', '134', '1', '2019-06-19 01:01:00', '2019-06-19 01:01:00');
INSERT INTO `t_collection` VALUES ('691', '134', '1', '2019-06-19 01:01:00', '2019-06-19 01:01:00');
INSERT INTO `t_collection` VALUES ('692', '134', '1', '2019-06-19 01:01:00', '2019-06-19 01:01:00');
INSERT INTO `t_collection` VALUES ('693', '134', '1', '2019-06-19 01:01:00', '2019-06-19 01:01:00');
INSERT INTO `t_collection` VALUES ('694', '134', '1', '2019-06-19 01:01:01', '2019-06-19 01:01:01');
INSERT INTO `t_collection` VALUES ('695', '134', '1', '2019-06-19 01:01:01', '2019-06-19 01:01:01');
INSERT INTO `t_collection` VALUES ('696', '134', '1', '2019-06-19 01:01:01', '2019-06-19 01:01:01');
INSERT INTO `t_collection` VALUES ('697', '134', '1', '2019-06-19 01:01:01', '2019-06-19 01:01:01');
INSERT INTO `t_collection` VALUES ('698', '134', '1', '2019-06-19 01:01:02', '2019-06-19 01:01:02');
INSERT INTO `t_collection` VALUES ('699', '134', '1', '2019-06-19 01:01:02', '2019-06-19 01:01:02');
INSERT INTO `t_collection` VALUES ('700', '134', '1', '2019-06-19 01:01:02', '2019-06-19 01:01:02');
INSERT INTO `t_collection` VALUES ('701', '134', '1', '2019-06-19 01:01:03', '2019-06-19 01:01:03');
INSERT INTO `t_collection` VALUES ('702', '134', '1', '2019-06-19 01:01:03', '2019-06-19 01:01:03');
INSERT INTO `t_collection` VALUES ('703', '134', '1', '2019-06-19 01:01:03', '2019-06-19 01:01:03');
INSERT INTO `t_collection` VALUES ('704', '134', '1', '2019-06-19 01:01:03', '2019-06-19 01:01:03');
INSERT INTO `t_collection` VALUES ('705', '134', '1', '2019-06-19 01:01:04', '2019-06-19 01:01:04');
INSERT INTO `t_collection` VALUES ('706', '134', '1', '2019-06-19 01:01:04', '2019-06-19 01:01:04');
INSERT INTO `t_collection` VALUES ('707', '134', '1', '2019-06-19 01:01:04', '2019-06-19 01:01:04');
INSERT INTO `t_collection` VALUES ('708', '134', '1', '2019-06-19 01:01:04', '2019-06-19 01:01:04');
INSERT INTO `t_collection` VALUES ('709', '134', '1', '2019-06-19 01:01:04', '2019-06-19 01:01:04');
INSERT INTO `t_collection` VALUES ('710', '134', '1', '2019-06-19 01:01:05', '2019-06-19 01:01:05');
INSERT INTO `t_collection` VALUES ('711', '134', '1', '2019-06-19 01:01:05', '2019-06-19 01:01:05');
INSERT INTO `t_collection` VALUES ('712', '134', '1', '2019-06-19 01:01:05', '2019-06-19 01:01:05');
INSERT INTO `t_collection` VALUES ('713', '134', '1', '2019-06-19 01:01:05', '2019-06-19 01:01:05');
INSERT INTO `t_collection` VALUES ('714', '134', '1', '2019-06-19 01:01:06', '2019-06-19 01:01:06');
INSERT INTO `t_collection` VALUES ('715', '134', '1', '2019-06-19 01:01:06', '2019-06-19 01:01:06');
INSERT INTO `t_collection` VALUES ('716', '134', '1', '2019-06-19 01:01:06', '2019-06-19 01:01:06');
INSERT INTO `t_collection` VALUES ('717', '134', '1', '2019-06-19 01:01:06', '2019-06-19 01:01:06');
INSERT INTO `t_collection` VALUES ('718', '134', '1', '2019-06-19 01:01:06', '2019-06-19 01:01:06');
INSERT INTO `t_collection` VALUES ('719', '134', '1', '2019-06-19 01:01:07', '2019-06-19 01:01:07');
INSERT INTO `t_collection` VALUES ('720', '134', '1', '2019-06-19 01:01:07', '2019-06-19 01:01:07');
INSERT INTO `t_collection` VALUES ('721', '134', '1', '2019-06-19 01:01:07', '2019-06-19 01:01:07');
INSERT INTO `t_collection` VALUES ('722', '134', '1', '2019-06-19 01:01:07', '2019-06-19 01:01:07');
INSERT INTO `t_collection` VALUES ('723', '134', '1', '2019-06-19 01:01:08', '2019-06-19 01:01:08');
INSERT INTO `t_collection` VALUES ('724', '134', '1', '2019-06-19 01:01:08', '2019-06-19 01:01:08');
INSERT INTO `t_collection` VALUES ('725', '134', '1', '2019-06-19 01:01:09', '2019-06-19 01:01:09');
INSERT INTO `t_collection` VALUES ('726', '134', '1', '2019-06-19 01:01:09', '2019-06-19 01:01:09');
INSERT INTO `t_collection` VALUES ('727', '134', '1', '2019-06-19 01:01:09', '2019-06-19 01:01:09');
INSERT INTO `t_collection` VALUES ('728', '134', '1', '2019-06-19 01:01:09', '2019-06-19 01:01:09');
INSERT INTO `t_collection` VALUES ('729', '134', '1', '2019-06-19 01:01:10', '2019-06-19 01:01:10');
INSERT INTO `t_collection` VALUES ('730', '134', '1', '2019-06-19 01:01:10', '2019-06-19 01:01:10');
INSERT INTO `t_collection` VALUES ('731', '134', '1', '2019-06-19 01:01:10', '2019-06-19 01:01:10');
INSERT INTO `t_collection` VALUES ('732', '134', '1', '2019-06-19 01:01:11', '2019-06-19 01:01:11');
INSERT INTO `t_collection` VALUES ('733', '134', '1', '2019-06-19 01:01:11', '2019-06-19 01:01:11');
INSERT INTO `t_collection` VALUES ('734', '134', '1', '2019-06-19 01:01:11', '2019-06-19 01:01:11');
INSERT INTO `t_collection` VALUES ('735', '134', '1', '2019-06-19 01:01:11', '2019-06-19 01:01:11');
INSERT INTO `t_collection` VALUES ('736', '134', '1', '2019-06-19 01:01:11', '2019-06-19 01:01:11');
INSERT INTO `t_collection` VALUES ('737', '134', '1', '2019-06-19 01:01:11', '2019-06-19 01:01:11');
INSERT INTO `t_collection` VALUES ('738', '134', '1', '2019-06-19 01:01:12', '2019-06-19 01:01:12');
INSERT INTO `t_collection` VALUES ('739', '134', '1', '2019-06-19 01:01:12', '2019-06-19 01:01:12');
INSERT INTO `t_collection` VALUES ('740', '134', '1', '2019-06-19 01:01:12', '2019-06-19 01:01:12');
INSERT INTO `t_collection` VALUES ('741', '134', '1', '2019-06-19 01:01:12', '2019-06-19 01:01:12');
INSERT INTO `t_collection` VALUES ('742', '134', '1', '2019-06-19 01:01:12', '2019-06-19 01:01:12');
INSERT INTO `t_collection` VALUES ('743', '134', '1', '2019-06-19 01:01:13', '2019-06-19 01:01:13');
INSERT INTO `t_collection` VALUES ('744', '134', '1', '2019-06-19 01:01:13', '2019-06-19 01:01:13');
INSERT INTO `t_collection` VALUES ('745', '134', '1', '2019-06-19 01:01:13', '2019-06-19 01:01:13');
INSERT INTO `t_collection` VALUES ('746', '134', '1', '2019-06-19 01:01:14', '2019-06-19 01:01:14');
INSERT INTO `t_collection` VALUES ('747', '134', '1', '2019-06-19 01:01:14', '2019-06-19 01:01:14');
INSERT INTO `t_collection` VALUES ('748', '134', '1', '2019-06-19 01:01:14', '2019-06-19 01:01:14');
INSERT INTO `t_collection` VALUES ('749', '134', '1', '2019-06-19 01:01:14', '2019-06-19 01:01:14');
INSERT INTO `t_collection` VALUES ('750', '134', '1', '2019-06-19 01:01:19', '2019-06-19 01:01:19');
INSERT INTO `t_collection` VALUES ('751', '134', '1', '2019-06-19 01:01:19', '2019-06-19 01:01:19');
INSERT INTO `t_collection` VALUES ('752', '134', '1', '2019-06-19 01:01:19', '2019-06-19 01:01:19');
INSERT INTO `t_collection` VALUES ('753', '134', '1', '2019-06-19 01:01:19', '2019-06-19 01:01:19');
INSERT INTO `t_collection` VALUES ('754', '134', '1', '2019-06-19 01:01:20', '2019-06-19 01:01:20');
INSERT INTO `t_collection` VALUES ('755', '134', '1', '2019-06-19 01:01:20', '2019-06-19 01:01:20');
INSERT INTO `t_collection` VALUES ('756', '134', '1', '2019-06-19 01:01:20', '2019-06-19 01:01:20');
INSERT INTO `t_collection` VALUES ('757', '134', '1', '2019-06-19 01:01:20', '2019-06-19 01:01:20');
INSERT INTO `t_collection` VALUES ('758', '134', '1', '2019-06-19 01:01:20', '2019-06-19 01:01:20');
INSERT INTO `t_collection` VALUES ('759', '134', '1', '2019-06-19 01:01:21', '2019-06-19 01:01:21');
INSERT INTO `t_collection` VALUES ('760', '134', '1', '2019-06-19 01:01:21', '2019-06-19 01:01:21');
INSERT INTO `t_collection` VALUES ('761', '134', '1', '2019-06-19 01:01:21', '2019-06-19 01:01:21');
INSERT INTO `t_collection` VALUES ('762', '134', '1', '2019-06-19 01:01:22', '2019-06-19 01:01:22');
INSERT INTO `t_collection` VALUES ('763', '134', '1', '2019-06-19 01:01:22', '2019-06-19 01:01:22');
INSERT INTO `t_collection` VALUES ('764', '134', '1', '2019-06-19 01:01:22', '2019-06-19 01:01:22');
INSERT INTO `t_collection` VALUES ('765', '134', '1', '2019-06-19 01:01:22', '2019-06-19 01:01:22');
INSERT INTO `t_collection` VALUES ('766', '134', '1', '2019-06-19 01:01:23', '2019-06-19 01:01:23');
INSERT INTO `t_collection` VALUES ('767', '134', '1', '2019-06-19 01:01:23', '2019-06-19 01:01:23');
INSERT INTO `t_collection` VALUES ('768', '134', '1', '2019-06-19 01:01:23', '2019-06-19 01:01:23');
INSERT INTO `t_collection` VALUES ('769', '134', '1', '2019-06-19 01:01:23', '2019-06-19 01:01:23');
INSERT INTO `t_collection` VALUES ('770', '134', '1', '2019-06-19 01:01:23', '2019-06-19 01:01:23');
INSERT INTO `t_collection` VALUES ('771', '134', '1', '2019-06-19 01:01:23', '2019-06-19 01:01:23');
INSERT INTO `t_collection` VALUES ('772', '134', '1', '2019-06-19 01:01:24', '2019-06-19 01:01:24');
INSERT INTO `t_collection` VALUES ('773', '134', '1', '2019-06-19 01:01:24', '2019-06-19 01:01:24');
INSERT INTO `t_collection` VALUES ('774', '134', '1', '2019-06-19 01:01:24', '2019-06-19 01:01:24');
INSERT INTO `t_collection` VALUES ('775', '134', '1', '2019-06-19 01:01:29', '2019-06-19 01:01:29');
INSERT INTO `t_collection` VALUES ('776', '134', '1', '2019-06-19 01:01:29', '2019-06-19 01:01:29');
INSERT INTO `t_collection` VALUES ('777', '134', '1', '2019-06-19 01:01:29', '2019-06-19 01:01:29');
INSERT INTO `t_collection` VALUES ('778', '134', '1', '2019-06-19 01:01:29', '2019-06-19 01:01:29');
INSERT INTO `t_collection` VALUES ('779', '134', '1', '2019-06-19 01:01:29', '2019-06-19 01:01:29');
INSERT INTO `t_collection` VALUES ('780', '134', '1', '2019-06-19 01:01:30', '2019-06-19 01:01:30');
INSERT INTO `t_collection` VALUES ('781', '134', '1', '2019-06-19 01:01:30', '2019-06-19 01:01:30');
INSERT INTO `t_collection` VALUES ('782', '134', '1', '2019-06-19 01:01:30', '2019-06-19 01:01:30');
INSERT INTO `t_collection` VALUES ('783', '134', '1', '2019-06-19 01:01:30', '2019-06-19 01:01:30');
INSERT INTO `t_collection` VALUES ('784', '134', '1', '2019-06-19 01:01:30', '2019-06-19 01:01:30');
INSERT INTO `t_collection` VALUES ('785', '134', '1', '2019-06-19 01:01:31', '2019-06-19 01:01:31');
INSERT INTO `t_collection` VALUES ('786', '134', '1', '2019-06-19 01:01:31', '2019-06-19 01:01:31');
INSERT INTO `t_collection` VALUES ('787', '134', '1', '2019-06-19 01:01:31', '2019-06-19 01:01:31');
INSERT INTO `t_collection` VALUES ('788', '134', '1', '2019-06-19 01:01:31', '2019-06-19 01:01:31');
INSERT INTO `t_collection` VALUES ('789', '134', '1', '2019-06-19 01:01:31', '2019-06-19 01:01:31');
INSERT INTO `t_collection` VALUES ('790', '134', '1', '2019-06-19 01:01:32', '2019-06-19 01:01:32');
INSERT INTO `t_collection` VALUES ('791', '134', '1', '2019-06-19 01:01:32', '2019-06-19 01:01:32');
INSERT INTO `t_collection` VALUES ('792', '134', '1', '2019-06-19 01:01:32', '2019-06-19 01:01:32');
INSERT INTO `t_collection` VALUES ('793', '134', '1', '2019-06-19 01:01:33', '2019-06-19 01:01:33');
INSERT INTO `t_collection` VALUES ('794', '134', '1', '2019-06-19 01:01:35', '2019-06-19 01:01:35');
INSERT INTO `t_collection` VALUES ('795', '134', '1', '2019-06-19 01:01:35', '2019-06-19 01:01:35');
INSERT INTO `t_collection` VALUES ('796', '134', '7', '2019-06-19 01:04:12', '2019-06-19 01:04:12');
INSERT INTO `t_collection` VALUES ('797', '134', '7', '2019-06-19 01:04:12', '2019-06-19 01:04:12');
INSERT INTO `t_collection` VALUES ('798', '134', '7', '2019-06-19 01:04:12', '2019-06-19 01:04:12');
INSERT INTO `t_collection` VALUES ('799', '134', '7', '2019-06-19 01:04:12', '2019-06-19 01:04:12');
INSERT INTO `t_collection` VALUES ('800', '134', '7', '2019-06-19 01:04:12', '2019-06-19 01:04:12');
INSERT INTO `t_collection` VALUES ('801', '134', '7', '2019-06-19 01:04:12', '2019-06-19 01:04:12');
INSERT INTO `t_collection` VALUES ('802', '134', '7', '2019-06-19 01:04:12', '2019-06-19 01:04:12');
INSERT INTO `t_collection` VALUES ('803', '1', '1', '2019-06-19 01:04:26', '2019-06-19 01:04:26');
INSERT INTO `t_collection` VALUES ('804', '1', '6', '2019-06-19 01:04:58', '2019-06-19 01:04:58');
INSERT INTO `t_collection` VALUES ('805', '1', '6', '2019-06-19 01:05:05', '2019-06-19 01:05:05');
INSERT INTO `t_collection` VALUES ('806', '1', '6', '2019-06-19 01:05:39', '2019-06-19 01:05:39');
INSERT INTO `t_collection` VALUES ('807', '134', '16', '2019-06-19 01:05:44', '2019-06-19 01:05:44');
INSERT INTO `t_collection` VALUES ('808', '134', '16', '2019-06-19 01:05:45', '2019-06-19 01:05:45');
INSERT INTO `t_collection` VALUES ('809', '134', '16', '2019-06-19 01:05:45', '2019-06-19 01:05:45');
INSERT INTO `t_collection` VALUES ('810', '134', '20', '2019-06-19 01:12:37', '2019-06-19 01:12:37');
INSERT INTO `t_collection` VALUES ('811', '134', '20', '2019-06-19 01:12:37', '2019-06-19 01:12:37');
INSERT INTO `t_collection` VALUES ('812', '134', '19', '2019-06-19 01:18:14', '2019-06-19 01:18:14');
INSERT INTO `t_collection` VALUES ('813', '134', '19', '2019-06-19 01:18:15', '2019-06-19 01:18:15');
INSERT INTO `t_collection` VALUES ('814', '134', '1', '2019-06-19 01:49:23', '2019-06-19 01:49:23');
INSERT INTO `t_collection` VALUES ('815', '134', '1', '2019-06-19 01:49:23', '2019-06-19 01:49:23');
INSERT INTO `t_collection` VALUES ('816', '134', '1', '2019-06-19 01:49:23', '2019-06-19 01:49:23');
INSERT INTO `t_collection` VALUES ('817', '134', '1', '2019-06-19 01:49:23', '2019-06-19 01:49:23');
INSERT INTO `t_collection` VALUES ('818', '134', '1', '2019-06-19 01:49:24', '2019-06-19 01:49:24');
INSERT INTO `t_collection` VALUES ('819', '134', '1', '2019-06-19 01:49:24', '2019-06-19 01:49:24');
INSERT INTO `t_collection` VALUES ('820', '134', '1', '2019-06-19 01:49:24', '2019-06-19 01:49:24');
INSERT INTO `t_collection` VALUES ('821', '134', '1', '2019-06-19 01:49:24', '2019-06-19 01:49:24');
INSERT INTO `t_collection` VALUES ('822', '134', '1', '2019-06-19 01:49:25', '2019-06-19 01:49:25');
INSERT INTO `t_collection` VALUES ('823', '134', '1', '2019-06-19 01:49:25', '2019-06-19 01:49:25');
INSERT INTO `t_collection` VALUES ('824', '134', '1', '2019-06-19 01:49:25', '2019-06-19 01:49:25');
INSERT INTO `t_collection` VALUES ('825', '134', '1', '2019-06-19 01:49:25', '2019-06-19 01:49:25');
INSERT INTO `t_collection` VALUES ('826', '134', '1', '2019-06-19 01:49:25', '2019-06-19 01:49:25');
INSERT INTO `t_collection` VALUES ('827', '134', '1', '2019-06-19 01:49:26', '2019-06-19 01:49:26');
INSERT INTO `t_collection` VALUES ('828', '134', '1', '2019-06-19 01:49:26', '2019-06-19 01:49:26');
INSERT INTO `t_collection` VALUES ('829', '134', '1', '2019-06-19 01:49:26', '2019-06-19 01:49:26');
INSERT INTO `t_collection` VALUES ('830', '134', '1', '2019-06-19 01:49:26', '2019-06-19 01:49:26');
INSERT INTO `t_collection` VALUES ('831', '134', '1', '2019-06-19 01:49:26', '2019-06-19 01:49:26');
INSERT INTO `t_collection` VALUES ('832', '134', '1', '2019-06-19 01:49:27', '2019-06-19 01:49:27');
INSERT INTO `t_collection` VALUES ('833', '134', '1', '2019-06-19 01:49:27', '2019-06-19 01:49:27');
INSERT INTO `t_collection` VALUES ('834', '134', '1', '2019-06-19 01:49:27', '2019-06-19 01:49:27');
INSERT INTO `t_collection` VALUES ('835', '134', '1', '2019-06-19 01:49:27', '2019-06-19 01:49:27');
INSERT INTO `t_collection` VALUES ('836', '134', '1', '2019-06-19 01:49:27', '2019-06-19 01:49:27');
INSERT INTO `t_collection` VALUES ('837', '134', '1', '2019-06-19 01:49:28', '2019-06-19 01:49:28');
INSERT INTO `t_collection` VALUES ('838', '134', '1', '2019-06-19 01:49:28', '2019-06-19 01:49:28');
INSERT INTO `t_collection` VALUES ('839', '132', '1', '2019-06-19 01:51:33', '2019-06-19 01:51:33');
INSERT INTO `t_collection` VALUES ('840', '1', '9', '2019-06-19 03:15:38', '2019-06-19 03:15:38');
INSERT INTO `t_collection` VALUES ('841', '133', '11', '2019-06-19 03:17:34', '2019-06-19 03:17:34');
INSERT INTO `t_collection` VALUES ('842', '134', '11', '2019-06-19 08:16:29', '2019-06-19 08:16:29');
INSERT INTO `t_collection` VALUES ('843', '132', '10', '2019-06-19 09:02:29', '2019-06-19 09:02:29');
INSERT INTO `t_collection` VALUES ('844', '132', '11', '2019-06-19 09:03:26', '2019-06-19 09:03:26');
INSERT INTO `t_collection` VALUES ('845', '132', '11', '2019-06-19 09:03:27', '2019-06-19 09:03:27');
INSERT INTO `t_collection` VALUES ('846', '132', '11', '2019-06-19 09:03:27', '2019-06-19 09:03:27');
INSERT INTO `t_collection` VALUES ('847', '132', '11', '2019-06-19 09:03:28', '2019-06-19 09:03:28');
INSERT INTO `t_collection` VALUES ('848', '132', '11', '2019-06-19 09:03:28', '2019-06-19 09:03:28');
INSERT INTO `t_collection` VALUES ('849', '132', '11', '2019-06-19 09:03:29', '2019-06-19 09:03:29');
INSERT INTO `t_collection` VALUES ('850', '132', '11', '2019-06-19 09:03:29', '2019-06-19 09:03:29');
INSERT INTO `t_collection` VALUES ('851', '132', '11', '2019-06-19 09:03:29', '2019-06-19 09:03:29');
INSERT INTO `t_collection` VALUES ('852', '132', '11', '2019-06-19 09:03:30', '2019-06-19 09:03:30');
INSERT INTO `t_collection` VALUES ('853', '132', '11', '2019-06-19 09:03:30', '2019-06-19 09:03:30');
INSERT INTO `t_collection` VALUES ('854', '132', '11', '2019-06-19 09:03:30', '2019-06-19 09:03:30');
INSERT INTO `t_collection` VALUES ('855', '132', '11', '2019-06-19 09:03:31', '2019-06-19 09:03:31');
INSERT INTO `t_collection` VALUES ('856', '132', '11', '2019-06-19 09:03:31', '2019-06-19 09:03:31');
INSERT INTO `t_collection` VALUES ('857', '132', '10', '2019-06-20 00:46:06', '2019-06-20 00:46:06');
INSERT INTO `t_collection` VALUES ('858', '132', '10', '2019-06-20 00:46:31', '2019-06-20 00:46:31');
INSERT INTO `t_collection` VALUES ('859', '132', '4', '2019-06-20 00:48:04', '2019-06-20 00:48:04');
INSERT INTO `t_collection` VALUES ('860', '132', '9', '2019-06-20 00:48:15', '2019-06-20 00:48:15');
INSERT INTO `t_collection` VALUES ('861', '132', '9', '2019-06-20 00:48:17', '2019-06-20 00:48:17');
INSERT INTO `t_collection` VALUES ('862', '132', '9', '2019-06-20 00:57:30', '2019-06-20 00:57:30');
INSERT INTO `t_collection` VALUES ('863', '132', '24', '2019-06-20 00:58:13', '2019-06-20 00:58:13');
INSERT INTO `t_collection` VALUES ('864', '132', '10', '2019-06-20 00:59:49', '2019-06-20 00:59:49');
INSERT INTO `t_collection` VALUES ('865', '124', '6', '2019-06-20 01:05:24', '2019-06-20 01:05:24');
INSERT INTO `t_collection` VALUES ('866', '132', '4', '2019-06-20 01:10:12', '2019-06-20 01:10:12');
INSERT INTO `t_collection` VALUES ('867', '132', '4', '2019-06-20 01:10:24', '2019-06-20 01:10:24');

-- ----------------------------
-- Table structure for `t_course`
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(20) NOT NULL,
  `course_introduction` varchar(500) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_img_url` varchar(50) NOT NULL,
  `classify_id` int(11) NOT NULL,
  `video_id` int(11) DEFAULT NULL,
  `uploadDate` date NOT NULL,
  `praiseCount` int(11) NOT NULL,
  `classic` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `course_teacher` (`teacher_id`),
  KEY `course_video` (`video_id`),
  KEY `fk_classify_id` (`classify_id`),
  CONSTRAINT `fk_classify_id` FOREIGN KEY (`classify_id`) REFERENCES `t_classify` (`classify_id`),
  CONSTRAINT `fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `t_teacher` (`teacher_id`),
  CONSTRAINT `fk_video_id` FOREIGN KEY (`video_id`) REFERENCES `t_video` (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES ('1', 'Java语言基础', '涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。', '2', '在线java高手加薪1.png', '4', '2', '2019-06-03', '1444', '1');
INSERT INTO `t_course` VALUES ('2', '微信小程序开发', ' \r\n系统全面的IT课程体系\r\n\r\n \r\n\r\n涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才。\r\n\r\n \r\n\r\n \r\n\r\n ', '3', '微信小程序开发S.png', '1', '2', '2019-04-03', '201', null);
INSERT INTO `t_course` VALUES ('3', '前端开发框架', '系统全面的IT课程体系\r\n\r\n \r\n\r\n涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才。', '5', '前端开发框架S.png', '1', '2', '2019-04-17', '1564', null);
INSERT INTO `t_course` VALUES ('4', 'C#从入门到精通', '主要介绍C#的基础知识，分为七部分：面向对象、集合、图形界面、多线程、数据库、服务、程序开发和实战。 本课程适用于初学者，也可适用于回顾基础知识的C#.NET的老鸟。 对于初学者：千里之行始于足下，要想成为C#高手就要打牢基础； 对于老鸟：温故而知新可以为师矣。 大家共同进步！', '7', '从零开始服务器构建（可回放）1.jpg', '2', '2', '2018-07-20', '155', '1');
INSERT INTO `t_course` VALUES ('5', 'C++之STL模板', 'C++ STL（标准模板库）是惠普实验室开发的一系列软件的统称，是一套功能强大的 C++ 模板类。STL的目的是为了标准化组件，这样就不用重新开发，让后来者可以使用现成的组件，和开源组件有点殊途同归。 STL的版本很多，常见的有HP STL、PJ STL、 SGI STL等，另外，STL库属于C++标准库的一部分，两者是包含关系', '9', 'C++之STL模板1.png', '3', '2', '2019-03-21', '260', null);
INSERT INTO `t_course` VALUES ('6', 'C++之Win32', 'C++是C语言的继承，它既可以进行C语言的过程化程序设计，又可以进行以抽象数据类型为特点的基于对象的程序设计，还可以进行以继承和多态为特点的面向对象的程序设计。C++擅长面向对象程序设计的同时，还可以进行基于过程的程序设计，因而C++就适应的问题规模而论，大小由之', '2', 'c++之Win32 1.png', '3', '2', '2019-01-16', '485', '1');
INSERT INTO `t_course` VALUES ('7', 'Java基础入门', '包括Java开发环境的搭建及其运行机制、基本语法、面向对象的思想，采用典型翔实的例子、通俗易懂的语言阐述面向对象中的抽象概念。在多线程、常用API、集合、IO、GUI、网络编程章节中，通过剖析案例、分析代码结构含义、解决常见问题等方式，帮助初学者培养良好的编程习惯。最后，讲解了Eclipse开发工具，帮助初学者熟悉开发工具的使用', '1', 'java基础入门1.png', '4', '2', '2019-06-13', '10656', null);
INSERT INTO `t_course` VALUES ('8', '在线Java高手加薪', '本课程将手把手的，由浅入深的，带你学习前后端彻底分离模式开发\r\n从零到项目发布上线与运维，让你拥有一个高质量的在线电商项目\r\n需具备Java，SSM，Linux等基础，通过项目实战，让Java技术突飞猛进', '4', '在线java高手加薪2.png', '4', '2', '2018-10-11', '9265', null);
INSERT INTO `t_course` VALUES ('9', 'PHP核心编程', ' \r\n系统全面的IT课程体系\r\n\r\n \r\n\r\n涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才。', '6', 'PHP核心编程1.png', '5', '2', '2018-07-04', '4594', '1');
INSERT INTO `t_course` VALUES ('10', 'Python基础入门', '\r\n    挑选50个Python项目实战与面试容易遇到的问题作为训练任务以讲解典型问题\r\n    提升开发技巧，让你学会举一反三聚焦代码层面\r\n    带你手敲手写每行代码\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才。', '9', 'Python基础入门1.png', '6', '2', '2018-10-04', '5624', null);
INSERT INTO `t_course` VALUES ('11', 'HADOOP', ' \r\n系统全面的IT课程体系\r\n\r\n \r\n\r\n涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n依托达内教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才。', '8', 'HADOOP1.jpg', '7', '2', '2019-01-25', '569', null);
INSERT INTO `t_course` VALUES ('12', 'Linux云计算之Shell脚本编辑', '涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n \r\n\r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才。', '9', 'Linux云计算之Shell脚本编辑1.png', '8', '2', '2019-03-14', '495', '1');
INSERT INTO `t_course` VALUES ('13', 'Linux监控', '\r\n\r\n涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才', '7', 'Linux监控1.png', '8', '2', '2018-12-13', '1551', null);
INSERT INTO `t_course` VALUES ('14', 'Android', '系统全面的IT课程体系\r\n\r\n \r\n\r\n涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才。', '1', 'Android基础1.png', '9', '2', '2018-02-08', '1456', '1');
INSERT INTO `t_course` VALUES ('15', 'IOS之测试课程', '系统全面的IT课程体系\r\n\r\n \r\n\r\n涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才。', '2', 'IOS之测试课程1.png', '10', '2', '2018-11-08', '4414', null);
INSERT INTO `t_course` VALUES ('16', 'UGUI', '系统全面的IT课程体系\r\n\r\n \r\n\r\n涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才', '3', 'UGUI 1.png', '11', '2', '2018-12-14', '365', '1');
INSERT INTO `t_course` VALUES ('17', 'NGUI', '系统全面的IT课程体系\r\n\r\n \r\n\r\n涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才。\r\n\r\n ', '4', 'NGUI2.png', '11', '2', '2018-12-13', '235', null);
INSERT INTO `t_course` VALUES ('18', '嵌入式入门之智能硬件', '系统全面的IT课程体系\r\n\r\n \r\n\r\n涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才。', '5', '嵌入式入门之智能硬件1.png', '12', '2', '2018-04-20', '5818', null);
INSERT INTO `t_course` VALUES ('19', '设计测试用例的方法', '系统全面的IT课程体系\r\n\r\n \r\n\r\n涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才。', '6', '设计测试用例的方法1.png', '13', '2', '2018-05-20', '8261', null);
INSERT INTO `t_course` VALUES ('20', '性能测试工具（LR）', ' \r\n系统全面的IT课程体系\r\n\r\n \r\n\r\n涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才。', '8', '性能测试工具（LR）1.png', '13', '2', '2019-02-22', '5625', null);
INSERT INTO `t_course` VALUES ('21', 'EME之微信运营', '系统全面的IT课程体系\r\n\r\n \r\n\r\n涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才', '10', 'EME之微信运营1.png', '14', '2', '2018-12-06', '956', '1');
INSERT INTO `t_course` VALUES ('22', '人人都是产品经理', '人都是产品经理致力为产品新人、产品经理等广大产品爱好者打造一个良好的学习交流平台。深度剖析国内外互联网业内动态,分享产品设计、交互设计、视觉设计、用户体验。', '7', '人人都是产品经理.jpg', '15', '2', '2017-07-06', '1425', '1');
INSERT INTO `t_course` VALUES ('23', 'UED-交互设计', '系统全面的IT课程体系\r\n\r\n \r\n\r\n\r\n涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n\r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才。', '11', 'UED-交互设计1.png', '16', '2', '2018-09-12', '4215', null);
INSERT INTO `t_course` VALUES ('24', 'Photoshop', 'Adobe Photoshop，简称“PS”，是由Adobe Systems开发和发行的图像处理软件。\r\nPhotoshop主要处理以像素所构成的数字图像。使用其众多的编修与绘图工具，可以有效地进行图片编辑工作。ps有很多功能，在图像、图形、文字、视频、出版等各方面都有涉及。', '2', 'Photoshop 1.png', '17', '2', '2018-08-15', '8262', '1');

-- ----------------------------
-- Table structure for `t_flowmeter`
-- ----------------------------
DROP TABLE IF EXISTS `t_flowmeter`;
CREATE TABLE `t_flowmeter` (
  `


flowmeter_id` int(11) NOT NULL AUTO_INCREMENT,
  `


user_id` int(255) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT NULL,
  `exitTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`


flowmeter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_flowmeter
-- ----------------------------
INSERT INTO `t_flowmeter` VALUES ('1', '1', '2019-06-12 00:00:00', '2019-06-13 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('2', '1', '2019-06-12 00:00:00', '2019-06-13 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('3', '1', '2019-06-14 00:00:00', '2019-06-14 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('4', null, '2019-06-13 00:00:00', '2019-06-13 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('5', null, '2019-06-13 00:00:00', '2019-06-13 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('6', null, '2019-06-13 00:00:00', '2019-06-13 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('7', null, '2019-06-13 00:00:00', '2019-06-13 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('8', null, '2019-06-13 00:00:00', '2019-06-13 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('9', null, '2019-06-13 00:00:00', '2019-06-13 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('10', null, '2019-06-13 00:00:00', '2019-06-13 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('11', null, '2019-06-13 00:00:00', '2019-06-13 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('12', null, '2019-06-13 00:00:00', '2019-06-13 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('13', null, '2019-06-13 00:00:00', '2019-06-13 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('14', null, '2019-06-13 00:00:00', '2019-06-13 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('15', null, '2019-06-13 00:00:00', '2019-06-13 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('16', null, '2019-06-16 00:00:00', '2019-06-16 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('17', null, '2019-06-16 00:00:00', '2019-06-16 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('18', null, '2019-06-16 00:00:00', '2019-06-16 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('19', null, '2019-06-16 00:00:00', '2019-06-16 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('20', null, '2019-06-16 00:00:00', '2019-06-16 00:00:00');
INSERT INTO `t_flowmeter` VALUES ('21', null, '2019-06-16 09:05:59', '2019-06-16 09:05:59');
INSERT INTO `t_flowmeter` VALUES ('22', null, '2019-06-16 09:38:36', '2019-06-16 09:38:36');
INSERT INTO `t_flowmeter` VALUES ('23', null, '2019-06-17 08:13:10', '2019-06-17 08:13:10');
INSERT INTO `t_flowmeter` VALUES ('24', null, '2019-06-17 17:13:23', '2019-06-17 17:13:23');
INSERT INTO `t_flowmeter` VALUES ('25', null, '2019-06-17 17:24:49', '2019-06-17 17:24:49');
INSERT INTO `t_flowmeter` VALUES ('26', null, '2019-06-17 17:24:54', '2019-06-17 17:24:54');
INSERT INTO `t_flowmeter` VALUES ('27', null, '2019-06-17 17:25:01', '2019-06-17 17:25:01');
INSERT INTO `t_flowmeter` VALUES ('28', null, '2019-06-17 17:25:10', '2019-06-17 17:25:10');
INSERT INTO `t_flowmeter` VALUES ('29', null, '2019-06-17 17:25:16', '2019-06-17 17:25:16');
INSERT INTO `t_flowmeter` VALUES ('30', null, '2019-06-17 17:25:22', '2019-06-17 17:25:22');
INSERT INTO `t_flowmeter` VALUES ('31', null, '2019-06-17 17:29:42', '2019-06-17 17:29:42');
INSERT INTO `t_flowmeter` VALUES ('32', null, '2019-06-17 17:31:18', '2019-06-17 17:31:18');
INSERT INTO `t_flowmeter` VALUES ('33', null, '2019-06-17 17:32:27', '2019-06-17 17:32:27');
INSERT INTO `t_flowmeter` VALUES ('34', null, '2019-06-17 17:37:43', '2019-06-17 17:37:43');
INSERT INTO `t_flowmeter` VALUES ('35', null, '2019-06-17 17:38:01', '2019-06-17 17:38:01');
INSERT INTO `t_flowmeter` VALUES ('36', null, '2019-06-18 09:38:42', '2019-06-18 09:38:42');
INSERT INTO `t_flowmeter` VALUES ('37', null, '2019-06-18 09:47:09', '2019-06-18 09:47:09');
INSERT INTO `t_flowmeter` VALUES ('38', null, '2019-06-18 09:53:49', '2019-06-18 09:53:49');
INSERT INTO `t_flowmeter` VALUES ('39', null, '2019-06-18 10:01:48', '2019-06-18 10:01:48');
INSERT INTO `t_flowmeter` VALUES ('40', null, '2019-06-18 10:54:52', '2019-06-18 10:54:52');
INSERT INTO `t_flowmeter` VALUES ('41', null, '2019-06-18 10:56:11', '2019-06-18 10:56:11');
INSERT INTO `t_flowmeter` VALUES ('42', null, '2019-05-15 11:01:44', '2019-05-15 11:01:49');
INSERT INTO `t_flowmeter` VALUES ('43', null, '2019-06-18 11:24:23', '2019-06-18 11:24:23');
INSERT INTO `t_flowmeter` VALUES ('44', null, '2019-06-18 11:24:34', '2019-06-18 11:24:34');
INSERT INTO `t_flowmeter` VALUES ('45', null, '2019-06-20 09:04:22', '2019-06-20 09:04:22');
INSERT INTO `t_flowmeter` VALUES ('46', null, '2019-06-20 09:04:25', '2019-06-20 09:04:25');
INSERT INTO `t_flowmeter` VALUES ('47', null, '2019-06-20 09:10:23', '2019-06-20 09:10:23');
INSERT INTO `t_flowmeter` VALUES ('48', null, '2019-06-20 09:14:15', '2019-06-20 09:14:15');
INSERT INTO `t_flowmeter` VALUES ('49', null, '2019-06-20 09:14:18', '2019-06-20 09:14:18');
INSERT INTO `t_flowmeter` VALUES ('50', null, '2019-06-20 09:21:20', '2019-06-20 09:21:20');
INSERT INTO `t_flowmeter` VALUES ('51', null, '2019-06-20 09:22:35', '2019-06-20 09:22:35');

-- ----------------------------
-- Table structure for `t_praise`
-- ----------------------------
DROP TABLE IF EXISTS `t_praise`;
CREATE TABLE `t_praise` (
  `praise_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`praise_id`)
) ENGINE=InnoDB AUTO_INCREMENT=355 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_praise
-- ----------------------------
INSERT INTO `t_praise` VALUES ('2', '1', '3');
INSERT INTO `t_praise` VALUES ('9', '124', '22');
INSERT INTO `t_praise` VALUES ('25', '124', '20');
INSERT INTO `t_praise` VALUES ('42', null, '10');
INSERT INTO `t_praise` VALUES ('43', null, '9');
INSERT INTO `t_praise` VALUES ('44', null, '9');
INSERT INTO `t_praise` VALUES ('46', '1', '1');
INSERT INTO `t_praise` VALUES ('47', '1', '1');
INSERT INTO `t_praise` VALUES ('48', null, '5');
INSERT INTO `t_praise` VALUES ('49', null, '5');
INSERT INTO `t_praise` VALUES ('50', null, '5');
INSERT INTO `t_praise` VALUES ('51', null, '5');
INSERT INTO `t_praise` VALUES ('52', null, '5');
INSERT INTO `t_praise` VALUES ('53', null, '5');
INSERT INTO `t_praise` VALUES ('54', null, '5');
INSERT INTO `t_praise` VALUES ('55', null, '5');
INSERT INTO `t_praise` VALUES ('56', null, '5');
INSERT INTO `t_praise` VALUES ('57', null, '5');
INSERT INTO `t_praise` VALUES ('58', null, '5');
INSERT INTO `t_praise` VALUES ('59', null, '5');
INSERT INTO `t_praise` VALUES ('60', null, '5');
INSERT INTO `t_praise` VALUES ('61', null, '5');
INSERT INTO `t_praise` VALUES ('62', null, '5');
INSERT INTO `t_praise` VALUES ('63', null, '5');
INSERT INTO `t_praise` VALUES ('64', null, '5');
INSERT INTO `t_praise` VALUES ('65', null, '5');
INSERT INTO `t_praise` VALUES ('66', null, '5');
INSERT INTO `t_praise` VALUES ('67', null, '5');
INSERT INTO `t_praise` VALUES ('68', null, '5');
INSERT INTO `t_praise` VALUES ('69', null, '5');
INSERT INTO `t_praise` VALUES ('70', null, '5');
INSERT INTO `t_praise` VALUES ('71', null, '5');
INSERT INTO `t_praise` VALUES ('72', null, '5');
INSERT INTO `t_praise` VALUES ('73', null, '5');
INSERT INTO `t_praise` VALUES ('74', null, '5');
INSERT INTO `t_praise` VALUES ('75', null, '5');
INSERT INTO `t_praise` VALUES ('76', null, '5');
INSERT INTO `t_praise` VALUES ('77', null, '5');
INSERT INTO `t_praise` VALUES ('78', null, '5');
INSERT INTO `t_praise` VALUES ('87', null, '1');
INSERT INTO `t_praise` VALUES ('88', null, '10');
INSERT INTO `t_praise` VALUES ('89', null, '10');
INSERT INTO `t_praise` VALUES ('90', null, '10');
INSERT INTO `t_praise` VALUES ('91', null, '5');
INSERT INTO `t_praise` VALUES ('92', null, '1');
INSERT INTO `t_praise` VALUES ('93', '124', '2');
INSERT INTO `t_praise` VALUES ('94', '124', '2');
INSERT INTO `t_praise` VALUES ('97', '124', '13');
INSERT INTO `t_praise` VALUES ('110', '133', '1');
INSERT INTO `t_praise` VALUES ('156', '124', '3');
INSERT INTO `t_praise` VALUES ('228', '1', '1');
INSERT INTO `t_praise` VALUES ('229', '1', '1');
INSERT INTO `t_praise` VALUES ('230', '1', '1');
INSERT INTO `t_praise` VALUES ('231', '1', '1');
INSERT INTO `t_praise` VALUES ('232', '1', '1');
INSERT INTO `t_praise` VALUES ('233', '1', '1');
INSERT INTO `t_praise` VALUES ('234', '1', '1');
INSERT INTO `t_praise` VALUES ('264', '134', '11');
INSERT INTO `t_praise` VALUES ('277', '119', '10');
INSERT INTO `t_praise` VALUES ('278', '119', '10');
INSERT INTO `t_praise` VALUES ('279', '119', '10');
INSERT INTO `t_praise` VALUES ('280', '119', '10');
INSERT INTO `t_praise` VALUES ('281', '119', '10');
INSERT INTO `t_praise` VALUES ('282', '119', '10');
INSERT INTO `t_praise` VALUES ('283', '119', '10');
INSERT INTO `t_praise` VALUES ('284', '134', '3');
INSERT INTO `t_praise` VALUES ('293', '133', '9');
INSERT INTO `t_praise` VALUES ('299', '124', '10');
INSERT INTO `t_praise` VALUES ('301', '1', '10');
INSERT INTO `t_praise` VALUES ('302', '1', '6');
INSERT INTO `t_praise` VALUES ('305', '134', '14');
INSERT INTO `t_praise` VALUES ('308', '134', '13');
INSERT INTO `t_praise` VALUES ('309', '3', '3');
INSERT INTO `t_praise` VALUES ('310', '3', '3');
INSERT INTO `t_praise` VALUES ('312', '124', '1');
INSERT INTO `t_praise` VALUES ('322', '132', '1');
INSERT INTO `t_praise` VALUES ('339', '134', '6');
INSERT INTO `t_praise` VALUES ('344', '132', '10');
INSERT INTO `t_praise` VALUES ('354', '132', '4');

-- ----------------------------
-- Table structure for `t_province`
-- ----------------------------
DROP TABLE IF EXISTS `t_province`;
CREATE TABLE `t_province` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_code` varchar(6) NOT NULL COMMENT '省份编码',
  `province_name` varchar(20) NOT NULL COMMENT '省份名字',
  PRIMARY KEY (`province_id`),
  KEY `province_code` (`province_code`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_province
-- ----------------------------
INSERT INTO `t_province` VALUES ('1', '110000', '北京市');
INSERT INTO `t_province` VALUES ('2', '120000', '天津市');
INSERT INTO `t_province` VALUES ('3', '130000', '河北省');
INSERT INTO `t_province` VALUES ('4', '140000', '山西省');
INSERT INTO `t_province` VALUES ('5', '150000', '内蒙古自治区');
INSERT INTO `t_province` VALUES ('6', '210000', '辽宁省');
INSERT INTO `t_province` VALUES ('7', '220000', '吉林省');
INSERT INTO `t_province` VALUES ('8', '230000', '黑龙江省');
INSERT INTO `t_province` VALUES ('9', '310000', '上海市');
INSERT INTO `t_province` VALUES ('10', '320000', '江苏省');
INSERT INTO `t_province` VALUES ('11', '330000', '浙江省');
INSERT INTO `t_province` VALUES ('12', '340000', '安徽省');
INSERT INTO `t_province` VALUES ('13', '350000', '福建省');
INSERT INTO `t_province` VALUES ('14', '360000', '江西省');
INSERT INTO `t_province` VALUES ('15', '370000', '山东省');
INSERT INTO `t_province` VALUES ('16', '410000', '河南省');
INSERT INTO `t_province` VALUES ('17', '420000', '湖北省');
INSERT INTO `t_province` VALUES ('18', '430000', '湖南省');
INSERT INTO `t_province` VALUES ('19', '440000', '广东省');
INSERT INTO `t_province` VALUES ('20', '450000', '广西壮族自治区');
INSERT INTO `t_province` VALUES ('21', '460000', '海南省');
INSERT INTO `t_province` VALUES ('22', '500000', '重庆市');
INSERT INTO `t_province` VALUES ('23', '510000', '四川省');
INSERT INTO `t_province` VALUES ('24', '520000', '贵州省');
INSERT INTO `t_province` VALUES ('25', '530000', '云南省');
INSERT INTO `t_province` VALUES ('26', '540000', '西藏自治区');
INSERT INTO `t_province` VALUES ('27', '610000', '陕西省');
INSERT INTO `t_province` VALUES ('28', '620000', '甘肃省');
INSERT INTO `t_province` VALUES ('29', '630000', '青海省');
INSERT INTO `t_province` VALUES ('30', '640000', '宁夏回族自治区');
INSERT INTO `t_province` VALUES ('31', '650000', '新疆维吾尔自治区');
INSERT INTO `t_province` VALUES ('32', '710000', '台湾省');
INSERT INTO `t_province` VALUES ('33', '810000', '香港特别行政区');
INSERT INTO `t_province` VALUES ('34', '820000', '澳门特别行政区');

-- ----------------------------
-- Table structure for `t_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_code` varchar(6) NOT NULL COMMENT '教师编号',
  `teacher_name` varchar(20) NOT NULL COMMENT '教师名字',
  PRIMARY KEY (`teacher_id`),
  KEY `teacher_code` (`teacher_code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('1', '111101', '张晓');
INSERT INTO `t_teacher` VALUES ('2', '111102', '邓力夫');
INSERT INTO `t_teacher` VALUES ('3', '111103', '彭雅琪');
INSERT INTO `t_teacher` VALUES ('4', '111104', '罗秋梦');
INSERT INTO `t_teacher` VALUES ('5', '111105', '刘强');
INSERT INTO `t_teacher` VALUES ('6', '111106', '张伟');
INSERT INTO `t_teacher` VALUES ('7', '111107', '付超');
INSERT INTO `t_teacher` VALUES ('8', '111108', '王冰艳');
INSERT INTO `t_teacher` VALUES ('9', '111109', '陈诚');
INSERT INTO `t_teacher` VALUES ('10', '111110', '李基');
INSERT INTO `t_teacher` VALUES ('11', '111111', '王伟');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(20) CHARACTER SET gbk NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET gbk NOT NULL COMMENT '密码',
  `email` varchar(30) CHARACTER SET gbk NOT NULL COMMENT '邮箱',
  `gender` char(1) CHARACTER SET gbk NOT NULL DEFAULT 'M' COMMENT '用户性别',
  `province_id` int(11) NOT NULL COMMENT '省份id',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '用户状态',
  `birthday` date NOT NULL COMMENT '出生日期',
  `createTime` date NOT NULL COMMENT '注册时间',
  `modifyTime` date DEFAULT NULL COMMENT '上次修改信息时间',
  `college` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_province_id` (`province_id`),
  CONSTRAINT `fk_province_id` FOREIGN KEY (`province_id`) REFERENCES `t_province` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'user1', '119264b4a06bc48a0a822f36594648334e7a675531556023', '123@qq.com', 'M', '1', '1', '1988-09-08', '2019-06-04', '2019-06-04', '萍乡高专');
INSERT INTO `t_user` VALUES ('3', '李文昂', '26829e50888ef8293044343b27517fb8683265f97cc68f1c', '2263279913@qq.com', 'F', '2', '1', '1995-02-03', '2019-06-04', '2019-06-18', 'pxxy');
INSERT INTO `t_user` VALUES ('4', '张曜栋', '98ae49056960830f37210d2a28169a69166e08c75b353c6f', '2263279913@qq.com', 'F', '3', '1', '1990-01-01', '2019-06-04', '2019-06-18', 'pxxy');
INSERT INTO `t_user` VALUES ('20', '冯昆皓', '51223f182025198a70d49463d3f020837c8fa5042da25a16', 'd82c90@qq.com', 'M', '4', '1', '1989-05-11', '2019-06-05', '2019-06-05', 'd82c90');
INSERT INTO `t_user` VALUES ('21', '王炫明', '763b98d14c2fb7b95c202829135b1e36ca8ac4d90b40b202', '231ac1@qq.com', 'M', '5', '1', '1991-11-22', '2019-06-05', '2019-06-05', '231ac1');
INSERT INTO `t_user` VALUES ('22', '王昌淼', '537f68e3061db00e9cb6b03a97dd3e53f02b665f1de19c75', 'f1e452@qq.com', 'M', '6', '1', '1987-12-24', '2019-06-05', '2019-06-05', 'f1e452');
INSERT INTO `t_user` VALUES ('23', '刘鑫鹏', 'd39359d5c63b32001d622409f2263af0437b475e83027f05', '9dd723@qq.com', 'M', '7', '1', '1986-05-14', '2019-06-05', '2019-06-05', '9dd723');
INSERT INTO `t_user` VALUES ('24', '杨景平', 'f3db0a06219412681d884b6168c293c89883005152923475', '3c8dc4@qq.com', 'M', '8', '1', '1987-11-13', '2019-06-05', '2019-06-05', '3c8dc4');
INSERT INTO `t_user` VALUES ('25', '陈高朗', '12ad11054f2840b32278be3788df4c75e83782d93e78381f', 'ea2b75@qq.com', 'M', '9', '1', '1994-09-01', '2019-06-05', '2019-06-05', 'ea2b75');
INSERT INTO `t_user` VALUES ('26', '赵振宇', '46650109bf60392c14e64048b46a4cf72b12d59957f42401', '148766@qq.com', 'M', '10', '1', '1990-07-01', '2019-06-05', '2019-06-05', '148766');
INSERT INTO `t_user` VALUES ('27', '黄运珹', '97ec12c47340608486f9da1e68e16517d29181ad4b80dd00', '7a3427@qq.com', 'M', '11', '1', '1993-04-10', '2019-06-05', '2019-06-05', '7a3427');
INSERT INTO `t_user` VALUES ('28', '周辰龙', '65773da7194fc8381502ad8511d61541ff99f47288a6ea35', 'c43248@qq.com', 'M', '12', '1', '1993-11-18', '2019-06-05', '2019-06-05', 'c43248');
INSERT INTO `t_user` VALUES ('29', '吴鸿运', '96e146874947d44b79b62218b13c51572768a34f85461235', 'fcd099@qq.com', 'M', '13', '1', '1996-09-01', '2019-06-05', '2019-06-05', 'fcd099');
INSERT INTO `t_user` VALUES ('30', '徐浩然', '11e45f86022a89a43967186ae9b226f76d1339148379a164', '8190e10@qq.com', 'M', '14', '1', '1994-08-05', '2019-06-05', '2019-06-05', '8190e10');
INSERT INTO `t_user` VALUES ('31', '郑智晖', '88293c82c706f5fe21a37892360270556c20230255c9f45d', '2479411@qq.com', 'M', '15', '1', '1996-07-15', '2019-06-05', '2019-06-05', '2479411');
INSERT INTO `t_user` VALUES ('32', '马智宇', 'f1416d83b15621619517325958411ef9ab6560d741837101', '99dd612@qq.com', 'M', '16', '1', '1994-07-09', '2019-06-05', '2019-06-05', '99dd612');
INSERT INTO `t_user` VALUES ('33', '朱子昂', 'e4541a42602195f001508671405e35019f1ba0a04959a50f', '46aa313@qq.com', 'M', '17', '1', '1995-09-06', '2019-06-05', '2019-06-05', '46aa313');
INSERT INTO `t_user` VALUES ('34', '胡永昌', 'e8078e242b6502235939de6fc9fd7267121ff7182a932747', '1a0c014@qq.com', 'M', '18', '1', '1989-02-06', '2019-06-05', '2019-06-05', '1a0c014');
INSERT INTO `t_user` VALUES ('35', '郭曦哲', '819454955a24007b34b7664db46c8d671565c32169e79e44', 'ba05015@qq.com', 'M', '19', '1', '1989-01-12', '2019-06-05', '2019-06-05', 'ba05015');
INSERT INTO `t_user` VALUES ('36', '何晨涤', 'b33844e46b10476a4504cc2491a96c74f040232f1c020223', '867a916@qq.com', 'M', '20', '1', '1990-01-01', '2019-06-05', '2019-06-05', '867a916');
INSERT INTO `t_user` VALUES ('37', '高祎溥', '82766ce1169e39973934212d03fa04b13356378b1483f124', '1046b17@qq.com', 'M', '21', '1', '1991-08-15', '2019-06-05', '2019-06-05', '1046b17');
INSERT INTO `t_user` VALUES ('38', '林昕毓', '869449a6ec4172661a20933508dd7953367583e976a1f20d', 'c692b18@qq.com', 'M', '22', '1', '1990-01-01', '2019-06-05', '2019-06-05', 'c692b18');
INSERT INTO `t_user` VALUES ('39', '罗景铭', '29cc55528e9032d392b9a957a74a4883858481282ef4420b', '16baa19@qq.com', 'M', '23', '1', '1991-03-13', '2019-06-05', '2019-06-05', '16baa19');
INSERT INTO `t_user` VALUES ('40', '孙琰迅', '644146b2ae4543aa6281c76dc9486265a02377ab5fb8f044', 'cda9420@qq.com', 'M', '24', '1', '1990-01-01', '2019-06-05', '2019-06-05', 'cda9420');
INSERT INTO `t_user` VALUES ('41', '梁宏浩', '92760975a07b726505b7784019998b12560fe93f5613ff6e', '5639f21@qq.com', 'M', '25', '1', '1997-05-07', '2019-06-05', '2019-06-05', '5639f21');
INSERT INTO `t_user` VALUES ('42', '谢雪灿', 'c3417065d121a98689f6148d837e0278de1e70ab3946fc92', '55ee122@qq.com', 'M', '26', '1', '1995-05-20', '2019-06-05', '2019-06-05', '55ee122');
INSERT INTO `t_user` VALUES ('43', '宋正桐', '070a50457451923252852d76513f4f88030f629316724436', '34d3f23@qq.com', 'M', '27', '1', '1990-01-01', '2019-06-05', '2019-06-05', '34d3f23');
INSERT INTO `t_user` VALUES ('44', '唐泰朗', '190073372a5680e602365960f8ee5c39812685316fa45330', '6920824@qq.com', 'F', '28', '1', '1995-10-27', '2019-06-05', '2019-06-05', '6920824');
INSERT INTO `t_user` VALUES ('45', '许思胜', 'a75a74957f3bf1b08aa00f8f614c8b874f84d3dd5445203e', '847f425@qq.com', 'F', '28', '1', '1990-01-01', '2019-06-05', '2019-06-05', '847f425');
INSERT INTO `t_user` VALUES ('46', '韩海鑫', '85336ba52402d1da85000168e7db0d11555d763d8100af05', '4c17a26@qq.com', 'F', '29', '1', '1999-05-06', '2019-06-05', '2019-06-05', '4c17a26');
INSERT INTO `t_user` VALUES ('47', '邓钦云', '595a8474b27ad7af9ad18d0a43203031900d45ca0887d36a', '792de27@qq.com', 'M', '30', '1', '1999-05-21', '2019-06-05', '2019-06-05', '792de27');
INSERT INTO `t_user` VALUES ('48', '曹江源', 'f68d41e47e6888c70424b421b3be0961dc5947955e49d073', '352fd28@qq.com', 'F', '31', '1', '1994-09-16', '2019-06-05', '2019-06-05', '352fd28');
INSERT INTO `t_user` VALUES ('49', '彭东楠', '491c25a9b10ce13c2225a803e3d33617a63540dc9d34f656', '879f529@qq.com', 'M', '32', '1', '1993-05-21', '2019-06-05', '2019-06-05', '879f529');
INSERT INTO `t_user` VALUES ('50', '曾文升', '91c062e1cb0069b86832766d318429b2ab2e471830144694', '3f4dc30@qq.com', 'F', '33', '1', '1992-02-01', '2019-06-05', '2019-06-05', '3f4dc30');
INSERT INTO `t_user` VALUES ('51', '萧子浪', '151615428759d41722908564b6418024760ef72e0a109b56', '8952731@qq.com', 'F', '34', '1', '1991-03-14', '2019-06-05', '2019-06-05', '8952731');
INSERT INTO `t_user` VALUES ('52', '田嘉盈', 'b99a04c8d40eb0e503246a33920159e4415d42307937af18', 'bf55032@qq.com', 'F', '1', '1', '1988-09-01', '2019-06-05', '2019-06-05', 'bf55032');
INSERT INTO `t_user` VALUES ('53', '董厚辰', '96011d68301cb0571f918619f7789852759da9b528b5de6c', '1563133@qq.com', 'F', '1', '1', '1993-04-23', '2019-06-05', '2019-06-05', '1563133');
INSERT INTO `t_user` VALUES ('54', '潘代瑾', '334742c90e53228e4fc7031fd3d77ef69c51d0c641d34779', '54b2834@qq.com', 'M', '1', '1', '1987-03-31', '2019-06-05', '2019-06-05', '54b2834');
INSERT INTO `t_user` VALUES ('55', '袁钧乐', '93f75be78b6f59f577625e0e890d0eb3829230918a69ee93', 'f70d835@qq.com', 'F', '1', '1', '1999-10-30', '2019-06-05', '2019-06-05', 'f70d835');
INSERT INTO `t_user` VALUES ('56', '于文苓', 'f8339783bc34805b7383a88b52b743b6952d623809a2bb0c', '2535c36@qq.com', 'F', '1', '1', '1993-07-15', '2019-06-05', '2019-06-05', '2535c36');
INSERT INTO `t_user` VALUES ('57', '蒋宇科', 'b6c288903d4107927ee7306b62eb2ad6da64c5b520d5239c', 'f521337@qq.com', 'M', '1', '1', '1993-04-09', '2019-06-05', '2019-06-05', 'f521337');
INSERT INTO `t_user` VALUES ('58', '蔡予星', 'c4c06fe7ce1e66a508706a0ff4c806713f48e20a4350190a', 'c10e838@qq.com', 'M', '1', '1', '1994-01-21', '2019-06-05', '2019-06-05', 'c10e838');
INSERT INTO `t_user` VALUES ('59', '余宇仲', '62f343a1a63eb6b95af06e21a84d5c28a78c615b6948de91', '36dde39@qq.com', 'F', '1', '1', '1992-10-09', '2019-06-05', '2019-06-05', '36dde39');
INSERT INTO `t_user` VALUES ('60', '杜宗信 ', '568a0e02644bf5f41324fd0102e21723ac3f676b39841485', 'fa01140@qq.com', 'M', '1', '1', '1995-06-23', '2019-06-05', '2019-06-05', 'fa01140');
INSERT INTO `t_user` VALUES ('61', '叶炳浩', '07628dd3552486975a62807669064ec3a771f5c105d76d84', '7337041@qq.com', 'M', '1', '1', '1992-06-19', '2019-06-05', '2019-06-05', '7337041');
INSERT INTO `t_user` VALUES ('62', '程慕鸿', '45723a12223ca0431d56d87af78a9285b76e55f62a51ed36', 'c67fd42@qq.com', 'F', '2', '1', '1990-01-01', '2019-06-05', '2019-06-05', 'c67fd42');
INSERT INTO `t_user` VALUES ('63', '苏德盛', '46a620184822194186a6de63755657545310d33278d63374', '5984143@qq.com', 'M', '1', '1', '1997-01-22', '2019-06-05', '2019-06-05', '5984143');
INSERT INTO `t_user` VALUES ('64', '魏懿轩', 'd2cd6c03446ab0c20a62c07691dd4394b15670188c365227', 'f7f8c44@qq.com', 'M', '1', '1', '1996-06-19', '2019-06-05', '2019-06-05', 'f7f8c44');
INSERT INTO `t_user` VALUES ('65', '吕明圣', 'd4c66b354b6010c687f89f34e4df3978231ef02786d15442', '67b9d45@qq.com', 'M', '25', '1', '1996-11-13', '2019-06-05', '2019-06-05', '67b9d45');
INSERT INTO `t_user` VALUES ('66', '丁牧星', '36df4125e38b63568503f447d9b73bb04733e12401006504v', 'd72a946@qq.com', 'F', '1', '1', '1988-04-14', '2019-06-05', '2019-06-05', 'd72a946');
INSERT INTO `t_user` VALUES ('67', '任雨豪', '89ea43e33e49f5584fd6e55777fe34563b8162776ce2cf91', 'e195c47@qq.com', 'M', '1', '1', '1998-10-14', '2019-06-05', '2019-06-05', 'e195c47');
INSERT INTO `t_user` VALUES ('68', '沈元朋', 'c2eb0531a45780ad5e764657057d42b0f17024ae6097880e', '191cd48@qq.com', 'F', '15', '1', '1998-12-11', '2019-06-05', '2019-06-05', '191cd48');
INSERT INTO `t_user` VALUES ('70', '姚鹏涛', 'a7d394311c8ba9b192c9762835a416459644725354d7c54f', 'afa4a0@qq.com', 'M', '1', '1', '1996-01-05', '2019-06-06', '2019-06-06', 'afa4a0');
INSERT INTO `t_user` VALUES ('71', '卢昌翔', 'f9328db16019c7325415472c03b236b1f656f70f4a451e04', 'e95f31@qq.com', 'F', '1', '1', '1994-06-17', '2019-06-06', '2019-06-06', 'e95f31');
INSERT INTO `t_user` VALUES ('72', '姜弥鸿', '03eb5f17c503c68185397d5413151508da24d9ab95a5990e', 'acda92@qq.com', 'F', '1', '1', '1990-01-01', '2019-06-06', '2019-06-06', 'acda92');
INSERT INTO `t_user` VALUES ('73', '崔锐焦', '722443f6cb6648815954cf6d99fa2e60b64e85639d37c700', '8e9c73@qq.com', 'M', '1', '1', '1993-08-07', '2019-06-06', '2019-06-06', '8e9c73');
INSERT INTO `t_user` VALUES ('74', '钟熙宝', '62fb3091183cf02733b2d077a27a56f5847608e471d32579', 'f24e54@qq.com', 'F', '1', '1', '1990-01-01', '2019-06-06', '2019-06-06', 'f24e54');
INSERT INTO `t_user` VALUES ('75', '谭东南', '38e133818d3221d45154983462ee6ab6c93116f75e76233e', '5add25@qq.com', 'M', '1', '1', '1992-09-24', '2019-06-06', '2019-06-06', '5add25');
INSERT INTO `t_user` VALUES ('76', '陆昌书', '06787965e904883273412345f3368b728237f36796e2930d', 'f24436@qq.com', 'M', '1', '1', '1991-07-03', '2019-06-06', '2019-06-06', 'f24436');
INSERT INTO `t_user` VALUES ('77', '汪晨涤', '75de2732080f99d19086229737706d31ea29a05f7554f054', '7ea177@qq.com', 'F', '1', '1', '1985-01-22', '2019-06-06', '2019-06-06', '7ea177');
INSERT INTO `t_user` VALUES ('78', '范睿颖 ', 'e38f08d59d9606bf9f76b58f89e88038259e04ff11f5ca9d', '7d40f8@qq.com', 'M', '1', '1', '1990-01-01', '2019-06-06', '2019-06-06', '7d40f8');
INSERT INTO `t_user` VALUES ('79', '金炜琳 ', 'a4572286ee2624933b11396697c02dd0d74c40173c835f0e', '918419@qq.com', 'F', '1', '1', '1994-11-27', '2019-06-06', '2019-06-06', '918419');
INSERT INTO `t_user` VALUES ('80', '石雨莹 ', 'b90239c7a385f89746f82030a6cf45f94011a85d8c034b04', '9d52b10@qq.com', 'F', '1', '1', '1990-10-10', '2019-06-06', '2019-06-06', '9d52b10');
INSERT INTO `t_user` VALUES ('81', '廖炜婷 ', 'd9479169440b80940df13f96f5a85ec7cc57173840b6bd61', '9f59a11@qq.com', 'M', '1', '1', '1992-03-19', '2019-06-06', '2019-06-06', '9f59a11');
INSERT INTO `t_user` VALUES ('82', '贾丽英 ', '681c3bb2f797f6383b875b3401d232f87514f40246a7b899', 'baea912@qq.com', 'M', '1', '1', '1988-08-24', '2019-06-06', '2019-06-06', 'baea912');
INSERT INTO `t_user` VALUES ('83', '夏忠燕 ', 'c65213b0151a97db8ae5518412085957e33954510a64fb2f', '4c07b13@qq.com', 'F', '1', '1', '1991-10-30', '2019-06-06', '2019-06-06', '4c07b13');
INSERT INTO `t_user` VALUES ('84', '韦瑞芬 ', '35321d13e41820f664a6036b143649b25d14c54e40689709', 'f23ac14@qq.com', 'M', '1', '1', '1991-06-13', '2019-06-06', '2019-06-06', 'f23ac14');
INSERT INTO `t_user` VALUES ('85', '傅馨婷 ', 'f8150a32953fd0fa0ce3dd7d32a95b179c1832cd99b7990d', '9729715@qq.com', 'F', '1', '1', '1982-08-04', '2019-06-06', '2019-06-06', '9729715');
INSERT INTO `t_user` VALUES ('86', '方连英 ', 'f74313110567899851a1731437f300a53203576454589d9d', 'f303916@qq.com', 'M', '1', '1', '1990-12-28', '2019-06-06', '2019-06-06', 'f303916');
INSERT INTO `t_user` VALUES ('87', '白秀媛 ', 'a51d6e809f30c55f7a054171559f6c58305c87e737e4c796', 'd73e617@qq.com', 'F', '1', '1', '1985-12-11', '2019-06-06', '2019-06-06', 'd73e617');
INSERT INTO `t_user` VALUES ('88', '邹雨花 ', '54a80e33085fa99328512f6af3a149a2bd1a333f06c6da06', '357df18@qq.com', 'M', '1', '1', '1990-01-01', '2019-06-06', '2019-06-06', '357df18');
INSERT INTO `t_user` VALUES ('89', '孟秀珊 ', '43d716a05487142213b7863e493e07378558678b81a79443', 'b738f19@qq.com', 'M', '1', '1', '1992-07-16', '2019-06-06', '2019-06-06', 'b738f19');
INSERT INTO `t_user` VALUES ('90', '熊欣怡 ', '779376987f2d713f01a29324662865049d9f456068737d04', 'aeff620@qq.com', 'F', '1', '1', '1987-02-06', '2019-06-06', '2019-06-06', 'aeff620');
INSERT INTO `t_user` VALUES ('91', '秦思艳 ', '395e33c1e34776f111670433b4df6d65fe3bb80488b45f20', '89a6921@qq.com', 'M', '1', '1', '1984-11-14', '2019-06-06', '2019-06-06', '89a6921');
INSERT INTO `t_user` VALUES ('92', '邱紫颖 ', '725953938d12a3434892391988952b46110fe5ff38a83533', 'e9d3222@qq.com', 'M', '1', '1', '1993-02-04', '2019-06-06', '2019-06-06', 'e9d3222');
INSERT INTO `t_user` VALUES ('93', '江芬璇', 'e61f0d40df40571c33e0a43635fe7f05ee56518c4f955653', '60d5523@qq.com', 'M', '1', '1', '1992-09-12', '2019-06-06', '2019-06-06', '60d5523');
INSERT INTO `t_user` VALUES ('94', '尹婧文 ', 'f15b4bf7834543005108254d65d93221bd2ab01e94b8ce31', '5683524@qq.com', 'F', '1', '1', '1993-01-22', '2019-06-06', '2019-06-06', '5683524');
INSERT INTO `t_user` VALUES ('95', '薛惠芳 ', '61768894181c51f30b80ef07919c0f76bd50a4c90e343408', '4b53025@qq.com', 'F', '1', '1', '1995-02-24', '2019-06-06', '2019-06-06', '4b53025');
INSERT INTO `t_user` VALUES ('96', '阎炎琳 ', '199f6782ec70067b4e47c22de3e91932500f47204a083421', '3d57326@qq.com', 'M', '1', '1', '1991-07-01', '2019-06-06', '2019-06-06', '3d57326');
INSERT INTO `t_user` VALUES ('97', '段秀颖 ', '33cb5aa95b4fd6739a746880d8503737623609a30fa71308', 'ee73027@qq.com', 'M', '1', '1', '1993-01-15', '2019-06-06', '2019-06-06', 'ee73027');
INSERT INTO `t_user` VALUES ('98', '雷翠萍 ', 'e34b65d6ed92c01d2754f634387a65137c8d92cb8b874c3a', '4d39928@qq.com', 'F', '1', '1', '1988-04-06', '2019-06-06', '2019-06-06', '4d39928');
INSERT INTO `t_user` VALUES ('99', '侯爱茹 ', '812737695531d2ea0ed98c9985dc6b23192a00255dc0300b', '3a5c729@qq.com', 'M', '1', '1', '1989-04-19', '2019-06-06', '2019-06-06', '3a5c729');
INSERT INTO `t_user` VALUES ('100', '龙艳霞 ', 'c41f68552f7eb9510161e17716b18d571e1128899c320706', '2231430@qq.com', 'F', '1', '1', '1989-03-23', '2019-06-06', '2019-06-06', '2231430');
INSERT INTO `t_user` VALUES ('101', '史龙艳 ', '59f309894f4ec2b863c02f7c930329a50e0fc0e78598732e', '2613131@qq.com', 'M', '1', '1', '1992-12-10', '2019-06-06', '2019-06-06', '2613131');
INSERT INTO `t_user` VALUES ('102', '陶嫣钰 ', '97633b86ca04f72c4d90a476887b00e6dd2d09da9b28f16c', 'fe93f32@qq.com', 'M', '1', '1', '2000-01-06', '2019-06-06', '2019-06-06', 'fe93f32');
INSERT INTO `t_user` VALUES ('103', '黎志芳 ', 'f47b5e88f109a02a73039e5731540338a189a14e4e317208', 'ce65633@qq.com', 'M', '1', '1', '1999-04-15', '2019-06-06', '2019-06-06', 'ce65633');
INSERT INTO `t_user` VALUES ('104', '贺芷茹 ', '243f73a6d00b784d66828c4fe7130df7a22be12668d2718b', 'dfc4d34@qq.com', 'F', '1', '1', '1987-04-20', '2019-06-06', '2019-06-06', 'dfc4d34');
INSERT INTO `t_user` VALUES ('105', '顾悦颖 ', '167d1636879ce05a50294631d7206f78eb77046586e0e79b', '2c2bc35@qq.com', 'F', '1', '1', '1989-04-01', '2019-06-06', '2019-06-06', '2c2bc35');
INSERT INTO `t_user` VALUES ('106', '毛红英 ', '95a01d28247704107ce92205c1f85837967780ad27c88d56', 'c8a9636@qq.com', 'F', '1', '1', '1987-11-21', '2019-06-06', '2019-06-06', 'c8a9636');
INSERT INTO `t_user` VALUES ('107', '郝焱霞 ', 'e7299fc2ea58f9597e88c66201a38dc3da1ad15745854506', '7dac037@qq.com', 'M', '1', '1', '1994-07-14', '2019-06-06', '2019-06-06', '7dac037');
INSERT INTO `t_user` VALUES ('108', '龚煊悦 ', 'c4324916de38688195c7a408c1437b64c37596091f86b125', '6900d38@qq.com', 'F', '1', '1', '1993-07-01', '2019-06-06', '2019-06-06', '6900d38');
INSERT INTO `t_user` VALUES ('109', '邵海萍 ', '171194b10885518807c27b1022d799a80d7b295351054355', '4aa9139@qq.com', 'M', '1', '1', '1991-10-11', '2019-06-06', '2019-06-06', '4aa9139');
INSERT INTO `t_user` VALUES ('110', '万隅晖', 'f7653d433122d6933f90172d66512859df3ee27c8840d000', 'b774f40@qq.com', 'M', '1', '1', '1990-01-01', '2019-06-06', '2019-06-06', 'b774f40');
INSERT INTO `t_user` VALUES ('111', '钱雅漳', 'a11a63f6c70d60d540b46b95e6551cb16c3ad73761503e0e', '44b3f41@qq.com', 'F', '1', '1', '1990-01-01', '2019-06-06', '2019-06-06', '44b3f41');
INSERT INTO `t_user` VALUES ('112', '严雅漳', '497f7b067e0182b34223249d394c33f1152cd18648e5d14b', '422ee42@qq.com', 'F', '1', '1', '1992-05-23', '2019-06-06', '2019-06-06', '422ee42');
INSERT INTO `t_user` VALUES ('113', '覃雅漳', '69eb2da4ac97c8303309cb5eb9962f933989d02c1dc2a13c', '3e89d43@qq.com', 'M', '1', '1', '1994-12-22', '2019-06-06', '2019-06-06', '3e89d43');
INSERT INTO `t_user` VALUES ('114', '河雅漳', '87d206b17d2a33fe5598ac18699a0454b364e4836785b943', 'd941c44@qq.com', 'M', '1', '1', '1993-09-30', '2019-06-06', '2019-06-06', 'd941c44');
INSERT INTO `t_user` VALUES ('115', '戴雅漳', 'd7d14da3b43b86943435202b38ee4487524973759725ae06', '4771945@qq.com', 'F', '1', '1', '1987-12-24', '2019-06-06', '2019-06-06', '4771945');
INSERT INTO `t_user` VALUES ('116', '莫雅漳', '224b2e12983f04826018067ab2e00703c99384a01d625591', '73db546@qq.com', 'M', '1', '1', '1986-01-17', '2019-06-06', '2019-06-06', '73db546');
INSERT INTO `t_user` VALUES ('117', '孔雅漳', 'c1029c12705372ab77a7b83134e08376137cf78960b2a06e', '8b3da47@qq.com', 'M', '1', '1', '1983-11-30', '2019-06-06', '2019-06-06', '8b3da47');
INSERT INTO `t_user` VALUES ('118', '邓雅漳', '23a90147bb26418a1aa7e18e192e8025e03ae13b4ab27f08', 'eca0a48@qq.com', 'F', '1', '1', '1986-11-27', '2019-06-06', '2019-06-06', 'eca0a48');
INSERT INTO `t_user` VALUES ('119', '余雅漳', '965d8eb9712830c548c3723003e37a23dd5156e39809582a', '7c3c449@qq.com', 'M', '1', '1', '1983-08-16', '2019-06-06', '2019-06-06', '7c3c449');
INSERT INTO `t_user` VALUES ('120', '肖雅漳', '24eb32b3982151d42cf9f295b1473f898f9c244967a5dc7d', '15216156962@163.com', 'F', '12', '1', '1986-08-13', '2019-06-09', '2019-06-09', '萍乡学院');
INSERT INTO `t_user` VALUES ('121', '罗雅漳', '54d29031e025a50e63c3a906b5251f20f648019476304271', '15170854445@163.com', 'M', '23', '1', '2000-02-14', '2019-06-11', '2019-06-11', '萍乡学院');
INSERT INTO `t_user` VALUES ('122', '崔雅漳', 'd6c667521563b1137c55207c52fa0f701f6f010f84f63a61', '15170854445@163.com', 'M', '23', '1', '1994-06-10', '2019-06-11', '2019-06-11', '萍乡学院');
INSERT INTO `t_user` VALUES ('123', '王雅漳', 'b27a80b1b08917615dd7487a72bb0ec17d77b40622011d83', '15170854445@163.com', 'M', '23', '1', '1991-06-14', '2019-06-11', '2019-06-11', '萍乡学院');
INSERT INTO `t_user` VALUES ('124', '李雅漳', '81212263896c129d5ca69396c4473e07a78c722c5a90d30c', '15170854445@qq.com', 'M', '2', '1', '2002-06-01', '2019-06-11', '2019-06-11', '萍乡学院');
INSERT INTO `t_user` VALUES ('125', '李四', '123456', '11@qq.com', 'M', '2', '1', '2016-11-18', '2019-06-14', '2019-06-14', '萍乡学院');
INSERT INTO `t_user` VALUES ('126', '刘思颖 ', '058a03b77e7266e048c3801b480c88b2a30ae5bf1699010a', '15170854445@163.com', 'M', '23', '1', '1991-05-15', '2019-06-13', '2019-06-13', '萍乡学院');
INSERT INTO `t_user` VALUES ('127', 'sdfasd', 'a21750d59a9f483297c72d03e6ff85556437251056920b1c', '2263279913@qq.com', 'M', '1', '1', '2016-03-07', '2019-06-14', '2019-06-18', 'dfasdas');
INSERT INTO `t_user` VALUES ('128', '廖和福', '486a6047468048010c64551ca6945986c18979bb61500e90', '1622621386@qq.com', 'M', '1', '1', '2016-03-07', '2019-06-14', '2019-06-18', '家里蹲大学');
INSERT INTO `t_user` VALUES ('129', '肖恒', 'b14d0b09bc0fa25398867e04a8e85ef39983f4f213433532', '1622621386@qq.com', 'M', '2', '1', '2016-03-07', '2019-06-14', '2019-06-18', '是的发送');
INSERT INTO `t_user` VALUES ('130', '邓志彬', 'c6b21e129f2fa35d7709339ca72519277b80973847f3fe96', '1622621386@qq.com', 'F', '11', '1', '2019-06-04', '2019-06-14', '2019-06-15', '水电费水电费');
INSERT INTO `t_user` VALUES ('131', 'skdjfhask', '720e9d853d49b6591d431505e87b2751a87985848711e79f', '1622621386@qq.com', 'M', '12', '1', '2016-03-07', '2019-06-17', '2019-05-30', 'pxxy');
INSERT INTO `t_user` VALUES ('132', '余丽', '81e759112a84e0fe7a99bf40c57787f7e64701c69f11591d', '1305284627@qq.com', 'F', '1', '1', '2016-03-07', '2019-06-17', '2019-06-13', 'pxxy');
INSERT INTO `t_user` VALUES ('133', '余 丽', 'b3cf30b8bf84531c9a588d7cc46e21582f8901542c906603', '1305284627@qq.com', 'F', '14', '1', '1998-11-12', '2019-06-17', '2019-06-21', '萍乡学院');
INSERT INTO `t_user` VALUES ('134', '泓茹 ', 'b7719fc34342278f99a44178f2183b61f54e38977b583768', '1793237223@qq.com', 'M', '1', '1', '2019-06-17', '2019-06-18', '2019-06-07', '萍乡学院');
INSERT INTO `t_user` VALUES ('135', '罗辉', '27456a852397a83e0741680bf6bb5a02dc12b65206877c01', '1793237223@qq.com', 'M', '14', '1', '1998-01-28', '2019-06-20', null, '萍乡学院');

-- ----------------------------
-- Table structure for `t_usercollect`
-- ----------------------------
DROP TABLE IF EXISTS `t_usercollect`;
CREATE TABLE `t_usercollect` (
  `user_collect_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`user_collect_id`) USING BTREE,
  KEY `user_id` (`user_id`),
  KEY `fk_course_collect` (`course_id`),
  CONSTRAINT `fk_course_collect` FOREIGN KEY (`course_id`) REFERENCES `t_course` (`course_id`),
  CONSTRAINT `t_usercollect_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_usercollect
-- ----------------------------
INSERT INTO `t_usercollect` VALUES ('1', '1', '2');
INSERT INTO `t_usercollect` VALUES ('4', '133', '9');
INSERT INTO `t_usercollect` VALUES ('7', '134', '6');
INSERT INTO `t_usercollect` VALUES ('8', '134', '8');
INSERT INTO `t_usercollect` VALUES ('9', '134', '16');
INSERT INTO `t_usercollect` VALUES ('10', '134', '1');
INSERT INTO `t_usercollect` VALUES ('11', '1', '6');
INSERT INTO `t_usercollect` VALUES ('19', '133', '1');
INSERT INTO `t_usercollect` VALUES ('21', '132', '4');
INSERT INTO `t_usercollect` VALUES ('22', '132', '1');
INSERT INTO `t_usercollect` VALUES ('28', '132', '10');
INSERT INTO `t_usercollect` VALUES ('29', '135', '11');
INSERT INTO `t_usercollect` VALUES ('30', '135', '1');
INSERT INTO `t_usercollect` VALUES ('31', '135', '10');

-- ----------------------------
-- Table structure for `t_video`
-- ----------------------------
DROP TABLE IF EXISTS `t_video`;
CREATE TABLE `t_video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `video_code` int(11) NOT NULL COMMENT '视频编号',
  `video_url` varchar(30) NOT NULL COMMENT '视频地址',
  PRIMARY KEY (`video_id`),
  KEY `video_code` (`video_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_video
-- ----------------------------
INSERT INTO `t_video` VALUES ('1', '111101', 'video1.Ogg');
INSERT INTO `t_video` VALUES ('2', '111102', 'video1.Ogg');
