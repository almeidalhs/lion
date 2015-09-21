package com.newtouch.starter.dao.impl;

import org.springframework.stereotype.Repository;

import com.newtouch.lion.dao.impl.BaseDaoImpl;
import com.newtouch.starter.usersign.UserSign;
import com.newtouch.starter.dao.UserSignDao;
@Repository("userSignDao")
public class UserSignDaoImpl  extends BaseDaoImpl<UserSign, Long> implements UserSignDao {

	/**
	 * 
	 */
	private static final long serialVersionUID = 883069282701475342L;

}
