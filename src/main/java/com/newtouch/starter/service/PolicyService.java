package com.newtouch.starter.service;

import com.newtouch.lion.page.PageResult;
import com.newtouch.lion.query.QueryCriteria;
import com.newtouch.starter.policy.Policy;

public interface PolicyService {
	/**
	 * 分页查询保单信息
	 * @param queryCriteria
	 * @return
	 */
	public PageResult<Policy>  doFindByCriteria(QueryCriteria queryCriteria);
	/**
	 * 根据id查询Policy并返回保单对象
	 * @param id
	 * @return
	 */
	public Policy doFindById(Long id);
	/**
	 * 添加新的保单信息
	 * @param policy
	 */
	public void doCreate(Policy policy);
	/**
	 * 根据id删除Policy对象
	 * 
	 */
	
	public int doDeleteById(Long id);
	/**
	 * 更新保单
	 * @param policy
	 * @return
	 */
	public Policy doUpdate(Policy policy);
	
	/**
	 * 根据保单类型获取保单信息
	 * @param iconClass
	 * @return
	 */
	public Policy doFindTypeByPolicyType(String policyType);
	/**
	 * 判断保单的类型是否存在
	 * @param policyClass
	 * @return
	 */
	public boolean doIsExistByPolicyType(String policyType);
}
