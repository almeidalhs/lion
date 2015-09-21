package com.newtouch.starter.dao.impl;

import org.springframework.stereotype.Repository;

import com.newtouch.lion.dao.impl.BaseDaoImpl;
import com.newtouch.starter.dao.PolicyDao;
import com.newtouch.starter.policy.Policy;
@Repository("policyDao")
public class PolicyDaoImpl extends BaseDaoImpl<Policy, Long> implements PolicyDao {

	/**
	 * 序列化
	 */
	private static final long serialVersionUID = -1494476134711376183L;
}
