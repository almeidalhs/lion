<#assign base = request.contextPath/>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head> 
<title>展演项目类型</title>
<!--EasyUI css Start-->
<link href="${base}/resources/global/plugins/easyui/themes/metro/easyui.css" rel="stylesheet" type="text/css"/>
<link href="${base}/resources/global/plugins/easyui/themes/icon.css" rel="stylesheet" type="text/css"/>
<!--EasyUI css End-->
<link href="${base}/resources/global/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" type="text/css" />
<link href="${base}/resources/global/plugins/bootstrap-toastr/toastr.css" rel="stylesheet" type="text/css">
<!--lion UI css Start-->
<link href="${base}/resources/global/css/lion.css" rel="stylesheet" type="text/css">
<link href="${base}/resources/global/css/dialog/lion.dialog.css" rel="stylesheet" type="text/css">
<link href="${base}/resources/global/css/combo/lion.combo.css" rel="stylesheet" type="text/css">
<link href="${base}/resources/global/css/combotree/combotree.css" rel="stylesheet" type="text/css" />
<!--l
<!--zTree css Start-->
<link href="${base}/resources/global/plugins/ztree/css/metro.css" rel="stylesheet" type="text/css"/>
<script src="${base}/resources/global/plugins/bootstrap-select/bootstrap-select.min.js" type="text/javascript" ></script>
<script src="${base}/resources/global/plugins/bootbox/bootbox.min.js" type="text/javascript"></script>
<script src="${base}/resources/global/plugins/bootstrap-toastr/toastr.min.js"></script>
<script src="${base}/resources/admin/pages/scripts/ui-toastr.js"></script>
<script src="${base}/resources/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<!--EasyUI JavaScript Start-->
<script src="${base}/resources/global/plugins/easyui/jquery.easyui.min.js" type="text/javascript"></script>
<script src="${base}/resources/global/plugins/easyui/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
<!--EasyUI JavaScript End-->
<script src="${base}/resources/global/plugins/ztree/js/jquery.ztree.all-3.5.min.js" type="text/javascript"></script>
<!--lion UI JS Start-->
<script src="${base}/resources/global/js/lion.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/form/form.fill.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/dialog/dialog.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/combo/combo.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/combotree/combotree.js" type="text/javascript"></script>>
<!--lion UI JS End-->
<script src="${base}/resources/admin/scripts/admin-common.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/local/lion-lang-zh_CN.js" type="text/javascript"></script>script>
<script src="${base}/resources/admin/scripts/system/showcategory.js" type="text/javascript"></script>
</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
<!-- BEGIN PAGE CONTENT INNER -->
<div class="portlet light">
	<div class="portlet-body">
		<div class="row">
			<!--<div class="col-md-12 margin-bottom-10">
				<form id="queryParameterform" class="form-horizontal">
					<label class="control-label col-md-2" for="nameZh" >部门名称</label>
					<div class="col-md-5">
						<input class="form-control input-small" type="text" size="30" name="nameZh" id="nameZh"  placeholder="请输入部门名称"/>					
					</div>
					<div class="col-md-3">
					</div>
					<div class="col-md-2">
						<a href="javascript:void(0)" class="btn blue"><i class="fa fa-search"></i>查 询 </a>
					</div>
				</form>
			</div>-->
		
			<div class="col-md-12 margin-bottom-10" id="toolbar">
				<a id="btnAdd" class="btn btn-sm yellow" data-toggle="modal" href="#basic">
					<i class="fa fa-plus"></i>  <@spring.message "common.toolbar.btn.add.text"/> </a>
				<a id="btnEdit" class="btn btn-sm red" role="button">
					<i class="fa fa-edit"></i>
					 <@spring.message "common.toolbar.btn.edit.text"/> 				 
				</a>
				<a href="javascript:void(0)" id="btnDelete" class="btn btn-sm purple"><i class="fa fa-times"></i> <@spring.message "common.toolbar.btn.delete.text"/> </a>
				<a href="javascript:void(0)" id="btnRefresh" class="btn btn-sm blue">
					<i class="fa fa-refresh"></i> <@spring.message "common.toolbar.btn.reload.text"/> 
				</a>
				<a href="javascript:void(0)" id="btnExport"  class="btn btn-sm green">
					<i class="fa  fa-file-excel-o"></i> <@spring.message "common.toolbar.btn.export.text"/> 
				</a>
			</div>
			<div class="col-md-12">
				 <table  id="sys_showcategory_lists" class="easyui-treegrid" fit="false" style="height:400px;width:auto" fitColumns="true"
				data-options="
                url: '${base}/showcategory/list.json',
                rownumbers: true,
                pagination: false,
                pageSize: 15,
                pageList: [5,10,15,30],
                idField: 'id',
                treeField: 'categoryName'
            ">
				<thead>
					<tr>
						<th field="id"  width="10" align="center" halign="center"checkbox="true"sortable="true"order="asc">id</th>
				 		<th field="pid"  width="10" align="center" halign="center"sortable="true"order="asc"hidden="true">pCategoryId</th>
				 		<th field="categoryName"  width="80" align="left" halign="left"sortable="true"order="asc">部门名称(英文)</th>
				 		<th field="year"  width="80" align="left" halign="left"sortable="true"order="asc">年</th>
				 							</tr>
				</thead>
			</table>
			</div>
		</div>
	</div>
