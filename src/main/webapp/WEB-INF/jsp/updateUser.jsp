<%--
  Created by IntelliJ IDEA.
  User: ZhangYuanzhuo
  Date: 2016/9/3
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>更新用户</title>
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <form action="/updateUserPost" method="post">
        <h2>更新用户信息</h2>
        <div class="form-group">
            <label for="id">Id</label>
            <input id="id" name="id" class="form-control" type="text" autofocus="" required="" placeholder="编号" value="${user.id}" readonly>
        </div>
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" autofocus="" required="" placeholder="姓名" value="${user.username}">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password" autofocus="" required="" placeholder="密码" value="${user.password}">
        </div>
        <div class="form-group">
            <label for="phonenumber">Phone number</label>
            <input id="phonenumber" name="phonenumber" class="form-control" type="text" autofocus="" required="" placeholder="电话号码" value="${user.phonenumber}">
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">提交</button>
    </form>
</div>
</body>
</html>
