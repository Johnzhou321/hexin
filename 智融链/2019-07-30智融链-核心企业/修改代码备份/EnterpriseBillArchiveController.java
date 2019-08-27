package com.shls.web.controller.archive;

import com.shls.service.ListAndCount;
import com.shls.web.controller.BaseController;
import com.shls.web.controller.ResponseBuilder;
import com.shls.web.controller.archive.vo.EnterpriseArchiveQueryForm;
import com.shls.web.controller.archive.vo.EnterpriseBillArchiveQueryForm;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 企业开单、转单、融单控制层
 * @author zhouguangming
 * @date 7/30/19
 * @since V0.1
 */
public class EnterpriseBillArchiveController extends BaseController {

    /**
     *分页获取 企业开单、转单、融单档案
     * @param queryForm
     * @return
     * @author zhouguangming
     * @date 7/17/19
     * @since V0.1
     */
    @RequestMapping(value = "/getEnterpriseBillArchives", method = RequestMethod.POST)
    @ApiOperation(value = "分页获取 企业档案", httpMethod = "POST", notes = "分页获取 企业档案")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "archiveNo", value = "档案编号", required = false, dataType = "string", paramType = "query"),
            @ApiImplicitParam(name = "enterpriseName", value = "企业名称", required = false, dataType = "string", paramType = "query"),
            @ApiImplicitParam(name = "chainNo", value = "智融链编号", required = false, dataType = "String", paramType = "query"),
            @ApiImplicitParam(name = "page", value = "页码, 默认为1, 小于0返回全部", required = true, dataType = "int", paramType = "query"),
            @ApiImplicitParam(name = "pageLength", value = "每页记录数, 默认为10", required = true, dataType = "int", paramType = "query")
    })
    public Object getEnterpriseBillArchives(EnterpriseBillArchiveQueryForm queryForm){
        ListAndCount listAndCount = enterpriseArchiveService.getEnterpriseArchives(queryForm);
        return new ResponseBuilder().success().data(listAndCount.getList()).add("total", listAndCount.getCount()).build();
    }
}
