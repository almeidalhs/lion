package com.newtouch.starter.dao.impl;

import org.springframework.stereotype.Repository;

import com.newtouch.lion.dao.impl.BaseDaoImpl;
import com.newtouch.starter.dao.TreeGridDao;
import com.newtouch.starter.policy.TreeGrid;

@Repository
public class TreeGridDaoImpl extends BaseDaoImpl<TreeGrid, Long> implements TreeGridDao {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5311893761504147007L;
}
