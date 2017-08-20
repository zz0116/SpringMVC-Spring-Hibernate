<%--
  Created by IntelliJ IDEA.
  User: ZhangYuanzhuo
  Date: 2016/9/3
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户信息</title>
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid">
    <h2 class="sub-header">用户详情</h2>

    <table class="table table-striped">
        <thead>
        <tr>
            <td>ID</td>
            <td>姓名</td>
            <td>密码</td>
            <td>电话号码</td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.password}</td>
            <td>${user.phonenumber}</td>
        </tr>
        </tbody>
    </table>
    <a href="/userManager" class="btn btn-lg btn-primary btn-block">返回</a>
</div>
</body>
</html>
