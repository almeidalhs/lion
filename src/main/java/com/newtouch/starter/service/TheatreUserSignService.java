package com.newtouch.starter.service;

import com.newtouch.lion.page.PageResult;
import com.newtouch.lion.query.QueryCriteria;
import com.newtouch.starter.theatreusersign.TheatreUserSign;


public interface TheatreUserSignService {
	/**
	 * 分页查询用户报名信息
	 * @param queryCriteria
	 * @return
	 */
	public PageResult<TheatreUserSign>  doFindByCriteria(QueryCriteria queryCriteria);
	
	public PageResult<TheatreUserSign> doSearchByCriteria(QueryCriteria criteria);
	
	public PageResult<TheatreUserSign> doFindByCriteriaAdmin(QueryCriteria criteria);
	
	public PageResult<TheatreUserSign> doFindByCriteriaByCategoryAndSchool(QueryCriteria criteria);
	/**
	 * 根据id查询UserSign并返回用户报名对象
	 * @param id
	 * @return
	 */
	public TheatreUserSign doFindById(Long id);
	/**
	 * 添加新的用户报名信息
	 * @param userSign
	 */
	public void doCreate(TheatreUserSign userSign);
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
	public TheatreUserSign doUpdate(TheatreUserSign userSign);
	

}
