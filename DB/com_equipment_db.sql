/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : com_equipment_db

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-06-16 20:08:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for durable_articles
-- ----------------------------
DROP TABLE IF EXISTS `durable_articles`;
CREATE TABLE `durable_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_articles` varchar(255) NOT NULL COMMENT 'รหัสครุภัณฑ์',
  `articles_name` varchar(255) NOT NULL COMMENT 'ชื่อครุภัณภ์',
  `sn` varchar(255) NOT NULL COMMENT 'หมายเลข SN',
  `date_in` datetime NOT NULL COMMENT 'วันที่รับเข้า',
  `date_out` datetime NOT NULL COMMENT 'วันที่จ่ายออก',
  `responsibility` varchar(100) NOT NULL COMMENT 'ผู้รับผิดชอบ',
  `workgroup_id_fk` int(11) NOT NULL COMMENT 'รหัสกลุ่มงาน',
  `type_id_fk` int(11) NOT NULL COMMENT 'รหัสประภทครุภัณฑ์',
  `status_id_fk` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='รายการครุภัณฑ์';

-- ----------------------------
-- Records of durable_articles
-- ----------------------------

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='สถานะ';

-- ----------------------------
-- Records of status
-- ----------------------------

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  `type_status` tinyint(3) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ประเภทครุภัณฑ์';

-- ----------------------------
-- Records of types
-- ----------------------------

-- ----------------------------
-- Table structure for workgroup
-- ----------------------------
DROP TABLE IF EXISTS `workgroup`;
CREATE TABLE `workgroup` (
  `workgroup_id` int(11) NOT NULL AUTO_INCREMENT,
  `workgroup_name` varchar(255) NOT NULL,
  `group_status` tinyint(3) NOT NULL,
  PRIMARY KEY (`workgroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='กลุ่มงาน';

-- ----------------------------
-- Records of workgroup
-- ----------------------------
