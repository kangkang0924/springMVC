<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>

<br/>
<a href="${pageContext.request.contextPath}/hello/register">注册</a><br/>
<a href="${pageContext.request.contextPath}/hello/login">登录</a><br/>
<a href="${pageContext.request.contextPath}/hello/login2/zhangsan">REST取路径地址</a><br/>
<a href="${pageContext.request.contextPath}/user/userUpdate">用户信息修改</a><br/>
<a href="Book/updateBook">修改图书</a>
</body>
</html>