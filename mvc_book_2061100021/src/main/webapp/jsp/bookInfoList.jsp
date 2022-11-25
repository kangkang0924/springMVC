<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bookType.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="static/css/bootstrap.min.css">
    <script src="static/js/jquery-3.2.1.js"></script>
    <script src="static/js/bootstrap.min.js" ></script>
    <script src="static/js/js.cookie.js"></script>
    <script>
        $(function () {
            $('#header').load('jsp/admin_header.jsp');
        })
    </script>
  </head>
<body background="img/book1.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div id="header"></div>

<div style="padding: 70px 550px 10px">
    <form   method="post" action="querybook.html" class="form-inline"  id="searchform">
        <div class="input-group">
           <input type="text" placeholder="输入图书名" class="form-control" id="search" name="searchWord" class="form-control">
            <span class="input-group-btn">
                            <input type="submit" value="搜索" class="btn btn-default">
            </span>
        </div>
    </form>
    <script>
        $("#searchform").submit(function () {
            var val=$("#search").val();
            if(val==''){
                alert("请输入关键字");
                return false;
            }
        })
    </script>
</div>
<div style="position: relative;top: 10%">
<c:if test="${!empty succ}">
    <div class="alert alert-success alert-dismissable">
        <button type="button" class="close" data-dismiss="alert"
                aria-hidden="true">
            &times;
        </button>
        ${succ}
    </div>
</c:if>
<c:if test="${!empty error}">
    <div class="alert alert-danger alert-dismissable">
        <button type="button" class="close" data-dismiss="alert"
                aria-hidden="true">
            &times;
        </button>
        ${error}
    </div>
</c:if>
</div>
<div class="panel panel-default" style="width: 90%;margin-left: 5%">
    <div class="panel-heading" style="background-color: #fff">
        <h3 class="panel-title">
            全部图书
        </h3>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>ISBN</th>
                <th>书名</th>
                <th>作者</th>
<%--                <th>出版社</th>--%>
<%--                <th>价格</th>--%>
<%--                <th>剩余数量</th> --%>
                <th>详情</th>
                <th>编辑</th>
                <th>删除</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${bookInfos}" var="bookInfo">
            <tr>
                <td><c:out value="${bookInfo.ISBN}"></c:out></td>
                <td><c:out value="${bookInfo.name}"></c:out></td>
                <td><c:out value="${bookInfo.writer}"></c:out></td>
                <%-- <td><c:out value="${bookInfo.isbn}"></c:out></td>
                <td><c:out value="${bookInfo.price}"></c:out></td>
                <td><c:out value="${bookInfo.number}"></c:out></td> --%>
                <td><a href="${pageContext.request.contextPath}/Book/showBook?ISBN=${bookInfo.ISBN}">
                    <button type="button" class="btn btn-success btn-xs">详情</button>
                </a></td>
                <td><a href="${pageContext.request.contextPath}/Book/updateBook?ISBN=${bookInfo.ISBN}"><button type="button" class="btn btn-info btn-xs">编辑</button></a></td>
                <td><a href="${pageContext.request.contextPath}/Book/deleteBook?ISBN=${bookInfo.ISBN}"><button type="button" class="btn btn-danger btn-xs">删除</button></a></td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
