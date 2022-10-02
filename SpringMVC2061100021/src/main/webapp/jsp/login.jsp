<%--
  Created by IntelliJ IDEA.
  User: kangkang
  Date: 2022/9/5
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/varifyLogin">
    <%--    登陆界面--%>
    用户名:<input type="text" name="username"><br>
    密 码:<input type="password" name="password"><br>

    <input type="submit" value="登录">
        已注册,请登录<a href="${pageContext.request.contextPath}/login">登录</a>
        未注册,请注册<a href="${pageContext.request.contextPath}/register">注册</a>
</form>
</body>
</html>
