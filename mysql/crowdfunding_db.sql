/*
 Navicat Premium Dump SQL

 Source Server         : wyt
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : localhost:3306
 Source Schema         : crowdfunding_db

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 27/09/2024 11:33:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'medical');
INSERT INTO `category` VALUES (2, 'education');
INSERT INTO `category` VALUES (3, 'social impact');
INSERT INTO `category` VALUES (4, 'crisis relief');

-- ----------------------------
-- Table structure for fundraiser
-- ----------------------------
DROP TABLE IF EXISTS `fundraiser`;
CREATE TABLE `fundraiser`  (
  `fundraiser_id` int NOT NULL,
  `organizer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `target_funding` decimal(20, 2) NOT NULL,
  `current_funding` decimal(20, 2) NOT NULL,
  `city` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`fundraiser_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fundraiser
-- ----------------------------
INSERT INTO `fundraiser` VALUES (1, 'Jacob Walker', 'Support Our Urban Farming Initiative!', 1300000.22, 8080.99, 'HaiNan', 1, 2);
INSERT INTO `fundraiser` VALUES (2, 'Mia Hernandez', 'Build a Safe Haven for Victims of Domestic Violence!', 70000.00, 54356.12, 'WenChuan', 1, 3);
INSERT INTO `fundraiser` VALUES (3, 'Benjamin Young', 'Fund Our Youth Sports League: Play for Fun!', 3300.00, 2234.22, 'HuNan', 1, 4);
INSERT INTO `fundraiser` VALUES (4, 'Isabella King', 'Help Us Restore an Abandoned Community Pool!', 3000.00, 200.34, 'BeiJing', 1, 3);
INSERT INTO `fundraiser` VALUES (5, 'Noah Scott', 'Launch an Online Course for Digital Skills!', 500.00, 230.05, 'ShenZhen', 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
