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
import com.newtouch.starter.dao.ShowCategoryDao;
import com.newtouch.starter.service.ShowCategoryService;
import com.newtouch.starter.showcategory.ShowCategory;
@Transactional
@Service("showCategoryService")
public class ShowCategoryServiceImpl extends AbstractService implements ShowCategoryService {
	
	
	@Autowired
	public ShowCategoryDao categoryDao;


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
	public void doCreateCategory(ShowCategory category) {
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
	public void idoSaveCategory(ShowCategory category, Long parentDeptId) {
		ShowCategory parentCategory = this.doFindCategoryById(parentDeptId);
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
	public void doDelete(ShowCategory category) {
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
	public ShowCategory doDelete(Long id) {
		ShowCategory department = this.categoryDao.findById(id);
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
	public ShowCategory doFindCategoryById(Long id) {
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
	public ShowCategory doGetById(Long id) {
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
	public ShowCategory doUpdate(ShowCategory category) {
		this.doCreateCategory(category);
		return category;
	}

	@Override
	public List<ShowCategory> doFindFirstLevel() {
		String hql = "from ShowCategory where  pCategoryId = 0 order by id DESC";

		Map<String, Object> params = new HashMap<String, Object>();

		List<ShowCategory> departments = categoryDao.query(hql, params);

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
	public ShowCategory makeTreeCategory(ShowCategory category) {
		for (ShowCategory categoryTemp : category.getCategorys()) {
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
	public List<ShowCategory> doFindAll() {
		return categoryDao.findAll();
	}

	/** 访问下一级结构 */
	@SuppressWarnings("unused")
	private void makeTreeChildren(ShowCategory category) {
		for (ShowCategory categoryTemp : category.getCategorys()) {
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
		List<ShowCategory> categorys = this.doFindFirstLevel();
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
		List<ShowCategory> categorys = this.doFindFirstLevel();
		String jsonStr = JSONParser.toJSONDataGridString(categorys,properties);
		return jsonStr.replace("pCategoryId", "_parentId");
	}
	
	
	

	
	/***
	 * 将List<Category>转换为Map<Long,Category>
	 * @param departments List
	 * @return Map<Long,Category>
	 */
	@SuppressWarnings("unused")
	private Map<Long,ShowCategory>  convertToMap(List<ShowCategory> departments){
		Map<Long,ShowCategory> departmentsMap=new HashMap<Long, ShowCategory>();
		for(ShowCategory department:departments){
			departmentsMap.put(department.getId(),department);
		}
		return departmentsMap;
	}
	
	
	
	
	
	/* (non-Javadoc)
	 * @see com.newtouch.lion.service.system.CategoryService#doFindDapartmentAll()
	 */
	@Override
	public Map<Object, Object> doFindCategoryAll() {
		List<ShowCategory>  list=this.doFindAll();
		Map<Object,Object> departmentsMap=new HashMap<Object, Object>();
		for(ShowCategory department:list){
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
	public List<ShowCategory> makeTree(List<ShowCategory> elements,
			List<ShowCategory> structures) {
		List<ShowCategory> root = new ArrayList<ShowCategory>();

		if (elements.size() == 0) {
			return root;
		}

		for (ShowCategory child : elements) {
			if ((child.getCategory() == null)
					|| (!(structures.contains(child.getCategory())))) {
				root.add(child);
			} else {
				int index = structures.indexOf(child.getCategory());

				ShowCategory parent = (ShowCategory) structures.get(index);

				List<ShowCategory> parentChilds = parent
						.getSortedChildCategory();

				if (parentChilds == null) {
					parentChilds = new ArrayList<ShowCategory>();
					parent.setSortedChildCategory(parentChilds);
				}

				parentChilds.add(child);
			}
		}
		return root;
	}


}
