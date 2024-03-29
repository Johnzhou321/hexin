CREATE TABLE TEST (
  `ID` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
  `IS_DELETE` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  `CREATED_AT` timestamp(3) NULL DEFAULT NULL,
  `UPDATED_AT` timestamp(3) NULL DEFAULT NULL COMMENT '修改时间',
  `STATUS` int DEFAULT '0' COMMENT '状态',

  `CREATOR` bigint DEFAULT NULL COMMENT '创建者',
  `NAME` varchar(1536) DEFAULT NULL COMMENT '名称',
  `AMOUNT` double DEFAULT NULL COMMENT '金额',
  `BIRTHDAY` date DEFAULT NULL COMMENT '生日',
) DEFAULT CHARSET=utf8 COLLATE utf8_bin COMMENT='测试表';

