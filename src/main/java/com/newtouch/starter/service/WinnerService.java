package com.newtouch.starter.service;

import com.newtouch.lion.page.PageResult;
import com.newtouch.lion.query.QueryCriteria;
import com.newtouch.starter.winner.Winner;

public interface WinnerService {
	/**
	 * 分页查询获奖名单
	 * @param queryCriteria
	 * @return
	 */
	public PageResult<Winner>  doFindByCriteria(QueryCriteria queryCriteria);
	/**
	 * 根据id查询Winner并返回获奖对象
	 * @param id
	 * @return
	 */
	public Winner doFindById(Long id);
	/**
	 * 添加新的获奖信息
	 * @param winner
	 */
	public void doCreate(Winner winner);
	/**
	 * 根据id删除Winner对象
	 * 
	 */
	
	public int doDeleteById(Long id);
	/**
	 * 更新获奖信息
	 * @param winner
	 * @return
	 */
	public Winner doUpdate(Winner winner);
}
