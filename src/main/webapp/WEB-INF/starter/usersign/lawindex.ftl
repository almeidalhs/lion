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
	{font-family:仿宋;
	panose-1:2 1 6 9 6 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:-2147482945 953122042 22 0 262145 0;}
@font-face
	{font-family:仿宋_GB2312;
	mso-font-alt:"Arial Unicode MS";
	mso-font-charset:134;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:0 135135232 16 0 262144 0;}
@font-face
	{font-family:华文中宋;
	panose-1:2 1 6 0 4 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:647 135200768 16 0 262303 0;}
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
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	mso-fareast-font-family:宋体;}
 /* Page Definitions */
 @page
	{mso-page-border-surround-header:no;
	mso-page-border-surround-footer:no;
	mso-footnote-separator:url("2017年中心参加浦东艺术单项比赛通知.files/header.htm") fs;
	mso-footnote-continuation-separator:url("2017年中心参加浦东艺术单项比赛通知.files/header.htm") fcs;
	mso-endnote-separator:url("2017年中心参加浦东艺术单项比赛通知.files/header.htm") es;
	mso-endnote-continuation-separator:url("2017年中心参加浦东艺术单项比赛通知.files/header.htm") ecs;}
@page Section1
	{size:595.3pt 841.9pt;
	margin:62.3pt 89.85pt 72.0pt 89.85pt;
	mso-header-margin:42.55pt;
	mso-footer-margin:49.6pt;
	mso-paper-source:0;
	layout-grid:15.6pt 0pt;
	mso-layout-grid-char-alt:0;}
div.Section1
	{page:Section1;}
@page Section2
	{size:595.3pt 841.9pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;
	mso-header-margin:42.55pt;
	mso-footer-margin:49.6pt;
	mso-even-header:url("2017年中心参加浦东艺术单项比赛通知.files/header.htm") eh2;
	mso-header:url("2017年中心参加浦东艺术单项比赛通知.files/header.htm") h2;
	mso-even-footer:url("2017年中心参加浦东艺术单项比赛通知.files/header.htm") ef2;
	mso-footer:url("2017年中心参加浦东艺术单项比赛通知.files/header.htm") f2;
	mso-first-header:url("2017年中心参加浦东艺术单项比赛通知.files/header.htm") fh2;
	mso-first-footer:url("2017年中心参加浦东艺术单项比赛通知.files/header.htm") ff2;
	mso-paper-source:0;
	layout-grid:15.6pt;}
div.Section2
	{page:Section2;}
