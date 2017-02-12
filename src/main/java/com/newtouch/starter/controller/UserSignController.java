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
import com.newtouch.starter.category.Category;
import com.newtouch.starter.service.CategoryService;
import com.newtouch.starter.service.UserExtService;
import com.newtouch.starter.service.UserSignService;
import com.newtouch.starter.userext.UserExt;
import com.newtouch.starter.usersign.UserSign;
import com.newtouch.starter.usersign.UserSignVo;

@Controller
@RequestMapping("/userSign/")
public class UserSignController extends AbstractController {
	private final Logger logger = LoggerFactory.getLogger(super.getClass());
	private static final String INDEX_RETURN = "/userSign/index";
	private static final String STEP1_RETURN = "/userSign/step1";
	private static final String STEP2_RETURN = "/userSign/step2";
	private static final String LAW_RETURN = "/userSign/lawindex";
	private static final String LAW_RETURN2 = "/userSign/lawindex2";
	private static final String LAW_RETURN3 = "/userSign/lawindex3";
	private static final String LAW_RETURN4 = "/userSign/lawindex4";
	private static final String LAW_RETURN5 = "/userSign/lawindex5";
	private static final String LAW_RETURN6 = "/userSign/lawindex6";
	
	/** 默认排序字段名称 */
	private static final String DEFAULT_ORDER_FILED_NAME = "id";
	
	@SuppressWarnings("unused")
	private static final String INDEX_LISTS_TB = "sys_userSign_lists";	 

	@Autowired
	private UserSignService userSignService;

	@Autowired
	private UserExtService userExtService;

	@Autowired
	private UserService userService;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private ExcelExportService excelExportService;

	@Autowired
	private DataGridService dataGridService;

	@RequestMapping("add")
	@ResponseBody
	public ModelAndView add(
			@Valid @ModelAttribute("userSignVo") UserSignVo userSignVo,
			Errors errors, ModelAndView modelAndView) {
		if (errors.hasErrors()) {
			modelAndView.addObject(BindMessage.ERRORS_MODEL_KEY, errors);
			return getJsonView(modelAndView);
		}
		UserInfo userInfo = LoginSecurityUtil.getUser();
		UserSign userSign = new UserSign();
		UserSign checkUserSign = this.userSignService.findSignByStudent(userSignVo.getStudentName(), userInfo.getId());
		if (checkUserSign!=null) {
			errors.reject(null, "学生姓名不能重复");
			modelAndView.addObject(BindMessage.ERRORS_MODEL_KEY, errors);
			return getJsonView(modelAndView);
		}
		
		User user = this.userService.doFindById(userInfo.getId());
		userSignVo.setAreaType(user.getDepartment().getNameZh());

		userSignVo.setSchUserId(userInfo.getId());
		userSignVo.setSchoolName(userInfo.getRealnameZh());
		BeanUtils.copyProperties(userSignVo, userSign);
		Category topCategory = this.categoryService.doFindTopLevel(userSignVo
				.getCategoryId());
		userSign.setTopCategoryId(topCategory.getId());
		this.userSignService.doCreate(userSign);
		Map<String, String> params = new HashMap<String, String>();
		params.put(BindResult.SUCCESS, ConstantMessage.ADD_SUCCESS_MESSAGE_CODE);
		modelAndView.addObject(BindMessage.SUCCESS, params);
		return getJsonView(modelAndView);
	}

	@RequestMapping("edit")
	@ResponseBody
	public ModelAndView edit(
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
			return getJsonView(modelAndView);
		}
		UserInfo userInfo = LoginSecurityUtil.getUser();
		User user = this.userService.doFindById(userInfo.getId());
		userSignVo.setAreaType(user.getDepartment().getNameZh());

		userSignVo.setSchUserId(userInfo.getId());
		userSignVo.setSchoolName(userInfo.getRealnameZh());
		BeanUtils.copyProperties(userSignVo, userSign);

