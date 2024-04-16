/*
 Navicat Premium Data Transfer

 Source Server         : 172
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 172.17.0.143:3306
 Source Schema         : cold

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 21/12/2019 15:26:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cz_company
-- ----------------------------
DROP TABLE IF EXISTS `cz_company`;
CREATE TABLE `cz_company`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司名称',
  `abbreviation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司简称',
  `companyNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业编号',
  `companyAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业地址',
  `companyPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司电话',
  `managementName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '质量管理员',
  `managementPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `leader` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人姓名',
  `leaderPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人电话',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `webAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网站',
  `companyType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业类型',
  `createdTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '企业信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cz_company
-- ----------------------------
INSERT INTO `cz_company` VALUES ('39750b4e-f7ed-477e-9f9e-2d40bd7fa139', '迅达仓储', '迅达', NULL, '迅达', '010-87631128', '李四', '13911233321', '', '', '', '', '私企', '2019-11-01 14:07:57', '2019-11-01 14:07:57');
INSERT INTO `cz_company` VALUES ('9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', '好万运输', '李四', '好万运输', '4003729937', '赵老三', '13846485047', '乔峰', '13511281922', '', '', '外企', '2019-07-22 11:24:23', '2019-07-23 19:28:32');

-- ----------------------------
-- Table structure for cz_host
-- ----------------------------
DROP TABLE IF EXISTS `cz_host`;
CREATE TABLE `cz_host`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `hostCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主机编码',
  `hostName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主机名称',
  `houseId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库Id',
  `houseCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库编码',
  `houseName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `hostStatus` int(2) NULL DEFAULT 1 COMMENT '主机状态：1-正常，0-停用',
  `hostModel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备型号',
  `simCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'sim卡号',
  `createdTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idxCode`(`hostCode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '主机表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cz_host
-- ----------------------------
INSERT INTO `cz_host` VALUES ('24edd584-9eff-417a-a24b-8ce44fd0e946', 'H100110001', '昌平一号仓01', '019172a8-661f-4554-a496-133c9b987dea', 'WH1011001', '昌平一号仓', 1, 'DG02931132', '63846484', '2019-07-24 18:48:43', '2019-07-24 18:48:43');
INSERT INTO `cz_host` VALUES ('3be5f9bd-e37a-4166-aff9-3bfc717058b8', 'H100110002', '昌平一号仓02', '019172a8-661f-4554-a496-133c9b987dea', 'WH1011001', '昌平一号仓', 1, 'NH08922123', '84649472', '2019-07-24 18:52:09', '2019-07-24 18:52:09');
INSERT INTO `cz_host` VALUES ('430d8aa7-94bc-4ceb-af69-2519a0cd2b3b', 'H100110003', '昌平一号仓03', '019172a8-661f-4554-a496-133c9b987dea', 'WH1011001', '昌平一号仓', 1, 'HD20130212', '28129321', '2019-07-25 13:46:56', '2019-07-25 13:46:56');
INSERT INTO `cz_host` VALUES ('519764e9-b52b-427b-8b23-3972f7c15125', 'H209214531', '朝阳二号仓03', '2ac9d42e-766f-4f40-b5d8-45c9ee3f77cd', 'CK10221231', '昌平二号仓', 1, 'HO92831209', '213412801', '2019-08-20 15:06:50', '2019-08-20 15:06:50');
INSERT INTO `cz_host` VALUES ('5ae156d4-cba5-4925-b0bd-449c7373cf52', 'H100220003', '昌平二号仓03', '2ac9d42e-766f-4f40-b5d8-45c9ee3f77cd', 'CK10221231', '昌平二号仓', 1, 'HO82120921', '53218901', '2019-08-20 15:11:23', '2019-08-20 15:11:23');
INSERT INTO `cz_host` VALUES ('754f3b9e-ec29-4fe2-ba7d-32877c7f03c1', 'H100220002', '昌平二号仓02', '2ac9d42e-766f-4f40-b5d8-45c9ee3f77cd', 'CK10221231', '昌平二号仓', 1, 'KL021322121', '89213214', '2019-07-24 18:52:42', '2019-07-24 18:52:42');
INSERT INTO `cz_host` VALUES ('9abbad00-267d-4ab9-a86b-522a6ebcbab8', 'H100330001', '昌平三号仓01', '2ada5bbd-a0af-4737-a02f-f9dcc94bb837', 'CK29123112', '昌平三号仓', 1, 'HO92831209', '87218932', '2019-07-24 18:52:16', '2019-07-24 18:52:16');
INSERT INTO `cz_host` VALUES ('aead6018-0fd1-48f7-a611-3a17a08496e1', 'H200230001', '朝阳二号仓01', '972920e5-4858-4a53-aee5-3bb42400d587', 'CK22193212', '朝阳二号仓', 1, 'TY21332084', '67549412', '2019-07-24 18:24:27', '2019-07-24 18:24:27');
INSERT INTO `cz_host` VALUES ('b6ee1ea0-701d-43b6-a759-4eada884554c', 'H200230002', '朝阳二号仓02', '972920e5-4858-4a53-aee5-3bb42400d587', 'CK22193212', '朝阳二号仓', 1, 'TG23120856', '87093765', '2019-07-24 18:26:42', '2019-07-24 18:26:42');
INSERT INTO `cz_host` VALUES ('ec659edf-0ddb-4a04-bace-a933fb9f595f', 'H200130001', '朝阳一号仓01', '85e2b864-3ee9-4c6e-a0ab-138cdba1485d', 'CK21932122', '朝阳一号仓', 1, 'HO92831209', '73841234', '2019-08-20 15:05:58', '2019-08-20 15:05:58');

-- ----------------------------
-- Table structure for cz_message_realtime
-- ----------------------------
DROP TABLE IF EXISTS `cz_message_realtime`;
CREATE TABLE `cz_message_realtime`  (
  `meterCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备编码',
  `meterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备ID',
  `meterName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备名称',
  `hostId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主机Id',
  `hostCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主机编码',
  `hostName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主机名称',
  `houseId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库Id',
  `houseCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库编码',
  `houseName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `companyId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司Id',
  `companyName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `tem` int(5) NULL DEFAULT NULL COMMENT '温度',
  `maxTem` int(5) NULL DEFAULT NULL COMMENT '温度上限',
  `minTem` int(5) NULL DEFAULT NULL COMMENT '温度下限',
  `hum` int(5) NULL DEFAULT NULL COMMENT '湿度',
  `maxHum` int(5) NULL DEFAULT NULL COMMENT '湿度上限',
  `minHum` int(5) NULL DEFAULT NULL COMMENT '湿度下限',
  `temAlert` int(5) NULL DEFAULT 0 COMMENT '温度状况： 1：高温， 0： 正常， -1： 低温',
  `humAlert` int(5) NULL DEFAULT NULL COMMENT '湿度状况： 1：高湿， 0： 正常， -1： 低湿',
  `state` int(5) NULL DEFAULT NULL COMMENT '设备状态: 1-在用，0-停用，2-异常',
  `lon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '维度',
  `curtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提交时间',
  `createTime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`meterCode`) USING BTREE,
  INDEX `idx_state`(`state`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cz_message_realtime
-- ----------------------------
INSERT INTO `cz_message_realtime` VALUES ('M101001002', '10f9b41b-6d9f-4b10-93ea-47aca273fd39', 'M101001002', '24edd584-9eff-417a-a24b-8ce44fd0e946', 'H201232012', '昌平一号仓01', '019172a8-661f-4554-a496-133c9b987dea', 'WH1011001', '昌平一号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', -92, 45, -5, 16, 100, 20, -1, -1, 2, 'null', 'null', '20191217093100', '2019-12-17 09:31:00');
INSERT INTO `cz_message_realtime` VALUES ('M101002001', '601a3939-5eed-45ee-96d1-85caa60d2276', 'M101002001', '3be5f9bd-e37a-4166-aff9-3bfc717058b8', 'H100110002', '昌平一号仓02', '85e2b864-3ee9-4c6e-a0ab-138cdba1485d', 'WH1041001', '朝阳一号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', -67, 20, -20, 1, 40, 10, -1, -1, 0, 'null', 'null', '20191217093132', '2019-12-17 09:31:32');
INSERT INTO `cz_message_realtime` VALUES ('M201002001', '064f5168-18c7-4ccf-96ea-98e441c906ac', 'M201002001', '754f3b9e-ec29-4fe2-ba7d-32877c7f03c1', 'H100220002', '昌平二号仓02', '2ac9d42e-766f-4f40-b5d8-45c9ee3f77cd', 'WH1020001', '昌平二号仓', '39750b4e-f7ed-477e-9f9e-2d40bd7fa139', '迅达仓储', -77, 46, -10, 10, 75, 36, -1, -1, 1, 'null', 'null', '20191217093348', '2019-12-17 09:34:05');
INSERT INTO `cz_message_realtime` VALUES ('M301001001', 'fcbc3b2a-ce9e-448d-9cf0-70d9bd1eeeaa', 'M301001001', '9abbad00-267d-4ab9-a86b-522a6ebcbab8', 'H100330001', '昌平三号仓01', '2ada5bbd-a0af-4737-a02f-f9dcc94bb837', 'WH1030001', '昌平三号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', -1, 15, 0, 0, 50, 30, -1, -1, 0, 'null', 'null', '20191217093225', '2019-12-17 09:32:25');
INSERT INTO `cz_message_realtime` VALUES ('M301001002', 'ffc3b46e-a732-4300-8438-98fa711a53cc', 'M301001002', '9abbad00-267d-4ab9-a86b-522a6ebcbab8', 'H100330001', '昌平三号仓01', '2ada5bbd-a0af-4737-a02f-f9dcc94bb837', 'WH1030001', '昌平三号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', -65, 10, -5, 88, 45, 40, -1, 1, 0, 'null', 'null', '20191217093100', '2019-12-17 09:31:00');
INSERT INTO `cz_message_realtime` VALUES ('M401001001', '1af21da1-9207-4081-b5e1-cdbacf9dbce3', 'M401001001', 'ec659edf-0ddb-4a04-bace-a933fb9f595f', 'H200130001', '朝阳一号仓01', '85e2b864-3ee9-4c6e-a0ab-138cdba1485d', 'WH1041001', '朝阳一号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', -1, 10, -5, 36, 45, 40, 0, -1, 2, 'null', 'null', '20191217093100', '2019-12-17 09:31:00');
INSERT INTO `cz_message_realtime` VALUES ('M401001002', 'bc34b30d-20b9-4aa0-8fae-77872acee133', 'M401001002', 'ec659edf-0ddb-4a04-bace-a933fb9f595f', 'H200130001', '朝阳一号仓01', '85e2b864-3ee9-4c6e-a0ab-138cdba1485d', 'WH1041001', '朝阳一号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', -38, 15, -10, 75, 50, 30, -1, 1, 2, 'null', 'null', '20191217093201', '2019-12-17 09:32:01');
INSERT INTO `cz_message_realtime` VALUES ('M402001001', '5252cd99-9628-4282-85d2-a72fcca11a96', 'M402001001', 'aead6018-0fd1-48f7-a611-3a17a08496e1', 'H200230001', '朝阳二号仓01', '972920e5-4858-4a53-aee5-3bb42400d587', 'WH3012001', '朝阳二号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', -9, 20, 10, 4, 45, 25, -1, -1, 0, 'null', 'null', '20191217093101', '2019-12-17 09:31:01');
INSERT INTO `cz_message_realtime` VALUES ('M402001002', 'a52eee8d-3885-446e-864e-ec2adf2ca648', 'M402001002', 'aead6018-0fd1-48f7-a611-3a17a08496e1', 'H200230001', '朝阳二号仓01', '972920e5-4858-4a53-aee5-3bb42400d587', 'WH3012001', '朝阳二号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', -77, 25, 15, 92, 50, 25, -1, 1, 2, 'null', 'null', '20191217093101', '2019-12-17 09:31:01');
INSERT INTO `cz_message_realtime` VALUES ('M402002001', 'f2e714d1-ef5e-402a-bb55-8e868e566aa8', 'M402002001', 'b6ee1ea0-701d-43b6-a759-4eada884554c', 'H200230002', '朝阳二号仓02', '972920e5-4858-4a53-aee5-3bb42400d587', 'WH3012001', '朝阳二号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', -55, -10, -30, 9, 50, 25, -1, -1, 1, 'null', 'null', '20191217093101', '2019-12-17 09:31:01');
INSERT INTO `cz_message_realtime` VALUES ('M402002002', 'b087ed57-1bbc-4363-b3fb-55095722c82d', 'M402002002', 'b6ee1ea0-701d-43b6-a759-4eada884554c', 'H200230002', '朝阳二号仓02', '2ada5bbd-a0af-4737-a02f-f9dcc94bb837', 'WH1030001', '昌平三号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', -84, -20, -40, 36, 60, 30, -1, 0, 1, 'null', 'null', '20191217093101', '2019-12-17 09:31:01');
INSERT INTO `cz_message_realtime` VALUES ('M402003001', '48d27e12-228c-4ba4-b5fe-982db0bff819', 'M402003001', '519764e9-b52b-427b-8b23-3972f7c15125', 'H209214531', '朝阳二号仓03', '972920e5-4858-4a53-aee5-3bb42400d587', 'WH3012001', '朝阳二号仓', '39750b4e-f7ed-477e-9f9e-2d40bd7fa139', '迅达仓储', -52, -10, -20, 91, 70, 40, -1, 1, 1, 'null', 'null', '20191217093121', '2019-12-17 09:31:21');

-- ----------------------------
-- Table structure for cz_meter
-- ----------------------------
DROP TABLE IF EXISTS `cz_meter`;
CREATE TABLE `cz_meter`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `meterCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备编码',
  `meterName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备名称',
  `hostId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主机ID',
  `hostCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主机编码',
  `hostName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主机名称',
  `houseId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库Id',
  `houseCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库编码',
  `houseName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `companyId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司Id',
  `companyName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `meterStatus` int(2) NULL DEFAULT 1 COMMENT '仪表状态(1-在用,0-停用,2-异常)',
  `maxTem` int(6) NULL DEFAULT NULL COMMENT '温度上限',
  `minTem` int(6) NULL DEFAULT NULL COMMENT '温度下限',
  `maxHum` int(6) NULL DEFAULT NULL COMMENT '湿度上限',
  `minHum` int(6) NULL DEFAULT NULL COMMENT '湿度下限',
  `meterInterval` int(6) NULL DEFAULT NULL COMMENT '采集间隔',
  `remarks` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `createdTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idxCode`(`meterCode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cz_meter
-- ----------------------------
INSERT INTO `cz_meter` VALUES ('064f5168-18c7-4ccf-96ea-98e441c906ac', 'M201002001', 'M201002001', '754f3b9e-ec29-4fe2-ba7d-32877c7f03c1', 'H100220002', '昌平二号仓02', '2ac9d42e-766f-4f40-b5d8-45c9ee3f77cd', 'WH1020001', '昌平二号仓', '39750b4e-f7ed-477e-9f9e-2d40bd7fa139', '迅达仓储', 2, 46, -10, 75, 36, 40, '', '2019-08-20 15:41:04', '2019-08-20 15:41:04');
INSERT INTO `cz_meter` VALUES ('0e3ac05a-235f-43f6-8b59-cfa3f3ee4e16', 'M101101001', 'M101101001', '24edd584-9eff-417a-a24b-8ce44fd0e946', 'H100110001', '昌平一号仓01', '019172a8-661f-4554-a496-133c9b987dea', 'WH1011001', '昌平一号仓', '39750b4e-f7ed-477e-9f9e-2d40bd7fa139', '迅达仓储', 0, 30, -10, 60, 10, 20, '', '2019-07-25 10:13:59', '2019-07-25 10:13:59');
INSERT INTO `cz_meter` VALUES ('10f9b41b-6d9f-4b10-93ea-47aca273fd39', 'M101001002', 'M101001002', '24edd584-9eff-417a-a24b-8ce44fd0e946', 'H201232012', '昌平一号仓01', '019172a8-661f-4554-a496-133c9b987dea', 'WH1011001', '昌平一号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', 1, 45, -5, 100, 20, 60, '', '2019-07-25 10:33:57', '2019-07-25 10:33:57');
INSERT INTO `cz_meter` VALUES ('1af21da1-9207-4081-b5e1-cdbacf9dbce3', 'M401001001', 'M401001001', 'ec659edf-0ddb-4a04-bace-a933fb9f595f', 'H200130001', '朝阳一号仓01', '85e2b864-3ee9-4c6e-a0ab-138cdba1485d', 'WH1041001', '朝阳一号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', 1, 10, -5, 45, 40, 60, '', '2019-08-20 16:38:29', '2019-08-20 16:38:29');
INSERT INTO `cz_meter` VALUES ('48d27e12-228c-4ba4-b5fe-982db0bff819', 'M402003001', 'M402003001', '519764e9-b52b-427b-8b23-3972f7c15125', 'H209214531', '朝阳二号仓03', '972920e5-4858-4a53-aee5-3bb42400d587', 'WH3012001', '朝阳二号仓', '39750b4e-f7ed-477e-9f9e-2d40bd7fa139', '迅达仓储', 1, -10, -20, 70, 40, 20, '', '2019-08-20 16:43:03', '2019-08-20 16:43:03');
INSERT INTO `cz_meter` VALUES ('5252cd99-9628-4282-85d2-a72fcca11a96', 'M402001001', 'M402001001', 'aead6018-0fd1-48f7-a611-3a17a08496e1', 'H200230001', '朝阳二号仓01', '972920e5-4858-4a53-aee5-3bb42400d587', 'WH3012001', '朝阳二号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', 1, 20, 10, 45, 25, 40, '', '2019-08-20 16:39:59', '2019-08-20 16:39:59');
INSERT INTO `cz_meter` VALUES ('5456f87d-4f94-4cfa-9b92-c93fd4e0fdc8', 'M201002002', 'M201002002', 'ec659edf-0ddb-4a04-bace-a933fb9f595f', 'H200130001', '朝阳一号仓01', '85e2b864-3ee9-4c6e-a0ab-138cdba1485d', 'WH1041001', '朝阳一号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', 1, 35, 5, 80, 50, 50, '', '2019-08-20 15:39:44', '2019-08-20 15:39:44');
INSERT INTO `cz_meter` VALUES ('601a3939-5eed-45ee-96d1-85caa60d2276', 'M101002001', 'M101002001', '3be5f9bd-e37a-4166-aff9-3bfc717058b8', 'H100110002', '昌平一号仓02', '85e2b864-3ee9-4c6e-a0ab-138cdba1485d', 'WH1041001', '朝阳一号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', 1, 20, -20, 40, 10, 60, '', '2019-08-20 15:54:06', '2019-08-20 15:54:06');
INSERT INTO `cz_meter` VALUES ('75148c0f-79db-4861-a3c9-c0031ce08031', 'M201001001', 'M201001001', '5ae156d4-cba5-4925-b0bd-449c7373cf52', 'H100220003', '昌平二号仓03', '2ac9d42e-766f-4f40-b5d8-45c9ee3f77cd', 'CK10221231', '昌平二号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', 1, 25, -5, 46, 15, 40, '123', '2019-07-25 10:36:29', '2019-07-25 10:36:29');
INSERT INTO `cz_meter` VALUES ('8a6d875b-83ff-4052-ab5f-d123dc709957', 'M103001001', 'M103001001', '754f3b9e-ec29-4fe2-ba7d-32877c7f03c1', 'H100220002', '昌平二号仓02', '2ac9d42e-766f-4f40-b5d8-45c9ee3f77cd', 'WH1020001', '昌平二号仓', '39750b4e-f7ed-477e-9f9e-2d40bd7fa139', '迅达仓储', 1, 45, 10, 56, 20, 30, '', '2019-08-20 16:04:40', '2019-08-20 16:04:40');
INSERT INTO `cz_meter` VALUES ('a52eee8d-3885-446e-864e-ec2adf2ca648', 'M402001002', 'M402001002', 'aead6018-0fd1-48f7-a611-3a17a08496e1', 'H200230001', '朝阳二号仓01', '972920e5-4858-4a53-aee5-3bb42400d587', 'WH3012001', '朝阳二号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', 1, 25, 15, 50, 25, 30, '', '2019-08-20 16:40:15', '2019-08-20 16:40:15');
INSERT INTO `cz_meter` VALUES ('b087ed57-1bbc-4363-b3fb-55095722c82d', 'M402002002', 'M402002002', 'b6ee1ea0-701d-43b6-a759-4eada884554c', 'H200230002', '朝阳二号仓02', '2ada5bbd-a0af-4737-a02f-f9dcc94bb837', 'WH1030001', '昌平三号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', 1, -20, -40, 60, 30, 55, '', '2019-08-20 16:42:21', '2019-08-20 16:42:21');
INSERT INTO `cz_meter` VALUES ('bc34b30d-20b9-4aa0-8fae-77872acee133', 'M401001002', 'M401001002', 'ec659edf-0ddb-4a04-bace-a933fb9f595f', 'H200130001', '朝阳一号仓01', '85e2b864-3ee9-4c6e-a0ab-138cdba1485d', 'WH1041001', '朝阳一号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', 1, 15, -10, 50, 30, 35, '', '2019-08-20 16:38:59', '2019-08-20 16:38:59');
INSERT INTO `cz_meter` VALUES ('f2e714d1-ef5e-402a-bb55-8e868e566aa8', 'M402002001', 'M402002001', 'b6ee1ea0-701d-43b6-a759-4eada884554c', 'H200230002', '朝阳二号仓02', '972920e5-4858-4a53-aee5-3bb42400d587', 'WH3012001', '朝阳二号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', 1, -10, -30, 50, 25, 60, '', '2019-08-20 16:41:48', '2019-08-20 16:41:48');
INSERT INTO `cz_meter` VALUES ('fcbc3b2a-ce9e-448d-9cf0-70d9bd1eeeaa', 'M301001001', 'M301001001', '9abbad00-267d-4ab9-a86b-522a6ebcbab8', 'H100330001', '昌平三号仓01', '2ada5bbd-a0af-4737-a02f-f9dcc94bb837', 'WH1030001', '昌平三号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', 1, 15, 0, 50, 30, 50, '', '2019-08-20 16:32:40', '2019-08-20 16:32:40');
INSERT INTO `cz_meter` VALUES ('ffc3b46e-a732-4300-8438-98fa711a53cc', 'M301001002', 'M301001002', '9abbad00-267d-4ab9-a86b-522a6ebcbab8', 'H100330001', '昌平三号仓01', '2ada5bbd-a0af-4737-a02f-f9dcc94bb837', 'WH1030001', '昌平三号仓', '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', 1, 10, -5, 45, 40, 60, '', '2019-08-20 16:33:44', '2019-08-20 16:33:44');

-- ----------------------------
-- Table structure for cz_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `cz_warehouse`;
CREATE TABLE `cz_warehouse`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `houseCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '仓库编码',
  `houseName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `houseAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库地址',
  `houseType` int(2) NULL DEFAULT NULL COMMENT '库房类型：1-冷库， 2-恒温库',
  `companyId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司Id',
  `companyName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `principalName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `principalTel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人电话',
  `longitude` decimal(10, 6) NULL DEFAULT NULL COMMENT '经度',
  `latitude` decimal(10, 6) NULL DEFAULT NULL COMMENT '维度',
  `areaSize` double(6, 0) NULL DEFAULT NULL COMMENT '库房面积',
  `houseStatus` int(2) NULL DEFAULT 1 COMMENT '状态：1-正常,0-空库',
  `createdTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idxCode`(`houseCode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '仓库表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cz_warehouse
-- ----------------------------
INSERT INTO `cz_warehouse` VALUES ('2ac9d42e-766f-4f40-b5d8-45c9ee3f77cd', 'WH1020001', '昌平二号仓', 'ces ', 1, '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', '武王', '13622129089', 115.168000, 38.915000, 20000, 1, '2019-07-25 13:25:06', '2019-08-07 11:11:29');
INSERT INTO `cz_warehouse` VALUES ('2ada5bbd-a0af-4737-a02f-f9dcc94bb837', 'WH1030001', '昌平三号仓', 'ceshi123', 2, '9d0cd756-2ee5-4ea5-9405-07864f7c5b46', '好万运输', '周乾', '18922123210', 115.168000, 36.879000, 40000, 1, '2019-07-25 13:27:45', '2019-08-07 11:11:44');
INSERT INTO `cz_warehouse` VALUES ('85e2b864-3ee9-4c6e-a0ab-138cdba1485d', 'WH1041001', '朝阳一号仓', '', 1, 'a4130a4e-2706-41fb-87c7-c4521d08e9a8', '顺捷运输', '孙淼', '13811291120', 114.168000, 39.981000, 10000, 1, '2019-07-24 17:43:39', '2019-08-07 11:12:04');
INSERT INTO `cz_warehouse` VALUES ('972920e5-4858-4a53-aee5-3bb42400d587', 'WH3012001', '朝阳二号仓', '', 2, '98478163-54e4-4124-ab05-83f9e9b6f4c6', '申达运输', '吴越', '15619210201', 114.298000, 38.128000, 3500, 1, '2019-07-24 17:09:55', '2019-08-07 11:12:23');

SET FOREIGN_KEY_CHECKS = 1;
