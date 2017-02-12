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
import org.springframework.util.Assert;

import com.newtouch.lion.common.sql.HqlUtils;
import com.newtouch.lion.page.PageResult;
import com.newtouch.lion.query.QueryCriteria;
import com.newtouch.lion.service.AbstractService;
import com.newtouch.lion.service.datagrid.DataColumnService;
import com.newtouch.starter.category.Category;
import com.newtouch.starter.dao.CategoryDao;
import com.newtouch.starter.service.CategoryService;
import com.newtouch.lion.json.JSONParser;
@Transactional
@Service("categoryService")
public class CategoryServiceImpl extends AbstractService implements CategoryService {
	
	@Autowired
	public CategoryDao categoryDao;


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
	public void doCreateCategory(Category category) {
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
	public void idoSaveCategory(Category category, Long parentDeptId) {
		Category parentCategory = this.doFindCategoryById(parentDeptId);
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
	public void doDelete(Category category) {
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
	public Category doDelete(Long id) {
		Category department = this.categoryDao.findById(id);
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
		String hql = "delete from Category p where p.id=:id";
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
	public Category doFindCategoryById(Long id) {
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
	public Category doGetById(Long id) {
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
	public Category doUpdate(Category category) {
		this.doCreateCategory(category);
		return category;
	}

	@Override
	public List<Category> doFindFirstLevel() {
		String hql = "from Category where  pCategoryId = 0 order by id DESC";

		Map<String, Object> params = new HashMap<String, Object>();

		List<Category> departments = categoryDao.query(hql, params);

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
	public Category makeTreeCategory(Category category) {
		for (Category categoryTemp : category.getCategorys()) {
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
	public List<Category> doFindAll() {
		return categoryDao.findAll();
	}

	/** 访问下一级结构 */
	@SuppressWarnings("unused")
	private void makeTreeChildren(Category category) {
		for (Category categoryTemp : category.getCategorys()) {
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
		List<Category> categorys = this.doFindFirstLevel();
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
		List<Category> categorys = this.doFindFirstLevel();
		String jsonStr = JSONParser.toJSONDataGridString(categorys,properties);
		return jsonStr.replace("pCategoryId", "_parentId");
	}
	
	
	

	
	/***
	 * 将List<Category>转换为Map<Long,Category>
	 * @param departments List
	 * @return Map<Long,Category>
	 */
	@SuppressWarnings("unused")
	private Map<Long,Category>  convertToMap(List<Category> departments){
		Map<Long,Category> departmentsMap=new HashMap<Long, Category>();
		for(Category department:departments){
			departmentsMap.put(department.getId(),department);
		}
		return departmentsMap;
	}
	
	
	
	
	
	/* (non-Javadoc)
	 * @see com.newtouch.lion.service.system.CategoryService#doFindDapartmentAll()
	 */
	@Override
	public Map<Object, Object> doFindCategoryAll() {
		List<Category>  list=this.doFindAll();
		Map<Object,Object> departmentsMap=new HashMap<Object, Object>();
		for(Category department:list){
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
	public List<Category> makeTree(List<Category> elements,
			List<Category> structures) {
		List<Category> root = new ArrayList<Category>();

		if (elements.size() == 0) {
			return root;
		}

		for (Category child : elements) {
			if ((child.getCategory() == null)
					|| (!(structures.contains(child.getCategory())))) {
				root.add(child);
			} else {
				int index = structures.indexOf(child.getCategory());

				Category parent = (Category) structures.get(index);

				List<Category> parentChilds = parent
						.getSortedChildCategory();

				if (parentChilds == null) {
					parentChilds = new ArrayList<Category>();
					parent.setSortedChildCategory(parentChilds);
				}

				parentChilds.add(child);
			}
		}
		return root;
	}
	
	
	@Override
	public Category doFindTopLevel(Long id) {
		Category category = this.doFindParentLevel(id);
		if (category.getpCategoryId().longValue() == 0) {
			return category;
		} else {
			Category categoryTop = this.doFindParentLevel(category.getId());
			return categoryTop;
		}

	}
	
	@Override
	public Category doFindParentLevel(Long id) {
		
		Category category = this.doFindCategoryById(id);		
		String hql = "from Category where id = :pCategoryId  order by id DESC";

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("pCategoryId", category.getpCategoryId());
		List<Category> departments = categoryDao.query(hql, params);
		if (departments==null || departments.size()==0) {
			return null;
		}
		return departments.get(0);
	}

	@Override
	public Category doFindSelfParent(Long id) {		
		String hql = "from Category where pCategoryId = :id  order by id DESC";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);
		List<Category> departments = categoryDao.query(hql, params);
		if (departments==null || departments.size()==0) {
			return null;
		}
		return departments.get(0);
	}

}
