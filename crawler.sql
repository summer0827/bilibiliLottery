/*
 Navicat MySQL Data Transfer

 Source Server         : myaliyun
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : 47.106.136.31:3306
 Source Schema         : crawler

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 09/06/2021 13:52:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sl_bilibili_anio
-- ----------------------------
DROP TABLE IF EXISTS `sl_bilibili_anio`;
CREATE TABLE `sl_bilibili_anio`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `origin_dynamic_id_str` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `origin_rid_str` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `origin_type` int NULL DEFAULT NULL,
  `origin_uid` int NULL DEFAULT NULL,
  `previous_dynamic_id_str` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `previous_rid_str` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `previous_type` int NULL DEFAULT NULL,
  `previous_uid` int NULL DEFAULT NULL,
  `json_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_modify` int NULL DEFAULT 0 COMMENT '关注',
  `is_repost` int NULL DEFAULT 0 COMMENT '转发',
  `is_comment` int NULL DEFAULT 0 COMMENT '评论',
  `is_ok` int NULL DEFAULT 0 COMMENT '是否任务完成',
  `str` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '转发内容',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `zhuanfa_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1268950779' COMMENT '转发的uid',
  `is_like` int NULL DEFAULT 0 COMMENT '是否点赞',
  `bvid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `ctrl` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '@字符串',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3541 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sl_bilibili_do_auto
-- ----------------------------
DROP TABLE IF EXISTS `sl_bilibili_do_auto`;
CREATE TABLE `sl_bilibili_do_auto`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '短链',
  `json_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '数据',
  `is_modify` int NULL DEFAULT 0 COMMENT '是否关注',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '抽奖名字',
  `mid` int NULL DEFAULT NULL COMMENT 'up主id',
  `sid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '抽奖活动id',
  `num` int NULL DEFAULT 0 COMMENT '抽奖次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sl_bilibili_do_msg
-- ----------------------------
DROP TABLE IF EXISTS `sl_bilibili_do_msg`;
CREATE TABLE `sl_bilibili_do_msg`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动名称',
  `sid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '抽奖信息',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 432 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
