package com.newtouch.starter.service;

import java.util.List;
import java.util.Map;

import com.newtouch.lion.page.PageResult;
import com.newtouch.lion.query.QueryCriteria;
import com.newtouch.starter.theatrecategory.TheatreCategory;

public interface TheatreCategoryService {
	/***
	 * 保存比赛项目对象
	 * 
	 * @param category
	 *            比赛项目对象
	 */
	public void doCreateCategory(TheatreCategory category);

	/**
	 * 保存比赛项目对象
	 * 
	 * @param category
	 *            比赛项目对象
	 * @param parentDeptId
	 *            比赛项目父子对象
	 * */
	public void idoSaveCategory(TheatreCategory category, Long parentDeptId);

	/***
	 * 根据比赛项目ID查询比赛项目,并返回比赛项目信息
	 * 
	 * @param id
	 *            比赛项目Id
	 */
	public TheatreCategory doFindCategoryById(Long id);

	/***
	 * 根据比赛项目ID查询比赛项目,并返回比赛项目信息
	 * 
	 * @param id
	 *            比赛项目Id
	 */
	public TheatreCategory doGetById(Long id);

	/***/
	public void doDelete(TheatreCategory category);

	/***/
	public int doDeleteById(Long id);

	/** 根据ID删除 */
	public TheatreCategory doDelete(Long id);

	/***
	 * 更新比赛项目信息，
	 */
	public TheatreCategory doUpdate(TheatreCategory category);

	/**
	 * 查询第一层级比赛项目信息，查询条件为:pCategoryId="" or =null
	 * */
	public List<TheatreCategory> doFindFirstLevel();

	/** 生成树结构 */
	public TheatreCategory makeTreeCategory(TheatreCategory category);

	/** 查找所有比赛项目信息 */
	public List<TheatreCategory> doFindAll();

	/***
	 */
	public  List<TheatreCategory> makeTree(List<TheatreCategory> elements,
			List<TheatreCategory> structures);

	/**
	 * 生成JSON树结构
	 * 
	 * @return json
	 * */
	public String doFindFirstLevelToTree();
	


	/***
	 * 根据
	 * 
	 * @param tableId
	 *            表格名称
	 * @return String JOSN字符串
	 */
	public String doFindAll(String tableId);
	/***
	 * 查询所有比赛项目列表，并转换为Map
	 * @return Map<Object,Object>
	 */
	public Map<Object,Object> doFindCategoryAll();
}
