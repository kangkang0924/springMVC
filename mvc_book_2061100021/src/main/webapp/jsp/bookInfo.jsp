<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'bookInfo.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <script src="static/js/jquery-3.2.1.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
    <script src="static/js/js.cookie.js"></script>
    <script>
        $(function () {
            $('#header').load('jsp/admin_header.jsp');
        })
    </script>
</head>

<body background="img/sky.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<div id="header" style="padding-bottom: 80px"></div>
<div class="col-xs-6 col-md-offset-3" style="position: relative;">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">编辑《 $》</h3>
        </div>
        <div class="panel-body">
            <fm:form modelAttribute="bookInfo" action="Book/addBook" method="post">
                <div class="input-group">
                    <span class="input-group-addon" style="width:200px">书名</span>
                    <fm:input class="form-control" path="name" style="width:200px"/>
                    <font color="red"><fm:errors path="name"></fm:errors></font><br><br>
                </div>
                <div class="input-group">
                    <span class="input-group-addon" style="width:200px">ISBN</span>
                    <fm:input class="form-control" path="ISBN" style="width:200px"/><font color="red"><fm:errors
                        path="ISBN"></fm:errors></font>
                </div>
                <div class="input-group">
                    <span class="input-group-addon" style="width:200px">作者</span>
                    <fm:input class="form-control" path="writer" style="width:200px"/><font color="red"><fm:errors
                        path="writer"></fm:errors></font>
                </div>
                <div class="input-group">
                    <span class="input-group-addon" style="width:200px">适用人群</span>
                    <fm:checkbox class="form-check-input" path="group" value="专科" label="专科"/>&nbsp;&nbsp;
                    <fm:checkbox class="form-check-input" path="group" value="本科" label="本科"/> &nbsp;&nbsp;
                    <fm:checkbox class="form-check-input" path="group" value="硕士" label="硕士"/>
                </div>
                <div class="input-group">
                    <span class="input-group-addon" style="width:200px">库存</span>
                    <fm:radiobutton path="has" value="有" label="无"/>&nbsp;&nbsp;
                    <fm:radiobutton path="has" value="无" label="有"/>
                </div>
                <div class="input-group">
                    <span class="input-group-addon" style="width:200px">图书类型</span>
                    <fm:select path="type">
                        <fm:options items="${bookTypeList}" itemLabel="typeName" itemValue="typeId"/>
                    </fm:select>
                </div>
                <div class="input-group">
                    <span class="input-group-addon" style="width:200px">价格</span>
                    <fm:input class="form-control" path="price" style="width:200px"/><font color="red"><fm:errors
                        path="price"></fm:errors></font><br><br>
                </div>
                <div class="input-group">
                    <span class="input-group-addon" style="width:200px">出版日期</span>
                    <fm:input class="form-control" path="pubDate" style="width:200px"/><br><br>
                </div>
                <div class="input-group">
                    <span class="input-group-addon" style="width:200px">手机号码</span>
                    <fm:input class="form-control" path="phone" style="width:200px"/><font color="red"><fm:errors
                        path="phone"></fm:errors></font><br><br>
                </div>
                <input type="submit" class="btn btn-success btn-sm" class="text-left" value="保存"><br><br>
            </fm:form>
        </div>
    </div>
</div>

</body>
</html>
