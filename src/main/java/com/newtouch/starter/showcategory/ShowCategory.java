package com.newtouch.starter.showcategory;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;
import org.hibernate.annotations.NotFound;




import org.hibernate.annotations.NotFoundAction;

import com.newtouch.lion.model.VersionEntity;

public class ShowCategory extends VersionEntity<Long> implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2507755420200145930L;
	
	
	private Long id;				//项目目录Id
	private String categoryName;			//项目目录名称
	private Long pCategoryId;
	private Timestamp createDate;
	private int orderNum;
	private int year;
	private int isChild;
	private int categoryType;
	
	/** 部门父子对象 */
	private ShowCategory category;
	
	/** 该部门所属下级所有部门集合 */
	private Set<ShowCategory> categorys = new HashSet<ShowCategory>(0);
	 
	/** 排序 */
	private List<ShowCategory> sortedChildCategory;
	
	@ManyToOne(fetch = FetchType.LAZY, targetEntity = ShowCategory.class, cascade = CascadeType.MERGE)
	@JoinColumn(name = "PCategory_ID", updatable = false, insertable = false)
	@NotFound(action=NotFoundAction.IGNORE)
	public ShowCategory getCategory() {
		return category;
	}
	public void setCategory(ShowCategory category) {
		this.category = category;
	}
	@OneToMany(cascade = CascadeType.MERGE, fetch = FetchType.LAZY, mappedBy = "category")
	public Set<ShowCategory> getCategorys() {
		return categorys;
	}
	public void setCategorys(Set<ShowCategory> categorys) {
		this.categorys = categorys;
	}
	@Transient
	public List<ShowCategory> getSortedChildCategory() {
		return sortedChildCategory;
	}
	public void setSortedChildCategory(List<ShowCategory> sortedChildCategory) {
		this.sortedChildCategory = sortedChildCategory;
	}
	
	
	@Override
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
