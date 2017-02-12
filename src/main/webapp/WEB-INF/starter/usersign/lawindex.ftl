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
<script src="${base}/resources/admin/scripts/system/usersign.js" type="text/javascript"></script>
</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
<!-- BEGIN PAGE CONTENT INNER -->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:宋体;
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-alt:SimSun;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 680460288 22 0 262145 0;}
@font-face
	{font-family:黑体;
	panose-1:2 1 6 9 6 1 1 1 1 1;
	mso-font-alt:SimHei;
	mso-font-charset:134;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:-2147482945 953122042 22 0 262145 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:-536870145 1107305727 0 0 415 0;}
@font-face
	{font-family:华文中宋;
	panose-1:2 1 6 0 4 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:647 135200768 16 0 262303 0;}
@font-face
	{font-family:仿宋_GB2312;
	mso-font-alt:"Arial Unicode MS";
	mso-font-charset:134;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:0 135135232 16 0 262144 0;}
@font-face
	{font-family:仿宋;
	panose-1:2 1 6 9 6 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:-2147482945 953122042 22 0 262145 0;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-1593833729 1073750107 16 0 415 0;}
@font-face
	{font-family:"\@宋体";
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 680460288 22 0 262145 0;}
@font-face
	{font-family:"\@仿宋";
	panose-1:2 1 6 9 6 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:-2147482945 953122042 22 0 262145 0;}
@font-face
	{font-family:"\@黑体";
	panose-1:2 1 6 9 6 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:-2147482945 953122042 22 0 262145 0;}
@font-face
	{font-family:"\@华文中宋";
	panose-1:2 1 6 0 4 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:647 135200768 16 0 262303 0;}