</div>
<!-- END PAGE CONTENT INNER -->

<!--Dialog Start -->
<div class="modal fade" id="basic" tabindex="-1" role="basic" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
				<h4 class="modal-title"><i class="fa fa-plus"></i><span>添加艺术节展演活动项目</span></h4>
			</div>
			<div class="modal-body">
				 	<div class="row">
				 	<div class="col-md-12 portlet-body form">
				 		<!-- BEGIN FORM-->
										<form action="#" class="form-horizontal" name="addform" id="addform" method="post">
											<input type="hidden" id="id" name="id" value="">
											<div class="form-body">
												<div class="form-group">
													<div class="form-filed">
														<label class="col-md-3 control-label">上级项目</label>
														<div class="col-md-5">
															 <input  id="pCategoryId"  name="pCategoryId"  
						 	  	  placeholder="请选择项目…"  type="text" 
						 		  class="lion-combotree form-control"   data-loadURL="${base}/showcategory/comboxtree.json" data-width="225px" data-height="300px"/>										 
														</div>
													</div>
												</div>
												<div class="form-group">
													<div class="form-filed">
														<label class="col-md-3 control-label">项目名称</label>
														<div class="col-md-5">
															<div class="input-group">
																<input type="text"  name="categoryName"  maxlength="100" class="form-control" placeholder="请输入项目名称" size="30" maxlength="128" />
															</div>
														</div>
													</div>
												</div>
												<div class="form-group">
													<div class="form-filed">
														<label class="col-md-3 control-label">年</label>
														<div class="col-md-5">
															<div class="input-group">
																<input type="text"  id="year" name="year" maxlength="100" class="form-control" placeholder="请输入举办的年份" size="30" maxlength="128"/>
															</div>
														</div>
													</div>
												</div>
												<div class="form-group">
													<div class="form-filed">
														<label class="col-md-3 control-label">顺序</label>
														<div class="col-md-5">
															<div class="input-group">
																<input type="text" name="orderNum" class="form-control" placeholder="请输入顺序编号" maxlength="30" size="30"/>
															</div>
														</div>
													</div>
												</div>
												
												
											</div>
										</form>
								<!-- END FORM-->
							</div>
				 	</div>
			</div>
			<div class="modal-footer">
				<button type="button" id="btnCancel" class="btn default" data-dismiss="modal"><i class="fa  fa-arrow-left"></i> 取 消 </button>
				<button type="submit" id="btnSave" class="btn blue"><i class="fa fa-save"></i> 保 存</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
<!--Dialog End -->
</body>
</html>