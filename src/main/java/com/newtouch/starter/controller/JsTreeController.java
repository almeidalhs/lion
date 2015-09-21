package com.newtouch.starter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.newtouch.lion.web.controller.AbstractController;
import com.newtouch.starter.service.TreeGridService;

@Controller
@RequestMapping("/jstree/")
public class JsTreeController extends AbstractController {
	@Autowired
	private TreeGridService treeGridServcie;
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index(){
		return "/jstree/index";
	}
	
	/**
	 * 列出jstree
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping(value = "list")
	@ResponseBody
	public ModelAndView lists(ModelAndView modelAndView) {		
		String str=treeGridServcie.doFindAllToTree("sys_treegrid_lists_tb");
		str=str.replace("treeGrids","children").replace("nameZh", "text");
		return this.getStrJsonView(str, modelAndView);
	}
	
	@RequestMapping(value="deleteMenu",method=RequestMethod.GET)
	@ResponseBody
	public String deleteMenu(@RequestParam("id")Long id){
		return "";
	}
//	@RequestMapping(value="editMenu",method=RequestMethod.GET)
//	public String editMenu(@RequestParam("")){
//		return "";
//	}
}
