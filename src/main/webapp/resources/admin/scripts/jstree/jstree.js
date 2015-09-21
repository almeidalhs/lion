//jstree start
$(function(){
	$('#ajax').jstree({
		'core' : {
			'data' : {
				"url" : "list.json",
				"dataType" : "json" 
			},
			"types" : {
    		"#" : {
      			"max_children" : 1, 
      			"max_depth" : 4, 
      			"valid_children" : ["root"]
    },
   			 "root" : {
     	 "icon" : "/static/3.1.1/assets/images/tree_icon.png",
     	 "valid_children" : ["default"]
    },
   		 "default" : {
      "valid_children" : ["default","file"]
    },
    "file" : {
      "icon" : "glyphicon glyphicon-file",
      "valid_children" : []
    }
  }
		},
		"plugins" : ["themes","html_data","contextmenu" ],
		"contextmenu":{  
        "items":{  
            "create":null,  
            "rename":null,  
            "remove":null,  
            "ccp":null,  
            "新建菜单":{  
                "label":"新建菜单",  
                "action":function(data){  
                    var inst = jQuery.jstree.reference(data.reference),  
                    obj = inst.get_node(data.reference); 
                     console.dir(obj); 
                     alert("编辑尅是！");
                   // dialog.show({"title":"新建“"+obj.text+"”的子菜单",url:"/accountmanage/createMenu?id="+obj.id,height:280,width:400});  
                }  
            },  
            "删除菜单":{  
                "label":"删除菜单",  
                "action":function(data){  
                    var inst = jQuery.jstree.reference(data.reference),  
                    obj = inst.get_node(data.reference);  
                    console.dir(obj);
                    if(confirm("确定要删除此菜单？删除后不可恢复。")){  
                        jQuery.get("${base}/system/jstree/deleteMenu.json?id="+obj.id,function(dat){  
                            if(dat == 1){  
                                alert("删除菜单成功！");  
                                jQuery("#"+treeid).jstree("refresh");  
                            }else{  
                                alert("删除菜单失败！");  
                            }  
                        });  
                    }  
                }  
            },  
            "编辑菜单":{  
                "label":"编辑菜单",  
                "action":function(data){  
                    var inst = jQuery.jstree.reference(data.reference),  
                    obj = inst.get_node(data.reference);  
                   // dialog.show({"title":"编辑“"+obj.text+"”菜单",url:"/accountmanage/editMenu?id="+obj.id,height:280,width:400});  
                }  
            }  
        }  
      }  
    
	});
	
});