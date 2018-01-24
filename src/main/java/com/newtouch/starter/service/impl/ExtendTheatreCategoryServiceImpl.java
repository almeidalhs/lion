package com.newtouch.starter.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.newtouch.lion.ztree.TreeNode;
import com.newtouch.starter.service.ExtendShowCategoryService;
import com.newtouch.starter.showcategory.ShowCategory;
@Service
public class ExtendTheatreCategoryServiceImpl extends ShowCategoryServiceImpl implements ExtendShowCategoryService {

	/* (non-Javadoc)
	 * @see com.newtouch.lion.service.system.DepartmentService#doFindDepartmentToTree()
	 */
	@Override
	public List<TreeNode> doFindCategoryToTree() {		
		
		List<TreeNode> list=new ArrayList<TreeNode>();
		
		List<ShowCategory>  categorysAll=this.doFindAll();
		for(ShowCategory category:categorysAll){
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
