package com.newtouch.starter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.newtouch.lion.web.controller.AbstractController;
import com.newtouch.starter.service.TreeGridService;

@Controller
@RequestMapping("/treegrid/")
public class TreeGridController extends AbstractController {

//	private static final String INDEX_TREE_TB = "sys_treegrid_lists_tb";
	@Autowired
	private TreeGridService  treeGridServcie;
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public String index(){
		logger.info("-------------------------------------");
		return "/treegrid/index";
	}
	@RequestMapping(value = "list")
	@ResponseBody
	public ModelAndView lists(ModelAndView modelAndView) {		
		String str=treeGridServcie.doFindAllToTree("sys_treegrid_lists_tb");
		logger.info("-------------------------------------");
		str=str.replace("treeGrids","children");
		return this.getStrJsonView(str, modelAndView);
	}

}
