package com.newtouch.starter.dao.impl;

import org.springframework.stereotype.Repository;

import com.newtouch.lion.dao.impl.BaseDaoImpl;
import com.newtouch.starter.dao.WinnerDao;
import com.newtouch.starter.winner.Winner;
@Repository("winnerDao")
public class WinnerDaoImpl extends BaseDaoImpl<Winner, Long> implements
		WinnerDao {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3511948501834104425L;

	
}