-->
</style>
<!--[if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
	{mso-style-name:普通表格;
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-unhide:no;
	mso-style-parent:"";
	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
	mso-para-margin:0cm;
	mso-para-margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	font-family:"Times New Roman","serif";}
</style>
<![endif]--><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="3074" fillcolor="#9cbee0"
  strokecolor="#739cc3">
  <v:fill color="#9cbee0" color2="#bbd5f0" type="gradient">
   <o:fill v:ext="view" type="gradientUnscaled"/>
  </v:fill>
  <v:stroke color="#739cc3" weight="1.25pt"/>
 </o:shapedefaults></xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1"/>
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=ZH-CN link=blue vlink=purple style='tab-interval:21.0pt;text-justify-trim:
punctuation'>

<div class=Section1 style='layout-grid:15.6pt 0pt;mso-layout-grid-char-alt:
0'>

<p class=MsoNormal align=center style='text-align:center'><span
style='font-size:16.0pt;font-family:黑体;mso-hansi-font-family:"Times New Roman"'>关于选送中心学生参加<span
lang=EN-US>2017</span>年浦东新区学生艺术<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=center style='text-align:center'><span
style='font-size:16.0pt;font-family:黑体;mso-hansi-font-family:"Times New Roman"'>单项比赛的通知<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:26.0pt;mso-line-height-rule:exactly'><span
style='font-size:14.0pt;font-family:仿宋;color:black'>管理部、各分部的全体教师：<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:1.5;
line-height:26.0pt;mso-line-height-rule:exactly'><span lang=EN-US
style='font-size:14.0pt;font-family:仿宋;color:black'>2017</span><span
style='font-size:14.0pt;font-family:仿宋;color:black'>年浦东新区学生艺术单项比赛活动的报名工作将于<span
lang=EN-US>9</span>月<span lang=EN-US>16</span>日启动，为做好我中心学生艺术团团员和兴趣社团学员的选送报名工作，现将有关事项通知如下：<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:20.65pt;mso-char-indent-count:1.47;
line-height:26.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:14.0pt;font-family:仿宋;color:black'>一、选送要求<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:1.5;
line-height:26.0pt;mso-line-height-rule:exactly'><span style='font-size:14.0pt;
font-family:仿宋;color:black'>凡有意推荐学生参加本次比赛的教师，请仔细阅读教育局德育处下发的《关于开展<span
lang=EN-US>2017</span>年浦东新区学生艺术单项比赛的通知》（附件<span lang=EN-US>1</span>）。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.1pt;mso-char-indent-count:1.5;
line-height:26.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:14.0pt;font-family:仿宋;color:black'>注：本次比赛中规定，每位学生参加本次活动限报一个节目<span
lang=EN-US>(</span>作品<span lang=EN-US>)</span>，每个节目的指导教师最多可以填报两位。模特专场比赛只设单人组<span
lang=EN-US>,</span>不设<span lang=EN-US>2-5</span>人组别。<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:20.65pt;mso-char-indent-count:1.47;
line-height:26.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:14.0pt;font-family:仿宋;color:black'>二、选送流程<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:1.5;
line-height:26.0pt;mso-line-height-rule:exactly'><span lang=EN-US
style='font-size:14.0pt;font-family:仿宋;color:black'>1</span><span
style='font-size:14.0pt;font-family:仿宋;color:black'>、参赛教师按要求完整填写《<span
lang=EN-US>2017</span>年浦东新区学生艺术单项比赛报名汇总表》（附件<span lang=EN-US>2</span>）<span
lang=EN-US style='letter-spacing:-.5pt'>,</span>统一上交所属部门负责人。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:19.5pt;mso-char-indent-count:1.5;
line-height:26.0pt;mso-line-height-rule:exactly'><span lang=EN-US
style='font-size:14.0pt;font-family:仿宋;color:black;letter-spacing:-.5pt'>2</span><span
style='font-size:14.0pt;font-family:仿宋;color:black;letter-spacing:-.5pt'>、各部门的节目和作品的总数由所属部门统一汇总<span
lang=EN-US>,</span>并</span><span style='font-size:14.0pt;font-family:仿宋;
color:black'>在<span lang=EN-US>9</span>月<span lang=EN-US>26</span>日下午<span
lang=EN-US>3:00</span>前<span style='letter-spacing:-.5pt'>将汇总表的电子稿发送到指定邮箱<span
lang=EN-US>1797928351@qq.com</span>。<span lang=EN-US><o:p></o:p></span></span></span></p>

<p class=MsoNormal style='text-indent:19.5pt;mso-char-indent-count:1.5;
line-height:26.0pt;mso-line-height-rule:exactly'><span lang=EN-US
style='font-size:14.0pt;font-family:仿宋;color:black;letter-spacing:-.5pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:34.6pt;mso-char-indent-count:2.47;
line-height:26.0pt;mso-line-height-rule:exactly'><span style='font-size:14.0pt;
font-family:仿宋;color:black'>活动联系人：郑茜元<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp; </span>50332080*130<o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:26.0pt;mso-line-height-rule:exactly'><span
lang=EN-US style='font-size:14.0pt;font-family:仿宋;color:black'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:26.0pt;mso-line-height-rule:exactly'><span
style='font-size:14.0pt;font-family:仿宋;color:black;letter-spacing:-.5pt'>附件：<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:26.0pt;mso-line-height-rule:exactly'><span
lang=EN-US style='font-size:14.0pt;font-family:仿宋;color:black;letter-spacing:
-.5pt'>1</span><span style='font-size:14.0pt;font-family:仿宋;color:black;
letter-spacing:-.5pt'>、关于开展</span><span lang=EN-US style='font-size:14.0pt;
font-family:仿宋;color:black'>2017</span><span style='font-size:14.0pt;
font-family:仿宋;color:black'>年浦东新区学生艺术单项比赛的通知<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:26.0pt;mso-line-height-rule:exactly'><span
lang=EN-US style='font-size:14.0pt;font-family:仿宋;color:black;letter-spacing:
-.5pt'>2</span><span style='font-size:14.0pt;font-family:仿宋;color:black;
letter-spacing:-.5pt'>、<span lang=EN-US>2017</span>年浦东新区学生艺术单项比赛浦东新区青少年活动中心报名汇总表<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:26.0pt;mso-line-height-rule:exactly'><span
lang=EN-US style='font-size:14.0pt;font-family:仿宋_GB2312;color:black;
letter-spacing:-.5pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal align=right style='text-align:right;text-indent:26.0pt;
mso-char-indent-count:2.0;line-height:26.0pt;mso-line-height-rule:exactly;
word-break:break-all'><span style='font-size:14.0pt;font-family:仿宋;color:black;
letter-spacing:-.5pt'>二&#12295;一七年九月十三日<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:26.0pt;mso-line-height-rule:exactly'><span
style='font-size:15.0pt;font-family:黑体;mso-hansi-font-family:华文中宋'>附件<span
lang=EN-US>1<span style='mso-spacerun:yes'>&nbsp;&nbsp; </span></span>关于开展<span
lang=EN-US>2017</span>年浦东新区学生艺术单项比赛的通<span style='letter-spacing:-.6pt'>知<span
lang=EN-US><o:p></o:p></span></span></span></p>

<p class=MsoNormal style='line-height:26.0pt;mso-line-height-rule:exactly'><span
lang=EN-US style='font-size:14.0pt;font-family:仿宋_GB2312;mso-hansi-font-family:
华文中宋;letter-spacing:-.6pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly'><span
style='font-size:12.0pt;font-family:仿宋'>各教育署，青少年活动中心，中小学、中等职业学校、幼儿园：<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly'><span
lang=EN-US style='font-size:12.0pt;font-family:仿宋'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span><span
style='font-size:12.0pt;font-family:仿宋'>为贯彻落实《上海市人民政府办公厅关于全面加强和改进学校美育工作实施意见》（沪府办发【<span
lang=EN-US>2016</span>】<span lang=EN-US>24</span>号）文及<span lang=EN-US>2017</span>年市、区艺术教育工作要点，根据《关于开展浦东新区第十三届学生艺术节活动的通知》（浦教德<span
lang=EN-US>2017</span>【<span lang=EN-US>10</span>号】文）要求，为进一步拓展学生素质教育活动的空间，丰富学生的课余生活，现决定组织开展<span
lang=EN-US>2017</span>年浦东新区学生艺术单项比赛。具体事项通知如下：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>一、主办单位<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>浦东新区教育局<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>二、承办单位<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>浦东新区青少年活动中心<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>相关艺术教育特色学校<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>三、参赛对象<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>本区幼儿园、小学、初中、高中（含职校）的在校学生<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>四、项目、组别设置及要求<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>（一）声乐<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>要求：<span lang=EN-US> 1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、演出时间以<span
lang=EN-US>3</span>分钟为限，可节选精彩片段参赛，超时叫停；<span lang=EN-US>3</span>、每个表演类节目的参赛人数为<span
lang=EN-US>1</span>&#8212;<span lang=EN-US>5</span>人；<span lang=EN-US>4</span>、伴奏音乐采用<span
lang=EN-US>mp3</span>格式的<span lang=EN-US>CD</span>光盘。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>（二）民乐（含弦乐类、弹拨类、吹奏类、重奏、民打）<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>要求：<span lang=EN-US> 1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、演出时间以<span
lang=EN-US>3</span>分钟为限，可节选精彩片段参赛，超时叫停；<span lang=EN-US>3</span>、每个表演类节目的参赛人数为<span
lang=EN-US>1</span>&#8212;<span lang=EN-US>5</span>人；<span lang=EN-US>4</span>、乐器自备。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>（三）西乐（含弦乐类、木管类、铜管类、键盘类、重奏、西打）<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>要求：<span lang=EN-US> 1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、演出时间以<span
lang=EN-US>3</span>分钟为限，可节选精彩片段参赛，超时叫停；<span lang=EN-US>3</span>、每个表演类节目的参赛人数为<span
lang=EN-US>1</span>&#8212;<span lang=EN-US>5</span>人；<span lang=EN-US>4</span>、乐器自备；<span
lang=EN-US>5</span>、键盘类指手风琴、单排键电子琴。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><u><span style='font-size:
12.0pt;font-family:仿宋'>注：西乐专场不设电声类节目比赛。<span lang=EN-US><o:p></o:p></span></span></u></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>（四）钢琴<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>组别：幼儿组、小学<span lang=EN-US>A</span>组（<span lang=EN-US>1-3</span>年级）、小学<span
lang=EN-US>B</span>组（<span lang=EN-US>4-6</span>年级）、初中组（<span lang=EN-US>7-9</span>年级）、高中组（含职校）<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>要求：<span lang=EN-US> 1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、演出时间以<span
lang=EN-US>3</span>分钟为限，可节选精彩片段参赛，超时叫停；<span lang=EN-US>3</span>、每个表演类节目的参赛人数为<span
lang=EN-US>1</span>&#8212;<span lang=EN-US>5</span>人；<span lang=EN-US>4</span>、统一使用活动承办方准备的钢琴。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>（五）口琴<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>要求：<span lang=EN-US> 1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、演出时间以<span
lang=EN-US>3</span>分钟为限，可节选精彩片段参赛，超时叫停；<span lang=EN-US>3</span>、每个表演类节目的参赛人数为<span
lang=EN-US>1</span>&#8212;<span lang=EN-US>5</span>人；<span lang=EN-US>4</span>、乐器自备。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>（六）舞蹈<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>要求：<span lang=EN-US> 1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、演出时间以<span
lang=EN-US>3</span>分钟为限，可节选精彩片段参赛，超时叫停；<span lang=EN-US>3</span>、每个表演类节目的参赛人数为<span
lang=EN-US>1</span>&#8212;<span lang=EN-US>5</span>人；<span lang=EN-US>4</span>、表演时须自备演出服装，伴奏音乐采用<span
lang=EN-US>mp3</span>格式的<span lang=EN-US>CD</span>光盘。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>（七）少儿模特<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>组别：小学<span lang=EN-US>A</span>组（<span lang=EN-US>1</span>&#8212;<span
lang=EN-US>3</span>年级）、小学<span lang=EN-US>B</span>组（<span lang=EN-US>4</span>&#8212;<span
lang=EN-US>5</span>年级）、初中组、高中组（含职校）<u><span lang=EN-US><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>要求：<span lang=EN-US>1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、本次比赛的参赛人数只设单人组<span
lang=EN-US>(1</span>人<span lang=EN-US>),</span>不设<span lang=EN-US>2</span>&#8212;<span
lang=EN-US>5</span>人组别；<span lang=EN-US>3</span>、比赛时的音乐由主办方统一规定（时长约<span
lang=EN-US>2</span>分钟），表演服装自备。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>（八）戏剧（含朗诵、故事、戏曲）<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>要求：<span lang=EN-US> 1</span>、节目内容健康向上，表演形式不限；<span lang=EN-US>2</span>、演出时间以<span
lang=EN-US>3</span>分钟为限，可节选精彩片段参赛，超时叫停；<span lang=EN-US>3</span>、每个表演类节目的参赛人数为<span
lang=EN-US>1</span>&#8212;<span lang=EN-US>5</span>人；<span lang=EN-US>4</span>、如有音乐伴奏，音乐采用<span
lang=EN-US>mp3</span>格式的<span lang=EN-US>CD</span>光盘。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>（九）工艺（含折纸及其他综合工艺，不包括陶艺）<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>要求：<span lang=EN-US>1</span>、以个人形式参赛，每人完成一件完整作品；<span
lang=EN-US>2</span>、作品表现形式不限，主题自拟，使用工具和材料自备；<span lang=EN-US>3</span>、参考资料、草稿等一律不得带入比赛现场；<span
lang=EN-US>4</span>、现场创作时间<span lang=EN-US>90</span>分钟；<span lang=EN-US>5</span>、软陶作品一律不烤制。<span
lang=EN-US> <o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>（十）动漫画（含电脑动漫、手绘漫画）<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>要求：以个人形式参赛，每个人完成一件完整作品，提倡原创。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>主题： 圆梦中华<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:12.0pt;font-family:仿宋'>1</span></b><b
style='mso-bidi-font-weight:normal'><span style='font-size:12.0pt;font-family:
仿宋'>、电脑动漫：</span></b><span style='font-size:12.0pt;font-family:仿宋'>（<span
lang=EN-US>1</span>）电脑漫画作品以光盘形式递交，光盘中应包含有<span lang=EN-US>JPG</span>格式文件和作品原文件。必须保证可在标准配置的计算机上顺畅播放，作品容量在<st1:chmetcnv
UnitName="m" SourceValue="100" HasSpace="False" Negative="False" NumberType="1"
TCSC="0" w:st="on"><span lang=EN-US>100M</span></st1:chmetcnv>以内，送稿时，以光盘形式递交，并将动画作品原文件一同刻录到光盘中。（<span
lang=EN-US>2</span>）电脑动漫需要现场演示并讲解，每人<span lang=EN-US>1</span>&#8212;<span lang=EN-US>3</span>分钟。<span
lang=EN-US> <o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:12.0pt;font-family:仿宋'>2</span></b><b
style='mso-bidi-font-weight:normal'><span style='font-size:12.0pt;font-family:
仿宋'>、手绘漫画：</span></b><span style='font-size:12.0pt;font-family:仿宋'>手绘动漫需在<span
lang=EN-US>90</span>分钟内现场绘制。（<span lang=EN-US>1</span>）准备规格尺寸为<span lang=EN-US>4K</span>或<span
lang=EN-US>8K</span>漫画纸，绘本漫画可以为<span lang=EN-US>A4</span>纸尺寸彩色黑白均可。（<span
lang=EN-US>2</span>）鼓励多格漫画作品。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>（十一）茶艺<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>要求：<span lang=EN-US>1</span>、现场即兴回答评委关于茶艺知识的提问；<span
lang=EN-US>2</span>、按照比赛要求，提前<span lang=EN-US>5</span>分钟抽取比赛泡的茶种（柠檬红茶、茉莉花茶、龙井茶三选一），并做相应准备；<span
lang=EN-US>3</span>、在<span lang=EN-US>15</span>分钟内现场表演，茶叶、茶具、音乐统一由承办方提供。服装自备。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>（十二）陶艺<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>主题：圆梦中华<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>组别：小学组、初中组、高中组（含职校）<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>要求：<span lang=EN-US>1</span>、参赛选手需自备制作工具和材料<span lang=EN-US>,</span>根据比赛主题进行创作<span
lang=EN-US>,</span>参考资料、草稿、半成品等一律不得带入比赛现场；<span lang=EN-US>2</span>、作品必须放置在自备底板上，一律不烤制；<span
lang=EN-US>3</span>、现场比赛时间为<span lang=EN-US>90</span>分钟。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.7pt;mso-char-indent-count:1.47;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:12.0pt;font-family:仿宋'><span
style='mso-spacerun:yes'>&nbsp;</span></span></b><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>五、比赛组织工作安排<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>（一）总体策划、组织<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>本次比赛的总体策划与组织工作由浦东新区学生艺术节活动办公室负责，具体工作由浦东新区青少年活动中心艺术活动部落实。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>浦东新区青少年活动中心<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp; </span></span>艺术活动部（张杨北路<span lang=EN-US>3207</span>号<span
lang=EN-US>523</span>办公室）<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp; </span></span>郑老师<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>联系电话：<span
lang=EN-US>50332080*130<o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>本次比赛涉及的十二个项目的具体比赛场次、时间、地点将于<span
lang=EN-US>10</span>月<span lang=EN-US>20</span>日挂青少年活动中心网站的“公告通知栏”，网址<span
lang=EN-US><a href="http://www.shng.cn">www.shng.cn</a></span>。<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>（二）报名组织工作及要求<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span lang=EN-US
style='font-size:12.0pt;font-family:仿宋'>1</span><span style='font-size:12.0pt;
font-family:仿宋'>、各参赛单位要根据本次活动的要求，广泛动员和组织本校学生积极参与到艺术单项比赛的活动中来，让更多有艺术特长的学生成为艺术教育活动的受益者。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:18.0pt;mso-char-indent-count:1.5;
line-height:20.0pt;mso-line-height-rule:exactly'><span lang=EN-US
style='font-size:12.0pt;font-family:仿宋'>2</span><span style='font-size:12.0pt;
font-family:仿宋'>、各参赛单位的艺术辅导员、艺术指导教师应认真做好宣传发动、选拔推荐、网络报名、信息校对和汇总等工作，在校级选拔的基础上积极组织、选拔、推荐具有时代特征、校园特色和学生特点的节目或作品参加本次比赛。市、区两级艺术特色学校、艺术团和青少年活动中心要充分发挥引领、辐射、示范带头作用。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:18.0pt;mso-char-indent-count:1.5;
line-height:20.0pt;mso-line-height-rule:exactly'><span lang=EN-US
style='font-size:12.0pt;font-family:仿宋'>3</span><span style='font-size:12.0pt;
font-family:仿宋'>、为鼓励更多具有艺术特长的学生参赛。<b style='mso-bidi-font-weight:normal'>本次比赛规定每位学生限报一个节目或作品，每个节目的指导教师最多可以填报两位，指导教师一经申报不得更改。<span
lang=EN-US> <o:p></o:p></span></b></span></p>

<p class=MsoNormal style='text-indent:18.0pt;mso-char-indent-count:1.5;
line-height:20.0pt;mso-line-height-rule:exactly'><span lang=EN-US
style='font-size:12.0pt;font-family:仿宋'>4</span><span style='font-size:12.0pt;
font-family:仿宋'>、本次活动的报名工作采取学校集体网络报名方式，不接受学生或家长的个人报名。参赛单位可在指定时间内登录<span
lang=EN-US><a href="http://www.shng.cn"><span style='color:windowtext;
text-decoration:none;text-underline:none'>www.shng.cn</span></a></span>进入浦东新区青少年活动中心网站，点击首页底端的“浦东新区青少年艺术教育信息管理系统”，进入报名。各参赛单位的节目和作品报送数的限额参照《参赛单位节目报送数量表》。如报名系统出现无法解决的问题可电话联系技术人员<span
lang=EN-US>: </span>李宝宁<span lang=EN-US>13818555749</span>。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=center style='text-align:center;text-indent:24.1pt;
mso-char-indent-count:2.0;line-height:20.0pt;mso-line-height-rule:exactly'><b
style='mso-bidi-font-weight:normal'><span style='font-size:12.0pt;font-family:
仿宋;mso-bidi-font-family:仿宋_GB2312'>参赛单位节目报送数量表</span></b><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:12.0pt;font-family:仿宋'><o:p></o:p></span></b></p>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0 width=565
 style='width:423.6pt;border-collapse:collapse;border:none;mso-border-alt:solid black .5pt;
 mso-padding-alt:0cm 5.4pt 0cm 5.4pt;mso-border-insideh:.5pt solid black;
 mso-border-insidev:.5pt solid black'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=406 style='width:304.75pt;border:solid black 1.0pt;border-right:
  solid windowtext 1.0pt;mso-border-alt:solid black .5pt;mso-border-right-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b><span style='font-size:12.0pt;font-family:
  仿宋'>参赛单位分类<span lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
  <td width=158 style='width:118.85pt;border:solid black 1.0pt;border-left:
  none;mso-border-left-alt:solid black .5pt;mso-border-alt:solid black .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b><span style='font-size:12.0pt;font-family:
  仿宋;mso-bidi-font-family:仿宋_GB2312'>各单位节目和作品总数报送限额</span></b><b><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋'><o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=406 style='width:304.75pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .5pt;mso-border-alt:solid black .5pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>1</span><span style='font-size:12.0pt;font-family:仿宋'>、市、区级学生艺术团；<span
  lang=EN-US><o:p></o:p></span></span></p>
  <p class=MsoNormal align=left style='text-align:left;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>2</span><span style='font-size:12.0pt;font-family:仿宋'>、市、区级艺术特色学校；<span
  lang=EN-US><o:p></o:p></span></span></p>
  <p class=MsoNormal align=left style='text-align:left;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>3</span><span style='font-size:12.0pt;font-family:仿宋'>、中小学校的学生数在<span
  lang=EN-US>2000</span>人及以上的单位。</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:仿宋_GB2312'><o:p></o:p></span></p>
  </td>
  <td width=158 style='width:118.85pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .5pt;mso-border-left-alt:solid black .5pt;mso-border-alt:solid black .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋;
  mso-bidi-font-family:仿宋_GB2312;mso-bidi-font-weight:bold'>符合三类条件中任何一类的单位最多不超过<span
  lang=EN-US>25</span>个<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=406 style='width:304.75pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .5pt;mso-border-alt:solid black .5pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:20.0pt;
  mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋'>其他中小学校<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=158 style='width:118.85pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .5pt;mso-border-left-alt:solid black .5pt;mso-border-alt:solid black .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋;
  mso-bidi-font-family:仿宋_GB2312;mso-bidi-font-weight:bold'>最多不超过<span
  lang=EN-US>15</span>个<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:3;mso-yfti-lastrow:yes'>
  <td width=406 style='width:304.75pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .5pt;mso-border-alt:solid black .5pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly'><span
  style='font-size:12.0pt;font-family:仿宋'>幼儿园（只设钢琴专场比赛）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=158 style='width:118.85pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .5pt;mso-border-left-alt:solid black .5pt;mso-border-alt:solid black .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋;
  mso-bidi-font-family:仿宋_GB2312;mso-bidi-font-weight:bold'>最多不超过</span><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋'>5</span><span
  style='font-size:12.0pt;font-family:仿宋'>个</span><span lang=EN-US
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:仿宋_GB2312;
  mso-bidi-font-weight:bold'><o:p></o:p></span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='text-indent:18.05pt;mso-char-indent-count:1.5;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>（三）报名材料送交要求<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>各参赛单位完成网上报名的同时，需完整填写《<span lang=EN-US>2017</span>年浦东新区学生艺术单项比赛节目（作品）汇总表》（见附件），并加盖学校公章，在<span
lang=EN-US>9</span>月<span lang=EN-US>26</span>日前快递到浦东新区青少年活动中心（张杨北路<span
lang=EN-US>3207</span>号<span lang=EN-US>523</span>室），<st1:PersonName
ProductID="郑茜元" w:st="on">郑茜元</st1:PersonName>老师收，<span lang=EN-US>50332080*130</span>。<b
style='mso-bidi-font-weight:normal'>汇总表的电子稿请以文件名“教育署<span lang=EN-US>+</span>学校名”命名，于<span
lang=EN-US>9</span>月<span lang=EN-US>26</span>日前发送到公共邮箱<span lang=EN-US>: <a
href="mailto:pdyshd@163.com">pdyshd@163.com</a></span>。<span lang=EN-US><o:p></o:p></span></b></span></p>

<p class=MsoNormal style='text-indent:24.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:仿宋'>六、赛事活动日程安排<span
lang=EN-US><o:p></o:p></span></span></b></p>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0 width=565
 style='width:423.6pt;border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-padding-alt:0cm 5.4pt 0cm 5.4pt;mso-border-insideh:.5pt solid windowtext;
 mso-border-insidev:.5pt solid windowtext'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:21.0pt'>
  <td width=54 style='width:40.65pt;border:solid windowtext 1.0pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:normal'><span
  style='font-size:12.0pt;font-family:仿宋'>阶段<span lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
  <td width=169 style='width:126.75pt;border:solid windowtext 1.0pt;border-left:
  none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:normal'><span
  style='font-size:12.0pt;font-family:仿宋'>时<span lang=EN-US><span
  style='mso-spacerun:yes'>&nbsp; </span></span>间<span lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
  <td width=181 style='width:135.7pt;border:solid windowtext 1.0pt;border-left:
  none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='text-indent:30.1pt;mso-char-indent-count:2.5;
  line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
  normal'><span style='font-size:12.0pt;font-family:仿宋'>地<span lang=EN-US><span
  style='mso-spacerun:yes'>&nbsp; </span></span>点<span lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
  <td width=161 style='width:120.5pt;border:solid windowtext 1.0pt;border-left:
  none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;text-indent:24.1pt;
  mso-char-indent-count:2.0;line-height:20.0pt;mso-line-height-rule:exactly'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:12.0pt;font-family:
  仿宋'>内 容<span lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;height:56.2pt'>
  <td width=54 rowspan=5 style='width:40.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:56.2pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:normal'><span
  style='font-size:12.0pt;font-family:仿宋'>赛<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:normal'><span
  style='font-size:12.0pt;font-family:仿宋'>前<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:normal'><span
  style='font-size:12.0pt;font-family:仿宋'>安<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:normal'><span
  style='font-size:12.0pt;font-family:仿宋'>排<span lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:56.2pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋'>9</span><span
  style='font-size:12.0pt;font-family:仿宋'>月<span lang=EN-US>21</span>日<span
  lang=EN-US>-9</span>月<span lang=EN-US>25</span>日（周四至周一）<b style='mso-bidi-font-weight:
  normal'><span lang=EN-US><o:p></o:p></span></b></span></p>
  </td>
  <td width=181 style='width:135.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:56.2pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋'>网址<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=161 style='width:120.5pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:56.2pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋'>各学校网上报名<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;text-indent:6.0pt;
  mso-char-indent-count:.5;line-height:20.0pt;mso-line-height-rule:exactly'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋'>9</span><span
  style='font-size:12.0pt;font-family:仿宋'>月<span lang=EN-US>25</span>日前<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=181 style='width:135.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='margin-left:1.1pt;line-height:20.0pt;mso-line-height-rule:
  exactly'><span style='font-size:12.0pt;font-family:仿宋'>快递至张杨北路<span
  lang=EN-US>3207</span>号浦东新区青少年活动中心<span lang=EN-US>523</span>室<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=161 style='width:120.5pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋'>学校上交盖章的报名汇总表<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:3;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;text-indent:6.0pt;
  mso-char-indent-count:.5;line-height:20.0pt;mso-line-height-rule:exactly'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋'>10</span><span
  style='font-size:12.0pt;font-family:仿宋'>月<span lang=EN-US>11</span>日（周三）下午<span
  lang=EN-US>13:30<o:p></o:p></span></span></p>
  </td>
  <td width=181 style='width:135.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='margin-left:1.1pt;line-height:20.0pt;mso-line-height-rule:
  exactly'><span style='font-size:12.0pt;font-family:仿宋'>青少年活动中心（张杨北路<span
  lang=EN-US>3027</span>号<span lang=EN-US>512</span>室）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=161 style='width:120.5pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋'>各承办单位工作会议<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:4;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;text-indent:6.0pt;
  mso-char-indent-count:.5;line-height:20.0pt;mso-line-height-rule:exactly'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋'>10</span><span
  style='font-size:12.0pt;font-family:仿宋'>月<span lang=EN-US>17</span>日（周二）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=181 style='width:135.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='margin-left:1.1pt;line-height:20.0pt;mso-line-height-rule:
  exactly'><span style='font-size:12.0pt;font-family:仿宋'>青少年活动中心（张杨北路<span
  lang=EN-US>3027</span>号<span lang=EN-US>523</span>室）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=161 style='width:120.5pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋'>各承办单位上交承办方案<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:5;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>10</span><span style='font-size:12.0pt;font-family:仿宋'>月<span
  lang=EN-US>20</span>日（周五）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=181 style='width:135.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='margin-left:1.1pt;line-height:20.0pt;mso-line-height-rule:
  exactly'><span style='font-size:12.0pt;font-family:仿宋'>登陆<span lang=EN-US><a
  href="http://www.shng.cn">www.shng.cn</a></span>的公告通知栏<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=161 style='width:120.5pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋'>查询各专场比赛的具体安排<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:6;height:21.0pt'>
  <td width=54 rowspan=10 style='width:40.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:normal'><span
  style='font-size:12.0pt;font-family:仿宋'>比<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:normal'><span
  style='font-size:12.0pt;font-family:仿宋'>赛<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:normal'><span
  style='font-size:12.0pt;font-family:仿宋'>安<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:normal'><span
  style='font-size:12.0pt;font-family:仿宋'>排<span lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>10</span><span style='font-size:12.0pt;font-family:仿宋'>月<span
  lang=EN-US>28</span>日（周六）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=181 rowspan=10 style='width:135.7pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='margin-left:1.1pt;line-height:20.0pt;mso-line-height-rule:
  exactly'><span style='font-size:12.0pt;font-family:仿宋'>各专场的具体比赛场次、报到时间和地点登陆<span
  lang=EN-US><a href="http://www.shng.cn">www.shng.cn</a></span>查询<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=161 rowspan=10 style='width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋'>各专场陆续举行比赛<span
  lang=EN-US><o:p></o:p></span></span></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋'>（少儿模特、工艺、茶艺、陶艺、钢琴、声乐、舞蹈、戏剧、口琴、动漫画、西乐、民乐）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:7;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>10</span><span style='font-size:12.0pt;font-family:仿宋'>月<span
  lang=EN-US>29</span>日（周日）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:8;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>11</span><span style='font-size:12.0pt;font-family:仿宋'>月<span
  lang=EN-US>4</span>日（周六）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:9;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>11</span><span style='font-size:12.0pt;font-family:仿宋'>月<span
  lang=EN-US>5</span>日（周日）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:10;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>11</span><span style='font-size:12.0pt;font-family:仿宋'>月<span
  lang=EN-US>11</span>日（周六）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:11;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>11</span><span style='font-size:12.0pt;font-family:仿宋'>月<span
  lang=EN-US>12</span>日（周日）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:12;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>11</span><span style='font-size:12.0pt;font-family:仿宋'>月<span
  lang=EN-US>18</span>日（周六）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:13;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>11</span><span style='font-size:12.0pt;font-family:仿宋'>月<span
  lang=EN-US>19</span>日（周日）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:14;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>11</span><span style='font-size:12.0pt;font-family:仿宋'>月<span
  lang=EN-US>25</span>日（周六）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:15;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>11</span><span style='font-size:12.0pt;font-family:仿宋'>月<span
  lang=EN-US>26</span>日（周日）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:16;height:21.0pt'>
  <td width=54 rowspan=3 style='width:40.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:normal'><span
  style='font-size:12.0pt;font-family:仿宋'>赛<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:normal'><span
  style='font-size:12.0pt;font-family:仿宋'>后<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:normal'><span
  style='font-size:12.0pt;font-family:仿宋'>安<span lang=EN-US><o:p></o:p></span></span></b></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:normal'><span
  style='font-size:12.0pt;font-family:仿宋'>排<span lang=EN-US><o:p></o:p></span></span></b></p>
  </td>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>12</span><span style='font-size:12.0pt;font-family:仿宋'>月<span
  lang=EN-US>22</span>日（周五）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=181 style='width:135.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='margin-left:1.1pt;text-align:center;
  line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
  font-family:仿宋'>登陆<span lang=EN-US><a href="http://www.shng.cn">www.shng.cn</a><o:p></o:p></span></span></p>
  </td>
  <td width=161 style='width:120.5pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋'>网上查询区级获奖名单及领奖信息<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:17;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>2018</span><span style='font-size:12.0pt;font-family:仿宋'>年<span
  lang=EN-US>1</span>月<span lang=EN-US>6</span>日（周六）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=181 style='width:135.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='margin-left:1.1pt;text-align:center;
  line-height:20.0pt;mso-line-height-rule:exactly'><b style='mso-bidi-font-weight:
  normal'><span style='font-size:12.0pt;font-family:仿宋'>张杨北路<span lang=EN-US>3207</span>号浦东新区青少年活动中心</span></b><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋'><o:p></o:p></span></p>
  </td>
  <td width=161 style='width:120.5pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋'>现场领奖<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:18;mso-yfti-lastrow:yes;height:21.0pt'>
  <td width=169 style='width:126.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:20.0pt;
  mso-line-height-rule:exactly'><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋'>2018</span><span style='font-size:12.0pt;font-family:仿宋'>年<span
  lang=EN-US>5</span>月&#8212;<span lang=EN-US>6</span>月<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=181 style='width:135.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal align=center style='margin-left:1.1pt;text-align:center;
  line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
  font-family:仿宋'>登陆<span lang=EN-US><a href="http://www.shng.cn">www.shng.cn</a><o:p></o:p></span></span></p>
  </td>
  <td width=161 style='width:120.5pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly'><span
  style='font-size:12.0pt;font-family:仿宋'>查询参加市级比赛的选手名单，具体通知另发。<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly'><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:12.0pt;
font-family:仿宋'><span style='mso-spacerun:yes'>&nbsp;&nbsp; </span></span></b><b
style='mso-bidi-font-weight:normal'><span style='font-size:12.0pt;font-family:
仿宋'>七、评奖办法<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span lang=EN-US
style='font-size:12.0pt;font-family:仿宋'>1</span><span style='font-size:12.0pt;
font-family:仿宋'>、本次比赛是<span lang=EN-US>2017</span>年浦东新区学生艺术节系列活动之一。凡报名参加区级赛的学生均可获《<span
lang=EN-US>2017</span>年浦东新区学生艺术单项比赛参赛证书》一份。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly'><span
style='font-size:12.0pt;font-family:仿宋'>单项比赛各项目均设金、银、铜奖若干名，获得区级奖项的学生均颁发获奖证书，同时证书上印有指导教师名字。<b
style='mso-bidi-font-weight:normal'><span lang=EN-US><o:p></o:p></span></b></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span lang=EN-US
style='font-size:12.0pt;font-family:仿宋'>2</span><span style='font-size:12.0pt;
font-family:仿宋'>、本次比赛结束后，部分优秀选手可获得参加<span lang=EN-US>2018</span>年市级学生艺术单项比赛的资格。参加市级比赛的报名办法将在<span
lang=EN-US>2018</span>年<span lang=EN-US>5</span>月&#8212;<span lang=EN-US>6</span>月另行通知。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span lang=EN-US
style='font-size:12.0pt;font-family:仿宋'>3</span><span style='font-size:12.0pt;
font-family:仿宋'>、市、区两级艺术教育特色学校应积极选拔具有艺术特长的学生参加比赛，参赛获奖情况将作为浦东新区艺术教育特色学校考核的依据之一。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly'><span style='font-size:12.0pt;
font-family:仿宋'>特此通知。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly'><span
lang=EN-US style='font-size:12.0pt;font-family:仿宋'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal align=right style='text-align:right;line-height:20.0pt;
mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋'>浦东新区教育局德育处<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=right style='text-align:right;line-height:20.0pt;
mso-line-height-rule:exactly'><span style='font-size:12.0pt;font-family:仿宋'>二○一七年九月十三日<span
lang=EN-US><o:p></o:p></span></span></p>

</div>

<span lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:
"Times New Roman";mso-font-kerning:1.0pt;mso-ansi-language:EN-US;mso-fareast-language:
ZH-CN;mso-bidi-language:AR-SA'><br clear=all style='page-break-before:always;
mso-break-type:section-break'>
</span>

<div class=Section2 style='layout-grid:15.6pt'>

<p class=MsoNormal style='margin-right:153.0pt;line-height:150%'><span
lang=EN-US style='font-size:14.0pt;line-height:150%;font-family:仿宋'><o:p>&nbsp;</o:p></span></p>

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
						<a class="btn btn-primary btn-large" href="${base}/resources/global/upload/2017dxbsxz.doc">
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