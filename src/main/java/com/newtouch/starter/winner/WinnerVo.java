package com.newtouch.starter.winner;

import java.io.Serializable;

public class WinnerVo  implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1815300148585810139L;

	private Long id;
	private Long category_id;
	private Long year;
	private Long stusign_id;
	private Long reward_id;
	private String reward_name;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Long category_id) {
		this.category_id = category_id;
	}
	public Long getYear() {
		return year;
	}
	public void setYear(Long year) {
		this.year = year;
	}
	public Long getStusign_id() {
		return stusign_id;
	}
	public void setStusign_id(Long stusign_id) {
		this.stusign_id = stusign_id;
	}
	public Long getReward_id() {
		return reward_id;
	}
	public void setReward_id(Long reward_id) {
		this.reward_id = reward_id;
	}
	public String getReward_name() {
		return reward_name;
	}
	public void setReward_name(String reward_name) {
		this.reward_name = reward_name;
	}

	
}
