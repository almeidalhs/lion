package com.newtouch.starter.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.newtouch.lion.json.JSONParser;
import com.newtouch.lion.service.AbstractService;
import com.newtouch.lion.service.datagrid.DataColumnService;
import com.newtouch.starter.dao.TheatreCategoryDao;
import com.newtouch.starter.service.TheatreCategoryService;
import com.newtouch.starter.theatrecategory.TheatreCategory;
@Transactional
@Service("theatreCategoryService")
public class TheatreCategoryServiceImpl extends AbstractService implements TheatreCategoryService {
	
	
	@Autowired
	public TheatreCategoryDao categoryDao;


	@Autowired
	private DataColumnService dataColumnService;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.lion.framework.service.system.TsCategoryService#doSaveCategory
	 * (com.lion.framework.model.system.TsCategory)
	 */
	@Override
	public void doCreateCategory(TheatreCategory category) {
		categoryDao.save(category);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.lion.framework.service.system.TsCategoryService#idoSaveCategory
	 * (com.lion.framework.model.system.TsCategory, java.lang.Long)
	 */
	@Override
	public void idoSaveCategory(TheatreCategory category, Long parentDeptId) {
		TheatreCategory parentCategory = this.doFindCategoryById(parentDeptId);
		category.setCategory(parentCategory);
		categoryDao.save(category);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.lion.framework.service.system.CategoryService#delete(com.lion
	 * .framework.model.system.Category)
	 */
	@Override
	public void doDelete(TheatreCategory category) {
		this.categoryDao.remove(category);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.lion.framework.service.system.CategoryService#doDelete(java
	 * .lang.Long)
	 */
	@Override
	public TheatreCategory doDelete(Long id) {
		TheatreCategory department = this.categoryDao.findById(id);
		this.categoryDao.remove(department);
		return department;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.lion.framework.service.system.CategoryService#deleteById(java
	 * .lang.Long)
	 */
	@Override
	public int doDeleteById(Long id) {
		String hql = "delete from ShowCategory p where p.id=:id";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);
		return this.categoryDao.updateHQL(hql, params);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.lion.framework.service.system.TsCategoryService#doFindCategoryById
	 * (java.lang.Long)
	 */
	@Override
	public TheatreCategory doFindCategoryById(Long id) {
		return categoryDao.findById(id);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.lion.framework.service.system.CategoryService#doGetById(java
	 * .lang.Long)
	 */
	@Override
	public TheatreCategory doGetById(Long id) {
		return this.categoryDao.getById(id);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.lion.framework.service.system.CategoryService#doUpdate(com.lion
	 * .framework.model.system.Category)
	 */
	@Override
	public TheatreCategory doUpdate(TheatreCategory category) {
		this.doCreateCategory(category);
		return category;
	}

	@Override
	public List<TheatreCategory> doFindFirstLevel() {
		String hql = "from TheatreCategory where  pCategoryId = 0 order by id DESC";

		Map<String, Object> params = new HashMap<String, Object>();

		List<TheatreCategory> departments = categoryDao.query(hql, params);

		return departments;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.lion.framework.service.system.CategoryService#makeTreeCategory
	 * ()
	 */
	@Override
	public TheatreCategory makeTreeCategory(TheatreCategory category) {
		for (TheatreCategory categoryTemp : category.getCategorys()) {
			if (categoryTemp.getCategorys().iterator().hasNext()) {
				categoryTemp.getCategorys().iterator().hasNext();
			}
			categoryTemp.getCategoryName();
		}
		return category;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.lion.framework.service.system.CategoryService#doFindAll()
	 */
	@Override
	public List<TheatreCategory> doFindAll() {
		return categoryDao.findAll();
	}

	/** 访问下一级结构 */
	@SuppressWarnings("unused")
	private void makeTreeChildren(TheatreCategory category) {
		for (TheatreCategory categoryTemp : category.getCategorys()) {
			if (categoryTemp.getCategorys().iterator().hasNext()) {
				this.makeTreeChildren(categoryTemp);
			}
			categoryTemp.getCategoryName();
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.lion.framework.service.system.CategoryService#
	 * doFindFirstLevelToTree()
	 */
	@Override
	public String doFindFirstLevelToTree() {
		List<TheatreCategory> categorys = this.doFindFirstLevel();
		Set<String> properties = new HashSet<String>();
		properties.add("id");
		properties.add("pCategoryId");
		properties.add("categoryName");
		properties.add("orderNum");
		properties.add("year");
		properties.add("categorys");
		return JSONParser.toJSONString(categorys, properties);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.lion.framework.service.system.CategoryService#doFindAll(java
	 * .lang.String)
	 */
	@Override
	public String doFindAll(String tableId) {
		Set<String> properties = this.dataColumnService
				.doFindColumnsByTableId(tableId);
		List<TheatreCategory> categorys = this.doFindFirstLevel();
		String jsonStr = JSONParser.toJSONDataGridString(categorys,properties);
		return jsonStr.replace("pCategoryId", "_parentId");
	}
	
	
	

	
	/***
	 * 将List<Category>转换为Map<Long,Category>
	 * @param departments List
	 * @return Map<Long,Category>
	 */
	@SuppressWarnings("unused")
	private Map<Long,TheatreCategory>  convertToMap(List<TheatreCategory> departments){
		Map<Long,TheatreCategory> departmentsMap=new HashMap<Long, TheatreCategory>();
		for(TheatreCategory department:departments){
			departmentsMap.put(department.getId(),department);
		}
		return departmentsMap;
	}
	
	
	
	
	
	/* (non-Javadoc)
	 * @see com.newtouch.lion.service.system.CategoryService#doFindDapartmentAll()
	 */
	@Override
	public Map<Object, Object> doFindCategoryAll() {
		List<TheatreCategory>  list=this.doFindAll();
		Map<Object,Object> departmentsMap=new HashMap<Object, Object>();
		for(TheatreCategory department:list){
			departmentsMap.put(department.getId(),department);
		}
		return departmentsMap;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.lion.framework.service.system.CategoryService#makeTree(java.
	 * util.List, java.util.List)
	 */
	@Override
	public List<TheatreCategory> makeTree(List<TheatreCategory> elements,
			List<TheatreCategory> structures) {
		List<TheatreCategory> root = new ArrayList<TheatreCategory>();

		if (elements.size() == 0) {
			return root;
		}

		for (TheatreCategory child : elements) {
			if ((child.getCategory() == null)
					|| (!(structures.contains(child.getCategory())))) {
				root.add(child);
			} else {
				int index = structures.indexOf(child.getCategory());

				TheatreCategory parent = (TheatreCategory) structures.get(index);

				List<TheatreCategory> parentChilds = parent
						.getSortedChildCategory();

				if (parentChilds == null) {
					parentChilds = new ArrayList<TheatreCategory>();
					parent.setSortedChildCategory(parentChilds);
				}

				parentChilds.add(child);
			}
		}
		return root;
	}


}