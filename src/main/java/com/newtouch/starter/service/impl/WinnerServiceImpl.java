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
import com.newtouch.starter.dao.WinnerDao;
import com.newtouch.starter.winner.Winner;
import com.newtouch.starter.service.WinnerService;
@Transactional
@Service("winnerService")
public class WinnerServiceImpl extends AbstractService implements WinnerService {

	
	@Autowired 
	private WinnerDao winnerDao;
	
	@Override
	public PageResult<Winner> doFindByCriteria(QueryCriteria criteria) {
		String queryEntry = " from Policy ";
		String[] whereBodies = {"policyType like :policyType"};
		
		String fromJoinSubClause = "";
		
		Map<String, Object> params = criteria.getQueryCondition();
		
		String orderField = criteria.getOrderField();
		
		String orderDirection = criteria.getOrderDirection();
		
		String hql = HqlUtils.generateHql(queryEntry, fromJoinSubClause, whereBodies, orderField, orderDirection, params);
		System.out.println("查询语句："+hql);
		
		int pageSize = criteria.getPageSize();
		
		int startIndex = criteria.getStartIndex();
		PageResult<Winner> pageResult = this.winnerDao.query(hql, HqlUtils.generateCountHql(hql, null), params, startIndex, pageSize);
		return pageResult;
	}
	@Override
	public Winner doFindById(Long id) {
		return this.winnerDao.findById(id);
	}
	@Override
	public void doCreate(Winner winner) {
		Assert.notNull(winner);
		winnerDao.save(winner);
	}
	@Override
	public int doDeleteById(Long id) {
		String hql="delete from Winner i where i.id=:id";
		Map<String,Object> params=new  HashMap<String, Object>();
		params.put("id",id);
		return this.winnerDao.updateHQL(hql, params);
	}

	@Override
	public Winner doUpdate(Winner winner) {
		// TODO Auto-generated method stub
		Assert.notNull(winner);
		winnerDao.update(winner);
		return winner;
	}
}
