package com.newtouch.starter.userext;

import java.io.Serializable;

import com.newtouch.lion.model.VersionEntity;

public class UserExt  extends VersionEntity<Long> implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 120712228318178169L;

	private Long id;
	
	private Long bas_user_id;
	private String username;
	private Integer join_num;
	
	
	@Override
	public Long getId() {
		// TODO Auto-generated method stub
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}

	public Long getBas_user_id() {
		return bas_user_id;
	}

	public void setBas_user_id(Long bas_user_id) {
		this.bas_user_id = bas_user_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getJoin_num() {
		return join_num;
	}

	public void setJoin_num(Integer join_num) {
		this.join_num = join_num;
	}
	
	
	
}
