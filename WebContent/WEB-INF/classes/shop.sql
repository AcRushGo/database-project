/*

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

*/
use shop;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (2, 'admin', 'tuShOfiBrA8+br7ENrMS8A==');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面',
  `image1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '细节图片1',
  `image2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '细节图片2',
  `price` int(11) NULL DEFAULT NULL COMMENT '价格',
  `price1` int(11) NULL DEFAULT NULL COMMENT '价格',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `stock` int(11) NULL DEFAULT 0 COMMENT '库存',
  `type_id` int(11) NULL DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods 2是电子配件 4是电脑 5是手机
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'iPhone 11', '/picture/mobile/iphone11.jpg', '/picture/mobile/iphone11.jpg', '/picture/mobile/iphone11.jpg', 5499,5999, 'A13仿生,6.1英寸LCD屏', 5, 5);
INSERT INTO `goods` VALUES (2, 'iPhone 11 Pro', '/picture/mobile/iphone11pro.jpg', '/picture/mobile/iphone11pro.jpg', '/picture/mobile/iphone11pro.jpg', 8699,8899, 'A13仿生,5.8英寸OLED屏', 5, 5);
INSERT INTO `goods` VALUES (3, '华为Mate30 Pro', '/picture/mobile/hwmate30pro.jpg', '/picture/mobile/hwmate30pro.jpg', '/picture/mobile/hwmate30pro.jpg', 6369,7000, '八核CPU，8GB RAM', 5, 5);
INSERT INTO `goods` VALUES (4, '华为P40 Pro', '/picture/mobile/hwp40pro.jpg', '/picture/mobile/hwp40pro.jpg', '/picture/mobile/hwp40pro.jpg', 5988, 6288,'徕卡四摄 麒麟990 5G 40W快充', 5, 5);
INSERT INTO `goods` VALUES (5, '小米10', '/picture/mobile/xmmi10.jpg', '/picture/mobile/xmmi10.jpg', '/picture/mobile/xmmi10.jpg', 4808,5208, '骁龙865，后置1亿像素四摄，前置2000万像素单摄', 5, 5);
INSERT INTO `goods` VALUES (6, '小米10 Pro', '/picture/mobile/xmmi10pro5G.jpg', '/picture/mobile/xmmi10pro5G.jpg', '/picture/mobile/xmmi10pro5G.jpg', 4999,5355, '骁龙865, 6.67英寸', 5, 5);
INSERT INTO `goods` VALUES (7, 'OPPO Find X2 Pro', '/picture/mobile/OPPO Find X2 Pro.png', '/picture/mobile/OPPO Find X2 Pro.png', '/picture/mobile/OPPO Find X2 Pro.png', 2999, 3200,'双模5G 超级夜景视频 视频防抖3.0 65W超级闪充 6.4英寸', 5, 5);
INSERT INTO `goods` VALUES (8, 'OPPO Reno4', '/picture/mobile/OPPO Reno4.png', '/picture/mobile/OPPO Reno4.png', '/picture/mobile/OPPO Reno4.png', 5499,5700, 'A13仿生,6.1英寸LCD屏', 5, 5);
INSERT INTO `goods` VALUES (9, 'Vivo iQOO Z1', '/picture/mobile/vivo iQOO Z1.png', '/picture/mobile/vivo iQOO Z1.png', '/picture/mobile/vivo iQOO Z1.png', 2488, 2988,'天玑1000Plus旗舰芯片 5G双卡双待,SA&NSA双模', 5, 5);
INSERT INTO `goods` VALUES (10, 'Vivo X50 Pro', '/picture/mobile/vivo X50 Pro.png', '/picture/mobile/vivo X50 Pro.png', '/picture/mobile/vivo X50 Pro.png', 4298, 4600,'微云台超感光主摄 超感光夜摄 超稳运动拍摄 90H 6.56英寸', 5, 5);

