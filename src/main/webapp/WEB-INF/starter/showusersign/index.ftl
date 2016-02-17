<#assign base = request.contextPath/>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<title> <@spring.message "sys.usersign.html.title"/></title>
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
<script src="${base}/resources/admin/scripts/system/showusersign.js" type="text/javascript"></script>
</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
<!-- BEGIN PAGE CONTENT INNER -->
<div class="portlet light">
	<div class="portlet-body">
		<div class="row">
			<div class="col-md-12 margin-bottom-10">
				<form id="queryform" class="form-horizontal">
					
					<label class="control-label col-md-2" for="nameZh" >
						艺术节展演活动节目名称
					</label>
					<div class="col-md-2">
						<input class="form-control input-small" type="text" size="50" name="showName" id="studentName"  placeholder="请输入艺术节展演活动节目名称"  />					
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
				  <table class="lion-datagrids table table-striped table-bordered table-hover" id="sys_showusersign_tb" data-singleselect="true",   data-loadUrl="${base}/showUserSign/list.json" data-checkbox="true" data-pageSize="10">
					<thead>
						<tr>
							<th class="table-checkbox" data-field='id' data-checkbox="true">
						 		<input type="checkbox" class="group-checkable" data-set="#sys_showusersign_tb.checkboxes"  data-sortable="false" />
						 	</th>	
						 	<th data-field="category.categoryName" style="width:50px;">
							 	艺术节展演活动项目
							</th>			
							<th data-field="showName" style="width:50px;">
							 	<@spring.message "sys.usersign.html.showname"/>
							</th>							
							<th data-field="studentName" style="width:50px;">
							 	节目人数
							</th>
							<th data-field="gradeName" style="width:50px;">
							 	节目时长
							</th>
							<th data-field="tutor" style="width:50px;">
							 	指导老师1
							</th>
							<th data-field="mobile" style="width:50px;">
							 	指导老师1手机号
							</th>
							<th data-field="tutor2" style="width:50px;">
							 	指导老师2
							</th>
							<th data-field="className" style="width:50px;">
							 	指导老师3
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
						艺术节展演活动报名
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
														艺术节展演项目
													</label>
													<div class="col-md-5">
														<div class="input-group">
															<input  id="categoryId"  name="categoryId"  
								 	placeholder="请选择艺术节展演项目…"  type="text" 
								 	class="lion-combotree form-control"   data-loadURL="${base}/showcategory/comboxtree.json" data-width="225px" data-height="300px"/>					
														</div>
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
													 组别
													</label>
													<div class="col-md-5">
														<div class="input-group">
															 <select  id="groupType" name="groupType"  placeholder="请选择展演组别.."  
														 	class="lion-combo form-control select2" data-valueField='codeValue' 
														 	data-textField='nameZh' data-URL="${base}/system/code/combox.htm?nameEn=zygroup">
														 </select>
														</div>
													</div>
												</div>
												
												<div class="form-group">
													<label class="col-md-3 control-label">
													 节目人数
													</label>
													<div class="col-md-5">
														<div class="input-group">
															<input type="text"  id="studentName" name="studentName" maxlength="100" class="form-control" placeholder="请输入表演节目人数" size="30"/>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-3 control-label">
														节目时长
													</label>
													<div class="col-md-5">
														<div nowrap><p>
																
															<input type="text"  id="minute" name="minute" size="5"/>&nbsp;分
															<input type="text"  id="second" name="second" size="5"/>&nbsp;秒
															    
															</p>
														</div>
													</div>
												</div>
												
												<div class="form-group">
													<label class="col-md-3 control-label">
														指导老师1
													</label>
													<div class="col-md-5">
														<div class="input-group">
															<input type="text"  id="tutor" name="tutor" maxlength="100" class="form-control" placeholder="指导老师1姓名" size="30"/>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-3 control-label">
														指导老师1手机号
													</label>
													<div class="col-md-5">
														<div class="input-group">
															<input type="text"  id="mobile" name="mobile" maxlength="100" class="form-control" placeholder="<@spring.message "sys.usersign.html.tip.mobile"/>" size="30"/>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-3 control-label">
														指导老师2
													</label>
													<div class="col-md-5">
														<div class="input-group">
															<input type="text"  id="tutor2" name="tutor2" maxlength="100" class="form-control" placeholder="指导老师2姓名" size="30"/>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-3 control-label">
														指导老师3
													</label>
													<div class="col-md-5">
														<div class="input-group">
															<input type="text"  id="className" name="className" maxlength="100" class="form-control" placeholder="指导老师3姓名" size="30"/>
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