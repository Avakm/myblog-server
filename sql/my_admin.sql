/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : my_admin

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 10/09/2022 17:50:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity_member
-- ----------------------------
DROP TABLE IF EXISTS `activity_member`;
CREATE TABLE `activity_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `member_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `activity_id` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_member
-- ----------------------------
INSERT INTO `activity_member` VALUES (1, '2019255131', '宋江', '13');
INSERT INTO `activity_member` VALUES (3, '2020211326', '吴用', '13');
INSERT INTO `activity_member` VALUES (4, '2020211328', '吴用', '13');
INSERT INTO `activity_member` VALUES (5, '2020211526', '林冲', '13');
INSERT INTO `activity_member` VALUES (6, '2020211328', '吴用', '24');
INSERT INTO `activity_member` VALUES (9, '2018213213', '小明', '48');

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `activity_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `academy_id` int(11) NOT NULL,
  `activity_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `activity_count` int(10) NOT NULL,
  `activity_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` date NOT NULL,
  `state` int(10) NOT NULL DEFAULT 0,
  `time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tag` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES (12, '2020211132', '宋江', '学习', 10, '北山书院-坚韧会议室', 20, '13215623512', '2022-03-30', 2, '8:00-9:00', 13);
INSERT INTO `apply` VALUES (18, '1010101010', '小明', 'dsadasdssads', 11, '北山书院-匠心工作坊', 4, 'dasdsdasdsa', '2022-04-04', 2, '12:00-13:00', 11);
INSERT INTO `apply` VALUES (19, '1010101010', '小明', '看书看书', 11, '北山书院-匠心工作坊', 2, '学习学习', '2022-04-04', 2, '8:00-9:00', 12);
INSERT INTO `apply` VALUES (24, '1010101010', '小明', '看电影1', 11, '北山书院-匠心工作坊', 30, '看电影看电影看电影', '2022-04-04', 1, '13:00-14:00', 1);
INSERT INTO `apply` VALUES (25, '1010101010', '小明', '看电影', 11, '北山书院-匠心工作坊', 30, '看电影看电影看电影', '2022-04-04', 1, '14:00-15:00', 1);
INSERT INTO `apply` VALUES (26, '1010101010', '小明', '看电影', 11, '北山书院-匠心工作坊', 30, '看电影看电影看电影', '2022-04-04', 1, '15:00-16:00', 1);
INSERT INTO `apply` VALUES (27, '2020213145', '小明', '看书看书', 11, '北山书院-匠心工作坊', 4, '23112332', '2022-04-05', 0, '9:00-10:00', NULL);
INSERT INTO `apply` VALUES (28, '1010101010', '小明', '看书看书', 11, '北山书院-匠心工作坊', 3, '看书学习', '2022-04-06', 0, '9:00-10:00', NULL);
INSERT INTO `apply` VALUES (29, '1010101010', '小明', '看书看书', 11, '北山书院-匠心工作坊', 3, '看书学习', '2022-04-06', 0, '10:00-11:00', NULL);
INSERT INTO `apply` VALUES (30, '2020123456', '张小明', '读书讨论会', 11, '北山书院-匠心工作坊', 10, '分享读书心得', '2022-04-06', 1, '11:00-12:00', NULL);
INSERT INTO `apply` VALUES (44, '2018213213', '小明', '学习', 12, '北山书院-静耳自习室', 7, '雪习', '2022-05-22', 0, '11:00-12:00', 858);
INSERT INTO `apply` VALUES (45, '2018213213', '小明', '看书看书', 12, '北山书院-静耳自习室', 5, '看书', '2022-05-23', 0, '11:00-12:00', 7218);
INSERT INTO `apply` VALUES (48, '2018213213', '小明', '看书dasds', 12, '北山书院-静耳自习室', 6, '看书', '2022-05-23', 1, '12:00-13:00', 4118);

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imageUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (11, '', 'dasdsads', '<p>dasdsadsadsadas</p>\n<div style=\"text-align:left;\"><img src=\"http://localhost:8000/1648301111634.png\" alt=\"undefined\" style=\"height: 200px;width: 200px\"/></div>\n<p></p>\n', '2022-03-26 21:25:32');
INSERT INTO `article` VALUES (12, '', '测试测试测试测试', '<p>dsadsadsasdasda</p>\n<p>测试</p>\n<p></p>\n<div style=\"text-align:left;\"><img src=\"http://localhost:8000/1648301816138.png\" alt=\"undefined\" style=\"height: 200px;width: 200px\"/></div>\n<p></p>\n', '2022-03-26 21:37:04');
INSERT INTO `article` VALUES (17, '', '本系统已制作完成', '<p>经过努力本系统上线了</p>\n', '2022-04-05 16:31:07');
INSERT INTO `article` VALUES (18, '', 'sdadasdas', '<p>dasdsadsadsa</p>\n<img src=\"http://localhost:8000/1653112886908.jpg\" alt=\"undefined\" style=\"height: auto;width: auto\"/>\n<p></p>\n', '2022-05-21 14:01:48');
INSERT INTO `article` VALUES (20, 'http://localhost:8000/1662797848771.jpg', '测试', '<p>111111111111111112222222222222222222222222</p>\n<div style=\"text-align:left;\"><img src=\"http://localhost:8000/1662797871936.jpg\" alt=\"undefined\" style=\"height: auto;width: auto\"/></div>\n<p></p>\n', '2022-09-10 16:18:13');

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mimetype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `size` int(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `academy_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `message` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `count` int(10) NOT NULL,
  `state` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (10, 'http://localhost:8000/1653118234383.jpg', '北山书院', '坚韧会议室', '可供学生各类会议室，座谈交流等', 45, 0);
INSERT INTO `room` VALUES (11, 'http://localhost:8000/1645253490520.jpg', '北山书院', '匠心工作坊', '学生自习，讨论', 15, 0);
INSERT INTO `room` VALUES (12, 'http://localhost:8000/1645253598325.jpg', '北山书院', '静耳自习室', '自习室', 20, 1);
INSERT INTO `room` VALUES (13, 'http://localhost:8000/1645253704783.jpg', '北山书院', '清目自习室', '可供学生自习讨论', 15, 0);
INSERT INTO `room` VALUES (14, 'http://localhost:8000/1645253793295.jpg', '别都书院', '多功能研讨室', '多功能研讨', 40, 0);
INSERT INTO `room` VALUES (15, 'http://localhost:8000/1645253867051.jpg', '别都书院', '就创指导站', '用于开会', 40, 0);
INSERT INTO `room` VALUES (16, 'http://localhost:8000/1645253946590.jpg', '别都书院', '逻辑工厂', '逻辑讨论', 30, 1);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sex` int(1) NOT NULL,
  `number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `class` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `room` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `state` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `state`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (18, '宋江', 1, '2019255131', '数字媒体技术03班', '11111111111', 'A3-303', 0);
INSERT INTO `student` VALUES (19, '李逵', 1, '2019255131', '车辆工程04班', '11111111111', 'A3-404', 1);
INSERT INTO `student` VALUES (20, '林冲', 1, '2018211213', '计算机科学与技术03班', '13416541131', 'A5-505', 0);
INSERT INTO `student` VALUES (21, '武松', 1, '2020156485', '广播电视编导03班', '13213515631', 'A4-404', 0);
INSERT INTO `student` VALUES (22, '小乔', 1, '2019213152', '动画03班', '13153151225', 'A4-505', 0);
INSERT INTO `student` VALUES (23, '大乔', 0, '2021131456', '轨道交通电气与控制02班', '14656131532', 'A4-404', 1);
INSERT INTO `student` VALUES (25, '小乔', 1, '2020211328', '数字媒体技术03班', '13416541131', 'A1-202', 0);
INSERT INTO `student` VALUES (26, '管理员', 1, '2018213564', '软件工程01班', '11111111111', 'A1-202', 0);
INSERT INTO `student` VALUES (28, '管理员', 1, '2019255133', '计算机科学与技术02班', '11111111111', 'A1-202', 0);
INSERT INTO `student` VALUES (29, '小明', 1, '2018213213', '软件工程02班', '11111111111', 'A1-102', 0);

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
