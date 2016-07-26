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
$(document).ready(function(){
	$("button.query").click(function(){
		var value = $("#submitValue").attr("value");;
		var url = "querySjbmxByName.do?str="+value+"&tableName="+$("input#tableName").attr("value");
		window.location.href=url;
	})
	
	$("button.zjsjbmx").click(function(){
		
		var url = "toAddSjbmx.do?tableName="+$("input#tableName").attr("value");
		window.location(url);
	})
	
	$("button.scsjbmx").click(function(){
		var idArr = new Array();
		
		$("input:checkbox").each(function(){
			if($(this).attr("checked")==true){
				idArr.push($(this).val());
				
			}
		});
		 var url = "deleteSjbmx.do?arr="+idArr+"&tableName="+$("input#tableName").val();
		window.location(url); 
		alert("删除成功！！")
	})
	
	
	
})
</script>
</head>

<body>
<div class="top">数据编码项</div>
<div class="main">
当前数据库位置：<input type="text" id="tableName" value="${tableName }" readonly="readonly">
<p align="center">  <button class="zjsjbmx">增加数据编码项</button><button class="scsjbmx">删除数据编码项</button> <input id="submitValue"type="text" value="请输入关键词" 
onFocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999" > <button class="query">查询</button></p>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
<tr>
	<th class="hidden-480 sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Email" style="width: 261px;">
								序号
							</th>
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

    	
    	<%-- <c:if test="${not empty sjbmxList.list}"> --%>
					
					
					
					
						<c:forEach items="${sjbmxList.list}" var="sjbmx" varStatus="vs">
						
							<tr class="gradeX odd">
								<td class=" sorting_1">
								
									${sjbmx.f_C_X_id}
									<input type="checkbox" class="ssjbmx"  value="${sjbmx.f_C_X_id}">
									
								</td>
								
								<td class="hidden-480 ">${sjbmx.f_C_X_bzbmz}</td>
								<td class="hidden-480 ">${sjbmx.f_C_X_qc}</td>
								<td class="hidden-480 ">${sjbmx.f_C_X_jc}</td>
								<td class="hidden-480 ">${sjbmx.f_C_X_bm}</td>
								<td class="hidden-480 ">${sjbmx.f_C_X_sm}</td>
								<td class="hidden-480 ">${sjbmx.f_C_X_qtxx}</td>
								
							</tr>
						</c:forEach>    
					<%-- </c:if> --%>
					
</table>
<p align="center">
			<c:if test="${sjbmxList.hasPreviousPage}">
                        <td><a href="${pageContext.request.contextPath}/SjbmxAction/querySjbmxList.do?pageNum=${sjbmxList.prePage}">前一页</a></td>
                    </c:if>
                    <c:forEach items="${sjbmxList.navigatepageNums}" var="nav">
                        <c:if test="${nav == sjbmxList.pageNum}">
                            <td style="font-weight: bold;">${nav}</td>
                        </c:if>
                        <c:if test="${nav != sjbmxList.pageNum}">
                            <td><a href="${pageContext.request.contextPath}/SjbmxAction/querySjbmxList.do?pageNum=${nav}">${nav}</a></td>
                        </c:if>
                    </c:forEach>
                    <c:if test="${sjbmxList.hasNextPage}">
                        <td><a href="${pageContext.request.contextPath}/SjbmxAction/querySjbmxList.do?pageNum=${sjbmxList.nextPage}">下一页</a></td>
                    </c:if>
</p>
</div>
<div class="footer">

</div>
</body>
</html>
