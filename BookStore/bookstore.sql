/*
 Navicat Premium Data Transfer

 Source Server         : jupiter
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : bookstore

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 13/05/2022 12:18:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `updated_date` datetime(6) NULL DEFAULT NULL,
  `description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `seo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------
INSERT INTO `tbl_category` VALUES (1, NULL, NULL, b'1', NULL, NULL, 'Sách giáo khoa cho học sinh', 'Sách giáo khoa', 'sach-giao-khoa');
INSERT INTO `tbl_category` VALUES (2, NULL, NULL, b'1', NULL, NULL, 'Sách cho các nhà kinh doanh', 'Sách kinh doanh', 'sach-kinh-doanh');
INSERT INTO `tbl_category` VALUES (3, NULL, NULL, b'1', NULL, NULL, 'Sách cho các bạn nhỏ', 'Sách thiếu nhi', 'sach-thieu-nhi');

-- ----------------------------
-- Table structure for tbl_contact
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contact`;
CREATE TABLE `tbl_contact`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `updated_date` datetime(6) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_contact
-- ----------------------------
INSERT INTO `tbl_contact` VALUES (1, 1, '2022-04-15 00:49:47.000000', b'1', 1, '2022-04-15 00:49:53.000000', 'nongvantai475@gmail.com', 'Đức Tài', 'Nông', 'Nhà sách NVTaza');
INSERT INTO `tbl_contact` VALUES (2, NULL, NULL, b'1', NULL, NULL, 'nongvantai475@gmail.com', 'như', 'tran van', 'kkkkkk');
INSERT INTO `tbl_contact` VALUES (3, NULL, NULL, b'1', NULL, NULL, 'ludamxh@gmail.com', 'như', 'tran van', 'kkkkkk');
INSERT INTO `tbl_contact` VALUES (4, NULL, NULL, b'1', NULL, NULL, 'ludamxh@gmail.com', 'như', 'tran van', 'kkkkkk');
INSERT INTO `tbl_contact` VALUES (5, NULL, NULL, b'1', NULL, NULL, 'hoa@gmail.com', 'tran', 'dan', 'đồ ngu');
INSERT INTO `tbl_contact` VALUES (6, NULL, NULL, b'1', NULL, NULL, 'hoa@gmail.com', 'tran', 'dan', 'đồ ngu');
INSERT INTO `tbl_contact` VALUES (7, NULL, NULL, b'1', NULL, NULL, 'hoa@gmail.com', 'tran', 'dan', 'ngu');

-- ----------------------------
-- Table structure for tbl_products
-- ----------------------------
DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE `tbl_products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `updated_date` datetime(6) NULL DEFAULT NULL,
  `price` decimal(13, 2) NOT NULL,
  `seo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `short_description` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `detail_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `category_id` int NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nxb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKl5l3hu2fh1ixbx8ejat9df13p`(`category_id` ASC) USING BTREE,
  CONSTRAINT `FKl5l3hu2fh1ixbx8ejat9df13p` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_products
-- ----------------------------
INSERT INTO `tbl_products` VALUES (1, NULL, NULL, b'1', NULL, NULL, 22000.00, 'am-nhac-1-1650882304814', 'Sách âm nhạc lớp 1', 'sách giành cho học sinh lớp 1', 'Âm nhạc 1', 1, NULL, '');
INSERT INTO `tbl_products` VALUES (2, NULL, NULL, b'1', NULL, NULL, 25000.00, 'toan-1-1651587902164', 'Toán lớp 1\r\nNXB:Giáo dục', 'Sách cho học sinh lớp 1', 'Toán 1', 1, NULL, NULL);
INSERT INTO `tbl_products` VALUES (3, NULL, NULL, b'1', NULL, NULL, 24000.00, 'tieng-viet-1-1651765632523', 'Sách tiếng việt 1 tác giả trinh văn quýnh, nhà xuất bản giáo dục', '<p style=\"margin-bottom: 1.25em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Quicksand, Helvetica, Arial, sans-serif; vertical-align: baseline; text-rendering: optimizelegibility;\"><a href=\"https://metaisach.com/sach-giao-khoa-tieng-viet-lop-1/\" class=\"local-link\" style=\"color: rgb(49, 148, 46); margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"font-weight: 700; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Sách Giáo Khoa Tiếng Việt Lớp 1</em></span></a>&nbsp;giúp các em làm quen với bảng chữ cái và các dấu câu, các âm cơ bản trong tiếng việt và học cách đánh vần.</p><p style=\"margin-bottom: 1.25em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Quicksand, Helvetica, Arial, sans-serif; vertical-align: baseline; text-rendering: optimizelegibility;\">Phân biệt chữ thường, chữ hoa trong cách viết. Với những hình vẽ sinh động, thực tế và cách phát âm chính xác giúp các em làm quen với môn tiếng việt dễ dàng.</p>', 'Tiếng việt 1', 1, NULL, NULL);
INSERT INTO `tbl_products` VALUES (4, NULL, NULL, b'1', NULL, NULL, 23000.00, 'tn-xh-1-1650882563788', 'sách tự nhiên và xã hội lớp 1', 'sách tự nhiên là xã hội lớp 1', 'TN&XH 1', 1, NULL, NULL);
INSERT INTO `tbl_products` VALUES (5, NULL, NULL, b'1', NULL, NULL, 21000.00, 'ao-uc-1-1650882654237', 'Sách đạo đức lớp 1', '<p>Sách giành cho học sinh lớp 1</p>', 'Đạo đức 1', 1, NULL, NULL);
INSERT INTO `tbl_products` VALUES (6, NULL, NULL, b'1', NULL, NULL, 26000.00, 'my-thuat-1-1650897063672', 'Sách mỹ thuật lớp 1', '<p>Sách mỹ thuật cho học sinh lớp 1</p>', 'Mỹ thuật 1', 1, NULL, NULL);
INSERT INTO `tbl_products` VALUES (7, NULL, NULL, b'1', NULL, NULL, 31000.00, 'toan-2-1650897195185', 'Toán lớp 2', '<p>Toán cho học sinh lớp 2</p>', 'Toán 2', 1, NULL, NULL);
INSERT INTO `tbl_products` VALUES (8, NULL, NULL, b'1', NULL, NULL, 22000.00, 'tieng-viet-2-1650897261072', 'Sách tiếng việt lớp 2', '<p>Sách tiếng việt lớp 2</p>', 'Tiếng việt 2', 1, NULL, NULL);
INSERT INTO `tbl_products` VALUES (9, NULL, NULL, b'1', NULL, NULL, 34000.00, 'am-nhac-2-1650897329980', 'Sách cho học sinh lớp 2', '<p>Sách cho học sinh lớp 2</p>', 'Âm nhạc 2', 1, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_products_images
-- ----------------------------
DROP TABLE IF EXISTS `tbl_products_images`;
CREATE TABLE `tbl_products_images`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `updated_date` datetime(6) NULL DEFAULT NULL,
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKjac7pn534bktj4tvkxqvydglf`(`product_id` ASC) USING BTREE,
  CONSTRAINT `FKjac7pn534bktj4tvkxqvydglf` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_products_images
-- ----------------------------
INSERT INTO `tbl_products_images` VALUES (6, NULL, NULL, b'0', NULL, NULL, 'toan1.jpg', 'toan1.jpg', 2);
INSERT INTO `tbl_products_images` VALUES (7, NULL, NULL, b'0', NULL, NULL, 'amnhac.jpg', 'amnhac.jpg', 1);
INSERT INTO `tbl_products_images` VALUES (8, NULL, NULL, b'0', NULL, NULL, 'tiengviet.jpg', 'tiengviet.jpg', 3);
INSERT INTO `tbl_products_images` VALUES (9, NULL, NULL, b'0', NULL, NULL, 'TNXH.jpg', 'TNXH.jpg', 4);
INSERT INTO `tbl_products_images` VALUES (10, NULL, NULL, b'0', NULL, NULL, 'daoduc.jpg', 'daoduc.jpg', 5);
INSERT INTO `tbl_products_images` VALUES (11, NULL, NULL, b'0', NULL, NULL, 'mythuat1.jpg', 'mythuat1.jpg', 6);
INSERT INTO `tbl_products_images` VALUES (15, NULL, NULL, b'0', NULL, NULL, 'toan1.jpg', 'toan1.jpg', 7);
INSERT INTO `tbl_products_images` VALUES (16, NULL, NULL, b'0', NULL, NULL, 'tiengviet.jpg', 'tiengviet.jpg', 8);
INSERT INTO `tbl_products_images` VALUES (17, NULL, NULL, b'0', NULL, NULL, 'mythuat1.jpg', 'mythuat1.jpg', 9);

-- ----------------------------
-- Table structure for tbl_roles
-- ----------------------------
DROP TABLE IF EXISTS `tbl_roles`;
CREATE TABLE `tbl_roles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `status` bit(1) NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `updated_date` datetime(6) NULL DEFAULT NULL,
  `description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_roles
-- ----------------------------
INSERT INTO `tbl_roles` VALUES (1, 1, '2022-04-14 22:35:29.000000', b'1', 1, '2022-04-21 22:35:34.000000', 'ADMIN', 'ADMIN');
INSERT INTO `tbl_roles` VALUES (2, 1, '2022-04-21 21:50:31.000000', b'1', 1, '2022-04-21 21:50:36.000000', 'USER', 'USER');

-- ----------------------------
-- Table structure for tbl_saleorder
-- ----------------------------
DROP TABLE IF EXISTS `tbl_saleorder`;
CREATE TABLE `tbl_saleorder`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `updated_date` datetime(6) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `customer_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `customer_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `seo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `total` decimal(13, 2) NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKbiu8ui4krw8j3gtn97w3rdq7v`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FKbiu8ui4krw8j3gtn97w3rdq7v` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_saleorder
-- ----------------------------
INSERT INTO `tbl_saleorder` VALUES (1, 1, '2022-04-15 01:31:28.000000', b'1', 1, '2022-04-21 01:31:33.000000', '2022', 'Hà Nội', 'nguyenvanan@gmail.com', 'Nguyễn An', '0987654321', '1', 250000.00, NULL);
INSERT INTO `tbl_saleorder` VALUES (10, NULL, '2022-04-24 01:50:21.413161', b'0', NULL, NULL, 'ORDER-1650739821404', 'Lào cai', 'nongvantai475@gmail.com', 'tai', '123456789', 'ORDER-1650739821412', 23000.00, NULL);
INSERT INTO `tbl_saleorder` VALUES (11, NULL, '2022-04-24 01:57:14.255608', b'1', NULL, NULL, 'ORDER-1650740234254', 'Lào cai', 'nongvantai475@gmail.com', 'tai1', '11111111111', 'ORDER-1650740234254', 23000.00, NULL);
INSERT INTO `tbl_saleorder` VALUES (12, NULL, '2022-04-24 01:57:56.252284', b'1', NULL, NULL, 'ORDER-1650740276251', 'Lào cai', 'nongvantai475@gmail.com', 'tai1', '11111111111', 'ORDER-1650740276251', 303000.00, NULL);
INSERT INTO `tbl_saleorder` VALUES (13, NULL, '2022-04-24 02:22:08.317752', b'0', NULL, NULL, 'ORDER-1650741728316', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1650741728316', 46000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (14, NULL, '2022-04-24 11:56:46.536628', b'0', NULL, NULL, 'ORDER-1650776206524', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1650776206535', 23000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (15, NULL, '2022-04-24 20:06:23.229677', b'0', NULL, NULL, 'ORDER-1650805583216', 'Lào Cai', 'heoconbuon0@gmail.com', 'Nông Ngọc Chuyên', '0985218927', 'ORDER-1650805583228', 23000.00, NULL);
INSERT INTO `tbl_saleorder` VALUES (16, NULL, '2022-04-24 20:13:18.602663', b'0', NULL, NULL, 'ORDER-1650805998601', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1650805998601', 340000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (17, NULL, '2022-04-30 14:48:08.841962', b'1', NULL, NULL, 'ORDER-1651304888835', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651304888841', 24000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (18, NULL, '2022-04-30 15:12:52.708465', b'1', NULL, NULL, 'ORDER-1651306372701', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651306372707', 26000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (19, NULL, '2022-04-30 15:22:16.485990', b'1', NULL, NULL, 'ORDER-1651306936478', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651306936484', 25000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (20, NULL, '2022-04-30 15:24:18.186010', b'1', NULL, NULL, 'ORDER-1651307058179', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651307058185', 24000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (21, NULL, '2022-04-30 15:47:05.375658', b'1', NULL, NULL, 'ORDER-1651308425368', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651308425375', 23000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (22, NULL, '2022-04-30 15:58:59.646748', b'1', NULL, NULL, 'ORDER-1651309139635', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651309139645', 22000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (23, NULL, '2022-04-30 16:05:00.507913', b'1', NULL, NULL, 'ORDER-1651309500501', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651309500506', 22000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (24, NULL, '2022-04-30 16:05:58.811482', b'1', NULL, NULL, 'ORDER-1651309558810', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651309558810', 56000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (25, NULL, '2022-04-30 16:08:21.952263', b'1', NULL, NULL, 'ORDER-1651309701945', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651309701952', 22000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (26, NULL, '2022-04-30 16:49:27.739924', b'1', NULL, NULL, 'ORDER-1651312167733', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651312167738', 23000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (27, NULL, '2022-04-30 18:10:32.933411', b'1', NULL, NULL, 'ORDER-1651317032927', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651317032932', 31000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (28, NULL, '2022-04-30 23:14:55.940131', b'1', NULL, NULL, 'ORDER-1651335295929', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651335295939', 31000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (29, NULL, '2022-04-30 23:17:50.900830', b'1', NULL, NULL, 'ORDER-1651335470900', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651335470900', 22000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (30, NULL, '2022-04-30 23:26:50.649121', b'1', NULL, NULL, 'ORDER-1651336010642', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651336010647', 22000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (31, NULL, '2022-04-30 23:30:13.422149', b'1', NULL, NULL, 'ORDER-1651336213414', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651336213421', 22000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (32, NULL, '2022-04-30 23:33:51.814171', b'0', NULL, NULL, 'ORDER-1651336431808', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651336431814', 26000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (33, NULL, '2022-04-30 23:36:26.928235', b'0', NULL, NULL, 'ORDER-1651336586919', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651336586927', 25000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (34, NULL, '2022-05-05 00:26:47.198112', b'1', NULL, NULL, 'ORDER-1651685207191', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651685207197', 24000.00, 1);
INSERT INTO `tbl_saleorder` VALUES (35, NULL, '2022-05-06 20:50:31.749321', b'1', NULL, NULL, 'ORDER-1651845031739', 'lào cai', 'nongvantai@gmail.com', 'nông tài', '01020304', 'ORDER-1651845031748', 57000.00, NULL);
INSERT INTO `tbl_saleorder` VALUES (36, NULL, '2022-05-06 20:51:24.870088', b'0', NULL, NULL, 'ORDER-1651845084869', 'Lào cai', 'nongvantai475@gmail.com', 'Quỳnh', '0987654321', 'ORDER-1651845084869', 25000.00, NULL);

-- ----------------------------
-- Table structure for tbl_saleorder_products
-- ----------------------------
DROP TABLE IF EXISTS `tbl_saleorder_products`;
CREATE TABLE `tbl_saleorder_products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `updated_date` datetime(6) NULL DEFAULT NULL,
  `quantity` int NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  `saleorder_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKnyfdau9vc46jkiwvrgj1ns85v`(`product_id` ASC) USING BTREE,
  INDEX `FKnpyir3q973iv4wq49ltw0kcrd`(`saleorder_id` ASC) USING BTREE,
  CONSTRAINT `FKnpyir3q973iv4wq49ltw0kcrd` FOREIGN KEY (`saleorder_id`) REFERENCES `tbl_saleorder` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKnyfdau9vc46jkiwvrgj1ns85v` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_saleorder_products
-- ----------------------------
INSERT INTO `tbl_saleorder_products` VALUES (1, 1, '2022-04-20 01:41:52.000000', b'1', 1, '2022-04-15 01:41:58.000000', 255, 1, 1);
INSERT INTO `tbl_saleorder_products` VALUES (11, NULL, NULL, b'1', NULL, NULL, 1, 4, 10);
INSERT INTO `tbl_saleorder_products` VALUES (12, NULL, NULL, b'1', NULL, NULL, 1, 4, 11);
INSERT INTO `tbl_saleorder_products` VALUES (13, NULL, NULL, b'1', NULL, NULL, 1, 4, 12);
INSERT INTO `tbl_saleorder_products` VALUES (14, NULL, NULL, b'1', NULL, NULL, 1, 3, 12);
INSERT INTO `tbl_saleorder_products` VALUES (15, NULL, NULL, b'1', NULL, NULL, 2, 4, 13);
INSERT INTO `tbl_saleorder_products` VALUES (16, NULL, NULL, b'1', NULL, NULL, 1, 4, 14);
INSERT INTO `tbl_saleorder_products` VALUES (17, NULL, NULL, b'1', NULL, NULL, 1, 4, 15);
INSERT INTO `tbl_saleorder_products` VALUES (18, NULL, NULL, b'1', NULL, NULL, 1, 2, 16);
INSERT INTO `tbl_saleorder_products` VALUES (19, NULL, NULL, b'1', NULL, NULL, 1, 3, 17);
INSERT INTO `tbl_saleorder_products` VALUES (20, NULL, NULL, b'1', NULL, NULL, 1, 6, 18);
INSERT INTO `tbl_saleorder_products` VALUES (21, NULL, NULL, b'1', NULL, NULL, 1, 2, 19);
INSERT INTO `tbl_saleorder_products` VALUES (22, NULL, NULL, b'1', NULL, NULL, 1, 3, 20);
INSERT INTO `tbl_saleorder_products` VALUES (23, NULL, NULL, b'1', NULL, NULL, 1, 4, 21);
INSERT INTO `tbl_saleorder_products` VALUES (24, NULL, NULL, b'1', NULL, NULL, 1, 8, 22);
INSERT INTO `tbl_saleorder_products` VALUES (25, NULL, NULL, b'1', NULL, NULL, 1, 8, 23);
INSERT INTO `tbl_saleorder_products` VALUES (26, NULL, NULL, b'1', NULL, NULL, 1, 2, 24);
INSERT INTO `tbl_saleorder_products` VALUES (27, NULL, NULL, b'1', NULL, NULL, 1, 7, 24);
INSERT INTO `tbl_saleorder_products` VALUES (28, NULL, NULL, b'1', NULL, NULL, 1, 8, 25);
INSERT INTO `tbl_saleorder_products` VALUES (29, NULL, NULL, b'1', NULL, NULL, 1, 4, 26);
INSERT INTO `tbl_saleorder_products` VALUES (30, NULL, NULL, b'1', NULL, NULL, 1, 7, 27);
INSERT INTO `tbl_saleorder_products` VALUES (31, NULL, NULL, b'1', NULL, NULL, 1, 7, 28);
INSERT INTO `tbl_saleorder_products` VALUES (32, NULL, NULL, b'1', NULL, NULL, 1, 1, 29);
INSERT INTO `tbl_saleorder_products` VALUES (33, NULL, NULL, b'1', NULL, NULL, 1, 8, 30);
INSERT INTO `tbl_saleorder_products` VALUES (34, NULL, NULL, b'1', NULL, NULL, 1, 8, 31);
INSERT INTO `tbl_saleorder_products` VALUES (35, NULL, NULL, b'1', NULL, NULL, 1, 6, 32);
INSERT INTO `tbl_saleorder_products` VALUES (36, NULL, NULL, b'1', NULL, NULL, 1, 2, 33);
INSERT INTO `tbl_saleorder_products` VALUES (37, NULL, NULL, b'1', NULL, NULL, 1, 3, 34);
INSERT INTO `tbl_saleorder_products` VALUES (38, NULL, NULL, b'1', NULL, NULL, 1, 6, 35);
INSERT INTO `tbl_saleorder_products` VALUES (39, NULL, NULL, b'1', NULL, NULL, 1, 7, 35);
INSERT INTO `tbl_saleorder_products` VALUES (40, NULL, NULL, b'1', NULL, NULL, 1, 2, 36);

-- ----------------------------
-- Table structure for tbl_users
-- ----------------------------
DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `updated_date` datetime(6) NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gender` bit(1) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_users
-- ----------------------------
INSERT INTO `tbl_users` VALUES (1, 1, '2022-04-20 22:35:57.000000', b'1', 1, '2022-04-21 22:36:05.000000', 'Lào cai', 'a', 'nongvantai475@gmail.com', 'Như Mai', b'1', 'Quỳnh', '$2a$10$B.SDshEcdcbw7s6ddFo6/.TkY.mQvY3Z7ZzZ5aLrR3AlfB0vHiK1G', '0987654321', 'quynhnhu');
INSERT INTO `tbl_users` VALUES (2, 1, '2022-04-21 21:44:11.000000', b'1', 1, '2022-04-22 21:44:15.000000', 'Lào cai', 'a', 'convit4@gmail.com', 'Hoa Chanh', b'1', 'Hoàng', '$2a$10$B.SDshEcdcbw7s6ddFo6/.TkY.mQvY3Z7ZzZ5aLrR3AlfB0vHiK1G', '0987987987', 'hoachanh');
INSERT INTO `tbl_users` VALUES (3, NULL, '2022-05-11 19:40:15.757094', b'1', NULL, NULL, 'Lào cai', 'a', 'Conga3@gmail.com', 'Tiểu Long', b'0', 'Nữ', '$2a$10$5aEguP62HKIL9hCaG0t9XeND.3926TUSB0/bm67UKaXnhuHcrP3kW', '1234567890', 'longnu');
INSERT INTO `tbl_users` VALUES (4, NULL, '2022-05-11 19:41:55.228511', b'1', NULL, NULL, 'việt nam', 'avt.jpg', 'vagofo3529@veb34.com', 'Nguyễn', b'0', 'tuan tran van', 'convit', '1234523456', 'longnu1');

-- ----------------------------
-- Table structure for tbl_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `tbl_users_roles`;
CREATE TABLE `tbl_users_roles`  (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  INDEX `FK9759r6hlfhyhtv3e7eppsldx9`(`user_id` ASC) USING BTREE,
  INDEX `FKjx9up05623t9hyre3gu4ch7eb`(`role_id` ASC) USING BTREE,
  CONSTRAINT `FK9759r6hlfhyhtv3e7eppsldx9` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKjx9up05623t9hyre3gu4ch7eb` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_users_roles
-- ----------------------------
INSERT INTO `tbl_users_roles` VALUES (1, 1);
INSERT INTO `tbl_users_roles` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
