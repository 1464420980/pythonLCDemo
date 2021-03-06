/*
 Navicat Premium Data Transfer

 Source Server         : oracle-lmtplat-SCOTT-Lmt123456
 Source Server Type    : Oracle
 Source Server Version : 110200
 Source Host           : ###:1521
 Source Schema         : SCOTT

 Target Server Type    : Oracle
 Target Server Version : 110200
 File Encoding         : 65001

 Date: 22/02/2019 16:41:33
*/


-- ----------------------------
-- Table structure for FI_CHARGE_RECORD
-- ----------------------------
DROP TABLE "SCOTT"."FI_CHARGE_RECORD";
CREATE TABLE "SCOTT"."FI_CHARGE_RECORD" (
  "RCR_ORG_ID" VARCHAR2(6 BYTE) DEFAULT '' NOT NULL ,
  "RCR_ID" VARCHAR2(20 BYTE) NOT NULL ,
  "CHARGE_TIME" TIMESTAMP(6) ,
  "CUSTOMER_NO" VARCHAR2(20 BYTE) ,
  "METER_NO" VARCHAR2(20 BYTE) ,
  "COMM_NO" VARCHAR2(20 BYTE) ,
  "PRICE_NO" VARCHAR2(20 BYTE) ,
  "PRICE" VARCHAR2(500 BYTE) ,
  "IC_CHARGE_VOLUME" VARCHAR2(50 BYTE) DEFAULT 0.00 ,
  "IC_CHARGE_MONEY" VARCHAR2(50 BYTE) DEFAULT 0.00 ,
  "REMOTE_CHARGE_VOLUME" VARCHAR2(50 BYTE) DEFAULT 0.00 ,
  "REMOTE_CHARGE_MONEY" VARCHAR2(50 BYTE) DEFAULT 0.00 ,
  "SELF_CHARGE_VOLUME" VARCHAR2(50 BYTE) DEFAULT 0.00 ,
  "SELF_CHARGE_MONEY" VARCHAR2(50 BYTE) DEFAULT 0.00 ,
  "CHARGE_VOLUME_BACK1" VARCHAR2(50 BYTE) ,
  "CHARGE_MONEY_BACK1" VARCHAR2(50 BYTE) ,
  "CHARGE_VOLUME_BACK2" VARCHAR2(50 BYTE) ,
  "CHARGE_MONEY_BACK2" VARCHAR2(50 BYTE) ,
  "TOTAL_VOLUME" VARCHAR2(50 BYTE) ,
  "TOTAL_MONEY" VARCHAR2(50 BYTE) ,
  "CHARGE_TIMES" VARCHAR2(50 BYTE) ,
  "METER_TYPE" VARCHAR2(5 BYTE) ,
  "CHARGE_OPERATOR" VARCHAR2(10 BYTE) ,
  "RECEIPT_NO" VARCHAR2(30 BYTE) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."RCR_ORG_ID" IS '机构号';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."RCR_ID" IS 'ID';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."CHARGE_TIME" IS '充值时间';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."CUSTOMER_NO" IS '客户号';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."METER_NO" IS '表计号';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."COMM_NO" IS '通讯编号';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."PRICE_NO" IS '价格号';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."PRICE" IS '当前执行价格，取自表计信息CURRENT_PRICE';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."IC_CHARGE_VOLUME" IS 'IC卡充值累计量';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."IC_CHARGE_MONEY" IS 'IC卡累计充值金额';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."REMOTE_CHARGE_VOLUME" IS '远传充值累计量';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."REMOTE_CHARGE_MONEY" IS '远传充值累计充值金额';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."SELF_CHARGE_VOLUME" IS '自助充值累计量';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."SELF_CHARGE_MONEY" IS '自助充值累计充值金额';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."CHARGE_VOLUME_BACK1" IS '备用累积量1';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."CHARGE_MONEY_BACK1" IS '备用累计金额1';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."CHARGE_VOLUME_BACK2" IS '备用累积量2';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."CHARGE_MONEY_BACK2" IS '备用累计金额2';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."TOTAL_VOLUME" IS '累计量';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."TOTAL_MONEY" IS '累计金额';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."CHARGE_TIMES" IS '充值次数';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."METER_TYPE" IS '表计类型';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."CHARGE_OPERATOR" IS '充值操作者';
COMMENT ON COLUMN "SCOTT"."FI_CHARGE_RECORD"."RECEIPT_NO" IS '收据编号';

-- ----------------------------
-- Records of "FI_CHARGE_RECORD"
-- ----------------------------
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000090', TO_TIMESTAMP('2019-01-20 10:54:54.356000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000046', '00036000000064', NULL, '0003000017', '3.5', '0.00', '1409.0099999999999958', '0', '0', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1409.0099999999999958', '102', NULL, '00030002', '0003201901000291');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000087', TO_TIMESTAMP('2018-12-01 13:26:00.401000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000048', NULL, '0003000003', NULL, '0', '0', '0', '20.00', '0', '0', NULL, NULL, NULL, NULL, '0', '20.00', '12', NULL, '00030012', '000320181200000009');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000091', TO_TIMESTAMP('2019-01-02 10:47:13.996000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000036', '00036000000069', NULL, '0003000017', NULL, '0', '0', '0', '306.99', '0', '0', NULL, NULL, NULL, NULL, '0', '306.99', '18', NULL, '00030011', '000320190100000006');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000092', TO_TIMESTAMP('2018-12-20 10:00:02.371000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000036', '00036000000068', NULL, '0003000017', NULL, '0', '0', '0', '200.99', '0', '0', NULL, NULL, NULL, NULL, '0', '200.99', '11', NULL, '00030011', '000320181200001058');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000093', TO_TIMESTAMP('2018-12-20 10:00:05.746000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000036', '00036000000067', NULL, '0003000017', NULL, '0', '0', '0', '200.99', '0', '0', NULL, NULL, NULL, NULL, '0', '200.99', '11', NULL, '00030011', '000320181200001059');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000094', TO_TIMESTAMP('2018-12-20 10:00:09.200000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000036', '00036000000066', NULL, '0003000017', NULL, '0', '0', '0', '200.99', '0', '0', NULL, NULL, NULL, NULL, '0', '200.99', '11', NULL, '00030011', '000320181200001060');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000095', TO_TIMESTAMP('2018-12-28 14:23:19.590000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000036', '00036000000065', NULL, '0003000017', NULL, '0', '0', '0', '200.99', '0', '0', NULL, NULL, NULL, NULL, '0', '200.99', '12', NULL, '00030011', '000320181200001633');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000096', TO_TIMESTAMP('2019-01-16 16:48:31.028000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000036', '00036000000070', NULL, '0003000017', NULL, '0', '0', '0', '200.99', '0', '0', NULL, NULL, NULL, NULL, '0', '200.99', '18', NULL, '00030002', '0003201901000170');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000081', TO_TIMESTAMP('2019-01-09 10:28:51.575000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000040', '00036000000046', NULL, '0003000014', NULL, '0', '3373004.44', '0', '-1372589.44', '0', '0', NULL, NULL, NULL, NULL, '0', '2000415.00', '334', NULL, '00030009', '000320190100000062');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000084', TO_TIMESTAMP('2019-01-07 08:53:09.590000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000036', '00036000000050', NULL, '0003000005', NULL, '0', '0', '0', '40.28', '0', '0', NULL, NULL, NULL, NULL, '0', '40.28', '45', NULL, '00030011', '000320190100000009');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000085', TO_TIMESTAMP('2018-12-18 16:11:42.325000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000036', '00036000000051', NULL, '0003000005', NULL, '0', '0', '5.00', '1145.30', '0', '0', NULL, NULL, NULL, NULL, '5.00', '1145.30', '64', NULL, '00030009', '000320181200000940');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000045', TO_TIMESTAMP('2018-12-11 09:59:03.907000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000043', '00030000000045', NULL, '0003000015', '3', '0.00', '88', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '700', '6', '0002', '00030003', '0003201812000754');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000046', TO_TIMESTAMP('2018-12-11 09:57:34.820000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000043', '00030000000045', NULL, '0003000015', '3', '0.00', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '10', '1', '0002', '00030003', '000320181200000752');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000047', TO_TIMESTAMP('2018-12-11 15:13:20.620000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000044', '00030000000046', NULL, '0003000015', '3', '0.00', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '103', '9', '0002', '00030002', '0003201812000769');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000041', TO_TIMESTAMP('2018-12-11 09:34:58.048000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000041', '00030000000042', NULL, '0003000015', '3', '0.00', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '149.43', '9', '0001', '00030003', '0003201812000746');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000088', TO_TIMESTAMP('2019-01-09 19:54:18.012000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000030', '00036000000053', NULL, '0003000016', '3.50', '0', '-47.74', '20.00', '52.74', '0', '0', NULL, NULL, NULL, NULL, '20.00', '5.00', '165', NULL, '00030012', '000320190100000069');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000082', TO_TIMESTAMP('2019-01-15 11:08:00.718000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000036', '00036000000049', NULL, '0003000005', NULL, '0', '-998865', '0', '998870.27', '0', '5.00', NULL, NULL, NULL, NULL, '0', '10.27', '142', NULL, '00030011', '000320190100000123');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000086', TO_TIMESTAMP('2019-01-08 10:19:15.325000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000036', '00036000000052', NULL, '0003000005', NULL, '0', '0', '0', '1132.28', '0', '0', NULL, NULL, NULL, NULL, '0', '1132.28', '29', NULL, '00030011', '000320190100000010');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000089', TO_TIMESTAMP('2019-01-09 08:52:57.965000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000030', '00036000000054', NULL, '0003000016', NULL, '0', '0', '0', '15.00', '0', '0', NULL, NULL, NULL, NULL, '0', '15.00', '104', NULL, '00030012', '000320190100000030');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000083', TO_TIMESTAMP('2019-01-16 12:45:25.778000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000047', NULL, '0003000003', '3.5', '-50.6', '-177.10', '147.00', '514.50', '0', '0', NULL, NULL, NULL, NULL, '96.40', '337.40', '137', NULL, '00030002', '0003201901000162');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0011', '00110000000001', TO_TIMESTAMP('2019-01-19 15:42:58.746000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00110000000001', '00116000000001', NULL, '0011000003', NULL, '0', '18422.8', '0', '0', '0', '0', NULL, NULL, NULL, NULL, '0', '18422.8', '26', NULL, '00110001', '0011201901000039');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0012', '00120000000001', TO_TIMESTAMP('2018-12-03 16:46:14.185000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00120000000001', '00126000000002', NULL, '0012000003', NULL, '0', '0', '0', '24.44', '0', '0', NULL, NULL, NULL, NULL, '0', '24.44', '17', NULL, '00120001', '001220181200000007');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000042', TO_TIMESTAMP('2018-12-10 18:53:21.425000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000041', '00030000000041', NULL, '0003000016', 'null', '0.00', '43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '43', '2', '0003', '00030002', '0003201812000741');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000099', TO_TIMESTAMP('2019-01-22 16:12:08.643000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000047', '00036000000073', NULL, '0003000016', NULL, '0', '3645', '0', '0', '0', '0', NULL, NULL, NULL, NULL, '0', '3645', '42', NULL, '00030009', '0003201901000376');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000040', TO_TIMESTAMP('2018-11-08 19:24:04.205000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000016', NULL, NULL, NULL, '0', '0', '0', '2489.65', '0', '0', NULL, NULL, NULL, NULL, '0', '2489.65', '17', NULL, '00030009', '000320181100000280');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000008', TO_TIMESTAMP('2018-11-07 11:33:05.680000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000015', NULL, NULL, NULL, '0', '0', '70.00', '1927.65', '0', '0', NULL, NULL, NULL, NULL, '70.00', '1927.65', '38', NULL, '00030009', '000320181100000192');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000009', TO_TIMESTAMP('2018-12-07 13:46:26.256000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000017', NULL, NULL, NULL, '0.00', '0', '10.00', '1727.65', '0', '0', NULL, NULL, NULL, NULL, '10.00', '2252.65', '35', NULL, '00030009', '000320181200000650');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000010', TO_TIMESTAMP('2019-01-22 15:52:31.905000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000018', NULL, NULL, '3.5', '4.60', '3210.32', '299.40', '601.41', '0', '0', NULL, NULL, NULL, NULL, '304.00', '3811.73', '657', NULL, '00030009', '0003201901000368');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000011', TO_TIMESTAMP('2018-09-13 11:37:44.900000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000027', NULL, NULL, NULL, '0', '0', '0', '190.00', '0', '0', NULL, NULL, NULL, NULL, '0', '190.00', '13', NULL, NULL, NULL);
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000012', TO_TIMESTAMP('2019-01-11 09:46:11.621000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000019', NULL, NULL, NULL, '0', '183', '944.20', '79667.29', '0', '0', NULL, NULL, NULL, NULL, '944.20', '79850.29', '201', NULL, '00030002', '000320190100000099');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000039', TO_TIMESTAMP('2018-11-06 16:57:00.179000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000021', NULL, NULL, NULL, '0', '80', '850.00', '26271.00', '0', '0', NULL, NULL, NULL, NULL, '850.00', '26351.00', '83', NULL, '00030006', '000320181100000166');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000003', TO_TIMESTAMP('2018-12-25 15:25:54.602000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000002', '00036000000005', NULL, '0003000002', '3.5', '1134.00', '4169.0', NULL, '977.66', NULL, NULL, NULL, NULL, NULL, NULL, '1134.00', '6146.87', '145', NULL, '00030002', '0003201812001518');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000002', TO_TIMESTAMP('2018-09-19 13:36:40.834000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000022', NULL, NULL, NULL, '0', '0', '0', '303.30', '0', '0', NULL, NULL, NULL, NULL, '0', '303.30', '31', NULL, '00030001', '000320180900000173');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000004', TO_TIMESTAMP('2018-11-06 15:49:37.111000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000012', NULL, NULL, NULL, '0', '0', '0', '2996.58', '0', '0', NULL, NULL, NULL, NULL, '0', '2996.58', '25', NULL, '00030012', '000320181100000141');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000005', TO_TIMESTAMP('2018-10-26 11:58:50.456000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000024', NULL, NULL, NULL, '0', '0', '0', '1345.65', '0', '0', NULL, NULL, NULL, NULL, '0', '1345.65', '17', NULL, '00030002', '000320181000000372');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000044', TO_TIMESTAMP('2018-12-11 09:42:13.751000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000042', '00030000000044', NULL, '0003000014', '2.517', '0.00', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '135', '2', '0002', '00030003', '0003201812000747');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000048', TO_TIMESTAMP('2018-12-12 13:21:09.240000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000045', '00030000000047', NULL, '0003000001', '3.25', '0.00', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '100', '1', '0002', '00030003', '000320181200000789');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0008', '00080000000001', TO_TIMESTAMP('2018-12-12 16:55:48.876000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00080000000001', '00086000000001', NULL, '01', NULL, '0', '0', '0', '23.00', '0', '0', NULL, NULL, NULL, NULL, '0', '23.00', '502', NULL, '0008', '000820181200000010');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0007', '00070000000001', TO_TIMESTAMP('2018-11-13 14:01:18.651000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00070000000001', '00076000000001', NULL, NULL, NULL, '0', '0', '0', '2192.00', '0', '0', NULL, NULL, NULL, NULL, '0', '2192.00', '44', NULL, '00070001', '000720181100000024');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000058', TO_TIMESTAMP('2018-12-10 18:47:30.817000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000018', '00036000000037', NULL, '0003000013', NULL, '0', '4530.9', '0', '46194.21', '0', '130.00', NULL, NULL, NULL, NULL, '0', '50855.11', '80', NULL, '00030002', '0003201812000739');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000028', TO_TIMESTAMP('2018-10-21 17:28:37.478000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000025', '00036000000028', NULL, '0003000012', '3.33', '0.00', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '100', '1', '0001', '00030001', '000320181000000237');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000029', TO_TIMESTAMP('2018-10-21 17:31:43.167000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000026', '00036000000029', NULL, '0003000012', '3.33', '0.00', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '100', '1', '0001', '00030001', '000320181000000238');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000097', TO_TIMESTAMP('2019-01-22 14:56:46.439000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000047', '0800007983', NULL, '0003000002', '2.5', '2440', '6100.0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, '2440', '6100.0', '29', NULL, '00030009', '0003201901000349');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000006', TO_TIMESTAMP('2018-09-18 16:11:00.353000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000011', '00036000000009', NULL, '0003000003', '3.5', '0.00', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '300', '2', '0004', '00030001', '0003201809000140');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000007', TO_TIMESTAMP('2018-09-18 16:14:34.384000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000011', '00036000000010', NULL, '0003000002', '2.5', '0.00', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '300', '2', '0002', '00030001', '0003201809000142');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000015', TO_TIMESTAMP('2018-11-22 15:23:14.903000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000013', NULL, NULL, NULL, '0', '1012.45', '0', '4299.55', '0', '0', NULL, NULL, NULL, NULL, '0', '5312.00', '119', NULL, '00030006', '000320181100001121');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000073', TO_TIMESTAMP('2019-01-16 17:56:46.512000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000029', '00036000000039', NULL, '0003000013', '3.5', '10', '8265.51', '602.00', '1110.27', '0', '130.00', NULL, NULL, NULL, NULL, '612.00', '9505.78', '589', NULL, '00030002', '0003201901000176');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000074', TO_TIMESTAMP('2019-01-21 14:52:34.264000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000030', '00036000000040', NULL, '0003000013', NULL, '0', '610', '10.00', '-607.89', '0', '0', NULL, NULL, NULL, NULL, '10.00', '2.11', '632', NULL, '00030012', '000320190100000306');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000078', TO_TIMESTAMP('2018-11-17 08:49:04.438000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000037', '00036000000044', NULL, '0003000013', NULL, '0', '40', '0', '-35.00', '0', '0', NULL, NULL, NULL, NULL, '0', '5.00', '13', NULL, '00030012', '000320181100000789');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0011', '00110000000002', TO_TIMESTAMP('2019-01-11 11:59:01.309000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00110000000002', '00116000000002', NULL, '0011000005', NULL, '0', '5320', '0', '0', '0', '0', NULL, NULL, NULL, NULL, '0', '5320', '1', NULL, '00110001', '0011201901000004');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0011', '00110000000003', TO_TIMESTAMP('2019-01-17 16:46:54.255000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00110000000003', '00116000000003', NULL, '0011000003', '3.328', '1000', '3328.0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, '1000', '3328.0', '9', NULL, '00110001', '0011201901000023');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000080', TO_TIMESTAMP('2018-11-01 13:54:20.103000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000002', '00036000000003', NULL, NULL, NULL, NULL, NULL, NULL, '300.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '300.00', '2', NULL, '00030002', '00030000000033');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000069', TO_TIMESTAMP('2018-10-22 15:03:31.119000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000002', '00036000000004', NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL);
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0011', '00110000000004', TO_TIMESTAMP('2019-01-17 15:16:53.684000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00110000000004', '00116000000004', NULL, '0011000003', '3.328', '0', '0.0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, '0', '0.0', '4', NULL, '00110001', '0011201901000018');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000071', TO_TIMESTAMP('2018-11-08 15:05:09.647000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000014', NULL, '0003000003', NULL, '0', '80', '140.00', '1150.00', '0', '0', NULL, NULL, NULL, NULL, '140.00', '1230.00', '84', NULL, '00030009', '000320181100000249');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000072', TO_TIMESTAMP('2018-11-19 08:41:10.145000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000028', '00036000000038', NULL, '0003000013', NULL, '0', '15.75', '0', '-12.55', '0', '0', NULL, NULL, NULL, NULL, '0', '3.20', '32', NULL, '00030012', '000320181100000807');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000014', TO_TIMESTAMP('2018-10-15 15:52:01.932000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000025', NULL, NULL, NULL, '0', '0', '0', '2300.00', '0', '0', NULL, NULL, NULL, NULL, '0', '2300.00', '19', NULL, '00030001', '000320181000000110');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000018', TO_TIMESTAMP('2019-01-22 15:46:44.203000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000006', '00036000000020', NULL, NULL, '3.5', '8.0', '700072.20', '550.50', '-698096.85', '0', '0', NULL, NULL, NULL, NULL, '558.50', '1975.35', '349', NULL, '00030006', '0003201901000366');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000043', TO_TIMESTAMP('2018-10-19 15:08:15.227000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000002', '00036000000035', NULL, '0003000003', NULL, '0', '1', '0', '0', '0', '0', NULL, NULL, NULL, NULL, '0', '1', '1', NULL, '00030001', '0003201810000229');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000075', TO_TIMESTAMP('2018-11-19 10:17:44.739000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000031', '00036000000041', NULL, '0003000013', NULL, '0', '650', '0', '-635.00', '0', '0', NULL, NULL, NULL, NULL, '0', '15.00', '24', NULL, '00030012', '000320181100000815');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000076', TO_TIMESTAMP('2018-11-17 08:32:57.741000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000032', '00036000000042', NULL, '0003000013', NULL, '0', '80', '0', '-69.95', '0', '0', NULL, NULL, NULL, NULL, '0', '10.05', '68', NULL, '00030012', '000320181100000785');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000077', TO_TIMESTAMP('2018-11-16 15:39:21.536000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000033', '00036000000043', NULL, '0003000013', NULL, '0', '60', '0', '-57.98', '0', '0', NULL, NULL, NULL, NULL, '0', '2.02', '46', NULL, '00030012', '000320181100000769');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000079', TO_TIMESTAMP('2018-12-03 08:18:24.781000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000036', '00036000000045', NULL, '0003000005', NULL, '0', '170.99', '642.99', '-107.99', '0', '0', NULL, NULL, NULL, NULL, '642.99', '63.00', '88', NULL, '00030012', '000320181200000025');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0009', '00090000000001', TO_TIMESTAMP('2019-01-22 09:20:35.539000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00090000000002', '00096000000002', NULL, '0009000003', NULL, '0', '35005', '0', '0', '0', '0', NULL, NULL, NULL, NULL, '0', '35005', '16', NULL, '00090001', '0009201901000002');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0006', '00060000000001', TO_TIMESTAMP('2019-01-04 12:46:49.465000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00060000000001', '00066000000001', NULL, '0006000003', NULL, '0', '18114.6', '0', '0', '0', '0', NULL, NULL, NULL, NULL, '0', '18114.6', '6', NULL, '00060001', '0006201901000002');
INSERT INTO "SCOTT"."FI_CHARGE_RECORD" VALUES ('0003', '00030000000098', TO_TIMESTAMP('2019-01-22 16:09:21.451000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '00030000000002', '00036000000072', NULL, '0003000010', '3.5', '8020', '28070.0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, '8020', '28070.0', '10', NULL, '00030009', '0003201901000375');

-- ----------------------------
-- Primary Key structure for table FI_CHARGE_RECORD
-- ----------------------------
ALTER TABLE "SCOTT"."FI_CHARGE_RECORD" ADD CONSTRAINT "SYS_C0017420" PRIMARY KEY ("RCR_ORG_ID", "RCR_ID");

-- ----------------------------
-- Checks structure for table FI_CHARGE_RECORD
-- ----------------------------
ALTER TABLE "SCOTT"."FI_CHARGE_RECORD" ADD CONSTRAINT "SYS_C0017039" CHECK ("RCR_ORG_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."FI_CHARGE_RECORD" ADD CONSTRAINT "SYS_C0017040" CHECK ("RCR_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."FI_CHARGE_RECORD" ADD CONSTRAINT "SYS_C0018028" CHECK ("RCR_ORG_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."FI_CHARGE_RECORD" ADD CONSTRAINT "SYS_C0018029" CHECK ("RCR_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."FI_CHARGE_RECORD" ADD CONSTRAINT "SYS_C0038256" CHECK ("RCR_ORG_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."FI_CHARGE_RECORD" ADD CONSTRAINT "SYS_C0038257" CHECK ("RCR_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
