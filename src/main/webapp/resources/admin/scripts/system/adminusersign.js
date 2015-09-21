var icondg = $('#sys_adminusersign_tb'); //datagrids
var addForm = $('#sysCodeTypeForm');  //编辑或添加表单
var addDialog = $('#basic'); //编辑或添加对话框
$(function(){
	//默认加载函数
	lion.web.AppInit();
	icondg=$("#sys_adminusersign_tb");
	addForm=$('#sysCodeTypeForm');
	addDialog=$('#basic');
	var queryForm=$('#queryform');
	//查询
	$('#btnQuery').click(function(){
	console.dir("开始了！");
	icondg.datagrids({querydata:queryForm.serializeObject()});
	var queryparam=icondg.datagrids('queryparams'); 
	//console.dir("queryparams"+queryparam);
	icondg.datagrids('reload');
	});
	//验证表单
	  handleVForm(addForm,submitForm);
	//刷新
	$('#btnRefresh').click(function(){  
		console.dir("fdasd");
	    icondg.datagrids('reload');
	});
	//通过审核
	$('#btnPass').click(function(){
		 var row=icondg.datagrids('getSelected');
		 console.dir(row);
		 lion.web.post({
		   url:'pass.json',
		   data:row,
		   unselectedmsg:'请选择要审核记录',
		   confirmmsg:'确认要审核此记录？',
		   success:successEditFrm,
		 });
		 
	});
	 //审核失败
    $('#btnDeny').click(function(){
    	 var row=icondg.datagrids('getSelected');
		 lion.web.post({
		   url:'deny.json',
		   data:row,
		   unselectedmsg:'请选择要审核记录',
		   confirmmsg:'确认要审核此记录？',
		   success:successEditFrm,
		 });
    });
    
	//保存
	$('#btnSave').click(function(){
	 addForm.submit();
	});
	/**新增或编辑的提交代码*/
	function submitForm(frm){
	  var param=frm.serialize(),id=($('#id').val());
	  //ID为空时，为添加动作
	  if(lion.util.isEmpty(id)){
	      lion.web.post({url:'add.json',data:param,success:successAddFrm});
	  }else{
	      lion.web.post({url:'edit.json',data:param,success:successEditFrm});
	  }
	}
	//删除
	$('#btnDelete').on('click',function(){
	 var row=icondg.datagrids('getSelected');
	 lion.web.deletefn({
	   url:'delete.json',
	   data:row,
	   unselectedmsg:'请选择要删除记录',
	   confirmmsg:'确认要删除此记录？',
	   success:successForDelete,
	 });
	});
	//添加成功的函数
	 function successAddFrm(result,args){
	   lion.web.parsedata({
	     data:result,
	     success:function(){
	       addDialog.modal('toggle');
	       icondg.datagrids('reload');
	     },
	     msg:'添加学生报名未成功'
	   });
	 }
	//编辑成功的函数
	 function successEditFrm(result,args){
	   lion.web.parsedata({
	     data:result,
	     success:function(){
	         addDialog.modal('toggle');
	         icondg.datagrids('reload');
	     },
	     msg:'编辑学生报名未成功'
	   });
	}
	//导出Excel
	$('#btnExport').on('click',function(){
		var params=queryForm.serialize(),
	    dgtableId=icondg.attr('id');
	    lion.web.exportfn({url:'export.json',data:params,tableId:dgtableId});
	    return;
	});
	//删除成功
	function successForDelete(data,arg){
	   if(data!==null&&!(data.hasError)){
	      lion.util.success('提示',data.message);
	      icondg.datagrids('reload');
	   }else if(data!==null&&data.hasError){
	      var gmsg='';
	      for(var msg in data.errorMessage){
	        gmsg+=data.errorMessage[msg];
	      }
	      if(lion.util.isEmpty(gmsg)){
	        gmsg='未删除成功';
	      }
	      lion.util.error('提示',gmsg);
	  }
	}
	
});
//测试选择中checkbox
function formatterCheckBox(data,type,full){

	return data;
}


//验证表单
handleVForm=function(vForm,submitCallBackfn){
  var addError = $('.alert-danger', vForm);
    var addSuccess = $('.alert-success',vForm);
  vForm.validate({
        errorElement: 'span',
        errorClass: 'help-block help-block-error', 
        focusInvalid: false, 
        onkeyup:false,
        ignore: '', 
        messages: {
        	policyType:{
        		required:'请输入学生报名类型',
        		rangelength:jQuery.validator.format('保单类型长度为{0}和{1}字符之间')
        	},
        	insuredName:{
	            required:'请输入学生姓名',
	            rangelength:jQuery.validator.format('被保人姓名长度为{0}和{1}字符之间'),
	            remote:'该学生已存在，请输入其它姓名'
        	}
        },
        rules: {
        	policyType: {
                required:true,
                rangelength:[1,128]
            },
            insuredName:{
              required: true,
                rangelength:[1,128],
                remote:{
                    url:'checkisexitnameen.htm', //后台处理程序
                    type: 'post',               //数据发送方式
                    dataType: 'json',           //接受数据格式   
                    data: {                     //要传递的数据
                       nameEn: function() {
                        return $('#insuredName').val();
                       },
                       id:function(){
                         var id=($('#id').val());
                         if(lion.util.isNotEmpty(id)){
                           return id;
                         }
                         return '';
                       }
                    }
             }
            }
        },
        invalidHandler: function (event, validator) {             
            addSuccess.hide();
            addError.show();
            Metronic.scrollTo(addError, -200);
        },

        highlight: function (element) {
            $(element).closest('.form-group').addClass('has-error'); 
        },

        unhighlight: function (element) {
            $(element).closest('.form-group').removeClass('has-error'); 
        },
        success: function (label) {
            label.closest('.form-group').removeClass('has-error'); 
        },
        errorPlacement:function(error,element){
          //当遇到combo的对话框架的时，修改它的显示位置
          if (element.hasClass('lion-combo')){           
            error.insertAfter(element.parent().find('div.btn-group'));
          }else{
            error.insertAfter(element);
          }
        },
        submitHandler: function (form) {
            addSuccess.show();
            addError.hide();
            submitCallBackfn(vForm);
        }
    });
};
//判断是否编辑
function formatterEidtable(data,type,full) {
  var name = '';
  if (data == 0) {
    name = "未审核";
  } else if(data ==1) {
	  name = "审核通过";
  } else if(data ==2) {
	  name = "申请被拒绝";
  }
  return name;
}
