/*
 Navicat Premium Dump SQL

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50744 (5.7.44-log)
 Source Host           : localhost:3306
 Source Schema         : crowdfunding_db

 Target Server Type    : MySQL
 Target Server Version : 50744 (5.7.44-log)
 File Encoding         : 65001

 Date: 28/09/2024 23:09:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int(11) NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别名称',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'medical treatment');
INSERT INTO `category` VALUES (2, 'education');
INSERT INTO `category` VALUES (3, 'social impact');
INSERT INTO `category` VALUES (4, 'environmental protection');

-- ----------------------------
-- Table structure for fundraiser
-- ----------------------------
DROP TABLE IF EXISTS `fundraiser`;
CREATE TABLE `fundraiser`  (
  `id` bigint(12) NOT NULL COMMENT '主键',
  `organizer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织者',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `target_funding` decimal(13, 2) NULL DEFAULT NULL COMMENT '目标资金',
  `current_funding` decimal(13, 2) NULL DEFAULT NULL COMMENT '当前资金',
  `city` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市',
  `active` int(11) NULL DEFAULT NULL COMMENT '活跃度',
  `category_id` bigint(12) NULL DEFAULT NULL COMMENT '类型ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fundraiser
-- ----------------------------
INSERT INTO `fundraiser` VALUES (1, 'Richard', 'medical treatment', 10000.00, 300.00, 'Hangzhou', 5, 1);
INSERT INTO `fundraiser` VALUES (2, 'Mary', 'education', 10000.00, 300.00, 'Beijing', 8, 2);
INSERT INTO `fundraiser` VALUES (3, 'Finn', 'social impact', 10000.00, 9999.00, 'Shanghai', 29, 3);
INSERT INTO `fundraiser` VALUES (4, 'Bob', 'Educational Fundraising', 10000.00, 5000.00, 'Dalian', 1, 2);
INSERT INTO `fundraiser` VALUES (5, 'Jame', 'Social Security Donations', 10000.00, 6000.00, 'Shanghai', 2, 1);
INSERT INTO `fundraiser` VALUES (6, 'Chris', 'Hope to donate to primary schools', 10000.00, 4000.00, 'Beijing', 1, 2);
INSERT INTO `fundraiser` VALUES (7, 'Lisa', 'Social Sunshine Project', 10000.00, 5000.00, 'Hangzhou', 0, 3);
INSERT INTO `fundraiser` VALUES (8, 'Lusi', 'Social infrastructure', 10000.00, 8000.00, 'Shaoxing', 1, 2);
INSERT INTO `fundraiser` VALUES (9, 'Frederick', 'Clean up marine debris', 10000.00, 2000.00, 'Shanghai', 1, 4);
INSERT INTO `fundraiser` VALUES (10, 'Paul', 'Forest fire prevention construction', 10000.00, 4000.00, 'Beijing', 1, 4);

SET FOREIGN_KEY_CHECKS = 1;
