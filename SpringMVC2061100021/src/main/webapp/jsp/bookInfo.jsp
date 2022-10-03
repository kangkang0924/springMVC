<%--
  Created by IntelliJ IDEA.
  User: kangkang
  Date: 2022/9/21
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书添加页面</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/Book/addBookInfo" method="post">
    <%--    图书名称:<input type="text" name="name"><br/>--%>
    <%--    ISBN:<input type="text" name="ISBN"><br/>--%>
    <%--    作者:<input type="text" name="author"><br/>--%>
    <%--    <input type="submit" value="提交">--%>
        欢迎登录${msg}
    <table>

        <tr>
            <td>图书编号:</td>
            <td><input type="text" name="id"/><span style="color: red;">*</span></td>
            <td></td>
        </tr>
        <tr>
            <td>图书名称:</td>
            <td><input type="text" name="name"/><span style="color: red;">*</span></td>
            <td></td>
        </tr>
        <tr>
            <td>图书类型:</td>
            <td><input type="text" name="type"/><span style="color: red;">*</span></td>
            <td></td>
        </tr>
        <tr>
            <td>作者:</td>
            <td><input type="text" name="author"/><span style="color: red;">*</span></td>
            <td></td>
        </tr>
        <tr>
            <td>价格:</td>
            <td><input type="text" name="price"/><span style="color: red;">*</span></td>
            <td></td>
        </tr>
        <tr>
            <td>ISBN:</td>
            <td><input type="text" name="ISBN"/><span style="color: red;">*</span></td>
            <td></td>
        </tr>
        <tr>
            <td>现存量:</td>
            <td><input type="text" name="newQuantity"/><span style="color: red;">*</span></td>
            <td></td>
        </tr>
        <tr>
            <td>总库存:</td>
            <td><input type="text" name="inventory"/><span style="color: red;">*</span></td>
            <td></td>
        </tr>
        <tr>
            <td>出版社:</td>
            <td><input type="text" name="press"/><span style="color: red;">*</span></td>
            <td></td>
        <tr>
            <td>书架:</td>
            <td><input type="text" name="bookshelf"/><span style="color: red;">*</span></td>
            <td></td>
        </tr>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="提交">
            </td>
        </tr>

    </table>
</form>
</body>
</html>
