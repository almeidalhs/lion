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
import com.newtouch.starter.dao.PolicyDao;
import com.newtouch.starter.policy.Policy;
import com.newtouch.starter.service.PolicyService;
@Transactional
@Service("policyService")
public class PolicyServiceImpl extends  AbstractService implements
		PolicyService {
	@Autowired 
	private PolicyDao policyDao;
	
	@Override
	public PageResult<Policy> doFindByCriteria(QueryCriteria criteria) {
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
		PageResult<Policy> pageResult = this.policyDao.query(hql, HqlUtils.generateCountHql(hql, null), params, startIndex, pageSize);
		return pageResult;
	}
	@Override
	public Policy doFindById(Long id) {
		return this.policyDao.findById(id);
	}
	@Override
	public void doCreate(Policy policy) {
		Assert.notNull(policy);
		policyDao.save(policy);
	}
	@Override
	public int doDeleteById(Long id) {
		String hql="delete from Policy i where i.id=:id";
		Map<String,Object> params=new  HashMap<String, Object>();
		params.put("id",id);
		return this.policyDao.updateHQL(hql, params);
	}

	@Override
	public Policy doUpdate(Policy policy) {
		// TODO Auto-generated method stub
		Assert.notNull(policy);
		policyDao.update(policy);
		return policy;
	}
	@Override
	public boolean doIsExistByPolicyType(String policyType) {
		Assert.notNull(policyType);
		Policy policy = this.doFindTypeByPolicyType(policyType);
		if (policy != null)
			return true;
		return false;
	}
	@Override
	public Policy doFindTypeByPolicyType(String policyType) {
		Assert.notNull(policyType);
		String hql = "from policy where policyType=:policyType";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("policyType", policyType);
		java.util.List<Policy>
		policys = policyDao.query(hql, params);
		if (policys != null && policys.size() > 0) {
			return policys.get(0);
		}
		return null;
	}

}