@font-face
	{font-family:"\@仿宋_GB2312";
	mso-font-charset:134;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:0 135135232 16 0 262144 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:12.0pt;
	font-family:"Times New Roman","serif";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoHeader, li.MsoHeader, div.MsoHeader
	{mso-style-unhide:no;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:center;
	mso-pagination:none;
	tab-stops:center 207.65pt right 415.3pt;
	layout-grid-mode:char;
	border:none;
	mso-border-bottom-alt:solid windowtext .75pt;
	padding:0cm;
	mso-padding-alt:0cm 0cm 1.0pt 0cm;
	font-size:9.0pt;
	font-family:"Times New Roman","serif";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoFooter, li.MsoFooter, div.MsoFooter
	{mso-style-unhide:no;
	margin:0cm;
	margin-bottom:.0001pt;
	mso-pagination:none;
	tab-stops:center 207.65pt right 415.3pt;
	layout-grid-mode:char;
	font-size:9.0pt;
	font-family:"Times New Roman","serif";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
a:link, span.MsoHyperlink
	{mso-style-unhide:no;
	mso-style-parent:"";
	color:blue;
	text-decoration:underline;
	text-underline:single;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-unhide:no;
	color:purple;
	mso-themecolor:followedhyperlink;
	text-decoration:underline;
	text-underline:single;}
p.CharChar2Char, li.CharChar2Char, div.CharChar2Char
	{mso-style-name:" Char Char2 Char";
	mso-style-unhide:no;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:12.0pt;
	mso-line-height-rule:exactly;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Arial","sans-serif";
	mso-fareast-font-family:"Times New Roman";
	mso-bidi-font-family:Verdana;
	mso-fareast-language:EN-US;
	font-weight:bold;
	mso-bidi-font-weight:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	mso-fareast-font-family:宋体;}
 /* Page Definitions */
 @page
	{mso-page-border-surround-header:no;
	mso-page-border-surround-footer:no;
	mso-footnote-separator:url("2016年浦东新区学生艺术单项比赛活动的通知.files/header.htm") fs;
	mso-footnote-continuation-separator:url("2016年浦东新区学生艺术单项比赛活动的通知.files/header.htm") fcs;
	mso-endnote-separator:url("2016年浦东新区学生艺术单项比赛活动的通知.files/header.htm") es;
	mso-endnote-continuation-separator:url("2016年浦东新区学生艺术单项比赛活动的通知.files/header.htm") ecs;}
@page Section1
	{size:595.3pt 841.9pt;
	margin:72.0pt 61.5pt 72.0pt 61.5pt;
	mso-header-margin:42.55pt;
	mso-footer-margin:49.6pt;
	mso-header:url("2016年浦东新区学生艺术单项比赛活动的通知.files/header.htm") h1;
	mso-even-footer:url("2016年浦东新区学生艺术单项比赛活动的通知.files/header.htm") ef1;
	mso-footer:url("2016年浦东新区学生艺术单项比赛活动的通知.files/header.htm") f1;
	mso-paper-source:0;
	layout-grid:15.6pt 0pt;
	mso-layout-grid-char-alt:0;}
div.Section1
	{page:Section1;}
-->
</style>


	<div style="clear:both;padding:20px 0 10px 5px;border-bottom:#C8C8C8 dashed 1px;">
		<div class=Section1 style="layout-grid:15.6pt">
			<div style="width:1000px;height:620px; overflow-y:scroll; border:1px solid;"> 


			
			
<div class=Section1 style='layout-grid:15.6pt 0pt;mso-layout-grid-char-alt:0'>

<p class=MsoNormal align=center style="text-align:center"><b><span
style="font-size:16.0pt;font-family:黑体;color:black">关于开展2016年浦东新区学生艺术单项比赛的通知</span></b></p>

<p class=MsoNormal style='line-height:26.0pt;mso-line-height-rule:exactly'><span
lang=EN-US style='font-size:14.0pt;font-family:仿宋_GB2312;mso-hansi-font-family:
华文中宋;letter-spacing:-.6pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:150%'><span style='font-size:14.0pt;
line-height:150%;font-family:仿宋'>各教育署，青少年活动中心，中小学、中等职业学校、幼儿园：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=center style='text-align:left;line-height:150%'><span
lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>为贯彻落实《上海市人民政府办公厅关于全面加强和改进学校美育工作实施意见》（沪府办发【<span lang=EN-US>2016</span>】<span
lang=EN-US>24</span>号）文及<span lang=EN-US>2016</span>年市、区艺术教育工作要点，根据《关于开展浦东新区第十二届学生艺术节活动的通知》（浦教德<span
lang=EN-US>2016</span>【<span lang=EN-US>7</span>号】文）要求，为进一步拓展学生素质教育活动的空间，丰富学生的课余生活，现决定组织开展<span
lang=EN-US>2016</span>年浦东新区学生艺术单项比赛。具体事项通知如下：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>一、主办单位<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>浦东新区教育局<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>二、承办单位<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>浦东新区青少年活动中心<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>相关艺术教育特色学校<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>三、参赛对象<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>本区幼儿园、小学、初中、高中（含职校）的在校学生<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>四、项目、组别设置及要求<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（一）声乐<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>要求：<span lang=EN-US> 1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、演出时间以<span
lang=EN-US>3</span>分钟为限，可节选精彩片段参赛，超时叫停；<span lang=EN-US>3</span>、每个表演类节目的参赛人数为<span
lang=EN-US>1</span>&#8212;<span lang=EN-US>5</span>人；<span lang=EN-US>4</span>、伴奏音乐采用<span
lang=EN-US>mp3</span>格式的<span lang=EN-US>CD</span>光盘。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（二）民乐（含弦乐类、弹拨类、吹奏类、重奏、民打）<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>要求：<span lang=EN-US> 1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、演出时间以<span
lang=EN-US>3</span>分钟为限，可节选精彩片段参赛，超时叫停；<span lang=EN-US>3</span>、每个表演类节目的参赛人数为<span
lang=EN-US>1</span>&#8212;<span lang=EN-US>5</span>人；<span lang=EN-US>4</span>、乐器自备。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（三）西乐（含弦乐类、木管类、铜管类、键盘类、重奏、西打）<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>要求：<span lang=EN-US> 1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、演出时间以<span
lang=EN-US>3</span>分钟为限，可节选精彩片段参赛，超时叫停；<span lang=EN-US>3</span>、每个表演类节目的参赛人数为<span
lang=EN-US>1</span>&#8212;<span lang=EN-US>5</span>人；<span lang=EN-US>4</span>、乐器自备；<span
lang=EN-US>5</span>、键盘类指手风琴、单排键电子琴。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><u><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>注：西乐专场不设电声类节目比赛。<span lang=EN-US><o:p></o:p></span></span></u></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（四）钢琴<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>组别：幼儿组、小学<span lang=EN-US>A</span>组（<span lang=EN-US>1-3</span>年级）、小学<span
lang=EN-US>B</span>组（<span lang=EN-US>4-6</span>年级）、初中组（<span lang=EN-US>7-9</span>年级）、高中组（含职校）<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>要求：<span lang=EN-US> 1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、演出时间以<span
lang=EN-US>3</span>分钟为限，可节选精彩片段参赛，超时叫停；<span lang=EN-US>3</span>、每个表演类节目的参赛人数为<span
lang=EN-US>1</span>&#8212;<span lang=EN-US>5</span>人；<span lang=EN-US>4</span>、统一使用活动承办方准备的钢琴。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（五）口琴<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>要求：<span lang=EN-US> 1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、演出时间以<span
lang=EN-US>3</span>分钟为限，可节选精彩片段参赛，超时叫停；<span lang=EN-US>3</span>、每个表演类节目的参赛人数为<span
lang=EN-US>1</span>&#8212;<span lang=EN-US>5</span>人；<span lang=EN-US>4</span>、乐器自备。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（六）舞蹈<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>要求：<span lang=EN-US> 1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、演出时间以<span
lang=EN-US>3</span>分钟为限，可节选精彩片段参赛，超时叫停；<span lang=EN-US>3</span>、每个表演类节目的参赛人数为<span
lang=EN-US>1</span>&#8212;<span lang=EN-US>5</span>人；<span lang=EN-US>4</span>、表演时须自备演出服装，伴奏音乐采用<span
lang=EN-US>mp3</span>格式的<span lang=EN-US>CD</span>光盘。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（七）少儿模特<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>组别：小学<span lang=EN-US>A</span>组（<span lang=EN-US>1</span>&#8212;<span lang=EN-US>3</span>年级）、小学<span
lang=EN-US>B</span>组（<span lang=EN-US>4</span>&#8212;<span lang=EN-US>5</span>年级）、初中组、高中组（含职校）<u><span
lang=EN-US><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>要求：<span lang=EN-US>1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、本次比赛的参赛人数只设单人组<span
lang=EN-US>(1</span>人<span lang=EN-US>),</span>不设<span lang=EN-US>2</span>&#8212;<span
lang=EN-US>5</span>人组别；<span lang=EN-US>3</span>、比赛时的音乐由主办方统一规定（时长约<span
lang=EN-US>2</span>分钟），表演服装自备。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（八）戏剧（含朗诵、故事、戏曲）<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>要求：<span lang=EN-US> 1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、演出时间以<span
lang=EN-US>3</span>分钟为限，可节选精彩片段参赛，超时叫停；<span lang=EN-US>3</span>、每个表演类节目的参赛人数为<span
lang=EN-US>1</span>&#8212;<span lang=EN-US>5</span>人；<span lang=EN-US>4</span>、如有音乐伴奏，音乐采用<span
lang=EN-US>mp3</span>格式的<span lang=EN-US>CD</span>光盘。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（九）工艺（含折纸及其他综合工艺，不包括陶艺）<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>要求：<span lang=EN-US>1</span>、以个人形式参赛，每人完成一件完整作品；<span lang=EN-US>2</span>、作品表现形式不限，主题自拟，使用工具和材料自备；<span
lang=EN-US>3</span>、参考资料、草稿等一律不得带入比赛现场；<span lang=EN-US>4</span>、现场创作时间<span
lang=EN-US>90</span>分钟；<span lang=EN-US>5</span>、软陶作品一律不烤制。<span lang=EN-US> <o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（十）动漫画（含电脑动漫、手绘漫画）<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>要求：以个人形式参赛，每个人完成一件完整作品，提倡原创。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>主题：和谐家园<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>1</span></b><b
style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
150%;font-family:仿宋'>、电脑动漫：</span></b><span style='font-size:14.0pt;line-height:
150%;font-family:仿宋'>（<span lang=EN-US>1</span>）电脑漫画作品以光盘形式递交，光盘中应包含有<span
lang=EN-US>JPG</span>格式文件和作品原文件。必须保证可在标准配置的计算机上顺畅播放，作品容量在<st1:chmetcnv TCSC="0"
NumberType="1" Negative="False" HasSpace="False" SourceValue="100" UnitName="m"
w:st="on"><span lang=EN-US>100M</span></st1:chmetcnv>以内，送稿时，以光盘形式递交，并将动画作品原文件一同刻录到光盘中。（<span
lang=EN-US>2</span>）电脑动漫需要现场演示并讲解，每人<span lang=EN-US>1</span>&#8212;<span lang=EN-US>3</span>分钟。<span
lang=EN-US> <o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>2</span></b><b
style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
150%;font-family:仿宋'>、手绘漫画：</span></b><span style='font-size:14.0pt;line-height:
150%;font-family:仿宋'>手绘动漫需在<span lang=EN-US>90</span>分钟内现场绘制。（<span lang=EN-US>1</span>）准备规格尺寸为<span
lang=EN-US>4K</span>或<span lang=EN-US>8K</span>漫画纸，绘本漫画可以为<span lang=EN-US>A4</span>纸尺寸彩色黑白均可。（<span
lang=EN-US>2</span>）鼓励多格漫画作品。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（十一）茶艺<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>要求：<span lang=EN-US>1</span>、现场即兴回答评委关于茶艺知识的提问；<span lang=EN-US>2</span>、按照比赛要求，提前<span
lang=EN-US>5</span>分钟抽取比赛泡的茶种（柠檬红茶、茉莉花茶、龙井茶三选一），并做相应准备；<span lang=EN-US>3</span>、在<span
lang=EN-US>15</span>分钟内现场表演，茶叶、茶具、音乐统一由承办方提供。服装自备。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（十二）陶艺<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>主题：和谐家园<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>要求：<span lang=EN-US>1</span>、参赛选手需自备制作工具和材料<span lang=EN-US>,</span>根据比赛主题进行创作<span
lang=EN-US>,</span>参考资料、草稿、半成品等一律不得带入比赛现场；<span lang=EN-US>2</span>、作品必须放置在自备底板上，一律不烤制；<span
lang=EN-US>3</span>、现场比赛时间为<span lang=EN-US>90</span>分钟。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:20.65pt;mso-char-indent-count:1.47;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:14.0pt;line-height:150%;font-family:仿宋'><span
style='mso-spacerun:yes'>&nbsp;</span></span></b><b style='mso-bidi-font-weight:
normal'><span style='font-size:14.0pt;line-height:150%;font-family:仿宋'>五、比赛组织工作安排<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（一）总体策划、组织<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>本次比赛的总体策划与组织工作由浦东新区学生艺术节活动办公室负责，具体工作由浦东新区青少年活动中心艺术活动部落实。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>浦东新区青少年活动中心<span lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>艺术活动部（迎春路<span
lang=EN-US>318</span>号<span lang=EN-US>609</span>室）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><st1:PersonName ProductID="郑" w:st="on"><span
 style='font-size:14.0pt;line-height:150%;font-family:仿宋'>郑</span></st1:PersonName><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>老师<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>联系电话：<span
lang=EN-US>50332080*130<o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>本次比赛涉及的十二个项目的具体比赛场次、时间、地点将于<span
lang=EN-US>10</span>月<span lang=EN-US>21</span>日挂青少年活动中心网站的“公告通知栏”，网址<span
lang=EN-US><a href="http://www.shng.cn"><span style='color:windowtext'>www.shng.cn</span></a></span>。<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（二）报名组织工作及要求<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span lang=EN-US style='font-size:14.0pt;line-height:150%;
font-family:仿宋'>1</span><span style='font-size:14.0pt;line-height:150%;
font-family:仿宋'>、各参赛单位要根据本次活动的要求，广泛动员和组织本校学生积极参与到艺术单项比赛的活动中来，让更多有艺术特长的学生成为艺术教育活动的受益者。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:1.5;
line-height:150%'><span lang=EN-US style='font-size:14.0pt;line-height:150%;
font-family:仿宋'>2</span><span style='font-size:14.0pt;line-height:150%;
font-family:仿宋'>、各参赛单位的艺术辅导员、艺术指导教师应认真做好宣传发动、选拔推荐、网络报名、信息校对和汇总等工作，在校级选拔的基础上积极组织、选拔、推荐具有时代特征、校园特色和学生特点的节目或作品参加本次比赛。市、区两级艺术特色学校、艺术团和青少年活动中心要充分发挥引领、辐射、示范带头作用。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:1.5;
line-height:150%'><span lang=EN-US style='font-size:14.0pt;line-height:150%;
font-family:仿宋'>3</span><span style='font-size:14.0pt;line-height:150%;
font-family:仿宋'>、为鼓励更多具有艺术特长的学生参赛。<b style='mso-bidi-font-weight:normal'>本次比赛规定每位学生限报一个节目或作品，每个节目的指导教师最多可以填报两位，指导教师一经申报不得更改。<span
lang=EN-US> <o:p></o:p></span></b></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:1.5;
line-height:150%'><span lang=EN-US style='font-size:14.0pt;line-height:150%;
font-family:仿宋'>4</span><span style='font-size:14.0pt;line-height:150%;
font-family:仿宋'>、本次活动的报名工作采取学校集体网络报名方式，不接受学生或家长的个人报名。参赛单位可在指定时间内登录<span
lang=EN-US><a href="http://www.shng.cn"><span style='color:windowtext;
text-decoration:none;text-underline:none'>www.shng.cn</span></a></span>进入浦东新区青少年活动中心网站，点击首页底端的“浦东新区青少年艺术教育信息管理系统”，用指定的用户名进入报名。各单位具体报名操作步骤见《<span
lang=EN-US>2016</span>年浦东新区学生艺术单项比赛网络报名操作指南<span lang=EN-US>PPT</span>》（附件<span
lang=EN-US>1</span>）。各单位的用户名和初始密码将同步发送到各单位的局域网，请注意查收<span lang=EN-US>,</span>初始密码可以修改，但修改后的密码请务必自行保存。每个学校（含分校、九年制、十二年制）只有一个用户名，各参赛单位的节目和作品报送数的限额参照《参赛单位节目报送数量表》。如报名系统出现无法解决的问题可电话咨询<span
lang=EN-US>,</span>联系人：李宝宁<span lang=EN-US>13818555749</span>。<span lang=EN-US>
<o:p></o:p></span></span></p>

<p class=MsoNormal align=center style='text-align:center;text-indent:28.1pt;
mso-char-indent-count:2.0;line-height:150%'><b style='mso-bidi-font-weight:
normal'><span style='font-size:14.0pt;line-height:150%;font-family:仿宋;
mso-bidi-font-family:仿宋_GB2312'>参赛单位节目报送数量表</span></b><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:
仿宋'><o:p></o:p></span></b></p>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0
 style='margin-left:12.5pt;border-collapse:collapse;border:none;mso-border-alt:
 solid black .5pt;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;mso-border-insideh:.5pt solid black;
 mso-border-insidev:.5pt solid black'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=406 style='width:304.75pt;border:solid black 1.0pt;border-right:
  solid windowtext 1.0pt;mso-border-alt:solid black .5pt;mso-border-right-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>参赛单位分类<span
  lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
  <td width=198 style='width:148.85pt;border:solid black 1.0pt;border-left:
  none;mso-border-left-alt:solid black .5pt;mso-border-alt:solid black .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋;mso-bidi-font-family:
  仿宋_GB2312'>各单位节目和作品总数报送限额</span></b><b><span lang=EN-US style='font-size:
  14.0pt;line-height:150%;font-family:仿宋'><o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=406 style='width:304.75pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .5pt;mso-border-alt:solid black .5pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>1</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>、市、区级学生艺术团；<span
  lang=EN-US><o:p></o:p></span></span></p>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>2</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>、市、区级艺术特色学校；<span
  lang=EN-US><o:p></o:p></span></span></p>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>3</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>、中小学校的学生数在<span
  lang=EN-US>2000</span>人及以上的单位。</span><span lang=EN-US style='font-size:14.0pt;
  line-height:150%;font-family:仿宋;mso-bidi-font-family:仿宋_GB2312'><o:p></o:p></span></p>
  </td>
  <td width=198 style='width:148.85pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .5pt;mso-border-left-alt:solid black .5pt;mso-border-alt:solid black .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋;mso-bidi-font-family:
  仿宋_GB2312;mso-bidi-font-weight:bold'>符合三类条件中任何一类的单位最多不超过<span lang=EN-US>25</span>个<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=406 style='width:304.75pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .5pt;mso-border-alt:solid black .5pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>其他中小学校<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=198 style='width:148.85pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .5pt;mso-border-left-alt:solid black .5pt;mso-border-alt:solid black .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋;mso-bidi-font-family:
  仿宋_GB2312;mso-bidi-font-weight:bold'>最多不超过<span lang=EN-US>15</span>个<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:3;mso-yfti-lastrow:yes'>
  <td width=406 style='width:304.75pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .5pt;mso-border-alt:solid black .5pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%'><span style='font-size:14.0pt;
  line-height:150%;font-family:仿宋'>幼儿园（只设钢琴专场比赛）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=198 style='width:148.85pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .5pt;mso-border-left-alt:solid black .5pt;mso-border-alt:solid black .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋;mso-bidi-font-family:
  仿宋_GB2312;mso-bidi-font-weight:bold'>最多不超过</span><span lang=EN-US
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>5</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>个</span><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋;
  mso-bidi-font-family:仿宋_GB2312;mso-bidi-font-weight:bold'><o:p></o:p></span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='text-indent:21.1pt;mso-char-indent-count:1.5;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（三）报名材料送交要求<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>各参赛单位完成网上报名的同时，完整填写《<span lang=EN-US>2016</span>年浦东新区学生艺术单项比赛节目（作品）汇总表》（附件<span
lang=EN-US>2</span>），并加盖学校公章，在<span lang=EN-US>9</span>月<span lang=EN-US>28</span>日前快递到浦东新区青少年活动中心<span
lang=EN-US>609</span>室（迎春路<span lang=EN-US>318</span>号，邮编<span lang=EN-US>200135</span>），<st1:PersonName
ProductID="郑茜元" w:st="on">郑茜元</st1:PersonName>老师收。<b style='mso-bidi-font-weight:
normal'>汇总表的电子稿请以文件名“教育署<span lang=EN-US>+</span>学校名”命名，于<span lang=EN-US>9</span>月<span
lang=EN-US>28</span>日发送到公共邮箱<span lang=EN-US>: <a href="mailto:pdyshd@163.com">pdyshd@163.com</a></span>。<span
lang=EN-US><o:p></o:p></span></b></span></p>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>六、赛事活动日程安排<span
lang=EN-US><o:p></o:p></span></span></b></p>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-padding-alt:0cm 5.4pt 0cm 5.4pt;mso-border-insideh:.5pt solid windowtext;
 mso-border-insidev:.5pt solid windowtext'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:21.0pt'>
  <td width=54 style='width:40.65pt;border:solid windowtext 1.0pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
  150%;font-family:仿宋'>阶段<span lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
  <td width=169 style='width:126.75pt;border:solid windowtext 1.0pt;border-left:
  none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
  150%;font-family:仿宋'>时<span lang=EN-US><span style='mso-spacerun:yes'>&nbsp;
  </span></span>间<span lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
  <td width=200 style='width:149.85pt;border:solid windowtext 1.0pt;border-left:
  none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='text-indent:35.15pt;mso-char-indent-count:2.5;
  line-height:150%'><b style='mso-bidi-font-weight:normal'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>地<span lang=EN-US><span
  style='mso-spacerun:yes'>&nbsp; </span></span>点<span lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
  <td width=196 style='width:147.15pt;border:solid windowtext 1.0pt;border-left:
  none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;text-indent:28.1pt;
  mso-char-indent-count:2.0;line-height:150%'><b style='mso-bidi-font-weight:
  normal'><span style='font-size:14.0pt;line-height:150%;font-family:仿宋'>内 容<span
  lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;height:21.0pt'>
  <td width=54 rowspan=8 style='width:40.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
  150%;font-family:仿宋'>赛<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
  150%;font-family:仿宋'>前<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
  150%;font-family:仿宋'>安<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
  150%;font-family:仿宋'>排<span lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>9</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>月<span lang=EN-US>22</span>日（周四）<b
  style='mso-bidi-font-weight:normal'><span lang=EN-US><o:p></o:p></span></b></span></p>
  </td>
  <td width=200 style='width:149.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='line-height:150%'><span style='font-size:14.0pt;
  line-height:150%;font-family:仿宋'>各学校网络分流报名<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=196 style='width:147.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='line-height:150%'><b style='mso-bidi-font-weight:
  normal'><span style='font-size:14.0pt;line-height:150%;font-family:仿宋'>第一教育署</span></b><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>网上报名<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>9</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>月<span lang=EN-US>23</span>日（周五）<b
  style='mso-bidi-font-weight:normal'><span lang=EN-US><o:p></o:p></span></b></span></p>
  </td>
  <td width=200 style='width:149.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='line-height:150%'><span style='font-size:14.0pt;
  line-height:150%;font-family:仿宋'>各学校网络分流报名<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=196 style='width:147.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='line-height:150%'><b style='mso-bidi-font-weight:
  normal'><span style='font-size:14.0pt;line-height:150%;font-family:仿宋'>第二教育署</span></b><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>网上报名<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:3;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>9</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>月<span lang=EN-US>26</span>日（周一）<b
  style='mso-bidi-font-weight:normal'><span lang=EN-US><o:p></o:p></span></b></span></p>
  </td>
  <td width=200 style='width:149.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='line-height:150%'><span style='font-size:14.0pt;
  line-height:150%;font-family:仿宋'>各学校网络分流报名<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=196 style='width:147.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='line-height:150%'><b style='mso-bidi-font-weight:
  normal'><span style='font-size:14.0pt;line-height:150%;font-family:仿宋'>第三教育署</span></b><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>网上报名<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:4;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>9</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>月<span lang=EN-US>27</span>日（周二）<b
  style='mso-bidi-font-weight:normal'><span lang=EN-US><o:p></o:p></span></b></span></p>
  </td>
  <td width=200 style='width:149.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='line-height:150%'><span style='font-size:14.0pt;
  line-height:150%;font-family:仿宋'>各学校网络分流报名<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=196 style='width:147.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='line-height:150%'><b style='mso-bidi-font-weight:
  normal'><span style='font-size:14.0pt;line-height:150%;font-family:仿宋'>第四教育署</span></b><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>网上报名<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:5;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;text-indent:7.0pt;
  mso-char-indent-count:.5;line-height:150%'><span lang=EN-US style='font-size:
  14.0pt;line-height:150%;font-family:仿宋'>9</span><span style='font-size:14.0pt;
  line-height:150%;font-family:仿宋'>月<span lang=EN-US>28</span>日前<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=200 style='width:149.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='margin-left:1.1pt;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>快递至浦东新区青少年活动中心<span
  lang=EN-US>609</span>室<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=196 style='width:147.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>学校上交盖章的报名汇总表<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:6;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;text-indent:7.0pt;
  mso-char-indent-count:.5;line-height:150%'><span lang=EN-US style='font-size:
  14.0pt;line-height:150%;font-family:仿宋'>10</span><span style='font-size:14.0pt;
  line-height:150%;font-family:仿宋'>月<span lang=EN-US>11</span>日（周二）下午<span
  lang=EN-US>13:30<o:p></o:p></span></span></p>
  </td>
  <td width=200 style='width:149.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='margin-left:1.1pt;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>青少年活动中心<span
  lang=EN-US>423</span>室<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=196 style='width:147.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>各承办单位工作会议<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:7;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;text-indent:7.0pt;
  mso-char-indent-count:.5;line-height:150%'><span lang=EN-US style='font-size:
  14.0pt;line-height:150%;font-family:仿宋'>10</span><span style='font-size:14.0pt;
  line-height:150%;font-family:仿宋'>月<span lang=EN-US>17</span>日（周一）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=200 style='width:149.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='margin-left:1.1pt;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>青少年活动中心<span
  lang=EN-US>609</span>室<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=196 style='width:147.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>各承办单位上交承办方案<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:8;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>10</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>月<span lang=EN-US>21</span>日（周五）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=200 style='width:149.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='margin-left:1.1pt;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>登陆<span lang=EN-US><a
  href="http://www.shng.cn"><span style='color:windowtext'>www.shng.cn</span></a></span>的公告通知栏<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=196 style='width:147.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>查询各承办单位的各项专场比赛的具体安排<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:9;height:21.0pt'>
  <td width=54 rowspan=8 style='width:40.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
  150%;font-family:仿宋'>比<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
  150%;font-family:仿宋'>赛<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
  150%;font-family:仿宋'>安<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
  150%;font-family:仿宋'>排<span lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>10</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>月<span lang=EN-US>29</span>日（周六）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=200 rowspan=8 style='width:149.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='margin-left:1.1pt;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>各专场的具体比赛场次、报到时间和地点登陆<span
  lang=EN-US><a href="http://www.shng.cn"><span style='color:windowtext'>www.shng.cn</span></a></span>查询<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=196 rowspan=8 style='width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>各专场陆续举行比赛<span
  lang=EN-US><o:p></o:p></span></span></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>（少儿模特、工艺、茶艺、陶艺、西乐、民乐、钢琴、声乐、舞蹈、戏剧、口琴、动漫画）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:10;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>10</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>月<span lang=EN-US>30</span>日（周日）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:11;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>11</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>月<span lang=EN-US>5</span>日（周六）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:12;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>11</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>月<span lang=EN-US>6</span>日（周日）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:13;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>11</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>月<span lang=EN-US>12</span>日（周六）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:14;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>11</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>月<span lang=EN-US>13</span>日（周日）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:15;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>11</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>月<span lang=EN-US>19</span>日（周六）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:16;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>11</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>月<span lang=EN-US>20</span>日（周日）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:17;height:21.0pt'>
  <td width=54 rowspan=2 style='width:40.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
  150%;font-family:仿宋'>赛<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
  150%;font-family:仿宋'>后<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
  150%;font-family:仿宋'>安<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;line-height:
  150%;font-family:仿宋'>排<span lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><st1:chsdate
  IsROCDate="False" IsLunarDate="False" Day="16" Month="12" Year="2016" w:st="on"><span
   lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>2016</span><span
   style='font-size:14.0pt;line-height:150%;font-family:仿宋'>年<span lang=EN-US>12</span>月<span
   lang=EN-US>16</span>日</span></st1:chsdate><span style='font-size:14.0pt;
  line-height:150%;font-family:仿宋'>（周五）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=200 style='width:149.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='margin-left:1.1pt;text-align:center;
  line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
  仿宋'>登陆<span lang=EN-US><a href="http://www.shng.cn"><span style='color:windowtext'>www.shng.cn</span></a><o:p></o:p></span></span></p>
  </td>
  <td width=196 style='width:147.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>查询区级获奖名单及领奖信息<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:18;mso-yfti-lastrow:yes;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'>2017</span><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>年<span lang=EN-US>5</span>月&#8212;<span
  lang=EN-US>6</span>月<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=200 style='width:149.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='margin-left:1.1pt;text-align:center;
  line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
  仿宋'>登陆<span lang=EN-US><a href="http://www.shng.cn"><span style='color:windowtext'>www.shng.cn</span></a><o:p></o:p></span></span></p>
  </td>
  <td width=196 style='width:147.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:仿宋'>查询参加市级比赛的选手名单，具体通知另发。<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='text-indent:28.1pt;mso-char-indent-count:2.0;
line-height:150%'><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>七、评奖办法<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span lang=EN-US style='font-size:14.0pt;line-height:150%;
font-family:仿宋'>1</span><span style='font-size:14.0pt;line-height:150%;
font-family:仿宋'>、本次比赛是<span lang=EN-US>2016</span>年浦东新区学生艺术节系列活动之一。凡报名参加区级赛的学生均可获《<span
lang=EN-US>2016</span>年浦东新区学生艺术单项比赛参赛证书》一份。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:150%'><span style='font-size:14.0pt;
line-height:150%;font-family:仿宋'>单项比赛各项目均设金、银、铜奖若干名，对获得区级奖项的学生均颁发获奖证书，同时证书上印有指导教师名字。<b
style='mso-bidi-font-weight:normal'><span lang=EN-US><o:p></o:p></span></b></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span lang=EN-US style='font-size:14.0pt;line-height:150%;
font-family:仿宋'>2</span><span style='font-size:14.0pt;line-height:150%;
font-family:仿宋'>、本次比赛结束后，部分优秀选手可获得参加<span lang=EN-US>2017</span>年市级学生艺术单项比赛的资格。参加市级比赛的报名办法将在<span
lang=EN-US>2017</span>年<span lang=EN-US>5</span>月&#8212;<span lang=EN-US>6</span>月另行通知。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span lang=EN-US style='font-size:14.0pt;line-height:150%;
font-family:仿宋'>3</span><span style='font-size:14.0pt;line-height:150%;
font-family:仿宋'>、市、区两级艺术教育特色学校应积极选拔具有艺术特长的学生参加比赛，参赛获奖情况将作为浦东新区艺术教育特色学校考核的依据之一。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span style='font-size:14.0pt;line-height:150%;font-family:
仿宋'>特此通知。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:28.0pt;mso-char-indent-count:2.0;
line-height:150%'><span lang=EN-US style='font-size:14.0pt;line-height:150%;
font-family:仿宋'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:150%'><span style='font-size:14.0pt;
line-height:150%;font-family:仿宋'>附件：<span lang=EN-US> 1</span>、<span
lang=EN-US>2016</span>年浦东新区学生艺术单项比赛网络报名操作指南（<span lang=EN-US>PPT</span>）<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:150%'><span lang=EN-US style='font-size:
14.0pt;line-height:150%;font-family:仿宋'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>2</span><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>、<span lang=EN-US>2016</span>年浦东新区学生艺术单项比赛节目（作品）汇总表<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:150%'><span lang=EN-US style='font-size:
14.0pt;line-height:150%;font-family:仿宋'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span><o:p></o:p></span></p>

<p class=MsoNormal align=right style='margin-right:76.0pt;text-align:right;
text-indent:224.0pt;mso-char-indent-count:16.0;line-height:150%'><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>浦东新区教育局德育处<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-right:70.0pt;text-indent:224.0pt;mso-char-indent-count:
16.0;line-height:150%'><span lang=EN-US style='font-size:14.0pt;line-height:
150%;font-family:仿宋'><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span><span
style='font-size:14.0pt;line-height:150%;font-family:仿宋'>二○一六年九月十四日<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=right style='text-align:right;line-height:26.0pt;
mso-line-height-rule:exactly'><span lang=EN-US style='font-size:14.0pt;
font-family:仿宋_GB2312;mso-hansi-font-family:仿宋;color:black'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></p>
			
			
			


 			</div>
		</div>
	</div>





			  <p></p>
			  <div class="row">
			<div class="col-md-12 margin-bottom-10">
				
					<label class="control-label col-md-7" for="nameZh" >
					<a class="btn btn-primary btn-large" href="${base}/userSign/index.htm">
			     	 我要报名
					</a>
					</label>
					<div class="col-md-3">
										
					</div>
					
					<div class="col-md-2">
						<a class="btn btn-primary btn-large" href="${base}/resources/global/upload/2016dxbsxz.doc">
							下载Word版本
						</a>
					</div>
				
			</div>
			  
			  
			</div>
	</div>
</div>
<!-- END PAGE CONTENT INNER -->
</body>
</html>