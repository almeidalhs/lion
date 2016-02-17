package com.newtouch.starter.dao.impl;

import org.springframework.stereotype.Repository;

import com.newtouch.lion.dao.impl.BaseDaoImpl;
import com.newtouch.starter.dao.ShowUserSignDao;
import com.newtouch.starter.showusersign.ShowUserSign;

@Repository("showUserSignDao")
public class ShowUserSignDaoImpl  extends BaseDaoImpl<ShowUserSign, Long> implements ShowUserSignDao {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3616738801591258069L;

	

}
