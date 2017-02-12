package com.newtouch.starter.usersign;

import java.io.Serializable;
import java.sql.Timestamp;

import com.newtouch.starter.category.Category;

public class UserSignVo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4525943087827074703L;

	private Long id;
	private Long categoryId;
	private Long schUserId;
	private String schUserName;
	private String studentName;
	private String studentNameSearch;
	private String showName;
	private String mobile;
	private int signType;
	private String tutor;
	private String tutor2;
	private int status;
	private Long examUserId;
	private String examUserName;
	
	private int sex;
	private String className;
	private String gradeName;

	private String categoryName;
	private String zhStatus;
	
	private String email;
	private String schoolName;
	private String groupType;
	private String areaType;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}
	public Long getSchUserId() {
		return schUserId;
	}
	public void setSchUserId(Long schUserId) {
		this.schUserId = schUserId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getShowName() {
		return showName;
	}
	public void setShowName(String showName) {
		this.showName = showName;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public int getSignType() {
		return signType;
	}
	public void setSignType(int signType) {
		this.signType = signType;
	}
	public String getTutor() {
		return tutor;
	}
	public void setTutor(String tutor) {
		this.tutor = tutor;
	}
	public String getTutor2() {
		return tutor2;
	}
	public void setTutor2(String tutor2) {
		this.tutor2 = tutor2;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Long getExamUserId() {
		return examUserId;
	}
	public void setExamUserId(Long examUserId) {
		this.examUserId = examUserId;
	}
	public String getExamUserName() {
		return examUserName;
	}
	public void setExamUserName(String examUserName) {
		this.examUserName = examUserName;
	}
	
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getGradeName() {
		return gradeName;
	}
	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}

	public String getSchUserName() {
		return schUserName;
	}
	public void setSchUserName(String schUserName) {
		this.schUserName = schUserName;
	}
	public String getStatuszh() {
		if (this.status == 0) {
			return "未审核";
		}else if(this.status == 1){
			return "审核通过";
		}else if(this.status == 2){
			return "被拒绝";
		}
		return "未审核";
	}
	
	public String getZhStatus() {
		this.zhStatus = "未审核";
		if (this.status == 0) {;
			this.zhStatus =  "未审核";
		}else if(this.status == 1){
			this.zhStatus =  "审核通过";
		}else if(this.status == 2){
			this.zhStatus =  "被拒绝";
		}
		return zhStatus;
	}
	public void setZhStatus(String zhStatus) {
		this.zhStatus = zhStatus;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getGroupType() {
		return groupType;
	}
	public void setGroupType(String groupType) {
		this.groupType = groupType;
	}
	public String getAreaType() {
		return areaType;
	}
	public void setAreaType(String areaType) {
		this.areaType = areaType;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getStudentNameSearch() {
		return studentNameSearch;
	}
	public void setStudentNameSearch(String studentNameSearch) {
		this.studentNameSearch = studentNameSearch;
	}
}
