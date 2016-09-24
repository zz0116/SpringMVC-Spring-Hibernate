<%--
  Created by IntelliJ IDEA.
  User: Zhang Yuangzhuo
  Date: 2016/9/1
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>添加用户</title>
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <form action="/addUserPost" method="post">
        <h2>添加用户</h2>
        <div class="form-group">
            <label>姓名</label>
            <input name="username" class="form-control" type="text" autofocus="" required="">
        </div>
        <div class="form-group">
            <label>密码</label>
            <input name="password" class="form-control" type="password" autofocus="" required="">
        </div>
        <div class="form-group">
            <label for="phonenumber">Phone number</label>
            <input id="phonenumber" name="phonenumber" class="form-control" type="phonenumber" autofocus="" required="" placeholder="电话号码">
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">提交</button>
    </form>
</div>
</body>
</html>