INSERT INTO `goods` VALUES (11, '戴尔 新G3', '/picture/pc/戴尔 新G3.png', '/picture/pc/戴尔 新G3.png', '/picture/pc/戴尔 新G3.png', 5699,6000, '英特尔 酷睿 i7-10750H,256G固态硬盘', 5, 4);
INSERT INTO `goods` VALUES (12, '戴尔成就5000', '/picture/pc/戴尔成就5000.png', '/picture/pc/戴尔成就5000.png', '/picture/pc/戴尔成就5000.png', 5099,5500, '英特尔 酷睿 i7-10510U, 512G固态硬盘', 5, 4);
INSERT INTO `goods` VALUES (13, '惠普星系列十代', '/picture/pc/惠普星系列十代.png', '/picture/pc/惠普星系列十代.png', '/picture/pc/惠普星系列十代.png', 4799, 5000,'英特尔 酷睿 i5-1035G1, 512G固态硬盘', 5, 4);
INSERT INTO `goods` VALUES (14, '拯救者Y7000', '/picture/pc/拯救者Y7000.png', '/picture/pc/拯救者Y7000.png', '/picture/pc/拯救者Y7000.png', 5299, 5899,'英特尔 酷睿 i7-10750H,16GB内存', 5, 4);

INSERT INTO `goods` VALUES (15, 'THOR雷神', '/picture/others/THOR雷神.png', '/picture/others/THOR雷神.png', '/picture/others/THOR雷神.png', 1799, 2399,'1200W电源', 5, 2);
INSERT INTO `goods` VALUES (16, 'STRIX雷鹰', '/picture/others/STRIX雷鹰.png', '/picture/others/STRIX雷鹰.png', '/picture/others/STRIX雷鹰.png', 799, 1200,'750W电源', 5, 2);

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) NULL DEFAULT NULL COMMENT '购买时价格',
  `amount` int(11) NULL DEFAULT NULL COMMENT '购买数量',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '订单id',
  `good_id` int(11) NULL DEFAULT NULL COMMENT '物品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES (1, 11, 1, 1, 4);
INSERT INTO `items` VALUES (2, 30, 1, 2, 3);
INSERT INTO `items` VALUES (3, 40, 1, 3, 6);
INSERT INTO `items` VALUES (4, 5, 1, 4, 12);
INSERT INTO `items` VALUES (5, 80, 1, 5, 5);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` int(11) NOT NULL DEFAULT 0 COMMENT '总价',
  `amount` int(11) NOT NULL DEFAULT 0 COMMENT '商品总数',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '订单状态(1未付款/2已付款/3已发货/4已完成)',
  `paytype` tinyint(4) NOT NULL DEFAULT 0 COMMENT '支付方式 (1微信/2支付宝/3货到付款)',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `systime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '下单时间',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '下单用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------


-- ----------------------------
-- Table structure for tops
-- ----------------------------
DROP TABLE IF EXISTS `tops`;
CREATE TABLE `tops`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '推荐类型(1条幅/2大图/3小图)',
  `good_id` int(11) NULL DEFAULT NULL COMMENT '物品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '首页推荐商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tops
-- ----------------------------
INSERT INTO `tops` VALUES (1, 2, 12);
INSERT INTO `tops` VALUES (15, 2, 11);
INSERT INTO `tops` VALUES (22, 3, 5);
INSERT INTO `tops` VALUES (24, 3, 4);
INSERT INTO `tops` VALUES (25, 2, 6);
INSERT INTO `tops` VALUES (29, 3, 13);
INSERT INTO `tops` VALUES (30, 3, 12);
INSERT INTO `tops` VALUES (33, 3, 2);
INSERT INTO `tops` VALUES (34, 3, 1);
INSERT INTO `tops` VALUES (37, 1, 14);
INSERT INTO `tops` VALUES (38, 2, 14);
INSERT INTO `tops` VALUES (40, 2, 13);
INSERT INTO `tops` VALUES (41, 2, 5);
INSERT INTO `tops` VALUES (42, 2, 4);
INSERT INTO `tops` VALUES (43, 2, 3);
INSERT INTO `tops` VALUES (44, 2, 2);
INSERT INTO `tops` VALUES (45, 2, 1);

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES (2, '电子配件系列');
INSERT INTO `types` VALUES (4, '电脑系列');
INSERT INTO `types` VALUES (5, '手机系列');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------


SET FOREIGN_KEY_CHECKS = 1;
