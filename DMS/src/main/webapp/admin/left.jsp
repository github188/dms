<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <base href="<%=basePath%>">  
    <title>My JSP 'left.jsp' starting page</title>
    
	
	<link href="css/left.css" type="text/css" rel="stylesheet" />
	<script src="js/jquery-1.4.2.min.js"></script>
	<script src="js/left.js"></script>

  </head>
  
  <body>
    <div class="all"><img src="images/menu_plus.gif" id="allmenu" /></div>
		<div class="main">
		<div class="menus">
		<ul id="menu">
			<li class="title"><a href="javascript:void(0);"><b>网站设置</b></a>
			<ul class="menuhide">
				<li><img src="images/menu_arrow.gif" />
				&nbsp;<a href="javascript:void(0)" target="mainFrame">系统设置</a></li>
				<li><img src="images/menu_arrow.gif" />
				&nbsp;<a href="__URL__/user" target="mainFrame">管理员设置</a></li>
			</ul>
			</li>
			<li class="title"><a href="javascript:void(0)"><b>首页设置</b></a>
			<ul class="menuhide">
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="__URL__/photo" target="mainFrame">滚动图片</a></li>
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="__URL__/flink" target="mainFrame">友情链接</a></li>
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="__URL__/hzqy" target="mainFrame">合作企业</a></li>
			</ul>
			</li>
		
			<li class="title"><a href="javascript:;" target="mainFrame"><b>数据编码管理</b></a>
			<ul class="menuhide">
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="SjbmAction/querySjbmList.do" target="mainFrame">查询数据编码</a></li>
					<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="SjbmAction/toAdd.do" target="mainFrame">增加数据编码</a></li>
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="SjbmAction/fbzt.do" target="mainFrame">发布数据编码</a></li>
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="goodtypeslist" target="mainFrame">查看历史数据编码</a></li>
				
			</ul>
			</li>
			<li class="title"><a href="javascript:;" target="mainFrame"><b>用户管理</b></a>
			<ul class="menuhide">
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="preuseradd" target="mainFrame">新增用户</a></li>
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="userlist" target="mainFrame">查看用户</a></li>
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="rolelist" target="mainFrame">查看权限</a></li>
			</ul>
			</li>
			<li class="title"><a href="javascript:;" target="mainFrame"><b>技术支持</b></a>
			<ul class="menuhide">
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="goodboardslist" target="mainFrame">留言列表</a></li>
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="orderlist" target="mainFrame">订单列表</a></li>
			</ul>
			</li>
			<li class="title"><a href="javascript:;" target="mainFrame"><b>公司介绍</b></a>
			<ul class="menuhide">
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="__URL__/intro/act/zc" target="mainFrame">总经理致辞</a></li>
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="__URL__/intro" target="mainFrame">公司简介</a></li>
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="__URL__/intro/act/lc" target="mainFrame">发展历程</a></li>
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="__URL__/intro/act/ry" target="mainFrame">公司荣誉</a></li>
			</ul>
			</li>
			<li class="title"><a href="javascript:;" target="mainFrame"><b>文章管理</b></a>
			<ul class="menuhide">
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="__URL__/article" target="mainFrame">新闻列表</a></li>
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="__URL__/article_add" target="mainFrame">添加新闻</a></li>
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="__URL__/article_type" target="mainFrame">新闻分类列表</a></li>
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="__URL__/article_type_add" target="mainFrame">添加新闻分类</a></li>
			</ul>
			</li>
			<li class="title"><a href="javascript:;" target="mainFrame"><b>图片管理</b></a>
		
			<ul class="menuhide">
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="__URL__/pic" target="mainFrame">图片列表</a></li>
			</ul>
			
		
			<li class="title"><a href="javascript:;" target="mainFrame"><b>在线订购</b></a>
			<ul class="menuhide">
				<li><img src="images/menu_arrow.gif" />&nbsp;<a
					href="__URL__/gbook" target="mainFrame">订购列表</a></li>
			</ul>
			</li>
			<li class="title"><a href="javascript:void(0);"><b>关于XFCMS</b></a></li>
		</ul>
		</div>
		</div>
  </body>
</html>
