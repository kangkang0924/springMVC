<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: kangkang
  Date: 2022/11/4
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<fm:form modelAttribute="userForm" action="${pageContext.request.contextPath}/user/UserRegister" method="post">
    用户名: <fm:input path="username"/><fm:errors style="color:red;" path="username"></fm:errors> <br/><br/>
    密码: <fm:input path="password"/><fm:errors style="color:red;" path="password"></fm:errors><br/><br/>
    年龄: <fm:input path="age"/><fm:errors style="color:red;" path="age"></fm:errors><br/><br/>
    电子邮箱: <fm:input path="email"/><fm:errors style="color:red;" path="email"></fm:errors><br/><br/>
    电话: <fm:input path="phone"/><fm:errors style="color:red;" path="phone"></fm:errors><br/><br/>


    <input type="submit" value="保存">
</fm:form>
</body>
</html>
