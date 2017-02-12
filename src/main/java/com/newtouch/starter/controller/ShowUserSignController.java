package com.newtouch.starter.controller;

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
import org.springframework.util.CollectionUtils;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.newtouch.lion.common.date.DateUtil;
import com.newtouch.lion.common.file.FileUtil;
import com.newtouch.lion.common.user.UserInfo;
import com.newtouch.lion.data.DataTable;
import com.newtouch.lion.model.datagrid.DataGrid;
import com.newtouch.lion.model.system.User;
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
import com.newtouch.lion.web.shiro.session.LoginSecurityUtil;
import com.newtouch.starter.service.ShowCategoryService;
import com.newtouch.starter.service.ShowUserSignService;
import com.newtouch.starter.showcategory.ShowCategory;
import com.newtouch.starter.showusersign.ShowUserSign;
import com.newtouch.starter.showusersign.ShowUserSignVo;



@Controller
@RequestMapping("/showUserSign/")
public class ShowUserSignController  extends AbstractController{
	private final Logger logger = LoggerFactory.getLogger(super.getClass());
	/** 参数首页 */
	private static final String INDEX_RETURN = "/showUserSign/index";
	private static final String STEP1_RETURN = "/showUserSign/step1";
	private static final String STEP2_RETURN = "/showUserSign/step2";
	private static final String LAW_RETURN = "/showUserSign/lawindex";
	private static final String LAW_RETURN2 = "/showUserSign/lawindex2";
	
	/** 默认排序字段名称 */
	private static final String DEFAULT_ORDER_FILED_NAME = "id";
	
	@SuppressWarnings("unused")
	private static final String INDEX_LISTS_TB = "sys_showuserSign_lists";	 
	/**部门扩展*/
	@Autowired
	private ShowUserSignService  userSignService;
	/**部门扩展*/
	@Autowired
	private ShowCategoryService  showCategoryService;
	@Autowired
	private UserService  userService;
	/**Excel通用导出*/
	@Autowired
	private ExcelExportService excelExportService;
	/**DataGrid表格*/
	@Autowired
	private DataGridService dataGridService;

	@RequestMapping(value = "add")
	@ResponseBody
	public ModelAndView add(
			@Valid @ModelAttribute("userSignVo") ShowUserSignVo userSignVo,
			Errors errors, ModelAndView modelAndView) {
		if (errors.hasErrors()) {
			modelAndView.addObject(BindMessage.ERRORS_MODEL_KEY, errors);
			return this.getJsonView(modelAndView);
		}
		ShowUserSign userSign = new ShowUserSign();
		
		//Subject currentUser=SecurityUtils.getSubject();
		UserInfo userInfo = LoginSecurityUtil.getUser();
		User user = userService.doFindById(userInfo.getId());
		userSignVo.setAreaType(user.getDepartment().getNameZh());
		//User user = userService.doFindById(userInfo.getId());
		userSignVo.setSchUserId(userInfo.getId());
		userSignVo.setSchoolName(userInfo.getRealnameZh());
		
		BeanUtils.copyProperties(userSignVo, userSign);
		
		String gradeName = userSignVo.getMinute()+"分"+userSignVo.getSecond()+"秒";
		userSign.setGradeName(gradeName);
		this.userSignService.doCreate(userSign);
		Map<String, String> params = new HashMap<String, String>();
		params.put(BindResult.SUCCESS, ConstantMessage.ADD_SUCCESS_MESSAGE_CODE);
		modelAndView.addObject(BindMessage.SUCCESS, params);
		return this.getJsonView(modelAndView);
	}

	@RequestMapping(value = "edit")
	@ResponseBody
	public ModelAndView edit(
			@Valid @ModelAttribute("userSignVo") ShowUserSignVo userSignVo,
			Errors errors, ModelAndView modelAndView) {
		ShowUserSign userSign = null;
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
		UserInfo userInfo = LoginSecurityUtil.getUser();
		//User user = userService.doFindById(userInfo.getId());
	
		//BeanUtils.copyProperties(userSignVo, userSign);
		userSign.setGradeName(userSignVo.getMinute()+"分"+userSignVo.getSecond()+"秒");
		userSign.setSchUserId(userInfo.getId());
		
		/*userSign.setAreaType(userSignVo.getAreaType());
		userSign.setEmail(userSignVo.getEmail());
		userSign.setExamUserId(userSignVo.getExamUserId());
		userSign.setId(userSignVo.getId());
		userSign.setSchoolName(userSignVo.getSchoolName());
		userSign.setSex(userSignVo.getSex());
		userSign.setSignType(userSignVo.getSignType());
		userSign.setStatus(userSignVo.getStatus());		
		*/
		
		userSign.setCategoryId(userSignVo.getCategoryId());
		userSign.setShowName(userSignVo.getShowName());
		userSign.setExamUserName(userSignVo.getExamUserName());
		userSign.setGroupType(userSignVo.getGroupType());		
		
		userSign.setStudentName(userSignVo.getStudentName());
		userSign.setTutor(userSignVo.getTutor());
		userSign.setTutor2(userSignVo.getTutor2());
		userSign.setClassName(userSignVo.getClassName());
		userSign.setMobile(userSignVo.getMobile());
		
		this.userSignService.doUpdate(userSign);
		Map<String, String> params = new HashMap<String, String>();
		params.put(BindResult.SUCCESS,
				ConstantMessage.EDIT_SUCCESS_MESSAGE_CODE);
		modelAndView.addObject(BindMessage.SUCCESS, params);
		return this.getJsonView(modelAndView);
	}

