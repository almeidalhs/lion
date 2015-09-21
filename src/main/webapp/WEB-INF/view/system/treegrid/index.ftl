<#assign base = request.contextPath/>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<title>TreeGrid</title>
<!--zTree css Start-->
<link href="${base}/resources/global/plugins/ztree/css/metro.css" rel="stylesheet" type="text/css"/>
<!--EasyUI css Start-->
<link href="${base}/resources/global/plugins/easyui/themes/metro/easyui.css" rel="stylesheet" type="text/css"/>
<link href="${base}/resources/global/plugins/easyui/themes/icon.css" rel="stylesheet" type="text/css"/>
<!--EasyUI css End-->
<link href="${base}/resources/global/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" type="text/css" />
<link href="${base}/resources/global/plugins/bootstrap-toastr/toastr.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${base}/resources/global/plugins/select2/select2.css"/>
<!--lion UI css Start-->
<link href="${base}/resources/global/css/lion.css" rel="stylesheet" type="text/css">
<link href="${base}/resources/global/css/dialog/lion.dialog.css" rel="stylesheet" type="text/css">
<link href="${base}/resources/global/css/combo/lion.combo.css" rel="stylesheet" type="text/css">
<link href="${base}/resources/global/css/combotree/combotree.css" rel="stylesheet" type="text/css" />
<!--lion UI css End-->
<script src="${base}/resources/global/plugins/bootstrap-select/bootstrap-select.min.js" type="text/javascript" ></script>
<script type="text/javascript" src="${base}/resources/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="${base}/resources/global/plugins/select2/select2_locale_zh-CN.js"></script>
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
<script src="${base}/resources/global/js/combo/combonew.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/combotree/combotree.js" type="text/javascript"></script>
<!--lion UI JS End-->
<script src="${base}/resources/admin/scripts/admin-common.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/local/lion-lang-zh_CN.js" type="text/javascript"></script>
<script src="${base}/resources/admin/scripts/system/treegrid.js" type="text/javascript"></script>
</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
<!-- BEGIN PAGE CONTENT INNER -->
<div class="portlet light">
	<div class="portlet-body">
		<div class="row">
			<div class="col-md-12">
				<table  id="sys_treegrid_lists_tb" class="easyui-treegrid" fit="false" fitColumns="true"    style="height:400px;width:auto"
				data-options="
				url: '${base}/system/treegrid/list.json',               
                rownumbers: true,
                pagination: false,
                pageSize: 15,
                pageList: [5,10,15,30],
                idField: 'id',
                treeField: 'nameZh'
            ">
				<thead>
					<tr>
						<th field="id"  width="10" align="center" halign="center"checkbox="true"sortable="true"order="asc">id</th>
				 		<th field="nameZh" width="80" align="left" halign="left"sortable="true"order="asc">名称(中文)</th>
				 		<th field="path"   width="200" align=""left"" halign="left"sortable="true"order="asc">路径</th>
				 		<th field="permission"  width="80" align="left" halign="center"sortable="true"order="asc" >权限</th>
				 		<th field="seqNum"  width="20" align="left" halign="center"sortable="true"order="asc">排序</th>
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
