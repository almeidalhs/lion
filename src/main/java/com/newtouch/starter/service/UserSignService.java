package com.newtouch.starter.service;

import com.newtouch.lion.page.PageResult;
import com.newtouch.lion.query.QueryCriteria;
import com.newtouch.starter.usersign.UserSign;

public interface UserSignService {
	/**
	 * 分页查询用户报名信息
	 * @param queryCriteria
	 * @return
	 */
	public PageResult<UserSign>  doFindByCriteria(QueryCriteria queryCriteria);
	
	public PageResult<UserSign> doFindByCriteriaAdmin(QueryCriteria criteria);
	/**
	 * 根据id查询UserSign并返回用户报名对象
	 * @param id
	 * @return
	 */
	public UserSign doFindById(Long id);
	/**
	 * 添加新的用户报名信息
	 * @param userSign
	 */
	public void doCreate(UserSign userSign);
	/**
	 * 根据id删除用户报名对象
	 * 
	 */
	
	public int doDeleteById(Long id);
	/**
	 * 更新用户报名
	 * @param userSign
	 * @return
	 */
	public UserSign doUpdate(UserSign userSign);
	

}