	@RequestMapping(value = "delete")
	@ResponseBody
	public ModelAndView delete(@RequestParam Long id, ModelAndView modelAndView) {
		logger.info("delete id:{}",id);
		Map<String, String> params = new HashMap<String, String>();
		int userSign = this.userSignService.doDeleteById(id);
		if (userSign != 0) {
			params.put(BindResult.SUCCESS,
					ConstantMessage.DELETE_SUCCESS_MESSAGE_CODE);
		} else {
			params.put(BindResult.SUCCESS,
					ConstantMessage.DELETE_FAIL_MESSAGE_CODE);
		}
		modelAndView.addObject(BindMessage.SUCCESS, params);
		return this.getJsonView(modelAndView);
	}
	
	@RequestMapping("list")
	@ResponseBody
	public  DataTable<ShowUserSign> list(QueryDt query,@ModelAttribute("userSign") ShowUserSignVo userSignVo) {			
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
		
		UserInfo userInfo = LoginSecurityUtil.getUser();
		queryCriteria.addQueryCondition("schUserId", userInfo.getId());
		PageResult<ShowUserSign> pageResult = null;
		//查询条件 名称按模糊查询
		if(StringUtils.isNotEmpty(userSignVo.getStudentName())){
			queryCriteria.addQueryCondition("studentName","%"+userSignVo.getStudentName()+"%");
			queryCriteria.addQueryCondition("showName","%"+userSignVo.getStudentName()+"%");
			queryCriteria.addQueryCondition("categoryName","%"+userSignVo.getStudentName()+"%");
			pageResult = userSignService.doSearchByCriteria(queryCriteria);
		}else{
			pageResult = userSignService.doSearchByCriteria(queryCriteria);
		}
		return pageResult.getDataTable(query.getRequestId());
	}
	
	@RequestMapping(value = "checkisexitcategory")
	@ResponseBody
	public String checkIsExistByCategory(HttpServletRequest servletRequest,
			@RequestParam(required=true) Long categoryId) {
		Boolean flag=Boolean.FALSE;
		UserInfo userInfo = LoginSecurityUtil.getUser();
		if(categoryId!=null){
			ShowCategory showCategory = showCategoryService.doFindCategoryById(categoryId);			
			if(showCategory==null){
				flag = false;
			}else{
				flag=this.isExistByShowUserSignClass(categoryId, userInfo.getId());
			}
		}
		return flag.toString();
	}
	
	private Boolean isExistByShowUserSignClass(Long categoryId, Long schoolId) {
		QueryCriteria queryCriteria=new QueryCriteria();
		queryCriteria.addQueryCondition("categoryId",categoryId);
		queryCriteria.addQueryCondition("schUserId",schoolId);
		PageResult<ShowUserSign> showUserSignResult =  userSignService.doFindByCriteriaByCategoryAndSchool(queryCriteria);
		return !CollectionUtils.isEmpty(showUserSignResult.getContent());
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
	public ModelAndView exportExcel(@RequestParam(required=false) String tableId,@RequestParam(required = false) String sort,@RequestParam(required = false) String order,@ModelAttribute("userSign") ShowUserSignVo userSignVo,ModelAndView modelAndView){
				
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
		if(StringUtils.isNotEmpty(userSignVo.getStudentName())){
			queryCriteria.addQueryCondition("studentName","%"+userSignVo.getStudentName()+"%");
		}
		queryCriteria.addQueryCondition("status",1);
		//查询保单
		UserInfo userInfo = LoginSecurityUtil.getUser();
		queryCriteria.addQueryCondition("schUserId", userInfo.getId());
		PageResult<ShowUserSign> result=userSignService.doFindByCriteria(queryCriteria);
		
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
	
	@RequestMapping(value = "index")
	public String index(HttpServletRequest servletRequest, Model model) {
		String category = servletRequest.getParameter("category");
		
		
		//model.addAttribute("category1", category);

		return INDEX_RETURN;
	}
	
	@RequestMapping(value = "lawindex")
	public String lawindex(HttpServletRequest servletRequest, Model model) {
		return LAW_RETURN;
	}
	
	@RequestMapping(value = "lawindex2")
	public String lawindex2(HttpServletRequest servletRequest, Model model) {
		return LAW_RETURN2;
	}
	
	@RequestMapping(value = "step1")
	public String step1(HttpServletRequest servletRequest, Model model) {
		return STEP1_RETURN;
	}
	
	@RequestMapping(value = "step2")
	public String step2(HttpServletRequest servletRequest, Model model) {
		String matchType = servletRequest.getParameter("matchType");
		model.addAttribute("matchType", matchType);
		return STEP2_RETURN;
	}
}
