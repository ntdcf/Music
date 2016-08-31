<%--
  Created by IntelliJ IDEA.
  User: luohao
  Date: 2016/8/29
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>

<div>
    <nav class="navbar navbar-default navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <img class="navbar-brand" src="images/logo.png">
            </div>
            <div class="navbar-header">
                <a class="navbar-brand" href="#">畅音阁</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="#">发现音乐<span class="sr-only">(current)</span></a></li>
                    <li><a href="#">我的收藏</a></li>
                    <li><a href="#">我的评论</a></li>
                    <li><a href="#">我的分享</a></li>
                </ul>
                <form class="navbar-form navbar-right" action="MusicSearch" role="search">
                    <div class="form-group">
                        <input type="text" name="music_info" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default glyphicon glyphicon-search search"></button>
                </form>
            </div>
        </div>
    </nav>
</div>

<div class="login-form">
    <div class="login-logo"><img src="images/logo.png" height="90pxs">欢迎来到畅音阁</div>
    <div class="table-sty">
        <form action="ActionLogin" method="post">
            <table>
                <tr>
                    <td>用户名：</td>
                    <td><input type="text" name="username" class="form-control" placeholder="请输入用户名"></td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td><input type="password" name="password" class="form-control" placeholder="请输入密码"></td>
                </tr>
                <tr>
                    <td><button type="submit" class="btn btn-default">登录</button></td>
                    <td><button type="reset" class="btn btn-default">重置</button></td>
                </tr>
                <tr>
                    <td>没有用户名？</td>
                    <td><button type="reset" class="btn btn-default">请注册</button></td>
                </tr>
            </table>
        </form>
    </div>

</div>
</body>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
</html>



