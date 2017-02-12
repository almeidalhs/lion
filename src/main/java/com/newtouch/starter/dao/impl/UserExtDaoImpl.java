package com.newtouch.starter.dao.impl;

import org.springframework.stereotype.Repository;

import com.newtouch.lion.dao.impl.BaseDaoImpl;
import com.newtouch.starter.dao.UserExtDao;
import com.newtouch.starter.userext.UserExt;
@Repository("userExtDao")
public class UserExtDaoImpl  extends BaseDaoImpl<UserExt, Long> implements UserExtDao {

	/**
	 * 
	 */
	private static final long serialVersionUID = 883069282701475342L;

}
