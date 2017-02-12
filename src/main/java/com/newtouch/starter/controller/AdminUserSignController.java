package com.newtouch.starter.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.newtouch.lion.common.file.FileUtil;
import com.newtouch.lion.data.DataTable;
import com.newtouch.lion.model.datagrid.DataGrid;
import com.newtouch.lion.page.PageResult;
import com.newtouch.lion.query.QueryCriteria;
import com.newtouch.lion.service.datagrid.DataGridService;
import com.newtouch.lion.service.excel.ExcelExportService;
import com.newtouch.lion.service.system.UserService;
import com.newtouch.lion.web.constant.ConstantMessage;
import com.newtouch.lion.web.controller.AbstractController;
import com.newtouch.lion.web.model.QueryDt;
import com.newtouch.lion.web.servlet.view.support.BindMessage;
import com.newtouch.lion.web.servlet.view.support.BindResult;
import com.newtouch.starter.category.Category;
import com.newtouch.starter.service.CategoryService;
import com.newtouch.starter.service.UserSignService;
import com.newtouch.starter.usersign.UserSign;
import com.newtouch.starter.usersign.UserSignExcel;
import com.newtouch.starter.usersign.UserSignVo;


@Controller
@RequestMapping("/adminuserSign/")
public class AdminUserSignController  extends AbstractController{
	private final Logger logger = LoggerFactory.getLogger(super.getClass());
	/** 参数首页 */
	private static final String INDEX_RETURN = "/adminuserSign/index";
	
	/** 默认排序字段名称 */
	private static final String DEFAULT_ORDER_FILED_NAME = "id";
	
	@SuppressWarnings("unused")
	private static final String INDEX_LISTS_TB = "sys_adminuserSign_lists";	 
	/**部门扩展*/
	@Autowired
	private UserSignService  userSignService;
	
	@Autowired
	private UserService  userService;
	/**Excel通用导出*/
	@Autowired
	private ExcelExportService excelExportService;
	/**DataGrid表格*/
	@Autowired
	private DataGridService dataGridService;
	
	@Autowired
	private CategoryService categoryService;
	

	@RequestMapping(value = "pass")
	@ResponseBody
	public ModelAndView pass(
			@Valid @ModelAttribute("userSignVo") UserSignVo userSignVo,
			Errors errors, ModelAndView modelAndView) {
		UserSign userSign = null;
		if (userSignVo.getId() != null) {
			userSign = this.userSignService
					.doFindById(userSignVo.getId());
			if (userSign == null) {
				errors.reject(ConstantMessage.EDIT_ISEMPTY_FAIL_MESSAGE_CODE);
			}
		} else {
			errors.reject(ConstantMessage.EDIT_ISEMPTY_FAIL_MESSAGE_CODE);
		}

		if (errors.hasErrors()) {
			modelAndView.addObject(BindMessage.ERRORS_MODEL_KEY, errors);
			return this.getJsonView(modelAndView);
		}
		//User user = userService.doFindById(userInfo.getId());
//		BeanUtils.copyProperties(userSignVo, userSign);
		userSign.setStatus(1);
		this.userSignService.doUpdate(userSign);
		Map<String, String> params = new HashMap<String, String>();
		params.put(BindResult.SUCCESS,
				ConstantMessage.EDIT_SUCCESS_MESSAGE_CODE);
		modelAndView.addObject(BindMessage.SUCCESS, params);
		return this.getJsonView(modelAndView);
	}

	@RequestMapping(value = "deny")
	@ResponseBody
	public ModelAndView deny(
			@Valid @ModelAttribute("userSignVo") UserSignVo userSignVo,
			Errors errors, ModelAndView modelAndView) {
		UserSign userSign = null;
		if (userSignVo.getId() != null) {
			userSign = this.userSignService
					.doFindById(userSignVo.getId());
			if (userSign == null) {
				errors.reject(ConstantMessage.EDIT_ISEMPTY_FAIL_MESSAGE_CODE);
			}
		} else {
			errors.reject(ConstantMessage.EDIT_ISEMPTY_FAIL_MESSAGE_CODE);
		}

		if (errors.hasErrors()) {
			modelAndView.addObject(BindMessage.ERRORS_MODEL_KEY, errors);
			return this.getJsonView(modelAndView);
		}
		//User user = userService.doFindById(userInfo.getId());
		BeanUtils.copyProperties(userSignVo, userSign);
		userSign.setStatus(2);
		this.userSignService.doUpdate(userSign);
		Map<String, String> params = new HashMap<String, String>();
		params.put(BindResult.SUCCESS,
				ConstantMessage.EDIT_SUCCESS_MESSAGE_CODE);
		modelAndView.addObject(BindMessage.SUCCESS, params);
		return this.getJsonView(modelAndView);
	}
	
