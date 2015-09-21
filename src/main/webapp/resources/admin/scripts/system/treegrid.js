$(function() {
	//默认加载函数
	lion.web.AppInit();
	
	var datagridId='#sys_treegrid_lists_tb';
	var addForm=$('#addform');
	var addDialog=$('#basic');
	var queryForm=$('#queryform');
	
	//选择DataGrid单行
	function getSelectedRow(){return $(datagridId).treegrid('getSelected');}
	 
	$(datagridId).treegrid({onLoadSuccess : function(data) {}	});		 
	 //重新加载DataGrid
	 function dataGridReload(dataGridId){$(datagridId).treegrid('reload');}
	 //刷新
	 $('#btnRefresh').on('click',function(){
		   dataGridReload(datagridId);
	 });
});	

/**sys_code_type 加载列表*/
function formatterCodeResource(val, row) {
  var data =$("#sysresourcetype").combo('getData');
  var nameZh = "";
  for ( var obj in data) {
    if (data[obj].codeValue == val) {
      nameZh = data[obj].nameZh;
      break;
    }
  }
  return nameZh;
}

