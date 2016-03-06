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
<script type="text/javascript" src="${base}/resources/global/plugins/select2/select2_locale_zh-CN.js"></script>
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
<script src="${base}/resources/admin/scripts/system/adminshowusersign.js" type="text/javascript"></script>
</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
<!-- BEGIN PAGE CONTENT INNER -->
<div class="portlet light">
	<div class="portlet-body">
		<div class="row">
			<div class="col-md-12 margin-bottom-10">
				<form id="queryform" class="form-horizontal">
					<label class="control-label col-md-2" >
					</label>

					<div class="col-md-2">
						<input class="form-control input-small" type="text" size="30" name="areaType" id="areaType"  placeholder="请输入所属教育署"  />					
					</div>

					<div class="col-md-2">
						<input class="form-control input-small" type="text" size="30" name="schoolName" id="schoolName"  placeholder="请输入学校名称"  />					
					</div>
					
					<div class="col-md-2">
						<input class="form-control input-small" type="text" size="30" name="categoryName" id="categoryName"  placeholder="请输入展演项目"  />					
					</div>
					<div class="col-md-2">
						<input class="form-control input-small" type="text" size="30" name="showName" id="showName"  placeholder="请输入节目名称"  />					
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
				<a id="btnPass" class="btn btn-sm yellow" data-toggle="modal" href="#basic">
					<i class="fa fa-gift"></i> 
					<@spring.message "sys.usersign.html.status.pass"/>  
				</a>&nbsp;&nbsp;&nbsp;
				<a id="btnDeny" class="btn btn-sm red">
					<i class="fa fa-warning"></i> 
					<@spring.message "sys.usersign.html.status.deny"/>
				</a>
				&nbsp;&nbsp;&nbsp;
				<a href="javascript:void(0)" id="btnExport"  class="btn btn-sm green">
					<i class="fa  fa-file-excel-o"></i>
					<@spring.message "common.toolbar.btn.export.text"/>
				</a>
			</div>
			<div class="col-md-12">
				  <table class="lion-datagrids table table-striped table-bordered table-hover" id="sys_adminshowuserSign_tb" data-singleselect="true",   data-loadUrl="${base}/adminshowuserSign/list.json" data-checkbox="true" data-pageSize="10">
					<thead>
						<tr>
							<th class="table-checkbox" data-field='id' data-checkbox="true">
						 		<input type="checkbox" class="group-checkable" data-set="#sys_adminshowuserSign_tb.checkboxes"  data-sortable="false" />
						 	</th>
							<th data-field="areaType" style="width:50px;">
							 	所属教育署
							</th>
							<th data-field="schoolName" style="width:50px;">
							 	学校名称
							</th>
							<th data-field="category.categoryName" style="width:50px;">
							 	展演项目
							</th>							
							<th data-field="showName" style="width:90px;">
							 	节目/作品名称
							</th>
							<th data-field="studentName" style="width:30px;">
							 	人数
							</th>
							<th data-field="gradeName" style="width:40px;">
							 	时长
							</th>
							<th data-field="tutor" style="width:45px;">
							 	指导老师1
							</th>							
							<th data-field="tutor2" style="width:45px;">
							 	指导老师2
							</th>
							<th data-field="className" style="width:45px;">
							 	指导老师3
							</th>
							<th data-field="mobile" style="width:60px;">
							 	节目联系人手机
							</th>
							<th data-field="status" style="width:50px;" data-formatter="formatterEidtable">
							 	审核状态
							</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
</div>

<!-- END PAGE CONTENT INNER -->

</body>
</html>