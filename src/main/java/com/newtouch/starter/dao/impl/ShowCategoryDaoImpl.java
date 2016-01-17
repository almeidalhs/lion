package com.newtouch.starter.dao.impl;

import org.springframework.stereotype.Repository;

import com.newtouch.lion.dao.impl.BaseDaoImpl;
import com.newtouch.starter.dao.ShowCategoryDao;
import com.newtouch.starter.showcategory.ShowCategory;
@Repository("showcategoryDao")
public class ShowCategoryDaoImpl extends BaseDaoImpl<ShowCategory, Long> implements ShowCategoryDao {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3295125944416621640L;

	
}
