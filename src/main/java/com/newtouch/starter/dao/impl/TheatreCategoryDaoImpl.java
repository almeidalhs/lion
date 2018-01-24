package com.newtouch.starter.dao.impl;

import org.springframework.stereotype.Repository;

import com.newtouch.lion.dao.impl.BaseDaoImpl;
import com.newtouch.starter.dao.TheatreCategoryDao;
import com.newtouch.starter.theatrecategory.TheatreCategory;
@Repository("theatrecategoryDao")
public class TheatreCategoryDaoImpl extends BaseDaoImpl<TheatreCategory, Long> implements TheatreCategoryDao {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2416413917747379405L;


	
}
