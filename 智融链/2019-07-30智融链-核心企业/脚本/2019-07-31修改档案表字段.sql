-- 修改表字段
ALTER TABLE ENTERPRISE_BILL_ARCHIVE CHANGE RELLATE_ENT_ID RELATE_ENT_ID bigint(20) NOT NULL COMMENT '关联企业ID,开单时为授信机构，转单时为收单企业，融单时为出资方';
ALTER TABLE ENTERPRISE_BILL_ARCHIVE CHANGE BILL_TYPE ARCHIVE_TYPE tinyint(1) DEFAULT NULL COMMENT '档案类型,0:开单;1:转单;3:融单';
