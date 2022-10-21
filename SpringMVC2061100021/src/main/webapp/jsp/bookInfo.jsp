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
    <title>图书添加页面</title>
</head>
<body>

<%--<form action="${pageContext.request.contextPath}/Book/addBookInfo" method="post">--%>
<%--    &lt;%&ndash;    图书名称:<input type="text" name="name"><br/>&ndash;%&gt;--%>
<%--    &lt;%&ndash;    ISBN:<input type="text" name="ISBN"><br/>&ndash;%&gt;--%>
<%--    &lt;%&ndash;    作者:<input type="text" name="author"><br/>&ndash;%&gt;--%>
<%--    &lt;%&ndash;    <input type="submit" value="提交">&ndash;%&gt;--%>
<%--        欢迎登录${msg}--%>
<%--    <table>--%>

<%--        <tr>--%>
<%--            <td><label for="id">图书编号:</label></td>--%>
<%--            <td><input id="id" type="text" name="id" placeholder="请输入图书编号" /><br></td>--%>
<%--        </tr>--%>

<%--        <tr>--%>
<%--            <td><label for="name">图书名称:</label></td>--%>
<%--            <td><input id="name" type="text" name="name" placeholder="请输入图书名称" /><br></td>--%>
<%--        </tr>--%>

<%--        <tr>--%>
<%--            <td><label for="price">图书价格:</label></td>--%>
<%--            <td><input id="price" type="text" name="price" placeholder="请输入图书价格" /><br></td>--%>
<%--        </tr>--%>

<%--        <tr>--%>
<%--            <td><label for="total">总库存:</label></td>--%>
<%--            <td><input id="total" type="radio" name="total" value="有" checked />有--%>
<%--                <input type="radio" name="total" value="有">无--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td><label for="pubName">出版社：</label></td>--%>
<%--            <td>--%>
<%--                <select name="pubName" id="pubName">--%>
<%--                    <option disabled="disabled" value="">-请选择-</option>--%>
<%--                    <option value="北京理工大学出版社">北京理工大学出版社</option>--%>
<%--                    <option value="清华大学出版社">清华大学出版社</option>--%>
<%--                    <option value="人民邮电出版社">人民邮电出版社</option>--%>
<%--                </select></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td><label for="nature">适用人群:</label></td>--%>
<%--            <td><input id="nature" type="checkbox" name="nature" value="专科" checked />专科--%>
<%--                <input type="checkbox" name="nature" value="本科">本科--%>
<%--                <input type="checkbox" name="nature" value="硕士">硕士<br>--%>
<%--            </td>--%>
<%--        </tr>--%>

<%--        <tr>--%>
<%--            <td></td>--%>
<%--            <td><input type="submit" value="提交" />--%>
<%--                <input type="reset" value="重置" /> <br>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </table>--%>
<%--</form>--%>
<fm:form modelAttribute="bookInfo" action="${pageContext.request.contextPath}/Book/addBookInfo" method="post">
    书名: <fm:input path="name"/><br/><br/>
    ISBN: <fm:input path="ISBN"/><br/><br/>
    作者: <fm:input path="writer"/><br/><br/>

    适用人群:<fm:checkbox path="group" value="专科" label="专科"/>&nbsp;&nbsp;
    <fm:checkbox path="group" value="本科" label="本科"/>&nbsp;&nbsp;
    <fm:checkbox path="group" value="硕士" label="硕士"/><br/><br/>
    库存:
    <fm:radiobutton path="hsp" value="有" label="有"/>
    <fm:radiobutton path="hsp" value="无" label="无"/><br/><br/>
    出版社:
    <fm:select path="pub">
        <fm:option value="1">清华大学出版社</fm:option>
        <fm:option value="2">机械工业出版社</fm:option>
        <fm:option value="3">人民邮电出版社</fm:option>
    </fm:select><br/><br/>
    图书类型:
    <fm:select path="type">
        <fm:options items="${bookTypeList}" itemLabel="typeName" itemValue="typeId"/>
    </fm:select>
    <input type="submit" value="保存">
</fm:form>

</body>
</html>
