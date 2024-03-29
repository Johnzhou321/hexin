DROP TABLE IF EXISTS `ENTERPRISE_ARCHIVE`;
CREATE TABLE `ENTERPRISE_ARCHIVE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
	`ARCHIVE_NO` varchar(200) NOT NULL COMMENT '档案编号,档案类型+当前时间+两位随机数',
	`ENTERPRISE_ID`  bigint(20) DEFAULT NULL COMMENT '所属企业ID',
  `ATTACHMENT_ID` bigint(20) NOT NULL COMMENT '附件的ID',
  `IS_DELETE` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  `CREATED_AT` timestamp(3) NULL DEFAULT NULL,
  `UPDATED_AT` timestamp(3) NULL DEFAULT NULL COMMENT '修改时间',
  `STATUS` int(1) DEFAULT 0 COMMENT '状态',
  `CREATOR` bigint(20) NOT NULL COMMENT '创建者',
  `UPDATER` bigint(20) NOT NULL COMMENT '更新者',
  `REMARK` varchar(1536) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `TAG` varchar(1536) COLLATE utf8_bin DEFAULT NULL COMMENT '标记,标记文件类型：认证资料authen_datum,授权委托书author_delegation',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='企业档案表';
