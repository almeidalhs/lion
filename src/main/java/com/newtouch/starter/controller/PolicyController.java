
package com.newtouch.starter.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.newtouch.lion.common.date.DateUtil;
import com.newtouch.lion.common.file.FileUtil;
import com.newtouch.lion.data.DataTable;
import com.newtouch.lion.model.datagrid.DataGrid;
import com.newtouch.lion.page.PageResult;
import com.newtouch.lion.query.QueryCriteria;
import com.newtouch.lion.service.datagrid.DataGridService;
import com.newtouch.lion.service.excel.ExcelExportService;
import com.newtouch.lion.web.controller.AbstractController;
import com.newtouch.lion.web.model.QueryDt;
import com.newtouch.lion.web.servlet.view.support.BindMessage;
import com.newtouch.lion.web.servlet.view.support.BindResult;
import com.newtouch.starter.policy.Policy;
import com.newtouch.starter.policy.PolicyVo;
import com.newtouch.starter.service.PolicyService;
/** 默认排序字段名称 */
/** 添加页面 */
/** 保单数据添加对话框 */
// 设置分页 启始页
// 每页大小
// 设置排序字段及排序方向
//查询条件 名称按模糊查询
/** 表单数据添加保存 */
//是否错误消息
/** 删除保单 */
@Controller
@RequestMapping("/policy/")
public class PolicyController extends AbstractController {
	private final Logger logger = LoggerFactory.getLogger(super.getClass());
	/** 默认排序字段名称 */
	private static final String DEFAULT_ORDER_FILED_NAME = "id";
	/** 添加页面 */
	public static final String ADD_DIALOG_RETURN = "/system/group/adddialog";
	@Autowired 
	private PolicyService policyService;
	/**DataGrid表格*/
	@Autowired
	private DataGridService dataGridService;
	/**Excel通用导出*/
	@Autowired
	private ExcelExportService excelExportService;
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public  String index(){
		logger.info("dddd");
		return "policy/index";
	}
	/** 保单数据添加对话框 */
	@RequestMapping(value = "adddialog")
	public String addDialog() {
		return ADD_DIALOG_RETURN;
	}
	@RequestMapping(value = "list")
	@ResponseBody
	public DataTable<Policy> list(QueryDt query,@ModelAttribute("policy") PolicyVo policyVo) {
		
		QueryCriteria queryCriteria = new QueryCriteria();
		// 设置分页 启始页
		queryCriteria.setStartIndex(query.getPage());
		// 每页大小
		queryCriteria.setPageSize(query.getRows());
		// 设置排序字段及排序方向
		if (StringUtils.isNotEmpty(query.getSort()) && StringUtils.isNotEmpty(query.getOrder())) {
			queryCriteria.setOrderField(query.getSort());
			queryCriteria.setOrderDirection(query.getOrder());
		} else {
			queryCriteria.setOrderField(DEFAULT_ORDER_FILED_NAME);
			queryCriteria.setOrderDirection(QueryCriteria.ASC);
		}
		
		//查询条件 名称按模糊查询
		if(StringUtils.isNotEmpty(policyVo.getPolicyType())){
			queryCriteria.addQueryCondition("policyType","%"+policyVo.getPolicyType()+"%");
		}
		PageResult<Policy> pageResult = policyService.doFindByCriteria(queryCriteria);
		return pageResult.getDataTable(query.getRequestId());
	}
	/** 表单数据添加保存 */
	@RequestMapping(value = "add" )
	@ResponseBody
	public ModelAndView add(@Valid @ModelAttribute("policy") PolicyVo policyVo,
			Errors errors, ModelAndView modelAndView){
		//是否错误消息
		if (errors.hasErrors()) {
			modelAndView.addObject(BindMessage.ERRORS_MODEL_KEY, errors);
			return this.getJsonView(modelAndView);
		}
		Policy policy = new Policy();
		BeanUtils.copyProperties(policyVo, policy);
		policyService.doCreate(policy);
		Map<String, String> params = new HashMap<String, String>();
		params.put(BindResult.SUCCESS, "sys.policy.add.success");
		modelAndView.addObject(BindMessage.SUCCESS, params);
		return this.getJsonView(modelAndView);
	}
	@RequestMapping(value = "checkisexitnameen")
	@ResponseBody
	public String checkIsExistByNameEn(HttpServletRequest servletRequest,
			@RequestParam(required = false) String policyType,@RequestParam(required=false) Long id) {
		Boolean flag=Boolean.FALSE;
		if(id==null){
			flag = this.isExistByPolicyClass(policyType)? false : true;
		}else{
			Policy policy = policyService.doFindById(id);
			if(policy==null){
				flag = this.isExistByPolicyClass(policyType)? false : true;
			}else{
				flag=this.isExistByPolicyClass(policyType, policy.getPolicyType())?false:true;
			}
		}
		return flag.toString();
	}
	private Boolean isExistByPolicyClass(String policyClass) {
		Boolean flag = false;
		if (StringUtils.isNotEmpty(policyClass)) {
			flag = policyService.doIsExistByPolicyType(policyClass.trim());
		}
		return flag;
	}
	private Boolean isExistByPolicyClass(String policyClass, String oldClass) {
		Boolean flag = false;
		if (StringUtils.isNotEmpty(policyClass) && !policyClass.equals(oldClass)) {
			flag = policyService.doIsExistByPolicyType(policyClass.trim());
		}
		return flag;
	}
	/** 删除保单 */
	@RequestMapping(value = "delete")
	@ResponseBody
	public ModelAndView delete(@RequestParam long id, ModelAndView modelAndView) {
		Map<String, String> params = new HashMap<String, String>();
		int updateRow = this.policyService.doDeleteById(id);
		
		if (updateRow > 0) {
			params.put(BindResult.SUCCESS,"sys.policy.delete.success");
		} else {
			params.put(BindResult.SUCCESS,"sys.ploicy.delete.fail");
		}
		modelAndView.addObject(BindMessage.SUCCESS, params);
		return this.getJsonView(modelAndView);
	}
	/**
	 * 保单编辑
	 */
	@RequestMapping(value = "editdialog")
	public String editDialog(@RequestParam Long id, Model model) {
		if (id != null) {
			Policy policy = policyService.doFindById(id);
			model.addAttribute("policy", policy);
		} else {
			logger.error("Edit Object id is not null!");
		}
		return "/system/group/editdialog";
	}
	/**保单编辑对话框*/
	@RequestMapping(value = "edit")
	@ResponseBody
	public ModelAndView edit(
			@Valid @ModelAttribute("policy") PolicyVo policyVo,
			Errors errors,ModelAndView modelAndView){
		modelAndView=this.getJsonView(modelAndView);
		//判断传入的ID是否为空
		if (!errors.hasErrors() && policyVo.getId() == null) {
			errors.reject("sys.policy.form.id.empty");
			modelAndView.addObject(BindMessage.ERRORS_MODEL_KEY, errors);
			return modelAndView;
		}
		//判断传入的实体类是否已经存在
		Policy policy = policyService.doFindById(policyVo.getId());
		if (policy == null) {
			errors.reject("sys.policy.form.id.empty");
			return modelAndView;
		}
		
		if (errors.hasErrors()) {
			modelAndView.addObject(BindMessage.ERRORS_MODEL_KEY, errors);
			return  this.getJsonView(modelAndView);
		}

		BeanUtils.copyProperties(policyVo, policy);
		policyService.doUpdate(policy);

		Map<String, String> params = new HashMap<String, String>();
		params.put(BindResult.SUCCESS, "sys.policy.edit.success");
		modelAndView.addObject(BindMessage.SUCCESS, params);
		return this.getJsonView(modelAndView);
	}
	/**
	 * 导出excel
	 * @param tableId
	 * @param sort
	 * @param order
	 * @param policy
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping(value = "export")
	@ResponseBody
	public ModelAndView exportExcel(@RequestParam(required=false) String tableId,@RequestParam(required = false) String sort,@RequestParam(required = false) String order,@ModelAttribute("policy") PolicyVo policyVo,ModelAndView modelAndView){
		
		DataGrid dataGrid=dataGridService.doFindByTableIdAndSort(tableId);
		QueryCriteria queryCriteria=new QueryCriteria();
		queryCriteria.setPageSize(10000);
		// 设置排序字段及排序方向
		if (StringUtils.isNotEmpty(sort) && StringUtils.isNotEmpty(order)) {
			queryCriteria.setOrderField(sort);
			queryCriteria.setOrderDirection(order);
		} else {
			queryCriteria.setOrderField(DEFAULT_ORDER_FILED_NAME);
			queryCriteria.setOrderDirection("ASC");
		}
		//查询条件 中文参数名称按模糊查询
		if(StringUtils.isNotEmpty(policyVo.getInsuredName())){
			queryCriteria.addQueryCondition("insuredName","%"+policyVo.getInsuredName()+"%");
		}
		//查询保单
		PageResult<Policy> result=policyService.doFindByCriteria(queryCriteria);
		
		Map<String, Map<Object, Object>> fieldCodeTypes = new HashMap<String, Map<Object, Object>>();

		Map<String, String> dataFormats = new HashMap<String, String>();		
		dataFormats.put("birthday", DateUtil.FORMAT_DATE_YYYY_MM_DD);
		//创建.xls的文件名
		String fileName=this.createFileName(FileUtil.EXCEL_EXTENSION);
		
		modelAndView.addObject("title", dataGrid.getTitle());
		
		Long startTime=System.currentTimeMillis();
		
		fileName=excelExportService.export(dataGrid, result.getContent(), fileName, fieldCodeTypes, dataFormats);
		
		logger.info("fileName:{}",fileName);
		
		Long costTime=System.currentTimeMillis()-startTime;
		
		modelAndView.addObject(FILENAME,fileName);
		
		logger.info("export Excel {} cost:{} time,fileName:{}",dataGrid.getTitle(),costTime,fileName);
		logger.info("out Excel导出");
		return this.getExcelView(modelAndView);
	}
}
