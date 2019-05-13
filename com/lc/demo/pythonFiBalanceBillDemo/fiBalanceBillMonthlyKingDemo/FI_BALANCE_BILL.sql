/*
 Navicat Premium Data Transfer

 Source Server         : Oracle LMTPlat@Server
 Source Server Type    : Oracle
 Source Server Version : 110200
 Source Host           : server:1521
 Source Schema         : SCOTT

 Target Server Type    : Oracle
 Target Server Version : 110200
 File Encoding         : 65001

 Date: 10/04/2019 15:53:12
*/


-- ----------------------------
-- Table structure for FI_BALANCE_BILL
-- ----------------------------
DROP TABLE "SCOTT"."FI_BALANCE_BILL";
CREATE TABLE "SCOTT"."FI_BALANCE_BILL" (
  "FBB_ORG_ID" VARCHAR2(6 BYTE) DEFAULT '' NOT NULL ,
  "FBB_ID" VARCHAR2(20 BYTE) NOT NULL ,
  "ACCOUNT_MONTH" VARCHAR2(10 BYTE) ,
  "METER_NO" VARCHAR2(50 BYTE) ,
  "CUSTOMER_NO" VARCHAR2(50 BYTE) ,
  "LAST_READ" VARCHAR2(18 BYTE) ,
  "THIS_READ" VARCHAR2(18 BYTE) ,
  "THIS_USE_VOLUME" VARCHAR2(18 BYTE) ,
  "READ_TIME" TIMESTAMP(6) ,
  "READ_OPERATOR" VARCHAR2(10 BYTE) ,
  "PRICE_NO" VARCHAR2(15 BYTE) ,
  "PRICE" VARCHAR2(18 BYTE) ,
  "PAYABLE_MONEY" VARCHAR2(18 BYTE) ,
  "PAYABLE_DATE" TIMESTAMP(6) ,
  "LATE_FEE_ENABLE" VARCHAR2(10 BYTE) ,
  "LATE_FEE_RATE" VARCHAR2(18 BYTE) ,
  "LATE_DAYS" VARCHAR2(10 BYTE) ,
  "LATE_FEE_MONEY" VARCHAR2(18 BYTE) ,
  "PAYABLE_MONEY_TOTAL" VARCHAR2(18 BYTE) ,
  "BALANCE_OPERATOR" VARCHAR2(10 BYTE) ,
  "BALANCE_TIME" TIMESTAMP(6) ,
  "RECEIPT_OPERATOR" VARCHAR2(10 BYTE) ,
  "RECEIPT_TIME" TIMESTAMP(6) ,
  "RECEIPT_BRANCH_NO" VARCHAR2(50 BYTE) ,
  "RECEIPT_NO" VARCHAR2(20 BYTE) ,
  "REMARK" VARCHAR2(50 BYTE) ,
  "FBB_STATUS" VARCHAR2(2 BYTE) ,
  "FBB_PAY_WAY" VARCHAR2(5 BYTE) ,
  "RECEIPT_MONEY_TOTAL" VARCHAR2(18 BYTE) ,
  "CREATE_TIME" TIMESTAMP(6) 
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
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."FBB_ORG_ID" IS '机构ID';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."FBB_ID" IS '单据ID';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."ACCOUNT_MONTH" IS '会计月 YYYYMM';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."METER_NO" IS '表计号';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."CUSTOMER_NO" IS '客户号';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."LAST_READ" IS '上次抄见数 总累计量';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."THIS_READ" IS '本次抄见数 总累计量';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."THIS_USE_VOLUME" IS '本次用量（控制器总累积量） 本次-上次 sumTotal';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."READ_TIME" IS '抄表时间';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."READ_OPERATOR" IS '抄表员';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."PRICE_NO" IS '价格本号';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."PRICE" IS '价格';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."PAYABLE_MONEY" IS '应缴金额';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."PAYABLE_DATE" IS '应缴日期（最后付款日期）';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."LATE_FEE_ENABLE" IS '是否计算滞纳金 0不计算 1计算';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."LATE_FEE_RATE" IS '滞纳金率';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."LATE_DAYS" IS '滞纳天数';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."LATE_FEE_MONEY" IS '滞纳金';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."PAYABLE_MONEY_TOTAL" IS '合计金额';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."BALANCE_OPERATOR" IS '结算操作员';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."BALANCE_TIME" IS '结算时间';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."RECEIPT_OPERATOR" IS '收款操作员';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."RECEIPT_TIME" IS '收款时间';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."RECEIPT_BRANCH_NO" IS '营业厅号';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."RECEIPT_NO" IS '收款单号';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."REMARK" IS '备注';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."FBB_STATUS" IS '单据状态0未确认，1未收款，2已收款，9已作废';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."FBB_PAY_WAY" IS '付款方式IDBOOKS6';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."RECEIPT_MONEY_TOTAL" IS '实收金额';
COMMENT ON COLUMN "SCOTT"."FI_BALANCE_BILL"."CREATE_TIME" IS '账单生成时间';
COMMENT ON TABLE "SCOTT"."FI_BALANCE_BILL" IS '后付费结算单/付款通知单';

-- ----------------------------
-- Records of "FI_BALANCE_BILL"
-- ----------------------------
INSERT INTO "SCOTT"."FI_BALANCE_BILL" VALUES ('0003', '00032019030000000002', '201902', '00036000000001', '00030000000002', '100', '200', '100', TO_TIMESTAMP('2019-03-13 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0001', '1', '2.5', '200', TO_TIMESTAMP('2019-03-14 11:14:42.619000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2', '7', '50', '200', '0001', TO_TIMESTAMP('2019-03-13 11:17:17.673000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0001', TO_TIMESTAMP('2019-03-13 11:17:28.454000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '01', '0005000001', NULL, '2', '0001', '55', NULL);
INSERT INTO "SCOTT"."FI_BALANCE_BILL" VALUES ('0003', '00032019030000000001', '201901', '00036000000001', '00030000000002', '100', '200', '100', TO_TIMESTAMP('2019-03-13 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0001', '1', '2.5', '200', TO_TIMESTAMP('2019-03-14 11:14:42.619000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2', '7', '50', '200', '0001', TO_TIMESTAMP('2019-03-13 11:17:17.673000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0001', TO_TIMESTAMP('2019-03-13 11:17:28.454000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '01', '0005000001', NULL, '2', '0001', '22', NULL);
INSERT INTO "SCOTT"."FI_BALANCE_BILL" VALUES ('0017', '00172019030000000002', '201902', '00176000000001', '00170000000001', '100', '200', '100', TO_TIMESTAMP('2019-03-13 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0001', '1', '2.5', '200', TO_TIMESTAMP('2019-03-14 11:14:42.619000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2', '7', '10', '200', '0001', TO_TIMESTAMP('2019-03-13 11:17:17.673000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0001', TO_TIMESTAMP('2019-03-13 11:17:28.454000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '01', '0005000001', NULL, '2', '0001', '100', NULL);
INSERT INTO "SCOTT"."FI_BALANCE_BILL" VALUES ('0017', '00172019030000000001', '201901', '00176000000001', '00170000000001', '100', '200', '100', TO_TIMESTAMP('2019-03-13 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0001', '1', '2.5', '200', TO_TIMESTAMP('2019-03-20 11:14:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2', '7', '50', '200', '0001', TO_TIMESTAMP('2019-03-13 11:17:17.673000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0001', TO_TIMESTAMP('2019-03-13 11:17:28.454000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '01', '0005000001', NULL, '1', '0001', '66', NULL);
INSERT INTO "SCOTT"."FI_BALANCE_BILL" VALUES ('0017', '00172019040000000007', '201904', '00176000000001', NULL, '0', '0.000', '0.0', TO_TIMESTAMP('2019-04-01 11:50:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), NULL, '0017000001', '0.000', '0.0', TO_TIMESTAMP('2019-04-30 23:59:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_TIMESTAMP('2019-04-10 15:52:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));

-- ----------------------------
-- Primary Key structure for table FI_BALANCE_BILL
-- ----------------------------
ALTER TABLE "SCOTT"."FI_BALANCE_BILL" ADD CONSTRAINT "SYS_C0042453" PRIMARY KEY ("FBB_ORG_ID", "FBB_ID");

-- ----------------------------
-- Checks structure for table FI_BALANCE_BILL
-- ----------------------------
ALTER TABLE "SCOTT"."FI_BALANCE_BILL" ADD CONSTRAINT "SYS_C0028565" CHECK ("FBB_ORG_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."FI_BALANCE_BILL" ADD CONSTRAINT "SYS_C0028566" CHECK ("FBB_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."FI_BALANCE_BILL" ADD CONSTRAINT "SYS_C0029158" CHECK ("FBB_ORG_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."FI_BALANCE_BILL" ADD CONSTRAINT "SYS_C0029159" CHECK ("FBB_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."FI_BALANCE_BILL" ADD CONSTRAINT "SYS_C0042252" CHECK ("FBB_ORG_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."FI_BALANCE_BILL" ADD CONSTRAINT "SYS_C0042253" CHECK ("FBB_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."FI_BALANCE_BILL" ADD CONSTRAINT "SYS_C0042796" CHECK ("FBB_ORG_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."FI_BALANCE_BILL" ADD CONSTRAINT "SYS_C0042797" CHECK ("FBB_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."FI_BALANCE_BILL" ADD CONSTRAINT "SYS_C0046007" CHECK ("FBB_ORG_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."FI_BALANCE_BILL" ADD CONSTRAINT "SYS_C0046008" CHECK ("FBB_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;