package com.newtouch.starter.theatrecategory;

import java.io.Serializable;
import java.sql.Timestamp;

public class TheatreCategoryVo  implements Serializable{


	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3619296899305737667L;
	private Long id;				//项目目录Id
	private String categoryName;			//项目目录名称
	private Long pCategoryId;
	private Timestamp createDate;
	private int orderNum;
	private int year;
	private int isChild;
	private int categoryType;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public Long getpCategoryId() {
		return pCategoryId;
	}
	public void setpCategoryId(Long pCategoryId) {
		this.pCategoryId = pCategoryId;
	}
	public Timestamp getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getIsChild() {
		return isChild;
	}
	public void setIsChild(int isChild) {
		this.isChild = isChild;
	}
	public int getCategoryType() {
		return categoryType;
	}
	public void setCategoryType(int categoryType) {
		this.categoryType = categoryType;
	}
	 

}
