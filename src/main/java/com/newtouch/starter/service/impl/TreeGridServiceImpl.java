package com.newtouch.starter.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newtouch.lion.json.JSONParser;
import com.newtouch.lion.service.datagrid.DataColumnService;
import com.newtouch.starter.dao.TreeGridDao;
import com.newtouch.starter.policy.TreeGrid;
import com.newtouch.starter.service.TreeGridService;

@Service("treeGridService")
public class TreeGridServiceImpl implements TreeGridService {

	@Autowired
	private TreeGridDao treeGridDao;
	
	@Autowired
	private DataColumnService dataColumnService;
	@Override
	public String doFindAllToTree(String tableId) {
		Set<String> properties=this.dataColumnService.doFindColumnsByTableId(tableId);
		List<TreeGrid> treeGrids=this.doFindFirstLevel();
		for(TreeGrid treeGrid:treeGrids){
			treeGrid.getTreeGrids();
		}
		properties.add("permission");
		String jsonStr=JSONParser.toJSONString(treeGrids, properties);
		return jsonStr.replace("parentTreeGridId", "_parentId");
	}

	@Override
	public List<TreeGrid> doFindFirstLevel() {

		String hql = "from TreeGrid where  parentTreeGridId is null order by seqNum asc";

		Map<String, Object> params = new HashMap<String, Object>();

		List<TreeGrid> TreeGrids = treeGridDao.query(hql, params);

		return TreeGrids;
	}

}
