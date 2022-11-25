<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>login</title>
</head>
<body>
<form>
    <a href="i18n?locale=zh_CN"><spring:message code="z"/> </a><br>
    <a href="i18n?locale=en_US"><spring:message code="e"/> </a><br>
    <%--    登陆界面--%>
    <spring:message code="userName"/> <input type="text"><br>
    <spring:message code="password"/><input type="password"><br>

    <input type="submit" value=<spring:message code="button_login"/>>
    已注册,请登录<a href="login.jsp">登录</a>
    未注册,请注册<a href="register.jsp">注册</a>
</form>
</body>
</html>
