<%--
  Created by IntelliJ IDEA.
  User: kangkang
  Date: 2022/9/5
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form>
    <%--    登陆界面--%>
    <spring:message code="userName"/> <input type="text"><br>
    <spring:message code="password"/><input type="password"><br>

    <input type="submit" value="登录">
    已注册,请登录<a href="login.jsp">登录<a/>
    未注册,请注册<a href="register.jsp">注册</a>
</form>
</body>
</html>