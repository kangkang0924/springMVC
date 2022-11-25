<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'login.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <script src="static/js/jquery-3.2.1.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
    <script src="static/js/js.cookie.js"></script>
    <style>
        #login {
            height: 50%;
            width: 28%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 5%;
            display: block;
            position: center;
        }

        .form-group {
            margin-bottom: 0;
        }

        * {
            padding: 0;
            margin: 0;
        }
    </style>
</head>

<body background="static/img/timg.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<h2 style="text-align: center; color: white; font-family: '华文行楷'; font-size: 400%">沈工图书馆管理信息系统</h2>
<form action="hello/varifyLogin">
    <a href="i18n?locale=zh_CN"><spring:message code="z"></spring:message></a>
    <a href="i18n?locale=en_US"><spring:message code="e"></spring:message></a><br>
    <%--         <spring:message code="username"></spring:message>   <input type="text" name="username"> <br>
            <spring:message code="password"></spring:message>  <input type="text" name="password"> <br>
     --%>
    <div class="panel panel-default" id="login">
        <div class="panel-heading" style="background-color: #fff">
            <h3 class="panel-title">请登录</h3>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <spring:message code="username"></spring:message>
                <input type="text" class="form-control" name="username" placeholder="请输入账号">
            </div>
            <div class="form-group">
                <spring:message code="password"></spring:message>
                <input type="password" class="form-control" name="password" placeholder="请输入密码">
            </div>
            <div class="checkbox text-left">
                <label>
                    <input type="checkbox" id="remember">记住密码
                </label>
            </div>
            <p style="text-align: right;color: red;position: absolute" id="info"></p><br/>
            <input type="submit" class="btn btn-primary  btn-block" value=<spring:message
                    code="login"></spring:message>>
        </div>
    </div>


</form>

</body>
</html>
