/*
 Navicat Premium Dump SQL

 Source Server         : 比希测试
 Source Server Type    : MySQL
 Source Server Version : 80027 (8.0.27)
 Source Host           : 118.31.53.69:3336
 Source Schema         : car-sales

 Target Server Type    : MySQL
 Target Server Version : 80027 (8.0.27)
 File Encoding         : 65001

 Date: 11/04/2025 21:53:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pms_brand
-- ----------------------------
DROP TABLE IF EXISTS `pms_brand`;
CREATE TABLE `pms_brand`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_letter` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首字母',
  `sort` int NULL DEFAULT NULL,
  `factory_status` int NULL DEFAULT NULL COMMENT '是否为品牌制造商：0->不是；1->是',
  `show_status` int NULL DEFAULT NULL,
  `product_count` int NULL DEFAULT NULL COMMENT '产品数量',
  `product_comment_count` int NULL DEFAULT NULL COMMENT '产品评论数量',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌logo',
  `big_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专区大图',
  `brand_story` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '品牌故事',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '品牌表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pms_brand
-- ----------------------------
INSERT INTO `pms_brand` VALUES (1, '奔驰', 'M', 0, 1, 1, NULL, NULL, 'http://118.31.53.69:9050/car/20250401/84c01ab4bb1f55a4809781b3a16586ff~80x0.webp', 'http://118.31.53.69:9050/car/20250401/4870355.jpg', '梅赛德斯-奔驰（Mercedes-Benz），德国汽车品牌，被认为是世界上最成功的高档汽车品牌之一。其技术水平、质量标准、创新能力、以及一系列经典车款式令人称道。在国际上，该品牌通常被简称为梅赛德斯（Mercedes），而中国内地称其为“奔驰”，中国台湾译为“宾士”，中国香港译为“平治”。\n自1900年12月22日戴姆勒汽车公司（Daimler-Motoren-Gesellschaft，DMG）向其客户献上了世界上第一辆以梅赛德斯（Mercedes）为品牌的轿车开始，奔驰汽车就成为汽车工业的楷模。其品牌标志已成为世界上最著名的汽车品牌标志之一，100多年来，奔驰品牌一直是汽车技术创新的先驱者。1886年1月29日，两位德国人卡尔·本茨和戈特利布·戴姆勒获得世界上第一辆汽车的专利权，标志着世界上第一辆汽车诞生。随后这一天就被人们称为汽车诞生日。一百多年过去了，奔驰汽车早已度过了他的百岁寿辰，而在这一百多年来，随着汽车工业的蓬勃发展，曾涌现出很多的汽车厂家，也有显赫一时的，但最终不过是昙花一现。');
INSERT INTO `pms_brand` VALUES (2, '小米汽车', 'X', 1, 1, 1, NULL, NULL, 'http://118.31.53.69:9050/car/20250331/156474379ad54254b56100afd6a0c913~72x0.webp', 'http://118.31.53.69:9050/car/20250401/006e4jP1ly4gp5kw6uqfij30tz0i5dgd.jpg', '小米汽车成立于2021年9月。小米汽车是小米集团运营的有关智能电动汽车制造的业务。该业务下设两个公司，分别为小米汽车有限公司与小米汽车科技有限公司。');
INSERT INTO `pms_brand` VALUES (3, '大众', 'V', 2, 1, 1, NULL, NULL, 'http://118.31.53.69:9050/car/20250331/4996e29dcd17429295d06275864a207b~72x0.webp', 'http://118.31.53.69:9050/car/20250401/5846254.jpg', '大众汽车（德文Volks Wagenwerk），意为大众使用的汽车，汽车的标志历史曾发生过多次变化。标志中的VW为全称中头一个字母。标志象是由三个用中指和食指作出的“V”组成，表示大众公司及其产品必胜－必胜－必胜。');
INSERT INTO `pms_brand` VALUES (4, '宝马', 'B', 3, 1, 1, NULL, NULL, 'http://118.31.53.69:9050/car/20250401/4867710a834bd648ba55797ba5e37f14~80x0.webp', 'http://118.31.53.69:9050/car/20250401/u=593623804,51735952&fm=253&fmt=auto&app=120&f=PNG.webp', '宝马也被译为（巴依尔），是指宝马汽车公司(Bayerische Motoren Werke AG，简称BMW)生产的汽车，正式全称为巴伐利亚机械制造厂股份公司，是驰名世界的汽车企业，也被认为是高档汽车生产业的先导，主要的系列车型有1、2、3、4、5、6、7、8、i、X、Z等系列。');
INSERT INTO `pms_brand` VALUES (5, '保时捷', 'P', 4, 1, 1, NULL, NULL, 'http://118.31.53.69:9050/car/20250331/71c1924f23c8.png', 'http://118.31.53.69:9050/car/20250331/u=331987120,3818422946&fm=253&fmt=auto&app=120&f=JPEG.webp', '保时捷(Porsche)是世界著名的高端汽车企业，以开发、生产和营销豪华跑车和运动型越野车为主，其总部位于德国斯图加特市，由费迪南德·保时捷(Ferdinand Porsche)创办。保时捷一直努力将种种可能性与看似不太可能的东西相组合，而今对于跑车而言，“保时捷”无异于一个全球意义上的代名词。为了践履“造型完美时，性能就会伴随而至”的“纯种跑车”造车工艺精神，费迪南德·保时捷于五十五岁时离开了福斯，自立门户，却因此而造就了跑车的不朽巨人——保时捷。');
INSERT INTO `pms_brand` VALUES (6, '奥迪', 'A', 0, 1, 1, NULL, NULL, 'http://118.31.53.69:9050/car/20250401/111.webp', 'http://118.31.53.69:9050/car/20250401/731c83db8d2ff01.jpg', '       奥迪，这个全球豪华汽车品牌，拥有着一段充满挑战与机遇的品牌历史。它的故事始于德国小城——因戈尔施塔特。这个看似平凡的地方，却孕育出了奥迪这个全球豪华汽车巨头。\n\n       因戈尔施塔特，一个典型的小城，有着悠久的历史和深厚的文化底蕴。1909年，这里诞生了一个名为奥古斯特·霍希（August Horch）的男人，他以对汽车技术的热情和对完美的追求，创立了一家名为“Audi”的公司。最初，Audi这个名字是从拉丁词“听”衍生而来的，意指“听”到发动机的声音。\n\n       霍希先生是一个极具创新精神的企业家，他对汽车有着独特的见解。然而，在一战期间，他的公司被迫停业。1915年，霍希先生离开了自己的公司，并另起炉灶，建立了新的汽车公司——Horch & Cie。但是，1924年，霍希先生被迫离开了他自己创建的公司。\n       \n       尽管经历了种种挫折，霍希先生并没有放弃他的梦想。1928年，他与另外两位工程师——亚历山大·克洛特（Alexander Coutlon）和马克斯·弗里茨（Max Friz）一起重建了奥迪公司。他们将奥迪打造成了一家集设计与制造于一体的汽车公司。\n       \n       1933年，奥迪推出了一款具有革命性的车型——Audi Type C。这款车采用了新型的空气动力学设计，极大地提高了行驶速度和燃油效率。这款车的成功让奥迪在全球汽车界崭露头角。\n\n       二战结束后，奥迪公司经历了一段时间的低迷。然而，随着时间的推移，奥迪逐渐恢复了生机。1950年代初，奥迪推出了多款经典车型，如Audi 50和Audi 75等。这些车型不仅在设计上独具匠心，而且在性能和质量上也得到了高度评价。\n\n       1960年代末，奥迪推出了其代表作——Audi 80。这款车以其流线型设计和卓越的性能迅速风靡全球。随后，奥迪又推出了Audi Quattro、Audi S4等一系列经典车型，进一步巩固了其在全球汽车市场的地位。\n\n        进入1980年代，奥迪开始向豪华车领域进军。1982年，奥迪推出了其首款豪华车型——Audi 100。这款车以其卓越的性能和豪华的内饰赢得了全球消费者的青睐。此后，奥迪不断推出新产品，不断巩固其在豪华车市场的地位。\n\n       1990年代末，奥迪开始涉足赛车领域。2000年代初，奥迪在勒芒24小时耐力赛中取得了辉煌的成就。2000年至2010年间，奥迪在勒芒赛场上连续9次夺冠，这充分证明了奥迪在汽车制造领域的卓越实力和前瞻思维。\n\n       进入21世纪，奥迪逐渐发展成为一家全球领先的豪华汽车品牌。它以其卓越的产品质量、创新的技术以及独特的品牌形象赢得了全球消费者的喜爱。同时，奥迪还通过与一汽合作，进入了中国这个全球最大的汽车市场，进一步扩大了其市场份额。\n\n       今天，奥迪已经走过了近百年的历程，它的成功故事仍在继续。未来，我们期待看到奥迪继续引领汽车行业的创新潮流，为我们带来更多卓越的汽车产品和服务。');

-- ----------------------------
-- Table structure for pms_comment
-- ----------------------------
DROP TABLE IF EXISTS `pms_comment`;
CREATE TABLE `pms_comment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint NULL DEFAULT NULL COMMENT '用户id',
  `member_nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论用户头像',
  `product_id` bigint NULL DEFAULT NULL COMMENT '汽车id',
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `star` int NULL DEFAULT 0 COMMENT '评价星数：0->5',
  `show_status` int NULL DEFAULT NULL,
  `read_count` int NULL DEFAULT 0 COMMENT '点赞数',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pics` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传图片地址，以逗号隔开',
  `replay_count` int NULL DEFAULT 0,
  `create_time` datetime NULL DEFAULT NULL,
  `up_self` int NULL DEFAULT 0 COMMENT '自己点赞（0-否，1-是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品评价表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pms_comment
-- ----------------------------
INSERT INTO `pms_comment` VALUES (1, 12, 'admin', NULL, 1, '小米SU7', 0, NULL, 1, '商品收到了，79元两件，质量不错，试了一下有点瘦，但是加个外罩很漂亮，我很喜欢', NULL, 0, '2025-04-06 23:27:16', 1);
INSERT INTO `pms_comment` VALUES (2, 12, NULL, NULL, 1, NULL, NULL, NULL, 0, '111', NULL, NULL, '2025-04-07 01:53:52', 0);
INSERT INTO `pms_comment` VALUES (3, 12, 'admin', NULL, 1, '小米SU7', 0, 1, 0, '222', NULL, 0, '2025-04-07 02:07:22', 0);
INSERT INTO `pms_comment` VALUES (4, 12, 'admin', NULL, 1, '小米SU7', 0, 1, 0, '33', NULL, 0, '2025-04-07 02:07:41', 0);
INSERT INTO `pms_comment` VALUES (5, 12, 'admin', NULL, 1, '小米SU7', 0, 1, 0, '334444', NULL, 0, '2025-04-07 02:07:57', 0);
INSERT INTO `pms_comment` VALUES (6, 12, 'admin', NULL, 1, '小米SU7', 0, 1, 0, '3344445555', NULL, 0, '2025-04-07 02:08:01', 0);
INSERT INTO `pms_comment` VALUES (7, 12, 'admin', NULL, 1, '小米SU7', 0, 1, 0, '3344445555666', NULL, 0, '2025-04-07 02:08:06', 0);
INSERT INTO `pms_comment` VALUES (8, 12, 'admin', NULL, 1, '小米SU7', 0, 1, 0, '7777', NULL, 0, '2025-04-07 02:08:25', 0);
INSERT INTO `pms_comment` VALUES (9, 12, 'admin', NULL, 1, '小米SU7', 0, 1, 0, ';888', NULL, 0, '2025-04-07 02:08:34', 0);
INSERT INTO `pms_comment` VALUES (10, 12, 'admin', NULL, 1, '小米SU7', 0, 1, 0, '1234567u', NULL, 0, '2025-04-07 02:10:36', 0);

-- ----------------------------
-- Table structure for pms_product
-- ----------------------------
DROP TABLE IF EXISTS `pms_product`;
CREATE TABLE `pms_product`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `brand_id` bigint NULL DEFAULT NULL,
  `product_category_id` bigint NULL DEFAULT NULL,
  `product_attribute_category_id` bigint NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delete_status` int NULL DEFAULT NULL COMMENT '删除状态：0->未删除；1->已删除',
  `publish_status` int NULL DEFAULT NULL COMMENT '上架状态：0->下架；1->上架',
  `new_status` int NULL DEFAULT NULL COMMENT '新品状态:0->不是新品；1->新品',
  `recommand_status` int NULL DEFAULT NULL COMMENT '推荐状态；0->不推荐；1->推荐',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品描述',
  `unit` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品重量，默认为千克',
  `preview_status` int NULL DEFAULT NULL COMMENT '是否为预告商品：0->不是；1->是',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `album_pics` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '画册图片，连产品图片限制为5张，以逗号分割',
  `detail_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `detail_html` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '产品详情网页内容',
  `detail_mobile_html` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '移动端网页详情',
  `brand_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌名称',
  `product_category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pms_product
-- ----------------------------
INSERT INTO `pms_product` VALUES (1, 2, 2, 1, '小米SU7', 'http://118.31.53.69:9050/car/20250402/e2db791a75011016862766a47a2f59d4~2508x0.webp', 0, 1, 1, 1, 0, 215900.00, '2024款 后驱标准长续航智驾版', '小米SU7标准版', '辆', 1980.00, 1, '', '', 'http://118.31.53.69:9050/car/20250402/e9cad4f0af154c27dc7dcca735d2a632~2508x0.webp,http://118.31.53.69:9050/car/20250402/e8ad7e6d1d6e09bb16eb4c3795ae142d~2508x0.webp', '', '', '<p class=\"mt-xl-16 md:mt-sm-12\">三年打磨，满怀敬畏之心</p>\n<p class=\"mt-xl-16 md:mt-sm-12\">十倍投入，自研关键技术</p>\n<p class=\"mt-xl-16 md:mt-sm-12\">融汇优雅设计、澎湃性能与生态科技</p>\n<p class=\"mt-xl-16 md:mt-sm-12\">C 级豪华科技轿车</p>\n<p class=\"mt-xl-16 md:mt-sm-12\">人车合一，我心澎湃</p>', '<p><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/su7_m_4_1.jpg\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/section_4_2.jpg\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/su7_m_4_3.jpg\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/su7_32_1_m.jpg\" /></p>', '小米汽车', '中大型车');
INSERT INTO `pms_product` VALUES (2, 5, 5, 3, '保时捷 Panamera', 'http://118.31.53.69:9050/car/20250402/iris.webp', 0, 1, 1, 1, 0, 1138000.00, '保时捷 Panamera 2026款', '激动人心的愿景总是值得为之奋斗。这是一款真正的四座跑车，兼具出色的性能和舒适度。许多人认为这不可能，还有人称之为勇气可嘉。', '', 2000.00, 1, '', '', 'http://118.31.53.69:9050/car/20250402/iris (1).webp,http://118.31.53.69:9050/car/20250402/iris (2).webp,http://118.31.53.69:9050/car/20250402/iris (3).webp', '', '', '<p><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/1.webp\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/2.webp\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/3.webp\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/4.webp\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/5.webp\" /></p>', '<p><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/1.webp\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/2.webp\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/3.webp\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/4.webp\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/5.webp\" /></p>', '保时捷', '中大型车');
INSERT INTO `pms_product` VALUES (3, 6, 5, 1, 'RS 7 Sportback performance', 'http://118.31.53.69:9050/car/20250402/555.webp', 0, 1, 1, 1, 0, 1468800.00, '奥迪 RS 7 Sportback performance', '性能车', '', 0.00, 0, '', '', 'http://118.31.53.69:9050/car/20250402/111.webp,http://118.31.53.69:9050/car/20250402/222.webp,http://118.31.53.69:9050/car/20250402/333.webp,http://118.31.53.69:9050/car/20250402/444.webp', '', '', '', '<p><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/mob04-1_rs7.jpg\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/mob04-2_rs7-1.jpg\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/mob04-3_rs7-1.jpg\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/mob05_rs7-1.jpg\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/mob06_rs7.jpg\" /><img class=\"wscnph\" src=\"http://118.31.53.69:9050/car/20250407/mob02_rs7.jpg\" /></p>', '奥迪', '中大型车');

-- ----------------------------
-- Table structure for pms_product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_attribute`;
CREATE TABLE `pms_product_attribute`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_attribute_category_id` bigint NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `select_type` int NULL DEFAULT NULL COMMENT '属性选择类型：0->唯一；1->单选；2->多选',
  `input_type` int NULL DEFAULT NULL COMMENT '属性录入方式：0->手工录入；1->从列表中选取',
  `input_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可选值列表，以逗号隔开',
  `sort` int NULL DEFAULT NULL COMMENT '排序字段：最高的可以单独上传图片',
  `filter_type` int NULL DEFAULT NULL COMMENT '分类筛选样式：1->普通；1->颜色',
  `search_type` int NULL DEFAULT NULL COMMENT '检索类型；0->不需要进行检索；1->关键字检索；2->范围检索',
  `related_status` int NULL DEFAULT NULL COMMENT '相同属性产品是否关联；0->不关联；1->关联',
  `hand_add_status` int NULL DEFAULT NULL COMMENT '是否支持手动新增；0->不支持；1->支持',
  `type` int NULL DEFAULT NULL COMMENT '属性的类型；0->规格；1->参数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品属性参数表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pms_product_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for pms_product_attribute_category
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_attribute_category`;
CREATE TABLE `pms_product_attribute_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attribute_count` int NULL DEFAULT 0 COMMENT '属性数量',
  `param_count` int NULL DEFAULT 0 COMMENT '参数数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品属性分类表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pms_product_attribute_category
-- ----------------------------
INSERT INTO `pms_product_attribute_category` VALUES (1, '国产', 0, 0);
INSERT INTO `pms_product_attribute_category` VALUES (2, '日系', 0, 0);
INSERT INTO `pms_product_attribute_category` VALUES (3, '德系', 0, 0);
INSERT INTO `pms_product_attribute_category` VALUES (4, '二手车', 0, 0);
INSERT INTO `pms_product_attribute_category` VALUES (5, '汽油', 0, 0);
INSERT INTO `pms_product_attribute_category` VALUES (6, '柴油', 0, 0);
INSERT INTO `pms_product_attribute_category` VALUES (7, '油电混合', 0, 0);
INSERT INTO `pms_product_attribute_category` VALUES (8, '纯电动', 0, 0);
INSERT INTO `pms_product_attribute_category` VALUES (9, '增程式', 0, 0);
INSERT INTO `pms_product_attribute_category` VALUES (10, '插电混合动力', 0, 0);

-- ----------------------------
-- Table structure for pms_product_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_attribute_value`;
CREATE TABLE `pms_product_attribute_value`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NULL DEFAULT NULL,
  `product_attribute_id` bigint NULL DEFAULT NULL,
  `value` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手动添加规格或参数的值，参数单值，规格有多个时以逗号隔开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储产品参数信息的表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pms_product_attribute_value
-- ----------------------------

-- ----------------------------
-- Table structure for pms_product_category
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_category`;
CREATE TABLE `pms_product_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint NULL DEFAULT NULL COMMENT '上机分类的编号：0表示一级分类',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL COMMENT '分类级别：0->1级；1->2级',
  `product_count` int NULL DEFAULT NULL,
  `product_unit` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nav_status` int NULL DEFAULT NULL COMMENT '是否显示在导航栏：0->不显示；1->显示',
  `show_status` int NULL DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
  `sort` int NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pms_product_category
-- ----------------------------
INSERT INTO `pms_product_category` VALUES (2, 0, '轿车', 0, 0, '辆', 1, 1, 1, 'http://118.31.53.69:9050/car/20250331/轿车.png', '轿车', '轿车');
INSERT INTO `pms_product_category` VALUES (3, 0, 'SUV', 0, 0, '辆', 1, 1, 1, 'http://118.31.53.69:9050/car/20250331/SUV.png', 'SUV', 'SUV');
INSERT INTO `pms_product_category` VALUES (4, 0, 'MPV', 0, 0, '辆', 1, 1, 1, 'http://118.31.53.69:9050/car/20250331/MPV.png', 'MPV', 'MPV');
INSERT INTO `pms_product_category` VALUES (5, 0, '跑车', 0, 0, '辆', 1, 1, 1, 'http://118.31.53.69:9050/car/20250331/跑车.png', '跑车', '跑车');
INSERT INTO `pms_product_category` VALUES (6, 0, '皮卡', 0, 0, '辆', 1, 1, 1, 'http://118.31.53.69:9050/car/20250331/皮卡.png', '皮卡', '皮卡');
INSERT INTO `pms_product_category` VALUES (7, 0, '微面', 0, 0, '辆', 1, 1, 1, 'http://118.31.53.69:9050/car/20250331/微面.png', '微面', '微面');
INSERT INTO `pms_product_category` VALUES (8, 0, '微卡', 0, 0, '辆', 1, 1, 1, 'http://118.31.53.69:9050/car/20250331/微卡.png', '微卡', '微卡');
INSERT INTO `pms_product_category` VALUES (9, 0, '轻客', 0, 0, '辆', 1, 1, 1, 'http://118.31.53.69:9050/car/20250331/轻客.png', '轻客', '轻客');

-- ----------------------------
-- Table structure for pms_product_category_attribute_relation
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_category_attribute_relation`;
CREATE TABLE `pms_product_category_attribute_relation`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint NULL DEFAULT NULL,
  `product_attribute_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品的分类和属性的关系表，用于设置分类筛选条件（只支持一级分类）' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pms_product_category_attribute_relation
-- ----------------------------

-- ----------------------------
-- Table structure for sms_home_advertise
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_advertise`;
CREATE TABLE `sms_home_advertise`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL COMMENT '轮播位置：0->PC首页轮播；1->app首页轮播',
  `pic` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` datetime NULL DEFAULT NULL,
  `end_time` datetime NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL COMMENT '上下线状态：0->下线；1->上线',
  `click_count` int NULL DEFAULT NULL COMMENT '点击数',
  `order_count` int NULL DEFAULT NULL COMMENT '下单数',
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` int NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '首页轮播广告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sms_home_advertise
-- ----------------------------
INSERT INTO `sms_home_advertise` VALUES (2, '奔驰全新CLE轿跑', 1, 'http://118.31.53.69:9050/car/20250401/banner3.png', '2025-04-01 14:52:40', '2025-12-31 14:52:46', 1, 0, 0, '/pages/brand/brandDetail?id=1', '奔驰全新CLE轿跑', 0);
INSERT INTO `sms_home_advertise` VALUES (3, '小米SU7 Urtal', 1, 'http://118.31.53.69:9050/car/20250401/banner2.png', '2025-04-01 14:57:58', '2025-09-30 14:58:00', 1, 0, 0, '/pages/brand/brandDetail?id=2', '', 0);
INSERT INTO `sms_home_advertise` VALUES (4, '奥迪RS7', 1, 'http://118.31.53.69:9050/car/20250401/banner1.png', '2025-04-01 15:00:00', '2025-10-31 15:00:02', 1, 0, 0, '/pages/brand/brandDetail?id=6', '', 0);
INSERT INTO `sms_home_advertise` VALUES (12, '保时捷', 1, 'http://118.31.53.69:9050/car/20250401/banner5.png', '2025-04-01 15:11:13', '2025-08-30 15:11:15', 1, 0, 0, '/pages/brand/brandDetail?id=5', NULL, 0);
INSERT INTO `sms_home_advertise` VALUES (13, '宝马', 1, 'http://118.31.53.69:9050/car/20250401/banner6.png', '2025-04-01 15:11:53', '2025-10-31 15:11:56', 1, 0, 0, '/pages/brand/brandDetail?id=4', NULL, 0);

-- ----------------------------
-- Table structure for sms_home_brand
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_brand`;
CREATE TABLE `sms_home_brand`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `brand_id` bigint NULL DEFAULT NULL,
  `brand_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recommend_status` int NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '首页推荐品牌表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sms_home_brand
-- ----------------------------
INSERT INTO `sms_home_brand` VALUES (1, 6, '奥迪', 1, 0);
INSERT INTO `sms_home_brand` VALUES (2, 5, '保时捷', 1, 0);
INSERT INTO `sms_home_brand` VALUES (3, 2, '小米汽车', 1, 0);

-- ----------------------------
-- Table structure for sms_home_new_product
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_new_product`;
CREATE TABLE `sms_home_new_product`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NULL DEFAULT NULL,
  `product_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recommend_status` int NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新鲜好物表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sms_home_new_product
-- ----------------------------
INSERT INTO `sms_home_new_product` VALUES (1, 1, '小米SU7', 1, 0);
INSERT INTO `sms_home_new_product` VALUES (2, 2, '保时捷 Panamera', 1, 0);

-- ----------------------------
-- Table structure for sms_home_recommend_product
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_recommend_product`;
CREATE TABLE `sms_home_recommend_product`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NULL DEFAULT NULL,
  `product_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recommend_status` int NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '人气推荐商品表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sms_home_recommend_product
-- ----------------------------
INSERT INTO `sms_home_recommend_product` VALUES (1, 1, '小米SU7', 1, 0);
INSERT INTO `sms_home_recommend_product` VALUES (2, 2, '保时捷 Panamera', 1, 0);

-- ----------------------------
-- Table structure for ums_admin
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin`;
CREATE TABLE `ums_admin`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `nick_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `login_time` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `status` int NULL DEFAULT 1 COMMENT '帐号启用状态：0->禁用；1->启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ums_admin
-- ----------------------------
INSERT INTO `ums_admin` VALUES (3, 'admin', '$2a$10$vMawXdmtVxlesW9X3emYje5xL.pnIzwB9ebvR9jZvciHuMsJCv08i', 'https://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/icon/github_icon_01.png', 'admin@163.com', '系统管理员', '系统管理员', '2018-10-08 13:32:47', '2019-04-20 12:45:16', 1);

-- ----------------------------
-- Table structure for ums_admin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_login_log`;
CREATE TABLE `ums_admin_login_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_agent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器登录类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 429 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户登录日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ums_admin_login_log
-- ----------------------------
INSERT INTO `ums_admin_login_log` VALUES (1, 3, '2018-12-23 14:27:00', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (2, 3, '2019-04-07 16:04:39', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (3, 3, '2019-04-08 21:47:52', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (4, 3, '2019-04-08 21:48:18', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (5, 3, '2019-04-18 22:18:40', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (6, 3, '2019-04-20 12:45:16', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (7, 3, '2019-05-19 14:52:12', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (8, 3, '2019-05-25 15:00:17', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (9, 3, '2019-06-19 20:11:42', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (10, 3, '2019-06-30 10:33:48', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (11, 3, '2019-06-30 10:34:31', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (12, 3, '2019-06-30 10:35:34', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (13, 3, '2019-07-27 17:11:01', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (14, 3, '2019-07-27 17:13:18', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (15, 3, '2019-07-27 17:15:35', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (16, 3, '2019-07-27 17:17:11', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (17, 3, '2019-07-27 17:18:34', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (18, 3, '2019-07-27 21:21:52', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (19, 3, '2019-07-27 21:34:29', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (20, 3, '2019-07-27 21:35:17', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (21, 3, '2019-07-27 21:35:48', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (22, 3, '2019-07-27 21:40:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (23, 3, '2019-08-18 16:00:38', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (24, 3, '2019-08-18 16:01:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (25, 3, '2019-08-18 16:47:01', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (26, 3, '2019-10-06 15:54:23', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (27, 3, '2019-10-06 16:03:28', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (28, 3, '2019-10-06 16:04:51', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (29, 3, '2019-10-06 16:06:44', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (30, 3, '2019-10-06 16:14:51', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (31, 1, '2019-10-06 16:15:09', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (32, 1, '2019-10-06 16:16:14', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (33, 3, '2019-10-06 16:16:35', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (34, 3, '2019-10-06 16:16:42', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (35, 3, '2019-10-07 15:20:48', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (36, 3, '2019-10-07 15:40:07', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (37, 3, '2019-10-07 16:34:15', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (38, 3, '2019-10-09 21:19:08', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (39, 4, '2019-10-09 21:30:35', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (40, 4, '2019-10-09 21:31:30', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (41, 4, '2019-10-09 21:32:39', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (42, 4, '2019-10-09 21:33:27', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (43, 4, '2019-10-09 21:33:50', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (44, 3, '2019-10-20 16:02:53', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (45, 3, '2019-10-23 21:20:55', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (46, 3, '2019-10-27 21:41:45', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (47, 3, '2019-11-09 16:44:57', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (48, 3, '2019-11-09 16:46:56', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (49, 3, '2019-11-09 16:49:55', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (50, 3, '2019-11-23 14:17:16', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (51, 6, '2019-11-23 14:52:30', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (52, 3, '2019-11-23 15:07:24', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (53, 3, '2019-11-30 21:25:30', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (54, 3, '2019-11-30 21:27:54', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (55, 3, '2019-12-28 15:23:01', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (56, 3, '2020-01-01 15:21:46', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (57, 3, '2020-01-04 16:00:54', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (58, 3, '2020-02-01 15:05:19', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (59, 3, '2020-02-01 15:36:05', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (60, 3, '2020-02-01 15:36:36', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (61, 3, '2020-02-01 15:37:30', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (62, 3, '2020-02-01 15:37:46', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (63, 3, '2020-02-01 15:38:20', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (64, 3, '2020-02-01 15:38:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (65, 3, '2020-02-01 15:39:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (66, 3, '2020-02-01 15:41:31', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (67, 3, '2020-02-01 15:43:17', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (68, 3, '2020-02-01 15:44:34', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (69, 3, '2020-02-01 15:45:10', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (70, 3, '2020-02-01 15:46:04', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (71, 3, '2020-02-01 15:48:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (72, 3, '2020-02-01 16:00:07', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (73, 3, '2020-02-01 16:07:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (74, 3, '2020-02-01 16:08:22', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (75, 3, '2020-02-02 15:28:13', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (76, 3, '2020-02-02 15:44:37', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (77, 3, '2020-02-02 15:45:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (78, 3, '2020-02-02 15:52:32', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (79, 3, '2020-02-02 15:53:44', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (80, 3, '2020-02-02 15:54:36', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (81, 3, '2020-02-02 16:01:00', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (82, 3, '2020-02-02 16:05:19', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (83, 3, '2020-02-02 16:06:31', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (84, 3, '2020-02-02 16:17:26', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (85, 3, '2020-02-02 16:18:45', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (86, 3, '2020-02-02 16:19:05', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (87, 3, '2020-02-02 16:19:23', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (88, 3, '2020-02-02 16:22:27', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (89, 3, '2020-02-02 16:23:30', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (90, 3, '2020-02-02 16:23:48', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (91, 3, '2020-02-02 16:24:38', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (92, 3, '2020-02-02 16:25:22', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (93, 3, '2020-02-02 16:26:19', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (94, 3, '2020-02-02 16:26:31', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (95, 3, '2020-02-02 16:27:08', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (96, 3, '2020-02-02 16:31:02', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (97, 3, '2020-02-02 16:31:08', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (98, 3, '2020-02-02 16:31:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (99, 3, '2020-02-02 16:31:50', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (100, 3, '2020-02-02 16:33:22', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (101, 3, '2020-02-02 16:33:41', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (102, 3, '2020-02-02 16:34:58', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (103, 3, '2020-02-02 16:38:42', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (104, 3, '2020-02-02 16:39:41', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (105, 3, '2020-02-02 16:42:22', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (106, 3, '2020-02-02 16:46:21', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (107, 3, '2020-02-02 16:50:23', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (108, 3, '2020-02-02 16:51:11', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (109, 3, '2020-02-02 16:51:22', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (110, 3, '2020-02-02 16:52:00', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (111, 3, '2020-02-02 17:01:05', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (112, 3, '2020-02-03 10:43:22', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (113, 3, '2020-02-03 10:45:29', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (114, 3, '2020-02-03 10:46:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (115, 3, '2020-02-03 10:54:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (116, 3, '2020-02-03 14:24:47', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (117, 3, '2020-02-03 14:25:38', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (118, 5, '2020-02-03 15:22:28', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (119, 5, '2020-02-03 15:23:00', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (120, 5, '2020-02-03 15:24:29', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (121, 3, '2020-02-03 15:24:50', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (122, 5, '2020-02-03 15:27:18', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (123, 3, '2020-02-03 15:27:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (124, 3, '2020-02-03 15:29:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (125, 5, '2020-02-03 15:33:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (126, 3, '2020-02-03 15:33:51', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (127, 1, '2020-02-03 15:34:35', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (128, 3, '2020-02-03 15:34:47', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (129, 3, '2020-02-04 14:14:46', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (130, 3, '2020-02-05 10:33:35', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (131, 3, '2020-02-05 10:36:21', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (132, 3, '2020-02-05 16:34:37', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (133, 4, '2020-02-05 16:58:37', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (134, 3, '2020-02-05 16:59:03', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (135, 3, '2020-02-06 10:25:02', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (136, 3, '2020-02-07 14:34:34', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (137, 3, '2020-02-07 14:36:20', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (138, 1, '2020-02-07 14:43:34', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (139, 3, '2020-02-07 15:18:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (140, 3, '2020-02-07 15:20:07', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (141, 3, '2020-02-07 15:22:20', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (142, 3, '2020-02-07 15:22:28', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (143, 3, '2020-02-07 15:55:11', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (144, 3, '2020-02-07 15:56:04', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (145, 3, '2020-02-07 15:58:49', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (146, 6, '2020-02-07 16:16:21', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (147, 7, '2020-02-07 16:16:37', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (148, 3, '2020-02-07 16:18:39', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (149, 7, '2020-02-07 16:20:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (150, 3, '2020-02-07 16:20:44', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (151, 3, '2020-02-07 16:32:31', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (152, 3, '2020-02-07 19:32:34', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (153, 3, '2020-02-07 19:32:48', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (154, 3, '2020-02-07 19:33:01', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (155, 3, '2020-02-07 19:33:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (156, 3, '2020-02-07 19:33:21', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (157, 3, '2020-02-07 19:35:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (158, 3, '2020-02-07 19:37:10', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (159, 3, '2020-02-07 19:37:14', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (160, 3, '2020-02-07 19:37:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (161, 3, '2020-02-07 19:45:41', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (162, 3, '2020-02-07 19:47:45', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (163, 3, '2020-02-07 20:02:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (164, 6, '2020-02-07 20:10:55', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (165, 6, '2020-02-07 20:11:02', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (166, 6, '2020-02-07 20:13:44', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (167, 6, '2020-02-07 20:17:14', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (168, 3, '2020-02-07 20:17:44', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (169, 6, '2020-02-07 20:18:13', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (170, 3, '2020-02-10 10:28:14', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (171, 3, '2020-02-10 10:45:15', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (172, 3, '2020-02-10 10:57:46', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (173, 3, '2020-02-10 10:59:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (174, 3, '2020-02-10 11:04:19', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (175, 3, '2020-02-10 11:05:55', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (176, 3, '2020-02-10 11:06:45', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (177, 3, '2020-02-10 11:07:41', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (178, 3, '2020-02-10 11:08:13', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (179, 3, '2020-02-10 11:10:02', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (180, 6, '2020-02-10 14:25:17', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (181, 6, '2020-02-10 14:29:14', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (182, 3, '2020-02-10 16:09:16', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (183, 3, '2020-02-20 14:39:19', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (184, 8, '2020-02-20 17:14:58', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (185, 8, '2020-02-20 17:17:04', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (186, 8, '2020-02-20 17:17:42', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (187, 8, '2020-02-21 10:26:56', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (188, 8, '2020-02-21 10:28:54', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (189, 8, '2020-02-21 10:32:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (190, 8, '2020-02-21 10:33:41', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (191, 8, '2020-02-21 10:35:58', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (192, 8, '2020-02-21 10:36:49', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (193, 3, '2020-02-21 11:10:11', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (194, 3, '2020-02-25 16:11:13', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (195, 3, '2020-02-25 16:46:29', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (196, 3, '2020-03-07 16:33:59', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (197, 6, '2020-03-07 16:35:38', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (198, 3, '2020-03-07 17:00:09', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (199, 3, '2020-03-14 14:32:08', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (200, 8, '2020-03-14 14:32:59', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (201, 3, '2020-03-14 14:33:26', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (202, 8, '2020-03-14 14:34:57', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (203, 3, '2020-03-14 14:35:23', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (204, 8, '2020-03-14 14:36:31', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (205, 3, '2020-03-14 14:36:51', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (206, 8, '2020-03-14 14:37:31', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (207, 3, '2020-03-14 14:37:44', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (208, 8, '2020-03-14 14:38:30', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (209, 3, '2020-03-14 14:38:50', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (210, 8, '2020-03-14 14:39:26', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (211, 3, '2020-03-14 14:39:41', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (212, 3, '2020-03-15 14:23:54', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (213, 3, '2020-03-22 14:33:17', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (214, 3, '2020-03-22 14:59:51', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (215, 3, '2020-03-22 15:04:32', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (216, 3, '2020-03-29 16:14:37', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (217, 3, '2020-03-29 17:17:00', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (218, 3, '2020-04-06 16:54:49', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (219, 3, '2020-04-12 15:01:40', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (220, 3, '2020-04-19 09:50:59', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (221, 3, '2020-05-04 10:45:45', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (222, 3, '2020-05-05 11:02:44', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (223, 3, '2020-05-16 15:17:21', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (224, 3, '2020-05-17 14:58:35', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (225, 3, '2020-05-18 15:47:46', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (226, 3, '2020-05-23 16:51:15', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (227, 3, '2020-05-23 16:54:53', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (228, 3, '2020-05-23 17:00:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (229, 3, '2020-05-24 10:38:00', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (230, 3, '2020-06-07 09:39:31', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (231, 3, '2020-06-14 14:23:30', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (232, 3, '2020-06-14 17:11:59', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (233, 3, '2020-06-20 14:53:51', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (234, 3, '2020-06-21 14:57:36', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (235, 3, '2020-06-27 10:41:31', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (236, 3, '2020-07-05 15:54:21', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (237, 3, '2020-07-11 10:40:28', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (238, 3, '2020-07-11 10:45:01', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (239, 3, '2020-07-19 11:00:16', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (240, 3, '2020-07-19 11:46:27', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (241, 3, '2020-07-19 11:53:47', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (242, 3, '2020-07-19 14:17:37', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (243, 3, '2020-07-19 14:44:24', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (244, 3, '2020-07-19 14:44:58', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (245, 3, '2020-07-19 14:48:27', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (246, 3, '2020-07-19 14:48:57', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (247, 3, '2020-07-19 14:49:30', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (248, 3, '2020-07-19 14:50:18', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (249, 3, '2020-07-19 14:51:51', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (250, 3, '2020-07-19 14:55:27', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (251, 3, '2020-07-19 14:58:14', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (252, 6, '2020-07-19 15:04:21', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (253, 3, '2020-07-19 15:38:49', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (254, 6, '2020-07-19 16:26:24', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (255, 3, '2020-08-08 10:39:12', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (256, 3, '2020-08-09 11:06:31', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (257, 3, '2020-08-10 20:41:30', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (258, 3, '2020-08-15 10:12:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (259, 1, '2020-08-19 21:23:59', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (260, 1, '2020-08-19 21:25:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (261, 3, '2020-09-05 16:14:50', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (262, 3, '2020-09-05 16:15:37', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (263, 3, '2020-09-12 16:07:35', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (264, 6, '2020-09-12 16:08:14', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (265, 1, '2020-09-12 16:08:26', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (266, 6, '2020-09-12 16:09:08', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (267, 1, '2020-09-12 16:09:17', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (268, 3, '2020-09-13 14:22:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (269, 3, '2020-09-13 14:23:07', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (270, 3, '2020-09-13 14:24:21', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (271, 3, '2020-09-13 14:32:32', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (272, 1, '2020-09-19 15:43:31', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (273, 3, '2020-09-19 15:43:58', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (274, 3, '2020-09-19 15:49:44', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (275, 6, '2020-09-19 15:50:12', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (276, 6, '2020-09-19 15:50:18', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (277, 1, '2020-09-19 15:50:41', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (278, 6, '2020-09-19 15:52:28', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (279, 1, '2020-09-19 15:53:01', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (280, 1, '2020-09-19 15:53:48', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (281, 6, '2020-09-19 15:54:37', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (282, 3, '2020-09-20 11:13:50', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (283, 1, '2020-10-08 14:26:58', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (284, 1, '2020-10-08 14:30:49', '192.168.3.185', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (285, 3, '2021-04-11 10:27:43', '192.168.3.227', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (286, 1, '2021-04-11 10:29:19', '192.168.3.227', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (287, 3, '2021-04-11 10:30:40', '192.168.3.227', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (288, 3, '2021-04-11 10:37:50', '192.168.3.227', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (289, 3, '2021-12-08 10:44:09', '192.168.3.4', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (290, 3, '2022-04-15 15:04:51', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (291, 1, '2022-05-10 15:25:58', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (292, 1, '2022-05-10 15:31:08', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (293, 1, '2022-05-10 15:32:18', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (294, 1, '2022-05-10 15:34:17', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (295, 1, '2022-05-10 15:34:38', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (296, 1, '2022-05-10 15:54:50', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (297, 1, '2022-05-10 16:31:20', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (298, 1, '2022-05-10 16:33:45', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (299, 1, '2022-05-10 16:39:07', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (300, 1, '2022-05-18 14:53:41', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (301, 3, '2022-06-07 17:28:29', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (302, 3, '2022-06-08 09:48:32', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (303, 3, '2022-06-08 10:34:20', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (304, 3, '2022-06-08 17:09:29', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (305, 3, '2022-06-08 17:10:11', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (306, 6, '2022-06-08 17:10:55', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (307, 3, '2022-06-08 17:23:05', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (308, 3, '2022-06-08 17:30:51', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (309, 3, '2022-06-08 17:31:42', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (310, 3, '2022-06-08 17:31:48', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (311, 3, '2022-06-08 21:03:56', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (312, 3, '2022-06-09 10:41:31', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (313, 3, '2022-06-09 15:18:46', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (314, 3, '2022-06-10 15:43:15', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (315, 3, '2022-06-10 15:52:27', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (316, 3, '2022-06-15 14:41:59', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (317, 3, '2022-06-23 16:24:09', '192.168.3.6', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (318, 3, '2022-06-23 16:41:33', '192.168.3.6', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (319, 3, '2022-06-23 16:42:50', '192.168.3.6', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (320, 3, '2022-06-23 16:42:51', '192.168.3.6', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (321, 3, '2022-06-23 16:42:52', '192.168.3.6', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (322, 3, '2022-06-23 16:42:53', '192.168.3.6', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (323, 3, '2022-06-23 16:43:07', '192.168.3.6', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (324, 3, '2022-06-23 16:44:56', '192.168.3.6', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (325, 3, '2022-06-23 16:45:42', '192.168.3.6', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (326, 3, '2022-06-23 16:50:08', '192.168.3.6', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (327, 3, '2022-06-24 15:19:04', '192.168.3.227', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (328, 3, '2022-06-24 15:25:52', '192.168.3.227', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (329, 3, '2022-06-24 15:40:29', '192.168.3.227', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (330, 3, '2022-06-25 15:13:52', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (331, 3, '2022-06-25 15:25:12', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (332, 3, '2022-06-27 16:38:37', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (333, 3, '2022-07-24 10:10:06', '192.168.3.227', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (334, 1, '2022-07-25 17:15:55', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (335, 3, '2022-07-27 09:41:32', '192.168.3.227', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (336, 1, '2022-07-28 16:56:10', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (337, 1, '2022-07-28 16:56:25', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (338, 8, '2022-08-07 14:46:00', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (339, 9, '2022-08-07 14:53:32', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (340, 9, '2022-08-07 14:53:46', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (341, 9, '2022-08-07 14:56:19', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (342, 1, '2022-08-09 10:53:55', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (343, 1, '2022-08-09 10:54:36', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (344, 1, '2022-08-09 11:00:06', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (345, 1, '2022-08-09 11:02:04', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (346, 1, '2022-08-09 15:48:14', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (347, 1, '2022-08-16 16:35:24', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (348, 1, '2022-08-17 15:03:52', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (349, 1, '2022-08-20 16:49:19', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (350, 1, '2022-08-23 14:54:06', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (351, 1, '2022-08-31 17:16:35', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (352, 3, '2022-10-14 15:31:42', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (353, 3, '2022-10-14 15:42:39', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (354, 3, '2022-10-14 15:44:08', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (355, 3, '2022-10-14 15:46:23', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (356, 3, '2022-10-14 15:46:35', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (357, 3, '2022-10-14 16:06:11', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (358, 3, '2022-10-14 16:24:08', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (359, 3, '2022-10-17 16:44:52', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (360, 3, '2022-10-17 16:49:42', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (361, 3, '2022-10-17 16:49:53', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (362, 3, '2022-10-17 17:03:10', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (363, 3, '2022-10-17 17:03:22', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (364, 3, '2022-10-17 21:00:48', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (365, 3, '2022-10-24 16:32:31', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (366, 3, '2022-10-26 16:31:17', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (367, 3, '2022-10-26 16:50:48', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (368, 3, '2022-10-26 16:52:28', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (369, 3, '2022-10-27 17:21:28', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (370, 3, '2022-10-28 10:52:22', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (371, 3, '2022-11-04 16:09:08', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (372, 3, '2022-11-08 10:27:27', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (373, 3, '2022-11-09 10:42:30', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (374, 3, '2022-11-10 15:03:08', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (375, 3, '2022-11-11 10:11:11', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (376, 3, '2022-11-14 16:33:30', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (377, 3, '2022-11-15 10:54:02', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (378, 3, '2022-11-15 15:16:35', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (379, 3, '2022-11-15 15:17:41', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (380, 3, '2022-11-15 15:17:47', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (381, 1, '2022-11-15 15:19:56', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (382, 3, '2022-11-15 15:20:12', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (383, 3, '2022-11-15 15:22:22', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (384, 3, '2022-11-16 10:39:08', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (385, 1, '2022-11-24 20:02:12', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (386, 3, '2022-11-28 15:24:02', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (387, 3, '2022-11-30 09:34:28', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (388, 3, '2022-12-05 09:43:58', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (389, 3, '2022-12-09 17:18:09', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (390, 3, '2022-12-15 14:53:39', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (391, 3, '2022-12-15 16:11:54', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (392, 3, '2022-12-20 15:55:18', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (393, 3, '2022-12-21 14:49:30', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (394, 3, '2022-12-23 09:49:50', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (395, 3, '2023-01-04 10:17:44', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (396, 3, '2023-01-04 15:28:47', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (397, 3, '2023-01-05 10:13:43', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (398, 3, '2023-01-06 09:49:23', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (399, 3, '2023-01-06 10:04:19', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (400, 3, '2023-01-06 10:07:06', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (401, 3, '2023-01-06 16:21:31', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (402, 3, '2023-01-09 16:50:30', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (403, 3, '2023-01-10 10:05:52', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (404, 3, '2023-01-10 17:09:44', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (405, 3, '2023-01-11 10:17:17', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (406, 3, '2023-01-13 09:35:37', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (407, 3, '2023-01-13 09:40:51', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (408, 3, '2023-01-31 10:46:52', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (409, 3, '2023-02-08 17:11:11', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (410, 3, '2023-02-09 15:46:41', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (411, 3, '2023-02-10 17:23:52', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (412, 3, '2023-05-11 15:29:54', '192.168.56.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (413, 11, '2025-03-31 13:52:28', '192.168.1.107', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (414, 11, '2025-03-31 13:52:33', '192.168.1.107', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (415, 11, '2025-03-31 14:06:59', '192.168.1.107', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (416, 11, '2025-04-01 09:55:48', '192.168.1.107', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (417, 11, '2025-04-01 09:56:33', '192.168.1.107', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (418, 11, '2025-04-01 09:59:13', '192.168.1.107', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (419, 11, '2025-04-01 10:01:13', '192.168.1.107', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (420, 11, '2025-04-01 10:01:26', '192.168.1.107', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (421, 3, '2025-04-02 17:21:59', '192.168.1.107', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (422, 3, '2025-04-05 16:00:57', '172.21.96.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (423, 3, '2025-04-07 14:24:19', '172.24.32.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (424, 3, '2025-04-07 14:24:22', '172.24.32.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (425, 3, '2025-04-10 21:47:35', '172.19.176.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (426, 3, '2025-04-11 14:45:41', '192.168.1.7', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (427, 3, '2025-04-11 17:15:19', '192.168.1.7', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (428, 3, '2025-04-11 17:33:47', '192.168.1.7', NULL, NULL);

-- ----------------------------
-- Table structure for ums_admin_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_role_relation`;
CREATE TABLE `ums_admin_role_relation`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint NULL DEFAULT NULL,
  `role_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户和角色关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ums_admin_role_relation
-- ----------------------------
INSERT INTO `ums_admin_role_relation` VALUES (26, 3, 5);
INSERT INTO `ums_admin_role_relation` VALUES (27, 6, 1);
INSERT INTO `ums_admin_role_relation` VALUES (28, 7, 2);
INSERT INTO `ums_admin_role_relation` VALUES (29, 1, 5);
INSERT INTO `ums_admin_role_relation` VALUES (30, 4, 5);
INSERT INTO `ums_admin_role_relation` VALUES (31, 8, 1);
INSERT INTO `ums_admin_role_relation` VALUES (32, 11, 5);

-- ----------------------------
-- Table structure for ums_member
-- ----------------------------
DROP TABLE IF EXISTS `ums_member`;
CREATE TABLE `ums_member`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `nickname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `status` int NULL DEFAULT NULL COMMENT '帐号启用状态:0->禁用；1->启用',
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `gender` int NULL DEFAULT NULL COMMENT '性别：0->未知；1->男；2->女',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所做城市',
  `create_time` datetime NULL DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `idx_phone`(`phone` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ums_member
-- ----------------------------
INSERT INTO `ums_member` VALUES (1, 'test', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'test', '18061581849', 1, 'https://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/icon/github_icon_03.png', 1, '2009-06-01', '上海', '2018-08-02 10:35:44');
INSERT INTO `ums_member` VALUES (3, 'windy', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'windy', '18061581848', 1, NULL, NULL, NULL, NULL, '2018-08-03 16:46:38');
INSERT INTO `ums_member` VALUES (4, 'zhengsan', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'zhengsan', '18061581847', 1, NULL, NULL, NULL, NULL, '2018-11-12 14:12:04');
INSERT INTO `ums_member` VALUES (5, 'lisi', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'lisi', '18061581841', 1, NULL, NULL, NULL, NULL, '2018-11-12 14:12:38');
INSERT INTO `ums_member` VALUES (6, 'wangwu', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'wangwu', '18061581842', 1, NULL, NULL, NULL, NULL, '2018-11-12 14:13:09');
INSERT INTO `ums_member` VALUES (7, 'lion', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'lion', '18061581845', 1, NULL, NULL, NULL, NULL, '2018-11-12 14:21:39');
INSERT INTO `ums_member` VALUES (8, 'shari', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'shari', '18061581844', 1, NULL, NULL, NULL, NULL, '2018-11-12 14:22:00');
INSERT INTO `ums_member` VALUES (9, 'aewen', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'aewen', '18061581843', 1, NULL, NULL, NULL, NULL, '2018-11-12 14:22:55');
INSERT INTO `ums_member` VALUES (10, 'guest', '$2a$10$WQiD4RzEs1iJVWU.2HVu8OdSlExJHWKmwndaw3SUfMyqfKZmXe1vq', NULL, '18911111111', 1, NULL, NULL, NULL, NULL, '2020-03-14 14:52:18');
INSERT INTO `ums_member` VALUES (11, 'member', '$2a$10$Q08uzqvtPj61NnpYQZsVvOnyilJ3AU4VdngAcJFGvPhEeqhhC.hhS', 'member', '18961511111', 1, 'https://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/icon/github_icon_02.png', 1, '2009-06-01', '上海', '2023-05-11 15:22:38');
INSERT INTO `ums_member` VALUES (12, 'admin', '$2a$10$iuWuqlycRCHaaf0FI0eljOBJiGd0S9j90vEAbKqO6c6GaF0cC6m9i', NULL, '17238564451', 1, NULL, NULL, NULL, NULL, '2025-03-31 17:47:41');

-- ----------------------------
-- Table structure for ums_menu
-- ----------------------------
DROP TABLE IF EXISTS `ums_menu`;
CREATE TABLE `ums_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父级ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `level` int NULL DEFAULT NULL COMMENT '菜单级数',
  `sort` int NULL DEFAULT NULL COMMENT '菜单排序',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端名称',
  `icon` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端图标',
  `hidden` int NULL DEFAULT NULL COMMENT '前端隐藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ums_menu
-- ----------------------------
INSERT INTO `ums_menu` VALUES (1, 0, '2020-02-02 14:50:36', '汽车', 0, 0, 'pms', 'car', 0);
INSERT INTO `ums_menu` VALUES (2, 1, '2020-02-02 14:51:50', '汽车列表', 1, 0, 'product', 'product-list', 0);
INSERT INTO `ums_menu` VALUES (3, 1, '2020-02-02 14:52:44', '添加汽车', 1, 0, 'addProduct', 'product-add', 0);
INSERT INTO `ums_menu` VALUES (4, 1, '2020-02-02 14:53:51', '汽车分类', 1, 0, 'productCate', 'product-cate', 0);
INSERT INTO `ums_menu` VALUES (5, 1, '2020-02-02 14:54:51', '汽车类型', 1, 0, 'productAttr', 'product-attr', 0);
INSERT INTO `ums_menu` VALUES (6, 1, '2020-02-02 14:56:29', '品牌管理', 1, 0, 'brand', 'product-brand', 0);
INSERT INTO `ums_menu` VALUES (8, 7, '2020-02-02 16:55:18', '订单列表', 1, 0, 'order', 'product-list', 0);
INSERT INTO `ums_menu` VALUES (9, 7, '2020-02-02 16:56:46', '订单设置', 1, 0, 'orderSetting', 'order-setting', 0);
INSERT INTO `ums_menu` VALUES (10, 7, '2020-02-02 16:57:39', '退货申请处理', 1, 0, 'returnApply', 'order-return', 0);
INSERT INTO `ums_menu` VALUES (11, 7, '2020-02-02 16:59:40', '退货原因设置', 1, 0, 'returnReason', 'order-return-reason', 0);
INSERT INTO `ums_menu` VALUES (12, 0, '2020-02-04 16:18:00', '推荐', 0, 0, 'sms', 'sms', 0);
INSERT INTO `ums_menu` VALUES (16, 12, '2020-02-07 16:22:38', '品牌推荐', 1, 0, 'homeBrand', 'product-brand', 0);
INSERT INTO `ums_menu` VALUES (17, 12, '2020-02-07 16:23:14', '新品推荐', 1, 0, 'homeNew', 'sms-new', 0);
INSERT INTO `ums_menu` VALUES (18, 12, '2020-02-07 16:26:38', '人气推荐', 1, 0, 'homeHot', 'sms-hot', 0);
INSERT INTO `ums_menu` VALUES (20, 12, '2020-02-07 16:28:42', '广告列表', 1, 0, 'homeAdvertise', 'sms-ad', 0);
INSERT INTO `ums_menu` VALUES (21, 0, '2020-02-07 16:29:13', '权限', 0, 0, 'ums', 'ums', 0);
INSERT INTO `ums_menu` VALUES (22, 21, '2020-02-07 16:29:51', '用户列表', 1, 0, 'admin', 'ums-admin', 0);
INSERT INTO `ums_menu` VALUES (23, 21, '2020-02-07 16:30:13', '角色列表', 1, 0, 'role', 'ums-role', 0);
INSERT INTO `ums_menu` VALUES (24, 21, '2020-02-07 16:30:53', '菜单列表', 1, 0, 'menu', 'ums-menu', 0);
INSERT INTO `ums_menu` VALUES (25, 21, '2020-02-07 16:31:13', '资源列表', 1, 0, 'resource', 'ums-resource', 0);

-- ----------------------------
-- Table structure for ums_permission
-- ----------------------------
DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE `ums_permission`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pid` bigint NULL DEFAULT NULL COMMENT '父级权限id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `value` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限值',
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `type` int NULL DEFAULT NULL COMMENT '权限类型：0->目录；1->菜单；2->按钮（接口绑定权限）',
  `uri` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端资源路径',
  `status` int NULL DEFAULT NULL COMMENT '启用状态；0->禁用；1->启用',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ums_permission
-- ----------------------------
INSERT INTO `ums_permission` VALUES (1, 0, '商品', NULL, NULL, 0, NULL, 1, '2018-09-29 16:15:14', 0);
INSERT INTO `ums_permission` VALUES (2, 1, '商品列表', 'pms:product:read', NULL, 1, '/pms/product/index', 1, '2018-09-29 16:17:01', 0);
INSERT INTO `ums_permission` VALUES (3, 1, '添加商品', 'pms:product:create', NULL, 1, '/pms/product/add', 1, '2018-09-29 16:18:51', 0);
INSERT INTO `ums_permission` VALUES (4, 1, '商品分类', 'pms:productCategory:read', NULL, 1, '/pms/productCate/index', 1, '2018-09-29 16:23:07', 0);
INSERT INTO `ums_permission` VALUES (5, 1, '商品类型', 'pms:productAttribute:read', NULL, 1, '/pms/productAttr/index', 1, '2018-09-29 16:24:43', 0);
INSERT INTO `ums_permission` VALUES (6, 1, '品牌管理', 'pms:brand:read', NULL, 1, '/pms/brand/index', 1, '2018-09-29 16:25:45', 0);
INSERT INTO `ums_permission` VALUES (7, 2, '编辑商品', 'pms:product:update', NULL, 2, '/pms/product/updateProduct', 1, '2018-09-29 16:34:23', 0);
INSERT INTO `ums_permission` VALUES (8, 2, '删除商品', 'pms:product:delete', NULL, 2, '/pms/product/delete', 1, '2018-09-29 16:38:33', 0);
INSERT INTO `ums_permission` VALUES (9, 4, '添加商品分类', 'pms:productCategory:create', NULL, 2, '/pms/productCate/create', 1, '2018-09-29 16:43:23', 0);
INSERT INTO `ums_permission` VALUES (10, 4, '修改商品分类', 'pms:productCategory:update', NULL, 2, '/pms/productCate/update', 1, '2018-09-29 16:43:55', 0);
INSERT INTO `ums_permission` VALUES (11, 4, '删除商品分类', 'pms:productCategory:delete', NULL, 2, '/pms/productAttr/delete', 1, '2018-09-29 16:44:38', 0);
INSERT INTO `ums_permission` VALUES (12, 5, '添加商品类型', 'pms:productAttribute:create', NULL, 2, '/pms/productAttr/create', 1, '2018-09-29 16:45:25', 0);
INSERT INTO `ums_permission` VALUES (13, 5, '修改商品类型', 'pms:productAttribute:update', NULL, 2, '/pms/productAttr/update', 1, '2018-09-29 16:48:08', 0);
INSERT INTO `ums_permission` VALUES (14, 5, '删除商品类型', 'pms:productAttribute:delete', NULL, 2, '/pms/productAttr/delete', 1, '2018-09-29 16:48:44', 0);
INSERT INTO `ums_permission` VALUES (15, 6, '添加品牌', 'pms:brand:create', NULL, 2, '/pms/brand/add', 1, '2018-09-29 16:49:34', 0);
INSERT INTO `ums_permission` VALUES (16, 6, '修改品牌', 'pms:brand:update', NULL, 2, '/pms/brand/update', 1, '2018-09-29 16:50:55', 0);
INSERT INTO `ums_permission` VALUES (17, 6, '删除品牌', 'pms:brand:delete', NULL, 2, '/pms/brand/delete', 1, '2018-09-29 16:50:59', 0);
INSERT INTO `ums_permission` VALUES (18, 0, '首页', NULL, NULL, 0, NULL, 1, '2018-09-29 16:51:57', 0);

-- ----------------------------
-- Table structure for ums_resource
-- ----------------------------
DROP TABLE IF EXISTS `ums_resource`;
CREATE TABLE `ums_resource`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源URL',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `category_id` bigint NULL DEFAULT NULL COMMENT '资源分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台资源表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ums_resource
-- ----------------------------
INSERT INTO `ums_resource` VALUES (1, '2020-02-04 17:04:55', '汽车品牌管理', '/brand/**', NULL, 1);
INSERT INTO `ums_resource` VALUES (2, '2020-02-04 17:05:35', '汽车属性分类管理', '/productAttribute/category/**', NULL, 1);
INSERT INTO `ums_resource` VALUES (3, '2020-02-04 17:06:13', '汽车属性管理', '/productAttribute/**', NULL, 1);
INSERT INTO `ums_resource` VALUES (4, '2020-02-04 17:07:15', '汽车分类管理', '/productCategory/**', NULL, 1);
INSERT INTO `ums_resource` VALUES (5, '2020-02-04 17:09:16', '汽车管理', '/product/**', NULL, 1);
INSERT INTO `ums_resource` VALUES (18, '2020-02-07 16:40:07', '首页轮播广告管理', '/home/advertise/**', '', 3);
INSERT INTO `ums_resource` VALUES (19, '2020-02-07 16:40:34', '首页品牌管理', '/home/brand/**', '', 3);
INSERT INTO `ums_resource` VALUES (20, '2020-02-07 16:41:06', '首页新品管理', '/home/newProduct/**', '', 3);
INSERT INTO `ums_resource` VALUES (21, '2020-02-07 16:42:16', '首页人气推荐管理', '/home/recommendProduct/**', '', 3);
INSERT INTO `ums_resource` VALUES (22, '2020-02-07 16:42:48', '首页专题推荐管理', '/home/recommendSubject/**', '', 3);
INSERT INTO `ums_resource` VALUES (23, '2020-02-07 16:44:56', '汽车优选管理', '/prefrenceArea/**', '', 5);
INSERT INTO `ums_resource` VALUES (24, '2020-02-07 16:45:39', '汽车专题管理', '/subject/**', '', 5);
INSERT INTO `ums_resource` VALUES (25, '2020-02-07 16:47:34', '后台用户管理', '/admin/**', '', 4);
INSERT INTO `ums_resource` VALUES (26, '2020-02-07 16:48:24', '后台用户角色管理', '/role/**', '', 4);
INSERT INTO `ums_resource` VALUES (27, '2020-02-07 16:48:48', '后台菜单管理', '/menu/**', '', 4);
INSERT INTO `ums_resource` VALUES (28, '2020-02-07 16:49:18', '后台资源分类管理', '/resourceCategory/**', '', 4);
INSERT INTO `ums_resource` VALUES (29, '2020-02-07 16:49:45', '后台资源管理', '/resource/**', '', 4);
INSERT INTO `ums_resource` VALUES (30, '2020-09-19 15:47:57', '会员等级管理', '/memberLevel/**', '', 7);
INSERT INTO `ums_resource` VALUES (31, '2020-09-19 15:51:29', '获取登录用户信息', '/admin/info', '用户登录必配', 4);
INSERT INTO `ums_resource` VALUES (32, '2020-09-19 15:53:34', '用户登出', '/admin/logout', '用户登出必配', 4);

-- ----------------------------
-- Table structure for ums_resource_category
-- ----------------------------
DROP TABLE IF EXISTS `ums_resource_category`;
CREATE TABLE `ums_resource_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源分类表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ums_resource_category
-- ----------------------------
INSERT INTO `ums_resource_category` VALUES (1, '2020-02-05 10:21:44', '商品模块', 0);
INSERT INTO `ums_resource_category` VALUES (2, '2020-02-05 10:22:34', '订单模块', 0);
INSERT INTO `ums_resource_category` VALUES (3, '2020-02-05 10:22:48', '营销模块', 0);
INSERT INTO `ums_resource_category` VALUES (4, '2020-02-05 10:23:04', '权限模块', 0);
INSERT INTO `ums_resource_category` VALUES (5, '2020-02-07 16:34:27', '内容模块', 0);
INSERT INTO `ums_resource_category` VALUES (7, '2020-09-19 15:49:08', '其他模块', 0);

-- ----------------------------
-- Table structure for ums_role
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `admin_count` int NULL DEFAULT NULL COMMENT '后台用户数量',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `status` int NULL DEFAULT 1 COMMENT '启用状态：0->禁用；1->启用',
  `sort` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ums_role
-- ----------------------------
INSERT INTO `ums_role` VALUES (1, '商品管理员', '只能查看及操作商品', 0, '2020-02-03 16:50:37', 1, 0);
INSERT INTO `ums_role` VALUES (2, '订单管理员', '只能查看及操作订单', 0, '2018-09-30 15:53:45', 1, 0);
INSERT INTO `ums_role` VALUES (5, '超级管理员', '拥有所有查看和操作功能', 0, '2020-02-02 15:11:05', 1, 0);

-- ----------------------------
-- Table structure for ums_role_menu_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_menu_relation`;
CREATE TABLE `ums_role_menu_relation`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台角色菜单关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ums_role_menu_relation
-- ----------------------------
INSERT INTO `ums_role_menu_relation` VALUES (53, 2, 7);
INSERT INTO `ums_role_menu_relation` VALUES (54, 2, 8);
INSERT INTO `ums_role_menu_relation` VALUES (55, 2, 9);
INSERT INTO `ums_role_menu_relation` VALUES (56, 2, 10);
INSERT INTO `ums_role_menu_relation` VALUES (57, 2, 11);
INSERT INTO `ums_role_menu_relation` VALUES (72, 5, 1);
INSERT INTO `ums_role_menu_relation` VALUES (73, 5, 2);
INSERT INTO `ums_role_menu_relation` VALUES (74, 5, 3);
INSERT INTO `ums_role_menu_relation` VALUES (75, 5, 4);
INSERT INTO `ums_role_menu_relation` VALUES (76, 5, 5);
INSERT INTO `ums_role_menu_relation` VALUES (77, 5, 6);
INSERT INTO `ums_role_menu_relation` VALUES (78, 5, 7);
INSERT INTO `ums_role_menu_relation` VALUES (79, 5, 8);
INSERT INTO `ums_role_menu_relation` VALUES (80, 5, 9);
INSERT INTO `ums_role_menu_relation` VALUES (81, 5, 10);
INSERT INTO `ums_role_menu_relation` VALUES (82, 5, 11);
INSERT INTO `ums_role_menu_relation` VALUES (83, 5, 12);
INSERT INTO `ums_role_menu_relation` VALUES (84, 5, 13);
INSERT INTO `ums_role_menu_relation` VALUES (85, 5, 14);
INSERT INTO `ums_role_menu_relation` VALUES (86, 5, 16);
INSERT INTO `ums_role_menu_relation` VALUES (87, 5, 17);
INSERT INTO `ums_role_menu_relation` VALUES (88, 5, 18);
INSERT INTO `ums_role_menu_relation` VALUES (89, 5, 19);
INSERT INTO `ums_role_menu_relation` VALUES (90, 5, 20);
INSERT INTO `ums_role_menu_relation` VALUES (91, 5, 21);
INSERT INTO `ums_role_menu_relation` VALUES (92, 5, 22);
INSERT INTO `ums_role_menu_relation` VALUES (93, 5, 23);
INSERT INTO `ums_role_menu_relation` VALUES (94, 5, 24);
INSERT INTO `ums_role_menu_relation` VALUES (95, 5, 25);
INSERT INTO `ums_role_menu_relation` VALUES (121, 1, 1);
INSERT INTO `ums_role_menu_relation` VALUES (122, 1, 2);
INSERT INTO `ums_role_menu_relation` VALUES (123, 1, 3);
INSERT INTO `ums_role_menu_relation` VALUES (124, 1, 4);
INSERT INTO `ums_role_menu_relation` VALUES (125, 1, 5);
INSERT INTO `ums_role_menu_relation` VALUES (126, 1, 6);

-- ----------------------------
-- Table structure for ums_role_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_permission_relation`;
CREATE TABLE `ums_role_permission_relation`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint NULL DEFAULT NULL,
  `permission_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户角色和权限关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ums_role_permission_relation
-- ----------------------------
INSERT INTO `ums_role_permission_relation` VALUES (1, 1, 1);
INSERT INTO `ums_role_permission_relation` VALUES (2, 1, 2);
INSERT INTO `ums_role_permission_relation` VALUES (3, 1, 3);
INSERT INTO `ums_role_permission_relation` VALUES (4, 1, 7);
INSERT INTO `ums_role_permission_relation` VALUES (5, 1, 8);
INSERT INTO `ums_role_permission_relation` VALUES (6, 2, 4);
INSERT INTO `ums_role_permission_relation` VALUES (7, 2, 9);
INSERT INTO `ums_role_permission_relation` VALUES (8, 2, 10);
INSERT INTO `ums_role_permission_relation` VALUES (9, 2, 11);
INSERT INTO `ums_role_permission_relation` VALUES (10, 3, 5);
INSERT INTO `ums_role_permission_relation` VALUES (11, 3, 12);
INSERT INTO `ums_role_permission_relation` VALUES (12, 3, 13);
INSERT INTO `ums_role_permission_relation` VALUES (13, 3, 14);
INSERT INTO `ums_role_permission_relation` VALUES (14, 4, 6);
INSERT INTO `ums_role_permission_relation` VALUES (15, 4, 15);
INSERT INTO `ums_role_permission_relation` VALUES (16, 4, 16);
INSERT INTO `ums_role_permission_relation` VALUES (17, 4, 17);

-- ----------------------------
-- Table structure for ums_role_resource_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_resource_relation`;
CREATE TABLE `ums_role_resource_relation`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint NULL DEFAULT NULL COMMENT '角色ID',
  `resource_id` bigint NULL DEFAULT NULL COMMENT '资源ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 249 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台角色资源关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ums_role_resource_relation
-- ----------------------------
INSERT INTO `ums_role_resource_relation` VALUES (194, 5, 1);
INSERT INTO `ums_role_resource_relation` VALUES (195, 5, 2);
INSERT INTO `ums_role_resource_relation` VALUES (196, 5, 3);
INSERT INTO `ums_role_resource_relation` VALUES (197, 5, 4);
INSERT INTO `ums_role_resource_relation` VALUES (198, 5, 5);
INSERT INTO `ums_role_resource_relation` VALUES (199, 5, 6);
INSERT INTO `ums_role_resource_relation` VALUES (200, 5, 8);
INSERT INTO `ums_role_resource_relation` VALUES (201, 5, 9);
INSERT INTO `ums_role_resource_relation` VALUES (202, 5, 10);
INSERT INTO `ums_role_resource_relation` VALUES (203, 5, 11);
INSERT INTO `ums_role_resource_relation` VALUES (204, 5, 12);
INSERT INTO `ums_role_resource_relation` VALUES (205, 5, 13);
INSERT INTO `ums_role_resource_relation` VALUES (206, 5, 14);
INSERT INTO `ums_role_resource_relation` VALUES (207, 5, 15);
INSERT INTO `ums_role_resource_relation` VALUES (208, 5, 16);
INSERT INTO `ums_role_resource_relation` VALUES (209, 5, 17);
INSERT INTO `ums_role_resource_relation` VALUES (210, 5, 18);
INSERT INTO `ums_role_resource_relation` VALUES (211, 5, 19);
INSERT INTO `ums_role_resource_relation` VALUES (212, 5, 20);
INSERT INTO `ums_role_resource_relation` VALUES (213, 5, 21);
INSERT INTO `ums_role_resource_relation` VALUES (214, 5, 22);
INSERT INTO `ums_role_resource_relation` VALUES (215, 5, 23);
INSERT INTO `ums_role_resource_relation` VALUES (216, 5, 24);
INSERT INTO `ums_role_resource_relation` VALUES (217, 5, 25);
INSERT INTO `ums_role_resource_relation` VALUES (218, 5, 26);
INSERT INTO `ums_role_resource_relation` VALUES (219, 5, 27);
INSERT INTO `ums_role_resource_relation` VALUES (220, 5, 28);
INSERT INTO `ums_role_resource_relation` VALUES (221, 5, 29);
INSERT INTO `ums_role_resource_relation` VALUES (222, 5, 30);
INSERT INTO `ums_role_resource_relation` VALUES (232, 2, 8);
INSERT INTO `ums_role_resource_relation` VALUES (233, 2, 9);
INSERT INTO `ums_role_resource_relation` VALUES (234, 2, 10);
INSERT INTO `ums_role_resource_relation` VALUES (235, 2, 11);
INSERT INTO `ums_role_resource_relation` VALUES (236, 2, 12);
INSERT INTO `ums_role_resource_relation` VALUES (237, 2, 31);
INSERT INTO `ums_role_resource_relation` VALUES (238, 2, 32);
INSERT INTO `ums_role_resource_relation` VALUES (239, 1, 1);
INSERT INTO `ums_role_resource_relation` VALUES (240, 1, 2);
INSERT INTO `ums_role_resource_relation` VALUES (241, 1, 3);
INSERT INTO `ums_role_resource_relation` VALUES (242, 1, 4);
INSERT INTO `ums_role_resource_relation` VALUES (243, 1, 5);
INSERT INTO `ums_role_resource_relation` VALUES (244, 1, 6);
INSERT INTO `ums_role_resource_relation` VALUES (245, 1, 23);
INSERT INTO `ums_role_resource_relation` VALUES (246, 1, 24);
INSERT INTO `ums_role_resource_relation` VALUES (247, 1, 31);
INSERT INTO `ums_role_resource_relation` VALUES (248, 1, 32);

SET FOREIGN_KEY_CHECKS = 1;