	@RequestMapping("list")
	@ResponseBody
	public  DataTable<UserSign> list(QueryDt query,@ModelAttribute("userSign") UserSignVo userSignVo) {			
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
		if(StringUtils.isNotEmpty(userSignVo.getShowName())){
			queryCriteria.addQueryCondition("showName","%"+userSignVo.getShowName()+"%");
		}
		String categoryName = userSignVo.getCategoryName();
		
		if(StringUtils.isNotEmpty(userSignVo.getCategoryName())){
			queryCriteria.addQueryCondition("categoryName","%"+categoryName+"%");
		}
		if(StringUtils.isNotEmpty(userSignVo.getAreaType())){
			queryCriteria.addQueryCondition("areaType","%"+userSignVo.getAreaType()+"%");
		}
		if(StringUtils.isNotEmpty(userSignVo.getSchoolName())){
			queryCriteria.addQueryCondition("schoolName","%"+userSignVo.getSchoolName()+"%");
		}
		/*UserInfo userInfo = LoginSecurityUtil.getUser();
		queryCriteria.addQueryCondition("schUserId", userInfo.getId());*/
		PageResult<UserSign> pageResult = userSignService.doFindByCriteriaAdmin(queryCriteria);
		
		List<UserSign> userSignList = pageResult.getContent();
		List<UserSign> fullUserList = new ArrayList<UserSign>();
		for (UserSign userSign : userSignList) {
			Category category = userSign.getCategory();
			if (category==null) {
				continue;
			}
			String fullName = getCategoryFullName(category.getId());
			userSign.setExamUserName(fullName);
			fullUserList.add(userSign);
		}
		pageResult.setContent(fullUserList);
		return pageResult.getDataTable(query.getRequestId());
	}
	/****
	 * 
	 * @param tableId
	 * @param parameterVo
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping(value = "export")
	@ResponseBody
	public ModelAndView exportExcel(@RequestParam(required=false) String tableId,@RequestParam(required = false) String sort,@RequestParam(required = false) String order,@ModelAttribute("userSign") UserSignVo userSignVo,ModelAndView modelAndView){
				
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

		// 查询条件 名称按模糊查询
		if (StringUtils.isNotEmpty(userSignVo.getShowName())) {
			queryCriteria.addQueryCondition("showName",
					"%" + userSignVo.getShowName() + "%");
		}
		String categoryName = userSignVo.getCategoryName();

		if (StringUtils.isNotEmpty(userSignVo.getCategoryName())) {
			queryCriteria.addQueryCondition("categoryName", "%" + categoryName
					+ "%");
		}
		if (StringUtils.isNotEmpty(userSignVo.getAreaType())) {
			queryCriteria.addQueryCondition("areaType",
					"%" + userSignVo.getAreaType() + "%");
		}
		if (StringUtils.isNotEmpty(userSignVo.getSchoolName())) {
			queryCriteria.addQueryCondition("schoolName",
					"%" + userSignVo.getSchoolName() + "%");
		}

		//queryCriteria.addQueryCondition("status", 1);
		// 查询保单
		PageResult<UserSign> result = userSignService
				.doFindByCriteriaAdmin(queryCriteria);
		
		List<UserSign> userSignList = result.getContent();
		List<UserSignExcel> userExcelList = new ArrayList<UserSignExcel>();
		
		for (UserSign userSign : userSignList) {
			UserSignExcel userSignExcel = new UserSignExcel().getExcelInfo(userSign);
			userSignExcel = this.getCategoryFreshUserSign(userSignExcel, userSign.getCategoryId());
			userExcelList.add(userSignExcel);
		}

		Map<String, Map<Object, Object>> fieldCodeTypes = new HashMap<String, Map<Object, Object>>();

		Map<String, String> dataFormats = new HashMap<String, String>();		

		//创建.xls的文件名
		String fileName=this.createFileName(FileUtil.EXCEL_EXTENSION);
		
		modelAndView.addObject("title", dataGrid.getTitle());
		
		Long startTime=System.currentTimeMillis();
		
		fileName=excelExportService.export(dataGrid, userExcelList, fileName, fieldCodeTypes, dataFormats);
		
		logger.info("fileName:{}",fileName);
		
		Long costTime=System.currentTimeMillis()-startTime;
		
		modelAndView.addObject(FILENAME,fileName);
		
		logger.info("export Excel {} cost:{} time,fileName:{}",dataGrid.getTitle(),costTime,fileName);
		logger.info("out Excel导出");
		return this.getExcelView(modelAndView);
	}
	
	@RequestMapping(value = "index")
	public String index(HttpServletRequest servletRequest, Model model) {
		return INDEX_RETURN;
	}
	
	private UserSignExcel getCategoryFreshUserSign(UserSignExcel userSignExcel, Long categoryId) {
		Category category = categoryService.doFindCategoryById(categoryId);
		if (category.getpCategoryId().longValue() == 0) {
			userSignExcel.setCategoryName(category.getCategoryName());
			return userSignExcel;
		}
		Category parentCategory = categoryService.doFindParentLevel(categoryId);
		if (parentCategory!=null && parentCategory.getpCategoryId().longValue() == 0) {
			userSignExcel.setCategoryName(parentCategory.getCategoryName());
			userSignExcel.setCategoryType(category.getCategoryName());
			return userSignExcel;
		}
		Category topCategory = categoryService.doFindTopLevel(categoryId);
		if (topCategory!=null && topCategory.getpCategoryId().longValue() == 0) {
			userSignExcel.setCategoryName(topCategory.getCategoryName());
			userSignExcel.setSubCategoryName(parentCategory.getCategoryName());
			userSignExcel.setCategoryType(category.getCategoryName());
			return userSignExcel;
		}
		
		return userSignExcel;
	}
	
	private String getCategoryFullName(Long categoryId) {
		String fullCategoryName = "";
		Category category = categoryService.doFindCategoryById(categoryId);
		if (category!=null) {
			fullCategoryName = category.getCategoryName();	
			if(category.getpCategoryId().longValue()!=0l){
				Category parentCategory = categoryService.doFindCategoryById(category.getpCategoryId());
				if (parentCategory!=null) {
					fullCategoryName = parentCategory.getCategoryName() + "-" +fullCategoryName;	
					if(parentCategory.getpCategoryId().longValue()!=0l){
						Category topCategory = categoryService.doFindCategoryById(parentCategory.getpCategoryId());	
						if (topCategory!=null){
							fullCategoryName = topCategory.getCategoryName() + "-" +fullCategoryName;							
						}
					}					
				}
			}	
		}
		return fullCategoryName;
	}
}
