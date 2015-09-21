package com.newtouch.starter.policy;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Embedded;

import com.newtouch.lion.model.VersionEntity;
import com.newtouch.lion.model.system.Attributes;
import com.newtouch.lion.model.system.Role;

public class TreeGrid extends VersionEntity<Long>{
	
	private static final long serialVersionUID = 3513003563818178117L;

	/***
	 * 树ID
	 */
	private Long id;
	/** 树父ID */
	private Long parentTreeGridId;
	/** 资源类型 */
	private String type;
	/** 资源路径 URL Class.Method */
	private String path;
	/** 资源名称－中文 */
	private String nameZh;
	/** 资源名称－英文 */
	private String nameEn;
	/** 资源描述 */
	private String description;
	/** 资源排序 */
	private int seqNum;
	/** 树是否叶节点，其下没有子资源 默认为：true */
	private Boolean isLeaf;
	/** 资源是否可编辑 */
	private Boolean editable;
	/** 资源目标 指HTML链接的target属性 */
	private String target;
	/**资源图标*/
	private String icon;
	/** 资源性 */
	private Attributes attributes;
	/** 子资源关联父资源对象 */
	private TreeGrid treeGrid;
	/** 父资源关联父资源对象 */
	private Set<TreeGrid> treeGrids = new HashSet<TreeGrid>(0);
	/** 资源所关联的角色集合 */
	private Set<Role> roles = new HashSet<Role>();
	/**权限名称*/
	private String permission;
	
	
	public TreeGrid(Long id, Long parentTreeGridId, String type, String path,
			String nameZh, String nameEn, String description, int seqNum,
			Boolean isLeaf, Boolean editable, String target, String icon,
			Attributes attributes, TreeGrid treeGrid, Set<TreeGrid> treeGrids,
			Set<Role> roles, String permission) {
		super();
		this.id = id;
		this.parentTreeGridId = parentTreeGridId;
		this.type = type;
		this.path = path;
		this.nameZh = nameZh;
		this.nameEn = nameEn;
		this.description = description;
		this.seqNum = seqNum;
		this.isLeaf = isLeaf;
		this.editable = editable;
		this.target = target;
		this.icon = icon;
		this.attributes = attributes;
		this.treeGrid = treeGrid;
		this.treeGrids = treeGrids;
		this.roles = roles;
		this.permission = permission;
	}
	public TreeGrid() {
		super();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getParentTreeGridId() {
		return parentTreeGridId;
	}
	public void setParentTreeGridId(Long parentTreeGridId) {
		this.parentTreeGridId = parentTreeGridId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getNameZh() {
		return nameZh;
	}
	public void setNameZh(String nameZh) {
		this.nameZh = nameZh;
	}
	public String getNameEn() {
		return nameEn;
	}
	public void setNameEn(String nameEn) {
		this.nameEn = nameEn;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getSeqNum() {
		return seqNum;
	}
	public void setSeqNum(int seqNum) {
		this.seqNum = seqNum;
	}
	public Boolean getIsLeaf() {
		return isLeaf;
	}
	public void setIsLeaf(Boolean isLeaf) {
		this.isLeaf = isLeaf;
	}
	public Boolean getEditable() {
		return editable;
	}
	public void setEditable(Boolean editable) {
		this.editable = editable;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	/**
	 * @return the attributes
	 */
	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "path", column = @Column(name = "PATH", insertable = false, nullable = false, updatable = false)) })
	public Attributes getAttributes() {
		return attributes;
	}

	/**
	 * @param attributes
	 *            the attributes to set
	 */
	public void setAttributes(Attributes attributes) {
		this.attributes = attributes;
	}

	public TreeGrid getTreeGrid() {
		return treeGrid;
	}
	public void setTreeGrid(TreeGrid treeGrid) {
		this.treeGrid = treeGrid;
	}
	public Set<TreeGrid> getTreeGrids() {
		return treeGrids;
	}
	public void setTreeGrids(Set<TreeGrid> treeGrids) {
		this.treeGrids = treeGrids;
	}
	public Set<Role> getRoles() {
		return roles;
	}
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	@Override
	public String toString() {
		return "TreeGrid [id=" + id + ", parentTreeGridId=" + parentTreeGridId
				+ ", type=" + type + ", path=" + path + ", nameZh=" + nameZh
				+ ", nameEn=" + nameEn + ", description=" + description
				+ ", seqNum=" + seqNum + ", isLeaf=" + isLeaf + ", editable="
				+ editable + ", target=" + target + ", icon=" + icon
				+ ", attributes=" + attributes + ", treeGrid=" + treeGrid
				+ ", treeGrids=" + treeGrids + ", roles=" + roles
				+ ", permission=" + permission + "]";
	}
	
	
	

}
