package com.newtouch.starter.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.newtouch.lion.ztree.TreeNode;
import com.newtouch.starter.category.Category;
import com.newtouch.starter.service.ExtendCategoryService;
@Service
public class ExtendCategoryServiceImpl extends CategoryServiceImpl implements ExtendCategoryService {

	/* (non-Javadoc)
	 * @see com.newtouch.lion.service.system.DepartmentService#doFindDepartmentToTree()
	 */
	@Override
	public List<TreeNode> doFindCategoryToTree() {		
		
		List<TreeNode> list=new ArrayList<TreeNode>();
		
		List<Category>  categorysAll=this.doFindAll();
		for(Category category:categorysAll){
			TreeNode node=null;
			if(category.getpCategoryId()==null||category.getpCategoryId().equals(0L)){
				node=new TreeNode(category.getId(),0L,category.getCategoryName(),Boolean.TRUE);
			}else{
				node=new TreeNode(category.getId(),category.getpCategoryId(),category.getCategoryName(),Boolean.FALSE);
			}	
			list.add(node);
		}
		return list;
	}
}
