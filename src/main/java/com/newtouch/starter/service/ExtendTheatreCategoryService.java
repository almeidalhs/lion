package com.newtouch.starter.service;

import java.util.List;
import com.newtouch.lion.ztree.TreeNode;

public interface ExtendTheatreCategoryService extends TheatreCategoryService{
	/**
	 * 构建ZTree结构的比赛项目列表
	 * @return List<TreeNode>
	 */
	public List<TreeNode> doFindCategoryToTree();
}
