package com.newtouch.starter.usersign;

import java.io.Serializable;

public class UserSignExcel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2785077073554484337L;
	
	public String areaType;
	public String schoolName;
	public String groupTypeAndName;
	public String categoryName;
	public String subCategoryName;
	public String categoryType;
	public String showName;
	public String studentName;
	public String tutor;
	public String className;
	public String mobile;
	
	
	public String getAreaType() {
		return areaType;
	}
	public void setAreaType(String areaType) {
		this.areaType = areaType;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getGroupTypeAndName() {
		return groupTypeAndName;
	}
	public void setGroupTypeAndName(String groupTypeAndName) {
		this.groupTypeAndName = groupTypeAndName;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getSubCategoryName() {
		return subCategoryName;
	}
	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}
	public String getCategoryType() {
		return categoryType;
	}
	public void setCategoryType(String categoryType) {
		this.categoryType = categoryType;
	}
	public String getShowName() {
		return showName;
	}
	public void setShowName(String showName) {
		this.showName = showName;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getTutor() {
		return tutor;
	}
	public void setTutor(String tutor) {
		this.tutor = tutor;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public UserSignExcel getExcelInfo(UserSign userSign) {
		UserSignExcel userSignExcel = new UserSignExcel();
		userSignExcel.setAreaType(userSign.getAreaType());
		userSignExcel.setSchoolName(userSign.getSchoolName());
		userSignExcel.setGroupTypeAndName(userSign.getGroupType()+"("+userSign.getGradeName()+")");
		userSignExcel.setShowName(userSign.getShowName());
		userSignExcel.setStudentName(userSign.getStudentName());
		if (userSign.getTutor2()==null) {
			userSignExcel.setTutor(userSign.getTutor());			
		} else {
			userSignExcel.setTutor(userSign.getTutor() + "," + userSign.getTutor2());	
		}
		userSignExcel.setClassName(userSign.getClassName());
		userSignExcel.setMobile(userSign.getMobile());
		
		return userSignExcel;
	}

}
