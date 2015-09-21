package com.newtouch.starter.policy;

import java.io.Serializable;

import com.newtouch.lion.model.VersionEntity;

public class Policy extends VersionEntity<Long> implements Serializable {
	

	/**
	 * 
	 */
	private static final long serialVersionUID = -6327022095298899613L;
	private Long     	 id;				//保单ID
	private String 		 policyType;		//保单类型
	private String 		 insuredName;		//被保人姓名
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPolicyType() {
		return policyType;
	}
	public void setPolicyType(String policyType) {
		this.policyType = policyType;
	}
	public String getInsuredName() {
		return insuredName;
	}
	public void setInsuredName(String insuredName) {
		this.insuredName = insuredName;
	}
	
	public Policy() {
		super();
	}
	
	public Policy(Long id, String policyType, String insuredName) {
		super();
		this.id = id;
		this.policyType = policyType;
		this.insuredName = insuredName;
	}
	@Override
	public String toString() {
		return "Policy [id=" + id + ", policyType=" + policyType
				+ ", insuredName=" + insuredName + "]";
	}
	
	

}
