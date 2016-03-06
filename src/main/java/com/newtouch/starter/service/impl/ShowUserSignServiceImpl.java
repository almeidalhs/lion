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
import com.newtouch.starter.dao.ShowUserSignDao;
import com.newtouch.starter.service.ShowUserSignService;
import com.newtouch.starter.showusersign.ShowUserSign;

@Transactional
@Service("showUserSignService")
public class ShowUserSignServiceImpl extends AbstractService implements ShowUserSignService {
	@Autowired 
	private ShowUserSignDao userSignDao;
	
	@Override
	public PageResult<ShowUserSign> doFindByCriteria(QueryCriteria criteria) {
		String queryEntry = " from ShowUserSign ";
		String[] whereBodies = {"studentName like :studentName", "schUserId = :schUserId", "status = :status"};
		
		String fromJoinSubClause = "";
		
		Map<String, Object> params = criteria.getQueryCondition();
		
		String orderField = criteria.getOrderField();
		
		String orderDirection = criteria.getOrderDirection();
		
		String hql = HqlUtils.generateHql(queryEntry, fromJoinSubClause, whereBodies, orderField, orderDirection, params);
		System.out.println("查询语句："+hql);
		
		int pageSize = criteria.getPageSize();
		
		int startIndex = criteria.getStartIndex();
		PageResult<ShowUserSign> pageResult = this.userSignDao.query(hql, HqlUtils.generateCountHql(hql, null), params, startIndex, pageSize);
		return pageResult;
	}
	
	@Override
	public PageResult<ShowUserSign> doFindByCriteriaAdmin(QueryCriteria criteria) {
		String queryEntry = " from ShowUserSign ";
		String[] whereBodies = {"category.categoryName like :categoryName", "showName like :showName", "schoolName like :schoolName", "areaType like :areaType"};
		
		String fromJoinSubClause = "";
		
		Map<String, Object> params = criteria.getQueryCondition();
		
		String orderField = criteria.getOrderField();
		
		String orderDirection = criteria.getOrderDirection();
		
		String hql = HqlUtils.generateHql(queryEntry, fromJoinSubClause, whereBodies, orderField, orderDirection, params);
		System.out.println("查询语句："+hql);
		
		int pageSize = criteria.getPageSize();
		
		int startIndex = criteria.getStartIndex();
		PageResult<ShowUserSign> pageResult = this.userSignDao.query(hql, HqlUtils.generateCountHql(hql, null), params, startIndex, pageSize);
		return pageResult;
	}
	
	@Override
	public ShowUserSign doFindById(Long id) {
		return this.userSignDao.findById(id);
	}
	@Override
	public void doCreate(ShowUserSign userSign) {
		Assert.notNull(userSign);
		userSignDao.save(userSign);
	}
	@Override
	public int doDeleteById(Long id) {
		String hql="delete from ShowUserSign i where i.id=:id";
		Map<String,Object> params=new  HashMap<String, Object>();
		params.put("id",id);
		return this.userSignDao.updateHQL(hql, params);
	}

	@Override
	public ShowUserSign doUpdate(ShowUserSign userSign) {
		// TODO Auto-generated method stub
		Assert.notNull(userSign);
		userSignDao.update(userSign);
		return userSign;
	}
	
}
