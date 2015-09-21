package com.newtouch.starter.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

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

import com.newtouch.lion.common.date.DateUtil;
import com.newtouch.lion.common.file.FileUtil;
import com.newtouch.lion.model.datagrid.DataGrid;
import com.newtouch.lion.query.QueryCriteria;
import com.newtouch.lion.service.datagrid.DataGridService;
import com.newtouch.lion.service.excel.ExcelExportService;
import com.newtouch.lion.web.constant.ConstantMessage;
import com.newtouch.lion.web.controller.AbstractController;
import com.newtouch.lion.web.model.QueryVo;
import com.newtouch.lion.web.servlet.view.support.BindMessage;
import com.newtouch.lion.web.servlet.view.support.BindResult;
import com.newtouch.lion.ztree.TreeNode;
import com.newtouch.starter.category.Category;
import com.newtouch.starter.category.CategoryVo;
import com.newtouch.starter.service.ExtendCategoryService;
@Controller
@RequestMapping("/category/")
public class CategoryController extends AbstractController{
	private final Logger logger = LoggerFactory.getLogger(super.getClass());
	/** 参数首页 */
	private static final String INDEX_RETURN = "category/index";
	
	@SuppressWarnings("unused")
	private static final String INDEX_LISTS_TB = "sys_category_lists";	 
	/**部门扩展*/
	@Autowired
	private ExtendCategoryService  extendCategoryService;
	/**Excel通用导出*/
	@Autowired
	private ExcelExportService excelExportService;
	/**DataGrid表格*/
	@Autowired
	private DataGridService dataGridService;

	@RequestMapping(value = "add")
	@ResponseBody
	public ModelAndView add(
			@Valid @ModelAttribute("categoryVo") CategoryVo categoryVo,
			Errors errors, ModelAndView modelAndView) {
		if (errors.hasErrors()) {
			modelAndView.addObject(BindMessage.ERRORS_MODEL_KEY, errors);
			return this.getJsonView(modelAndView);
		}
		Category category = new Category();
		BeanUtils.copyProperties(categoryVo, category);
		this.extendCategoryService.doCreateCategory(category);
		Map<String, String> params = new HashMap<String, String>();
		params.put(BindResult.SUCCESS, ConstantMessage.ADD_SUCCESS_MESSAGE_CODE);
		modelAndView.addObject(BindMessage.SUCCESS, params);
		return this.getJsonView(modelAndView);
	}

	@RequestMapping(value = "edit")
	@ResponseBody
	public ModelAndView edit(
			@Valid @ModelAttribute("categoryVo") CategoryVo categoryVo,
			Errors errors, ModelAndView modelAndView) {
		Category category = null;
		if (categoryVo.getId() != null) {
			category = this.extendCategoryService
					.doFindCategoryById(categoryVo.getId());
			if (category == null) {
				errors.reject(ConstantMessage.EDIT_ISEMPTY_FAIL_MESSAGE_CODE);
			}
		} else {
			errors.reject(ConstantMessage.EDIT_ISEMPTY_FAIL_MESSAGE_CODE);
		}

		if (errors.hasErrors()) {
			modelAndView.addObject(BindMessage.ERRORS_MODEL_KEY, errors);
			return this.getJsonView(modelAndView);
		}
		if(categoryVo.getpCategoryId()==null)
			categoryVo.setpCategoryId(0l);
		BeanUtils.copyProperties(categoryVo, category);
		this.extendCategoryService.doUpdate(category);
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
		Category category = this.extendCategoryService.doDelete(id);
		if (category != null) {
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
	public  ModelAndView lists(ModelAndView modelAndView) {			
		String str=this.extendCategoryService.doFindFirstLevelToTree();
		str=str.replace("categorys","children").replace("pCategoryId", "_parentId");
		return this.getStrJsonView(str, modelAndView);
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
	public ModelAndView exportExcel(@ModelAttribute("queryVo")QueryVo queryVo,@ModelAttribute("category") CategoryVo categoryVo,Errors errors, ModelAndView modelAndView){
				
		DataGrid dataGrid=dataGridService.doFindByTableIdAndSort(queryVo.getTableId());
		QueryCriteria queryCriteria=new QueryCriteria();
		queryCriteria.setPageSize(10000);
	 
		// 设置分页 启始页
		queryCriteria.setStartIndex(queryVo.getRows() * (queryVo.getPage() - 1));
		// 每页大小
		queryCriteria.setPageSize(queryVo.getRows());	 
	 

	    List<Category> result=this.extendCategoryService.doFindAll();
		Map<String, Map<Object, Object>> fieldDepartment= new HashMap<String, Map<Object, Object>>();
		fieldDepartment.put("category",null);

		Map<String, String> dataFormats = new HashMap<String, String>();		
		dataFormats.put("accountExpiredDate", DateUtil.FORMAT_DATE_YYYY_MM_DD);
		//创建.xls的文件名
		String fileName=this.createFileName(FileUtil.EXCEL_EXTENSION);
		
		modelAndView.addObject("title", dataGrid.getTitle());
		
		Long startTime=System.currentTimeMillis();
		
		fileName=excelExportService.export(dataGrid, result,fileName,fieldDepartment,dataFormats);
		
		logger.info("fileName:{}",fileName);
		
		Long costTime=System.currentTimeMillis()-startTime;
		
		modelAndView.addObject(FILENAME,fileName);
		
		logger.info("export Excel {} cost:{} time,fileName:{}",dataGrid.getTitle(),costTime,fileName);
		logger.info("out Excel导出");
		return this.getExcelView(modelAndView);
	}
	@RequestMapping("comboxtree")
	@ResponseBody
	public List<TreeNode> comboxTree() {
		List<TreeNode> list=extendCategoryService.doFindCategoryToTree();		
		return list;
	}
	
	@RequestMapping(value = "index")
	public String index(HttpServletRequest servletRequest, Model model) {
		return INDEX_RETURN;
	}
}
