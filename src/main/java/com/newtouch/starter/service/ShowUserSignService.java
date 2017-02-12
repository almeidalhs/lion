package com.newtouch.starter.service;

import com.newtouch.lion.page.PageResult;
import com.newtouch.lion.query.QueryCriteria;
import com.newtouch.starter.showusersign.ShowUserSign;


public interface ShowUserSignService {
	/**
	 * 分页查询用户报名信息
	 * @param queryCriteria
	 * @return
	 */
	public PageResult<ShowUserSign>  doFindByCriteria(QueryCriteria queryCriteria);
	
	public PageResult<ShowUserSign> doSearchByCriteria(QueryCriteria criteria);
	
	public PageResult<ShowUserSign> doFindByCriteriaAdmin(QueryCriteria criteria);
	
	public PageResult<ShowUserSign> doFindByCriteriaByCategoryAndSchool(QueryCriteria criteria);
	/**
	 * 根据id查询UserSign并返回用户报名对象
	 * @param id
	 * @return
	 */
	public ShowUserSign doFindById(Long id);
	/**
	 * 添加新的用户报名信息
	 * @param userSign
	 */
	public void doCreate(ShowUserSign userSign);
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
	public ShowUserSign doUpdate(ShowUserSign userSign);
	

}
