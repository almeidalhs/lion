package com.newtouch.starter.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.newtouch.lion.ztree.TreeNode;
import com.newtouch.starter.service.ExtendTheatreCategoryService;
import com.newtouch.starter.theatrecategory.TheatreCategory;
@Service
public class ExtendShowCategoryServiceImpl extends TheatreCategoryServiceImpl implements ExtendTheatreCategoryService {

	/* (non-Javadoc)
	 * @see com.newtouch.lion.service.system.DepartmentService#doFindDepartmentToTree()
	 */
	@Override
	public List<TreeNode> doFindCategoryToTree() {		
		
		List<TreeNode> list=new ArrayList<TreeNode>();
		
		List<TheatreCategory>  categorysAll=this.doFindAll();
		for(TheatreCategory category:categorysAll){
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
