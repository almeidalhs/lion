package com.newtouch.starter.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import com.newtouch.lion.common.sql.HqlUtils;
import com.newtouch.lion.page.PageResult;
import com.newtouch.lion.query.QueryCriteria;
import com.newtouch.lion.service.AbstractService;
import com.newtouch.starter.dao.UserSignDao;
import com.newtouch.starter.service.UserSignService;
import com.newtouch.starter.usersign.UserSign;
@Transactional
@Service("userSignService")
public class UserSignServiceImpl extends AbstractService implements UserSignService {
	@Autowired 
	private UserSignDao userSignDao;
	
	@Override
	public PageResult<UserSign> doFindByCriteria(QueryCriteria criteria) {
		String queryEntry = " from UserSign ";
		String[] whereBodies = {"studentName like :studentName", "schUserId = :schUserId"};
		
		String fromJoinSubClause = "";
		
		Map<String, Object> params = criteria.getQueryCondition();
		
		String orderField = criteria.getOrderField();
		
		String orderDirection = criteria.getOrderDirection();
		
		String hql = HqlUtils.generateHql(queryEntry, fromJoinSubClause, whereBodies, orderField, orderDirection, params);
		System.out.println("查询语句："+hql);
		
		int pageSize = criteria.getPageSize();
		
		int startIndex = criteria.getStartIndex();
		PageResult<UserSign> pageResult = this.userSignDao.query(hql, HqlUtils.generateCountHql(hql, null), params, startIndex, pageSize);
		return pageResult;
	}
	
	@Override
	public PageResult<UserSign> doFindByCriteriaAdmin(QueryCriteria criteria) {
		String queryEntry = " from UserSign ";
		String[] whereBodies = {"studentName like :studentName"};
		
		String fromJoinSubClause = "";
		
		Map<String, Object> params = criteria.getQueryCondition();
		
		String orderField = criteria.getOrderField();
		
		String orderDirection = criteria.getOrderDirection();
		
		String hql = HqlUtils.generateHql(queryEntry, fromJoinSubClause, whereBodies, orderField, orderDirection, params);
		System.out.println("查询语句："+hql);
		
		int pageSize = criteria.getPageSize();
		
		int startIndex = criteria.getStartIndex();
		PageResult<UserSign> pageResult = this.userSignDao.query(hql, HqlUtils.generateCountHql(hql, null), params, startIndex, pageSize);
		return pageResult;
	}
	
	@Override
	public UserSign doFindById(Long id) {
		return this.userSignDao.findById(id);
	}
	@Override
	public void doCreate(UserSign userSign) {
		Assert.notNull(userSign);
		userSignDao.save(userSign);
	}
	@Override
	public int doDeleteById(Long id) {
		String hql="delete from UserSign i where i.id=:id";
		Map<String,Object> params=new  HashMap<String, Object>();
		params.put("id",id);
		return this.userSignDao.updateHQL(hql, params);
	}

	@Override
	public UserSign doUpdate(UserSign userSign) {
		// TODO Auto-generated method stub
		Assert.notNull(userSign);
		userSignDao.update(userSign);
		return userSign;
	}
	
}