package com.newtouch.starter.showusersign;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import com.newtouch.lion.model.VersionEntity;
import com.newtouch.starter.showcategory.ShowCategory;

public class ShowUserSign extends VersionEntity<Long> implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3211578958959039567L;
	/**
	 * 
	 */

	
	private Long id;
	private Long categoryId;
	private Long schUserId;
	private String studentName;
	private String showName;
	private String mobile;
	private String email;
	private String schoolName;
	private String groupType;
	private String areaType;
	
	private int signType;
	private String tutor;
	private String tutor2;
	private int status;
	private Long examUserId;
	private String examUserName;
	private Timestamp openDate;
	private int sex;
	private String className;
	private String gradeName;
	
	@ManyToOne(fetch = FetchType.LAZY, targetEntity = ShowCategory.class, cascade = CascadeType.MERGE)
	@JoinColumn(name = "Category_ID", updatable = false, insertable = false)
	@NotFound(action=NotFoundAction.IGNORE)
    private ShowCategory category;

	@Override
	public Long getId() {
		// TODO Auto-generated method stub
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

	public Timestamp getOpenDate() {
		return openDate;
	}

	public void setOpenDate(Timestamp openDate) {
		this.openDate = openDate;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public ShowCategory getCategory() {
		return category;
	}

	public void setCategory(ShowCategory category) {
		this.category = category;
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

	

}
