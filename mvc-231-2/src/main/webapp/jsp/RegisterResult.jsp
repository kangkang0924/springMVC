<%--
  Created by IntelliJ IDEA.
  User: kangkang
  Date: 2022/11/4
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <td>用户名:</td>
        <td>${userForm.username}</td>
        <td></td>
    </tr>
    <tr>
        <td>密码:</td>
        <td>${userForm.password}</td>
        <td></td>
    </tr>

    <tr>
        <td>年龄:</td>
        <td>${userForm.age}</td>
        <td></td>
    </tr>
    <tr>
        <td>邮箱:</td>
        <td>${userForm.email}</td>
        <td></td>
    </tr>

    <tr>
        <td>电话:</td>
        <td>${userForm.phone}</td>
        <td></td>
    </tr>
</table>
</body>
</html>
