var icondg = $('#sys_theatreusersign_tb'); //datagrids
var addForm = $('#sysCodeTypeForm');  //编辑或添加表单
var addDialog = $('#basic'); //编辑或添加对话框
$(function(){
	//默认加载函数
	lion.web.AppInit();
	icondg=$("#sys_theatreusersign_tb");
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
	//添加
	$('#btnAdd').click(function(){
		//如果超过两个就能再添加了
		 var row=icondg.datagrids('getdata');
		if(row.length >= 4){
			lion.util.error('提示','您学校名额已满');
	    	return;
		}else{
			addForm.reset();
		    addDialog.find('.modal-header h4 span').text('添加戏剧专场展演活动报名');
		    addDialog.modal('toggle');
		}			
	});
	 //编辑
    $('#btnEdit').click(function(){
        var row=icondg.datagrids('getSelected');
	    if(!row){
	       lion.util.info('提示','请选择要编辑记录');
	       return;
	    }
	    //alert(row.status);
	    if(row.status == 1) {
	    	lion.util.error('提示','该学生已经通过审核,请不要修改已通过审核的学生信息');
	    	return;
	    }
	    addForm.reset();
	    addDialog.find('.modal-header h4 span').text('编辑戏剧专场展演活动学生报名');
	    addDialog.modal('toggle');
	    addForm.fill(row);
	    $("#categoryId").combotree('val',row.categoryId);
	    $('#groupTypeSel').combo('val',row.groupType);
	    $('#examUserNameSel').combo('val',row.examUserName);
	    var time = row.gradeName.replace('分', '-');
	    var timeCode = time.replace('秒', '');
	    var tc = timeCode.split('-');
	    $('#minuteid').val(tc[0]);
	    $('#secondid').val(tc[1]);
	    
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
//判断是否编辑
function formatterEidtable(data,type,full) {
  var name =$.lion.lang.editable.n;
  if (data) {
    name = $.lion.lang.editable.y;
  }
  return name;
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
        	categoryId:{
        		required:'请选择报名项目',
        		rangelength:jQuery.validator.format('节目长度为{0}和{1}字符之间')
        	},
        	examUserName:{
        		required:'请选择节目/作品类型',
        		rangelength:jQuery.validator.format('节目长度为{0}和{1}字符之间')
        	},
        	groupType:{
        		required:'请选择组别',
        		rangelength:jQuery.validator.format('节目长度为{0}和{1}字符之间')
        	},
        	showName:{
        		required:'请输入节目名称',
        		rangelength:jQuery.validator.format('节目长度为{0}和{1}字符之间')
        	},
        	studentName:{
	            required:'请输入节目人数',
	            rangelength:jQuery.validator.format('节目人数长度为{0}和{1}字符之间'),
	            remote:"人数不能少于",
        	},
        	minute:{
	            required:'请输入节目时长',
	            rangelength:jQuery.validator.format('节目人数长度为{0}和{1}字符之间'),
        	},
        	second:{
	            required:'请输入节目时长',
	            rangelength:jQuery.validator.format('节目人数长度为{0}和{1}字符之间'),
        	},
        	tutor:{
	            required:'请输入指导老师姓名',
	            rangelength:jQuery.validator.format('指导老师姓名为{0}和{1}字符之间'),
        	},
        	mobile:{
	            required:'请输入手机号',
	            maxlength:jQuery.validator.format('手机号码只能是11个数字'),
	            minlength:jQuery.validator.format('手机号码只能是11个数字'),
        	}
        },
        rules: {
        	categoryId:{            	
           	 required:true
//                remote:{
//                     url:'checkisexitcategory.htm', //后台处理程序
//                     type: 'post',               //数据发送方式
//                     dataType: 'json',           //接受数据格式   
//                     data: {                     //要传递的数据
//                   	  categoryId:function(){
//                          var id=($('#categoryId').val());
//                          alert(id);
//                          if(lion.util.isNotEmpty(id)){
//                            return id;
//                          }
//                          return '';
//                        }
//                     }
//              }
             },
             
             examUserName: {
                 required:true,
             },
             
             groupType: {
                 required:true,
             },
             
         	showName: {
                 required:true,
                 rangelength:[1,128]
             },
            studentName:{
            	required: true,
            	digits:true,
                
                
            },
            minute:{
                required: true,
                digits:true,
                rangelength:[1,2],
            },
            second:{
                required: true,
                digits:true,
                rangelength:[1,2],
            },
            tutor:{
                 required: true,
                 rangelength:[1,20],
            },
            mobile:{
                required: true,
                maxlength:[11],
                minlength:[11],
                /*remote:{
                    url:'checkstudentnum.htm', //后台处理程序
                    type: 'post',               //数据发送方式
                    dataType: 'json',           //接受数据格式   
                    data: {                     //要传递的数据
                  	  categoryId:function(){
                         var id=($('#categoryId').val());
                         return id;
                       },
                       studentName:function(){
                           var studentName=($('#studentName').val());
                           alert(studentName);
                           if(lion.util.isNotEmpty(studentName)){
                             return studentName;
                           }
                           return studentName;
                         }
                    },
                    dataFilter: function (data, type) {//判断控制器返回的内容
                        if (data.result == "1") {
                            console.log(data.result);//<span style="color: #FF0000;">没在控制台上显示</span>
                            return true;   
                        }
                        else if(data.result == "0"){
                            alert(data.result);//没有弹出对话框
                            return false;
                        }
                    }
               
                  }*/
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
	    name = "<font color=\"blue\"><b>待审核</b></font>";
	  } else if(data ==1) {
		  name = "<font color=\"green\"><b>通过</b></font>";
	  } else if(data ==2) {
		  name = "<font color=\"red\"><b>未通过</b></font>";
	  }
  return name;
}