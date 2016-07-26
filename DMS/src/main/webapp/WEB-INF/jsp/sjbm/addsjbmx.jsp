<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html public "-//w3c//dtd xhtml 1.0 transitional//en" "http://www.w3.org/tr/xhtml1/dtd/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<link rel="stylesheet" type="text/css" href="css/general.css" />
<script src="js/table.js"></script><!-- 表格变色的js -->
<script src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">

</script>
</head>

<body>
<div class="top">增加数据编码项</div>
<div class="main">
当前数据库位置：<input type="text" id="tableName" value="${tableName }" readonly="readonly">
<form action="SjbmxAction/addSjbmx.do?tableName= ${tableName}" method="post">
<table width="100%" border="1" cellpadding="0" cellspacing="0">
<tr>
	
							<th class="hidden-480 sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Email" style="width: 261px;">
								标准编码值
							</th>
							<th class="hidden-480 sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Email" style="width: 261px;">
								全称
							</th>
							<th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Points: activate to sort column ascending" style="width: 109px;">
								简称
							</th>
							<th class="hidden-480 sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Email" style="width: 261px;">
								别名
							</th>
							<th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Points: activate to sort column ascending" style="width: 109px;">
								说明
							</th><th class="hidden-480 sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Email" style="width: 261px;">
								其他信息
							</th>
							
						</tr>
						
							<tr class="gradeX odd">
								
								<td class="hidden-480 " ><input class="sjbmx" type="text" name=f_C_X_bzbmz></td>
								<td class="hidden-480 "><input class="sjbmx"  type="text" name="f_C_X_qc"></td>
								<td class="hidden-480 "><input class="sjbmx" type="text" name="f_C_X_jc"></td>
								<td class="hidden-480 "><input class="sjbmx" type="text" name="f_C_X_bm"></td>
								<td class="hidden-480 "><input class="sjbmx" type="text" name="f_C_X_sm"></td>
								<td class="hidden-480 "><input class="sjbmx" type="text" name="f_C_X_qtxx"></td>
								
							</tr>
							<tr><td colspan="7"><input type="submit" value="提交"></td></tr>
						
					
</table>

</form>

</div>
<div class="footer">

</div>
</body>
</html>
