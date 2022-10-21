<%--
  Created by IntelliJ IDEA.
  User: kangkang
  Date: 2022/9/5
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>  <meta charset="utf8">
    <title>注册</title>

    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">

    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
</head>

<body>
<form action="${pageContext.request.contextPath}/register">
    <table>
        <tr>
            <td>登录名:</td>
            <td><input type="txtLoginName" placeholder="登录名" /></td>
            <td></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input type="txtPassword" placeholder="密码" /></td>
            <td></td>
        </tr>
        <tr>
            <td>确认密码:</td>
            <td><input type="password" placeholder="确认密码" /></td>
            <td></td>
        </tr>
        <tr>
            <td>电子邮箱:</td>
            <td><input type="email" placeholder="电子邮箱" /></td>
            <td></td>
        </tr>
        <tr>
            <td>昵称:</td>
            <td><input type="text" placeholder="昵称" /></td>
            <td></td>
        </tr>
        <tr>
            <td>出生日期:</td>
            <td><input type="date" placeholder="出生日期" /></td>
            <td></td>
        </tr>
        <tr>
            <td>性别:</td>
            <td>
                <input type="radio" value="女" name="radSex" checked /> 女
                <input type="radio" value="男" name="radSex" /> 男 </td>
            <td></td>
        </tr>
        <tr>
            <td>爱好:</td>
            <td>
                <input type="checkbox" value="马术"  /> 马术
                <input type="checkbox" value="击剑"  /> 击剑
                <input type="checkbox" value="潜水"  /> 潜水
                <input type="checkbox" value="滑雪"  /> 滑雪</td>
            <td></td>
        </tr>
        <tr>
            <td>兴趣:</td>
            <td>
                <select multiple>
                    <option value="绘画">绘画</option>
                    <option value="钢琴">钢琴</option>
                    <option value="阅读">阅读</option>
                </select>
                <datalist>

                </datalist>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>电话号码:</td>
            <td><input type="tel" placeholder="电话号码" /></td>
            <td></td>
        </tr>
        <tr>
            <td>个人主页:</td>
            <td><input type="url" placeholder="个人主页" /></td>
            <td></td>
        </tr>
        <tr>
            <td>个人简介:</td>
            <td><textarea rows="5" cols="30" placeholder="个人简介"></textarea></td>
            <td></td>
        </tr>
        <tr>
            <td>个人简历:</td>
            <td><input type="file" name="file" /> </td>
            <td></td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <button type="submit">注册</button>
                <button type="reset">取消</button>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                是否已经注册？去<a href="login">登录</a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>

<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--这是注册页面--%>

<%--</body>--%>
<%--</html>--%>
