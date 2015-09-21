<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<title>gtreetable</title>

	<script src="${base}/starter/resources/global/plugins/treetable/js/jquery.treetable-3.0.0.js" type="text/javascript"></script>
	<script src="${base}/starter/resources/global/plugins/treetable/js/persist-min.js" type="text/javascript"></script>
	<script src="${base}/starter/resources/global/plugins/treetable/js/jquery.treetable-ajax-persist.js" type="text/javascript"></script>
	
	<link rel="stylesheet" type="text/css" href="${base}/starter/resources/global/plugins/treetable/css/jquery.treetable.css" />
	<script>
		$("table").agikiTreeTable({persist: true, persistStoreName: "files"});
	</script>
</head>

<body>
	<table id="example-basic-expandable">
		<thead>
	  	<tr data-tt-id="1">
	    	<th>字1</th>
	    	<th>字2</th>
	    	<th>字3</th>
		</tr>
		</thead>
		<tbody>
		<tr data-tt-id="1">
	    	<td>Parent1</td>
	    	<td>Parent1</td>
	    	<td>Parent1</td>
		</tr>
		<tr data-tt-id="2" data-tt-parent-id="1">
	    	<td>Child</td>
	    	<td>Child</td>
	    	<td>Child</td>
	    </tr>
		<tr data-tt-id="3">
	    	<td>Parent2</td>
	    	<td>Parent2</td>
	    	<td>Parent2</td>
	    </tr>
	    </tbody>
	</table>
</body>
</html>