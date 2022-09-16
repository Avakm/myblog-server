/*
 Navicat Premium Data Transfer

 Source Server         : myblog
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : myblog

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 16/09/2022 20:28:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imageUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (11, '', 'dasdsads', '<p>dasdsadsadsadas</p>\n<div style=\"text-align:left;\"><img src=\"http://localhost:8000/1648301111634.png\" alt=\"undefined\" style=\"height: 200px;width: 200px\"/></div>\n<p></p>\n', '2022-03-26 21:25:32');
INSERT INTO `article` VALUES (12, '', '测试测试测试测试', '<p>dsadsadsasdasda</p>\n<p>测试</p>\n<p></p>\n<div style=\"text-align:left;\"><img src=\"http://localhost:8000/1648301816138.png\" alt=\"undefined\" style=\"height: 200px;width: 200px\"/></div>\n<p></p>\n', '2022-03-26 21:37:04');
INSERT INTO `article` VALUES (17, '', '本系统已制作完成', '<p>经过努力本系统上线了</p>\n', '2022-04-05 16:31:07');
INSERT INTO `article` VALUES (18, '', 'sdadasdas', '<p>dasdsadsadsa</p>\n<img src=\"http://localhost:8000/1653112886908.jpg\" alt=\"undefined\" style=\"height: auto;width: auto\"/>\n<p></p>\n', '2022-05-21 14:01:48');
INSERT INTO `article` VALUES (20, 'http://localhost:8000/1662797848771.jpg', '测试', '<p>111111111111111112222222222222222222222222</p>\n<div style=\"text-align:left;\"><img src=\"http://localhost:8000/1662797871936.jpg\" alt=\"undefined\" style=\"height: auto;width: auto\"/></div>\n<p></p>\n', '2022-09-10 16:18:13');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` int(1) NOT NULL DEFAULT 0,
  `createAt` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updateAt` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin123', 1, '2022-02-05 16:38:38', '2022-02-05 16:38:41');
INSERT INTO `user` VALUES (23, 'root', 'root', 0, '2022-05-21 14:17:18', '2022-05-21 14:17:18');
INSERT INTO `user` VALUES (47, 'admin1', 'admin123', 1, '2022-05-21 15:29:55', '2022-05-21 15:29:55');

SET FOREIGN_KEY_CHECKS = 1;
