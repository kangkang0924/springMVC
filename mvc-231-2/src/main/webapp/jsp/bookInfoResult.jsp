<%--
  Created by IntelliJ IDEA.
  User: kangkang
  Date: 2022/9/21
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
hello!${msg}
<table>
    <tr>
        <td>图书编号:</td>
        <td>${BookInfo.id}</td>
        <td></td>
    </tr>
    <tr>
        <td>图书名称:</td>
        <td>${BookInfo.name}</td>
        <td></td>
    </tr>

    <tr>
        <td>价格:</td>
        <td>${BookInfo.price}</td>
        <td></td>
    </tr>
    <tr>
        <td>日期:</td>
        <td>${BookInfo.pubDate}</td>
        <td></td>
    </tr>

    <tr>
        <td>适用人群:</td>
        <td>${BookInfo.group}</td>
        <td></td>
    </tr>
</table>
</body>
</html>
