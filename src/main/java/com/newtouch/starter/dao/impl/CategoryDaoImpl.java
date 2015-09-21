package com.newtouch.starter.dao.impl;

import org.springframework.stereotype.Repository;

import com.newtouch.lion.dao.impl.BaseDaoImpl;
import com.newtouch.starter.category.Category;
import com.newtouch.starter.dao.CategoryDao;
@Repository("categoryDao")
public class CategoryDaoImpl extends BaseDaoImpl<Category, Long> implements CategoryDao {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3295125944416621640L;

	
}
