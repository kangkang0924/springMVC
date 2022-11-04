<%--
  Created by IntelliJ IDEA.
  User: kangkang
  Date: 2022/9/21
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>修改</title>
</head>
<body>


<fm:form modelAttribute="userForm" action="${pageContext.request.contextPath}/user/userUpdate" method="post">
    昵称: <fm:input path="name"/><br/><br/>
    真是姓名: <fm:input path="username"/><br/><br/>
    年龄: <fm:input path="age"/><br/><br/>
    电话: <fm:input path="phone"/><br/><br/>
    爱好:<fm:checkbox path="hobby" value="吃饭" label="吃饭"/>&nbsp;&nbsp;
    <fm:checkbox path="hobby" value="学Java" label="学Java"/>&nbsp;&nbsp;
    <fm:checkbox path="hobby" value="打豆豆" label="打豆豆"/><br/><br/>
    性别:
    <fm:radiobutton path="gender" value="男" label="男"/>
    <fm:radiobutton path="gender" value="女" label="女"/><br/><br/>

    <fm:select path="education">
        <fm:option value="本科" label="本科"/>
        <fm:option value="专科" label="专科"/>
        <fm:option value="硕士" label="硕士"/>
    </fm:select><br/><br/>
    <input type="submit" value="修改">
</fm:form>

</body>
</html>
