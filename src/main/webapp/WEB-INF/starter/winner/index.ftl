<#assign base = request.contextPath/>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<title>竞赛成绩管理</title>
<link href="${base}/resources/global/plugins/ztree/css/metro.css" rel="stylesheet" type="text/css"/>
<link href="${base}/resources/global/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" type="text/css" />
<link href="${base}/resources/global/plugins/bootstrap-toastr/toastr.css" rel="stylesheet" type="text/css">
<!--DataTable css Start-->
<link rel="stylesheet" type="text/css" href="${base}/resources/global/plugins/select2/select2.css"/>
<link rel="stylesheet" type="text/css" href="${base}/resources/global/plugins/datatables/extensions/Scroller/css/dataTables.scroller.min.css"/>
<link rel="stylesheet" type="text/css" href="${base}/resources/global/plugins/datatables/extensions/ColReorder/css/dataTables.colReorder.min.css"/>
<link rel="stylesheet" type="text/css" href="${base}/resources/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
<!--DataTable css End-->
<link href="${base}/resources/global/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" type="text/css" />
<link href="${base}/resources/global/css/lion.css" rel="stylesheet" type="text/css" />
<link href="${base}/resources/global/css/combotree/combotree.css" rel="stylesheet" type="text/css" />
<!-- DataTables js Start -->
<script type="text/javascript" src="${base}/resources/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="${base}/resources/global/plugins/datatables/media/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="${base}/resources/global/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.js"></script>
<script type="text/javascript" src="${base}/resources/global/plugins/datatables/extensions/ColReorder/js/dataTables.colReorder.js"></script>
<script type="text/javascript" src="${base}/resources/global/plugins/datatables/extensions/Scroller/js/dataTables.scroller.js"></script>
<script type="text/javascript" src="${base}/resources/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<!-- DataTables js End -->
<script src="${base}/resources/global/plugins/bootbox/bootbox.min.js" type="text/javascript"></script>
<script src="${base}/resources/global/plugins/bootstrap-toastr/toastr.min.js"></script>
<script src="${base}/resources/admin/pages/scripts/ui-toastr.js"></script>
<script src="${base}/resources/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<!--lion UI JS Start-->
<script src="${base}/resources/global/js/lion.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/combo/combonew.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/form/form.fill.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/local/lion-lang-zh_CN.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/combotree/combotree.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/datagrid/datagrids.js" type="text/javascript"></script>
<!--ztree js-->
<script src="${base}/resources/global/plugins/ztree/js/jquery.ztree.all-3.5.min.js" type="text/javascript"></script>
<!--lang-->
<script src="${base}/resources/admin/scripts/admin-common.js" type="text/javascript"></script>
<!-- tasks -->
<script src="${base}/resources/admin/scripts/system/winner.js" type="text/javascript"></script>
</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
<!-- BEGIN PAGE CONTENT INNER -->
<div class="portlet light">
	<div class="portlet-body">
		<div class="row">
			<div class="col-md-12 margin-bottom-10">
				<form id="queryform" class="form-horizontal">
					<label class="control-label col-md-2" for="nameZh" >
						<@spring.message "sys.usersign.html.category"/>
					</label>
					<div class="col-md-2">
						<input  id="category"  name="category"  
						 	placeholder="请选择比赛项目…"  type="text" 
						 	class="lion-combotree form-control"   data-loadURL="${base}/category/comboxtree.json" data-width="225px" data-height="300px"/>					
					</div>
					<label class="control-label col-md-2" for="nameZh" >
						<@spring.message "sys.usersign.html.studentname"/>
					</label>
					<div class="col-md-2">
						<input class="form-control input-small" type="text" size="30" name="studentName" id="studentName"  placeholder="<@spring.message "sys.usersign.html.tip.studentname"/>"  />					
					</div>
					
					<div class="col-md-2">
						<a href="javascript:void(0)" id="btnQuery" class="btn blue">
							<i class="fa fa-search"></i> 
							<@spring.message "common.query.btn.text"/> 
						</a>
					</div>
				</form>
			</div>
		
			<div class="col-md-12 margin-bottom-10" id="toolbar">
				<a id="btnAdd" class="btn btn-sm yellow" data-toggle="modal" href="#basic">
					<i class="fa fa-plus"></i> 
					<@spring.message "common.toolbar.btn.add.text"/>  
				</a>
				<a id="btnEdit" class="btn btn-sm red">
					<i class="fa fa-edit"></i> 
					<@spring.message "common.toolbar.btn.edit.text"/>
				</a>
				<a id="btnDelete" class="btn btn-sm purple">
					<i class="fa fa-times"></i> 
					<@spring.message "common.toolbar.btn.delete.text"/> 
				</a>
				<a id="btnRefresh" class="btn btn-sm blue">
					<i class="fa fa-refresh"></i> 
					<@spring.message "common.toolbar.btn.reload.text"/>   
				</a>
				<a href="javascript:void(0)" id="btnExport"  class="btn btn-sm green">
					<i class="fa  fa-file-excel-o"></i>
					<@spring.message "common.toolbar.btn.export.text"/>
				</a>
			</div>
			<div class="col-md-12">
				  <table class="lion-datagrids table table-striped table-bordered table-hover" id="sys_winner_tb" data-singleselect="true",   data-loadUrl="${base}/userSign/list.json" data-checkbox="true" data-pageSize="10">
					<thead>
						<tr>
							<th class="table-checkbox" data-field='id' data-checkbox="true">
						 		<input type="checkbox" class="group-checkable" data-set="#sys_winner_tb.checkboxes"  data-sortable="false" />
						 	</th>
							<th data-field='studentName' data-sortDir="asc" style="width:70px;">
								<@spring.message "sys.usersign.html.studentname"/>
							</th>
							<th data-field="showName" style="width:50px;">
							 	<@spring.message "sys.usersign.html.showname"/>
							</th>
							<th data-field="category.categoryName" style="width:50px;">
							 	<@spring.message "sys.usersign.html.category"/>
							</th>
							<th data-field="mobile" style="width:50px;">
							 	<@spring.message "sys.usersign.html.mobile"/>
							</th>
							<th data-field="groupType" style="width:50px;">
							 	<@spring.message "sys.usersign.html.group"/>
							</th>
							<th data-field="areaType" style="width:50px;">
							 	<@spring.message "sys.usersign.html.area"/>
							</th>
							<th data-field="status" style="width:50px;" data-formatter="formatterEidtable">
							 	<@spring.message "sys.usersign.html.status" />
							</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
