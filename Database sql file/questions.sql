/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : quiz

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2023-12-13 23:55:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `questions`
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `score` int(11) NOT NULL,
  `correctAnswerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `correctAnswerId` (`correctAnswerId`),
  CONSTRAINT `correctAnswerId` FOREIGN KEY (`correctAnswerId`) REFERENCES `answers` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', 'What two countries are bordered by the Andes Mountains?', '100', '2');
INSERT INTO `questions` VALUES ('2', 'Which countries are covered by the Amazon River basin?', '100', '5');
INSERT INTO `questions` VALUES ('3', 'To which country does the Great Wall belong?', '100', '10');
INSERT INTO `questions` VALUES ('4', 'Mount Kilimanjaro is the highest peak in which African country?', '75', '16');
INSERT INTO `questions` VALUES ('5', 'Which city is famous for its red landmark building?', '75', '19');
INSERT INTO `questions` VALUES ('6', 'On which continent is the longest river, the Nile, located?', '75', '21');
INSERT INTO `questions` VALUES ('7', 'Saint Petersburg is a city in which country?', '75', '27');
INSERT INTO `questions` VALUES ('8', 'Machu Picchu is an ancient site in which country?', '40', '30');
INSERT INTO `questions` VALUES ('9', 'Phuket is a popular tourist destination in which country?', '40', '35');
INSERT INTO `questions` VALUES ('10', 'Which ocean does the North Pole lie within?', '40', '40');
INSERT INTO `questions` VALUES ('11', 'Bali is part of which country?', '40', '43');
INSERT INTO `questions` VALUES ('12', 'What is the largest basin in Asia?', '40', '45');
INSERT INTO `questions` VALUES ('13', 'Bogotá is the capital of which country?', '25', '49');
INSERT INTO `questions` VALUES ('14', 'What is the capital of Tanzania?', '25', '53');
INSERT INTO `questions` VALUES ('15', 'What is the capital of Australia?', '25', '58');
INSERT INTO `questions` VALUES ('16', 'Through which continent does the Equator pass?', '25', '61');
INSERT INTO `questions` VALUES ('17', 'Which two oceans does the Panama Canal connect?', '25', '65');
INSERT INTO `questions` VALUES ('18', 'Moldova is a border area between which two countries?', '25', '70');
INSERT INTO `questions` VALUES ('19', 'The Yarlung Zangbo River is a major river in which country?', '25', '75');
INSERT INTO `questions` VALUES ('20', 'Casablanca is a city in which country?', '25', '77');
