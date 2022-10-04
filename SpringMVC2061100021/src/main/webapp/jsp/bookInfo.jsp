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
            <td><label for="id">图书编号:</label></td>
            <td><input id="id" type="text" name="id" placeholder="请输入图书编号" /><br></td>
        </tr>
        <tr>
            <td><label for="name">图书名称:</label></td>
            <td><input id="name" type="text" name="name" placeholder="请输入图书名称" /><br></td>
        </tr>

        <tr>
            <td><label for="price">图书价格:</label></td>
            <td><input id="price" type="text" name="price" placeholder="请输入图书价格" /><br></td>
        </tr>

        <tr>
            <td><label for="total">总库存:</label></td>
            <td><input id="total" type="radio" name="total" value="有" checked />有
                <input type="radio" name="total" value="有">无
            </td>
        </tr>
        <tr>
            <td><label for="pubName">出版社：</label></td>
            <td>
                <select name="pubName" id="pubName">
                    <option disabled="disabled" value="">-请选择-</option>
                    <option value="北京理工大学出版社">北京理工大学出版社</option>
                    <option value="清华大学出版社">清华大学出版社</option>
                    <option value="人民邮电出版社">人民邮电出版社</option>
                </select></td>
        </tr>


        <tr>
            <td></td>
            <td><input type="submit" value="提交" />
                <input type="reset" value="重置" /> <br>
            </td>
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
