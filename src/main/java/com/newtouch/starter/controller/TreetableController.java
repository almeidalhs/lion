package com.newtouch.starter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.newtouch.lion.common.json.JSONParser;
import com.newtouch.lion.web.controller.AbstractController;
import com.newtouch.starter.policy.TreeDemo;

@Controller
@RequestMapping("/treetable/")
public class TreetableController extends AbstractController {
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public  String index(){
		return "treetable/index";
	}
	
	@RequestMapping(value = "list")
	@ResponseBody
	public String list(Long id) {
		TreeDemo tree = new TreeDemo();
		tree.setId("node ID");
		tree.setName("node name");
		tree.setType("node type");
		tree.setLevel("node level");
		return JSONParser.toJSONString(tree);
	}
}
