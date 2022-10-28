/*
 Navicat Premium Data Transfer

 Source Server         : timetable
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : 127.0.0.1:3306
 Source Schema         : timetables

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 28/10/2022 20:37:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data
-- ----------------------------
DROP TABLE IF EXISTS `data`;
CREATE TABLE `data`  (
  `周次` int(5) NOT NULL,
  `星期` int(5) NULL DEFAULT NULL,
  `课程` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `授课老师` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `地点` varchar(29) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `第几节` int(10) NULL DEFAULT NULL,
  `日期` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data
-- ----------------------------
INSERT INTO `data` VALUES (1, 1, '无课', '无课', '无课', 0, '2022-08-29');
INSERT INTO `data` VALUES (1, 2, '无课', '无课', '无课', 0, '2022-08-30');
INSERT INTO `data` VALUES (1, 3, '无课', '无课', '无课', 0, '2022-08-31');
INSERT INTO `data` VALUES (1, 4, '无课', '无课', '无课', 0, '2022-09-01');
INSERT INTO `data` VALUES (1, 5, '无课', '无课', '无课', 0, '2022-09-02');
INSERT INTO `data` VALUES (1, 6, '无课', '无课', '无课', 0, '2022-09-03');
INSERT INTO `data` VALUES (1, 7, '无课', '无课', '无课', 0, '2022-08-28');
INSERT INTO `data` VALUES (2, 1, '无课', '无课', '无课', 0, '2022-09-05');
INSERT INTO `data` VALUES (2, 2, '无课', '无课', '无课', 0, '2022-09-06');
INSERT INTO `data` VALUES (2, 3, '无课', '无课', '无课', 0, '2022-09-07');
INSERT INTO `data` VALUES (2, 4, '无课', '无课', '无课', 0, '2022-09-08');
INSERT INTO `data` VALUES (2, 5, '无课', '无课', '无课', 0, '2022-09-09');
INSERT INTO `data` VALUES (2, 6, '无课', '无课', '无课', 0, '2022-09-10');
INSERT INTO `data` VALUES (1, 7, '无课', '无课', '无课', 0, '2022-09-04');
INSERT INTO `data` VALUES (3, 1, '无课', '无课', '无课', 0, '2022-09-12');
INSERT INTO `data` VALUES (3, 2, '无课', '无课', '无课', 0, '2022-09-13');
INSERT INTO `data` VALUES (3, 3, '无课', '无课', '无课', 0, '2022-09-14');
INSERT INTO `data` VALUES (3, 4, '无课', '无课', '无课', 0, '2022-09-15');
INSERT INTO `data` VALUES (3, 5, '无课', '无课', '无课', 0, '2022-09-16');
INSERT INTO `data` VALUES (3, 6, '无课', '无课', '无课', 0, '2022-09-17');
INSERT INTO `data` VALUES (2, 7, '无课', '无课', '无课', 0, '2022-09-11');
INSERT INTO `data` VALUES (4, 1, '无课', '无课', '无课', 0, '2022-09-19');
INSERT INTO `data` VALUES (4, 2, '无课', '无课', '无课', 0, '2022-09-20');
INSERT INTO `data` VALUES (4, 3, '无课', '无课', '无课', 0, '2022-09-21');
INSERT INTO `data` VALUES (4, 4, '无课', '无课', '无课', 0, '2022-09-22');
INSERT INTO `data` VALUES (4, 5, '无课', '无课', '无课', 0, '2022-09-23');
INSERT INTO `data` VALUES (4, 6, '无课', '无课', '无课', 0, '2022-09-24');
INSERT INTO `data` VALUES (3, 7, '无课', '无课', '无课', 0, '2022-09-18');
INSERT INTO `data` VALUES (5, 1, '无课', '无课', '无课', 0, '2022-09-26');
INSERT INTO `data` VALUES (5, 2, '无课', '无课', '无课', 0, '2022-09-27');
INSERT INTO `data` VALUES (5, 3, '无课', '无课', '无课', 0, '2022-09-28');
INSERT INTO `data` VALUES (5, 4, '无课', '无课', '无课', 0, '2022-09-29');
INSERT INTO `data` VALUES (5, 5, '无课', '无课', '无课', 0, '2022-09-30');
INSERT INTO `data` VALUES (5, 6, '无课', '无课', '无课', 0, '2022-10-01');
INSERT INTO `data` VALUES (4, 7, '无课', '无课', '无课', 0, '2022-09-25');
INSERT INTO `data` VALUES (6, 1, '大学英语视听说(一)', '陈兰兰', '外语楼南103', 78, '2022-10-03');
INSERT INTO `data` VALUES (6, 1, '微积分', '黄寿生', 'J03', 12, '2022-10-03');
INSERT INTO `data` VALUES (6, 2, '大学英语读写(一)', '陈兰兰', 'D103', 34, '2022-10-04');
INSERT INTO `data` VALUES (6, 2, '微积分', '黄寿生', 'J11', 12, '2022-10-04');
INSERT INTO `data` VALUES (6, 2, '大学体育(一)', '吴昊', '西城体育馆门前', 78, '2022-10-04');
INSERT INTO `data` VALUES (6, 3, '大学计算机与人工智能基础', '吴笑嫦', 'J02', 12, '2022-10-05');
INSERT INTO `data` VALUES (6, 3, '军事理论', '崔斯敏', 'J01', 34, '2022-10-05');
INSERT INTO `data` VALUES (6, 3, '微积分', '黄寿生', 'J13', 78, '2022-10-05');
INSERT INTO `data` VALUES (6, 3, '大学英语读写(一)', '陈兰兰', 'E103', 56, '2022-10-05');
INSERT INTO `data` VALUES (6, 6, '军事理论', '崔斯敏', 'J01', 78, '2022-10-08');
INSERT INTO `data` VALUES (6, 6, '微积分', '黄寿生', 'J04', 56, '2022-10-08');
INSERT INTO `data` VALUES (6, 6, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-10-08');
INSERT INTO `data` VALUES (6, 4, '无课', '无课', '无课', 0, '2022-10-06');
INSERT INTO `data` VALUES (6, 5, '无课', '无课', '无课', 0, '2022-10-07');
INSERT INTO `data` VALUES (5, 7, '无课', '无课', '无课', 0, '2022-10-02');
INSERT INTO `data` VALUES (7, 1, '微积分', '黄寿生', 'J03', 12, '2022-10-10');
INSERT INTO `data` VALUES (7, 1, '大学英语视听说(一)', '陈兰兰', '外语楼南103', 78, '2022-10-10');
INSERT INTO `data` VALUES (7, 2, '大学英语读写(一)', '陈兰兰', 'D103', 34, '2022-10-11');
INSERT INTO `data` VALUES (7, 2, '微积分', '黄寿生', 'J11', 12, '2022-10-11');
INSERT INTO `data` VALUES (7, 2, '大学体育(一)', '吴昊', '西城体育馆门前', 78, '2022-10-11');
INSERT INTO `data` VALUES (7, 3, '微积分', '黄寿生', 'J13', 78, '2022-10-12');
INSERT INTO `data` VALUES (7, 3, '军事理论', '崔斯敏', 'J01', 34, '2022-10-12');
INSERT INTO `data` VALUES (7, 3, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-10-12');
INSERT INTO `data` VALUES (7, 4, '军事理论', '崔斯敏', 'J01', 78, '2022-10-13');
INSERT INTO `data` VALUES (7, 4, '微积分', '黄寿生', 'J04', 56, '2022-10-13');
INSERT INTO `data` VALUES (7, 4, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-10-13');
INSERT INTO `data` VALUES (7, 5, '无课', '无课', '无课', 0, '2022-10-14');
INSERT INTO `data` VALUES (7, 6, '无课', '无课', '无课', 0, '2022-10-15');
INSERT INTO `data` VALUES (6, 7, '无课', '无课', '无课', 0, '2022-10-09');
INSERT INTO `data` VALUES (8, 1, '微积分', '黄寿生', 'J03', 12, '2022-10-17');
INSERT INTO `data` VALUES (8, 1, '大学英语视听说(一)', '陈兰兰', '外语楼南103', 78, '2022-10-17');
INSERT INTO `data` VALUES (8, 2, '大学英语读写(一)', '陈兰兰', 'D103', 34, '2022-10-18');
INSERT INTO `data` VALUES (8, 2, '微积分', '黄寿生', 'J11', 12, '2022-10-18');
INSERT INTO `data` VALUES (8, 2, '大学体育(一)', '吴昊', '西城体育馆门前', 78, '2022-10-18');
INSERT INTO `data` VALUES (8, 3, '微积分', '黄寿生', 'J13', 78, '2022-10-19');
INSERT INTO `data` VALUES (8, 3, '军事理论', '崔斯敏', 'J01', 34, '2022-10-19');
INSERT INTO `data` VALUES (8, 3, '大学计算机与人工智能基础', '吴笑嫦', 'J02', 12, '2022-10-19');
INSERT INTO `data` VALUES (8, 3, '大学英语读写(一)', '陈兰兰', 'E103', 56, '2022-10-19');
INSERT INTO `data` VALUES (8, 4, '军事理论', '崔斯敏', 'J01', 78, '2022-10-20');
INSERT INTO `data` VALUES (8, 4, '微积分', '黄寿生', 'J04', 56, '2022-10-20');
INSERT INTO `data` VALUES (8, 4, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-10-20');
INSERT INTO `data` VALUES (8, 5, '无课', '无课', '无课', 0, '2022-10-21');
INSERT INTO `data` VALUES (8, 6, '无课', '无课', '无课', 0, '2022-10-22');
INSERT INTO `data` VALUES (7, 7, '无课', '无课', '无课', 0, '2022-10-16');
INSERT INTO `data` VALUES (9, 1, '微积分', '黄寿生', 'J03', 12, '2022-10-24');
INSERT INTO `data` VALUES (9, 1, '大学英语视听说(一)', '陈兰兰', '外语楼南103', 78, '2022-10-24');
INSERT INTO `data` VALUES (9, 2, '大学英语读写(一)', '陈兰兰', 'D103', 34, '2022-10-25');
INSERT INTO `data` VALUES (9, 2, '微积分', '黄寿生', 'J11', 12, '2022-10-25');
INSERT INTO `data` VALUES (9, 2, '大学体育(一)', '吴昊', '西城体育馆门前', 78, '2022-10-25');
INSERT INTO `data` VALUES (9, 3, '微积分', '黄寿生', 'J13', 78, '2022-10-26');
INSERT INTO `data` VALUES (9, 3, '军事理论', '崔斯敏', 'J01', 34, '2022-10-26');
INSERT INTO `data` VALUES (9, 3, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-10-26');
INSERT INTO `data` VALUES (9, 4, '军事理论', '崔斯敏', 'J01', 78, '2022-10-27');
INSERT INTO `data` VALUES (9, 4, '微积分', '黄寿生', 'J04', 56, '2022-10-27');
INSERT INTO `data` VALUES (9, 4, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-10-27');
INSERT INTO `data` VALUES (9, 5, '形势与政策1', '李艳明', 'E203', 34, '2022-10-28');
INSERT INTO `data` VALUES (9, 6, '无课', '无课', '无课', 0, '2022-10-29');
INSERT INTO `data` VALUES (8, 7, '无课', '无课', '无课', 0, '2022-10-23');
INSERT INTO `data` VALUES (10, 1, '微积分', '黄寿生', 'J03', 12, '2022-10-31');
INSERT INTO `data` VALUES (10, 1, '大学英语视听说(一)', '陈兰兰', '外语楼南103', 78, '2022-10-31');
INSERT INTO `data` VALUES (10, 2, '大学英语读写(一)', '陈兰兰', 'D103', 34, '2022-11-01');
INSERT INTO `data` VALUES (10, 2, '微积分', '黄寿生', 'J11', 12, '2022-11-01');
INSERT INTO `data` VALUES (10, 2, '大学体育(一)', '吴昊', '西城体育馆门前', 78, '2022-11-01');
INSERT INTO `data` VALUES (10, 3, '微积分', '黄寿生', 'J13', 78, '2022-11-02');
INSERT INTO `data` VALUES (10, 3, '军事理论', '崔斯敏', 'J01', 34, '2022-11-02');
INSERT INTO `data` VALUES (10, 3, '大学计算机与人工智能基础', '吴笑嫦', 'J02', 12, '2022-11-02');
INSERT INTO `data` VALUES (10, 3, '大学英语读写(一)', '陈兰兰', 'E103', 56, '2022-11-02');
INSERT INTO `data` VALUES (10, 4, '军事理论', '崔斯敏', 'J01', 78, '2022-11-03');
INSERT INTO `data` VALUES (10, 4, '微积分', '黄寿生', 'J04', 56, '2022-11-03');
INSERT INTO `data` VALUES (10, 4, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-11-03');
INSERT INTO `data` VALUES (10, 5, '形势与政策1', '李艳明', 'E203', 34, '2022-11-04');
INSERT INTO `data` VALUES (10, 6, '无课', '无课', '无课', 0, '2022-11-05');
INSERT INTO `data` VALUES (9, 7, '无课', '无课', '无课', 0, '2022-10-30');
INSERT INTO `data` VALUES (11, 1, '大学英语视听说(一)', '陈兰兰', '外语楼南103', 78, '2022-11-07');
INSERT INTO `data` VALUES (11, 1, '微积分', '黄寿生', 'J03', 12, '2022-11-07');
INSERT INTO `data` VALUES (11, 2, '大学英语读写(一)', '陈兰兰', 'D103', 34, '2022-11-08');
INSERT INTO `data` VALUES (11, 2, '微积分', '黄寿生', 'J11', 12, '2022-11-08');
INSERT INTO `data` VALUES (11, 2, '大学体育(一)', '吴昊', '西城体育馆门前', 78, '2022-11-08');
INSERT INTO `data` VALUES (11, 3, '微积分', '黄寿生', 'J13', 78, '2022-11-09');
INSERT INTO `data` VALUES (11, 3, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-11-09');
INSERT INTO `data` VALUES (11, 3, '军事理论', '崔斯敏', 'J01', 34, '2022-11-09');
INSERT INTO `data` VALUES (11, 4, '微积分', '黄寿生', 'J04', 56, '2022-11-10');
INSERT INTO `data` VALUES (11, 4, '军事理论', '崔斯敏', 'J01', 78, '2022-11-10');
INSERT INTO `data` VALUES (11, 4, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-11-10');
INSERT INTO `data` VALUES (11, 5, '无课', '无课', '无课', 0, '2022-11-11');
INSERT INTO `data` VALUES (11, 6, '无课', '无课', '无课', 0, '2022-11-12');
INSERT INTO `data` VALUES (10, 7, '无课', '无课', '无课', 0, '2022-11-06');
INSERT INTO `data` VALUES (12, 1, '大学英语视听说(一)', '陈兰兰', '外语楼南103', 78, '2022-11-14');
INSERT INTO `data` VALUES (12, 1, '微积分', '黄寿生', 'J03', 12, '2022-11-14');
INSERT INTO `data` VALUES (12, 2, '大学英语读写(一)', '陈兰兰', 'D103', 34, '2022-11-15');
INSERT INTO `data` VALUES (12, 2, '微积分', '黄寿生', 'J11', 12, '2022-11-15');
INSERT INTO `data` VALUES (12, 2, '大学体育(一)', '吴昊', '西城体育馆门前', 78, '2022-11-15');
INSERT INTO `data` VALUES (12, 3, '大学英语读写(一)', '陈兰兰', 'E103', 56, '2022-11-16');
INSERT INTO `data` VALUES (12, 3, '大学计算机与人工智能基础', '吴笑嫦', 'J02', 12, '2022-11-16');
INSERT INTO `data` VALUES (12, 3, '军事理论', '崔斯敏', 'J01', 34, '2022-11-16');
INSERT INTO `data` VALUES (12, 3, '微积分', '黄寿生', 'J13', 78, '2022-11-16');
INSERT INTO `data` VALUES (12, 4, '军事理论', '崔斯敏', 'J01', 78, '2022-11-17');
INSERT INTO `data` VALUES (12, 4, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-11-17');
INSERT INTO `data` VALUES (12, 5, '无课', '无课', '无课', 0, '2022-11-18');
INSERT INTO `data` VALUES (12, 6, '无课', '无课', '无课', 0, '2022-11-19');
INSERT INTO `data` VALUES (11, 7, '无课', '无课', '无课', 0, '2022-11-13');
INSERT INTO `data` VALUES (13, 1, '微积分', '黄寿生', 'J03', 12, '2022-11-21');
INSERT INTO `data` VALUES (13, 1, '大学英语视听说(一)', '陈兰兰', '外语楼南103', 78, '2022-11-21');
INSERT INTO `data` VALUES (13, 2, '大学英语读写(一)', '陈兰兰', 'D103', 34, '2022-11-22');
INSERT INTO `data` VALUES (13, 2, '微积分', '黄寿生', 'J11', 12, '2022-11-22');
INSERT INTO `data` VALUES (13, 2, '大学体育(一)', '吴昊', '西城体育馆门前', 78, '2022-11-22');
INSERT INTO `data` VALUES (13, 3, '微积分', '黄寿生', 'J13', 78, '2022-11-23');
INSERT INTO `data` VALUES (13, 3, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-11-23');
INSERT INTO `data` VALUES (13, 4, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-11-24');
INSERT INTO `data` VALUES (13, 5, '无课', '无课', '无课', 0, '2022-11-25');
INSERT INTO `data` VALUES (13, 6, '无课', '无课', '无课', 0, '2022-11-26');
INSERT INTO `data` VALUES (12, 7, '无课', '无课', '无课', 0, '2022-11-20');
INSERT INTO `data` VALUES (14, 1, '大学英语视听说(一)', '陈兰兰', '外语楼南103', 78, '2022-11-28');
INSERT INTO `data` VALUES (14, 1, '微积分', '黄寿生', 'J03', 12, '2022-11-28');
INSERT INTO `data` VALUES (14, 2, '大学英语读写(一)', '陈兰兰', 'D103', 34, '2022-11-29');
INSERT INTO `data` VALUES (14, 2, '微积分', '黄寿生', 'J11', 12, '2022-11-29');
INSERT INTO `data` VALUES (14, 2, '大学体育(一)', '吴昊', '西城体育馆门前', 78, '2022-11-29');
INSERT INTO `data` VALUES (14, 3, '微积分', '黄寿生', 'J13', 78, '2022-11-30');
INSERT INTO `data` VALUES (14, 3, '大学计算机与人工智能基础', '吴笑嫦', 'J02', 12, '2022-11-30');
INSERT INTO `data` VALUES (14, 4, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-12-01');
INSERT INTO `data` VALUES (14, 5, '无课', '无课', '无课', 0, '2022-12-02');
INSERT INTO `data` VALUES (14, 6, '无课', '无课', '无课', 0, '2022-12-03');
INSERT INTO `data` VALUES (13, 7, '无课', '无课', '无课', 0, '2022-11-27');
INSERT INTO `data` VALUES (15, 1, '大学英语视听说(一)', '陈兰兰', '外语楼南103', 78, '2022-12-05');
INSERT INTO `data` VALUES (15, 1, '微积分', '黄寿生', 'J03', 12, '2022-12-05');
INSERT INTO `data` VALUES (15, 2, '大学英语读写(一)', '陈兰兰', 'D103', 34, '2022-12-06');
INSERT INTO `data` VALUES (15, 2, '大学体育(一)', '吴昊', '西城体育馆门前', 78, '2022-12-06');
INSERT INTO `data` VALUES (15, 2, '微积分', '黄寿生', 'J11', 12, '2022-12-06');
INSERT INTO `data` VALUES (15, 3, '微积分', '黄寿生', 'J13', 78, '2022-12-07');
INSERT INTO `data` VALUES (15, 3, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-12-07');
INSERT INTO `data` VALUES (15, 4, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-12-08');
INSERT INTO `data` VALUES (15, 5, '无课', '无课', '无课', 0, '2022-12-09');
INSERT INTO `data` VALUES (15, 6, '无课', '无课', '无课', 0, '2022-12-10');
INSERT INTO `data` VALUES (14, 7, '无课', '无课', '无课', 0, '2022-12-04');
INSERT INTO `data` VALUES (16, 1, '大学英语视听说(一)', '陈兰兰', '外语楼南103', 78, '2022-12-12');
INSERT INTO `data` VALUES (16, 1, '微积分', '黄寿生', 'J03', 12, '2022-12-12');
INSERT INTO `data` VALUES (16, 2, '大学英语读写(一)', '陈兰兰', 'D103', 34, '2022-12-13');
INSERT INTO `data` VALUES (16, 2, '微积分', '黄寿生', 'J11', 12, '2022-12-13');
INSERT INTO `data` VALUES (16, 2, '大学体育(一)', '吴昊', '西城体育馆门前', 78, '2022-12-13');
INSERT INTO `data` VALUES (16, 3, '大学计算机与人工智能基础', '吴笑嫦', 'J02', 12, '2022-12-14');
INSERT INTO `data` VALUES (16, 3, '微积分', '黄寿生', 'J13', 78, '2022-12-14');
INSERT INTO `data` VALUES (16, 4, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-12-15');
INSERT INTO `data` VALUES (16, 5, '无课', '无课', '无课', 0, '2022-12-16');
INSERT INTO `data` VALUES (16, 6, '无课', '无课', '无课', 0, '2022-12-17');
INSERT INTO `data` VALUES (15, 7, '无课', '无课', '无课', 0, '2022-12-11');
INSERT INTO `data` VALUES (17, 1, '微积分', '黄寿生', 'J03', 12, '2022-12-19');
INSERT INTO `data` VALUES (17, 1, '大学英语视听说(一)', '陈兰兰', '外语楼南103', 78, '2022-12-19');
INSERT INTO `data` VALUES (17, 2, '微积分', '黄寿生', 'J11', 12, '2022-12-20');
INSERT INTO `data` VALUES (17, 2, '大学英语读写(一)', '陈兰兰', 'D103', 34, '2022-12-20');
INSERT INTO `data` VALUES (17, 2, '大学体育(一)', '吴昊', '西城体育馆门前', 78, '2022-12-20');
INSERT INTO `data` VALUES (17, 3, '大学英语视听说(一)', '陈兰兰', '外语楼南103', 34, '2022-12-21');
INSERT INTO `data` VALUES (17, 3, '微积分', '黄寿生', 'J13', 78, '2022-12-21');
INSERT INTO `data` VALUES (17, 3, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-12-21');
INSERT INTO `data` VALUES (17, 4, '大学计算机与人工智能基础', '吴笑嫦', 'G514', 12, '2022-12-22');
INSERT INTO `data` VALUES (17, 5, '无课', '无课', '无课', 0, '2022-12-23');
INSERT INTO `data` VALUES (17, 6, '无课', '无课', '无课', 0, '2022-12-24');
INSERT INTO `data` VALUES (16, 7, '无课', '无课', '无课', 0, '2022-12-18');
INSERT INTO `data` VALUES (18, 2, '大学体育(一)', '吴昊', '西城体育馆门前', 78, '2022-12-27');
INSERT INTO `data` VALUES (18, 1, '无课', '无课', '无课', 0, '2022-12-26');
INSERT INTO `data` VALUES (18, 3, '无课', '无课', '无课', 0, '2022-12-28');
INSERT INTO `data` VALUES (18, 4, '无课', '无课', '无课', 0, '2022-12-29');
INSERT INTO `data` VALUES (18, 5, '无课', '无课', '无课', 0, '2022-12-30');
INSERT INTO `data` VALUES (18, 6, '无课', '无课', '无课', 0, '2022-12-31');
INSERT INTO `data` VALUES (17, 7, '无课', '无课', '无课', 0, '2022-12-25');

SET FOREIGN_KEY_CHECKS = 1;