</div>

<!-- END PAGE CONTENT INNER -->
<!--Edit Dialog Start -->
<div class="modal fade" id="basic" tabindex="-1" role="basic" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
				<h4 class="modal-title">
					<i class="fa fa-plus"></i> 
					<span>
						<@spring.message "sys.usersign.form.adddialog.text"/>
					</span>
				</h4>
			</div>
			<div class="modal-body">
				 	<div class="row">
				 	<div class="col-md-12 portlet-body form">
				 		<!-- BEGIN FORM-->
										<form action="#" class="form-horizontal" name="sysCodeTypeForm" id="sysCodeTypeForm" method="post">
											<input type="hidden" id='id' name='id' value="">
											<div class="form-body">
												
												<div class="form-group">
													<label class="col-md-3 control-label">
														<@spring.message "sys.usersign.html.mobile"/>
													</label>
													<div class="col-md-5">
														<div class="input-group">
															<input type="text"  id="mobile" name="mobile" maxlength="100" class="form-control" placeholder="<@spring.message "sys.usersign.html.tip.mobile"/>" size="30"/>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-3 control-label">
														<@spring.message "sys.usersign.html.email"/>
													</label>
													<div class="col-md-5">
														<div class="input-group">
															<input type="text"  id="email" name="email" maxlength="100" class="form-control" placeholder="<@spring.message "sys.usersign.html.tip.email"/>" size="30"/>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-3 control-label">
														<@spring.message "sys.usersign.html.category"/>
													</label>
													<div class="col-md-5">
															 <input  id="categoryId"  name="categoryId"  
						 	  	  								placeholder="请选择项目…"  type="text" 
						 		  								class="lion-combotree form-control"   data-loadURL="${base}/category/comboxtree.json" data-width="225px" data-height="300px"/>										 
													</div>
												</div>
												
												<div class="form-group">
													<label class="col-md-3 control-label">
														<@spring.message "sys.usersign.html.showname"/>
													</label>
													<div class="col-md-5">
														<div class="input-group">
															<input type="text"  id="showName" name="showName" maxlength="100" class="form-control" placeholder="<@spring.message "sys.usersign.html.tip.showname"/>" size="30"/>
														</div>
													</div>
												</div>
												
												<div class="form-group">
													<label class="col-md-3 control-label">
														<@spring.message "sys.usersign.html.studentname"/>
													</label>
													<div class="col-md-5">
														<div class="input-group">
															<input type="text"  id="studentName" name="studentName" maxlength="100" class="form-control" placeholder="<@spring.message "sys.usersign.html.tip.studentname"/>" size="30"/>
														</div>
													</div>
												</div>
												
												
												<div class="form-group">
													<label class="col-md-3 control-label">
														<@spring.message "sys.usersign.html.school"/>
													</label>
													<div class="col-md-5">
														<div class="input-group">
															<input type="text"  id="schUserName" name="schUserName" maxlength="100" class="form-control" placeholder="<@spring.message "sys.usersign.html.tip.school"/>" size="30"/>
														</div>
													</div>
												</div>
												
												<div class="form-group">
													<label class="col-md-3 control-label">
														<@spring.message "sys.usersign.html.grade"/>
													</label>
													<div class="col-md-5">
														 <select  id="gradeName" name="gradeName"  placeholder="请选择年级.."  
														 	class="lion-combo form-control select2" data-valueField='codeValue' 
														 	data-textField='nameZh' data-URL="${base}/system/code/combox.htm?nameEn=grade">
														 </select>
													</div>
												</div>
															
												
												
												<div class="form-group">
													<label class="col-md-3 control-label">
														<@spring.message "sys.usersign.html.tutor"/>
													</label>
													<div class="col-md-5">
														<div class="input-group">
															<input type="text"  id="tutor" name="tutor" maxlength="100" class="form-control" placeholder="<@spring.message "sys.usersign.html.tip.tutor"/>" size="30"/>
														</div>
													</div>
												</div>
												
												<div class="form-group">
													<label class="col-md-3 control-label">
														<@spring.message "sys.usersign.html.tutor2"/>
													</label>
													<div class="col-md-5">
														<div class="input-group">
															<input type="text"  id="tutor2" name="tutor2" maxlength="100" class="form-control" placeholder="<@spring.message "sys.usersign.html.tip.tutor2"/>" size="30"/>
														</div>
													</div>
												</div>
												
												
												<div class="form-group">
													<label class="col-md-3 control-label">
														<@spring.message "sys.usersign.html.group"/>
													</label>
													<div class="col-md-5">
														 <select  id="groupType" name="groupType"  placeholder="请选择组别.."  
														 	class="lion-combo form-control select2" data-valueField='codeValue' 
														 	data-textField='nameZh' data-URL="${base}/system/code/combox.htm?nameEn=group">
														 </select>
													</div>
													
												</div>
												
												<div class="form-group">
													<label class="col-md-3 control-label">
														<@spring.message "sys.usersign.html.area"/>
													</label>
													<div class="col-md-5">
														 <select  id="areaType" name="areaType"  placeholder="请选择所属教育署.."  
														 	class="lion-combo form-control select2" data-valueField='codeValue' 
														 	data-textField='nameZh' data-URL="${base}/system/code/combox.htm?nameEn=area">
														 </select>
													</div>
													
												</div>
												
												
														
													
											</div>
										</form>
								<!-- END FORM-->
							</div>
				 	</div>
			</div>
			<div class="modal-footer">
				<button type="button" id="btnCancel" class="btn default" data-dismiss="modal">
					<i class="fa  fa-arrow-left"></i> 
					<@spring.message "common.diaglog.btn.cancel"/> 
				</button>
				<button type="button" id="btnSave" class="btn blue">
					<i class="fa fa-save"></i> 
					<@spring.message "common.diaglog.btn.save"/>
				</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</body>
</html>