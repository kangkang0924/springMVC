<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bookResult.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

  <body>
    当前登录用户：${sessionScope.msg}<br><br>
    图书名称：${requestScope.bookInfo.name} <br><br>
   isbn：${bookInfo.ISBN} <br><br>
     作者：${bookInfo.writer} <br><br>
     适用人群：${bookInfo.group} <br><br> 
      库存：${bookInfo.has} <br><br>
     出版社：${bookInfo.pub} <br><br> 
     图书类型：${bookInfo.type} <br><br> 
     价格：${bookInfo.price} <br><br>
     出版日期：${bookInfo.pubDate} <br><br>
  </body>
</html>
