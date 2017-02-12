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
import com.newtouch.starter.dao.UserExtDao;
import com.newtouch.starter.service.UserExtService;
import com.newtouch.starter.userext.UserExt;

@Transactional
@Service("userExtService")
public class UserExtServiceImpl extends AbstractService implements UserExtService {
	@Autowired 
	private UserExtDao userExtDao;
	
	@Override
	public PageResult<UserExt> doFindByCriteria(QueryCriteria criteria) {
		String queryEntry = " from UserExt ";
		String[] whereBodies = {"studentName like :studentName", "schUserId = :schUserId", "status = :status"};
		
		String fromJoinSubClause = "";
		
		Map<String, Object> params = criteria.getQueryCondition();
		
		String orderField = criteria.getOrderField();
		
		String orderDirection = criteria.getOrderDirection();
		
		String hql = HqlUtils.generateHql(queryEntry, fromJoinSubClause, whereBodies, orderField, orderDirection, params);
		System.out.println("查询语句："+hql);
		
		int pageSize = criteria.getPageSize();
		
		int startIndex = criteria.getStartIndex();
		PageResult<UserExt> pageResult = this.userExtDao.query(hql, HqlUtils.generateCountHql(hql, null), params, startIndex, pageSize);
		return pageResult;
	}
	
	@Override
	public PageResult<UserExt> doSearchByCriteria(QueryCriteria criteria) {
		String queryEntry = " from UserExt ";
		String[] whereBodies = {"category.categoryName like :categoryName or studentName like :studentName or showName like :showName", "schUserId = :schUserId"};
		
		String fromJoinSubClause = "";
		
		Map<String, Object> params = criteria.getQueryCondition();
		
		String orderField = criteria.getOrderField();
		
		String orderDirection = criteria.getOrderDirection();
		
		String hql = HqlUtils.generateHql(queryEntry, fromJoinSubClause, whereBodies, orderField, orderDirection, params);
		System.out.println("查询语句："+hql);
		
		int pageSize = criteria.getPageSize();
		
		int startIndex = criteria.getStartIndex();
		PageResult<UserExt> pageResult = this.userExtDao.query(hql, HqlUtils.generateCountHql(hql, null), params, startIndex, pageSize);
		return pageResult;
	}
	
	
	@Override
	public UserExt doFindById(Long id) {
		return this.userExtDao.findById(id);
	}
	
	@Override
	public UserExt doFindByUserId(Long bas_user_id) {
		Assert.notNull(bas_user_id);
		String hql = "from UserExt where bas_user_id=:bas_user_id";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("bas_user_id", bas_user_id);
		java.util.List<UserExt>
		userExts = userExtDao.query(hql, params);
		if (userExts != null && userExts.size() > 0) {
			return userExts.get(0);
		}
		return null;
	}
	
	@Override
	public void doCreate(UserExt userExt) {
		Assert.notNull(userExt);
		userExtDao.save(userExt);
	}
	@Override
	public int doDeleteById(Long id) {
		String hql="delete from UserExt i where i.id=:id";
		Map<String,Object> params=new  HashMap<String, Object>();
		params.put("id",id);
		return this.userExtDao.updateHQL(hql, params);
	}

	@Override
	public UserExt doUpdate(UserExt userExt) {
		// TODO Auto-generated method stub
		Assert.notNull(userExt);
		userExtDao.update(userExt);
		return userExt;
	}
	
}
