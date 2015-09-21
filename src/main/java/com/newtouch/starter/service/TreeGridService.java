package com.newtouch.starter.service;

import java.util.List;

import com.newtouch.starter.policy.TreeGrid;

public interface TreeGridService {

	public String doFindAllToTree(String tableId);
	public List<TreeGrid> doFindFirstLevel();
}