		Category topCategory = this.categoryService.doFindTopLevel(userSignVo
				.getCategoryId());
		userSign.setTopCategoryId(topCategory.getId());
		this.userSignService.doUpdate(userSign);
		Map<String, String> params = new HashMap<String, String>();
		params.put(BindResult.SUCCESS,
				ConstantMessage.EDIT_SUCCESS_MESSAGE_CODE);
		modelAndView.addObject(BindMessage.SUCCESS, params);
		return getJsonView(modelAndView);
	}

	@RequestMapping("delete")
	@ResponseBody
	public ModelAndView delete(@RequestParam Long id, ModelAndView modelAndView) {
		this.logger.info("delete id:{}", id);
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
		return getJsonView(modelAndView);
	}

	@RequestMapping("list")
	@ResponseBody
	public DataTable<UserSign> list(QueryDt query,
			@ModelAttribute("userSign") UserSignVo userSignVo) {
		QueryCriteria queryCriteria = new QueryCriteria();

		queryCriteria.setStartIndex(query.getPage().intValue());

		queryCriteria.setPageSize(query.getRows().intValue());

		if ((StringUtils.isNotEmpty(query.getSort()))
				&& (StringUtils.isNotEmpty(query.getOrder()))) {
			queryCriteria.setOrderField(query.getSort());
			queryCriteria.setOrderDirection(query.getOrder());
		} else {
			queryCriteria.setOrderField(DEFAULT_ORDER_FILED_NAME);
			queryCriteria.setOrderDirection("ASC");
		}
		UserInfo userInfo = LoginSecurityUtil.getUser();

		queryCriteria.addQueryCondition("schUserId", userInfo.getId());
		PageResult<UserSign> pageResult = null;

		if (StringUtils.isNotEmpty(userSignVo.getStudentName())) {
			queryCriteria.addQueryCondition("studentName",
					"%" + userSignVo.getStudentNameSearch() + "%");
			queryCriteria.addQueryCondition("showName",
					"%" + userSignVo.getStudentNameSearch() + "%");
			queryCriteria.addQueryCondition("categoryName",
					"%" + userSignVo.getStudentNameSearch() + "%");
			pageResult = this.userSignService.doSearchByCriteria(queryCriteria);
		} else {
			pageResult = this.userSignService.doSearchByCriteria(queryCriteria);
		}

		List<UserSign> userSignList = pageResult.getContent();
		List<UserSign> fullUserList = new ArrayList<UserSign>();
		for (UserSign userSign:userSignList) {
			Category category = userSign.getCategory();
			if (category == null) {
				continue;
			}
			String fullName = getCategoryFullName(category.getId());
			userSign.setExamUserName(fullName);
			fullUserList.add(userSign);
		}
		pageResult.setContent(fullUserList);

		return pageResult.getDataTable(query.getRequestId().intValue());
	}

	@RequestMapping("getjoinnum")
	@ResponseBody
	public Integer checkIsExistByNameEn(HttpServletRequest servletRequest) {
		UserInfo userInfo = LoginSecurityUtil.getUser();
		return Integer.valueOf(getUserJoinNum(userInfo.getId()));
	}

	private int getUserJoinNum(Long bas_user_id) {
		UserExt userExt = this.userExtService.doFindByUserId(bas_user_id);
		if (userExt != null) {
			return userExt.getJoin_num().intValue();
		}
		return 0;
	}

	@RequestMapping("checklastlevel")
	@ResponseBody
	public String checkLastLevel(HttpServletRequest servletRequest,
			@RequestParam Long categoryId) {
		Category category = this.categoryService.doFindSelfParent(categoryId);
		Boolean flag = Boolean.valueOf(true);
		if (category == null) {
			return flag.toString();
		}
		flag = Boolean.valueOf(false);

		return flag.toString();
	}

	@RequestMapping("checkStudentName")
	@ResponseBody
	public String checkStudentName(HttpServletRequest servletRequest,
			@RequestParam String studentName) {
		UserInfo userInfo = LoginSecurityUtil.getUser();
		UserSign userSign = this.userSignService.findSignByStudent(studentName,
				userInfo.getId());
		Boolean flag = Boolean.valueOf(true);
		if (userSign == null) {
			return flag.toString();
		}
		flag = Boolean.valueOf(false);

		return flag.toString();
	}

	@RequestMapping("export")
	@ResponseBody
	public ModelAndView exportExcel(
			@RequestParam(required = false) String tableId,
			@RequestParam(required = false) String sort,
			@RequestParam(required = false) String order,
			@ModelAttribute("userSign") UserSignVo userSignVo,
			ModelAndView modelAndView) {
		DataGrid dataGrid = this.dataGridService
				.doFindByTableIdAndSort(tableId);
		QueryCriteria queryCriteria = new QueryCriteria();
		queryCriteria.setPageSize(10000);

		if ((StringUtils.isNotEmpty(sort)) && (StringUtils.isNotEmpty(order))) {
			queryCriteria.setOrderField(sort);
			queryCriteria.setOrderDirection(order);
		} else {
			queryCriteria.setOrderField(DEFAULT_ORDER_FILED_NAME);
			queryCriteria.setOrderDirection("ASC");
		}

		if (StringUtils.isNotEmpty(userSignVo.getStudentName())) {
			queryCriteria.addQueryCondition("studentName",
					"%" + userSignVo.getStudentName() + "%");
		}
		//queryCriteria.addQueryCondition("status", Integer.valueOf(1));

		UserInfo userInfo = LoginSecurityUtil.getUser();
		queryCriteria.addQueryCondition("schUserId", userInfo.getId());
		PageResult<UserSign> result = this.userSignService
				.doFindByCriteria(queryCriteria);

		Map<String, Map<Object, Object>> fieldCodeTypes = new HashMap<String, Map<Object, Object>>();

		Map<String, String> dataFormats = new HashMap<String, String>();	
		dataFormats.put("birthday", "yyyy-MM-dd");

		String fileName = createFileName(".xls");

		modelAndView.addObject("title", dataGrid.getTitle());

		Long startTime = Long.valueOf(System.currentTimeMillis());

		fileName = this.excelExportService.export(dataGrid,
				result.getContent(), fileName, fieldCodeTypes, dataFormats);

		this.logger.info("fileName:{}", fileName);

		Long costTime = Long.valueOf(System.currentTimeMillis()
				- startTime.longValue());

		modelAndView.addObject("fileName", fileName);

		this.logger.info("export Excel {} cost:{} time,fileName:{}",
				new Object[] { dataGrid.getTitle(), costTime, fileName });
		this.logger.info("out Excel导出");
		return getExcelView(modelAndView);
	}

	@RequestMapping("index")
	public String index(HttpServletRequest servletRequest, Model model) {
		return INDEX_RETURN;
	}

	@RequestMapping("lawindex")
	public String lawindex(HttpServletRequest servletRequest, Model model) {
		return LAW_RETURN;
	}

	@RequestMapping("lawindex2")
	public String lawindex2(HttpServletRequest servletRequest, Model model) {
		return LAW_RETURN2;
	}

	@RequestMapping("lawindex3")
	public String lawindex3(HttpServletRequest servletRequest, Model model) {
		return LAW_RETURN3;
	}

	@RequestMapping("lawindex4")
	public String lawindex4(HttpServletRequest servletRequest, Model model) {
		return LAW_RETURN4;
	}

	@RequestMapping("lawindex5")
	public String lawindex5(HttpServletRequest servletRequest, Model model) {
		return LAW_RETURN5;
	}

	@RequestMapping("lawindex6")
	public String lawindex6(HttpServletRequest servletRequest, Model model) {
		return LAW_RETURN6;
	}

	@RequestMapping("step1")
	public String step1(HttpServletRequest servletRequest, Model model) {
		return STEP1_RETURN;
	}

	@RequestMapping("step2")
	public String step2(HttpServletRequest servletRequest, Model model) {
		String matchType = servletRequest.getParameter("matchType");
		model.addAttribute("matchType", matchType);
		return STEP2_RETURN;
	}

	private String getCategoryFullName(Long categoryId) {
		String fullCategoryName = "";
		Category category = this.categoryService.doFindCategoryById(categoryId);
		if (category != null) {
			fullCategoryName = category.getCategoryName();
			if (category.getpCategoryId().longValue() != 0L) {
				Category parentCategory = this.categoryService
						.doFindCategoryById(category.getpCategoryId());
				if (parentCategory != null) {
					fullCategoryName = parentCategory.getCategoryName() + "-"
							+ fullCategoryName;
					if (parentCategory.getpCategoryId().longValue() != 0L) {
						Category topCategory = this.categoryService
								.doFindCategoryById(parentCategory
										.getpCategoryId());
						if (topCategory != null) {
							fullCategoryName = topCategory.getCategoryName()
									+ "-" + fullCategoryName;
						}
					}
				}
			}
		}
		return fullCategoryName;
	}
}