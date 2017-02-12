package com.newtouch.starter.service;

import com.newtouch.lion.page.PageResult;
import com.newtouch.lion.query.QueryCriteria;
import com.newtouch.starter.userext.UserExt;

public interface UserExtService {
	/**
	 * 分页查询UserExt信息
	 * @param queryCriteria
	 * @return
	 */
	public PageResult<UserExt>  doFindByCriteria(QueryCriteria queryCriteria);
	
	public PageResult<UserExt> doSearchByCriteria(QueryCriteria criteria);
	
	/**
	 * 根据id查询UserExt并返回用户报名对象
	 * @param id
	 * @return
	 */
	public UserExt doFindById(Long id);
	
	public UserExt doFindByUserId(Long bas_user_id);
	/**
	 * 添加新的UserExt信息
	 * @param userext
	 */
	public void doCreate(UserExt userExt);
	/**
	 * 根据id删除UserExt对象
	 * 
	 */
	
	public int doDeleteById(Long id);
	/**
	 * 更新UserExt
	 * @param userExt
	 * @return
	 */
	public UserExt doUpdate(UserExt userExt);
	

}
