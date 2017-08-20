<%--
  Created by IntelliJ IDEA.
  User: ZhangYuanzhuo
  Date: 2016/9/1
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户管理</title>
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid">
    <h2 class="sub-header">用户管理 <a href="/addUser" type="button" class="btn btn-default btn-sm">添加</a></h2>

    <c:if test="${empty userList}">
        <p class="bg-warning">
            <br/>
            User表为空，请<a href="/addUser" type="button" class="btn btn-default btn-sm">添加</a>
            <br/>
            <br/>
        </p>
    </c:if>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>姓名</th>
            <th>密码</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:if test="${!empty userList}">
            <c:forEach items="${userList}" var="user">
                <tr>
                    <td class="column-resize-line">${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>
                        <a href="/userDetail/${user.id}" class="btn btn-sm btn-info" type="button">详情</a>
                        <a href="/updateUser/${user.id}" class="btn btn-sm btn-warning" type="button">修改</a>
                        <a href="/deleteUser/${user.id}" class="btn btn-sm btn-danger" type="button">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>
        </tbody>
    </table>
</div>
</body>
</html>
