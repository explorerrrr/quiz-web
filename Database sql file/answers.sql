/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : quiz

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2023-12-13 23:55:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `answers`
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `correspondsQId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `correspondsQId` (`correspondsQId`),
  CONSTRAINT `correspondsQId` FOREIGN KEY (`correspondsQId`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answers
-- ----------------------------
INSERT INTO `answers` VALUES ('1', 'Argentina and Brazil', '1');
INSERT INTO `answers` VALUES ('2', 'Peru and Chile', '1');
INSERT INTO `answers` VALUES ('3', 'Uruguay and Paraguay', '1');
INSERT INTO `answers` VALUES ('4', 'Bolivia and Colombia', '1');
INSERT INTO `answers` VALUES ('5', 'Brazil, Peru, Colombia', '2');
INSERT INTO `answers` VALUES ('6', 'Argentina, Venezuela, Bolivia', '2');
INSERT INTO `answers` VALUES ('7', 'Colombia, Venezuela, Ecuador', '2');
INSERT INTO `answers` VALUES ('8', 'Brazil, Ecuador, Bolivia', '2');
INSERT INTO `answers` VALUES ('9', 'Japan', '3');
INSERT INTO `answers` VALUES ('10', 'China', '3');
INSERT INTO `answers` VALUES ('11', 'South Korea', '3');
INSERT INTO `answers` VALUES ('12', 'Mongolia', '3');
INSERT INTO `answers` VALUES ('13', 'Kenya', '4');
INSERT INTO `answers` VALUES ('14', 'South Africa', '4');
INSERT INTO `answers` VALUES ('15', 'Nigeria', '4');
INSERT INTO `answers` VALUES ('16', 'Tanzania', '4');
INSERT INTO `answers` VALUES ('17', 'Sydney', '5');
INSERT INTO `answers` VALUES ('18', 'San Francisco', '5');
INSERT INTO `answers` VALUES ('19', 'Rio de Janeiro', '5');
INSERT INTO `answers` VALUES ('20', 'Beijing', '5');
INSERT INTO `answers` VALUES ('21', 'Africa', '6');
INSERT INTO `answers` VALUES ('22', 'Asia', '6');
INSERT INTO `answers` VALUES ('23', 'South America', '6');
INSERT INTO `answers` VALUES ('24', 'North America', '6');
INSERT INTO `answers` VALUES ('25', 'France', '7');
INSERT INTO `answers` VALUES ('26', 'Germany', '7');
INSERT INTO `answers` VALUES ('27', 'Russia', '7');
INSERT INTO `answers` VALUES ('28', 'Italy', '7');
INSERT INTO `answers` VALUES ('29', 'Mexico', '8');
INSERT INTO `answers` VALUES ('30', 'Peru', '8');
INSERT INTO `answers` VALUES ('31', 'Brazil', '8');
INSERT INTO `answers` VALUES ('32', 'Colombia', '8');
INSERT INTO `answers` VALUES ('33', 'Vietnam', '9');
INSERT INTO `answers` VALUES ('34', 'Philippines', '9');
INSERT INTO `answers` VALUES ('35', 'Thailand', '9');
INSERT INTO `answers` VALUES ('36', 'Malaysia', '9');
INSERT INTO `answers` VALUES ('37', 'Atlantic Ocean', '10');
INSERT INTO `answers` VALUES ('38', 'Pacific Ocean', '10');
INSERT INTO `answers` VALUES ('39', 'Indian Ocean', '10');
INSERT INTO `answers` VALUES ('40', 'Arctic Ocean', '10');
INSERT INTO `answers` VALUES ('41', 'New Zealand', '11');
INSERT INTO `answers` VALUES ('42', 'France', '11');
INSERT INTO `answers` VALUES ('43', 'Indonesia', '11');
INSERT INTO `answers` VALUES ('44', 'Philippines', '11');
INSERT INTO `answers` VALUES ('45', 'Arabian Basin', '12');
INSERT INTO `answers` VALUES ('46', 'East African Rift', '12');
INSERT INTO `answers` VALUES ('47', 'Cliffside Basin', '12');
INSERT INTO `answers` VALUES ('48', 'Betpak-Dala Basin', '12');
INSERT INTO `answers` VALUES ('49', 'Colombia', '13');
INSERT INTO `answers` VALUES ('50', 'Ecuador', '13');
INSERT INTO `answers` VALUES ('51', 'Peru', '13');
INSERT INTO `answers` VALUES ('52', 'Paraguay', '13');
INSERT INTO `answers` VALUES ('53', 'Dar es Salaam', '14');
INSERT INTO `answers` VALUES ('54', 'Nairobi', '14');
INSERT INTO `answers` VALUES ('55', 'Lusaka', '14');
INSERT INTO `answers` VALUES ('56', 'Kigali', '14');
INSERT INTO `answers` VALUES ('57', 'Melbourne', '15');
INSERT INTO `answers` VALUES ('58', 'Canberra', '15');
INSERT INTO `answers` VALUES ('59', 'Sydney', '15');
INSERT INTO `answers` VALUES ('60', 'Brisbane', '15');
INSERT INTO `answers` VALUES ('61', 'Africa', '16');
INSERT INTO `answers` VALUES ('62', 'Asia', '16');
INSERT INTO `answers` VALUES ('63', 'Europe', '16');
INSERT INTO `answers` VALUES ('64', 'South America', '16');
INSERT INTO `answers` VALUES ('65', 'Atlantic and Pacific', '17');
INSERT INTO `answers` VALUES ('66', 'Arctic and Antarctic', '17');
INSERT INTO `answers` VALUES ('67', 'Indian and Arctic', '17');
INSERT INTO `answers` VALUES ('68', 'Antarctic and Atlantic', '17');
INSERT INTO `answers` VALUES ('69', 'Ukraine and Russia', '18');
INSERT INTO `answers` VALUES ('70', 'Romania and Ukraine', '18');
INSERT INTO `answers` VALUES ('71', 'Hungary and Slovakia', '18');
INSERT INTO `answers` VALUES ('72', 'Poland and Belarus', '18');
INSERT INTO `answers` VALUES ('73', 'India', '19');
INSERT INTO `answers` VALUES ('74', 'Nepal', '19');
INSERT INTO `answers` VALUES ('75', 'China', '19');
INSERT INTO `answers` VALUES ('76', 'Bhutan', '19');
INSERT INTO `answers` VALUES ('77', 'Morocco', '20');
INSERT INTO `answers` VALUES ('78', 'Algeria', '20');
INSERT INTO `answers` VALUES ('79', 'Tunisia', '20');
INSERT INTO `answers` VALUES ('80', 'Libya', '20');
