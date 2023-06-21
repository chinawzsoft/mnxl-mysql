/*
 Navicat Premium Data Transfer

 Source Server         : 文昭服务器
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : rm-8vbj0khvttjk3n8tuno.mysql.zhangbei.rds.aliyuncs.com:3306
 Source Schema         : sdd

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 20/06/2023 10:27:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for forum_article_type
-- ----------------------------
DROP TABLE IF EXISTS `forum_article_type`;
CREATE TABLE `forum_article_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `audit_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ref_count` bigint(20) NOT NULL DEFAULT 0,
  `creator_id` bigint(20) NULL DEFAULT NULL,
  `is_delete` smallint(6) NOT NULL DEFAULT 0,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `course_id` int(11) NULL DEFAULT NULL,
  `plate_id` int(11) NULL DEFAULT NULL,
  `ord` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_name_state2`(`name`, `audit_state`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_article_type
-- ----------------------------
INSERT INTO `forum_article_type` VALUES (96, 'PASS', '课程1', '该主题是与课程1相关的.', 11, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 71, 35, 12);
INSERT INTO `forum_article_type` VALUES (97, 'PASS', '课程2', '该主题是与课程2相关的.', 4, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 72, 35, 11);
INSERT INTO `forum_article_type` VALUES (98, 'PASS', '主题1', '主题1', 0, NULL, 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 35, 13);
INSERT INTO `forum_article_type` VALUES (100, 'PASS', '无关联课程的主题', '无关联课程的主题', 0, NULL, 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 35, 15);
INSERT INTO `forum_article_type` VALUES (101, 'PASS', '测试主题', '测试主题', 0, NULL, 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 35, 14);
INSERT INTO `forum_article_type` VALUES (102, 'PASS', '课程3', '该主题是与课程3相关的.', 2, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 73, 36, 7);
INSERT INTO `forum_article_type` VALUES (103, 'PASS', '课程44', '该主题是与课程44相关的.', 23, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 74, 36, 6);
INSERT INTO `forum_article_type` VALUES (104, 'PASS', '七万五千', '该主题是与七万五千相关的.', 0, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 75, 35, 5);
INSERT INTO `forum_article_type` VALUES (105, 'PASS', '33', '该主题是与33相关的.', 0, NULL, 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 76, 35, 2);
INSERT INTO `forum_article_type` VALUES (106, 'PASS', '11111', '该主题是与11111相关的.', 7, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 77, 35, 8);
INSERT INTO `forum_article_type` VALUES (107, 'PASS', '222', '该主题是与222相关的.', 3, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 78, 35, 3);
INSERT INTO `forum_article_type` VALUES (108, 'PASS', '666', '该主题是与666相关的.', 1, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 79, 35, 4);
INSERT INTO `forum_article_type` VALUES (109, 'PASS', '32323', '该主题是与32323相关的.', 1, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 80, 35, 1);
INSERT INTO `forum_article_type` VALUES (110, 'PASS', '1313', '该主题是与1313相关的...', 0, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 81, 35, 0);
INSERT INTO `forum_article_type` VALUES (115, 'PASS', '测试课程1', '该主题是与测试课程1相关的.', 0, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 82, 35, 0);
INSERT INTO `forum_article_type` VALUES (120, 'PASS', '测试课程5', '该主题是与测试课程5相关的.', 0, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 93, 35, 0);
INSERT INTO `forum_article_type` VALUES (121, 'PASS', '测试课程6', '该主题是与测试课程6相关的.', 0, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 94, 35, 0);
INSERT INTO `forum_article_type` VALUES (124, 'PASS', '测试课程4', '该主题是与测试课程4相关的.', 0, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 100, 35, 0);
INSERT INTO `forum_article_type` VALUES (125, 'PASS', '测试课程7', '该主题是与测试课程7相关的.', 0, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 103, 35, 0);
INSERT INTO `forum_article_type` VALUES (126, 'PASS', '测试课程8', '该主题是与测试课程8相关的.', 11, NULL, 0, '2023-06-19 17:56:28.885666', '0000-00-00 00:00:00', NULL, 35, 0);
INSERT INTO `forum_article_type` VALUES (133, 'PASS', '测试课程2', '该主题是与测试课程2相关的.', 0, NULL, 0, '2023-06-19 16:01:58.755318', '2023-06-19 16:01:59', 112, 36, 0);
INSERT INTO `forum_article_type` VALUES (135, 'PASS', '朱方方测试课程3', '该主题是与朱方方测试课程3相关的.', 1, NULL, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', 116, 35, 0);
INSERT INTO `forum_article_type` VALUES (139, 'PASS', '测试上传视频', '该主题是与测试上传视频相关的.', 0, NULL, 0, '2023-06-19 16:12:06.021000', '2023-06-19 16:12:06', 119, 36, 0);

-- ----------------------------
-- Table structure for forum_cache
-- ----------------------------
DROP TABLE IF EXISTS `forum_cache`;
CREATE TABLE `forum_cache`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_delete` smallint(6) NOT NULL DEFAULT 0,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_key`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_cache
-- ----------------------------

-- ----------------------------
-- Table structure for forum_comment
-- ----------------------------
DROP TABLE IF EXISTS `forum_comment`;
CREATE TABLE `forum_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `reply_id` bigint(20) NULL DEFAULT NULL,
  `reply_reply_id` bigint(20) NULL DEFAULT NULL,
  `posts_id` bigint(20) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_delete` smallint(6) NOT NULL DEFAULT 0,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_postsid`(`posts_id`) USING BTREE,
  INDEX `idx_uid_pid`(`user_id`, `posts_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_comment
-- ----------------------------
INSERT INTO `forum_comment` VALUES (33, 44, NULL, NULL, 175, '123', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (34, 44, 33, NULL, 175, '21313', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (35, 44, 33, NULL, 175, '21321312', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (36, 44, NULL, NULL, 174, 'sssssss', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (37, 44, NULL, NULL, 179, '8点上课', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (38, 44, 37, NULL, 179, '谢谢', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (39, 44, 37, NULL, 179, '加1', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (40, 199, NULL, NULL, 200, '真棒', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (41, 44, 40, NULL, 200, '点赞收藏加评论', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (42, 199, NULL, NULL, 192, '这个问题提得很好', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (43, 44, NULL, NULL, 206, 'asasdas', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (44, 44, 43, NULL, 206, 'asasda', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (45, 44, 43, NULL, 206, 'sss', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (46, 44, 43, NULL, 206, 'sss', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (47, 44, NULL, NULL, 206, 'eee', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (48, 198, NULL, NULL, 201, '明天', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (49, 198, NULL, NULL, 201, '后天', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (50, 58, NULL, NULL, 226, '您好', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (51, 43, NULL, NULL, 249, '红楼梦', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (52, 43, NULL, NULL, 249, '三国演义', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (53, 43, NULL, NULL, 263, '观看开国大典', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (54, 44, NULL, NULL, 224, '1111', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (55, 44, 54, NULL, 224, '1111', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (56, 44, NULL, NULL, 211, 'ddd', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (57, 44, NULL, NULL, 211, '<span style=\"font-size: 20px;\"><strong><em><span style=\"text-decoration: underline;\">ddd</span></em></strong></span>', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (58, 44, NULL, NULL, 180, 'ddd', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (59, 44, 58, NULL, 180, 'ddd', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (60, 199, NULL, NULL, 275, '评论文章<img class=\"sdd-image\" src=\"http://file.lwuchang.com/image/f2b5418d-0780-4bf1-ac2f-144fd90af907/1683522141(1).jpg\" alt=\"1683522141(1).jpg\"/>', 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (61, 199, 60, NULL, 275, '1234<img class=\"sdd-image\" src=\"http://file.lwuchang.com/image/21e5533e-7765-4f25-85dd-a0a71664df64/QQ快捷键.png\" alt=\"QQ快捷键.png\"/>', 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (62, 42, NULL, NULL, 263, '123', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (63, 199, NULL, NULL, 201, '<img class=\"sdd-image\" src=\"http://file.lwuchang.com/image/a261129e-f9d9-4121-bcd1-61ea5ef37472/1683522141(1).jpg\" alt=\"1683522141(1).jpg\"/>', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (64, 199, 63, NULL, 201, '<img class=\"sdd-image\" src=\"http://file.lwuchang.com/image/b47818ae-664d-446f-b1e8-d76f80b7be4b/微信截图_20230509212009.png\" alt=\"微信截图_20230509212009.png\"/>', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (65, 42, NULL, NULL, 211, '<img class=\"sdd-image\" src=\"http://file.lwuchang.com/image/86b80759-d2c6-42a8-bb86-5a0274fffc99/微信截图_20230509212009.png\" alt=\"微信截图_20230509212009.png\"/>', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (66, 44, NULL, NULL, 248, '123', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (67, 44, 66, NULL, 248, 'aaaaaaaa', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (68, 44, 53, NULL, 263, 'ssssss', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (69, 42, NULL, NULL, 170, 'qqwe', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_comment` VALUES (74, 199, NULL, NULL, 280, '1111', 0, '2023-06-19 18:21:16.146000', '2023-06-19 18:21:14');
INSERT INTO `forum_comment` VALUES (78, 199, NULL, NULL, 288, '12', 0, '2023-06-19 18:24:23.397000', '2023-06-19 18:24:21');

-- ----------------------------
-- Table structure for forum_config
-- ----------------------------
DROP TABLE IF EXISTS `forum_config`;
CREATE TABLE `forum_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `end_at` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `creator` bigint(20) NOT NULL,
  `is_delete` smallint(6) NOT NULL DEFAULT 0,
  `create_at` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_config
-- ----------------------------

-- ----------------------------
-- Table structure for forum_message
-- ----------------------------
DROP TABLE IF EXISTS `forum_message`;
CREATE TABLE `forum_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `channel` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `read` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sender_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sender` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receiver_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receiver` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_delete` smallint(6) NOT NULL DEFAULT 0,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_receiver_type`(`receiver`, `type`) USING BTREE,
  INDEX `idx_sender`(`sender`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_message
-- ----------------------------
INSERT INTO `forum_message` VALUES (18, 'STATION_LETTER', 'FOLLOW_USER', 'NO', 'USER_ID', '44', 'USER_ID', '175', '', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (19, 'STATION_LETTER', 'FOLLOW_USER', 'NO', 'USER_ID', '44', 'USER_ID', '199', '', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (20, 'STATION_LETTER', 'APPROVAL_ARTICLE', 'NO', 'USER_ID', '44', 'USER_ID', '199', '200', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (21, 'STATION_LETTER', 'COMMENT_ARTICLE', 'NO', 'USER_ID', '44', 'USER_ID', '199', '200', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (22, 'STATION_LETTER', 'COMMENT_ARTICLE', 'NO', 'USER_ID', '44', 'USER_ID', '199', '200', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (23, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '199', 'USER_ID', '44', '192', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (24, 'STATION_LETTER', 'FOLLOW_USER', 'NO', 'USER_ID', '199', 'USER_ID', '44', '', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (25, 'STATION_LETTER', 'FOLLOW_USER', 'NO', 'USER_ID', '44', 'USER_ID', '199', '', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (26, 'STATION_LETTER', 'FOLLOW_USER', 'NO', 'USER_ID', '199', 'USER_ID', '44', '', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (27, 'STATION_LETTER', 'APPROVAL_FAQ', 'NO', 'USER_ID', '44', 'USER_ID', '199', '206', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (28, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '44', 'USER_ID', '199', '206', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (29, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '44', 'USER_ID', '199', '206', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (30, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '44', 'USER_ID', '199', '206', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (31, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '44', 'USER_ID', '199', '206', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (32, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '44', 'USER_ID', '199', '206', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (33, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '198', 'USER_ID', '199', '201', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (34, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '198', 'USER_ID', '199', '201', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (35, 'STATION_LETTER', 'APPROVAL_ARTICLE', 'NO', 'USER_ID', '44', 'USER_ID', '199', '200', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (36, 'STATION_LETTER', 'FOLLOW_USER', 'NO', 'USER_ID', '44', 'USER_ID', '199', '', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (37, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '58', 'USER_ID', '44', '226', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (38, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '43', 'USER_ID', '44', '249', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (39, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '43', 'USER_ID', '44', '249', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (40, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '43', 'USER_ID', '44', '263', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (41, 'STATION_LETTER', 'FOLLOW_USER', 'NO', 'USER_ID', '199', 'USER_ID', '43', '', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (42, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '44', 'USER_ID', '199', '180', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (43, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '44', 'USER_ID', '199', '180', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (44, 'STATION_LETTER', 'COMMENT_ARTICLE', 'NO', 'USER_ID', '199', 'USER_ID', '44', '275', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (45, 'STATION_LETTER', 'COMMENT_ARTICLE', 'NO', 'USER_ID', '199', 'USER_ID', '44', '275', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (46, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '42', 'USER_ID', '44', '263', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (47, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '42', 'USER_ID', '44', '211', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (48, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '44', 'USER_ID', '43', '263', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_message` VALUES (49, 'STATION_LETTER', 'COMMENT_FAQ', 'NO', 'USER_ID', '42', 'USER_ID', '44', '170', 'TEXT', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for forum_opt_log
-- ----------------------------
DROP TABLE IF EXISTS `forum_opt_log`;
CREATE TABLE `forum_opt_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operator_id` bigint(20) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_delete` smallint(6) NOT NULL DEFAULT 0,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_operator_id`(`operator_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_opt_log
-- ----------------------------

-- ----------------------------
-- Table structure for forum_plate
-- ----------------------------
DROP TABLE IF EXISTS `forum_plate`;
CREATE TABLE `forum_plate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `update_time` timestamp(6) NULL DEFAULT NULL,
  `course_category_new_id` int(11) NULL DEFAULT NULL,
  `deleted` int(11) NULL DEFAULT NULL,
  `ord` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_plate
-- ----------------------------
INSERT INTO `forum_plate` VALUES (35, '岗位能力1', '该板块是与岗位能力1相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 93, 0, 2);
INSERT INTO `forum_plate` VALUES (36, '岗位能力2', '该板块是与岗位能力2相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 94, 0, 8);
INSERT INTO `forum_plate` VALUES (37, '岗位能力3', '该板块是与岗位能力3相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 95, 1, 6);
INSERT INTO `forum_plate` VALUES (38, '岗位能力4', '该板块是与岗位能力4相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 96, 1, 5);
INSERT INTO `forum_plate` VALUES (39, '111111111', '1111111111', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', NULL, 1, 2);
INSERT INTO `forum_plate` VALUES (40, '岗位能力5', '该板块是与岗位能力5相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 97, 1, 4);
INSERT INTO `forum_plate` VALUES (41, '1111', '该板块是与1111相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 98, 1, 3);
INSERT INTO `forum_plate` VALUES (42, 's', '该板块是与s相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 99, 1, 0);
INSERT INTO `forum_plate` VALUES (43, 'a', '该板块是与a相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 100, 0, 1);
INSERT INTO `forum_plate` VALUES (44, '岗位能力5', '该板块是与岗位能力5相关的.', '0000-00-00 00:00:00.000000', '2023-06-19 10:18:50.840000', 101, 0, 0);
INSERT INTO `forum_plate` VALUES (45, '123', '该板块是与123相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 102, 1, 0);
INSERT INTO `forum_plate` VALUES (46, '12345', '该板块是与12345相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 103, 1, 0);
INSERT INTO `forum_plate` VALUES (47, '1', '该板块是与1相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 104, 1, 0);
INSERT INTO `forum_plate` VALUES (48, '1', '该板块是与1相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 105, 1, 0);
INSERT INTO `forum_plate` VALUES (49, '11', '11', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', NULL, 1, 0);
INSERT INTO `forum_plate` VALUES (50, '岗位能力6', '该板块是与岗位能力6相关的.', '0000-00-00 00:00:00.000000', '2023-06-19 10:18:58.762000', 106, 0, 0);
INSERT INTO `forum_plate` VALUES (51, '岗位能力77', '该板块是与岗位能力77相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 107, 0, 0);
INSERT INTO `forum_plate` VALUES (52, '岗位能力8', '该板块是与岗位能力8相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 108, 0, 0);
INSERT INTO `forum_plate` VALUES (53, '岗位能力9', '该板块是与岗位能力9相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 109, 1, 0);
INSERT INTO `forum_plate` VALUES (54, '岗位能力9', '该板块是与岗位能力9相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 110, 1, 0);
INSERT INTO `forum_plate` VALUES (55, '岗位能力9', '该板块是与岗位能力9相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 111, 1, 0);
INSERT INTO `forum_plate` VALUES (56, '123', '123', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', NULL, 1, 0);
INSERT INTO `forum_plate` VALUES (57, '岗位能力9', '该板块是与岗位能力9相关的.', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 112, 0, 0);
INSERT INTO `forum_plate` VALUES (58, '测试岗位能力1', '该板块是与测试岗位能力1相关的.', '2023-06-19 10:15:03.928000', '2023-06-19 10:17:16.104000', 113, 1, 0);
INSERT INTO `forum_plate` VALUES (59, '测试岗位能力2', '该板块是与测试岗位能力2相关的.', '2023-06-19 10:19:42.785000', '2023-06-19 10:19:42.785000', 114, 1, 0);
INSERT INTO `forum_plate` VALUES (60, '测试板块1', '测试板块1', '2023-06-19 10:28:36.000000', '2023-06-19 10:29:04.141000', NULL, 1, 2);
INSERT INTO `forum_plate` VALUES (61, '测试板块1', '测试板块1', '2023-06-19 10:29:24.452000', '2023-06-19 10:29:24.452000', NULL, 1, 2);

-- ----------------------------
-- Table structure for forum_posts
-- ----------------------------
DROP TABLE IF EXISTS `forum_posts`;
CREATE TABLE `forum_posts`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `audit_state` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `title` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `markdown_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `html_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `approvals` bigint(20) NOT NULL DEFAULT 0,
  `comments` bigint(20) NOT NULL DEFAULT 0,
  `type_id` bigint(20) NOT NULL DEFAULT 0,
  `head_img` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `official` smallint(6) NOT NULL DEFAULT 0,
  `top` smallint(6) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 1000,
  `marrow` smallint(6) NOT NULL DEFAULT 0,
  `comment_id` bigint(20) NOT NULL,
  `is_delete` smallint(6) NOT NULL DEFAULT 0,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `plate_id` int(11) NULL DEFAULT NULL,
  `ord` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_author`(`author_id`) USING BTREE,
  INDEX `idx_category_state_views`(`category`, `audit_state`, `views`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 315 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_posts
-- ----------------------------
INSERT INTO `forum_posts` VALUES (153, 'PASS', 'ARTICLE', 44, '文章1', 'MARKDOWN', '文章1内容1111', '文章1内容1111', 8, 0, 0, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (154, 'PASS', 'ARTICLE', 44, '文章2', 'MARKDOWN', '文章2888', '文章2888', 30, 0, 0, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (159, 'PASS', 'ARTICLE', 44, '文章3', 'MARKDOWN', '文章333', '文章333', 69, 1, 0, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (167, 'PASS', 'FAQ', 44, '1111111', 'MARKDOWN', '111111111111', '111111111111', 2, 0, 0, 0, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (168, 'PASS', 'FAQ', 44, '11111111111', 'MARKDOWN', '111111111111', '111111111111', 0, 0, 0, 98, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (169, 'PASS', 'FAQ', 44, '4444444444444', 'MARKDOWN', '1111111', '1111111', 2, 0, 0, 0, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (170, 'PASS', 'FAQ', 44, '问答2', 'MARKDOWN', '问答2222', '问答2222', 3, 0, 1, 0, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (171, 'PASS', 'FAQ', 44, '问答3', 'MARKDOWN', '问答44', '问答44', 2, 0, 0, 0, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (172, 'PASS', 'FAQ', 44, '问答444', 'MARKDOWN', '问答4445555', '问答4445555', 12, 0, 0, 0, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (173, 'PASS', 'FAQ', 44, '666666666666', 'MARKDOWN', '66666666444444444', '66666666444444444', 2, 0, 0, 0, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (174, 'PASS', 'FAQ', 44, '提问5', 'MARKDOWN', '123121', '123121', 61, 1, 1, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (175, 'PASS', 'FAQ', 44, '提问6', 'MARKDOWN', '提问66666666', '提问66666666', 56, 1, 3, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (176, 'PASS', 'FAQ', 44, '提问7', 'MARKDOWN', '提问7', '提问7', 10, 0, 0, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (178, 'PASS', 'FAQ', 199, '提问9', 'MARKDOWN', '提问9', '提问9', 6, 0, 0, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (179, 'PASS', 'FAQ', 44, '什么时候上课？', 'MARKDOWN', '什么时候上课？123', '什么时候上课？123', 31, 1, 3, 97, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (180, 'PASS', 'FAQ', 199, 'zff提问', 'MARKDOWN', 'zff提问编辑', 'zff提问编辑', 27, 1, 2, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (181, 'PASS', 'FAQ', 44, '课程1下发的提问', 'MARKDOWN', '提问内容', '提问内容', 0, 0, 0, 0, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (182, 'PASS', 'FAQ', 44, '课程1下提问2', 'MARKDOWN', '提问内容', '提问内容', 0, 0, 0, 0, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (192, 'PASS', 'FAQ', 44, '问题10', 'MARKDOWN', '问题10', '问题10', 10, 0, 1, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (195, 'PASS', 'ARTICLE', 44, '文章4', 'MARKDOWN', '文章4', '文章4,', 0, 0, 0, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (196, 'PASS', 'ARTICLE', 44, '文章4', 'MARKDOWN', '文章4', '文章4,', 0, 0, 0, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (197, 'PASS', 'ARTICLE', 44, '文章5', 'MARKDOWN', '文章5', '文章5,', 0, 0, 0, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (198, 'PASS', 'ARTICLE', 44, '文章6', 'MARKDOWN', '文章6', '文章6,', 4, 0, 0, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (200, 'PASS', 'ARTICLE', 199, '这是一篇文章', 'MARKDOWN', '<em><span style=\"font-size: 24px; text-decoration: underline;\">这是一篇文章</span></em>', '<em><span style=\"font-size: 24px; text-decoration: underline;\">这是一篇文章</span></em>', 20, 2, 2, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (201, 'PASS', 'FAQ', 199, '什么时候考试', 'MARKDOWN', '<img class=\"sdd-image\" src=\"http://file.lwuchang.com/image/c125e883-3456-475e-827c-b3f0c7665091/微信截图_20230509212009.png\" alt=\"微信截图_20230509212009.png\"/>', '<img class=\"sdd-image\" src=\"http://file.lwuchang.com/image/c125e883-3456-475e-827c-b3f0c7665091/微信截图_20230509212009.png\" alt=\"微信截图_20230509212009.png\"/>', 35, 0, 4, 97, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (202, 'PASS', 'FAQ', 199, '提问12', 'MARKDOWN', '提问12内容', '提问12内容', 4, 0, 0, 97, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (203, 'PASS', 'FAQ', 199, '提问13', 'MARKDOWN', '提问13,请问是先有鸡还是先有蛋.', '提问13,请问是先有鸡还是先有蛋.', 2, 0, 0, 97, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (204, 'PASS', 'ARTICLE', 199, '课程3下发布文章', 'MARKDOWN', '课程3下发布的文章', '课程3下发布的文章', 2, 0, 0, 102, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (205, 'PASS', 'FAQ', 199, '课程3下发布的问题', 'MARKDOWN', '课程3下发布的问题,花儿为什么那样红.', '课程3下发布的问题,花儿为什么那样红.', 3, 0, 0, 102, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (206, 'PASS', 'FAQ', 199, '提问13', 'MARKDOWN', '131313', '131313', 18, 1, 5, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (207, 'PASS', 'FAQ', 199, '经验交流课程1提问', 'MARKDOWN', '经验交流课程1提问....', '经验交流课程1提问....', 3, 0, 0, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (208, 'REJECT', 'FAQ', 199, '在线课程1下发的提问', 'MARKDOWN', '在线课程1下的提问', '在线课程1下的提问', 4, 0, 0, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (209, 'PASS', 'ARTICLE', 44, '5月6号文章1', 'MARKDOWN', '5月6号文章1', '5月6号文章1', 0, 0, 0, 97, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (210, 'PASS', 'FAQ', 44, '5月6号提问1', 'MARKDOWN', '5月6号提问1', '5月6号提问1', 0, 0, 0, 97, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (211, 'PASS', 'FAQ', 44, '5月2号提问2', 'MARKDOWN', '5月2号提问2', '5月2号提问2', 16, 0, 3, 97, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (212, 'PASS', 'FAQ', 44, '5月6号提问3', 'MARKDOWN', '5月6号提问3', '5月6号提问3', 0, 0, 0, 97, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (213, 'PASS', 'FAQ', 44, '5月6号提问4', 'MARKDOWN', '5月6号提问4', '5月6号提问4', 5, 0, 0, 97, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (214, 'PASS', 'FAQ', 44, '5月6号提问5', 'MARKDOWN', '5月6号提问5', '5月6号提问5', 0, 0, 0, 97, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (215, 'PASS', 'FAQ', 44, '5月6号提问5', 'MARKDOWN', '5月6号提问6123', '5月6号提问6123', 23, 0, 0, 97, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (217, 'PASS', 'FAQ', 44, '5月6号提问5', 'MARKDOWN', '5月6号提问6', '5月6号提问6', 1, 0, 0, 97, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (221, 'PASS', 'ARTICLE', 44, '5月6号文章2', 'MARKDOWN', '5月6号文章2', '5月6号文章2', 7, 0, 0, 97, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (223, 'PASS', 'ARTICLE', 44, '5月6号文章2', 'MARKDOWN', '5月6号文章22222', '5月6号文章22222', 199, 0, 0, 102, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (225, 'PASS', 'ARTICLE', 58, '111111', 'MARKDOWN', '11111', '11111', 1, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (227, 'PASS', 'ARTICLE', 44, '111111111111', 'MARKDOWN', '1111111111', '1111111111', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (228, 'PASS', 'ARTICLE', 44, '222222222', 'MARKDOWN', '22222222222', '22222222222', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (229, 'PASS', 'ARTICLE', 44, '333333333', 'MARKDOWN', '33333333333333', '33333333333333', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (230, 'PASS', 'ARTICLE', 44, '44444444444', 'MARKDOWN', '44444444444444', '44444444444444', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (231, 'PASS', 'ARTICLE', 44, '555555555555', 'MARKDOWN', '55555555555555', '55555555555555', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (232, 'PASS', 'ARTICLE', 44, '6666666', 'MARKDOWN', '6666666666', '6666666666', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (233, 'PASS', 'ARTICLE', 44, '777777777', 'MARKDOWN', '7777777777777777', '7777777777777777', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (234, 'PASS', 'ARTICLE', 44, '8888888888888', 'MARKDOWN', '8888888888', '8888888888', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (235, 'PASS', 'ARTICLE', 44, '999999999', 'MARKDOWN', '99999999999999', '99999999999999', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (236, 'PASS', 'ARTICLE', 44, '1010101010', 'MARKDOWN', '1010101010', '1010101010', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (237, 'PASS', 'ARTICLE', 44, 'aaaaaaaa', 'MARKDOWN', 'aaaaaaaaaa', 'aaaaaaaaaa', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (238, 'PASS', 'ARTICLE', 44, 'bbbbbbbbbb', 'MARKDOWN', 'bbbbbbbbb', 'bbbbbbbbb', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (239, 'PASS', 'ARTICLE', 44, 'cccccccccc', 'MARKDOWN', 'cccccccccc', 'cccccccccc', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (240, 'PASS', 'ARTICLE', 44, 'ddddddddd', 'MARKDOWN', 'ddddddddddd', 'ddddddddddd', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (241, 'PASS', 'ARTICLE', 44, 'eeeeeeeee', 'MARKDOWN', 'eeeeeeeeeeeeeee', 'eeeeeeeeeeeeeee', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (242, 'PASS', 'ARTICLE', 44, 'eeeeeeeee', 'MARKDOWN', 'eeeeeeeeeeeeeee', 'eeeeeeeeeeeeeee', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (243, 'PASS', 'ARTICLE', 44, 'ffffffff', 'MARKDOWN', 'ffffffffffff', 'ffffffffffff', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (244, 'PASS', 'ARTICLE', 44, 'gggggggggggg', 'MARKDOWN', 'gggggggggggggg', 'gggggggggggggg', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (245, 'PASS', 'ARTICLE', 44, 'hhhhhhhh', 'MARKDOWN', 'hhhhhhhhhh', 'hhhhhhhhhh', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (246, 'PASS', 'ARTICLE', 44, 'iiiiiiiiiiii', 'MARKDOWN', 'iiiiiiiiiiiiii', 'iiiiiiiiiiiiii', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (247, 'PASS', 'ARTICLE', 44, 'jjjjjjjjjj', 'MARKDOWN', 'jjjjjjjjjjjjjjjjj', 'jjjjjjjjjjjjjjjjj', 0, 0, 0, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (248, 'PASS', 'ARTICLE', 44, 'kkkkkkkkk', 'MARKDOWN', 'kkkkkkkkkkkkk', 'kkkkkkkkkkkkk', 6, 0, 2, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (249, 'REJECT', 'FAQ', 44, '拓展书籍', 'MARKDOWN', '想要拓展 还需要看哪些书籍？', '想要拓展 还需要看哪些书籍？', 14, 0, 2, 102, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (250, 'PASS', 'ARTICLE', 44, '文章8', 'MARKDOWN', '文章8', '文章8', 0, 0, 0, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (251, 'PASS', 'ARTICLE', 44, '测试文章1', 'MARKDOWN', '测试文章1', '测试文章1', 1, 0, 0, 106, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (252, 'PASS', 'ARTICLE', 44, '测试文章2', 'MARKDOWN', '测试文章2', '测试文章2', 0, 0, 0, 107, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (253, 'PASS', 'ARTICLE', 44, '测试文章3', 'MARKDOWN', '测试文章3', '测试文章3', 0, 0, 0, 106, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (254, 'PASS', 'ARTICLE', 44, '测试文章4', 'MARKDOWN', '测试文章4', '测试文章4', 0, 0, 0, 106, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (255, 'PASS', 'ARTICLE', 44, '5', 'MARKDOWN', '5', '5', 0, 0, 0, 106, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (256, 'PASS', 'ARTICLE', 44, '6', 'MARKDOWN', '6', '6', 1, 0, 0, 106, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (257, 'PASS', 'ARTICLE', 44, '7', 'MARKDOWN', '7', '7', 6, 0, 0, 106, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (258, 'PASS', 'ARTICLE', 44, '8', 'MARKDOWN', '8', '8', 1, 0, 0, 107, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (259, 'PASS', 'ARTICLE', 44, '9', 'MARKDOWN', '9', '9', 0, 0, 0, 108, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (260, 'PASS', 'ARTICLE', 44, '8', 'MARKDOWN', '8', '8', 1, 0, 0, 106, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (261, 'PASS', 'ARTICLE', 44, '111111', 'MARKDOWN', '1111111', '1111111', 0, 0, 0, 107, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (263, 'PASS', 'FAQ', 44, '学完课程44还要做啥', 'MARKDOWN', '<p><em><span style=\"font-size: 36px; text-decoration: underline;\"><strong>学完课程44还要做什么</strong></span></em><span style=\"font-size: 36px;\"><strong><span style=\"font-size: 36px; text-decoration: underline;\"></span></strong></span><br/><br/><br/><img class=\"sdd-image\" src=\"http://file.lwuchang.com/image/489b66fb-bde0-4013-b5ee-442085aec969/推箱子2.gif\" alt=\"推箱子2.gif\"/><img class=\"sdd-image\" src=\"http://file.lwuchang.com/scrawl/79cc4697-3d7d-492e-8fe7-7da84dad1829/8018de4e-0b54-4624-b3a0-8cfaebde5d3f.png\"/><br/><br/><br/></p>', '<p><em><span style=\"font-size: 36px; text-decoration: underline;\"><strong>学完课程44还要做什么</strong></span></em><span style=\"font-size: 36px;\"><strong><span style=\"font-size: 36px; text-decoration: underline;\"></span></strong></span><br/><br/><br/><img class=\"sdd-image\" src=\"http://file.lwuchang.com/image/489b66fb-bde0-4013-b5ee-442085aec969/推箱子2.gif\" alt=\"推箱子2.gif\"/><img class=\"sdd-image\" src=\"http://file.lwuchang.com/scrawl/79cc4697-3d7d-492e-8fe7-7da84dad1829/8018de4e-0b54-4624-b3a0-8cfaebde5d3f.png\"/><br/><br/><br/></p>', 17, 0, 3, 103, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (276, 'PASS', 'ARTICLE', 199, '12345', 'MARKDOWN', '123', '123', 0, 0, 0, 96, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (277, 'PASS', 'ARTICLE', 199, '5月17文章1', 'MARKDOWN', '5月17文章1', '5月17文章1', 0, 0, 0, 97, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (280, 'PASS', 'ARTICLE', 199, '12356', 'MARKDOWN', '12356', '12356', 0, 0, 1, 126, '', 0, 1, 1, 0, 0, 0, '2023-06-19 18:21:37.931568', '2023-06-19 18:10:50', NULL, 0);
INSERT INTO `forum_posts` VALUES (281, 'PASS', 'ARTICLE', 199, '1236', 'MARKDOWN', '1236', '1236', 0, 0, 0, 126, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (282, 'PASS', 'ARTICLE', 199, '教员文章1', 'MARKDOWN', '测试文章1237', '测试文章1237,', 0, 0, 0, 126, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (283, 'PASS', 'ARTICLE', 199, '测试文章1238', 'MARKDOWN', '测试文章1238', '测试文章1238,', 0, 0, 0, 126, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (284, 'PASS', 'ARTICLE', 199, '测试文章1239', 'MARKDOWN', '测试文章12399', '测试文章12399', 19, 0, 0, 126, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (285, 'PASS', 'ARTICLE', 44, '111122', 'MARKDOWN', '11111111223', '11111111223', 4, 0, 0, 126, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (286, 'PASS', 'ARTICLE', 44, '1111', 'MARKDOWN', '11111111', '11111111', 0, 0, 0, 126, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (287, 'PASS', 'ARTICLE', 44, '111', 'MARKDOWN', '1112', '1112', 3, 0, 0, 126, NULL, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (288, 'PASS', 'FAQ', 199, '​测试问题111', 'MARKDOWN', '测试问题111', '测试问题111', 4, 0, 1, 126, NULL, 0, 0, 1000, 0, 0, 0, '2023-06-19 18:24:21.953274', '2023-06-19 18:24:21', NULL, 0);
INSERT INTO `forum_posts` VALUES (289, 'PASS', 'FAQ', 199, '22', 'MARKDOWN', '22', '22', 1, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (290, 'PASS', 'ARTICLE', 199, '1234', 'MARKDOWN', '&lt;h1&gt;<strong>你好</strong>&lt;h1&gt;', '&lt;h1&gt;<strong>你好</strong>&lt;h1&gt;', 4, 0, 0, 135, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (291, 'PASS', 'FAQ', 44, 's', 'MARKDOWN', 's', 's', 0, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (292, 'PASS', 'FAQ', 44, 's', 'MARKDOWN', 's', 's', 0, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (293, 'PASS', 'FAQ', 44, 's', 'MARKDOWN', 's', 's', 2, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (299, 'PASS', 'FAQ', 44, 'sss', 'MARKDOWN', 'sss', 'sss', 0, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (300, 'PASS', 'FAQ', 44, 'aaaaaaaa', 'MARKDOWN', 'aaaaa', 'aaaaa', 0, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (301, 'PASS', 'FAQ', 44, 'aaaaaaaaaaaaaaaaaaasdsaaxadscs', 'MARKDOWN', 'sadsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'sadsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 0, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (302, 'PASS', 'FAQ', 44, 'ddddddddddddddddddddddddddddddddddd', 'MARKDOWN', 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 0, 0, 0, 120, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (303, 'PASS', 'FAQ', 44, 'sss', 'MARKDOWN', 'ssss', 'ssss', 0, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (304, 'PASS', 'FAQ', 44, 'ssdasd', 'MARKDOWN', 'sss', 'sss', 0, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (305, 'PASS', 'FAQ', 44, 'dd', 'MARKDOWN', 'dd', 'dd', 0, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (306, 'PASS', 'FAQ', 44, 'ddd', 'MARKDOWN', 'ddd', 'ddd', 0, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (307, 'PASS', 'FAQ', 44, 's', 'MARKDOWN', 's', 's', 1, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (308, 'PASS', 'FAQ', 44, 'dd', 'MARKDOWN', 'dddd', 'dddd', 0, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (309, 'PASS', 'FAQ', 44, 'dssdsd', 'MARKDOWN', 'dddds', 'dddds', 0, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (310, 'PASS', 'FAQ', 44, 'sss', 'MARKDOWN', 'ssss', 'ssss', 0, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (311, 'PASS', 'FAQ', 44, 'dd', 'MARKDOWN', 'dd', 'dd', 0, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (312, 'PASS', 'FAQ', 44, 'sss', 'MARKDOWN', 'ss', 'ss', 0, 0, 0, 121, NULL, 0, 0, 1000, 0, 0, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `forum_posts` VALUES (313, 'PASS', 'FAQ', 199, '测试提问', 'MARKDOWN', '测试提问', '测试提问', 0, 0, 0, 126, '', 0, 0, 1000, 0, 0, 0, '2023-06-19 16:53:07.718000', '2023-06-19 16:53:06', NULL, 0);
INSERT INTO `forum_posts` VALUES (314, 'PASS', 'ARTICLE', 199, '1234', 'MARKDOWN', '1234', '1234', 0, 0, 0, 126, '', 0, 0, 1000, 0, 0, 0, '2023-06-19 17:56:30.010000', '2023-06-19 17:56:28', NULL, 0);

-- ----------------------------
-- Table structure for forum_search
-- ----------------------------
DROP TABLE IF EXISTS `forum_search`;
CREATE TABLE `forum_search`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entity_id` bigint(20) NOT NULL,
  `title` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_delete` smallint(6) NOT NULL DEFAULT 0,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_type_create`(`type`, `create_at`) USING BTREE,
  INDEX `idx_type_title`(`type`, `title`(255)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 452 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_search
-- ----------------------------
INSERT INTO `forum_search` VALUES (169, 'POSTS', 155, '提问1', '提问1内容', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (170, 'POSTS', 156, '提问2', '提问2', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (177, 'POSTS', 154, '文章2', '文章2888', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (186, 'POSTS', 157, '问题二', '问题二11111', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (189, 'POSTS', 160, '提问3', '提问3344', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (191, 'POSTS', 161, 'sss', 'ssss', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (192, 'POSTS', 158, '问题二', 'sss', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (194, 'POSTS', 162, 'ssss', 'sssss444', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (195, 'POSTS', 163, 'ssss', 'ssssssss', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (198, 'POSTS', 164, '11111111111', '111111222', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (199, 'POSTS', 165, '11111', '1111111111111111111', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (200, 'POSTS', 166, '33333333333', '1111111111111111', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (203, 'POSTS', 167, '1111111', '111111111111', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (204, 'POSTS', 168, '11111111111', '111111111111', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (208, 'POSTS', 171, '问答3', '问答44', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (209, 'POSTS', 170, '问答2', '问答2222', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (211, 'POSTS', 159, '文章3', '文章333', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (212, 'POSTS', 172, '问答444', '问答4445555', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (214, 'POSTS', 173, '666666666666', '66666666444444444', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (215, 'POSTS', 169, '4444444444444', '1111111', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (230, 'POSTS', 176, '提问7', '提问7', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (233, 'POSTS', 175, '提问6', '提问66666666', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (234, 'POSTS', 178, '提问9', '提问9', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (235, 'POSTS', 177, '提问8', '提问88', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (238, 'POSTS', 181, '课程1下发的提问', '提问内容', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (239, 'POSTS', 182, '课程1下提问2', '提问内容', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (240, 'POSTS', 179, '什么时候上课？', '什么时候上课？123', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (241, 'POSTS', 180, 'zff提问', 'zff提问编辑', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (242, 'POSTS', 192, '问题10', '问题10', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (243, 'POSTS', 153, '文章1', '文章1内容1111', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (244, 'POSTS', 195, '文章4', '文章4', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (245, 'POSTS', 196, '文章4', '文章4', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (246, 'POSTS', 197, '文章5', '文章5', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (247, 'POSTS', 198, '文章6', '文章6', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (249, 'POSTS', 200, '这是一篇文章', '<em><span style=\"font-size: 24px; text-decoration: underline;\">这是一篇文章</span></em>', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (251, 'POSTS', 202, '提问12', '提问12内容', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (252, 'POSTS', 203, '提问13', '提问13,请问是先有鸡还是先有蛋.', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (253, 'POSTS', 204, '课程3下发布文章', '课程3下发布的文章', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (254, 'POSTS', 205, '课程3下发布的问题', '课程3下发布的问题,花儿为什么那样红.', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (255, 'POSTS', 206, '提问13', '131313', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (256, 'POSTS', 207, '经验交流课程1提问', '经验交流课程1提问....', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (257, 'POSTS', 208, '在线课程1下发的提问', '在线课程1下的提问', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (258, 'POSTS', 209, '5月6号文章1', '5月6号文章1', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (259, 'POSTS', 210, '5月6号提问1', '5月6号提问1', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (260, 'POSTS', 211, '5月2号提问2', '5月2号提问2', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (261, 'POSTS', 212, '5月6号提问3', '5月6号提问3', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (262, 'POSTS', 213, '5月6号提问4', '5月6号提问4', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (263, 'POSTS', 214, '5月6号提问5', '5月6号提问5', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (265, 'POSTS', 216, '5月6号提问5', '5月6号提问6', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (266, 'POSTS', 217, '5月6号提问5', '5月6号提问6', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (270, 'POSTS', 221, '5月6号文章2', '5月6号文章2', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (319, 'POSTS', 174, '提问5', '123121', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (321, 'POSTS', 224, '0506问题1', '0506问题1', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (330, 'POSTS', 225, '111111', '11111', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (340, 'POSTS', 223, '5月6号文章2', '5月6号文章22222', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (346, 'POSTS', 226, '123333', 'sssssssssssssss', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (347, 'POSTS', 222, '111', '1238888888', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (348, 'POSTS', 227, '111111111111', '1111111111', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (349, 'POSTS', 228, '222222222', '22222222222', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (350, 'POSTS', 229, '333333333', '33333333333333', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (351, 'POSTS', 230, '44444444444', '44444444444444', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (352, 'POSTS', 231, '555555555555', '55555555555555', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (353, 'POSTS', 232, '6666666', '6666666666', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (354, 'POSTS', 233, '777777777', '7777777777777777', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (355, 'POSTS', 234, '8888888888888', '8888888888', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (356, 'POSTS', 235, '999999999', '99999999999999', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (357, 'POSTS', 236, '1010101010', '1010101010', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (358, 'POSTS', 237, 'aaaaaaaa', 'aaaaaaaaaa', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (359, 'POSTS', 238, 'bbbbbbbbbb', 'bbbbbbbbb', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (360, 'POSTS', 239, 'cccccccccc', 'cccccccccc', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (361, 'POSTS', 240, 'ddddddddd', 'ddddddddddd', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (362, 'POSTS', 241, 'eeeeeeeee', 'eeeeeeeeeeeeeee', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (363, 'POSTS', 242, 'eeeeeeeee', 'eeeeeeeeeeeeeee', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (364, 'POSTS', 243, 'ffffffff', 'ffffffffffff', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (365, 'POSTS', 244, 'gggggggggggg', 'gggggggggggggg', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (366, 'POSTS', 245, 'hhhhhhhh', 'hhhhhhhhhh', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (367, 'POSTS', 246, 'iiiiiiiiiiii', 'iiiiiiiiiiiiii', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (368, 'POSTS', 247, 'jjjjjjjjjj', 'jjjjjjjjjjjjjjjjj', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (369, 'POSTS', 248, 'kkkkkkkkk', 'kkkkkkkkkkkkk', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (370, 'POSTS', 249, '拓展书籍', '想要拓展 还需要看哪些书籍？', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (371, 'POSTS', 250, '文章8', '文章8', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (372, 'POSTS', 251, '测试文章1', '测试文章1', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (373, 'POSTS', 252, '测试文章2', '测试文章2', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (374, 'POSTS', 253, '测试文章3', '测试文章3', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (375, 'POSTS', 254, '测试文章4', '测试文章4', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (376, 'POSTS', 255, '5', '5', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (377, 'POSTS', 256, '6', '6', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (378, 'POSTS', 257, '7', '7', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (379, 'POSTS', 258, '8', '8', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (380, 'POSTS', 259, '9', '9', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (381, 'POSTS', 260, '8', '8', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (382, 'POSTS', 261, '111111', '1111111', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (383, 'POSTS', 262, 'sasdas', '<img class=\"sdd-image\" src=\"http://file.lwuchang.com/image/c4cac81b-b66a-4e88-9622-78c7ecde16c9/课程封面.png\" alt=\"课程封面.png\"/><img class=\"sdd-image\" src=\"http://file.lwuchang.com/scrawl/e66fbb00-1c06-48ee-b9dd-50dfb79d1a8a/d6cf8f94-9596-4467-b397-29f1be30ac94.png\"/>', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (386, 'POSTS', 263, '学完课程44还要做啥', '<p><em><span style=\"font-size: 36px; text-decoration: underline;\"><strong>学完课程44还要做什么</strong></span></em><span style=\"font-size: 36px;\"><strong><span style=\"font-size: 36px; text-decoration: underline;\"></span></strong></span><br/><br/><br/><img class=\"sdd-image\" src=\"http://file.lwuchang.com/image/489b66fb-bde0-4013-b5ee-442085aec969/推箱子2.gif\" alt=\"推箱子2.gif\"/><img class=\"sdd-image\" src=\"http://file.lwuchang.com/scrawl/79cc4697-3d7d-492e-8fe7-7da84dad1829/8018de4e-0b54-4624-b3a0-8cfaebde5d3f.png\"/><br/><br/><br/></p>', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (387, 'POSTS', 264, '文章1', '文章1', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (388, 'POSTS', 265, '测试课程9下的文章1', '测试课程9下的文章1', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (389, 'POSTS', 266, '教员文章1', '教员文章1', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (390, 'POSTS', 267, 'a', 'a', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (391, 'POSTS', 268, '123', '123', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (392, 'POSTS', 269, '123', '123', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (393, 'POSTS', 270, '321', '321', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (394, 'POSTS', 271, 'aaa', 'aaa', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (395, 'POSTS', 272, 'asds', 'dasd', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (396, 'POSTS', 273, 'aaaa', 'aaaa', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (397, 'POSTS', 274, 'sdsad', 'dsad', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (398, 'POSTS', 275, 'sad', 'das', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (399, 'POSTS', 201, '什么时候考试', '<img class=\"sdd-image\" src=\"http://file.lwuchang.com/image/c125e883-3456-475e-827c-b3f0c7665091/微信截图_20230509212009.png\" alt=\"微信截图_20230509212009.png\"/>', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (400, 'POSTS', 215, '5月6号提问5', '5月6号提问6123', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (401, 'POSTS', 276, '12345', '123', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (402, 'POSTS', 277, '5月17文章1', '5月17文章1', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (403, 'POSTS', 278, '123', '123', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (404, 'POSTS', 279, '1234', '1234', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (406, 'POSTS', 281, '1236', '1236', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (407, 'POSTS', 282, '教员文章1', '测试文章1237', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (408, 'POSTS', 283, '测试文章1238', '测试文章1238', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (411, 'POSTS', 284, '测试文章1239', '测试文章12399', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (413, 'POSTS', 286, '1111', '11111111', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (426, 'POSTS', 285, '111122', '11111111223', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (427, 'POSTS', 287, '111', '1112', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (428, 'POSTS', 288, '​测试问题111', '测试问题111', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (429, 'POSTS', 289, '22', '22', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (431, 'POSTS', 290, '1234', '&lt;h1&gt;<strong>你好</strong>&lt;h1&gt;', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (432, 'POSTS', 291, 's', 's', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (433, 'POSTS', 292, 's', 's', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (434, 'POSTS', 293, 's', 's', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (435, 'POSTS', 299, 'sss', 'sss', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (436, 'POSTS', 300, 'aaaaaaaa', 'aaaaa', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (437, 'POSTS', 301, 'aaaaaaaaaaaaaaaaaaasdsaaxadscs', 'sadsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (438, 'POSTS', 302, 'ddddddddddddddddddddddddddddddddddd', 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (439, 'POSTS', 303, 'sss', 'ssss', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (440, 'POSTS', 304, 'ssdasd', 'sss', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (441, 'POSTS', 305, 'dd', 'dd', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (442, 'POSTS', 306, 'ddd', 'ddd', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (443, 'POSTS', 307, 's', 's', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (444, 'POSTS', 308, 'dd', 'dddd', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (445, 'POSTS', 309, 'dssdsd', 'dddds', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (446, 'POSTS', 310, 'sss', 'ssss', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (447, 'POSTS', 311, 'dd', 'dd', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (448, 'POSTS', 312, 'sss', 'ss', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_search` VALUES (449, 'POSTS', 313, '测试提问', '测试提问', 0, '2023-06-19 16:53:08.579000', '2023-06-19 16:53:07');
INSERT INTO `forum_search` VALUES (450, 'POSTS', 314, '1234', '1234', 0, '2023-06-19 17:56:30.380000', '2023-06-19 17:56:28');
INSERT INTO `forum_search` VALUES (451, 'POSTS', 280, '12356', '12356', 0, '2023-06-19 18:10:50.472000', '2023-06-19 18:10:50');

-- ----------------------------
-- Table structure for forum_tag
-- ----------------------------
DROP TABLE IF EXISTS `forum_tag`;
CREATE TABLE `forum_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `audit_state` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ref_count` bigint(20) NOT NULL DEFAULT 0,
  `creator_id` bigint(20) NOT NULL,
  `is_delete` smallint(6) NOT NULL DEFAULT 0,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_name_state`(`name`, `audit_state`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 402 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_tag
-- ----------------------------
INSERT INTO `forum_tag` VALUES (222, 'PASS', '默认分组', '默认标签', 157, 25, 0, '2023-06-19 18:10:50.431328', '0000-00-00 00:00:00');
INSERT INTO `forum_tag` VALUES (395, 'PASS', '测试', '测试', 87, 43, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag` VALUES (397, 'PASS', '热题', '热题', 44, 58, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag` VALUES (401, 'PASS', '热点', '当前热点', 3, 43, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for forum_tag_posts_mapping
-- ----------------------------
DROP TABLE IF EXISTS `forum_tag_posts_mapping`;
CREATE TABLE `forum_tag_posts_mapping`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) NOT NULL,
  `posts_id` bigint(20) NOT NULL,
  `is_delete` smallint(6) NOT NULL DEFAULT 0,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_posts_tag`(`posts_id`, `tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 598 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_tag_posts_mapping
-- ----------------------------
INSERT INTO `forum_tag_posts_mapping` VALUES (200, 222, 155, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (201, 395, 155, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (202, 222, 156, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (203, 395, 156, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (216, 395, 154, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (217, 222, 154, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (234, 395, 157, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (235, 222, 157, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (242, 395, 160, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (243, 222, 160, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (246, 395, 161, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (247, 222, 161, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (248, 395, 158, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (249, 222, 158, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (252, 222, 162, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (253, 395, 162, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (262, 222, 165, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (263, 395, 165, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (264, 222, 166, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (265, 395, 166, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (268, 395, 167, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (269, 395, 168, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (270, 222, 168, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (277, 222, 171, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (278, 395, 171, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (279, 222, 170, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (280, 395, 170, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (283, 395, 159, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (284, 222, 159, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (285, 395, 172, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (286, 222, 172, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (289, 222, 173, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (290, 395, 173, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (291, 222, 169, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (292, 395, 169, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (312, 395, 176, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (315, 395, 175, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (316, 222, 178, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (317, 395, 178, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (318, 395, 177, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (321, 395, 181, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (322, 397, 181, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (323, 222, 182, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (324, 397, 179, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (325, 395, 180, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (326, 222, 180, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (327, 397, 192, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (328, 395, 153, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (329, 222, 195, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (330, 395, 195, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (331, 395, 196, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (332, 222, 196, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (333, 222, 197, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (334, 395, 197, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (335, 395, 198, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (336, 222, 198, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (339, 395, 200, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (340, 397, 200, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (342, 222, 202, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (343, 397, 203, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (344, 395, 204, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (345, 222, 205, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (346, 222, 206, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (347, 397, 206, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (348, 395, 207, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (349, 397, 208, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (350, 395, 208, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (351, 397, 209, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (352, 395, 210, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (353, 395, 211, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (354, 395, 212, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (355, 395, 213, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (356, 395, 214, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (358, 395, 216, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (359, 395, 217, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (360, 397, 221, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (437, 222, 174, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (441, 222, 224, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (456, 222, 225, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (457, 397, 225, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (458, 395, 225, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (473, 397, 223, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (474, 395, 223, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (486, 397, 226, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (487, 395, 226, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (488, 395, 222, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (489, 397, 222, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (490, 397, 227, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (491, 397, 228, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (492, 395, 229, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (493, 397, 230, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (494, 397, 231, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (495, 397, 232, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (496, 397, 233, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (497, 397, 234, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (498, 397, 235, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (499, 397, 236, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (500, 397, 237, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (501, 397, 238, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (502, 397, 239, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (503, 397, 240, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (504, 395, 241, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (505, 395, 242, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (506, 397, 243, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (507, 397, 244, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (508, 397, 245, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (509, 397, 246, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (510, 397, 247, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (511, 397, 248, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (512, 222, 249, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (513, 397, 250, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (514, 401, 250, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (515, 397, 251, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (516, 401, 252, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (517, 397, 253, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (518, 222, 254, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (519, 397, 254, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (520, 397, 255, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (521, 397, 256, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (522, 397, 257, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (523, 395, 257, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (524, 397, 258, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (525, 397, 259, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (526, 397, 260, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (527, 401, 261, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (528, 397, 261, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (532, 397, 263, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (533, 222, 264, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (545, 222, 201, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (546, 395, 215, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (547, 222, 276, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (548, 222, 277, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (549, 222, 278, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (550, 222, 279, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (552, 222, 281, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (553, 222, 282, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (554, 222, 283, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (557, 222, 284, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (559, 222, 286, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (572, 222, 285, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (573, 222, 287, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (574, 222, 288, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (575, 222, 289, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (577, 222, 290, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (578, 222, 291, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (579, 222, 292, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (580, 222, 293, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (581, 222, 299, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (582, 222, 300, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (583, 222, 301, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (584, 222, 302, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (585, 222, 303, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (586, 222, 304, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (587, 222, 305, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (588, 222, 306, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (589, 222, 307, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (590, 222, 308, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (591, 222, 309, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (592, 222, 310, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (593, 222, 311, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (594, 222, 312, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_tag_posts_mapping` VALUES (595, 222, 313, 0, '2023-06-19 16:53:07.876000', '2023-06-19 16:53:06');
INSERT INTO `forum_tag_posts_mapping` VALUES (596, 222, 314, 0, '2023-06-19 17:56:30.090000', '2023-06-19 17:56:28');
INSERT INTO `forum_tag_posts_mapping` VALUES (597, 222, 280, 0, '2023-06-19 18:10:50.303000', '2023-06-19 18:10:50');

-- ----------------------------
-- Table structure for forum_user_follow
-- ----------------------------
DROP TABLE IF EXISTS `forum_user_follow`;
CREATE TABLE `forum_user_follow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `followed` bigint(20) NOT NULL,
  `followed_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `follower` bigint(20) NOT NULL,
  `is_delete` smallint(6) NOT NULL DEFAULT 0,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_followed_follower`(`followed`, `followed_type`, `follower`) USING BTREE,
  INDEX `idx_follower`(`follower`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_user_follow
-- ----------------------------
INSERT INTO `forum_user_follow` VALUES (46, 175, 'POSTS', 44, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_follow` VALUES (48, 159, 'POSTS', 44, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_follow` VALUES (49, 179, 'POSTS', 44, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_follow` VALUES (50, 175, 'USER', 44, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_follow` VALUES (88, 200, 'POSTS', 199, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_follow` VALUES (93, 180, 'POSTS', 199, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_follow` VALUES (95, 44, 'USER', 199, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_follow` VALUES (97, 206, 'POSTS', 44, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_follow` VALUES (98, 200, 'POSTS', 44, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_follow` VALUES (99, 199, 'USER', 44, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_follow` VALUES (100, 174, 'POSTS', 44, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_follow` VALUES (115, 44, 'USER', 44, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_follow` VALUES (116, 199, 'USER', 199, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for forum_user_food
-- ----------------------------
DROP TABLE IF EXISTS `forum_user_food`;
CREATE TABLE `forum_user_food`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `posts_id` bigint(20) NOT NULL,
  `is_delete` smallint(6) NOT NULL DEFAULT 0,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_uid_pid`(`user_id`, `posts_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1083 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_user_food
-- ----------------------------
INSERT INTO `forum_user_food` VALUES (326, 44, 175, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (327, 44, 176, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (328, 44, 167, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (329, 44, 174, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (330, 44, 168, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (331, 44, 159, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (332, 44, 171, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (333, 44, 170, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (334, 44, 154, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (335, 44, 172, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (336, 44, 169, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (337, 44, 153, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (338, 44, 173, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (339, 44, 177, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (346, 44, 179, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (350, 44, 178, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (351, 44, 180, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (352, 199, 200, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (354, 44, 200, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (356, 199, 192, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (365, 44, 197, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (366, 44, 182, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (367, 44, 198, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (368, 44, 192, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (373, 44, 195, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (374, 44, 196, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (377, 44, 181, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (399, 199, 167, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (400, 199, 168, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (401, 199, 176, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (402, 199, 154, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (403, 199, 171, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (404, 199, 170, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (405, 199, 174, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (406, 199, 159, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (407, 199, 197, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (408, 199, 182, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (410, 199, 198, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (411, 199, 172, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (412, 199, 169, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (413, 199, 175, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (414, 199, 153, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (415, 199, 195, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (416, 199, 196, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (417, 199, 173, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (418, 199, 179, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (419, 199, 181, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (420, 199, 180, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (445, 199, 178, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (447, 199, 201, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (448, 199, 204, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (449, 199, 205, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (450, 199, 203, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (451, 199, 202, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (453, 44, 206, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (459, 198, 201, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (462, 44, 207, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (463, 44, 208, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (464, 44, 204, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (467, 44, 201, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (468, 44, 205, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (471, 44, 202, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (472, 44, 203, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (477, 44, 222, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (480, 44, 213, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (482, 44, 215, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (484, 44, 209, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (487, 44, 226, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (488, 44, 210, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (489, 44, 211, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (490, 44, 218, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (491, 44, 219, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (493, 44, 221, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (497, 44, 224, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (498, 44, 223, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (504, 44, 212, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (506, 44, 214, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (507, 44, 216, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (508, 44, 217, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (509, 44, 220, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (968, 58, 226, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (969, 43, 249, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (971, 43, 263, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (974, 199, 266, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (979, 199, 275, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (981, 42, 263, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (984, 42, 211, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (985, 44, 248, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (987, 44, 263, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (988, 42, 170, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1018, 44, 231, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1019, 44, 227, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1020, 44, 228, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1021, 44, 229, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1022, 44, 230, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1023, 44, 232, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1024, 44, 233, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1025, 44, 234, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1026, 44, 235, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1027, 44, 236, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1028, 44, 237, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1029, 44, 238, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1030, 44, 239, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1031, 44, 240, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1032, 44, 241, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1033, 44, 242, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1034, 44, 243, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1035, 44, 244, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1036, 44, 245, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1037, 44, 246, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1038, 44, 247, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1042, 44, 259, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1043, 44, 257, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1044, 44, 285, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1045, 44, 286, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1046, 44, 256, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1047, 44, 251, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1048, 44, 250, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1049, 44, 258, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1050, 44, 261, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1051, 44, 252, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1052, 44, 253, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1053, 44, 254, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1054, 44, 255, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1055, 44, 260, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1057, 44, 287, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1059, 199, 276, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1060, 199, 277, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1061, 199, 207, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1062, 199, 282, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1063, 199, 206, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1065, 199, 283, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1070, 199, 278, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1071, 199, 284, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1074, 199, 279, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1075, 199, 280, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1076, 199, 288, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1077, 199, 290, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1078, 199, 281, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');
INSERT INTO `forum_user_food` VALUES (1079, 199, 289, 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for t_admin_event_log
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_event_log`;
CREATE TABLE `t_admin_event_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 651 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_admin_event_log
-- ----------------------------
INSERT INTO `t_admin_event_log` VALUES (636, 193, '张三1234', '张三1234 的个人信息删除成功', '0000-00-00 00:00:00.000000');
INSERT INTO `t_admin_event_log` VALUES (637, 194, '张三1234', '张三1234 的个人信息删除成功', '0000-00-00 00:00:00.000000');
INSERT INTO `t_admin_event_log` VALUES (638, 195, '张三1234', '张三1234 的个人信息删除成功', '0000-00-00 00:00:00.000000');
INSERT INTO `t_admin_event_log` VALUES (639, 196, '示例：张三1234', '示例：张三1234 的个人信息删除成功', '0000-00-00 00:00:00.000000');
INSERT INTO `t_admin_event_log` VALUES (640, 198, 'zfftest', 'zfftest 的个人信息添加成功', '0000-00-00 00:00:00.000000');
INSERT INTO `t_admin_event_log` VALUES (641, 198, 'zfftest', 'zfftest 的个人信息更改成功', '0000-00-00 00:00:00.000000');
INSERT INTO `t_admin_event_log` VALUES (642, 199, 'zffxueyuan', 'zffxueyuan 的个人信息添加成功', '0000-00-00 00:00:00.000000');
INSERT INTO `t_admin_event_log` VALUES (643, 214, 'admin', 'admin 的个人信息添加成功', '0000-00-00 00:00:00.000000');
INSERT INTO `t_admin_event_log` VALUES (644, 213, '朱方方2', '朱方方2 的个人信息删除成功', '0000-00-00 00:00:00.000000');
INSERT INTO `t_admin_event_log` VALUES (645, 198, 'zfftest', 'zfftest 的个人信息更改成功', '0000-00-00 00:00:00.000000');
INSERT INTO `t_admin_event_log` VALUES (646, 215, '1223', '1223 的个人信息添加成功', '0000-00-00 00:00:00.000000');
INSERT INTO `t_admin_event_log` VALUES (647, 215, '1223', '1223 的个人信息删除成功', '0000-00-00 00:00:00.000000');
INSERT INTO `t_admin_event_log` VALUES (648, 216, 'zff2', 'zff2 的个人信息添加成功', '0000-00-00 00:00:00.000000');
INSERT INTO `t_admin_event_log` VALUES (649, 42, 'admintest', 'admintest 登录了 人力资源信息管理训练平台', '0000-00-00 00:00:00.000000');
INSERT INTO `t_admin_event_log` VALUES (650, 42, 'admintest', 'admintest 登录了 人力资源信息管理训练平台', '0000-00-00 00:00:00.000000');

-- ----------------------------
-- Table structure for t_answer_status
-- ----------------------------
DROP TABLE IF EXISTS `t_answer_status`;
CREATE TABLE `t_answer_status`  (
  `user_id` bigint(20) NOT NULL,
  `paper_id` bigint(20) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_answer_status
-- ----------------------------
INSERT INTO `t_answer_status` VALUES (44, 223, 'o8vmqijdg+fo6pnoEdOS+VY/pQcRs33M3WCHKr/7Q11T0uHbbYo8rAE9HL5E61j18IDVcd5lJZnZEJmRe143ezYlqWSrIa5TFpz1UOgMoCTHBFktpwGOsaYXhpI8niKje47OOVFXJbcPUhKdP42p/r2dEOJ9t3g5xl0otyi1FI8=', 'OM+wPd4NNWppvcjsQAMkEAZo0xOBfctC6swGAouJ/PpPvUzoaM0j9xpncPaWBnNWBdbyjFNhrqVdMoVMBRVOjQNHrY//AAw1FNcy4EsglW2TNmlPunX7vROaUSDXLSZVtzY49wfidG0ISrXTu7LnpRXs3bh+ypyWu5Ze/j03Ie1rxDnIQnLSc2qpnaD2DjfdQ8gab1cRzdRokd6aa2ZbMGKuB+AJAB5ydtVVaTQsrvqUgqemRVcnXr5+86fWAUvRMmByW43POEgW77Wt3Dwy8OXjIV8Zj1EB19j7HV3HqWejNXrM0gdqrI3ZDvVkNq/PvS1HtRMTdGo25cu1ZwCQUGWBd9z0s23NajheXcXDy/CWsfprkqtiZu+CqDg955+zUIK/5ZzvR6rvMUSlc7JB1KD+KWwKCl41LzE47MmAgy1jsVlfE3IPtlw87nOdgXw4WBb4zevIeT41lePg8BFc/9dpCDBigrQGfNPshPM3lyvx7O0GkOO1wPufe4LvZV4cJXlU9SmJ8g7+HwP+7iPSRyMFqXND+ZpczCKB+h7aeZ2epjmgJcpj2QGzjwElIPW4TmC6JKKGDPPSh9UB5+bkKm/sXRWYil+jA41Nu1yrDQjLa8Qvs6EI9JDlymARWIaxKlBlS+uqW9Basz3nbEj8nNbEQCNpcEW+TRBE4emWZTEbUutd5gw0aEOqrK+s4MJkPJGnvV2BbsCzV8OQpdq5jSCsouJYDPk+z/tefqox3Syq4M/ztCjvzjQriJWSMSYbKxb9GvHby/+W3/hEx7bAObT4qsBl9vGj/FF+di9qhpZZdBsCheZe0kTO0yq7wbWUda1rfVyvTDT8M4VcYlUa1MMkg8ZGpcOKV6/vu2jwy7jvqMoLHcXXdy6DL2/UyNaj0J+3tPJbxhao54MbazRakrvJmFo5paq3KS3RcBkgveKuhhQfbsMd5TQQSK0Eo60NtHfCFcB/IkLY7Po1efwafSspo0j/0uGBCpjuH62fB/XcsX9L8LVby09KcdEZMzt7dcHvqwnmcPRGpvwevwkRwg==');

-- ----------------------------
-- Table structure for t_business_system
-- ----------------------------
DROP TABLE IF EXISTS `t_business_system`;
CREATE TABLE `t_business_system`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL,
  `deleted` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_business_system
-- ----------------------------
INSERT INTO `t_business_system` VALUES (18, '业务系统1', '义务系统1描述', '/', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `t_business_system` VALUES (19, 'Pitraiy', '123456', '123456', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);
INSERT INTO `t_business_system` VALUES (20, '业务系统2', '1221', '212213', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);
INSERT INTO `t_business_system` VALUES (21, 's', 's', '/', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_order` int(11) NULL DEFAULT NULL,
  `deleted` tinyint(1) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `degree_id` int(11) NULL DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `training_obj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `training_target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ord` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES (34, '专业1', NULL, 1, 1, 43, '0000-00-00 00:00:00', NULL, '专业1描述', '全部学员', '掌握专业1知识', 0);
INSERT INTO `t_category` VALUES (35, '专业2', NULL, 0, 1, 58, '0000-00-00 00:00:00', NULL, '专业2', '专业2', '专业2', 1);
INSERT INTO `t_category` VALUES (36, '专业3', 1, 0, NULL, 198, '0000-00-00 00:00:00', NULL, '专业3描述', '全体学员', '使全体学员掌握专业3知识.', 1);
INSERT INTO `t_category` VALUES (37, '测试专业', NULL, 1, NULL, 198, '0000-00-00 00:00:00', NULL, '测试专业描述1', '全体学员', '使全体学员掌握该专业知识', 0);
INSERT INTO `t_category` VALUES (38, '测试专业2', NULL, 1, 1, 42, '0000-00-00 00:00:00', NULL, '123', '213', '1231', 0);
INSERT INTO `t_category` VALUES (40, '专业4', NULL, 0, 1, 42, '0000-00-00 00:00:00', NULL, '专业4描述', '学员', '掌握专业4', 4);
INSERT INTO `t_category` VALUES (41, '123', NULL, 1, 1, 42, '0000-00-00 00:00:00', NULL, '223', '1', '1', 5);

-- ----------------------------
-- Table structure for t_chat_log
-- ----------------------------
DROP TABLE IF EXISTS `t_chat_log`;
CREATE TABLE `t_chat_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chat_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 403 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_chat_log
-- ----------------------------
INSERT INTO `t_chat_log` VALUES (396, 44, 74, '学员', 'dd ', '0000-00-00 00:00:00');
INSERT INTO `t_chat_log` VALUES (397, 43, 80, '【教员】教员', '您好', '0000-00-00 00:00:00');
INSERT INTO `t_chat_log` VALUES (398, 44, 77, '学员', '1111', '0000-00-00 00:00:00');
INSERT INTO `t_chat_log` VALUES (399, 44, 77, '学员', '6564', '0000-00-00 00:00:00');
INSERT INTO `t_chat_log` VALUES (400, 44, 77, '学员', '31', '0000-00-00 00:00:00');
INSERT INTO `t_chat_log` VALUES (401, 44, 77, '学员', '2121', '0000-00-00 00:00:00');
INSERT INTO `t_chat_log` VALUES (402, 44, 77, '学员', '100', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `course_category_id` int(11) NULL DEFAULT NULL,
  `online_time` timestamp(0) NULL DEFAULT NULL,
  `child_count` int(11) NULL DEFAULT NULL,
  `paper_id` int(11) NULL DEFAULT NULL,
  `teacher` varchar(1022) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_category_new` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `system_id` int(11) NULL DEFAULT NULL,
  `ord` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES (71, '课程1', 'http://file.lwuchang.com/image/a69321a0-533e-4ce8-b0b6-3271bfe4281b/班级.jpg', '课程1描述信息', '0000-00-00 00:00:00', 0, NULL, 2, 43, 93, '0000-00-00 00:00:00', 1, NULL, '198', 'null_93', 34, 18, 0);
INSERT INTO `t_course` VALUES (72, '课程2', 'http://file.lwuchang.com/image/25263145-156f-4b99-babf-34e6d2765586/课程封面.png', '课程2', '0000-00-00 00:00:00', 0, NULL, 2, 43, 93, '0000-00-00 00:00:00', 1, NULL, NULL, 'null_93', 34, 18, 0);
INSERT INTO `t_course` VALUES (73, '课程3', 'http://file.lwuchang.com/image/7e894208-1d94-43f8-9a51-3aefab13310d/欢迎扫描.jpg', '课程3描述', '0000-00-00 00:00:00', 0, NULL, 2, 43, 94, '0000-00-00 00:00:00', 1, NULL, '198,43', 'null_94', 36, 18, 0);
INSERT INTO `t_course` VALUES (74, '课程44', 'http://file.lwuchang.com/image/0c88643f-d1b3-4f88-bceb-06b7ac665445/123.jpg', '课程44描述', '0000-00-00 00:00:00', 0, NULL, 2, 198, 94, '0000-00-00 00:00:00', 1, NULL, '198', 'null_94', 36, 18, 2);
INSERT INTO `t_course` VALUES (75, '七万五千', 'http://file.lwuchang.com/image/4fbcf67c-53cd-48e4-bcc7-92f044fe76cd/课程封面.png', '七万五千', '0000-00-00 00:00:00', 0, NULL, 2, 43, 93, NULL, 1, NULL, NULL, 'null_93', 34, 18, 0);
INSERT INTO `t_course` VALUES (76, '33', 'http://file.lwuchang.com/template/file/课程默认封面.png', '33', '0000-00-00 00:00:00', 1, NULL, 1, 43, 93, NULL, 1, NULL, NULL, 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (77, '11111', 'http://file.lwuchang.com/image/6e7f31e3-10ac-4ed7-b9bd-16382961d3ca/0.5233198431722094.jpg', '11111', '0000-00-00 00:00:00', 0, NULL, 2, 43, 93, '0000-00-00 00:00:00', 1, NULL, NULL, 'null_93', 34, 18, 1);
INSERT INTO `t_course` VALUES (78, '222', 'http://file.lwuchang.com/image/f2b3647b-4893-498d-bc4e-07a911bc004c/001.jpg', '222', '0000-00-00 00:00:00', 0, NULL, 3, 43, 93, NULL, 1, NULL, NULL, 'null_93', 34, 18, 0);
INSERT INTO `t_course` VALUES (79, '666', 'http://file.lwuchang.com/template/file/默认课程封面.png', '666', '0000-00-00 00:00:00', 0, NULL, 2, 43, 93, NULL, 0, NULL, NULL, 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (80, '32323', 'http://file.lwuchang.com/image/99e92034-ad54-4672-980a-fd2e13074939/证书模板1.jpg', '2323', '0000-00-00 00:00:00', 0, NULL, 2, 43, 93, '0000-00-00 00:00:00', 1, NULL, '43', 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (81, '1313', 'http://file.lwuchang.com/template/file/课程封面.png', '<img class=\"sdd-image\" src=\"http://file.lwuchang.com/image/93b8c8ed-73b0-4215-a172-0aa1cf316386/班级.jpg\" _src=\"http://file.lwuchang.com/image/93b8c8ed-73b0-4215-a172-0aa1cf316386/班级.jpg\" alt=\"班级.jpg\" title=\"undefined\">1313<br><br><img class=\"sdd-image\" src=\"http://file.lwuchang.com/image/f8aebc14-4096-4fc7-bcf4-68d620735524/屏幕截图 2023-04-20 095110.jpg\" _src=\"http://file.lwuchang.com/image/f8aebc14-4096-4fc7-bcf4-68d620735524/屏幕截图 2023-04-20 095110.jpg\" alt=\"屏幕截图 2023-04-20 095110.jpg\">​', '0000-00-00 00:00:00', 0, NULL, 2, 43, 93, '0000-00-00 00:00:00', 1, NULL, '43', 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (82, '测试课程1', 'http://file.lwuchang.com/template/file/课程封面.png', '测试课程1', '0000-00-00 00:00:00', 0, NULL, 2, 42, 93, '0000-00-00 00:00:00', 0, NULL, NULL, 'null_93', 34, 18, 0);
INSERT INTO `t_course` VALUES (84, '测试课程1', 'http://file.lwuchang.com/template/file/课程封面.png', '测试课程1', '0000-00-00 00:00:00', 0, NULL, 2, 42, 94, '0000-00-00 00:00:00', 0, NULL, NULL, 'null_94', 36, 18, 0);
INSERT INTO `t_course` VALUES (85, '测试课程4', 'http://file.lwuchang.com/template/file/课程封面.png', '测试课程4', '0000-00-00 00:00:00', 1, NULL, 1, 58, 93, NULL, 0, NULL, NULL, 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (86, '测试课程4', 'http://file.lwuchang.com/template/file/课程封面.png', '测试课程4', '0000-00-00 00:00:00', 1, NULL, 1, 58, 93, NULL, 0, NULL, NULL, 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (93, '测试课程5', 'http://file.lwuchang.com/template/file/课程封面.png', '测试课程1', '0000-00-00 00:00:00', 0, NULL, 2, 58, 93, '0000-00-00 00:00:00', 0, NULL, '43,198,216', 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (94, '测试课程1', 'http://file.lwuchang.com/template/file/课程封面.png', '朱方方测试课程1', '0000-00-00 00:00:00', 0, NULL, 2, 42, 93, '0000-00-00 00:00:00', 0, NULL, NULL, 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (95, '测试课程4', 'http://file.lwuchang.com/template/file/课程封面.png', '测试课程4', '0000-00-00 00:00:00', 1, NULL, 1, 42, 93, NULL, 0, NULL, NULL, 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (99, '测试课程4', 'http://file.lwuchang.com/template/file/课程封面.png', '测试课程4', '0000-00-00 00:00:00', 1, NULL, 1, 42, 93, NULL, 0, NULL, NULL, 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (100, '测试课程4', 'http://file.lwuchang.com/template/file/课程封面.png', '测试课程4', '0000-00-00 00:00:00', 1, NULL, 1, 42, 93, NULL, 0, NULL, NULL, 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (103, '测试课程7', 'http://file.lwuchang.com/template/file/课程封面.png', '测试课程7', '0000-00-00 00:00:00', 1, NULL, 1, 42, 93, NULL, 0, NULL, NULL, 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (104, '测试课程8', 'http://file.lwuchang.com/template/file/课程封面.png', '​测试课程8', '0000-00-00 00:00:00', 1, NULL, 1, 42, 93, NULL, 0, NULL, NULL, 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (105, '测试课程9', 'http://file.lwuchang.com/template/file/课程封面.png', '测试课程9', '0000-00-00 00:00:00', 1, NULL, 1, 42, 93, NULL, 0, NULL, NULL, 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (106, '测试1111', 'http://file.lwuchang.com/image/582f97b3-5a5f-413a-8509-558ebbccc332/图片2.png', '121321', '0000-00-00 00:00:00', 1, NULL, 3, 42, 93, '0000-00-00 00:00:00', 0, NULL, '43', 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (107, '111111', 'http://file.lwuchang.com/image/fbab84c1-e476-4da7-819e-a0819220899a/图片2.png', '12313213123213122313<img class=\"sdd-image\" src=\"http://file.lwuchang.com/image/0981a12a-0ac6-494c-9e46-f918d4dba0a5/推箱子2.gif\" _src=\"http://file.lwuchang.com/image/0981a12a-0ac6-494c-9e46-f918d4dba0a5/推箱子2.gif\" alt=\"推箱子2.gif\">', '0000-00-00 00:00:00', 1, NULL, 1, 42, 101, NULL, 0, NULL, NULL, 'null_101', 34, NULL, 1);
INSERT INTO `t_course` VALUES (108, '1123', 'http://file.lwuchang.com/template/file/课程封面.png', '1312', '0000-00-00 00:00:00', 1, NULL, 3, 42, 94, '0000-00-00 00:00:00', 0, NULL, NULL, 'null_94', 36, NULL, 0);
INSERT INTO `t_course` VALUES (109, '1', 'http://file.lwuchang.com/template/file/课程封面.png', '1', '0000-00-00 00:00:00', 1, NULL, 1, 42, 94, NULL, 0, NULL, NULL, 'null_94', 36, NULL, 0);
INSERT INTO `t_course` VALUES (110, '123', 'http://file.lwuchang.com/template/file/课程封面.png', '123', '0000-00-00 00:00:00', 1, NULL, 2, 42, 94, '0000-00-00 00:00:00', 0, NULL, NULL, 'null_94', 36, 18, 0);
INSERT INTO `t_course` VALUES (112, '测试课程2', 'http://file.lwuchang.com/template/file/课程封面.png', '<em>测试课程2描述</em>', '0000-00-00 00:00:00', 0, NULL, 3, 42, 94, '2023-06-19 16:02:07', 1, NULL, NULL, 'null_94', 36, NULL, 0);
INSERT INTO `t_course` VALUES (114, '朱方方测试课程2', 'http://file.lwuchang.com/template/file/课程封面.png', '朱方方测试课程2', '0000-00-00 00:00:00', 1, NULL, 1, 42, 93, NULL, 0, NULL, NULL, 'null_93', 34, NULL, 0);
INSERT INTO `t_course` VALUES (116, '朱方方测试课程3', 'http://file.lwuchang.com/template/file/课程封面.png', '朱方方测试课程3', '0000-00-00 00:00:00', 0, NULL, 1, 42, 93, NULL, 0, NULL, NULL, 'null_93', 34, NULL, 1);
INSERT INTO `t_course` VALUES (117, '测试课程9', 'http://file.lwuchang.com/template/file/课程封面.png', '1234', '2023-06-19 10:21:04', 1, NULL, 1, 42, 94, NULL, 0, NULL, NULL, 'null_94', 36, 18, 2);
INSERT INTO `t_course` VALUES (118, '测试课程9', 'http://file.lwuchang.com/template/file/课程封面.png', '12', '2023-06-19 10:24:56', 1, NULL, 1, 42, 94, NULL, 0, NULL, NULL, 'null_94', 36, 18, 1);
INSERT INTO `t_course` VALUES (119, '测试上传视频', 'http://file.lwuchang.com/image/380bc3f9-0d02-48f9-82ca-60982cfcfa7c/IMG_20200925_093152.jpg', '测试上传视频', '2023-06-19 16:12:06', 0, NULL, 2, 42, 94, '2023-06-19 21:14:27', 1, NULL, NULL, 'null_94', 36, 18, 0);

-- ----------------------------
-- Table structure for t_course_category
-- ----------------------------
DROP TABLE IF EXISTS `t_course_category`;
CREATE TABLE `t_course_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_order` int(11) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course_category
-- ----------------------------

-- ----------------------------
-- Table structure for t_course_category_new
-- ----------------------------
DROP TABLE IF EXISTS `t_course_category_new`;
CREATE TABLE `t_course_category_new`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ord` int(11) NULL DEFAULT 0,
  `category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course_category_new
-- ----------------------------
INSERT INTO `t_course_category_new` VALUES (93, '岗位能力1', '岗位能力1', 'null_93', NULL, 2, 34);
INSERT INTO `t_course_category_new` VALUES (94, '岗位能力2', '岗位能力2描述', 'null_94', NULL, 0, 36);
INSERT INTO `t_course_category_new` VALUES (101, '岗位能力5', '岗位能力5描述', 'null_101', NULL, 0, 34);
INSERT INTO `t_course_category_new` VALUES (106, '岗位能力6', '岗位能力6描述', 'null_106', NULL, 1, 36);
INSERT INTO `t_course_category_new` VALUES (107, '岗位能力77', '岗位能力7描述', 'null_107', NULL, 5, 36);
INSERT INTO `t_course_category_new` VALUES (108, '岗位能力8', '岗位能力8描述', 'null_108', NULL, 3, 36);
INSERT INTO `t_course_category_new` VALUES (112, '岗位能力9', '岗位能力9描述', 'null_112', NULL, 5, 36);

-- ----------------------------
-- Table structure for t_course_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_course_comment`;
CREATE TABLE `t_course_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` int(11) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course_comment
-- ----------------------------
INSERT INTO `t_course_comment` VALUES (42, '不错', 3, 71, 199, '0000-00-00 00:00:00.000000', NULL, 0);
INSERT INTO `t_course_comment` VALUES (43, '不好看', 1, 71, 199, '0000-00-00 00:00:00.000000', NULL, 0);
INSERT INTO `t_course_comment` VALUES (44, 'good!', 4, 74, 199, '0000-00-00 00:00:00.000000', NULL, 0);
INSERT INTO `t_course_comment` VALUES (45, '内容清晰易懂', 5, 73, 44, '0000-00-00 00:00:00.000000', NULL, 0);
INSERT INTO `t_course_comment` VALUES (46, '123', 3, 94, 199, '0000-00-00 00:00:00.000000', NULL, 0);
INSERT INTO `t_course_comment` VALUES (47, '123', 3, 94, 199, '0000-00-00 00:00:00.000000', NULL, 0);
INSERT INTO `t_course_comment` VALUES (48, 's', 3, 94, 44, '0000-00-00 00:00:00.000000', NULL, 0);
INSERT INTO `t_course_comment` VALUES (49, 'a', 4, 94, 44, '0000-00-00 00:00:00.000000', NULL, 0);

-- ----------------------------
-- Table structure for t_course_material
-- ----------------------------
DROP TABLE IF EXISTS `t_course_material`;
CREATE TABLE `t_course_material`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  `down_count` int(11) NULL DEFAULT 0,
  `created` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `deleted` int(11) NULL DEFAULT 0,
  `ftype` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `create_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course_material
-- ----------------------------

-- ----------------------------
-- Table structure for t_course_prepose
-- ----------------------------
DROP TABLE IF EXISTS `t_course_prepose`;
CREATE TABLE `t_course_prepose`  (
  `a_id` int(11) NULL DEFAULT NULL,
  `b_id` int(11) NULL DEFAULT NULL,
  UNIQUE INDEX `t_course_prepose_INDEX_1`(`a_id`, `b_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course_prepose
-- ----------------------------
INSERT INTO `t_course_prepose` VALUES (3, 71);
INSERT INTO `t_course_prepose` VALUES (3, 72);
INSERT INTO `t_course_prepose` VALUES (72, 71);
INSERT INTO `t_course_prepose` VALUES (73, 77);
INSERT INTO `t_course_prepose` VALUES (74, 73);
INSERT INTO `t_course_prepose` VALUES (77, 73);
INSERT INTO `t_course_prepose` VALUES (77, 74);
INSERT INTO `t_course_prepose` VALUES (78, 74);
INSERT INTO `t_course_prepose` VALUES (78, 77);
INSERT INTO `t_course_prepose` VALUES (112, 94);

-- ----------------------------
-- Table structure for t_course_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_course_tag`;
CREATE TABLE `t_course_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 1,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course_tag
-- ----------------------------

-- ----------------------------
-- Table structure for t_course_tag_to_user
-- ----------------------------
DROP TABLE IF EXISTS `t_course_tag_to_user`;
CREATE TABLE `t_course_tag_to_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course_tag_to_user
-- ----------------------------

-- ----------------------------
-- Table structure for t_course_to_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_course_to_tag`;
CREATE TABLE `t_course_to_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course_to_tag
-- ----------------------------

-- ----------------------------
-- Table structure for t_course_user
-- ----------------------------
DROP TABLE IF EXISTS `t_course_user`;
CREATE TABLE `t_course_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NULL DEFAULT NULL,
  `create_by` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course_user
-- ----------------------------
INSERT INTO `t_course_user` VALUES (37, 68, 44, '0000-00-00 00:00:00');
INSERT INTO `t_course_user` VALUES (38, 71, 199, '0000-00-00 00:00:00');
INSERT INTO `t_course_user` VALUES (39, 72, 199, '0000-00-00 00:00:00');
INSERT INTO `t_course_user` VALUES (40, 74, 199, '0000-00-00 00:00:00');
INSERT INTO `t_course_user` VALUES (41, 77, 44, '0000-00-00 00:00:00');
INSERT INTO `t_course_user` VALUES (42, 73, 44, '0000-00-00 00:00:00');
INSERT INTO `t_course_user` VALUES (43, 94, 199, '0000-00-00 00:00:00');
INSERT INTO `t_course_user` VALUES (44, 94, 210, '2023-06-19 20:18:57');

-- ----------------------------
-- Table structure for t_course_video
-- ----------------------------
DROP TABLE IF EXISTS `t_course_video`;
CREATE TABLE `t_course_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `course_category_id` int(11) NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  `video_length` int(11) NULL DEFAULT NULL,
  `item_order` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course_video
-- ----------------------------
INSERT INTO `t_course_video` VALUES (90, '1659090080890', 43, '0000-00-00 00:00:00', 0, NULL, 93, 'http://file.lwuchang.com/course/0b97c5fe-66b1-44db-8de1-1bbe24525456/1659090080890.mp4', '1659090080890.mp4', 71, 33, 1);
INSERT INTO `t_course_video` VALUES (91, '网络技术', 43, '0000-00-00 00:00:00', 0, NULL, 93, 'http://file.lwuchang.com/course/45ec29f4-d4e8-473f-8504-aa51055ff496/网络技术.mp4', '网络技术.mp4', 72, 439, 1);
INSERT INTO `t_course_video` VALUES (92, '1659090080890', 43, '0000-00-00 00:00:00', 0, NULL, 94, 'http://file.lwuchang.com/course/d4fb7556-b025-4b45-ab7d-58ed69116c28/1659090080890.mp4', '1659090080890.mp4', 73, 33, 1);
INSERT INTO `t_course_video` VALUES (93, '1659090080890', 198, '0000-00-00 00:00:00', 0, NULL, 94, 'http://file.lwuchang.com/course/218a7eab-3616-4534-84c2-4ca33a7fe030/1659090080890.mp4', '1659090080890.mp4', 74, 33, 1);
INSERT INTO `t_course_video` VALUES (94, '网络技术', 43, '0000-00-00 00:00:00', 0, NULL, 93, 'http://file.lwuchang.com/course/9bc4d28c-9ccf-431a-b035-4bed1d272a08/网络技术.mp4', '网络技术.mp4', 75, 439, 1);
INSERT INTO `t_course_video` VALUES (95, '网络技术', 43, '0000-00-00 00:00:00', 0, NULL, 93, 'http://file.lwuchang.com/course/65175623-c947-4b62-a820-843ac24cf394/网络技术.mp4', '网络技术.mp4', 76, 439, 1);
INSERT INTO `t_course_video` VALUES (96, '网络技术', 43, '0000-00-00 00:00:00', 0, NULL, 93, 'http://file.lwuchang.com/course/fb5a594d-2a8e-4516-a54c-1a4283b9532a/网络技术.mp4', '网络技术.mp4', 77, 439, 1);
INSERT INTO `t_course_video` VALUES (97, '网络技术', 43, '0000-00-00 00:00:00', 0, NULL, 93, 'http://file.lwuchang.com/course/30620cd2-19b1-43c1-a7f5-1535419d208b/网络技术.mp4', '网络技术.mp4', 78, 439, 1);
INSERT INTO `t_course_video` VALUES (98, '网络技术', 43, '0000-00-00 00:00:00', 1, NULL, 93, 'http://file.lwuchang.com/course/02be5d17-48dd-482b-b790-515e2020d917/网络技术.mp4', '网络技术.mp4', 80, 439, 1);
INSERT INTO `t_course_video` VALUES (99, '网络技术', 43, '0000-00-00 00:00:00', 0, NULL, 93, 'http://file.lwuchang.com/course/cc09a67e-1ac5-4dee-8b41-b01302b5ea03/网络技术.mp4', '网络技术.mp4', 80, 439, 1);
INSERT INTO `t_course_video` VALUES (100, '网络技术', 43, '0000-00-00 00:00:00', 0, NULL, 93, 'http://file.lwuchang.com/course/e8e646f4-81bc-4483-819b-089dec99d90f/网络技术.mp4', '网络技术.mp4', 81, 439, 1);
INSERT INTO `t_course_video` VALUES (101, '网络技术', 42, '0000-00-00 00:00:00', 1, NULL, 93, 'http://file.lwuchang.com/course/512a28c8-f6a3-44cc-b712-2cee67e2acb4/网络技术.mp4', '网络技术.mp4', 94, 439, 1);
INSERT INTO `t_course_video` VALUES (102, 'Screenrecorder-2020-06-22-21-17-33-62', 42, '0000-00-00 00:00:00', 0, NULL, 94, 'http://file.lwuchang.com/course/05eaa108-aa66-44b7-b361-08590147ef30/Screenrecorder-2020-06-22-21-17-33-62.mp4', 'Screenrecorder-2020-06-22-21-17-33-62.mp4', 112, 2, 1);
INSERT INTO `t_course_video` VALUES (103, 'Screenrecorder-2020-05-11-17-13-54-625', 42, '2023-06-19 16:12:06', 0, NULL, 94, 'http://file.lwuchang.com/course/3152c480-9ee3-47fd-b424-8b91da6b8720/Screenrecorder-2020-05-11-17-13-54-625.mp4', 'Screenrecorder-2020-05-11-17-13-54-625.mp4', 119, 29, 1);

-- ----------------------------
-- Table structure for t_course_video_watch
-- ----------------------------
DROP TABLE IF EXISTS `t_course_video_watch`;
CREATE TABLE `t_course_video_watch`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `course_video_id` int(11) NULL DEFAULT NULL,
  `current_watch_length` int(11) NULL DEFAULT NULL,
  `completed` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course_video_watch
-- ----------------------------
INSERT INTO `t_course_video_watch` VALUES (31, 71, 199, '0000-00-00 00:00:00.000000', NULL, 90, 33, 1);
INSERT INTO `t_course_video_watch` VALUES (32, 74, 199, '0000-00-00 00:00:00.000000', NULL, 93, 33, 1);
INSERT INTO `t_course_video_watch` VALUES (33, 77, 44, '0000-00-00 00:00:00.000000', NULL, 96, 180, 0);

-- ----------------------------
-- Table structure for t_course_video_watch_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_course_video_watch_detail`;
CREATE TABLE `t_course_video_watch_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_video_id` int(11) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  `watch_interval` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 395 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course_video_watch_detail
-- ----------------------------
INSERT INTO `t_course_video_watch_detail` VALUES (369, 90, 199, '0000-00-00 00:00:00.000000', NULL, 71, 33);
INSERT INTO `t_course_video_watch_detail` VALUES (370, 90, 199, '0000-00-00 00:00:00.000000', NULL, 71, 33);
INSERT INTO `t_course_video_watch_detail` VALUES (371, 93, 199, '0000-00-00 00:00:00.000000', NULL, 74, 33);
INSERT INTO `t_course_video_watch_detail` VALUES (372, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (373, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (374, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (375, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (376, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (377, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (378, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (379, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (380, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (381, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (382, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (383, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (384, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (385, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (386, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (387, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (388, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (389, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (390, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (391, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 19);
INSERT INTO `t_course_video_watch_detail` VALUES (392, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (393, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);
INSERT INTO `t_course_video_watch_detail` VALUES (394, 96, 44, '0000-00-00 00:00:00.000000', NULL, 77, 60);

-- ----------------------------
-- Table structure for t_credential_template
-- ----------------------------
DROP TABLE IF EXISTS `t_credential_template`;
CREATE TABLE `t_credential_template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_name_x` int(11) NULL DEFAULT NULL,
  `real_name_y` int(11) NULL DEFAULT NULL,
  `exam_paper_name_x` int(11) NULL DEFAULT NULL,
  `exam_paper_name_y` int(11) NULL DEFAULT NULL,
  `create_time_x` int(11) NULL DEFAULT NULL,
  `create_time_y` int(11) NULL DEFAULT NULL,
  `template_image_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `real_name_left` int(11) NULL DEFAULT NULL,
  `real_name_top` int(11) NULL DEFAULT NULL,
  `exam_paper_name_left` int(11) NULL DEFAULT NULL,
  `exam_paper_name_top` int(11) NULL DEFAULT NULL,
  `create_time_left` int(11) NULL DEFAULT NULL,
  `create_time_top` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_credential_template
-- ----------------------------
INSERT INTO `t_credential_template` VALUES (26, '荣誉证书', 212, 315, 459, 473, 841, 721, 'http://file.lwuchang.com/credential/51f71860-c134-4060-ab72-941d8f75cf16/证书模板1.jpg', 43, '0000-00-00 00:00:00.000000', 0, 386, 270, 633, 379, 1028, 577);
INSERT INTO `t_credential_template` VALUES (27, '22', 157, 157, 417, 164, 663, 167, 'http://file.lwuchang.com/credential/74ac0631-8d15-4449-9766-19f84c33fad3/证书模板1.jpg', 43, '0000-00-00 00:00:00.000000', 0, 331, 113, 591, 70, 850, 23);
INSERT INTO `t_credential_template` VALUES (28, '22', 33, 115, 74, 211, 202, 217, 'http://file.lwuchang.com/credential/c87bddb5-1221-46d8-84f0-ce5339c4c019/证书模板1.jpg', 43, '0000-00-00 00:00:00.000000', 0, 207, 70, 248, 117, 389, 73);
INSERT INTO `t_credential_template` VALUES (29, '33', 114, 142, 114, 209, 161, 274, 'http://file.lwuchang.com/credential/86c02664-d59e-45ba-a821-347024b50682/证书模板1.jpg', 43, '0000-00-00 00:00:00.000000', 0, 288, 97, 288, 115, 348, 130);
INSERT INTO `t_credential_template` VALUES (30, '44', 52, 104, 161, 208, 252, 181, 'http://file.lwuchang.com/credential/7abb91a0-4c24-4e0d-a1ad-481e643274a3/证书模板1.jpg', 43, '0000-00-00 00:00:00.000000', 0, 226, 59, 335, 114, 439, 37);
INSERT INTO `t_credential_template` VALUES (31, '111111', 63, 130, 208, 130, 204, 180, 'http://file.lwuchang.com/credential/5a4cbd2d-a948-40f9-8a19-9fb565345cdc/QQ快捷键.jpg', 42, '0000-00-00 00:00:00.000000', 1, 237, 85, 382, 35, 391, 35);

-- ----------------------------
-- Table structure for t_degree
-- ----------------------------
DROP TABLE IF EXISTS `t_degree`;
CREATE TABLE `t_degree`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_order` int(11) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_degree
-- ----------------------------

-- ----------------------------
-- Table structure for t_env_account
-- ----------------------------
DROP TABLE IF EXISTS `t_env_account`;
CREATE TABLE `t_env_account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `model` int(11) NULL DEFAULT NULL,
  `create_by` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `env_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_env_account
-- ----------------------------
INSERT INTO `t_env_account` VALUES (15, '用户名:张三\n密码:123456', 0, 42, '0000-00-00 00:00:00.000000', '一个人一个环境', 'http://139.196.27.90:8081', 12);
INSERT INTO `t_env_account` VALUES (27, 'asasd', 0, 42, '0000-00-00 00:00:00.000000', 'asdasd', 'http://www.baidu.com', 12);
INSERT INTO `t_env_account` VALUES (28, 'hahaha', 0, 42, '0000-00-00 00:00:00.000000', 'sssss', 'http://123.com', 12);

-- ----------------------------
-- Table structure for t_env_account_student
-- ----------------------------
DROP TABLE IF EXISTS `t_env_account_student`;
CREATE TABLE `t_env_account_student`  (
  `a_id` int(11) NULL DEFAULT NULL,
  `b_id` int(11) NULL DEFAULT NULL,
  UNIQUE INDEX `t_env_account_student_a_id_b_id_IDX`(`a_id`, `b_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_env_account_student
-- ----------------------------
INSERT INTO `t_env_account_student` VALUES (27, 208);
INSERT INTO `t_env_account_student` VALUES (27, 209);
INSERT INTO `t_env_account_student` VALUES (27, 210);
INSERT INTO `t_env_account_student` VALUES (27, 211);
INSERT INTO `t_env_account_student` VALUES (27, 212);

-- ----------------------------
-- Table structure for t_env_apply
-- ----------------------------
DROP TABLE IF EXISTS `t_env_apply`;
CREATE TABLE `t_env_apply`  (
  `id` int(11) NULL DEFAULT NULL,
  `type_id` int(11) NULL DEFAULT NULL,
  `create_by` int(11) NULL DEFAULT NULL,
  `checker` int(11) NULL DEFAULT NULL,
  `check_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `state` int(11) NULL DEFAULT NULL,
  `apply_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `check_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expire_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_env_apply
-- ----------------------------
INSERT INTO `t_env_apply` VALUES (9, 5, 44, NULL, '0000-00-00 00:00:00', 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_env_type
-- ----------------------------
DROP TABLE IF EXISTS `t_env_type`;
CREATE TABLE `t_env_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `model` int(11) NULL DEFAULT NULL,
  `create_by` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `suit_app` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `guide` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ord` int(11) NULL DEFAULT 0,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_env_type
-- ----------------------------
INSERT INTO `t_env_type` VALUES (4, 'BBGW协同场景', 1, 214, '0000-00-00 00:00:00', 'BBGW协同场景', 'BBGW协同场景', '无', 3, NULL, NULL);
INSERT INTO `t_env_type` VALUES (5, 'GBRM协同场景', 1, 214, '0000-00-00 00:00:00', 'GBRM协同场景', 'GBRM协同场景', '无', 1, NULL, NULL);
INSERT INTO `t_env_type` VALUES (13, '人资训练环境', 0, 43, '0000-00-00 00:00:00', '人资训练环境', '人资训练环境', NULL, NULL, 'http://rz.com', NULL);
INSERT INTO `t_env_type` VALUES (14, '基础开发运维环境', 0, 43, '0000-00-00 00:00:00', '基础开发运维环境', '基础开发运维环境', NULL, NULL, 'http://aaa.com', NULL);

-- ----------------------------
-- Table structure for t_exam_paper
-- ----------------------------
DROP TABLE IF EXISTS `t_exam_paper`;
CREATE TABLE `t_exam_paper`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `paper_type` int(11) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `question_count` int(11) NULL DEFAULT NULL,
  `suggest_time` int(11) NULL DEFAULT NULL,
  `limit_start_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `limit_end_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paper_frame_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `association_id` int(11) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `publish_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `question_item_mess` tinyint(4) NULL DEFAULT NULL,
  `question_mess` tinyint(4) NULL DEFAULT NULL,
  `cheat` tinyint(4) NULL DEFAULT NULL,
  `degree_id` int(11) NULL DEFAULT NULL,
  `pass_score` int(11) NULL DEFAULT NULL,
  `credential_template_id` int(11) NULL DEFAULT NULL,
  `post_id` int(11) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 231 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_exam_paper
-- ----------------------------
INSERT INTO `t_exam_paper` VALUES (217, '试卷1', 34, 1, 30, 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3b6e1126-52c4-4105-8848-831993ad9265', 43, '0000-00-00 00:00:00', 0, NULL, 1, 2, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 30, NULL, 19, 71);
INSERT INTO `t_exam_paper` VALUES (218, '试卷2', 34, 1, 30, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '781ad6fa-ae99-479e-8dd8-e401541bbb3f', 43, '0000-00-00 00:00:00', 0, NULL, 1, 3, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 30, NULL, 19, 72);
INSERT INTO `t_exam_paper` VALUES (219, '33', 34, 1, 30, 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '98f6c8de-b965-4ab5-b627-5d11103d20fc', 43, '0000-00-00 00:00:00', 1, NULL, 1, 2, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 30, 26, 19, 71);
INSERT INTO `t_exam_paper` VALUES (220, '411', 34, 1, 40, 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'e96e4994-eb54-4585-a1aa-80186421cc41', 43, '0000-00-00 00:00:00', 1, NULL, 1, 3, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 50, NULL, NULL, NULL);
INSERT INTO `t_exam_paper` VALUES (221, '666', 34, 1, 90, 3, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'b13c586f-af5b-425c-bfa4-81789d790b96', 42, '0000-00-00 00:00:00', 1, NULL, 1, 2, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 20, 27, 19, 72);
INSERT INTO `t_exam_paper` VALUES (222, '1111', 36, 6, 80, 3, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'a184fbe2-8495-45cf-85c2-b9f81275798c', 42, '0000-00-00 00:00:00', 0, 24, 1, 2, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 60, NULL, NULL, NULL);
INSERT INTO `t_exam_paper` VALUES (223, '实操题测试', 36, 1, 30, 1, 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2ed40199-44b9-42c8-a39a-77fffcf5f33a', 42, '0000-00-00 00:00:00', 0, NULL, 1, 2, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 30, NULL, NULL, NULL);
INSERT INTO `t_exam_paper` VALUES (224, '测试题序打乱', 36, 1, 485, 14, 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'acca7f25-88d9-4081-8ef4-01540472628a', 42, '0000-00-00 00:00:00', 0, NULL, 1, 2, '0000-00-00 00:00:00', NULL, 1, NULL, NULL, 400, NULL, NULL, NULL);
INSERT INTO `t_exam_paper` VALUES (225, '测试选项打乱', 36, 1, 485, 14, 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'dd212bdc-13ac-4c0e-9832-277a3cb6411e', 42, '0000-00-00 00:00:00', 0, NULL, 1, 2, '0000-00-00 00:00:00', 1, 0, NULL, NULL, 400, NULL, NULL, NULL);
INSERT INTO `t_exam_paper` VALUES (226, '测试防作弊', 36, 1, 485, 14, 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '67f78fcd-c290-47d0-a46f-cf2cb1ae521c', 42, '0000-00-00 00:00:00', 0, NULL, 1, 2, '0000-00-00 00:00:00', 0, 0, 1, NULL, 400, NULL, NULL, NULL);
INSERT INTO `t_exam_paper` VALUES (227, '测试选项打乱2', 36, 1, 80, 3, 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'a82028b1-3113-4656-9d39-86f4056dfc04', 42, '0000-00-00 00:00:00', 0, NULL, 1, 2, '0000-00-00 00:00:00', 1, 0, NULL, NULL, 400, NULL, NULL, NULL);
INSERT INTO `t_exam_paper` VALUES (228, '任务试卷1', 36, 6, 80, 2, 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'cf879f6a-18b0-41e7-b008-46241bcfa459', 42, '0000-00-00 00:00:00', 0, 25, 1, 2, '0000-00-00 00:00:00', NULL, 1, 0, NULL, 20, NULL, 20, 84);
INSERT INTO `t_exam_paper` VALUES (229, '任务试卷2', 36, 6, 80, 2, 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '409fae5e-13cf-4917-b044-31830185fa65', 42, '0000-00-00 00:00:00', 0, 26, 1, 2, '0000-00-00 00:00:00', NULL, 1, 0, NULL, 20, NULL, 20, 84);
INSERT INTO `t_exam_paper` VALUES (230, '任务试卷2', 36, 6, 80, 2, 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6e4e7c0a-2c34-43fe-8859-a6db7aef847c', 42, '0000-00-00 00:00:00', 0, 27, 1, 2, '0000-00-00 00:00:00', NULL, 1, 0, NULL, 20, NULL, 20, 84);

-- ----------------------------
-- Table structure for t_exam_paper_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_exam_paper_answer`;
CREATE TABLE `t_exam_paper_answer`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `exam_paper_id` bigint(20) NULL DEFAULT NULL,
  `paper_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paper_type` int(11) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `system_score` int(11) NULL DEFAULT NULL,
  `user_score` int(11) NULL DEFAULT NULL,
  `paper_score` int(11) NULL DEFAULT NULL,
  `question_correct` int(11) NULL DEFAULT NULL,
  `question_count` int(11) NULL DEFAULT NULL,
  `do_time` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `association_id` int(11) NULL DEFAULT NULL,
  `judge_user` int(11) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `publish_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `answer_frame_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 376 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_exam_paper_answer
-- ----------------------------
INSERT INTO `t_exam_paper_answer` VALUES (356, 217, '试卷1', 1, 34, 0, 0, 30, 0, 1, 9, 2, 199, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', '4b9546b0-d864-45bc-8706-b85b3792263b', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (357, 217, '试卷1', 1, 34, 30, 30, 30, 1, 1, 2, 2, 199, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', '6f75668b-88f8-4bed-987c-dd797a3cf346', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (358, 218, '试卷2', 1, 34, 30, 30, 30, 1, 1, 7, 2, 199, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', '623d25b1-182d-4a5f-872d-df81e87a3d46', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (359, 217, '试卷1', 1, 34, 30, 30, 30, 1, 1, 4, 2, 199, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', '1b18234f-aa09-4f85-be8f-f20d0859b169', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (360, 217, '试卷1', 1, 34, 0, 0, 30, 0, 1, 3, 2, 199, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', 'd942b1c6-b636-43f3-96b0-054fa0e4db36', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (361, 217, '试卷1', 1, 34, 0, 0, 30, 0, 1, 2, 2, 44, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', '5e0948aa-077f-482b-8656-e0264688a08c', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (362, 217, '试卷1', 1, 34, 0, 0, 30, 0, 1, 4, 2, 44, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', 'a3fa7385-1ba0-407f-bc5f-5cc8c53269ed', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (363, 219, '33', 1, 34, 30, 30, 30, 1, 1, 2, 2, 44, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', '9ade3b7d-a5e9-4358-a1ea-b995fda10193', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (364, 220, '411', 1, 34, 0, 0, 40, 0, 1, 300, 2, 44, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', 'ba4d4ca2-5fb2-45ef-b249-49701142fbff', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (365, 220, '411', 1, 34, 0, 0, 40, 0, 1, 43, 2, 44, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', '879b82e2-2cbe-42e3-8ff3-eb4d3cd4ced0', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (366, 217, '试卷1', 1, 34, 0, 0, 30, 0, 1, 175, 2, 44, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', '8db36040-300c-4615-b272-ed729e469f6e', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (367, 227, '测试选项打乱2', 1, 36, 30, 30, 80, 1, 3, 20, 2, 44, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', '242afbcd-b3f3-4fc0-8a4f-7734f65df383', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (368, 227, '测试选项打乱2', 1, 36, 60, 60, 80, 2, 3, 19, 2, 44, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', '2961ce63-156a-4bd5-b21c-eca9afdf8b74', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (369, 227, '测试选项打乱2', 1, 36, 80, 80, 80, 3, 3, 11, 2, 44, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', '40dc72ab-5200-4801-823e-220e3bc1c3b1', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (370, 227, '测试选项打乱2', 1, 36, 80, 80, 80, 3, 3, 16, 2, 44, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', '39746b4d-fe4d-421c-8447-6eefd71c12b6', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (371, 227, '测试选项打乱2', 1, 36, 80, 80, 80, 3, 3, 10, 2, 44, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', '6a2d1ed6-e3bb-45c5-b857-7c7e96ad7620', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (372, 227, '测试选项打乱2', 1, 36, 80, 80, 80, 3, 3, 19, 2, 44, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', 'bebbebe9-3b32-459f-bcc4-731885c98e9d', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (373, 226, '测试防作弊', 1, 36, 80, 80, 485, 3, 14, 35, 1, 44, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', '3c14a3e9-3f7d-4ddc-9e20-46aef7ae69e5', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (374, 226, '测试防作弊', 1, 36, 80, 80, 485, 3, 14, 164, 1, 44, '0000-00-00 00:00:00', NULL, NULL, 1, '0000-00-00 00:00:00', '8b436b7a-afeb-4d40-9358-0f1ad232d2cc', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (375, 226, '测试防作弊', 1, 36, 0, 0, 485, 0, 14, 3102, 1, 44, '2023-06-19 17:27:24', NULL, NULL, 1, '0000-00-00 00:00:00', '37a44d50-bce0-4f17-9976-4e8aa058f5ef', NULL);

-- ----------------------------
-- Table structure for t_exam_paper_answer_json
-- ----------------------------
DROP TABLE IF EXISTS `t_exam_paper_answer_json`;
CREATE TABLE `t_exam_paper_answer_json`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_exam_paper_answer_json
-- ----------------------------
INSERT INTO `t_exam_paper_answer_json` VALUES ('1b18234f-aa09-4f85-be8f-f20d0859b169', '{\"id\":\"1b18234f-aa09-4f85-be8f-f20d0859b169\",\"paperId\":217,\"doTime\":4,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[377],\"startDateTime\":1683098903205,\"submitDateTime\":1683098907615}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('242afbcd-b3f3-4fc0-8a4f-7734f65df383', '{\"id\":\"242afbcd-b3f3-4fc0-8a4f-7734f65df383\",\"paperId\":227,\"doTime\":20,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[378,379,377],\"startDateTime\":1685602481850,\"submitDateTime\":1685602502310}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('2961ce63-156a-4bd5-b21c-eca9afdf8b74', '{\"id\":\"2961ce63-156a-4bd5-b21c-eca9afdf8b74\",\"paperId\":227,\"doTime\":19,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[378,379,377],\"startDateTime\":1685602534107,\"submitDateTime\":1685602553363}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('37a44d50-bce0-4f17-9976-4e8aa058f5ef', '{\"id\":\"37a44d50-bce0-4f17-9976-4e8aa058f5ef\",\"paperId\":226,\"doTime\":3102,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[378,379,377,380,381,393,392,395,394,391,389,390,382,396],\"startDateTime\":1687166841919,\"submitDateTime\":1687166843309}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('39746b4d-fe4d-421c-8447-6eefd71c12b6', '{\"id\":\"39746b4d-fe4d-421c-8447-6eefd71c12b6\",\"paperId\":227,\"doTime\":16,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[378,379,377],\"startDateTime\":1685602625402,\"submitDateTime\":1685602641855}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('3c14a3e9-3f7d-4ddc-9e20-46aef7ae69e5', '{\"id\":\"3c14a3e9-3f7d-4ddc-9e20-46aef7ae69e5\",\"paperId\":226,\"doTime\":35,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[378,379,377,380,381,393,392,395,394,391,389,390,382,396],\"startDateTime\":1685602766244,\"submitDateTime\":1685602802077}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('40dc72ab-5200-4801-823e-220e3bc1c3b1', '{\"id\":\"40dc72ab-5200-4801-823e-220e3bc1c3b1\",\"paperId\":227,\"doTime\":11,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[378,379,377],\"startDateTime\":1685602596167,\"submitDateTime\":1685602607847}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('4b9546b0-d864-45bc-8706-b85b3792263b', '{\"id\":\"4b9546b0-d864-45bc-8706-b85b3792263b\",\"paperId\":217,\"doTime\":9,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[377],\"startDateTime\":1683080881858,\"submitDateTime\":1683080891373}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('5e0948aa-077f-482b-8656-e0264688a08c', '{\"id\":\"5e0948aa-077f-482b-8656-e0264688a08c\",\"paperId\":217,\"doTime\":2,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[377],\"startDateTime\":1683185623951,\"submitDateTime\":1683185626029}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('623d25b1-182d-4a5f-872d-df81e87a3d46', '{\"id\":\"623d25b1-182d-4a5f-872d-df81e87a3d46\",\"paperId\":218,\"doTime\":7,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[378],\"startDateTime\":1683080959414,\"submitDateTime\":1683080967252}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('6a2d1ed6-e3bb-45c5-b857-7c7e96ad7620', '{\"id\":\"6a2d1ed6-e3bb-45c5-b857-7c7e96ad7620\",\"paperId\":227,\"doTime\":10,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[378,379,377],\"startDateTime\":1685602669823,\"submitDateTime\":1685602680341}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('6f75668b-88f8-4bed-987c-dd797a3cf346', '{\"id\":\"6f75668b-88f8-4bed-987c-dd797a3cf346\",\"paperId\":217,\"doTime\":2,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[377],\"startDateTime\":1683080939609,\"submitDateTime\":1683080941876}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('879b82e2-2cbe-42e3-8ff3-eb4d3cd4ced0', '{\"id\":\"879b82e2-2cbe-42e3-8ff3-eb4d3cd4ced0\",\"paperId\":220,\"doTime\":43,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[382],\"startDateTime\":1683429599425,\"submitDateTime\":1683853849942}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('8b436b7a-afeb-4d40-9358-0f1ad232d2cc', '{\"id\":\"8b436b7a-afeb-4d40-9358-0f1ad232d2cc\",\"paperId\":226,\"doTime\":164,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[378,379,377,380,381,393,392,395,394,391,389,390,382,396],\"startDateTime\":1685602840277,\"submitDateTime\":1685603013535}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('8db36040-300c-4615-b272-ed729e469f6e', '{\"id\":\"8db36040-300c-4615-b272-ed729e469f6e\",\"paperId\":217,\"doTime\":175,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[377],\"startDateTime\":1685501453165,\"submitDateTime\":1685586923133}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('9ade3b7d-a5e9-4358-a1ea-b995fda10193', '{\"id\":\"9ade3b7d-a5e9-4358-a1ea-b995fda10193\",\"paperId\":219,\"doTime\":2,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[377],\"startDateTime\":1683343553384,\"submitDateTime\":1683343556163}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('a3fa7385-1ba0-407f-bc5f-5cc8c53269ed', '{\"id\":\"a3fa7385-1ba0-407f-bc5f-5cc8c53269ed\",\"paperId\":217,\"doTime\":4,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[377],\"startDateTime\":1683208343317,\"submitDateTime\":1683208348192}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('ba4d4ca2-5fb2-45ef-b249-49701142fbff', '{\"id\":\"ba4d4ca2-5fb2-45ef-b249-49701142fbff\",\"paperId\":220,\"doTime\":300,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[382],\"startDateTime\":1683429134362,\"submitDateTime\":1683429435379}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('bebbebe9-3b32-459f-bcc4-731885c98e9d', '{\"id\":\"bebbebe9-3b32-459f-bcc4-731885c98e9d\",\"paperId\":227,\"doTime\":19,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[378,379,377],\"startDateTime\":1685602703471,\"submitDateTime\":1685602740754}');
INSERT INTO `t_exam_paper_answer_json` VALUES ('d942b1c6-b636-43f3-96b0-054fa0e4db36', '{\"id\":\"d942b1c6-b636-43f3-96b0-054fa0e4db36\",\"paperId\":217,\"doTime\":3,\"score\":null,\"questionAnswerFrameList\":null,\"questionIdSort\":[377],\"startDateTime\":1683098964491,\"submitDateTime\":1683098967895}');

-- ----------------------------
-- Table structure for t_exam_paper_json
-- ----------------------------
DROP TABLE IF EXISTS `t_exam_paper_json`;
CREATE TABLE `t_exam_paper_json`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_exam_paper_json
-- ----------------------------
INSERT INTO `t_exam_paper_json` VALUES ('2ed40199-44b9-42c8-a39a-77fffcf5f33a', '{\"id\":\"2ed40199-44b9-42c8-a39a-77fffcf5f33a\",\"examPaperItemFrames\":[{\"name\":\"实操\",\"examPaperItemQuestionFrames\":[{\"id\":396,\"questionFrameId\":\"f26c1dc0-df82-4d45-bad7-4f78b83b36b1\",\"trickScore\":\"3\",\"itemOrder\":1,\"childItemQuestion\":null}]}]}');
INSERT INTO `t_exam_paper_json` VALUES ('3b6e1126-52c4-4105-8848-831993ad9265', '{\"id\":\"3b6e1126-52c4-4105-8848-831993ad9265\",\"examPaperItemFrames\":[{\"name\":\"选择题\",\"examPaperItemQuestionFrames\":[{\"id\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"trickScore\":\"3\",\"itemOrder\":1,\"childItemQuestion\":null}]}]}');
INSERT INTO `t_exam_paper_json` VALUES ('409fae5e-13cf-4917-b044-31830185fa65', '{\"id\":\"409fae5e-13cf-4917-b044-31830185fa65\",\"examPaperItemFrames\":[{\"name\":\"填空题\",\"examPaperItemQuestionFrames\":[{\"id\":395,\"questionFrameId\":\"fa4defda-00e3-444e-98ab-4d52267e14c3\",\"trickScore\":\"4\",\"itemOrder\":1,\"childItemQuestion\":null},{\"id\":394,\"questionFrameId\":\"9710811f-35a2-4f72-8d82-88e6ca63f2c8\",\"trickScore\":\"4\",\"itemOrder\":2,\"childItemQuestion\":null}]}]}');
INSERT INTO `t_exam_paper_json` VALUES ('67f78fcd-c290-47d0-a46f-cf2cb1ae521c', '{\"id\":\"67f78fcd-c290-47d0-a46f-cf2cb1ae521c\",\"examPaperItemFrames\":[{\"name\":\"单选题\",\"examPaperItemQuestionFrames\":[{\"id\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"trickScore\":\"3\",\"itemOrder\":1,\"childItemQuestion\":null},{\"id\":379,\"questionFrameId\":\"fdfc7734-15c5-4584-8f20-637622e946df\",\"trickScore\":\"2\",\"itemOrder\":2,\"childItemQuestion\":null},{\"id\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"trickScore\":\"3\",\"itemOrder\":3,\"childItemQuestion\":null}]},{\"name\":\"多选题\",\"examPaperItemQuestionFrames\":[{\"id\":380,\"questionFrameId\":\"38759fb7-559c-4588-b4e8-71f9ec86838a\",\"trickScore\":\"3\",\"itemOrder\":4,\"childItemQuestion\":null}]},{\"name\":\"判断题\",\"examPaperItemQuestionFrames\":[{\"id\":381,\"questionFrameId\":\"3047ca34-6cf3-4faa-968e-62f7918cd5d4\",\"trickScore\":\"2.5\",\"itemOrder\":5,\"childItemQuestion\":null}]},{\"name\":\"填空题\",\"examPaperItemQuestionFrames\":[{\"id\":393,\"questionFrameId\":\"842a6bb9-5a69-4f0e-8ffd-9af984b3311d\",\"trickScore\":\"4\",\"itemOrder\":6,\"childItemQuestion\":null},{\"id\":392,\"questionFrameId\":\"058d2bfe-26bb-42f7-a566-113d33303e0b\",\"trickScore\":\"4\",\"itemOrder\":7,\"childItemQuestion\":null},{\"id\":395,\"questionFrameId\":\"fa4defda-00e3-444e-98ab-4d52267e14c3\",\"trickScore\":\"4\",\"itemOrder\":8,\"childItemQuestion\":null},{\"id\":394,\"questionFrameId\":\"9710811f-35a2-4f72-8d82-88e6ca63f2c8\",\"trickScore\":\"4\",\"itemOrder\":9,\"childItemQuestion\":null},{\"id\":391,\"questionFrameId\":\"70825ca5-d241-45ce-b6e2-e0e2a5811e3d\",\"trickScore\":\"4\",\"itemOrder\":10,\"childItemQuestion\":null},{\"id\":389,\"questionFrameId\":\"2829dcdc-f646-4bcb-97a4-066d86dc53a4\",\"trickScore\":\"4\",\"itemOrder\":11,\"childItemQuestion\":null},{\"id\":390,\"questionFrameId\":\"28749dbc-001d-4d4c-a08f-c0dddecd26e3\",\"trickScore\":\"4\",\"itemOrder\":12,\"childItemQuestion\":null},{\"id\":382,\"questionFrameId\":\"2954914c-ef71-4c22-ac72-86725791e968\",\"trickScore\":\"4\",\"itemOrder\":13,\"childItemQuestion\":null}]},{\"name\":\"模拟训练题\",\"examPaperItemQuestionFrames\":[{\"id\":396,\"questionFrameId\":\"f26c1dc0-df82-4d45-bad7-4f78b83b36b1\",\"trickScore\":\"3\",\"itemOrder\":14,\"childItemQuestion\":null}]}]}');
INSERT INTO `t_exam_paper_json` VALUES ('6e4e7c0a-2c34-43fe-8859-a6db7aef847c', '{\"id\":\"6e4e7c0a-2c34-43fe-8859-a6db7aef847c\",\"examPaperItemFrames\":[{\"name\":\"填空题\",\"examPaperItemQuestionFrames\":[{\"id\":395,\"questionFrameId\":\"fa4defda-00e3-444e-98ab-4d52267e14c3\",\"trickScore\":\"4\",\"itemOrder\":1,\"childItemQuestion\":null},{\"id\":394,\"questionFrameId\":\"9710811f-35a2-4f72-8d82-88e6ca63f2c8\",\"trickScore\":\"4\",\"itemOrder\":2,\"childItemQuestion\":null}]}]}');
INSERT INTO `t_exam_paper_json` VALUES ('781ad6fa-ae99-479e-8dd8-e401541bbb3f', '{\"id\":\"781ad6fa-ae99-479e-8dd8-e401541bbb3f\",\"examPaperItemFrames\":[{\"name\":\"选择题\",\"examPaperItemQuestionFrames\":[{\"id\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"trickScore\":\"3\",\"itemOrder\":1,\"childItemQuestion\":null}]}]}');
INSERT INTO `t_exam_paper_json` VALUES ('98f6c8de-b965-4ab5-b627-5d11103d20fc', '{\"id\":\"98f6c8de-b965-4ab5-b627-5d11103d20fc\",\"examPaperItemFrames\":[{\"name\":\"33\",\"examPaperItemQuestionFrames\":[{\"id\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"trickScore\":\"3\",\"itemOrder\":1,\"childItemQuestion\":null}]}]}');
INSERT INTO `t_exam_paper_json` VALUES ('a184fbe2-8495-45cf-85c2-b9f81275798c', '{\"id\":\"a184fbe2-8495-45cf-85c2-b9f81275798c\",\"examPaperItemFrames\":[{\"name\":\"单选题\",\"examPaperItemQuestionFrames\":[{\"id\":379,\"questionFrameId\":\"fdfc7734-15c5-4584-8f20-637622e946df\",\"trickScore\":\"2\",\"itemOrder\":1,\"childItemQuestion\":null},{\"id\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"trickScore\":\"3\",\"itemOrder\":2,\"childItemQuestion\":null},{\"id\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"trickScore\":\"3\",\"itemOrder\":3,\"childItemQuestion\":null}]}]}');
INSERT INTO `t_exam_paper_json` VALUES ('a82028b1-3113-4656-9d39-86f4056dfc04', '{\"id\":\"a82028b1-3113-4656-9d39-86f4056dfc04\",\"examPaperItemFrames\":[{\"name\":\"单选题\",\"examPaperItemQuestionFrames\":[{\"id\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"trickScore\":\"3\",\"itemOrder\":1,\"childItemQuestion\":null},{\"id\":379,\"questionFrameId\":\"fdfc7734-15c5-4584-8f20-637622e946df\",\"trickScore\":\"2\",\"itemOrder\":2,\"childItemQuestion\":null},{\"id\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"trickScore\":\"3\",\"itemOrder\":3,\"childItemQuestion\":null}]}]}');
INSERT INTO `t_exam_paper_json` VALUES ('acca7f25-88d9-4081-8ef4-01540472628a', '{\"id\":\"acca7f25-88d9-4081-8ef4-01540472628a\",\"examPaperItemFrames\":[{\"name\":\"单选题\",\"examPaperItemQuestionFrames\":[{\"id\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"trickScore\":\"3\",\"itemOrder\":1,\"childItemQuestion\":null},{\"id\":379,\"questionFrameId\":\"fdfc7734-15c5-4584-8f20-637622e946df\",\"trickScore\":\"2\",\"itemOrder\":2,\"childItemQuestion\":null},{\"id\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"trickScore\":\"3\",\"itemOrder\":3,\"childItemQuestion\":null}]},{\"name\":\"多选题\",\"examPaperItemQuestionFrames\":[{\"id\":380,\"questionFrameId\":\"38759fb7-559c-4588-b4e8-71f9ec86838a\",\"trickScore\":\"3\",\"itemOrder\":4,\"childItemQuestion\":null}]},{\"name\":\"判断题\",\"examPaperItemQuestionFrames\":[{\"id\":381,\"questionFrameId\":\"3047ca34-6cf3-4faa-968e-62f7918cd5d4\",\"trickScore\":\"2.5\",\"itemOrder\":5,\"childItemQuestion\":null}]},{\"name\":\"填空题\",\"examPaperItemQuestionFrames\":[{\"id\":393,\"questionFrameId\":\"842a6bb9-5a69-4f0e-8ffd-9af984b3311d\",\"trickScore\":\"4\",\"itemOrder\":6,\"childItemQuestion\":null},{\"id\":392,\"questionFrameId\":\"058d2bfe-26bb-42f7-a566-113d33303e0b\",\"trickScore\":\"4\",\"itemOrder\":7,\"childItemQuestion\":null},{\"id\":395,\"questionFrameId\":\"fa4defda-00e3-444e-98ab-4d52267e14c3\",\"trickScore\":\"4\",\"itemOrder\":8,\"childItemQuestion\":null},{\"id\":394,\"questionFrameId\":\"9710811f-35a2-4f72-8d82-88e6ca63f2c8\",\"trickScore\":\"4\",\"itemOrder\":9,\"childItemQuestion\":null},{\"id\":391,\"questionFrameId\":\"70825ca5-d241-45ce-b6e2-e0e2a5811e3d\",\"trickScore\":\"4\",\"itemOrder\":10,\"childItemQuestion\":null},{\"id\":389,\"questionFrameId\":\"2829dcdc-f646-4bcb-97a4-066d86dc53a4\",\"trickScore\":\"4\",\"itemOrder\":11,\"childItemQuestion\":null},{\"id\":390,\"questionFrameId\":\"28749dbc-001d-4d4c-a08f-c0dddecd26e3\",\"trickScore\":\"4\",\"itemOrder\":12,\"childItemQuestion\":null},{\"id\":382,\"questionFrameId\":\"2954914c-ef71-4c22-ac72-86725791e968\",\"trickScore\":\"4\",\"itemOrder\":13,\"childItemQuestion\":null}]},{\"name\":\"模拟训练题\",\"examPaperItemQuestionFrames\":[{\"id\":396,\"questionFrameId\":\"f26c1dc0-df82-4d45-bad7-4f78b83b36b1\",\"trickScore\":\"3\",\"itemOrder\":14,\"childItemQuestion\":null}]}]}');
INSERT INTO `t_exam_paper_json` VALUES ('b13c586f-af5b-425c-bfa4-81789d790b96', '{\"id\":\"b13c586f-af5b-425c-bfa4-81789d790b96\",\"examPaperItemFrames\":[{\"name\":\"单选\",\"examPaperItemQuestionFrames\":[{\"id\":385,\"questionFrameId\":\"a178f95a-add6-45e6-aedb-e46577b7e3c4\",\"trickScore\":\"1\",\"itemOrder\":1,\"childItemQuestion\":null},{\"id\":384,\"questionFrameId\":\"31a0014c-993f-448f-8717-8afa4dd00038\",\"trickScore\":\"5\",\"itemOrder\":2,\"childItemQuestion\":null},{\"id\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"trickScore\":\"3\",\"itemOrder\":3,\"childItemQuestion\":null}]}]}');
INSERT INTO `t_exam_paper_json` VALUES ('cf879f6a-18b0-41e7-b008-46241bcfa459', '{\"id\":\"cf879f6a-18b0-41e7-b008-46241bcfa459\",\"examPaperItemFrames\":[{\"name\":\"填空题\",\"examPaperItemQuestionFrames\":[{\"id\":395,\"questionFrameId\":\"fa4defda-00e3-444e-98ab-4d52267e14c3\",\"trickScore\":\"4\",\"itemOrder\":1,\"childItemQuestion\":null},{\"id\":394,\"questionFrameId\":\"9710811f-35a2-4f72-8d82-88e6ca63f2c8\",\"trickScore\":\"4\",\"itemOrder\":2,\"childItemQuestion\":null}]}]}');
INSERT INTO `t_exam_paper_json` VALUES ('dd212bdc-13ac-4c0e-9832-277a3cb6411e', '{\"id\":\"dd212bdc-13ac-4c0e-9832-277a3cb6411e\",\"examPaperItemFrames\":[{\"name\":\"单选题\",\"examPaperItemQuestionFrames\":[{\"id\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"trickScore\":\"3\",\"itemOrder\":1,\"childItemQuestion\":null},{\"id\":379,\"questionFrameId\":\"fdfc7734-15c5-4584-8f20-637622e946df\",\"trickScore\":\"2\",\"itemOrder\":2,\"childItemQuestion\":null},{\"id\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"trickScore\":\"3\",\"itemOrder\":3,\"childItemQuestion\":null}]},{\"name\":\"多选题\",\"examPaperItemQuestionFrames\":[{\"id\":380,\"questionFrameId\":\"38759fb7-559c-4588-b4e8-71f9ec86838a\",\"trickScore\":\"3\",\"itemOrder\":4,\"childItemQuestion\":null}]},{\"name\":\"判断题\",\"examPaperItemQuestionFrames\":[{\"id\":381,\"questionFrameId\":\"3047ca34-6cf3-4faa-968e-62f7918cd5d4\",\"trickScore\":\"2.5\",\"itemOrder\":5,\"childItemQuestion\":null}]},{\"name\":\"填空题\",\"examPaperItemQuestionFrames\":[{\"id\":393,\"questionFrameId\":\"842a6bb9-5a69-4f0e-8ffd-9af984b3311d\",\"trickScore\":\"4\",\"itemOrder\":6,\"childItemQuestion\":null},{\"id\":392,\"questionFrameId\":\"058d2bfe-26bb-42f7-a566-113d33303e0b\",\"trickScore\":\"4\",\"itemOrder\":7,\"childItemQuestion\":null},{\"id\":395,\"questionFrameId\":\"fa4defda-00e3-444e-98ab-4d52267e14c3\",\"trickScore\":\"4\",\"itemOrder\":8,\"childItemQuestion\":null},{\"id\":394,\"questionFrameId\":\"9710811f-35a2-4f72-8d82-88e6ca63f2c8\",\"trickScore\":\"4\",\"itemOrder\":9,\"childItemQuestion\":null},{\"id\":391,\"questionFrameId\":\"70825ca5-d241-45ce-b6e2-e0e2a5811e3d\",\"trickScore\":\"4\",\"itemOrder\":10,\"childItemQuestion\":null},{\"id\":389,\"questionFrameId\":\"2829dcdc-f646-4bcb-97a4-066d86dc53a4\",\"trickScore\":\"4\",\"itemOrder\":11,\"childItemQuestion\":null},{\"id\":390,\"questionFrameId\":\"28749dbc-001d-4d4c-a08f-c0dddecd26e3\",\"trickScore\":\"4\",\"itemOrder\":12,\"childItemQuestion\":null},{\"id\":382,\"questionFrameId\":\"2954914c-ef71-4c22-ac72-86725791e968\",\"trickScore\":\"4\",\"itemOrder\":13,\"childItemQuestion\":null}]},{\"name\":\"模拟训练题\",\"examPaperItemQuestionFrames\":[{\"id\":396,\"questionFrameId\":\"f26c1dc0-df82-4d45-bad7-4f78b83b36b1\",\"trickScore\":\"3\",\"itemOrder\":14,\"childItemQuestion\":null}]}]}');
INSERT INTO `t_exam_paper_json` VALUES ('e96e4994-eb54-4585-a1aa-80186421cc41', '{\"id\":\"e96e4994-eb54-4585-a1aa-80186421cc41\",\"examPaperItemFrames\":[{\"name\":\"11\",\"examPaperItemQuestionFrames\":[{\"id\":382,\"questionFrameId\":\"2954914c-ef71-4c22-ac72-86725791e968\",\"trickScore\":\"4\",\"itemOrder\":1,\"childItemQuestion\":null}]}]}');

-- ----------------------------
-- Table structure for t_exam_paper_question_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_exam_paper_question_answer`;
CREATE TABLE `t_exam_paper_question_answer`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `question_id` bigint(20) NULL DEFAULT NULL,
  `exam_paper_id` bigint(20) NULL DEFAULT NULL,
  `exam_paper_answer_id` bigint(20) NULL DEFAULT NULL,
  `question_type` int(11) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `customer_score` int(11) NULL DEFAULT NULL,
  `question_score` int(11) NULL DEFAULT NULL,
  `question_frame_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer_frame_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `do_right` tinyint(4) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `item_order` int(11) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `type_enum_id` int(11) NULL DEFAULT NULL,
  `degree_id` int(11) NULL DEFAULT NULL,
  `focus_time` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `do_time` int(11) NULL DEFAULT NULL,
  `exam_paper_answer_status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3283 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_exam_paper_question_answer
-- ----------------------------
INSERT INTO `t_exam_paper_question_answer` VALUES (3212, 377, 217, 356, 1, 34, 0, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', '1ae8a8bb-a019-49a6-bbed-ab3a4c2fa699', 0, 199, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 4, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3213, 377, 217, 357, 1, 34, 30, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', '5bce2e11-ec5f-4ce4-b0c7-800e9bfead7e', 1, 199, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 1, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3214, 378, 218, 358, 1, 34, 30, 30, '89b6d79c-2d65-494e-a73f-4f087b9e254c', '25d8e375-07aa-4ca8-89df-78f5467ac0ca', 1, 199, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 5, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3215, 377, 217, 359, 1, 34, 30, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', 'f78398fd-a79d-4b8d-bf65-fc278fe6ee44', 1, 199, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 3, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3216, 377, 217, 360, 1, 34, 0, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', '9a989755-5ef7-4328-be39-e0be79bcdbfe', 0, 199, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 2, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3217, 377, 217, 361, 1, 34, 0, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', '075ae476-5b8d-42ce-aac1-b0573879be19', 0, 44, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3218, 377, 217, 362, 1, 34, 0, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', 'fd0a7f89-ecee-4775-a25e-fbf5ac799852', 0, 44, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 4, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3219, 377, 219, 363, 1, 34, 30, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', '9bc82d28-9d3e-49ca-8bc1-fb1839b3cf66', 1, 44, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 1, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3220, 382, 220, 364, 4, 34, NULL, 40, '2954914c-ef71-4c22-ac72-86725791e968', 'f340b628-9f85-455d-b208-fb467d4284aa', NULL, 44, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 297, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3221, 382, 220, 365, 4, 34, NULL, 40, '2954914c-ef71-4c22-ac72-86725791e968', '5df469ad-34e2-49df-a8ac-d9ae75559de5', NULL, 44, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 424249, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3222, 377, 217, 366, 1, 36, 0, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', '10e96ecd-9578-4318-a4be-084d0c9ea98a', 0, 44, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 4, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3223, 378, 227, 367, 1, 36, 30, 30, '89b6d79c-2d65-494e-a73f-4f087b9e254c', '0fbbc3e6-cfa7-4bb8-a399-6af8dda03eb6', 1, 44, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 2, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3224, 379, 227, 367, 1, 36, 0, 20, 'fdfc7734-15c5-4584-8f20-637622e946df', 'e0da9d1f-467c-4667-bd7e-2d81aaa6ff90', 0, 44, '0000-00-00 00:00:00.000000', 2, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 1, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3225, 377, 227, 367, 1, 36, 0, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', 'b6120e22-8233-4487-a119-04176830a96d', 0, 44, '0000-00-00 00:00:00.000000', 3, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 2, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3226, 378, 227, 368, 1, 36, 30, 30, '89b6d79c-2d65-494e-a73f-4f087b9e254c', 'd73abc0e-da05-44fc-8eeb-1df9522a7dca', 1, 44, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 6, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3227, 379, 227, 368, 1, 36, 0, 20, 'fdfc7734-15c5-4584-8f20-637622e946df', 'b4a0d964-9611-457d-9f67-754e784b66bb', 0, 44, '0000-00-00 00:00:00.000000', 2, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 1, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3228, 377, 227, 368, 1, 36, 30, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', 'a8adbaee-d80e-4dc4-9ac8-fd4304c92981', 1, 44, '0000-00-00 00:00:00.000000', 3, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 1, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3229, 378, 227, 369, 1, 36, 30, 30, '89b6d79c-2d65-494e-a73f-4f087b9e254c', '0b6d4488-4766-489a-82b2-c7e78128ee4b', 1, 44, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 5, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3230, 379, 227, 369, 1, 36, 20, 20, 'fdfc7734-15c5-4584-8f20-637622e946df', '5103e3ec-9eb2-4091-8686-643dce20b6d6', 1, 44, '0000-00-00 00:00:00.000000', 2, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 2, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3231, 377, 227, 369, 1, 36, 30, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', '147b9b41-0ea3-4a70-8cca-802f48739b3a', 1, 44, '0000-00-00 00:00:00.000000', 3, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 1, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3232, 378, 227, 370, 1, 36, 30, 30, '89b6d79c-2d65-494e-a73f-4f087b9e254c', 'be81e915-4313-48b3-8e1e-63188a432df4', 1, 44, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 2, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3233, 379, 227, 370, 1, 36, 20, 20, 'fdfc7734-15c5-4584-8f20-637622e946df', '23e6ddd7-5208-4e77-84c4-dccfcf793048', 1, 44, '0000-00-00 00:00:00.000000', 2, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 2, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3234, 377, 227, 370, 1, 36, 30, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', 'a0307f02-132e-46fb-9070-0517ca0b0fdd', 1, 44, '0000-00-00 00:00:00.000000', 3, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 1, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3235, 378, 227, 371, 1, 36, 30, 30, '89b6d79c-2d65-494e-a73f-4f087b9e254c', '634e7b49-87b5-4874-a8d8-dd509f7aef4d', 1, 44, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 2, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3236, 379, 227, 371, 1, 36, 20, 20, 'fdfc7734-15c5-4584-8f20-637622e946df', '5357f81a-89b7-4dfd-901a-65576109b0fe', 1, 44, '0000-00-00 00:00:00.000000', 2, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 2, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3237, 377, 227, 371, 1, 36, 30, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', '04b8c2a5-fbb7-4524-8672-8e931ec7e09a', 1, 44, '0000-00-00 00:00:00.000000', 3, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 1, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3238, 378, 227, 372, 1, 36, 30, 30, '89b6d79c-2d65-494e-a73f-4f087b9e254c', '09c550aa-0b0b-4344-a0ba-3bf8c74d0225', 1, 44, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 2, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3239, 379, 227, 372, 1, 36, 20, 20, 'fdfc7734-15c5-4584-8f20-637622e946df', '34ad5cf5-2a2b-468f-a749-86ff9fc77b61', 1, 44, '0000-00-00 00:00:00.000000', 2, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 2, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3240, 377, 227, 372, 1, 36, 30, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', '0256ba1d-0297-419c-813a-96ada7195f99', 1, 44, '0000-00-00 00:00:00.000000', 3, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 4, 2);
INSERT INTO `t_exam_paper_question_answer` VALUES (3241, 378, 226, 373, 1, 36, 30, 30, '89b6d79c-2d65-494e-a73f-4f087b9e254c', 'dccaf81d-4e8c-4a34-b0e3-be16d15f1c21', 1, 44, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 2, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3242, 379, 226, 373, 1, 36, 20, 20, 'fdfc7734-15c5-4584-8f20-637622e946df', 'c6c5e48a-34cc-422b-9200-02b81d875d13', 1, 44, '0000-00-00 00:00:00.000000', 2, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 1, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3243, 377, 226, 373, 1, 36, 30, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', '25645cf2-cef6-498f-874c-c8c17c58c5c2', 1, 44, '0000-00-00 00:00:00.000000', 3, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 1, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3244, 380, 226, 373, 2, 36, 0, 30, '38759fb7-559c-4588-b4e8-71f9ec86838a', '9dbc3430-8e20-4574-994e-c62eaa1f26cb', 0, 44, '0000-00-00 00:00:00.000000', 4, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3245, 381, 226, 373, 3, 36, 0, 25, '3047ca34-6cf3-4faa-968e-62f7918cd5d4', '53743749-59f7-4445-94ee-40f85464f9d6', 0, 44, '0000-00-00 00:00:00.000000', 5, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3246, 393, 226, 373, 4, 36, NULL, 40, '842a6bb9-5a69-4f0e-8ffd-9af984b3311d', '5f1f37cb-1b2f-4aaf-8083-7cea7522eb1d', NULL, 44, '0000-00-00 00:00:00.000000', 6, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3247, 392, 226, 373, 4, 36, 0, 40, '058d2bfe-26bb-42f7-a566-113d33303e0b', '2d262975-8af7-4d01-9da6-ae51e918da85', 0, 44, '0000-00-00 00:00:00.000000', 7, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3248, 395, 226, 373, 4, 36, 0, 40, 'fa4defda-00e3-444e-98ab-4d52267e14c3', 'fb5ee4b7-21b1-4118-bd88-936a29360692', 0, 44, '0000-00-00 00:00:00.000000', 8, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3249, 394, 226, 373, 4, 36, NULL, 40, '9710811f-35a2-4f72-8d82-88e6ca63f2c8', 'be553784-5502-4e3d-a2bb-2d0b61ba870e', NULL, 44, '0000-00-00 00:00:00.000000', 9, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3250, 391, 226, 373, 4, 36, 0, 40, '70825ca5-d241-45ce-b6e2-e0e2a5811e3d', 'aee3b0e3-243e-41c5-91f9-d17057614784', 0, 44, '0000-00-00 00:00:00.000000', 10, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3251, 389, 226, 373, 4, 36, 0, 40, '2829dcdc-f646-4bcb-97a4-066d86dc53a4', '83510c81-6193-4db3-a883-3c2e411980e1', 0, 44, '0000-00-00 00:00:00.000000', 11, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3252, 390, 226, 373, 4, 36, 0, 40, '28749dbc-001d-4d4c-a08f-c0dddecd26e3', '21316e7d-e267-4d37-8abd-1ad811e6336a', 0, 44, '0000-00-00 00:00:00.000000', 12, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3253, 382, 226, 373, 4, 36, 0, 40, '2954914c-ef71-4c22-ac72-86725791e968', 'b7e12fe0-0ddc-4738-b752-3b9a034661cd', 0, 44, '0000-00-00 00:00:00.000000', 13, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3254, 396, 226, 373, 7, 36, 0, 30, 'f26c1dc0-df82-4d45-bad7-4f78b83b36b1', 'be9554cc-2a9b-4af8-80a9-af6d54746a75', 0, 44, '0000-00-00 00:00:00.000000', 14, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3255, 378, 226, 374, 1, 36, 30, 30, '89b6d79c-2d65-494e-a73f-4f087b9e254c', 'dbb91537-eac8-4611-adc9-feafed58fb7e', 1, 44, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 3, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3256, 379, 226, 374, 1, 36, 20, 20, 'fdfc7734-15c5-4584-8f20-637622e946df', '137c0ebc-bf19-49de-8485-a7703e1e2d74', 1, 44, '0000-00-00 00:00:00.000000', 2, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 2, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3257, 377, 226, 374, 1, 36, 30, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', '2229e4d9-02fc-4159-b5fc-755655ae963a', 1, 44, '0000-00-00 00:00:00.000000', 3, 1, NULL, NULL, '0000-00-00 00:00:00.000000', 1, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3258, 380, 226, 374, 2, 36, 0, 30, '38759fb7-559c-4588-b4e8-71f9ec86838a', 'c10cc168-f983-4382-b7a3-0c0a214002d1', 0, 44, '0000-00-00 00:00:00.000000', 4, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3259, 381, 226, 374, 3, 36, 0, 25, '3047ca34-6cf3-4faa-968e-62f7918cd5d4', '26b3156c-98ad-4890-a03a-8ee8215988b3', 0, 44, '0000-00-00 00:00:00.000000', 5, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3260, 393, 226, 374, 4, 36, NULL, 40, '842a6bb9-5a69-4f0e-8ffd-9af984b3311d', '6ac010ae-6a06-4898-a2f0-99d45396ea06', NULL, 44, '0000-00-00 00:00:00.000000', 6, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3261, 392, 226, 374, 4, 36, 0, 40, '058d2bfe-26bb-42f7-a566-113d33303e0b', 'ac1ee3bb-47e5-4e61-9029-33273a5dc364', 0, 44, '0000-00-00 00:00:00.000000', 7, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3262, 395, 226, 374, 4, 36, 0, 40, 'fa4defda-00e3-444e-98ab-4d52267e14c3', '6ffa5b78-4c2b-4491-80f8-05b5129d5338', 0, 44, '0000-00-00 00:00:00.000000', 8, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3263, 394, 226, 374, 4, 36, NULL, 40, '9710811f-35a2-4f72-8d82-88e6ca63f2c8', 'c25fcaae-1367-4a54-8ba1-bc3deac74c1c', NULL, 44, '0000-00-00 00:00:00.000000', 9, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3264, 391, 226, 374, 4, 36, 0, 40, '70825ca5-d241-45ce-b6e2-e0e2a5811e3d', 'b89d5670-7c6a-44f0-981e-a9eec9a2dd96', 0, 44, '0000-00-00 00:00:00.000000', 10, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3265, 389, 226, 374, 4, 36, 0, 40, '2829dcdc-f646-4bcb-97a4-066d86dc53a4', '9d761cf1-a6b1-42b0-8d93-e2579dc9a247', 0, 44, '0000-00-00 00:00:00.000000', 11, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3266, 390, 226, 374, 4, 36, 0, 40, '28749dbc-001d-4d4c-a08f-c0dddecd26e3', '952b937a-8dea-462f-ac20-3df96abae392', 0, 44, '0000-00-00 00:00:00.000000', 12, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3267, 382, 226, 374, 4, 36, 0, 40, '2954914c-ef71-4c22-ac72-86725791e968', '23c0ab0a-c8e3-445a-9ea6-58f2caefba24', 0, 44, '0000-00-00 00:00:00.000000', 13, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3268, 396, 226, 374, 7, 36, 0, 30, 'f26c1dc0-df82-4d45-bad7-4f78b83b36b1', '1bae5048-c07e-4f6f-8757-730c24a2844c', 0, 44, '0000-00-00 00:00:00.000000', 14, 1, NULL, NULL, '0000-00-00 00:00:00.000000', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3269, 378, 226, 375, 1, 36, 0, 30, '89b6d79c-2d65-494e-a73f-4f087b9e254c', '7880f030-1400-4808-a92e-b8e11f30cec8', 0, 44, '2023-06-19 17:27:24.159000', 1, 1, NULL, NULL, '2023-06-19 17:27:25.237143', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3270, 379, 226, 375, 1, 36, 0, 20, 'fdfc7734-15c5-4584-8f20-637622e946df', '2a88a076-6b51-4179-937c-de9b9d617b38', 0, 44, '2023-06-19 17:27:24.159000', 2, 1, NULL, NULL, '2023-06-19 17:27:25.237143', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3271, 377, 226, 375, 1, 36, 0, 30, '1225201c-f131-4bd2-ad36-d0c50b073cce', 'f6769538-2aab-4465-98bd-ba61fe724c2c', 0, 44, '2023-06-19 17:27:24.159000', 3, 1, NULL, NULL, '2023-06-19 17:27:25.237143', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3272, 380, 226, 375, 2, 36, 0, 30, '38759fb7-559c-4588-b4e8-71f9ec86838a', 'c768f28b-c2ec-45b3-b323-db1d84cdca35', 0, 44, '2023-06-19 17:27:24.159000', 4, 1, NULL, NULL, '2023-06-19 17:27:25.237143', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3273, 381, 226, 375, 3, 36, 0, 25, '3047ca34-6cf3-4faa-968e-62f7918cd5d4', 'bff0462b-cf8a-492c-85aa-cc96cd4ef2f8', 0, 44, '2023-06-19 17:27:24.159000', 5, 1, NULL, NULL, '2023-06-19 17:27:25.237143', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3274, 393, 226, 375, 4, 36, NULL, 40, '842a6bb9-5a69-4f0e-8ffd-9af984b3311d', '1d083c21-506f-4b7e-971d-dfcf48d5c3dd', NULL, 44, '2023-06-19 17:27:24.159000', 6, 1, NULL, NULL, '2023-06-19 17:27:25.237143', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3275, 392, 226, 375, 4, 36, 0, 40, '058d2bfe-26bb-42f7-a566-113d33303e0b', '9aeb62d8-1b61-48bb-a80d-0f7cb6c005ed', 0, 44, '2023-06-19 17:27:24.159000', 7, 1, NULL, NULL, '2023-06-19 17:27:25.237143', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3276, 395, 226, 375, 4, 36, 0, 40, 'fa4defda-00e3-444e-98ab-4d52267e14c3', '6190edf0-3445-4190-840e-3889c6ae53fa', 0, 44, '2023-06-19 17:27:24.159000', 8, 1, NULL, NULL, '2023-06-19 17:27:25.237143', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3277, 394, 226, 375, 4, 36, NULL, 40, '9710811f-35a2-4f72-8d82-88e6ca63f2c8', 'b9c18315-e07c-47ec-8bf8-2d4be2dbcefe', NULL, 44, '2023-06-19 17:27:24.159000', 9, 1, NULL, NULL, '2023-06-19 17:27:25.237143', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3278, 391, 226, 375, 4, 36, 0, 40, '70825ca5-d241-45ce-b6e2-e0e2a5811e3d', '6049e68b-0cdd-4e1e-bfed-e69cbbd83d49', 0, 44, '2023-06-19 17:27:24.159000', 10, 1, NULL, NULL, '2023-06-19 17:27:25.237143', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3279, 389, 226, 375, 4, 36, 0, 40, '2829dcdc-f646-4bcb-97a4-066d86dc53a4', '2e557bea-5423-4c7c-ab69-64abb825f33e', 0, 44, '2023-06-19 17:27:24.159000', 11, 1, NULL, NULL, '2023-06-19 17:27:25.237143', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3280, 390, 226, 375, 4, 36, 0, 40, '28749dbc-001d-4d4c-a08f-c0dddecd26e3', '513bf70d-e5c4-449b-9239-b686da574c35', 0, 44, '2023-06-19 17:27:24.159000', 12, 1, NULL, NULL, '2023-06-19 17:27:25.237143', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3281, 382, 226, 375, 4, 36, 0, 40, '2954914c-ef71-4c22-ac72-86725791e968', '9d34a16f-d6c4-4b90-8519-fa83110ae283', 0, 44, '2023-06-19 17:27:24.159000', 13, 1, NULL, NULL, '2023-06-19 17:27:25.237143', NULL, 1);
INSERT INTO `t_exam_paper_question_answer` VALUES (3282, 396, 226, 375, 7, 36, 0, 30, 'f26c1dc0-df82-4d45-bad7-4f78b83b36b1', '88b61a17-25f5-466e-ac90-b26aa63efb6b', 0, 44, '2023-06-19 17:27:24.159000', 14, 1, NULL, NULL, '2023-06-19 17:27:25.237143', NULL, 1);

-- ----------------------------
-- Table structure for t_exam_paper_question_answer_json
-- ----------------------------
DROP TABLE IF EXISTS `t_exam_paper_question_answer_json`;
CREATE TABLE `t_exam_paper_question_answer_json`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_exam_paper_question_answer_json
-- ----------------------------
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('0256ba1d-0297-419c-813a-96ada7195f99', '{\"id\":\"0256ba1d-0297-419c-813a-96ada7195f99\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"A\",\"correctContent\":null,\"questionItemKeyOrder\":[2,1,0,3],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":3,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602712845,\"doTime\":4,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('04b8c2a5-fbb7-4524-8672-8e931ec7e09a', '{\"id\":\"04b8c2a5-fbb7-4524-8672-8e931ec7e09a\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"B\",\"correctContent\":null,\"questionItemKeyOrder\":[0,2,3,1],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":3,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602676879,\"doTime\":1,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('075ae476-5b8d-42ce-aac1-b0573879be19', '{\"id\":\"075ae476-5b8d-42ce-aac1-b0573879be19\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('09c550aa-0b0b-4344-a0ba-3bf8c74d0225', '{\"id\":\"09c550aa-0b0b-4344-a0ba-3bf8c74d0225\",\"questionId\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"D\",\"correctContent\":null,\"questionItemKeyOrder\":[1,0,3,2],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602706096,\"doTime\":2,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('0b6d4488-4766-489a-82b2-c7e78128ee4b', '{\"id\":\"0b6d4488-4766-489a-82b2-c7e78128ee4b\",\"questionId\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"D\",\"correctContent\":null,\"questionItemKeyOrder\":[1,0,3,2],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602601841,\"doTime\":5,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('0fbbc3e6-cfa7-4bb8-a399-6af8dda03eb6', '{\"id\":\"0fbbc3e6-cfa7-4bb8-a399-6af8dda03eb6\",\"questionId\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":[1,0,2,3],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602484630,\"doTime\":2,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('10e96ecd-9578-4318-a4be-084d0c9ea98a', '{\"id\":\"10e96ecd-9578-4318-a4be-084d0c9ea98a\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":false,\"contentKey\":1,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685501457638,\"doTime\":4,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('137c0ebc-bf19-49de-8485-a7703e1e2d74', '{\"id\":\"137c0ebc-bf19-49de-8485-a7703e1e2d74\",\"questionId\":379,\"questionFrameId\":\"fdfc7734-15c5-4584-8f20-637622e946df\",\"questionType\":1,\"doRight\":true,\"contentKey\":0,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"A\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":2,\"customerScore\":20,\"customerScoreVM\":\"2\",\"judgeScoreVM\":null,\"questionScore\":20,\"questionScoreVM\":\"2\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602845675,\"doTime\":2,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('147b9b41-0ea3-4a70-8cca-802f48739b3a', '{\"id\":\"147b9b41-0ea3-4a70-8cca-802f48739b3a\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":[0,3,2,1],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":3,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602605476,\"doTime\":1,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('1ae8a8bb-a019-49a6-bbed-ab3a4c2fa699', '{\"id\":\"1ae8a8bb-a019-49a6-bbed-ab3a4c2fa699\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":false,\"contentKey\":0,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1683080886390,\"doTime\":4,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('1bae5048-c07e-4f6f-8757-730c24a2844c', '{\"id\":\"1bae5048-c07e-4f6f-8757-730c24a2844c\",\"questionId\":396,\"questionFrameId\":\"f26c1dc0-df82-4d45-bad7-4f78b83b36b1\",\"questionType\":7,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":14,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('1d083c21-506f-4b7e-971d-dfcf48d5c3dd', '{\"id\":\"1d083c21-506f-4b7e-971d-dfcf48d5c3dd\",\"questionId\":393,\"questionFrameId\":\"842a6bb9-5a69-4f0e-8ffd-9af984b3311d\",\"questionType\":4,\"doRight\":null,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":6,\"customerScore\":null,\"customerScoreVM\":null,\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('21316e7d-e267-4d37-8abd-1ad811e6336a', '{\"id\":\"21316e7d-e267-4d37-8abd-1ad811e6336a\",\"questionId\":390,\"questionFrameId\":\"28749dbc-001d-4d4c-a08f-c0dddecd26e3\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":12,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('2229e4d9-02fc-4159-b5fc-755655ae963a', '{\"id\":\"2229e4d9-02fc-4159-b5fc-755655ae963a\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":3,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602847239,\"doTime\":1,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('23c0ab0a-c8e3-445a-9ea6-58f2caefba24', '{\"id\":\"23c0ab0a-c8e3-445a-9ea6-58f2caefba24\",\"questionId\":382,\"questionFrameId\":\"2954914c-ef71-4c22-ac72-86725791e968\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":13,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('23e6ddd7-5208-4e77-84c4-dccfcf793048', '{\"id\":\"23e6ddd7-5208-4e77-84c4-dccfcf793048\",\"questionId\":379,\"questionFrameId\":\"fdfc7734-15c5-4584-8f20-637622e946df\",\"questionType\":1,\"doRight\":true,\"contentKey\":0,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"D\",\"correctContent\":null,\"questionItemKeyOrder\":[2,3,1,0],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":2,\"customerScore\":20,\"customerScoreVM\":\"2\",\"judgeScoreVM\":null,\"questionScore\":20,\"questionScoreVM\":\"2\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602630169,\"doTime\":2,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('25645cf2-cef6-498f-874c-c8c17c58c5c2', '{\"id\":\"25645cf2-cef6-498f-874c-c8c17c58c5c2\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":3,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602771593,\"doTime\":1,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('25d8e375-07aa-4ca8-89df-78f5467ac0ca', '{\"id\":\"25d8e375-07aa-4ca8-89df-78f5467ac0ca\",\"questionId\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1683080964785,\"doTime\":5,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('26b3156c-98ad-4890-a03a-8ee8215988b3', '{\"id\":\"26b3156c-98ad-4890-a03a-8ee8215988b3\",\"questionId\":381,\"questionFrameId\":\"3047ca34-6cf3-4faa-968e-62f7918cd5d4\",\"questionType\":3,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"A\",\"correctContent\":\"对\",\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":5,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":25,\"questionScoreVM\":\"2.5\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('2a88a076-6b51-4179-937c-de9b9d617b38', '{\"id\":\"2a88a076-6b51-4179-937c-de9b9d617b38\",\"questionId\":379,\"questionFrameId\":\"fdfc7734-15c5-4584-8f20-637622e946df\",\"questionType\":1,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"A\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":2,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":20,\"questionScoreVM\":\"2\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('2d262975-8af7-4d01-9da6-ae51e918da85', '{\"id\":\"2d262975-8af7-4d01-9da6-ae51e918da85\",\"questionId\":392,\"questionFrameId\":\"058d2bfe-26bb-42f7-a566-113d33303e0b\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":7,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('2e557bea-5423-4c7c-ab69-64abb825f33e', '{\"id\":\"2e557bea-5423-4c7c-ab69-64abb825f33e\",\"questionId\":389,\"questionFrameId\":\"2829dcdc-f646-4bcb-97a4-066d86dc53a4\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":11,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('34ad5cf5-2a2b-468f-a749-86ff9fc77b61', '{\"id\":\"34ad5cf5-2a2b-468f-a749-86ff9fc77b61\",\"questionId\":379,\"questionFrameId\":\"fdfc7734-15c5-4584-8f20-637622e946df\",\"questionType\":1,\"doRight\":true,\"contentKey\":0,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"D\",\"correctContent\":null,\"questionItemKeyOrder\":[1,2,3,0],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":2,\"customerScore\":20,\"customerScoreVM\":\"2\",\"judgeScoreVM\":null,\"questionScore\":20,\"questionScoreVM\":\"2\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602708605,\"doTime\":2,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('5103e3ec-9eb2-4091-8686-643dce20b6d6', '{\"id\":\"5103e3ec-9eb2-4091-8686-643dce20b6d6\",\"questionId\":379,\"questionFrameId\":\"fdfc7734-15c5-4584-8f20-637622e946df\",\"questionType\":1,\"doRight\":true,\"contentKey\":0,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"D\",\"correctContent\":null,\"questionItemKeyOrder\":[3,2,1,0],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":2,\"customerScore\":20,\"customerScoreVM\":\"2\",\"judgeScoreVM\":null,\"questionScore\":20,\"questionScoreVM\":\"2\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602604272,\"doTime\":2,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('513bf70d-e5c4-449b-9239-b686da574c35', '{\"id\":\"513bf70d-e5c4-449b-9239-b686da574c35\",\"questionId\":390,\"questionFrameId\":\"28749dbc-001d-4d4c-a08f-c0dddecd26e3\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":12,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('5357f81a-89b7-4dfd-901a-65576109b0fe', '{\"id\":\"5357f81a-89b7-4dfd-901a-65576109b0fe\",\"questionId\":379,\"questionFrameId\":\"fdfc7734-15c5-4584-8f20-637622e946df\",\"questionType\":1,\"doRight\":true,\"contentKey\":0,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":[3,2,0,1],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":2,\"customerScore\":20,\"customerScoreVM\":\"2\",\"judgeScoreVM\":null,\"questionScore\":20,\"questionScoreVM\":\"2\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602675000,\"doTime\":2,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('53743749-59f7-4445-94ee-40f85464f9d6', '{\"id\":\"53743749-59f7-4445-94ee-40f85464f9d6\",\"questionId\":381,\"questionFrameId\":\"3047ca34-6cf3-4faa-968e-62f7918cd5d4\",\"questionType\":3,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"A\",\"correctContent\":\"对\",\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":5,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":25,\"questionScoreVM\":\"2.5\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('5bce2e11-ec5f-4ce4-b0c7-800e9bfead7e', '{\"id\":\"5bce2e11-ec5f-4ce4-b0c7-800e9bfead7e\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1683080940791,\"doTime\":1,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('5df469ad-34e2-49df-a8ac-d9ae75559de5', '{\"id\":\"5df469ad-34e2-49df-a8ac-d9ae75559de5\",\"questionId\":382,\"questionFrameId\":\"2954914c-ef71-4c22-ac72-86725791e968\",\"questionType\":4,\"doRight\":null,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[\"鹅，鹅，鹅，\"],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":null,\"customerScoreVM\":null,\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1683429600628,\"doTime\":424249,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('5f1f37cb-1b2f-4aaf-8083-7cea7522eb1d', '{\"id\":\"5f1f37cb-1b2f-4aaf-8083-7cea7522eb1d\",\"questionId\":393,\"questionFrameId\":\"842a6bb9-5a69-4f0e-8ffd-9af984b3311d\",\"questionType\":4,\"doRight\":null,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":6,\"customerScore\":null,\"customerScoreVM\":null,\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('6049e68b-0cdd-4e1e-bfed-e69cbbd83d49', '{\"id\":\"6049e68b-0cdd-4e1e-bfed-e69cbbd83d49\",\"questionId\":391,\"questionFrameId\":\"70825ca5-d241-45ce-b6e2-e0e2a5811e3d\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":10,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('6190edf0-3445-4190-840e-3889c6ae53fa', '{\"id\":\"6190edf0-3445-4190-840e-3889c6ae53fa\",\"questionId\":395,\"questionFrameId\":\"fa4defda-00e3-444e-98ab-4d52267e14c3\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":8,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('634e7b49-87b5-4874-a8d8-dd509f7aef4d', '{\"id\":\"634e7b49-87b5-4874-a8d8-dd509f7aef4d\",\"questionId\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":[0,3,2,1],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602672191,\"doTime\":2,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('6ac010ae-6a06-4898-a2f0-99d45396ea06', '{\"id\":\"6ac010ae-6a06-4898-a2f0-99d45396ea06\",\"questionId\":393,\"questionFrameId\":\"842a6bb9-5a69-4f0e-8ffd-9af984b3311d\",\"questionType\":4,\"doRight\":null,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":6,\"customerScore\":null,\"customerScoreVM\":null,\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('6ffa5b78-4c2b-4491-80f8-05b5129d5338', '{\"id\":\"6ffa5b78-4c2b-4491-80f8-05b5129d5338\",\"questionId\":395,\"questionFrameId\":\"fa4defda-00e3-444e-98ab-4d52267e14c3\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":8,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('7880f030-1400-4808-a92e-b8e11f30cec8', '{\"id\":\"7880f030-1400-4808-a92e-b8e11f30cec8\",\"questionId\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"questionType\":1,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('83510c81-6193-4db3-a883-3c2e411980e1', '{\"id\":\"83510c81-6193-4db3-a883-3c2e411980e1\",\"questionId\":389,\"questionFrameId\":\"2829dcdc-f646-4bcb-97a4-066d86dc53a4\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":11,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('88b61a17-25f5-466e-ac90-b26aa63efb6b', '{\"id\":\"88b61a17-25f5-466e-ac90-b26aa63efb6b\",\"questionId\":396,\"questionFrameId\":\"f26c1dc0-df82-4d45-bad7-4f78b83b36b1\",\"questionType\":7,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":14,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('952b937a-8dea-462f-ac20-3df96abae392', '{\"id\":\"952b937a-8dea-462f-ac20-3df96abae392\",\"questionId\":390,\"questionFrameId\":\"28749dbc-001d-4d4c-a08f-c0dddecd26e3\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":12,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('9a989755-5ef7-4328-be39-e0be79bcdbfe', '{\"id\":\"9a989755-5ef7-4328-be39-e0be79bcdbfe\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":false,\"contentKey\":3,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1683098966971,\"doTime\":2,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('9aeb62d8-1b61-48bb-a80d-0f7cb6c005ed', '{\"id\":\"9aeb62d8-1b61-48bb-a80d-0f7cb6c005ed\",\"questionId\":392,\"questionFrameId\":\"058d2bfe-26bb-42f7-a566-113d33303e0b\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":7,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('9bc82d28-9d3e-49ca-8bc1-fb1839b3cf66', '{\"id\":\"9bc82d28-9d3e-49ca-8bc1-fb1839b3cf66\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1683343555366,\"doTime\":1,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('9d34a16f-d6c4-4b90-8519-fa83110ae283', '{\"id\":\"9d34a16f-d6c4-4b90-8519-fa83110ae283\",\"questionId\":382,\"questionFrameId\":\"2954914c-ef71-4c22-ac72-86725791e968\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":13,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('9d761cf1-a6b1-42b0-8d93-e2579dc9a247', '{\"id\":\"9d761cf1-a6b1-42b0-8d93-e2579dc9a247\",\"questionId\":389,\"questionFrameId\":\"2829dcdc-f646-4bcb-97a4-066d86dc53a4\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":11,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('9dbc3430-8e20-4574-994e-c62eaa1f26cb', '{\"id\":\"9dbc3430-8e20-4574-994e-c62eaa1f26cb\",\"questionId\":380,\"questionFrameId\":\"38759fb7-559c-4588-b4e8-71f9ec86838a\",\"questionType\":2,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"A C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":4,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('a0307f02-132e-46fb-9070-0517ca0b0fdd', '{\"id\":\"a0307f02-132e-46fb-9070-0517ca0b0fdd\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":[3,1,2,0],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":3,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602631913,\"doTime\":1,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('a8adbaee-d80e-4dc4-9ac8-fd4304c92981', '{\"id\":\"a8adbaee-d80e-4dc4-9ac8-fd4304c92981\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":[1,0,2,3],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":3,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602544413,\"doTime\":1,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('ac1ee3bb-47e5-4e61-9029-33273a5dc364', '{\"id\":\"ac1ee3bb-47e5-4e61-9029-33273a5dc364\",\"questionId\":392,\"questionFrameId\":\"058d2bfe-26bb-42f7-a566-113d33303e0b\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":7,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('aee3b0e3-243e-41c5-91f9-d17057614784', '{\"id\":\"aee3b0e3-243e-41c5-91f9-d17057614784\",\"questionId\":391,\"questionFrameId\":\"70825ca5-d241-45ce-b6e2-e0e2a5811e3d\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":10,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('b4a0d964-9611-457d-9f67-754e784b66bb', '{\"id\":\"b4a0d964-9611-457d-9f67-754e784b66bb\",\"questionId\":379,\"questionFrameId\":\"fdfc7734-15c5-4584-8f20-637622e946df\",\"questionType\":1,\"doRight\":false,\"contentKey\":3,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":[3,1,0,2],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":2,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":20,\"questionScoreVM\":\"2\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602542534,\"doTime\":1,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('b6120e22-8233-4487-a119-04176830a96d', '{\"id\":\"b6120e22-8233-4487-a119-04176830a96d\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":false,\"contentKey\":3,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"A\",\"correctContent\":null,\"questionItemKeyOrder\":[2,1,3,0],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":3,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602487801,\"doTime\":2,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('b7e12fe0-0ddc-4738-b752-3b9a034661cd', '{\"id\":\"b7e12fe0-0ddc-4738-b752-3b9a034661cd\",\"questionId\":382,\"questionFrameId\":\"2954914c-ef71-4c22-ac72-86725791e968\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":13,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('b89d5670-7c6a-44f0-981e-a9eec9a2dd96', '{\"id\":\"b89d5670-7c6a-44f0-981e-a9eec9a2dd96\",\"questionId\":391,\"questionFrameId\":\"70825ca5-d241-45ce-b6e2-e0e2a5811e3d\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":10,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('b9c18315-e07c-47ec-8bf8-2d4be2dbcefe', '{\"id\":\"b9c18315-e07c-47ec-8bf8-2d4be2dbcefe\",\"questionId\":394,\"questionFrameId\":\"9710811f-35a2-4f72-8d82-88e6ca63f2c8\",\"questionType\":4,\"doRight\":null,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":9,\"customerScore\":null,\"customerScoreVM\":null,\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('be553784-5502-4e3d-a2bb-2d0b61ba870e', '{\"id\":\"be553784-5502-4e3d-a2bb-2d0b61ba870e\",\"questionId\":394,\"questionFrameId\":\"9710811f-35a2-4f72-8d82-88e6ca63f2c8\",\"questionType\":4,\"doRight\":null,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":9,\"customerScore\":null,\"customerScoreVM\":null,\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('be81e915-4313-48b3-8e1e-63188a432df4', '{\"id\":\"be81e915-4313-48b3-8e1e-63188a432df4\",\"questionId\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":[3,1,2,0],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602628001,\"doTime\":2,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('be9554cc-2a9b-4af8-80a9-af6d54746a75', '{\"id\":\"be9554cc-2a9b-4af8-80a9-af6d54746a75\",\"questionId\":396,\"questionFrameId\":\"f26c1dc0-df82-4d45-bad7-4f78b83b36b1\",\"questionType\":7,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":14,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('bff0462b-cf8a-492c-85aa-cc96cd4ef2f8', '{\"id\":\"bff0462b-cf8a-492c-85aa-cc96cd4ef2f8\",\"questionId\":381,\"questionFrameId\":\"3047ca34-6cf3-4faa-968e-62f7918cd5d4\",\"questionType\":3,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"A\",\"correctContent\":\"对\",\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":5,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":25,\"questionScoreVM\":\"2.5\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('c10cc168-f983-4382-b7a3-0c0a214002d1', '{\"id\":\"c10cc168-f983-4382-b7a3-0c0a214002d1\",\"questionId\":380,\"questionFrameId\":\"38759fb7-559c-4588-b4e8-71f9ec86838a\",\"questionType\":2,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"A C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":4,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('c25fcaae-1367-4a54-8ba1-bc3deac74c1c', '{\"id\":\"c25fcaae-1367-4a54-8ba1-bc3deac74c1c\",\"questionId\":394,\"questionFrameId\":\"9710811f-35a2-4f72-8d82-88e6ca63f2c8\",\"questionType\":4,\"doRight\":null,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":9,\"customerScore\":null,\"customerScoreVM\":null,\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('c6c5e48a-34cc-422b-9200-02b81d875d13', '{\"id\":\"c6c5e48a-34cc-422b-9200-02b81d875d13\",\"questionId\":379,\"questionFrameId\":\"fdfc7734-15c5-4584-8f20-637622e946df\",\"questionType\":1,\"doRight\":true,\"contentKey\":0,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"A\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":2,\"customerScore\":20,\"customerScoreVM\":\"2\",\"judgeScoreVM\":null,\"questionScore\":20,\"questionScoreVM\":\"2\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602770424,\"doTime\":1,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('c768f28b-c2ec-45b3-b323-db1d84cdca35', '{\"id\":\"c768f28b-c2ec-45b3-b323-db1d84cdca35\",\"questionId\":380,\"questionFrameId\":\"38759fb7-559c-4588-b4e8-71f9ec86838a\",\"questionType\":2,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"A C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":4,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('d73abc0e-da05-44fc-8eeb-1df9522a7dca', '{\"id\":\"d73abc0e-da05-44fc-8eeb-1df9522a7dca\",\"questionId\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"D\",\"correctContent\":null,\"questionItemKeyOrder\":[3,0,1,2],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602540833,\"doTime\":6,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('dbb91537-eac8-4611-adc9-feafed58fb7e', '{\"id\":\"dbb91537-eac8-4611-adc9-feafed58fb7e\",\"questionId\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602843526,\"doTime\":3,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('dccaf81d-4e8c-4a34-b0e3-be16d15f1c21', '{\"id\":\"dccaf81d-4e8c-4a34-b0e3-be16d15f1c21\",\"questionId\":378,\"questionFrameId\":\"89b6d79c-2d65-494e-a73f-4f087b9e254c\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602769085,\"doTime\":2,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('e0da9d1f-467c-4667-bd7e-2d81aaa6ff90', '{\"id\":\"e0da9d1f-467c-4667-bd7e-2d81aaa6ff90\",\"questionId\":379,\"questionFrameId\":\"fdfc7734-15c5-4584-8f20-637622e946df\",\"questionType\":1,\"doRight\":false,\"contentKey\":1,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"B\",\"correctContent\":null,\"questionItemKeyOrder\":[1,0,2,3],\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":2,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":20,\"questionScoreVM\":\"2\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1685602485787,\"doTime\":1,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('f340b628-9f85-455d-b208-fb467d4284aa', '{\"id\":\"f340b628-9f85-455d-b208-fb467d4284aa\",\"questionId\":382,\"questionFrameId\":\"2954914c-ef71-4c22-ac72-86725791e968\",\"questionType\":4,\"doRight\":null,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":null,\"customerScoreVM\":null,\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1683429138180,\"doTime\":297,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('f6769538-2aab-4465-98bd-ba61fe724c2c', '{\"id\":\"f6769538-2aab-4465-98bd-ba61fe724c2c\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":3,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('f78398fd-a79d-4b8d-bf65-fc278fe6ee44', '{\"id\":\"f78398fd-a79d-4b8d-bf65-fc278fe6ee44\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":true,\"contentKey\":2,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":30,\"customerScoreVM\":\"3\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1683098906460,\"doTime\":3,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('fb5ee4b7-21b1-4118-bd88-936a29360692', '{\"id\":\"fb5ee4b7-21b1-4118-bd88-936a29360692\",\"questionId\":395,\"questionFrameId\":\"fa4defda-00e3-444e-98ab-4d52267e14c3\",\"questionType\":4,\"doRight\":false,\"contentKey\":null,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":null,\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":8,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":40,\"questionScoreVM\":\"4\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":false,\"focusTime\":null,\"doTime\":null,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');
INSERT INTO `t_exam_paper_question_answer_json` VALUES ('fd0a7f89-ecee-4775-a25e-fbf5ac799852', '{\"id\":\"fd0a7f89-ecee-4775-a25e-fbf5ac799852\",\"questionId\":377,\"questionFrameId\":\"1225201c-f131-4bd2-ad36-d0c50b073cce\",\"questionType\":1,\"doRight\":false,\"contentKey\":0,\"contentArrayKey\":[],\"contentArray\":[],\"questionItemAnswerList\":null,\"content\":null,\"imageList\":null,\"correctPrefix\":\"C\",\"correctContent\":null,\"questionItemKeyOrder\":null,\"simulateTrainingAnswer\":null,\"eventsVideo\":null,\"itemOrder\":1,\"customerScore\":0,\"customerScoreVM\":\"0\",\"judgeScoreVM\":null,\"questionScore\":30,\"questionScoreVM\":\"3\",\"typeEnumId\":null,\"insertTag\":null,\"completed\":true,\"focusTime\":1683208347746,\"doTime\":4,\"accuracy\":null,\"childQuestionAnswerFrames\":null}');

-- ----------------------------
-- Table structure for t_exam_paper_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_exam_paper_tag`;
CREATE TABLE `t_exam_paper_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `exam_paper_id` bigint(20) NULL DEFAULT NULL,
  `tag_id` int(11) NULL DEFAULT NULL,
  `tag_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `group_count` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_exam_paper_tag
-- ----------------------------

-- ----------------------------
-- Table structure for t_exam_paper_team
-- ----------------------------
DROP TABLE IF EXISTS `t_exam_paper_team`;
CREATE TABLE `t_exam_paper_team`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NULL DEFAULT NULL,
  `exam_paper_id` bigint(20) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `team_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `degree_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_exam_paper_team
-- ----------------------------

-- ----------------------------
-- Table structure for t_feedback
-- ----------------------------
DROP TABLE IF EXISTS `t_feedback`;
CREATE TABLE `t_feedback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `organization_id` int(11) NULL DEFAULT NULL,
  `degree_id` int(11) NULL DEFAULT NULL,
  `del_flag` int(11) NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for t_file_folder
-- ----------------------------
DROP TABLE IF EXISTS `t_file_folder`;
CREATE TABLE `t_file_folder`  (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `level` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_file_folder
-- ----------------------------

-- ----------------------------
-- Table structure for t_file_path
-- ----------------------------
DROP TABLE IF EXISTS `t_file_path`;
CREATE TABLE `t_file_path`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_file_path
-- ----------------------------

-- ----------------------------
-- Table structure for t_ip_black_list
-- ----------------------------
DROP TABLE IF EXISTS `t_ip_black_list`;
CREATE TABLE `t_ip_black_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ip_black_list
-- ----------------------------

-- ----------------------------
-- Table structure for t_link
-- ----------------------------
DROP TABLE IF EXISTS `t_link`;
CREATE TABLE `t_link`  (
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_link
-- ----------------------------
INSERT INTO `t_link` VALUES ('http://student.lwuchang.com');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_no_cache` tinyint(4) NULL DEFAULT NULL,
  `meta_affix` tinyint(4) NULL DEFAULT NULL,
  `meta_active_menu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hidden` tinyint(4) NULL DEFAULT NULL,
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `always_show` tinyint(4) NULL DEFAULT NULL,
  `item_order` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 257 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (31, '老系统证书管理', '/credential', '老系统证书管理', 'doquestion', NULL, NULL, NULL, 0, NULL, 168, 0, 1, '0000-00-00 00:00:00.000000', 2, 1, 70, NULL);
INSERT INTO `t_menu` VALUES (32, '证书模板列表', 'list', '证书模板列表', NULL, 1, NULL, NULL, 0, '/credential/list', 225, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 10, 'CredentialList');
INSERT INTO `t_menu` VALUES (33, '证书模板创编', 'edit', '证书模板创编', NULL, 1, NULL, NULL, 0, '/credential/edit', 225, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 20, 'CredentialEdit');
INSERT INTO `t_menu` VALUES (49, '答卷证书', 'credential', '答卷证书', NULL, 1, NULL, '/answer/list', 1, '/answer/credential', 91, 0, 32, '0000-00-00 00:00:00.000000', 3, NULL, 30, 'ExamPaperAnswerCredential');
INSERT INTO `t_menu` VALUES (51, '服务保障', '/base', '服务保障', 'setting', NULL, NULL, NULL, 0, NULL, 169, 0, 2, '0000-00-00 00:00:00.000000', 2, 1, 3, NULL);
INSERT INTO `t_menu` VALUES (52, '学科管理', 'category/list', '学科管理', NULL, 0, NULL, NULL, 0, '/base/category/list', 51, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 30, 'CategoryList');
INSERT INTO `t_menu` VALUES (53, '学科创编', 'category/edit', '学科创编', NULL, 1, NULL, '/base/category/list', 1, '/base/category/edit', 51, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 40, 'CategoryEdit');
INSERT INTO `t_menu` VALUES (54, '题型管理', 'type/enum/list', '题型管理', NULL, 0, NULL, NULL, 0, '/base/type-enum/list', 51, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 50, 'typeEnumList');
INSERT INTO `t_menu` VALUES (55, '题型创编', 'type/enum/edit', '题型创编', NULL, 1, NULL, '/base/type/enum/list', 1, '/base/type-enum/edit', 51, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 60, 'TypeEnumEdit');
INSERT INTO `t_menu` VALUES (56, '知识点管理', 'tag/list', '知识点管理', NULL, 0, NULL, NULL, 0, '/base/tag/list', 51, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 70, 'TagList');
INSERT INTO `t_menu` VALUES (57, '知识点创编', 'tag/edit', '知识点创编', NULL, 1, NULL, '/base/tag/list', 1, '/base/tag/edit', 51, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 80, 'TagEdit');
INSERT INTO `t_menu` VALUES (58, '用户管理', '/user', '用户管理', 'user', NULL, NULL, NULL, 0, NULL, 169, 1, 2, '0000-00-00 00:00:00.000000', 2, 1, 20, NULL);
INSERT INTO `t_menu` VALUES (59, '学员列表', 'student/list', '学员列表', NULL, 0, NULL, NULL, 0, '/user/list', 224, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'UserList');
INSERT INTO `t_menu` VALUES (60, '用户创编', '/user/edit', '用户创编', NULL, 1, NULL, '/user/list', 1, '/user/edit', 51, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'UserEdit');
INSERT INTO `t_menu` VALUES (61, '班级管理', '/team', '班级管理', 'team', NULL, NULL, NULL, 0, NULL, 169, 1, 2, '0000-00-00 00:00:00.000000', 2, 1, 30, NULL);
INSERT INTO `t_menu` VALUES (62, '班级列表', 'team/list', '班级列表', NULL, 0, NULL, NULL, 0, '/team/list', 223, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'TeamList');
INSERT INTO `t_menu` VALUES (63, '班级创编', 'team/edit', '班组创编', NULL, 1, NULL, '/team/team/list', 1, '/team/edit', 223, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 2, 'TeamEdit');
INSERT INTO `t_menu` VALUES (64, '题目管理', '/question', '题目管理', 'question', NULL, NULL, NULL, 0, NULL, 216, 0, 2, '0000-00-00 00:00:00.000000', 2, 1, 0, NULL);
INSERT INTO `t_menu` VALUES (65, '题目列表', 'list', '题目列表', NULL, 0, NULL, NULL, 0, '/question/list', 64, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 10, 'QuestionList');
INSERT INTO `t_menu` VALUES (66, '单选题创编', 'single/choice', '单选题创编', NULL, 1, NULL, NULL, 0, '/question/edit/single-choice', 64, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 20, 'QuestionSingleChoice');
INSERT INTO `t_menu` VALUES (67, '多选题创编', 'multiple/choice', '多选题创编', NULL, 1, NULL, NULL, 0, '/question/edit/multiple-choice', 64, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 30, 'QuestionEditMultipleChoice');
INSERT INTO `t_menu` VALUES (68, '判断题创编', 'true/false', '判断题创编', NULL, 1, NULL, NULL, 0, '/question/edit/true-false', 64, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 40, 'QuestionTrueFalse');
INSERT INTO `t_menu` VALUES (69, '填空题创编', 'gap/filling', '填空题创编', NULL, 1, NULL, NULL, 0, '/question/edit/gap-filling', 64, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 50, 'QuesitonGapFilling');
INSERT INTO `t_menu` VALUES (70, '简答题创编', 'short/answer', '简答题创编', NULL, 1, NULL, NULL, 0, '/question/edit/short-answer', 64, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 60, 'QuestionShortAnswer');
INSERT INTO `t_menu` VALUES (71, '卷库管理', '/exam/paper', '卷库管理', 'paper', NULL, NULL, NULL, 0, NULL, 168, 0, 2, '0000-00-00 00:00:00.000000', 2, 1, 50, NULL);
INSERT INTO `t_menu` VALUES (72, '试卷列表', 'list', '试卷列表', NULL, 0, NULL, NULL, 0, '/exam/paper/list', 232, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 10, 'ExamPaperList');
INSERT INTO `t_menu` VALUES (73, '人工组卷', 'edit', '人工组卷', NULL, 1, NULL, NULL, 0, '/exam/paper/edit', 232, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 20, 'ExamPaperEdit');
INSERT INTO `t_menu` VALUES (74, '智能组卷', 'random', '智能组卷', NULL, 1, NULL, NULL, 0, '/exam/paper/random', 232, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 30, 'ExamPaperRandom');
INSERT INTO `t_menu` VALUES (75, '试卷展示', 'show', '试卷展示', NULL, 1, NULL, '/exam/paper/list', 1, '/exam/paper/show', 232, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 40, 'ExamPaperShow');
INSERT INTO `t_menu` VALUES (76, '试卷复制', 'copy', '试卷复制', NULL, 1, NULL, '/exam/paper/edit', 1, '/exam/paper/copy', 232, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 50, 'ExamPaperCopy');
INSERT INTO `t_menu` VALUES (77, '发布考试', '/task', '发布考试', 'task', NULL, NULL, NULL, 0, NULL, 216, 0, 2, '0000-00-00 00:00:00.000000', 2, 1, 5, NULL);
INSERT INTO `t_menu` VALUES (78, '任务列表', 'list', '任务列表', NULL, 0, NULL, NULL, 0, '/task/list', 77, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 10, 'TaskList');
INSERT INTO `t_menu` VALUES (79, '任务创编', 'edit', '任务创编', NULL, 1, NULL, '/task/list', 1, '/task/edit', 77, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 20, 'TaskEdit');
INSERT INTO `t_menu` VALUES (80, '任务展示', 'show', '任务展示', NULL, 1, NULL, '/task/list', 1, '/task/show', 77, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 30, 'TaskShow');
INSERT INTO `t_menu` VALUES (82, '学员分析', 'student/analyze', '学员分析', NULL, 1, NULL, '/student/student/list', 1, '/user/analyze', 224, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 10, 'UserAnalyze');
INSERT INTO `t_menu` VALUES (83, '试卷分析', 'analyze', '试卷分析', NULL, 1, NULL, NULL, 1, '/answer/analyze', 232, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 30, 'AnswerAnalyze');
INSERT INTO `t_menu` VALUES (84, '消息管理', '/message', '消息管理', 'message', NULL, NULL, NULL, 0, NULL, 169, 1, 2, '0000-00-00 00:00:00.000000', 2, 1, 80, NULL);
INSERT INTO `t_menu` VALUES (85, '消息列表', '/message/list', '消息列表', NULL, 0, NULL, NULL, 0, '/message/list', 172, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 10, 'MessageList');
INSERT INTO `t_menu` VALUES (86, '消息发送', '/message/send', '消息发送', NULL, 1, NULL, NULL, 0, '/message/send', 172, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 20, 'MessageSend');
INSERT INTO `t_menu` VALUES (87, '日志管理', '/log', '日志管理', 'log', NULL, NULL, NULL, 0, NULL, 169, 1, 2, '0000-00-00 00:00:00.000000', 2, 1, 90, NULL);
INSERT INTO `t_menu` VALUES (88, '日志列表', 'list', '日志列表', NULL, 0, NULL, NULL, 0, '/event-log/list', 172, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 333, 'LogList');
INSERT INTO `t_menu` VALUES (89, '年级管理', 'degree/list', '年级管理', NULL, 0, NULL, NULL, 1, '/base/degree/list', 51, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 10, 'BaseDegreeList');
INSERT INTO `t_menu` VALUES (90, '年级创编', 'degree/edit', '年级创编', NULL, 1, NULL, '/base/degree/list', 1, '/base/degree/edit', 51, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 20, 'BaseDegreeEdit');
INSERT INTO `t_menu` VALUES (91, '考核分析', '/answer', '考核分析', 'doquestion', NULL, NULL, NULL, 0, NULL, 216, 0, 1, '0000-00-00 00:00:00.000000', 2, 1, 6, NULL);
INSERT INTO `t_menu` VALUES (92, '答卷列表', 'list', '答卷列表', NULL, 0, NULL, NULL, 0, '/answer/list', 91, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 20, 'AnswerPageList');
INSERT INTO `t_menu` VALUES (93, '批改列表', 'judgeList', '批改列表', NULL, 1, NULL, '/answer/list', 1, '/answer/judge-list', 91, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 10, 'AnswerJudgeList');
INSERT INTO `t_menu` VALUES (109, '组合题创编', 'compose', '组合题创编', NULL, 1, NULL, NULL, 0, '/question/edit/compose', 64, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 60, 'QuestionCompose');
INSERT INTO `t_menu` VALUES (111, '商品分类管理', 'product/category/list', '商品分类管理', NULL, 1, NULL, NULL, 0, '/base/product-category/list', 51, 1, 1, '0000-00-00 00:00:00.000000', 2, NULL, 90, 'ProductCategoryList');
INSERT INTO `t_menu` VALUES (112, '商品分类创编', 'product/category/edit', '商品分类创编', NULL, 1, NULL, '/base/product/category/list', 1, '/base/product-category/edit', 51, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 100, 'ProductCategoryEdit');
INSERT INTO `t_menu` VALUES (113, '积分商城', '/mall', '积分商城', 'mall', NULL, NULL, NULL, 0, NULL, NULL, 1, 1, '0000-00-00 00:00:00.000000', 1, 1, 62, NULL);
INSERT INTO `t_menu` VALUES (114, '商品列表', 'product/list', '商品列表', NULL, 1, NULL, NULL, 0, '/product/list', 113, 0, 1, '0000-00-00 00:00:00.000000', 2, NULL, 10, 'ProductList');
INSERT INTO `t_menu` VALUES (115, '商品创编', 'product/edit', '商品创编', NULL, 1, NULL, '/mall/product/list', 1, '/product/edit', 113, 0, 1, '0000-00-00 00:00:00.000000', 2, NULL, 20, 'ProductEdit');
INSERT INTO `t_menu` VALUES (116, '订单列表', 'order/list', '订单列表', NULL, 1, NULL, NULL, 0, '/order/list', 113, 0, 1, '0000-00-00 00:00:00.000000', 2, NULL, 30, 'OrderList');
INSERT INTO `t_menu` VALUES (117, '订单编辑', 'order/edit', '订单编辑', NULL, 1, NULL, '/mall/order/list', 1, '/order/edit', 113, 0, 1, '0000-00-00 00:00:00.000000', 2, NULL, 40, 'OrderEdit');
INSERT INTO `t_menu` VALUES (118, '岗位能力列表', 'job-capability/list', '岗位能力列表', NULL, 1, NULL, NULL, 0, '/base/course-category/list', 220, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 110, 'Course-categoryList');
INSERT INTO `t_menu` VALUES (119, '岗位能力创编', 'job-capability/edit', '岗位能力创编', NULL, 1, NULL, '/job-capability/job-capability/list', 1, '/base/course-category/edit', 220, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 120, NULL);
INSERT INTO `t_menu` VALUES (120, '在线课程', '/course', '在线课程', 'course', NULL, NULL, NULL, 0, NULL, 159, 0, 1, '0000-00-00 00:00:00.000000', 2, 1, 5, NULL);
INSERT INTO `t_menu` VALUES (121, '课程列表', 'course/list', '课程列表', NULL, 1, NULL, NULL, 0, '/course/list', 221, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'CourseList');
INSERT INTO `t_menu` VALUES (122, '课程创编', 'course/edit', '课程创编', NULL, 1, NULL, '/course/course/list', 1, '/course/edit', 221, 0, 1, '0000-00-00 00:00:00.000000', 3, 0, 20, 'CourseEdit');
INSERT INTO `t_menu` VALUES (123, '课程分析', 'course/analyze', '课程分析', NULL, 1, NULL, '/course/course/analyze', 1, '/course/analyze', 221, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 10, 'CourseAnalyze');
INSERT INTO `t_menu` VALUES (124, '课程评论', 'course/comment', '课程评论', NULL, 1, NULL, '/course/course/list', 1, '/course/comment', 221, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 30, 'CourseCommentList');
INSERT INTO `t_menu` VALUES (125, '学校配置', 'system/config/edit', '学校配置', NULL, 1, NULL, NULL, 1, '/base/system-config/edit', 51, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 120, 'SystemConfigEdit');
INSERT INTO `t_menu` VALUES (126, '积分排行', 'point/list', '积分排行', NULL, 1, NULL, NULL, 0, '/point/list', 113, 0, 1, '0000-00-00 00:00:00.000000', 2, NULL, 5, 'PointList');
INSERT INTO `t_menu` VALUES (127, '积分详情', 'point/detail', '积分详情', NULL, 1, NULL, '/mall/point/list', 1, '/point/detail', 113, 0, 1, '0000-00-00 00:00:00.000000', 2, NULL, 20, 'PointDetail');
INSERT INTO `t_menu` VALUES (128, '任务详情', 'detail', '任务详情', NULL, 1, NULL, NULL, 1, '/task/detail', 77, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 20, 'TaskDetail');
INSERT INTO `t_menu` VALUES (129, '班级详情', 'team/detail', '班级详情', NULL, 1, NULL, '/team/team/list', 1, '/team/detail', 223, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 3, 'TeamDetail');
INSERT INTO `t_menu` VALUES (130, '模拟训练题创编', 'simulate/training', '模拟训练题创编', NULL, 1, NULL, NULL, 0, '/question/edit/simulate-training', 64, 0, 2, '0000-00-00 00:00:00.000000', 3, NULL, 70, 'QuestionSimulateTraining');
INSERT INTO `t_menu` VALUES (131, '岗位能力', '/post/ability', '岗位能力', 'post', NULL, NULL, NULL, 0, NULL, 159, 1, 1, '0000-00-00 00:00:00.000000', 2, 1, 71, NULL);
INSERT INTO `t_menu` VALUES (132, '老系统岗位能力列表', '/post-ability/list', '老系统岗位能力列表', NULL, 1, NULL, NULL, 0, '/post-ability/list', 120, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 10, 'PostAbilityList');
INSERT INTO `t_menu` VALUES (133, '老系统岗位能力创编', '/post-ability/edit', '老系统岗位能力创编', NULL, 1, NULL, '/post/ability/post/list', 1, '/post-ability/edit', 120, 0, 1, '0000-00-00 00:00:00.000000', 3, 0, 15, 'PostAbilityEdit');
INSERT INTO `t_menu` VALUES (134, '方案设计', '/post-ability/design', '方案设计', NULL, 1, NULL, '/post/ability/post/list', 1, '/post-ability/scheme-design', 120, 0, 1, '0000-00-00 00:00:00.000000', 3, 0, 20, 'PostAbilitySchemeDesign');
INSERT INTO `t_menu` VALUES (135, '案例实操', '/simulation-training', '案例实操', 'paper', NULL, NULL, NULL, 0, NULL, 215, 0, 1, '0000-00-00 00:00:00.000000', 2, 1, 4, NULL);
INSERT INTO `t_menu` VALUES (136, '案例模板', 'templateManage', '案例模板', NULL, 1, NULL, NULL, 0, '/simulation-training/template-manage', 135, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'Simulation-trainingTemplate-manage');
INSERT INTO `t_menu` VALUES (138, '案例列表', 'subject', '案例列表', NULL, 1, NULL, NULL, 0, '/simulation-training/subject', 135, 0, 20, '0000-00-00 00:00:00.000000', 3, NULL, 2, 'simulationTrainingManage');
INSERT INTO `t_menu` VALUES (139, '案例发布', 'publicSubject', '案例发布', NULL, 1, NULL, NULL, 0, '/simulation-training/publicSubject', 135, 0, 20, '0000-00-00 00:00:00.000000', 3, NULL, 3, 'Simulation-trainingPublicSubject');
INSERT INTO `t_menu` VALUES (140, '课程资料', 'course/material', '课程资料', NULL, 1, NULL, NULL, 1, '/course/material', 221, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 10, 'CourseMaterial');
INSERT INTO `t_menu` VALUES (141, '在线课堂', 'course/chat/:id', '在线课堂', NULL, 1, NULL, '/teaching/course/list2', 1, '/course2/chat', 228, 0, 1, '0000-00-00 00:00:00.000000', 3, NULL, 10, 'CourseChat');
INSERT INTO `t_menu` VALUES (142, '辅助资源', '/otherRes', '辅助资源', 'question', NULL, NULL, NULL, 0, NULL, 159, 0, 42, '0000-00-00 00:00:00.000000', 2, 1, 14, NULL);
INSERT INTO `t_menu` VALUES (143, '反馈管理', 'recommendList', '反馈管理', NULL, 1, NULL, NULL, 0, '/otherRes/recommendList', 227, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 99, '资源类目管理');
INSERT INTO `t_menu` VALUES (144, '政策管理', 'resList/0_1', '政策管理', NULL, 1, NULL, NULL, 0, '/otherRes/resList', 142, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 1, '政策管理');
INSERT INTO `t_menu` VALUES (145, '课后测试', 'course/test', '课后测试', NULL, 1, NULL, '/teaching/course/list2', 1, '/course2/test', 228, 0, 20, '0000-00-00 00:00:00.000000', 3, NULL, 13, 'CourseTest');
INSERT INTO `t_menu` VALUES (148, '法规管理', 'resList/0_2', '法规管理', NULL, 1, NULL, NULL, 0, '/otherRes/resList', 142, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 18, '法规管理');
INSERT INTO `t_menu` VALUES (149, '相关标准', 'resList/0_3', '相关标准', NULL, 1, NULL, NULL, 0, '/otherRes/resList', 142, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 19, '相关标准');
INSERT INTO `t_menu` VALUES (150, '业务文件', 'resList/0_4', '业务文件', NULL, 1, NULL, NULL, 0, '/otherRes/resList', 142, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 20, '业务文件');
INSERT INTO `t_menu` VALUES (151, '使用手册', 'resList/0_5', '使用手册', NULL, 1, NULL, NULL, 0, '/otherRes/resList', 142, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 21, '使用手册');
INSERT INTO `t_menu` VALUES (152, '基础知识', 'resList/0_6', '基础知识', NULL, 1, NULL, NULL, 0, '/otherRes/resList', 142, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 22, '基础知识');
INSERT INTO `t_menu` VALUES (153, '经验交流', '/talk', '经验交流', 'team', NULL, NULL, NULL, 0, NULL, 159, 0, 42, '0000-00-00 00:00:00.000000', 2, 1, 15, 'Talk');
INSERT INTO `t_menu` VALUES (154, '文章管理', '/talk/index', '文章管理', NULL, 1, NULL, NULL, 0, '/talk/index', 229, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 3, 'Index');
INSERT INTO `t_menu` VALUES (155, '交流主题', '/talk/type', '交流主题', NULL, 1, NULL, NULL, 0, '/talk/type', 229, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 2, 'Type');
INSERT INTO `t_menu` VALUES (156, '问答管理', '/talk/faq', '问答管理', NULL, 1, NULL, NULL, 0, '/talk/faq', 229, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 4, 'Faq');
INSERT INTO `t_menu` VALUES (157, '标签管理', '/talk/label', '标签管理', NULL, 1, NULL, NULL, 0, '/talk/label', 229, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 19, 'Label');
INSERT INTO `t_menu` VALUES (158, '课程答疑', '/course/problem', '课程答疑', NULL, 1, NULL, '/course/course/list', 1, '/course2/problemList', 221, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 11, 'courseProblem');
INSERT INTO `t_menu` VALUES (159, '在线学习', '/learn', '在线学习', 'post', NULL, NULL, NULL, 1, NULL, NULL, 0, 42, '0000-00-00 00:00:00.000000', 1, 1, 5, NULL);
INSERT INTO `t_menu` VALUES (167, '模拟训练', '/train', '模拟训练', 'task', NULL, NULL, NULL, 1, NULL, NULL, 0, 42, '0000-00-00 00:00:00.000000', 1, 1, 6, NULL);
INSERT INTO `t_menu` VALUES (168, '考核评估', '/check', '考核评估', 'paper', NULL, NULL, NULL, 1, NULL, NULL, 0, 42, '0000-00-00 00:00:00.000000', 1, 1, 7, NULL);
INSERT INTO `t_menu` VALUES (169, '辅助支撑', '/support', '辅助支撑', 'team', NULL, NULL, NULL, 1, NULL, NULL, 0, 42, '0000-00-00 00:00:00.000000', 1, 1, 8, NULL);
INSERT INTO `t_menu` VALUES (170, '模拟练习', '/practice', '模拟练习', 'doquestion', 1, NULL, NULL, 0, NULL, 167, 0, 42, '0000-00-00 00:00:00.000000', 2, NULL, 1, NULL);
INSERT INTO `t_menu` VALUES (171, '协同演练', '/teamwork', '协同演练', 'team', 1, NULL, NULL, 0, NULL, 167, 0, 42, '0000-00-00 00:00:00.000000', 2, NULL, 100, NULL);
INSERT INTO `t_menu` VALUES (172, '后台管理', '/background', '后台管理', 'log', 1, NULL, NULL, 0, NULL, 217, 0, 42, '0000-00-00 00:00:00.000000', 2, NULL, 9, NULL);
INSERT INTO `t_menu` VALUES (180, '教学管理', '/organization', '教学管理', 'post', NULL, NULL, NULL, 0, NULL, 169, 0, 42, '0000-00-00 00:00:00.000000', 2, 1, 1, NULL);
INSERT INTO `t_menu` VALUES (181, '菜单列表', 'menu/page', '菜单列表', NULL, 1, NULL, NULL, 0, '/organization/menu/list', 237, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 2, 'OrganizationMenuList');
INSERT INTO `t_menu` VALUES (182, '角色列表', 'role/page', '角色列表', NULL, 1, NULL, NULL, 0, '/organization/role/list', 236, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'OrganizationRoleList');
INSERT INTO `t_menu` VALUES (183, '角色创编', 'role/edit', '角色创编', NULL, NULL, NULL, '/role/role/page', 1, '/organization/role/edit', 236, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 2, 'OrganizationRoleEdit');
INSERT INTO `t_menu` VALUES (184, '菜单创编', 'menu/edit', '菜单创编', NULL, NULL, NULL, '/menu/menu/page', 1, '/organization/menu/edit', 237, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'OrganizationMenuEdit');
INSERT INTO `t_menu` VALUES (185, '系统设置', '/systemSetting', '系统设置', 'school', 1, NULL, NULL, 0, NULL, 169, 0, 42, '0000-00-00 00:00:00.000000', 2, NULL, 1, NULL);
INSERT INTO `t_menu` VALUES (186, '模拟练习', '/env/type0', '模拟练习', NULL, NULL, NULL, NULL, 0, '/env/type0', 231, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'envType0');
INSERT INTO `t_menu` VALUES (187, '协同演练', '/env/type1', '协同演练', NULL, NULL, NULL, NULL, 0, '/env/type1', 231, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 2, 'envType1');
INSERT INTO `t_menu` VALUES (188, '老系统消息中心', '/message/list', '老系统消息中心', NULL, NULL, NULL, NULL, 1, '/message/list', 185, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 3, 'messageList');
INSERT INTO `t_menu` VALUES (189, '资源板块', '/approve/otherRes/typeList', '资源板块', NULL, NULL, NULL, NULL, 0, '/approve/otherRes/typeList', 227, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'OtherResTypeList');
INSERT INTO `t_menu` VALUES (190, '禁词管理', 'stopWord/list', '禁词管理', NULL, NULL, NULL, NULL, 0, '/stopWord/list', 172, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 334, 'stopWordList');
INSERT INTO `t_menu` VALUES (191, '黑名单管理', 'ipBlackList/list', '黑名单管理', NULL, NULL, NULL, NULL, 0, '/systemSetting/ipBlackList/list', 172, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 335, 'IpBlackListList');
INSERT INTO `t_menu` VALUES (192, '黑名单管理创编', 'ipBlackList/edit', '黑名单管理创编', NULL, NULL, NULL, '/systemSetting/ipBlackList/list', 1, '/systemSetting/ipBlackList/edit', 172, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'IpBlackListEdit');
INSERT INTO `t_menu` VALUES (193, '反馈列表', '/organization/feedBack/list', '反馈列表', NULL, NULL, NULL, NULL, 0, '/organization/feedBack/list', 185, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 7, 'OrganizationFeedBackList');
INSERT INTO `t_menu` VALUES (194, '回复反馈', '/organization/feedBack/edit', '回复反馈', NULL, NULL, NULL, '/organization/feedBack/list', 1, '/organization/feedBack/edit', 185, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 8, 'OrganizationFeedBackEdit');
INSERT INTO `t_menu` VALUES (195, '系统审核', '/approve', '系统审核', 'school', 1, NULL, NULL, 0, NULL, 169, 0, 42, '0000-00-00 00:00:00.000000', 2, NULL, 2, NULL);
INSERT INTO `t_menu` VALUES (196, '试卷审核', 'examPaper/list', '试卷审核', NULL, NULL, NULL, NULL, 1, '/approve/examPaper/list', 232, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'examPaperList');
INSERT INTO `t_menu` VALUES (197, '试卷查看', 'examPaper/show', '试卷查看', NULL, NULL, NULL, '/approve/examPaper/list', 1, '/approve/examPaper/show', 232, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'examPaperShow');
INSERT INTO `t_menu` VALUES (198, '课程审核', 'course/list', '课程审核', NULL, NULL, NULL, NULL, 0, '/approve/course/list', 195, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 2, 'CourseList');
INSERT INTO `t_menu` VALUES (199, '课程查看', 'course/show', '课程查看', NULL, NULL, NULL, '/approve/course/list', 1, '/approve/course/edit', 195, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 2, 'CourseShow');
INSERT INTO `t_menu` VALUES (200, '资料审核', 'otherRes/list/0_1', '资料审核', NULL, NULL, NULL, NULL, 0, '/approve/otherRes/resList', 227, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 3, 'OtherResList');
INSERT INTO `t_menu` VALUES (201, '课程附件', 'course/material', '课程附件', NULL, NULL, NULL, NULL, 0, '/approve/course/material', 195, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 4, 'CourseMaterial');
INSERT INTO `t_menu` VALUES (202, '环境申请', '/env', '环境申请', 'school', 1, NULL, NULL, 0, NULL, 169, 0, 42, '0000-00-00 00:00:00.000000', 2, NULL, 5, NULL);
INSERT INTO `t_menu` VALUES (203, '模拟训练环境', '/env/list0', '模拟训练环境', NULL, NULL, NULL, NULL, 0, '/env/apply0', 202, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'envApplyList0');
INSERT INTO `t_menu` VALUES (204, '协同演练场景', '/env/list1', '协同演练场景', NULL, NULL, NULL, NULL, 0, '/env/apply1', 202, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 2, 'envApplyList1');
INSERT INTO `t_menu` VALUES (205, '用户管理', '/user', '用户管理', 'users', 1, NULL, NULL, 0, NULL, 169, 1, 42, '0000-00-00 00:00:00.000000', 2, NULL, 1, NULL);
INSERT INTO `t_menu` VALUES (206, '用户列表', 'user/list', '用户列表', NULL, NULL, NULL, NULL, 0, '/user/admin/list', 235, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'UserAdminList');
INSERT INTO `t_menu` VALUES (207, '教学用户', 'organization/list', '教学用户', NULL, NULL, NULL, NULL, 1, '/user/organization/list', 205, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 2, 'OrganizationLlist');
INSERT INTO `t_menu` VALUES (208, '老系统学员用户', 'student/list', '学员用户', NULL, NULL, NULL, NULL, 1, '/user/student/list', 205, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 3, NULL);
INSERT INTO `t_menu` VALUES (209, '用户创建', 'user/edit', '用户创建', NULL, NULL, NULL, '/user/user/list', 1, '/user/admin/edit', 235, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 1, '管理用户创建');
INSERT INTO `t_menu` VALUES (210, '教学用户创建', 'organization/edit', '教学用户创建', NULL, NULL, NULL, '/users/organization/list', 1, '/user/organization/edit', 205, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 2, '教学用户创建');
INSERT INTO `t_menu` VALUES (211, '学员编辑', 'student/edit', '学员编辑', NULL, NULL, NULL, '/student/student/list', 1, '/user/student/edit', 224, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 3, '学员编辑');
INSERT INTO `t_menu` VALUES (212, '方案', '33', '1', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 42, '0000-00-00 00:00:00.000000', 1, 1, 1, '厂');
INSERT INTO `t_menu` VALUES (214, '计划管理', '/plan', '计划管理', 'paper', NULL, NULL, NULL, 0, NULL, NULL, 0, 43, '0000-00-00 00:00:00.000000', 1, 1, 1, NULL);
INSERT INTO `t_menu` VALUES (215, '教学实施', '/teaching-plan', '教学实施', 'paper', NULL, NULL, NULL, 0, NULL, NULL, 0, 43, '0000-00-00 00:00:00.000000', 1, 1, 2, NULL);
INSERT INTO `t_menu` VALUES (216, '考核', '/examine', '考核', 'paper', NULL, NULL, NULL, 0, NULL, NULL, 0, 43, '0000-00-00 00:00:00.000000', 1, 1, 3, NULL);
INSERT INTO `t_menu` VALUES (217, '系统管理', '/system', '系统管理', 'paper', NULL, NULL, NULL, 0, NULL, NULL, 0, 43, '0000-00-00 00:00:00.000000', 1, 1, 4, NULL);
INSERT INTO `t_menu` VALUES (218, '专业管理', '/professional', '专业管理', 'paper', 1, NULL, NULL, 0, NULL, 214, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 1, NULL);
INSERT INTO `t_menu` VALUES (219, '岗位管理', '/job', '岗位管理', 'paper', 1, NULL, NULL, 0, NULL, 214, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 2, NULL);
INSERT INTO `t_menu` VALUES (220, '岗位能力管理', '/job-capability', '岗位能力管理', 'paper', 1, NULL, NULL, 0, NULL, 214, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 3, NULL);
INSERT INTO `t_menu` VALUES (221, '课程管理', '/course', '课程管理', 'paper', 1, NULL, NULL, 0, NULL, 214, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 4, NULL);
INSERT INTO `t_menu` VALUES (222, '业务系统管理', '/business-system', '业务系统管理', 'paper', 1, NULL, NULL, 0, NULL, 214, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 5, NULL);
INSERT INTO `t_menu` VALUES (223, '班次管理', '/team', '班次管理', 'paper', 1, NULL, NULL, 0, NULL, 214, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 6, NULL);
INSERT INTO `t_menu` VALUES (224, '学员管理', '/student', '学员管理', 'paper', 1, NULL, NULL, 0, NULL, 214, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 7, NULL);
INSERT INTO `t_menu` VALUES (225, '证书管理', '/certificate', '证书管理', 'paper', 1, NULL, NULL, 0, NULL, 214, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 8, NULL);
INSERT INTO `t_menu` VALUES (226, '学情分析', '/analysis', '学情分析', 'paper', 1, NULL, NULL, 0, NULL, 214, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 9, NULL);
INSERT INTO `t_menu` VALUES (227, '辅助资源', '/resources', '辅助资源', 'paper', 1, NULL, NULL, 0, NULL, 215, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 1, NULL);
INSERT INTO `t_menu` VALUES (228, '授课', '/teaching', '授课', 'paper', 1, NULL, NULL, 0, NULL, 215, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 2, NULL);
INSERT INTO `t_menu` VALUES (229, '研讨', '/discuss', '研讨', 'paper', 1, NULL, NULL, 0, NULL, 215, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 3, NULL);
INSERT INTO `t_menu` VALUES (231, '资源分配', '/allocation', '资源分配', 'paper', 1, NULL, NULL, 0, NULL, 215, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 5, NULL);
INSERT INTO `t_menu` VALUES (232, '试卷管理', '/paper', '试卷管理', 'paper', 1, NULL, NULL, 0, NULL, 216, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 1, NULL);
INSERT INTO `t_menu` VALUES (233, '发布考试', '/exam-task', '发布考试', 'paper', 1, NULL, NULL, 0, NULL, 216, 1, 43, '0000-00-00 00:00:00.000000', 2, NULL, 2, NULL);
INSERT INTO `t_menu` VALUES (234, '考核分析', '/appraise', '考核分析', 'paper', 1, NULL, NULL, 0, NULL, 216, 1, 43, '0000-00-00 00:00:00.000000', 2, NULL, 3, NULL);
INSERT INTO `t_menu` VALUES (235, '用户管理', '/user', '用户管理', 'paper', 1, NULL, NULL, 0, NULL, 217, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 1, NULL);
INSERT INTO `t_menu` VALUES (236, '角色管理', '/role', '角色管理', 'paper', 1, NULL, NULL, 0, NULL, 217, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 2, NULL);
INSERT INTO `t_menu` VALUES (237, '菜单管理', '/menu', '菜单管理', 'paper', 1, NULL, NULL, 0, NULL, 217, 0, 43, '0000-00-00 00:00:00.000000', 2, NULL, 3, NULL);
INSERT INTO `t_menu` VALUES (238, '用户列表', 'admin/list', '用户列表', NULL, NULL, NULL, NULL, 0, '/user/admin/list', 235, 1, 43, '0000-00-00 00:00:00.000000', 3, NULL, 1, NULL);
INSERT INTO `t_menu` VALUES (239, '岗位列表', 'job/postManagement', '岗位列表', NULL, NULL, NULL, NULL, 0, '/job/postManagement', 219, 0, 43, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'JobPostManagement');
INSERT INTO `t_menu` VALUES (240, '专业列表', 'category/list', '专业列表', NULL, NULL, NULL, NULL, 0, '/base/category/list', 218, 0, 43, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'CategoryList');
INSERT INTO `t_menu` VALUES (241, '业务系统列表', '/businessSystem/systemManagement', '业务系统列表', NULL, NULL, NULL, NULL, 0, '/businessSystem/systemManagement', 222, 0, 43, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'BusinessSystemSystemManagement');
INSERT INTO `t_menu` VALUES (245, '资源主题', '/subject/subjectList', '资源主题', NULL, NULL, NULL, NULL, 0, '/subject/subjectList', 227, 0, 43, '0000-00-00 00:00:00.000000', 3, NULL, 2, 'SubjectSubjectList');
INSERT INTO `t_menu` VALUES (246, '资料列表', '/subject/subjectList/referenceRes', '资料列表', NULL, NULL, NULL, '/subject/subjectList', 1, '/otherRes/referenceRes', 227, 0, 43, '0000-00-00 00:00:00.000000', 3, NULL, 4, 'OtherResReferenceRes');
INSERT INTO `t_menu` VALUES (247, '交流板块', '/approve/otherRes/exchangeTypeList', '交流板块', NULL, NULL, NULL, NULL, 0, '/approve/otherRes/exchangeTypeList', 229, 0, 43, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'OtherResExchangeTypeList');
INSERT INTO `t_menu` VALUES (248, '调问系统', 'student', '调问系统', NULL, NULL, NULL, NULL, 0, '/analysis/student', 226, 0, 43, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'AnalysisStudent');
INSERT INTO `t_menu` VALUES (249, '课程列表', 'course/list2', '课程列表', NULL, NULL, NULL, NULL, 0, '/course2/list', 228, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'CourseList2');
INSERT INTO `t_menu` VALUES (250, '课程公告', 'message/send', '课程公告', NULL, NULL, NULL, '/teaching/course/list2', 1, '/message/send', 228, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'CourseMessageSend');
INSERT INTO `t_menu` VALUES (251, '模拟练习账号', '/env/account0', '模拟练习账号', NULL, NULL, NULL, '/env/type0', 1, '/env/account0', 231, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 1, 'envAccount0');
INSERT INTO `t_menu` VALUES (252, '协同演练账号', '/env/account1', '协同演练账号', NULL, NULL, NULL, '/env/type1', 1, '/env/account1', 231, 0, 42, '0000-00-00 00:00:00.000000', 3, NULL, 2, 'envAccount1');
INSERT INTO `t_menu` VALUES (253, '111', '111', '111', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 42, '0000-00-00 00:00:00.000000', 1, 1, 1, NULL);
INSERT INTO `t_menu` VALUES (254, '222', '222', '222', NULL, 1, NULL, NULL, 0, NULL, 253, 1, 214, '0000-00-00 00:00:00.000000', 2, NULL, 2, NULL);
INSERT INTO `t_menu` VALUES (255, '333', '333', '333', NULL, NULL, NULL, NULL, 0, NULL, 254, 1, 214, '0000-00-00 00:00:00.000000', 3, NULL, 3, NULL);
INSERT INTO `t_menu` VALUES (256, '11111', '1112', '1111', '111', NULL, NULL, NULL, 0, NULL, NULL, 1, 42, '0000-00-00 00:00:00.000000', 1, 1, 11, '111');

-- ----------------------------
-- Table structure for t_menu_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_menu_permission`;
CREATE TABLE `t_menu_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NULL DEFAULT NULL,
  `identification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_order` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 657 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu_permission
-- ----------------------------
INSERT INTO `t_menu_permission` VALUES (1, 52, 'category:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (2, 52, 'category:select', 1, '查看', 20);
INSERT INTO `t_menu_permission` VALUES (3, 52, 'category:create', 1, '创建', 30);
INSERT INTO `t_menu_permission` VALUES (4, 52, 'category:update', 1, '编辑', 40);
INSERT INTO `t_menu_permission` VALUES (5, 52, 'category:delete', 1, '删除', 50);
INSERT INTO `t_menu_permission` VALUES (6, 54, 'typeEnum:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (7, 54, 'typeEnum:create', 1, '创建', 30);
INSERT INTO `t_menu_permission` VALUES (8, 54, 'typeEnum:select', 1, '查看', 20);
INSERT INTO `t_menu_permission` VALUES (9, 54, 'typeEnum:update', 1, '编辑', 40);
INSERT INTO `t_menu_permission` VALUES (10, 54, 'typeEnum:delete', 1, '删除', 50);
INSERT INTO `t_menu_permission` VALUES (11, 56, 'tag:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (12, 56, 'tag:select', 1, '查看', 20);
INSERT INTO `t_menu_permission` VALUES (13, 56, 'tag:create', 1, '创建', 30);
INSERT INTO `t_menu_permission` VALUES (14, 56, 'tag:update', 1, '编辑', 40);
INSERT INTO `t_menu_permission` VALUES (15, 56, 'tag:delete', 1, '删除', 50);
INSERT INTO `t_menu_permission` VALUES (16, 59, 'user:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (17, 59, 'user:select', 1, '查看', 20);
INSERT INTO `t_menu_permission` VALUES (18, 59, 'user:create', 1, '创建', 30);
INSERT INTO `t_menu_permission` VALUES (19, 59, 'user:update', 1, '编辑', 40);
INSERT INTO `t_menu_permission` VALUES (20, 59, 'user:changeStatus', 1, '启用禁用', 60);
INSERT INTO `t_menu_permission` VALUES (21, 59, 'user:delete', 1, '删除', 50);
INSERT INTO `t_menu_permission` VALUES (22, 62, 'team:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (23, 62, 'team:select', 1, '查看', 20);
INSERT INTO `t_menu_permission` VALUES (24, 62, 'team:create', 1, '创建', 30);
INSERT INTO `t_menu_permission` VALUES (25, 62, 'team:update', 1, '编辑', 40);
INSERT INTO `t_menu_permission` VALUES (26, 62, 'team:delete', 1, '删除', 60);
INSERT INTO `t_menu_permission` VALUES (27, 65, 'question:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (31, 65, 'question:delete', 1, '删除', 60);
INSERT INTO `t_menu_permission` VALUES (32, 65, 'question:excel', 1, 'Excel导入', 60);
INSERT INTO `t_menu_permission` VALUES (33, 59, 'user:excel', 1, '导入', 70);
INSERT INTO `t_menu_permission` VALUES (34, 72, 'paper:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (35, 72, 'paper:select', 1, '查看', 20);
INSERT INTO `t_menu_permission` VALUES (36, 72, 'paper:create', 1, '创建', 30);
INSERT INTO `t_menu_permission` VALUES (37, 72, 'paper:update', 1, '编辑', 40);
INSERT INTO `t_menu_permission` VALUES (38, 72, 'paper:delete', 1, '删除', 60);
INSERT INTO `t_menu_permission` VALUES (39, 72, 'paper:statusChange', 1, '发布撤回', 60);
INSERT INTO `t_menu_permission` VALUES (42, 73, 'paper:select', 1, '查看', 10);
INSERT INTO `t_menu_permission` VALUES (43, 73, 'paper:create', 1, '创建', 20);
INSERT INTO `t_menu_permission` VALUES (44, 73, 'paper:update', 1, '编辑', 30);
INSERT INTO `t_menu_permission` VALUES (45, 72, 'paper:copy', 1, '复制', 70);
INSERT INTO `t_menu_permission` VALUES (46, 66, 'question:singleChoice:select', 1, '查看', 10);
INSERT INTO `t_menu_permission` VALUES (47, 66, 'question:singleChoice:create', 1, '创建', 20);
INSERT INTO `t_menu_permission` VALUES (48, 66, 'question:singleChoice:update', 1, '编辑', 30);
INSERT INTO `t_menu_permission` VALUES (49, 67, 'question:multipleChoice:select', 1, '查看', 10);
INSERT INTO `t_menu_permission` VALUES (50, 67, 'question:multipleChoice:create', 1, '创建', 20);
INSERT INTO `t_menu_permission` VALUES (51, 67, 'question:multipleChoice:update', 1, '编辑', 30);
INSERT INTO `t_menu_permission` VALUES (52, 68, 'question:trueFalse:select', 1, '查看', 10);
INSERT INTO `t_menu_permission` VALUES (53, 68, 'question:trueFalse:create', 1, '创建', 20);
INSERT INTO `t_menu_permission` VALUES (54, 68, 'question:trueFalse:update', 1, '编辑', 30);
INSERT INTO `t_menu_permission` VALUES (55, 69, 'question:gapFilling:select', 1, '查看', 10);
INSERT INTO `t_menu_permission` VALUES (56, 69, 'question:gapFilling:create', 1, '创建', 20);
INSERT INTO `t_menu_permission` VALUES (57, 69, 'question:gapFilling:update', 1, '编辑', 30);
INSERT INTO `t_menu_permission` VALUES (58, 70, 'question:shortAnswer:select', 1, '查看', 10);
INSERT INTO `t_menu_permission` VALUES (59, 70, 'question:shortAnswer:create', 1, '创建', 20);
INSERT INTO `t_menu_permission` VALUES (60, 70, 'question:shortAnswer:update', 1, '编辑', 30);
INSERT INTO `t_menu_permission` VALUES (61, 74, 'paper:select', 1, '查看', 10);
INSERT INTO `t_menu_permission` VALUES (62, 74, 'paper:create', 1, '创建', 20);
INSERT INTO `t_menu_permission` VALUES (63, 74, 'paper:update', 1, '编辑', 30);
INSERT INTO `t_menu_permission` VALUES (64, 74, 'paper:random', 1, '智能组卷', 30);
INSERT INTO `t_menu_permission` VALUES (65, 78, 'task:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (66, 78, 'task:select', 1, '查看', 20);
INSERT INTO `t_menu_permission` VALUES (67, 78, 'task:create', 1, '创建', 30);
INSERT INTO `t_menu_permission` VALUES (68, 78, 'task:update', 1, '编辑', 40);
INSERT INTO `t_menu_permission` VALUES (69, 78, 'task:delete', 1, '删除', 60);
INSERT INTO `t_menu_permission` VALUES (70, 78, 'task:statusChange', 1, '发布撤回', 70);
INSERT INTO `t_menu_permission` VALUES (71, 82, 'analyze:user', 1, '查看', 10);
INSERT INTO `t_menu_permission` VALUES (72, 83, 'analyze:paper', 1, '查看', 10);
INSERT INTO `t_menu_permission` VALUES (73, 85, 'message:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (74, 86, 'message:send', 1, '发送', 10);
INSERT INTO `t_menu_permission` VALUES (75, 88, 'userEventLog:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (76, 89, 'degree:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (77, 89, 'degree:create', 1, '创建', 20);
INSERT INTO `t_menu_permission` VALUES (78, 89, 'degree:select', 1, '查看', 30);
INSERT INTO `t_menu_permission` VALUES (79, 89, 'degree:update', 1, '编辑', 40);
INSERT INTO `t_menu_permission` VALUES (80, 89, 'degree:delete', 1, '删除', 50);
INSERT INTO `t_menu_permission` VALUES (81, 92, 'answer:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (82, 92, 'answer:judge', 1, '批改列表', 20);
INSERT INTO `t_menu_permission` VALUES (83, 92, 'answer:edit', 1, '批改', 30);
INSERT INTO `t_menu_permission` VALUES (84, 92, 'answer:read', 1, '查看', 40);
INSERT INTO `t_menu_permission` VALUES (85, 92, 'answer:export', 1, '导出', 50);
INSERT INTO `t_menu_permission` VALUES (96, 85, 'message:select', 1, '查看', 20);
INSERT INTO `t_menu_permission` VALUES (97, 85, 'message:recall', 1, '撤回', 30);
INSERT INTO `t_menu_permission` VALUES (98, 65, 'question:word', 1, 'Word导入', 70);
INSERT INTO `t_menu_permission` VALUES (99, 109, 'question:compose:select', 1, '查看', 10);
INSERT INTO `t_menu_permission` VALUES (100, 109, 'question:compose:create', 1, '创建', 20);
INSERT INTO `t_menu_permission` VALUES (101, 109, 'question:compose:update', 1, '查看', 30);
INSERT INTO `t_menu_permission` VALUES (103, 111, 'product:category:update', 0, '编辑', 40);
INSERT INTO `t_menu_permission` VALUES (104, 111, 'product:category:create', 0, '创建', 30);
INSERT INTO `t_menu_permission` VALUES (105, 111, 'product:category:select', 0, '查看', 20);
INSERT INTO `t_menu_permission` VALUES (106, 111, 'product:category:page', 0, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (107, 111, 'product:category:delete', 0, '删除', 50);
INSERT INTO `t_menu_permission` VALUES (108, 114, 'product:update', 0, '编辑', 40);
INSERT INTO `t_menu_permission` VALUES (109, 114, 'product:create', 0, '创建', 30);
INSERT INTO `t_menu_permission` VALUES (110, 114, 'product:select', 0, '查看', 20);
INSERT INTO `t_menu_permission` VALUES (111, 114, 'product:page', 0, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (112, 114, 'product:delete', 0, '删除', 50);
INSERT INTO `t_menu_permission` VALUES (113, 114, 'product:statusChange', 0, '上架下架', 60);
INSERT INTO `t_menu_permission` VALUES (114, 116, 'order:page', 0, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (115, 116, 'order:select', 0, '查看', 20);
INSERT INTO `t_menu_permission` VALUES (116, 116, 'order:update', 0, '编辑', 40);
INSERT INTO `t_menu_permission` VALUES (117, 116, 'order:delete', 0, '删除', 50);
INSERT INTO `t_menu_permission` VALUES (118, 118, 'course:category:update', 1, '编辑', 40);
INSERT INTO `t_menu_permission` VALUES (119, 118, 'course:category:create', 1, '创建', 30);
INSERT INTO `t_menu_permission` VALUES (120, 118, 'course:category:select', 1, '查看', 20);
INSERT INTO `t_menu_permission` VALUES (121, 118, 'course:category:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (122, 118, 'course:category:delete', 1, '删除', 50);
INSERT INTO `t_menu_permission` VALUES (123, 121, 'course:update', 1, '编辑', 40);
INSERT INTO `t_menu_permission` VALUES (124, 121, 'course:create', 1, '创建', 30);
INSERT INTO `t_menu_permission` VALUES (125, 121, 'course:select', 1, '查看', 20);
INSERT INTO `t_menu_permission` VALUES (126, 121, 'course:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (127, 121, 'course:delete', 1, '删除', 50);
INSERT INTO `t_menu_permission` VALUES (128, 121, 'course:statusChange', 1, '上架下架', 60);
INSERT INTO `t_menu_permission` VALUES (129, 123, 'analyze:course', 1, '查看', 10);
INSERT INTO `t_menu_permission` VALUES (130, 124, 'course:comment:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (131, 124, 'course:comment:delete', 1, '删除', 20);
INSERT INTO `t_menu_permission` VALUES (132, 125, 'organization:select', 1, '查看', 10);
INSERT INTO `t_menu_permission` VALUES (133, 125, 'organization:edit', 1, '编辑', 20);
INSERT INTO `t_menu_permission` VALUES (134, 126, 'point:page', 0, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (135, 126, 'point:detail', 0, '详情', 20);
INSERT INTO `t_menu_permission` VALUES (136, 126, 'point:action', 0, '积分调整', 30);
INSERT INTO `t_menu_permission` VALUES (137, 128, 'task:answer:select', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (138, 129, 'team:user:page', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (139, 129, 'team:user:delete', 1, '移除学员', 3);
INSERT INTO `t_menu_permission` VALUES (140, 129, 'team:user:add', 1, '添加学员', 2);
INSERT INTO `t_menu_permission` VALUES (141, 130, 'question:simulateTraining:select', 1, '查看', 10);
INSERT INTO `t_menu_permission` VALUES (142, 130, 'question:simulateTraining:create', 1, '创建', 20);
INSERT INTO `t_menu_permission` VALUES (143, 130, 'question:simulateTraining:update', 1, '编辑', 30);
INSERT INTO `t_menu_permission` VALUES (144, 32, 'credential:delete', 1, '删除', 10);
INSERT INTO `t_menu_permission` VALUES (145, 33, 'credential:create', 1, '创建', 10);
INSERT INTO `t_menu_permission` VALUES (146, 33, 'credential:update', 1, '编辑', 20);
INSERT INTO `t_menu_permission` VALUES (147, 49, 'exam:paper:answer:credential', 1, '查看', 10);
INSERT INTO `t_menu_permission` VALUES (148, 132, 'postAbility:update', 1, '编辑', 40);
INSERT INTO `t_menu_permission` VALUES (149, 132, 'postAbility:create', 1, '创建', 30);
INSERT INTO `t_menu_permission` VALUES (150, 132, 'postAbility:select', 1, '查看', 20);
INSERT INTO `t_menu_permission` VALUES (151, 132, 'postAbility:page', 1, '分页', 10);
INSERT INTO `t_menu_permission` VALUES (152, 132, 'postAbility:delete', 1, '删除', 50);
INSERT INTO `t_menu_permission` VALUES (153, 132, 'postAbility:statusChange', 1, '上架下架', 60);
INSERT INTO `t_menu_permission` VALUES (154, 134, 'scheme:design', 1, '方案设计', 10);
INSERT INTO `t_menu_permission` VALUES (155, 136, 'template:page,template:select,template:create,template:update,template:delete', 1, '模板管理', 10);
INSERT INTO `t_menu_permission` VALUES (156, 136, 'template:page,template:select,template:create,template:update,template:delete', 1, '模板管理', 1);
INSERT INTO `t_menu_permission` VALUES (157, 136, 'template:page,template:select,template:create,template:update,template:delete', 1, '模板管理', 1);
INSERT INTO `t_menu_permission` VALUES (158, 121, 'course:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (159, 121, 'course:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (160, 121, 'course:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (161, 121, 'course:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (162, 121, 'course:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (163, 121, 'course:statusChange', 1, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (164, 121, 'course:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (165, 121, 'course:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (166, 121, 'course:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (167, 121, 'course:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (168, 121, 'course:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (169, 121, 'course:statusChange', 1, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (170, 123, 'analyze:course', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (171, 123, 'analyze:course', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (172, 121, 'course:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (173, 121, 'course:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (174, 121, 'course:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (175, 121, 'course:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (176, 121, 'course:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (177, 121, 'course:statusChange', 1, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (178, 124, 'course:comment:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (179, 124, 'course:comment:delete', 1, '删除', 2);
INSERT INTO `t_menu_permission` VALUES (180, 123, 'analyze:course', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (181, 121, 'course:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (182, 121, 'course:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (183, 121, 'course:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (184, 121, 'course:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (185, 121, 'course:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (186, 121, 'course:statusChange', 1, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (187, 136, 'template:page,template:select,template:create,template:update,template:delete', 1, '模板管理', 1);
INSERT INTO `t_menu_permission` VALUES (188, 130, 'question:simulateTraining:select', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (189, 130, 'question:simulateTraining:create', 0, '创建', 2);
INSERT INTO `t_menu_permission` VALUES (190, 130, 'question:simulateTraining:update', 0, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (191, 109, 'question:compose:select', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (192, 109, 'question:compose:create', 0, '创建', 2);
INSERT INTO `t_menu_permission` VALUES (193, 109, 'question:compose:update', 0, '查看', 3);
INSERT INTO `t_menu_permission` VALUES (194, 70, 'question:shortAnswer:select', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (195, 70, 'question:shortAnswer:create', 0, '创建', 2);
INSERT INTO `t_menu_permission` VALUES (196, 70, 'question:shortAnswer:update', 0, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (197, 69, 'question:gapFilling:select', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (198, 69, 'question:gapFilling:create', 0, '创建', 2);
INSERT INTO `t_menu_permission` VALUES (199, 69, 'question:gapFilling:update', 0, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (200, 68, 'question:trueFalse:select', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (201, 68, 'question:trueFalse:create', 0, '创建', 2);
INSERT INTO `t_menu_permission` VALUES (202, 68, 'question:trueFalse:update', 0, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (203, 67, 'question:multipleChoice:select', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (204, 67, 'question:multipleChoice:create', 0, '创建', 2);
INSERT INTO `t_menu_permission` VALUES (205, 67, 'question:multipleChoice:update', 0, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (206, 66, 'question:singleChoice:select', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (207, 66, 'question:singleChoice:create', 0, '创建', 2);
INSERT INTO `t_menu_permission` VALUES (208, 66, 'question:singleChoice:update', 0, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (209, 65, 'question:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (210, 65, 'question:delete', 0, '删除', 2);
INSERT INTO `t_menu_permission` VALUES (211, 65, 'question:excel', 0, 'Excel导入', 3);
INSERT INTO `t_menu_permission` VALUES (212, 65, 'question:word', 0, 'Word导入', 4);
INSERT INTO `t_menu_permission` VALUES (213, 74, 'paper:select', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (214, 74, 'paper:create', 1, '创建', 2);
INSERT INTO `t_menu_permission` VALUES (215, 74, 'paper:update', 1, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (216, 74, 'paper:random', 1, '智能组卷', 4);
INSERT INTO `t_menu_permission` VALUES (217, 73, 'paper:select', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (218, 73, 'paper:create', 1, '创建', 2);
INSERT INTO `t_menu_permission` VALUES (219, 73, 'paper:update', 1, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (220, 72, 'paper:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (221, 72, 'paper:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (222, 72, 'paper:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (223, 72, 'paper:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (224, 72, 'paper:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (225, 72, 'paper:statusChange', 1, '发布撤回', 6);
INSERT INTO `t_menu_permission` VALUES (226, 72, 'paper:copy', 1, '复制', 7);
INSERT INTO `t_menu_permission` VALUES (227, 92, 'answer:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (228, 92, 'answer:judge', 1, '批改列表', 2);
INSERT INTO `t_menu_permission` VALUES (229, 92, 'answer:edit', 1, '批改', 3);
INSERT INTO `t_menu_permission` VALUES (230, 92, 'answer:read', 1, '查看', 4);
INSERT INTO `t_menu_permission` VALUES (231, 92, 'answer:export', 1, '导出', 5);
INSERT INTO `t_menu_permission` VALUES (232, 83, 'analyze:paper', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (233, 128, 'task:answer:select', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (234, 78, 'task:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (235, 78, 'task:select', 0, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (236, 78, 'task:create', 0, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (237, 78, 'task:update', 0, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (238, 78, 'task:delete', 0, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (239, 78, 'task:statusChange', 0, '发布撤回', 6);
INSERT INTO `t_menu_permission` VALUES (240, 33, 'credential:create', 1, '创建', 1);
INSERT INTO `t_menu_permission` VALUES (241, 33, 'credential:update', 1, '编辑', 2);
INSERT INTO `t_menu_permission` VALUES (242, 32, 'credential:delete', 1, '删除', 1);
INSERT INTO `t_menu_permission` VALUES (243, 125, 'organization:select', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (244, 125, 'organization:edit', 1, '编辑', 2);
INSERT INTO `t_menu_permission` VALUES (245, 125, 'organization:select', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (246, 125, 'organization:edit', 1, '编辑', 2);
INSERT INTO `t_menu_permission` VALUES (247, 118, 'course:category:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (248, 118, 'course:category:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (249, 118, 'course:category:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (250, 118, 'course:category:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (251, 118, 'course:category:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (252, 89, 'degree:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (253, 89, 'degree:create', 1, '创建', 2);
INSERT INTO `t_menu_permission` VALUES (254, 89, 'degree:select', 1, '查看', 3);
INSERT INTO `t_menu_permission` VALUES (255, 89, 'degree:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (256, 89, 'degree:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (257, 56, 'tag:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (258, 56, 'tag:select', 0, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (259, 56, 'tag:create', 0, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (260, 56, 'tag:update', 0, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (261, 56, 'tag:delete', 0, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (262, 54, 'typeEnum:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (263, 54, 'typeEnum:select', 0, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (264, 54, 'typeEnum:create', 0, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (265, 54, 'typeEnum:update', 0, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (266, 54, 'typeEnum:delete', 0, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (267, 52, 'category:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (268, 52, 'category:select', 0, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (269, 52, 'category:create', 0, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (270, 52, 'category:update', 0, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (271, 52, 'category:delete', 0, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (272, 82, 'analyze:user', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (273, 59, 'user:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (274, 59, 'user:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (275, 59, 'user:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (276, 59, 'user:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (277, 59, 'user:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (278, 59, 'user:changeStatus', 1, '启用禁用', 6);
INSERT INTO `t_menu_permission` VALUES (279, 59, 'user:excel', 1, '导入', 7);
INSERT INTO `t_menu_permission` VALUES (280, 129, 'team:user:page', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (281, 129, 'team:user:add', 1, '添加学员', 2);
INSERT INTO `t_menu_permission` VALUES (282, 129, 'team:user:delete', 1, '移除学员', 3);
INSERT INTO `t_menu_permission` VALUES (283, 62, 'team:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (284, 62, 'team:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (285, 62, 'team:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (286, 62, 'team:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (287, 62, 'team:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (288, 134, 'scheme:design', 1, '方案设计', 1);
INSERT INTO `t_menu_permission` VALUES (289, 132, 'postAbility:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (290, 132, 'postAbility:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (291, 132, 'postAbility:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (292, 132, 'postAbility:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (293, 132, 'postAbility:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (294, 132, 'postAbility:statusChange', 1, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (295, 86, 'message:send', 1, '发送', 1);
INSERT INTO `t_menu_permission` VALUES (296, 85, 'message:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (297, 85, 'message:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (298, 85, 'message:recall', 1, '撤回', 3);
INSERT INTO `t_menu_permission` VALUES (299, 88, 'userEventLog:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (300, 123, 'analyze:course', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (301, 124, 'course:comment:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (302, 124, 'course:comment:delete', 1, '删除', 2);
INSERT INTO `t_menu_permission` VALUES (303, 132, 'postAbility:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (304, 132, 'postAbility:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (305, 132, 'postAbility:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (306, 132, 'postAbility:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (307, 132, 'postAbility:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (308, 132, 'postAbility:statusChange', 1, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (309, 132, 'postAbility:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (310, 132, 'postAbility:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (311, 132, 'postAbility:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (312, 132, 'postAbility:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (313, 132, 'postAbility:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (314, 132, 'postAbility:statusChange', 1, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (315, 134, 'scheme:design', 1, '方案设计', 1);
INSERT INTO `t_menu_permission` VALUES (316, 132, 'postAbility:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (317, 132, 'postAbility:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (318, 132, 'postAbility:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (319, 132, 'postAbility:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (320, 132, 'postAbility:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (321, 132, 'postAbility:statusChange', 1, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (322, 132, 'postAbility:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (323, 132, 'postAbility:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (324, 132, 'postAbility:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (325, 132, 'postAbility:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (326, 132, 'postAbility:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (327, 132, 'postAbility:statusChange', 1, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (328, 132, 'postAbility:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (329, 132, 'postAbility:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (330, 132, 'postAbility:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (331, 132, 'postAbility:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (332, 132, 'postAbility:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (333, 132, 'postAbility:statusChange', 1, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (334, 132, 'postAbility:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (335, 132, 'postAbility:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (336, 132, 'postAbility:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (337, 132, 'postAbility:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (338, 132, 'postAbility:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (339, 132, 'postAbility:statusChange', 1, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (340, 134, 'scheme:design', 0, '方案设计', 1);
INSERT INTO `t_menu_permission` VALUES (341, 83, 'analyze:paper', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (342, 128, 'task:answer:select', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (343, 125, 'organization:select', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (344, 125, 'organization:edit', 1, '编辑', 2);
INSERT INTO `t_menu_permission` VALUES (345, 59, 'user:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (346, 59, 'user:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (347, 59, 'user:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (348, 59, 'user:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (349, 59, 'user:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (350, 59, 'user:changeStatus', 1, '启用禁用', 6);
INSERT INTO `t_menu_permission` VALUES (351, 59, 'user:excel', 1, '导入', 7);
INSERT INTO `t_menu_permission` VALUES (352, 82, 'analyze:user', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (353, 82, 'analyze:user', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (354, 82, 'analyze:user', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (355, 62, 'team:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (356, 62, 'team:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (357, 62, 'team:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (358, 62, 'team:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (359, 62, 'team:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (360, 129, 'team:user:page', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (361, 129, 'team:user:add', 1, '添加学员', 2);
INSERT INTO `t_menu_permission` VALUES (362, 129, 'team:user:delete', 1, '移除学员', 3);
INSERT INTO `t_menu_permission` VALUES (363, 129, 'team:user:page', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (364, 129, 'team:user:add', 1, '添加学员', 2);
INSERT INTO `t_menu_permission` VALUES (365, 129, 'team:user:delete', 1, '移除学员', 3);
INSERT INTO `t_menu_permission` VALUES (366, 62, 'team:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (367, 62, 'team:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (368, 62, 'team:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (369, 62, 'team:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (370, 62, 'team:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (371, 129, 'team:user:page', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (372, 129, 'team:user:add', 1, '添加学员', 2);
INSERT INTO `t_menu_permission` VALUES (373, 129, 'team:user:delete', 1, '移除学员', 3);
INSERT INTO `t_menu_permission` VALUES (374, 85, 'message:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (375, 85, 'message:select', 0, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (376, 85, 'message:recall', 0, '撤回', 3);
INSERT INTO `t_menu_permission` VALUES (377, 86, 'message:send', 1, '发送', 1);
INSERT INTO `t_menu_permission` VALUES (378, 88, 'userEventLog:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (379, 88, 'userEventLog:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (380, 88, 'userEventLog:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (381, 62, 'team:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (382, 62, 'team:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (383, 62, 'team:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (384, 62, 'team:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (385, 62, 'team:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (386, 125, 'organization:select', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (387, 125, 'organization:edit', 1, '编辑', 2);
INSERT INTO `t_menu_permission` VALUES (388, 125, 'organization:select', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (389, 125, 'organization:edit', 1, '编辑', 2);
INSERT INTO `t_menu_permission` VALUES (390, 125, 'organization:select', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (391, 125, 'organization:edit', 1, '编辑', 2);
INSERT INTO `t_menu_permission` VALUES (392, 125, 'organization:select', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (393, 125, 'organization:edit', 0, '编辑', 2);
INSERT INTO `t_menu_permission` VALUES (394, 120, 'res_manager', 1, '资源管理员', 1);
INSERT INTO `t_menu_permission` VALUES (395, 120, 'resManager', 1, '资源管理员', 1);
INSERT INTO `t_menu_permission` VALUES (396, 120, 'resManager', 0, '资源管理员', 1);
INSERT INTO `t_menu_permission` VALUES (397, 120, 'teacherManager', 0, '教员', 2);
INSERT INTO `t_menu_permission` VALUES (398, 181, 'menuManagement', 1, '菜单管理', 1);
INSERT INTO `t_menu_permission` VALUES (399, 86, 'message:send', 1, '发送', 1);
INSERT INTO `t_menu_permission` VALUES (400, 213, 'PITRAIY', 1, 'PITRAIY', 1);
INSERT INTO `t_menu_permission` VALUES (401, 213, 'PITRAIY', 0, 'PITRAIY', 1);
INSERT INTO `t_menu_permission` VALUES (402, 121, 'course:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (403, 121, 'course:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (404, 121, 'course:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (405, 121, 'course:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (406, 121, 'course:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (407, 121, 'course:statusChange', 1, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (408, 121, 'analyze:course', 1, '课程分析', 7);
INSERT INTO `t_menu_permission` VALUES (409, 121, 'course:comment:page', 1, '课程评论', 8);
INSERT INTO `t_menu_permission` VALUES (410, 92, 'answer:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (411, 92, 'answer:judge', 0, '批改列表', 2);
INSERT INTO `t_menu_permission` VALUES (412, 92, 'answer:edit', 0, '批改', 3);
INSERT INTO `t_menu_permission` VALUES (413, 92, 'answer:read', 0, '查看', 4);
INSERT INTO `t_menu_permission` VALUES (414, 92, 'answer:export', 0, '导出', 5);
INSERT INTO `t_menu_permission` VALUES (415, 92, 'analyze:paper', 0, '答卷分析', 6);
INSERT INTO `t_menu_permission` VALUES (416, 92, 'exam:paper:answer:credential', 0, '证书', 7);
INSERT INTO `t_menu_permission` VALUES (417, 208, 'analyze:user', 1, '学员分析', 1);
INSERT INTO `t_menu_permission` VALUES (418, 59, 'user:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (419, 59, 'user:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (420, 59, 'user:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (421, 59, 'user:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (422, 59, 'user:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (423, 59, 'user:changeStatus', 1, '启用禁用', 6);
INSERT INTO `t_menu_permission` VALUES (424, 59, 'user:excel', 1, '导入', 7);
INSERT INTO `t_menu_permission` VALUES (425, 59, 'analyze:user', 1, '用户分析', 8);
INSERT INTO `t_menu_permission` VALUES (426, 208, 'analyze:user', 1, '学员分析', 1);
INSERT INTO `t_menu_permission` VALUES (427, 59, 'user:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (428, 59, 'user:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (429, 59, 'user:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (430, 59, 'user:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (431, 59, 'user:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (432, 59, 'user:changeStatus', 1, '启用禁用', 6);
INSERT INTO `t_menu_permission` VALUES (433, 59, 'user:excel', 1, '导入', 7);
INSERT INTO `t_menu_permission` VALUES (434, 59, 'analyze:user', 1, '用户分析', 8);
INSERT INTO `t_menu_permission` VALUES (435, 59, 'user:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (436, 59, 'user:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (437, 59, 'user:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (438, 59, 'user:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (439, 59, 'user:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (440, 59, 'user:changeStatus', 1, '启用禁用', 6);
INSERT INTO `t_menu_permission` VALUES (441, 59, 'user:excel', 1, '导入', 7);
INSERT INTO `t_menu_permission` VALUES (442, 59, 'analyze:user', 1, '用户分析', 8);
INSERT INTO `t_menu_permission` VALUES (443, 59, 'user:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (444, 59, 'user:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (445, 59, 'user:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (446, 59, 'user:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (447, 59, 'user:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (448, 59, 'user:changeStatus', 1, '启用禁用', 6);
INSERT INTO `t_menu_permission` VALUES (449, 59, 'user:excel', 1, '导入', 7);
INSERT INTO `t_menu_permission` VALUES (450, 59, 'analyze:user', 1, '用户分析', 8);
INSERT INTO `t_menu_permission` VALUES (451, 208, 'analyze:user', 0, '学员分析', 1);
INSERT INTO `t_menu_permission` VALUES (452, 59, 'user:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (453, 59, 'user:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (454, 59, 'user:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (455, 59, 'user:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (456, 59, 'user:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (457, 59, 'user:changeStatus', 1, '启用禁用', 6);
INSERT INTO `t_menu_permission` VALUES (458, 59, 'user:excel', 1, '导入', 7);
INSERT INTO `t_menu_permission` VALUES (459, 59, 'analyze:user', 1, '用户分析', 8);
INSERT INTO `t_menu_permission` VALUES (460, 132, 'postAbility:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (461, 132, 'postAbility:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (462, 132, 'postAbility:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (463, 132, 'postAbility:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (464, 132, 'postAbility:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (465, 132, 'postAbility:statusChange', 1, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (466, 89, 'degree:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (467, 89, 'degree:create', 0, '创建', 2);
INSERT INTO `t_menu_permission` VALUES (468, 89, 'degree:select', 0, '查看', 3);
INSERT INTO `t_menu_permission` VALUES (469, 89, 'degree:update', 0, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (470, 89, 'degree:delete', 0, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (471, 59, 'user:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (472, 59, 'user:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (473, 59, 'user:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (474, 59, 'user:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (475, 59, 'user:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (476, 59, 'user:changeStatus', 1, '启用禁用', 6);
INSERT INTO `t_menu_permission` VALUES (477, 59, 'user:excel', 1, '导入', 7);
INSERT INTO `t_menu_permission` VALUES (478, 59, 'analyze:user', 1, '用户分析', 8);
INSERT INTO `t_menu_permission` VALUES (479, 72, 'paper:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (480, 72, 'paper:select', 0, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (481, 72, 'paper:create', 0, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (482, 72, 'paper:update', 0, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (483, 72, 'paper:delete', 0, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (484, 72, 'paper:statusChange', 0, '发布撤回', 6);
INSERT INTO `t_menu_permission` VALUES (485, 72, 'paper:copy', 0, '复制', 7);
INSERT INTO `t_menu_permission` VALUES (486, 73, 'paper:select', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (487, 73, 'paper:create', 0, '创建', 2);
INSERT INTO `t_menu_permission` VALUES (488, 73, 'paper:update', 0, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (489, 74, 'paper:select', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (490, 74, 'paper:create', 0, '创建', 2);
INSERT INTO `t_menu_permission` VALUES (491, 74, 'paper:update', 0, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (492, 74, 'paper:random', 0, '智能组卷', 4);
INSERT INTO `t_menu_permission` VALUES (493, 121, 'course:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (494, 121, 'course:select', 0, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (495, 121, 'course:create', 0, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (496, 121, 'course:update', 0, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (497, 121, 'course:delete', 0, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (498, 121, 'course:statusChange', 0, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (499, 121, 'analyze:course', 0, '课程分析', 7);
INSERT INTO `t_menu_permission` VALUES (500, 121, 'course:comment:page', 0, '课程评论', 8);
INSERT INTO `t_menu_permission` VALUES (501, 59, 'user:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (502, 59, 'user:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (503, 59, 'user:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (504, 59, 'user:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (505, 59, 'user:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (506, 59, 'user:changeStatus', 1, '启用禁用', 6);
INSERT INTO `t_menu_permission` VALUES (507, 59, 'user:excel', 1, '导入', 7);
INSERT INTO `t_menu_permission` VALUES (508, 59, 'analyze:user', 1, '用户分析', 8);
INSERT INTO `t_menu_permission` VALUES (509, 59, 'user:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (510, 59, 'user:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (511, 59, 'user:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (512, 59, 'user:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (513, 59, 'user:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (514, 59, 'user:changeStatus', 1, '启用禁用', 6);
INSERT INTO `t_menu_permission` VALUES (515, 59, 'user:excel', 1, '导入', 7);
INSERT INTO `t_menu_permission` VALUES (516, 59, 'analyze:user', 1, '用户分析', 8);
INSERT INTO `t_menu_permission` VALUES (517, 82, 'analyze:user', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (518, 239, 'post:page', 1, '分页查询', 1);
INSERT INTO `t_menu_permission` VALUES (519, 118, 'course:category:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (520, 118, 'course:category:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (521, 118, 'course:category:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (522, 118, 'course:category:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (523, 118, 'course:category:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (524, 62, 'team:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (525, 62, 'team:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (526, 62, 'team:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (527, 62, 'team:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (528, 62, 'team:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (529, 129, 'team:user:page', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (530, 129, 'team:user:add', 1, '添加学员', 2);
INSERT INTO `t_menu_permission` VALUES (531, 129, 'team:user:delete', 1, '移除学员', 3);
INSERT INTO `t_menu_permission` VALUES (532, 62, 'team:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (533, 62, 'team:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (534, 62, 'team:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (535, 62, 'team:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (536, 62, 'team:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (537, 62, 'team:user:page', 1, '班级详情', 6);
INSERT INTO `t_menu_permission` VALUES (538, 132, 'postAbility:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (539, 132, 'postAbility:select', 0, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (540, 132, 'postAbility:create', 0, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (541, 132, 'postAbility:update', 0, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (542, 132, 'postAbility:delete', 0, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (543, 132, 'postAbility:statusChange', 0, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (544, 33, 'credential:create', 0, '创建', 1);
INSERT INTO `t_menu_permission` VALUES (545, 33, 'credential:update', 0, '编辑', 2);
INSERT INTO `t_menu_permission` VALUES (546, 32, 'credential:delete', 0, '删除', 1);
INSERT INTO `t_menu_permission` VALUES (547, 136, 'template:page,template:select,template:create,template:update,template:delete', 1, '所有权限', 1);
INSERT INTO `t_menu_permission` VALUES (548, 136, 'template:page,template:select,template:create,template:update,template:delete', 1, '所有权限', 1);
INSERT INTO `t_menu_permission` VALUES (549, 136, 'template:page,template:select,template:create,template:update,template:delete', 1, '所有权限', 1);
INSERT INTO `t_menu_permission` VALUES (550, 136, 'template:page,template:select,template:create,template:update,template:delete', 1, '所有权限', 1);
INSERT INTO `t_menu_permission` VALUES (551, 136, 'template:page,template:select,template:create,template:update,template:delete', 1, '所有权限', 1);
INSERT INTO `t_menu_permission` VALUES (552, 136, 'template:page,template:select,template:create,template:update,template:delete', 1, '所有权限', 1);
INSERT INTO `t_menu_permission` VALUES (553, 136, 'template:page,template:select,template:create,template:update,template:delete', 1, '所有权限', 1);
INSERT INTO `t_menu_permission` VALUES (554, 136, 'template:page,template:select,template:create,template:update,template:delete', 1, '所有权限', 1);
INSERT INTO `t_menu_permission` VALUES (555, 221, 'teacherManager', 0, '教员', 1);
INSERT INTO `t_menu_permission` VALUES (556, 221, 'resManager', 0, '资源管理员', 2);
INSERT INTO `t_menu_permission` VALUES (557, 123, 'analyze:course', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (558, 124, 'course:comment:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (559, 124, 'course:comment:delete', 1, '删除', 2);
INSERT INTO `t_menu_permission` VALUES (560, 124, 'course:comment:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (561, 124, 'course:comment:delete', 0, '删除', 2);
INSERT INTO `t_menu_permission` VALUES (562, 86, 'message:send', 1, '发送', 1);
INSERT INTO `t_menu_permission` VALUES (563, 86, 'message:send', 1, '发送', 1);
INSERT INTO `t_menu_permission` VALUES (564, 86, 'message:send', 1, '发送', 1);
INSERT INTO `t_menu_permission` VALUES (565, 86, 'message:send', 1, '发送', 1);
INSERT INTO `t_menu_permission` VALUES (566, 86, 'message:send', 0, '发送', 1);
INSERT INTO `t_menu_permission` VALUES (567, 240, 'category:page', 0, '查询', 1);
INSERT INTO `t_menu_permission` VALUES (568, 240, 'category:create', 0, '添加', 2);
INSERT INTO `t_menu_permission` VALUES (569, 240, 'category:update', 0, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (570, 240, 'category:delete', 0, '删除', 4);
INSERT INTO `t_menu_permission` VALUES (571, 239, 'course:page', 1, '分页查询', 1);
INSERT INTO `t_menu_permission` VALUES (572, 239, 'course:create', 1, '添加', 2);
INSERT INTO `t_menu_permission` VALUES (573, 239, 'course:statusChange', 1, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (574, 239, 'course:delete', 1, '删除', 4);
INSERT INTO `t_menu_permission` VALUES (575, 241, 'category:page', 1, '查询', 1);
INSERT INTO `t_menu_permission` VALUES (576, 241, 'category:create', 1, '添加', 2);
INSERT INTO `t_menu_permission` VALUES (577, 241, 'category:update', 1, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (578, 241, 'category:delete', 1, '删除', 4);
INSERT INTO `t_menu_permission` VALUES (579, 241, 'category:page', 1, '查询', 1);
INSERT INTO `t_menu_permission` VALUES (580, 241, 'category:create', 1, '添加', 2);
INSERT INTO `t_menu_permission` VALUES (581, 241, 'category:update', 1, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (582, 241, 'category:delete', 1, '删除', 4);
INSERT INTO `t_menu_permission` VALUES (583, 241, 'businessSystem:page', 1, '查询2', 5);
INSERT INTO `t_menu_permission` VALUES (584, 241, 'category:page', 1, '查询', 1);
INSERT INTO `t_menu_permission` VALUES (585, 241, 'category:create', 1, '添加', 2);
INSERT INTO `t_menu_permission` VALUES (586, 241, 'category:update', 1, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (587, 241, 'category:delete', 1, '删除', 4);
INSERT INTO `t_menu_permission` VALUES (588, 241, 'category:page', 0, '查询', 1);
INSERT INTO `t_menu_permission` VALUES (589, 241, 'category:create', 0, '添加', 2);
INSERT INTO `t_menu_permission` VALUES (590, 241, 'category:update', 0, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (591, 241, 'category:delete', 0, '删除', 4);
INSERT INTO `t_menu_permission` VALUES (592, 239, 'course:page', 0, '分页查询', 1);
INSERT INTO `t_menu_permission` VALUES (593, 239, 'course:create', 0, '添加', 2);
INSERT INTO `t_menu_permission` VALUES (594, 239, 'course:statusChange', 0, '编辑', 3);
INSERT INTO `t_menu_permission` VALUES (595, 239, 'course:delete', 0, '删除', 4);
INSERT INTO `t_menu_permission` VALUES (596, 136, 'template:page,template:select,template:create,template:update,template:delete', 0, '所有权限', 1);
INSERT INTO `t_menu_permission` VALUES (597, 59, 'user:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (598, 59, 'user:select', 0, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (599, 59, 'user:create', 0, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (600, 59, 'user:update', 0, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (601, 59, 'user:delete', 0, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (602, 59, 'user:changeStatus', 0, '启用禁用', 6);
INSERT INTO `t_menu_permission` VALUES (603, 59, 'user:excel', 0, '导入', 7);
INSERT INTO `t_menu_permission` VALUES (604, 59, 'analyze:user', 0, '用户分析', 8);
INSERT INTO `t_menu_permission` VALUES (605, 129, 'team:user:page', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (606, 129, 'team:user:add', 0, '添加学员', 2);
INSERT INTO `t_menu_permission` VALUES (607, 129, 'team:user:delete', 0, '移除学员', 3);
INSERT INTO `t_menu_permission` VALUES (608, 62, 'team:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (609, 62, 'team:select', 0, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (610, 62, 'team:create', 0, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (611, 62, 'team:update', 0, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (612, 62, 'team:delete', 0, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (613, 62, 'team:user:page', 0, '班级详情', 6);
INSERT INTO `t_menu_permission` VALUES (614, 83, 'analyze:paper', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (615, 82, 'analyze:user', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (616, 118, 'course:category:page', 0, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (617, 118, 'course:category:select', 0, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (618, 118, 'course:category:create', 0, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (619, 118, 'course:category:update', 0, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (620, 118, 'course:category:delete', 0, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (621, 49, 'exam:paper:answer:credential', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (622, 49, 'exam:paper:answer:credential', 1, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (623, 49, 'exam:paper:answer:credential', 0, '查看', 1);
INSERT INTO `t_menu_permission` VALUES (624, 249, 'course:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (625, 249, 'course:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (626, 249, 'course:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (627, 249, 'course:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (628, 249, 'course:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (629, 249, 'course:statusChange', 1, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (630, 249, 'analyze:course', 1, '课程分析', 7);
INSERT INTO `t_menu_permission` VALUES (631, 249, 'course:comment:page', 1, '课程评论', 8);
INSERT INTO `t_menu_permission` VALUES (632, 249, 'course:page', 1, '分页', 1);
INSERT INTO `t_menu_permission` VALUES (633, 249, 'course:select', 1, '查看', 2);
INSERT INTO `t_menu_permission` VALUES (634, 249, 'course:create', 1, '创建', 3);
INSERT INTO `t_menu_permission` VALUES (635, 249, 'course:update', 1, '编辑', 4);
INSERT INTO `t_menu_permission` VALUES (636, 249, 'course:delete', 1, '删除', 5);
INSERT INTO `t_menu_permission` VALUES (637, 249, 'course:statusChange', 1, '上架下架', 6);
INSERT INTO `t_menu_permission` VALUES (638, 249, 'analyze:course', 1, '课程分析', 7);
INSERT INTO `t_menu_permission` VALUES (639, 249, 'course:comment:page', 1, '课程评论', 8);
INSERT INTO `t_menu_permission` VALUES (640, 249, 'course:page', 1, '查询', 1);
INSERT INTO `t_menu_permission` VALUES (641, 249, 'course:create', 1, '教学', 2);
INSERT INTO `t_menu_permission` VALUES (642, 249, 'course:page', 1, '查询', 1);
INSERT INTO `t_menu_permission` VALUES (643, 249, 'course:create', 1, '教学', 2);
INSERT INTO `t_menu_permission` VALUES (644, 249, 'course:page', 1, '查询', 1);
INSERT INTO `t_menu_permission` VALUES (645, 249, 'course:create', 1, '教学', 2);
INSERT INTO `t_menu_permission` VALUES (646, 250, 'message:send', 1, '发送', 1);
INSERT INTO `t_menu_permission` VALUES (647, 250, 'message:send', 0, '发送', 1);
INSERT INTO `t_menu_permission` VALUES (648, 186, 'user:page', 0, '查询学员', 1);
INSERT INTO `t_menu_permission` VALUES (649, 187, 'user:page', 0, '查询学员', 1);
INSERT INTO `t_menu_permission` VALUES (650, 228, 'teacherManager', 0, '教员', 1);
INSERT INTO `t_menu_permission` VALUES (651, 228, 'resManager', 0, '资源管理员', 2);
INSERT INTO `t_menu_permission` VALUES (652, 253, '111quanxian', 0, '111quanxian', 1);
INSERT INTO `t_menu_permission` VALUES (653, 254, '222quanxian', 0, '222quanxian', 1);
INSERT INTO `t_menu_permission` VALUES (654, 255, '333quanxian', 0, '333quanxian', 1);
INSERT INTO `t_menu_permission` VALUES (655, 249, 'course:page', 0, '查询', 1);
INSERT INTO `t_menu_permission` VALUES (656, 249, 'course:create', 0, '教学', 2);

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `send_user_id` int(11) NULL DEFAULT NULL,
  `send_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `degree_id` int(11) NULL DEFAULT NULL,
  `message_type` int(11) NULL DEFAULT NULL,
  `send_email` tinyint(4) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `message_status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_message
-- ----------------------------

-- ----------------------------
-- Table structure for t_message_association
-- ----------------------------
DROP TABLE IF EXISTS `t_message_association`;
CREATE TABLE `t_message_association`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NULL DEFAULT NULL,
  `association_id` int(11) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `degree_id` int(11) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_message_association
-- ----------------------------

-- ----------------------------
-- Table structure for t_message_read_user
-- ----------------------------
DROP TABLE IF EXISTS `t_message_read_user`;
CREATE TABLE `t_message_read_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NULL DEFAULT NULL,
  `receive_user_id` int(11) NULL DEFAULT NULL,
  `receive_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `degree_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_message_read_user
-- ----------------------------

-- ----------------------------
-- Table structure for t_msg
-- ----------------------------
DROP TABLE IF EXISTS `t_msg`;
CREATE TABLE `t_msg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data_type` int(11) NULL DEFAULT NULL,
  `other_type` int(11) NULL DEFAULT NULL,
  `data_id` int(11) NULL DEFAULT NULL,
  `notice_area` int(11) NULL DEFAULT NULL,
  `create_by` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `state` int(11) NULL DEFAULT 0,
  `organization_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 275 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_msg
-- ----------------------------
INSERT INTO `t_msg` VALUES (261, 'e68c29f1-2f34-4d1b-ac00-76da4f7031b3', 2, NULL, 72, NULL, 43, '0000-00-00 00:00:00.000000', 0, '33', '33', 0, NULL);
INSERT INTO `t_msg` VALUES (262, 'ed3b4ead-045b-4379-9996-3cc131a77c80', 2, NULL, 72, NULL, 43, '0000-00-00 00:00:00.000000', 0, '333', '333', 0, NULL);
INSERT INTO `t_msg` VALUES (263, '4f9fa2d8-9355-4187-a1e8-12d3c4f16517', 2, NULL, 72, NULL, 43, '0000-00-00 00:00:00.000000', 0, '34', '45', 0, NULL);
INSERT INTO `t_msg` VALUES (264, '9ab84639-78f6-4b34-a6ae-33d09b7c849e', 2, NULL, 72, NULL, 43, '0000-00-00 00:00:00.000000', 0, '55', '55', 0, NULL);
INSERT INTO `t_msg` VALUES (265, 'b2fd5177-fe46-450e-8404-8cbc2a41db51', 2, NULL, 72, NULL, 43, '0000-00-00 00:00:00.000000', 0, '66', '66', 0, NULL);
INSERT INTO `t_msg` VALUES (266, '5afa419c-9ae6-4f7c-98e7-fb1d21eb9cca', 2, NULL, 72, NULL, 43, '0000-00-00 00:00:00.000000', 0, '11', '11', 0, NULL);
INSERT INTO `t_msg` VALUES (267, 'cdf6f18a-a95c-4ab8-ac96-ab8ed8bae482', 1, 3, 19, NULL, 43, '0000-00-00 00:00:00.000000', 0, '22', '22', 0, NULL);
INSERT INTO `t_msg` VALUES (268, '336704f1-3000-4023-8e0b-5715b074880e', 1, 3, 19, NULL, 43, '0000-00-00 00:00:00.000000', 0, '11', '11', 0, NULL);
INSERT INTO `t_msg` VALUES (269, '4eb3e4ae-dc1c-459d-8ec9-13c133c27041', 1, 3, 19, NULL, 43, '0000-00-00 00:00:00.000000', 0, '22', '22', 0, NULL);
INSERT INTO `t_msg` VALUES (270, 'ae975962-dd49-446d-8697-86d3a7f91fac', 1, 3, 19, NULL, 43, '0000-00-00 00:00:00.000000', 0, '22', '22', 0, NULL);
INSERT INTO `t_msg` VALUES (271, 'f2fa72f8-5455-408d-b71e-703bc79998f8', 2, NULL, 72, NULL, 43, '0000-00-00 00:00:00.000000', 0, '11', '11', 0, NULL);
INSERT INTO `t_msg` VALUES (272, '3951971b-8ae4-4d7b-b476-994b42e4764b', 2, NULL, 72, NULL, 43, '0000-00-00 00:00:00.000000', 0, '22', '22', 0, NULL);
INSERT INTO `t_msg` VALUES (273, 'ff8462ce-29d0-40f2-8dd8-4fbe1af3c178', 8, 1, 9, NULL, 44, '0000-00-00 00:00:00.000000', 0, '有【协同演练】申请,请及时处理', '有【协同演练】申请,请及时处理', 0, NULL);
INSERT INTO `t_msg` VALUES (274, '78030950-a73d-417e-be0a-b444f9d5ce99', 2, NULL, 94, NULL, 42, '0000-00-00 00:00:00.000000', 0, '公告一', '公告一内容', 0, NULL);

-- ----------------------------
-- Table structure for t_msg_user
-- ----------------------------
DROP TABLE IF EXISTS `t_msg_user`;
CREATE TABLE `t_msg_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `msg_id` int(11) NULL DEFAULT NULL,
  `viewed` tinyint(4) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `view_time` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 264 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_msg_user
-- ----------------------------
INSERT INTO `t_msg_user` VALUES (246, 43, 261, 1, 0, '0000-00-00 00:00:00.000000');
INSERT INTO `t_msg_user` VALUES (247, 43, 262, 1, 0, '0000-00-00 00:00:00.000000');
INSERT INTO `t_msg_user` VALUES (248, 43, 263, 1, 0, '0000-00-00 00:00:00.000000');
INSERT INTO `t_msg_user` VALUES (249, 43, 264, 1, 0, '0000-00-00 00:00:00.000000');
INSERT INTO `t_msg_user` VALUES (250, 43, 265, 1, 0, '0000-00-00 00:00:00.000000');
INSERT INTO `t_msg_user` VALUES (251, 43, 266, 1, 0, '0000-00-00 00:00:00.000000');
INSERT INTO `t_msg_user` VALUES (252, 197, 267, 0, 0, NULL);
INSERT INTO `t_msg_user` VALUES (253, 43, 267, 1, 0, '0000-00-00 00:00:00.000000');
INSERT INTO `t_msg_user` VALUES (254, 197, 268, 0, 0, NULL);
INSERT INTO `t_msg_user` VALUES (255, 43, 268, 1, 0, '0000-00-00 00:00:00.000000');
INSERT INTO `t_msg_user` VALUES (256, 197, 269, 0, 0, NULL);
INSERT INTO `t_msg_user` VALUES (257, 43, 269, 1, 0, '0000-00-00 00:00:00.000000');
INSERT INTO `t_msg_user` VALUES (258, 197, 270, 0, 0, NULL);
INSERT INTO `t_msg_user` VALUES (259, 43, 270, 1, 0, '0000-00-00 00:00:00.000000');
INSERT INTO `t_msg_user` VALUES (260, 43, 271, 1, 0, '0000-00-00 00:00:00.000000');
INSERT INTO `t_msg_user` VALUES (261, 43, 272, 1, 0, '0000-00-00 00:00:00.000000');
INSERT INTO `t_msg_user` VALUES (262, 45, 273, 0, 0, NULL);
INSERT INTO `t_msg_user` VALUES (263, 42, 274, 1, 0, '0000-00-00 00:00:00.000000');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `discount_unit_price` int(11) NULL DEFAULT NULL,
  `sum_price` int(11) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `product_category_id` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `order_address_id` bigint(20) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `track_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `buy_quantity` int(11) NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------

-- ----------------------------
-- Table structure for t_order_address
-- ----------------------------
DROP TABLE IF EXISTS `t_order_address`;
CREATE TABLE `t_order_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `receive_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receive_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receive_address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receive_postcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_address
-- ----------------------------

-- ----------------------------
-- Table structure for t_organization
-- ----------------------------
DROP TABLE IF EXISTS `t_organization`;
CREATE TABLE `t_organization`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `create_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_number` int(11) NULL DEFAULT NULL,
  `item_order` int(11) NULL DEFAULT NULL,
  `domain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `config` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_organization
-- ----------------------------

-- ----------------------------
-- Table structure for t_personal_center
-- ----------------------------
DROP TABLE IF EXISTS `t_personal_center`;
CREATE TABLE `t_personal_center`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `post_ability_id` int(11) NULL DEFAULT NULL,
  `collect_course_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_personal_center
-- ----------------------------
INSERT INTO `t_personal_center` VALUES (24, 199, NULL, '72,74,81,93');
INSERT INTO `t_personal_center` VALUES (25, 44, NULL, '71,73,94,74');
INSERT INTO `t_personal_center` VALUES (26, 210, NULL, '');

-- ----------------------------
-- Table structure for t_personal_note
-- ----------------------------
DROP TABLE IF EXISTS `t_personal_note`;
CREATE TABLE `t_personal_note`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_personal_note
-- ----------------------------
INSERT INTO `t_personal_note` VALUES (43, 199, '<p>笔记1</p>', '0000-00-00 00:00:00');
INSERT INTO `t_personal_note` VALUES (44, 199, '<p>笔记2,今天学习很开心.</p>', '0000-00-00 00:00:00');
INSERT INTO `t_personal_note` VALUES (46, 199, '<p>今天又改了几个小bug ,每天都在改bug,希望能赶紧改完所有的bug.</p>', '0000-00-00 00:00:00');
INSERT INTO `t_personal_note` VALUES (47, 199, '<p>记笔记,记笔记,记笔记,记笔记,记笔记,记笔记,记一堆笔记,字数要多,疯狂记笔记,我爱记笔记,记笔记,记笔记,记笔记,记笔记</p>', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for t_post
-- ----------------------------
DROP TABLE IF EXISTS `t_post`;
CREATE TABLE `t_post`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major_id` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `ord` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_post
-- ----------------------------
INSERT INTO `t_post` VALUES (19, 'Java开发工程师', 'Java中级开发工程师', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 198, 0, 0);
INSERT INTO `t_post` VALUES (20, '岗位2', '岗位2描述.......', 36, NULL, '2023-06-19 10:08:55', 42, 0, 0);
INSERT INTO `t_post` VALUES (21, '岗位3', '岗位3描述', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1, 0);
INSERT INTO `t_post` VALUES (22, '岗位4', '岗位4描述', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 198, 1, 0);
INSERT INTO `t_post` VALUES (23, '112', '1233', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 42, 1, 0);
INSERT INTO `t_post` VALUES (24, '岗位4', '岗位4描述', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 42, 0, 3);
INSERT INTO `t_post` VALUES (25, '123', '123', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1, NULL);
INSERT INTO `t_post` VALUES (26, '测试岗位1', '测试岗位1', 35, '2023-06-19 09:37:09', '2023-06-19 09:37:09', NULL, 0, NULL);
INSERT INTO `t_post` VALUES (27, '测试岗位2', '测试岗位2', 35, '2023-06-19 09:37:43', '2023-06-19 09:37:43', NULL, 0, 1);
INSERT INTO `t_post` VALUES (28, '测试岗位3', '测试岗位3', 35, '2023-06-19 09:40:06', '2023-06-19 09:40:06', NULL, 0, NULL);
INSERT INTO `t_post` VALUES (29, '测试岗位4', '测试岗位4', 35, '2023-06-19 09:53:49', '2023-06-19 10:08:42', 42, 0, 0);

-- ----------------------------
-- Table structure for t_post_ability
-- ----------------------------
DROP TABLE IF EXISTS `t_post_ability`;
CREATE TABLE `t_post_ability`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `course_category_id` int(11) NULL DEFAULT NULL,
  `online_time` timestamp(0) NULL DEFAULT NULL,
  `child_count` int(11) NULL DEFAULT NULL,
  `degree_id` int(11) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_post_ability
-- ----------------------------

-- ----------------------------
-- Table structure for t_post_ability_item
-- ----------------------------
DROP TABLE IF EXISTS `t_post_ability_item`;
CREATE TABLE `t_post_ability_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_ability_id` int(11) NOT NULL,
  `phase` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exam_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_post_ability_item
-- ----------------------------

-- ----------------------------
-- Table structure for t_post_course_category_new
-- ----------------------------
DROP TABLE IF EXISTS `t_post_course_category_new`;
CREATE TABLE `t_post_course_category_new`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NULL DEFAULT NULL,
  `course_category_new_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 212 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_post_course_category_new
-- ----------------------------
INSERT INTO `t_post_course_category_new` VALUES (171, 19, 93);
INSERT INTO `t_post_course_category_new` VALUES (172, 20, 94);
INSERT INTO `t_post_course_category_new` VALUES (192, 20, 108);
INSERT INTO `t_post_course_category_new` VALUES (201, 20, 107);
INSERT INTO `t_post_course_category_new` VALUES (202, 20, 112);
INSERT INTO `t_post_course_category_new` VALUES (209, 19, 101);
INSERT INTO `t_post_course_category_new` VALUES (210, 20, 106);

-- ----------------------------
-- Table structure for t_post_user
-- ----------------------------
DROP TABLE IF EXISTS `t_post_user`;
CREATE TABLE `t_post_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `post_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `degree_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_post_user
-- ----------------------------
INSERT INTO `t_post_user` VALUES (34, 19, 199, '0000-00-00 00:00:00.000000', 0, 'Java开发工程师', NULL, NULL);
INSERT INTO `t_post_user` VALUES (35, 19, 44, '0000-00-00 00:00:00.000000', 0, 'Java开发工程师', NULL, NULL);
INSERT INTO `t_post_user` VALUES (36, 21, 44, '0000-00-00 00:00:00.000000', 0, '岗位3', NULL, NULL);
INSERT INTO `t_post_user` VALUES (37, 22, 44, '0000-00-00 00:00:00.000000', 0, '岗位4', NULL, NULL);
INSERT INTO `t_post_user` VALUES (38, 20, 199, '0000-00-00 00:00:00.000000', 0, '岗位2', NULL, NULL);
INSERT INTO `t_post_user` VALUES (39, 20, 44, '0000-00-00 00:00:00.000000', 0, '岗位2', NULL, NULL);

-- ----------------------------
-- Table structure for t_problem
-- ----------------------------
DROP TABLE IF EXISTS `t_problem`;
CREATE TABLE `t_problem`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_type` int(11) NULL DEFAULT NULL,
  `data_id` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_by` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `last_time` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_problem
-- ----------------------------
INSERT INTO `t_problem` VALUES (24, 'c4639730-d284-40bd-a32c-3eca3e76e005', 1, 68, '课程8提问', '该课程有什么用', 44, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00.000000');
INSERT INTO `t_problem` VALUES (25, '158130f3-f1a5-4a6c-8e5f-026a897904cc', 1, 68, '课程8提问2', '快回答我的问题.', 44, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00.000000');
INSERT INTO `t_problem` VALUES (26, '578cf799-c4bb-4030-b2b6-e18fe9327ece', 1, 68, '课程8提问3', '第三个问题', 44, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00.000000');

-- ----------------------------
-- Table structure for t_problem_reply
-- ----------------------------
DROP TABLE IF EXISTS `t_problem_reply`;
CREATE TABLE `t_problem_reply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_by` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `u_type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_problem_reply
-- ----------------------------

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `unit_price` int(11) NULL DEFAULT NULL,
  `discount_unit_price` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `product_category_id` int(11) NULL DEFAULT NULL,
  `discounted` tinyint(4) NULL DEFAULT NULL,
  `on_sale_time` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_product
-- ----------------------------

-- ----------------------------
-- Table structure for t_product_category
-- ----------------------------
DROP TABLE IF EXISTS `t_product_category`;
CREATE TABLE `t_product_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_order` int(11) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_product_category
-- ----------------------------

-- ----------------------------
-- Table structure for t_question
-- ----------------------------
DROP TABLE IF EXISTS `t_question`;
CREATE TABLE `t_question`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `question_type` int(11) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `difficult` int(11) NULL DEFAULT NULL,
  `question_frame_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `organization_id` int(11) NULL DEFAULT NULL,
  `type_enum_id` int(11) NULL DEFAULT NULL,
  `degree_id` int(11) NULL DEFAULT NULL,
  `childed` tinyint(4) NULL DEFAULT NULL,
  `down_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_category_id` int(11) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 399 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_question
-- ----------------------------
INSERT INTO `t_question` VALUES (377, 1, 36, 30, 3, '1225201c-f131-4bd2-ad36-d0c50b073cce', 43, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 84);
INSERT INTO `t_question` VALUES (378, 1, 36, 30, 3, '89b6d79c-2d65-494e-a73f-4f087b9e254c', 43, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 84);
INSERT INTO `t_question` VALUES (379, 1, 36, 20, 3, 'fdfc7734-15c5-4584-8f20-637622e946df', 43, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 84);
INSERT INTO `t_question` VALUES (380, 2, 36, 30, 3, '38759fb7-559c-4588-b4e8-71f9ec86838a', 43, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 84);
INSERT INTO `t_question` VALUES (381, 3, 36, 25, 3, '3047ca34-6cf3-4faa-968e-62f7918cd5d4', 43, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 84);
INSERT INTO `t_question` VALUES (382, 4, 36, 40, 3, '2954914c-ef71-4c22-ac72-86725791e968', 43, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 84);
INSERT INTO `t_question` VALUES (383, 5, 34, 100, 4, '4f533ba4-4034-42f2-8f68-b7adae94e5f0', 43, 1, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, 0, NULL, 93, 71);
INSERT INTO `t_question` VALUES (384, 1, 34, 50, 5, '31a0014c-993f-448f-8717-8afa4dd00038', 43, 1, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, 0, NULL, 93, 72);
INSERT INTO `t_question` VALUES (385, 7, 34, 10, 3, 'a178f95a-add6-45e6-aedb-e46577b7e3c4', 43, 1, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, 0, NULL, 93, 72);
INSERT INTO `t_question` VALUES (386, 1, 34, 20, 5, '5699f99b-c2e6-4d75-8a3e-44da0d232888', 42, 1, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, 0, NULL, 93, 72);
INSERT INTO `t_question` VALUES (387, 2, 34, 20, 3, '24706b90-332e-4956-84ac-4ef7301bb914', 42, 1, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, 0, NULL, 93, 72);
INSERT INTO `t_question` VALUES (388, 7, 34, 20, 2, 'c6a61054-c90b-462e-90be-f9f732a2a7dd', 42, 1, '0000-00-00 00:00:00.000000', 1, 1, NULL, NULL, 0, NULL, 93, 72);
INSERT INTO `t_question` VALUES (389, 4, 36, 40, 3, '2829dcdc-f646-4bcb-97a4-066d86dc53a4', 42, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 84);
INSERT INTO `t_question` VALUES (390, 4, 36, 40, 3, '28749dbc-001d-4d4c-a08f-c0dddecd26e3', 42, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 84);
INSERT INTO `t_question` VALUES (391, 4, 36, 40, 3, '70825ca5-d241-45ce-b6e2-e0e2a5811e3d', 42, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 84);
INSERT INTO `t_question` VALUES (392, 4, 36, 40, 3, '058d2bfe-26bb-42f7-a566-113d33303e0b', 42, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 84);
INSERT INTO `t_question` VALUES (393, 4, 36, 40, 3, '842a6bb9-5a69-4f0e-8ffd-9af984b3311d', 42, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 84);
INSERT INTO `t_question` VALUES (394, 4, 36, 40, 3, '9710811f-35a2-4f72-8d82-88e6ca63f2c8', 42, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 84);
INSERT INTO `t_question` VALUES (395, 4, 36, 40, 3, 'fa4defda-00e3-444e-98ab-4d52267e14c3', 42, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 84);
INSERT INTO `t_question` VALUES (396, 7, 36, 30, 3, 'f26c1dc0-df82-4d45-bad7-4f78b83b36b1', 42, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 84);
INSERT INTO `t_question` VALUES (397, 2, 36, 10, 4, '8488a9ae-7285-4925-9661-4bb668f0f924', 42, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 73);
INSERT INTO `t_question` VALUES (398, 1, 36, 20, 3, '76048cea-ac19-4b3e-8e21-4e7b7a5d92a7', 42, 1, '0000-00-00 00:00:00.000000', 0, 1, NULL, NULL, 0, NULL, 94, 73);

-- ----------------------------
-- Table structure for t_question_json
-- ----------------------------
DROP TABLE IF EXISTS `t_question_json`;
CREATE TABLE `t_question_json`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` json NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_question_json
-- ----------------------------
INSERT INTO `t_question_json` VALUES ('058d2bfe-26bb-42f7-a566-113d33303e0b', '{\"id\": \"058d2bfe-26bb-42f7-a566-113d33303e0b\", \"score\": 40, \"title\": \"（<span class=\\\"gapfilling-span 7e9d3a93-bfa3-49c2-9fb8-0948e3b201ea\\\">1</span>），曲项向天歌。（<span class=\\\"gapfilling-span 19d770af-502f-4a15-bfb5-7cbdc150acc4\\\">2</span>），红掌拨清波。\", \"analyze\": \"咏鹅\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": 1, \"categoryId\": 36, \"correctKey\": null, \"questionId\": 392, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 4, \"childQuestion\": null, \"correctPrefix\": null, \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [{\"key\": null, \"score\": 2, \"prefix\": \"1\", \"content\": \"鹅鹅鹅\", \"itemUuid\": \"7e9d3a93-bfa3-49c2-9fb8-0948e3b201ea\"}, {\"key\": null, \"score\": 2, \"prefix\": \"2\", \"content\": \"白毛浮绿水\", \"itemUuid\": \"19d770af-502f-4a15-bfb5-7cbdc150acc4\"}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('1225201c-f131-4bd2-ad36-d0c50b073cce', '{\"id\": \"1225201c-f131-4bd2-ad36-d0c50b073cce\", \"score\": 30, \"title\": \"题目1\", \"analyze\": \"​题目1\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": null, \"categoryId\": 36, \"correctKey\": 2, \"questionId\": 377, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 1, \"childQuestion\": null, \"correctPrefix\": \"C\", \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [{\"key\": 0, \"score\": null, \"prefix\": \"A\", \"content\": \"​1\", \"itemUuid\": null}, {\"key\": 1, \"score\": null, \"prefix\": \"B\", \"content\": \"​2\", \"itemUuid\": null}, {\"key\": 2, \"score\": null, \"prefix\": \"C\", \"content\": \"​3\", \"itemUuid\": null}, {\"key\": 3, \"score\": null, \"prefix\": \"D\", \"content\": \"​4\", \"itemUuid\": null}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('24706b90-332e-4956-84ac-4ef7301bb914', '{\"id\": \"24706b90-332e-4956-84ac-4ef7301bb914\", \"score\": 20, \"title\": \"999\", \"analyze\": \"​99\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": null, \"categoryId\": 34, \"correctKey\": null, \"questionId\": 387, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 2, \"childQuestion\": null, \"correctPrefix\": \"B\", \"correctContent\": null, \"correctArrayKey\": [1], \"questionTagList\": [], \"questionItemFrames\": [{\"key\": 0, \"score\": null, \"prefix\": \"A\", \"content\": \"​99\", \"itemUuid\": null}, {\"key\": 1, \"score\": null, \"prefix\": \"B\", \"content\": \"​99\", \"itemUuid\": null}, {\"key\": 2, \"score\": null, \"prefix\": \"C\", \"content\": \"​99\", \"itemUuid\": null}, {\"key\": 3, \"score\": null, \"prefix\": \"D\", \"content\": \"​99\", \"itemUuid\": null}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('2829dcdc-f646-4bcb-97a4-066d86dc53a4', '{\"id\": \"2829dcdc-f646-4bcb-97a4-066d86dc53a4\", \"score\": 40, \"title\": \"（<span class=\\\"gapfilling-span f468efc9-fcfa-4c7c-85e5-d7f54cdb1557\\\">1</span>），曲项向天歌。（<span class=\\\"gapfilling-span f3937aba-ca07-41ad-bb02-38a83669221c\\\">2</span>），红掌拨清波。\", \"analyze\": \"咏鹅\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": 1, \"categoryId\": 36, \"correctKey\": null, \"questionId\": 389, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 4, \"childQuestion\": null, \"correctPrefix\": null, \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [{\"key\": null, \"score\": 2, \"prefix\": \"1\", \"content\": \"鹅鹅鹅\", \"itemUuid\": \"f468efc9-fcfa-4c7c-85e5-d7f54cdb1557\"}, {\"key\": null, \"score\": 2, \"prefix\": \"2\", \"content\": \"白毛浮绿水\", \"itemUuid\": \"f3937aba-ca07-41ad-bb02-38a83669221c\"}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('28749dbc-001d-4d4c-a08f-c0dddecd26e3', '{\"id\": \"28749dbc-001d-4d4c-a08f-c0dddecd26e3\", \"score\": 40, \"title\": \"（<span class=\\\"gapfilling-span 5576e548-2909-461e-af05-b59ed2d8fcfc\\\">1</span>），曲项向天歌。（<span class=\\\"gapfilling-span 130743fd-9818-4ca9-a86d-cbfeadb8f931\\\">2</span>），红掌拨清波。\", \"analyze\": \"咏鹅\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": 1, \"categoryId\": 36, \"correctKey\": null, \"questionId\": 390, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 4, \"childQuestion\": null, \"correctPrefix\": null, \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [{\"key\": null, \"score\": 2, \"prefix\": \"1\", \"content\": \"鹅鹅鹅\", \"itemUuid\": \"5576e548-2909-461e-af05-b59ed2d8fcfc\"}, {\"key\": null, \"score\": 2, \"prefix\": \"2\", \"content\": \"白毛浮绿水\", \"itemUuid\": \"130743fd-9818-4ca9-a86d-cbfeadb8f931\"}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('2954914c-ef71-4c22-ac72-86725791e968', '{\"id\": \"2954914c-ef71-4c22-ac72-86725791e968\", \"score\": 40, \"title\": \"（<span class=\\\"gapfilling-span 771c685e-40b3-4add-8126-6f904682f914\\\">1</span>），曲项向天歌。（<span class=\\\"gapfilling-span 127523be-d31d-4fb0-813c-a32a400708a5\\\">2</span>），红掌拨清波。\", \"analyze\": \"咏鹅\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": 1, \"categoryId\": 36, \"correctKey\": null, \"questionId\": 382, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 4, \"childQuestion\": null, \"correctPrefix\": null, \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [{\"key\": null, \"score\": 2, \"prefix\": \"1\", \"content\": \"鹅鹅鹅\", \"itemUuid\": \"771c685e-40b3-4add-8126-6f904682f914\"}, {\"key\": null, \"score\": 2, \"prefix\": \"2\", \"content\": \"白毛浮绿水\", \"itemUuid\": \"127523be-d31d-4fb0-813c-a32a400708a5\"}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('3047ca34-6cf3-4faa-968e-62f7918cd5d4', '{\"id\": \"3047ca34-6cf3-4faa-968e-62f7918cd5d4\", \"score\": 25, \"title\": \"静夜思的作者是唐代的李白\", \"analyze\": \"李白的静夜思\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": null, \"categoryId\": 36, \"correctKey\": 0, \"questionId\": 381, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 3, \"childQuestion\": null, \"correctPrefix\": \"A\", \"correctContent\": \"对\", \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [{\"key\": 0, \"score\": null, \"prefix\": \"A\", \"content\": \"对\", \"itemUuid\": null}, {\"key\": 1, \"score\": null, \"prefix\": \"B\", \"content\": \"错\", \"itemUuid\": null}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('31a0014c-993f-448f-8717-8afa4dd00038', '{\"id\": \"31a0014c-993f-448f-8717-8afa4dd00038\", \"score\": 50, \"title\": \"单选题\", \"analyze\": \"​123456\", \"correct\": null, \"difficult\": 5, \"itemOrder\": null, \"judgeType\": null, \"categoryId\": 34, \"correctKey\": 0, \"questionId\": 384, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 1, \"childQuestion\": null, \"correctPrefix\": \"A\", \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [{\"key\": 0, \"score\": null, \"prefix\": \"A\", \"content\": \"​1\", \"itemUuid\": null}, {\"key\": 1, \"score\": null, \"prefix\": \"B\", \"content\": \"​2\", \"itemUuid\": null}, {\"key\": 2, \"score\": null, \"prefix\": \"C\", \"content\": \"​3\", \"itemUuid\": null}, {\"key\": 3, \"score\": null, \"prefix\": \"D\", \"content\": \"​4\", \"itemUuid\": null}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('38759fb7-559c-4588-b4e8-71f9ec86838a', '{\"id\": \"38759fb7-559c-4588-b4e8-71f9ec86838a\", \"score\": 30, \"title\": \"以下哪些诗句是静夜思的？\", \"analyze\": \"床前明月光，\\n疑是地上霜。\\n举头望明月，\\n低头思故乡。\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": null, \"categoryId\": 36, \"correctKey\": null, \"questionId\": 380, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 2, \"childQuestion\": null, \"correctPrefix\": \"A C\", \"correctContent\": null, \"correctArrayKey\": [0, 2], \"questionTagList\": [], \"questionItemFrames\": [{\"key\": 0, \"score\": null, \"prefix\": \"A\", \"content\": \"床前明月光\", \"itemUuid\": null}, {\"key\": 1, \"score\": null, \"prefix\": \"B\", \"content\": \"夜来风雨声\", \"itemUuid\": null}, {\"key\": 2, \"score\": null, \"prefix\": \"C\", \"content\": \"举头望明月\", \"itemUuid\": null}, {\"key\": 3, \"score\": null, \"prefix\": \"D\", \"content\": \"花落有多少\", \"itemUuid\": null}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('4f533ba4-4034-42f2-8f68-b7adae94e5f0', '{\"id\": \"4f533ba4-4034-42f2-8f68-b7adae94e5f0\", \"score\": 100, \"title\": \"默写咏鹅\", \"analyze\": \"咏鹅可以带拼音\", \"correct\": \"鹅鹅鹅，\\n曲项向天歌。\\n白毛浮绿水，\\n红掌拨清波。\", \"difficult\": 4, \"itemOrder\": null, \"judgeType\": null, \"categoryId\": 34, \"correctKey\": null, \"questionId\": 383, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 5, \"childQuestion\": null, \"correctPrefix\": null, \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('5699f99b-c2e6-4d75-8a3e-44da0d232888', '{\"id\": \"5699f99b-c2e6-4d75-8a3e-44da0d232888\", \"score\": 20, \"title\": \"​999\", \"analyze\": \"​ccccc\", \"correct\": null, \"difficult\": 5, \"itemOrder\": null, \"judgeType\": null, \"categoryId\": 34, \"correctKey\": 2, \"questionId\": 386, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 1, \"childQuestion\": null, \"correctPrefix\": \"C\", \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [{\"key\": 0, \"score\": null, \"prefix\": \"A\", \"content\": \"​a\", \"itemUuid\": null}, {\"key\": 1, \"score\": null, \"prefix\": \"B\", \"content\": \"​b\", \"itemUuid\": null}, {\"key\": 2, \"score\": null, \"prefix\": \"C\", \"content\": \"​cccccc\", \"itemUuid\": null}, {\"key\": 3, \"score\": null, \"prefix\": \"D\", \"content\": \"​d\", \"itemUuid\": null}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('70825ca5-d241-45ce-b6e2-e0e2a5811e3d', '{\"id\": \"70825ca5-d241-45ce-b6e2-e0e2a5811e3d\", \"score\": 40, \"title\": \"（<span class=\\\"gapfilling-span 7580f7b6-3290-4e8b-9c39-9ad8d0f57677\\\">1</span>），曲项向天歌。（<span class=\\\"gapfilling-span bff2920f-660d-49fe-b492-1f02145679b5\\\">2</span>），红掌拨清波。\", \"analyze\": \"咏鹅\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": 1, \"categoryId\": 36, \"correctKey\": null, \"questionId\": 391, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 4, \"childQuestion\": null, \"correctPrefix\": null, \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [{\"key\": null, \"score\": 2, \"prefix\": \"1\", \"content\": \"鹅鹅鹅\", \"itemUuid\": \"7580f7b6-3290-4e8b-9c39-9ad8d0f57677\"}, {\"key\": null, \"score\": 2, \"prefix\": \"2\", \"content\": \"白毛浮绿水\", \"itemUuid\": \"bff2920f-660d-49fe-b492-1f02145679b5\"}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('76048cea-ac19-4b3e-8e21-4e7b7a5d92a7', '{\"id\": \"76048cea-ac19-4b3e-8e21-4e7b7a5d92a7\", \"score\": 20, \"title\": \"​1111\", \"analyze\": \"​2\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": null, \"categoryId\": 36, \"correctKey\": 1, \"questionId\": 398, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 1, \"childQuestion\": null, \"correctPrefix\": \"B\", \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [{\"key\": 0, \"score\": null, \"prefix\": \"A\", \"content\": \"​11\", \"itemUuid\": null}, {\"key\": 1, \"score\": null, \"prefix\": \"B\", \"content\": \"​22\", \"itemUuid\": null}, {\"key\": 2, \"score\": null, \"prefix\": \"C\", \"content\": \"​33\", \"itemUuid\": null}, {\"key\": 3, \"score\": null, \"prefix\": \"D\", \"content\": \"​44\", \"itemUuid\": null}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('842a6bb9-5a69-4f0e-8ffd-9af984b3311d', '{\"id\": \"842a6bb9-5a69-4f0e-8ffd-9af984b3311d\", \"score\": 40, \"title\": \"（<span class=\\\"gapfilling-span 7aae741a-2c51-4715-86d8-c5f2201e0e22\\\">1</span>），曲项向天歌。（<span class=\\\"gapfilling-span 4f298e83-3d48-4b76-bb50-fa5171663f9f\\\">2</span>），红掌拨清波。\", \"analyze\": \"咏鹅\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": 2, \"categoryId\": 36, \"correctKey\": null, \"questionId\": 393, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 4, \"childQuestion\": null, \"correctPrefix\": null, \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [{\"key\": null, \"score\": 2, \"prefix\": \"1\", \"content\": \"鹅鹅鹅\", \"itemUuid\": \"7aae741a-2c51-4715-86d8-c5f2201e0e22\"}, {\"key\": null, \"score\": 2, \"prefix\": \"2\", \"content\": \"白毛浮绿水\", \"itemUuid\": \"4f298e83-3d48-4b76-bb50-fa5171663f9f\"}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('8488a9ae-7285-4925-9661-4bb668f0f924', '{\"id\": \"8488a9ae-7285-4925-9661-4bb668f0f924\", \"score\": 10, \"title\": \"​12\", \"analyze\": \"23\", \"correct\": null, \"difficult\": 4, \"itemOrder\": null, \"judgeType\": null, \"categoryId\": 36, \"correctKey\": null, \"questionId\": 397, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 2, \"childQuestion\": null, \"correctPrefix\": \"B C\", \"correctContent\": null, \"correctArrayKey\": [1, 2], \"questionTagList\": [], \"questionItemFrames\": [{\"key\": 0, \"score\": null, \"prefix\": \"A\", \"content\": \"​1\", \"itemUuid\": null}, {\"key\": 1, \"score\": null, \"prefix\": \"B\", \"content\": \"​2\", \"itemUuid\": null}, {\"key\": 2, \"score\": null, \"prefix\": \"C\", \"content\": \"​3\", \"itemUuid\": null}, {\"key\": 3, \"score\": null, \"prefix\": \"D\", \"content\": \"​4\", \"itemUuid\": null}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('89b6d79c-2d65-494e-a73f-4f087b9e254c', '{\"id\": \"89b6d79c-2d65-494e-a73f-4f087b9e254c\", \"score\": 30, \"title\": \"​题目2\", \"analyze\": \"​题目2\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": null, \"categoryId\": 36, \"correctKey\": 2, \"questionId\": 378, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 1, \"childQuestion\": null, \"correctPrefix\": \"C\", \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [{\"key\": 0, \"score\": null, \"prefix\": \"A\", \"content\": \"​1\", \"itemUuid\": null}, {\"key\": 1, \"score\": null, \"prefix\": \"B\", \"content\": \"​2\", \"itemUuid\": null}, {\"key\": 2, \"score\": null, \"prefix\": \"C\", \"content\": \"​3\", \"itemUuid\": null}, {\"key\": 3, \"score\": null, \"prefix\": \"D\", \"content\": \"​4\", \"itemUuid\": null}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('9710811f-35a2-4f72-8d82-88e6ca63f2c8', '{\"id\": \"9710811f-35a2-4f72-8d82-88e6ca63f2c8\", \"score\": 40, \"title\": \"（<span class=\\\"gapfilling-span 97b1ab48-d739-4464-86c9-b37a9e594964\\\">1</span>），曲项向天歌。（<span class=\\\"gapfilling-span dffda5f0-2a7c-42dc-8c5d-4c9c85b9510e\\\">2</span>），红掌拨清波。\", \"analyze\": \"咏鹅\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": 2, \"categoryId\": 36, \"correctKey\": null, \"questionId\": 394, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 4, \"childQuestion\": null, \"correctPrefix\": null, \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [{\"key\": null, \"score\": 2, \"prefix\": \"1\", \"content\": \"鹅鹅鹅\", \"itemUuid\": \"97b1ab48-d739-4464-86c9-b37a9e594964\"}, {\"key\": null, \"score\": 2, \"prefix\": \"2\", \"content\": \"白毛浮绿水\", \"itemUuid\": \"dffda5f0-2a7c-42dc-8c5d-4c9c85b9510e\"}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('a178f95a-add6-45e6-aedb-e46577b7e3c4', '{\"id\": \"a178f95a-add6-45e6-aedb-e46577b7e3c4\", \"score\": 10, \"title\": \"​1\", \"analyze\": \"​1\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": null, \"categoryId\": 34, \"correctKey\": null, \"questionId\": 385, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 7, \"childQuestion\": null, \"correctPrefix\": null, \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [], \"simulateTrainingQuestion\": 92}');
INSERT INTO `t_question_json` VALUES ('c6a61054-c90b-462e-90be-f9f732a2a7dd', '{\"id\": \"c6a61054-c90b-462e-90be-f9f732a2a7dd\", \"score\": 20, \"title\": \"​000\", \"analyze\": \"​00\", \"correct\": null, \"difficult\": 2, \"itemOrder\": null, \"judgeType\": null, \"categoryId\": 34, \"correctKey\": null, \"questionId\": 388, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 7, \"childQuestion\": null, \"correctPrefix\": null, \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [], \"simulateTrainingQuestion\": 92}');
INSERT INTO `t_question_json` VALUES ('f26c1dc0-df82-4d45-bad7-4f78b83b36b1', '{\"id\": \"f26c1dc0-df82-4d45-bad7-4f78b83b36b1\", \"score\": 30, \"title\": \"​11111\", \"analyze\": \"​11111\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": null, \"categoryId\": 36, \"correctKey\": null, \"questionId\": 396, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 7, \"childQuestion\": null, \"correctPrefix\": null, \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [], \"simulateTrainingQuestion\": 95}');
INSERT INTO `t_question_json` VALUES ('fa4defda-00e3-444e-98ab-4d52267e14c3', '{\"id\": \"fa4defda-00e3-444e-98ab-4d52267e14c3\", \"score\": 40, \"title\": \"（<span class=\\\"gapfilling-span 55d2f0ec-91af-4b1a-8145-5d756d2d30d5\\\">1</span>），曲项向天歌。（<span class=\\\"gapfilling-span c532e58b-5257-4f45-aa31-3e8a9cfdfa1c\\\">2</span>），红掌拨清波。\", \"analyze\": \"咏鹅\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": 1, \"categoryId\": 36, \"correctKey\": null, \"questionId\": 395, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 4, \"childQuestion\": null, \"correctPrefix\": null, \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [{\"key\": null, \"score\": 2, \"prefix\": \"1\", \"content\": \"鹅鹅鹅\", \"itemUuid\": \"55d2f0ec-91af-4b1a-8145-5d756d2d30d5\"}, {\"key\": null, \"score\": 2, \"prefix\": \"2\", \"content\": \"白毛浮绿水\", \"itemUuid\": \"c532e58b-5257-4f45-aa31-3e8a9cfdfa1c\"}], \"simulateTrainingQuestion\": null}');
INSERT INTO `t_question_json` VALUES ('fdfc7734-15c5-4584-8f20-637622e946df', '{\"id\": \"fdfc7734-15c5-4584-8f20-637622e946df\", \"score\": 20, \"title\": \"丑小鸭作者是谁？\", \"analyze\": \"汉斯·克里斯汀·安徒生（Hans Christian Andersen，1805年4月2日—1875年8月4日），丹麦19世纪童话作家，被誉为“世界儿童文学的太阳”。安徒生的代表作有《小锡兵》《海的女儿》《拇指姑娘》《卖火柴的小女孩》《丑小鸭》《皇帝的新装》等。\", \"correct\": null, \"difficult\": 3, \"itemOrder\": null, \"judgeType\": null, \"categoryId\": 36, \"correctKey\": 0, \"questionId\": 379, \"trickScore\": null, \"typeEnumId\": null, \"eventsVideo\": null, \"questionType\": 1, \"childQuestion\": null, \"correctPrefix\": \"A\", \"correctContent\": null, \"correctArrayKey\": null, \"questionTagList\": [], \"questionItemFrames\": [{\"key\": 0, \"score\": null, \"prefix\": \"A\", \"content\": \"安徒生\", \"itemUuid\": null}, {\"key\": 1, \"score\": null, \"prefix\": \"B\", \"content\": \"安生\", \"itemUuid\": null}, {\"key\": 2, \"score\": null, \"prefix\": \"C\", \"content\": \"徒生\", \"itemUuid\": null}, {\"key\": 3, \"score\": null, \"prefix\": \"D\", \"content\": \"生安徒\", \"itemUuid\": null}], \"simulateTrainingQuestion\": null}');

-- ----------------------------
-- Table structure for t_question_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_question_tag`;
CREATE TABLE `t_question_tag`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT,
  `question_id` bigint(8) NULL DEFAULT NULL,
  `tag_id` int(4) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `tag_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_question_tag
-- ----------------------------

-- ----------------------------
-- Table structure for t_refuse_info
-- ----------------------------
DROP TABLE IF EXISTS `t_refuse_info`;
CREATE TABLE `t_refuse_info`  (
  `table_id` int(4) NULL DEFAULT NULL,
  `data_id` int(4) NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_refuse_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_res
-- ----------------------------
DROP TABLE IF EXISTS `t_res`;
CREATE TABLE `t_res`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `create_by` int(4) NULL DEFAULT NULL,
  `ord` int(4) NULL DEFAULT 0,
  `state` int(4) NULL DEFAULT 0,
  `state_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pv` int(4) NULL DEFAULT 0,
  `publish` int(4) NULL DEFAULT 0,
  `tip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ct` int(4) NULL DEFAULT 0,
  `indexed` int(4) NULL DEFAULT 0,
  `theme_id` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 212 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_res
-- ----------------------------
INSERT INTO `t_res` VALUES (136, '学生导入模板.xlsx', NULL, NULL, '/res/file/8fc8ab6d-03ea-4ccb-9622-ec6e381407cb/学生导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 43, 0, 1, NULL, 4, 1, NULL, 0, 1, 50);
INSERT INTO `t_res` VALUES (137, '题目导入模板.xlsx', NULL, NULL, '/res/file/d436d869-86ef-4d88-8d95-914fa869e214/题目导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 43, 0, 1, NULL, 8, 1, NULL, 1, 1, 50);
INSERT INTO `t_res` VALUES (138, '学生导入模板.xlsx', NULL, NULL, '/res/file/6c1d0d58-6f35-43cc-b069-26cf67778a52/学生导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 43, 0, 1, NULL, 16, 1, NULL, 1, 1, 50);
INSERT INTO `t_res` VALUES (139, '项目要求.docx', NULL, NULL, '/res/file/90fafdf6-11f8-4991-9c6f-2b5ffb5a57da/项目要求.docx', 'null', '0000-00-00 00:00:00.000000', 43, 10, 1, NULL, 11, 1, NULL, 0, 1, 50);
INSERT INTO `t_res` VALUES (141, '学生导入模板.xlsx', NULL, NULL, '/res/file/76ffb7e4-3601-4805-b13a-67dc5ea9c566/学生导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 1, NULL, 15, 1, NULL, 0, 2, 51);
INSERT INTO `t_res` VALUES (143, '0413记录.txt', NULL, NULL, '/res/file/46eda018-871b-4e99-9b6f-14e7092d35a4/0413记录.txt', 'null', '0000-00-00 00:00:00.000000', 199, 0, 1, NULL, 10, 1, NULL, 0, 1, 50);
INSERT INTO `t_res` VALUES (144, '0413记录.txt', NULL, NULL, '/res/file/d1b6b1a1-918b-4f36-a92b-43cf0c316ddb/0413记录.txt', 'null', '0000-00-00 00:00:00.000000', 199, 0, 1, NULL, 0, 0, NULL, 0, 1, 54);
INSERT INTO `t_res` VALUES (146, '环境账号导入模板.xlsx', NULL, NULL, '/res/file/f3284ac7-cd54-4dc4-b317-3d47c291a3f2/环境账号导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 43, 0, 1, NULL, 20, 1, NULL, 1, 2, 55);
INSERT INTO `t_res` VALUES (147, '项目要求.docx', NULL, NULL, '/res/file/0430703a-bd5b-4d80-bf78-afd0e698b598/项目要求.docx', 'null', '0000-00-00 00:00:00.000000', 43, 0, 1, NULL, 9, 1, NULL, 0, 1, 56);
INSERT INTO `t_res` VALUES (148, '题目导入模板.xlsx', NULL, NULL, '/res/file/37085fdc-2bfd-431d-998b-7509d6710f22/题目导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 43, 0, 1, NULL, 0, 0, NULL, 0, 1, 61);
INSERT INTO `t_res` VALUES (149, '项目要求.docx', NULL, NULL, '/res/file/53ec5a15-8167-48f9-a45b-dd0ec52401b1/项目要求.docx', 'null', '0000-00-00 00:00:00.000000', 43, 0, 1, NULL, 1, 1, NULL, 0, 1, 61);
INSERT INTO `t_res` VALUES (150, '学生导入模板.xlsx', NULL, NULL, '/res/file/28f5471e-2bc4-40c8-a733-851cb3dc7b7c/学生导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 43, 0, 1, NULL, 0, 0, NULL, 0, 1, 61);
INSERT INTO `t_res` VALUES (151, '学生导入模板.xlsx', NULL, NULL, '/res/file/c7cb71b2-2ba2-4313-abd0-624edc7ffee6/学生导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 1, NULL, 0, 0, NULL, 0, 1, 54);
INSERT INTO `t_res` VALUES (154, '环境账号导入模板.xlsx', NULL, NULL, '/res/file/a6c02ed8-e693-457f-8349-7779c333cf7e/环境账号导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 1, NULL, 0, 0, NULL, 0, 2, 62);
INSERT INTO `t_res` VALUES (155, '项目要求.docx', NULL, NULL, '/res/file/0ee254a8-e086-49f3-8488-31cda4b5e7a8/项目要求.docx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 1, NULL, 0, 0, NULL, 0, 2, 62);
INSERT INTO `t_res` VALUES (156, '题目导入模板.xlsx', NULL, NULL, '/res/file/a8471604-6268-465b-bb86-24a4d24863e8/题目导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 1, NULL, 1, 0, NULL, 0, 2, 62);
INSERT INTO `t_res` VALUES (157, '项目要求.docx', NULL, NULL, '/res/file/481e418d-cc43-47b2-b34d-7901b7d50019/项目要求.docx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 1, NULL, 6, 0, NULL, 0, 1, 62);
INSERT INTO `t_res` VALUES (158, '7.docx', NULL, NULL, '/res/file/874c1f9e-1263-4437-a974-84595a12b44c/7.docx', 'null', '0000-00-00 00:00:00.000000', 43, 0, 1, NULL, 100, 1, NULL, 0, 1, 50);
INSERT INTO `t_res` VALUES (159, '项目要求.docx', NULL, NULL, '/res/file/7d22d3c2-ced2-4681-899a-578cbcb8cfd4/项目要求.docx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 0, NULL, 0, 0, NULL, 0, 0, 51);
INSERT INTO `t_res` VALUES (160, '题目导入模板.docx', NULL, NULL, '/res/file/fc8b8ab2-99b2-4e1c-a9cd-71e2cde71f13/题目导入模板.docx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 0, NULL, 0, 0, NULL, 0, 0, 51);
INSERT INTO `t_res` VALUES (161, '学生导入模板.xlsx', NULL, NULL, '/res/file/57c6b7d0-a2fe-4586-99a8-6c0065bc9cc5/学生导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 0, NULL, 0, 0, NULL, 0, 0, 51);
INSERT INTO `t_res` VALUES (177, '题目导入模板.docx', NULL, NULL, '/res/file/d497c300-1cac-4e4b-8f13-c63395f88a09/题目导入模板.docx', 'null', '0000-00-00 00:00:00.000000', 42, 0, 0, NULL, 0, 0, NULL, 0, 0, 66);
INSERT INTO `t_res` VALUES (178, '题目导入模板.docx', NULL, NULL, '/res/file/fa2d62c1-4803-4217-a9ed-92240d7ad4b5/题目导入模板.docx', 'null', '0000-00-00 00:00:00.000000', 42, 0, 0, NULL, 0, 0, NULL, 0, 0, 66);
INSERT INTO `t_res` VALUES (179, '题目导入模板.docx', NULL, NULL, '/res/file/85e93eb5-34ec-4f94-8de0-d1d9b1d3c970/题目导入模板.docx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 0, NULL, 0, 0, NULL, 0, 0, 50);
INSERT INTO `t_res` VALUES (180, '题目导入模板.docx', NULL, NULL, '/res/file/2bc2c628-e125-4d4c-8b7c-5beff3b59dda/题目导入模板.docx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 1, NULL, 0, 0, NULL, 0, 1, 51);
INSERT INTO `t_res` VALUES (181, '课程封面.png', NULL, NULL, '/res/file/85d804c7-2fa2-4eb6-8798-8b1a989cae58/课程封面.png', 'null', '0000-00-00 00:00:00.000000', 44, 0, 1, NULL, 0, 0, '未能读取文件文本', 0, 1, 51);
INSERT INTO `t_res` VALUES (182, '题目导入模板.docx', NULL, NULL, '/res/file/5c9e2ec0-f291-4b77-9bf6-49b468974955/题目导入模板.docx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 1, NULL, 0, 0, NULL, 0, 1, 51);
INSERT INTO `t_res` VALUES (183, '题目导入模板.xlsx', NULL, NULL, '/res/file/2ede5f13-2515-4027-9306-5be1d9ad3645/题目导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 0, NULL, 0, 0, NULL, 0, 0, 62);
INSERT INTO `t_res` VALUES (184, '学生导入模板.xlsx', NULL, NULL, '/res/file/d9b31cbb-6683-4a7b-bc04-fde334cd4400/学生导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 0, NULL, 0, 0, NULL, 0, 0, 62);
INSERT INTO `t_res` VALUES (185, '题目导入模板.docx', NULL, NULL, '/res/file/a5db5398-6056-47f4-a125-783be185fedf/题目导入模板.docx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 1, NULL, 0, 0, NULL, 0, 1, 54);
INSERT INTO `t_res` VALUES (186, '题目导入模板.xlsx', NULL, NULL, '/res/file/23b4acc5-caf6-4ed3-9fce-dcbcb6416983/题目导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 1, NULL, 0, 0, NULL, 0, 1, 54);
INSERT INTO `t_res` VALUES (187, '题目导入模板.docx', NULL, NULL, '/res/file/4d368af5-1f0f-41da-930b-60c205c0d085/题目导入模板.docx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 1, NULL, 0, 1, NULL, 0, 1, 54);
INSERT INTO `t_res` VALUES (191, '学生导入模板.xlsx', NULL, NULL, '/res/file/957d0c8c-8840-44a0-b144-e86c537ad100/学生导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 0, NULL, 0, 0, NULL, 0, 0, 62);
INSERT INTO `t_res` VALUES (192, '题目导入模板.docx', NULL, NULL, '/res/file/3ad464d4-0e63-4c03-b526-459e46b8bc9f/题目导入模板.docx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 1, NULL, 0, 0, NULL, 0, 1, 66);
INSERT INTO `t_res` VALUES (193, '题目导入模板.xlsx', NULL, NULL, '/res/file/5bf825fc-55b6-459b-a143-b4569522073e/题目导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 1, NULL, 0, 0, NULL, 0, 1, 66);
INSERT INTO `t_res` VALUES (195, '题目导入模板.xlsx', NULL, NULL, '/res/file/cf24a83b-fbe2-42dc-9780-87bc2d943619/题目导入模板.xlsx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 0, NULL, 0, 0, NULL, 0, 0, 55);
INSERT INTO `t_res` VALUES (196, '测试文档1.txt', NULL, NULL, '/res/file/dd62b32b-a111-4fb3-a3b1-778b7f0a9d2b/测试文档1.txt', 'null', '0000-00-00 00:00:00.000000', 199, 0, 1, NULL, 0, 0, NULL, 0, 1, 50);
INSERT INTO `t_res` VALUES (197, '0413记录.txt', NULL, NULL, '/res/file/966177f2-a678-431f-8b42-ae8b9ad6e562/0413记录.txt', 'null', '0000-00-00 00:00:00.000000', 199, 0, 1, NULL, 0, 0, NULL, 0, 1, 50);
INSERT INTO `t_res` VALUES (198, '测试文档2.txt', NULL, NULL, '/res/file/0add8951-a052-4905-a136-c05dada93b62/测试文档2.txt', 'null', '0000-00-00 00:00:00.000000', 199, 0, 1, NULL, 0, 0, NULL, 0, 1, 50);
INSERT INTO `t_res` VALUES (199, '测试文档2.txt', NULL, NULL, '/res/file/042e9fa9-8f14-405a-ac32-fa5831954c15/测试文档2.txt', 'null', '0000-00-00 00:00:00.000000', 199, 0, 1, NULL, 0, 0, NULL, 0, 1, 50);
INSERT INTO `t_res` VALUES (200, '测试文档1.txt', NULL, NULL, '/res/file/7eb66f18-e201-4529-b2e9-18ed8a275110/测试文档1.txt', 'null', '0000-00-00 00:00:00.000000', 199, 0, 1, NULL, 1, 0, NULL, 0, 1, 76);
INSERT INTO `t_res` VALUES (201, '屏幕截图 2023-04-20 095110.jpg', NULL, NULL, '/res/file/3c337284-9a55-419c-8d3d-819a76953a0a/屏幕截图 2023-04-20 095110.jpg', 'null', '0000-00-00 00:00:00.000000', 199, 0, 1, NULL, 3, 0, '未能读取文件文本', 0, 1, 76);
INSERT INTO `t_res` VALUES (202, '题目导入模板.docx', NULL, NULL, '/res/file/e8a76c7a-2c6f-42b6-b060-1c1a8d5c49bd/题目导入模板.docx', 'null', '0000-00-00 00:00:00.000000', 44, 0, 2, NULL, 1, 0, NULL, 0, 0, 50);
INSERT INTO `t_res` VALUES (204, '图片3.png', NULL, NULL, '/res/file/96744608-db93-4f72-b3cc-9eb94958a165/图片3.png', 'undefined', '0000-00-00 00:00:00.000000', 42, 0, 1, NULL, 0, 0, '未能读取文件文本', 0, 1, 70);
INSERT INTO `t_res` VALUES (206, '新建 文本文档.txt', NULL, NULL, '/res/file/142ae9c3-5b5c-4ccf-ae4c-a5d0e93934d3/新建 文本文档.txt', 'null', '0000-00-00 00:00:00.000000', 44, 0, 1, NULL, 2, 0, NULL, 0, 1, NULL);
INSERT INTO `t_res` VALUES (207, '测试文档1.txt', NULL, NULL, '/res/file/ea7b9cf4-e97f-49b0-83ff-8b50fbc290a2/测试文档1.txt', 'undefined', '0000-00-00 00:00:00.000000', 42, 0, 1, NULL, 2, 1, NULL, 0, 1, 82);
INSERT INTO `t_res` VALUES (208, '项目要求.docx', NULL, NULL, '/res/file/e0c55751-ef54-4216-8fb2-8f8743169521/项目要求.docx', 'undefined', '2023-06-16 17:56:13.782518', 42, 0, 1, NULL, 0, 0, NULL, 0, 1, 89);
INSERT INTO `t_res` VALUES (209, '项目要求.docx', NULL, NULL, '/res/file/635eea4f-f2e8-4715-9c55-abe765daffd0/项目要求.docx', 'undefined', '2023-06-16 17:57:09.097271', 42, 0, 1, NULL, 0, 0, NULL, 0, 1, 89);
INSERT INTO `t_res` VALUES (210, '项目要求.docx', NULL, NULL, '/res/file/4a4f53d8-5091-450c-8258-72ba29045bb3/项目要求.docx', 'null', '2023-06-16 19:31:03.401496', 44, 0, 0, NULL, 1, 0, NULL, 0, 0, 89);
INSERT INTO `t_res` VALUES (211, 'Screenrecorder-2022-03-29-18-10-35-908.mp4', NULL, NULL, '/res/file/d7090701-6bf7-4046-a446-39a39fbd1d81/Screenrecorder-2022-03-29-18-10-35-908.mp4', 'null', '2023-06-19 17:13:07.266442', 199, 0, 0, NULL, 1, 0, '未能读取文件文本', 0, 0, 70);

-- ----------------------------
-- Table structure for t_res_collect
-- ----------------------------
DROP TABLE IF EXISTS `t_res_collect`;
CREATE TABLE `t_res_collect`  (
  `user_id` int(4) NULL DEFAULT NULL,
  `res_id` int(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_res_collect
-- ----------------------------
INSERT INTO `t_res_collect` VALUES (44, 135, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_collect` VALUES (44, 146, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_collect` VALUES (44, 137, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_collect` VALUES (44, 138, '0000-00-00 00:00:00.000000');

-- ----------------------------
-- Table structure for t_res_log
-- ----------------------------
DROP TABLE IF EXISTS `t_res_log`;
CREATE TABLE `t_res_log`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `res_id` int(4) NULL DEFAULT NULL,
  `type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 819 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_res_log
-- ----------------------------
INSERT INTO `t_res_log` VALUES (593, 135, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (600, 138, 'undefined', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (601, 139, 'undefined', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (604, 137, 'undefined', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (607, 142, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (615, 142, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (622, 137, 'undefined', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (626, 138, 'undefined', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (628, 139, 'undefined', 199, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (629, 136, 'null', 199, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (637, 141, 'null', 199, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (638, 146, 'undefined', 199, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (639, 136, 'null', 43, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (640, 139, 'undefined', 43, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (642, 141, 'null', 43, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (643, 147, 'undefined', 43, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (644, 143, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (645, 145, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (650, 156, 'undefined', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (654, 136, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (656, 157, 'undefined', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (664, 137, 'undefined', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (756, 143, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (760, 138, 'undefined', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (761, 146, 'undefined', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (762, 139, 'undefined', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (764, 158, 'undefined', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (767, 158, 'undefined', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (771, 143, 'null', 58, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (772, 170, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (773, 141, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (775, 138, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (776, 158, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (777, 143, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (779, 201, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (782, 149, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (783, 146, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (784, 143, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (785, 158, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (786, 147, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (787, 206, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (788, 157, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (789, 147, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (790, 206, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (791, 147, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (792, 147, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (793, 158, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (794, 141, 'null', 42, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (796, 207, 'undefined', 42, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (797, 200, 'null', 199, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (798, 201, 'null', 199, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (799, 138, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (801, 158, 'null', 44, '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_log` VALUES (802, 147, 'null', 44, '2023-06-16 19:30:16.166234');
INSERT INTO `t_res_log` VALUES (803, 202, 'null', 44, '2023-06-16 19:30:36.334630');
INSERT INTO `t_res_log` VALUES (804, 210, 'null', 44, '2023-06-16 19:31:10.013937');
INSERT INTO `t_res_log` VALUES (812, 158, 'null', 44, '2023-06-17 10:22:43.056327');
INSERT INTO `t_res_log` VALUES (815, 147, 'null', 44, '2023-06-17 10:37:02.253122');
INSERT INTO `t_res_log` VALUES (817, 141, 'null', 44, '2023-06-17 10:39:26.964937');
INSERT INTO `t_res_log` VALUES (818, 211, 'null', 199, '2023-06-19 17:13:12.509995');

-- ----------------------------
-- Table structure for t_res_recommend
-- ----------------------------
DROP TABLE IF EXISTS `t_res_recommend`;
CREATE TABLE `t_res_recommend`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NULL DEFAULT NULL,
  `res_id` int(4) NULL DEFAULT NULL,
  `recommend` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `reply` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_time` timestamp(6) NULL DEFAULT NULL,
  `reply_id` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_res_recommend
-- ----------------------------
INSERT INTO `t_res_recommend` VALUES (6, 44, 157, 'asdasdasd', '1231qeweq', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 42);
INSERT INTO `t_res_recommend` VALUES (7, 199, 201, '131231231231232', NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', NULL);
INSERT INTO `t_res_recommend` VALUES (8, 199, NULL, '12313', NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', NULL);

-- ----------------------------
-- Table structure for t_res_type
-- ----------------------------
DROP TABLE IF EXISTS `t_res_type`;
CREATE TABLE `t_res_type`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ord` int(4) NULL DEFAULT 0,
  `course_category_new_id` int(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `update_time` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_res_type
-- ----------------------------
INSERT INTO `t_res_type` VALUES (67, '岗位能力1', '该板块是与岗位能力1相关的.', NULL, NULL, 3, 93, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_type` VALUES (68, '岗位能力2', '该板块是与岗位能力2相关的.', NULL, NULL, 2, 94, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_type` VALUES (70, '岗位能力4', '该板块是与岗位能力4相关的.', NULL, NULL, 4, 96, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_type` VALUES (91, '岗位能力5', '该板块是与岗位能力5相关的.', 'null_101', NULL, 0, 101, '0000-00-00 00:00:00.000000', '2023-06-19 10:18:50.840000');
INSERT INTO `t_res_type` VALUES (101, '岗位能力6', '该板块是与岗位能力6相关的.', 'null_106', NULL, 0, 106, '0000-00-00 00:00:00.000000', '2023-06-19 10:18:58.762000');
INSERT INTO `t_res_type` VALUES (102, '岗位能力77', '该板块是与岗位能力77相关的.', 'null_107', NULL, 0, 107, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_type` VALUES (103, '岗位能力8', '该板块是与岗位能力8相关的.', 'null_108', NULL, 0, 108, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');
INSERT INTO `t_res_type` VALUES (107, '岗位能力9', '该板块是与岗位能力9相关的.', 'null_112', NULL, 0, 112, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` int(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `filter_user` tinyint(4) NULL DEFAULT NULL,
  `filter_degree` tinyint(4) NULL DEFAULT NULL,
  `filter_organization` tinyint(4) NULL DEFAULT NULL,
  `organization_id` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '教员', 42, '0000-00-00 00:00:00.000000', 0, 0, 0, 1, 1);
INSERT INTO `t_role` VALUES (2, '平台管理员', 42, '0000-00-00 00:00:00.000000', 0, 0, 0, 1, 1);
INSERT INTO `t_role` VALUES (3, '资源管理员', 42, '0000-00-00 00:00:00.000000', 0, 0, 0, 1, 1);
INSERT INTO `t_role` VALUES (4, '学员', 42, '0000-00-00 00:00:00.000000', 0, 0, 0, 1, 1);
INSERT INTO `t_role` VALUES (19, '审核管理员', 42, '0000-00-00 00:00:00.000000', 0, 0, 0, 1, 1);
INSERT INTO `t_role` VALUES (22, '222', 42, '0000-00-00 00:00:00.000000', 1, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_role_menu_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu_permission`;
CREATE TABLE `t_role_menu_permission`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `role_id` int(4) NULL DEFAULT NULL,
  `menu_id` int(4) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `menu_parent_id` int(4) NULL DEFAULT NULL,
  `menu_meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permissions` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11630 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_menu_permission
-- ----------------------------
INSERT INTO `t_role_menu_permission` VALUES (2489, 5, 120, 0, 159, '在线课程', 'teacherManager');
INSERT INTO `t_role_menu_permission` VALUES (2490, 6, 120, 0, 159, '在线课程', 'teacherManager');
INSERT INTO `t_role_menu_permission` VALUES (2491, 7, 120, 0, 159, '在线课程', 'teacherManager');
INSERT INTO `t_role_menu_permission` VALUES (2492, 8, 120, 0, 159, '在线课程', 'teacherManager');
INSERT INTO `t_role_menu_permission` VALUES (2493, 9, 120, 0, 159, '在线课程', 'resManager,teacherManager');
INSERT INTO `t_role_menu_permission` VALUES (2494, 10, 120, 0, 159, '在线课程', 'resManager,teacherManager');
INSERT INTO `t_role_menu_permission` VALUES (2495, 11, 120, 0, 159, '在线课程', 'teacherManager');
INSERT INTO `t_role_menu_permission` VALUES (2496, 12, 120, 0, 159, '在线课程', 'teacherManager');
INSERT INTO `t_role_menu_permission` VALUES (2497, 13, 120, 0, 159, '在线课程', 'teacherManager');
INSERT INTO `t_role_menu_permission` VALUES (2498, 14, 120, 0, 159, '在线课程', 'teacherManager');
INSERT INTO `t_role_menu_permission` VALUES (2499, 15, 120, 0, 159, '在线课程', 'teacherManager');
INSERT INTO `t_role_menu_permission` VALUES (3732, 20, 185, 0, 169, '系统设置', NULL);
INSERT INTO `t_role_menu_permission` VALUES (4717, 21, 120, 0, 159, '在线课程', 'resManager,teacherManager');
INSERT INTO `t_role_menu_permission` VALUES (11239, 19, 227, 0, 215, '辅助资源', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11240, 19, 189, 0, 227, '资源板块', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11241, 19, 245, 0, 227, '资源主题', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11242, 19, 200, 0, 227, '资料审核', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11243, 19, 143, 0, 227, '反馈管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11244, 19, 228, 0, 215, '授课', ',resManager');
INSERT INTO `t_role_menu_permission` VALUES (11245, 19, 249, 0, 228, '教学列表', 'course:page,course:create');
INSERT INTO `t_role_menu_permission` VALUES (11246, 19, 229, 0, 215, '研讨', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11247, 19, 247, 0, 229, '交流板块', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11248, 19, 155, 0, 229, '交流主题', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11249, 19, 154, 0, 229, '文章管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11250, 19, 156, 0, 229, '问答管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11251, 19, 157, 0, 229, '标签管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11252, 19, 135, 0, 215, '案例实操', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11253, 19, 136, 0, 135, '案例模板', 'template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete');
INSERT INTO `t_role_menu_permission` VALUES (11254, 19, 138, 0, 135, '案例列表', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11255, 19, 139, 0, 135, '案例发布', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11256, 19, 231, 0, 215, '资源分配', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11257, 19, 186, 0, 231, '模拟练习', 'user:page');
INSERT INTO `t_role_menu_permission` VALUES (11258, 19, 187, 0, 231, '协同演练', 'user:page');
INSERT INTO `t_role_menu_permission` VALUES (11327, 3, 218, 0, 214, '专业管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11328, 3, 240, 0, 218, '专业列表', ',category:page,category:create,category:update,category:delete');
INSERT INTO `t_role_menu_permission` VALUES (11329, 3, 219, 0, 214, '岗位管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11330, 3, 239, 0, 219, '岗位列表', 'post:page,course:page,course:create,course:statusChange,course:delete');
INSERT INTO `t_role_menu_permission` VALUES (11331, 3, 220, 0, 214, '岗位能力管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11332, 3, 118, 0, 220, '岗位能力列表', 'course:category:page,course:category:select,course:category:create,course:category:update,course:category:delete');
INSERT INTO `t_role_menu_permission` VALUES (11333, 3, 221, 0, 214, '课程管理', ',resManager');
INSERT INTO `t_role_menu_permission` VALUES (11334, 3, 121, 0, 221, '课程列表', 'course:page,course:select,course:create,course:update,course:delete,course:statusChange,analyze:course,course:comment:page');
INSERT INTO `t_role_menu_permission` VALUES (11335, 3, 222, 0, 214, '业务系统管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11336, 3, 241, 0, 222, '业务系统列表', ',category:page,category:create,category:update,category:delete');
INSERT INTO `t_role_menu_permission` VALUES (11337, 3, 223, 0, 214, '班次管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11338, 3, 62, 0, 223, '班级列表', 'team:page,team:select,team:create,team:update,team:delete,team:user:page');
INSERT INTO `t_role_menu_permission` VALUES (11339, 3, 224, 0, 214, '学员管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11340, 3, 59, 0, 224, '学员列表', 'user:page,user:select,user:create,user:update,user:delete,user:changeStatus,user:excel,analyze:user');
INSERT INTO `t_role_menu_permission` VALUES (11341, 3, 225, 0, 214, '证书管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11342, 3, 32, 0, 225, '证书模板列表', 'credential:delete');
INSERT INTO `t_role_menu_permission` VALUES (11343, 3, 33, 0, 225, '证书模板创编', 'credential:create,credential:update');
INSERT INTO `t_role_menu_permission` VALUES (11344, 3, 226, 0, 214, '学情分析', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11345, 3, 248, 0, 226, '调问系统', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11346, 3, 227, 0, 215, '辅助资源', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11347, 3, 189, 0, 227, '资源板块', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11348, 3, 245, 0, 227, '资源主题', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11349, 3, 200, 0, 227, '资料审核', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11350, 3, 143, 0, 227, '反馈管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11351, 3, 228, 0, 215, '授课', ',resManager');
INSERT INTO `t_role_menu_permission` VALUES (11352, 3, 249, 0, 228, '教学列表', 'course:page,course:create');
INSERT INTO `t_role_menu_permission` VALUES (11353, 3, 229, 0, 215, '研讨', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11354, 3, 247, 0, 229, '交流板块', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11355, 3, 155, 0, 229, '交流主题', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11356, 3, 154, 0, 229, '文章管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11357, 3, 156, 0, 229, '问答管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11358, 3, 157, 0, 229, '标签管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11359, 3, 135, 0, 215, '案例实操', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11360, 3, 136, 0, 135, '案例模板', 'template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete');
INSERT INTO `t_role_menu_permission` VALUES (11361, 3, 138, 0, 135, '案例列表', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11362, 3, 139, 0, 135, '案例发布', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11363, 3, 231, 0, 215, '资源分配', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11364, 3, 186, 0, 231, '模拟练习', 'user:page');
INSERT INTO `t_role_menu_permission` VALUES (11365, 3, 187, 0, 231, '协同演练', 'user:page');
INSERT INTO `t_role_menu_permission` VALUES (11366, 3, 64, 0, 216, '题目管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11367, 3, 65, 0, 64, '题目列表', 'question:page,question:delete,question:excel,question:word');
INSERT INTO `t_role_menu_permission` VALUES (11368, 3, 66, 0, 64, '单选题创编', 'question:singleChoice:select,question:singleChoice:create,question:singleChoice:update');
INSERT INTO `t_role_menu_permission` VALUES (11369, 3, 67, 0, 64, '多选题创编', 'question:multipleChoice:select,question:multipleChoice:create,question:multipleChoice:update');
INSERT INTO `t_role_menu_permission` VALUES (11370, 3, 68, 0, 64, '判断题创编', 'question:trueFalse:select,question:trueFalse:create,question:trueFalse:update');
INSERT INTO `t_role_menu_permission` VALUES (11371, 3, 69, 0, 64, '填空题创编', 'question:gapFilling:select,question:gapFilling:create,question:gapFilling:update');
INSERT INTO `t_role_menu_permission` VALUES (11372, 3, 70, 0, 64, '简答题创编', 'question:shortAnswer:select,question:shortAnswer:create,question:shortAnswer:update');
INSERT INTO `t_role_menu_permission` VALUES (11373, 3, 109, 0, 64, '组合题创编', 'question:compose:select,question:compose:create,question:compose:update');
INSERT INTO `t_role_menu_permission` VALUES (11374, 3, 130, 0, 64, '模拟训练题创编', 'question:simulateTraining:select,question:simulateTraining:create,question:simulateTraining:update');
INSERT INTO `t_role_menu_permission` VALUES (11375, 3, 232, 0, 216, '试卷管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11376, 3, 72, 0, 232, '试卷列表', 'paper:page,paper:select,paper:create,paper:update,paper:delete,paper:statusChange,paper:copy');
INSERT INTO `t_role_menu_permission` VALUES (11377, 3, 73, 0, 232, '人工组卷', 'paper:select,paper:create,paper:update');
INSERT INTO `t_role_menu_permission` VALUES (11378, 3, 74, 0, 232, '智能组卷', 'paper:select,paper:create,paper:update,paper:random');
INSERT INTO `t_role_menu_permission` VALUES (11379, 3, 77, 0, 216, '发布考试', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11380, 3, 78, 0, 77, '任务列表', 'task:page,task:select,task:create,task:update,task:delete,task:statusChange');
INSERT INTO `t_role_menu_permission` VALUES (11381, 3, 91, 0, 216, '考核分析', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11382, 3, 92, 0, 91, '答卷列表', 'answer:page,answer:judge,answer:edit,answer:read,answer:export,analyze:paper,exam:paper:answer:credential');
INSERT INTO `t_role_menu_permission` VALUES (11383, 2, 218, 0, 214, '专业管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11384, 2, 240, 0, 218, '专业列表', ',category:page,category:create,category:update,category:delete');
INSERT INTO `t_role_menu_permission` VALUES (11385, 2, 219, 0, 214, '岗位管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11386, 2, 239, 0, 219, '岗位列表', ',post:page,course:page,course:create,course:statusChange,course:delete');
INSERT INTO `t_role_menu_permission` VALUES (11387, 2, 220, 0, 214, '岗位能力管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11388, 2, 118, 0, 220, '岗位能力列表', 'course:category:page,course:category:select,course:category:create,course:category:update,course:category:delete');
INSERT INTO `t_role_menu_permission` VALUES (11389, 2, 221, 0, 214, '课程管理', ',resManager');
INSERT INTO `t_role_menu_permission` VALUES (11390, 2, 121, 0, 221, '课程列表', 'course:page,course:select,course:create,course:update,course:delete,course:statusChange,analyze:course,course:comment:page');
INSERT INTO `t_role_menu_permission` VALUES (11391, 2, 222, 0, 214, '业务系统管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11392, 2, 241, 0, 222, '业务系统列表', ',category:page,category:create,category:update,category:delete');
INSERT INTO `t_role_menu_permission` VALUES (11393, 2, 223, 0, 214, '班次管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11394, 2, 62, 0, 223, '班级列表', 'team:page,team:select,team:create,team:update,team:delete,team:user:page');
INSERT INTO `t_role_menu_permission` VALUES (11395, 2, 224, 0, 214, '学员管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11396, 2, 59, 0, 224, '学员列表', 'user:page,user:select,user:create,user:update,user:delete,user:changeStatus,user:excel,analyze:user');
INSERT INTO `t_role_menu_permission` VALUES (11397, 2, 225, 0, 214, '证书管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11398, 2, 32, 0, 225, '证书模板列表', 'credential:delete');
INSERT INTO `t_role_menu_permission` VALUES (11399, 2, 33, 0, 225, '证书模板创编', 'credential:create,credential:update');
INSERT INTO `t_role_menu_permission` VALUES (11400, 2, 226, 0, 214, '学情分析', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11401, 2, 248, 0, 226, '调问系统', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11402, 2, 227, 0, 215, '辅助资源', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11403, 2, 189, 0, 227, '资源板块', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11404, 2, 245, 0, 227, '资源主题', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11405, 2, 200, 0, 227, '资料审核', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11406, 2, 143, 0, 227, '反馈管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11407, 2, 228, 0, 215, '授课', ',resManager');
INSERT INTO `t_role_menu_permission` VALUES (11408, 2, 249, 0, 228, '教学列表', 'course:page,course:create');
INSERT INTO `t_role_menu_permission` VALUES (11409, 2, 229, 0, 215, '研讨', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11410, 2, 247, 0, 229, '交流板块', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11411, 2, 155, 0, 229, '交流主题', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11412, 2, 154, 0, 229, '文章管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11413, 2, 156, 0, 229, '问答管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11414, 2, 157, 0, 229, '标签管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11415, 2, 135, 0, 215, '案例实操', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11416, 2, 136, 0, 135, '案例模板', 'template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete');
INSERT INTO `t_role_menu_permission` VALUES (11417, 2, 138, 0, 135, '案例列表', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11418, 2, 139, 0, 135, '案例发布', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11419, 2, 231, 0, 215, '资源分配', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11420, 2, 186, 0, 231, '模拟练习', 'user:page');
INSERT INTO `t_role_menu_permission` VALUES (11421, 2, 187, 0, 231, '协同演练', 'user:page');
INSERT INTO `t_role_menu_permission` VALUES (11422, 2, 64, 0, 216, '题目管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11423, 2, 65, 0, 64, '题目列表', 'question:page,question:delete,question:excel,question:word');
INSERT INTO `t_role_menu_permission` VALUES (11424, 2, 66, 0, 64, '单选题创编', 'question:singleChoice:select,question:singleChoice:create,question:singleChoice:update');
INSERT INTO `t_role_menu_permission` VALUES (11425, 2, 67, 0, 64, '多选题创编', 'question:multipleChoice:select,question:multipleChoice:create,question:multipleChoice:update');
INSERT INTO `t_role_menu_permission` VALUES (11426, 2, 68, 0, 64, '判断题创编', 'question:trueFalse:select,question:trueFalse:create,question:trueFalse:update');
INSERT INTO `t_role_menu_permission` VALUES (11427, 2, 69, 0, 64, '填空题创编', 'question:gapFilling:select,question:gapFilling:create,question:gapFilling:update');
INSERT INTO `t_role_menu_permission` VALUES (11428, 2, 70, 0, 64, '简答题创编', 'question:shortAnswer:select,question:shortAnswer:create,question:shortAnswer:update');
INSERT INTO `t_role_menu_permission` VALUES (11429, 2, 109, 0, 64, '组合题创编', 'question:compose:select,question:compose:create,question:compose:update');
INSERT INTO `t_role_menu_permission` VALUES (11430, 2, 130, 0, 64, '模拟训练题创编', 'question:simulateTraining:select,question:simulateTraining:create,question:simulateTraining:update');
INSERT INTO `t_role_menu_permission` VALUES (11431, 2, 232, 0, 216, '试卷管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11432, 2, 72, 0, 232, '试卷列表', 'paper:page,paper:select,paper:create,paper:update,paper:delete,paper:statusChange,paper:copy');
INSERT INTO `t_role_menu_permission` VALUES (11433, 2, 73, 0, 232, '人工组卷', 'paper:select,paper:create,paper:update');
INSERT INTO `t_role_menu_permission` VALUES (11434, 2, 74, 0, 232, '智能组卷', 'paper:select,paper:create,paper:update,paper:random');
INSERT INTO `t_role_menu_permission` VALUES (11435, 2, 77, 0, 216, '发布考试', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11436, 2, 78, 0, 77, '任务列表', 'task:page,task:select,task:create,task:update,task:delete,task:statusChange');
INSERT INTO `t_role_menu_permission` VALUES (11437, 2, 91, 0, 216, '考核分析', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11438, 2, 92, 0, 91, '答卷列表', 'answer:page,answer:judge,answer:edit,answer:read,answer:export,analyze:paper,exam:paper:answer:credential');
INSERT INTO `t_role_menu_permission` VALUES (11439, 2, 235, 0, 217, '用户管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11440, 2, 206, 0, 235, '用户列表', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11441, 2, 236, 0, 217, '角色管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11442, 2, 182, 0, 236, '角色列表', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11443, 2, 237, 0, 217, '菜单管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11444, 2, 181, 0, 237, '菜单列表', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11445, 2, 172, 0, 217, '后台管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11446, 2, 85, 0, 172, '消息列表', 'message:page,message:select,message:recall');
INSERT INTO `t_role_menu_permission` VALUES (11447, 2, 86, 0, 172, '消息发送', 'message:send');
INSERT INTO `t_role_menu_permission` VALUES (11448, 2, 88, 0, 172, '日志列表', 'userEventLog:page');
INSERT INTO `t_role_menu_permission` VALUES (11449, 2, 190, 0, 172, '禁词管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11450, 2, 191, 0, 172, '黑名单管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11488, 4, 218, 0, 214, '专业管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11489, 4, 240, 0, 218, '专业列表', 'category:page,category:create,category:update,category:delete');
INSERT INTO `t_role_menu_permission` VALUES (11490, 4, 219, 0, 214, '岗位管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11491, 4, 239, 0, 219, '岗位列表', 'course:page,course:create,course:statusChange,course:delete');
INSERT INTO `t_role_menu_permission` VALUES (11492, 4, 220, 0, 214, '岗位能力管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11493, 4, 118, 0, 220, '岗位能力列表', 'course:category:page,course:category:select,course:category:create,course:category:update,course:category:delete');
INSERT INTO `t_role_menu_permission` VALUES (11494, 4, 221, 0, 214, '课程管理', 'resManager');
INSERT INTO `t_role_menu_permission` VALUES (11495, 4, 121, 0, 221, '课程列表', 'course:page,course:select,course:create,course:update,course:delete,course:statusChange,analyze:course,course:comment:page');
INSERT INTO `t_role_menu_permission` VALUES (11496, 4, 222, 0, 214, '业务系统管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11497, 4, 241, 0, 222, '业务系统列表', 'category:page,category:create,category:update,category:delete');
INSERT INTO `t_role_menu_permission` VALUES (11498, 4, 223, 0, 214, '班次管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11499, 4, 62, 0, 223, '班级列表', 'team:page,team:select,team:create,team:update,team:delete,team:user:page');
INSERT INTO `t_role_menu_permission` VALUES (11500, 4, 224, 0, 214, '学员管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11501, 4, 59, 0, 224, '学员列表', 'user:page,user:select,user:create,user:update,user:delete,user:changeStatus,user:excel,analyze:user');
INSERT INTO `t_role_menu_permission` VALUES (11502, 4, 225, 0, 214, '证书管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11503, 4, 32, 0, 225, '证书模板列表', 'credential:delete');
INSERT INTO `t_role_menu_permission` VALUES (11504, 4, 33, 0, 225, '证书模板创编', 'credential:create,credential:update');
INSERT INTO `t_role_menu_permission` VALUES (11505, 4, 226, 0, 214, '学情分析', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11506, 4, 248, 0, 226, '调问系统', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11507, 4, 227, 0, 215, '辅助资源', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11508, 4, 189, 0, 227, '资源板块', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11509, 4, 245, 0, 227, '资源主题', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11510, 4, 200, 0, 227, '资料审核', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11511, 4, 143, 0, 227, '反馈管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11512, 4, 228, 0, 215, '授课', ',resManager');
INSERT INTO `t_role_menu_permission` VALUES (11513, 4, 249, 0, 228, '教学列表', 'course:page,course:create');
INSERT INTO `t_role_menu_permission` VALUES (11514, 4, 229, 0, 215, '研讨', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11515, 4, 247, 0, 229, '交流板块', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11516, 4, 155, 0, 229, '交流主题', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11517, 4, 154, 0, 229, '文章管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11518, 4, 156, 0, 229, '问答管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11519, 4, 157, 0, 229, '标签管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11520, 4, 135, 0, 215, '案例实操', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11521, 4, 136, 0, 135, '案例模板', 'template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete');
INSERT INTO `t_role_menu_permission` VALUES (11522, 4, 138, 0, 135, '案例列表', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11523, 4, 139, 0, 135, '案例发布', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11524, 4, 231, 0, 215, '资源分配', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11525, 4, 186, 0, 231, '模拟练习', 'user:page');
INSERT INTO `t_role_menu_permission` VALUES (11526, 4, 187, 0, 231, '协同演练', 'user:page');
INSERT INTO `t_role_menu_permission` VALUES (11527, 4, 64, 0, 216, '题目管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11528, 4, 65, 0, 64, '题目列表', 'question:page,question:delete,question:excel,question:word');
INSERT INTO `t_role_menu_permission` VALUES (11529, 4, 66, 0, 64, '单选题创编', 'question:singleChoice:select,question:singleChoice:create,question:singleChoice:update');
INSERT INTO `t_role_menu_permission` VALUES (11530, 4, 67, 0, 64, '多选题创编', 'question:multipleChoice:select,question:multipleChoice:create,question:multipleChoice:update');
INSERT INTO `t_role_menu_permission` VALUES (11531, 4, 68, 0, 64, '判断题创编', 'question:trueFalse:select,question:trueFalse:create,question:trueFalse:update');
INSERT INTO `t_role_menu_permission` VALUES (11532, 4, 69, 0, 64, '填空题创编', 'question:gapFilling:select,question:gapFilling:create,question:gapFilling:update');
INSERT INTO `t_role_menu_permission` VALUES (11533, 4, 70, 0, 64, '简答题创编', 'question:shortAnswer:select,question:shortAnswer:create,question:shortAnswer:update');
INSERT INTO `t_role_menu_permission` VALUES (11534, 4, 109, 0, 64, '组合题创编', 'question:compose:select,question:compose:create,question:compose:update');
INSERT INTO `t_role_menu_permission` VALUES (11535, 4, 130, 0, 64, '模拟训练题创编', 'question:simulateTraining:select,question:simulateTraining:create,question:simulateTraining:update');
INSERT INTO `t_role_menu_permission` VALUES (11536, 4, 232, 0, 216, '试卷管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11537, 4, 72, 0, 232, '试卷列表', 'paper:page,paper:select,paper:create,paper:update,paper:delete,paper:statusChange,paper:copy');
INSERT INTO `t_role_menu_permission` VALUES (11538, 4, 73, 0, 232, '人工组卷', 'paper:select,paper:create,paper:update');
INSERT INTO `t_role_menu_permission` VALUES (11539, 4, 74, 0, 232, '智能组卷', 'paper:select,paper:create,paper:update,paper:random');
INSERT INTO `t_role_menu_permission` VALUES (11540, 4, 77, 0, 216, '发布考试', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11541, 4, 78, 0, 77, '任务列表', 'task:page,task:select,task:create,task:update,task:delete,task:statusChange');
INSERT INTO `t_role_menu_permission` VALUES (11542, 4, 91, 0, 216, '考核分析', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11543, 4, 92, 0, 91, '答卷列表', 'answer:page,answer:judge,answer:edit,answer:read,answer:export,analyze:paper,exam:paper:answer:credential');
INSERT INTO `t_role_menu_permission` VALUES (11544, 4, 235, 0, 217, '用户管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11545, 4, 206, 0, 235, '用户列表', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11546, 4, 236, 0, 217, '角色管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11547, 4, 182, 0, 236, '角色列表', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11548, 4, 237, 0, 217, '菜单管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11549, 4, 181, 0, 237, '菜单列表', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11550, 4, 172, 0, 217, '后台管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11551, 4, 85, 0, 172, '消息列表', 'message:page,message:select,message:recall');
INSERT INTO `t_role_menu_permission` VALUES (11552, 4, 86, 0, 172, '消息发送', 'message:send');
INSERT INTO `t_role_menu_permission` VALUES (11553, 4, 88, 0, 172, '日志列表', 'userEventLog:page');
INSERT INTO `t_role_menu_permission` VALUES (11554, 4, 190, 0, 172, '禁词管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11555, 4, 191, 0, 172, '黑名单管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11593, 1, 227, 0, 215, '辅助资源', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11594, 1, 189, 0, 227, '资源板块', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11595, 1, 245, 0, 227, '资源主题', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11596, 1, 200, 0, 227, '资料审核', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11597, 1, 143, 0, 227, '反馈管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11598, 1, 228, 0, 215, '授课', ',teacherManager');
INSERT INTO `t_role_menu_permission` VALUES (11599, 1, 249, 0, 228, '课程列表', 'course:page,course:select,course:create,course:update,course:delete,course:statusChange,analyze:course,course:comment:page');
INSERT INTO `t_role_menu_permission` VALUES (11600, 1, 229, 0, 215, '研讨', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11601, 1, 247, 0, 229, '交流板块', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11602, 1, 155, 0, 229, '交流主题', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11603, 1, 154, 0, 229, '文章管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11604, 1, 156, 0, 229, '问答管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11605, 1, 157, 0, 229, '标签管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11606, 1, 135, 0, 215, '案例实操', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11607, 1, 136, 0, 135, '案例模板', 'template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete,template:page,template:select,template:create,template:update,template:delete');
INSERT INTO `t_role_menu_permission` VALUES (11608, 1, 138, 0, 135, '案例列表', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11609, 1, 139, 0, 135, '案例发布', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11610, 1, 231, 0, 215, '资源分配', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11611, 1, 186, 0, 231, '模拟练习', ',user:page');
INSERT INTO `t_role_menu_permission` VALUES (11612, 1, 187, 0, 231, '协同演练', ',user:page');
INSERT INTO `t_role_menu_permission` VALUES (11613, 1, 64, 0, 216, '题目管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11614, 1, 65, 0, 64, '题目列表', 'question:page,question:delete,question:excel,question:word');
INSERT INTO `t_role_menu_permission` VALUES (11615, 1, 66, 0, 64, '单选题创编', 'question:singleChoice:select,question:singleChoice:create,question:singleChoice:update');
INSERT INTO `t_role_menu_permission` VALUES (11616, 1, 67, 0, 64, '多选题创编', 'question:multipleChoice:select,question:multipleChoice:create,question:multipleChoice:update');
INSERT INTO `t_role_menu_permission` VALUES (11617, 1, 68, 0, 64, '判断题创编', 'question:trueFalse:select,question:trueFalse:create,question:trueFalse:update');
INSERT INTO `t_role_menu_permission` VALUES (11618, 1, 69, 0, 64, '填空题创编', 'question:gapFilling:select,question:gapFilling:create,question:gapFilling:update');
INSERT INTO `t_role_menu_permission` VALUES (11619, 1, 70, 0, 64, '简答题创编', 'question:shortAnswer:select,question:shortAnswer:create,question:shortAnswer:update');
INSERT INTO `t_role_menu_permission` VALUES (11620, 1, 109, 0, 64, '组合题创编', 'question:compose:select,question:compose:create,question:compose:update');
INSERT INTO `t_role_menu_permission` VALUES (11621, 1, 130, 0, 64, '模拟训练题创编', 'question:simulateTraining:select,question:simulateTraining:create,question:simulateTraining:update');
INSERT INTO `t_role_menu_permission` VALUES (11622, 1, 232, 0, 216, '试卷管理', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11623, 1, 72, 0, 232, '试卷列表', 'paper:page,paper:select,paper:create,paper:update,paper:delete,paper:statusChange,paper:copy');
INSERT INTO `t_role_menu_permission` VALUES (11624, 1, 73, 0, 232, '人工组卷', 'paper:select,paper:create,paper:update');
INSERT INTO `t_role_menu_permission` VALUES (11625, 1, 74, 0, 232, '智能组卷', 'paper:select,paper:create,paper:update,paper:random');
INSERT INTO `t_role_menu_permission` VALUES (11626, 1, 77, 0, 216, '发布考试', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11627, 1, 78, 0, 77, '任务列表', 'task:page,task:select,task:create,task:update,task:delete,task:statusChange');
INSERT INTO `t_role_menu_permission` VALUES (11628, 1, 91, 0, 216, '考核分析', NULL);
INSERT INTO `t_role_menu_permission` VALUES (11629, 1, 92, 0, 91, '答卷列表', 'answer:page,answer:judge,answer:edit,answer:read,answer:export,analyze:paper,exam:paper:answer:credential');

-- ----------------------------
-- Table structure for t_role_to_user
-- ----------------------------
DROP TABLE IF EXISTS `t_role_to_user`;
CREATE TABLE `t_role_to_user`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL,
  `role_id` int(4) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `create_user` int(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 148 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_to_user
-- ----------------------------
INSERT INTO `t_role_to_user` VALUES (3, 42, 2, 0, NULL, NULL, '平台管理员');
INSERT INTO `t_role_to_user` VALUES (5, 45, 19, 0, NULL, NULL, '审核管理员');
INSERT INTO `t_role_to_user` VALUES (62, 44, 4, 0, NULL, NULL, '学员');
INSERT INTO `t_role_to_user` VALUES (65, 58, 3, 0, NULL, NULL, '资源管理员');
INSERT INTO `t_role_to_user` VALUES (89, 43, 1, 0, NULL, NULL, '教员');
INSERT INTO `t_role_to_user` VALUES (130, 193, 4, 0, NULL, NULL, '学员');
INSERT INTO `t_role_to_user` VALUES (131, 194, 4, 0, NULL, NULL, '学员');
INSERT INTO `t_role_to_user` VALUES (132, 195, 4, 0, NULL, NULL, '学员');
INSERT INTO `t_role_to_user` VALUES (133, 196, 4, 0, NULL, NULL, '学员');
INSERT INTO `t_role_to_user` VALUES (134, 197, 4, 0, NULL, NULL, '学员');
INSERT INTO `t_role_to_user` VALUES (137, 199, 4, 0, NULL, NULL, '学员');
INSERT INTO `t_role_to_user` VALUES (138, 208, 4, 0, NULL, NULL, '学员');
INSERT INTO `t_role_to_user` VALUES (139, 209, 4, 0, NULL, NULL, '学员');
INSERT INTO `t_role_to_user` VALUES (140, 210, 4, 0, NULL, NULL, '学员');
INSERT INTO `t_role_to_user` VALUES (141, 211, 4, 0, NULL, NULL, '学员');
INSERT INTO `t_role_to_user` VALUES (142, 212, 4, 0, NULL, NULL, '学员');
INSERT INTO `t_role_to_user` VALUES (143, 213, 4, 0, NULL, NULL, '学员');
INSERT INTO `t_role_to_user` VALUES (144, 214, 2, 0, NULL, NULL, '平台管理员');
INSERT INTO `t_role_to_user` VALUES (145, 198, 1, 0, NULL, NULL, '教员');
INSERT INTO `t_role_to_user` VALUES (146, 215, 1, 0, NULL, NULL, '教员');
INSERT INTO `t_role_to_user` VALUES (147, 216, 1, 0, NULL, NULL, '教员');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int(4) NULL DEFAULT NULL,
  `create_user` int(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `deleted` tinyint(1) NULL DEFAULT NULL,
  `organization_id` int(4) NULL DEFAULT NULL,
  `degree_id` int(4) NULL DEFAULT NULL,
  `parent_id` int(4) NULL DEFAULT NULL,
  `level` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tag
-- ----------------------------

-- ----------------------------
-- Table structure for t_task_exam
-- ----------------------------
DROP TABLE IF EXISTS `t_task_exam`;
CREATE TABLE `t_task_exam`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `task_frame_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` int(4) NULL DEFAULT NULL,
  `create_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `deleted` tinyint(1) NULL DEFAULT NULL,
  `organization_id` int(4) NULL DEFAULT NULL,
  `status` int(4) NULL DEFAULT NULL,
  `publish_time` timestamp(6) NULL DEFAULT NULL,
  `degree_id` int(4) NULL DEFAULT NULL,
  `start_time` timestamp(6) NULL DEFAULT NULL,
  `end_time` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_task_exam
-- ----------------------------
INSERT INTO `t_task_exam` VALUES (24, '111', 'd1bf92ea-22c0-4b15-8625-5ead783e4904', 42, 'admintest', '0000-00-00 00:00:00.000000', 0, 1, 2, '0000-00-00 00:00:00.000000', NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');
INSERT INTO `t_task_exam` VALUES (25, '任务1', 'b259a342-7fca-4c5d-93cc-144c6f4ed6d6', 42, 'admintest', '0000-00-00 00:00:00.000000', 0, 1, 3, '0000-00-00 00:00:00.000000', NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');
INSERT INTO `t_task_exam` VALUES (26, '任务2', '3e112fbd-f134-4cf1-b83d-43caf04fb6bc', 42, 'admintest', '0000-00-00 00:00:00.000000', 0, 1, 2, '0000-00-00 00:00:00.000000', NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');
INSERT INTO `t_task_exam` VALUES (27, '123', '40f3c507-c7d4-411e-8473-ccf06f4813c8', 42, 'admintest', '0000-00-00 00:00:00.000000', 0, 1, 2, '0000-00-00 00:00:00.000000', NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');

-- ----------------------------
-- Table structure for t_task_exam_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_task_exam_answer`;
CREATE TABLE `t_task_exam_answer`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `task_exam_id` int(4) NULL DEFAULT NULL,
  `task_answer_frame_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` int(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `organization_id` int(4) NULL DEFAULT NULL,
  `status` int(4) NULL DEFAULT NULL,
  `degree_id` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_task_exam_answer
-- ----------------------------
INSERT INTO `t_task_exam_answer` VALUES (78, 25, 'ddd21207-4f5c-418f-9ada-64afe2724c73', 44, '0000-00-00 00:00:00.000000', 1, NULL, NULL);
INSERT INTO `t_task_exam_answer` VALUES (79, 26, '6f9dbae3-1cec-49df-877a-1ce69ac0ffdf', 44, '0000-00-00 00:00:00.000000', 1, NULL, NULL);
INSERT INTO `t_task_exam_answer` VALUES (80, 26, '4aba1790-8013-4b37-a538-08c7b68591cf', 199, '0000-00-00 00:00:00.000000', NULL, NULL, NULL);
INSERT INTO `t_task_exam_answer` VALUES (81, 27, '076d5f68-9360-4063-a9dc-bd5843a1f645', 199, '0000-00-00 00:00:00.000000', NULL, NULL, NULL);
INSERT INTO `t_task_exam_answer` VALUES (82, 27, '697e6ba0-561c-411e-b306-70c16f1fa91c', 44, '0000-00-00 00:00:00.000000', 1, NULL, NULL);

-- ----------------------------
-- Table structure for t_task_exam_answer_json
-- ----------------------------
DROP TABLE IF EXISTS `t_task_exam_answer_json`;
CREATE TABLE `t_task_exam_answer_json`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_task_exam_answer_json
-- ----------------------------
INSERT INTO `t_task_exam_answer_json` VALUES ('076d5f68-9360-4063-a9dc-bd5843a1f645', '{\"id\":\"076d5f68-9360-4063-a9dc-bd5843a1f645\",\"title\":\"123\",\"taskId\":27,\"taskItemFrameList\":[{\"id\":230,\"name\":\"任务试卷2\",\"categoryId\":36,\"categoryStr\":\"专业3\",\"score\":\"8\",\"questionCount\":2,\"suggestTime\":80,\"answerId\":null,\"status\":null}]}');
INSERT INTO `t_task_exam_answer_json` VALUES ('4aba1790-8013-4b37-a538-08c7b68591cf', '{\"id\":\"4aba1790-8013-4b37-a538-08c7b68591cf\",\"title\":\"任务2\",\"taskId\":26,\"taskItemFrameList\":[{\"id\":229,\"name\":\"任务试卷2\",\"categoryId\":36,\"categoryStr\":\"专业3\",\"score\":\"8\",\"questionCount\":2,\"suggestTime\":80,\"answerId\":null,\"status\":null}]}');
INSERT INTO `t_task_exam_answer_json` VALUES ('697e6ba0-561c-411e-b306-70c16f1fa91c', '{\"id\":\"697e6ba0-561c-411e-b306-70c16f1fa91c\",\"title\":\"123\",\"taskId\":27,\"taskItemFrameList\":[{\"id\":230,\"name\":\"任务试卷2\",\"categoryId\":36,\"categoryStr\":\"专业3\",\"score\":\"8\",\"questionCount\":2,\"suggestTime\":80,\"answerId\":null,\"status\":null}]}');
INSERT INTO `t_task_exam_answer_json` VALUES ('6f9dbae3-1cec-49df-877a-1ce69ac0ffdf', '{\"id\":\"6f9dbae3-1cec-49df-877a-1ce69ac0ffdf\",\"title\":\"任务2\",\"taskId\":26,\"taskItemFrameList\":[{\"id\":229,\"name\":\"任务试卷2\",\"categoryId\":36,\"categoryStr\":\"专业3\",\"score\":\"8\",\"questionCount\":2,\"suggestTime\":80,\"answerId\":null,\"status\":null}]}');
INSERT INTO `t_task_exam_answer_json` VALUES ('ddd21207-4f5c-418f-9ada-64afe2724c73', '{\"id\":\"ddd21207-4f5c-418f-9ada-64afe2724c73\",\"title\":\"任务1\",\"taskId\":25,\"taskItemFrameList\":[{\"id\":228,\"name\":\"任务试卷1\",\"categoryId\":36,\"categoryStr\":\"专业3\",\"score\":\"8\",\"questionCount\":2,\"suggestTime\":80,\"answerId\":null,\"status\":null}]}');

-- ----------------------------
-- Table structure for t_task_exam_json
-- ----------------------------
DROP TABLE IF EXISTS `t_task_exam_json`;
CREATE TABLE `t_task_exam_json`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_task_exam_json
-- ----------------------------
INSERT INTO `t_task_exam_json` VALUES ('3e112fbd-f134-4cf1-b83d-43caf04fb6bc', '{\"id\":\"3e112fbd-f134-4cf1-b83d-43caf04fb6bc\",\"title\":\"任务2\",\"taskId\":26,\"taskItemFrameList\":[{\"id\":229,\"name\":\"任务试卷2\",\"categoryId\":36,\"score\":\"8\",\"questionCount\":2,\"suggestTime\":80}]}');
INSERT INTO `t_task_exam_json` VALUES ('40f3c507-c7d4-411e-8473-ccf06f4813c8', '{\"id\":\"40f3c507-c7d4-411e-8473-ccf06f4813c8\",\"title\":\"123\",\"taskId\":27,\"taskItemFrameList\":[{\"id\":230,\"name\":\"任务试卷2\",\"categoryId\":36,\"score\":\"8\",\"questionCount\":2,\"suggestTime\":80}]}');
INSERT INTO `t_task_exam_json` VALUES ('b259a342-7fca-4c5d-93cc-144c6f4ed6d6', '{\"id\":\"b259a342-7fca-4c5d-93cc-144c6f4ed6d6\",\"title\":\"任务1\",\"taskId\":25,\"taskItemFrameList\":[{\"id\":228,\"name\":\"任务试卷1\",\"categoryId\":36,\"score\":\"8\",\"questionCount\":2,\"suggestTime\":80}]}');
INSERT INTO `t_task_exam_json` VALUES ('d1bf92ea-22c0-4b15-8625-5ead783e4904', '{\"id\":\"d1bf92ea-22c0-4b15-8625-5ead783e4904\",\"title\":\"111\",\"taskId\":24,\"taskItemFrameList\":[{\"id\":222,\"name\":\"1111\",\"categoryId\":36,\"score\":\"8\",\"questionCount\":3,\"suggestTime\":5}]}');

-- ----------------------------
-- Table structure for t_team
-- ----------------------------
DROP TABLE IF EXISTS `t_team`;
CREATE TABLE `t_team`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` int(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `create_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `team_number` int(4) NULL DEFAULT NULL,
  `team_uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `organization_id` int(4) NULL DEFAULT NULL,
  `degree_id` int(4) NULL DEFAULT NULL,
  `category_id` int(4) NULL DEFAULT NULL,
  `plan_count` int(4) NULL DEFAULT NULL,
  `educational_system` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `open_time` timestamp(6) NULL DEFAULT NULL,
  `end_time` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_team
-- ----------------------------
INSERT INTO `t_team` VALUES (19, '班级1', 58, '0000-00-00 00:00:00.000000', 0, 'ziyuantest', 14, '45ba7aa0-f860-40f8-955b-bf4a964505d8', 1, NULL, 34, 1, '3', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');
INSERT INTO `t_team` VALUES (20, '计算机A班', 43, '0000-00-00 00:00:00.000000', 1, 'jiaoyuantest', 5, '68d8c454-5df9-4cec-8587-da27a9a20d1c', 1, NULL, 34, 5, '3', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');
INSERT INTO `t_team` VALUES (21, '2222', 42, '0000-00-00 00:00:00.000000', 1, 'admintest', 0, 'ef8fa1da-93f0-4c91-b2d3-04d9fc1579ce', 1, NULL, 34, 212, '122222', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');
INSERT INTO `t_team` VALUES (22, '1', 42, '0000-00-00 00:00:00.000000', 1, 'admintest', 0, '5f59df7d-26ce-45ab-8b72-eddd51769de3', 1, NULL, 36, 1, '1', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');
INSERT INTO `t_team` VALUES (23, '班级1', 42, '0000-00-00 00:00:00.000000', 1, 'admintest', 0, '8ceb2f2b-843e-4405-89a9-944af2d22797', 1, NULL, 36, 3, '4', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');

-- ----------------------------
-- Table structure for t_team_task
-- ----------------------------
DROP TABLE IF EXISTS `t_team_task`;
CREATE TABLE `t_team_task`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `team_id` int(4) NULL DEFAULT NULL,
  `task_id` int(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `team_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_team_task
-- ----------------------------
INSERT INTO `t_team_task` VALUES (14, 19, 24, '0000-00-00 00:00:00.000000', 0, '班级1');
INSERT INTO `t_team_task` VALUES (15, 19, 25, '0000-00-00 00:00:00.000000', 0, '班级1');
INSERT INTO `t_team_task` VALUES (16, 19, 26, '0000-00-00 00:00:00.000000', 0, '班级1');
INSERT INTO `t_team_task` VALUES (17, 19, 27, '0000-00-00 00:00:00.000000', 0, '班级1');

-- ----------------------------
-- Table structure for t_team_user
-- ----------------------------
DROP TABLE IF EXISTS `t_team_user`;
CREATE TABLE `t_team_user`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `team_id` int(4) NULL DEFAULT NULL,
  `user_id` int(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `team_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `organization_id` int(4) NULL DEFAULT NULL,
  `degree_id` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_team_user
-- ----------------------------
INSERT INTO `t_team_user` VALUES (88, 19, 195, '0000-00-00 00:00:00.000000', 0, '班级1', NULL, NULL);
INSERT INTO `t_team_user` VALUES (89, 19, 196, '0000-00-00 00:00:00.000000', 0, '班级1', NULL, NULL);
INSERT INTO `t_team_user` VALUES (90, 19, 197, '0000-00-00 00:00:00.000000', 0, '班级1', NULL, NULL);
INSERT INTO `t_team_user` VALUES (91, 19, 199, '0000-00-00 00:00:00.000000', 0, '班级1', NULL, NULL);
INSERT INTO `t_team_user` VALUES (92, 19, 44, '0000-00-00 00:00:00.000000', 0, '班级1', NULL, NULL);
INSERT INTO `t_team_user` VALUES (93, 20, 44, '0000-00-00 00:00:00.000000', 1, '计算机A班', NULL, NULL);
INSERT INTO `t_team_user` VALUES (94, 20, 197, '0000-00-00 00:00:00.000000', 1, '计算机A班', NULL, NULL);
INSERT INTO `t_team_user` VALUES (95, 20, 199, '0000-00-00 00:00:00.000000', 1, '计算机A班', NULL, NULL);
INSERT INTO `t_team_user` VALUES (96, 20, 44, '0000-00-00 00:00:00.000000', 1, '计算机A班', NULL, NULL);
INSERT INTO `t_team_user` VALUES (97, 20, 199, '0000-00-00 00:00:00.000000', 0, '计算机A班', NULL, NULL);
INSERT INTO `t_team_user` VALUES (98, 19, 208, '0000-00-00 00:00:00.000000', 0, '班级1', NULL, NULL);
INSERT INTO `t_team_user` VALUES (99, 19, 209, '0000-00-00 00:00:00.000000', 0, '班级1', NULL, NULL);
INSERT INTO `t_team_user` VALUES (100, 19, 210, '0000-00-00 00:00:00.000000', 0, '班级1', NULL, NULL);
INSERT INTO `t_team_user` VALUES (101, 19, 211, '0000-00-00 00:00:00.000000', 0, '班级1', NULL, NULL);
INSERT INTO `t_team_user` VALUES (102, 19, 212, '0000-00-00 00:00:00.000000', 0, '班级1', NULL, NULL);
INSERT INTO `t_team_user` VALUES (103, 19, 213, '0000-00-00 00:00:00.000000', 1, '班级1', NULL, NULL);
INSERT INTO `t_team_user` VALUES (104, 19, 213, '0000-00-00 00:00:00.000000', 1, '班级1', NULL, NULL);
INSERT INTO `t_team_user` VALUES (105, 19, 213, '0000-00-00 00:00:00.000000', 1, '班级1', NULL, NULL);
INSERT INTO `t_team_user` VALUES (106, 19, 213, '0000-00-00 00:00:00.000000', 0, '班级1', NULL, NULL);

-- ----------------------------
-- Table structure for t_theme
-- ----------------------------
DROP TABLE IF EXISTS `t_theme`;
CREATE TABLE `t_theme`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `update_time` timestamp(6) NULL DEFAULT NULL,
  `course_id` int(4) NULL DEFAULT NULL,
  `res_type_id` int(4) NULL DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ord` int(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_theme
-- ----------------------------
INSERT INTO `t_theme` VALUES (50, '课程1', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 71, 67, '该主题是与课程1相关的.', 6);
INSERT INTO `t_theme` VALUES (51, '课程2', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 72, 67, '该主题是与课程2相关的', 5);
INSERT INTO `t_theme` VALUES (54, '课程3', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 73, 68, '该主题是与课程3相关的.', 4);
INSERT INTO `t_theme` VALUES (55, '课程44', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 74, 68, '该主题是与课程44相关的.', 3);
INSERT INTO `t_theme` VALUES (56, '七万五千', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 75, 67, '该主题是与七万五千相关的.', 1);
INSERT INTO `t_theme` VALUES (58, '11111', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 77, 67, '该主题是与11111相关的.', 8);
INSERT INTO `t_theme` VALUES (59, '222', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 78, 67, '该主题是与222相关的.', 7);
INSERT INTO `t_theme` VALUES (60, '666', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 79, 67, '该主题是与666相关的.', 2);
INSERT INTO `t_theme` VALUES (61, '32323', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 80, 67, '该主题是与32323相关的.', 9);
INSERT INTO `t_theme` VALUES (62, '岗位能力3.1', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', NULL, 90, '该主题是与岗位能力3相关的.', 0);
INSERT INTO `t_theme` VALUES (63, '1313', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 81, 67, '该主题是与1313相关的.', 0);
INSERT INTO `t_theme` VALUES (65, '测试课程1', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 82, 67, '该主题是与测试课程1相关的.', 0);
INSERT INTO `t_theme` VALUES (66, '测试课程1', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 84, 68, '该主题是与测试课程1相关的.', 0);
INSERT INTO `t_theme` VALUES (69, '测试课程5', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 93, 67, '该主题是与测试课程5相关的.', 0);
INSERT INTO `t_theme` VALUES (70, '测试课程6', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 94, 67, '该主题是与测试课程6相关的..', 0);
INSERT INTO `t_theme` VALUES (76, '测试课程8', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', NULL, 90, '该主题是与测试课程8相关的.', 0);
INSERT INTO `t_theme` VALUES (82, '1', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', NULL, 68, '111', 2);
INSERT INTO `t_theme` VALUES (87, '测试课程2', '0000-00-00 00:00:00.000000', '2023-06-19 16:01:58.532000', 112, 68, '该主题是与测试课程2相关的.', 0);
INSERT INTO `t_theme` VALUES (89, '朱方方测试课程3', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 116, 67, '该主题是与朱方方测试课程3相关的.', 0);
INSERT INTO `t_theme` VALUES (93, '测试上传视频', '2023-06-19 16:12:06.021000', '2023-06-19 16:12:06.021000', 119, 68, '该主题是与测试上传视频相关的.', 0);

-- ----------------------------
-- Table structure for t_tpl
-- ----------------------------
DROP TABLE IF EXISTS `t_tpl`;
CREATE TABLE `t_tpl`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ord` int(4) NULL DEFAULT 0,
  `type` int(4) NULL DEFAULT 0,
  `ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flow_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `did` int(4) NULL DEFAULT 0,
  `is_delete` int(4) NULL DEFAULT 0,
  `open_type` int(4) NULL DEFAULT 0,
  `content_config` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `system_id` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tpl
-- ----------------------------
INSERT INTO `t_tpl` VALUES (109, '网易云音乐', '网易云音乐', '网易云音乐', NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (110, 's', 'z', 'z', NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (111, 'a', 'a', 'a', NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (112, 'a', 'a', 'a', NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (113, 'a', 'a', 'a', NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (114, '33', '33', '33', NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (115, '热点', '热点', NULL, NULL, 0, NULL, NULL, NULL, 0, 0, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (116, '123', '123', '1233', NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (117, '1', '1', '1', NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (118, 's', 's', 's', NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (119, '33', '33', NULL, NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (120, '55', '55', NULL, NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (121, 's', 's', 's', NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (122, 's', 's', NULL, NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (123, '标签测试', '标签测试', '标签测试', NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (124, '11', '11', '11', NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (125, '22', '22', '22', NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (126, '44', '44', '44', NULL, 0, NULL, NULL, NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (127, 'x', 'x', 'x', 1, 0, NULL, NULL, NULL, 0, 0, 1, NULL, NULL);
INSERT INTO `t_tpl` VALUES (128, 's', 's', 's', NULL, 0, NULL, NULL, NULL, 0, 0, 1, NULL, NULL);
INSERT INTO `t_tpl` VALUES (129, 'x', 'x', 'x', NULL, 0, NULL, NULL, NULL, 0, 0, 1, NULL, NULL);
INSERT INTO `t_tpl` VALUES (130, 'd', 'd', 'd', NULL, 0, NULL, NULL, NULL, 0, 0, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (131, '11111', '1111', '1111', 0, 0, NULL, NULL, NULL, 0, 0, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (132, 'sad', 'dsds', 's', 2, 0, NULL, NULL, NULL, 0, 0, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (133, '1111111', '1', '1', 1, 0, NULL, NULL, NULL, 0, 0, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (134, '1', '1', '1', 1, 0, NULL, NULL, NULL, 0, 0, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (135, '1121', '2121', '122', NULL, 0, NULL, '', NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (136, '12', '12', '12', 1, 0, NULL, '', NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (137, '12', '12', '12', 5, 0, NULL, '', NULL, 0, 1, 1, NULL, 18);
INSERT INTO `t_tpl` VALUES (138, '12', '12', '12', NULL, 0, NULL, '', NULL, 0, 0, 1, NULL, 18);

-- ----------------------------
-- Table structure for t_tpl_dir
-- ----------------------------
DROP TABLE IF EXISTS `t_tpl_dir`;
CREATE TABLE `t_tpl_dir`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ord` int(4) NULL DEFAULT 0,
  `parent_id` int(4) NULL DEFAULT 0,
  `type` int(4) NULL DEFAULT 0,
  `is_delete` int(4) NULL DEFAULT 0,
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tpl_dir
-- ----------------------------

-- ----------------------------
-- Table structure for t_tpl_domain_config
-- ----------------------------
DROP TABLE IF EXISTS `t_tpl_domain_config`;
CREATE TABLE `t_tpl_domain_config`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `config_str` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tpl_domain_config
-- ----------------------------
INSERT INTO `t_tpl_domain_config` VALUES (11, 'gitlab', '{\"src_host\":\"http://139.196.27.90:8081\",\"index_uri\":\"\",\"dynamic_ext\":[\"html\"],\"replace_str\":{\"易软天创\":\"替换测试\",\"window.top.location.href\":\"window.location.href1\"},\"random_field\":[],\"edit_key\":\"\"}');
INSERT INTO `t_tpl_domain_config` VALUES (12, 'adminlwuchang', '{\"src_host\":\"http://admin.lwuchang.com\",\"index_uri\":\"\",\"dynamic_ext\":[\"html\"],\"replace_str\":{},\"random_field\":[],\"edit_key\":\"\"}');
INSERT INTO `t_tpl_domain_config` VALUES (14, '禅道', '{\"src_host\":\"http://zendao.lwuchang.com\",\"index_uri\":\"\",\"dynamic_ext\":[\"html\"],\"replace_str\":{\"易软天创\":\"替换测试\",\"window.top.location.href\":\"window.location.href1\",\"parent.location\":\"location\"},\"random_field\":[\"verifyRand\"],\"edit_key\":\"\"}');
INSERT INTO `t_tpl_domain_config` VALUES (15, '网易云音乐', '{\"src_host\":\"https://music.163.com\",\"index_uri\":\"\",\"dynamic_ext\":[\"html\"],\"replace_str\":{\"易软天创\":\"替换测试\",\"window.top.location.href\":\"window.location.href1\",\"parent.location\":\"location\"},\"random_field\":[\"verifyRand\"],\"edit_key\":\"\"}');
INSERT INTO `t_tpl_domain_config` VALUES (16, '33', '{\"src_host\":\"http://zendao.lwuchang.com\",\"index_uri\":\"\",\"dynamic_ext\":[\"html\"],\"replace_str\":{\"易软天创\":\"替换测试\",\"window.top.location.href\":\"window.location.href1\",\"parent.location\":\"location\"},\"random_field\":[\"verifyRand\"],\"edit_key\":\"\"}');
INSERT INTO `t_tpl_domain_config` VALUES (17, '123', '{\"src_host\":\"http://zendao.lwuchang.com\",\"index_uri\":\"\",\"dynamic_ext\":[\"html\"],\"replace_str\":{\"易软天创\":\"替换测试\",\"window.top.location.href\":\"window.location.href1\",\"parent.location\":\"location\"},\"random_field\":[\"verifyRand\"],\"edit_key\":\"\"}');
INSERT INTO `t_tpl_domain_config` VALUES (18, '123', '{\"src_host\":\"http://zendao.lwuchang.com\",\"index_uri\":\"\",\"dynamic_ext\":[\"html\"],\"replace_str\":{\"易软天创\":\"替换测试\",\"window.top.location.href\":\"window.location.href1\",\"parent.location\":\"location\"},\"random_field\":[\"verifyRand\"],\"edit_key\":\"\"}');
INSERT INTO `t_tpl_domain_config` VALUES (19, '2', '{\"src_host\":\"http://zendao.lwuchang.com\",\"index_uri\":\"\",\"dynamic_ext\":[\"html\"],\"replace_str\":{\"易软天创\":\"替换测试\",\"window.top.location.href\":\"window.location.href1\",\"parent.location\":\"location\"},\"random_field\":[\"verifyRand\"],\"edit_key\":\"\"}');
INSERT INTO `t_tpl_domain_config` VALUES (20, '2', '{\"src_host\":\"https://music.163.com\",\"index_uri\":\"\",\"dynamic_ext\":[\"html\"],\"replace_str\":{\"易软天创\":\"替换测试\",\"window.top.location.href\":\"window.location.href1\",\"parent.location\":\"location\"},\"random_field\":[\"verifyRand\"],\"edit_key\":\"\"}');

-- ----------------------------
-- Table structure for t_tpl_subject
-- ----------------------------
DROP TABLE IF EXISTS `t_tpl_subject`;
CREATE TABLE `t_tpl_subject`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `memo` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ord` int(4) NULL DEFAULT 0,
  `tpl_id` int(4) NULL DEFAULT NULL,
  `answer` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `explain` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `video` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_public` int(4) NULL DEFAULT 0,
  `did` int(4) NULL DEFAULT 0,
  `is_delete` int(4) NULL DEFAULT 0,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `system_id` int(4) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `duration` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tpl_subject
-- ----------------------------
INSERT INTO `t_tpl_subject` VALUES (87, '训练题1', '完成', 3, 109, '[[]]', NULL, 'http://file.lwuchang.com/record/87.txt', 1, 0, 0, 'http://file.lwuchang.com/capture/1862d979-99af-4ebc-9585-557b53ef2cc5/87.png', 18, '训练题1描述', 4);
INSERT INTO `t_tpl_subject` VALUES (88, '3333333', NULL, 2, 113, NULL, NULL, NULL, 1, 0, 0, NULL, 18, NULL, NULL);
INSERT INTO `t_tpl_subject` VALUES (89, '热点', NULL, 4, 109, NULL, NULL, NULL, 1, 0, 0, NULL, 18, NULL, NULL);
INSERT INTO `t_tpl_subject` VALUES (90, '热点', NULL, 1, 115, '[[{\"id\":\"b614b501-1ec0-4b80-a584-68cad43a277e\",\"type\":1,\"children\":[]},{\"id\":\"a945ef98-e037-4793-9c3c-330539c040fd\",\"type\":1,\"children\":[]},{\"id\":\"75a00a2f-97fc-4944-a410-48f7243117ba\",\"type\":1,\"children\":[]},{\"id\":\"ed333f61-a219-4c9d-86c5-d0a772c3650b\",\"type\":1,\"children\":[]},{\"id\":\"b695173a-2c95-4708-a966-4f9981fe5623\",\"type\":1,\"children\":[]},{\"id\":\"3863e980-1276-4059-ac8d-54fef5701d8d\",\"type\":1,\"children\":[]}]]', NULL, 'http://file.lwuchang.com/record/90.txt', 1, 0, 0, NULL, 18, NULL, NULL);
INSERT INTO `t_tpl_subject` VALUES (91, '热点', NULL, 1, 111, NULL, NULL, NULL, 1, 0, 1, NULL, 18, NULL, 4);
INSERT INTO `t_tpl_subject` VALUES (92, '热点', NULL, 2, 109, NULL, NULL, NULL, 0, 0, 1, NULL, 18, NULL, NULL);
INSERT INTO `t_tpl_subject` VALUES (93, '88888', '888', 0, 115, NULL, NULL, NULL, 1, 0, 1, NULL, 18, '8888', 88);
INSERT INTO `t_tpl_subject` VALUES (94, '11', NULL, 1, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 18, NULL, NULL);
INSERT INTO `t_tpl_subject` VALUES (95, '12345678900', '5', 0, 120, NULL, NULL, NULL, 1, 0, 0, NULL, 18, '5', 5);
INSERT INTO `t_tpl_subject` VALUES (96, '11111', '111111', 1, 130, NULL, NULL, NULL, 1, 0, 1, NULL, 18, '1111', 12);
INSERT INTO `t_tpl_subject` VALUES (97, '测试训练题1', '1213', 1, 131, NULL, NULL, NULL, 1, 0, 1, NULL, 18, '2', 2);
INSERT INTO `t_tpl_subject` VALUES (98, '1234', '1234', 1, 131, NULL, NULL, NULL, 1, 0, 1, NULL, 18, '12', 12);
INSERT INTO `t_tpl_subject` VALUES (99, '1234', '1234', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, 18, '1234', 1234);

-- ----------------------------
-- Table structure for t_tpl_subject_course
-- ----------------------------
DROP TABLE IF EXISTS `t_tpl_subject_course`;
CREATE TABLE `t_tpl_subject_course`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `course_id` int(4) NULL DEFAULT NULL,
  `subject_id` int(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `organization_id` int(4) NULL DEFAULT NULL,
  `degree_id` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tpl_subject_course
-- ----------------------------
INSERT INTO `t_tpl_subject_course` VALUES (42, 72, 87, '0000-00-00 00:00:00.000000', 0, '课程2', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (43, 73, 88, '0000-00-00 00:00:00.000000', 0, '课程3', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (44, 71, 89, '0000-00-00 00:00:00.000000', 0, '课程1', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (45, 71, 90, '0000-00-00 00:00:00.000000', 0, '课程1', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (46, 72, 91, '0000-00-00 00:00:00.000000', 0, '课程2', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (47, 72, 92, '0000-00-00 00:00:00.000000', 0, '课程2', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (48, 72, 93, '0000-00-00 00:00:00.000000', 0, '课程2', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (49, 82, 94, '0000-00-00 00:00:00.000000', 0, '测试课程1', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (50, 84, 95, '0000-00-00 00:00:00.000000', 0, '测试课程1', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (51, 73, 95, '0000-00-00 00:00:00.000000', 0, '课程3', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (52, 72, 95, '0000-00-00 00:00:00.000000', 1, '课程2', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (53, 84, 96, '0000-00-00 00:00:00.000000', 0, '测试课程1', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (54, 71, 88, '0000-00-00 00:00:00.000000', 0, '课程1', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (55, 71, 87, '0000-00-00 00:00:00.000000', 0, '课程1', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (56, 71, 95, '0000-00-00 00:00:00.000000', 0, '课程1', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (57, 71, 97, '2023-06-19 10:53:23.041000', 0, 'name', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (58, 71, 98, '2023-06-19 10:54:20.443000', 0, 'name', NULL, NULL);
INSERT INTO `t_tpl_subject_course` VALUES (59, 71, 99, '2023-06-19 10:54:58.206000', 0, 'name', NULL, NULL);

-- ----------------------------
-- Table structure for t_type_enum
-- ----------------------------
DROP TABLE IF EXISTS `t_type_enum`;
CREATE TABLE `t_type_enum`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `category_id` int(4) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `system_type_enum` int(4) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `organization_id` int(4) NULL DEFAULT NULL,
  `create_user` int(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `item_order` int(4) NULL DEFAULT NULL,
  `degree_id` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_type_enum
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user_uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(4) NULL DEFAULT NULL,
  `sex` int(4) NULL DEFAULT NULL,
  `birth_day` timestamp(6) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` int(4) NULL DEFAULT NULL,
  `status` int(4) NULL DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `modify_time` timestamp(6) NULL DEFAULT NULL,
  `last_active_time` timestamp(6) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `organization_id` int(4) NULL DEFAULT NULL,
  `role_id` int(4) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree_id` int(4) NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `post` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identity_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `military_rank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `standard_of_culture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enlistment_time` timestamp(6) NULL DEFAULT NULL,
  `politics_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `native_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 217 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (42, 'b9133c56-4e40-4784-b5e7-b781cf803452', 'admintest', 'TXG5qmqua15WmneQh4+JwbbZGcUxkpwUYQhIHDyksQzvhJIuNi9OVUd36vemHQihx7E+8fiWYZW4oe4KRjVQXwzvh94SlgaThv2/geTSwhOZactflLSmcOeYOKr4FPe0A/34qUmg2vEwEqD4uQVAafBobn6Y0kknZamn8RJ/BoQ=', '平台管理员', 20, 1, NULL, '16958936', 3, 1, 'http://file.lwuchang.com/profile/e0b56c69-8507-47a8-8cb7-26dcd300c2c1/图片3.png', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 1, 2, NULL, NULL, '单位12', '岗位职务2', '一级', '8848', '将军', '高中', '岗位层级2', '0000-00-00 00:00:00.000000', '群众', '贵州六盘水');
INSERT INTO `t_user` VALUES (43, '77b3eb58-6fed-41c3-b1da-2c9911924a6c', 'jiaoyuantest', 'obq3TlFsPFt2tjXrfqKyulxWS4UqK6fxRGnsM5YEUo066VG4zO+O9YsV5ozxTNSRPRL2pp6bIagaxUqNE38xCFKNSQgs0zuuVcajRuou+5dmLlaSdsCnrNHB8MFWeegyoe7euw5bggKlPn84aa9Hyhb4RhFcIXBIsn5JOyXklj0=', '教员', 12, 2, NULL, '12345678900', 2, 1, NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 1, 1, '123@qq.com', NULL, '教育局', '局长', '一级', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (44, '3071314a-7d2a-4248-9426-9e2911e15981', 'xueyuantest', 'j5ylj9cV+wTXLoYJeMMvlAI5thlbW666KN+fEAZma3Xm8guC090Fez7NiELUBkafjM0KhJ5C3bE4/X6YDDNcmVylHkBGCEfDDXmOLNgGD8Pg9J86PQaKylIpiY/5uT59Q3t9qqPEbrcpWLJEp4QITY4ivrB0BxtirqFDuGGxTbs=', '学员', 26, 2, '0000-00-00 00:00:00.000000', '17789637777', 1, 1, 'http://file.lwuchang.com/image/bcd9cc2e-52d5-4cf0-a3fb-c6fd19772e0f/课程封面.png', '0000-00-00 00:00:00.000000', '2023-06-19 17:38:43.055000', '0000-00-00 00:00:00.000000', 0, 1, 4, '12345@qq.com', 5, NULL, '保密1', NULL, '321322199203035511', '保密', '1本', '保密1', '0000-00-00 00:00:00.000000', '保密', '保密');
INSERT INTO `t_user` VALUES (45, 'ae312a06-8056-4475-bbc8-d7e03347a930', 'shenhe', 'Waht71U9SEhLi7guMcYSXEu+0F1rO0UJt+CJeXAexz4zBu8qHq3gsC3OF220eyOzStGhoZw2pPNdoKlxUt/i/FShvJR0QUDGAG/iP1vbnY7R6o+tUmM3Y9qB90UW11rDK62CpkScxmyw8qbXqHkbotmBH36Oof37eWV7wGNbVlk=', '审核管理员', NULL, NULL, NULL, NULL, 4, 1, NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (58, '348efb7a-e9fa-4142-9b5d-a3c95c53a655', 'ziyuantest', 'FtjbMmFsettp5bI6ikDSgFZgvypCl1/I3aA9N1ylkKNdRe5GKkHsz+PofsFTZ8Sfnps6P/YNoJc8Q8HLhfVc99SztntF3pseW7+INlPes3lgknUiVBUyI1Dz/TMALmdNNfj8GfO6F5zYxMiCvYtqvMGvMYVxbQz88ypVhwyeAsw=', '资源管理员', 22, 1, '0000-00-00 00:00:00.000000', NULL, 2, 1, NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 1, 3, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (197, 'b8654e3d-fcc9-4967-95c5-d999f7f482cf', '示例：张三', 'X4o3sTfGr89L7KIxrCJkMoA8wcmNHnSkcyL6jt9OJTnUJ22AZN0Y7cQn6BofweCDIRRXeySby4cZ6V8pKAk55bzS8OOdrdDcOFChg0/wxdgh1wU2eazsD5/noinOZmzByI9N2VMSBgrybPdjiaW0mmf2quxS6FL89odOe6ylF9Q=', '张三', 20, 1, '0000-00-00 00:00:00.000000', '18625949424', 1, 1, NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, NULL, 4, '1254882793@qq.com', NULL, NULL, '保密', NULL, '保密', '保密', '保密', '保密', '0000-00-00 00:00:00.000000', '保密', '保密');
INSERT INTO `t_user` VALUES (198, '85671bf6-084e-4eff-bbe7-2019e7f8e8c7', 'zfftest', 'BRGbAS2eFh5moRQV9dO6DeVUSnSw8nY952L1Yv2XMU6xlCoB13XZjKGQhg0VFqLGmnEe/J0Vj0eIv/KgZH1u6PWVfBzhgKkly/K7WxiyxhD3ZzoIH96oOarRfFLxsmp1H6s5uh7UzBabNXJw3wZ4AMZ2XwXd44To86jcUrrieeI=', '朱方方2', 23, 2, '0000-00-00 00:00:00.000000', '12345612345', 3, 2, NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, NULL, 1, '123@163.com', NULL, '无', '无', '无1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (199, '2403f816-29ac-4a30-b9e8-860dd4bbba32', 'zffxueyuan', 'XiGc9s3mAZnaFu7vkxCBqyywgijGFWM4PBmLxq/+pSJABRCChxP8q5xeSPlRHxR4rCHo/CSPkdDRnIwJYgKisBDDxpePuDV1qae0QeU1jwmULp/ucWlQJxd+VEkwCqITGMB6Mo5IAc+xwZG57fnmJM7PtniV7EvN1EcvbSClza8=', '朱方方1', 24, 1, '0000-00-00 00:00:00.000000', '12345678900', 1, 1, 'http://file.lwuchang.com/image/d7acbc7d-3fe1-4a6e-a2be-ef5fdbbbd14a/Screenshot_2020-06-12-22-06-20-674_com.wedobest.shudu.jpg', '0000-00-00 00:00:00.000000', '2023-06-19 17:21:09.174000', '0000-00-00 00:00:00.000000', 0, NULL, 4, '123456@qq.com', NULL, NULL, '很高的职务1', NULL, '123456789123456789', '无', '无', '无', '0000-00-00 00:00:00.000000', '群众', '无');
INSERT INTO `t_user` VALUES (208, '0f6a33f3-de21-402a-9b59-d6367a733a4a', 'zff123456', 'lcFCW7WfZWsBHWLzjWz0vVo7GNcb2R/YtohV2NSILNI9pmZ10x22dy7XfqcvxKrHOKqZ2IyGiabZB5dfZLxpNwSfAyTASzFaJENC2ffIVkCrfWf+rpHUiouFMK20iIU0HVHsWGkj07QpUxpAdNqXFlwFIFvYuQyVvUV3rFc5uTw=', '张三', 20, 1, '0000-00-00 00:00:00.000000', '18625949424', 1, 1, NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, NULL, 4, '1254882793@qq.com', NULL, NULL, '保密', NULL, '保密', '保密', '保密', '保密', '0000-00-00 00:00:00.000000', '保密', '保密');
INSERT INTO `t_user` VALUES (209, '48084ccf-3215-460e-acb2-ebe26dd4b036', '朱方方123456', 'GThItrRCDtbG3ivR9DEx3inNJAVLSZw0/e4ANNvaLiHN66UWc9bT2W5nO83n9BKK3WE5xjdgxcU4OUPR8vtlEaIxjYQLhV9me5M7OVczYjIOfRcFAAjmnI6vgw5AHKT7c6SkBQRSH2GXQOxo9tQUd++AHC27x4eFBJr/hoTjxKw=', '张三', 20, 1, '0000-00-00 00:00:00.000000', '18625949424', 1, 1, NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, NULL, 4, '1254882793@qq.com', NULL, NULL, '保密', NULL, '保密', '保密', '保密', '保密', '0000-00-00 00:00:00.000000', '保密', '保密');
INSERT INTO `t_user` VALUES (210, 'd1c8eec4-7220-430e-8796-2c2907f904fe', 'zhangsan8888', 'iyArnBuhUnJmft+/WB+KuhblUiE/3OFerNIffgG8QBrzcU0W2LMf27NvcSMcscou7BtystJ1t/JLD3/bq8haVjM6AVW21X88A03HlgWBarULUiBf40x566gZHKdOB6p15yR92w3vA/fdP/sW08DG+nF5XU0sR1b/t1r9QmCEjKs=', '张三', 20, 1, '0000-00-00 00:00:00.000000', '18625949424', 1, 1, NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, NULL, 4, '1254882793@qq.com', NULL, NULL, '保密', NULL, '保密', '保密', '保密', '保密', '0000-00-00 00:00:00.000000', '保密', '保密');
INSERT INTO `t_user` VALUES (211, '79255b3e-4867-49bb-b3ee-1f6b60f65f0e', '朱方方8888', 'iHe+hc5AToLQMLYDxoA9cIlwyIYx/tff5vvGmHInxM+lz9u+hDpqORe6FgT2itsSQ1ppDmLknEhrUCZEbe0hypFxJCuobv4ampIzu6nLRYAujsCeacKvkTcz5UychUxPgjqnCNBayshquW0eT3Js2EjNViI1FmH0OsLinSxC+Rw=', '张三', 20, 1, '0000-00-00 00:00:00.000000', '18625949424', 1, 1, NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, NULL, 4, '1254882793@qq.com', NULL, NULL, '保密', NULL, '保密', '保密', '保密', '保密', '0000-00-00 00:00:00.000000', '保密', '保密');
INSERT INTO `t_user` VALUES (212, '6200a18b-ef85-4800-986c-fc7dea634608', '朱方方', 'WHhssLsej0G6DHRh2Yz5LRqg1Py7/0ZyRbiz72P1UbOZTTMmwd2tAEAoKaiPGIgLZIXxFNy0GwsWaKOsLFWGIyEx0r+OF4pOpYXQxBQkqxal+Awb6Kjojc1AXnXkCpBH8beddYXtBjdQaJ3SejFO/L7PLgEz+yIk3iNMPEAtFGA=', '朱方方1', 20, 1, '0000-00-00 00:00:00.000000', '18625949424', 1, 1, NULL, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, NULL, 4, '1254882793@qq.com', NULL, NULL, '保密', NULL, '保密', '保密', '保密', '保密', '0000-00-00 00:00:00.000000', '保密', '保密');
INSERT INTO `t_user` VALUES (214, '3b6d3eeb-4bc8-4e10-a545-118b77ebae1c', 'admin', 'bAf6Lq9EKQ0pVQZz0wH87anFFwDP9nWuvYXa945/tcYtidZyZZ/QgdsTbF7UZWe11waUpge9hoV5qrqN2zIsEF55F52wHkvdqev6lQjwHMCbCy3AVDUgaCosF29Cg31V5RRoRVMuGKD78f1yyMwQBoxy9AEHDS+m5zvUEDqdfj8=', '超级管理员', 20, 1, '0000-00-00 00:00:00.000000', '保密', 3, 1, NULL, '0000-00-00 00:00:00.000000', NULL, '0000-00-00 00:00:00.000000', 0, NULL, 2, NULL, NULL, '保密', '保密', '保密', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (215, 'a1feaf69-9a07-478d-a4c4-b54476381f29', '1223', 'EBj+SdtS6TjMC6jsqibgI7u2LNajtfoQ7WHtf9ea0nHMmH90fSLZfckwFm/m3Ewt02j1Qm+YfD/lQ8IqYtbJbmVchJgDioIyXrCtmBJh1bggNqXf9hHKYlNyrfb5cA1AXscwXlvvnOVhXFMiWI07l7fU2zMWlJ7sdCTjN5GjMOM=', '123', 12, 1, '0000-00-00 00:00:00.000000', '123', 3, 1, NULL, '0000-00-00 00:00:00.000000', NULL, '0000-00-00 00:00:00.000000', 1, NULL, 1, NULL, NULL, '123', '123', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (216, '3b111251-ad2d-471d-8897-01586c954f94', 'zff2', 'j4/JasHz3+SlwAmNcP+ktm8nYEFa44VHZ/2jBs4CZWktNckbsPuSH7YFk4wSIA6jSUILftCI0dsGaJEBR3Zt3O0ajlT6n5w1nFCMAG1pYFo9B6DhAVdUy8naqIPe9rFuGHtkrGANaL2EAtxGsTffckmutTG1tBHfW8nAE3nzBvg=', '朱方方', 22, 1, '0000-00-00 00:00:00.000000', '学校', 3, 1, NULL, '0000-00-00 00:00:00.000000', NULL, '0000-00-00 00:00:00.000000', 0, NULL, 1, NULL, NULL, '学校', '很高的职务', '很高的层级', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_user_address
-- ----------------------------
DROP TABLE IF EXISTS `t_user_address`;
CREATE TABLE `t_user_address`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NULL DEFAULT NULL,
  `receive_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receive_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receive_address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receive_postcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `organization_id` int(4) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_address
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_credential
-- ----------------------------
DROP TABLE IF EXISTS `t_user_credential`;
CREATE TABLE `t_user_credential`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT,
  `credential_template_id` int(4) NULL DEFAULT NULL,
  `user_id` int(4) NULL DEFAULT NULL,
  `exam_paper_answer_id` bigint(8) NULL DEFAULT NULL,
  `user_real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exam_paper_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT NULL,
  `credential_image_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `credential_build_time` timestamp(6) NULL DEFAULT NULL,
  `exam_paper_id` bigint(8) NULL DEFAULT NULL,
  `exam_paper_build_id` bigint(8) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_credential
-- ----------------------------
INSERT INTO `t_user_credential` VALUES (16, 26, 44, 363, '学员', '33', '0000-00-00 00:00:00.000000', 0, 'http://file.lwuchang.com/credential/027e0d5f-278e-4be1-b7e4-004e8fa28e59/d171f975-f6d0-4542-8893-86a3c73ac3433131440856932081329.png', '0000-00-00 00:00:00.000000', 219, NULL);

-- ----------------------------
-- Table structure for t_user_event_log
-- ----------------------------
DROP TABLE IF EXISTS `t_user_event_log`;
CREATE TABLE `t_user_event_log`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `organization_id` int(4) NULL DEFAULT NULL,
  `degree_id` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5667 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_event_log
-- ----------------------------
INSERT INTO `t_user_event_log` VALUES (4336, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4337, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4338, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4339, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4340, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4341, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4342, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4343, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4344, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4345, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4346, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4347, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4348, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4349, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4350, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4351, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4352, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4353, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4354, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4355, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4356, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4357, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4358, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4359, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4360, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4361, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4362, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4363, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4364, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4365, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4366, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4367, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4368, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4369, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4370, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4371, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4372, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4373, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4374, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4375, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4376, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4377, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4378, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4379, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4380, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4381, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4382, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4383, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4384, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4385, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4386, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4387, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4388, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4389, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4390, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4391, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4392, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4393, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4394, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4395, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4396, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4397, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4398, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4399, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4400, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4401, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4402, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4403, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4404, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4405, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4406, 198, 'zfftest', 'zfftest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4407, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4408, 198, 'zfftest', 'zfftest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4409, 198, 'zfftest', 'zfftest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4410, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4411, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4412, 199, 'zffxueyuan', 'zffxueyuan 提交试卷：试卷1 得分：0 耗时：9秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4413, 199, 'zffxueyuan', 'zffxueyuan 提交试卷：试卷1 得分：3 耗时：2秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4414, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4415, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4416, 199, 'zffxueyuan', 'zffxueyuan 提交试卷：试卷2 得分：3 耗时：7秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4417, 199, 'zffxueyuan', 'zffxueyuan 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4418, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4419, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4420, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4421, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4422, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4423, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4424, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4425, 199, 'zffxueyuan', 'zffxueyuan 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4426, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4427, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4428, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4429, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4430, 199, 'zffxueyuan', 'zffxueyuan 提交试卷：试卷1 得分：3 耗时：4秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4431, 199, 'zffxueyuan', 'zffxueyuan 提交试卷：试卷1 得分：0 耗时：3秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4432, 199, 'zffxueyuan', 'zffxueyuan 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4433, 198, 'zfftest', 'zfftest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4434, 44, 'xueyuantest', 'xueyuantest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4435, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4436, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4437, 199, 'zffxueyuan', 'zffxueyuan 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4438, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4439, 44, 'xueyuantest', 'xueyuantest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4440, 44, 'xueyuantest', 'xueyuantest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4441, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4442, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4443, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4444, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4445, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4446, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4447, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4448, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4449, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4450, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4451, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4452, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4453, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4454, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4455, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4456, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4457, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4458, 199, 'zffxueyuan', 'zffxueyuan 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4459, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4460, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4461, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4462, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4463, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4464, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4465, 45, 'shenhe', 'shenhe 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4466, 198, 'zfftest', 'zfftest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4467, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4468, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4469, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4470, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4471, 198, 'zfftest', 'zfftest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4472, 199, 'zffxueyuan', 'zffxueyuan 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4473, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4474, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4475, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4476, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4477, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4478, 199, 'zffxueyuan', 'zffxueyuan 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4479, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4480, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4481, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4482, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4483, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4484, 199, 'zffxueyuan', 'zffxueyuan 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4485, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4486, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4487, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4488, 199, 'zffxueyuan', 'zffxueyuan 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4489, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4490, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4491, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4492, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4493, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4494, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4495, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4496, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4497, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4498, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4499, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4500, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4501, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4502, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4503, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4504, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4505, 58, 'ziyuantest', 'ziyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4506, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4507, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4508, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4509, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4510, 198, 'zfftest', 'zfftest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4511, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4512, 58, 'ziyuantest', 'ziyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4513, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4514, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4515, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4516, 44, 'xueyuantest', 'xueyuantest 提交试卷：试卷1 得分：0 耗时：2秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4517, 58, 'ziyuantest', 'ziyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4518, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4519, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4520, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4521, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4522, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4523, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4524, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4525, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4526, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4527, 58, 'ziyuantest', 'ziyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4528, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4529, 45, 'shenhe', 'shenhe 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4530, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4531, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4532, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4533, 58, 'ziyuantest', 'ziyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4534, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4535, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4536, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4537, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4538, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4539, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4540, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4541, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4542, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4543, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4544, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4545, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4546, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4547, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4548, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4549, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4550, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4551, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4552, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4553, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4554, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4555, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4556, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4557, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4558, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4559, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4560, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4561, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4562, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4563, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4564, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4565, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4566, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4567, 44, 'xueyuantest', 'xueyuantest 提交试卷：试卷1 得分：0 耗时：4秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4568, 198, 'zfftest', 'zfftest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4569, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4570, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4571, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4572, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4573, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4574, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4575, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4576, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4577, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4578, 44, 'xueyuantest', 'xueyuantest 提交试卷：33 得分：3 耗时：2秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4579, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4580, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4581, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4582, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4583, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4584, 45, 'shenhe', 'shenhe 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4585, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4586, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4587, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4588, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4589, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4590, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4591, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4592, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4593, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4594, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4595, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4596, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4597, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4598, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4599, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4600, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4601, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4602, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4603, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4604, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4605, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4606, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4607, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4608, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4609, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4610, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4611, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4612, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4613, 198, 'zfftest', 'zfftest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4614, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4615, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4616, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4617, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4618, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4619, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4620, 44, 'xueyuantest', 'xueyuantest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4621, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4622, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4623, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4624, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4625, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4626, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4627, 44, 'xueyuantest', 'xueyuantest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4628, 44, 'xueyuantest', 'xueyuantest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4629, 44, 'xueyuantest', 'xueyuantest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4630, 44, 'xueyuantest', 'xueyuantest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4631, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4632, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4633, 58, 'ziyuantest', 'ziyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4634, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4635, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4636, 44, 'xueyuantest', 'xueyuantest 提交试卷：411 得分：0 耗时：5分0秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4637, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4638, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4639, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4640, 44, 'xueyuantest', 'xueyuantest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4641, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4642, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4643, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4644, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4645, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4646, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4647, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4648, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4649, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4650, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4651, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4652, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4653, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4654, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4655, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4656, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4657, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4658, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4659, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4660, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4661, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4662, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4663, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4664, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4665, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4666, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4667, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4668, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4669, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4670, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4671, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4672, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4673, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4674, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4675, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4676, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4677, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4678, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4679, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4680, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4681, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4682, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4683, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4684, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4685, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4686, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4687, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4688, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4689, 44, 'xueyuantest', 'xueyuantest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4690, 44, 'xueyuantest', 'xueyuantest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4691, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4692, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4693, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4694, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4695, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4696, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4697, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4698, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4699, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4700, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4701, 210, 'zhangsan8888', 'zhangsan8888 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4702, 210, 'zhangsan8888', 'zhangsan8888 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4703, 211, '朱方方8888', '朱方方8888 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4704, 211, '朱方方8888', '朱方方8888 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4705, 211, '朱方方8888', '朱方方8888 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4706, 211, '朱方方8888', '朱方方8888 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4707, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4708, 212, '朱方方', '朱方方 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4709, 212, '朱方方', '朱方方 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4710, 213, '朱方方2', '朱方方2 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4711, 213, '朱方方2', '朱方方2 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4712, 212, '朱方方', '朱方方 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4713, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4714, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4715, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4716, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4717, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4718, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4719, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4720, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4721, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4722, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4723, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4724, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4725, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4726, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4727, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4728, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4729, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4730, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4731, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4732, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4733, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4734, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4735, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4736, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4737, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4738, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4739, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4740, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4741, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4742, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4743, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4744, 58, 'ziyuantest', 'ziyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4745, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4746, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4747, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4748, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4749, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4750, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4751, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4752, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4753, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4754, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4755, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4756, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4757, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4758, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4759, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4760, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4761, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4762, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4763, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4764, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4765, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4766, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4767, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4768, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4769, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4770, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4771, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4772, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4773, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4774, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4775, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4776, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4777, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4778, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4779, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4780, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4781, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4782, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4783, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4784, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4785, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4786, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4787, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4788, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4789, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4790, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4791, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4792, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4793, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4794, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4795, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4796, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4797, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4798, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4799, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4800, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4801, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4802, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4803, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4804, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4805, 45, 'shenhe', 'shenhe 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4806, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4807, 58, 'ziyuantest', 'ziyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4808, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4809, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4810, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4811, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4812, 58, 'ziyuantest', 'ziyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4813, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4814, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4815, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4816, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4817, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4818, 45, 'shenhe', 'shenhe 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4819, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4820, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4821, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4822, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4823, 45, 'shenhe', 'shenhe 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4824, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4825, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4826, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4827, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4828, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4829, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4830, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4831, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4832, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4833, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4834, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4835, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4836, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4837, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4838, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4839, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4840, 45, 'shenhe', 'shenhe 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4841, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4842, 45, 'shenhe', 'shenhe 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4843, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4844, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4845, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4846, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4847, 45, 'shenhe', 'shenhe 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4848, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4849, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4850, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4851, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4852, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4853, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4854, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4855, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4856, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4857, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4858, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4859, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4860, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4861, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4862, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4863, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4864, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4865, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4866, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4867, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4868, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4869, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4870, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4871, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4872, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4873, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4874, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4875, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4876, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4877, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4878, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4879, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4880, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4881, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4882, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4883, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4884, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4885, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4886, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4887, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4888, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4889, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4890, 58, 'ziyuantest', 'ziyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4891, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4892, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4893, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4894, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4895, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4896, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4897, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4898, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4899, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4900, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4901, 45, 'shenhe', 'shenhe 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4902, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4903, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4904, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4905, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4906, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4907, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4908, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4909, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4910, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4911, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4912, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4913, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4914, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4915, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4916, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4917, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4918, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4919, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4920, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4921, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4922, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4923, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4924, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4925, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4926, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4927, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4928, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4929, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4930, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4931, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4932, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4933, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4934, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4935, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4936, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4937, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4938, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4939, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4940, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4941, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4942, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4943, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4944, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4945, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4946, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4947, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4948, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4949, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4950, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4951, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4952, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4953, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4954, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4955, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4956, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4957, 214, 'admin', 'admin 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4958, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4959, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4960, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4961, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4962, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4963, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4964, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4965, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4966, 214, 'admin', 'admin 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4967, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4968, 199, 'zffxueyuan', 'zffxueyuan 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4969, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4970, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4971, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4972, 44, 'xueyuantest', 'xueyuantest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4973, 199, 'zffxueyuan', 'zffxueyuan 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4974, 199, 'zffxueyuan', 'zffxueyuan 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4975, 199, 'zffxueyuan', 'zffxueyuan 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4976, 199, 'zffxueyuan', 'zffxueyuan 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4977, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4978, 199, 'zffxueyuan', 'zffxueyuan 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4979, 44, 'xueyuantest', 'xueyuantest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4980, 43, 'jiaoyuantest', 'jiaoyuantest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4981, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4982, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4983, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4984, 198, 'zfftest', 'zfftest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4985, 198, 'zfftest', 'zfftest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4986, 198, 'zfftest', 'zfftest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4987, 198, 'zfftest', 'zfftest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4988, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4989, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4990, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4991, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4992, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4993, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4994, 198, 'zfftest', 'zfftest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4995, 198, 'zfftest', 'zfftest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4996, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4997, 198, 'zfftest', 'zfftest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4998, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (4999, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5000, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5001, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5002, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5003, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5004, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5005, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5006, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5007, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5008, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5009, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5010, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5011, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5012, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5013, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5014, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5015, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5016, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5017, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5018, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5019, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5020, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5021, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5022, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5023, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5024, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5025, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5026, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5027, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5028, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5029, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5030, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5031, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5032, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5033, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5034, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5035, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5036, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5037, 198, 'zfftest', 'zfftest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5038, 198, 'zfftest', 'zfftest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5039, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5040, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5041, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5042, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5043, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5044, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5045, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5046, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5047, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5048, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5049, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5050, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5051, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5052, 44, 'xueyuantest', 'xueyuantest 提交试卷：411 得分：0 耗时：43秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5053, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5054, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5055, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5056, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5057, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5058, 58, 'ziyuantest', 'ziyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5059, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5060, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5061, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5062, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5063, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5064, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5065, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5066, 199, 'zffxueyuan', 'zffxueyuan 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5067, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5068, 199, 'zffxueyuan', 'zffxueyuan 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5069, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5070, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5071, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5072, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5073, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5074, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5075, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5076, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5077, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5078, 199, 'zffxueyuan', 'zffxueyuan 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5079, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5080, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5081, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5082, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5083, 199, 'zffxueyuan', 'zffxueyuan 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5084, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5085, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5086, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5087, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5088, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5089, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5090, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5091, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5092, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5093, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5094, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5095, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5096, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5097, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5098, 199, 'zffxueyuan', 'zffxueyuan 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5099, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5100, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5101, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5102, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5103, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5104, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5105, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5106, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5107, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5108, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5109, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5110, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5111, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5112, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5113, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5114, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5115, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5116, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5117, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5118, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5119, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5120, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5121, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5122, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5123, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5124, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5125, 199, 'zffxueyuan', 'zffxueyuan 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5126, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5127, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5128, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5129, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5130, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5131, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5132, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5133, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5134, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5135, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5136, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5137, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5138, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5139, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5140, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5141, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5142, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5143, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5144, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5145, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5146, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5147, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5148, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5149, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5150, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5151, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5152, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5153, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5154, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5155, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5156, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5157, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5158, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5159, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5160, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5161, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5162, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5163, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5164, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5165, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5166, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5167, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5168, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5169, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5170, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5171, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5172, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5173, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5174, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5175, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5176, 44, 'xueyuantest', 'xueyuantest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5177, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5178, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5179, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5180, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5181, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5182, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5183, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5184, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5185, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5186, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5187, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5188, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5189, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5190, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5191, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5192, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5193, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5194, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5195, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5196, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5197, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5198, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5199, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5200, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5201, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5202, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5203, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5204, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5205, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5206, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5207, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5208, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5209, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5210, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5211, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5212, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5213, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5214, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5215, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5216, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5217, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5218, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5219, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5220, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5221, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5222, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5223, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5224, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5225, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5226, 42, 'admintest', 'admintest 更新了个人信息', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5227, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5228, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5229, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5230, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5231, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5232, 214, 'admin', 'admin 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5233, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5234, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5235, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5236, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5237, 214, 'admin', 'admin 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5238, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5239, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5240, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5241, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5242, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5243, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5244, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5245, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5246, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5247, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5248, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5249, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5250, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5251, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5252, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5253, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5254, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5255, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5256, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5257, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5258, 45, 'shenhe', 'shenhe 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5259, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5260, 58, 'ziyuantest', 'ziyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5261, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5262, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5263, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5264, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5265, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5266, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5267, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5268, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5269, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5270, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5271, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5272, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5273, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5274, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5275, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5276, 43, 'jiaoyuantest', 'jiaoyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5277, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5278, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5279, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5280, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5281, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5282, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5283, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5284, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5285, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5286, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5287, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5288, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5289, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5290, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5291, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5292, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5293, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5294, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5295, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5296, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5297, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5298, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5299, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5300, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5301, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5302, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5303, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5304, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5305, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5306, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5307, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5308, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5309, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5310, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5311, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5312, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5313, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5314, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5315, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5316, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5317, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5318, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5319, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5320, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5321, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5322, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5323, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5324, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5325, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5326, 44, 'xueyuantest', 'xueyuantest 提交试卷：试卷1 得分：0 耗时：2分55秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5327, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5328, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5329, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5330, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5331, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5332, 44, 'xueyuantest', 'xueyuantest 提交试卷：测试选项打乱2 得分：3 耗时：20秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5333, 44, 'xueyuantest', 'xueyuantest 提交试卷：测试选项打乱2 得分：6 耗时：19秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5334, 44, 'xueyuantest', 'xueyuantest 提交试卷：测试选项打乱2 得分：8 耗时：11秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5335, 44, 'xueyuantest', 'xueyuantest 提交试卷：测试选项打乱2 得分：8 耗时：16秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5336, 44, 'xueyuantest', 'xueyuantest 提交试卷：测试选项打乱2 得分：8 耗时：10秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5337, 44, 'xueyuantest', 'xueyuantest 提交试卷：测试选项打乱2 得分：8 耗时：19秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5338, 44, 'xueyuantest', 'xueyuantest 提交试卷：测试防作弊 得分：8 耗时：35秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5339, 44, 'xueyuantest', 'xueyuantest 提交试卷：测试防作弊 得分：8 耗时：2分44秒', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5340, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5341, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5342, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5343, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5344, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5345, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5346, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5347, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5348, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5349, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5350, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5351, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5352, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5353, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5354, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5355, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5356, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5357, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5358, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5359, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5360, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5361, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5362, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5363, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5364, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5365, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5366, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5367, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5368, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5369, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5370, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5371, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5372, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5373, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5374, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5375, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5376, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5377, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5378, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5379, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5380, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5381, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5382, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5383, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5384, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5385, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5386, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5387, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5388, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5389, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5390, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5391, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5392, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5393, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5394, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5395, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5396, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5397, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5398, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5399, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5400, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5401, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5402, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5403, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5404, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5405, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5406, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5407, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5408, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5409, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5410, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5411, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5412, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5413, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5414, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5415, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5416, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5417, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5418, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5419, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5420, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5421, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5422, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5423, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5424, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5425, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5426, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5427, 45, 'shenhe', 'shenhe 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5428, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5429, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5430, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5431, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5432, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5433, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5434, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5435, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5436, 58, 'ziyuantest', 'ziyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5437, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5438, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5439, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5440, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5441, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5442, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5443, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5444, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5445, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5446, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5447, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5448, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5449, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5450, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5451, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5452, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5453, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5454, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5455, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5456, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5457, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5458, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5459, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5460, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5461, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5462, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5463, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5464, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5465, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5466, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5467, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5468, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5469, 42, 'admintest', 'admintest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5470, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5471, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5472, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5473, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5474, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5475, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5476, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5477, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5478, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5479, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5480, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5481, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5482, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5483, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5484, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5485, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5486, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5487, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5488, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5489, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5490, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5491, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5492, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5493, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5494, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5495, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5496, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5497, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5498, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5499, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5500, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5501, 214, 'admin', 'admin 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5502, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5503, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5504, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5505, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5506, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5507, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5508, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5509, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5510, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5511, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5512, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5513, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5514, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5515, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5516, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5517, 58, 'ziyuantest', 'ziyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5518, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5519, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5520, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5521, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5522, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5523, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5524, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5525, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5526, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5527, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5528, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5529, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5530, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5531, 45, 'shenhe', 'shenhe 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5532, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5533, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5534, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5535, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5536, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5537, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5538, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5539, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5540, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5541, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5542, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5543, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5544, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5545, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5546, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5547, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5548, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5549, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5550, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5551, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5552, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5553, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5554, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5555, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5556, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5557, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5558, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5559, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5560, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5561, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5562, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5563, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5564, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5565, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5566, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5567, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5568, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5569, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5570, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5571, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5572, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5573, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5574, 44, 'xueyuantest', 'xueyuantest 登出了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5575, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5576, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5577, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5578, 199, 'zffxueyuan', 'zffxueyuan 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5579, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5580, 42, 'admintest', 'admintest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5581, 44, 'xueyuantest', 'xueyuantest 登录了', '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5582, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-15 11:21:09.415000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5583, 42, 'admintest', 'admintest 登录了', '2023-06-15 11:22:14.862000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5584, 42, 'admintest', 'admintest 登录了', '2023-06-15 11:22:23.849000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5585, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '2023-06-15 11:22:31.978000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5586, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '2023-06-15 11:22:33.498000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5587, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '2023-06-15 11:22:41.899000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5588, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '2023-06-15 11:22:54.589000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5589, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '2023-06-15 11:26:34.125000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5590, 44, 'xueyuantest', 'xueyuantest 登出了', '2023-06-15 11:28:46.726000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5591, 43, 'jiaoyuantest', 'jiaoyuantest 登录了', '2023-06-15 11:28:54.701000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5592, 42, 'admintest', 'admintest 登录了', '2023-06-15 11:33:49.324000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5593, 42, 'admintest', 'admintest 登录了', '2023-06-16 09:13:44.777000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5594, 42, 'admintest', 'admintest 登录了', '2023-06-16 10:12:17.384000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5595, 42, 'admintest', 'admintest 登录了', '2023-06-16 10:34:45.188000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5596, 42, 'admintest', 'admintest 登录了', '2023-06-16 10:44:05.405000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5597, 42, 'admintest', 'admintest 登录了', '2023-06-16 10:47:52.034000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5598, 42, 'admintest', 'admintest 登录了', '2023-06-16 10:57:10.433000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5599, 42, 'admintest', 'admintest 登录了', '2023-06-16 10:59:50.357000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5600, 42, 'admintest', 'admintest 登录了', '2023-06-16 11:06:36.810000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5601, 42, 'admintest', 'admintest 登出了', '2023-06-16 11:09:03.677000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5602, 42, 'admintest', 'admintest 登录了', '2023-06-16 11:09:17.585000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5603, 42, 'admintest', 'admintest 登录了', '2023-06-16 11:10:37.828000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5604, 42, 'admintest', 'admintest 登出了', '2023-06-16 11:13:25.183000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5605, 42, 'admintest', 'admintest 登录了', '2023-06-16 11:13:40.098000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5606, 42, 'admintest', 'admintest 登出了', '2023-06-16 11:17:37.932000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5607, 42, 'admintest', 'admintest 登录了', '2023-06-16 11:17:53.296000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5608, 42, 'admintest', 'admintest 登录了', '2023-06-16 12:19:16.664000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5609, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-16 12:20:54.393000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5610, 42, 'admintest', 'admintest 登出了', '2023-06-16 14:23:16.867000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5611, 42, 'admintest', 'admintest 登录了', '2023-06-16 14:23:32.632000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5612, 42, 'admintest', 'admintest 登录了', '2023-06-16 15:11:07.973000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5613, 42, 'admintest', 'admintest 登录了', '2023-06-16 16:20:29.061000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5614, 42, 'admintest', 'admintest 登录了', '2023-06-16 16:25:01.948000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5615, 42, 'admintest', 'admintest 登录了', '2023-06-16 16:57:36.956000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5616, 42, 'admintest', 'admintest 登录了', '2023-06-16 17:27:20.479000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5617, 42, 'admintest', 'admintest 登录了', '2023-06-16 17:50:49.966000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5618, 42, 'admintest', 'admintest 登录了', '2023-06-16 18:16:47.980000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5619, 42, 'admintest', 'admintest 登录了', '2023-06-16 19:05:57.881000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5620, 42, 'admintest', 'admintest 登录了', '2023-06-16 19:28:38.246000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5621, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-16 19:29:58.174000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5622, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-17 08:52:30.403000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5623, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-17 08:59:56.706000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5624, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-17 09:13:54.325000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5625, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-17 09:51:18.896000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5626, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-17 11:39:30.509000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5627, 42, 'admintest', 'admintest 登录了', '2023-06-17 11:41:15.306000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5628, 42, 'admintest', 'admintest 登录了', '2023-06-17 11:51:30.335000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5629, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-17 15:27:43.270000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5630, 42, 'admintest', 'admintest 登录了', '2023-06-19 09:14:12.198000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5631, 42, 'admintest', 'admintest 登录了', '2023-06-19 09:14:23.747000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5632, 42, 'admintest', 'admintest 登录了', '2023-06-19 09:14:28.060000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5633, 42, 'admintest', 'admintest 登录了', '2023-06-19 09:14:31.706000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5634, 42, 'admintest', 'admintest 登录了', '2023-06-19 09:17:00.643000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5635, 199, 'zffxueyuan', 'zffxueyuan 登录了', '2023-06-19 09:18:40.664000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5636, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-19 09:52:09.464000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5637, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-19 11:33:27.337000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5638, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-19 11:57:32.727000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5639, 42, 'admintest', 'admintest 登录了', '2023-06-19 12:03:34.212000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5640, 42, 'admintest', 'admintest 登录了', '2023-06-19 12:56:00.726000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5641, 42, 'admintest', 'admintest 登录了', '2023-06-19 15:27:41.218000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5642, 199, 'zffxueyuan', 'zffxueyuan 登录了', '2023-06-19 15:36:36.579000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5643, 199, 'zffxueyuan', 'zffxueyuan 登录了', '2023-06-19 15:50:33.930000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5644, 42, 'admintest', 'admintest 登出了', '2023-06-19 16:07:07.969000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5645, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-19 16:07:15.113000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5646, 42, 'admintest', 'admintest 登录了', '2023-06-19 16:10:02.473000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5647, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-19 16:13:10.361000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5648, 199, 'zffxueyuan', 'zffxueyuan 登录了', '2023-06-19 16:13:16.047000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5649, 42, 'admintest', 'admintest 登录了', '2023-06-19 16:37:55.448000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5650, 199, 'zffxueyuan', 'zffxueyuan 更新了个人信息', '2023-06-19 17:18:28.061000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5651, 199, 'zffxueyuan', 'zffxueyuan 更新了个人信息', '2023-06-19 17:18:58.954000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5652, 199, 'zffxueyuan', 'zffxueyuan 更新了个人信息', '2023-06-19 17:21:09.314000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5653, 44, 'xueyuantest', 'xueyuantest 提交试卷：测试防作弊 得分：0 耗时：51分42秒', '2023-06-19 17:27:24.159000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5654, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-19 17:31:18.074000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5655, 44, 'xueyuantest', 'xueyuantest 修改了密码', '2023-06-19 17:38:43.206000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5656, 44, 'xueyuantest', 'xueyuantest 登出了', '2023-06-19 17:38:55.872000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5657, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-19 17:39:23.605000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5658, 44, 'xueyuantest', 'xueyuantest 登录了', '2023-06-19 17:42:32.739000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5659, 42, 'admintest', 'admintest 登录了', '2023-06-19 18:03:45.634000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5660, 199, 'zffxueyuan', 'zffxueyuan 登出了', '2023-06-19 18:10:02.704000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5661, 199, 'zffxueyuan', 'zffxueyuan 登录了', '2023-06-19 18:10:11.283000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5662, 42, 'admintest', 'admintest 登录了', '2023-06-19 18:25:31.907000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5663, 42, 'admintest', 'admintest 登录了', '2023-06-19 19:31:57.000000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5664, 42, 'admintest', 'admintest 登录了', '2023-06-19 20:15:07.309000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5665, 210, 'zhangsan8888', 'zhangsan8888 登录了', '2023-06-19 20:18:44.174000', NULL, NULL);
INSERT INTO `t_user_event_log` VALUES (5666, 42, 'admintest', 'admintest 登录了', '2023-06-20 09:04:46.842000', NULL, NULL);

-- ----------------------------
-- Table structure for t_user_guide
-- ----------------------------
DROP TABLE IF EXISTS `t_user_guide`;
CREATE TABLE `t_user_guide`  (
  `id` int(4) NOT NULL,
  `problem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `solution` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `display` int(4) NULL DEFAULT NULL,
  `user_group` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_guide
-- ----------------------------
INSERT INTO `t_user_guide` VALUES (1, '计算机的数据保存在哪??', '保存在云端硬盘中', 1, 3);
INSERT INTO `t_user_guide` VALUES (2, '2023年全国计算机二级考试时间', '2023年5月28日至29日', 0, 3);
INSERT INTO `t_user_guide` VALUES (3, '2023年计算机二级考试报名时间', '各省根据自身情况不同自行规划相应时间', 1, 3);

-- ----------------------------
-- Table structure for t_user_point
-- ----------------------------
DROP TABLE IF EXISTS `t_user_point`;
CREATE TABLE `t_user_point`  (
  `id` int(4) NOT NULL,
  `point` int(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `organization_id` int(4) NULL DEFAULT NULL,
  `degree_id` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_point
-- ----------------------------
INSERT INTO `t_user_point` VALUES (193, 0, '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_point` VALUES (194, 0, '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_point` VALUES (195, 0, '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_point` VALUES (196, 0, '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_point` VALUES (197, 0, '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_point` VALUES (199, 45, '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_point` VALUES (208, 0, '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_point` VALUES (209, 0, '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_point` VALUES (210, 0, '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_point` VALUES (211, 0, '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_point` VALUES (212, 0, '0000-00-00 00:00:00.000000', NULL, NULL);
INSERT INTO `t_user_point` VALUES (213, 0, '0000-00-00 00:00:00.000000', NULL, NULL);

-- ----------------------------
-- Table structure for t_user_point_record
-- ----------------------------
DROP TABLE IF EXISTS `t_user_point_record`;
CREATE TABLE `t_user_point_record`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT,
  `amount` int(4) NULL DEFAULT NULL,
  `user_id` int(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `source_type` int(4) NULL DEFAULT NULL,
  `organization_id` int(4) NULL DEFAULT NULL,
  `degree_id` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1298 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_point_record
-- ----------------------------
INSERT INTO `t_user_point_record` VALUES (1293, 15, 199, '0000-00-00 00:00:00.000000', 2, NULL, NULL);
INSERT INTO `t_user_point_record` VALUES (1294, 15, 199, '0000-00-00 00:00:00.000000', 2, NULL, NULL);
INSERT INTO `t_user_point_record` VALUES (1295, 15, 199, '0000-00-00 00:00:00.000000', 2, NULL, NULL);
INSERT INTO `t_user_point_record` VALUES (1296, 10, 44, '0000-00-00 00:00:00.000000', 3, 1, 5);
INSERT INTO `t_user_point_record` VALUES (1297, 15, 44, '0000-00-00 00:00:00.000000', 2, NULL, NULL);

-- ----------------------------
-- Table structure for t_user_token
-- ----------------------------
DROP TABLE IF EXISTS `t_user_token`;
CREATE TABLE `t_user_token`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT,
  `token` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(4) NULL DEFAULT NULL,
  `create_time` timestamp(6) NULL DEFAULT NULL,
  `end_time` timestamp(6) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `organization_id` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_token
-- ----------------------------

-- ----------------------------
-- Table structure for t_write_back
-- ----------------------------
DROP TABLE IF EXISTS `t_write_back`;
CREATE TABLE `t_write_back`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `replier_id` int(4) NULL DEFAULT NULL,
  `write_back` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `feedback_id` int(4) NULL DEFAULT NULL,
  `back_file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `write_back_time` timestamp(6) NULL DEFAULT NULL,
  `user_id` int(4) NULL DEFAULT NULL,
  `read_flag` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_write_back
-- ----------------------------
INSERT INTO `t_write_back` VALUES (1, NULL, '\\n', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- View structure for forum_user
-- ----------------------------
DROP VIEW IF EXISTS `forum_user`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `forum_user` AS select `t_user`.`id` AS `id`,`t_user`.`real_name` AS `nickname`,`t_user`.`user_name` AS `email`,`t_user`.`password` AS `password`,`t_user`.`role` AS `role`,`t_user`.`status` AS `state`,`t_user`.`image_path` AS `avatar`,`t_user`.`last_active_time` AS `last_login_time`,`t_user`.`deleted` AS `is_delete`,`t_user`.`create_time` AS `create_at`,`t_user`.`modify_time` AS `update_at` from `t_user`;

SET FOREIGN_KEY_CHECKS = 1;
