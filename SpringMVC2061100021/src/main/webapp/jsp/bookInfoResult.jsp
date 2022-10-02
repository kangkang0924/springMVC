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
图书名称:${BookInfo.name} <br/>
I S B N:${BookInfo.ISBN}<br/>
作   者:${BookInfo.author}<br/>
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
        <td>图书类别:</td>
        <td>${BookInfo.type}</td>
        <td></td>
    </tr>
    <tr>
        <td>作者:</td>
        <td>${BookInfo.author}</td>
        <td></td>
    </tr>
    <tr>
        <td>价格:</td>
        <td>${BookInfo.price}</td>
        <td></td>
    </tr>
    <tr>
        <td>I S B N:</td>
        <td>${BookInfo.ISBN}</td>
        <td></td>
    </tr>
    <tr>
        <td>现存量:</td>
        <td>${BookInfo.newQuantity}</td>
        <td></td>
    </tr>
    <tr>
        <td>总库存:</td>
        <td>${BookInfo.inventory}</td>
        <td></td>
    </tr>
    <tr>
        <td>出版社:</td>
        <td>${BookInfo.press}</td>
        <td></td>
    </tr>
    <tr>
        <td>书架:</td>
        <td>${BookInfo.bookshelf}</td>
        <td></td>
    </tr>

</table>
</body>
</html>
