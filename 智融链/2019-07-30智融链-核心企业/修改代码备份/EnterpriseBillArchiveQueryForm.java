package com.shls.web.controller.archive.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 企业档案查询表单
 * @author zhouguangming
 * @date 7/17/19
 * @since V0.1
 */
@ApiModel
public class EnterpriseBillArchiveQueryForm {

    @ApiModelProperty("档案编号")
    private String archiveNo;

    @ApiModelProperty("企业名称")
    private String enterpriseName;

    @ApiModelProperty("智融链编号")
    private String chainNo;

    @ApiModelProperty("页码")
    private Integer page;

    @ApiModelProperty("页数")
    private Integer pageLength;

    private int offSet;

    public String getArchiveNo() {
        return archiveNo;
    }

    public void setArchiveNo(String archiveNo) {
        this.archiveNo = archiveNo;
    }

    public String getEnterpriseName() {
        return enterpriseName;
    }

    public void setEnterpriseName(String enterpriseName) {
        this.enterpriseName = enterpriseName;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getPageLength() {
        return pageLength;
    }

    public void setPageLength(Integer pageLength) {
        this.pageLength = pageLength;
    }

    public String getChainNo() {
        return chainNo;
    }

    public void setChainNo(String chainNo) {
        this.chainNo = chainNo;
    }

    public int getOffSet(){
        if (page == null || page <= 0){
            page = 1;
        }
        if (pageLength == null || pageLength <= 0){
            pageLength = 10;
        }
        return (page-1) * pageLength;
    }

    public String toString(){
        return "archiveNo=" + archiveNo + ",enterpriseName=" + enterpriseName + ",chainNo=" + chainNo +
                ",page=" + page + ",pageLength=" + pageLength;
    }
}
