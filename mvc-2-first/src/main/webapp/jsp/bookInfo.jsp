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


<fm:form modelAttribute="bookInfo" action="${pageContext.request.contextPath}/Book/addBookInfo" method="post">
    书名: <fm:input path="name"/><fm:errors path="name"></fm:errors> <br/><br/>
    ISBN: <fm:input path="ISBN"/><br/><br/>
    作者: <fm:input path="writer"/><br/><br/>
    价格: <fm:input path="price"/><br/><br/>
    出版日期: <fm:input path="pubDate"/><br/><br/>

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
    </fm:select><br/><br/>
    <input type="submit" value="保存">
</fm:form>

</body>
</html>
